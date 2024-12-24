.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ --- Start of EggPress

@ inline?
	thumb_func_start sub_802D6B4
sub_802D6B4: @ 0x0802D6B4
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x42
	ldr r0, _0802D6DC @ =gUnknown_030060E0
	ldrh r1, [r1]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _0802D6E0
	adds r0, r2, #0
	adds r0, #0x29
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0802D6E0
	movs r0, #0x80
	lsls r0, r0, #1
	b _0802D6F6
	.align 2, 0
_0802D6DC: .4byte gUnknown_030060E0
_0802D6E0:
	adds r0, r2, #0
	adds r0, #0x29
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0802D6F6
	movs r0, #0xff
	lsls r0, r0, #8
_0802D6F6:
	strh r0, [r2, #0x20]
	bx lr
	.align 2, 0

@ inline?
	thumb_func_start sub_802D6FC
sub_802D6FC: @ 0x0802D6FC
	mov ip, r0
	adds r3, r1, #0
	ldr r1, _0802D740 @ =gUnknown_084872C4
	adds r0, #0x60
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0802D744 @ =0x06010000
	adds r0, r0, r1
	str r0, [r3, #4]
	movs r2, #0
	strh r2, [r3, #8]
	mov r0, ip
	adds r0, #0x62
	ldrh r0, [r0]
	strh r0, [r3, #0xa]
	mov r0, ip
	adds r0, #0x64
	ldrh r1, [r0]
	adds r0, r3, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r1, r3, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	strh r2, [r3, #0x1c]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	bx lr
	.align 2, 0
_0802D740: .4byte gUnknown_084872C4
_0802D744: .4byte 0x06010000

	thumb_func_start sub_802D748
sub_802D748: @ 0x0802D748
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	ldr r0, _0802D7D4 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	adds r0, #0xc
	adds r5, r4, r0
	ldr r0, [r5, #0x10]
	ldr r1, _0802D7D8 @ =0xFFFFFE7F
	ands r0, r1
	str r0, [r5, #0x10]
	ldr r1, _0802D7DC @ =gPlayer
	mov ip, r1
	ldr r3, [r1, #0x10]
	movs r0, #0x80
	ands r3, r0
	cmp r3, #0
	bne _0802D792
	ldr r2, _0802D7E0 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0802D7E4 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0802D7E8 @ =gWinRegs
	strh r3, [r0, #0xa]
	ldr r0, _0802D7EC @ =gBldRegs
	strh r3, [r0]
	strh r3, [r0, #4]
_0802D792:
	ldr r1, _0802D7F0 @ =0x030000AF
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0802D862
	lsls r0, r7, #0x10
	asrs r7, r0, #0x10
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r4, #0
	mov r3, ip
	bl sub_800BCBC
	mov r8, r0
	ldr r0, _0802D7F4 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0802D7FC
	ldr r3, _0802D7F8 @ =gUnknown_03005AB0
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl sub_800BCBC
	b _0802D7FE
	.align 2, 0
_0802D7D4: .4byte gCurTask
_0802D7D8: .4byte 0xFFFFFE7F
_0802D7DC: .4byte gPlayer
_0802D7E0: .4byte gDispCnt
_0802D7E4: .4byte 0x00007FFF
_0802D7E8: .4byte gWinRegs
_0802D7EC: .4byte gBldRegs
_0802D7F0: .4byte 0x030000AF
_0802D7F4: .4byte gUnknown_03005088
_0802D7F8: .4byte gUnknown_03005AB0
_0802D7FC:
	movs r0, #0
_0802D7FE:
	adds r3, r6, #0
	adds r3, #0x4c
	mov r1, r8
	cmp r1, #1
	beq _0802D80C
	cmp r0, #1
	bne _0802D848
_0802D80C:
	adds r1, r6, #0
	adds r1, #0xae
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r2, r6, #0
	adds r2, #0xaf
	movs r0, #0x20
	strb r0, [r2]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #4
	bne _0802D82C
	adds r1, #2
	movs r0, #1
	strb r0, [r1]
_0802D82C:
	adds r1, r6, #0
	adds r1, #0x6c
	movs r0, #2
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _0802D844 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	movs r0, #0x8f
	bl m4aSongNumStart
	b _0802D862
	.align 2, 0
_0802D844: .4byte 0xFFFFBFFF
_0802D848:
	mov r1, r8
	cmp r1, #2
	beq _0802D852
	cmp r0, #2
	bne _0802D862
_0802D852:
	adds r1, r6, #0
	adds r1, #0x6c
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _0802D86C @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
_0802D862:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802D86C: .4byte 0xFFFFBFFF

	thumb_func_start sub_802D870
sub_802D870: @ 0x0802D870
	push {r4, r5, lr}
	ldr r0, _0802D8E8 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _0802D8EC @ =0x0300000C
	adds r3, r0, r1
	ldr r5, _0802D8F0 @ =0x0300004C
	adds r4, r0, r5
	adds r1, #0xa3
	adds r2, r0, r1
	ldrb r1, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _0802D8D4
	subs r1, #1
	strb r1, [r2]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x10
	ble _0802D8D4
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _0802D8D4
	ldr r0, _0802D8F4 @ =gPlayer
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0802D8D4
	ldr r0, [r3, #0x10]
	adds r1, #0x80
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r2, _0802D8F8 @ =gDispCnt
	ldrh r0, [r2]
	movs r5, #0x80
	lsls r5, r5, #8
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0802D8FC @ =gWinRegs
	ldr r0, _0802D900 @ =0x00003F1F
	strh r0, [r1, #0xa]
	ldr r1, _0802D904 @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
_0802D8D4:
	adds r0, r3, #0
	bl DisplaySprite
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802D8E8: .4byte gCurTask
_0802D8EC: .4byte 0x0300000C
_0802D8F0: .4byte 0x0300004C
_0802D8F4: .4byte gPlayer
_0802D8F8: .4byte gDispCnt
_0802D8FC: .4byte gWinRegs
_0802D900: .4byte 0x00003F1F
_0802D904: .4byte gBldRegs

	thumb_func_start sub_802D908
sub_802D908: @ 0x0802D908
	push {r4, r5, lr}
	ldr r0, _0802D948 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _0802D94C @ =0x0300000C
	adds r2, r0, r1
	adds r1, #0x40
	adds r4, r0, r1
	ldrh r0, [r2, #0x16]
	strh r0, [r4, #0x16]
	ldrh r5, [r2, #0x18]
	strh r5, [r4, #0x18]
	ldrh r1, [r2, #0xa]
	movs r0, #0x9b
	lsls r0, r0, #2
	cmp r1, r0
	bne _0802D954
	ldr r0, [r2, #0xc]
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #5
	bl __divsi3
	ldr r1, _0802D950 @ =gUnknown_084ACDA0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x17
	adds r0, r0, r1
	ldrh r0, [r0]
	subs r0, r5, r0
	b _0802D958
	.align 2, 0
_0802D948: .4byte gCurTask
_0802D94C: .4byte 0x0300000C
_0802D950: .4byte gUnknown_084ACDA0
_0802D954:
	adds r0, r5, #0
	adds r0, #0x2e
_0802D958:
	strh r0, [r4, #0x18]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_EggPress
CreateEntity_EggPress: @ 0x0802D960
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x18
	lsrs r5, r3, #0x18
	ldr r0, _0802D990 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0802D994
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	b _0802DB2C
	.align 2, 0
_0802D990: .4byte gGameMode
_0802D994:
	ldr r0, _0802DA08 @ =Task_EggPressMain
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _0802DA0C @ =TaskDestructor_EggPress
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r3
	mov sl, r0
	ldr r0, _0802DA10 @ =0x0300000C
	adds r7, r3, r0
	movs r4, #0
	movs r2, #0
	mov r0, r8
	mov r1, sl
	strh r0, [r1, #4]
	mov r0, sb
	strh r0, [r1, #6]
	str r6, [r1]
	ldrb r0, [r6]
	strb r0, [r1, #8]
	strb r5, [r1, #9]
	ldr r1, _0802DA14 @ =0x030000A8
	adds r0, r3, r1
	strh r2, [r0]
	adds r1, #4
	adds r0, r3, r1
	strh r2, [r0]
	ldr r0, _0802DA18 @ =0x030000AA
	adds r1, r3, r0
	ldr r0, _0802DA1C @ =0x0000FFF8
	strh r0, [r1]
	ldr r1, _0802DA20 @ =0x030000AF
	adds r0, r3, r1
	strb r4, [r0]
	adds r1, #1
	adds r0, r3, r1
	strb r4, [r0]
	subs r1, #0x1c
	adds r0, r3, r1
	str r2, [r0]
	adds r1, #0x1d
	adds r0, r3, r1
	strb r4, [r0]
	ldr r0, _0802DA24 @ =gUnknown_03005160
	ldrb r0, [r0, #0x18]
	cmp r0, #0
	beq _0802DA2C
	ldr r0, _0802DA28 @ =0x030000AE
	adds r1, r3, r0
	movs r0, #2
	strb r0, [r1]
	b _0802DA32
	.align 2, 0
_0802DA08: .4byte Task_EggPressMain
_0802DA0C: .4byte TaskDestructor_EggPress
_0802DA10: .4byte 0x0300000C
_0802DA14: .4byte 0x030000A8
_0802DA18: .4byte 0x030000AA
_0802DA1C: .4byte 0x0000FFF8
_0802DA20: .4byte 0x030000AF
_0802DA24: .4byte gUnknown_03005160
_0802DA28: .4byte 0x030000AE
_0802DA2C:
	ldr r1, _0802DB3C @ =0x030000AE
	adds r0, r3, r1
	strb r4, [r0]
_0802DA32:
	ldrb r0, [r6]
	lsls r0, r0, #3
	mov r1, r8
	lsls r1, r1, #8
	mov r8, r1
	add r0, r8
	movs r5, #0
	strh r0, [r7, #0x16]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	mov r1, sb
	lsls r1, r1, #8
	mov sb, r1
	add r0, sb
	strh r0, [r7, #0x18]
	movs r0, #0x36
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0xa8
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	strh r5, [r7, #8]
	movs r0, #0x9b
	lsls r0, r0, #2
	strh r0, [r7, #0xa]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	strh r5, [r7, #0x14]
	strh r5, [r7, #0x1c]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x22
	movs r1, #0x10
	strb r1, [r0]
	adds r0, #3
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r7, #0x10]
	mov r4, sl
	adds r4, #0x4c
	ldrb r0, [r6]
	lsls r0, r0, #3
	add r0, r8
	strh r0, [r4, #0x16]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	add r0, sb
	strh r0, [r4, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	movs r0, #8
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0xb0
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	strh r5, [r4, #8]
	ldr r0, _0802DB40 @ =0x0000026A
	strh r0, [r4, #0xa]
	mov r0, sl
	adds r0, #0x6c
	movs r1, #0
	strb r1, [r0]
	strh r5, [r4, #0x14]
	strh r5, [r4, #0x1c]
	mov r1, sl
	adds r1, #0x6d
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	mov r0, sl
	adds r0, #0x6e
	movs r1, #0x10
	strb r1, [r0]
	adds r0, #3
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r4, #0x10]
	ldrh r4, [r7, #0x18]
	adds r5, r4, #0
	subs r5, #0x90
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r4, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r0, #0x16
	ldrsh r7, [r7, r0]
	adds r0, r7, #0
	bl __floatsisf
	ldr r1, _0802DB44 @ =0x43960000
	bl __subsf3
	bl __fixsfsi
	adds r2, r0, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	adds r3, r7, #0
	bl sub_80171BC
	ldr r0, _0802DB48 @ =gUnknown_03005040
	movs r1, #0x10
	strb r1, [r0, #1]
_0802DB2C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802DB3C: .4byte 0x030000AE
_0802DB40: .4byte 0x0000026A
_0802DB44: .4byte 0x43960000
_0802DB48: .4byte gUnknown_03005040

	thumb_func_start Task_EggPressMain
Task_EggPressMain: @ 0x0802DB4C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _0802DC10 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r7, r0
	ldr r1, _0802DC14 @ =0x030000AC
	adds r2, r7, r1
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x78
	bls _0802DC00
	ldr r0, _0802DC18 @ =0x0300000C
	adds r4, r7, r0
	ldr r1, _0802DC1C @ =0x0300004C
	adds r1, r7, r1
	str r1, [sp]
	ldr r0, [r6]
	mov r8, r0
	ldr r1, _0802DC20 @ =0x03000094
	adds r3, r7, r1
	ldr r0, _0802DC24 @ =0xFFFFC400
	str r0, [r3]
	ldr r0, _0802DC28 @ =0x03000098
	adds r5, r7, r0
	ldr r0, _0802DC2C @ =0xFFFF7000
	str r0, [r5]
	ldr r0, _0802DC30 @ =0x030000A0
	adds r1, r7, r0
	movs r0, #0
	str r0, [r1]
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r0, [r3]
	asrs r0, r0, #8
	adds r2, r2, r0
	mov r0, r8
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r5]
	asrs r0, r0, #8
	adds r1, r1, r0
	ldr r3, _0802DC34 @ =gCamera
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r4, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r4, #0x18]
	ldr r1, [sp]
	strh r2, [r1, #0x16]
	ldrh r0, [r4, #0x18]
	strh r0, [r1, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r0, [sp]
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, [sp]
	bl DisplaySprite
	mov r0, sb
	ldr r1, [r0]
	ldr r0, _0802DC38 @ =sub_802DC3C
	str r0, [r1, #8]
	bl _call_via_r0
_0802DC00:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802DC10: .4byte gCurTask
_0802DC14: .4byte 0x030000AC
_0802DC18: .4byte 0x0300000C
_0802DC1C: .4byte 0x0300004C
_0802DC20: .4byte 0x03000094
_0802DC24: .4byte 0xFFFFC400
_0802DC28: .4byte 0x03000098
_0802DC2C: .4byte 0xFFFF7000
_0802DC30: .4byte 0x030000A0
_0802DC34: .4byte gCamera
_0802DC38: .4byte sub_802DC3C

	thumb_func_start sub_802DC3C
sub_802DC3C: @ 0x0802DC3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0802DCFC @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r1, _0802DD00 @ =0x0300000C
	adds r6, r4, r1
	adds r0, #0x4c
	adds r0, r0, r4
	mov r8, r0
	ldr r1, [r5]
	mov sb, r1
	ldr r0, _0802DD04 @ =0x03000098
	adds r7, r4, r0
	ldr r0, [r7]
	cmp r0, #0
	beq _0802DD1C
	ldr r1, _0802DD08 @ =0x030000A0
	adds r0, r4, r1
	ldr r1, [r0]
	adds r1, #0x20
	str r1, [r0]
	ldr r0, [r7]
	adds r0, r0, r1
	str r0, [r7]
	cmp r0, #0
	blt _0802DCAC
	movs r0, #0
	str r0, [r7]
	movs r0, #0x9b
	lsls r0, r0, #2
	strh r0, [r6, #0xa]
	ldr r0, _0802DD0C @ =0x0300002C
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0802DD10 @ =0x0300002D
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	mov r0, r8
	bl UpdateSpriteAnimation
	movs r0, #0x91
	bl m4aSongNumStart
_0802DCAC:
	ldrb r2, [r5, #8]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r1, _0802DD14 @ =0x03000094
	adds r0, r4, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r2, r2, r0
	mov r0, sb
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r7]
	asrs r0, r0, #8
	adds r1, r1, r0
	ldr r3, _0802DD18 @ =gCamera
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #0x18]
	bl sub_802D908
	adds r0, r6, #0
	bl DisplaySprite
	mov r0, r8
	bl DisplaySprite
	b _0802DDA6
	.align 2, 0
_0802DCFC: .4byte gCurTask
_0802DD00: .4byte 0x0300000C
_0802DD04: .4byte 0x03000098
_0802DD08: .4byte 0x030000A0
_0802DD0C: .4byte 0x0300002C
_0802DD10: .4byte 0x0300002D
_0802DD14: .4byte 0x03000094
_0802DD18: .4byte gCamera
_0802DD1C:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	mov r0, r8
	bl UpdateSpriteAnimation
	ldrb r2, [r5, #8]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r1, _0802DDB4 @ =0x03000094
	adds r0, r4, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r2, r2, r0
	mov r0, sb
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r7]
	asrs r0, r0, #8
	adds r1, r1, r0
	ldr r3, _0802DDB8 @ =gCamera
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #0x18]
	bl sub_802D908
	adds r0, r6, #0
	bl DisplaySprite
	mov r0, r8
	bl DisplaySprite
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0802DDA6
	mov r0, sl
	ldr r1, [r0]
	ldr r0, _0802DDBC @ =sub_802DDCC
	str r0, [r1, #8]
	movs r0, #0x9b
	lsls r0, r0, #2
	strh r0, [r6, #0xa]
	ldr r0, _0802DDC0 @ =0x0300002C
	adds r1, r4, r0
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0802DDC4 @ =0x0300002D
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0802DDC8 @ =0x030000AC
	adds r1, r4, r0
	movs r0, #0x78
	strh r0, [r1]
_0802DDA6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802DDB4: .4byte 0x03000094
_0802DDB8: .4byte gCamera
_0802DDBC: .4byte sub_802DDCC
_0802DDC0: .4byte 0x0300002C
_0802DDC4: .4byte 0x0300002D
_0802DDC8: .4byte 0x030000AC

	thumb_func_start sub_802DDCC
sub_802DDCC: @ 0x0802DDCC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0802DE50 @ =gCurTask
	mov ip, r0
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	ldr r1, _0802DE54 @ =0x0300000C
	adds r6, r2, r1
	adds r0, #0x4c
	adds r7, r2, r0
	ldr r1, [r5]
	mov r8, r1
	adds r0, #0x20
	adds r4, r2, r0
	ldrb r0, [r4]
	cmp r0, #0
	bne _0802DE74
	ldr r1, _0802DE58 @ =0x030000AC
	adds r3, r2, r1
	ldrh r0, [r3]
	subs r0, #1
	strh r0, [r3]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bne _0802DE14
	movs r0, #1
	strb r0, [r4]
	ldr r0, _0802DE5C @ =0x0300006D
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
_0802DE14:
	ldrh r3, [r3]
	cmp r3, #0
	bne _0802DE8C
	mov r0, ip
	ldr r1, [r0]
	ldr r0, _0802DE60 @ =sub_802DEFC
	str r0, [r1, #8]
	ldr r1, _0802DE64 @ =0x030000A0
	adds r0, r2, r1
	str r3, [r0]
	movs r0, #0x9b
	lsls r0, r0, #2
	strh r0, [r6, #0xa]
	ldr r0, _0802DE68 @ =0x0300002C
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0802DE6C @ =0x0300002D
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0802DE70 @ =0x0000026A
	strh r0, [r7, #0xa]
	movs r0, #0
	strb r0, [r4]
	ldr r0, _0802DE5C @ =0x0300006D
	adds r1, r2, r0
	movs r0, #1
	rsbs r0, r0, #0
	b _0802DE8A
	.align 2, 0
_0802DE50: .4byte gCurTask
_0802DE54: .4byte 0x0300000C
_0802DE58: .4byte 0x030000AC
_0802DE5C: .4byte 0x0300006D
_0802DE60: .4byte sub_802DEFC
_0802DE64: .4byte 0x030000A0
_0802DE68: .4byte 0x0300002C
_0802DE6C: .4byte 0x0300002D
_0802DE70: .4byte 0x0000026A
_0802DE74:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0802DE8C
	movs r0, #0
	strb r0, [r4]
	ldr r0, _0802DEF4 @ =0x0300006D
	adds r1, r2, r0
	movs r0, #0xff
_0802DE8A:
	strb r0, [r1]
_0802DE8C:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldrb r2, [r5, #8]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r2, r2, r0
	mov r0, r8
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	adds r0, r5, #0
	adds r0, #0x98
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r1, r0
	ldr r3, _0802DEF8 @ =gCamera
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #0x18]
	bl sub_802D908
	adds r0, r6, #0
	bl DisplaySprite
	adds r0, r7, #0
	bl DisplaySprite
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802DEF4: .4byte 0x0300006D
_0802DEF8: .4byte gCamera

	thumb_func_start sub_802DEFC
sub_802DEFC: @ 0x0802DEFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0802DF74 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	ldr r1, _0802DF78 @ =0x0300000C
	adds r1, r1, r4
	mov sl, r1
	ldr r2, _0802DF7C @ =0x0300004C
	adds r2, r4, r2
	str r2, [sp]
	ldr r1, [r7]
	ldrb r2, [r7, #8]
	lsls r2, r2, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _0802DF80 @ =0x03000094
	adds r0, r4, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	adds r3, #4
	adds r0, r4, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsrs r0, r2, #0x10
	str r0, [sp, #4]
	asrs r5, r2, #0x10
	lsls r1, r1, #0x10
	asrs r6, r1, #0x10
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_802D748
	ldr r1, _0802DF84 @ =0x030000AE
	adds r4, r4, r1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #7
	ble _0802DF88
	bl sub_802E868
	b _0802E116
	.align 2, 0
_0802DF74: .4byte gCurTask
_0802DF78: .4byte 0x0300000C
_0802DF7C: .4byte 0x0300004C
_0802DF80: .4byte 0x03000094
_0802DF84: .4byte 0x030000AE
_0802DF88:
	mov r2, r8
	ldr r3, [r2]
	ldrh r1, [r3, #6]
	ldr r0, _0802E014 @ =0x0300000C
	adds r1, r1, r0
	ldr r2, _0802E018 @ =gCamera
	ldrh r0, [r2]
	subs r0, r5, r0
	strh r0, [r1, #0x16]
	ldrh r0, [r2, #2]
	subs r0, r6, r0
	strh r0, [r1, #0x18]
	ldrh r3, [r3, #6]
	ldr r2, _0802E01C @ =0x0300004C
	adds r1, r3, r2
	ldr r0, _0802E020 @ =0x0300006C
	adds r2, r3, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _0802DFC8
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0802DFC8
	movs r0, #0
	strb r0, [r2]
	ldr r2, _0802E024 @ =0x0300006D
	adds r1, r3, r2
	movs r0, #0xff
	strb r0, [r1]
_0802DFC8:
	mov r0, sl
	bl UpdateSpriteAnimation
	ldr r0, [sp]
	bl UpdateSpriteAnimation
	bl sub_802D908
	bl sub_802D870
	mov r3, sl
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0802DFEC
	b _0802E116
_0802DFEC:
	adds r2, r7, #0
	adds r2, #0xb0
	ldrb r1, [r2]
	movs r0, #3
	ands r0, r1
	str r2, [sp, #8]
	cmp r0, #1
	bne _0802E034
	adds r1, r7, #0
	adds r1, #0x9c
	movs r0, #0
	str r0, [r1]
	adds r1, #4
	ldr r0, _0802E028 @ =0xFFFFF600
	str r0, [r1]
	ldr r0, _0802E02C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802E030 @ =sub_802E500
	b _0802E100
	.align 2, 0
_0802E014: .4byte 0x0300000C
_0802E018: .4byte gCamera
_0802E01C: .4byte 0x0300004C
_0802E020: .4byte 0x0300006C
_0802E024: .4byte 0x0300006D
_0802E028: .4byte 0xFFFFF600
_0802E02C: .4byte gCurTask
_0802E030: .4byte sub_802E500
_0802E034:
	movs r0, #0x9c
	adds r0, r0, r7
	mov sb, r0
	ldr r0, _0802E0D4 @ =gPlayer
	ldr r2, [sp, #4]
	lsls r1, r2, #0x10
	asrs r1, r1, #8
	ldr r0, [r0]
	subs r0, r0, r1
	movs r1, #0x48
	bl __divsi3
	mov r3, sb
	str r0, [r3]
	adds r6, r7, #0
	adds r6, #0xa0
	ldr r0, _0802E0D8 @ =0xFFFFFB80
	str r0, [r6]
	movs r0, #0xa4
	adds r0, r0, r7
	mov r8, r0
	movs r0, #0x20
	mov r1, r8
	str r0, [r1]
	ldr r5, _0802E0DC @ =gUnknown_084ACDAC
	adds r4, r7, #0
	adds r4, #0xae
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r3]
	muls r0, r1, r0
	movs r1, #0xa
	bl __divsi3
	mov r3, sb
	str r0, [r3]
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r6]
	muls r0, r1, r0
	movs r1, #0xa
	bl __divsi3
	str r0, [r6]
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r3, #0
	ldrsh r1, [r0, r3]
	mov r2, r8
	ldr r0, [r2]
	muls r0, r1, r0
	muls r0, r1, r0
	movs r1, #0x64
	bl __divsi3
	mov r3, r8
	str r0, [r3]
	mov r1, sb
	ldr r0, [r1]
	cmp r0, #0
	bge _0802E0E4
	mov r2, sl
	ldr r0, [r2, #0x10]
	ldr r1, _0802E0E0 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r2, #0x10]
	ldr r3, [sp]
	ldr r0, [r3, #0x10]
	ands r0, r1
	b _0802E0F8
	.align 2, 0
_0802E0D4: .4byte gPlayer
_0802E0D8: .4byte 0xFFFFFB80
_0802E0DC: .4byte gUnknown_084ACDAC
_0802E0E0: .4byte 0xFFFFFBFF
_0802E0E4:
	mov r1, sl
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	mov r2, sl
	str r0, [r2, #0x10]
	ldr r3, [sp]
	ldr r0, [r3, #0x10]
	orrs r0, r1
_0802E0F8:
	str r0, [r3, #0x10]
	ldr r0, _0802E128 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802E12C @ =sub_802E130
_0802E100:
	str r0, [r1, #8]
	ldr r0, [sp, #8]
	ldrb r1, [r0]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0802E116
	adds r0, r1, #1
	ldr r1, [sp, #8]
	strb r0, [r1]
_0802E116:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802E128: .4byte gCurTask
_0802E12C: .4byte sub_802E130

	thumb_func_start sub_802E130
sub_802E130: @ 0x0802E130
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0802E200 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	ldr r1, _0802E204 @ =0x0300000C
	adds r1, r1, r4
	mov ip, r1
	adds r0, #0x4c
	adds r0, r0, r4
	mov r8, r0
	ldr r1, [r7]
	mov sl, r1
	ldr r0, _0802E208 @ =0x030000A0
	adds r2, r4, r0
	adds r0, #4
	adds r1, r4, r0
	ldr r0, [r2]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, _0802E20C @ =0x03000094
	adds r6, r4, r1
	ldr r0, _0802E210 @ =0x0300009C
	adds r3, r4, r0
	ldr r0, [r6]
	ldr r1, [r3]
	adds r0, r0, r1
	str r0, [r6]
	ldr r1, _0802E214 @ =0x03000098
	adds r5, r4, r1
	ldr r0, [r5]
	ldr r1, [r2]
	adds r0, r0, r1
	str r0, [r5]
	cmp r0, #0
	blt _0802E1BA
	movs r0, #0
	str r0, [r5]
	str r0, [r3]
	str r0, [r2]
	ldr r0, _0802E218 @ =0x0300002C
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0802E21C @ =0x0300002D
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	mov r0, ip
	bl UpdateSpriteAnimation
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, sb
	ldr r1, [r0]
	ldr r0, _0802E220 @ =sub_802E290
	str r0, [r1, #8]
	movs r0, #0x91
	bl m4aSongNumStart
_0802E1BA:
	ldrb r2, [r7, #8]
	lsls r2, r2, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r0, [r6]
	asrs r0, r0, #8
	adds r2, r2, r0
	mov r0, sl
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r5]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r5, r2, #0x10
	lsls r1, r1, #0x10
	asrs r6, r1, #0x10
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_802D748
	ldr r1, _0802E224 @ =0x030000AE
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _0802E228
	bl sub_802E868
	b _0802E270
	.align 2, 0
_0802E200: .4byte gCurTask
_0802E204: .4byte 0x0300000C
_0802E208: .4byte 0x030000A0
_0802E20C: .4byte 0x03000094
_0802E210: .4byte 0x0300009C
_0802E214: .4byte 0x03000098
_0802E218: .4byte 0x0300002C
_0802E21C: .4byte 0x0300002D
_0802E220: .4byte sub_802E290
_0802E224: .4byte 0x030000AE
_0802E228:
	mov r0, sb
	ldr r3, [r0]
	ldrh r1, [r3, #6]
	ldr r0, _0802E280 @ =0x0300000C
	adds r1, r1, r0
	ldr r2, _0802E284 @ =gCamera
	ldrh r0, [r2]
	subs r0, r5, r0
	strh r0, [r1, #0x16]
	ldrh r0, [r2, #2]
	subs r0, r6, r0
	strh r0, [r1, #0x18]
	ldrh r3, [r3, #6]
	ldr r0, _0802E288 @ =0x0300004C
	adds r1, r3, r0
	adds r0, #0x20
	adds r2, r3, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _0802E268
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0802E268
	movs r0, #0
	strb r0, [r2]
	ldr r0, _0802E28C @ =0x0300006D
	adds r1, r3, r0
	movs r0, #0xff
	strb r0, [r1]
_0802E268:
	bl sub_802D908
	bl sub_802D870
_0802E270:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802E280: .4byte 0x0300000C
_0802E284: .4byte gCamera
_0802E288: .4byte 0x0300004C
_0802E28C: .4byte 0x0300006D

	thumb_func_start sub_802E290
sub_802E290: @ 0x0802E290
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0802E300 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	ldr r1, _0802E304 @ =0x0300000C
	adds r1, r1, r4
	mov r8, r1
	ldr r2, _0802E308 @ =0x0300004C
	adds r2, r2, r4
	mov sl, r2
	ldr r1, [r6]
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _0802E30C @ =0x03000094
	adds r0, r4, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	adds r3, #4
	adds r0, r4, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r5, r2, #0x10
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_802D748
	ldr r0, _0802E310 @ =0x030000AE
	adds r4, r4, r0
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #7
	ble _0802E314
	bl sub_802E868
	b _0802E3B2
	.align 2, 0
_0802E300: .4byte gCurTask
_0802E304: .4byte 0x0300000C
_0802E308: .4byte 0x0300004C
_0802E30C: .4byte 0x03000094
_0802E310: .4byte 0x030000AE
_0802E314:
	mov r1, sb
	ldr r3, [r1]
	ldrh r1, [r3, #6]
	ldr r2, _0802E3C0 @ =0x0300000C
	adds r1, r1, r2
	ldr r2, _0802E3C4 @ =gCamera
	ldrh r0, [r2]
	subs r0, r5, r0
	strh r0, [r1, #0x16]
	ldrh r0, [r2, #2]
	subs r0, r7, r0
	strh r0, [r1, #0x18]
	ldrh r3, [r3, #6]
	ldr r0, _0802E3C8 @ =0x0300004C
	adds r1, r3, r0
	adds r0, #0x20
	adds r2, r3, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _0802E354
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0802E354
	movs r0, #0
	strb r0, [r2]
	ldr r2, _0802E3CC @ =0x0300006D
	adds r1, r3, r2
	movs r0, #0xff
	strb r0, [r1]
_0802E354:
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, sl
	bl UpdateSpriteAnimation
	bl sub_802D908
	bl sub_802D870
	mov r3, r8
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0802E3B2
	mov r1, r8
	adds r1, #0x20
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	adds r4, r6, #0
	adds r4, #0xac
	movs r0, #0x1e
	strh r0, [r4]
	movs r0, #0x96
	lsls r0, r0, #1
	ldr r2, _0802E3D0 @ =gUnknown_084ACDAC
	adds r1, r6, #0
	adds r1, #0xae
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl __divsi3
	strh r0, [r4]
	ldr r0, _0802E3D4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802E3D8 @ =sub_802E3DC
	str r0, [r1, #8]
_0802E3B2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802E3C0: .4byte 0x0300000C
_0802E3C4: .4byte gCamera
_0802E3C8: .4byte 0x0300004C
_0802E3CC: .4byte 0x0300006D
_0802E3D0: .4byte gUnknown_084ACDAC
_0802E3D4: .4byte gCurTask
_0802E3D8: .4byte sub_802E3DC

	thumb_func_start sub_802E3DC
sub_802E3DC: @ 0x0802E3DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0802E44C @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	ldr r1, _0802E450 @ =0x0300000C
	adds r1, r1, r4
	mov r8, r1
	ldr r3, _0802E454 @ =0x0300004C
	adds r3, r3, r4
	mov sl, r3
	ldr r1, [r6]
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _0802E458 @ =0x03000094
	adds r0, r4, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	adds r3, #4
	adds r0, r4, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r5, r2, #0x10
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_802D748
	ldr r0, _0802E45C @ =0x030000AE
	adds r4, r4, r0
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #7
	ble _0802E460
	bl sub_802E868
	b _0802E4DA
	.align 2, 0
_0802E44C: .4byte gCurTask
_0802E450: .4byte 0x0300000C
_0802E454: .4byte 0x0300004C
_0802E458: .4byte 0x03000094
_0802E45C: .4byte 0x030000AE
_0802E460:
	mov r1, sb
	ldr r3, [r1]
	ldrh r1, [r3, #6]
	ldr r0, _0802E4E8 @ =0x0300000C
	adds r1, r1, r0
	ldr r2, _0802E4EC @ =gCamera
	ldrh r0, [r2]
	subs r0, r5, r0
	strh r0, [r1, #0x16]
	ldrh r0, [r2, #2]
	subs r0, r7, r0
	strh r0, [r1, #0x18]
	ldrh r3, [r3, #6]
	ldr r0, _0802E4F0 @ =0x0300004C
	adds r1, r3, r0
	adds r0, #0x20
	adds r2, r3, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _0802E4A0
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0802E4A0
	movs r0, #0
	strb r0, [r2]
	ldr r0, _0802E4F4 @ =0x0300006D
	adds r1, r3, r0
	movs r0, #0xff
	strb r0, [r1]
_0802E4A0:
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, sl
	bl UpdateSpriteAnimation
	bl sub_802D908
	bl sub_802D870
	adds r1, r6, #0
	adds r1, #0xac
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802E4DA
	mov r1, r8
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0802E4F8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802E4FC @ =sub_802DEFC
	str r0, [r1, #8]
_0802E4DA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802E4E8: .4byte 0x0300000C
_0802E4EC: .4byte gCamera
_0802E4F0: .4byte 0x0300004C
_0802E4F4: .4byte 0x0300006D
_0802E4F8: .4byte gCurTask
_0802E4FC: .4byte sub_802DEFC

	thumb_func_start sub_802E500
sub_802E500: @ 0x0802E500
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _0802E670 @ =gCurTask
	mov ip, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r5, r0
	ldr r1, _0802E674 @ =0x0300004C
	adds r1, r1, r5
	mov r8, r1
	ldr r0, [r7]
	mov sb, r0
	ldr r1, _0802E678 @ =0x030000A0
	adds r6, r5, r1
	ldr r1, [r6]
	adds r1, #0x20
	str r1, [r6]
	ldr r0, _0802E67C @ =0x03000098
	adds r4, r5, r0
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	ldr r1, _0802E680 @ =0xFFFF3800
	cmp r0, r1
	bge _0802E554
	ldr r1, _0802E684 @ =0x03000094
	adds r3, r5, r1
	ldr r2, _0802E688 @ =gPlayer
	ldrb r1, [r7, #8]
	lsls r1, r1, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r2]
	subs r0, r0, r1
	str r0, [r3]
_0802E554:
	ldr r0, [r4]
	cmp r0, #0
	blt _0802E620
	movs r0, #0
	str r0, [r4]
	str r0, [r6]
	ldr r0, _0802E68C @ =0x030000AC
	adds r1, r5, r0
	movs r0, #0x3c
	strh r0, [r1]
	ldr r1, _0802E690 @ =0x0300002C
	adds r0, r5, r1
	movs r4, #2
	strb r4, [r0]
	ldr r0, _0802E694 @ =0x0300002D
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	mov r0, ip
	ldr r1, [r0]
	ldr r0, _0802E698 @ =sub_802E714
	str r0, [r1, #8]
	movs r0, #0x91
	bl m4aSongNumStart
	movs r0, #0x80
	lsls r0, r0, #4
	movs r2, #0x80
	lsls r2, r2, #1
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x80
	str r1, [sp]
	movs r1, #0x40
	bl sub_804CC14
	ldr r2, _0802E688 @ =gPlayer
	ldr r1, [r2, #0x10]
	adds r0, r1, #0
	ands r0, r4
	cmp r0, #0
	beq _0802E5D8
	adds r0, r2, #0
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x41
	beq _0802E5D8
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r1, r0
	cmp r1, #0
	beq _0802E5F2
	adds r0, r2, #0
	adds r0, #0x42
	ldrh r1, [r0]
	movs r0, #0xbb
	lsls r0, r0, #1
	cmp r1, r0
	bne _0802E5D8
	adds r0, r2, #0
	adds r0, #0x44
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802E5F2
_0802E5D8:
	ldr r0, _0802E688 @ =gPlayer
	bl sub_800C558
	mov r1, r8
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	mov r1, r8
	ldr r0, [r1, #0x10]
	ldr r1, _0802E69C @ =0xFFFFBFFF
	ands r0, r1
	mov r1, r8
	str r0, [r1, #0x10]
_0802E5F2:
	ldr r0, _0802E6A0 @ =gUnknown_03005088
	movs r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #2
	bne _0802E620
	ldr r0, _0802E6A4 @ =gUnknown_03005AB0
	ldr r0, [r0, #0x10]
	ands r0, r1
	cmp r0, #0
	bne _0802E620
	ldr r0, _0802E688 @ =gPlayer
	bl sub_800C558
	mov r1, r8
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	mov r1, r8
	ldr r0, [r1, #0x10]
	ldr r1, _0802E69C @ =0xFFFFBFFF
	ands r0, r1
	mov r1, r8
	str r0, [r1, #0x10]
_0802E620:
	ldrb r2, [r7, #8]
	lsls r2, r2, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r2, r2, r0
	mov r0, sb
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	adds r0, r7, #0
	adds r0, #0x98
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r4, r2, #0x10
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_802D748
	adds r0, r7, #0
	adds r0, #0xae
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _0802E6A8
	bl sub_802E868
	b _0802E6F0
	.align 2, 0
_0802E670: .4byte gCurTask
_0802E674: .4byte 0x0300004C
_0802E678: .4byte 0x030000A0
_0802E67C: .4byte 0x03000098
_0802E680: .4byte 0xFFFF3800
_0802E684: .4byte 0x03000094
_0802E688: .4byte gPlayer
_0802E68C: .4byte 0x030000AC
_0802E690: .4byte 0x0300002C
_0802E694: .4byte 0x0300002D
_0802E698: .4byte sub_802E714
_0802E69C: .4byte 0xFFFFBFFF
_0802E6A0: .4byte gUnknown_03005088
_0802E6A4: .4byte gUnknown_03005AB0
_0802E6A8:
	ldr r0, _0802E700 @ =gCurTask
	ldr r3, [r0]
	ldrh r1, [r3, #6]
	ldr r0, _0802E704 @ =0x0300000C
	adds r1, r1, r0
	ldr r2, _0802E708 @ =gCamera
	ldrh r0, [r2]
	subs r0, r4, r0
	strh r0, [r1, #0x16]
	ldrh r0, [r2, #2]
	subs r0, r5, r0
	strh r0, [r1, #0x18]
	ldrh r2, [r3, #6]
	ldr r0, _0802E70C @ =0x0300004C
	adds r1, r2, r0
	adds r0, #0x20
	adds r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq _0802E6E8
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0802E6E8
	movs r0, #0
	strb r0, [r3]
	ldr r0, _0802E710 @ =0x0300006D
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
_0802E6E8:
	bl sub_802D908
	bl sub_802D870
_0802E6F0:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802E700: .4byte gCurTask
_0802E704: .4byte 0x0300000C
_0802E708: .4byte gCamera
_0802E70C: .4byte 0x0300004C
_0802E710: .4byte 0x0300006D

	thumb_func_start sub_802E714
sub_802E714: @ 0x0802E714
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0802E784 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	ldr r1, _0802E788 @ =0x0300000C
	adds r1, r1, r4
	mov r8, r1
	ldr r3, _0802E78C @ =0x0300004C
	adds r3, r3, r4
	mov sl, r3
	ldr r1, [r6]
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _0802E790 @ =0x03000094
	adds r0, r4, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	adds r3, #4
	adds r0, r4, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r5, r2, #0x10
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_802D748
	ldr r0, _0802E794 @ =0x030000AE
	adds r4, r4, r0
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #7
	ble _0802E798
	bl sub_802E868
	b _0802E850
	.align 2, 0
_0802E784: .4byte gCurTask
_0802E788: .4byte 0x0300000C
_0802E78C: .4byte 0x0300004C
_0802E790: .4byte 0x03000094
_0802E794: .4byte 0x030000AE
_0802E798:
	mov r1, sb
	ldr r3, [r1]
	ldrh r1, [r3, #6]
	ldr r0, _0802E814 @ =0x0300000C
	adds r1, r1, r0
	ldr r2, _0802E818 @ =gCamera
	ldrh r0, [r2]
	subs r0, r5, r0
	strh r0, [r1, #0x16]
	ldrh r0, [r2, #2]
	subs r0, r7, r0
	strh r0, [r1, #0x18]
	ldrh r3, [r3, #6]
	ldr r0, _0802E81C @ =0x0300004C
	adds r1, r3, r0
	adds r0, #0x20
	adds r2, r3, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _0802E7D8
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0802E7D8
	movs r0, #0
	strb r0, [r2]
	ldr r0, _0802E820 @ =0x0300006D
	adds r1, r3, r0
	movs r0, #0xff
	strb r0, [r1]
_0802E7D8:
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, sl
	bl UpdateSpriteAnimation
	bl sub_802D908
	bl sub_802D870
	mov r2, r8
	adds r2, #0x20
	ldrb r0, [r2]
	cmp r0, #2
	bne _0802E824
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0802E850
	movs r0, #0
	strb r0, [r2]
	mov r1, r8
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	b _0802E850
	.align 2, 0
_0802E814: .4byte 0x0300000C
_0802E818: .4byte gCamera
_0802E81C: .4byte 0x0300004C
_0802E820: .4byte 0x0300006D
_0802E824:
	adds r1, r6, #0
	adds r1, #0xac
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802E850
	movs r0, #0x9b
	lsls r0, r0, #2
	mov r3, r8
	strh r0, [r3, #0xa]
	movs r0, #1
	strb r0, [r2]
	mov r1, r8
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0802E860 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802E864 @ =sub_802DEFC
	str r0, [r1, #8]
_0802E850:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802E860: .4byte gCurTask
_0802E864: .4byte sub_802DEFC

	thumb_func_start sub_802E868
sub_802E868: @ 0x0802E868
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0802E948 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r4, r0
	ldr r1, _0802E94C @ =0x0300000C
	adds r7, r4, r1
	ldr r5, [r3]
	ldr r2, _0802E950 @ =0x03000098
	adds r0, r4, r2
	ldr r2, [r0]
	ldr r6, _0802E954 @ =0xFFFFD000
	adds r2, r2, r6
	str r2, [r0]
	ldrb r1, [r3, #8]
	lsls r1, r1, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r6, _0802E958 @ =0x03000094
	adds r0, r4, r6
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	ldrb r1, [r5, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	asrs r2, r2, #8
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	ldr r0, _0802E95C @ =0x0300006C
	adds r1, r4, r0
	movs r5, #0
	movs r0, #2
	strb r0, [r1]
	ldr r1, _0802E960 @ =0x030000B2
	adds r0, r4, r1
	movs r6, #0
	movs r2, #0xfe
	lsls r2, r2, #8
	mov r8, r2
	mov r1, r8
	strh r1, [r0]
	movs r0, #0x90
	bl m4aSongNumStart
	ldr r2, _0802E964 @ =0x030000AC
	adds r0, r4, r2
	strh r5, [r0]
	ldr r0, _0802E968 @ =0x0000026D
	strh r0, [r7, #0xa]
	ldr r1, _0802E96C @ =0x0300002C
	adds r0, r4, r1
	strb r6, [r0]
	subs r2, #0x7f
	adds r4, r4, r2
	movs r0, #0xff
	strb r0, [r4]
	mov r4, sb
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	mov r6, sl
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	ldr r3, _0802E970 @ =0x0000026B
	str r5, [sp]
	movs r2, #8
	bl sub_80168F0
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	ldr r1, _0802E974 @ =0x03000046
	adds r0, r2, r1
	mov r4, r8
	strh r4, [r0]
	ldr r6, _0802E978 @ =0x03000048
	adds r0, r2, r6
	strh r5, [r0]
	ldr r0, _0802E97C @ =0x03000042
	adds r1, r2, r0
	movs r0, #0x80
	strh r0, [r1]
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0802E984
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r3, #0x32]
	ldr r4, _0802E980 @ =0x03000044
	adds r0, r2, r4
	strh r1, [r0]
	b _0802E98E
	.align 2, 0
_0802E948: .4byte gCurTask
_0802E94C: .4byte 0x0300000C
_0802E950: .4byte 0x03000098
_0802E954: .4byte 0xFFFFD000
_0802E958: .4byte 0x03000094
_0802E95C: .4byte 0x0300006C
_0802E960: .4byte 0x030000B2
_0802E964: .4byte 0x030000AC
_0802E968: .4byte 0x0000026D
_0802E96C: .4byte 0x0300002C
_0802E970: .4byte 0x0000026B
_0802E974: .4byte 0x03000046
_0802E978: .4byte 0x03000048
_0802E97C: .4byte 0x03000042
_0802E980: .4byte 0x03000044
_0802E984:
	ldr r6, _0802E9F0 @ =0x03000044
	adds r1, r2, r6
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r1]
_0802E98E:
	adds r1, r3, #0
	adds r1, #0x40
	movs r4, #0
	movs r0, #0x3c
	strh r0, [r1]
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r2, sl
	lsls r1, r2, #0x10
	movs r6, #0x80
	lsls r6, r6, #0xe
	adds r1, r1, r6
	asrs r1, r1, #0x10
	ldr r3, _0802E9F4 @ =0x00000269
	str r4, [sp]
	movs r2, #8
	bl sub_80168F0
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	adds r0, #0x46
	adds r1, r2, r0
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r1]
	ldr r1, _0802E9F8 @ =0x03000048
	adds r0, r2, r1
	strh r4, [r0]
	ldr r4, _0802E9FC @ =0x03000042
	adds r1, r2, r4
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1]
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0802EA00
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r3, #0x32]
	ldr r6, _0802E9F0 @ =0x03000044
	adds r0, r2, r6
	strh r1, [r0]
	b _0802EA0A
	.align 2, 0
_0802E9F0: .4byte 0x03000044
_0802E9F4: .4byte 0x00000269
_0802E9F8: .4byte 0x03000048
_0802E9FC: .4byte 0x03000042
_0802EA00:
	ldr r0, _0802EA6C @ =0x03000044
	adds r1, r2, r0
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r1]
_0802EA0A:
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #0x3c
	strh r0, [r1]
	ldr r1, _0802EA70 @ =gCamera
	ldrh r0, [r1]
	strh r0, [r1, #0x18]
	adds r0, #0xf0
	strh r0, [r1, #0x1a]
	ldr r1, _0802EA74 @ =gLevelScore
	ldr r6, [r1]
	movs r2, #0xfa
	lsls r2, r2, #2
	adds r0, r6, r2
	str r0, [r1]
	ldr r4, _0802EA78 @ =0x0000C350
	adds r1, r4, #0
	bl Div
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl Div
	cmp r5, r0
	beq _0802EA4E
	ldr r0, _0802EA7C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802EA4E
	ldr r1, _0802EA80 @ =gNumLives
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0802EA4E:
	bl sub_802EA8C
	ldr r0, _0802EA84 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802EA88 @ =sub_802EA8C
	str r0, [r1, #8]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802EA6C: .4byte 0x03000044
_0802EA70: .4byte gCamera
_0802EA74: .4byte gLevelScore
_0802EA78: .4byte 0x0000C350
_0802EA7C: .4byte gGameMode
_0802EA80: .4byte gNumLives
_0802EA84: .4byte gCurTask
_0802EA88: .4byte sub_802EA8C

	thumb_func_start sub_802EA8C
sub_802EA8C: @ 0x0802EA8C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r1, _0802EC98 @ =gCurTask
	ldr r0, [r1]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r2, r0
	ldr r3, _0802EC9C @ =0x0300000C
	adds r3, r3, r2
	mov sl, r3
	adds r0, #0x4c
	adds r0, r2, r0
	str r0, [sp, #4]
	ldr r4, [r7]
	ldr r1, _0802ECA0 @ =0x030000B2
	adds r6, r2, r1
	ldrh r0, [r6]
	adds r0, #0x28
	strh r0, [r6]
	ldr r3, _0802ECA4 @ =0x03000098
	adds r5, r2, r3
	movs r1, #0
	ldrsh r0, [r6, r1]
	ldr r3, [r5]
	adds r3, r3, r0
	str r3, [r5]
	ldrb r1, [r7, #8]
	lsls r1, r1, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, _0802ECA8 @ =0x03000094
	adds r2, r2, r0
	ldr r0, [r2]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldrb r0, [r4, #1]
	lsls r0, r0, #3
	ldrh r2, [r7, #6]
	lsls r2, r2, #8
	adds r0, r0, r2
	asrs r3, r3, #8
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r8, r2
	asrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r3, r1, #0x10
	mov sb, r3
	asrs r1, r1, #0x10
	ldr r2, _0802ECAC @ =sub_803FD5C
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	bl sub_804021C
	cmp r0, #0
	bge _0802EB36
	lsls r1, r0, #8
	ldr r0, [r5]
	adds r0, r0, r1
	str r0, [r5]
	ldrh r1, [r6]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x12
	subs r0, r0, r1
	strh r0, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _0802ECB0 @ =0xFFFFFF00
	cmp r0, r1
	ble _0802EB36
	movs r0, #0
	strh r0, [r6]
	ldr r0, _0802EC98 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802ECB4 @ =sub_802ECFC
	str r0, [r1, #8]
_0802EB36:
	mov r1, sl
	ldr r0, [r1, #0x10]
	ldr r1, _0802ECB8 @ =0xFFFFFE7F
	ands r0, r1
	mov r2, sl
	str r0, [r2, #0x10]
	ldr r0, _0802ECBC @ =gPlayer
	ldr r3, [r0, #0x10]
	movs r0, #0x80
	ands r3, r0
	cmp r3, #0
	bne _0802EB62
	ldr r2, _0802ECC0 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0802ECC4 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0802ECC8 @ =gWinRegs
	strh r3, [r0, #0xa]
	ldr r0, _0802ECCC @ =gBldRegs
	strh r3, [r0]
	strh r3, [r0, #4]
_0802EB62:
	adds r1, r7, #0
	adds r1, #0xac
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r4, #7
	ands r0, r4
	mov r3, r8
	lsls r3, r3, #0x10
	str r3, [sp, #0xc]
	mov r7, sb
	lsls r7, r7, #0x10
	str r7, [sp, #8]
	cmp r0, #0
	bne _0802EC54
	ldr r0, _0802ECD0 @ =gPseudoRandom
	mov sb, r0
	ldr r0, [r0]
	ldr r1, _0802ECD4 @ =0x00196225
	muls r0, r1, r0
	ldr r2, _0802ECD8 @ =0x3C6EF35F
	adds r0, r0, r2
	mov r3, sb
	str r0, [r3]
	ands r4, r0
	ldr r0, _0802ECDC @ =gUnknown_080BB434
	adds r0, r4, r0
	ldrb r0, [r0]
	bl VramMalloc
	adds r1, r0, #0
	movs r6, #0x80
	lsls r6, r6, #6
	ldr r2, _0802ECE0 @ =gUnknown_080BB41C
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, _0802ECE4 @ =gUnknown_080BB42C
	adds r4, r4, r0
	ldrb r3, [r4]
	ldr r0, _0802ECE8 @ =sub_80177EC
	str r0, [sp]
	adds r0, r6, #0
	bl sub_801769C
	ldrh r3, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r3, r5
	asrs r0, r7, #0x10
	lsls r1, r0, #8
	str r1, [r5, #0x30]
	ldr r7, [sp, #0xc]
	asrs r1, r7, #0x10
	lsls r2, r1, #8
	str r2, [r5, #0x34]
	str r6, [r5, #0x10]
	movs r2, #0x88
	lsls r2, r2, #3
	strh r2, [r5, #0x1a]
	movs r2, #0x28
	strh r2, [r5, #0x3e]
	ldr r2, _0802ECEC @ =0x03000040
	adds r3, r3, r2
	movs r2, #0x20
	strh r2, [r3]
	mov r3, sb
	ldr r2, [r3]
	ldr r7, _0802ECD4 @ =0x00196225
	adds r6, r2, #0
	muls r6, r7, r6
	ldr r2, _0802ECD8 @ =0x3C6EF35F
	adds r6, r6, r2
	str r6, [r3]
	ldr r3, _0802ECF0 @ =gSineTable
	mov r8, r3
	ldr r3, _0802ECF4 @ =0x000001FF
	ands r3, r6
	lsls r2, r3, #1
	add r2, r8
	movs r7, #0
	ldrsh r4, [r2, r7]
	lsls r2, r4, #1
	adds r2, r2, r4
	lsls r2, r2, #9
	rsbs r2, r2, #0
	asrs r2, r2, #0xe
	strh r2, [r5, #0x3a]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r3, r3, r2
	lsls r3, r3, #1
	add r3, r8
	movs r7, #0
	ldrsh r3, [r3, r7]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #9
	rsbs r2, r2, #0
	asrs r2, r2, #0xe
	strh r2, [r5, #0x38]
	ldr r2, _0802ECD4 @ =0x00196225
	adds r3, r6, #0
	muls r3, r2, r3
	ldr r7, _0802ECD8 @ =0x3C6EF35F
	adds r3, r3, r7
	mov r2, sb
	str r3, [r2]
	movs r2, #0x3f
	ands r2, r3
	adds r0, r0, r2
	subs r0, #0x20
	lsls r0, r0, #8
	movs r2, #0xfc
	lsls r2, r2, #0xe
	ands r3, r2
	asrs r3, r3, #0x10
	subs r1, r1, r3
	lsls r1, r1, #8
	bl sub_8017540
_0802EC54:
	ldr r2, _0802ECF8 @ =gCamera
	ldrh r1, [r2]
	ldr r3, [sp, #8]
	asrs r0, r3, #0x10
	subs r0, r0, r1
	mov r7, sl
	strh r0, [r7, #0x16]
	ldrh r1, [r2, #2]
	ldr r2, [sp, #0xc]
	asrs r0, r2, #0x10
	subs r0, r0, r1
	strh r0, [r7, #0x18]
	bl sub_802D908
	mov r0, sl
	bl UpdateSpriteAnimation
	ldr r0, [sp, #4]
	bl UpdateSpriteAnimation
	mov r0, sl
	bl DisplaySprite
	ldr r0, [sp, #4]
	bl DisplaySprite
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802EC98: .4byte gCurTask
_0802EC9C: .4byte 0x0300000C
_0802ECA0: .4byte 0x030000B2
_0802ECA4: .4byte 0x03000098
_0802ECA8: .4byte 0x03000094
_0802ECAC: .4byte sub_803FD5C
_0802ECB0: .4byte 0xFFFFFF00
_0802ECB4: .4byte sub_802ECFC
_0802ECB8: .4byte 0xFFFFFE7F
_0802ECBC: .4byte gPlayer
_0802ECC0: .4byte gDispCnt
_0802ECC4: .4byte 0x00007FFF
_0802ECC8: .4byte gWinRegs
_0802ECCC: .4byte gBldRegs
_0802ECD0: .4byte gPseudoRandom
_0802ECD4: .4byte 0x00196225
_0802ECD8: .4byte 0x3C6EF35F
_0802ECDC: .4byte gUnknown_080BB434
_0802ECE0: .4byte gUnknown_080BB41C
_0802ECE4: .4byte gUnknown_080BB42C
_0802ECE8: .4byte sub_80177EC
_0802ECEC: .4byte 0x03000040
_0802ECF0: .4byte gSineTable
_0802ECF4: .4byte 0x000001FF
_0802ECF8: .4byte gCamera

	thumb_func_start sub_802ECFC
sub_802ECFC: @ 0x0802ECFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r6, _0802ED98 @ =gCurTask
	ldr r0, [r6]
	ldrh r2, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r3, r2, r5
	ldr r0, _0802ED9C @ =0x0300000C
	adds r0, r0, r2
	mov sl, r0
	ldr r1, _0802EDA0 @ =0x0300004C
	adds r1, r2, r1
	str r1, [sp, #4]
	ldr r4, [r3]
	ldrb r1, [r3, #8]
	lsls r1, r1, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r7, _0802EDA4 @ =0x03000094
	adds r0, r2, r7
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	mov r0, r8
	str r0, [sp, #8]
	ldrb r1, [r4, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _0802EDA8 @ =0x03000098
	adds r0, r2, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	str r7, [sp, #0xc]
	ldr r0, _0802EDAC @ =0x030000AC
	adds r2, r2, r0
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf0
	bls _0802EDB8
	mov r1, r8
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	lsls r1, r7, #0x10
	asrs r5, r1, #0x10
	ldr r2, _0802EDB0 @ =0xFFFC0000
	adds r1, r1, r2
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8015C5C
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8015FFC
	ldr r1, _0802EDB4 @ =gUnknown_03005040
	movs r0, #0x30
	strb r0, [r1, #1]
	ldr r0, [r6]
	bl TaskDestroy
	b _0802EECA
	.align 2, 0
_0802ED98: .4byte gCurTask
_0802ED9C: .4byte 0x0300000C
_0802EDA0: .4byte 0x0300004C
_0802EDA4: .4byte 0x03000094
_0802EDA8: .4byte 0x03000098
_0802EDAC: .4byte 0x030000AC
_0802EDB0: .4byte 0xFFFC0000
_0802EDB4: .4byte gUnknown_03005040
_0802EDB8:
	movs r4, #7
	ands r1, r4
	cmp r1, #0
	bne _0802EE92
	ldr r3, _0802EEDC @ =gPseudoRandom
	mov sb, r3
	ldr r0, [r3]
	ldr r1, _0802EEE0 @ =0x00196225
	muls r0, r1, r0
	ldr r2, _0802EEE4 @ =0x3C6EF35F
	adds r0, r0, r2
	str r0, [r3]
	ands r4, r0
	ldr r0, _0802EEE8 @ =gUnknown_080BB434
	adds r0, r4, r0
	ldrb r0, [r0]
	bl VramMalloc
	adds r1, r0, #0
	movs r6, #0x80
	lsls r6, r6, #6
	ldr r2, _0802EEEC @ =gUnknown_080BB41C
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, _0802EEF0 @ =gUnknown_080BB42C
	adds r4, r4, r0
	ldrb r3, [r4]
	ldr r0, _0802EEF4 @ =sub_80177EC
	str r0, [sp]
	adds r0, r6, #0
	bl sub_801769C
	ldrh r3, [r0, #6]
	adds r5, r3, r5
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #8
	str r1, [r5, #0x30]
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	lsls r2, r1, #8
	str r2, [r5, #0x34]
	str r6, [r5, #0x10]
	movs r2, #0x88
	lsls r2, r2, #3
	strh r2, [r5, #0x1a]
	movs r2, #0x28
	strh r2, [r5, #0x3e]
	ldr r2, _0802EEF8 @ =0x03000040
	adds r3, r3, r2
	movs r2, #0x20
	strh r2, [r3]
	mov r3, sb
	ldr r2, [r3]
	ldr r7, _0802EEE0 @ =0x00196225
	adds r6, r2, #0
	muls r6, r7, r6
	ldr r2, _0802EEE4 @ =0x3C6EF35F
	adds r6, r6, r2
	str r6, [r3]
	ldr r3, _0802EEFC @ =gSineTable
	mov r8, r3
	ldr r3, _0802EF00 @ =0x000001FF
	ands r3, r6
	lsls r2, r3, #1
	add r2, r8
	movs r7, #0
	ldrsh r4, [r2, r7]
	lsls r2, r4, #1
	adds r2, r2, r4
	lsls r2, r2, #9
	rsbs r2, r2, #0
	asrs r2, r2, #0xe
	strh r2, [r5, #0x3a]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r3, r3, r2
	lsls r3, r3, #1
	add r3, r8
	movs r7, #0
	ldrsh r3, [r3, r7]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #9
	rsbs r2, r2, #0
	asrs r2, r2, #0xe
	strh r2, [r5, #0x38]
	ldr r2, _0802EEE0 @ =0x00196225
	adds r3, r6, #0
	muls r3, r2, r3
	ldr r7, _0802EEE4 @ =0x3C6EF35F
	adds r3, r3, r7
	mov r2, sb
	str r3, [r2]
	movs r2, #0x3f
	ands r2, r3
	adds r0, r0, r2
	subs r0, #0x20
	lsls r0, r0, #8
	movs r2, #0xfc
	lsls r2, r2, #0xe
	ands r3, r2
	asrs r3, r3, #0x10
	subs r1, r1, r3
	lsls r1, r1, #8
	bl sub_8017540
_0802EE92:
	ldr r2, _0802EF04 @ =gCamera
	ldrh r1, [r2]
	ldr r3, [sp, #8]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	mov r7, sl
	strh r0, [r7, #0x16]
	ldrh r1, [r2, #2]
	ldr r2, [sp, #0xc]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r7, #0x18]
	bl sub_802D908
	mov r0, sl
	bl UpdateSpriteAnimation
	ldr r0, [sp, #4]
	bl UpdateSpriteAnimation
	mov r0, sl
	bl DisplaySprite
	ldr r0, [sp, #4]
	bl DisplaySprite
_0802EECA:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802EEDC: .4byte gPseudoRandom
_0802EEE0: .4byte 0x00196225
_0802EEE4: .4byte 0x3C6EF35F
_0802EEE8: .4byte gUnknown_080BB434
_0802EEEC: .4byte gUnknown_080BB41C
_0802EEF0: .4byte gUnknown_080BB42C
_0802EEF4: .4byte sub_80177EC
_0802EEF8: .4byte 0x03000040
_0802EEFC: .4byte gSineTable
_0802EF00: .4byte 0x000001FF
_0802EF04: .4byte gCamera

	thumb_func_start TaskDestructor_EggPress
TaskDestructor_EggPress: @ 0x0802EF08
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x10]
	bl VramFree
	ldr r0, [r4, #0x50]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0

@ --- Start of EggBall

@ inline?
	thumb_func_start sub_802EF24
sub_802EF24: @ 0x0802EF24
	ldr r0, _0802EF54 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	ldr r0, _0802EF58 @ =0x0300004C
	adds r1, r2, r0
	adds r0, #0x20
	adds r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq _0802EF50
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0802EF50
	movs r0, #0
	strb r0, [r3]
	ldr r0, _0802EF5C @ =0x0300006D
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
_0802EF50:
	bx lr
	.align 2, 0
_0802EF54: .4byte gCurTask
_0802EF58: .4byte 0x0300004C
_0802EF5C: .4byte 0x0300006D

@ inline?
	thumb_func_start sub_802EF60
sub_802EF60: @ 0x0802EF60
	push {r4, lr}
	ldr r2, _0802EF88 @ =gCurTask
	ldr r2, [r2]
	ldrh r2, [r2, #6]
	ldr r3, _0802EF8C @ =0x0300000C
	adds r2, r2, r3
	ldr r4, _0802EF90 @ =gCamera
	ldrh r3, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r3
	strh r0, [r2, #0x16]
	ldrh r0, [r4, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r2, #0x18]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802EF88: .4byte gCurTask
_0802EF8C: .4byte 0x0300000C
_0802EF90: .4byte gCamera

	thumb_func_start sub_802EF94
sub_802EF94: @ 0x0802EF94
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r0, _0802F060 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	ldr r0, _0802F064 @ =0x0300000C
	adds r5, r4, r0
	ldr r0, [r5, #0x10]
	ldr r1, _0802F068 @ =0xFFFFFE7F
	ands r0, r1
	str r0, [r5, #0x10]
	ldr r1, _0802F06C @ =gPlayer
	mov r8, r1
	ldr r3, [r1, #0x10]
	movs r0, #0x80
	ands r3, r0
	cmp r3, #0
	bne _0802EFD8
	ldr r2, _0802F070 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0802F074 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0802F078 @ =gWinRegs
	strh r3, [r0, #0xa]
	ldr r0, _0802F07C @ =gBldRegs
	strh r3, [r0]
	strh r3, [r0, #4]
_0802EFD8:
	ldr r3, _0802F080 @ =0x0300008B
	adds r3, r3, r4
	mov sb, r3
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bne _0802F0BA
	lsls r0, r7, #0x10
	asrs r7, r0, #0x10
	lsls r0, r6, #0x10
	asrs r6, r0, #0x10
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	mov r3, r8
	bl sub_800B8B4
	mov r8, r0
	movs r1, #0
	ldr r0, _0802F084 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0802F018
	ldr r3, _0802F088 @ =gUnknown_03005AB0
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_800B8B4
	adds r1, r0, #0
_0802F018:
	ldr r0, _0802F08C @ =0x0300003C
	adds r2, r4, r0
	mov r3, r8
	cmp r3, #1
	beq _0802F026
	cmp r1, #1
	bne _0802F0A0
_0802F026:
	ldr r0, _0802F090 @ =0x0300008A
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0x20
	mov r3, sb
	strb r0, [r3]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #4
	bne _0802F046
	ldr r0, _0802F094 @ =0x0300008C
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
_0802F046:
	ldr r3, _0802F098 @ =0x0300005C
	adds r1, r4, r3
	movs r0, #2
	strb r0, [r1]
	ldr r0, [r2, #0x10]
	ldr r1, _0802F09C @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x10]
	movs r0, #0x8f
	bl m4aSongNumStart
	b _0802F0BA
	.align 2, 0
_0802F060: .4byte gCurTask
_0802F064: .4byte 0x0300000C
_0802F068: .4byte 0xFFFFFE7F
_0802F06C: .4byte gPlayer
_0802F070: .4byte gDispCnt
_0802F074: .4byte 0x00007FFF
_0802F078: .4byte gWinRegs
_0802F07C: .4byte gBldRegs
_0802F080: .4byte 0x0300008B
_0802F084: .4byte gUnknown_03005088
_0802F088: .4byte gUnknown_03005AB0
_0802F08C: .4byte 0x0300003C
_0802F090: .4byte 0x0300008A
_0802F094: .4byte 0x0300008C
_0802F098: .4byte 0x0300005C
_0802F09C: .4byte 0xFFFFBFFF
_0802F0A0:
	mov r0, r8
	cmp r0, #2
	beq _0802F0AA
	cmp r1, #2
	bne _0802F0BA
_0802F0AA:
	ldr r3, _0802F0C8 @ =0x0300005C
	adds r1, r4, r3
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r2, #0x10]
	ldr r1, _0802F0CC @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x10]
_0802F0BA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802F0C8: .4byte 0x0300005C
_0802F0CC: .4byte 0xFFFFBFFF

	thumb_func_start sub_802F0D0
sub_802F0D0: @ 0x0802F0D0
	push {r4, r5, lr}
	ldr r0, _0802F148 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _0802F14C @ =0x0300000C
	adds r3, r0, r1
	ldr r5, _0802F150 @ =0x0300003C
	adds r4, r0, r5
	adds r1, #0x7f
	adds r2, r0, r1
	ldrb r1, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _0802F134
	subs r1, #1
	strb r1, [r2]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x10
	ble _0802F134
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _0802F134
	ldr r0, _0802F154 @ =gPlayer
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0802F134
	ldr r0, [r3, #0x10]
	adds r1, #0x80
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r2, _0802F158 @ =gDispCnt
	ldrh r0, [r2]
	movs r5, #0x80
	lsls r5, r5, #8
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0802F15C @ =gWinRegs
	ldr r0, _0802F160 @ =0x00003F1F
	strh r0, [r1, #0xa]
	ldr r1, _0802F164 @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
_0802F134:
	adds r0, r3, #0
	bl DisplaySprite
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802F148: .4byte gCurTask
_0802F14C: .4byte 0x0300000C
_0802F150: .4byte 0x0300003C
_0802F154: .4byte gPlayer
_0802F158: .4byte gDispCnt
_0802F15C: .4byte gWinRegs
_0802F160: .4byte 0x00003F1F
_0802F164: .4byte gBldRegs

	thumb_func_start CreateEntity_EggBall
CreateEntity_EggBall: @ 0x0802F168
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r0, [sp, #4]
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r5, r3, #0x18
	ldr r0, _0802F198 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0802F19C
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	ldr r2, [sp, #4]
	strb r0, [r2]
	b _0802F484
	.align 2, 0
_0802F198: .4byte gGameMode
_0802F19C:
	ldr r1, _0802F218 @ =gPseudoRandom
	ldr r0, _0802F21C @ =gFrameCount
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _0802F220 @ =Task_EggBallMain
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0802F224 @ =TaskDestructor_EggBall
	str r1, [sp]
	movs r1, #0x9c
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r3, r0
	ldr r4, _0802F228 @ =0x0300000C
	adds r4, r4, r3
	mov sl, r4
	movs r4, #0
	movs r2, #0
	strh r6, [r7, #4]
	mov r0, r8
	strh r0, [r7, #6]
	ldr r1, [sp, #4]
	str r1, [r7]
	ldrb r0, [r1]
	strb r0, [r7, #8]
	strb r5, [r7, #9]
	ldr r5, _0802F22C @ =0x03000084
	adds r0, r3, r5
	strh r2, [r0]
	ldr r1, _0802F230 @ =0x03000088
	adds r0, r3, r1
	strh r2, [r0]
	adds r5, #2
	adds r1, r3, r5
	ldr r0, _0802F234 @ =0x0000FFF8
	strh r0, [r1]
	ldr r1, _0802F238 @ =0x0300008B
	adds r0, r3, r1
	strb r4, [r0]
	adds r5, #6
	adds r0, r3, r5
	strb r4, [r0]
	str r2, [r7, #0x70]
	adds r1, #2
	adds r0, r3, r1
	strb r4, [r0]
	ldr r2, _0802F23C @ =0x0300008E
	adds r0, r3, r2
	strb r4, [r0]
	ldr r0, _0802F240 @ =gUnknown_03005160
	ldrb r0, [r0, #0x18]
	cmp r0, #0
	beq _0802F248
	ldr r4, _0802F244 @ =0x0300008A
	adds r1, r3, r4
	movs r0, #2
	strb r0, [r1]
	b _0802F24E
	.align 2, 0
_0802F218: .4byte gPseudoRandom
_0802F21C: .4byte gFrameCount
_0802F220: .4byte Task_EggBallMain
_0802F224: .4byte TaskDestructor_EggBall
_0802F228: .4byte 0x0300000C
_0802F22C: .4byte 0x03000084
_0802F230: .4byte 0x03000088
_0802F234: .4byte 0x0000FFF8
_0802F238: .4byte 0x0300008B
_0802F23C: .4byte 0x0300008E
_0802F240: .4byte gUnknown_03005160
_0802F244: .4byte 0x0300008A
_0802F248:
	ldr r5, _0802F3A8 @ =0x0300008A
	adds r0, r3, r5
	strb r4, [r0]
_0802F24E:
	ldr r1, [sp, #4]
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r6, r6, #8
	mov sb, r6
	add r0, sb
	movs r6, #0
	movs r5, #0
	mov r2, sl
	strh r0, [r2, #0x16]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	mov r3, r8
	lsls r3, r3, #8
	mov r8, r3
	add r0, r8
	strh r0, [r2, #0x18]
	movs r0, #0x24
	bl VramMalloc
	mov r4, sl
	str r0, [r4, #4]
	movs r0, #0xa8
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	strh r5, [r4, #8]
	movs r0, #0x9c
	lsls r0, r0, #2
	strh r0, [r4, #0xa]
	mov r0, sl
	adds r0, #0x20
	strb r6, [r0]
	strh r5, [r4, #0x14]
	strh r5, [r4, #0x1c]
	mov r1, sl
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	mov r0, sl
	adds r0, #0x22
	movs r1, #0x10
	strb r1, [r0]
	adds r0, #3
	strb r6, [r0]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r4, #0x28]
	movs r3, #0x80
	lsls r3, r3, #6
	str r3, [r4, #0x10]
	adds r4, r7, #0
	adds r4, #0x3c
	ldr r1, [sp, #4]
	ldrb r0, [r1]
	lsls r0, r0, #3
	add r0, sb
	strh r0, [r4, #0x16]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	add r0, r8
	strh r0, [r4, #0x18]
	subs r2, #1
	adds r0, r2, #0
	strb r0, [r1]
	movs r0, #8
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0xb0
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	strh r5, [r4, #8]
	ldr r0, _0802F3AC @ =0x0000026E
	strh r0, [r4, #0xa]
	adds r0, r7, #0
	adds r0, #0x5c
	strb r6, [r0]
	strh r5, [r4, #0x14]
	strh r5, [r4, #0x1c]
	adds r1, r7, #0
	adds r1, #0x5d
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x5e
	movs r3, #0x10
	strb r3, [r0]
	adds r0, #3
	strb r6, [r0]
	subs r5, #1
	str r5, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	movs r6, #0
	mov r1, sb
	str r1, [sp, #8]
	mov r2, r8
	str r2, [sp, #0xc]
	mov sb, r6
_0802F318:
	ldr r0, _0802F3B0 @ =sub_8030754
	str r0, [sp]
	ldr r0, _0802F3B4 @ =sub_803053C
	movs r1, #0x4c
	movs r2, #0x88
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r2, r4, r3
	ldr r5, _0802F3B8 @ =0x03000044
	adds r0, r4, r5
	strb r6, [r0]
	ldr r0, _0802F3BC @ =0x03000045
	adds r1, r4, r0
	movs r0, #0x5a
	strb r0, [r1]
	lsls r5, r6, #3
	ldr r1, _0802F3C0 @ =gUnknown_084ACDD2
	adds r0, r5, r1
	ldrh r1, [r0]
	strh r1, [r2, #0x3c]
	ldr r3, _0802F3C4 @ =gUnknown_084ACDD4
	adds r0, r5, r3
	ldrh r3, [r0]
	strh r3, [r2, #0x3e]
	ldrh r0, [r7, #4]
	strh r0, [r2, #4]
	ldrh r0, [r7, #6]
	strh r0, [r2, #6]
	ldr r0, [r7]
	str r0, [r2]
	ldrb r0, [r7, #8]
	strb r0, [r2, #8]
	ldrb r0, [r7, #9]
	strb r0, [r2, #9]
	str r7, [r2, #0x48]
	ldr r0, _0802F3C8 @ =0x0300000C
	adds r4, r4, r0
	ldr r2, [sp, #4]
	ldrb r0, [r2]
	lsls r0, r0, #3
	ldr r2, [sp, #8]
	adds r0, r0, r2
	adds r1, r1, r0
	strh r1, [r4, #0x16]
	ldr r1, [sp, #4]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	ldr r2, [sp, #0xc]
	adds r0, r0, r2
	adds r3, r3, r0
	strh r3, [r4, #0x18]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r6
	cmp r0, #0
	bne _0802F3D4
	movs r0, #0x1c
	bl VramMalloc
	adds r1, r0, #0
	str r1, [r4, #4]
	cmp r6, #0
	bne _0802F3CC
	adds r0, r7, #0
	adds r0, #0x94
	str r1, [r0]
	b _0802F3EA
	.align 2, 0
_0802F3A8: .4byte 0x0300008A
_0802F3AC: .4byte 0x0000026E
_0802F3B0: .4byte sub_8030754
_0802F3B4: .4byte sub_803053C
_0802F3B8: .4byte 0x03000044
_0802F3BC: .4byte 0x03000045
_0802F3C0: .4byte gUnknown_084ACDD2
_0802F3C4: .4byte gUnknown_084ACDD4
_0802F3C8: .4byte 0x0300000C
_0802F3CC:
	adds r0, r7, #0
	adds r0, #0x98
	str r1, [r0]
	b _0802F3EA
_0802F3D4:
	movs r0, #2
	ands r0, r6
	cmp r0, #0
	bne _0802F3E2
	adds r0, r7, #0
	adds r0, #0x94
	b _0802F3E6
_0802F3E2:
	adds r0, r7, #0
	adds r0, #0x98
_0802F3E6:
	ldr r0, [r0]
	str r0, [r4, #4]
_0802F3EA:
	movs r0, #2
	ands r0, r6
	cmp r0, #0
	beq _0802F3F8
	movs r0, #0x90
	lsls r0, r0, #3
	b _0802F3FC
_0802F3F8:
	movs r0, #0xe0
	lsls r0, r0, #2
_0802F3FC:
	strh r0, [r4, #0x1a]
	mov r3, sb
	strh r3, [r4, #8]
	ldr r0, _0802F494 @ =0x00000251
	strh r0, [r4, #0xa]
	ldr r0, _0802F498 @ =gUnknown_084ACDD2
	adds r0, #4
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
	strh r3, [r4, #0x14]
	strh r3, [r4, #0x1c]
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x22
	movs r1, #0x10
	mov r8, r1
	mov r2, r8
	strb r2, [r0]
	adds r0, #3
	movs r3, #0
	strb r3, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	ldr r1, _0802F49C @ =gUnknown_084ACDD8
	adds r0, r5, r1
	ldrh r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r4, #0x10]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #7
	bhi _0802F458
	b _0802F318
_0802F458:
	mov r3, sl
	ldrh r1, [r3, #0x18]
	adds r0, r1, #0
	subs r0, #0xb8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r4, _0802F4A0 @ =0xFFFFFEE8
	adds r2, r4, #0
	ldrh r5, [r3, #0x16]
	adds r2, r2, r5
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r4, #0x16
	ldrsh r3, [r3, r4]
	bl sub_80171BC
	ldr r0, _0802F4A4 @ =gUnknown_03005040
	mov r5, r8
	strb r5, [r0, #1]
_0802F484:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802F494: .4byte 0x00000251
_0802F498: .4byte gUnknown_084ACDD2
_0802F49C: .4byte gUnknown_084ACDD8
_0802F4A0: .4byte 0xFFFFFEE8
_0802F4A4: .4byte gUnknown_03005040

	thumb_func_start Task_EggBallMain
Task_EggBallMain: @ 0x0802F4A8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0802F54C @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	ldr r1, _0802F550 @ =0x03000088
	adds r7, r5, r1
	ldrh r0, [r7]
	adds r1, r0, #1
	strh r1, [r7]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x78
	bls _0802F540
	ldr r0, _0802F554 @ =0x0300000C
	adds r4, r5, r0
	ldr r1, _0802F558 @ =0x0300003C
	adds r5, r5, r1
	ldr r3, [r6]
	ldr r1, _0802F55C @ =0xFFFFAB00
	str r1, [r6, #0x70]
	movs r0, #0
	str r0, [r6, #0x74]
	ldr r0, _0802F560 @ =0xFFFFFF00
	str r0, [r6, #0x7c]
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	asrs r1, r1, #8
	adds r2, r2, r1
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _0802F564 @ =gCamera
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r4, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r4, #0x18]
	strh r2, [r5, #0x16]
	ldrh r0, [r4, #0x18]
	strh r0, [r5, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #0
	bl DisplaySprite
	movs r0, #0x3c
	strh r0, [r7]
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _0802F568 @ =sub_802F56C
	str r0, [r1, #8]
	bl _call_via_r0
_0802F540:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802F54C: .4byte gCurTask
_0802F550: .4byte 0x03000088
_0802F554: .4byte 0x0300000C
_0802F558: .4byte 0x0300003C
_0802F55C: .4byte 0xFFFFAB00
_0802F560: .4byte 0xFFFFFF00
_0802F564: .4byte gCamera
_0802F568: .4byte sub_802F56C

	thumb_func_start sub_802F56C
sub_802F56C: @ 0x0802F56C
	push {r4, r5, r6, r7, lr}
	ldr r1, _0802F5B4 @ =gCurTask
	ldr r0, [r1]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	adds r0, #0xc
	adds r5, r2, r0
	adds r0, #0x30
	adds r7, r2, r0
	ldr r6, [r3]
	ldr r4, [r3, #0x74]
	ldr r0, _0802F5B8 @ =0xFFFFB000
	mov ip, r1
	cmp r4, r0
	bgt _0802F5C8
	ldr r1, _0802F5BC @ =0x03000088
	adds r4, r2, r1
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802F5CE
	ldr r0, _0802F5C0 @ =0x0300005C
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x3c
	strh r0, [r4]
	mov r0, ip
	ldr r1, [r0]
	ldr r0, _0802F5C4 @ =sub_802F644
	str r0, [r1, #8]
	b _0802F5CE
	.align 2, 0
_0802F5B4: .4byte gCurTask
_0802F5B8: .4byte 0xFFFFB000
_0802F5BC: .4byte 0x03000088
_0802F5C0: .4byte 0x0300005C
_0802F5C4: .4byte sub_802F644
_0802F5C8:
	ldr r1, _0802F638 @ =0xFFFFFF00
	adds r0, r4, r1
	str r0, [r3, #0x74]
_0802F5CE:
	ldrb r2, [r3, #8]
	lsls r2, r2, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r0, [r3, #0x70]
	asrs r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r6, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #0x74]
	asrs r0, r0, #8
	adds r1, r1, r0
	ldr r3, _0802F63C @ =gCamera
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0x18]
	mov r1, ip
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	ldr r1, _0802F640 @ =0x0300000C
	adds r2, r0, r1
	adds r1, #0x30
	adds r0, r0, r1
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r7, #0
	bl DisplaySprite
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802F638: .4byte 0xFFFFFF00
_0802F63C: .4byte gCamera
_0802F640: .4byte 0x0300000C

	thumb_func_start sub_802F644
sub_802F644: @ 0x0802F644
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _0802F714 @ =gCurTask
	ldr r3, [r0]
	ldrh r1, [r3, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r6, r1, r4
	ldr r0, _0802F718 @ =0x0300000C
	adds r0, r0, r1
	mov sb, r0
	ldr r2, _0802F71C @ =0x0300003C
	adds r2, r2, r1
	mov sl, r2
	ldr r0, [r6]
	str r0, [sp, #4]
	ldr r2, _0802F720 @ =0x0300005C
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802F758
	ldr r0, _0802F724 @ =0x03000088
	adds r2, r1, r0
	ldrh r0, [r2]
	adds r7, r0, #0
	cmp r7, #0
	bne _0802F754
	ldr r0, [r6, #0x74]
	ldr r1, _0802F728 @ =0xFFFFFF00
	adds r0, r0, r1
	str r0, [r6, #0x74]
	ldr r1, _0802F72C @ =0xFFFF3000
	cmp r0, r1
	bgt _0802F758
	movs r0, #0
	mov r8, r0
	movs r0, #0x3c
	strh r0, [r2]
	ldr r0, _0802F730 @ =sub_802F804
	str r0, [r3, #8]
	ldr r0, _0802F734 @ =sub_8030120
	movs r2, #0xa0
	lsls r2, r2, #6
	ldr r1, _0802F738 @ =sub_8030740
	str r1, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	adds r4, r5, r4
	ldr r1, [r6, #0x70]
	str r1, [r4, #0x30]
	ldr r1, [r6, #0x74]
	str r1, [r4, #0x34]
	str r7, [r4, #0x38]
	str r7, [r4, #0x3c]
	ldr r2, _0802F73C @ =0x03000042
	adds r1, r5, r2
	mov r2, r8
	strb r2, [r1]
	str r0, [r6, #0x6c]
	strh r7, [r4, #0x16]
	strh r7, [r4, #0x18]
	movs r0, #0x24
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0xb8
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	strh r7, [r4, #8]
	ldr r0, _0802F740 @ =0x00000271
	strh r0, [r4, #0xa]
	ldr r1, _0802F744 @ =0x03000020
	adds r0, r5, r1
	mov r2, r8
	strb r2, [r0]
	strh r7, [r4, #0x14]
	strh r7, [r4, #0x1c]
	ldr r0, _0802F748 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r2, _0802F74C @ =0x03000022
	adds r1, r5, r2
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _0802F750 @ =0x03000025
	adds r5, r5, r0
	mov r1, r8
	strb r1, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	b _0802F758
	.align 2, 0
_0802F714: .4byte gCurTask
_0802F718: .4byte 0x0300000C
_0802F71C: .4byte 0x0300003C
_0802F720: .4byte 0x0300005C
_0802F724: .4byte 0x03000088
_0802F728: .4byte 0xFFFFFF00
_0802F72C: .4byte 0xFFFF3000
_0802F730: .4byte sub_802F804
_0802F734: .4byte sub_8030120
_0802F738: .4byte sub_8030740
_0802F73C: .4byte 0x03000042
_0802F740: .4byte 0x00000271
_0802F744: .4byte 0x03000020
_0802F748: .4byte 0x03000021
_0802F74C: .4byte 0x03000022
_0802F750: .4byte 0x03000025
_0802F754:
	subs r0, #1
	strh r0, [r2]
_0802F758:
	mov r3, sl
	adds r3, #0x20
	ldrb r0, [r3]
	cmp r0, #1
	bne _0802F77C
	mov r2, sl
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0802F77C
	adds r0, r6, #0
	adds r0, #0x88
	movs r2, #0
	movs r1, #0x3c
	strh r1, [r0]
	strb r2, [r3]
_0802F77C:
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r0, [r6, #0x70]
	asrs r0, r0, #8
	adds r2, r2, r0
	ldr r0, [sp, #4]
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6, #0x74]
	asrs r0, r0, #8
	adds r1, r1, r0
	ldr r3, _0802F7F8 @ =gCamera
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	mov r0, sb
	strh r2, [r0, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	mov r2, sb
	strh r1, [r2, #0x18]
	ldr r0, _0802F7FC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _0802F800 @ =0x0300000C
	adds r2, r0, r1
	adds r1, #0x30
	adds r0, r0, r1
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, sl
	bl UpdateSpriteAnimation
	mov r0, sb
	bl DisplaySprite
	mov r0, sl
	bl DisplaySprite
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802F7F8: .4byte gCamera
_0802F7FC: .4byte gCurTask
_0802F800: .4byte 0x0300000C

	thumb_func_start sub_802F804
sub_802F804: @ 0x0802F804
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0802F8D8 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r6, r0
	adds r0, #0xc
	adds r0, r0, r6
	mov sl, r0
	ldr r1, _0802F8DC @ =0x0300003C
	adds r1, r6, r1
	str r1, [sp]
	ldr r2, [r7]
	str r2, [sp, #4]
	ldr r3, _0802F8E0 @ =0x03000088
	adds r1, r6, r3
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802F930
	ldr r0, [r7, #0x6c]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r0, r1
	str r1, [sp, #8]
	ldr r2, _0802F8E4 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _0802F8E8 @ =0x00196225
	muls r1, r0, r1
	ldr r3, _0802F8EC @ =0x3C6EF35F
	adds r1, r1, r3
	str r1, [r2]
	movs r0, #7
	ands r0, r1
	ldr r2, _0802F8F0 @ =0x0300008E
	adds r1, r6, r2
	strb r0, [r1]
	ldr r1, _0802F8F4 @ =gUnknown_084ACEA4
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrb r4, [r0]
	ldr r5, _0802F8F8 @ =gUnknown_084ACE24
	lsls r4, r4, #4
	adds r0, r4, r5
	ldr r0, [r0]
	mov sb, r0
	str r0, [r7, #0x70]
	adds r0, r5, #4
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [r7, #0x74]
	adds r1, r5, #0
	adds r1, #8
	adds r1, r4, r1
	ldr r3, _0802F8FC @ =gUnknown_084ACDC0
	mov r8, r3
	ldr r0, _0802F900 @ =0x0300008A
	adds r6, r6, r0
	movs r0, #0
	ldrsb r0, [r6, r0]
	lsls r0, r0, #1
	add r0, r8
	movs r3, #0
	ldrsh r2, [r0, r3]
	ldr r0, [r1]
	muls r0, r2, r0
	movs r1, #0xa
	bl __divsi3
	str r0, [r7, #0x78]
	adds r5, #0xc
	adds r4, r4, r5
	movs r0, #0
	ldrsb r0, [r6, r0]
	lsls r0, r0, #1
	add r0, r8
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r4]
	muls r0, r1, r0
	movs r1, #0xa
	bl __divsi3
	str r0, [r7, #0x7c]
	ldr r0, _0802F904 @ =0xFFFF7400
	cmp sb, r0
	blt _0802F90C
	mov r3, sl
	ldr r0, [r3, #0x10]
	ldr r1, _0802F908 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r2, [sp]
	ldr r0, [r2, #0x10]
	ands r0, r1
	b _0802F91E
	.align 2, 0
_0802F8D8: .4byte gCurTask
_0802F8DC: .4byte 0x0300003C
_0802F8E0: .4byte 0x03000088
_0802F8E4: .4byte gPseudoRandom
_0802F8E8: .4byte 0x00196225
_0802F8EC: .4byte 0x3C6EF35F
_0802F8F0: .4byte 0x0300008E
_0802F8F4: .4byte gUnknown_084ACEA4
_0802F8F8: .4byte gUnknown_084ACE24
_0802F8FC: .4byte gUnknown_084ACDC0
_0802F900: .4byte 0x0300008A
_0802F904: .4byte 0xFFFF7400
_0802F908: .4byte 0xFFFFFBFF
_0802F90C:
	mov r3, sl
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r2, [sp]
	ldr r0, [r2, #0x10]
	orrs r0, r1
_0802F91E:
	str r0, [r2, #0x10]
	ldr r1, [sp, #8]
	adds r1, #0x42
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0802F9DC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802F9E0 @ =sub_802F9F8
	str r0, [r1, #8]
_0802F930:
	ldrb r5, [r7, #8]
	lsls r5, r5, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r5, r5, r0
	ldr r0, [r7, #0x70]
	asrs r0, r0, #8
	adds r5, r5, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r3, [sp, #4]
	ldrb r4, [r3, #1]
	lsls r4, r4, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r4, r4, r0
	ldr r0, [r7, #0x74]
	asrs r0, r0, #8
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r1, r7, #0
	adds r1, #0x8b
	movs r0, #0
	strb r0, [r1]
	mov r0, sl
	bl UpdateSpriteAnimation
	ldr r0, [sp]
	bl UpdateSpriteAnimation
	ldr r0, _0802F9DC @ =gCurTask
	ldr r3, [r0]
	ldrh r0, [r3, #6]
	ldr r1, _0802F9E4 @ =0x0300000C
	adds r0, r0, r1
	ldr r2, _0802F9E8 @ =gCamera
	ldrh r1, [r2]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	subs r5, r5, r1
	strh r5, [r0, #0x16]
	ldrh r1, [r2, #2]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	subs r4, r4, r1
	strh r4, [r0, #0x18]
	ldrh r2, [r3, #6]
	ldr r3, _0802F9EC @ =0x0300003C
	adds r1, r2, r3
	ldr r0, _0802F9F0 @ =0x0300005C
	adds r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq _0802F9B6
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0802F9B6
	movs r0, #0
	strb r0, [r3]
	ldr r3, _0802F9F4 @ =0x0300005D
	adds r1, r2, r3
	movs r0, #0xff
	strb r0, [r1]
_0802F9B6:
	ldr r0, _0802F9DC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _0802F9E4 @ =0x0300000C
	adds r2, r0, r1
	ldr r3, _0802F9EC @ =0x0300003C
	adds r0, r0, r3
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802F9DC: .4byte gCurTask
_0802F9E0: .4byte sub_802F9F8
_0802F9E4: .4byte 0x0300000C
_0802F9E8: .4byte gCamera
_0802F9EC: .4byte 0x0300003C
_0802F9F0: .4byte 0x0300005C
_0802F9F4: .4byte 0x0300005D

	thumb_func_start sub_802F9F8
sub_802F9F8: @ 0x0802F9F8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r3, _0802FAA8 @ =gCurTask
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	adds r1, #0xc
	adds r7, r0, r1
	adds r1, #0x30
	adds r1, r1, r0
	mov r8, r1
	ldr r4, [r6]
	ldr r1, [r6, #0x70]
	ldr r0, [r6, #0x78]
	adds r1, r1, r0
	str r1, [r6, #0x70]
	ldr r2, [r6, #0x74]
	ldr r0, [r6, #0x7c]
	adds r2, r2, r0
	str r2, [r6, #0x74]
	movs r0, #0x9c
	lsls r0, r0, #9
	adds r1, r1, r0
	movs r0, #0xac
	lsls r0, r0, #9
	cmp r1, r0
	bhi _0802FA42
	ldr r0, _0802FAAC @ =0xFFFF3000
	cmp r2, r0
	blt _0802FA42
	movs r0, #0xa0
	lsls r0, r0, #6
	cmp r2, r0
	ble _0802FA50
_0802FA42:
	adds r1, r6, #0
	adds r1, #0x88
	movs r0, #0x3c
	strh r0, [r1]
	ldr r1, [r3]
	ldr r0, _0802FAB0 @ =sub_802F804
	str r0, [r1, #8]
_0802FA50:
	ldrb r5, [r6, #8]
	lsls r5, r5, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r5, r5, r0
	ldr r0, [r6, #0x70]
	asrs r0, r0, #8
	adds r5, r5, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldrb r4, [r4, #1]
	lsls r4, r4, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r4, r4, r0
	ldr r0, [r6, #0x74]
	asrs r0, r0, #8
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	mov r0, r8
	bl UpdateSpriteAnimation
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r4, r4, #0x10
	asrs r7, r4, #0x10
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_802EF94
	adds r0, r6, #0
	adds r0, #0x8a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _0802FAB4
	bl sub_802FB2C
	b _0802FB0E
	.align 2, 0
_0802FAA8: .4byte gCurTask
_0802FAAC: .4byte 0xFFFF3000
_0802FAB0: .4byte sub_802F804
_0802FAB4:
	ldr r4, _0802FB18 @ =gCurTask
	ldr r3, [r4]
	ldrh r1, [r3, #6]
	ldr r0, _0802FB1C @ =0x0300000C
	adds r1, r1, r0
	ldr r2, _0802FB20 @ =gCamera
	ldrh r0, [r2]
	subs r0, r5, r0
	strh r0, [r1, #0x16]
	ldrh r0, [r2, #2]
	subs r0, r7, r0
	strh r0, [r1, #0x18]
	ldrh r2, [r3, #6]
	ldr r0, _0802FB24 @ =0x0300003C
	adds r1, r2, r0
	adds r0, #0x20
	adds r5, r2, r0
	ldrb r0, [r5]
	adds r3, r4, #0
	cmp r0, #0
	beq _0802FAF6
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0802FAF6
	movs r0, #0
	strb r0, [r5]
	ldr r0, _0802FB28 @ =0x0300005D
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
_0802FAF6:
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	ldr r1, _0802FB1C @ =0x0300000C
	adds r2, r0, r1
	adds r1, #0x30
	adds r0, r0, r1
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	bl sub_802F0D0
_0802FB0E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802FB18: .4byte gCurTask
_0802FB1C: .4byte 0x0300000C
_0802FB20: .4byte gCamera
_0802FB24: .4byte 0x0300003C
_0802FB28: .4byte 0x0300005D

	thumb_func_start sub_802FB2C
sub_802FB2C: @ 0x0802FB2C
	push {r4, r5, r6, lr}
	ldr r0, _0802FBDC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r1, r4
	ldr r0, _0802FBE0 @ =0x0300005C
	adds r2, r1, r0
	movs r0, #2
	strb r0, [r2]
	ldr r2, _0802FBE4 @ =0x03000090
	adds r1, r1, r2
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r1]
	movs r0, #0x90
	bl m4aSongNumStart
	ldr r1, [r4, #0x6c]
	ldr r0, _0802FBE8 @ =sub_8030364
	str r0, [r1, #8]
	ldr r0, _0802FBEC @ =0x00002010
	ldr r1, _0802FBF0 @ =0x00002011
	bl TasksDestroyInPriorityRange
	ldr r1, _0802FBF4 @ =gPlayer
	ldr r0, [r1, #0x10]
	movs r2, #9
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r1, #0x10]
	ldr r1, _0802FBF8 @ =gUnknown_03005AB0
	ldr r0, [r1, #0x10]
	ands r0, r2
	str r0, [r1, #0x10]
	ldr r4, _0802FBFC @ =gCamera
	ldrh r0, [r4]
	strh r0, [r4, #0x18]
	adds r0, #0xf0
	strh r0, [r4, #0x1a]
	ldrh r5, [r4, #0x14]
	ldrh r6, [r4, #0x16]
	adds r0, r5, #0
	adds r0, #0x28
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x16
	ldrsh r1, [r4, r2]
	bl sub_80174DC
	strh r5, [r4, #0x14]
	strh r6, [r4, #0x16]
	ldr r1, _0802FC00 @ =gLevelScore
	ldr r6, [r1]
	movs r2, #0xfa
	lsls r2, r2, #2
	adds r0, r6, r2
	str r0, [r1]
	ldr r4, _0802FC04 @ =0x0000C350
	adds r1, r4, #0
	bl Div
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl Div
	cmp r5, r0
	beq _0802FBC8
	ldr r0, _0802FC08 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802FBC8
	ldr r1, _0802FC0C @ =gNumLives
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0802FBC8:
	bl sub_802FC14
	ldr r0, _0802FBDC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802FC10 @ =sub_802FC14
	str r0, [r1, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802FBDC: .4byte gCurTask
_0802FBE0: .4byte 0x0300005C
_0802FBE4: .4byte 0x03000090
_0802FBE8: .4byte sub_8030364
_0802FBEC: .4byte 0x00002010
_0802FBF0: .4byte 0x00002011
_0802FBF4: .4byte gPlayer
_0802FBF8: .4byte gUnknown_03005AB0
_0802FBFC: .4byte gCamera
_0802FC00: .4byte gLevelScore
_0802FC04: .4byte 0x0000C350
_0802FC08: .4byte gGameMode
_0802FC0C: .4byte gNumLives
_0802FC10: .4byte sub_802FC14

	thumb_func_start sub_802FC14
sub_802FC14: @ 0x0802FC14
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0802FE2C @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, _0802FE30 @ =0x0300000C
	adds r7, r1, r2
	ldr r3, _0802FE34 @ =0x0300003C
	adds r3, r1, r3
	str r3, [sp, #4]
	ldr r2, [r4]
	adds r0, #0x90
	adds r5, r1, r0
	ldrh r0, [r5]
	adds r0, #0x28
	strh r0, [r5]
	movs r1, #0
	ldrsh r0, [r5, r1]
	ldr r3, [r4, #0x74]
	adds r3, r3, r0
	str r3, [r4, #0x74]
	ldrb r1, [r4, #8]
	lsls r1, r1, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0x70]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	ldrh r2, [r4, #6]
	lsls r2, r2, #8
	adds r0, r0, r2
	asrs r3, r3, #8
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x18
	lsrs r2, r1, #0x10
	mov r8, r2
	asrs r1, r1, #0x10
	ldr r2, _0802FE38 @ =sub_803FD5C
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	bl sub_804021C
	cmp r0, #0
	bge _0802FCB4
	lsls r1, r0, #8
	ldr r0, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x74]
	ldrh r1, [r5]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x12
	subs r0, r0, r1
	strh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _0802FE3C @ =0xFFFFFF00
	cmp r0, r1
	ble _0802FCB4
	movs r0, #0
	strh r0, [r5]
	mov r3, sb
	ldr r1, [r3]
	ldr r0, _0802FE40 @ =sub_802FE88
	str r0, [r1, #8]
_0802FCB4:
	ldr r0, [r7, #0x10]
	ldr r1, _0802FE44 @ =0xFFFFFE7F
	ands r0, r1
	str r0, [r7, #0x10]
	ldr r0, _0802FE48 @ =gPlayer
	ldr r3, [r0, #0x10]
	movs r0, #0x80
	ands r3, r0
	cmp r3, #0
	bne _0802FCDC
	ldr r2, _0802FE4C @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0802FE50 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0802FE54 @ =gWinRegs
	strh r3, [r0, #0xa]
	ldr r0, _0802FE58 @ =gBldRegs
	strh r3, [r0]
	strh r3, [r0, #4]
_0802FCDC:
	adds r1, r4, #0
	adds r1, #0x88
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r4, #7
	ands r0, r4
	lsls r6, r6, #0x10
	str r6, [sp, #8]
	mov r1, r8
	lsls r1, r1, #0x10
	mov sl, r1
	cmp r0, #0
	bne _0802FDD6
	ldr r2, _0802FE5C @ =gPseudoRandom
	mov sb, r2
	ldr r0, [r2]
	ldr r3, _0802FE60 @ =0x00196225
	muls r0, r3, r0
	ldr r1, _0802FE64 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	ands r4, r0
	ldr r0, _0802FE68 @ =gUnknown_080BB434
	adds r0, r4, r0
	ldrb r0, [r0]
	bl VramMalloc
	adds r1, r0, #0
	movs r6, #0x80
	lsls r6, r6, #6
	ldr r2, _0802FE6C @ =gUnknown_080BB41C
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, _0802FE70 @ =gUnknown_080BB42C
	adds r4, r4, r0
	ldrb r3, [r4]
	ldr r0, _0802FE74 @ =sub_80177EC
	str r0, [sp]
	adds r0, r6, #0
	bl sub_801769C
	ldrh r3, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r3, r5
	mov r2, sl
	asrs r0, r2, #0x10
	lsls r1, r0, #8
	str r1, [r5, #0x30]
	ldr r4, [sp, #8]
	asrs r1, r4, #0x10
	adds r2, r1, #0
	adds r2, #0x20
	lsls r2, r2, #8
	str r2, [r5, #0x34]
	str r6, [r5, #0x10]
	movs r2, #0x88
	lsls r2, r2, #3
	strh r2, [r5, #0x1a]
	movs r2, #0x28
	strh r2, [r5, #0x3e]
	ldr r2, _0802FE78 @ =0x03000040
	adds r3, r3, r2
	movs r2, #0x20
	strh r2, [r3]
	mov r3, sb
	ldr r2, [r3]
	ldr r4, _0802FE60 @ =0x00196225
	adds r6, r2, #0
	muls r6, r4, r6
	ldr r2, _0802FE64 @ =0x3C6EF35F
	adds r6, r6, r2
	str r6, [r3]
	ldr r3, _0802FE7C @ =gSineTable
	mov r8, r3
	ldr r3, _0802FE80 @ =0x000001FF
	ands r3, r6
	lsls r2, r3, #1
	add r2, r8
	mov ip, r2
	movs r4, #0
	ldrsh r2, [r2, r4]
	mov ip, r2
	lsls r2, r2, #1
	add r2, ip
	lsls r2, r2, #9
	rsbs r2, r2, #0
	asrs r2, r2, #0xe
	strh r2, [r5, #0x3a]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r3, r3, r2
	lsls r3, r3, #1
	add r3, r8
	movs r4, #0
	ldrsh r3, [r3, r4]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #9
	rsbs r2, r2, #0
	asrs r2, r2, #0xe
	strh r2, [r5, #0x38]
	ldr r2, _0802FE60 @ =0x00196225
	adds r3, r6, #0
	muls r3, r2, r3
	ldr r4, _0802FE64 @ =0x3C6EF35F
	adds r3, r3, r4
	mov r2, sb
	str r3, [r2]
	movs r2, #0x3f
	ands r2, r3
	adds r0, r0, r2
	subs r0, #0x20
	lsls r0, r0, #8
	movs r2, #0xfc
	lsls r2, r2, #0xe
	ands r3, r2
	asrs r3, r3, #0x10
	subs r3, #0x20
	subs r1, r1, r3
	lsls r1, r1, #8
	bl sub_8017540
_0802FDD6:
	ldr r2, _0802FE84 @ =gCamera
	ldrh r1, [r2]
	mov r3, sl
	asrs r0, r3, #0x10
	subs r0, r0, r1
	strh r0, [r7, #0x16]
	ldrh r1, [r2, #2]
	ldr r4, [sp, #8]
	asrs r0, r4, #0x10
	subs r0, r0, r1
	strh r0, [r7, #0x18]
	ldr r0, _0802FE2C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _0802FE30 @ =0x0300000C
	adds r2, r0, r1
	ldr r3, _0802FE34 @ =0x0300003C
	adds r0, r0, r3
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r0, [sp, #4]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, [sp, #4]
	bl DisplaySprite
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802FE2C: .4byte gCurTask
_0802FE30: .4byte 0x0300000C
_0802FE34: .4byte 0x0300003C
_0802FE38: .4byte sub_803FD5C
_0802FE3C: .4byte 0xFFFFFF00
_0802FE40: .4byte sub_802FE88
_0802FE44: .4byte 0xFFFFFE7F
_0802FE48: .4byte gPlayer
_0802FE4C: .4byte gDispCnt
_0802FE50: .4byte 0x00007FFF
_0802FE54: .4byte gWinRegs
_0802FE58: .4byte gBldRegs
_0802FE5C: .4byte gPseudoRandom
_0802FE60: .4byte 0x00196225
_0802FE64: .4byte 0x3C6EF35F
_0802FE68: .4byte gUnknown_080BB434
_0802FE6C: .4byte gUnknown_080BB41C
_0802FE70: .4byte gUnknown_080BB42C
_0802FE74: .4byte sub_80177EC
_0802FE78: .4byte 0x03000040
_0802FE7C: .4byte gSineTable
_0802FE80: .4byte 0x000001FF
_0802FE84: .4byte gCamera

	thumb_func_start sub_802FE88
sub_802FE88: @ 0x0802FE88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r1, _0802FF60 @ =gCurTask
	ldr r0, [r1]
	ldrh r2, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r3, r2, r5
	ldr r4, _0802FF64 @ =0x0300000C
	adds r4, r4, r2
	mov sl, r4
	ldr r7, _0802FF68 @ =0x0300003C
	adds r7, r2, r7
	str r7, [sp, #4]
	ldr r4, [r3]
	ldrb r1, [r3, #8]
	lsls r1, r1, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #0x70]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	mov r0, r8
	str r0, [sp, #8]
	ldrb r1, [r4, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #0x74]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	str r7, [sp, #0xc]
	ldr r1, _0802FF6C @ =0x03000088
	adds r2, r2, r1
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf0
	bls _0802FFA8
	mov r2, r8
	lsls r4, r2, #0x10
	asrs r4, r4, #0x10
	lsls r1, r7, #0x10
	asrs r5, r1, #0x10
	ldr r3, _0802FF70 @ =0xFFF80000
	adds r1, r1, r3
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8015C5C
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8015FFC
	ldr r1, _0802FF74 @ =gUnknown_03005040
	movs r6, #0
	movs r0, #0x30
	strb r0, [r1, #1]
	ldr r3, _0802FF78 @ =0x0000026F
	str r6, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x10
	bl sub_80168F0
	ldrh r2, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r3, r2, r4
	ldr r7, _0802FF7C @ =0x03000046
	adds r1, r2, r7
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r1]
	ldr r1, _0802FF80 @ =0x03000048
	adds r0, r2, r1
	strh r6, [r0]
	adds r4, #0x42
	adds r1, r2, r4
	movs r0, #0x80
	strh r0, [r1]
	mov r7, sl
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0802FF84
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r3, #0x32]
	adds r4, #2
	adds r0, r2, r4
	strh r1, [r0]
	b _0802FF8E
	.align 2, 0
_0802FF60: .4byte gCurTask
_0802FF64: .4byte 0x0300000C
_0802FF68: .4byte 0x0300003C
_0802FF6C: .4byte 0x03000088
_0802FF70: .4byte 0xFFF80000
_0802FF74: .4byte gUnknown_03005040
_0802FF78: .4byte 0x0000026F
_0802FF7C: .4byte 0x03000046
_0802FF80: .4byte 0x03000048
_0802FF84:
	ldr r7, _0802FFA0 @ =0x03000044
	adds r1, r2, r7
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r1]
_0802FF8E:
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #0x3c
	strh r0, [r1]
	ldr r0, _0802FFA4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080300D6
	.align 2, 0
_0802FFA0: .4byte 0x03000044
_0802FFA4: .4byte gCurTask
_0802FFA8:
	movs r4, #7
	ands r1, r4
	cmp r1, #0
	bne _0803008A
	ldr r0, _080300E8 @ =gPseudoRandom
	mov sb, r0
	ldr r0, [r0]
	ldr r1, _080300EC @ =0x00196225
	muls r0, r1, r0
	ldr r2, _080300F0 @ =0x3C6EF35F
	adds r0, r0, r2
	mov r3, sb
	str r0, [r3]
	ands r4, r0
	ldr r0, _080300F4 @ =gUnknown_080BB434
	adds r0, r4, r0
	ldrb r0, [r0]
	bl VramMalloc
	adds r1, r0, #0
	movs r6, #0x80
	lsls r6, r6, #6
	ldr r2, _080300F8 @ =gUnknown_080BB41C
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, _080300FC @ =gUnknown_080BB42C
	adds r4, r4, r0
	ldrb r3, [r4]
	ldr r0, _08030100 @ =sub_80177EC
	str r0, [sp]
	adds r0, r6, #0
	bl sub_801769C
	ldrh r3, [r0, #6]
	adds r5, r3, r5
	mov r4, r8
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #8
	str r1, [r5, #0x30]
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	adds r2, r1, #0
	adds r2, #0x20
	lsls r2, r2, #8
	str r2, [r5, #0x34]
	str r6, [r5, #0x10]
	movs r2, #0x88
	lsls r2, r2, #3
	strh r2, [r5, #0x1a]
	movs r2, #0x28
	strh r2, [r5, #0x3e]
	ldr r7, _08030104 @ =0x03000040
	adds r3, r3, r7
	movs r2, #0x20
	strh r2, [r3]
	mov r3, sb
	ldr r2, [r3]
	ldr r4, _080300EC @ =0x00196225
	adds r6, r2, #0
	muls r6, r4, r6
	ldr r7, _080300F0 @ =0x3C6EF35F
	adds r6, r6, r7
	str r6, [r3]
	ldr r2, _08030108 @ =gSineTable
	mov r8, r2
	ldr r3, _0803010C @ =0x000001FF
	ands r3, r6
	lsls r2, r3, #1
	add r2, r8
	movs r7, #0
	ldrsh r4, [r2, r7]
	lsls r2, r4, #1
	adds r2, r2, r4
	lsls r2, r2, #9
	rsbs r2, r2, #0
	asrs r2, r2, #0xe
	strh r2, [r5, #0x3a]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r3, r3, r2
	lsls r3, r3, #1
	add r3, r8
	movs r4, #0
	ldrsh r3, [r3, r4]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #9
	rsbs r2, r2, #0
	asrs r2, r2, #0xe
	strh r2, [r5, #0x38]
	ldr r7, _080300EC @ =0x00196225
	adds r3, r6, #0
	muls r3, r7, r3
	ldr r2, _080300F0 @ =0x3C6EF35F
	adds r3, r3, r2
	mov r4, sb
	str r3, [r4]
	movs r2, #0x3f
	ands r2, r3
	adds r0, r0, r2
	subs r0, #0x20
	lsls r0, r0, #8
	movs r2, #0xfc
	lsls r2, r2, #0xe
	ands r3, r2
	asrs r3, r3, #0x10
	subs r3, #0x20
	subs r1, r1, r3
	lsls r1, r1, #8
	bl sub_8017540
_0803008A:
	ldr r2, _08030110 @ =gCamera
	ldrh r1, [r2]
	ldr r7, [sp, #8]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	mov r1, sl
	strh r0, [r1, #0x16]
	ldrh r1, [r2, #2]
	ldr r2, [sp, #0xc]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	mov r3, sl
	strh r0, [r3, #0x18]
	ldr r4, _08030114 @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	ldr r7, _08030118 @ =0x0300000C
	adds r2, r0, r7
	ldr r1, _0803011C @ =0x0300003C
	adds r0, r0, r1
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	mov r0, sl
	bl UpdateSpriteAnimation
	ldr r0, [sp, #4]
	bl UpdateSpriteAnimation
	mov r0, sl
	bl DisplaySprite
	ldr r0, [sp, #4]
	bl DisplaySprite
_080300D6:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080300E8: .4byte gPseudoRandom
_080300EC: .4byte 0x00196225
_080300F0: .4byte 0x3C6EF35F
_080300F4: .4byte gUnknown_080BB434
_080300F8: .4byte gUnknown_080BB41C
_080300FC: .4byte gUnknown_080BB42C
_08030100: .4byte sub_80177EC
_08030104: .4byte 0x03000040
_08030108: .4byte gSineTable
_0803010C: .4byte 0x000001FF
_08030110: .4byte gCamera
_08030114: .4byte gCurTask
_08030118: .4byte 0x0300000C
_0803011C: .4byte 0x0300003C

	thumb_func_start sub_8030120
sub_8030120: @ 0x08030120
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _080301C0 @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r7, r1, r2
	ldrh r0, [r0]
	adds r0, r0, r2
	ldrh r6, [r0, #6]
	ldr r0, _080301C4 @ =0x03000042
	adds r1, r1, r0
	ldrb r0, [r1]
	mov sl, r3
	cmp r0, #0
	beq _080301FA
	ldr r1, _080301C8 @ =gUnknown_084ACEA4
	adds r2, #0x8e
	adds r0, r6, r2
	ldrb r2, [r0]
	movs r0, #7
	ands r0, r2
	lsls r0, r0, #1
	adds r1, #1
	adds r0, r0, r1
	ldrb r4, [r0]
	ldr r5, _080301CC @ =gUnknown_084ACE24
	lsls r4, r4, #4
	adds r0, r4, r5
	ldr r0, [r0]
	mov sb, r0
	str r0, [r7, #0x30]
	adds r0, r5, #4
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [r7, #0x34]
	adds r1, r5, #0
	adds r1, #8
	adds r1, r4, r1
	ldr r3, _080301D0 @ =gUnknown_084ACDC0
	mov r8, r3
	ldr r0, _080301D4 @ =0x0300008A
	adds r6, r6, r0
	movs r0, #0
	ldrsb r0, [r6, r0]
	lsls r0, r0, #1
	add r0, r8
	movs r3, #0
	ldrsh r2, [r0, r3]
	ldr r0, [r1]
	muls r0, r2, r0
	movs r1, #0xa
	bl __divsi3
	str r0, [r7, #0x38]
	adds r5, #0xc
	adds r4, r4, r5
	movs r0, #0
	ldrsb r0, [r6, r0]
	lsls r0, r0, #1
	add r0, r8
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r4]
	muls r0, r1, r0
	movs r1, #0xa
	bl __divsi3
	str r0, [r7, #0x3c]
	ldr r0, _080301D8 @ =0xFFFF7400
	cmp sb, r0
	blt _080301E0
	ldr r0, [r7, #0x10]
	ldr r1, _080301DC @ =0xFFFFFBFF
	ands r0, r1
	b _080301E8
	.align 2, 0
_080301C0: .4byte gCurTask
_080301C4: .4byte 0x03000042
_080301C8: .4byte gUnknown_084ACEA4
_080301CC: .4byte gUnknown_084ACE24
_080301D0: .4byte gUnknown_084ACDC0
_080301D4: .4byte 0x0300008A
_080301D8: .4byte 0xFFFF7400
_080301DC: .4byte 0xFFFFFBFF
_080301E0:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
_080301E8:
	str r0, [r7, #0x10]
	adds r1, r7, #0
	adds r1, #0x42
	movs r0, #0
	strb r0, [r1]
	mov r3, sl
	ldr r1, [r3]
	ldr r0, _08030208 @ =sub_803020C
	str r0, [r1, #8]
_080301FA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08030208: .4byte sub_803020C

	thumb_func_start sub_803020C
sub_803020C: @ 0x0803020C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _080302D4 @ =gCurTask
	ldr r2, [r3]
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	ldrh r0, [r2]
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	adds r5, r0, r1
	adds r4, r6, #0
	ldr r7, [r5]
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x38]
	adds r1, r1, r0
	str r1, [r4, #0x30]
	ldr r2, [r4, #0x34]
	ldr r0, [r4, #0x3c]
	adds r2, r2, r0
	str r2, [r4, #0x34]
	movs r0, #0x9c
	lsls r0, r0, #9
	adds r1, r1, r0
	movs r0, #0xac
	lsls r0, r0, #9
	cmp r1, r0
	bhi _0803025A
	ldr r0, _080302D8 @ =0xFFFF3000
	cmp r2, r0
	blt _0803025A
	movs r0, #0xa0
	lsls r0, r0, #6
	cmp r2, r0
	ble _08030260
_0803025A:
	ldr r1, [r3]
	ldr r0, _080302DC @ =sub_8030120
	str r0, [r1, #8]
_08030260:
	ldrb r1, [r5, #8]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6, #0x30]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	ldrb r1, [r7, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6, #0x34]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r0, _080302D4 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r0, r1
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r6, r0, #0x10
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r5, r0, #0x10
	ldr r3, _080302E0 @ =gPlayer
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_800BF10
	mov r8, r0
	ldr r0, _080302E4 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _080302EC
	ldr r3, _080302E8 @ =gUnknown_03005AB0
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_800BF10
	b _080302EE
	.align 2, 0
_080302D4: .4byte gCurTask
_080302D8: .4byte 0xFFFF3000
_080302DC: .4byte sub_8030120
_080302E0: .4byte gPlayer
_080302E4: .4byte gUnknown_03005088
_080302E8: .4byte gUnknown_03005AB0
_080302EC:
	movs r0, #0
_080302EE:
	mov r1, r8
	cmp r1, #2
	beq _080302F8
	cmp r0, #2
	bne _08030322
_080302F8:
	ldr r0, _08030350 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r0, r0, r2
	ldrh r2, [r0, #6]
	ldr r0, _08030354 @ =0x0300003C
	adds r3, r2, r0
	adds r0, #0x20
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _08030358 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r1, _0803035C @ =0x0300005D
	adds r2, r2, r1
	movs r0, #0xff
	strb r0, [r2]
_08030322:
	ldr r2, _08030360 @ =gCamera
	ldrh r1, [r2]
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldrh r1, [r2, #2]
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl DisplaySprite
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08030350: .4byte gCurTask
_08030354: .4byte 0x0300003C
_08030358: .4byte 0xFFFFBFFF
_0803035C: .4byte 0x0300005D
_08030360: .4byte gCamera

	thumb_func_start sub_8030364
sub_8030364: @ 0x08030364
	push {r4, r5, lr}
	ldr r4, _080303C4 @ =gCurTask
	ldr r2, [r4]
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r0, r1
	ldrh r0, [r2]
	adds r0, r0, r1
	ldrh r3, [r0, #6]
	adds r3, r3, r1
	ldr r1, [r3]
	ldrb r2, [r3, #8]
	lsls r2, r2, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r0, [r5, #0x30]
	asrs r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r5, #0x34]
	asrs r0, r0, #8
	adds r1, r1, r0
	ldr r3, _080303C8 @ =gCamera
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0x18]
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, #0x78
	cmp r2, r0
	bge _080303CC
	movs r0, #0x80
	lsls r0, r0, #2
	b _080303CE
	.align 2, 0
_080303C4: .4byte gCurTask
_080303C8: .4byte gCamera
_080303CC:
	ldr r0, _080303DC @ =0xFFFFFE00
_080303CE:
	str r0, [r5, #0x38]
	ldr r0, [r5, #0x3c]
	cmp r0, #0
	bne _080303E4
	ldr r0, _080303E0 @ =0xFFFFFA00
	b _080303F6
	.align 2, 0
_080303DC: .4byte 0xFFFFFE00
_080303E0: .4byte 0xFFFFFA00
_080303E4:
	cmp r0, #0
	bge _080303F0
	ldr r1, _080303EC @ =0xFFFFFD00
	b _080303F4
	.align 2, 0
_080303EC: .4byte 0xFFFFFD00
_080303F0:
	movs r1, #0xc0
	lsls r1, r1, #2
_080303F4:
	adds r0, r0, r1
_080303F6:
	str r0, [r5, #0x3c]
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0
	strh r0, [r1]
	ldr r1, [r4]
	ldr r0, _08030410 @ =sub_8030414
	str r0, [r1, #8]
	bl _call_via_r0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08030410: .4byte sub_8030414

	thumb_func_start sub_8030414
sub_8030414: @ 0x08030414
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _08030450 @ =gCurTask
	ldr r3, [r0]
	ldrh r2, [r3, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r2, r1
	mov r8, r5
	ldrh r0, [r3]
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	adds r6, r0, r1
	ldr r7, [r6]
	ldr r0, _08030454 @ =0x03000040
	adds r2, r2, r0
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xb4
	bls _08030458
	adds r0, r3, #0
	bl TaskDestroy
	b _0803051A
	.align 2, 0
_08030450: .4byte gCurTask
_08030454: .4byte 0x03000040
_08030458:
	ldr r4, [r5, #0x3c]
	adds r4, #0x28
	str r4, [r5, #0x3c]
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x38]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	ldr r3, [r5, #0x34]
	adds r3, r3, r4
	str r3, [r5, #0x34]
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	asrs r1, r1, #8
	adds r2, r2, r1
	lsls r2, r2, #0x10
	ldrb r1, [r7, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	asrs r3, r3, #8
	adds r1, r1, r3
	lsls r1, r1, #0x10
	ldr r3, _08030528 @ =gCamera
	ldrh r0, [r3]
	lsrs r7, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsrs r6, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r1, r0
	strh r0, [r5, #0x18]
	cmp r4, #0
	ble _080304CC
	adds r0, r1, #0
	adds r0, #0x18
	ldr r1, _0803052C @ =sub_803FD5C
	str r1, [sp]
	adds r1, r2, #0
	movs r2, #1
	movs r3, #8
	bl sub_804021C
	cmp r0, #0
	bge _080304CC
	lsls r1, r0, #8
	ldr r0, [r5, #0x34]
	adds r0, r0, r1
	str r0, [r5, #0x34]
	ldr r1, [r5, #0x3c]
	asrs r0, r1, #2
	subs r0, r0, r1
	str r0, [r5, #0x3c]
_080304CC:
	mov r0, r8
	adds r0, #0x40
	ldrh r1, [r0]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0803050E
	ldr r3, _08030530 @ =gPseudoRandom
	ldr r1, [r3]
	ldr r0, _08030534 @ =0x00196225
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r0, _08030538 @ =0x3C6EF35F
	adds r2, r2, r0
	str r2, [r3]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x3f
	ands r1, r2
	adds r0, r0, r1
	subs r0, #0x20
	lsls r0, r0, #8
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	movs r3, #0xfc
	lsls r3, r3, #0xe
	ands r2, r3
	asrs r2, r2, #0x10
	subs r2, #0x20
	subs r1, r1, r2
	lsls r1, r1, #8
	bl sub_8017540
_0803050E:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_0803051A:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08030528: .4byte gCamera
_0803052C: .4byte sub_803FD5C
_08030530: .4byte gPseudoRandom
_08030534: .4byte 0x00196225
_08030538: .4byte 0x3C6EF35F

	thumb_func_start sub_803053C
sub_803053C: @ 0x0803053C
	push {r4, r5, r6, lr}
	ldr r5, _08030588 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	ldr r0, _0803058C @ =0x03000045
	adds r1, r4, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08030582
	ldr r2, _08030590 @ =gUnknown_084ACE12
	ldr r6, _08030594 @ =0x03000044
	adds r3, r4, r6
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	subs r6, #4
	adds r0, r4, r6
	strh r1, [r0]
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r2, #1
	adds r0, r0, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldr r2, _08030598 @ =0x03000042
	adds r0, r4, r2
	strh r1, [r0]
	ldr r1, [r5]
	ldr r0, _0803059C @ =sub_80305A0
	str r0, [r1, #8]
_08030582:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08030588: .4byte gCurTask
_0803058C: .4byte 0x03000045
_08030590: .4byte gUnknown_084ACE12
_08030594: .4byte 0x03000044
_08030598: .4byte 0x03000042
_0803059C: .4byte sub_80305A0

	thumb_func_start sub_80305A0
sub_80305A0: @ 0x080305A0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08030620 @ =gCurTask
	ldr r5, [r0]
	ldrh r4, [r5, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r4
	mov ip, r0
	ldr r0, [r0, #0x48]
	ldr r1, _08030624 @ =0x0300000C
	adds r6, r4, r1
	mov r2, ip
	ldr r2, [r2]
	mov r8, r2
	adds r0, #0x8a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _08030638
	ldr r2, _08030628 @ =gUnknown_084ACE12
	ldr r3, _0803062C @ =0x03000044
	adds r0, r4, r3
	ldrb r1, [r0]
	lsls r1, r1, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, #1
	adds r1, r1, r2
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldr r7, _08030630 @ =0x03000040
	adds r2, r4, r7
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	asrs r0, r0, #0x14
	ldrh r7, [r2]
	adds r0, r0, r7
	strh r0, [r2]
	ldr r7, _08030634 @ =0x03000042
	adds r0, r4, r7
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	asrs r1, r1, #0x14
	ldrh r7, [r0]
	adds r1, r1, r7
	strh r1, [r0]
	movs r7, #0
	ldrsh r0, [r2, r7]
	cmp r0, r3
	bne _08030678
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, r4
	bne _08030678
	adds r0, r5, #0
	bl TaskDestroy
	b _08030700
	.align 2, 0
_08030620: .4byte gCurTask
_08030624: .4byte 0x0300000C
_08030628: .4byte gUnknown_084ACE12
_0803062C: .4byte 0x03000044
_08030630: .4byte 0x03000040
_08030634: .4byte 0x03000042
_08030638:
	ldr r0, _0803070C @ =0x03000040
	adds r1, r4, r0
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _0803064A
	adds r0, r2, #1
	strh r0, [r1]
_0803064A:
	ldrh r2, [r1]
	movs r7, #0
	ldrsh r0, [r1, r7]
	cmp r0, #0
	ble _08030658
	subs r0, r2, #1
	strh r0, [r1]
_08030658:
	ldr r0, _08030710 @ =0x03000042
	adds r2, r4, r0
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bge _0803066A
	adds r0, r1, #1
	strh r0, [r2]
_0803066A:
	ldrh r1, [r2]
	movs r7, #0
	ldrsh r0, [r2, r7]
	cmp r0, #0
	ble _08030678
	subs r0, r1, #1
	strh r0, [r2]
_08030678:
	mov r0, ip
	ldrb r1, [r0, #8]
	lsls r1, r1, #3
	ldrh r0, [r0, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r2, ip
	ldrh r2, [r2, #0x3c]
	adds r1, r1, r2
	mov r0, ip
	adds r0, #0x40
	ldrh r3, [r0]
	adds r3, r3, r1
	mov r7, r8
	ldrb r1, [r7, #1]
	lsls r1, r1, #3
	mov r2, ip
	ldrh r0, [r2, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrh r7, [r2, #0x3e]
	adds r1, r1, r7
	mov r0, ip
	adds r0, #0x42
	ldrh r2, [r0]
	adds r2, r2, r1
	ldr r1, _08030714 @ =gCamera
	ldrh r0, [r1]
	lsls r3, r3, #0x10
	asrs r5, r3, #0x10
	subs r0, r5, r0
	strh r0, [r6, #0x16]
	ldrh r0, [r1, #2]
	lsls r2, r2, #0x10
	asrs r4, r2, #0x10
	subs r0, r4, r0
	strh r0, [r6, #0x18]
	mov r0, ip
	adds r0, #0x44
	ldrb r1, [r0]
	movs r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080306F4
	ldr r3, _08030718 @ =gPlayer
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80096B0
	ldr r0, _0803071C @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _080306F4
	ldr r3, _08030720 @ =gUnknown_03005AB0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80096B0
_080306F4:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_08030700:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803070C: .4byte 0x03000040
_08030710: .4byte 0x03000042
_08030714: .4byte gCamera
_08030718: .4byte gPlayer
_0803071C: .4byte gUnknown_03005088
_08030720: .4byte gUnknown_03005AB0

	thumb_func_start TaskDestructor_EggBall
TaskDestructor_EggBall: @ 0x08030724
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x10]
	bl VramFree
	ldr r0, [r4, #0x40]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8030740
sub_8030740: @ 0x08030740
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8030754
sub_8030754: @ 0x08030754
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r2, r0, r1
	adds r1, #0x44
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	cmp r0, #0
	bne _08030774
	ldr r0, [r2, #0x10]
	bl VramFree
_08030774:
	pop {r0}
	bx r0

	thumb_func_start sub_8030778
sub_8030778: @ 0x08030778
	push {r4, r5, r6, r7, lr}
	ldr r2, _080307B8 @ =gCurTask
	ldr r2, [r2]
	ldrh r3, [r2, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r6, r3, r2
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	ldr r3, _080307BC @ =gPlayer
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	adds r7, r0, #0
	ldr r0, _080307C0 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _080307C8
	ldr r3, _080307C4 @ =gUnknown_03005AB0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	b _080307CA
	.align 2, 0
_080307B8: .4byte gCurTask
_080307BC: .4byte gPlayer
_080307C0: .4byte gUnknown_03005088
_080307C4: .4byte gUnknown_03005AB0
_080307C8:
	movs r0, #0
_080307CA:
	cmp r7, #2
	beq _080307D2
	cmp r0, #2
	bne _080307FC
_080307D2:
	ldr r0, _08030804 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldrh r2, [r0, #6]
	ldr r0, _08030808 @ =0x0300003C
	adds r3, r2, r0
	adds r0, #0x20
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _0803080C @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r0, _08030810 @ =0x0300005D
	adds r2, r2, r0
	movs r0, #0xff
	strb r0, [r2]
_080307FC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08030804: .4byte gCurTask
_08030808: .4byte 0x0300003C
_0803080C: .4byte 0xFFFFBFFF
_08030810: .4byte 0x0300005D

	thumb_func_start sub_8030814
sub_8030814: @ 0x08030814
	ldr r0, _08030844 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	ldr r0, _08030848 @ =0x0300003C
	adds r1, r2, r0
	adds r0, #0x20
	adds r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq _08030840
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08030840
	movs r0, #0
	strb r0, [r3]
	ldr r0, _0803084C @ =0x0300005D
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
_08030840:
	bx lr
	.align 2, 0
_08030844: .4byte gCurTask
_08030848: .4byte 0x0300003C
_0803084C: .4byte 0x0300005D

@ inline?
	thumb_func_start sub_8030850
sub_8030850: @ 0x08030850
	ldr r0, _08030868 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _0803086C @ =0x0300000C
	adds r2, r0, r1
	adds r1, #0x30
	adds r0, r0, r1
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	bx lr
	.align 2, 0
_08030868: .4byte gCurTask
_0803086C: .4byte 0x0300000C

@ inline?
	thumb_func_start sub_8030870
sub_8030870: @ 0x08030870
	push {r4, lr}
	ldr r2, _08030898 @ =gCurTask
	ldr r2, [r2]
	ldrh r2, [r2, #6]
	ldr r3, _0803089C @ =0x0300000C
	adds r2, r2, r3
	ldr r4, _080308A0 @ =gCamera
	ldrh r3, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r3
	strh r0, [r2, #0x16]
	ldrh r0, [r4, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r2, #0x18]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08030898: .4byte gCurTask
_0803089C: .4byte 0x0300000C
_080308A0: .4byte gCamera

@ --- Start of EggSpider

	thumb_func_start sub_80308A4
sub_80308A4: @ 0x080308A4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r0, _08030960 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	ldr r0, _08030964 @ =0x0300000C
	adds r4, r5, r0
	ldr r0, [r4, #0x10]
	ldr r1, _08030968 @ =0xFFFFFE7F
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r1, _0803096C @ =gPlayer
	mov r8, r1
	ldr r3, [r1, #0x10]
	movs r0, #0x80
	ands r3, r0
	cmp r3, #0
	bne _080308E8
	ldr r2, _08030970 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08030974 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08030978 @ =gWinRegs
	strh r3, [r0, #0xa]
	ldr r0, _0803097C @ =gBldRegs
	strh r3, [r0]
	strh r3, [r0, #4]
_080308E8:
	ldr r0, _08030980 @ =0x03000087
	adds r0, r0, r5
	mov sb, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080309B6
	lsls r0, r7, #0x10
	asrs r7, r0, #0x10
	lsls r0, r6, #0x10
	asrs r6, r0, #0x10
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	mov r3, r8
	bl sub_800B8B4
	mov r8, r0
	movs r1, #0
	ldr r0, _08030984 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0803092A
	ldr r3, _08030988 @ =gUnknown_03005AB0
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_800B8B4
	adds r1, r0, #0
_0803092A:
	ldr r0, _0803098C @ =0x0300003C
	adds r2, r5, r0
	mov r0, r8
	cmp r0, #1
	beq _08030938
	cmp r1, #1
	bne _0803099C
_08030938:
	ldr r0, _08030990 @ =0x03000086
	adds r1, r5, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0x78
	mov r1, sb
	strb r0, [r1]
	ldr r0, _08030994 @ =0x0300005C
	adds r1, r5, r0
	movs r0, #2
	strb r0, [r1]
	ldr r0, [r2, #0x10]
	ldr r1, _08030998 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x10]
	movs r0, #0x8f
	bl m4aSongNumStart
	b _080309B6
	.align 2, 0
_08030960: .4byte gCurTask
_08030964: .4byte 0x0300000C
_08030968: .4byte 0xFFFFFE7F
_0803096C: .4byte gPlayer
_08030970: .4byte gDispCnt
_08030974: .4byte 0x00007FFF
_08030978: .4byte gWinRegs
_0803097C: .4byte gBldRegs
_08030980: .4byte 0x03000087
_08030984: .4byte gUnknown_03005088
_08030988: .4byte gUnknown_03005AB0
_0803098C: .4byte 0x0300003C
_08030990: .4byte 0x03000086
_08030994: .4byte 0x0300005C
_08030998: .4byte 0xFFFFBFFF
_0803099C:
	mov r0, r8
	cmp r0, #2
	beq _080309A6
	cmp r1, #2
	bne _080309B6
_080309A6:
	ldr r0, _080309C4 @ =0x0300005C
	adds r1, r5, r0
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r2, #0x10]
	ldr r1, _080309C8 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x10]
_080309B6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080309C4: .4byte 0x0300005C
_080309C8: .4byte 0xFFFFBFFF

	thumb_func_start sub_80309CC
sub_80309CC: @ 0x080309CC
	push {r4, r5, lr}
	ldr r0, _08030A40 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _08030A44 @ =0x0300000C
	adds r3, r0, r1
	ldr r5, _08030A48 @ =0x0300003C
	adds r4, r0, r5
	adds r1, #0x7b
	adds r2, r0, r1
	ldrb r1, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _08030A2E
	subs r1, #1
	strb r1, [r2]
	lsls r0, r1, #0x18
	cmp r0, #0
	ble _08030A2E
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _08030A2E
	ldr r0, _08030A4C @ =gPlayer
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08030A2E
	ldr r0, [r3, #0x10]
	adds r1, #0x80
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r2, _08030A50 @ =gDispCnt
	ldrh r0, [r2]
	movs r5, #0x80
	lsls r5, r5, #8
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08030A54 @ =gWinRegs
	ldr r0, _08030A58 @ =0x00003F1F
	strh r0, [r1, #0xa]
	ldr r1, _08030A5C @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
_08030A2E:
	adds r0, r3, #0
	bl DisplaySprite
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08030A40: .4byte gCurTask
_08030A44: .4byte 0x0300000C
_08030A48: .4byte 0x0300003C
_08030A4C: .4byte gPlayer
_08030A50: .4byte gDispCnt
_08030A54: .4byte gWinRegs
_08030A58: .4byte 0x00003F1F
_08030A5C: .4byte gBldRegs

	thumb_func_start CreateEntity_EggSpider
CreateEntity_EggSpider: @ 0x08030A60
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	ldr r0, _08030A94 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _08030A98
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	b _08030C88
	.align 2, 0
_08030A94: .4byte gGameMode
_08030A98:
	ldr r0, _08030B18 @ =sub_8030CA4
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08030B1C @ =sub_8031CB4
	str r1, [sp]
	movs r1, #0x90
	movs r3, #0
	bl TaskCreate
	adds r5, r0, #0
	ldr r0, _08030B20 @ =sub_804C40C
	ldr r2, _08030B24 @ =0x0000FFFD
	movs r4, #0
	str r4, [sp]
	movs r1, #0
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r5, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	adds r0, #0xc
	adds r7, r2, r0
	movs r5, #0
	mov r1, sb
	strh r1, [r3, #4]
	mov r0, sl
	strh r0, [r3, #6]
	str r6, [r3]
	ldrb r0, [r6]
	strb r0, [r3, #8]
	mov r1, r8
	strb r1, [r3, #9]
	ldr r0, _08030B28 @ =0x03000084
	adds r1, r2, r0
	movs r0, #0x78
	strh r0, [r1]
	ldr r1, _08030B2C @ =0x03000087
	adds r0, r2, r1
	strb r5, [r0]
	adds r1, #3
	adds r0, r2, r1
	strh r4, [r0]
	adds r1, #2
	adds r0, r2, r1
	strb r5, [r0]
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [r3, #0x6c]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r3, #0x70]
	str r4, [r3, #0x74]
	str r4, [r3, #0x78]
	ldr r0, _08030B30 @ =gUnknown_03005160
	ldrb r0, [r0, #0x18]
	cmp r0, #0
	beq _08030B38
	ldr r4, _08030B34 @ =0x03000086
	adds r1, r2, r4
	movs r0, #2
	strb r0, [r1]
	b _08030B3E
	.align 2, 0
_08030B18: .4byte sub_8030CA4
_08030B1C: .4byte sub_8031CB4
_08030B20: .4byte sub_804C40C
_08030B24: .4byte 0x0000FFFD
_08030B28: .4byte 0x03000084
_08030B2C: .4byte 0x03000087
_08030B30: .4byte gUnknown_03005160
_08030B34: .4byte 0x03000086
_08030B38:
	ldr r1, _08030C58 @ =0x03000086
	adds r0, r2, r1
	strb r5, [r0]
_08030B3E:
	ldrb r0, [r6]
	lsls r0, r0, #3
	mov r4, sb
	lsls r4, r4, #8
	mov sb, r4
	add r0, sb
	movs r5, #0
	strh r0, [r7, #0x16]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	mov r1, sl
	lsls r1, r1, #8
	mov sl, r1
	add r0, sl
	strh r0, [r7, #0x18]
	movs r0, #0x40
	str r3, [sp, #4]
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0xb0
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	strh r5, [r7, #8]
	movs r0, #0x9d
	lsls r0, r0, #2
	strh r0, [r7, #0xa]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	strh r5, [r7, #0x14]
	strh r5, [r7, #0x1c]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x22
	movs r4, #0x10
	strb r4, [r0]
	adds r0, #3
	movs r1, #0
	strb r1, [r0]
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [r7, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	mov r8, r0
	str r0, [r7, #0x10]
	ldr r3, [sp, #4]
	adds r4, r3, #0
	adds r4, #0x3c
	ldrb r0, [r6]
	lsls r0, r0, #3
	add r0, sb
	strh r0, [r4, #0x16]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	add r0, sl
	strh r0, [r4, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	movs r0, #8
	str r3, [sp, #4]
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0xa8
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	strh r5, [r4, #8]
	ldr r0, _08030C5C @ =0x00000275
	strh r0, [r4, #0xa]
	ldr r3, [sp, #4]
	adds r0, r3, #0
	adds r0, #0x5c
	movs r1, #0
	strb r1, [r0]
	strh r5, [r4, #0x14]
	strh r5, [r4, #0x1c]
	adds r1, r3, #0
	adds r1, #0x5d
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x5e
	movs r1, #0x10
	strb r1, [r0]
	adds r0, #3
	movs r3, #0
	strb r3, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	mov r1, r8
	str r1, [r4, #0x10]
	movs r3, #0x18
	ldrsh r0, [r7, r3]
	ldrh r1, [r7, #0x18]
	adds r1, #0xc0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r4, _08030C60 @ =0xFFFFFEC0
	adds r2, r4, #0
	ldrh r3, [r7, #0x16]
	adds r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r4, #0x16
	ldrsh r3, [r7, r4]
	bl sub_80171BC
	ldr r2, _08030C64 @ =gPlayer
	strh r5, [r2, #0xc]
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r2, #0x10]
	adds r0, r2, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08030C6C
	adds r0, r2, #0
	adds r0, #0x42
	ldrh r1, [r0]
	ldr r0, _08030C68 @ =0x0000010D
	cmp r1, r0
	beq _08030C52
	cmp r1, #0xcf
	bne _08030C6C
_08030C52:
	movs r0, #0x80
	strh r0, [r2, #0x38]
	b _08030C72
	.align 2, 0
_08030C58: .4byte 0x03000086
_08030C5C: .4byte 0x00000275
_08030C60: .4byte 0xFFFFFEC0
_08030C64: .4byte gPlayer
_08030C68: .4byte 0x0000010D
_08030C6C:
	ldr r1, _08030C98 @ =gPlayer
	movs r0, #0
	strh r0, [r1, #0x38]
_08030C72:
	ldr r0, _08030C9C @ =gUnknown_03005A18
	ldr r0, [r0]
	cmp r0, #0
	beq _08030C88
	ldrh r0, [r0, #6]
	ldr r1, _08030CA0 @ =0x03000336
	adds r0, r0, r1
	ldrh r2, [r0]
	movs r1, #1
	orrs r1, r2
	strh r1, [r0]
_08030C88:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08030C98: .4byte gPlayer
_08030C9C: .4byte gUnknown_03005A18
_08030CA0: .4byte 0x03000336

	thumb_func_start sub_8030CA4
sub_8030CA4: @ 0x08030CA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08030D6C @ =gCurTask
	mov sl, r0
	ldr r5, [r0]
	ldrh r6, [r5, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r6, r0
	ldr r1, _08030D70 @ =0x0300000C
	adds r1, r1, r6
	mov sb, r1
	ldr r3, _08030D74 @ =0x0300003C
	adds r3, r3, r6
	mov r8, r3
	ldr r4, [r7]
	ldr r1, [r7, #0x6c]
	ldr r0, [r7, #0x74]
	adds r1, r1, r0
	str r1, [r7, #0x6c]
	ldr r3, [r7, #0x70]
	ldr r0, [r7, #0x78]
	adds r3, r3, r0
	str r3, [r7, #0x70]
	ldrb r2, [r7, #8]
	lsls r2, r2, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	asrs r1, r1, #8
	adds r2, r2, r1
	ldrb r1, [r4, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	asrs r3, r3, #8
	adds r1, r1, r3
	ldrh r0, [r5, #6]
	ldr r3, _08030D70 @ =0x0300000C
	adds r0, r0, r3
	ldr r4, _08030D78 @ =gCamera
	ldrh r3, [r4]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r3
	strh r2, [r0, #0x16]
	ldrh r2, [r4, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r2
	strh r1, [r0, #0x18]
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r1, sl
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	ldr r3, _08030D70 @ =0x0300000C
	adds r2, r0, r3
	ldr r1, _08030D74 @ =0x0300003C
	adds r3, r0, r1
	ldrh r0, [r2, #0x16]
	strh r0, [r3, #0x16]
	ldrh r4, [r2, #0x18]
	strh r4, [r3, #0x18]
	ldrh r1, [r2, #0xa]
	movs r0, #0x9d
	lsls r0, r0, #2
	cmp r1, r0
	bne _08030D52
	ldr r0, [r2, #0xc]
	ldr r1, _08030D7C @ =gUnknown_084ACED8
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	subs r0, r4, r0
	strh r0, [r3, #0x18]
_08030D52:
	bl sub_80309CC
	ldr r3, _08030D80 @ =0x0300008C
	adds r0, r6, r3
	ldrb r0, [r0]
	cmp r0, #4
	bls _08030D62
	b _08030EBC
_08030D62:
	lsls r0, r0, #2
	ldr r1, _08030D84 @ =_08030D88
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08030D6C: .4byte gCurTask
_08030D70: .4byte 0x0300000C
_08030D74: .4byte 0x0300003C
_08030D78: .4byte gCamera
_08030D7C: .4byte gUnknown_084ACED8
_08030D80: .4byte 0x0300008C
_08030D84: .4byte _08030D88
_08030D88: @ jump table
	.4byte _08030D9C @ case 0
	.4byte _08030DF0 @ case 1
	.4byte _08030E34 @ case 2
	.4byte _08030E52 @ case 3
	.4byte _08030E7A @ case 4
_08030D9C:
	adds r1, r7, #0
	adds r1, #0x84
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08030DC8
	ldr r1, _08030DE4 @ =gUnknown_03005040
	movs r0, #0x10
	strb r0, [r1, #1]
	mov r1, sb
	adds r1, #0x20
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08030DE8 @ =0xFFFFFF00
	str r0, [r7, #0x74]
	adds r1, r7, #0
	adds r1, #0x8c
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08030DC8:
	ldr r1, _08030DEC @ =gPlayer
	adds r0, r1, #0
	adds r0, #0x42
	ldrh r0, [r0]
	cmp r0, #0xd1
	bne _08030EBC
	adds r0, r1, #0
	adds r0, #0x44
	ldrh r0, [r0]
	cmp r0, #2
	bne _08030EBC
	movs r0, #0
	strh r0, [r1, #0x38]
	b _08030EBC
	.align 2, 0
_08030DE4: .4byte gUnknown_03005040
_08030DE8: .4byte 0xFFFFFF00
_08030DEC: .4byte gPlayer
_08030DF0:
	ldr r0, [r7, #0x6c]
	ldr r3, _08030E2C @ =0xFFFF8800
	cmp r0, r3
	bgt _08030E16
	mov r1, sb
	adds r1, #0x20
	movs r2, #0
	movs r0, #2
	strb r0, [r1]
	str r3, [r7, #0x6c]
	str r2, [r7, #0x74]
	adds r1, r7, #0
	adds r1, #0x84
	movs r0, #0x3c
	strh r0, [r1]
	adds r1, #8
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08030E16:
	ldr r2, _08030E30 @ =gCamera
	ldrh r3, [r2, #0xe]
	movs r0, #0xe
	ldrsh r1, [r2, r0]
	movs r0, #0x60
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08030EBC
	subs r0, r3, #1
	strh r0, [r2, #0xe]
	b _08030EBC
	.align 2, 0
_08030E2C: .4byte 0xFFFF8800
_08030E30: .4byte gCamera
_08030E34:
	adds r1, r7, #0
	adds r1, #0x84
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08030EBC
	mov r1, r8
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	adds r1, r7, #0
	adds r1, #0x8c
	b _08030E72
_08030E52:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08030EBC
	mov r1, r8
	adds r1, #0x20
	movs r0, #0
	strb r0, [r1]
	adds r1, r7, #0
	adds r1, #0x84
	movs r0, #0x3c
	strh r0, [r1]
	adds r1, #8
_08030E72:
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08030EBC
_08030E7A:
	adds r3, r7, #0
	adds r3, #0x84
	ldrh r0, [r3]
	subs r0, #1
	strh r0, [r3]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08030EBC
	ldr r0, _08030ECC @ =gCamera
	strh r1, [r0, #0xe]
	ldr r2, _08030ED0 @ =gPlayer
	ldr r0, [r2, #0x10]
	ldr r1, _08030ED4 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r2, #0x10]
	ldr r1, _08030ED8 @ =gUnknown_030060E0
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	orrs r0, r1
	ldrh r1, [r2, #0x38]
	orrs r0, r1
	strh r0, [r2, #0x38]
	adds r1, r7, #0
	adds r1, #0x8c
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x1e
	strh r0, [r3]
	ldr r0, _08030EDC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08030EE0 @ =sub_8030EE4
	str r0, [r1, #8]
_08030EBC:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08030ECC: .4byte gCamera
_08030ED0: .4byte gPlayer
_08030ED4: .4byte 0xFFDFFFFF
_08030ED8: .4byte gUnknown_030060E0
_08030EDC: .4byte gCurTask
_08030EE0: .4byte sub_8030EE4

	thumb_func_start sub_8030EE4
sub_8030EE4: @ 0x08030EE4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r0, #0
	str r0, [sp, #4]
	ldr r1, _08030F60 @ =gCurTask
	mov sb, r1
	ldr r0, [r1]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	ldr r2, _08030F64 @ =0x0300000C
	adds r2, r2, r4
	mov r8, r2
	adds r0, #0x3c
	adds r0, r0, r4
	mov sl, r0
	ldr r5, [r6]
	ldr r1, [r6, #0x6c]
	ldr r0, [r6, #0x74]
	adds r1, r1, r0
	str r1, [r6, #0x6c]
	ldr r3, [r6, #0x70]
	ldr r0, [r6, #0x78]
	adds r3, r3, r0
	str r3, [r6, #0x70]
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	asrs r1, r1, #8
	adds r2, r2, r1
	ldrb r1, [r5, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	asrs r3, r3, #8
	adds r1, r1, r3
	lsls r2, r2, #0x10
	asrs r5, r2, #0x10
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_80308A4
	ldr r1, _08030F68 @ =0x03000086
	adds r4, r4, r1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #7
	ble _08030F6C
	bl sub_80311D4
	b _080311BA
	.align 2, 0
_08030F60: .4byte gCurTask
_08030F64: .4byte 0x0300000C
_08030F68: .4byte 0x03000086
_08030F6C:
	mov r2, sb
	ldr r3, [r2]
	ldrh r1, [r3, #6]
	ldr r0, _08031018 @ =0x0300000C
	adds r1, r1, r0
	ldr r2, _0803101C @ =gCamera
	ldrh r0, [r2]
	subs r0, r5, r0
	strh r0, [r1, #0x16]
	ldrh r0, [r2, #2]
	subs r0, r7, r0
	strh r0, [r1, #0x18]
	ldrh r3, [r3, #6]
	ldr r2, _08031020 @ =0x0300003C
	adds r1, r3, r2
	ldr r0, _08031024 @ =0x0300005C
	adds r2, r3, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _08030FAC
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08030FAC
	movs r0, #0
	strb r0, [r2]
	ldr r2, _08031028 @ =0x0300005D
	adds r1, r3, r2
	movs r0, #0xff
	strb r0, [r1]
_08030FAC:
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, sl
	bl UpdateSpriteAnimation
	ldr r0, _0803102C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _08031018 @ =0x0300000C
	adds r2, r0, r1
	adds r1, #0x30
	adds r3, r0, r1
	ldrh r0, [r2, #0x16]
	movs r7, #0
	strh r0, [r3, #0x16]
	ldrh r4, [r2, #0x18]
	strh r4, [r3, #0x18]
	ldrh r1, [r2, #0xa]
	movs r0, #0x9d
	lsls r0, r0, #2
	cmp r1, r0
	bne _08030FEE
	ldr r0, [r2, #0xc]
	ldr r1, _08031030 @ =gUnknown_084ACED8
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	subs r0, r4, r0
	strh r0, [r3, #0x18]
_08030FEE:
	bl sub_80309CC
	adds r2, r6, #0
	adds r2, #0x8a
	ldrh r0, [r2]
	cmp r0, #0
	beq _08031000
	subs r0, #1
	strh r0, [r2]
_08031000:
	adds r5, r6, #0
	adds r5, #0x8c
	ldrb r0, [r5]
	adds r3, r5, #0
	cmp r0, #1
	beq _080310C8
	cmp r0, #1
	bgt _08031034
	cmp r0, #0
	beq _08031040
	b _080311BA
	.align 2, 0
_08031018: .4byte 0x0300000C
_0803101C: .4byte gCamera
_08031020: .4byte 0x0300003C
_08031024: .4byte 0x0300005C
_08031028: .4byte 0x0300005D
_0803102C: .4byte gCurTask
_08031030: .4byte gUnknown_084ACED8
_08031034:
	cmp r0, #2
	beq _0803110E
	cmp r0, #3
	bne _0803103E
	b _08031160
_0803103E:
	b _080311BA
_08031040:
	adds r1, r6, #0
	adds r1, #0x84
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08031052
	b _080311BA
_08031052:
	mov r0, r8
	adds r0, #0x20
	strb r7, [r0]
	ldr r2, _080310A8 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080310AC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080310B0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #9
	bl __umodsi3
	adds r2, r0, #0
	adds r4, r6, #0
	adds r4, #0x80
	ldr r7, _080310B4 @ =gUnknown_084ACEC6
	lsls r0, r2, #1
	adds r0, r0, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	str r0, [r4]
	ldr r1, [r6, #0x6c]
	cmp r1, r0
	bne _0803109A
	adds r0, r2, #5
	movs r1, #9
	bl __modsi3
	lsls r0, r0, #1
	adds r0, r0, r7
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	str r0, [r4]
_0803109A:
	ldr r1, [r6, #0x6c]
	ldr r0, [r4]
	cmp r1, r0
	bgt _080310B8
	movs r0, #0x80
	lsls r0, r0, #1
	b _080310BA
	.align 2, 0
_080310A8: .4byte gPseudoRandom
_080310AC: .4byte 0x00196225
_080310B0: .4byte 0x3C6EF35F
_080310B4: .4byte gUnknown_084ACEC6
_080310B8:
	ldr r0, _080310C4 @ =0xFFFFFF00
_080310BA:
	str r0, [r6, #0x74]
	movs r0, #1
	strb r0, [r5]
	b _080311BA
	.align 2, 0
_080310C4: .4byte 0xFFFFFF00
_080310C8:
	ldr r0, [r6, #0x74]
	cmp r0, #0
	ble _080310DC
	adds r0, r6, #0
	adds r0, #0x80
	ldr r2, [r6, #0x6c]
	ldr r1, [r0]
	cmp r2, r1
	ble _080310EC
	b _080310F2
_080310DC:
	adds r0, r6, #0
	adds r0, #0x80
	ldr r2, [r6, #0x6c]
	ldr r1, [r0]
	cmp r2, r1
	bge _080310EC
	movs r1, #0xff
	str r1, [sp, #4]
_080310EC:
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _080311BA
_080310F2:
	ldr r0, [r0]
	str r0, [r6, #0x6c]
	movs r0, #0
	str r0, [r6, #0x74]
	adds r1, r6, #0
	adds r1, #0x84
	movs r0, #0x1e
	strh r0, [r1]
	movs r1, #2
	strb r1, [r3]
	mov r0, r8
	adds r0, #0x20
	strb r1, [r0]
	b _080311BA
_0803110E:
	adds r1, r6, #0
	adds r1, #0x84
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080311BA
	ldrh r0, [r2]
	cmp r0, #0
	beq _0803112C
	movs r0, #0x1e
	strh r0, [r1]
	strb r7, [r5]
	b _080311BA
_0803112C:
	movs r0, #0x78
	strh r0, [r1]
	movs r0, #3
	strb r0, [r5]
	mov r1, r8
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0803115C @ =gPlayer
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080311BA
	movs r0, #0x80
	lsls r0, r0, #3
	movs r2, #0x80
	lsls r2, r2, #1
	str r1, [sp]
	movs r1, #0
	movs r3, #0x78
	bl sub_804CC14
	b _080311BA
	.align 2, 0
_0803115C: .4byte gPlayer
_08031160:
	adds r1, r6, #0
	adds r1, #0x84
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08031184
	movs r0, #0x1e
	strh r0, [r1]
	strb r7, [r5]
	movs r0, #0x78
	strh r0, [r2]
	mov r1, r8
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	b _080311BA
_08031184:
	ldrh r0, [r1]
	ldr r2, _080311CC @ =gUnknown_084ACEB4
	adds r1, r6, #0
	adds r1, #0x86
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl __modsi3
	cmp r0, #0
	bne _080311BA
	ldr r0, _080311D0 @ =gPlayer
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080311BA
	adds r0, r6, #0
	bl sub_8031998
	movs r0, #0x91
	bl m4aSongNumStart
_080311BA:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080311CC: .4byte gUnknown_084ACEB4
_080311D0: .4byte gPlayer

	thumb_func_start sub_80311D4
sub_80311D4: @ 0x080311D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _080312A0 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r8, r0
	adds r2, r4, r0
	ldr r1, _080312A4 @ =0x0300000C
	adds r1, r1, r4
	mov sl, r1
	ldr r3, [r2]
	ldrb r1, [r2, #8]
	lsls r1, r1, #3
	ldrh r0, [r2, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #0x6c]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r2, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #0x70]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r2, _080312A8 @ =0x0300005C
	adds r1, r4, r2
	movs r5, #0
	movs r0, #2
	strb r0, [r1]
	ldr r1, _080312AC @ =0x03000088
	adds r0, r4, r1
	movs r6, #0
	strh r5, [r0]
	movs r0, #0x90
	bl m4aSongNumStart
	ldr r2, _080312B0 @ =0x03000084
	adds r0, r4, r2
	strh r5, [r0]
	ldr r0, _080312B4 @ =0x00000272
	mov r1, sl
	strh r0, [r1, #0xa]
	subs r2, #0x58
	adds r0, r4, r2
	strb r6, [r0]
	ldr r0, _080312B8 @ =0x0300002D
	adds r4, r4, r0
	movs r0, #0xff
	strb r0, [r4]
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	ldr r3, _080312BC @ =0x00000273
	str r5, [sp]
	movs r2, #0x10
	bl sub_80168F0
	ldrh r2, [r0, #6]
	mov r4, r8
	adds r3, r2, r4
	ldr r1, _080312C0 @ =0x03000046
	adds r0, r2, r1
	strh r5, [r0]
	ldr r4, _080312C4 @ =0x03000048
	adds r0, r2, r4
	strh r5, [r0]
	ldr r0, _080312C8 @ =0x03000042
	adds r1, r2, r0
	movs r0, #0x80
	strh r0, [r1]
	mov r1, sl
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080312CC
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r3, #0x32]
	subs r4, #4
	adds r1, r2, r4
	movs r0, #0x80
	lsls r0, r0, #1
	b _080312D4
	.align 2, 0
_080312A0: .4byte gCurTask
_080312A4: .4byte 0x0300000C
_080312A8: .4byte 0x0300005C
_080312AC: .4byte 0x03000088
_080312B0: .4byte 0x03000084
_080312B4: .4byte 0x00000272
_080312B8: .4byte 0x0300002D
_080312BC: .4byte 0x00000273
_080312C0: .4byte 0x03000046
_080312C4: .4byte 0x03000048
_080312C8: .4byte 0x03000042
_080312CC:
	ldr r0, _08031338 @ =0x03000044
	adds r1, r2, r0
	movs r0, #0xff
	lsls r0, r0, #8
_080312D4:
	strh r0, [r1]
	adds r1, r3, #0
	adds r1, #0x40
	movs r4, #0
	movs r0, #0x3c
	strh r0, [r1]
	mov r1, sb
	lsls r6, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #0xd
	adds r0, r6, r2
	asrs r0, r0, #0x10
	lsls r5, r7, #0x10
	adds r1, r5, r2
	asrs r1, r1, #0x10
	ldr r3, _0803133C @ =0x00000273
	movs r2, #1
	str r2, [sp]
	movs r2, #0xc
	bl sub_80168F0
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	ldr r1, _08031340 @ =0x03000046
	adds r0, r2, r1
	strh r4, [r0]
	adds r1, #2
	adds r0, r2, r1
	strh r4, [r0]
	ldr r4, _08031344 @ =0x03000042
	adds r1, r2, r4
	movs r0, #0x80
	strh r0, [r1]
	mov r1, sl
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08031348
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r3, #0x32]
	adds r4, #2
	adds r0, r2, r4
	strh r1, [r0]
	b _08031352
	.align 2, 0
_08031338: .4byte 0x03000044
_0803133C: .4byte 0x00000273
_08031340: .4byte 0x03000046
_08031344: .4byte 0x03000042
_08031348:
	ldr r0, _080313BC @ =0x03000044
	adds r1, r2, r0
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r1]
_08031352:
	adds r1, r3, #0
	adds r1, #0x40
	movs r4, #0
	movs r0, #0x3c
	strh r0, [r1]
	ldr r1, _080313C0 @ =0xFFF00000
	adds r0, r6, r1
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #0xd
	adds r1, r5, r2
	asrs r1, r1, #0x10
	ldr r3, _080313C4 @ =0x00000273
	movs r2, #1
	str r2, [sp]
	movs r2, #0xc
	bl sub_80168F0
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	ldr r1, _080313C8 @ =0x03000046
	adds r0, r2, r1
	strh r4, [r0]
	adds r1, #2
	adds r0, r2, r1
	strh r4, [r0]
	ldr r4, _080313CC @ =0x03000042
	adds r1, r2, r4
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r3, #0x10]
	mov r4, sl
	ldr r0, [r4, #0x10]
	ands r0, r1
	cmp r0, #0
	beq _080313D0
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r3, #0x32]
	ldr r0, _080313BC @ =0x03000044
	adds r1, r2, r0
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r1]
	b _080313D6
	.align 2, 0
_080313BC: .4byte 0x03000044
_080313C0: .4byte 0xFFF00000
_080313C4: .4byte 0x00000273
_080313C8: .4byte 0x03000046
_080313CC: .4byte 0x03000042
_080313D0:
	ldr r4, _0803145C @ =0x03000044
	adds r0, r2, r4
	strh r1, [r0]
_080313D6:
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #0x3c
	strh r0, [r1]
	ldr r4, _08031460 @ =gCamera
	ldrh r0, [r4]
	strh r0, [r4, #0x18]
	adds r0, #0xf0
	strh r0, [r4, #0x1a]
	ldrh r0, [r4, #0x14]
	mov sb, r0
	ldrh r7, [r4, #0x16]
	adds r0, r7, #0
	subs r0, #0xa0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x16
	ldrsh r1, [r4, r2]
	bl sub_80174DC
	mov r0, sb
	strh r0, [r4, #0x14]
	strh r7, [r4, #0x16]
	ldr r1, _08031464 @ =gUnknown_03006080
	ldrh r0, [r1, #4]
	adds r0, #0xa0
	strh r0, [r1, #4]
	ldr r1, _08031468 @ =gLevelScore
	ldr r6, [r1]
	movs r2, #0xfa
	lsls r2, r2, #2
	adds r0, r6, r2
	str r0, [r1]
	ldr r4, _0803146C @ =0x0000C350
	adds r1, r4, #0
	bl Div
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl Div
	cmp r5, r0
	beq _0803143E
	ldr r0, _08031470 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803143E
	ldr r1, _08031474 @ =gNumLives
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0803143E:
	bl sub_8031480
	ldr r0, _08031478 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803147C @ =sub_8031480
	str r0, [r1, #8]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803145C: .4byte 0x03000044
_08031460: .4byte gCamera
_08031464: .4byte gUnknown_03006080
_08031468: .4byte gLevelScore
_0803146C: .4byte 0x0000C350
_08031470: .4byte gGameMode
_08031474: .4byte gNumLives
_08031478: .4byte gCurTask
_0803147C: .4byte sub_8031480

	thumb_func_start sub_8031480
sub_8031480: @ 0x08031480
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _080316A8 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r1, _080316AC @ =0x0300000C
	adds r7, r4, r1
	ldr r2, _080316B0 @ =0x0300003C
	adds r2, r4, r2
	str r2, [sp, #4]
	ldr r2, [r5]
	ldr r3, _080316B4 @ =0x03000088
	adds r6, r4, r3
	ldrh r0, [r6]
	adds r0, #2
	strh r0, [r6]
	movs r1, #0
	ldrsh r0, [r6, r1]
	ldr r3, [r5, #0x70]
	adds r3, r3, r0
	str r3, [r5, #0x70]
	ldrb r1, [r5, #8]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r5, #0x6c]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	ldrh r2, [r5, #6]
	lsls r2, r2, #8
	adds r0, r0, r2
	asrs r3, r3, #8
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r8, r2
	asrs r0, r0, #0x10
	adds r0, #0x38
	lsrs r3, r1, #0x10
	mov sb, r3
	asrs r1, r1, #0x10
	ldr r2, _080316B8 @ =sub_803FD5C
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	bl sub_804021C
	adds r1, r0, #0
	ldr r0, _080316BC @ =0x03000084
	adds r4, r4, r0
	ldrh r0, [r4]
	cmp r0, #0x78
	bls _08031512
	cmp r1, #0
	bge _08031512
	movs r0, #0
	strh r0, [r6]
	mov r2, sl
	ldr r1, [r2]
	ldr r0, _080316C0 @ =sub_803170C
	str r0, [r1, #8]
_08031512:
	ldr r0, [r7, #0x10]
	ldr r1, _080316C4 @ =0xFFFFFE7F
	ands r0, r1
	str r0, [r7, #0x10]
	ldr r0, _080316C8 @ =gPlayer
	ldr r3, [r0, #0x10]
	movs r0, #0x80
	ands r3, r0
	cmp r3, #0
	bne _0803153A
	ldr r2, _080316CC @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _080316D0 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _080316D4 @ =gWinRegs
	strh r3, [r0, #0xa]
	ldr r0, _080316D8 @ =gBldRegs
	strh r3, [r0]
	strh r3, [r0, #4]
_0803153A:
	adds r1, r5, #0
	adds r1, #0x84
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r4, #7
	ands r0, r4
	mov r3, r8
	lsls r3, r3, #0x10
	str r3, [sp, #8]
	mov r1, sb
	lsls r1, r1, #0x10
	mov sl, r1
	cmp r0, #0
	bne _08031636
	ldr r2, _080316DC @ =gPseudoRandom
	mov sb, r2
	ldr r0, [r2]
	ldr r3, _080316E0 @ =0x00196225
	muls r0, r3, r0
	ldr r1, _080316E4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	ands r4, r0
	ldr r0, _080316E8 @ =gUnknown_080BB434
	adds r0, r4, r0
	ldrb r0, [r0]
	bl VramMalloc
	adds r1, r0, #0
	movs r6, #0x80
	lsls r6, r6, #6
	ldr r2, _080316EC @ =gUnknown_080BB41C
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, _080316F0 @ =gUnknown_080BB42C
	adds r4, r4, r0
	ldrb r3, [r4]
	ldr r0, _080316F4 @ =sub_80177EC
	str r0, [sp]
	adds r0, r6, #0
	bl sub_801769C
	ldrh r3, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r3, r5
	mov r2, sl
	asrs r0, r2, #0x10
	lsls r1, r0, #8
	str r1, [r5, #0x30]
	ldr r4, [sp, #8]
	asrs r1, r4, #0x10
	adds r2, r1, #0
	adds r2, #0x20
	lsls r2, r2, #8
	str r2, [r5, #0x34]
	str r6, [r5, #0x10]
	movs r2, #0x88
	lsls r2, r2, #3
	strh r2, [r5, #0x1a]
	movs r2, #5
	strh r2, [r5, #0x3e]
	ldr r2, _080316F8 @ =0x03000040
	adds r3, r3, r2
	movs r2, #0x20
	strh r2, [r3]
	mov r3, sb
	ldr r2, [r3]
	ldr r4, _080316E0 @ =0x00196225
	adds r6, r2, #0
	muls r6, r4, r6
	ldr r2, _080316E4 @ =0x3C6EF35F
	adds r6, r6, r2
	str r6, [r3]
	ldr r3, _080316FC @ =gSineTable
	mov r8, r3
	ldr r3, _08031700 @ =0x000001FF
	ands r3, r6
	lsls r2, r3, #1
	add r2, r8
	mov ip, r2
	movs r4, #0
	ldrsh r2, [r2, r4]
	mov ip, r2
	lsls r2, r2, #1
	add r2, ip
	lsls r2, r2, #9
	rsbs r2, r2, #0
	asrs r2, r2, #0xe
	strh r2, [r5, #0x3a]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r3, r3, r2
	lsls r3, r3, #1
	add r3, r8
	movs r4, #0
	ldrsh r3, [r3, r4]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #9
	rsbs r2, r2, #0
	asrs r2, r2, #0xe
	strh r2, [r5, #0x38]
	ldr r2, _080316E0 @ =0x00196225
	adds r3, r6, #0
	muls r3, r2, r3
	ldr r4, _080316E4 @ =0x3C6EF35F
	adds r3, r3, r4
	mov r2, sb
	str r3, [r2]
	movs r2, #0x3f
	ands r2, r3
	adds r0, r0, r2
	subs r0, #0x20
	lsls r0, r0, #8
	movs r2, #0xfc
	lsls r2, r2, #0xe
	ands r3, r2
	asrs r3, r3, #0x10
	subs r3, #0x20
	subs r1, r1, r3
	lsls r1, r1, #8
	bl sub_8017540
_08031636:
	ldr r2, _08031704 @ =gCamera
	ldrh r1, [r2]
	mov r3, sl
	asrs r0, r3, #0x10
	subs r0, r0, r1
	strh r0, [r7, #0x16]
	ldrh r1, [r2, #2]
	ldr r4, [sp, #8]
	asrs r0, r4, #0x10
	subs r0, r0, r1
	strh r0, [r7, #0x18]
	ldr r0, _080316A8 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _080316AC @ =0x0300000C
	adds r2, r0, r1
	ldr r4, _080316B0 @ =0x0300003C
	adds r3, r0, r4
	ldrh r0, [r2, #0x16]
	strh r0, [r3, #0x16]
	ldrh r4, [r2, #0x18]
	strh r4, [r3, #0x18]
	ldrh r1, [r2, #0xa]
	movs r0, #0x9d
	lsls r0, r0, #2
	cmp r1, r0
	bne _08031680
	ldr r0, [r2, #0xc]
	ldr r1, _08031708 @ =gUnknown_084ACED8
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	subs r0, r4, r0
	strh r0, [r3, #0x18]
_08031680:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r0, [sp, #4]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, [sp, #4]
	bl DisplaySprite
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080316A8: .4byte gCurTask
_080316AC: .4byte 0x0300000C
_080316B0: .4byte 0x0300003C
_080316B4: .4byte 0x03000088
_080316B8: .4byte sub_803FD5C
_080316BC: .4byte 0x03000084
_080316C0: .4byte sub_803170C
_080316C4: .4byte 0xFFFFFE7F
_080316C8: .4byte gPlayer
_080316CC: .4byte gDispCnt
_080316D0: .4byte 0x00007FFF
_080316D4: .4byte gWinRegs
_080316D8: .4byte gBldRegs
_080316DC: .4byte gPseudoRandom
_080316E0: .4byte 0x00196225
_080316E4: .4byte 0x3C6EF35F
_080316E8: .4byte gUnknown_080BB434
_080316EC: .4byte gUnknown_080BB41C
_080316F0: .4byte gUnknown_080BB42C
_080316F4: .4byte sub_80177EC
_080316F8: .4byte 0x03000040
_080316FC: .4byte gSineTable
_08031700: .4byte 0x000001FF
_08031704: .4byte gCamera
_08031708: .4byte gUnknown_084ACED8

	thumb_func_start sub_803170C
sub_803170C: @ 0x0803170C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r1, _080317C8 @ =gCurTask
	ldr r0, [r1]
	ldrh r4, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r2, r4, r5
	ldr r3, _080317CC @ =0x0300000C
	adds r3, r3, r4
	mov sl, r3
	ldr r7, _080317D0 @ =0x0300003C
	adds r7, r4, r7
	str r7, [sp, #4]
	ldr r3, [r2]
	ldrb r1, [r2, #8]
	lsls r1, r1, #3
	ldrh r0, [r2, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #0x6c]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	mov r0, r8
	str r0, [sp, #8]
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r2, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #0x70]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	str r7, [sp, #0xc]
	ldr r0, _080317D4 @ =gPlayer
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08031784
	ldr r2, _080317D8 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _080317DC @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	mov r1, sl
	ldr r0, [r1, #0x10]
	ldr r1, _080317E0 @ =0xFFFFFE7F
	ands r0, r1
	mov r2, sl
	str r0, [r2, #0x10]
_08031784:
	ldr r3, _080317E4 @ =0x03000084
	adds r0, r4, r3
	ldrh r1, [r0]
	adds r3, r1, #1
	strh r3, [r0]
	lsls r1, r1, #0x10
	movs r0, #0x96
	lsls r0, r0, #0x11
	cmp r1, r0
	bls _080317EC
	mov r0, r8
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	lsls r1, r7, #0x10
	asrs r5, r1, #0x10
	movs r2, #0xa0
	lsls r2, r2, #0xe
	adds r1, r1, r2
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8015C5C
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8015FFC
	ldr r1, _080317E8 @ =gUnknown_03005040
	movs r0, #0x30
	strb r0, [r1, #1]
	ldr r3, _080317C8 @ =gCurTask
	ldr r0, [r3]
	bl TaskDestroy
	b _08031942
	.align 2, 0
_080317C8: .4byte gCurTask
_080317CC: .4byte 0x0300000C
_080317D0: .4byte 0x0300003C
_080317D4: .4byte gPlayer
_080317D8: .4byte gDispCnt
_080317DC: .4byte 0x00007FFF
_080317E0: .4byte 0xFFFFFE7F
_080317E4: .4byte 0x03000084
_080317E8: .4byte gUnknown_03005040
_080317EC:
	movs r4, #7
	ands r3, r4
	cmp r3, #0
	bne _080318CE
	ldr r0, _08031954 @ =gPseudoRandom
	mov sb, r0
	ldr r0, [r0]
	ldr r1, _08031958 @ =0x00196225
	muls r0, r1, r0
	ldr r2, _0803195C @ =0x3C6EF35F
	adds r0, r0, r2
	mov r3, sb
	str r0, [r3]
	ands r4, r0
	ldr r0, _08031960 @ =gUnknown_080BB434
	adds r0, r4, r0
	ldrb r0, [r0]
	bl VramMalloc
	adds r1, r0, #0
	movs r6, #0x80
	lsls r6, r6, #6
	ldr r2, _08031964 @ =gUnknown_080BB41C
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, _08031968 @ =gUnknown_080BB42C
	adds r4, r4, r0
	ldrb r3, [r4]
	ldr r0, _0803196C @ =sub_80177EC
	str r0, [sp]
	adds r0, r6, #0
	bl sub_801769C
	ldrh r3, [r0, #6]
	adds r5, r3, r5
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #8
	str r1, [r5, #0x30]
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	adds r2, r1, #0
	adds r2, #0x20
	lsls r2, r2, #8
	str r2, [r5, #0x34]
	str r6, [r5, #0x10]
	movs r2, #0x88
	lsls r2, r2, #3
	strh r2, [r5, #0x1a]
	movs r2, #5
	strh r2, [r5, #0x3e]
	ldr r2, _08031970 @ =0x03000040
	adds r3, r3, r2
	movs r2, #0x20
	strh r2, [r3]
	mov r3, sb
	ldr r2, [r3]
	ldr r7, _08031958 @ =0x00196225
	adds r6, r2, #0
	muls r6, r7, r6
	ldr r2, _0803195C @ =0x3C6EF35F
	adds r6, r6, r2
	str r6, [r3]
	ldr r3, _08031974 @ =gSineTable
	mov r8, r3
	ldr r3, _08031978 @ =0x000001FF
	ands r3, r6
	lsls r2, r3, #1
	add r2, r8
	movs r7, #0
	ldrsh r4, [r2, r7]
	lsls r2, r4, #1
	adds r2, r2, r4
	lsls r2, r2, #9
	rsbs r2, r2, #0
	asrs r2, r2, #0xe
	strh r2, [r5, #0x3a]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r3, r3, r2
	lsls r3, r3, #1
	add r3, r8
	movs r7, #0
	ldrsh r3, [r3, r7]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #9
	rsbs r2, r2, #0
	asrs r2, r2, #0xe
	strh r2, [r5, #0x38]
	ldr r2, _08031958 @ =0x00196225
	adds r3, r6, #0
	muls r3, r2, r3
	ldr r7, _0803195C @ =0x3C6EF35F
	adds r3, r3, r7
	mov r2, sb
	str r3, [r2]
	movs r2, #0x3f
	ands r2, r3
	adds r0, r0, r2
	subs r0, #0x20
	lsls r0, r0, #8
	movs r2, #0xfc
	lsls r2, r2, #0xe
	ands r3, r2
	asrs r3, r3, #0x10
	subs r3, #0x20
	subs r1, r1, r3
	lsls r1, r1, #8
	bl sub_8017540
_080318CE:
	ldr r1, _0803197C @ =gWinRegs
	movs r0, #0
	strh r0, [r1, #0xa]
	ldr r1, _08031980 @ =gBldRegs
	strh r0, [r1]
	strh r0, [r1, #4]
	ldr r2, _08031984 @ =gCamera
	ldrh r1, [r2]
	ldr r3, [sp, #8]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	mov r7, sl
	strh r0, [r7, #0x16]
	ldrh r1, [r2, #2]
	ldr r2, [sp, #0xc]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r7, #0x18]
	ldr r3, _08031988 @ =gCurTask
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	ldr r7, _0803198C @ =0x0300000C
	adds r2, r0, r7
	ldr r1, _08031990 @ =0x0300003C
	adds r3, r0, r1
	ldrh r0, [r2, #0x16]
	strh r0, [r3, #0x16]
	ldrh r4, [r2, #0x18]
	strh r4, [r3, #0x18]
	ldrh r1, [r2, #0xa]
	movs r0, #0x9d
	lsls r0, r0, #2
	cmp r1, r0
	bne _0803192A
	ldr r0, [r2, #0xc]
	ldr r1, _08031994 @ =gUnknown_084ACED8
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	subs r0, r4, r0
	strh r0, [r3, #0x18]
_0803192A:
	mov r0, sl
	bl UpdateSpriteAnimation
	ldr r0, [sp, #4]
	bl UpdateSpriteAnimation
	mov r0, sl
	bl DisplaySprite
	ldr r0, [sp, #4]
	bl DisplaySprite
_08031942:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031954: .4byte gPseudoRandom
_08031958: .4byte 0x00196225
_0803195C: .4byte 0x3C6EF35F
_08031960: .4byte gUnknown_080BB434
_08031964: .4byte gUnknown_080BB41C
_08031968: .4byte gUnknown_080BB42C
_0803196C: .4byte sub_80177EC
_08031970: .4byte 0x03000040
_08031974: .4byte gSineTable
_08031978: .4byte 0x000001FF
_0803197C: .4byte gWinRegs
_08031980: .4byte gBldRegs
_08031984: .4byte gCamera
_08031988: .4byte gCurTask
_0803198C: .4byte 0x0300000C
_08031990: .4byte 0x0300003C
_08031994: .4byte gUnknown_084ACED8

	thumb_func_start sub_8031998
sub_8031998: @ 0x08031998
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	ldr r5, [r4]
	ldr r0, _08031A84 @ =sub_8031AB4
	movs r2, #0x88
	lsls r2, r2, #6
	movs r6, #0
	str r6, [sp]
	movs r1, #0x68
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r3, r2
	ldrb r1, [r4, #8]
	lsls r1, r1, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r7, _08031A88 @ =0x03000044
	adds r0, r3, r7
	movs r7, #0
	mov sl, r7
	strh r1, [r0]
	ldrb r1, [r5, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r4, _08031A8C @ =0x03000046
	adds r0, r3, r4
	strh r1, [r0]
	ldr r7, _08031A90 @ =gPseudoRandom
	mov r8, r7
	mov r1, r8
	ldr r0, [r1]
	ldr r5, _08031A94 @ =0x00196225
	adds r1, r0, #0
	muls r1, r5, r1
	ldr r4, _08031A98 @ =0x3C6EF35F
	adds r1, r1, r4
	str r1, [r7]
	lsrs r7, r1, #1
	movs r0, #0xf
	mov sb, r0
	ands r7, r0
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #2
	rsbs r0, r0, #0
	subs r0, #0xa
	lsls r0, r0, #8
	str r0, [r2, #0x4c]
	ldr r0, _08031A9C @ =0xFFFFE000
	str r0, [r2, #0x50]
	str r6, [r2, #0x54]
	movs r0, #0xa
	str r0, [r2, #0x58]
	adds r0, r1, #0
	muls r0, r5, r0
	adds r0, r0, r4
	muls r0, r5, r0
	adds r0, r0, r4
	mov r1, r8
	str r0, [r1]
	mov r4, sb
	ands r0, r4
	adds r0, #0xa
	str r0, [r2, #0x58]
	strh r6, [r2, #0x16]
	strh r6, [r2, #0x18]
	ldr r0, _08031AA0 @ =0x06012720
	str r0, [r2, #4]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r2, #0x1a]
	strh r6, [r2, #8]
	ldr r0, _08031AA4 @ =0x00000276
	strh r0, [r2, #0xa]
	ldr r7, _08031AA8 @ =0x03000020
	adds r0, r3, r7
	mov r1, sl
	strb r1, [r0]
	strh r6, [r2, #0x14]
	strh r6, [r2, #0x1c]
	ldr r4, _08031AAC @ =0x03000021
	adds r1, r3, r4
	movs r0, #0xff
	strb r0, [r1]
	adds r7, #2
	adds r1, r3, r7
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _08031AB0 @ =0x03000025
	adds r3, r3, r0
	mov r1, sl
	strb r1, [r3]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r2, #0x10]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031A84: .4byte sub_8031AB4
_08031A88: .4byte 0x03000044
_08031A8C: .4byte 0x03000046
_08031A90: .4byte gPseudoRandom
_08031A94: .4byte 0x00196225
_08031A98: .4byte 0x3C6EF35F
_08031A9C: .4byte 0xFFFFE000
_08031AA0: .4byte 0x06012720
_08031AA4: .4byte 0x00000276
_08031AA8: .4byte 0x03000020
_08031AAC: .4byte 0x03000021
_08031AB0: .4byte 0x03000025

	thumb_func_start sub_8031AB4
sub_8031AB4: @ 0x08031AB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r0, #0
	str r0, [sp, #4]
	ldr r3, _08031B08 @ =gCurTask
	ldr r0, [r3]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r2, r1
	ldrh r0, [r0]
	adds r0, r0, r1
	ldrh r5, [r0, #6]
	adds r1, r5, r1
	str r1, [sp]
	adds r4, r7, #0
	ldr r1, _08031B0C @ =0x03000046
	adds r2, r2, r1
	movs r6, #0
	ldrsh r1, [r2, r6]
	ldr r2, [r4, #0x50]
	asrs r0, r2, #8
	adds r1, r1, r0
	subs r1, #0x11
	ldr r0, _08031B10 @ =gUnknown_03006080
	movs r6, #2
	ldrsh r0, [r0, r6]
	cmp r1, r0
	bge _08031B14
	ldr r0, [r4, #0x54]
	ldr r1, [r4, #0x58]
	adds r0, r0, r1
	str r0, [r4, #0x54]
	adds r1, r2, r0
	str r1, [r4, #0x50]
	mov sl, r0
	b _08031B54
	.align 2, 0
_08031B08: .4byte gCurTask
_08031B0C: .4byte 0x03000046
_08031B10: .4byte gUnknown_03006080
_08031B14:
	movs r0, #1
	str r0, [sp, #4]
	ldr r1, _08031B2C @ =0x03000086
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _08031B30
	ldr r0, [r4, #0x54]
	ldr r1, [r4, #0x58]
	b _08031B3C
	.align 2, 0
_08031B2C: .4byte 0x03000086
_08031B30:
	ldr r1, [r4, #0x58]
	cmp r1, #0
	bge _08031B38
	adds r1, #7
_08031B38:
	asrs r1, r1, #3
	ldr r0, [r4, #0x54]
_08031B3C:
	adds r0, r0, r1
	str r0, [r4, #0x54]
	ldr r1, [r7, #0x54]
	adds r0, r1, #0
	cmp r1, #0
	bge _08031B4A
	adds r0, r1, #7
_08031B4A:
	asrs r2, r0, #3
	ldr r0, [r7, #0x50]
	adds r0, r0, r2
	str r0, [r7, #0x50]
	mov sl, r2
_08031B54:
	ldr r2, [r7, #0x50]
	movs r0, #0xd0
	lsls r0, r0, #8
	cmp r2, r0
	ble _08031B66
	ldr r0, [r3]
	bl TaskDestroy
	b _08031CA2
_08031B66:
	adds r1, r7, #0
	adds r1, #0x44
	ldr r0, [r7, #0x4c]
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	adds r1, r7, #0
	adds r1, #0x46
	asrs r0, r2, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r2, _08031C24 @ =gCamera
	ldrh r0, [r2]
	mov r3, sb
	lsls r1, r3, #0x10
	asrs r6, r1, #0x10
	subs r0, r6, r0
	strh r0, [r4, #0x16]
	ldrh r0, [r2, #2]
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r5, r1, #0x10
	subs r0, r5, r0
	strh r0, [r4, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	ldr r3, [sp]
	cmp r3, r0
	beq _08031BE4
	adds r0, r3, #0
	adds r0, #0x86
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	bgt _08031BE4
	ldr r3, _08031C28 @ =gPlayer
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_800BFEC
	ldr r0, _08031C2C @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08031BE4
	ldr r3, _08031C30 @ =gUnknown_03005AB0
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_800BFEC
_08031BE4:
	ldr r6, [sp, #4]
	cmp r6, #0
	beq _08031BFE
	mov r0, sb
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	mov r3, r8
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	ldr r3, _08031C28 @ =gPlayer
	adds r0, r4, #0
	bl sub_800B2BC
_08031BFE:
	ldr r3, _08031C28 @ =gPlayer
	ldr r2, [r3, #0x10]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _08031C40
	ldr r0, [r3, #0x28]
	cmp r0, r4
	bne _08031C40
	ldr r1, [r7, #0x50]
	movs r0, #0xc4
	lsls r0, r0, #8
	cmp r1, r0
	ble _08031C34
	movs r0, #9
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r3, #0x10]
	b _08031C40
	.align 2, 0
_08031C24: .4byte gCamera
_08031C28: .4byte gPlayer
_08031C2C: .4byte gUnknown_03005088
_08031C30: .4byte gUnknown_03005AB0
_08031C34:
	ldr r0, [r3, #4]
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r0, r6
	add r0, sl
	str r0, [r3, #4]
_08031C40:
	ldr r0, _08031C88 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08031C9C
	mov r0, sb
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	mov r3, r8
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	ldr r5, _08031C8C @ =gUnknown_03005AB0
	adds r0, r4, #0
	adds r3, r5, #0
	bl sub_800B2BC
	ldr r3, [r5, #0x10]
	movs r0, #8
	ands r0, r3
	cmp r0, #0
	beq _08031C9C
	ldr r0, [r5, #0x28]
	cmp r0, r4
	bne _08031C9C
	ldr r1, [r7, #0x50]
	movs r0, #0xc4
	lsls r0, r0, #8
	cmp r1, r0
	ble _08031C90
	movs r0, #9
	rsbs r0, r0, #0
	ands r3, r0
	str r3, [r5, #0x10]
	b _08031C9C
	.align 2, 0
_08031C88: .4byte gUnknown_03005088
_08031C8C: .4byte gUnknown_03005AB0
_08031C90:
	ldr r0, [r5, #4]
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r0, r6
	add r0, sl
	str r0, [r5, #4]
_08031C9C:
	adds r0, r4, #0
	bl DisplaySprite
_08031CA2:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8031CB4
sub_8031CB4: @ 0x08031CB4
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x10]
	bl VramFree
	ldr r0, [r4, #0x40]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8031CD0
sub_8031CD0: @ 0x08031CD0
	ldr r0, _08031D00 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	ldr r0, _08031D04 @ =0x0300003C
	adds r1, r2, r0
	adds r0, #0x20
	adds r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq _08031CFC
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08031CFC
	movs r0, #0
	strb r0, [r3]
	ldr r0, _08031D08 @ =0x0300005D
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
_08031CFC:
	bx lr
	.align 2, 0
_08031D00: .4byte gCurTask
_08031D04: .4byte 0x0300003C
_08031D08: .4byte 0x0300005D

	thumb_func_start sub_8031D0C
sub_8031D0C: @ 0x08031D0C
	push {r4, lr}
	ldr r0, _08031D48 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _08031D4C @ =0x0300000C
	adds r2, r0, r1
	adds r1, #0x30
	adds r3, r0, r1
	ldrh r0, [r2, #0x16]
	strh r0, [r3, #0x16]
	ldrh r4, [r2, #0x18]
	strh r4, [r3, #0x18]
	ldrh r1, [r2, #0xa]
	movs r0, #0x9d
	lsls r0, r0, #2
	cmp r1, r0
	bne _08031D42
	ldr r0, [r2, #0xc]
	ldr r1, _08031D50 @ =gUnknown_084ACED8
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	subs r0, r4, r0
	strh r0, [r3, #0x18]
_08031D42:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08031D48: .4byte gCurTask
_08031D4C: .4byte 0x0300000C
_08031D50: .4byte gUnknown_084ACED8

	thumb_func_start sub_8031D54
sub_8031D54: @ 0x08031D54
	push {r4, lr}
	ldr r2, _08031D7C @ =gCurTask
	ldr r2, [r2]
	ldrh r2, [r2, #6]
	ldr r3, _08031D80 @ =0x0300000C
	adds r2, r2, r3
	ldr r4, _08031D84 @ =gCamera
	ldrh r3, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r3
	strh r0, [r2, #0x16]
	ldrh r0, [r4, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r2, #0x18]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08031D7C: .4byte gCurTask
_08031D80: .4byte 0x0300000C
_08031D84: .4byte gCamera

@ --- Start of EggSnake

	thumb_func_start sub_8031D88
sub_8031D88: @ 0x08031D88
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	ldr r0, _08031E14 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	adds r0, #0xc
	adds r6, r4, r0
	ldr r0, [r6, #0x10]
	ldr r1, _08031E18 @ =0xFFFFFE7F
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r1, _08031E1C @ =gPlayer
	mov ip, r1
	ldr r3, [r1, #0x10]
	movs r0, #0x80
	ands r3, r0
	cmp r3, #0
	bne _08031DD2
	ldr r2, _08031E20 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08031E24 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08031E28 @ =gWinRegs
	strh r3, [r0, #0xa]
	ldr r0, _08031E2C @ =gBldRegs
	strh r3, [r0]
	strh r3, [r0, #4]
_08031DD2:
	ldr r1, _08031E30 @ =0x0300009C
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08031EC2
	lsls r0, r7, #0x10
	asrs r7, r0, #0x10
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	mov r3, ip
	bl sub_800BCBC
	mov r8, r0
	ldr r0, _08031E34 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08031E3C
	ldr r3, _08031E38 @ =gUnknown_03005AB0
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl sub_800BCBC
	b _08031E3E
	.align 2, 0
_08031E14: .4byte gCurTask
_08031E18: .4byte 0xFFFFFE7F
_08031E1C: .4byte gPlayer
_08031E20: .4byte gDispCnt
_08031E24: .4byte 0x00007FFF
_08031E28: .4byte gWinRegs
_08031E2C: .4byte gBldRegs
_08031E30: .4byte 0x0300009C
_08031E34: .4byte gUnknown_03005088
_08031E38: .4byte gUnknown_03005AB0
_08031E3C:
	movs r0, #0
_08031E3E:
	adds r3, r5, #0
	adds r3, #0x44
	mov r1, r8
	cmp r1, #1
	beq _08031E4C
	cmp r0, #1
	bne _08031E90
_08031E4C:
	adds r1, r5, #0
	adds r1, #0x9a
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r1, #2
	movs r0, #0x20
	strb r0, [r1]
	adds r2, r6, #0
	adds r2, #0x20
	ldrb r1, [r2]
	cmp r1, #2
	bne _08031E6C
	adds r0, r5, #0
	adds r0, #0x64
	strb r1, [r0]
_08031E6C:
	ldrb r0, [r2]
	cmp r0, #3
	bne _08031E7A
	adds r1, r5, #0
	adds r1, #0x64
	movs r0, #5
	strb r0, [r1]
_08031E7A:
	ldr r0, [r3, #0x10]
	ldr r1, _08031E8C @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	movs r0, #0x8f
	bl m4aSongNumStart
	b _08031EC2
	.align 2, 0
_08031E8C: .4byte 0xFFFFBFFF
_08031E90:
	mov r1, r8
	cmp r1, #2
	beq _08031E9A
	cmp r0, #2
	bne _08031EC2
_08031E9A:
	adds r2, r6, #0
	adds r2, #0x20
	ldrb r0, [r2]
	cmp r0, #2
	bne _08031EAC
	adds r1, r5, #0
	adds r1, #0x64
	movs r0, #1
	strb r0, [r1]
_08031EAC:
	ldrb r0, [r2]
	cmp r0, #3
	bne _08031EBA
	adds r1, r5, #0
	adds r1, #0x64
	movs r0, #4
	strb r0, [r1]
_08031EBA:
	ldr r0, [r3, #0x10]
	ldr r1, _08031ECC @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
_08031EC2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031ECC: .4byte 0xFFFFBFFF

	thumb_func_start sub_8031ED0
sub_8031ED0: @ 0x08031ED0
	push {r4, r5, r6, lr}
	ldr r0, _08031F58 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	adds r1, #0xc
	adds r3, r0, r1
	ldr r6, _08031F5C @ =0x03000044
	adds r5, r0, r6
	adds r1, #0x90
	adds r2, r0, r1
	ldrb r1, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _08031F3A
	subs r1, #1
	strb r1, [r2]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x10
	ble _08031F3A
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _08031F3A
	ldr r0, _08031F60 @ =gPlayer
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08031F3A
	ldr r0, [r3, #0x10]
	adds r1, #0x80
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r2, _08031F64 @ =gDispCnt
	ldrh r0, [r2]
	movs r6, #0x80
	lsls r6, r6, #8
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08031F68 @ =gWinRegs
	ldr r0, _08031F6C @ =0x00003F1F
	strh r0, [r1, #0xa]
	ldr r1, _08031F70 @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
_08031F3A:
	adds r0, r3, #0
	bl DisplaySprite
	adds r0, r4, #0
	adds r0, #0xaa
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _08031F50
	adds r0, r5, #0
	bl DisplaySprite
_08031F50:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08031F58: .4byte gCurTask
_08031F5C: .4byte 0x03000044
_08031F60: .4byte gPlayer
_08031F64: .4byte gDispCnt
_08031F68: .4byte gWinRegs
_08031F6C: .4byte 0x00003F1F
_08031F70: .4byte gBldRegs

	thumb_func_start sub_8031F74
sub_8031F74: @ 0x08031F74
	ldr r0, _08031FB8 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	ldr r0, _08031FBC @ =0x03000044
	adds r1, r2, r0
	adds r0, #0x20
	adds r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq _08031FB6
	cmp r0, #3
	beq _08031FB6
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08031FB6
	ldr r0, _08031FC0 @ =0x0300002C
	adds r1, r2, r0
	ldrb r0, [r1]
	cmp r0, #2
	bne _08031FA6
	movs r0, #0
	strb r0, [r3]
_08031FA6:
	ldrb r0, [r1]
	cmp r0, #3
	bne _08031FAE
	strb r0, [r3]
_08031FAE:
	ldr r0, _08031FC4 @ =0x03000065
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
_08031FB6:
	bx lr
	.align 2, 0
_08031FB8: .4byte gCurTask
_08031FBC: .4byte 0x03000044
_08031FC0: .4byte 0x0300002C
_08031FC4: .4byte 0x03000065

	thumb_func_start CreateEntity_EggSnake
CreateEntity_EggSnake: @ 0x08031FC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x18
	lsrs r5, r3, #0x18
	ldr r0, _08031FF8 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _08031FFC
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	b _080321A8
	.align 2, 0
_08031FF8: .4byte gGameMode
_08031FFC:
	ldr r0, _08032090 @ =sub_80321C0
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08032094 @ =sub_8034208
	str r1, [sp]
	movs r1, #0xac
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r3
	mov sl, r0
	ldr r0, _08032098 @ =0x0300000C
	adds r7, r3, r0
	movs r4, #0
	movs r2, #0
	mov r0, r8
	mov r1, sl
	strh r0, [r1, #4]
	mov r0, sb
	strh r0, [r1, #6]
	str r6, [r1]
	ldrb r0, [r6]
	strb r0, [r1, #8]
	strb r5, [r1, #9]
	ldr r0, _0803209C @ =0x03000098
	adds r1, r3, r0
	movs r0, #0x78
	strh r0, [r1]
	ldr r1, _080320A0 @ =0x0300009C
	adds r0, r3, r1
	strb r4, [r0]
	adds r1, #0xd
	adds r0, r3, r1
	strb r4, [r0]
	subs r1, #1
	adds r0, r3, r1
	strb r4, [r0]
	movs r0, #0x80
	lsls r0, r0, #5
	mov r1, sl
	str r0, [r1, #0x78]
	str r2, [r1, #0x7c]
	ldr r1, _080320A4 @ =0x03000080
	adds r0, r3, r1
	str r2, [r0]
	adds r1, #4
	adds r0, r3, r1
	str r2, [r0]
	adds r1, #0x1c
	adds r0, r3, r1
	strh r2, [r0]
	ldr r0, _080320A8 @ =0x030000A2
	adds r1, r3, r0
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r1, _080320AC @ =0x030000A4
	adds r0, r3, r1
	strh r2, [r0]
	adds r1, #6
	adds r0, r3, r1
	strb r4, [r0]
	ldr r0, _080320B0 @ =gUnknown_03005160
	ldrb r0, [r0, #0x18]
	cmp r0, #0
	beq _080320B8
	ldr r0, _080320B4 @ =0x0300009A
	adds r1, r3, r0
	movs r0, #2
	strb r0, [r1]
	b _080320BE
	.align 2, 0
_08032090: .4byte sub_80321C0
_08032094: .4byte sub_8034208
_08032098: .4byte 0x0300000C
_0803209C: .4byte 0x03000098
_080320A0: .4byte 0x0300009C
_080320A4: .4byte 0x03000080
_080320A8: .4byte 0x030000A2
_080320AC: .4byte 0x030000A4
_080320B0: .4byte gUnknown_03005160
_080320B4: .4byte 0x0300009A
_080320B8:
	ldr r1, _080321B8 @ =0x0300009A
	adds r0, r3, r1
	strb r4, [r0]
_080320BE:
	ldrb r0, [r6]
	lsls r0, r0, #3
	mov r1, r8
	lsls r5, r1, #8
	adds r0, r0, r5
	strh r0, [r7, #0x16]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	mov r1, sb
	lsls r1, r1, #8
	mov sb, r1
	add r0, sb
	strh r0, [r7, #0x18]
	movs r0, #0x30
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0xb0
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	movs r0, #0
	strh r0, [r7, #8]
	ldr r0, _080321BC @ =0x00000296
	strh r0, [r7, #0xa]
	adds r0, r7, #0
	adds r0, #0x20
	movs r1, #3
	strb r1, [r0]
	movs r0, #0
	strh r0, [r7, #0x14]
	strh r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x22
	movs r1, #0x10
	strb r1, [r0]
	adds r0, #3
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	mov r8, r1
	str r1, [r7, #0x10]
	mov r4, sl
	adds r4, #0x44
	ldrb r0, [r6]
	lsls r0, r0, #3
	adds r0, r0, r5
	strh r0, [r4, #0x16]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	add r0, sb
	strh r0, [r4, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	movs r0, #8
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0xa8
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	movs r0, #0
	strh r0, [r4, #8]
	movs r0, #0xa5
	lsls r0, r0, #2
	strh r0, [r4, #0xa]
	mov r0, sl
	adds r0, #0x64
	movs r1, #3
	strb r1, [r0]
	movs r0, #0
	strh r0, [r4, #0x14]
	strh r0, [r4, #0x1c]
	mov r1, sl
	adds r1, #0x65
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	mov r0, sl
	adds r0, #0x66
	movs r1, #0x10
	strb r1, [r0]
	adds r0, #3
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	mov r1, r8
	str r1, [r4, #0x10]
	ldrh r1, [r7, #0x18]
	adds r0, r1, #0
	subs r0, #0x80
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, #0x20
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r3, [r7, #0x16]
	adds r2, r3, #0
	subs r2, #0x90
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r3, #0xb0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	bl sub_80171BC
_080321A8:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080321B8: .4byte 0x0300009A
_080321BC: .4byte 0x00000296

	thumb_func_start sub_80321C0
sub_80321C0: @ 0x080321C0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080322B8 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	adds r0, #0xc
	adds r0, r0, r2
	mov r8, r0
	ldr r1, _080322BC @ =0x03000044
	adds r6, r2, r1
	ldr r4, [r5]
	ldr r3, _080322C0 @ =0x03000098
	adds r0, r2, r3
	ldrh r0, [r0]
	cmp r0, #0x78
	bne _080321FC
	adds r1, #0x65
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080321FC
	bl sub_8033878
	bl sub_803330C
_080321FC:
	ldr r1, _080322C4 @ =gSineTable
	adds r0, r5, #0
	adds r0, #0xa0
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r2, [r0, r3]
	lsls r0, r2, #4
	subs r0, r0, r2
	asrs r2, r0, #0xb
	ldrb r1, [r5, #8]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r5, #0x78]
	asrs r0, r0, #8
	adds r1, r1, r0
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	adds r0, r2, #0
	adds r0, #0x90
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	bge _0803223A
	adds r2, #0x1f
_0803223A:
	ldr r0, _080322C8 @ =gUnknown_03005870
	asrs r2, r2, #5
	lsls r2, r2, #1
	adds r2, r2, r0
	ldrb r1, [r4, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r5, #0x7c]
	asrs r0, r0, #8
	adds r1, r1, r0
	movs r0, #0
	ldrsh r2, [r2, r0]
	adds r2, r2, r1
	ldr r7, _080322B8 @ =gCurTask
	ldr r0, [r7]
	ldrh r1, [r0, #6]
	ldr r3, _080322CC @ =0x0300000C
	adds r1, r1, r3
	ldr r4, _080322D0 @ =gCamera
	ldrh r0, [r4]
	mov sb, r0
	mov r3, ip
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	mov r3, sb
	subs r0, r0, r3
	strh r0, [r1, #0x16]
	ldrh r0, [r4, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r1, #0x18]
	mov r0, r8
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	ldr r0, [r7]
	ldrh r0, [r0, #6]
	ldr r1, _080322CC @ =0x0300000C
	adds r2, r0, r1
	ldr r3, _080322BC @ =0x03000044
	adds r0, r0, r3
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	bl sub_8031ED0
	adds r3, r5, #0
	adds r3, #0xa9
	ldrb r0, [r3]
	cmp r0, #1
	beq _08032300
	cmp r0, #1
	bgt _080322D4
	cmp r0, #0
	beq _080322DE
	b _0803235E
	.align 2, 0
_080322B8: .4byte gCurTask
_080322BC: .4byte 0x03000044
_080322C0: .4byte 0x03000098
_080322C4: .4byte gSineTable
_080322C8: .4byte gUnknown_03005870
_080322CC: .4byte 0x0300000C
_080322D0: .4byte gCamera
_080322D4:
	cmp r0, #2
	beq _0803231A
	cmp r0, #3
	beq _0803233E
	b _0803235E
_080322DE:
	adds r2, r5, #0
	adds r2, #0x98
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803235E
	ldr r1, _080322FC @ =gUnknown_03005040
	movs r0, #0x13
	strb r0, [r1, #1]
	movs r0, #0x3c
	strh r0, [r2]
	b _08032336
	.align 2, 0
_080322FC: .4byte gUnknown_03005040
_08032300:
	adds r1, r5, #0
	adds r1, #0x98
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803235E
	adds r1, r6, #0
	adds r1, #0x20
	movs r0, #4
	strb r0, [r1]
	b _08032336
_0803231A:
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0803235E
	adds r1, r6, #0
	adds r1, #0x20
	movs r0, #3
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x98
	movs r0, #0x3c
	strh r0, [r1]
_08032336:
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	b _0803235E
_0803233E:
	adds r1, r5, #0
	adds r1, #0x98
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803235E
	adds r1, #0x10
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0
	strb r0, [r3]
	ldr r1, [r7]
	ldr r0, _0803236C @ =sub_8032370
	str r0, [r1, #8]
_0803235E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803236C: .4byte sub_8032370

	thumb_func_start sub_8032370
sub_8032370: @ 0x08032370
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r1, _0803247C @ =gCurTask
	ldr r0, [r1]
	ldrh r6, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r6, r1
	ldr r2, _08032480 @ =0x0300000C
	adds r2, r2, r6
	mov r8, r2
	ldr r3, _08032484 @ =0x03000044
	adds r3, r3, r6
	mov sl, r3
	ldr r4, [r5]
	mov ip, r4
	ldr r0, [r5, #0x74]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp]
	ldr r0, _08032488 @ =0x030000A2
	adds r1, r6, r0
	ldr r2, _0803248C @ =0x030000A4
	adds r0, r6, r2
	ldrh r0, [r0]
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	ldr r4, _08032490 @ =0x030000A0
	adds r2, r6, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r1, [r2]
	subs r1, r1, r0
	ldr r0, _08032494 @ =0x000003FF
	ands r1, r0
	strh r1, [r2]
	ldr r1, _08032498 @ =gSineTable
	movs r3, #0
	ldrsh r0, [r2, r3]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r4, #0
	ldrsh r7, [r0, r4]
	lsls r0, r7, #4
	subs r0, r0, r7
	asrs r7, r0, #0xb
	ldrb r1, [r5, #8]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r5, #0x78]
	asrs r0, r0, #8
	adds r1, r1, r0
	adds r1, r1, r7
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	adds r0, r7, #0
	adds r0, #0x80
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	adds r1, r3, #0
	cmp r3, #0
	bge _080323FE
	adds r1, #0x1f
_080323FE:
	asrs r1, r1, #5
	lsls r0, r1, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #5
	subs r1, r3, r1
	ldr r3, _0803249C @ =gUnknown_03005870
	lsls r2, r4, #1
	adds r2, r2, r3
	adds r0, r4, #1
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r4, #0
	ldrsh r3, [r2, r4]
	subs r0, r0, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	muls r0, r1, r0
	cmp r0, #0
	bge _0803242A
	adds r0, #0x1f
_0803242A:
	asrs r2, r0, #5
	adds r2, r3, r2
	lsls r2, r2, #0x10
	mov r0, ip
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r5, #0x7c]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsrs r3, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, r2, r1
	ldr r1, _080324A0 @ =0x03000090
	adds r0, r6, r1
	strh r7, [r0]
	ldr r4, _080324A4 @ =0x03000092
	adds r0, r6, r4
	strh r3, [r0]
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov sb, r2
	adds r0, r4, #0
	mov r1, sb
	bl sub_8031D88
	ldr r2, _080324A8 @ =0x0300009A
	adds r0, r6, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _080324AC
	bl sub_80327C4
	b _080327B0
	.align 2, 0
_0803247C: .4byte gCurTask
_08032480: .4byte 0x0300000C
_08032484: .4byte 0x03000044
_08032488: .4byte 0x030000A2
_0803248C: .4byte 0x030000A4
_08032490: .4byte 0x030000A0
_08032494: .4byte 0x000003FF
_08032498: .4byte gSineTable
_0803249C: .4byte gUnknown_03005870
_080324A0: .4byte 0x03000090
_080324A4: .4byte 0x03000092
_080324A8: .4byte 0x0300009A
_080324AC:
	ldr r3, _08032510 @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	ldr r0, _08032514 @ =0x0300000C
	adds r1, r1, r0
	ldr r2, _08032518 @ =gCamera
	ldrh r0, [r2]
	subs r0, r4, r0
	strh r0, [r1, #0x16]
	ldrh r0, [r2, #2]
	mov r2, sb
	subs r0, r2, r0
	strh r0, [r1, #0x18]
	bl sub_8031F74
	mov r0, r8
	bl UpdateSpriteAnimation
	ldr r3, _0803251C @ =0x030000AA
	adds r0, r6, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _080324E0
	mov r0, sl
	bl UpdateSpriteAnimation
_080324E0:
	ldr r4, _08032510 @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	ldr r1, _08032514 @ =0x0300000C
	adds r2, r0, r1
	ldr r3, _08032520 @ =0x03000044
	adds r0, r0, r3
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	bl sub_8031ED0
	ldr r4, _08032524 @ =0x030000A9
	adds r0, r6, r4
	ldrb r0, [r0]
	cmp r0, #5
	bls _08032506
	b _080327B0
_08032506:
	lsls r0, r0, #2
	ldr r1, _08032528 @ =_0803252C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08032510: .4byte gCurTask
_08032514: .4byte 0x0300000C
_08032518: .4byte gCamera
_0803251C: .4byte 0x030000AA
_08032520: .4byte 0x03000044
_08032524: .4byte 0x030000A9
_08032528: .4byte _0803252C
_0803252C: @ jump table
	.4byte _08032544 @ case 0
	.4byte _080325CC @ case 1
	.4byte _08032670 @ case 2
	.4byte _080326CE @ case 3
	.4byte _0803274C @ case 4
	.4byte _08032790 @ case 5
_08032544:
	adds r6, r5, #0
	adds r6, #0xa2
	movs r0, #0
	ldrsh r1, [r6, r0]
	ldr r0, _080325C8 @ =0x000001FF
	cmp r1, r0
	bgt _08032560
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r6]
	adds r1, r5, #0
	adds r1, #0xa4
	strh r0, [r1]
_08032560:
	adds r0, r7, #0
	adds r0, #0x90
	cmp r0, #0
	bge _0803256A
	adds r0, #0x1f
_0803256A:
	asrs r0, r0, #5
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _08032576
	b _080327B0
_08032576:
	cmp r4, #8
	bne _0803257C
	b _080327B0
_0803257C:
	ldr r0, [sp]
	adds r0, #0x55
	ldrb r2, [r0]
	adds r0, r2, #0
	cmp r0, #0
	bne _0803258A
	b _080327B0
_0803258A:
	cmp r0, #8
	bne _08032590
	b _080327B0
_08032590:
	subs r0, r2, #2
	lsls r1, r4, #0x18
	lsls r0, r0, #0x18
	asrs r3, r1, #0x18
	cmp r1, r0
	bge _0803259E
	b _080327B0
_0803259E:
	adds r0, r2, #2
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r3, r0
	ble _080325AA
	b _080327B0
_080325AA:
	ldr r0, [sp]
	adds r0, #0x57
	ldrb r0, [r0]
	cmp r0, #0
	bne _080325B6
	b _080327B0
_080325B6:
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r6]
	adds r0, r5, #0
	adds r0, #0xa4
	strh r1, [r0]
	b _08032740
	.align 2, 0
_080325C8: .4byte 0x000001FF
_080325CC:
	mov r3, r8
	adds r3, #0x20
	ldrb r0, [r3]
	cmp r0, #1
	beq _080325FC
	ldr r0, [sp]
	adds r0, #0x5c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	blt _080325E4
	b _080327B0
_080325E4:
	movs r0, #1
	strb r0, [r3]
	mov r1, r8
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0xaa
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	b _080327B0
_080325FC:
	mov r2, r8
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0803260C
	b _080327B0
_0803260C:
	movs r2, #0
	movs r0, #2
	strb r0, [r3]
	mov r0, sl
	adds r0, #0x20
	strb r2, [r0]
	mov r1, r8
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0xaa
	strb r2, [r0]
	ldr r3, _0803265C @ =gUnknown_084ACF08
	ldr r2, _08032660 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _08032664 @ =0x00196225
	muls r0, r1, r0
	ldr r4, _08032668 @ =0x3C6EF35F
	adds r0, r0, r4
	str r0, [r2]
	ldr r1, _0803266C @ =gStageTime
	ldr r1, [r1]
	adds r0, r0, r1
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x98
	strh r1, [r0]
	adds r0, #2
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x9b
	strb r0, [r1]
	adds r1, #0xe
	b _08032744
	.align 2, 0
_0803265C: .4byte gUnknown_084ACF08
_08032660: .4byte gPseudoRandom
_08032664: .4byte 0x00196225
_08032668: .4byte 0x3C6EF35F
_0803266C: .4byte gStageTime
_08032670:
	adds r0, r5, #0
	adds r0, #0x9c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080326A0
	cmp r0, #0x10
	ble _08032684
	b _080327B0
_08032684:
	mov r1, r8
	adds r1, #0x20
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0xaa
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	subs r1, #1
	b _08032744
_080326A0:
	adds r1, r5, #0
	adds r1, #0x98
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080326B2
	b _080327B0
_080326B2:
	mov r1, r8
	adds r1, #0x20
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0xaa
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	subs r1, #1
	b _08032744
_080326CE:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080327B0
	mov r0, r8
	adds r0, #0x20
	movs r2, #0
	movs r1, #3
	strb r1, [r0]
	mov r0, sl
	adds r0, #0x20
	strb r1, [r0]
	mov r1, r8
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0xaa
	strb r2, [r0]
	adds r1, r5, #0
	adds r1, #0xa4
	movs r0, #0x40
	strh r0, [r1]
	ldr r1, _0803273C @ =gUnknown_084ACEE4
	adds r2, r5, #0
	adds r2, #0x9a
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0xa6
	strh r0, [r1]
	subs r1, #0xe
	movs r0, #0x78
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x9b
	movs r1, #0
	ldrsb r1, [r2, r1]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	bne _08032740
	adds r1, r5, #0
	adds r1, #0xa9
	ldrb r0, [r1]
	adds r0, #2
	strb r0, [r1]
	b _080327B0
	.align 2, 0
_0803273C: .4byte gUnknown_084ACEE4
_08032740:
	adds r1, r5, #0
	adds r1, #0xa9
_08032744:
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _080327B0
_0803274C:
	adds r2, r5, #0
	adds r2, #0xa2
	adds r0, r5, #0
	adds r0, #0xa6
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldrh r3, [r0]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	blt _0803276C
	movs r1, #0
	strh r3, [r2]
	adds r0, r5, #0
	adds r0, #0xa4
	strh r1, [r0]
_0803276C:
	adds r1, r5, #0
	adds r1, #0x98
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080327B0
	adds r1, #0xc
	ldr r0, _0803278C @ =0x0000FFC0
	strh r0, [r1]
	adds r1, #5
	movs r0, #0
	strb r0, [r1]
	b _080327B0
	.align 2, 0
_0803278C: .4byte 0x0000FFC0
_08032790:
	adds r3, r5, #0
	adds r3, #0xa2
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, _080327C0 @ =0x000001FF
	cmp r1, r0
	ble _080327B0
	movs r2, #0
	movs r1, #0
	adds r0, #1
	strh r0, [r3]
	adds r0, r5, #0
	adds r0, #0xa4
	strh r1, [r0]
	adds r0, #5
	strb r2, [r0]
_080327B0:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080327C0: .4byte 0x000001FF

	thumb_func_start sub_80327C4
sub_80327C4: @ 0x080327C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08032894 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r8, r0
	adds r2, r5, r0
	ldr r1, _08032898 @ =0x0300000C
	adds r1, r1, r5
	mov sl, r1
	ldr r6, [r2]
	ldr r4, _0803289C @ =0x03000090
	adds r0, r5, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	ldr r3, [r2, #0x78]
	adds r3, r3, r0
	str r3, [r2, #0x78]
	adds r4, #2
	adds r0, r5, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	ldr r4, [r2, #0x7c]
	adds r4, r4, r0
	str r4, [r2, #0x7c]
	ldrb r1, [r2, #8]
	lsls r1, r1, #3
	ldrh r0, [r2, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	asrs r3, r3, #8
	adds r1, r1, r3
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	ldrb r1, [r6, #1]
	lsls r1, r1, #3
	ldrh r0, [r2, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	asrs r4, r4, #8
	adds r1, r1, r4
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r2, _080328A0 @ =0x03000064
	adds r1, r5, r2
	movs r4, #0
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080328A4 @ =0x0300009E
	adds r5, r5, r0
	ldr r0, _080328A8 @ =0x0000FF80
	strh r0, [r5]
	movs r0, #0x90
	bl m4aSongNumStart
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	ldr r3, _080328AC @ =0x00000295
	str r4, [sp]
	movs r2, #4
	bl sub_80168F0
	ldrh r2, [r0, #6]
	mov r0, r8
	adds r3, r2, r0
	ldr r0, _080328B0 @ =0x03000046
	adds r1, r2, r0
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r1]
	ldr r1, _080328B4 @ =0x03000048
	adds r0, r2, r1
	strh r4, [r0]
	ldr r4, _080328B8 @ =0x03000042
	adds r0, r2, r4
	movs r4, #0x80
	lsls r4, r4, #1
	strh r4, [r0]
	mov r1, sl
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080328C0
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r3, #0x32]
	ldr r1, _080328BC @ =0x03000044
	adds r0, r2, r1
	strh r4, [r0]
	b _080328CA
	.align 2, 0
_08032894: .4byte gCurTask
_08032898: .4byte 0x0300000C
_0803289C: .4byte 0x03000090
_080328A0: .4byte 0x03000064
_080328A4: .4byte 0x0300009E
_080328A8: .4byte 0x0000FF80
_080328AC: .4byte 0x00000295
_080328B0: .4byte 0x03000046
_080328B4: .4byte 0x03000048
_080328B8: .4byte 0x03000042
_080328BC: .4byte 0x03000044
_080328C0:
	ldr r4, _08032930 @ =0x03000044
	adds r1, r2, r4
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r1]
_080328CA:
	adds r1, r3, #0
	adds r1, #0x40
	movs r4, #0
	movs r0, #0x3c
	strh r0, [r1]
	mov r0, sb
	lsls r6, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xd
	adds r0, r6, r1
	asrs r0, r0, #0x10
	lsls r5, r7, #0x10
	adds r1, r5, r1
	asrs r1, r1, #0x10
	ldr r3, _08032934 @ =0x00000295
	str r4, [sp]
	movs r2, #4
	bl sub_80168F0
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	adds r0, #0x46
	adds r1, r2, r0
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r1]
	ldr r1, _08032938 @ =0x03000048
	adds r0, r2, r1
	strh r4, [r0]
	ldr r4, _0803293C @ =0x03000042
	adds r1, r2, r4
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	mov r1, sl
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	adds r7, r5, #0
	cmp r0, #0
	beq _08032940
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r3, #0x32]
	adds r4, #2
	adds r0, r2, r4
	strh r1, [r0]
	b _0803294A
	.align 2, 0
_08032930: .4byte 0x03000044
_08032934: .4byte 0x00000295
_08032938: .4byte 0x03000048
_0803293C: .4byte 0x03000042
_08032940:
	ldr r0, _080329B0 @ =0x03000044
	adds r1, r2, r0
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r1]
_0803294A:
	adds r1, r3, #0
	adds r1, #0x40
	movs r4, #0
	movs r0, #0x3c
	strh r0, [r1]
	ldr r1, _080329B4 @ =0xFFF00000
	adds r0, r6, r1
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #0xd
	adds r1, r7, r2
	asrs r1, r1, #0x10
	ldr r3, _080329B8 @ =0x00000295
	str r4, [sp]
	movs r2, #4
	bl sub_80168F0
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	ldr r1, _080329BC @ =0x03000046
	adds r0, r2, r1
	movs r5, #0xfe
	lsls r5, r5, #8
	strh r5, [r0]
	adds r1, #2
	adds r0, r2, r1
	strh r4, [r0]
	ldr r4, _080329C0 @ =0x03000042
	adds r1, r2, r4
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r3, #0x10]
	mov r4, sl
	ldr r0, [r4, #0x10]
	ands r0, r1
	cmp r0, #0
	beq _080329C4
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r3, #0x32]
	ldr r1, _080329B0 @ =0x03000044
	adds r0, r2, r1
	strh r5, [r0]
	b _080329CE
	.align 2, 0
_080329B0: .4byte 0x03000044
_080329B4: .4byte 0xFFF00000
_080329B8: .4byte 0x00000295
_080329BC: .4byte 0x03000046
_080329C0: .4byte 0x03000042
_080329C4:
	ldr r4, _08032A34 @ =0x03000044
	adds r1, r2, r4
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
_080329CE:
	adds r1, r3, #0
	adds r1, #0x40
	movs r4, #0
	movs r0, #0x3c
	strh r0, [r1]
	ldr r1, _08032A38 @ =0xFFF00000
	adds r0, r6, r1
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #0xd
	adds r1, r7, r2
	asrs r1, r1, #0x10
	ldr r3, _08032A3C @ =0x00000295
	str r4, [sp]
	movs r2, #4
	bl sub_80168F0
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	adds r0, #0x46
	adds r1, r2, r0
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r1]
	ldr r1, _08032A40 @ =0x03000048
	adds r0, r2, r1
	strh r4, [r0]
	ldr r4, _08032A44 @ =0x03000042
	adds r1, r2, r4
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r3, #0x10]
	mov r4, sl
	ldr r0, [r4, #0x10]
	ands r0, r1
	cmp r0, #0
	beq _08032A4C
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r3, #0x32]
	ldr r0, _08032A34 @ =0x03000044
	adds r1, r2, r0
	ldr r0, _08032A48 @ =0x0000FF80
	b _08032A52
	.align 2, 0
_08032A34: .4byte 0x03000044
_08032A38: .4byte 0xFFF00000
_08032A3C: .4byte 0x00000295
_08032A40: .4byte 0x03000048
_08032A44: .4byte 0x03000042
_08032A48: .4byte 0x0000FF80
_08032A4C:
	ldr r4, _08032AD4 @ =0x03000044
	adds r1, r2, r4
	movs r0, #0x80
_08032A52:
	strh r0, [r1]
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #0x3c
	strh r0, [r1]
	ldr r1, _08032AD8 @ =gCamera
	ldrh r0, [r1]
	strh r0, [r1, #0x18]
	adds r0, #0xf0
	strh r0, [r1, #0x1a]
	ldrh r1, [r1, #0x16]
	adds r0, r1, #0
	subs r0, #0xa0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, #0xa0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_80174DC
	ldr r2, _08032ADC @ =gUnknown_03005004
	ldrh r0, [r2]
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08032AE0 @ =gLevelScore
	ldr r6, [r1]
	movs r2, #0xfa
	lsls r2, r2, #2
	adds r0, r6, r2
	str r0, [r1]
	ldr r4, _08032AE4 @ =0x0000C350
	adds r1, r4, #0
	bl Div
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl Div
	cmp r5, r0
	beq _08032AB6
	ldr r0, _08032AE8 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _08032AB6
	ldr r1, _08032AEC @ =gNumLives
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08032AB6:
	bl sub_8032AF8
	ldr r0, _08032AF0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08032AF4 @ =sub_8032AF8
	str r0, [r1, #8]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032AD4: .4byte 0x03000044
_08032AD8: .4byte gCamera
_08032ADC: .4byte gUnknown_03005004
_08032AE0: .4byte gLevelScore
_08032AE4: .4byte 0x0000C350
_08032AE8: .4byte gGameMode
_08032AEC: .4byte gNumLives
_08032AF0: .4byte gCurTask
_08032AF4: .4byte sub_8032AF8

	thumb_func_start sub_8032AF8
sub_8032AF8: @ 0x08032AF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r1, _08032B80 @ =gCurTask
	ldr r0, [r1]
	ldrh r6, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r3, r6, r2
	ldr r5, _08032B84 @ =0x0300000C
	adds r7, r6, r5
	ldr r0, _08032B88 @ =0x03000044
	adds r0, r6, r0
	str r0, [sp, #4]
	ldr r5, [r3]
	adds r2, #0x9e
	adds r1, r6, r2
	ldrh r0, [r1]
	adds r0, #5
	strh r0, [r1]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r4, [r3, #0x7c]
	adds r4, r4, r0
	str r4, [r3, #0x7c]
	ldrb r2, [r3, #8]
	lsls r2, r2, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r0, [r3, #0x78]
	asrs r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r5, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	asrs r4, r4, #8
	adds r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov sl, r2
	ldr r0, _08032B8C @ =sub_803FD5C
	str r0, [sp]
	mov r0, sb
	mov r1, sl
	movs r2, #1
	movs r3, #8
	bl sub_804021C
	cmp r0, #0
	bge _08032B98
	ldr r5, _08032B90 @ =0x03000098
	adds r1, r6, r5
	movs r0, #0x3c
	strh r0, [r1]
	ldr r0, _08032B80 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08032B94 @ =sub_8032D44
	str r0, [r1, #8]
	b _08032CE0
	.align 2, 0
_08032B80: .4byte gCurTask
_08032B84: .4byte 0x0300000C
_08032B88: .4byte 0x03000044
_08032B8C: .4byte sub_803FD5C
_08032B90: .4byte 0x03000098
_08032B94: .4byte sub_8032D44
_08032B98:
	ldr r0, [r7, #0x10]
	ldr r1, _08032CF0 @ =0xFFFFFE7F
	ands r0, r1
	str r0, [r7, #0x10]
	ldr r0, _08032CF4 @ =gPlayer
	ldr r3, [r0, #0x10]
	movs r0, #0x80
	ands r3, r0
	cmp r3, #0
	bne _08032BC0
	ldr r2, _08032CF8 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08032CFC @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08032D00 @ =gWinRegs
	strh r3, [r0, #0xa]
	ldr r0, _08032D04 @ =gBldRegs
	strh r3, [r0]
	strh r3, [r0, #4]
_08032BC0:
	ldr r2, _08032D08 @ =0x03000098
	adds r1, r6, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r4, #7
	ands r0, r4
	cmp r0, #0
	bne _08032CA0
	ldr r6, _08032D0C @ =gPseudoRandom
	ldr r0, [r6]
	ldr r5, _08032D10 @ =0x00196225
	muls r0, r5, r0
	ldr r1, _08032D14 @ =0x3C6EF35F
	mov r8, r1
	add r0, r8
	str r0, [r6]
	ands r4, r0
	ldr r0, _08032D18 @ =gUnknown_080BB434
	adds r0, r4, r0
	ldrb r0, [r0]
	bl VramMalloc
	adds r1, r0, #0
	movs r5, #0x80
	lsls r5, r5, #6
	ldr r2, _08032D1C @ =gUnknown_080BB41C
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, _08032D20 @ =gUnknown_080BB42C
	adds r4, r4, r0
	ldrb r3, [r4]
	ldr r0, _08032D24 @ =sub_80177EC
	str r0, [sp]
	adds r0, r5, #0
	bl sub_801769C
	ldrh r1, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r3, r1, r2
	mov r2, sl
	lsls r0, r2, #8
	str r0, [r3, #0x30]
	mov r0, sb
	adds r0, #0x20
	lsls r0, r0, #8
	str r0, [r3, #0x34]
	str r5, [r3, #0x10]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r3, #0x1a]
	movs r0, #5
	strh r0, [r3, #0x3e]
	ldr r5, _08032D28 @ =0x03000040
	adds r1, r1, r5
	movs r0, #0x20
	strh r0, [r1]
	ldr r0, [r6]
	ldr r1, _08032D10 @ =0x00196225
	adds r4, r0, #0
	muls r4, r1, r4
	add r4, r8
	str r4, [r6]
	ldr r2, _08032D2C @ =gSineTable
	mov ip, r2
	ldr r1, _08032D30 @ =0x000001FF
	ands r1, r4
	lsls r0, r1, #1
	add r0, ip
	movs r5, #0
	ldrsh r2, [r0, r5]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #9
	rsbs r0, r0, #0
	asrs r0, r0, #0xe
	strh r0, [r3, #0x3a]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	add r1, ip
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #9
	rsbs r0, r0, #0
	asrs r0, r0, #0xe
	strh r0, [r3, #0x38]
	ldr r5, _08032D10 @ =0x00196225
	adds r1, r4, #0
	muls r1, r5, r1
	add r1, r8
	str r1, [r6]
	movs r0, #0x3f
	ands r0, r1
	add r0, sl
	subs r0, #0x20
	lsls r0, r0, #8
	movs r2, #0xfc
	lsls r2, r2, #0xe
	ands r1, r2
	asrs r1, r1, #0x10
	subs r1, #0x20
	mov r2, sb
	subs r1, r2, r1
	lsls r1, r1, #8
	bl sub_8017540
_08032CA0:
	ldr r1, _08032D34 @ =gCamera
	ldrh r0, [r1]
	mov r5, sl
	subs r0, r5, r0
	strh r0, [r7, #0x16]
	ldrh r0, [r1, #2]
	mov r1, sb
	subs r0, r1, r0
	strh r0, [r7, #0x18]
	ldr r2, _08032D38 @ =gCurTask
	ldr r0, [r2]
	ldrh r0, [r0, #6]
	ldr r5, _08032D3C @ =0x0300000C
	adds r2, r0, r5
	ldr r1, _08032D40 @ =0x03000044
	adds r0, r0, r1
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r0, [sp, #4]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, [sp, #4]
	bl DisplaySprite
_08032CE0:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032CF0: .4byte 0xFFFFFE7F
_08032CF4: .4byte gPlayer
_08032CF8: .4byte gDispCnt
_08032CFC: .4byte 0x00007FFF
_08032D00: .4byte gWinRegs
_08032D04: .4byte gBldRegs
_08032D08: .4byte 0x03000098
_08032D0C: .4byte gPseudoRandom
_08032D10: .4byte 0x00196225
_08032D14: .4byte 0x3C6EF35F
_08032D18: .4byte gUnknown_080BB434
_08032D1C: .4byte gUnknown_080BB41C
_08032D20: .4byte gUnknown_080BB42C
_08032D24: .4byte sub_80177EC
_08032D28: .4byte 0x03000040
_08032D2C: .4byte gSineTable
_08032D30: .4byte 0x000001FF
_08032D34: .4byte gCamera
_08032D38: .4byte gCurTask
_08032D3C: .4byte 0x0300000C
_08032D40: .4byte 0x03000044

	thumb_func_start sub_8032D44
sub_8032D44: @ 0x08032D44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08032E94 @ =gCurTask
	ldr r0, [r0]
	mov ip, r0
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r7, r0
	ldr r1, _08032E98 @ =0x0300000C
	adds r5, r7, r1
	ldr r2, _08032E9C @ =0x03000044
	adds r2, r2, r7
	mov r8, r2
	ldr r3, [r4]
	adds r0, #0x98
	adds r1, r7, r0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _08032D7C
	b _08032EE0
_08032D7C:
	ldr r0, [r4, #0x74]
	ldrh r0, [r0, #6]
	ldr r1, _08032EA0 @ =0x03000058
	adds r0, r0, r1
	movs r1, #0xff
	strb r1, [r0]
	ldr r2, _08032EA4 @ =gPlayer
	ldr r0, [r2, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x10]
	ldr r1, _08032EA8 @ =gCamera
	movs r0, #0x94
	lsls r0, r0, #4
	strh r0, [r1, #0x16]
	ldr r1, _08032EAC @ =gUnknown_03005040
	movs r0, #0x33
	strb r0, [r1, #1]
	ldrb r1, [r4, #8]
	lsls r1, r1, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0x78]
	asrs r0, r0, #8
	adds r1, r1, r0
	ldr r2, _08032EB0 @ =0x03000094
	adds r0, r7, r2
	strh r1, [r0]
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0x7c]
	asrs r0, r0, #8
	adds r1, r1, r0
	adds r2, #2
	adds r0, r7, r2
	strh r1, [r0]
	str r6, [r4, #0x78]
	str r6, [r4, #0x7c]
	ldr r1, _08032EB4 @ =0x03000080
	adds r0, r7, r1
	str r6, [r0]
	subs r2, #0x12
	adds r1, r7, r2
	movs r0, #0x80
	rsbs r0, r0, #0
	str r0, [r1]
	ldr r1, _08032EB8 @ =0x030000A9
	adds r0, r7, r1
	movs r2, #0
	strb r2, [r0]
	ldr r0, [r4, #0x10]
	bl VramFree
	ldr r0, [r4, #0x48]
	bl VramFree
	movs r0, #0x1e
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x98
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	strh r6, [r5, #8]
	ldr r0, _08032EBC @ =0x000002B5
	strh r0, [r5, #0xa]
	ldr r1, _08032EC0 @ =0x0300002C
	adds r0, r7, r1
	movs r2, #0
	strb r2, [r0]
	strh r6, [r5, #0x14]
	strh r6, [r5, #0x1c]
	ldr r0, _08032EC4 @ =0x0300002D
	adds r1, r7, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08032EC8 @ =0x0300002E
	adds r0, r7, r1
	movs r2, #0x10
	mov sl, r2
	mov r1, sl
	strb r1, [r0]
	ldr r2, _08032ECC @ =0x03000031
	adds r0, r7, r2
	movs r1, #0
	strb r1, [r0]
	movs r2, #1
	rsbs r2, r2, #0
	mov sb, r2
	str r2, [r5, #0x28]
	movs r4, #0x80
	lsls r4, r4, #6
	str r4, [r5, #0x10]
	movs r0, #0xc
	bl VramMalloc
	mov r1, r8
	str r0, [r1, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r1, #0x1a]
	strh r6, [r1, #8]
	ldr r0, _08032ED0 @ =0x000002B6
	strh r0, [r1, #0xa]
	ldr r2, _08032ED4 @ =0x03000064
	adds r1, r7, r2
	movs r0, #4
	strb r0, [r1]
	mov r0, r8
	strh r6, [r0, #0x14]
	strh r6, [r0, #0x1c]
	adds r2, #1
	adds r1, r7, r2
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08032ED8 @ =0x03000066
	adds r0, r7, r1
	mov r2, sl
	strb r2, [r0]
	adds r1, #3
	adds r0, r7, r1
	movs r2, #0
	strb r2, [r0]
	mov r0, sb
	mov r1, r8
	str r0, [r1, #0x28]
	str r4, [r1, #0x10]
	ldr r2, _08032E94 @ =gCurTask
	ldr r1, [r2]
	ldr r0, _08032EDC @ =sub_8032F58
	str r0, [r1, #8]
	b _08032F42
	.align 2, 0
_08032E94: .4byte gCurTask
_08032E98: .4byte 0x0300000C
_08032E9C: .4byte 0x03000044
_08032EA0: .4byte 0x03000058
_08032EA4: .4byte gPlayer
_08032EA8: .4byte gCamera
_08032EAC: .4byte gUnknown_03005040
_08032EB0: .4byte 0x03000094
_08032EB4: .4byte 0x03000080
_08032EB8: .4byte 0x030000A9
_08032EBC: .4byte 0x000002B5
_08032EC0: .4byte 0x0300002C
_08032EC4: .4byte 0x0300002D
_08032EC8: .4byte 0x0300002E
_08032ECC: .4byte 0x03000031
_08032ED0: .4byte 0x000002B6
_08032ED4: .4byte 0x03000064
_08032ED8: .4byte 0x03000066
_08032EDC: .4byte sub_8032F58
_08032EE0:
	ldrb r2, [r4, #8]
	lsls r2, r2, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r0, [r4, #0x78]
	asrs r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0x7c]
	asrs r0, r0, #8
	adds r1, r1, r0
	ldr r3, _08032F50 @ =gCamera
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0x18]
	mov r1, ip
	ldrh r0, [r1, #6]
	ldr r1, _08032F54 @ =0x0300000C
	adds r2, r0, r1
	adds r1, #0x38
	adds r0, r0, r1
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	mov r0, r8
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	mov r0, r8
	bl DisplaySprite
_08032F42:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032F50: .4byte gCamera
_08032F54: .4byte 0x0300000C

	thumb_func_start sub_8032F58
sub_8032F58: @ 0x08032F58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08033024 @ =gCurTask
	mov sl, r0
	ldr r1, [r0]
	mov ip, r1
	ldrh r3, [r1, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	ldr r2, _08033028 @ =0x0300000C
	adds r5, r3, r2
	ldr r7, _0803302C @ =0x03000044
	adds r4, r3, r7
	adds r0, #0x80
	adds r1, r3, r0
	ldr r0, [r6, #0x78]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r6, #0x78]
	ldr r1, _08033030 @ =0x03000084
	adds r2, r3, r1
	ldr r1, [r6, #0x7c]
	ldr r2, [r2]
	adds r1, r1, r2
	str r1, [r6, #0x7c]
	adds r7, #0x50
	adds r2, r3, r7
	asrs r0, r0, #8
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r2, _08033034 @ =0x03000096
	adds r0, r3, r2
	asrs r1, r1, #8
	ldrh r0, [r0]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp]
	adds r7, #0x15
	adds r7, r7, r3
	mov sb, r7
	ldrb r0, [r7]
	cmp r0, #4
	bhi _08033010
	mov r0, ip
	ldrh r1, [r0, #6]
	subs r2, #0x8a
	adds r1, r1, r2
	ldr r3, _08033038 @ =gCamera
	ldrh r2, [r3]
	mov r7, r8
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	strh r0, [r1, #0x16]
	ldrh r2, [r3, #2]
	ldr r3, [sp]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	strh r0, [r1, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	mov r7, sl
	ldr r0, [r7]
	ldrh r0, [r0, #6]
	ldr r1, _08033028 @ =0x0300000C
	adds r2, r0, r1
	ldr r3, _0803302C @ =0x03000044
	adds r0, r0, r3
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r4, #0
	bl DisplaySprite
_08033010:
	mov r7, sb
	ldrb r0, [r7]
	cmp r0, #5
	bls _0803301A
	b _080332EA
_0803301A:
	lsls r0, r0, #2
	ldr r1, _0803303C @ =_08033040
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08033024: .4byte gCurTask
_08033028: .4byte 0x0300000C
_0803302C: .4byte 0x03000044
_08033030: .4byte 0x03000084
_08033034: .4byte 0x03000096
_08033038: .4byte gCamera
_0803303C: .4byte _08033040
_08033040: @ jump table
	.4byte _08033058 @ case 0
	.4byte _08033108 @ case 1
	.4byte _08033142 @ case 2
	.4byte _080331A0 @ case 3
	.4byte _080331F6 @ case 4
	.4byte _0803328C @ case 5
_08033058:
	ldr r0, _08033090 @ =gPlayer
	ldr r2, [r0, #0x10]
	movs r1, #0xa
	ands r1, r2
	adds r3, r0, #0
	cmp r1, #0
	bne _080330B2
	movs r7, #0x80
	lsls r7, r7, #0xe
	adds r0, r2, #0
	ands r0, r7
	cmp r0, #0
	bne _080330B0
	strh r1, [r3, #8]
	strh r1, [r3, #0xa]
	strh r1, [r3, #0xc]
	orrs r2, r7
	str r2, [r3, #0x10]
	strh r1, [r3, #0x38]
	mov r0, r8
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r3]
	asrs r0, r0, #8
	cmp r1, r0
	ble _08033094
	movs r0, #0x10
	b _08033096
	.align 2, 0
_08033090: .4byte gPlayer
_08033094:
	movs r0, #0x20
_08033096:
	strh r0, [r3, #0x38]
	ldr r1, _080330AC @ =gCamera
	movs r0, #0
	strh r0, [r1, #4]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r7, [r1]
	adds r0, r0, r7
	strh r0, [r1, #0x1a]
	b _080330B2
	.align 2, 0
_080330AC: .4byte gCamera
_080330B0:
	strh r1, [r3, #0x38]
_080330B2:
	ldr r0, [r6, #0x7c]
	ldr r2, _08033104 @ =0xFFFFA600
	adds r1, r6, #0
	adds r1, #0x84
	cmp r0, r2
	bge _080330C4
	str r2, [r6, #0x7c]
	movs r0, #0
	str r0, [r1]
_080330C4:
	ldr r0, [r1]
	cmp r0, #0
	beq _080330CC
	b _080332EA
_080330CC:
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	ands r0, r1
	cmp r0, #0
	bne _080330DA
	b _080332EA
_080330DA:
	mov r0, r8
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r3]
	asrs r0, r0, #8
	cmp r1, r0
	ble _08033172
	adds r1, r6, #0
	adds r1, #0xa9
	ldrb r0, [r1]
	adds r0, #2
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #7
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	b _080332EA
	.align 2, 0
_08033104: .4byte 0xFFFFA600
_08033108:
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _08033116
	b _080332EA
_08033116:
	adds r1, r6, #0
	adds r1, #0xa9
	ldrb r0, [r1]
	adds r0, #1
	movs r2, #0
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x20
	strb r2, [r0]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #7
	strb r0, [r1]
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x10]
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0803318C
_08033142:
	ldr r1, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	bne _08033150
	b _080332EA
_08033150:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r1, r0
	cmp r1, #0
	beq _08033172
	adds r1, r6, #0
	adds r1, #0xa9
	ldrb r0, [r1]
	adds r0, #2
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #6
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	b _080331E8
_08033172:
	adds r1, r6, #0
	adds r1, #0xa9
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #9
	strb r0, [r1]
_0803318C:
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	b _080332EA
_080331A0:
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080331AE
	b _080332EA
_080331AE:
	adds r2, r6, #0
	adds r2, #0xa9
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #6
	strb r0, [r1]
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x10]
	orrs r0, r1
	str r0, [r4, #0x10]
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #1
	rsbs r0, r0, #0
_080331E8:
	strb r0, [r1]
	adds r1, r6, #0
	adds r1, #0x80
	movs r0, #0xa0
	lsls r0, r0, #2
	str r0, [r1]
	b _080332EA
_080331F6:
	ldr r5, _08033278 @ =gPlayer
	ldr r0, [r5]
	asrs r0, r0, #8
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r7, r1, #0x10
	adds r1, r7, #0
	subs r1, #0x60
	cmp r0, r1
	bge _0803320E
	movs r0, #0x10
	strh r0, [r5, #0x38]
_0803320E:
	ldr r0, [r5]
	asrs r0, r0, #8
	bl __floatsisf
	adds r4, r0, #0
	ldr r3, _0803327C @ =gCamera
	mov r8, r3
	movs r1, #0
	ldrsh r0, [r3, r1]
	bl __floatsisf
	ldr r2, _08033280 @ =0x43B40000
	mov sb, r2
	mov r1, sb
	bl __addsf3
	adds r1, r0, #0
	adds r0, r4, #0
	bl __gtsf2
	cmp r0, #0
	ble _08033244
	movs r0, #0
	strh r0, [r5, #8]
	strh r0, [r5, #0xa]
	strh r0, [r5, #0xc]
	strh r0, [r5, #0x38]
_08033244:
	mov r3, r8
	movs r1, #0
	ldrsh r0, [r3, r1]
	subs r0, r7, r0
	bl __floatsisf
	mov r1, sb
	bl __gtsf2
	cmp r0, #0
	ble _080332EA
	adds r1, r6, #0
	adds r1, #0xa9
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	subs r1, #0x11
	movs r0, #0xb4
	strh r0, [r1]
	ldr r0, _08033284 @ =gRingCount
	ldrh r0, [r0]
	ldr r1, _08033288 @ =gCourseTime
	ldr r1, [r1]
	bl sub_80573D4
	b _080332EA
	.align 2, 0
_08033278: .4byte gPlayer
_0803327C: .4byte gCamera
_08033280: .4byte 0x43B40000
_08033284: .4byte gRingCount
_08033288: .4byte gCourseTime
_0803328C:
	ldr r5, _080332FC @ =gPlayer
	ldr r1, [r5]
	asrs r1, r1, #8
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, #0x60
	cmp r1, r0
	bge _080332A2
	movs r0, #0x10
	strh r0, [r5, #0x38]
_080332A2:
	ldr r0, [r5]
	asrs r0, r0, #8
	bl __floatsisf
	adds r4, r0, #0
	ldr r0, _08033300 @ =gCamera
	movs r3, #0
	ldrsh r0, [r0, r3]
	bl __floatsisf
	ldr r1, _08033304 @ =0x43B40000
	bl __addsf3
	adds r1, r0, #0
	adds r0, r4, #0
	bl __gtsf2
	cmp r0, #0
	ble _080332D2
	movs r0, #0
	strh r0, [r5, #8]
	strh r0, [r5, #0xa]
	strh r0, [r5, #0xc]
	strh r0, [r5, #0x38]
_080332D2:
	adds r1, r6, #0
	adds r1, #0x98
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080332EA
	ldr r0, _08033308 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080332EA:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080332FC: .4byte gPlayer
_08033300: .4byte gCamera
_08033304: .4byte 0x43B40000
_08033308: .4byte gCurTask

	thumb_func_start sub_803330C
sub_803330C: @ 0x0803330C
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #8
	movs r4, #0xc0
	lsls r4, r4, #0x12
	ldr r0, _080333E8 @ =sub_8033480
	movs r2, #0x88
	lsls r2, r2, #6
	ldr r1, _080333EC @ =sub_8034224
	str r1, [sp]
	movs r1, #0x74
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	adds r4, r6, r4
	ldr r0, _080333F0 @ =0x03000060
	adds r1, r6, r0
	movs r3, #0
	movs r5, #0
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r1, _080333F4 @ =0x03000062
	adds r0, r6, r1
	strh r5, [r0]
	strh r5, [r4, #0x16]
	strh r5, [r4, #0x18]
	movs r0, #6
	str r3, [sp, #4]
	bl VramMalloc
	str r0, [r4, #4]
	movs r2, #0xa8
	lsls r2, r2, #3
	mov sl, r2
	mov r0, sl
	strh r0, [r4, #0x1a]
	strh r5, [r4, #8]
	ldr r2, _080333F8 @ =0x00000297
	strh r2, [r4, #0xa]
	ldr r1, _080333FC @ =0x03000020
	adds r0, r6, r1
	ldr r3, [sp, #4]
	strb r3, [r0]
	strh r5, [r4, #0x14]
	strh r5, [r4, #0x1c]
	ldr r0, _08033400 @ =0x03000021
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08033404 @ =0x03000022
	adds r0, r6, r1
	movs r1, #0x10
	mov sb, r1
	mov r1, sb
	strb r1, [r0]
	ldr r1, _08033408 @ =0x03000025
	adds r0, r6, r1
	strb r3, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	str r0, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	ldr r4, _0803340C @ =0x03000030
	adds r1, r6, r4
	strh r5, [r1, #0x16]
	strh r5, [r1, #0x18]
	str r0, [r1, #4]
	mov r0, sl
	strh r0, [r1, #0x1a]
	strh r5, [r1, #8]
	strh r2, [r1, #0xa]
	ldr r2, _08033410 @ =0x03000050
	adds r0, r6, r2
	strb r3, [r0]
	strh r5, [r1, #0x14]
	strh r5, [r1, #0x1c]
	adds r4, #0x21
	adds r2, r6, r4
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r2]
	ldr r2, _08033414 @ =0x03000052
	adds r0, r6, r2
	mov r4, sb
	strb r4, [r0]
	ldr r0, _08033418 @ =0x03000055
	adds r6, r6, r0
	strb r3, [r6]
	mov r2, r8
	str r2, [r1, #0x28]
	movs r0, #0xc2
	lsls r0, r0, #0xc
	str r0, [r1, #0x10]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080333E8: .4byte sub_8033480
_080333EC: .4byte sub_8034224
_080333F0: .4byte 0x03000060
_080333F4: .4byte 0x03000062
_080333F8: .4byte 0x00000297
_080333FC: .4byte 0x03000020
_08033400: .4byte 0x03000021
_08033404: .4byte 0x03000022
_08033408: .4byte 0x03000025
_0803340C: .4byte 0x03000030
_08033410: .4byte 0x03000050
_08033414: .4byte 0x03000052
_08033418: .4byte 0x03000055

	thumb_func_start sub_803341C
sub_803341C: @ 0x0803341C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08033478 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	mov r8, r1
	movs r1, #0xc0
	lsls r1, r1, #0x12
	mov r2, r8
	adds r4, r2, r1
	ldrh r0, [r0]
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	adds r1, #0xc
	adds r7, r0, r1
	ldrh r5, [r7, #0x16]
	ldrh r6, [r7, #0x18]
	strh r5, [r4, #0x16]
	strh r6, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r7, _0803347C @ =0x03000030
	add r7, r8
	strh r5, [r7, #0x16]
	strh r6, [r7, #0x18]
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033478: .4byte gCurTask
_0803347C: .4byte 0x03000030

	thumb_func_start sub_8033480
sub_8033480: @ 0x08033480
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080334B4 @ =gCurTask
	ldr r2, [r0]
	ldrh r4, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r3, r4, r1
	ldrh r0, [r2]
	adds r0, r0, r1
	ldrh r5, [r0, #6]
	ldr r0, _080334B8 @ =0x03000030
	adds r6, r4, r0
	adds r1, #0x9a
	adds r1, r1, r5
	mov r8, r1
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #7
	ble _080334BC
	adds r0, r2, #0
	bl TaskDestroy
	b _080335B4
	.align 2, 0
_080334B4: .4byte gCurTask
_080334B8: .4byte 0x03000030
_080334BC:
	ldr r1, _08033538 @ =0x030000A8
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080335B4
	ldr r0, _0803353C @ =0x03000060
	adds r7, r4, r0
	ldrh r0, [r7]
	mov ip, r0
	cmp r0, #0
	beq _0803355E
	subs r0, #1
	strh r0, [r7]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080335B4
	ldr r0, [r3, #0x10]
	ldr r1, _08033540 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r0, [r6, #0x10]
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r1, _08033544 @ =0x0300002C
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #2
	beq _08033508
	cmp r0, #3
	bne _08033558
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r0, [r6, #0x10]
	orrs r0, r1
	str r0, [r6, #0x10]
_08033508:
	ldr r0, _08033548 @ =0x03000021
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0803354C @ =0x03000051
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _08033550 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r0, [r6, #0x10]
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r3, _08033554 @ =0x03000062
	adds r1, r4, r3
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	bl sub_80335C0
	b _080335B4
	.align 2, 0
_08033538: .4byte 0x030000A8
_0803353C: .4byte 0x03000060
_08033540: .4byte 0xFFFFF7FF
_08033544: .4byte 0x0300002C
_08033548: .4byte 0x03000021
_0803354C: .4byte 0x03000051
_08033550: .4byte 0xFFFFBFFF
_08033554: .4byte 0x03000062
_08033558:
	movs r0, #1
	strh r0, [r7]
	b _080335B4
_0803355E:
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0803357A
	ldr r1, _0803358C @ =0x0300002C
	adds r0, r5, r1
	ldrb r0, [r0]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080335B0
_0803357A:
	ldr r3, _08033590 @ =0x03000062
	adds r2, r4, r3
	ldrh r0, [r2]
	cmp r0, #3
	beq _08033594
	movs r0, #0x3c
	strh r0, [r7]
	b _080335B4
	.align 2, 0
_0803358C: .4byte 0x0300002C
_08033590: .4byte 0x03000062
_08033594:
	ldr r0, _080335AC @ =gUnknown_084ACEF6
	mov r3, r8
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r7]
	mov r0, ip
	strh r0, [r2]
	b _080335B4
	.align 2, 0
_080335AC: .4byte gUnknown_084ACEF6
_080335B0:
	bl sub_803341C
_080335B4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80335C0
sub_80335C0: @ 0x080335C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08033700 @ =gCurTask
	mov r8, r0
	movs r4, #0xc0
	lsls r4, r4, #0x12
	ldr r0, _08033704 @ =sub_8033730
	movs r2, #0x8c
	lsls r2, r2, #6
	ldr r1, _08033708 @ =sub_8034224
	str r1, [sp]
	movs r1, #0x74
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	adds r5, r6, r4
	mov r1, r8
	ldr r0, [r1]
	ldrh r0, [r0]
	adds r0, r0, r4
	ldrh r2, [r0, #6]
	adds r4, r2, r4
	ldr r3, [r4]
	ldrb r1, [r4, #8]
	lsls r1, r1, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r7, _0803370C @ =0x03000070
	adds r7, r7, r6
	mov sb, r7
	movs r0, #0
	mov sl, r0
	movs r7, #0
	mov r8, r7
	mov r0, sb
	strh r1, [r0]
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _08033710 @ =0x03000072
	adds r4, r6, r3
	strh r1, [r4]
	ldr r7, _08033714 @ =0x03000090
	adds r0, r2, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, #0x10
	lsls r0, r0, #8
	str r0, [r5, #0x64]
	adds r3, #0x20
	adds r2, r2, r3
	movs r7, #0
	ldrsh r2, [r2, r7]
	lsls r2, r2, #8
	str r2, [r5, #0x68]
	ldr r1, _08033718 @ =gPlayer
	ldr r3, [r1]
	asrs r3, r3, #8
	mov ip, r3
	asrs r0, r0, #8
	mov r3, sb
	ldrh r3, [r3]
	adds r0, r0, r3
	mov r7, ip
	subs r3, r7, r0
	ldr r1, [r1, #4]
	asrs r1, r1, #8
	asrs r2, r2, #8
	ldrh r4, [r4]
	adds r2, r2, r4
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	lsrs r1, r1, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	lsls r3, r3, #0x10
	asrs r1, r3, #0x10
	lsrs r3, r3, #0x1f
	adds r1, r1, r3
	asrs r1, r1, #1
	bl sa2__sub_8004418
	ldr r3, _0803371C @ =gSineTable
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r0, r2
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r4, _08033720 @ =0x0300006C
	adds r2, r6, r4
	strh r1, [r2]
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r7, _08033724 @ =0x0300006E
	adds r1, r6, r7
	strh r0, [r1]
	mov r0, r8
	strh r0, [r5, #0x16]
	strh r0, [r5, #0x18]
	movs r0, #4
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x1a]
	mov r1, r8
	strh r1, [r5, #8]
	movs r0, #0xa6
	lsls r0, r0, #2
	strh r0, [r5, #0xa]
	ldr r2, _08033728 @ =0x03000020
	adds r0, r6, r2
	mov r3, sl
	strb r3, [r0]
	strh r1, [r5, #0x14]
	strh r1, [r5, #0x1c]
	subs r4, #0x4b
	adds r1, r6, r4
	movs r0, #0xff
	strb r0, [r1]
	subs r7, #0x4c
	adds r1, r6, r7
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _0803372C @ =0x03000025
	adds r6, r6, r0
	strb r3, [r6]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033700: .4byte gCurTask
_08033704: .4byte sub_8033730
_08033708: .4byte sub_8034224
_0803370C: .4byte 0x03000070
_08033710: .4byte 0x03000072
_08033714: .4byte 0x03000090
_08033718: .4byte gPlayer
_0803371C: .4byte gSineTable
_08033720: .4byte 0x0300006C
_08033724: .4byte 0x0300006E
_08033728: .4byte 0x03000020
_0803372C: .4byte 0x03000025

	thumb_func_start sub_8033730
sub_8033730: @ 0x08033730
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080337C0 @ =gCurTask
	ldr r5, [r0]
	ldrh r3, [r5, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	ldrh r0, [r5]
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	adds r6, r0, r1
	adds r4, r3, #0
	orrs r4, r1
	ldr r0, _080337C4 @ =0x0300006C
	adds r0, r0, r3
	mov r8, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, [r4, #0x64]
	adds r1, r1, r0
	str r1, [r4, #0x64]
	ldr r2, _080337C8 @ =0x0300006E
	adds r0, r3, r2
	movs r7, #0
	ldrsh r2, [r0, r7]
	ldr r0, [r4, #0x68]
	adds r0, r0, r2
	str r0, [r4, #0x68]
	ldr r7, _080337CC @ =0x03000070
	adds r2, r3, r7
	asrs r1, r1, #8
	ldrh r2, [r2]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	ldr r2, _080337D0 @ =0x03000072
	adds r3, r3, r2
	asrs r0, r0, #8
	ldrh r3, [r3]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	ldr r3, _080337D4 @ =gCamera
	ldrh r2, [r3]
	lsrs r7, r1, #0x10
	mov ip, r7
	asrs r1, r1, #0x10
	subs r2, r1, r2
	strh r2, [r4, #0x16]
	ldrh r1, [r3, #2]
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	adds r0, #0x20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xd0
	bls _080337EC
	mov r1, r8
	movs r7, #0
	ldrsh r0, [r1, r7]
	cmp r0, #0
	blt _080337D8
	lsls r1, r2, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _080337EC
	b _080337E4
	.align 2, 0
_080337C0: .4byte gCurTask
_080337C4: .4byte 0x0300006C
_080337C8: .4byte 0x0300006E
_080337CC: .4byte 0x03000070
_080337D0: .4byte 0x03000072
_080337D4: .4byte gCamera
_080337D8:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x20
	rsbs r1, r1, #0
	cmp r0, r1
	bge _080337EC
_080337E4:
	adds r0, r5, #0
	bl TaskDestroy
	b _0803386C
_080337EC:
	adds r0, r6, #0
	adds r0, #0x9a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	bgt _08033844
	mov r0, ip
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_800B798
	cmp r0, #0
	beq _08033860
	ldrh r3, [r6, #0x16]
	ldr r0, _08033840 @ =0x00000296
	cmp r3, r0
	bne _08033860
	adds r2, r6, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	cmp r0, #2
	bne _08033828
	adds r1, r6, #0
	adds r1, #0x64
	movs r0, #1
	strb r0, [r1]
_08033828:
	ldrh r0, [r6, #0x16]
	cmp r0, r3
	bne _08033860
	ldrb r0, [r2]
	cmp r0, #3
	bne _08033860
	adds r1, r6, #0
	adds r1, #0x64
	movs r0, #4
	strb r0, [r1]
	b _08033860
	.align 2, 0
_08033840: .4byte 0x00000296
_08033844:
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r0, r0, #8
	lsls r1, r3, #0x10
	asrs r1, r1, #8
	bl sub_8017540
	ldr r0, _0803385C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0803386C
	.align 2, 0
_0803385C: .4byte gCurTask
_08033860:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0803386C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8033878
sub_8033878: @ 0x08033878
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	ldr r0, _08033904 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r5, r5, r4
	ldr r0, _08033908 @ =sub_8033924
	movs r1, #0x80
	lsls r1, r1, #6
	mov sb, r1
	ldr r1, _0803390C @ =sub_8034238
	str r1, [sp]
	movs r1, #0x60
	mov r2, sb
	movs r3, #0
	bl TaskCreate
	str r0, [r5, #0x74]
	ldrh r5, [r0, #6]
	adds r4, r5, r4
	movs r0, #0
	mov r8, r0
	movs r6, #0
	strh r6, [r4, #0x16]
	strh r6, [r4, #0x18]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0xb8
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	strh r6, [r4, #8]
	ldr r0, _08033910 @ =0x00000293
	strh r0, [r4, #0xa]
	ldr r1, _08033914 @ =0x03000020
	adds r0, r5, r1
	mov r1, r8
	strb r1, [r0]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	ldr r0, _08033918 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0803391C @ =0x03000022
	adds r1, r5, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08033920 @ =0x03000025
	adds r5, r5, r1
	mov r0, r8
	strb r0, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	mov r1, sb
	str r1, [r4, #0x10]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08033904: .4byte gCurTask
_08033908: .4byte sub_8033924
_0803390C: .4byte sub_8034238
_08033910: .4byte 0x00000293
_08033914: .4byte 0x03000020
_08033918: .4byte 0x03000021
_0803391C: .4byte 0x03000022
_08033920: .4byte 0x03000025

	thumb_func_start sub_8033924
sub_8033924: @ 0x08033924
	push {r4, r5, lr}
	sub sp, #4
	ldr r5, _08033998 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r0, r4
	ldr r2, _0803399C @ =0x03000054
	adds r1, r0, r2
	movs r3, #0
	strb r3, [r1]
	adds r2, #3
	adds r1, r0, r2
	strb r3, [r1]
	subs r2, #2
	adds r1, r0, r2
	strb r3, [r1]
	adds r2, #1
	adds r1, r0, r2
	strb r3, [r1]
	ldr r1, _080339A0 @ =0x03000058
	adds r0, r0, r1
	strb r3, [r0]
	ldr r2, _080339A4 @ =gUnknown_03005860
	ldr r1, _080339A8 @ =gPlayer
	ldr r0, [r1]
	str r0, [r2]
	ldr r0, [r1, #4]
	str r0, [r2, #4]
	ldrh r0, [r1, #8]
	strh r0, [r2, #8]
	ldrh r0, [r1, #0xa]
	strh r0, [r2, #0xa]
	ldr r0, [r1, #0x10]
	str r0, [r2, #0xc]
	mov r0, sp
	strh r3, [r0]
	ldr r1, _080339AC @ =0x040000D4
	str r0, [r1]
	ldr r0, _080339B0 @ =gUnknown_03005870
	str r0, [r1, #4]
	ldr r0, _080339B4 @ =0x81000009
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r1, [r5]
	ldr r0, _080339B8 @ =sub_8033AA0
	str r0, [r1, #8]
	adds r0, r4, #0
	bl sub_80339BC
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08033998: .4byte gCurTask
_0803399C: .4byte 0x03000054
_080339A0: .4byte 0x03000058
_080339A4: .4byte gUnknown_03005860
_080339A8: .4byte gPlayer
_080339AC: .4byte 0x040000D4
_080339B0: .4byte gUnknown_03005870
_080339B4: .4byte 0x81000009
_080339B8: .4byte sub_8033AA0

	thumb_func_start sub_80339BC
sub_80339BC: @ 0x080339BC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov r8, r0
	ldr r0, _08033A84 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	adds r5, r0, r1
	ldr r0, [r5]
	mov sb, r0
	mov r4, r8
	movs r6, #0
	movs r7, #0
_080339E2:
	ldr r1, _08033A88 @ =0x00002001
	adds r2, r6, r1
	str r7, [sp]
	ldr r0, _08033A8C @ =sub_8034098
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	lsls r2, r6, #2
	mov r1, r8
	adds r1, #0x30
	adds r1, r1, r2
	str r0, [r1]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r3, r0
	ldrb r1, [r5, #8]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #0x30]
	mov r0, sb
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #0x32]
	lsls r0, r6, #0xd
	ldr r1, _08033A90 @ =0xFFFF9000
	adds r0, r0, r1
	str r0, [r2, #0x38]
	str r7, [r2, #0x3c]
	str r7, [r2, #0x40]
	str r7, [r2, #0x44]
	ldr r1, _08033A94 @ =0x03000048
	adds r0, r3, r1
	strh r7, [r0]
	adds r1, #0xa
	adds r0, r3, r1
	strb r6, [r0]
	ldr r0, [r4, #0x28]
	str r0, [r2, #0x28]
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r1, [r0]
	ldr r2, _08033A98 @ =0x0300002C
	adds r0, r3, r2
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x2d
	ldrb r1, [r0]
	adds r2, #1
	adds r0, r3, r2
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r1, [r0]
	adds r2, #1
	adds r0, r3, r2
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	ldr r1, _08033A9C @ =0x0300002F
	adds r3, r3, r1
	strb r0, [r3]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #8
	bls _080339E2
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033A84: .4byte gCurTask
_08033A88: .4byte 0x00002001
_08033A8C: .4byte sub_8034098
_08033A90: .4byte 0xFFFF9000
_08033A94: .4byte 0x03000048
_08033A98: .4byte 0x0300002C
_08033A9C: .4byte 0x0300002F

	thumb_func_start sub_8033AA0
sub_8033AA0: @ 0x08033AA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r0, #0
	mov sb, r0
	ldr r0, _08033B48 @ =gCurTask
	ldr r3, [r0]
	ldrh r2, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r2
	mov sl, r0
	movs r1, #0
	str r1, [sp]
	ldr r1, _08033B4C @ =0x040000D4
	ldr r0, _08033B50 @ =gUnknown_03005870
	str r0, [r1]
	ldr r0, _08033B54 @ =gUnknown_03005890
	str r0, [r1, #4]
	ldr r0, _08033B58 @ =0x80000009
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r4, _08033B5C @ =0x0300005E
	adds r1, r2, r4
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldr r5, _08033B60 @ =0x03000058
	adds r0, r2, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne _08033B7C
	movs r5, #0
	ldr r7, _08033B64 @ =0x03000030
	adds r6, r2, r7
	ldr r0, _08033B68 @ =0x03000054
	adds r0, r0, r2
	mov r8, r0
	ldr r7, _08033B6C @ =gCamera
_08033AF4:
	lsls r0, r5, #2
	adds r0, r6, r0
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r1, [r4, #0x38]
	asrs r1, r1, #8
	ldrh r2, [r4, #0x30]
	adds r1, r1, r2
	ldr r3, [r4, #0x3c]
	asrs r3, r3, #8
	ldrh r0, [r4, #0x32]
	adds r3, r3, r0
	ldr r2, _08033B50 @ =gUnknown_03005870
	lsls r0, r5, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r2, r2, r3
	ldrh r0, [r7]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r1, r0
	strh r0, [r4, #0x16]
	ldrh r0, [r7, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	ldr r3, _08033B70 @ =gPlayer
	bl sub_800B2BC
	cmp r0, #0
	bne _08033B74
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #8
	bls _08033AF4
	b _08033B94
	.align 2, 0
_08033B48: .4byte gCurTask
_08033B4C: .4byte 0x040000D4
_08033B50: .4byte gUnknown_03005870
_08033B54: .4byte gUnknown_03005890
_08033B58: .4byte 0x80000009
_08033B5C: .4byte 0x0300005E
_08033B60: .4byte 0x03000058
_08033B64: .4byte 0x03000030
_08033B68: .4byte 0x03000054
_08033B6C: .4byte gCamera
_08033B70: .4byte gPlayer
_08033B74:
	movs r1, #0xff
	str r1, [sp]
	mov sb, r5
	b _08033B94
_08033B7C:
	ldr r0, _08033BB4 @ =gPlayer
	ldr r0, [r0, #0x10]
	movs r1, #0xa
	ands r0, r1
	ldr r4, _08033BB8 @ =0x03000054
	adds r4, r4, r2
	mov r8, r4
	cmp r0, #0
	bne _08033B94
	adds r0, r3, #0
	bl TaskDestroy
_08033B94:
	ldr r5, [sp]
	cmp r5, #0
	bne _08033B9C
	b _08033E30
_08033B9C:
	mov r0, sl
	adds r0, #0x56
	mov r6, sb
	strb r6, [r0]
	mov r7, sb
	cmp r7, #0
	beq _08033BAE
	cmp r7, #8
	bne _08033BBC
_08033BAE:
	movs r6, #8
	b _08033BBE
	.align 2, 0
_08033BB4: .4byte gPlayer
_08033BB8: .4byte 0x03000054
_08033BBC:
	movs r6, #0x10
_08033BBE:
	ldr r1, _08033C38 @ =gUnknown_03005860
	ldr r0, [r1, #0xc]
	movs r2, #2
	ands r0, r2
	cmp r0, #0
	beq _08033C58
	adds r0, r1, #0
	movs r3, #0xa
	ldrsh r1, [r0, r3]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	ble _08033C58
	mov r4, r8
	strb r2, [r4]
	mov r0, sl
	adds r0, #0x55
	mov r5, sb
	strb r5, [r0]
	mov r1, sl
	adds r1, #0x57
	movs r0, #0xff
	strb r0, [r1]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	beq _08033BF8
	lsls r0, r0, #0x11
	lsrs r6, r0, #0x10
_08033BF8:
	mov r0, sl
	adds r0, #0x5a
	strh r6, [r0]
	movs r5, #0
	ldr r7, _08033C3C @ =gUnknown_03005890
	mov r8, r7
	mov r0, sb
	lsls r0, r0, #1
	str r0, [sp, #4]
	ldr r3, _08033C40 @ =gUnknown_03005870
	lsls r0, r6, #0x10
	asrs r4, r0, #0x10
_08033C10:
	cmp r5, sb
	bne _08033C44
	ldr r2, _08033C38 @ =gUnknown_03005860
	ldrh r1, [r2, #0xa]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	mov r0, sl
	adds r0, #0x5c
	strh r1, [r0]
	lsls r0, r5, #1
	adds r2, r0, r3
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r4
	ble _08033C4C
	strh r6, [r2]
	b _08033C4C
	.align 2, 0
_08033C38: .4byte gUnknown_03005860
_08033C3C: .4byte gUnknown_03005890
_08033C40: .4byte gUnknown_03005870
_08033C44:
	lsls r0, r5, #1
	adds r0, r0, r3
	movs r1, #0
	strh r1, [r0]
_08033C4C:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #8
	bls _08033C10
	b _08033DFC
_08033C58:
	mov r3, r8
	ldrb r0, [r3]
	cmp r0, #2
	bne _08033D2C
	ldr r2, _08033D24 @ =gUnknown_03005870
	mov r4, sb
	lsls r3, r4, #1
	adds r6, r3, r2
	mov r5, sl
	adds r5, #0x5c
	ldrh r0, [r5]
	ldrh r7, [r6]
	adds r0, r0, r7
	strh r0, [r6]
	mov r4, sl
	adds r4, #0x5a
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r4]
	mov ip, r1
	movs r7, #0
	ldrsh r1, [r4, r7]
	str r3, [sp, #4]
	cmp r0, r1
	blt _08033C9E
	mov r0, ip
	strh r0, [r6]
	ldrh r0, [r5]
	movs r1, #1
	subs r1, r1, r0
	strh r1, [r5]
	mov r1, sl
	adds r1, #0x57
	movs r0, #0
	strb r0, [r1]
_08033C9E:
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	lsrs r2, r1, #0x1f
	adds r1, r1, r2
	asrs r1, r1, #1
	cmn r0, r1
	bgt _08033CBA
	rsbs r0, r1, #0
	strh r0, [r6]
	movs r0, #1
	mov r3, r8
	strb r0, [r3]
_08033CBA:
	movs r5, #0
	ldr r4, _08033D28 @ =gUnknown_03005890
	mov r8, r4
	ldr r7, _08033D24 @ =gUnknown_03005870
	adds r4, r6, #0
_08033CC4:
	cmp r5, sb
	beq _08033CFA
	mov r6, sb
	subs r0, r6, r5
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _08033CDC
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_08033CDC:
	lsls r0, r1, #0x18
	asrs r1, r0, #0x18
	cmp r1, #2
	bgt _08033CFA
	movs r2, #0
	ldrsh r0, [r4, r2]
	muls r0, r1, r0
	movs r1, #3
	bl __divsi3
	ldrh r1, [r4]
	subs r1, r1, r0
	lsls r0, r5, #1
	adds r0, r0, r7
	strh r1, [r0]
_08033CFA:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #8
	bls _08033CC4
	ldr r3, _08033D24 @ =gUnknown_03005870
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r0, #8
	ble _08033D12
	movs r0, #8
	strh r0, [r3]
_08033D12:
	ldr r5, _08033D24 @ =gUnknown_03005870
	movs r6, #0x10
	ldrsh r0, [r5, r6]
	cmp r0, #8
	ble _08033DFC
	movs r0, #8
	strh r0, [r5, #0x10]
	b _08033DFC
	.align 2, 0
_08033D24: .4byte gUnknown_03005870
_08033D28: .4byte gUnknown_03005890
_08033D2C:
	movs r0, #1
	mov r7, r8
	strb r0, [r7]
	ldr r1, _08033D4C @ =gUnknown_03005870
	mov r0, sb
	lsls r2, r0, #1
	adds r4, r2, r1
	ldrh r3, [r4]
	movs r5, #0
	ldrsh r0, [r4, r5]
	str r2, [sp, #4]
	cmp r0, #0
	bge _08033D50
	adds r0, r3, #2
	b _08033D52
	.align 2, 0
_08033D4C: .4byte gUnknown_03005870
_08033D50:
	adds r0, r3, #1
_08033D52:
	strh r0, [r4]
	ldr r7, [sp, #4]
	ldr r0, _08033E24 @ =gUnknown_03005870
	adds r2, r7, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _08033D68
	strh r6, [r2]
_08033D68:
	movs r5, #0
	ldr r4, _08033E28 @ =gUnknown_03005890
	mov r8, r4
	ldr r6, _08033E24 @ =gUnknown_03005870
	adds r4, r2, #0
_08033D72:
	cmp r5, sb
	beq _08033DD6
	mov r7, sb
	subs r1, r7, r5
	lsls r1, r1, #0x18
	lsls r0, r7, #0x18
	lsrs r2, r0, #0x18
	lsrs r3, r1, #0x18
	asrs r0, r1, #0x18
	cmp r0, #0
	bge _08033D96
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r0, #8
	subs r0, r0, r7
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_08033D96:
	lsls r1, r2, #0x18
	movs r0, #0
	ldrsh r2, [r4, r0]
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	muls r0, r2, r0
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r1, r1, r2
	asrs r1, r1, #0x18
	bl __divsi3
	ldrh r1, [r4]
	subs r1, r1, r0
	lsls r0, r5, #1
	adds r2, r0, r6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r3, [r2]
	movs r7, #0
	ldrsh r0, [r2, r7]
	cmp r1, r0
	ble _08033DC8
	adds r0, r3, #1
	strh r0, [r2]
_08033DC8:
	ldrh r3, [r2]
	movs r7, #0
	ldrsh r0, [r2, r7]
	cmp r1, r0
	bge _08033DD6
	subs r0, r3, #1
	strh r0, [r2]
_08033DD6:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #8
	bls _08033D72
	ldr r1, _08033E24 @ =gUnknown_03005870
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #8
	ble _08033DEE
	movs r0, #8
	strh r0, [r1]
_08033DEE:
	ldr r3, _08033E24 @ =gUnknown_03005870
	movs r4, #0x10
	ldrsh r0, [r3, r4]
	cmp r0, #8
	ble _08033DFC
	movs r0, #8
	strh r0, [r3, #0x10]
_08033DFC:
	ldr r5, _08033E2C @ =gPlayer
	ldr r2, [r5, #4]
	movs r6, #0x80
	lsls r6, r6, #1
	adds r2, r2, r6
	ldr r7, [sp, #4]
	ldr r1, _08033E24 @ =gUnknown_03005870
	adds r0, r7, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r1, r7, #0
	add r1, r8
	movs r4, #0
	ldrsh r1, [r1, r4]
	subs r0, r0, r1
	lsls r0, r0, #8
	adds r2, r2, r0
	str r2, [r5, #4]
	b _08033FFA
	.align 2, 0
_08033E24: .4byte gUnknown_03005870
_08033E28: .4byte gUnknown_03005890
_08033E2C: .4byte gPlayer
_08033E30:
	mov r5, r8
	ldrb r0, [r5]
	cmp r0, #2
	bne _08033F1C
	ldr r2, _08033F18 @ =gUnknown_03005870
	mov r7, sl
	adds r7, #0x55
	ldrb r1, [r7]
	lsls r1, r1, #1
	adds r1, r1, r2
	mov r5, sl
	adds r5, #0x5c
	ldrh r0, [r5]
	ldrh r6, [r1]
	adds r0, r0, r6
	movs r3, #0
	mov sb, r3
	strh r0, [r1]
	ldrb r0, [r7]
	lsls r0, r0, #1
	adds r4, r0, r2
	mov r3, sl
	adds r3, #0x5a
	movs r6, #0
	ldrsh r1, [r4, r6]
	ldrh r0, [r3]
	mov ip, r0
	movs r6, #0
	ldrsh r0, [r3, r6]
	adds r2, r7, #0
	cmp r1, r0
	blt _08033E84
	mov r0, ip
	strh r0, [r4]
	ldrh r1, [r5]
	movs r0, #1
	subs r0, r0, r1
	strh r0, [r5]
	mov r0, sl
	adds r0, #0x57
	mov r1, sb
	strb r1, [r0]
_08033E84:
	ldrb r0, [r2]
	lsls r0, r0, #1
	ldr r2, _08033F18 @ =gUnknown_03005870
	adds r4, r0, r2
	movs r6, #0
	ldrsh r2, [r4, r6]
	movs r1, #0
	ldrsh r0, [r3, r1]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	cmn r2, r0
	bgt _08033EAE
	rsbs r0, r0, #0
	strh r0, [r4]
	mov r2, sp
	ldrh r2, [r2]
	strh r2, [r5]
	mov r4, sb
	mov r3, r8
	strb r4, [r3]
_08033EAE:
	movs r5, #0
	adds r6, r7, #0
	ldr r7, _08033F18 @ =gUnknown_03005870
_08033EB4:
	ldrb r0, [r6]
	cmp r5, r0
	beq _08033EF0
	subs r0, r0, r5
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _08033ECC
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_08033ECC:
	lsls r0, r1, #0x18
	asrs r1, r0, #0x18
	cmp r1, #2
	bgt _08033EF0
	ldrb r4, [r6]
	lsls r4, r4, #1
	adds r4, r4, r7
	movs r2, #0
	ldrsh r0, [r4, r2]
	muls r0, r1, r0
	movs r1, #3
	bl __divsi3
	ldrh r1, [r4]
	subs r1, r1, r0
	lsls r0, r5, #1
	adds r0, r0, r7
	strh r1, [r0]
_08033EF0:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #8
	bls _08033EB4
	ldr r3, _08033F18 @ =gUnknown_03005870
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r0, #8
	ble _08033F08
	movs r0, #8
	strh r0, [r3]
_08033F08:
	ldr r5, _08033F18 @ =gUnknown_03005870
	movs r6, #0x10
	ldrsh r0, [r5, r6]
	cmp r0, #8
	ble _08033FFA
	movs r0, #8
	strh r0, [r5, #0x10]
	b _08033FFA
	.align 2, 0
_08033F18: .4byte gUnknown_03005870
_08033F1C:
	mov r7, sp
	ldrb r0, [r7]
	mov r7, r8
	strb r0, [r7]
	ldr r1, _08034084 @ =gUnknown_03005870
	mov r2, sl
	adds r2, #0x56
	ldrb r0, [r2]
	lsls r0, r0, #1
	adds r3, r0, r1
	ldrh r4, [r3]
	movs r5, #0
	ldrsh r0, [r3, r5]
	adds r7, r2, #0
	cmp r0, #0
	ble _08033F40
	subs r0, r4, #1
	strh r0, [r3]
_08033F40:
	ldrb r0, [r7]
	lsls r0, r0, #1
	ldr r6, _08034084 @ =gUnknown_03005870
	adds r1, r0, r6
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _08033F6A
	adds r0, r2, #2
	strh r0, [r1]
	ldrb r0, [r7]
	lsls r0, r0, #1
	adds r1, r0, r6
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	ble _08033F6A
	mov r5, sp
	ldrh r5, [r5]
	strh r5, [r1]
_08033F6A:
	movs r5, #0
_08033F6C:
	ldrb r0, [r7]
	cmp r5, r0
	beq _08033FF0
	subs r0, r0, r5
	lsls r0, r0, #0x18
	ldrb r1, [r7]
	adds r4, r1, #0
	lsrs r3, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _08033F90
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r0, #8
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_08033F90:
	lsls r1, r1, #0x18
	ldr r6, _08034084 @ =gUnknown_03005870
	lsls r4, r4, #1
	adds r4, r4, r6
	movs r0, #0
	ldrsh r2, [r4, r0]
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	muls r0, r2, r0
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r1, r1, r2
	asrs r1, r1, #0x18
	bl __divsi3
	ldrh r1, [r4]
	subs r1, r1, r0
	lsls r0, r5, #1
	adds r2, r0, r6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r3, [r2]
	movs r4, #0
	ldrsh r0, [r2, r4]
	cmp r1, r0
	ble _08033FC8
	adds r0, r3, #1
	strh r0, [r2]
_08033FC8:
	ldrh r3, [r2]
	movs r4, #0
	ldrsh r0, [r2, r4]
	cmp r1, r0
	bge _08033FD6
	subs r0, r3, #1
	strh r0, [r2]
_08033FD6:
	movs r1, #0
	ldrsh r0, [r6, r1]
	cmp r0, #8
	ble _08033FE2
	movs r0, #8
	strh r0, [r6]
_08033FE2:
	ldr r2, _08034084 @ =gUnknown_03005870
	movs r3, #0x10
	ldrsh r0, [r2, r3]
	cmp r0, #8
	ble _08033FF0
	movs r0, #8
	strh r0, [r2, #0x10]
_08033FF0:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #8
	bls _08033F6C
_08033FFA:
	ldr r4, _08034088 @ =gPlayer
	ldr r0, [r4]
	ldr r5, _0803408C @ =gUnknown_03005860
	str r0, [r5]
	ldr r0, [r4, #4]
	str r0, [r5, #4]
	ldrh r0, [r4, #8]
	strh r0, [r5, #8]
	ldrh r0, [r4, #0xa]
	strh r0, [r5, #0xa]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0xc]
	ldr r6, _08034090 @ =gUnknown_03005088
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #2
	bne _08034072
	mov r0, sl
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0
	bne _08034072
	movs r5, #0
	mov r6, sl
	adds r6, #0x30
_0803402C:
	lsls r0, r5, #2
	adds r0, r6, r0
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r7, #0xc0
	lsls r7, r7, #0x12
	adds r4, r0, r7
	ldr r1, [r4, #0x38]
	asrs r1, r1, #8
	ldrh r0, [r4, #0x30]
	adds r1, r1, r0
	ldr r3, [r4, #0x3c]
	asrs r3, r3, #8
	ldrh r2, [r4, #0x32]
	adds r3, r3, r2
	ldr r2, _08034084 @ =gUnknown_03005870
	lsls r0, r5, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r2, r2, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	ldr r3, _08034094 @ =gUnknown_03005AB0
	bl sub_800B2BC
	cmp r0, #0
	bne _08034072
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #8
	bls _0803402C
_08034072:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034084: .4byte gUnknown_03005870
_08034088: .4byte gPlayer
_0803408C: .4byte gUnknown_03005860
_08034090: .4byte gUnknown_03005088
_08034094: .4byte gUnknown_03005AB0

	thumb_func_start sub_8034098
sub_8034098: @ 0x08034098
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08034108 @ =gCurTask
	ldr r5, [r0]
	ldrh r3, [r5, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r2, r3, r1
	ldrh r0, [r5]
	adds r0, r0, r1
	ldrh r4, [r0, #6]
	adds r6, r4, r1
	ldr r0, [r6, #0xc]
	str r0, [sp]
	ldr r0, [r2, #0x38]
	asrs r0, r0, #8
	ldrh r1, [r2, #0x30]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r1, [r2, #0x3c]
	asrs r1, r1, #8
	ldrh r2, [r2, #0x32]
	adds r1, r1, r2
	ldr r2, _0803410C @ =gUnknown_03005870
	ldr r0, _08034110 @ =0x03000052
	adds r3, r3, r0
	ldrb r3, [r3]
	mov r8, r3
	lsls r0, r3, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	ldr r1, _08034114 @ =gCamera
	mov sb, r1
	movs r2, #2
	ldrsh r0, [r1, r2]
	subs r0, r7, r0
	bl __floatsisf
	ldr r1, _08034118 @ =0xC3700000
	bl __ltsf2
	cmp r0, #0
	bge _0803411C
	adds r0, r5, #0
	bl TaskDestroy
	b _080341E2
	.align 2, 0
_08034108: .4byte gCurTask
_0803410C: .4byte gUnknown_03005870
_08034110: .4byte 0x03000052
_08034114: .4byte gCamera
_08034118: .4byte 0xC3700000
_0803411C:
	ldr r3, _08034168 @ =0x03000058
	adds r0, r4, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08034134
	ldr r5, _0803416C @ =0x0300005E
	adds r0, r4, r5
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080341E2
_08034134:
	ldr r0, _08034170 @ =0x03000023
	adds r2, r4, r0
	mov r1, r8
	cmp r1, #0
	beq _08034146
	adds r1, r2, #0
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _08034174
_08034146:
	movs r0, #0xff
	strb r0, [r2]
	mov r2, sb
	ldrh r1, [r2]
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r6, #0x16]
	ldrh r0, [r2, #2]
	subs r0, r7, r0
	strh r0, [r6, #0x18]
	adds r0, r6, #0
	bl DisplaySprite
	b _080341E2
	.align 2, 0
_08034168: .4byte 0x03000058
_0803416C: .4byte 0x0300005E
_08034170: .4byte 0x03000023
_08034174:
	ldrb r0, [r1]
	lsls r0, r0, #3
	ldr r1, _080341F4 @ =gOamBuffer2
	adds r5, r0, r1
	ldrh r1, [r6, #0x1a]
	movs r0, #0xf8
	lsls r0, r0, #3
	ands r0, r1
	lsrs r0, r0, #6
	bl OamMalloc
	adds r4, r0, #0
	ldr r0, _080341F8 @ =iwram_end
	ldr r0, [r0]
	cmp r0, r4
	beq _080341E2
	ldr r0, _080341FC @ =0x040000D4
	str r5, [r0]
	str r4, [r0, #4]
	ldr r1, _08034200 @ =0x80000003
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldrh r0, [r4, #2]
	movs r3, #0xfe
	lsls r3, r3, #8
	ands r3, r0
	strh r3, [r4, #2]
	ldrh r0, [r4]
	movs r2, #0xff
	lsls r2, r2, #8
	ands r2, r0
	strh r2, [r4]
	mov r5, sb
	ldrh r0, [r5, #2]
	subs r0, r7, r0
	ldr r5, [sp]
	ldrh r1, [r5, #0xa]
	subs r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	adds r2, r2, r0
	strh r2, [r4]
	mov r0, sb
	ldrh r1, [r0]
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	ldrh r1, [r5, #8]
	subs r0, r0, r1
	ldr r5, _08034204 @ =0x000001FF
	adds r1, r5, #0
	ands r0, r1
	adds r3, r3, r0
	strh r3, [r4, #2]
_080341E2:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080341F4: .4byte gOamBuffer2
_080341F8: .4byte iwram_end
_080341FC: .4byte 0x040000D4
_08034200: .4byte 0x80000003
_08034204: .4byte 0x000001FF

	thumb_func_start sub_8034208
sub_8034208: @ 0x08034208
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

	thumb_func_start sub_8034224
sub_8034224: @ 0x08034224
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8034238
sub_8034238: @ 0x08034238
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_803424C
sub_803424C: @ 0x0803424C
	ldr r0, _08034264 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _08034268 @ =0x0300000C
	adds r2, r0, r1
	adds r1, #0x38
	adds r0, r0, r1
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	bx lr
	.align 2, 0
_08034264: .4byte gCurTask
_08034268: .4byte 0x0300000C

	thumb_func_start sub_803426C
sub_803426C: @ 0x0803426C
	push {r4, lr}
	ldr r2, _08034294 @ =gCurTask
	ldr r2, [r2]
	ldrh r2, [r2, #6]
	ldr r3, _08034298 @ =0x0300000C
	adds r2, r2, r3
	ldr r4, _0803429C @ =gCamera
	ldrh r3, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r3
	strh r0, [r2, #0x16]
	ldrh r0, [r4, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r2, #0x18]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08034294: .4byte gCurTask
_08034298: .4byte 0x0300000C
_0803429C: .4byte gCamera

	thumb_func_start sub_80342A0
sub_80342A0: @ 0x080342A0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r0, _08034364 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	ldr r0, _08034368 @ =0x0300000C
	adds r5, r4, r0
	ldr r0, [r5, #0x10]
	ldr r1, _0803436C @ =0xFFFFFE7F
	ands r0, r1
	str r0, [r5, #0x10]
	ldr r1, _08034370 @ =gPlayer
	mov r8, r1
	ldr r3, [r1, #0x10]
	movs r0, #0x80
	ands r3, r0
	cmp r3, #0
	bne _080342E4
	ldr r2, _08034374 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08034378 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0803437C @ =gWinRegs
	strh r3, [r0, #0xa]
	ldr r0, _08034380 @ =gBldRegs
	strh r3, [r0]
	strh r3, [r0, #4]
_080342E4:
	ldr r0, _08034384 @ =0x03000087
	adds r0, r0, r4
	mov sb, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080343C6
	lsls r0, r7, #0x10
	asrs r7, r0, #0x10
	lsls r0, r6, #0x10
	asrs r6, r0, #0x10
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	mov r3, r8
	bl sub_800B8B4
	mov r8, r0
	movs r1, #0
	ldr r0, _08034388 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08034326
	ldr r3, _0803438C @ =gUnknown_03005AB0
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_800B8B4
	adds r1, r0, #0
_08034326:
	ldr r0, _08034390 @ =0x0300003C
	adds r2, r4, r0
	mov r0, r8
	cmp r0, #1
	beq _08034334
	cmp r1, #1
	bne _080343A4
_08034334:
	ldr r0, _08034394 @ =0x03000086
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0x20
	mov r1, sb
	strb r0, [r1]
	ldr r0, _08034398 @ =0x0300005C
	adds r1, r4, r0
	movs r0, #2
	strb r0, [r1]
	ldr r0, _0803439C @ =0x0300005D
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r2, #0x10]
	ldr r1, _080343A0 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x10]
	movs r0, #0x8f
	bl m4aSongNumStart
	b _080343C6
	.align 2, 0
_08034364: .4byte gCurTask
_08034368: .4byte 0x0300000C
_0803436C: .4byte 0xFFFFFE7F
_08034370: .4byte gPlayer
_08034374: .4byte gDispCnt
_08034378: .4byte 0x00007FFF
_0803437C: .4byte gWinRegs
_08034380: .4byte gBldRegs
_08034384: .4byte 0x03000087
_08034388: .4byte gUnknown_03005088
_0803438C: .4byte gUnknown_03005AB0
_08034390: .4byte 0x0300003C
_08034394: .4byte 0x03000086
_08034398: .4byte 0x0300005C
_0803439C: .4byte 0x0300005D
_080343A0: .4byte 0xFFFFBFFF
_080343A4:
	mov r0, r8
	cmp r0, #2
	beq _080343AE
	cmp r1, #2
	bne _080343C6
_080343AE:
	ldr r0, _080343D4 @ =0x0300005C
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	ldr r0, _080343D8 @ =0x0300005D
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r2, #0x10]
	ldr r1, _080343DC @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x10]
_080343C6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080343D4: .4byte 0x0300005C
_080343D8: .4byte 0x0300005D
_080343DC: .4byte 0xFFFFBFFF

	thumb_func_start sub_80343E0
sub_80343E0: @ 0x080343E0
	push {r4, r5, lr}
	ldr r0, _08034458 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _0803445C @ =0x0300000C
	adds r3, r0, r1
	ldr r5, _08034460 @ =0x0300003C
	adds r4, r0, r5
	adds r1, #0x7b
	adds r2, r0, r1
	ldrb r1, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _08034444
	subs r1, #1
	strb r1, [r2]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x10
	ble _08034444
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _08034444
	ldr r0, _08034464 @ =gPlayer
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08034444
	ldr r0, [r3, #0x10]
	adds r1, #0x80
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r2, _08034468 @ =gDispCnt
	ldrh r0, [r2]
	movs r5, #0x80
	lsls r5, r5, #8
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0803446C @ =gWinRegs
	ldr r0, _08034470 @ =0x00003F1F
	strh r0, [r1, #0xa]
	ldr r1, _08034474 @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
_08034444:
	adds r0, r3, #0
	bl DisplaySprite
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08034458: .4byte gCurTask
_0803445C: .4byte 0x0300000C
_08034460: .4byte 0x0300003C
_08034464: .4byte gPlayer
_08034468: .4byte gDispCnt
_0803446C: .4byte gWinRegs
_08034470: .4byte 0x00003F1F
_08034474: .4byte gBldRegs

@ --- Start of Sonic 1 - Green Hill Boss
	thumb_func_start CreateEntity_EggWrecker
CreateEntity_EggWrecker: @ 0x08034478
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x18
	lsrs r4, r3, #0x18
	ldr r0, _080344A8 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _080344AC
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	b _080345F4
	.align 2, 0
_080344A8: .4byte gGameMode
_080344AC:
	ldr r0, _08034604 @ =sub_8034644
	ldr r1, _08034608 @ =sub_80357FC
	str r1, [sp]
	movs r1, #0x90
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r5, r1
	movs r3, #0
	mov r2, r8
	strh r2, [r1, #4]
	mov r0, sb
	strh r0, [r1, #6]
	str r7, [r1]
	ldrb r0, [r7]
	strb r0, [r1, #8]
	strb r4, [r1, #9]
	ldr r4, _0803460C @ =0x03000084
	adds r2, r5, r4
	movs r0, #0x78
	strh r0, [r2]
	ldr r2, _08034610 @ =0x03000086
	adds r0, r5, r2
	strb r3, [r0]
	adds r4, #3
	adds r0, r5, r4
	strb r3, [r0]
	adds r2, #7
	adds r0, r5, r2
	strb r3, [r0]
	adds r4, #5
	adds r0, r5, r4
	strb r3, [r0]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r1, #0x6c]
	ldr r0, _08034614 @ =0xFFFFA000
	str r0, [r1, #0x70]
	movs r0, #0
	str r0, [r1, #0x74]
	str r0, [r1, #0x78]
	ldr r1, _08034618 @ =0x03000088
	adds r0, r5, r1
	movs r2, #0
	strh r2, [r0]
	subs r4, #2
	adds r0, r5, r4
	strh r2, [r0]
	ldrb r0, [r7]
	lsls r0, r0, #3
	mov r1, r8
	lsls r6, r1, #8
	adds r0, r0, r6
	subs r4, #0xe
	adds r2, r5, r4
	strh r0, [r2]
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	mov r1, sb
	lsls r1, r1, #8
	mov sl, r1
	add r0, sl
	adds r4, #2
	adds r1, r5, r4
	strh r0, [r1]
	ldr r0, _0803461C @ =0x0300000C
	adds r4, r5, r0
	ldrh r0, [r2]
	strh r0, [r4, #0x16]
	ldrh r0, [r1]
	strh r0, [r4, #0x18]
	movs r0, #0x1e
	str r3, [sp, #4]
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0xb0
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	movs r1, #0
	strh r1, [r4, #8]
	movs r0, #0xab
	lsls r0, r0, #2
	strh r0, [r4, #0xa]
	ldr r2, _08034620 @ =0x0300002C
	adds r0, r5, r2
	ldr r3, [sp, #4]
	strb r3, [r0]
	strh r1, [r4, #0x14]
	strh r1, [r4, #0x1c]
	ldr r0, _08034624 @ =0x0300002D
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08034628 @ =0x0300002E
	adds r0, r5, r1
	movs r2, #0x10
	mov sb, r2
	mov r1, sb
	strb r1, [r0]
	ldr r2, _0803462C @ =0x03000031
	adds r0, r5, r2
	strb r3, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	str r0, [r4, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r4, #0x10]
	adds r2, #0xb
	adds r4, r5, r2
	ldrb r0, [r7]
	lsls r0, r0, #3
	adds r0, r0, r6
	strh r0, [r4, #0x16]
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	add r0, sl
	strh r0, [r4, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	movs r0, #8
	str r3, [sp, #4]
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0xa8
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	movs r2, #0
	strh r2, [r4, #8]
	ldr r0, _08034630 @ =0x000002AE
	strh r0, [r4, #0xa]
	ldr r1, _08034634 @ =0x0300005C
	adds r0, r5, r1
	ldr r3, [sp, #4]
	strb r3, [r0]
	strh r2, [r4, #0x14]
	strh r2, [r4, #0x1c]
	ldr r2, _08034638 @ =0x0300005D
	adds r1, r5, r2
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _0803463C @ =0x0300005E
	adds r0, r5, r1
	mov r2, sb
	strb r2, [r0]
	ldr r0, _08034640 @ =0x03000061
	adds r5, r5, r0
	strb r3, [r5]
	mov r1, r8
	str r1, [r4, #0x28]
	movs r2, #0x80
	lsls r2, r2, #6
	str r2, [r4, #0x10]
_080345F4:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034604: .4byte sub_8034644
_08034608: .4byte sub_80357FC
_0803460C: .4byte 0x03000084
_08034610: .4byte 0x03000086
_08034614: .4byte 0xFFFFA000
_08034618: .4byte 0x03000088
_0803461C: .4byte 0x0300000C
_08034620: .4byte 0x0300002C
_08034624: .4byte 0x0300002D
_08034628: .4byte 0x0300002E
_0803462C: .4byte 0x03000031
_08034630: .4byte 0x000002AE
_08034634: .4byte 0x0300005C
_08034638: .4byte 0x0300005D
_0803463C: .4byte 0x0300005E
_08034640: .4byte 0x03000061

	thumb_func_start sub_8034644
sub_8034644: @ 0x08034644
	push {r4, r5, r6, lr}
	ldr r0, _08034664 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0x8d
	adds r4, r1, r0
	ldrb r0, [r4]
	cmp r0, #0
	beq _08034668
	cmp r0, #1
	beq _08034694
	b _080346BC
	.align 2, 0
_08034664: .4byte gCurTask
_08034668:
	ldr r2, _0803468C @ =0x0300007C
	adds r3, r1, r2
	movs r6, #0
	ldrsh r0, [r3, r6]
	subs r0, #0x78
	ldr r2, _08034690 @ =gCamera
	movs r6, #0
	ldrsh r1, [r2, r6]
	cmp r0, r1
	bgt _080346BC
	ldrh r0, [r3]
	adds r1, r0, #0
	subs r1, #0x78
	strh r1, [r2, #0x18]
	adds r0, #0x78
	strh r0, [r2, #0x1a]
	movs r0, #1
	b _080346BA
	.align 2, 0
_0803468C: .4byte 0x0300007C
_08034690: .4byte gCamera
_08034694:
	ldr r0, _08034704 @ =0x0300007E
	adds r2, r1, r0
	movs r1, #0
	ldrsh r3, [r2, r1]
	adds r0, r3, #0
	subs r0, #0x40
	ldr r1, _08034708 @ =gCamera
	movs r6, #2
	ldrsh r1, [r1, r6]
	cmp r0, r1
	bgt _080346BC
	ldrh r1, [r2]
	adds r1, #0xa0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r3, #0
	bl sub_80174DC
	movs r0, #2
_080346BA:
	strb r0, [r4]
_080346BC:
	ldr r2, _08034708 @ =gCamera
	movs r0, #0x18
	ldrsh r1, [r2, r0]
	adds r0, r5, #0
	adds r0, #0x7c
	movs r3, #0
	ldrsh r0, [r0, r3]
	subs r0, #0x78
	cmp r1, r0
	bne _080346FE
	movs r6, #0x16
	ldrsh r1, [r2, r6]
	adds r0, r5, #0
	adds r0, #0x7e
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, #0xa0
	cmp r1, r0
	bne _080346FE
	adds r1, r5, #0
	adds r1, #0x8d
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r5, #0x78]
	ldr r0, _0803470C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08034710 @ =sub_8034718
	str r0, [r1, #8]
	ldr r1, _08034714 @ =gUnknown_03005040
	movs r0, #0x14
	strb r0, [r1, #1]
_080346FE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08034704: .4byte 0x0300007E
_08034708: .4byte gCamera
_0803470C: .4byte gCurTask
_08034710: .4byte sub_8034718
_08034714: .4byte gUnknown_03005040

	thumb_func_start sub_8034718
sub_8034718: @ 0x08034718
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080347DC @ =gCurTask
	mov sl, r0
	ldr r4, [r0]
	ldrh r5, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	ldr r1, _080347E0 @ =0x0300000C
	adds r0, r5, r1
	ldr r2, _080347E4 @ =0x0300003C
	adds r2, r2, r5
	mov sb, r2
	ldr r1, [r6, #0x6c]
	ldr r2, [r6, #0x74]
	adds r1, r1, r2
	str r1, [r6, #0x6c]
	ldr r2, [r6, #0x70]
	ldr r3, [r6, #0x78]
	adds r2, r2, r3
	str r2, [r6, #0x70]
	ldr r7, _080347E8 @ =0x0300007C
	adds r3, r5, r7
	asrs r1, r1, #8
	ldrh r3, [r3]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r7, #2
	adds r3, r5, r7
	asrs r2, r2, #8
	ldrh r3, [r3]
	adds r2, r2, r3
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r7, #2
	adds r3, r5, r7
	strh r1, [r3]
	ldr r3, _080347EC @ =0x03000082
	strh r2, [r3, r5]
	ldrh r3, [r4, #6]
	ldr r4, _080347E0 @ =0x0300000C
	adds r3, r3, r4
	ldr r7, _080347F0 @ =gCamera
	mov r8, r7
	mov r4, r8
	ldrh r4, [r4]
	mov ip, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r7, ip
	subs r1, r1, r7
	strh r1, [r3, #0x16]
	mov r4, r8
	ldrh r1, [r4, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r1
	strh r2, [r3, #0x18]
	bl UpdateSpriteAnimation
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r7, sl
	ldr r0, [r7]
	ldrh r0, [r0, #6]
	ldr r2, _080347E0 @ =0x0300000C
	adds r1, r0, r2
	ldr r3, _080347E4 @ =0x0300003C
	adds r2, r0, r3
	ldrh r0, [r1, #0x16]
	strh r0, [r2, #0x16]
	ldrh r3, [r1, #0x18]
	strh r3, [r2, #0x18]
	ldrh r1, [r2, #0xa]
	ldr r0, _080347F4 @ =0x000002B6
	cmp r1, r0
	bne _080347C2
	subs r0, r3, #3
	strh r0, [r2, #0x18]
_080347C2:
	bl sub_80343E0
	ldr r7, _080347F8 @ =0x0300008D
	adds r4, r5, r7
	ldrb r0, [r4]
	cmp r0, #1
	beq _08034824
	cmp r0, #1
	bgt _080347FC
	cmp r0, #0
	beq _08034806
	b _080348FC
	.align 2, 0
_080347DC: .4byte gCurTask
_080347E0: .4byte 0x0300000C
_080347E4: .4byte 0x0300003C
_080347E8: .4byte 0x0300007C
_080347EC: .4byte 0x03000082
_080347F0: .4byte gCamera
_080347F4: .4byte 0x000002B6
_080347F8: .4byte 0x0300008D
_080347FC:
	cmp r0, #2
	beq _08034848
	cmp r0, #3
	beq _08034898
	b _080348FC
_08034806:
	ldr r1, [r6, #0x70]
	ldr r0, _0803481C @ =0x00001FFF
	cmp r1, r0
	ble _080348FC
	adds r0, #1
	str r0, [r6, #0x70]
	ldr r0, _08034820 @ =0xFFFFFF00
	str r0, [r6, #0x74]
	adds r0, #0xf0
	str r0, [r6, #0x78]
	b _0803483A
	.align 2, 0
_0803481C: .4byte 0x00001FFF
_08034820: .4byte 0xFFFFFF00
_08034824:
	ldr r0, [r6, #0x6c]
	cmp r0, #0
	bgt _080348FC
	movs r0, #0
	str r0, [r6, #0x6c]
	str r0, [r6, #0x74]
	str r0, [r6, #0x78]
	ldr r2, _08034844 @ =0x03000084
	adds r1, r5, r2
	movs r0, #4
	strh r0, [r1]
_0803483A:
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	b _080348FC
	.align 2, 0
_08034844: .4byte 0x03000084
_08034848:
	ldr r3, _08034888 @ =0x03000084
	adds r2, r5, r3
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080348FC
	ldr r7, _0803488C @ =0x0300005C
	adds r1, r5, r7
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08034890 @ =0x0300005D
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08034894 @ =0x03000088
	adds r0, r5, r1
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	adds r3, #6
	adds r0, r5, r3
	strh r1, [r0]
	movs r0, #0x40
	strh r0, [r2]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	bl sub_8035010
	b _080348FC
	.align 2, 0
_08034888: .4byte 0x03000084
_0803488C: .4byte 0x0300005C
_08034890: .4byte 0x0300005D
_08034894: .4byte 0x03000088
_08034898:
	ldr r7, _0803490C @ =0x03000084
	adds r2, r5, r7
	ldrh r0, [r2]
	cmp r0, #0
	beq _080348A6
	subs r0, #1
	strh r0, [r2]
_080348A6:
	mov r1, sb
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	ldr r7, _08034910 @ =0x0300005C
	adds r3, r5, r7
	cmp r0, #0
	beq _080348C4
	movs r0, #0
	strb r0, [r3]
	adds r7, #1
	adds r1, r5, r7
	movs r0, #0xff
	strb r0, [r1]
_080348C4:
	ldrb r0, [r3]
	cmp r0, #0
	bne _080348FC
	ldrh r0, [r2]
	cmp r0, #0
	bne _080348FC
	movs r0, #0x30
	rsbs r0, r0, #0
	str r0, [r6, #0x74]
	ldr r0, _08034914 @ =0x0300008C
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	movs r1, #0
	strb r1, [r4]
	mov r2, sl
	ldr r1, [r2]
	ldr r0, _08034918 @ =sub_803491C
	str r0, [r1, #8]
	mov r3, r8
	ldrh r0, [r3, #0x14]
	subs r0, #0x50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #0x16
	ldrsh r1, [r3, r4]
	bl sub_80174DC
_080348FC:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803490C: .4byte 0x03000084
_08034910: .4byte 0x0300005C
_08034914: .4byte 0x0300008C
_08034918: .4byte sub_803491C

	thumb_func_start sub_803491C
sub_803491C: @ 0x0803491C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08034A1C @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldr r1, _08034A20 @ =0x0300000C
	adds r1, r1, r5
	mov r8, r1
	ldr r2, _08034A24 @ =0x0300003C
	adds r2, r2, r5
	mov sb, r2
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r0, [r4, #0x70]
	ldr r1, [r4, #0x78]
	adds r0, r0, r1
	str r0, [r4, #0x70]
	ldr r3, _08034A28 @ =0x03000088
	adds r6, r5, r3
	ldrh r1, [r6]
	subs r1, #4
	ldr r2, _08034A2C @ =0x000003FF
	ands r1, r2
	strh r1, [r6]
	ldr r0, _08034A30 @ =0x000001FF
	ands r0, r1
	movs r7, #0x80
	lsls r7, r7, #1
	cmp r0, r7
	bne _08034980
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	eors r0, r1
	mov r3, r8
	str r0, [r3, #0x10]
	mov r3, sb
	ldr r0, [r3, #0x10]
	eors r0, r1
	str r0, [r3, #0x10]
_08034980:
	movs r1, #0
	ldrsh r0, [r6, r1]
	adds r0, r0, r7
	lsls r0, r0, #1
	ldr r3, _08034A34 @ =gSineTable
	ands r0, r2
	adds r0, r0, r7
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _08034A38 @ =0x0300007C
	adds r2, r5, r0
	ldr r0, [r4, #0x6c]
	asrs r0, r0, #8
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r0, _08034A3C @ =0x0300007E
	adds r2, r5, r0
	ldr r0, [r4, #0x70]
	asrs r0, r0, #8
	ldrh r2, [r2]
	adds r0, r0, r2
	asrs r1, r1, #0x1d
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	ldr r1, _08034A40 @ =0x03000080
	adds r0, r5, r1
	mov r1, ip
	strh r1, [r0]
	ldr r1, _08034A44 @ =0x03000082
	adds r0, r5, r1
	strh r2, [r0]
	movs r1, #0
	ldrsh r0, [r6, r1]
	adds r0, r0, r7
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r1, [r0]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _080349E6
	movs r1, #0xff
_080349E6:
	lsls r0, r1, #0x10
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r0, r0, r3
	lsrs r1, r0, #0x10
	adds r3, #0x8a
	adds r0, r5, r3
	strh r1, [r0]
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r6, r0, #0x10
	lsls r0, r2, #0x10
	asrs r7, r0, #0x10
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_80342A0
	ldr r2, _08034A48 @ =0x03000086
	adds r0, r5, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	ble _08034A4C
	bl sub_8034B7C
	b _08034B6C
	.align 2, 0
_08034A1C: .4byte gCurTask
_08034A20: .4byte 0x0300000C
_08034A24: .4byte 0x0300003C
_08034A28: .4byte 0x03000088
_08034A2C: .4byte 0x000003FF
_08034A30: .4byte 0x000001FF
_08034A34: .4byte gSineTable
_08034A38: .4byte 0x0300007C
_08034A3C: .4byte 0x0300007E
_08034A40: .4byte 0x03000080
_08034A44: .4byte 0x03000082
_08034A48: .4byte 0x03000086
_08034A4C:
	mov r0, sl
	ldr r3, [r0]
	ldrh r1, [r3, #6]
	ldr r2, _08034AD4 @ =0x0300000C
	adds r1, r1, r2
	ldr r2, _08034AD8 @ =gCamera
	ldrh r0, [r2]
	subs r0, r6, r0
	strh r0, [r1, #0x16]
	ldrh r0, [r2, #2]
	subs r0, r7, r0
	strh r0, [r1, #0x18]
	ldrh r3, [r3, #6]
	ldr r0, _08034ADC @ =0x0300003C
	adds r1, r3, r0
	adds r0, #0x20
	adds r2, r3, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _08034A8C
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08034A8C
	movs r0, #0
	strb r0, [r2]
	ldr r2, _08034AE0 @ =0x0300005D
	adds r1, r3, r2
	movs r0, #0xff
	strb r0, [r1]
_08034A8C:
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, sb
	bl UpdateSpriteAnimation
	ldr r0, _08034AE4 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r3, _08034AD4 @ =0x0300000C
	adds r1, r0, r3
	adds r3, #0x30
	adds r2, r0, r3
	ldrh r0, [r1, #0x16]
	movs r5, #0
	strh r0, [r2, #0x16]
	ldrh r3, [r1, #0x18]
	strh r3, [r2, #0x18]
	ldrh r1, [r2, #0xa]
	ldr r0, _08034AE8 @ =0x000002B6
	cmp r1, r0
	bne _08034ABC
	subs r0, r3, #3
	strh r0, [r2, #0x18]
_08034ABC:
	bl sub_80343E0
	adds r2, r4, #0
	adds r2, #0x8d
	ldrb r0, [r2]
	cmp r0, #1
	beq _08034B1C
	cmp r0, #1
	bgt _08034AEC
	cmp r0, #0
	beq _08034AF6
	b _08034B6C
	.align 2, 0
_08034AD4: .4byte 0x0300000C
_08034AD8: .4byte gCamera
_08034ADC: .4byte 0x0300003C
_08034AE0: .4byte 0x0300005D
_08034AE4: .4byte gCurTask
_08034AE8: .4byte 0x000002B6
_08034AEC:
	cmp r0, #2
	beq _08034B36
	cmp r0, #3
	beq _08034B4E
	b _08034B6C
_08034AF6:
	adds r0, r4, #0
	adds r0, #0x88
	ldr r3, _08034B14 @ =0xFFFFFEFF
	adds r1, r3, #0
	ldrh r0, [r0]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r0, _08034B18 @ =0x01FF0000
	cmp r1, r0
	bhi _08034B6C
	str r5, [r4, #0x74]
	ldrb r0, [r2]
	adds r0, #1
	b _08034B6A
	.align 2, 0
_08034B14: .4byte 0xFFFFFEFF
_08034B18: .4byte 0x01FF0000
_08034B1C:
	adds r0, r4, #0
	adds r0, #0x88
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	bgt _08034B6C
	movs r0, #0xc0
	str r0, [r4, #0x74]
	ldrb r0, [r2]
	adds r0, #1
	b _08034B6A
_08034B36:
	adds r0, r4, #0
	adds r0, #0x88
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bgt _08034B6C
	str r5, [r4, #0x74]
	ldrb r0, [r2]
	adds r0, #1
	b _08034B6A
_08034B4E:
	adds r0, r4, #0
	adds r0, #0x88
	movs r3, #0
	ldrsh r1, [r0, r3]
	cmp r1, #0
	beq _08034B62
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _08034B6C
_08034B62:
	movs r0, #0xc0
	rsbs r0, r0, #0
	str r0, [r4, #0x74]
	movs r0, #0
_08034B6A:
	strb r0, [r2]
_08034B6C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8034B7C
sub_8034B7C: @ 0x08034B7C
	push {r4, r5, r6, lr}
	ldr r0, _08034C50 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r3, r4
	ldr r0, _08034C54 @ =0x0300000C
	adds r6, r3, r0
	ldr r1, _08034C58 @ =0x0300008D
	adds r0, r3, r1
	movs r1, #0
	strb r1, [r0]
	ldr r5, _08034C5C @ =0x03000084
	adds r2, r3, r5
	movs r0, #0x3c
	strh r0, [r2]
	str r1, [r4, #0x74]
	str r1, [r4, #0x78]
	ldr r1, _08034C60 @ =0x03000088
	adds r0, r3, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r5, _08034C64 @ =0x000003FF
	adds r1, r5, #0
	ldr r5, _08034C68 @ =gSineTable
	ands r0, r1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1d
	lsls r0, r0, #8
	ldr r1, [r4, #0x70]
	adds r1, r1, r0
	str r1, [r4, #0x70]
	ldr r0, _08034C6C @ =0x0300005C
	adds r1, r3, r0
	movs r0, #2
	strb r0, [r1]
	ldr r1, _08034C70 @ =0x0300005D
	adds r3, r3, r1
	movs r0, #0xff
	strb r0, [r3]
	movs r0, #0x90
	bl m4aSongNumStart
	ldr r0, [r6, #0x10]
	ldr r1, _08034C74 @ =0xFFFFFE7F
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, _08034C78 @ =gPlayer
	ldr r3, [r0, #0x10]
	movs r0, #0x80
	ands r3, r0
	cmp r3, #0
	bne _08034C0C
	ldr r2, _08034C7C @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08034C80 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08034C84 @ =gWinRegs
	strh r3, [r0, #0xa]
	ldr r0, _08034C88 @ =gBldRegs
	strh r3, [r0]
	strh r3, [r0, #4]
_08034C0C:
	ldr r1, _08034C8C @ =gLevelScore
	ldr r6, [r1]
	movs r2, #0xfa
	lsls r2, r2, #2
	adds r0, r6, r2
	str r0, [r1]
	ldr r4, _08034C90 @ =0x0000C350
	adds r1, r4, #0
	bl Div
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl Div
	cmp r5, r0
	beq _08034C3E
	ldr r0, _08034C94 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _08034C3E
	ldr r1, _08034C98 @ =gNumLives
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08034C3E:
	bl sub_8034CA0
	ldr r0, _08034C50 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08034C9C @ =sub_8034CA0
	str r0, [r1, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08034C50: .4byte gCurTask
_08034C54: .4byte 0x0300000C
_08034C58: .4byte 0x0300008D
_08034C5C: .4byte 0x03000084
_08034C60: .4byte 0x03000088
_08034C64: .4byte 0x000003FF
_08034C68: .4byte gSineTable
_08034C6C: .4byte 0x0300005C
_08034C70: .4byte 0x0300005D
_08034C74: .4byte 0xFFFFFE7F
_08034C78: .4byte gPlayer
_08034C7C: .4byte gDispCnt
_08034C80: .4byte 0x00007FFF
_08034C84: .4byte gWinRegs
_08034C88: .4byte gBldRegs
_08034C8C: .4byte gLevelScore
_08034C90: .4byte 0x0000C350
_08034C94: .4byte gGameMode
_08034C98: .4byte gNumLives
_08034C9C: .4byte sub_8034CA0

	thumb_func_start sub_8034CA0
sub_8034CA0: @ 0x08034CA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r1, _08034D94 @ =gCurTask
	ldr r0, [r1]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	ldr r2, _08034D98 @ =0x0300000C
	adds r2, r2, r6
	mov sb, r2
	ldr r3, _08034D9C @ =0x0300003C
	adds r7, r6, r3
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, [r4, #0x70]
	ldr r2, [r4, #0x78]
	adds r1, r1, r2
	str r1, [r4, #0x70]
	adds r3, #0x40
	adds r2, r6, r3
	asrs r0, r0, #8
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	str r3, [sp]
	ldr r2, _08034DA0 @ =0x0300007E
	adds r0, r6, r2
	asrs r1, r1, #8
	ldrh r0, [r0]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	mov sl, r2
	ldr r1, _08034DA4 @ =0x03000080
	adds r0, r6, r1
	strh r3, [r0]
	adds r1, #2
	adds r0, r6, r1
	strh r2, [r0]
	ldr r0, _08034DA8 @ =0x03000084
	adds r5, r6, r0
	ldrh r1, [r5]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _08034D18
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	bl sub_8034EE0
_08034D18:
	mov r0, sb
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r1, _08034D94 @ =gCurTask
	ldr r3, [r1]
	ldrh r1, [r3, #6]
	ldr r2, _08034D98 @ =0x0300000C
	adds r1, r1, r2
	ldr r0, _08034DAC @ =gCamera
	mov r8, r0
	ldrh r2, [r0]
	mov ip, r2
	ldr r2, [sp]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov r2, ip
	subs r0, r0, r2
	strh r0, [r1, #0x16]
	mov r0, r8
	ldrh r0, [r0, #2]
	mov ip, r0
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov r2, ip
	subs r0, r0, r2
	strh r0, [r1, #0x18]
	ldrh r0, [r3, #6]
	ldr r3, _08034D98 @ =0x0300000C
	adds r1, r0, r3
	adds r3, #0x30
	adds r2, r0, r3
	ldrh r0, [r1, #0x16]
	strh r0, [r2, #0x16]
	ldrh r1, [r1, #0x18]
	strh r1, [r2, #0x18]
	ldrh r0, [r2, #0xa]
	ldr r3, _08034DB0 @ =0x000002B6
	mov sl, r3
	cmp r0, sl
	bne _08034D74
	subs r0, r1, #3
	strh r0, [r2, #0x18]
_08034D74:
	mov r0, sb
	bl DisplaySprite
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, _08034DB4 @ =0x0300008D
	adds r1, r6, r0
	ldrb r0, [r1]
	cmp r0, #1
	beq _08034E0C
	cmp r0, #1
	bgt _08034DB8
	cmp r0, #0
	beq _08034DC2
	b _08034EBA
	.align 2, 0
_08034D94: .4byte gCurTask
_08034D98: .4byte 0x0300000C
_08034D9C: .4byte 0x0300003C
_08034DA0: .4byte 0x0300007E
_08034DA4: .4byte 0x03000080
_08034DA8: .4byte 0x03000084
_08034DAC: .4byte gCamera
_08034DB0: .4byte 0x000002B6
_08034DB4: .4byte 0x0300008D
_08034DB8:
	cmp r0, #2
	beq _08034E2A
	cmp r0, #3
	beq _08034E80
	b _08034EBA
_08034DC2:
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08034EBA
	movs r0, #0x5a
	strh r0, [r5]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r4, #0x40]
	bl VramFree
	movs r0, #0xc
	bl VramMalloc
	str r0, [r7, #4]
	mov r1, sl
	strh r1, [r7, #0xa]
	ldr r2, _08034E04 @ =0x0300005C
	adds r1, r6, r2
	movs r0, #4
	strb r0, [r1]
	ldr r3, _08034E08 @ =0x0300005D
	adds r1, r6, r3
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0xb8
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	b _08034EBA
	.align 2, 0
_08034E04: .4byte 0x0300005C
_08034E08: .4byte 0x0300005D
_08034E0C:
	ldr r0, [r4, #0x78]
	adds r0, #3
	str r0, [r4, #0x78]
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08034EBA
	movs r0, #0x1e
	strh r0, [r5]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08034EBA
_08034E2A:
	ldr r0, [r4, #0x78]
	subs r0, #0x18
	str r0, [r4, #0x78]
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08034EBA
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r4, #0x74]
	movs r0, #0x40
	rsbs r0, r0, #0
	str r0, [r4, #0x78]
	movs r0, #1
	strh r0, [r5]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, _08034E78 @ =0x0300005C
	adds r1, r6, r0
	movs r0, #6
	strb r0, [r1]
	ldr r2, _08034E7C @ =0x0300005D
	adds r1, r6, r2
	movs r0, #0xff
	strb r0, [r1]
	mov r3, sb
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r0, [r7, #0x10]
	orrs r0, r1
	str r0, [r7, #0x10]
	b _08034EBA
	.align 2, 0
_08034E78: .4byte 0x0300005C
_08034E7C: .4byte 0x0300005D
_08034E80:
	ldr r1, [r4, #0x6c]
	movs r0, #0x98
	lsls r0, r0, #9
	cmp r1, r0
	ble _08034EBA
	ldr r2, _08034ECC @ =gUnknown_03005A0C
	ldr r1, _08034ED0 @ =gCollisionTable
	ldr r0, _08034ED4 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	str r1, [r2]
	movs r0, #0
	mov r2, r8
	strh r0, [r2, #0x14]
	ldrh r0, [r1, #0x1e]
	strh r0, [r2, #0x16]
	ldrh r0, [r1, #0x1c]
	strh r0, [r2, #0x1a]
	ldr r1, _08034ED8 @ =gUnknown_03005040
	movs r0, #0x34
	strb r0, [r1, #1]
	ldr r3, _08034EDC @ =gCurTask
	ldr r0, [r3]
	bl TaskDestroy
_08034EBA:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034ECC: .4byte gUnknown_03005A0C
_08034ED0: .4byte gCollisionTable
_08034ED4: .4byte gCurrentLevel
_08034ED8: .4byte gUnknown_03005040
_08034EDC: .4byte gCurTask

	thumb_func_start sub_8034EE0
sub_8034EE0: @ 0x08034EE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r0, _08034FE8 @ =gPseudoRandom
	mov sb, r0
	ldr r0, [r0]
	ldr r7, _08034FEC @ =0x00196225
	muls r0, r7, r0
	ldr r1, _08034FF0 @ =0x3C6EF35F
	mov sl, r1
	add r0, sl
	mov r2, sb
	str r0, [r2]
	movs r4, #7
	ands r4, r0
	ldr r0, _08034FF4 @ =gUnknown_080BB434
	adds r0, r4, r0
	ldrb r0, [r0]
	bl VramMalloc
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #6
	mov r8, r0
	ldr r2, _08034FF8 @ =gUnknown_080BB41C
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, _08034FFC @ =gUnknown_080BB42C
	adds r4, r4, r0
	ldrb r3, [r4]
	ldr r0, _08035000 @ =sub_80177EC
	str r0, [sp]
	mov r0, r8
	bl sub_801769C
	ldrh r1, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r1, r3
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r0, r5, #8
	str r0, [r3, #0x30]
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	mov ip, r6
	lsls r0, r6, #8
	str r0, [r3, #0x34]
	mov r2, r8
	str r2, [r3, #0x10]
	movs r0, #0xb8
	lsls r0, r0, #3
	strh r0, [r3, #0x1a]
	movs r0, #5
	strh r0, [r3, #0x3e]
	ldr r6, _08035004 @ =0x03000040
	adds r1, r1, r6
	movs r0, #0x20
	strh r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	adds r4, r0, #0
	muls r4, r7, r4
	add r4, sl
	str r4, [r1]
	ldr r2, _08035008 @ =gSineTable
	mov r8, r2
	ldr r1, _0803500C @ =0x000001FF
	ands r1, r4
	lsls r0, r1, #1
	add r0, r8
	movs r6, #0
	ldrsh r2, [r0, r6]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #9
	rsbs r0, r0, #0
	asrs r0, r0, #0xe
	strh r0, [r3, #0x3a]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	add r1, r8
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #9
	rsbs r0, r0, #0
	asrs r0, r0, #0xe
	strh r0, [r3, #0x38]
	adds r1, r4, #0
	muls r1, r7, r1
	add r1, sl
	mov r6, sb
	str r1, [r6]
	movs r0, #0x3f
	ands r0, r1
	adds r5, r5, r0
	subs r5, #0x20
	lsls r5, r5, #8
	movs r0, #0xfc
	lsls r0, r0, #0xe
	ands r1, r0
	asrs r1, r1, #0x10
	mov r0, ip
	subs r6, r0, r1
	lsls r6, r6, #8
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_8017540
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034FE8: .4byte gPseudoRandom
_08034FEC: .4byte 0x00196225
_08034FF0: .4byte 0x3C6EF35F
_08034FF4: .4byte gUnknown_080BB434
_08034FF8: .4byte gUnknown_080BB41C
_08034FFC: .4byte gUnknown_080BB42C
_08035000: .4byte sub_80177EC
_08035004: .4byte 0x03000040
_08035008: .4byte gSineTable
_0803500C: .4byte 0x000001FF

	thumb_func_start sub_8035010
sub_8035010: @ 0x08035010
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0803527C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	mov sl, r0
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r0, r0, r5
	mov sb, r0
	ldr r0, _08035280 @ =sub_80352C0
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08035284 @ =sub_8035818
	str r1, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	adds r2, r4, r5
	ldr r1, _08035288 @ =0x0300007C
	add r1, sl
	mov r3, sb
	ldr r0, [r3, #0x6c]
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	movs r5, #0
	strh r0, [r2, #0x3c]
	ldr r1, _0803528C @ =0x0300007E
	add r1, sl
	ldr r0, [r3, #0x70]
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r2, #0x3e]
	movs r0, #0x40
	strh r0, [r2, #0x30]
	adds r7, r2, #0
	movs r0, #2
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	strh r5, [r7, #8]
	ldr r0, _08035290 @ =0x000002AB
	strh r0, [r7, #0xa]
	ldr r0, _08035294 @ =0x03000020
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	strh r5, [r7, #0x14]
	strh r5, [r7, #0x1c]
	ldr r2, _08035298 @ =0x03000021
	adds r1, r4, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r3, _0803529C @ =0x03000022
	adds r1, r4, r3
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _080352A0 @ =0x03000025
	adds r4, r4, r0
	movs r1, #0
	strb r1, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x10]
	movs r6, #0
	movs r2, #0
	mov r8, r2
	adds r3, #0x5a
	add r3, sl
	str r3, [sp, #4]
	ldr r0, _0803528C @ =0x0300007E
	add r0, sl
	str r0, [sp, #8]
_080350BE:
	movs r1, #0x84
	lsls r1, r1, #6
	adds r0, r1, #0
	adds r2, r6, #0
	orrs r2, r0
	ldr r3, _08035284 @ =sub_8035818
	str r3, [sp]
	ldr r0, _080352A4 @ =sub_8035354
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r4, r0
	mov r1, sb
	adds r1, #0x7c
	mov r3, sb
	ldr r0, [r3, #0x6c]
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r2, #0x3c]
	mov r1, sb
	adds r1, #0x7e
	ldr r0, [r3, #0x70]
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r2, #0x3e]
	strh r5, [r2, #0x34]
	strh r5, [r2, #0x36]
	ldr r1, _080352A8 @ =0x03000040
	adds r0, r4, r1
	strb r6, [r0]
	movs r3, #0x40
	strh r3, [r2, #0x30]
	adds r7, r2, #0
	movs r0, #4
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0xc8
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	strh r5, [r7, #8]
	ldr r0, _08035290 @ =0x000002AB
	strh r0, [r7, #0xa]
	ldr r2, _08035294 @ =0x03000020
	adds r1, r4, r2
	movs r0, #2
	strb r0, [r1]
	strh r5, [r7, #0x14]
	strh r5, [r7, #0x1c]
	ldr r3, _08035298 @ =0x03000021
	adds r1, r4, r3
	subs r0, #3
	mov sl, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _0803529C @ =0x03000022
	adds r0, r4, r1
	movs r2, #0x10
	strb r2, [r0]
	adds r3, #4
	adds r4, r4, r3
	mov r0, r8
	strb r0, [r4]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r7, #0x28]
	movs r2, #0x80
	lsls r2, r2, #6
	str r2, [r7, #0x10]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _080350BE
	ldr r0, _080352AC @ =sub_80354F4
	ldr r2, _080352B0 @ =0x00002104
	ldr r3, _08035284 @ =sub_8035818
	str r3, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r4, r0
	mov r1, sb
	ldr r0, [r1, #0x6c]
	asrs r0, r0, #8
	ldr r3, [sp, #4]
	ldrh r3, [r3]
	adds r0, r0, r3
	movs r1, #0
	mov r8, r1
	movs r5, #0
	strh r0, [r2, #0x3c]
	mov r3, sb
	ldr r0, [r3, #0x70]
	asrs r0, r0, #8
	ldr r1, [sp, #8]
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r2, #0x3e]
	strh r5, [r2, #0x34]
	strh r5, [r2, #0x36]
	movs r3, #0x40
	strh r3, [r2, #0x30]
	adds r7, r2, #0
	movs r0, #0x10
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0xb8
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	strh r5, [r7, #8]
	ldr r0, _080352B4 @ =0x000002AD
	strh r0, [r7, #0xa]
	ldr r1, _08035294 @ =0x03000020
	adds r0, r4, r1
	mov r2, r8
	strb r2, [r0]
	strh r5, [r7, #0x14]
	strh r5, [r7, #0x1c]
	ldr r3, _08035298 @ =0x03000021
	adds r1, r4, r3
	ldrb r0, [r1]
	mov r2, sl
	orrs r0, r2
	strb r0, [r1]
	adds r3, #1
	adds r0, r4, r3
	movs r1, #0x10
	strb r1, [r0]
	ldr r2, _080352A0 @ =0x03000025
	adds r4, r4, r2
	mov r3, r8
	strb r3, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r7, #0x10]
	ldr r0, _080352B8 @ =sub_8035768
	ldr r2, _080352BC @ =0x00002105
	ldr r3, _08035284 @ =sub_8035818
	str r3, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r4, r0
	mov r1, sb
	ldr r0, [r1, #0x6c]
	asrs r0, r0, #8
	ldr r3, [sp, #4]
	ldrh r3, [r3]
	adds r0, r0, r3
	strh r0, [r2, #0x3c]
	ldr r0, [r1, #0x70]
	asrs r0, r0, #8
	ldr r1, [sp, #8]
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r2, #0x3e]
	movs r3, #0x40
	strh r3, [r2, #0x30]
	adds r7, r2, #0
	movs r0, #4
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	strh r5, [r7, #8]
	ldr r0, _08035290 @ =0x000002AB
	strh r0, [r7, #0xa]
	ldr r1, _08035294 @ =0x03000020
	adds r0, r4, r1
	mov r2, r8
	strb r2, [r0]
	strh r5, [r7, #0x14]
	strh r5, [r7, #0x1c]
	ldr r3, _08035298 @ =0x03000021
	adds r1, r4, r3
	ldrb r0, [r1]
	mov r2, sl
	orrs r0, r2
	strb r0, [r1]
	adds r3, #1
	adds r0, r4, r3
	movs r1, #0x10
	strb r1, [r0]
	ldr r2, _080352A0 @ =0x03000025
	adds r4, r4, r2
	mov r3, r8
	strb r3, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r7, #0x10]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803527C: .4byte gCurTask
_08035280: .4byte sub_80352C0
_08035284: .4byte sub_8035818
_08035288: .4byte 0x0300007C
_0803528C: .4byte 0x0300007E
_08035290: .4byte 0x000002AB
_08035294: .4byte 0x03000020
_08035298: .4byte 0x03000021
_0803529C: .4byte 0x03000022
_080352A0: .4byte 0x03000025
_080352A4: .4byte sub_8035354
_080352A8: .4byte 0x03000040
_080352AC: .4byte sub_80354F4
_080352B0: .4byte 0x00002104
_080352B4: .4byte 0x000002AD
_080352B8: .4byte sub_8035768
_080352BC: .4byte 0x00002105

	thumb_func_start sub_80352C0
sub_80352C0: @ 0x080352C0
	push {r4, r5, r6, r7, lr}
	movs r5, #0
	ldr r0, _0803534C @ =gCurTask
	ldr r2, [r0]
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r3, r0, r1
	ldrh r0, [r2]
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	adds r7, r0, r1
	adds r4, r3, #0
	ldrh r0, [r4, #0x30]
	cmp r0, #0
	beq _080352EA
	subs r0, #1
	strh r0, [r4, #0x30]
	ldrh r0, [r4, #0x30]
	lsls r0, r0, #8
	lsrs r5, r0, #0xb
_080352EA:
	lsls r1, r5, #0x10
	rsbs r1, r1, #0
	adds r0, r7, #0
	adds r0, #0x80
	ldrh r0, [r0]
	strh r0, [r3, #0x3c]
	adds r0, r7, #0
	adds r0, #0x82
	ldrh r0, [r0]
	strh r0, [r3, #0x3e]
	asrs r1, r1, #0x10
	adds r1, r1, r0
	ldr r2, _08035350 @ =gCamera
	ldrh r0, [r2]
	movs r5, #0x3c
	ldrsh r6, [r3, r5]
	subs r0, r6, r0
	strh r0, [r4, #0x16]
	ldrh r0, [r2, #2]
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	subs r0, r5, r0
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r7, #0
	adds r0, #0x86
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	ble _08035346
	lsls r0, r6, #8
	adds r1, r5, #0
	adds r1, #0x14
	lsls r1, r1, #8
	bl sub_8017540
	ldr r0, _0803534C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08035346:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803534C: .4byte gCurTask
_08035350: .4byte gCamera

	thumb_func_start sub_8035354
sub_8035354: @ 0x08035354
	push {r4, r5, r6, lr}
	ldr r0, _080353A0 @ =gCurTask
	ldr r3, [r0]
	ldrh r2, [r3, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r2, r1
	ldrh r0, [r3]
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	adds r6, r0, r1
	adds r4, r5, #0
	ldrh r0, [r4, #0x30]
	subs r0, #1
	strh r0, [r4, #0x30]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080353A4
	adds r1, #0x40
	adds r0, r2, r1
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r2, r0, #1
	adds r1, r2, #0
	adds r1, #0x15
	ldrh r0, [r4, #0x30]
	lsls r0, r0, #8
	asrs r0, r0, #6
	muls r0, r1, r0
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	subs r0, #0x23
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _080353C0
	.align 2, 0
_080353A0: .4byte gCurTask
_080353A4:
	ldr r1, _08035400 @ =0x03000040
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r1, r0, #3
	subs r0, r1, r0
	lsls r0, r0, #0x11
	movs r2, #0x8c
	lsls r2, r2, #0xe
	adds r0, r0, r2
	lsrs r2, r0, #0x10
	adds r1, #8
	strh r1, [r4, #0x30]
	ldr r0, _08035404 @ =sub_803540C
	str r0, [r3, #8]
_080353C0:
	adds r0, r6, #0
	adds r0, #0x80
	ldrh r0, [r0]
	strh r0, [r5, #0x3c]
	adds r0, r6, #0
	adds r0, #0x82
	ldrh r0, [r0]
	strh r0, [r5, #0x3e]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	ldr r3, _08035408 @ =gCamera
	ldrh r2, [r3]
	movs r6, #0x3c
	ldrsh r0, [r5, r6]
	subs r0, r0, r2
	strh r0, [r4, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08035400: .4byte 0x03000040
_08035404: .4byte sub_803540C
_08035408: .4byte gCamera

	thumb_func_start sub_803540C
sub_803540C: @ 0x0803540C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080354D8 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r6, r1, r2
	ldrh r0, [r0]
	adds r0, r0, r2
	ldrh r4, [r0, #6]
	adds r2, #0x40
	adds r1, r1, r2
	ldrb r0, [r1]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #0x11
	movs r3, #0xd0
	lsls r3, r3, #0xc
	adds r1, r1, r3
	asrs r1, r1, #0x10
	ldr r5, _080354DC @ =gSineTable
	ldr r0, _080354E0 @ =0x0300008A
	adds r3, r4, r0
	movs r2, #0
	ldrsh r0, [r3, r2]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r2, r1, #0
	muls r2, r0, r2
	lsls r2, r2, #2
	ldrh r3, [r3]
	ldr r0, _080354E4 @ =0x000001FF
	ands r0, r3
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r1, r0
	lsls r0, r0, #2
	ldr r5, _080354E8 @ =0x03000080
	adds r1, r4, r5
	ldrh r3, [r1]
	strh r3, [r6, #0x3c]
	adds r5, #2
	adds r1, r4, r5
	ldrh r1, [r1]
	strh r1, [r6, #0x3e]
	asrs r2, r2, #0x10
	adds r2, r2, r3
	asrs r0, r0, #0x10
	adds r0, #0x16
	adds r1, r1, r0
	ldr r3, _080354EC @ =gCamera
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r7, r2, #0x10
	subs r0, r7, r0
	strh r0, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	subs r0, r5, r0
	strh r0, [r6, #0x18]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	ldr r0, _080354F0 @ =0x03000086
	adds r4, r4, r0
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #3
	ble _080354CE
	ldrh r0, [r6, #0x30]
	subs r0, #1
	strh r0, [r6, #0x30]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080354CE
	lsls r0, r7, #8
	lsls r1, r5, #8
	bl sub_8017540
	mov r1, r8
	ldr r0, [r1]
	bl TaskDestroy
_080354CE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080354D8: .4byte gCurTask
_080354DC: .4byte gSineTable
_080354E0: .4byte 0x0300008A
_080354E4: .4byte 0x000001FF
_080354E8: .4byte 0x03000080
_080354EC: .4byte gCamera
_080354F0: .4byte 0x03000086

	thumb_func_start sub_80354F4
sub_80354F4: @ 0x080354F4
	push {r4, r5, r6, lr}
	ldr r0, _08035534 @ =gCurTask
	ldr r2, [r0]
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r0, r1
	ldrh r0, [r2]
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	adds r3, r0, r1
	adds r4, r5, #0
	ldrh r0, [r4, #0x30]
	subs r0, #1
	strh r0, [r4, #0x30]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08035538
	ldrh r0, [r4, #0x30]
	lsls r0, r0, #8
	asrs r0, r0, #6
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #8
	movs r1, #0x63
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	b _08035542
	.align 2, 0
_08035534: .4byte gCurTask
_08035538:
	movs r1, #0x63
	movs r0, #0x3c
	strh r0, [r4, #0x30]
	ldr r0, _08035580 @ =sub_8035588
	str r0, [r2, #8]
_08035542:
	adds r0, r3, #0
	adds r0, #0x80
	ldrh r0, [r0]
	strh r0, [r5, #0x3c]
	adds r0, r3, #0
	adds r0, #0x82
	ldrh r0, [r0]
	strh r0, [r5, #0x3e]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	ldr r3, _08035584 @ =gCamera
	ldrh r2, [r3]
	movs r6, #0x3c
	ldrsh r0, [r5, r6]
	subs r0, r0, r2
	strh r0, [r4, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08035580: .4byte sub_8035588
_08035584: .4byte gCamera

	thumb_func_start sub_8035588
sub_8035588: @ 0x08035588
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08035654 @ =gCurTask
	ldr r5, [r0]
	ldrh r0, [r5, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	mov r8, r0
	ldrh r0, [r5]
	adds r0, r0, r1
	ldrh r3, [r0, #6]
	adds r1, r3, r1
	str r1, [sp]
	mov sb, r8
	movs r0, #0x4d
	mov sl, r0
	ldr r4, _08035658 @ =gSineTable
	ldr r1, _0803565C @ =0x0300008A
	adds r2, r3, r1
	movs r6, #0
	ldrsh r0, [r2, r6]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r6, #0
	ldrsh r0, [r0, r6]
	mov r1, sl
	muls r1, r0, r1
	ldrh r2, [r2]
	ldr r0, _08035660 @ =0x000001FF
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov r2, sl
	muls r2, r0, r2
	ldr r4, _08035664 @ =0x03000080
	adds r0, r3, r4
	ldrh r4, [r0]
	mov r6, r8
	strh r4, [r6, #0x3c]
	ldr r6, _08035668 @ =0x03000082
	adds r0, r3, r6
	ldrh r0, [r0]
	mov r6, r8
	strh r0, [r6, #0x3e]
	asrs r1, r1, #0xe
	adds r1, r1, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	asrs r2, r2, #0xe
	adds r2, #0x16
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r0, _0803566C @ =0x03000086
	adds r3, r3, r0
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #3
	bgt _080356B0
	ldrh r0, [r5, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	ldr r2, [sp, #4]
	lsls r0, r2, #0x10
	asrs r5, r0, #0x10
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r4, r0, #0x10
	ldr r3, _08035670 @ =gPlayer
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	adds r7, r0, #0
	ldr r0, _08035674 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0803567C
	ldr r3, _08035678 @ =gUnknown_03005AB0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	b _0803567E
	.align 2, 0
_08035654: .4byte gCurTask
_08035658: .4byte gSineTable
_0803565C: .4byte 0x0300008A
_08035660: .4byte 0x000001FF
_08035664: .4byte 0x03000080
_08035668: .4byte 0x03000082
_0803566C: .4byte 0x03000086
_08035670: .4byte gPlayer
_08035674: .4byte gUnknown_03005088
_08035678: .4byte gUnknown_03005AB0
_0803567C:
	movs r0, #0
_0803567E:
	cmp r7, #2
	beq _08035686
	cmp r0, #2
	bne _080356B0
_08035686:
	ldr r0, _08035744 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r0, r0, r4
	ldrh r1, [r0, #6]
	ldr r6, _08035748 @ =0x0300003C
	adds r3, r1, r6
	ldr r0, _0803574C @ =0x0300005C
	adds r2, r1, r0
	movs r0, #1
	strb r0, [r2]
	ldr r2, _08035750 @ =0x0300005D
	adds r1, r1, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _08035754 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
_080356B0:
	ldr r2, _08035758 @ =gCamera
	ldrh r0, [r2]
	ldr r3, [sp, #4]
	lsls r1, r3, #0x10
	asrs r4, r1, #0x10
	subs r0, r4, r0
	mov r6, sb
	strh r0, [r6, #0x16]
	ldrh r0, [r2, #2]
	mov r2, sl
	lsls r1, r2, #0x10
	asrs r5, r1, #0x10
	subs r0, r5, r0
	strh r0, [r6, #0x18]
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, sb
	bl DisplaySprite
	ldr r0, [sp]
	adds r0, #0x86
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	ble _08035732
	mov r3, r8
	ldrh r1, [r3, #0x30]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0803571C
	ldr r2, _0803575C @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _08035760 @ =0x00196225
	muls r1, r0, r1
	ldr r6, _08035764 @ =0x3C6EF35F
	adds r1, r1, r6
	str r1, [r2]
	movs r0, #0x1f
	ands r0, r1
	adds r0, r4, r0
	subs r0, #0xf
	lsls r0, r0, #8
	movs r2, #0xf8
	lsls r2, r2, #0xd
	ands r1, r2
	asrs r1, r1, #0x10
	adds r1, r5, r1
	subs r1, #0xf
	lsls r1, r1, #8
	bl sub_8017540
_0803571C:
	mov r1, r8
	ldrh r0, [r1, #0x30]
	subs r0, #1
	strh r0, [r1, #0x30]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08035732
	ldr r0, _08035744 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08035732:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035744: .4byte gCurTask
_08035748: .4byte 0x0300003C
_0803574C: .4byte 0x0300005C
_08035750: .4byte 0x0300005D
_08035754: .4byte 0xFFFFBFFF
_08035758: .4byte gCamera
_0803575C: .4byte gPseudoRandom
_08035760: .4byte 0x00196225
_08035764: .4byte 0x3C6EF35F

	thumb_func_start sub_8035768
sub_8035768: @ 0x08035768
	push {r4, r5, r6, lr}
	ldr r0, _080357A0 @ =gCurTask
	ldr r2, [r0]
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r0, r1
	ldrh r0, [r2]
	adds r0, r0, r1
	ldrh r6, [r0, #6]
	adds r3, r6, r1
	adds r1, #0x8c
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080357E4
	ldr r0, [r3, #0x74]
	cmp r0, #0
	beq _080357E4
	ldr r1, [r3, #0x6c]
	movs r0, #0x96
	lsls r0, r0, #9
	cmp r1, r0
	ble _080357A4
	adds r0, r2, #0
	bl TaskDestroy
	b _080357E4
	.align 2, 0
_080357A0: .4byte gCurTask
_080357A4:
	ldr r2, [r5, #0x10]
	ldr r0, _080357EC @ =0xFFFFFBFF
	ands r2, r0
	str r2, [r5, #0x10]
	ldr r0, [r3, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	orrs r2, r0
	str r2, [r5, #0x10]
	ldr r0, _080357F0 @ =0x03000080
	adds r4, r6, r0
	ldr r1, _080357F4 @ =0x03000082
	adds r0, r6, r1
	ldrh r1, [r0]
	ldr r3, _080357F8 @ =gCamera
	ldrh r2, [r3]
	movs r6, #0
	ldrsh r0, [r4, r6]
	subs r0, r0, r2
	strh r0, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_080357E4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080357EC: .4byte 0xFFFFFBFF
_080357F0: .4byte 0x03000080
_080357F4: .4byte 0x03000082
_080357F8: .4byte gCamera

	thumb_func_start sub_80357FC
sub_80357FC: @ 0x080357FC
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x10]
	bl VramFree
	ldr r0, [r4, #0x40]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8035818
sub_8035818: @ 0x08035818
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_803582C
sub_803582C: @ 0x0803582C
	push {r4, r5, r6, r7, lr}
	ldr r2, _0803586C @ =gCurTask
	ldr r2, [r2]
	ldrh r3, [r2, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r6, r3, r2
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	ldr r3, _08035870 @ =gPlayer
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	adds r7, r0, #0
	ldr r0, _08035874 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0803587C
	ldr r3, _08035878 @ =gUnknown_03005AB0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	b _0803587E
	.align 2, 0
_0803586C: .4byte gCurTask
_08035870: .4byte gPlayer
_08035874: .4byte gUnknown_03005088
_08035878: .4byte gUnknown_03005AB0
_0803587C:
	movs r0, #0
_0803587E:
	cmp r7, #2
	beq _08035886
	cmp r0, #2
	bne _080358B0
_08035886:
	ldr r0, _080358B8 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldrh r1, [r0, #6]
	ldr r0, _080358BC @ =0x0300003C
	adds r3, r1, r0
	adds r0, #0x20
	adds r2, r1, r0
	movs r0, #1
	strb r0, [r2]
	ldr r0, _080358C0 @ =0x0300005D
	adds r1, r1, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _080358C4 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
_080358B0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080358B8: .4byte gCurTask
_080358BC: .4byte 0x0300003C
_080358C0: .4byte 0x0300005D
_080358C4: .4byte 0xFFFFBFFF

	thumb_func_start sub_80358C8
sub_80358C8: @ 0x080358C8
	ldr r0, _080358F8 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	ldr r0, _080358FC @ =0x0300003C
	adds r1, r2, r0
	adds r0, #0x20
	adds r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq _080358F4
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080358F4
	movs r0, #0
	strb r0, [r3]
	ldr r0, _08035900 @ =0x0300005D
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
_080358F4:
	bx lr
	.align 2, 0
_080358F8: .4byte gCurTask
_080358FC: .4byte 0x0300003C
_08035900: .4byte 0x0300005D

	thumb_func_start sub_8035904
sub_8035904: @ 0x08035904
	ldr r0, _08035928 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r2, _0803592C @ =0x0300000C
	adds r1, r0, r2
	ldr r3, _08035930 @ =0x0300003C
	adds r2, r0, r3
	ldrh r0, [r1, #0x16]
	strh r0, [r2, #0x16]
	ldrh r3, [r1, #0x18]
	strh r3, [r2, #0x18]
	ldrh r1, [r2, #0xa]
	ldr r0, _08035934 @ =0x000002B6
	cmp r1, r0
	bne _08035926
	subs r0, r3, #3
	strh r0, [r2, #0x18]
_08035926:
	bx lr
	.align 2, 0
_08035928: .4byte gCurTask
_0803592C: .4byte 0x0300000C
_08035930: .4byte 0x0300003C
_08035934: .4byte 0x000002B6

	thumb_func_start sub_8035938
sub_8035938: @ 0x08035938
	push {r4, lr}
	ldr r2, _08035960 @ =gCurTask
	ldr r2, [r2]
	ldrh r2, [r2, #6]
	ldr r3, _08035964 @ =0x0300000C
	adds r2, r2, r3
	ldr r4, _08035968 @ =gCamera
	ldrh r3, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r3
	strh r0, [r2, #0x16]
	ldrh r0, [r4, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r2, #0x18]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08035960: .4byte gCurTask
_08035964: .4byte 0x0300000C
_08035968: .4byte gCamera

	thumb_func_start sub_803596C
sub_803596C: @ 0x0803596C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r0, _08035A30 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	ldr r0, _08035A34 @ =0x0300000C
	adds r5, r4, r0
	ldr r0, [r5, #0x10]
	ldr r1, _08035A38 @ =0xFFFFFE7F
	ands r0, r1
	str r0, [r5, #0x10]
	ldr r1, _08035A3C @ =gPlayer
	mov r8, r1
	ldr r3, [r1, #0x10]
	movs r0, #0x80
	ands r3, r0
	cmp r3, #0
	bne _080359B0
	ldr r2, _08035A40 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08035A44 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08035A48 @ =gWinRegs
	strh r3, [r0, #0xa]
	ldr r0, _08035A4C @ =gBldRegs
	strh r3, [r0]
	strh r3, [r0, #4]
_080359B0:
	ldr r0, _08035A50 @ =0x03000087
	adds r0, r0, r4
	mov sb, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08035A92
	lsls r0, r7, #0x10
	asrs r7, r0, #0x10
	lsls r0, r6, #0x10
	asrs r6, r0, #0x10
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	mov r3, r8
	bl sub_800B8B4
	mov r8, r0
	movs r1, #0
	ldr r0, _08035A54 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _080359F2
	ldr r3, _08035A58 @ =gUnknown_03005AB0
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_800B8B4
	adds r1, r0, #0
_080359F2:
	ldr r0, _08035A5C @ =0x0300003C
	adds r2, r4, r0
	mov r0, r8
	cmp r0, #1
	beq _08035A00
	cmp r1, #1
	bne _08035A70
_08035A00:
	ldr r0, _08035A60 @ =0x03000086
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0x20
	mov r1, sb
	strb r0, [r1]
	ldr r0, _08035A64 @ =0x0300005C
	adds r1, r4, r0
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08035A68 @ =0x0300005D
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r2, #0x10]
	ldr r1, _08035A6C @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x10]
	movs r0, #0x8f
	bl m4aSongNumStart
	b _08035A92
	.align 2, 0
_08035A30: .4byte gCurTask
_08035A34: .4byte 0x0300000C
_08035A38: .4byte 0xFFFFFE7F
_08035A3C: .4byte gPlayer
_08035A40: .4byte gDispCnt
_08035A44: .4byte 0x00007FFF
_08035A48: .4byte gWinRegs
_08035A4C: .4byte gBldRegs
_08035A50: .4byte 0x03000087
_08035A54: .4byte gUnknown_03005088
_08035A58: .4byte gUnknown_03005AB0
_08035A5C: .4byte 0x0300003C
_08035A60: .4byte 0x03000086
_08035A64: .4byte 0x0300005C
_08035A68: .4byte 0x0300005D
_08035A6C: .4byte 0xFFFFBFFF
_08035A70:
	mov r0, r8
	cmp r0, #2
	beq _08035A7A
	cmp r1, #2
	bne _08035A92
_08035A7A:
	ldr r0, _08035AA0 @ =0x0300005C
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08035AA4 @ =0x0300005D
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r2, #0x10]
	ldr r1, _08035AA8 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x10]
_08035A92:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035AA0: .4byte 0x0300005C
_08035AA4: .4byte 0x0300005D
_08035AA8: .4byte 0xFFFFBFFF

	thumb_func_start sub_8035AAC
sub_8035AAC: @ 0x08035AAC
	push {r4, r5, lr}
	ldr r0, _08035B24 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _08035B28 @ =0x0300000C
	adds r3, r0, r1
	ldr r5, _08035B2C @ =0x0300003C
	adds r4, r0, r5
	adds r1, #0x7b
	adds r2, r0, r1
	ldrb r1, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _08035B10
	subs r1, #1
	strb r1, [r2]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x10
	ble _08035B10
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _08035B10
	ldr r0, _08035B30 @ =gPlayer
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08035B10
	ldr r0, [r3, #0x10]
	adds r1, #0x80
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r2, _08035B34 @ =gDispCnt
	ldrh r0, [r2]
	movs r5, #0x80
	lsls r5, r5, #8
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08035B38 @ =gWinRegs
	ldr r0, _08035B3C @ =0x00003F1F
	strh r0, [r1, #0xa]
	ldr r1, _08035B40 @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
_08035B10:
	adds r0, r3, #0
	bl DisplaySprite
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08035B24: .4byte gCurTask
_08035B28: .4byte 0x0300000C
_08035B2C: .4byte 0x0300003C
_08035B30: .4byte gPlayer
_08035B34: .4byte gDispCnt
_08035B38: .4byte gWinRegs
_08035B3C: .4byte 0x00003F1F
_08035B40: .4byte gBldRegs

@ --- Start of Sonic 2 - Emerald Hill Boss
	thumb_func_start CreateEntity_EggDrillster
CreateEntity_EggDrillster: @ 0x08035B44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	lsls r3, r3, #0x18
	lsrs r4, r3, #0x18
	ldr r0, _08035B80 @ =gUnknown_03005148
	ldrb r7, [r0]
	cmp r7, #0
	beq _08035B6C
	b _08035CC2
_08035B6C:
	ldr r0, _08035B84 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _08035B88
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	b _08035CC2
	.align 2, 0
_08035B80: .4byte gUnknown_03005148
_08035B84: .4byte gGameMode
_08035B88:
	ldr r0, _08035CD4 @ =sub_8035D18
	ldr r1, _08035CD8 @ =sub_8036CC4
	str r1, [sp]
	movs r1, #0x90
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r5, r1
	movs r3, #0
	mov r2, r8
	strh r2, [r1, #4]
	mov r0, sl
	strh r0, [r1, #6]
	str r6, [r1]
	ldrb r0, [r6]
	strb r0, [r1, #8]
	strb r4, [r1, #9]
	ldr r4, _08035CDC @ =0x03000084
	adds r2, r5, r4
	movs r0, #0x78
	strh r0, [r2]
	ldr r2, _08035CE0 @ =0x03000086
	adds r0, r5, r2
	strb r3, [r0]
	adds r4, #3
	adds r0, r5, r4
	strb r3, [r0]
	adds r2, #7
	adds r0, r5, r2
	strb r3, [r0]
	adds r4, #5
	adds r0, r5, r4
	strb r3, [r0]
	ldr r0, _08035CE4 @ =0x0000C020
	str r0, [r1, #0x6c]
	ldr r0, _08035CE8 @ =0xFFFFD800
	str r0, [r1, #0x70]
	str r7, [r1, #0x74]
	str r7, [r1, #0x78]
	ldr r1, _08035CEC @ =0x03000088
	adds r0, r5, r1
	strh r7, [r0]
	subs r2, #3
	adds r0, r5, r2
	strh r7, [r0]
	ldrb r0, [r6]
	lsls r0, r0, #3
	mov r4, r8
	lsls r4, r4, #8
	mov sb, r4
	add r0, sb
	subs r1, #0xc
	adds r2, r5, r1
	strh r0, [r2]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	mov r4, sl
	lsls r4, r4, #8
	mov sl, r4
	add r0, sl
	ldr r4, _08035CF0 @ =0x0300007E
	adds r1, r5, r4
	strh r0, [r1]
	ldr r0, _08035CF4 @ =0x0300000C
	adds r4, r5, r0
	ldrh r0, [r2]
	strh r0, [r4, #0x16]
	ldrh r0, [r1]
	strh r0, [r4, #0x18]
	movs r0, #0x36
	str r3, [sp, #4]
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0xb0
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	strh r7, [r4, #8]
	ldr r0, _08035CF8 @ =0x000002AA
	strh r0, [r4, #0xa]
	ldr r1, _08035CFC @ =0x0300002C
	adds r0, r5, r1
	ldr r3, [sp, #4]
	strb r3, [r0]
	strh r7, [r4, #0x14]
	strh r7, [r4, #0x1c]
	ldr r2, _08035D00 @ =0x0300002D
	adds r1, r5, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08035D04 @ =0x0300002E
	adds r0, r5, r1
	movs r2, #0x10
	strb r2, [r0]
	adds r1, #3
	adds r0, r5, r1
	strb r3, [r0]
	movs r2, #1
	rsbs r2, r2, #0
	mov r8, r2
	str r2, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	adds r1, #0xb
	adds r4, r5, r1
	ldrb r0, [r6]
	lsls r0, r0, #3
	add r0, sb
	strh r0, [r4, #0x16]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	add r0, sl
	strh r0, [r4, #0x18]
	subs r2, #1
	adds r0, r2, #0
	strb r0, [r6]
	movs r0, #8
	str r3, [sp, #4]
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0xa8
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	strh r7, [r4, #8]
	movs r0, #0xaa
	lsls r0, r0, #2
	strh r0, [r4, #0xa]
	ldr r1, _08035D08 @ =0x0300005C
	adds r0, r5, r1
	ldr r3, [sp, #4]
	strb r3, [r0]
	strh r7, [r4, #0x14]
	strh r7, [r4, #0x1c]
	ldr r2, _08035D0C @ =0x0300005D
	adds r1, r5, r2
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08035D10 @ =0x0300005E
	adds r0, r5, r1
	movs r2, #0x10
	strb r2, [r0]
	ldr r0, _08035D14 @ =0x03000061
	adds r5, r5, r0
	strb r3, [r5]
	mov r1, r8
	str r1, [r4, #0x28]
	movs r2, #0x80
	lsls r2, r2, #6
	str r2, [r4, #0x10]
_08035CC2:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035CD4: .4byte sub_8035D18
_08035CD8: .4byte sub_8036CC4
_08035CDC: .4byte 0x03000084
_08035CE0: .4byte 0x03000086
_08035CE4: .4byte 0x0000C020
_08035CE8: .4byte 0xFFFFD800
_08035CEC: .4byte 0x03000088
_08035CF0: .4byte 0x0300007E
_08035CF4: .4byte 0x0300000C
_08035CF8: .4byte 0x000002AA
_08035CFC: .4byte 0x0300002C
_08035D00: .4byte 0x0300002D
_08035D04: .4byte 0x0300002E
_08035D08: .4byte 0x0300005C
_08035D0C: .4byte 0x0300005D
_08035D10: .4byte 0x0300005E
_08035D14: .4byte 0x03000061

	thumb_func_start sub_8035D18
sub_8035D18: @ 0x08035D18
	push {r4, r5, r6, lr}
	ldr r0, _08035D38 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0x8d
	adds r4, r1, r0
	ldrb r0, [r4]
	cmp r0, #0
	beq _08035D3C
	cmp r0, #1
	beq _08035D68
	b _08035D90
	.align 2, 0
_08035D38: .4byte gCurTask
_08035D3C:
	ldr r6, _08035D60 @ =0x0300007C
	adds r2, r1, r6
	movs r1, #0
	ldrsh r0, [r2, r1]
	subs r0, #0x78
	ldr r3, _08035D64 @ =gCamera
	movs r6, #0
	ldrsh r1, [r3, r6]
	cmp r0, r1
	bgt _08035D90
	ldrh r0, [r2]
	subs r0, #0x98
	strh r0, [r3, #0x18]
	ldrh r0, [r2]
	adds r0, #0x98
	strh r0, [r3, #0x1a]
	movs r0, #1
	b _08035D8E
	.align 2, 0
_08035D60: .4byte 0x0300007C
_08035D64: .4byte gCamera
_08035D68:
	ldr r0, _08035DBC @ =0x0300007E
	adds r2, r1, r0
	movs r1, #0
	ldrsh r3, [r2, r1]
	adds r0, r3, #0
	subs r0, #0xe0
	ldr r1, _08035DC0 @ =gCamera
	movs r6, #2
	ldrsh r1, [r1, r6]
	cmp r0, r1
	bgt _08035D90
	ldrh r0, [r2]
	subs r0, #0xa0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r3, #0
	bl sub_80174DC
	movs r0, #2
_08035D8E:
	strb r0, [r4]
_08035D90:
	adds r1, r5, #0
	adds r1, #0x8d
	ldrb r0, [r1]
	cmp r0, #2
	bne _08035DB4
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08035DC4 @ =0xFFFFFE80
	str r0, [r5, #0x74]
	bl sub_80365AC
	ldr r0, _08035DC8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08035DCC @ =sub_8035DD4
	str r0, [r1, #8]
	ldr r1, _08035DD0 @ =gUnknown_03005040
	movs r0, #0x15
	strb r0, [r1, #1]
_08035DB4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08035DBC: .4byte 0x0300007E
_08035DC0: .4byte gCamera
_08035DC4: .4byte 0xFFFFFE80
_08035DC8: .4byte gCurTask
_08035DCC: .4byte sub_8035DD4
_08035DD0: .4byte gUnknown_03005040

	thumb_func_start sub_8035DD4
sub_8035DD4: @ 0x08035DD4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08035E88 @ =gCurTask
	mov sb, r0
	ldr r4, [r0]
	ldrh r6, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r6, r0
	ldr r1, _08035E8C @ =0x0300000C
	adds r0, r6, r1
	ldr r5, _08035E90 @ =0x0300003C
	adds r5, r5, r6
	mov r8, r5
	ldr r1, [r7, #0x6c]
	ldr r2, [r7, #0x74]
	adds r1, r1, r2
	str r1, [r7, #0x6c]
	ldr r2, [r7, #0x70]
	ldr r3, [r7, #0x78]
	adds r2, r2, r3
	str r2, [r7, #0x70]
	ldr r5, _08035E94 @ =0x0300007C
	adds r3, r6, r5
	asrs r1, r1, #8
	ldrh r3, [r3]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r5, #2
	adds r3, r6, r5
	asrs r2, r2, #8
	ldrh r3, [r3]
	adds r2, r2, r3
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r5, #2
	adds r3, r6, r5
	movs r5, #0
	mov sl, r5
	strh r1, [r3]
	ldr r5, _08035E98 @ =0x03000082
	adds r3, r6, r5
	strh r2, [r3]
	ldrh r3, [r4, #6]
	ldr r4, _08035E8C @ =0x0300000C
	adds r3, r3, r4
	ldr r5, _08035E9C @ =gCamera
	ldrh r4, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r4
	strh r1, [r3, #0x16]
	ldrh r1, [r5, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r1
	strh r2, [r3, #0x18]
	bl UpdateSpriteAnimation
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r5, sb
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	ldr r1, _08035E8C @ =0x0300000C
	adds r2, r0, r1
	ldr r4, _08035E90 @ =0x0300003C
	adds r0, r0, r4
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	bl sub_8035AAC
	ldr r5, _08035EA0 @ =0x0300008D
	adds r3, r6, r5
	ldrb r2, [r3]
	cmp r2, #1
	beq _08035EC4
	cmp r2, #1
	bgt _08035EA4
	cmp r2, #0
	beq _08035EAE
	b _08035F50
	.align 2, 0
_08035E88: .4byte gCurTask
_08035E8C: .4byte 0x0300000C
_08035E90: .4byte 0x0300003C
_08035E94: .4byte 0x0300007C
_08035E98: .4byte 0x03000082
_08035E9C: .4byte gCamera
_08035EA0: .4byte 0x0300008D
_08035EA4:
	cmp r2, #2
	beq _08035EF0
	cmp r2, #3
	beq _08035F28
	b _08035F50
_08035EAE:
	ldr r0, [r7, #0x6c]
	cmp r0, #0
	bgt _08035F50
	str r2, [r7, #0x6c]
	str r2, [r7, #0x74]
	str r2, [r7, #0x78]
	ldr r0, _08035EC0 @ =0x03000084
	adds r1, r6, r0
	b _08035F12
	.align 2, 0
_08035EC0: .4byte 0x03000084
_08035EC4:
	ldr r4, _08035EE4 @ =0x03000084
	adds r1, r6, r4
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08035F50
	ldr r5, _08035EE8 @ =0x0300005C
	adds r0, r6, r5
	strb r2, [r0]
	ldr r0, _08035EEC @ =0x0300005D
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
	b _08035F16
	.align 2, 0
_08035EE4: .4byte 0x03000084
_08035EE8: .4byte 0x0300005C
_08035EEC: .4byte 0x0300005D
_08035EF0:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08035F50
	ldr r4, _08035F20 @ =0x0300005C
	adds r0, r6, r4
	mov r5, sl
	strb r5, [r0]
	ldr r0, _08035F24 @ =0x0300005D
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
	adds r4, #0x28
	adds r1, r6, r4
_08035F12:
	movs r0, #0xf
	strh r0, [r1]
_08035F16:
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	b _08035F50
	.align 2, 0
_08035F20: .4byte 0x0300005C
_08035F24: .4byte 0x0300005D
_08035F28:
	ldr r5, _08035F60 @ =0x03000084
	adds r1, r6, r5
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08035F50
	ldr r0, _08035F64 @ =0xFFFFFE00
	str r0, [r7, #0x74]
	ldr r0, _08035F68 @ =0x0300008C
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
	mov r1, sl
	strb r1, [r3]
	mov r4, sb
	ldr r1, [r4]
	ldr r0, _08035F6C @ =sub_8035F70
	str r0, [r1, #8]
_08035F50:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035F60: .4byte 0x03000084
_08035F64: .4byte 0xFFFFFE00
_08035F68: .4byte 0x0300008C
_08035F6C: .4byte sub_8035F70

	thumb_func_start sub_8035F70
sub_8035F70: @ 0x08035F70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08035FF0 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r1, _08035FF4 @ =0x0300000C
	adds r1, r1, r4
	mov r8, r1
	ldr r3, _08035FF8 @ =0x0300003C
	adds r3, r3, r4
	mov sb, r3
	ldr r1, [r5, #0x6c]
	ldr r0, [r5, #0x74]
	adds r1, r1, r0
	str r1, [r5, #0x6c]
	ldr r0, [r5, #0x70]
	ldr r2, [r5, #0x78]
	adds r0, r0, r2
	str r0, [r5, #0x70]
	ldr r3, _08035FFC @ =0x0300007C
	adds r2, r4, r3
	asrs r1, r1, #8
	ldrh r2, [r2]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r3, #2
	adds r2, r4, r3
	asrs r0, r0, #8
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, #2
	adds r2, r4, r3
	strh r1, [r2]
	adds r3, #2
	adds r2, r4, r3
	strh r0, [r2]
	lsls r1, r1, #0x10
	asrs r6, r1, #0x10
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_803596C
	ldr r0, _08036000 @ =0x03000086
	adds r4, r4, r0
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #3
	ble _08036004
	bl sub_8036150
	b _08036138
	.align 2, 0
_08035FF0: .4byte gCurTask
_08035FF4: .4byte 0x0300000C
_08035FF8: .4byte 0x0300003C
_08035FFC: .4byte 0x0300007C
_08036000: .4byte 0x03000086
_08036004:
	mov r1, sl
	ldr r3, [r1]
	ldrh r1, [r3, #6]
	ldr r0, _08036080 @ =0x0300000C
	adds r1, r1, r0
	ldr r2, _08036084 @ =gCamera
	ldrh r0, [r2]
	subs r0, r6, r0
	strh r0, [r1, #0x16]
	ldrh r0, [r2, #2]
	subs r0, r7, r0
	strh r0, [r1, #0x18]
	ldrh r3, [r3, #6]
	ldr r0, _08036088 @ =0x0300003C
	adds r1, r3, r0
	adds r0, #0x20
	adds r2, r3, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _08036044
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08036044
	movs r0, #0
	strb r0, [r2]
	ldr r0, _0803608C @ =0x0300005D
	adds r1, r3, r0
	movs r0, #0xff
	strb r0, [r1]
_08036044:
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, sb
	bl UpdateSpriteAnimation
	ldr r0, _08036090 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	ldr r3, _08036080 @ =0x0300000C
	adds r2, r1, r3
	ldr r0, _08036088 @ =0x0300003C
	adds r1, r1, r0
	ldrh r0, [r2, #0x16]
	movs r4, #0
	strh r0, [r1, #0x16]
	ldrh r0, [r2, #0x18]
	strh r0, [r1, #0x18]
	bl sub_8035AAC
	adds r2, r5, #0
	adds r2, #0x8d
	ldrb r0, [r2]
	cmp r0, #1
	beq _080360BC
	cmp r0, #1
	bgt _08036094
	cmp r0, #0
	beq _0803609E
	b _08036138
	.align 2, 0
_08036080: .4byte 0x0300000C
_08036084: .4byte gCamera
_08036088: .4byte 0x0300003C
_0803608C: .4byte 0x0300005D
_08036090: .4byte gCurTask
_08036094:
	cmp r0, #2
	beq _080360EE
	cmp r0, #3
	beq _0803610C
	b _08036138
_0803609E:
	ldr r1, [r5, #0x6c]
	ldr r0, _080360B8 @ =0xFFFF4000
	cmp r1, r0
	bgt _08036138
	str r4, [r5, #0x74]
	adds r1, r5, #0
	adds r1, #0x84
	movs r0, #0x1e
	strh r0, [r1]
	ldrb r0, [r2]
	adds r0, #1
	b _08036136
	.align 2, 0
_080360B8: .4byte 0xFFFF4000
_080360BC:
	adds r1, r5, #0
	adds r1, #0x84
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08036138
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r5, #0x74]
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	mov r3, r8
	str r0, [r3, #0x10]
	mov r3, sb
	ldr r0, [r3, #0x10]
	orrs r0, r1
	str r0, [r3, #0x10]
	ldrb r0, [r2]
	adds r0, #1
	b _08036136
_080360EE:
	ldr r1, [r5, #0x6c]
	ldr r0, _08036108 @ =0x0000BFFF
	cmp r1, r0
	ble _08036138
	str r4, [r5, #0x74]
	adds r1, r5, #0
	adds r1, #0x84
	movs r0, #0x1e
	strh r0, [r1]
	ldrb r0, [r2]
	adds r0, #1
	b _08036136
	.align 2, 0
_08036108: .4byte 0x0000BFFF
_0803610C:
	adds r1, r5, #0
	adds r1, #0x84
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08036138
	ldr r0, _08036148 @ =0xFFFFFE00
	str r0, [r5, #0x74]
	mov r1, r8
	ldr r0, [r1, #0x10]
	ldr r1, _0803614C @ =0xFFFFFBFF
	ands r0, r1
	mov r3, r8
	str r0, [r3, #0x10]
	mov r3, sb
	ldr r0, [r3, #0x10]
	ands r0, r1
	str r0, [r3, #0x10]
	movs r0, #0
_08036136:
	strb r0, [r2]
_08036138:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036148: .4byte 0xFFFFFE00
_0803614C: .4byte 0xFFFFFBFF

	thumb_func_start sub_8036150
sub_8036150: @ 0x08036150
	push {r4, r5, r6, lr}
	ldr r0, _080361FC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r1, r2
	ldr r0, _08036200 @ =0x0300000C
	adds r4, r1, r0
	adds r0, #0x81
	adds r3, r1, r0
	movs r0, #0
	strb r0, [r3]
	str r0, [r2, #0x74]
	str r0, [r2, #0x78]
	ldr r0, _08036204 @ =0x0300005C
	adds r2, r1, r0
	movs r0, #2
	strb r0, [r2]
	ldr r2, _08036208 @ =0x0300005D
	adds r1, r1, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _0803620C @ =gCamera
	ldrh r0, [r1]
	strh r0, [r1, #0x18]
	adds r0, #0xf0
	strh r0, [r1, #0x1a]
	movs r0, #0x90
	bl m4aSongNumStart
	ldr r0, [r4, #0x10]
	ldr r1, _08036210 @ =0xFFFFFE7F
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r0, _08036214 @ =gPlayer
	ldr r3, [r0, #0x10]
	movs r0, #0x80
	ands r3, r0
	cmp r3, #0
	bne _080361B6
	ldr r2, _08036218 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0803621C @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08036220 @ =gWinRegs
	strh r3, [r0, #0xa]
	ldr r0, _08036224 @ =gBldRegs
	strh r3, [r0]
	strh r3, [r0, #4]
_080361B6:
	ldr r1, _08036228 @ =gLevelScore
	ldr r6, [r1]
	movs r2, #0xfa
	lsls r2, r2, #2
	adds r0, r6, r2
	str r0, [r1]
	ldr r4, _0803622C @ =0x0000C350
	adds r1, r4, #0
	bl Div
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl Div
	cmp r5, r0
	beq _080361E8
	ldr r0, _08036230 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _080361E8
	ldr r1, _08036234 @ =gNumLives
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_080361E8:
	bl sub_803623C
	ldr r0, _080361FC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08036238 @ =sub_803623C
	str r0, [r1, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080361FC: .4byte gCurTask
_08036200: .4byte 0x0300000C
_08036204: .4byte 0x0300005C
_08036208: .4byte 0x0300005D
_0803620C: .4byte gCamera
_08036210: .4byte 0xFFFFFE7F
_08036214: .4byte gPlayer
_08036218: .4byte gDispCnt
_0803621C: .4byte 0x00007FFF
_08036220: .4byte gWinRegs
_08036224: .4byte gBldRegs
_08036228: .4byte gLevelScore
_0803622C: .4byte 0x0000C350
_08036230: .4byte gGameMode
_08036234: .4byte gNumLives
_08036238: .4byte sub_803623C

	thumb_func_start sub_803623C
sub_803623C: @ 0x0803623C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r4, _08036334 @ =gCurTask
	ldr r0, [r4]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
	adds r0, #0xc
	adds r6, r3, r0
	ldr r1, _08036338 @ =0x0300003C
	adds r1, r1, r3
	mov r8, r1
	ldr r2, _0803633C @ =0x0300008D
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0803631C
	cmp r0, #0
	bne _08036272
	ldr r0, [r5, #0x78]
	adds r0, #0x10
	str r0, [r5, #0x78]
_08036272:
	ldr r0, [r5, #0x6c]
	ldr r1, [r5, #0x74]
	adds r0, r0, r1
	str r0, [r5, #0x6c]
	ldr r1, [r5, #0x70]
	ldr r2, [r5, #0x78]
	adds r1, r1, r2
	str r1, [r5, #0x70]
	ldr r7, _08036340 @ =0x0300007C
	adds r2, r3, r7
	asrs r0, r0, #8
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r2, _08036344 @ =0x0300007E
	adds r0, r3, r2
	asrs r1, r1, #8
	ldrh r0, [r0]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	adds r7, #4
	adds r0, r3, r7
	mov r1, sl
	strh r1, [r0]
	adds r2, #4
	adds r0, r3, r2
	mov r7, sb
	strh r7, [r0]
	ldr r1, _08036348 @ =0x03000084
	adds r0, r3, r1
	ldrh r1, [r0]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080362D0
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov r3, sb
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	bl sub_8036478
_080362D0:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	mov r0, r8
	bl UpdateSpriteAnimation
	ldr r4, [r4]
	ldrh r1, [r4, #6]
	ldr r7, _0803634C @ =0x0300000C
	adds r1, r1, r7
	ldr r3, _08036350 @ =gCamera
	ldrh r2, [r3]
	mov r7, sl
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	strh r0, [r1, #0x16]
	ldrh r2, [r3, #2]
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	strh r0, [r1, #0x18]
	ldrh r0, [r4, #6]
	ldr r7, _0803634C @ =0x0300000C
	adds r2, r0, r7
	ldr r1, _08036338 @ =0x0300003C
	adds r0, r0, r1
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	adds r0, r6, #0
	bl DisplaySprite
	mov r0, r8
	bl DisplaySprite
_0803631C:
	movs r2, #0x8d
	adds r2, r2, r5
	mov r8, r2
	ldrb r4, [r2]
	cmp r4, #1
	beq _080363A0
	cmp r4, #1
	bgt _08036354
	cmp r4, #0
	beq _0803635A
	b _08036452
	.align 2, 0
_08036334: .4byte gCurTask
_08036338: .4byte 0x0300003C
_0803633C: .4byte 0x0300008D
_08036340: .4byte 0x0300007C
_08036344: .4byte 0x0300007E
_08036348: .4byte 0x03000084
_0803634C: .4byte 0x0300000C
_08036350: .4byte gCamera
_08036354:
	cmp r4, #2
	beq _08036418
	b _08036452
_0803635A:
	adds r6, r5, #0
	adds r6, #0x84
	ldrh r0, [r6]
	subs r0, #1
	strh r0, [r6]
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x14
	mov r7, sl
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	ldr r2, _0803639C @ =sub_803FD5C
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	bl sub_804021C
	cmp r0, #0
	bge _08036452
	lsls r1, r0, #8
	ldr r0, [r5, #0x70]
	adds r0, r0, r1
	str r0, [r5, #0x70]
	str r4, [r5, #0x78]
	movs r0, #0xf0
	strh r0, [r6]
	mov r1, r8
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08036452
	.align 2, 0
_0803639C: .4byte sub_803FD5C
_080363A0:
	adds r7, r5, #0
	adds r7, #0x84
	ldrh r0, [r7]
	subs r0, #1
	strh r0, [r7]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08036452
	mov r2, sl
	lsls r5, r2, #0x10
	asrs r5, r5, #0x10
	mov r3, sb
	lsls r6, r3, #0x10
	asrs r6, r6, #0x10
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_8015C5C
	ldr r1, _08036414 @ =gUnknown_03005040
	movs r0, #0x35
	strb r0, [r1, #1]
	adds r0, r5, #0
	adds r0, #0x10
	lsls r0, r0, #8
	adds r4, r6, #0
	subs r4, #0x10
	lsls r4, r4, #8
	adds r1, r4, #0
	bl sub_8017540
	adds r0, r5, #0
	subs r0, #0x10
	lsls r0, r0, #8
	adds r1, r4, #0
	bl sub_8017540
	adds r0, r5, #0
	adds r0, #0x14
	lsls r0, r0, #8
	adds r6, #0x10
	lsls r6, r6, #8
	adds r1, r6, #0
	bl sub_8017540
	subs r5, #0x14
	lsls r5, r5, #8
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_8017540
	movs r0, #0xf0
	strh r0, [r7]
	mov r7, r8
	ldrb r0, [r7]
	adds r0, #1
	strb r0, [r7]
	b _08036452
	.align 2, 0
_08036414: .4byte gUnknown_03005040
_08036418:
	adds r1, r5, #0
	adds r1, #0x84
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _08036452
	ldr r3, _08036464 @ =gUnknown_03005A0C
	ldr r1, _08036468 @ =gCollisionTable
	ldr r0, _0803646C @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	str r2, [r3]
	ldr r1, _08036470 @ =gCamera
	strh r4, [r1, #0x14]
	ldrh r0, [r2, #0x1e]
	strh r0, [r1, #0x16]
	ldrh r0, [r2, #0x1c]
	strh r0, [r1, #0x1a]
	ldr r0, _08036474 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08036452:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036464: .4byte gUnknown_03005A0C
_08036468: .4byte gCollisionTable
_0803646C: .4byte gCurrentLevel
_08036470: .4byte gCamera
_08036474: .4byte gCurTask

	thumb_func_start sub_8036478
sub_8036478: @ 0x08036478
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r0, _08036584 @ =gPseudoRandom
	mov sb, r0
	ldr r0, [r0]
	ldr r7, _08036588 @ =0x00196225
	muls r0, r7, r0
	ldr r1, _0803658C @ =0x3C6EF35F
	mov sl, r1
	add r0, sl
	mov r1, sb
	str r0, [r1]
	movs r4, #7
	ands r4, r0
	ldr r0, _08036590 @ =gUnknown_080BB434
	adds r0, r4, r0
	ldrb r0, [r0]
	bl VramMalloc
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #6
	mov r8, r0
	ldr r2, _08036594 @ =gUnknown_080BB41C
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, _08036598 @ =gUnknown_080BB42C
	adds r4, r4, r0
	ldrb r3, [r4]
	ldr r0, _0803659C @ =sub_80177EC
	str r0, [sp]
	mov r0, r8
	bl sub_801769C
	ldrh r1, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r1, r3
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r0, r5, #8
	str r0, [r3, #0x30]
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	mov ip, r6
	mov r0, ip
	adds r0, #0x10
	lsls r0, r0, #8
	str r0, [r3, #0x34]
	mov r6, r8
	str r6, [r3, #0x10]
	movs r0, #0xb8
	lsls r0, r0, #3
	strh r0, [r3, #0x1a]
	movs r0, #5
	strh r0, [r3, #0x3e]
	ldr r0, _080365A0 @ =0x03000040
	adds r1, r1, r0
	movs r0, #0x20
	strh r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	adds r4, r0, #0
	muls r4, r7, r4
	add r4, sl
	str r4, [r1]
	ldr r6, _080365A4 @ =gSineTable
	mov r8, r6
	ldr r1, _080365A8 @ =0x000001FF
	ands r1, r4
	lsls r0, r1, #1
	add r0, r8
	movs r6, #0
	ldrsh r2, [r0, r6]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #9
	rsbs r0, r0, #0
	asrs r0, r0, #0xe
	strh r0, [r3, #0x3a]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	add r1, r8
	movs r6, #0
	ldrsh r1, [r1, r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #9
	rsbs r0, r0, #0
	asrs r0, r0, #0xe
	strh r0, [r3, #0x38]
	adds r1, r4, #0
	muls r1, r7, r1
	add r1, sl
	mov r0, sb
	str r1, [r0]
	movs r0, #0x3f
	ands r0, r1
	adds r5, r5, r0
	subs r5, #0x20
	lsls r5, r5, #8
	movs r0, #0xfc
	lsls r0, r0, #0xe
	ands r1, r0
	asrs r1, r1, #0x10
	subs r1, #0x20
	mov r0, ip
	subs r6, r0, r1
	lsls r6, r6, #8
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_8017540
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036584: .4byte gPseudoRandom
_08036588: .4byte 0x00196225
_0803658C: .4byte 0x3C6EF35F
_08036590: .4byte gUnknown_080BB434
_08036594: .4byte gUnknown_080BB41C
_08036598: .4byte gUnknown_080BB42C
_0803659C: .4byte sub_80177EC
_080365A0: .4byte 0x03000040
_080365A4: .4byte gSineTable
_080365A8: .4byte 0x000001FF

	thumb_func_start sub_80365AC
sub_80365AC: @ 0x080365AC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _080366B4 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r6, #0xc0
	lsls r6, r6, #0x12
	adds r7, r5, r6
	ldr r0, _080366B8 @ =sub_8036994
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _080366BC @ =sub_8036CE0
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	adds r3, r4, r6
	ldr r0, _080366C0 @ =0x0300007C
	adds r1, r5, r0
	ldr r0, [r7, #0x6c]
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r2, _080366C4 @ =0x03000040
	adds r1, r4, r2
	movs r2, #0
	mov r8, r2
	movs r6, #0
	strh r0, [r1]
	ldr r0, _080366C8 @ =0x0300007E
	adds r5, r5, r0
	ldr r0, [r7, #0x70]
	asrs r0, r0, #8
	ldrh r5, [r5]
	adds r0, r0, r5
	ldr r2, _080366CC @ =0x03000042
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0x3c
	strh r0, [r3, #0x30]
	adds r5, r3, #0
	movs r0, #0x10
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	strh r6, [r5, #8]
	ldr r0, _080366D0 @ =0x000002A7
	strh r0, [r5, #0xa]
	ldr r1, _080366D4 @ =0x03000020
	adds r0, r4, r1
	mov r2, r8
	strb r2, [r0]
	strh r6, [r5, #0x14]
	strh r6, [r5, #0x1c]
	ldr r0, _080366D8 @ =0x03000021
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r2, _080366DC @ =0x03000022
	adds r1, r4, r2
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _080366E0 @ =0x03000025
	adds r4, r4, r0
	mov r1, r8
	strb r1, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	movs r4, #0
_0803664C:
	movs r2, #0x84
	lsls r2, r2, #6
	adds r0, r2, #0
	adds r2, r4, #0
	orrs r2, r0
	ldr r0, _080366BC @ =sub_8036CE0
	str r0, [sp]
	ldr r0, _080366E4 @ =sub_803673C
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r3, r2, r5
	adds r1, r7, #0
	adds r1, #0x7c
	ldr r0, [r7, #0x6c]
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r5, #0x40
	adds r1, r2, r5
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x7e
	ldr r0, [r7, #0x70]
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r5, #2
	adds r1, r2, r5
	strh r0, [r1]
	str r6, [r3, #0x34]
	str r6, [r3, #0x38]
	ldr r0, _080366E8 @ =0x03000044
	adds r2, r2, r0
	strb r4, [r2]
	adds r5, r3, #0
	movs r0, #0x10
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _080366EC
	movs r0, #0xb8
	lsls r0, r0, #3
	b _080366F0
	.align 2, 0
_080366B4: .4byte gCurTask
_080366B8: .4byte sub_8036994
_080366BC: .4byte sub_8036CE0
_080366C0: .4byte 0x0300007C
_080366C4: .4byte 0x03000040
_080366C8: .4byte 0x0300007E
_080366CC: .4byte 0x03000042
_080366D0: .4byte 0x000002A7
_080366D4: .4byte 0x03000020
_080366D8: .4byte 0x03000021
_080366DC: .4byte 0x03000022
_080366E0: .4byte 0x03000025
_080366E4: .4byte sub_803673C
_080366E8: .4byte 0x03000044
_080366EC:
	movs r0, #0x98
	lsls r0, r0, #3
_080366F0:
	strh r0, [r5, #0x1a]
	strh r6, [r5, #8]
	ldr r0, _08036738 @ =0x000002A9
	strh r0, [r5, #0xa]
	adds r0, r5, #0
	adds r0, #0x20
	strb r4, [r0]
	strh r6, [r5, #0x14]
	strh r6, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x25
	strb r6, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0803664C
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036738: .4byte 0x000002A9

	thumb_func_start sub_803673C
sub_803673C: @ 0x0803673C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _080367EC @ =gCurTask
	ldr r0, [r1]
	ldrh r2, [r0, #6]
	mov r8, r2
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r5, r2, r4
	ldrh r0, [r0]
	adds r0, r0, r4
	ldrh r6, [r0, #6]
	adds r4, r6, r4
	ldr r2, [r5, #0x10]
	ldr r0, _080367F0 @ =0xFFFFFA7F
	ands r2, r0
	str r2, [r5, #0x10]
	ldr r0, [r4, #0x1c]
	movs r1, #0xb0
	lsls r1, r1, #3
	ands r0, r1
	orrs r2, r0
	str r2, [r5, #0x10]
	ldr r7, _080367F4 @ =0x03000080
	adds r7, r7, r6
	mov sb, r7
	ldr r0, _080367F8 @ =0x03000082
	adds r0, r0, r6
	mov sl, r0
	ldrh r1, [r0]
	ldr r3, _080367FC @ =gCamera
	ldrh r2, [r3]
	mov ip, r2
	movs r2, #0
	ldrsh r0, [r7, r2]
	mov r7, ip
	subs r0, r0, r7
	movs r7, #0
	strh r0, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0x18]
	ldr r0, [r4, #0x74]
	cmp r0, #0
	beq _080367A6
	adds r0, r5, #0
	bl UpdateSpriteAnimation
_080367A6:
	adds r0, r5, #0
	bl DisplaySprite
	ldr r1, _08036800 @ =0x03000086
	adds r0, r6, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	ble _080367DE
	mov r2, sb
	ldrh r1, [r2]
	ldr r0, _08036804 @ =0x03000040
	add r0, r8
	strh r1, [r0]
	mov r0, sl
	ldrh r1, [r0]
	ldr r0, _08036808 @ =0x03000042
	add r0, r8
	strh r1, [r0]
	str r7, [r5, #0x34]
	str r7, [r5, #0x38]
	strh r7, [r5, #0x3c]
	strh r7, [r5, #0x3e]
	ldr r2, _080367EC @ =gCurTask
	ldr r1, [r2]
	ldr r0, _0803680C @ =sub_8036810
	str r0, [r1, #8]
_080367DE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080367EC: .4byte gCurTask
_080367F0: .4byte 0xFFFFFA7F
_080367F4: .4byte 0x03000080
_080367F8: .4byte 0x03000082
_080367FC: .4byte gCamera
_08036800: .4byte 0x03000086
_08036804: .4byte 0x03000040
_08036808: .4byte 0x03000042
_0803680C: .4byte sub_8036810

	thumb_func_start sub_8036810
sub_8036810: @ 0x08036810
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _08036860 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r2, r1
	ldrh r0, [r0]
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	adds r6, r0, r1
	adds r5, r4, #0
	adds r1, #0x8d
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803683A
	b _08036948
_0803683A:
	movs r3, #0x3c
	ldrsh r0, [r5, r3]
	cmp r0, #0
	bne _080368B6
	movs r3, #0
	movs r1, #0xff
	lsls r1, r1, #8
	strh r1, [r5, #0x3e]
	ldr r7, _08036864 @ =0x03000044
	adds r0, r2, r7
	ldrb r0, [r0]
	cmp r0, #1
	beq _08036880
	cmp r0, #1
	bgt _08036868
	cmp r0, #0
	beq _08036872
	b _080368A4
	.align 2, 0
_08036860: .4byte gCurTask
_08036864: .4byte 0x03000044
_08036868:
	cmp r0, #2
	beq _0803688C
	cmp r0, #3
	beq _0803689C
	b _080368A4
_08036872:
	ldr r0, _0803687C @ =0x0000FF40
	strh r0, [r5, #0x3c]
	subs r0, #0xf0
	b _080368A2
	.align 2, 0
_0803687C: .4byte 0x0000FF40
_08036880:
	strh r1, [r5, #0x3c]
	ldr r0, _08036888 @ =0x0000FE80
	b _080368A2
	.align 2, 0
_08036888: .4byte 0x0000FE80
_0803688C:
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #0x3c]
	ldr r0, _08036898 @ =0x0000FE70
	b _080368A2
	.align 2, 0
_08036898: .4byte 0x0000FE70
_0803689C:
	movs r0, #0xe0
	strh r0, [r5, #0x3c]
	ldr r0, _08036938 @ =0x0000FE60
_080368A2:
	strh r0, [r5, #0x3e]
_080368A4:
	ldr r0, [r6, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080368B6
	ldrh r0, [r4, #0x3c]
	rsbs r0, r0, #0
	strh r0, [r4, #0x3c]
_080368B6:
	ldrh r0, [r4, #0x3e]
	adds r0, #0x18
	strh r0, [r4, #0x3e]
	movs r1, #0x3c
	ldrsh r0, [r4, r1]
	ldr r1, [r4, #0x34]
	adds r1, r1, r0
	str r1, [r4, #0x34]
	movs r3, #0x3e
	ldrsh r2, [r4, r3]
	ldr r0, [r4, #0x38]
	adds r0, r0, r2
	str r0, [r4, #0x38]
	adds r2, r4, #0
	adds r2, #0x40
	asrs r1, r1, #8
	ldrh r2, [r2]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	adds r2, r4, #0
	adds r2, #0x42
	asrs r0, r0, #8
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x1e
	lsrs r2, r1, #0x10
	mov r8, r2
	asrs r6, r1, #0x10
	ldr r1, _0803693C @ =sub_803FD5C
	str r1, [sp]
	adds r1, r6, #0
	movs r2, #1
	movs r3, #8
	bl sub_804021C
	cmp r0, #0
	bge _08036956
	lsls r1, r0, #8
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	ldrh r0, [r4, #0x3e]
	rsbs r0, r0, #0
	adds r0, #4
	strh r0, [r4, #0x3e]
	ldr r0, _08036940 @ =gCamera
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r0, r1, #0
	subs r0, #0x20
	cmp r6, r0
	blt _0803692E
	movs r2, #0x88
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r6, r0
	ble _08036956
_0803692E:
	ldr r0, _08036944 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0803697A
	.align 2, 0
_08036938: .4byte 0x0000FE60
_0803693C: .4byte sub_803FD5C
_08036940: .4byte gCamera
_08036944: .4byte gCurTask
_08036948:
	ldr r3, _08036988 @ =0x03000040
	adds r0, r2, r3
	ldrh r0, [r0]
	mov r8, r0
	ldr r7, _0803698C @ =0x03000042
	adds r0, r2, r7
	ldrh r7, [r0]
_08036956:
	ldr r2, _08036990 @ =gCamera
	ldrh r1, [r2]
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r5, #0x16]
	ldrh r1, [r2, #2]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_0803697A:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036988: .4byte 0x03000040
_0803698C: .4byte 0x03000042
_08036990: .4byte gCamera

	thumb_func_start sub_8036994
sub_8036994: @ 0x08036994
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _08036A44 @ =gCurTask
	ldr r6, [r0]
	ldrh r0, [r6, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldrh r0, [r6]
	adds r0, r0, r1
	ldrh r5, [r0, #6]
	adds r1, r1, r5
	mov sb, r1
	mov sl, r4
	ldr r2, [r4, #0x10]
	ldr r0, _08036A48 @ =0xFFFFFA7F
	ands r2, r0
	str r2, [r4, #0x10]
	ldr r0, [r1, #0x1c]
	movs r1, #0xb0
	lsls r1, r1, #3
	ands r0, r1
	orrs r2, r0
	str r2, [r4, #0x10]
	ldr r1, _08036A4C @ =0x03000080
	adds r2, r5, r1
	ldr r7, _08036A50 @ =0x03000082
	adds r0, r5, r7
	ldrh r0, [r0]
	mov r8, r0
	ldr r3, _08036A54 @ =gCamera
	ldrh r0, [r3]
	ldrh r1, [r2]
	str r1, [sp]
	movs r1, #0
	ldrsh r7, [r2, r1]
	mov ip, r7
	subs r0, r7, r0
	strh r0, [r4, #0x16]
	ldrh r0, [r3, #2]
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r2, r1, #0x10
	subs r0, r2, r0
	strh r0, [r4, #0x18]
	ldr r7, _08036A58 @ =0x0300008C
	adds r0, r5, r7
	ldrb r0, [r0]
	cmp r0, #0
	beq _08036AA2
	ldr r1, _08036A5C @ =0x03000086
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	bgt _08036AA2
	ldrh r0, [r6, #6]
	subs r1, #0x86
	adds r7, r0, r1
	mov r6, ip
	adds r5, r2, #0
	ldr r3, _08036A60 @ =gPlayer
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_800BF10
	mov r8, r0
	ldr r0, _08036A64 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08036A6C
	ldr r3, _08036A68 @ =gUnknown_03005AB0
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_800BF10
	b _08036A6E
	.align 2, 0
_08036A44: .4byte gCurTask
_08036A48: .4byte 0xFFFFFA7F
_08036A4C: .4byte 0x03000080
_08036A50: .4byte 0x03000082
_08036A54: .4byte gCamera
_08036A58: .4byte 0x0300008C
_08036A5C: .4byte 0x03000086
_08036A60: .4byte gPlayer
_08036A64: .4byte gUnknown_03005088
_08036A68: .4byte gUnknown_03005AB0
_08036A6C:
	movs r0, #0
_08036A6E:
	mov r2, r8
	cmp r2, #2
	beq _08036A78
	cmp r0, #2
	bne _08036AA2
_08036A78:
	ldr r0, _08036AC8 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r7, #0xc0
	lsls r7, r7, #0x12
	adds r0, r0, r7
	ldrh r2, [r0, #6]
	ldr r0, _08036ACC @ =0x0300003C
	adds r3, r2, r0
	adds r7, #0x5c
	adds r1, r2, r7
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _08036AD0 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r0, _08036AD4 @ =0x0300005D
	adds r2, r2, r0
	movs r0, #0xff
	strb r0, [r2]
_08036AA2:
	mov r0, sl
	bl UpdateSpriteAnimation
	mov r0, sl
	bl DisplaySprite
	mov r0, sb
	adds r0, #0x86
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r2, r0, #0
	cmp r1, #2
	ble _08036B7A
	ldrh r0, [r4, #0x30]
	cmp r0, #0
	beq _08036AD8
	subs r0, #1
	strh r0, [r4, #0x30]
	b _08036B1A
	.align 2, 0
_08036AC8: .4byte gCurTask
_08036ACC: .4byte 0x0300003C
_08036AD0: .4byte 0xFFFFBFFF
_08036AD4: .4byte 0x0300005D
_08036AD8:
	mov r1, sl
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08036B04
	ldr r7, [sp]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x10
	ldr r1, _08036B00 @ =gPlayer
	ldr r1, [r1]
	asrs r1, r1, #8
	cmp r0, r1
	bge _08036B1A
	movs r0, #1
	str r0, [sp, #4]
	b _08036B1A
	.align 2, 0
_08036B00: .4byte gPlayer
_08036B04:
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	subs r0, #0x10
	ldr r1, _08036B68 @ =gPlayer
	ldr r1, [r1]
	asrs r1, r1, #8
	cmp r0, r1
	ble _08036B1A
	movs r7, #1
	str r7, [sp, #4]
_08036B1A:
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #3
	ble _08036B26
	movs r0, #1
	str r0, [sp, #4]
_08036B26:
	ldr r1, [sp, #4]
	cmp r1, #0
	beq _08036B7A
	mov r2, sb
	ldr r0, [r2, #0x6c]
	str r0, [r4, #0x34]
	ldr r0, [r2, #0x70]
	str r0, [r4, #0x38]
	mov r0, sb
	adds r0, #0x7c
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x40
	movs r2, #0
	strh r1, [r0]
	mov r0, sb
	adds r0, #0x7e
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	strh r2, [r4, #0x3e]
	mov r7, sl
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08036B6C
	movs r0, #0xc0
	lsls r0, r0, #2
	b _08036B70
	.align 2, 0
_08036B68: .4byte gPlayer
_08036B6C:
	movs r0, #0xfd
	lsls r0, r0, #8
_08036B70:
	strh r0, [r4, #0x3c]
	ldr r0, _08036B8C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08036B90 @ =sub_8036B94
	str r0, [r1, #8]
_08036B7A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036B8C: .4byte gCurTask
_08036B90: .4byte sub_8036B94

	thumb_func_start sub_8036B94
sub_8036B94: @ 0x08036B94
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08036C2C @ =gCurTask
	ldr r7, [r0]
	ldrh r3, [r7, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r3, r1
	ldrh r0, [r7]
	adds r0, r0, r1
	ldrh r4, [r0, #6]
	mov sb, r5
	movs r0, #0x3c
	ldrsh r1, [r5, r0]
	ldr r0, [r5, #0x34]
	adds r0, r0, r1
	str r0, [r5, #0x34]
	movs r2, #0x3e
	ldrsh r1, [r5, r2]
	ldr r2, [r5, #0x38]
	adds r2, r2, r1
	str r2, [r5, #0x38]
	ldr r6, _08036C30 @ =0x03000040
	adds r1, r3, r6
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r1, _08036C34 @ =0x03000042
	adds r3, r3, r1
	asrs r2, r2, #8
	ldrh r3, [r3]
	adds r2, r2, r3
	ldr r3, _08036C38 @ =gCamera
	ldrh r1, [r3]
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	subs r1, r6, r1
	strh r1, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r5, #0x18]
	ldr r0, _08036C3C @ =0x03000086
	adds r4, r4, r0
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #3
	bgt _08036C82
	ldrh r0, [r7, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r0, r1
	adds r4, r2, #0
	ldr r3, _08036C40 @ =gPlayer
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_800BF10
	mov r8, r0
	ldr r0, _08036C44 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08036C4C
	ldr r3, _08036C48 @ =gUnknown_03005AB0
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_800BF10
	b _08036C4E
	.align 2, 0
_08036C2C: .4byte gCurTask
_08036C30: .4byte 0x03000040
_08036C34: .4byte 0x03000042
_08036C38: .4byte gCamera
_08036C3C: .4byte 0x03000086
_08036C40: .4byte gPlayer
_08036C44: .4byte gUnknown_03005088
_08036C48: .4byte gUnknown_03005AB0
_08036C4C:
	movs r0, #0
_08036C4E:
	mov r2, r8
	cmp r2, #2
	beq _08036C58
	cmp r0, #2
	bne _08036C82
_08036C58:
	ldr r0, _08036CB4 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r6, #0xc0
	lsls r6, r6, #0x12
	adds r0, r0, r6
	ldrh r2, [r0, #6]
	ldr r0, _08036CB8 @ =0x0300003C
	adds r3, r2, r0
	adds r6, #0x5c
	adds r1, r2, r6
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _08036CBC @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r0, _08036CC0 @ =0x0300005D
	adds r2, r2, r0
	movs r0, #0xff
	strb r0, [r2]
_08036C82:
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, sb
	bl DisplaySprite
	ldr r0, [r5, #0x34]
	movs r1, #0xc0
	lsls r1, r1, #8
	adds r0, r0, r1
	movs r1, #0xc0
	lsls r1, r1, #9
	cmp r0, r1
	bls _08036CA6
	ldr r0, _08036CB4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08036CA6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036CB4: .4byte gCurTask
_08036CB8: .4byte 0x0300003C
_08036CBC: .4byte 0xFFFFBFFF
_08036CC0: .4byte 0x0300005D

	thumb_func_start sub_8036CC4
sub_8036CC4: @ 0x08036CC4
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x10]
	bl VramFree
	ldr r0, [r4, #0x40]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8036CE0
sub_8036CE0: @ 0x08036CE0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8036CF4
sub_8036CF4: @ 0x08036CF4
	push {r4, r5, r6, r7, lr}
	ldr r2, _08036D34 @ =gCurTask
	ldr r2, [r2]
	ldrh r3, [r2, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r6, r3, r2
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	ldr r3, _08036D38 @ =gPlayer
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	adds r7, r0, #0
	ldr r0, _08036D3C @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08036D44
	ldr r3, _08036D40 @ =gUnknown_03005AB0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	b _08036D46
	.align 2, 0
_08036D34: .4byte gCurTask
_08036D38: .4byte gPlayer
_08036D3C: .4byte gUnknown_03005088
_08036D40: .4byte gUnknown_03005AB0
_08036D44:
	movs r0, #0
_08036D46:
	cmp r7, #2
	beq _08036D4E
	cmp r0, #2
	bne _08036D78
_08036D4E:
	ldr r0, _08036D80 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldrh r2, [r0, #6]
	ldr r0, _08036D84 @ =0x0300003C
	adds r3, r2, r0
	adds r0, #0x20
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _08036D88 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r0, _08036D8C @ =0x0300005D
	adds r2, r2, r0
	movs r0, #0xff
	strb r0, [r2]
_08036D78:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036D80: .4byte gCurTask
_08036D84: .4byte 0x0300003C
_08036D88: .4byte 0xFFFFBFFF
_08036D8C: .4byte 0x0300005D

	thumb_func_start sub_8036D90
sub_8036D90: @ 0x08036D90
	ldr r0, _08036DC0 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	ldr r0, _08036DC4 @ =0x0300003C
	adds r1, r2, r0
	adds r0, #0x20
	adds r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq _08036DBC
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08036DBC
	movs r0, #0
	strb r0, [r3]
	ldr r0, _08036DC8 @ =0x0300005D
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
_08036DBC:
	bx lr
	.align 2, 0
_08036DC0: .4byte gCurTask
_08036DC4: .4byte 0x0300003C
_08036DC8: .4byte 0x0300005D

	thumb_func_start sub_8036DCC
sub_8036DCC: @ 0x08036DCC
	ldr r0, _08036DE4 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _08036DE8 @ =0x0300000C
	adds r2, r0, r1
	adds r1, #0x30
	adds r0, r0, r1
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	bx lr
	.align 2, 0
_08036DE4: .4byte gCurTask
_08036DE8: .4byte 0x0300000C

	thumb_func_start sub_8036DEC
sub_8036DEC: @ 0x08036DEC
	push {r4, lr}
	ldr r2, _08036E14 @ =gCurTask
	ldr r2, [r2]
	ldrh r2, [r2, #6]
	ldr r3, _08036E18 @ =0x0300000C
	adds r2, r2, r3
	ldr r4, _08036E1C @ =gCamera
	ldrh r3, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r3
	strh r0, [r2, #0x16]
	ldrh r0, [r4, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r2, #0x18]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08036E14: .4byte gCurTask
_08036E18: .4byte 0x0300000C
_08036E1C: .4byte gCamera

	thumb_func_start sub_8036E20
sub_8036E20: @ 0x08036E20
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	str r6, [sp]
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	str r5, [sp, #4]
	ldr r0, _08036F3C @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	str r0, [sp, #8]
	ldr r0, _08036F40 @ =0x0300000C
	adds r7, r2, r0
	ldr r1, _08036F44 @ =gPlayer
	mov sl, r1
	ldr r1, [r1, #0x10]
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	bne _08036E5E
	ldr r3, _08036F48 @ =0x03000031
	adds r0, r2, r3
	strb r1, [r0]
_08036E5E:
	ldr r1, _08036F4C @ =0x03000095
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08036E6E
	b _08036F86
_08036E6E:
	movs r3, #0
	mov sb, r3
	mov r8, r3
	ldr r0, _08036F50 @ =0x03000044
	adds r4, r2, r0
	adds r1, #7
	adds r0, r2, r1
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r3, _08036F54 @ =0x0300007A
	adds r3, r0, r3
	str r3, [sp, #0xc]
	ldrb r1, [r3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08036EA2
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	mov r3, sl
	bl sub_800B8B4
	mov sb, r0
_08036EA2:
	mov r0, sb
	cmp r0, #0
	bne _08036EBA
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	mov r3, sl
	bl sub_800BFEC
	mov sb, r0
_08036EBA:
	ldr r0, _08036F58 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08036F00
	ldr r3, [sp, #0xc]
	ldrb r1, [r3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08036EE4
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	ldr r3, _08036F5C @ =gUnknown_03005AB0
	adds r0, r7, #0
	bl sub_800B8B4
	mov r8, r0
_08036EE4:
	mov r0, r8
	cmp r0, #0
	bne _08036F00
	ldr r3, [sp]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	ldr r0, [sp, #4]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	ldr r3, _08036F5C @ =gUnknown_03005AB0
	adds r0, r7, #0
	bl sub_800BFEC
	mov r8, r0
_08036F00:
	mov r1, sb
	cmp r1, #1
	beq _08036F0C
	mov r3, r8
	cmp r3, #1
	bne _08036F64
_08036F0C:
	ldr r1, [sp, #8]
	adds r1, #0x94
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, [sp, #8]
	adds r1, #0x95
	movs r0, #0x20
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r4, #0x10]
	ldr r1, _08036F60 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r4, #0x10]
	movs r0, #0x8f
	bl m4aSongNumStart
	b _08036F86
	.align 2, 0
_08036F3C: .4byte gCurTask
_08036F40: .4byte 0x0300000C
_08036F44: .4byte gPlayer
_08036F48: .4byte 0x03000031
_08036F4C: .4byte 0x03000095
_08036F50: .4byte 0x03000044
_08036F54: .4byte 0x0300007A
_08036F58: .4byte gUnknown_03005088
_08036F5C: .4byte gUnknown_03005AB0
_08036F60: .4byte 0xFFFFBFFF
_08036F64:
	mov r0, sb
	cmp r0, #2
	beq _08036F70
	mov r1, r8
	cmp r1, #2
	bne _08036F86
_08036F70:
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #3
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r4, #0x10]
	ldr r1, _08036F98 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r4, #0x10]
_08036F86:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036F98: .4byte 0xFFFFBFFF

	thumb_func_start sub_8036F9C
sub_8036F9C: @ 0x08036F9C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r0, _08036FF4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r7, r4, #0
	cmp r2, #0
	bne _08037004
	lsls r0, r3, #0x10
	asrs r7, r0, #0x10
	lsls r0, r5, #0x10
	asrs r6, r0, #0x10
	ldr r3, _08036FF8 @ =gPlayer
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_800BF10
	adds r5, r0, #0
	ldr r0, _08036FFC @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08037040
	ldr r3, _08037000 @ =gUnknown_03005AB0
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_800BF10
	b _08037042
	.align 2, 0
_08036FF4: .4byte gCurTask
_08036FF8: .4byte gPlayer
_08036FFC: .4byte gUnknown_03005088
_08037000: .4byte gUnknown_03005AB0
_08037004:
	lsls r0, r3, #0x10
	asrs r6, r0, #0x10
	lsls r0, r5, #0x10
	asrs r4, r0, #0x10
	ldr r3, _08037034 @ =gPlayer
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_800C2B8
	adds r5, r0, #0
	ldr r0, _08037038 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08037040
	ldr r3, _0803703C @ =gUnknown_03005AB0
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_800BF10
	b _08037042
	.align 2, 0
_08037034: .4byte gPlayer
_08037038: .4byte gUnknown_03005088
_0803703C: .4byte gUnknown_03005AB0
_08037040:
	movs r0, #0
_08037042:
	cmp r5, #2
	beq _0803704A
	cmp r0, #2
	bne _08037074
_0803704A:
	ldr r0, _0803709C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldrh r2, [r0, #6]
	ldr r0, _080370A0 @ =0x03000044
	adds r3, r2, r0
	adds r0, #0x20
	adds r1, r2, r0
	movs r0, #3
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _080370A4 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r0, _080370A8 @ =0x03000065
	adds r2, r2, r0
	movs r0, #0xff
	strb r0, [r2]
_08037074:
	mov r0, r8
	cmp r0, #0
	beq _0803708E
	cmp r5, #2
	bne _0803708E
	ldr r0, _080370AC @ =gRingCount
	ldrh r0, [r0]
	cmp r0, #0
	bne _0803708E
	ldr r0, _080370B0 @ =gPlayer
	bl sub_800C558
	movs r5, #0
_0803708E:
	adds r0, r5, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803709C: .4byte gCurTask
_080370A0: .4byte 0x03000044
_080370A4: .4byte 0xFFFFBFFF
_080370A8: .4byte 0x03000065
_080370AC: .4byte gRingCount
_080370B0: .4byte gPlayer

	thumb_func_start sub_80370B4
sub_80370B4: @ 0x080370B4
	push {r4, r5, lr}
	ldr r0, _0803710C @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	ldr r0, _08037110 @ =0x0300000C
	adds r4, r3, r0
	adds r0, #0x38
	adds r5, r3, r0
	adds r0, #0x51
	adds r2, r3, r0
	ldrb r1, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _080370FA
	subs r1, #1
	strb r1, [r2]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x10
	ble _080370FA
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _080370FA
	ldr r0, _08037114 @ =gPlayer
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080370FA
	ldr r0, _08037118 @ =0x03000031
	adds r1, r3, r0
	movs r0, #0xfd
	strb r0, [r1]
_080370FA:
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803710C: .4byte gCurTask
_08037110: .4byte 0x0300000C
_08037114: .4byte gPlayer
_08037118: .4byte 0x03000031

	thumb_func_start sub_803711C
sub_803711C: @ 0x0803711C
	push {r4, lr}
	ldr r3, _08037154 @ =gPlayer
	ldr r1, [r3]
	asrs r1, r1, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0
	bge _0803713A
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803713A:
	ldr r0, [r3, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08037160
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	ldr r4, _08037158 @ =gUnknown_084ACF24
	cmp r0, #0x78
	ble _0803716C
	ldr r4, _0803715C @ =gUnknown_084ACF34
	b _0803716C
	.align 2, 0
_08037154: .4byte gPlayer
_08037158: .4byte gUnknown_084ACF24
_0803715C: .4byte gUnknown_084ACF34
_08037160:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	ldr r4, _0803718C @ =gUnknown_084ACF1C
	cmp r0, #0x78
	ble _0803716C
	ldr r4, _08037190 @ =gUnknown_084ACF2C
_0803716C:
	ldr r2, _08037194 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _08037198 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0803719C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0x64
	bl __umodsi3
	adds r1, r0, #0
	movs r2, #0
	movs r3, #0
	ldrsh r0, [r4, r3]
	b _080371B2
	.align 2, 0
_0803718C: .4byte gUnknown_084ACF1C
_08037190: .4byte gUnknown_084ACF2C
_08037194: .4byte gPseudoRandom
_08037198: .4byte 0x00196225
_0803719C: .4byte 0x3C6EF35F
_080371A0:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bhi _080371B8
	lsls r0, r2, #1
	adds r0, r0, r4
	movs r3, #0
	ldrsh r0, [r0, r3]
_080371B2:
	subs r1, r1, r0
	cmp r1, #0
	bgt _080371A0
_080371B8:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

@ --- Start of X-Zone Final Boss
	thumb_func_start CreateEntity_EggX
CreateEntity_EggX: @ 0x080371C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	ldr r0, _080371F8 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _080371FC
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r4]
	b _080373B8
	.align 2, 0
_080371F8: .4byte gGameMode
_080371FC:
	ldr r0, _08037278 @ =Task_EggXMain
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _0803727C @ =TaskDestructor_EggX
	str r1, [sp]
	movs r1, #0xa0
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r3, r0
	movs r5, #0
	movs r2, #0
	mov r0, r8
	strh r0, [r7, #4]
	mov r1, sb
	strh r1, [r7, #6]
	str r4, [r7]
	ldrb r0, [r4]
	strb r0, [r7, #8]
	strb r6, [r7, #9]
	ldr r0, _08037280 @ =0x03000092
	adds r1, r3, r0
	movs r0, #0x78
	strh r0, [r1]
	ldr r1, _08037284 @ =0x03000095
	adds r0, r3, r1
	strb r5, [r0]
	adds r1, #4
	adds r0, r3, r1
	strb r5, [r0]
	subs r1, #1
	adds r0, r3, r1
	strb r5, [r0]
	movs r0, #0xe8
	lsls r0, r0, #7
	str r0, [r7, #0x74]
	movs r0, #0xe8
	lsls r0, r0, #8
	str r0, [r7, #0x78]
	str r2, [r7, #0x7c]
	subs r1, #0x18
	adds r0, r3, r1
	str r2, [r0]
	adds r1, #4
	adds r0, r3, r1
	str r2, [r0]
	adds r1, #0x12
	adds r0, r3, r1
	strh r2, [r0]
	ldr r0, _08037288 @ =gUnknown_03005160
	ldrb r0, [r0, #0x18]
	cmp r0, #0
	beq _08037290
	ldr r2, _0803728C @ =0x03000094
	adds r1, r3, r2
	movs r0, #2
	strb r0, [r1]
	b _08037296
	.align 2, 0
_08037278: .4byte Task_EggXMain
_0803727C: .4byte TaskDestructor_EggX
_08037280: .4byte 0x03000092
_08037284: .4byte 0x03000095
_08037288: .4byte gUnknown_03005160
_0803728C: .4byte 0x03000094
_08037290:
	ldr r1, _080373C8 @ =0x03000094
	adds r0, r3, r1
	strb r5, [r0]
_08037296:
	ldrb r1, [r4]
	lsls r1, r1, #3
	mov r2, r8
	lsls r0, r2, #8
	adds r1, r1, r0
	adds r6, r7, #0
	adds r6, #0x88
	movs r5, #0
	strh r1, [r6]
	ldrb r0, [r4, #1]
	lsls r0, r0, #3
	mov r2, sb
	lsls r1, r2, #8
	adds r0, r0, r1
	movs r1, #0x8a
	adds r1, r1, r7
	mov sl, r1
	strh r0, [r1]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r4]
	adds r4, r7, #0
	adds r4, #0xc
	ldrh r0, [r6]
	strh r0, [r4, #0x16]
	ldrh r0, [r1]
	strh r0, [r4, #0x18]
	movs r0, #0x2a
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0xb0
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	strh r5, [r4, #8]
	ldr r0, _080373CC @ =0x000002AF
	strh r0, [r4, #0xa]
	adds r0, r7, #0
	adds r0, #0x2c
	movs r1, #0
	strb r1, [r0]
	strh r5, [r4, #0x14]
	strh r5, [r4, #0x1c]
	adds r1, r7, #0
	adds r1, #0x2d
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x2e
	movs r2, #0x10
	mov sb, r2
	mov r1, sb
	strb r1, [r0]
	adds r0, #3
	movs r2, #0
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	str r0, [r4, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r4, #0x10]
	adds r4, #0x38
	ldrh r0, [r6]
	strh r0, [r4, #0x16]
	mov r2, sl
	ldrh r0, [r2]
	strh r0, [r4, #0x18]
	movs r0, #0xc
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0xa8
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	strh r5, [r4, #8]
	ldr r0, _080373D0 @ =0x000002B3
	strh r0, [r4, #0xa]
	adds r0, r7, #0
	adds r0, #0x64
	movs r1, #0
	strb r1, [r0]
	strh r5, [r4, #0x14]
	strh r5, [r4, #0x1c]
	adds r1, r7, #0
	adds r1, #0x65
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x66
	mov r2, sb
	strb r2, [r0]
	adds r0, #3
	movs r1, #0
	strb r1, [r0]
	mov r2, r8
	str r2, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	ldr r0, _080373D4 @ =gPlayer
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08037396
	ldr r1, _080373D8 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldr r0, _080373DC @ =0x00001F1F
	strh r0, [r1, #8]
	strh r0, [r1, #0xa]
	ldr r1, _080373E0 @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	movs r0, #0xc
	strh r0, [r1, #4]
	ldr r2, _080373E4 @ =gDispCnt
	ldrh r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #6
	orrs r0, r1
	strh r0, [r2]
_08037396:
	add r1, sp, #4
	ldr r2, _080373E8 @ =0x00007FFF
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _080373EC @ =0x040000D4
	add r0, sp, #4
	str r0, [r1]
	ldr r0, _080373F0 @ =gObjPalette+0x180
	str r0, [r1, #4]
	ldr r0, _080373F4 @ =0x81000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _080373F8 @ =gFlags
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
_080373B8:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080373C8: .4byte 0x03000094
_080373CC: .4byte 0x000002AF
_080373D0: .4byte 0x000002B3
_080373D4: .4byte gPlayer
_080373D8: .4byte gWinRegs
_080373DC: .4byte 0x00001F1F
_080373E0: .4byte gBldRegs
_080373E4: .4byte gDispCnt
_080373E8: .4byte 0x00007FFF
_080373EC: .4byte 0x040000D4
_080373F0: .4byte gObjPalette+0x180
_080373F4: .4byte 0x81000010
_080373F8: .4byte gFlags

	thumb_func_start Task_EggXMain
Task_EggXMain: @ 0x080373FC
	push {r4, r5, lr}
	sub sp, #4
	ldr r5, _08037420 @ =gCurTask
	ldr r0, [r5]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	adds r0, #0x99
	adds r4, r2, r0
	ldrb r0, [r4]
	cmp r0, #1
	beq _0803745C
	cmp r0, #1
	bgt _08037424
	cmp r0, #0
	beq _0803742E
	b _08037518
	.align 2, 0
_08037420: .4byte gCurTask
_08037424:
	cmp r0, #2
	beq _08037494
	cmp r0, #3
	beq _080374C4
	b _08037518
_0803742E:
	ldr r1, _08037454 @ =0x03000088
	adds r2, r2, r1
	movs r3, #0
	ldrsh r0, [r2, r3]
	subs r0, #0x78
	ldr r3, _08037458 @ =gCamera
	movs r5, #0
	ldrsh r1, [r3, r5]
	cmp r0, r1
	bgt _08037518
	ldrh r0, [r2]
	subs r0, #0x90
	strh r0, [r3, #0x18]
	ldrh r0, [r2]
	adds r0, #0x90
	strh r0, [r3, #0x1a]
	movs r0, #1
	strb r0, [r4]
	b _08037518
	.align 2, 0
_08037454: .4byte 0x03000088
_08037458: .4byte gCamera
_0803745C:
	ldr r0, _0803748C @ =0x0300008A
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	subs r0, #0x28
	ldr r1, _08037490 @ =gCamera
	movs r3, #2
	ldrsh r1, [r1, r3]
	cmp r0, r1
	bgt _08037518
	ldrh r1, [r2]
	adds r0, r1, #0
	subs r0, #0x28
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, #0xa0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_80174DC
	movs r0, #2
	strb r0, [r4]
	b _08037518
	.align 2, 0
_0803748C: .4byte 0x0300008A
_08037490: .4byte gCamera
_08037494:
	ldr r3, _080374BC @ =gCamera
	movs r5, #0x14
	ldrsh r0, [r3, r5]
	ldr r5, _080374C0 @ =0x0300008A
	adds r1, r2, r5
	movs r5, #0
	ldrsh r2, [r1, r5]
	adds r1, r2, #0
	subs r1, #0x28
	cmp r0, r1
	bne _08037518
	movs r0, #0x16
	ldrsh r1, [r3, r0]
	adds r0, r2, #0
	adds r0, #0xa0
	cmp r1, r0
	bne _08037518
	movs r0, #3
	strb r0, [r4]
	b _08037518
	.align 2, 0
_080374BC: .4byte gCamera
_080374C0: .4byte 0x0300008A
_080374C4:
	movs r0, #0
	strb r0, [r4]
	ldr r4, _08037520 @ =0x03000080
	adds r1, r2, r4
	ldr r0, _08037524 @ =0xFFFFFF00
	str r0, [r1]
	ldr r0, _08037528 @ =0x03000088
	adds r1, r2, r0
	ldr r0, [r3, #0x74]
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r4, #0xc
	adds r1, r2, r4
	strh r0, [r1]
	ldr r0, _0803752C @ =0x0300008A
	adds r1, r2, r0
	ldr r0, [r3, #0x78]
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r3, _08037530 @ =0x0300008E
	adds r1, r2, r3
	strh r0, [r1]
	bl sub_8038F04
	ldr r1, [r5]
	ldr r0, _08037534 @ =sub_803753C
	str r0, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0x80
	str r1, [sp]
	movs r1, #4
	movs r3, #0x7a
	bl sub_804CC14
	ldr r1, _08037538 @ =gUnknown_03005040
	movs r0, #0x16
	strb r0, [r1, #1]
_08037518:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08037520: .4byte 0x03000080
_08037524: .4byte 0xFFFFFF00
_08037528: .4byte 0x03000088
_0803752C: .4byte 0x0300008A
_08037530: .4byte 0x0300008E
_08037534: .4byte sub_803753C
_08037538: .4byte gUnknown_03005040

	thumb_func_start sub_803753C
sub_803753C: @ 0x0803753C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080375D0 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r5, r1
	ldr r2, _080375D4 @ =0x0300009C
	adds r0, r5, r2
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov r8, r0
	ldr r7, _080375D8 @ =0x0300000C
	adds r7, r7, r5
	mov sl, r7
	ldr r0, _080375DC @ =0x03000044
	adds r4, r5, r0
	ldr r0, [r6, #0x74]
	ldr r1, [r6, #0x7c]
	adds r0, r0, r1
	str r0, [r6, #0x74]
	ldr r1, _080375E0 @ =0x03000080
	adds r3, r5, r1
	ldr r1, [r6, #0x78]
	ldr r2, [r3]
	adds r1, r1, r2
	str r1, [r6, #0x78]
	ldr r7, _080375E4 @ =0x03000088
	adds r2, r5, r7
	asrs r0, r0, #8
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r2, _080375E8 @ =0x0300008A
	adds r0, r5, r2
	asrs r1, r1, #8
	ldrh r0, [r0]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r0, [r3]
	cmp r0, #0
	bne _080375F8
	ldr r0, _080375EC @ =0x03000090
	adds r2, r5, r0
	ldrh r0, [r2]
	adds r0, #8
	ldr r1, _080375F0 @ =0x000003FF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _080375F4 @ =gSineTable
	ldrh r0, [r2]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x1c
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	b _08037600
	.align 2, 0
_080375D0: .4byte gCurTask
_080375D4: .4byte 0x0300009C
_080375D8: .4byte 0x0300000C
_080375DC: .4byte 0x03000044
_080375E0: .4byte 0x03000080
_080375E4: .4byte 0x03000088
_080375E8: .4byte 0x0300008A
_080375EC: .4byte 0x03000090
_080375F0: .4byte 0x000003FF
_080375F4: .4byte gSineTable
_080375F8:
	ldr r0, _0803766C @ =0x03000090
	adds r1, r5, r0
	movs r0, #0
	strh r0, [r1]
_08037600:
	adds r0, r6, #0
	adds r0, #0x8c
	mov r1, ip
	strh r1, [r0]
	adds r0, #2
	strh r7, [r0]
	mov r2, sb
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	ldr r5, _08037670 @ =0x0300000C
	adds r1, r1, r5
	ldr r3, _08037674 @ =gCamera
	ldrh r2, [r3]
	mov r5, ip
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	strh r0, [r1, #0x16]
	ldrh r2, [r3, #2]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	strh r0, [r1, #0x18]
	mov r0, sl
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	mov r7, sb
	ldr r0, [r7]
	ldrh r0, [r0, #6]
	ldr r1, _08037670 @ =0x0300000C
	adds r2, r0, r1
	ldr r5, _08037678 @ =0x03000044
	adds r0, r0, r5
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	bl sub_80370B4
	adds r0, r6, #0
	adds r0, #0x99
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #5
	bhi _08037746
	lsls r0, r1, #2
	ldr r1, _0803767C @ =_08037680
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803766C: .4byte 0x03000090
_08037670: .4byte 0x0300000C
_08037674: .4byte gCamera
_08037678: .4byte 0x03000044
_0803767C: .4byte _08037680
_08037680: @ jump table
	.4byte _08037698 @ case 0
	.4byte _080376B0 @ case 1
	.4byte _080376CA @ case 2
	.4byte _080376E4 @ case 3
	.4byte _0803770A @ case 4
	.4byte _08037724 @ case 5
_08037698:
	ldr r0, [r6, #0x78]
	movs r1, #0xdc
	lsls r1, r1, #7
	cmp r0, r1
	bgt _08037746
	str r1, [r6, #0x78]
	movs r1, #0
	str r1, [r6, #0x7c]
	adds r0, r6, #0
	adds r0, #0x80
	str r1, [r0]
	b _08037714
_080376B0:
	adds r1, r6, #0
	adds r1, #0x92
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08037746
	mov r1, r8
	adds r1, #0x79
	movs r0, #1
	strb r0, [r1]
	b _0803771C
_080376CA:
	mov r0, r8
	adds r0, #0x79
	ldrb r0, [r0]
	cmp r0, #4
	bne _08037746
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	b _0803771C
_080376E4:
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08037746
	mov r1, r8
	adds r1, #0x79
	movs r2, #0
	movs r0, #5
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x20
	strb r2, [r0]
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	b _0803771C
_0803770A:
	mov r0, r8
	adds r0, #0x79
	ldrb r0, [r0]
	cmp r0, #7
	bne _08037746
_08037714:
	adds r1, r6, #0
	adds r1, #0x92
	movs r0, #0xf
	strh r0, [r1]
_0803771C:
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	b _08037746
_08037724:
	adds r1, r6, #0
	adds r1, #0x92
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08037746
	adds r1, #6
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0
	strb r0, [r3]
	ldr r0, _08037754 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08037758 @ =sub_803775C
	str r0, [r1, #8]
_08037746:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08037754: .4byte gCurTask
_08037758: .4byte sub_803775C

	thumb_func_start sub_803775C
sub_803775C: @ 0x0803775C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, _080377AC @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r2, r1
	ldr r3, _080377B0 @ =0x0300009C
	adds r0, r2, r3
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sl, r0
	ldr r4, _080377B4 @ =0x0300000C
	adds r7, r2, r4
	ldr r0, _080377B8 @ =0x03000044
	adds r0, r2, r0
	str r0, [sp, #4]
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080377C0
	ldr r1, _080377BC @ =0x03000084
	adds r0, r2, r1
	ldr r1, [r6, #0x7c]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r6, #0x7c]
	ldr r0, [r6, #0x74]
	subs r0, r0, r1
	b _080377D0
	.align 2, 0
_080377AC: .4byte gCurTask
_080377B0: .4byte 0x0300009C
_080377B4: .4byte 0x0300000C
_080377B8: .4byte 0x03000044
_080377BC: .4byte 0x03000084
_080377C0:
	ldr r3, _08037830 @ =0x03000084
	adds r0, r2, r3
	ldr r1, [r6, #0x7c]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r6, #0x7c]
	ldr r0, [r6, #0x74]
	adds r0, r0, r1
_080377D0:
	str r0, [r6, #0x74]
	adds r3, r6, #0
	adds r3, #0x80
	ldr r1, [r6, #0x78]
	ldr r0, [r3]
	adds r1, r1, r0
	str r1, [r6, #0x78]
	adds r2, r6, #0
	adds r2, #0x88
	ldr r0, [r6, #0x74]
	asrs r0, r0, #8
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r6, #0
	adds r0, #0x8a
	asrs r1, r1, #8
	ldrh r0, [r0]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r0, [r3]
	cmp r0, #0
	bne _0803783C
	adds r2, r6, #0
	adds r2, #0x90
	ldrh r0, [r2]
	adds r0, #8
	ldr r1, _08037834 @ =0x000003FF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _08037838 @ =gSineTable
	ldrh r0, [r2]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x1c
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _08037844
	.align 2, 0
_08037830: .4byte 0x03000084
_08037834: .4byte 0x000003FF
_08037838: .4byte gSineTable
_0803783C:
	adds r1, r6, #0
	adds r1, #0x90
	movs r0, #0
	strh r0, [r1]
_08037844:
	adds r0, r6, #0
	adds r0, #0x8c
	strh r5, [r0]
	adds r0, #2
	strh r4, [r0]
	lsls r5, r5, #0x10
	asrs r3, r5, #0x10
	mov r8, r3
	lsls r4, r4, #0x10
	asrs r0, r4, #0x10
	mov sb, r0
	mov r0, r8
	mov r1, sb
	bl sub_8036E20
	adds r0, r6, #0
	adds r0, #0x94
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r4, [sp, #0x20]
	str r5, [sp, #0x1c]
	cmp r0, #7
	ble _0803787A
	bl sub_803803C
	b _0803802A
_0803787A:
	ldr r0, _080378FC @ =gCurTask
	ldr r3, [r0]
	ldrh r1, [r3, #6]
	ldr r2, _08037900 @ =0x0300000C
	adds r1, r1, r2
	ldr r2, _08037904 @ =gCamera
	ldrh r0, [r2]
	mov r4, r8
	subs r0, r4, r0
	strh r0, [r1, #0x16]
	ldrh r0, [r2, #2]
	mov r2, sb
	subs r0, r2, r0
	strh r0, [r1, #0x18]
	ldrh r2, [r3, #6]
	ldr r3, _08037908 @ =0x03000044
	adds r1, r2, r3
	ldr r4, _0803790C @ =0x03000064
	adds r3, r2, r4
	ldrb r0, [r3]
	cmp r0, #0
	beq _080378BE
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080378BE
	movs r0, #0
	strb r0, [r3]
	ldr r0, _08037910 @ =0x03000065
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
_080378BE:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r0, [sp, #4]
	bl UpdateSpriteAnimation
	ldr r0, _080378FC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _08037900 @ =0x0300000C
	adds r2, r0, r1
	ldr r3, _08037908 @ =0x03000044
	adds r0, r0, r3
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	bl sub_80370B4
	adds r0, r6, #0
	adds r0, #0x99
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0x42
	bls _080378F2
	b _0803802A
_080378F2:
	lsls r0, r1, #2
	ldr r1, _08037914 @ =_08037918
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080378FC: .4byte gCurTask
_08037900: .4byte 0x0300000C
_08037904: .4byte gCamera
_08037908: .4byte 0x03000044
_0803790C: .4byte 0x03000064
_08037910: .4byte 0x03000065
_08037914: .4byte _08037918
_08037918: @ jump table
	.4byte _08037A24 @ case 0
	.4byte _08037A88 @ case 1
	.4byte _08037ACA @ case 2
	.4byte _08037B02 @ case 3
	.4byte _08037B54 @ case 4
	.4byte _08038018 @ case 5
	.4byte _0803802A @ case 6
	.4byte _0803802A @ case 7
	.4byte _0803802A @ case 8
	.4byte _0803802A @ case 9
	.4byte _0803802A @ case 10
	.4byte _0803802A @ case 11
	.4byte _0803802A @ case 12
	.4byte _0803802A @ case 13
	.4byte _0803802A @ case 14
	.4byte _0803802A @ case 15
	.4byte _08037B6A @ case 16
	.4byte _08037B8C @ case 17
	.4byte _0803802A @ case 18
	.4byte _0803802A @ case 19
	.4byte _0803802A @ case 20
	.4byte _0803802A @ case 21
	.4byte _0803802A @ case 22
	.4byte _0803802A @ case 23
	.4byte _0803802A @ case 24
	.4byte _0803802A @ case 25
	.4byte _0803802A @ case 26
	.4byte _0803802A @ case 27
	.4byte _0803802A @ case 28
	.4byte _0803802A @ case 29
	.4byte _0803802A @ case 30
	.4byte _0803802A @ case 31
	.4byte _08037BF2 @ case 32
	.4byte _0803802A @ case 33
	.4byte _0803802A @ case 34
	.4byte _0803802A @ case 35
	.4byte _0803802A @ case 36
	.4byte _0803802A @ case 37
	.4byte _0803802A @ case 38
	.4byte _0803802A @ case 39
	.4byte _0803802A @ case 40
	.4byte _0803802A @ case 41
	.4byte _0803802A @ case 42
	.4byte _0803802A @ case 43
	.4byte _0803802A @ case 44
	.4byte _0803802A @ case 45
	.4byte _0803802A @ case 46
	.4byte _0803802A @ case 47
	.4byte _08037E88 @ case 48
	.4byte _0803802A @ case 49
	.4byte _08037E92 @ case 50
	.4byte _08037E96 @ case 51
	.4byte _08037EAC @ case 52
	.4byte _08037F18 @ case 53
	.4byte _0803802A @ case 54
	.4byte _0803802A @ case 55
	.4byte _0803802A @ case 56
	.4byte _0803802A @ case 57
	.4byte _0803802A @ case 58
	.4byte _0803802A @ case 59
	.4byte _0803802A @ case 60
	.4byte _0803802A @ case 61
	.4byte _0803802A @ case 62
	.4byte _0803802A @ case 63
	.4byte _08037F54 @ case 64
	.4byte _08037F80 @ case 65
	.4byte _08037FE4 @ case 66
_08037A24:
	adds r1, r6, #0
	adds r1, #0x9a
	movs r0, #0
	strb r0, [r1]
	mov r1, sl
	adds r1, #0x79
	movs r0, #8
	strb r0, [r1]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	ldr r2, _08037A5C @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _08037A60 @ =0x00196225
	muls r0, r1, r0
	ldr r4, _08037A64 @ =0x3C6EF35F
	adds r0, r0, r4
	str r0, [r2]
	movs r1, #0x30
	ands r0, r1
	lsrs r0, r0, #4
	cmp r0, #1
	beq _08037A78
	cmp r0, #1
	bgt _08037A68
	cmp r0, #0
	beq _08037A70
	b _08037A88
	.align 2, 0
_08037A5C: .4byte gPseudoRandom
_08037A60: .4byte 0x00196225
_08037A64: .4byte 0x3C6EF35F
_08037A68:
	cmp r0, #2
	beq _08037A80
	cmp r0, #3
	bne _08037A88
_08037A70:
	adds r1, r6, #0
	adds r1, #0x92
	movs r0, #0x5a
	b _08037A86
_08037A78:
	adds r1, r6, #0
	adds r1, #0x92
	movs r0, #0xb4
	b _08037A86
_08037A80:
	adds r1, r6, #0
	adds r1, #0x92
	movs r0, #0xf0
_08037A86:
	strh r0, [r1]
_08037A88:
	adds r4, r6, #0
	adds r4, #0x92
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08037A9A
	b _0803802A
_08037A9A:
	ldr r7, [sp, #0x1c]
	asrs r0, r7, #0x10
	bl sub_803711C
	adds r1, r6, #0
	adds r1, #0x9a
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	beq _08037ABA
	movs r0, #0xa
	strh r0, [r4]
	ldrb r0, [r5]
	adds r0, #1
	b _08038028
_08037ABA:
	mov r1, sl
	adds r1, #0x79
	movs r0, #0xa
	strb r0, [r1]
	movs r0, #0x14
	strh r0, [r4]
	movs r0, #0x40
	b _08038028
_08037ACA:
	mov r2, sl
	adds r2, #0x7a
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	strb r0, [r2]
	cmp r0, #0
	bne _08037ADC
	b _0803802A
_08037ADC:
	adds r2, r6, #0
	adds r2, #0x92
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08037AEE
	b _0803802A
_08037AEE:
	movs r1, #0xa
	movs r0, #0xa
	strh r0, [r2]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	mov r0, sl
	adds r0, #0x79
	strb r1, [r0]
	b _0803802A
_08037B02:
	mov r0, sl
	adds r0, #0x7a
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08037B12
	b _0803802A
_08037B12:
	adds r2, r6, #0
	adds r2, #0x92
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _08037B26
	b _0803802A
_08037B26:
	mov r1, sl
	adds r1, #0x79
	movs r0, #0xd
	strb r0, [r1]
	adds r1, r6, #0
	adds r1, #0x9a
	ldrb r0, [r1]
	lsls r0, r0, #4
	strb r0, [r5]
	ldrb r0, [r1]
	cmp r0, #2
	bne _08037B4A
	movs r0, #0x1e
	strh r0, [r2]
	movs r0, #0xac
	bl m4aSongNumStart
	b _0803802A
_08037B4A:
	cmp r0, #1
	beq _08037B50
	b _0803802A
_08037B50:
	strh r3, [r2]
	b _0803802A
_08037B54:
	mov r1, sl
	adds r1, #0x79
	movs r2, #0
	movs r0, #0xf
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x9a
	strb r2, [r0]
	ldrb r0, [r5]
	adds r0, #1
	b _08038028
_08037B6A:
	bl sub_803967C
	adds r1, r6, #0
	adds r1, #0x92
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r6, #0x7c]
	subs r1, #0xe
	movs r0, #0x40
	rsbs r0, r0, #0
	str r0, [r1]
	ldrb r0, [r5]
	adds r0, #1
	b _08038028
_08037B8C:
	movs r2, #0
	ldr r0, [r6, #0x7c]
	cmp r0, #0
	bgt _08037BA8
	adds r3, r6, #0
	adds r3, #0x84
	ldr r1, [r3]
	adds r0, r1, #0
	cmp r1, #0
	bge _08037BA2
	adds r0, r1, #3
_08037BA2:
	asrs r0, r0, #2
	subs r0, r1, r0
	str r0, [r3]
_08037BA8:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08037BC4
	ldr r0, [r6, #0x74]
	ldr r1, _08037BC0 @ =0xFFFF8C00
	cmp r0, r1
	blt _08037BD2
	str r1, [r6, #0x74]
	b _08037BD8
	.align 2, 0
_08037BC0: .4byte 0xFFFF8C00
_08037BC4:
	ldr r0, [r6, #0x74]
	movs r1, #0xe8
	lsls r1, r1, #7
	cmp r0, r1
	bgt _08037BD2
	str r1, [r6, #0x74]
	movs r2, #0xff
_08037BD2:
	cmp r2, #0
	bne _08037BD8
	b _0803802A
_08037BD8:
	movs r1, #0
	str r1, [r6, #0x7c]
	adds r0, r6, #0
	adds r0, #0x84
	str r1, [r0]
	adds r0, #0xe
	ldrh r0, [r0]
	cmp r0, #0
	beq _08037BEE
	movs r0, #4
	b _08038028
_08037BEE:
	movs r0, #0x10
	b _08038028
_08037BF2:
	adds r1, r6, #0
	adds r1, #0x92
	ldrh r0, [r1]
	subs r0, #1
	movs r4, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	adds r3, r1, #0
	cmp r0, #0
	bne _08037C40
	movs r0, #4
	strb r0, [r5]
	ldr r0, _08037C30 @ =gPlayer
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08037C20
	ldr r0, _08037C34 @ =gNumLives
	ldrb r0, [r0]
	cmp r0, #0
	bne _08037C20
	b _0803802A
_08037C20:
	ldr r1, _08037C38 @ =gWinRegs
	ldr r0, _08037C3C @ =0x00001F1F
	strh r0, [r1, #8]
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	b _0803802A
	.align 2, 0
_08037C30: .4byte gPlayer
_08037C34: .4byte gNumLives
_08037C38: .4byte gWinRegs
_08037C3C: .4byte 0x00001F1F
_08037C40:
	ldr r0, _08037D54 @ =gPlayer
	ldr r1, [r0, #0x10]
	movs r2, #0x80
	ands r1, r2
	adds r6, r0, #0
	cmp r1, #0
	beq _08037C56
	ldr r0, _08037D58 @ =gNumLives
	ldrb r0, [r0]
	cmp r0, #0
	beq _08037C5C
_08037C56:
	ldr r1, _08037D5C @ =gWinRegs
	ldr r0, _08037D60 @ =0x00003F3F
	strh r0, [r1, #8]
_08037C5C:
	movs r1, #0
	ldrsh r0, [r3, r1]
	subs r0, #0xf
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08037C72
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_08037C72:
	movs r0, #0xf
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	lsls r0, r1, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb
	ble _08037C8C
	movs r1, #0xc
	movs r4, #0xb
_08037C8C:
	ldrh r0, [r7, #0x18]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r2, r0, r1
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0xa0
	ble _08037CA6
	movs r3, #0xa0
_08037CA6:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08037D80
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08037CC4
	ldr r0, _08037D58 @ =gNumLives
	ldrb r0, [r0]
	cmp r0, #0
	beq _08037CDE
_08037CC4:
	ldr r2, _08037D5C @ =gWinRegs
	ldrh r0, [r7, #0x16]
	adds r0, #0x20
	lsls r0, r0, #8
	movs r1, #0xf0
	orrs r0, r1
	strh r0, [r2]
	lsls r1, r5, #0x10
	asrs r1, r1, #8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	strh r0, [r2, #4]
_08037CDE:
	ldr r0, _08037D64 @ =gCamera
	ldrh r5, [r0]
	adds r5, #0x78
	ldrh r0, [r7, #0x16]
	subs r0, #0x58
	lsls r4, r4, #0x10
	rsbs r3, r4, #0
	asrs r3, r3, #0x10
	movs r2, #0
	str r2, [sp, #0xc]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08037D68 @ =0xFFFFFF00
	ldr r7, [sp, #0x10]
	ands r1, r7
	orrs r1, r0
	str r1, [sp, #0x10]
	movs r0, #0xf0
	lsls r0, r0, #0xf
	ldr r2, _08037D6C @ =0xFF00FFFF
	ands r2, r1
	orrs r2, r0
	str r2, [sp, #0x10]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x10
	ldr r0, _08037D70 @ =0xFFFF00FF
	ands r0, r2
	orrs r0, r3
	str r0, [sp, #0x10]
	lsls r4, r4, #8
	ldr r1, _08037D74 @ =0x00FFFFFF
	ands r0, r1
	orrs r0, r4
	str r0, [sp, #0x10]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	ldr r0, [sp, #0x20]
	asrs r4, r0, #0x10
	str r6, [sp]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_800C1E8
	adds r6, r0, #0
	ldr r0, _08037D78 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	beq _08037D48
	b _08037E44
_08037D48:
	ldr r0, _08037D7C @ =gUnknown_03005AB0
	str r0, [sp]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	b _08037E14
	.align 2, 0
_08037D54: .4byte gPlayer
_08037D58: .4byte gNumLives
_08037D5C: .4byte gWinRegs
_08037D60: .4byte 0x00003F3F
_08037D64: .4byte gCamera
_08037D68: .4byte 0xFFFFFF00
_08037D6C: .4byte 0xFF00FFFF
_08037D70: .4byte 0xFFFF00FF
_08037D74: .4byte 0x00FFFFFF
_08037D78: .4byte gUnknown_03005088
_08037D7C: .4byte gUnknown_03005AB0
_08037D80:
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08037D92
	ldr r0, _08037E20 @ =gNumLives
	ldrb r0, [r0]
	cmp r0, #0
	beq _08037DA6
_08037D92:
	ldr r2, _08037E24 @ =gWinRegs
	ldrh r0, [r7, #0x16]
	subs r0, #0x20
	strh r0, [r2]
	lsls r1, r5, #0x10
	asrs r1, r1, #8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	strh r0, [r2, #4]
_08037DA6:
	ldr r0, _08037E28 @ =gCamera
	ldrh r5, [r0]
	adds r5, #0x78
	ldrh r2, [r7, #0x16]
	subs r2, #0x98
	lsls r4, r4, #0x10
	rsbs r3, r4, #0
	asrs r3, r3, #0x10
	movs r0, #0
	str r0, [sp, #0x14]
	movs r1, #0x88
	ldr r0, _08037E2C @ =0xFFFFFF00
	ldr r7, [sp, #0x18]
	ands r0, r7
	orrs r0, r1
	str r0, [sp, #0x18]
	lsls r2, r2, #0x18
	lsrs r2, r2, #8
	ldr r1, _08037E30 @ =0xFF00FFFF
	ands r1, r0
	orrs r1, r2
	str r1, [sp, #0x18]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x10
	ldr r0, _08037E34 @ =0xFFFF00FF
	ands r0, r1
	orrs r0, r3
	str r0, [sp, #0x18]
	lsls r4, r4, #8
	ldr r1, _08037E38 @ =0x00FFFFFF
	ands r0, r1
	orrs r0, r4
	str r0, [sp, #0x18]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	ldr r0, [sp, #0x20]
	asrs r4, r0, #0x10
	str r6, [sp]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_800C1E8
	adds r6, r0, #0
	ldr r0, _08037E3C @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08037E44
	ldr r0, _08037E40 @ =gUnknown_03005AB0
	str r0, [sp]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
_08037E14:
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_800C1E8
	b _08037E46
	.align 2, 0
_08037E20: .4byte gNumLives
_08037E24: .4byte gWinRegs
_08037E28: .4byte gCamera
_08037E2C: .4byte 0xFFFFFF00
_08037E30: .4byte 0xFF00FFFF
_08037E34: .4byte 0xFFFF00FF
_08037E38: .4byte 0x00FFFFFF
_08037E3C: .4byte gUnknown_03005088
_08037E40: .4byte gUnknown_03005AB0
_08037E44:
	movs r0, #0
_08037E46:
	orrs r6, r0
	cmp r6, #2
	beq _08037E4E
	b _0803802A
_08037E4E:
	ldr r0, _08037E74 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	ldr r1, _08037E78 @ =0x03000044
	adds r3, r2, r1
	ldr r4, _08037E7C @ =0x03000064
	adds r1, r2, r4
	movs r0, #3
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _08037E80 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r7, _08037E84 @ =0x03000065
	adds r2, r2, r7
	movs r0, #0xff
	strb r0, [r2]
	b _0803802A
	.align 2, 0
_08037E74: .4byte gCurTask
_08037E78: .4byte 0x03000044
_08037E7C: .4byte 0x03000064
_08037E80: .4byte 0xFFFFBFFF
_08037E84: .4byte 0x03000065
_08037E88:
	bl sub_8039940
	ldrb r0, [r5]
	adds r0, #1
	b _08038028
_08037E92:
	movs r0, #4
	b _08038028
_08037E96:
	ldr r0, _08037EA8 @ =0xFFFFFE00
	str r0, [r6, #0x7c]
	adds r1, r6, #0
	adds r1, #0x92
	movs r0, #0
	strh r0, [r1]
	ldrb r0, [r5]
	adds r0, #1
	b _08038028
	.align 2, 0
_08037EA8: .4byte 0xFFFFFE00
_08037EAC:
	adds r3, r6, #0
	adds r3, #0x92
	ldrh r0, [r3]
	cmp r0, #0
	beq _08037EC2
	mov r0, sl
	adds r0, #0x79
	movs r2, #0
	movs r1, #0xf
	strb r1, [r0]
	strh r2, [r3]
_08037EC2:
	movs r2, #0
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08037EE4
	ldr r1, [r6, #0x74]
	ldr r0, _08037EE0 @ =0x0000CFFF
	cmp r1, r0
	ble _08037EF0
	adds r0, #1
	str r0, [sp, #8]
	b _08037EF6
	.align 2, 0
_08037EE0: .4byte 0x0000CFFF
_08037EE4:
	ldr r0, [r6, #0x74]
	ldr r1, _08037F14 @ =0xFFFF3000
	cmp r0, r1
	bgt _08037EF0
	str r1, [sp, #8]
	movs r2, #0xff
_08037EF0:
	cmp r2, #0
	bne _08037EF6
	b _0803802A
_08037EF6:
	ldr r1, [sp, #8]
	str r1, [r6, #0x74]
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	eors r0, r1
	str r0, [r7, #0x10]
	ldr r2, [sp, #4]
	ldr r0, [r2, #0x10]
	eors r0, r1
	str r0, [r2, #0x10]
	ldrb r0, [r5]
	adds r0, #1
	b _08038028
	.align 2, 0
_08037F14: .4byte 0xFFFF3000
_08037F18:
	movs r2, #0
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08037F38
	ldr r0, [r6, #0x74]
	ldr r1, _08037F34 @ =0xFFFF8C00
	cmp r0, r1
	blt _08037F46
	str r1, [sp, #8]
	b _08037F4A
	.align 2, 0
_08037F34: .4byte 0xFFFF8C00
_08037F38:
	ldr r0, [r6, #0x74]
	movs r1, #0xe8
	lsls r1, r1, #7
	cmp r0, r1
	bgt _08037F46
	str r1, [sp, #8]
	movs r2, #0xff
_08037F46:
	cmp r2, #0
	beq _0803802A
_08037F4A:
	ldr r3, [sp, #8]
	str r3, [r6, #0x74]
	movs r0, #0
	str r0, [r6, #0x7c]
	b _08038028
_08037F54:
	mov r0, sl
	adds r0, #0x7a
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803802A
	adds r1, r6, #0
	adds r1, #0x92
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803802A
	ldr r0, _08037F7C @ =0xFFFFFD00
	str r0, [r6, #0x7c]
	ldrb r0, [r5]
	adds r0, #1
	b _08038028
	.align 2, 0
_08037F7C: .4byte 0xFFFFFD00
_08037F80:
	movs r2, #0
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08037FA4
	ldr r1, [r6, #0x74]
	ldr r0, _08037FA0 @ =0x0000CFFF
	cmp r1, r0
	ble _08037FB0
	movs r4, #0xd0
	lsls r4, r4, #8
	str r4, [sp, #8]
	b _08037FB4
	.align 2, 0
_08037FA0: .4byte 0x0000CFFF
_08037FA4:
	ldr r0, [r6, #0x74]
	ldr r1, _08037FDC @ =0xFFFF3000
	cmp r0, r1
	bgt _08037FB0
	str r1, [sp, #8]
	movs r2, #0xff
_08037FB0:
	cmp r2, #0
	beq _0803802A
_08037FB4:
	ldr r0, _08037FE0 @ =0xFFFFFE00
	str r0, [r6, #0x7c]
	mov r1, sl
	adds r1, #0x79
	movs r0, #0x13
	strb r0, [r1]
	ldr r0, [sp, #8]
	str r0, [r6, #0x74]
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	eors r0, r1
	str r0, [r7, #0x10]
	ldr r2, [sp, #4]
	ldr r0, [r2, #0x10]
	eors r0, r1
	str r0, [r2, #0x10]
	ldrb r0, [r5]
	adds r0, #1
	b _08038028
	.align 2, 0
_08037FDC: .4byte 0xFFFF3000
_08037FE0: .4byte 0xFFFFFE00
_08037FE4:
	movs r2, #0
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08038004
	ldr r0, [r6, #0x74]
	ldr r1, _08038000 @ =0xFFFF8C00
	cmp r0, r1
	blt _08038014
	str r1, [r6, #0x74]
	str r2, [r6, #0x7c]
	b _08038018
	.align 2, 0
_08038000: .4byte 0xFFFF8C00
_08038004:
	ldr r0, [r6, #0x74]
	movs r1, #0xe8
	lsls r1, r1, #7
	cmp r0, r1
	bgt _08038014
	str r1, [r6, #0x74]
	str r2, [r6, #0x7c]
	movs r2, #0xff
_08038014:
	cmp r2, #0
	beq _0803802A
_08038018:
	mov r0, sl
	adds r0, #0x7a
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0803802A
	movs r0, #0
_08038028:
	strb r0, [r5]
_0803802A:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803803C
sub_803803C: @ 0x0803803C
	push {r4, r5, r6, lr}
	ldr r0, _08038108 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	ldr r2, _0803810C @ =0x0300000C
	adds r4, r1, r2
	ldr r3, _08038110 @ =0x03000099
	adds r2, r1, r3
	movs r5, #0
	strb r5, [r2]
	str r5, [r0, #0x7c]
	ldr r2, _08038114 @ =0x03000080
	adds r0, r1, r2
	str r5, [r0]
	subs r3, #0x35
	adds r2, r1, r3
	movs r0, #2
	strb r0, [r2]
	ldr r0, _08038118 @ =0x03000065
	adds r1, r1, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _0803811C @ =gCamera
	ldrh r0, [r1]
	strh r0, [r1, #0x18]
	adds r0, #0xf0
	strh r0, [r1, #0x1a]
	movs r0, #0x90
	bl m4aSongNumStart
	ldr r0, [r4, #0x10]
	ldr r1, _08038120 @ =0xFFFFFE7F
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r3, _08038124 @ =gPlayer
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080380AA
	ldr r2, _08038128 @ =gDispCnt
	ldrh r0, [r2]
	ldr r1, _0803812C @ =0x00007FFF
	ands r1, r0
	ldr r0, _08038130 @ =gWinRegs
	strh r5, [r0, #0xa]
	ldr r0, _08038134 @ =gBldRegs
	strh r5, [r0]
	strh r5, [r0, #4]
	ldr r0, _08038138 @ =0x00001FFF
	ands r1, r0
	strh r1, [r2]
_080380AA:
	strh r5, [r3, #0xc]
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r3, #0x10]
	strh r5, [r3, #0x38]
	strh r5, [r3, #0x3a]
	ldr r2, _0803813C @ =gUnknown_03005004
	ldrh r0, [r2]
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08038140 @ =gLevelScore
	ldr r6, [r1]
	movs r2, #0xfa
	lsls r2, r2, #2
	adds r0, r6, r2
	str r0, [r1]
	ldr r4, _08038144 @ =0x0000C350
	adds r1, r4, #0
	bl Div
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl Div
	cmp r5, r0
	beq _080380F6
	ldr r0, _08038148 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _080380F6
	ldr r1, _0803814C @ =gNumLives
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_080380F6:
	bl sub_8038154
	ldr r0, _08038108 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08038150 @ =sub_8038154
	str r0, [r1, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08038108: .4byte gCurTask
_0803810C: .4byte 0x0300000C
_08038110: .4byte 0x03000099
_08038114: .4byte 0x03000080
_08038118: .4byte 0x03000065
_0803811C: .4byte gCamera
_08038120: .4byte 0xFFFFFE7F
_08038124: .4byte gPlayer
_08038128: .4byte gDispCnt
_0803812C: .4byte 0x00007FFF
_08038130: .4byte gWinRegs
_08038134: .4byte gBldRegs
_08038138: .4byte 0x00001FFF
_0803813C: .4byte gUnknown_03005004
_08038140: .4byte gLevelScore
_08038144: .4byte 0x0000C350
_08038148: .4byte gGameMode
_0803814C: .4byte gNumLives
_08038150: .4byte sub_8038154

	thumb_func_start sub_8038154
sub_8038154: @ 0x08038154
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	movs r5, #0
	movs r7, #0
	ldr r4, _08038244 @ =gCurTask
	ldr r0, [r4]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	adds r0, #0xc
	adds r0, r0, r3
	mov r8, r0
	ldr r1, _08038248 @ =0x03000044
	adds r1, r1, r3
	mov sb, r1
	ldr r2, _0803824C @ =0x03000099
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0803822C
	ldr r5, _08038250 @ =0x03000080
	adds r2, r3, r5
	cmp r0, #0
	bne _08038192
	ldr r0, [r2]
	adds r0, #0x10
	str r0, [r2]
_08038192:
	ldr r0, [r6, #0x74]
	ldr r1, [r6, #0x7c]
	adds r0, r0, r1
	str r0, [r6, #0x74]
	ldr r1, [r6, #0x78]
	ldr r2, [r2]
	adds r1, r1, r2
	str r1, [r6, #0x78]
	ldr r5, _08038254 @ =0x03000088
	adds r2, r3, r5
	asrs r0, r0, #8
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r2, _08038258 @ =0x0300008A
	adds r0, r3, r2
	asrs r1, r1, #8
	ldrh r0, [r0]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r1, _0803825C @ =0x0300008C
	adds r0, r3, r1
	strh r5, [r0]
	adds r2, #4
	adds r0, r3, r2
	strh r7, [r0]
	adds r1, #6
	adds r0, r3, r1
	ldrh r1, [r0]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080381E4
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	bl sub_8038420
_080381E4:
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, sb
	bl UpdateSpriteAnimation
	ldr r4, [r4]
	ldrh r1, [r4, #6]
	ldr r2, _08038260 @ =0x0300000C
	adds r1, r1, r2
	ldr r3, _08038264 @ =gCamera
	ldrh r2, [r3]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	strh r0, [r1, #0x16]
	ldrh r2, [r3, #2]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	strh r0, [r1, #0x18]
	ldrh r0, [r4, #6]
	ldr r1, _08038260 @ =0x0300000C
	adds r2, r0, r1
	adds r1, #0x38
	adds r0, r0, r1
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	mov r0, r8
	bl DisplaySprite
	mov r0, sb
	bl DisplaySprite
_0803822C:
	adds r0, r6, #0
	adds r0, #0x99
	ldrb r4, [r0]
	mov sb, r0
	cmp r4, #1
	beq _08038332
	cmp r4, #1
	bgt _08038268
	cmp r4, #0
	beq _08038270
	b _0803840C
	.align 2, 0
_08038244: .4byte gCurTask
_08038248: .4byte 0x03000044
_0803824C: .4byte 0x03000099
_08038250: .4byte 0x03000080
_08038254: .4byte 0x03000088
_08038258: .4byte 0x0300008A
_0803825C: .4byte 0x0300008C
_08038260: .4byte 0x0300000C
_08038264: .4byte gCamera
_08038268:
	cmp r4, #2
	bne _0803826E
	b _08038404
_0803826E:
	b _0803840C
_08038270:
	movs r2, #0x92
	adds r2, r2, r6
	mov r8, r2
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x14
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	ldr r2, _08038314 @ =sub_803FD5C
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	bl sub_804021C
	cmp r0, #0
	blt _08038298
	b _0803840C
_08038298:
	lsls r1, r0, #8
	ldr r0, [r6, #0x78]
	adds r0, r0, r1
	str r0, [r6, #0x78]
	adds r2, r6, #0
	adds r2, #0x80
	ldr r1, [r2]
	asrs r0, r1, #2
	subs r0, r0, r1
	str r0, [r2]
	ldr r1, _08038318 @ =0xFFFFFF00
	cmp r0, r1
	bgt _080382B4
	b _0803840C
_080382B4:
	str r4, [r2]
	movs r0, #0xf0
	mov r5, r8
	strh r0, [r5]
	mov r1, sb
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, _0803831C @ =gSelectedCharacter
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0803832C
	ldr r0, _08038320 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xb
	ble _0803832C
	ldr r1, _08038324 @ =gUnknown_03005160
	ldrb r0, [r1, #0x1d]
	cmp r0, #0x7f
	bne _0803832C
	ldrh r2, [r1, #8]
	cmp r2, #0xc
	bls _0803832C
	ldrh r0, [r1, #0xa]
	cmp r0, #0xc
	bls _0803832C
	ldrh r0, [r1, #0xc]
	cmp r0, #0xc
	bls _0803832C
	ldrh r0, [r1, #0xe]
	cmp r0, #0xc
	bls _0803832C
	cmp r2, #0xf
	bne _0803830C
	ldr r0, _08038328 @ =gUnknown_03005124
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xc
	beq _0803832C
_0803830C:
	bl sub_803A54C
	b _0803840C
	.align 2, 0
_08038314: .4byte sub_803FD5C
_08038318: .4byte 0xFFFFFF00
_0803831C: .4byte gSelectedCharacter
_08038320: .4byte gCurrentLevel
_08038324: .4byte gUnknown_03005160
_08038328: .4byte gUnknown_03005124
_0803832C:
	bl sub_803A594
	b _0803840C
_08038332:
	adds r1, r6, #0
	adds r1, #0x92
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803840C
	ldr r0, _080383EC @ =gSelectedCharacter
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r6, r5, #0x10
	lsls r2, r7, #0x10
	cmp r0, #0
	bne _080383A2
	ldr r0, _080383F0 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xb
	ble _080383A2
	ldr r1, _080383F4 @ =gUnknown_03005160
	ldrb r0, [r1, #0x1d]
	cmp r0, #0x7f
	bne _080383A2
	ldrh r3, [r1, #8]
	cmp r3, #0xc
	bls _080383A2
	ldrh r0, [r1, #0xa]
	cmp r0, #0xc
	bls _080383A2
	ldrh r0, [r1, #0xc]
	cmp r0, #0xc
	bls _080383A2
	ldrh r0, [r1, #0xe]
	cmp r0, #0xc
	bls _080383A2
	cmp r3, #0xf
	bne _0803838E
	ldr r0, _080383F8 @ =gUnknown_03005124
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xc
	beq _080383A2
_0803838E:
	lsls r5, r5, #0x10
	asrs r0, r5, #0x10
	lsls r4, r7, #0x10
	ldr r2, _080383FC @ =0xFFF80000
	adds r1, r4, r2
	asrs r1, r1, #0x10
	bl sub_8015C5C
	adds r6, r5, #0
	adds r2, r4, #0
_080383A2:
	ldr r1, _08038400 @ =gUnknown_03005040
	movs r0, #0x36
	strb r0, [r1, #1]
	asrs r4, r6, #0x10
	lsls r5, r4, #8
	mov r8, r5
	asrs r5, r2, #0x10
	adds r1, r5, #0
	subs r1, #0x18
	lsls r1, r1, #8
	mov r0, r8
	bl sub_8017540
	adds r0, r4, #0
	subs r0, #0x10
	lsls r0, r0, #8
	lsls r6, r5, #8
	adds r1, r6, #0
	bl sub_8017540
	adds r4, #0x10
	lsls r4, r4, #8
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_8017540
	adds r5, #0x18
	lsls r5, r5, #8
	mov r0, r8
	adds r1, r5, #0
	bl sub_8017540
	mov r1, sb
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _0803840C
	.align 2, 0
_080383EC: .4byte gSelectedCharacter
_080383F0: .4byte gCurrentLevel
_080383F4: .4byte gUnknown_03005160
_080383F8: .4byte gUnknown_03005124
_080383FC: .4byte 0xFFF80000
_08038400: .4byte gUnknown_03005040
_08038404:
	ldr r0, _0803841C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0803840C:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803841C: .4byte gCurTask

	thumb_func_start sub_8038420
sub_8038420: @ 0x08038420
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r0, _0803852C @ =gPseudoRandom
	mov sb, r0
	ldr r0, [r0]
	ldr r7, _08038530 @ =0x00196225
	muls r0, r7, r0
	ldr r1, _08038534 @ =0x3C6EF35F
	mov sl, r1
	add r0, sl
	mov r1, sb
	str r0, [r1]
	movs r4, #7
	ands r4, r0
	ldr r0, _08038538 @ =gUnknown_080BB434
	adds r0, r4, r0
	ldrb r0, [r0]
	bl VramMalloc
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #6
	mov r8, r0
	ldr r2, _0803853C @ =gUnknown_080BB41C
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, _08038540 @ =gUnknown_080BB42C
	adds r4, r4, r0
	ldrb r3, [r4]
	ldr r0, _08038544 @ =sub_80177EC
	str r0, [sp]
	mov r0, r8
	bl sub_801769C
	ldrh r1, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r1, r3
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r0, r5, #8
	str r0, [r3, #0x30]
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	mov ip, r6
	mov r0, ip
	adds r0, #0x10
	lsls r0, r0, #8
	str r0, [r3, #0x34]
	mov r6, r8
	str r6, [r3, #0x10]
	movs r0, #0xb8
	lsls r0, r0, #3
	strh r0, [r3, #0x1a]
	movs r0, #5
	strh r0, [r3, #0x3e]
	ldr r0, _08038548 @ =0x03000040
	adds r1, r1, r0
	movs r0, #0x20
	strh r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	adds r4, r0, #0
	muls r4, r7, r4
	add r4, sl
	str r4, [r1]
	ldr r6, _0803854C @ =gSineTable
	mov r8, r6
	ldr r1, _08038550 @ =0x000001FF
	ands r1, r4
	lsls r0, r1, #1
	add r0, r8
	movs r6, #0
	ldrsh r2, [r0, r6]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #9
	rsbs r0, r0, #0
	asrs r0, r0, #0xe
	strh r0, [r3, #0x3a]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	add r1, r8
	movs r6, #0
	ldrsh r1, [r1, r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #9
	rsbs r0, r0, #0
	asrs r0, r0, #0xe
	strh r0, [r3, #0x38]
	adds r1, r4, #0
	muls r1, r7, r1
	add r1, sl
	mov r0, sb
	str r1, [r0]
	movs r0, #0x3f
	ands r0, r1
	adds r5, r5, r0
	subs r5, #0x20
	lsls r5, r5, #8
	movs r0, #0xfc
	lsls r0, r0, #0xe
	ands r1, r0
	asrs r1, r1, #0x10
	subs r1, #0x20
	mov r0, ip
	subs r6, r0, r1
	lsls r6, r6, #8
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_8017540
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803852C: .4byte gPseudoRandom
_08038530: .4byte 0x00196225
_08038534: .4byte 0x3C6EF35F
_08038538: .4byte gUnknown_080BB434
_0803853C: .4byte gUnknown_080BB41C
_08038540: .4byte gUnknown_080BB42C
_08038544: .4byte sub_80177EC
_08038548: .4byte 0x03000040
_0803854C: .4byte gSineTable
_08038550: .4byte 0x000001FF

	thumb_func_start sub_8038554
sub_8038554: @ 0x08038554
	push {r4, r5, lr}
	ldr r0, _08038574 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r0, [r4, #8]
	cmp r0, #8
	bls _0803856A
	b _08038858
_0803856A:
	lsls r0, r0, #2
	ldr r1, _08038578 @ =_0803857C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08038574: .4byte gCurTask
_08038578: .4byte _0803857C
_0803857C: @ jump table
	.4byte _080385A0 @ case 0
	.4byte _080385F0 @ case 1
	.4byte _08038638 @ case 2
	.4byte _08038668 @ case 3
	.4byte _08038690 @ case 4
	.4byte _080386D4 @ case 5
	.4byte _08038788 @ case 6
	.4byte _080387CC @ case 7
	.4byte _08038820 @ case 8
_080385A0:
	ldrh r0, [r4, #6]
	cmp r0, #0
	beq _080385AC
	subs r0, #1
	strh r0, [r4, #6]
	b _08038858
_080385AC:
	ldr r2, _080385DC @ =gPlayer
	ldr r0, [r2, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080385BA
	b _08038858
_080385BA:
	movs r0, #0x10
	strh r0, [r2, #0x38]
	ldr r2, _080385E0 @ =gUnknown_03005A0C
	ldr r1, _080385E4 @ =gCollisionTable
	ldr r0, _080385E8 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	ldr r1, _080385EC @ =gCamera
	ldrh r0, [r0, #0x1c]
	strh r0, [r1, #0x1a]
	b _08038804
	.align 2, 0
_080385DC: .4byte gPlayer
_080385E0: .4byte gUnknown_03005A0C
_080385E4: .4byte gCollisionTable
_080385E8: .4byte gCurrentLevel
_080385EC: .4byte gCamera
_080385F0:
	ldr r5, _0803862C @ =gPlayer
	ldr r1, [r5]
	ldr r0, _08038630 @ =0x000E5FFF
	cmp r1, r0
	bgt _080385FC
	b _08038858
_080385FC:
	movs r0, #0x20
	strh r0, [r5, #0x38]
	movs r0, #0xc
	strh r0, [r4, #6]
	bl sub_8038C20
	ldrb r0, [r4, #8]
	adds r0, #1
	strb r0, [r4, #8]
	ldr r3, _08038634 @ =gCamera
	movs r1, #0x14
	ldrsh r0, [r3, r1]
	movs r2, #0x16
	ldrsh r1, [r3, r2]
	ldr r2, [r5]
	asrs r2, r2, #8
	subs r2, #0x60
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r5, #0x1a
	ldrsh r3, [r3, r5]
	bl sub_80171BC
	b _08038858
	.align 2, 0
_0803862C: .4byte gPlayer
_08038630: .4byte 0x000E5FFF
_08038634: .4byte gCamera
_08038638:
	ldrh r0, [r4, #6]
	subs r0, #1
	strh r0, [r4, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08038648
	b _08038858
_08038648:
	ldr r2, _08038664 @ =gPlayer
	strh r0, [r2, #0x38]
	adds r1, r2, #0
	adds r1, #0x40
	movs r0, #0x34
	strb r0, [r1]
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r2, #0x10]
	movs r0, #0x3c
	strh r0, [r4, #6]
	b _08038804
	.align 2, 0
_08038664: .4byte gPlayer
_08038668:
	ldrh r0, [r4, #6]
	subs r0, #1
	strh r0, [r4, #6]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08038676
	b _08038858
_08038676:
	ldr r0, _08038688 @ =gRingCount
	ldrh r0, [r0]
	ldr r1, _0803868C @ =gCourseTime
	ldr r1, [r1]
	bl sub_80573D4
	strh r0, [r4, #6]
	b _08038804
	.align 2, 0
_08038688: .4byte gRingCount
_0803868C: .4byte gCourseTime
_08038690:
	ldr r3, _080386CC @ =gPlayer
	adds r1, r3, #0
	adds r1, #0x46
	movs r0, #0x3c
	strh r0, [r1]
	ldrh r0, [r4, #6]
	subs r0, #1
	strh r0, [r4, #6]
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _080386AA
	b _08038858
_080386AA:
	subs r1, #6
	movs r0, #0x32
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r0, [r3, #4]
	ldr r1, _080386D0 @ =0xFFFFF000
	adds r0, r0, r1
	str r0, [r3, #4]
	strh r2, [r4, #0xe]
	strh r2, [r4, #0xc]
	strh r2, [r4, #6]
	b _08038804
	.align 2, 0
_080386CC: .4byte gPlayer
_080386D0: .4byte 0xFFFFF000
_080386D4:
	ldrh r0, [r4, #6]
	adds r0, #1
	strh r0, [r4, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x22
	bne _080386E6
	bl sub_8038B38
_080386E6:
	ldrh r0, [r4, #6]
	cmp r0, #0x99
	bls _08038704
	ldr r0, _08038700 @ =gPlayer
	adds r0, #0x40
	movs r1, #0x33
	strb r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0xc]
	movs r0, #0x78
	strh r0, [r4, #6]
	b _08038804
	.align 2, 0
_08038700: .4byte gPlayer
_08038704:
	cmp r0, #0x21
	bls _0803873C
	ldrh r0, [r4, #0xe]
	adds r0, #0x10
	ldr r1, _08038730 @ =0x000003FF
	ands r0, r1
	strh r0, [r4, #0xe]
	ldr r1, _08038734 @ =gSineTable
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	ldr r2, _08038738 @ =gPlayer
	movs r3, #0xa
	ldrsh r0, [r4, r3]
	asrs r1, r1, #0x1b
	adds r0, r0, r1
	lsls r0, r0, #8
	str r0, [r2, #4]
	b _08038858
	.align 2, 0
_08038730: .4byte 0x000003FF
_08038734: .4byte gSineTable
_08038738: .4byte gPlayer
_0803873C:
	cmp r0, #0x1f
	bls _08038764
	movs r5, #0x80
	lsls r5, r5, #3
	adds r0, r5, #0
	ldrh r1, [r4, #0xc]
	adds r0, r0, r1
	strh r0, [r4, #0xc]
	ldr r2, _08038760 @ =gPlayer
	movs r3, #0xc
	ldrsh r1, [r4, r3]
	ldr r0, [r2, #4]
	adds r0, r0, r1
	str r0, [r2, #4]
	asrs r0, r0, #8
	strh r0, [r4, #0xa]
	b _08038858
	.align 2, 0
_08038760: .4byte gPlayer
_08038764:
	cmp r0, #0x19
	bls _08038858
	ldr r5, _08038780 @ =0xFFFFFE80
	adds r0, r5, #0
	ldrh r1, [r4, #0xc]
	adds r0, r0, r1
	strh r0, [r4, #0xc]
	ldr r2, _08038784 @ =gPlayer
	movs r3, #0xc
	ldrsh r1, [r4, r3]
	ldr r0, [r2, #4]
	adds r0, r0, r1
	str r0, [r2, #4]
	b _08038858
	.align 2, 0
_08038780: .4byte 0xFFFFFE80
_08038784: .4byte gPlayer
_08038788:
	ldr r2, _080387A8 @ =gPlayer
	ldr r1, [r2]
	movs r0, #0xf2
	lsls r0, r0, #0xc
	cmp r1, r0
	bgt _080387AC
	ldrh r0, [r4, #0xc]
	adds r0, #0x80
	strh r0, [r4, #0xc]
	movs r5, #0xc
	ldrsh r1, [r4, r5]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	b _080387B6
	.align 2, 0
_080387A8: .4byte gPlayer
_080387AC:
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xd
	orrs r0, r1
	str r0, [r2, #0x10]
_080387B6:
	ldrh r0, [r4, #6]
	subs r0, #1
	strh r0, [r4, #6]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08038858
	bl sub_8038D2C
	movs r0, #0xb4
	strh r0, [r4, #6]
	b _08038804
_080387CC:
	ldrh r0, [r4, #6]
	subs r0, #1
	strh r0, [r4, #6]
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _08038858
	ldr r1, _0803880C @ =gWinRegs
	ldr r0, _08038810 @ =0x00003F3F
	strh r0, [r1, #8]
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldr r1, _08038814 @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	strh r3, [r1, #4]
	ldr r2, _08038818 @ =gDispCnt
	ldrh r0, [r2]
	movs r5, #0x80
	lsls r5, r5, #6
	adds r1, r5, #0
	orrs r0, r1
	ldr r1, _0803881C @ =0x0000BFFF
	ands r0, r1
	strh r0, [r2]
	strh r3, [r4, #6]
_08038804:
	ldrb r0, [r4, #8]
	adds r0, #1
	strb r0, [r4, #8]
	b _08038858
	.align 2, 0
_0803880C: .4byte gWinRegs
_08038810: .4byte 0x00003F3F
_08038814: .4byte gBldRegs
_08038818: .4byte gDispCnt
_0803881C: .4byte 0x0000BFFF
_08038820:
	ldrh r0, [r4, #6]
	adds r2, r0, #1
	strh r2, [r4, #6]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x80
	bls _08038850
	movs r0, #0x80
	lsls r0, r0, #6
	ldr r1, _08038848 @ =0x00002FFF
	bl TasksDestroyInPriorityRange
	ldr r0, _0803884C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl sub_803D724
	b _08038858
	.align 2, 0
_08038848: .4byte 0x00002FFF
_0803884C: .4byte gCurTask
_08038850:
	ldr r1, _08038880 @ =gBldRegs
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x13
	strh r0, [r1, #4]
_08038858:
	ldr r0, _08038884 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08038912
	ldrb r0, [r4, #8]
	cmp r0, #0
	blt _08038900
	cmp r0, #4
	bgt _08038900
	ldrb r2, [r4, #9]
	cmp r2, #1
	beq _080388B8
	cmp r2, #1
	bgt _08038888
	cmp r2, #0
	beq _08038892
	b _08038912
	.align 2, 0
_08038880: .4byte gBldRegs
_08038884: .4byte gUnknown_03005088
_08038888:
	cmp r2, #2
	beq _080388D4
	cmp r2, #3
	beq _080388F4
	b _08038912
_08038892:
	ldr r3, _080388B0 @ =gUnknown_03005AB0
	ldr r1, [r3]
	ldr r0, _080388B4 @ =0x000E2FFF
	cmp r1, r0
	ble _08038912
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r3, #0x10]
	strh r2, [r3, #0x3a]
	movs r0, #0x20
	strh r0, [r3, #0x38]
	b _080388C6
	.align 2, 0
_080388B0: .4byte gUnknown_03005AB0
_080388B4: .4byte 0x000E2FFF
_080388B8:
	ldr r1, _080388D0 @ =gUnknown_03005AB0
	movs r2, #0xc
	ldrsh r0, [r1, r2]
	cmp r0, #0x80
	bgt _08038912
	movs r0, #0
	strh r0, [r1, #0x38]
_080388C6:
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
	b _08038912
	.align 2, 0
_080388D0: .4byte gUnknown_03005AB0
_080388D4:
	ldr r2, _080388FC @ =gUnknown_03005AB0
	adds r0, r2, #0
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080388F4
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r2, #0x10]
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
_080388F4:
	ldr r0, _080388FC @ =gUnknown_03005AB0
	bl sub_80472AC
	b _08038912
	.align 2, 0
_080388FC: .4byte gUnknown_03005AB0
_08038900:
	ldr r0, _08038918 @ =gUnknown_03005AB0
	adds r1, r0, #0
	adds r1, #0x40
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0x3d
	beq _08038912
	movs r0, #0x3d
	strb r0, [r1]
_08038912:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08038918: .4byte gUnknown_03005AB0

	thumb_func_start sub_803891C
sub_803891C: @ 0x0803891C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080389D8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldrh r0, [r7, #4]
	adds r0, #1
	strh r0, [r7, #4]
	ldr r1, _080389DC @ =0x0000FFFF
	ands r0, r1
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0803898C
	ldr r5, _080389E0 @ =gPseudoRandom
	ldr r0, [r5]
	ldr r2, _080389E4 @ =0x00196225
	mov sb, r2
	mov r4, sb
	muls r4, r0, r4
	ldr r0, _080389E8 @ =0x3C6EF35F
	mov r8, r0
	add r4, r8
	str r4, [r5]
	adds r0, r4, #0
	movs r1, #0xf0
	bl __modsi3
	ldr r6, _080389EC @ =gCamera
	ldrh r1, [r6]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	mov r0, sb
	muls r0, r4, r0
	add r0, r8
	str r0, [r5]
	movs r1, #0xa0
	bl __modsi3
	ldrh r1, [r6, #2]
	adds r1, r1, r0
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_8038420
_0803898C:
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	ldrh r1, [r7]
	ldr r4, _080389DC @ =0x0000FFFF
	ands r0, r4
	cmp r0, r1
	blo _080389C6
	movs r0, #0
	strh r0, [r7, #2]
	subs r0, r1, #2
	strh r0, [r7]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bhi _080389B0
	movs r0, #4
	strh r0, [r7]
_080389B0:
	ldr r1, _080389F0 @ =gPlayer
	ldr r0, [r1]
	asrs r0, r0, #8
	subs r0, #0x30
	ldr r1, [r1, #4]
	lsls r1, r1, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	bl sub_8038420
_080389C6:
	ldrb r0, [r7, #8]
	cmp r0, #1
	beq _08038A48
	cmp r0, #1
	bgt _080389F4
	cmp r0, #0
	beq _080389FA
	b _08038B22
	.align 2, 0
_080389D8: .4byte gCurTask
_080389DC: .4byte 0x0000FFFF
_080389E0: .4byte gPseudoRandom
_080389E4: .4byte 0x00196225
_080389E8: .4byte 0x3C6EF35F
_080389EC: .4byte gCamera
_080389F0: .4byte gPlayer
_080389F4:
	cmp r0, #2
	beq _08038AA4
	b _08038B22
_080389FA:
	ldrh r0, [r7, #6]
	cmp r0, #0
	beq _08038A06
	subs r0, #1
	strh r0, [r7, #6]
	b _08038B22
_08038A06:
	ldr r2, _08038A34 @ =gPlayer
	ldr r0, [r2, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08038A14
	b _08038B22
_08038A14:
	movs r0, #0x10
	strh r0, [r2, #0x38]
	ldr r2, _08038A38 @ =gUnknown_03005A0C
	ldr r1, _08038A3C @ =gCollisionTable
	ldr r0, _08038A40 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	ldr r1, _08038A44 @ =gCamera
	ldrh r0, [r0, #0x1c]
	strh r0, [r1, #0x1a]
	b _08038A7E
	.align 2, 0
_08038A34: .4byte gPlayer
_08038A38: .4byte gUnknown_03005A0C
_08038A3C: .4byte gCollisionTable
_08038A40: .4byte gCurrentLevel
_08038A44: .4byte gCamera
_08038A48:
	ldr r0, _08038A88 @ =gPlayer
	ldr r1, [r0]
	ldr r0, _08038A8C @ =0x000BFFFF
	cmp r1, r0
	ble _08038B22
	ldr r1, _08038A90 @ =gWinRegs
	movs r3, #0
	ldr r0, _08038A94 @ =0x00003F3F
	strh r0, [r1, #8]
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldr r1, _08038A98 @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	strh r3, [r1, #4]
	ldr r2, _08038A9C @ =gDispCnt
	ldrh r0, [r2]
	movs r4, #0x80
	lsls r4, r4, #6
	adds r1, r4, #0
	orrs r0, r1
	ldr r1, _08038AA0 @ =0x0000BFFF
	ands r0, r1
	strh r0, [r2]
	strh r3, [r7, #6]
_08038A7E:
	ldrb r0, [r7, #8]
	adds r0, #1
	strb r0, [r7, #8]
	b _08038B22
	.align 2, 0
_08038A88: .4byte gPlayer
_08038A8C: .4byte 0x000BFFFF
_08038A90: .4byte gWinRegs
_08038A94: .4byte 0x00003F3F
_08038A98: .4byte gBldRegs
_08038A9C: .4byte gDispCnt
_08038AA0: .4byte 0x0000BFFF
_08038AA4:
	ldrh r0, [r7, #6]
	adds r2, r0, #1
	movs r1, #0
	strh r2, [r7, #6]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x80
	bls _08038B10
	ldr r2, _08038AF4 @ =gPlayer
	strh r1, [r2, #0x38]
	strh r1, [r2, #8]
	strh r1, [r2, #0xa]
	strh r1, [r2, #0xc]
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xd
	orrs r0, r1
	str r0, [r2, #0x10]
	movs r0, #0x80
	lsls r0, r0, #6
	ldr r1, _08038AF8 @ =0x00002FFF
	bl TasksDestroyInPriorityRange
	ldr r0, _08038AFC @ =gRingCount
	ldrh r0, [r0]
	ldr r1, _08038B00 @ =gCourseTime
	ldr r1, [r1]
	bl sub_80573D4
	ldr r0, _08038B04 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	ldr r2, _08038B08 @ =gBldRegs
	ldrh r1, [r2]
	ldr r0, _08038B0C @ =0x0000FFEF
	ands r0, r1
	strh r0, [r2]
	b _08038B22
	.align 2, 0
_08038AF4: .4byte gPlayer
_08038AF8: .4byte 0x00002FFF
_08038AFC: .4byte gRingCount
_08038B00: .4byte gCourseTime
_08038B04: .4byte gCurTask
_08038B08: .4byte gBldRegs
_08038B0C: .4byte 0x0000FFEF
_08038B10:
	ldr r1, _08038B30 @ =gBldRegs
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x13
	strh r0, [r1, #4]
	ldr r1, _08038B34 @ =gCamera
	ldrh r0, [r7, #6]
	lsrs r0, r0, #1
	rsbs r0, r0, #0
	strh r0, [r1, #0xc]
_08038B22:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08038B30: .4byte gBldRegs
_08038B34: .4byte gCamera

	thumb_func_start sub_8038B38
sub_8038B38: @ 0x08038B38
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	movs r5, #0xc0
	lsls r5, r5, #0x12
	ldr r0, _08038BB0 @ =sub_8038BC8
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08038BB4 @ =sub_803A5EC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	adds r5, r4, r5
	movs r0, #0
	mov r8, r0
	movs r6, #0
	movs r0, #0xf
	strh r0, [r5, #0x30]
	movs r0, #0x38
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	strh r6, [r5, #8]
	movs r0, #0xc7
	lsls r0, r0, #1
	strh r0, [r5, #0xa]
	ldr r0, _08038BB8 @ =0x03000020
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	strh r6, [r5, #0x14]
	strh r6, [r5, #0x1c]
	ldr r0, _08038BBC @ =0x03000021
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08038BC0 @ =0x03000022
	adds r1, r4, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _08038BC4 @ =0x03000025
	adds r4, r4, r0
	mov r0, r8
	strb r0, [r4]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08038BB0: .4byte sub_8038BC8
_08038BB4: .4byte sub_803A5EC
_08038BB8: .4byte 0x03000020
_08038BBC: .4byte 0x03000021
_08038BC0: .4byte 0x03000022
_08038BC4: .4byte 0x03000025

	thumb_func_start sub_8038BC8
sub_8038BC8: @ 0x08038BC8
	push {r4, r5, lr}
	ldr r5, _08038C14 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r3, _08038C18 @ =gPlayer
	ldr r0, [r3]
	asrs r0, r0, #8
	ldr r2, _08038C1C @ =gCamera
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldrh r0, [r4, #0x30]
	subs r0, #1
	strh r0, [r4, #0x30]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08038C0C
	ldr r0, [r5]
	bl TaskDestroy
_08038C0C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08038C14: .4byte gCurTask
_08038C18: .4byte gPlayer
_08038C1C: .4byte gCamera

	thumb_func_start sub_8038C20
sub_8038C20: @ 0x08038C20
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	ldr r0, _08038CE4 @ =sub_8038E34
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08038CE8 @ =sub_803A600
	str r1, [sp]
	movs r1, #0x64
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r4, r5
	ldr r0, _08038CEC @ =0x03000050
	adds r1, r4, r0
	movs r0, #0
	mov r8, r0
	movs r6, #0
	ldr r0, _08038CF0 @ =0x00000EF4
	strh r0, [r1]
	ldr r0, _08038CF4 @ =0x03000052
	adds r1, r4, r0
	movs r0, #0x90
	lsls r0, r0, #1
	strh r0, [r1]
	str r6, [r5, #0x54]
	str r6, [r5, #0x58]
	ldr r0, _08038CF8 @ =0x0300005C
	adds r1, r4, r0
	ldr r0, _08038CFC @ =0x0000FFF8
	strh r0, [r1]
	ldr r0, _08038D00 @ =0x0300005E
	adds r1, r4, r0
	movs r0, #4
	strh r0, [r1]
	ldr r0, _08038D04 @ =0x0300004A
	adds r1, r4, r0
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1]
	ldr r0, _08038D08 @ =0x0300004C
	adds r1, r4, r0
	ldr r0, _08038D0C @ =0x0000FFFF
	strh r0, [r1]
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r5, #0x3c]
	movs r0, #4
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0xb8
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	strh r6, [r5, #8]
	ldr r0, _08038D10 @ =0x000002DB
	strh r0, [r5, #0xa]
	ldr r1, _08038D14 @ =0x03000020
	adds r0, r4, r1
	mov r1, r8
	strb r1, [r0]
	strh r6, [r5, #0x14]
	strh r6, [r5, #0x1c]
	ldr r0, _08038D18 @ =0x03000021
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08038D1C @ =0x03000022
	adds r1, r4, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08038D20 @ =0x03000025
	adds r0, r4, r1
	mov r1, r8
	strb r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	ldr r0, _08038D24 @ =0x00002030
	str r0, [r5, #0x10]
	ldr r0, _08038D28 @ =0x03000030
	adds r4, r4, r0
	strh r6, [r4]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08038CE4: .4byte sub_8038E34
_08038CE8: .4byte sub_803A600
_08038CEC: .4byte 0x03000050
_08038CF0: .4byte 0x00000EF4
_08038CF4: .4byte 0x03000052
_08038CF8: .4byte 0x0300005C
_08038CFC: .4byte 0x0000FFF8
_08038D00: .4byte 0x0300005E
_08038D04: .4byte 0x0300004A
_08038D08: .4byte 0x0300004C
_08038D0C: .4byte 0x0000FFFF
_08038D10: .4byte 0x000002DB
_08038D14: .4byte 0x03000020
_08038D18: .4byte 0x03000021
_08038D1C: .4byte 0x03000022
_08038D20: .4byte 0x03000025
_08038D24: .4byte 0x00002030
_08038D28: .4byte 0x03000030

	thumb_func_start sub_8038D2C
sub_8038D2C: @ 0x08038D2C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	ldr r0, _08038DF0 @ =sub_8038E34
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08038DF4 @ =sub_803A600
	str r1, [sp]
	movs r1, #0x64
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r4, r5
	ldr r0, _08038DF8 @ =0x03000050
	adds r1, r4, r0
	movs r0, #0
	mov r8, r0
	movs r6, #0
	ldr r0, _08038DFC @ =0x00000EF4
	strh r0, [r1]
	ldr r0, _08038E00 @ =0x03000052
	adds r1, r4, r0
	movs r0, #0x90
	lsls r0, r0, #1
	strh r0, [r1]
	str r6, [r5, #0x54]
	str r6, [r5, #0x58]
	ldr r0, _08038E04 @ =0x0300005C
	adds r1, r4, r0
	ldr r0, _08038E08 @ =0x0000FFF4
	strh r0, [r1]
	ldr r0, _08038E0C @ =0x0300005E
	adds r1, r4, r0
	movs r0, #6
	strh r0, [r1]
	ldr r0, _08038E10 @ =0x0300004A
	adds r1, r4, r0
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1]
	ldr r0, _08038E14 @ =0x0300004C
	adds r1, r4, r0
	ldr r0, _08038E18 @ =0x0000FFFF
	strh r0, [r1]
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r5, #0x3c]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0xb8
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	strh r6, [r5, #8]
	movs r0, #0xb7
	lsls r0, r0, #2
	strh r0, [r5, #0xa]
	ldr r1, _08038E1C @ =0x03000020
	adds r0, r4, r1
	mov r1, r8
	strb r1, [r0]
	strh r6, [r5, #0x14]
	strh r6, [r5, #0x1c]
	ldr r0, _08038E20 @ =0x03000021
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08038E24 @ =0x03000022
	adds r1, r4, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08038E28 @ =0x03000025
	adds r0, r4, r1
	mov r1, r8
	strb r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	ldr r0, _08038E2C @ =0x00002030
	str r0, [r5, #0x10]
	ldr r0, _08038E30 @ =0x03000030
	adds r4, r4, r0
	strh r6, [r4]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08038DF0: .4byte sub_8038E34
_08038DF4: .4byte sub_803A600
_08038DF8: .4byte 0x03000050
_08038DFC: .4byte 0x00000EF4
_08038E00: .4byte 0x03000052
_08038E04: .4byte 0x0300005C
_08038E08: .4byte 0x0000FFF4
_08038E0C: .4byte 0x0300005E
_08038E10: .4byte 0x0300004A
_08038E14: .4byte 0x0300004C
_08038E18: .4byte 0x0000FFFF
_08038E1C: .4byte 0x03000020
_08038E20: .4byte 0x03000021
_08038E24: .4byte 0x03000022
_08038E28: .4byte 0x03000025
_08038E2C: .4byte 0x00002030
_08038E30: .4byte 0x03000030

	thumb_func_start sub_8038E34
sub_8038E34: @ 0x08038E34
	push {r4, r5, r6, r7, lr}
	ldr r7, _08038EE8 @ =gCurTask
	ldr r0, [r7]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	adds r0, #0x30
	adds r6, r2, r0
	ldr r1, _08038EEC @ =0x0300005C
	adds r0, r2, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r5, #0x54]
	adds r0, r0, r1
	str r0, [r5, #0x54]
	ldr r4, _08038EF0 @ =0x0300005E
	adds r1, r2, r4
	movs r4, #0
	ldrsh r3, [r1, r4]
	ldr r1, [r5, #0x58]
	adds r1, r1, r3
	str r1, [r5, #0x58]
	ldr r4, _08038EF4 @ =0x03000050
	adds r3, r2, r4
	asrs r0, r0, #8
	ldrh r3, [r3]
	adds r0, r0, r3
	adds r4, #2
	adds r3, r2, r4
	asrs r1, r1, #8
	ldrh r3, [r3]
	adds r1, r1, r3
	ldr r4, _08038EF8 @ =gCamera
	ldrh r3, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r3
	strh r0, [r6, #6]
	ldrh r0, [r4, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #8]
	ldr r0, _08038EFC @ =0x0300004A
	adds r1, r2, r0
	ldr r3, _08038F00 @ =0x0300004C
	adds r2, r2, r3
	ldrh r0, [r2]
	ldrh r4, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #4
	cmp r0, r2
	bgt _08038EAA
	strh r2, [r1]
_08038EAA:
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	strh r0, [r6, #2]
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	strh r0, [r6, #4]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	adds r1, r6, #0
	bl TransformSprite
	adds r0, r5, #0
	bl DisplaySprite
	ldrh r0, [r5, #0x3c]
	subs r0, #1
	strh r0, [r5, #0x3c]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08038EE0
	ldr r0, [r7]
	bl TaskDestroy
_08038EE0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08038EE8: .4byte gCurTask
_08038EEC: .4byte 0x0300005C
_08038EF0: .4byte 0x0300005E
_08038EF4: .4byte 0x03000050
_08038EF8: .4byte gCamera
_08038EFC: .4byte 0x0300004A
_08038F00: .4byte 0x0300004C

	thumb_func_start sub_8038F04
sub_8038F04: @ 0x08038F04
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08039028 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r0, r0, r4
	mov sl, r0
	ldr r0, _0803902C @ =sub_8039264
	ldr r2, _08039030 @ =0x00002001
	ldr r1, _08039034 @ =sub_803A5D0
	str r1, [sp]
	movs r1, #0x7c
	movs r3, #0
	bl TaskCreate
	ldr r1, _08039038 @ =0x0300009C
	add r1, r8
	str r0, [r1]
	ldrh r5, [r0, #6]
	adds r4, r5, r4
	ldr r1, _0803903C @ =0x03000088
	add r1, r8
	mov r2, sl
	ldr r0, [r2, #0x74]
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r2, _08039040 @ =0x03000074
	adds r1, r5, r2
	movs r6, #0
	strh r0, [r1]
	ldr r0, _08039044 @ =0x0300008A
	add r8, r0
	mov r1, sl
	ldr r0, [r1, #0x78]
	asrs r0, r0, #8
	mov r2, r8
	ldrh r2, [r2]
	adds r0, r0, r2
	ldr r2, _08039048 @ =0x03000076
	adds r1, r5, r2
	strh r0, [r1]
	str r6, [r4, #0x64]
	ldr r0, _0803904C @ =0xFFFFE900
	str r0, [r4, #0x68]
	str r6, [r4, #0x6c]
	str r6, [r4, #0x70]
	ldr r1, _08039050 @ =0x03000078
	adds r0, r5, r1
	movs r2, #0
	strb r2, [r0]
	adds r1, #1
	adds r0, r5, r1
	strb r2, [r0]
	ldr r2, _08039054 @ =0x0300007A
	adds r0, r5, r2
	movs r1, #0
	strb r1, [r0]
	movs r0, #0xc
	bl VramMalloc
	str r0, [r4, #4]
	movs r2, #0xa0
	lsls r2, r2, #3
	strh r2, [r4, #0x1a]
	strh r6, [r4, #8]
	movs r0, #0xac
	lsls r0, r0, #2
	mov sb, r0
	mov r1, sb
	strh r1, [r4, #0xa]
	ldr r2, _08039058 @ =0x03000020
	adds r1, r5, r2
	movs r0, #8
	strb r0, [r1]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	ldr r0, _0803905C @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08039060 @ =0x03000022
	adds r0, r5, r1
	movs r7, #0x10
	strb r7, [r0]
	adds r2, #5
	adds r0, r5, r2
	movs r1, #0
	strb r1, [r0]
	movs r2, #1
	rsbs r2, r2, #0
	mov sl, r2
	str r2, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	mov r8, r0
	str r0, [r4, #0x10]
	ldr r1, _08039064 @ =0x03000030
	adds r4, r5, r1
	movs r0, #0xc
	bl VramMalloc
	str r0, [r4, #4]
	movs r2, #0xa0
	lsls r2, r2, #3
	strh r2, [r4, #0x1a]
	strh r6, [r4, #8]
	mov r0, sb
	strh r0, [r4, #0xa]
	ldr r2, _08039068 @ =0x03000050
	adds r1, r5, r2
	movs r0, #0xb
	strb r0, [r1]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	ldr r0, _0803906C @ =0x03000051
	adds r1, r5, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08039070 @ =0x03000052
	adds r0, r5, r1
	strb r7, [r0]
	adds r2, #5
	adds r5, r5, r2
	movs r0, #0
	strb r0, [r5]
	mov r1, sl
	str r1, [r4, #0x28]
	mov r2, r8
	str r2, [r4, #0x10]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039028: .4byte gCurTask
_0803902C: .4byte sub_8039264
_08039030: .4byte 0x00002001
_08039034: .4byte sub_803A5D0
_08039038: .4byte 0x0300009C
_0803903C: .4byte 0x03000088
_08039040: .4byte 0x03000074
_08039044: .4byte 0x0300008A
_08039048: .4byte 0x03000076
_0803904C: .4byte 0xFFFFE900
_08039050: .4byte 0x03000078
_08039054: .4byte 0x0300007A
_08039058: .4byte 0x03000020
_0803905C: .4byte 0x03000021
_08039060: .4byte 0x03000022
_08039064: .4byte 0x03000030
_08039068: .4byte 0x03000050
_0803906C: .4byte 0x03000051
_08039070: .4byte 0x03000052

	thumb_func_start sub_8039074
sub_8039074: @ 0x08039074
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r0, _0803908C @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	cmp r2, #2
	beq _080390B0
	cmp r2, #2
	bgt _08039090
	cmp r2, #1
	beq _08039096
	b _080390F0
	.align 2, 0
_0803908C: .4byte gCurTask
_08039090:
	cmp r2, #3
	beq _080390C8
	b _080390F0
_08039096:
	ldr r1, _080390A8 @ =0x03000020
	adds r0, r3, r1
	movs r2, #4
	strb r2, [r0]
	ldr r0, _080390AC @ =0x03000050
	adds r1, r3, r0
	movs r0, #5
	b _080390D6
	.align 2, 0
_080390A8: .4byte 0x03000020
_080390AC: .4byte 0x03000050
_080390B0:
	ldr r1, _080390C0 @ =0x03000020
	adds r0, r3, r1
	strb r2, [r0]
	ldr r0, _080390C4 @ =0x03000050
	adds r1, r3, r0
	movs r0, #3
	b _080390D6
	.align 2, 0
_080390C0: .4byte 0x03000020
_080390C4: .4byte 0x03000050
_080390C8:
	ldr r1, _080390F4 @ =0x03000020
	adds r0, r3, r1
	movs r2, #6
	strb r2, [r0]
	ldr r0, _080390F8 @ =0x03000050
	adds r1, r3, r0
	movs r0, #7
_080390D6:
	strb r0, [r1]
	ldr r0, _080390FC @ =0x03000021
	adds r1, r3, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08039100 @ =0x03000051
	adds r1, r3, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08039104 @ =0x03000078
	adds r0, r3, r1
	strb r2, [r0]
_080390F0:
	bx lr
	.align 2, 0
_080390F4: .4byte 0x03000020
_080390F8: .4byte 0x03000050
_080390FC: .4byte 0x03000021
_08039100: .4byte 0x03000051
_08039104: .4byte 0x03000078

	thumb_func_start sub_8039108
sub_8039108: @ 0x08039108
	ldr r0, _08039124 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	ldr r0, _08039128 @ =0x03000020
	adds r1, r3, r0
	ldrb r0, [r1]
	cmp r0, #4
	beq _08039132
	cmp r0, #4
	bgt _0803912C
	cmp r0, #2
	beq _08039144
	b _08039178
	.align 2, 0
_08039124: .4byte gCurTask
_08039128: .4byte 0x03000020
_0803912C:
	cmp r0, #6
	beq _08039154
	b _08039178
_08039132:
	movs r2, #0xe
	strb r2, [r1]
	ldr r0, _08039140 @ =0x03000050
	adds r1, r3, r0
	movs r0, #0x11
	b _0803915E
	.align 2, 0
_08039140: .4byte 0x03000050
_08039144:
	movs r2, #0xf
	strb r2, [r1]
	ldr r0, _08039150 @ =0x03000050
	adds r1, r3, r0
	movs r0, #0x12
	b _0803915E
	.align 2, 0
_08039150: .4byte 0x03000050
_08039154:
	movs r2, #0x10
	strb r2, [r1]
	ldr r0, _0803917C @ =0x03000050
	adds r1, r3, r0
	movs r0, #0x13
_0803915E:
	strb r0, [r1]
	ldr r0, _08039180 @ =0x03000021
	adds r1, r3, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08039184 @ =0x03000051
	adds r1, r3, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08039188 @ =0x03000078
	adds r0, r3, r1
	strb r2, [r0]
_08039178:
	bx lr
	.align 2, 0
_0803917C: .4byte 0x03000050
_08039180: .4byte 0x03000021
_08039184: .4byte 0x03000051
_08039188: .4byte 0x03000078

	thumb_func_start sub_803918C
sub_803918C: @ 0x0803918C
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, _080391C8 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	adds r3, r4, #0
	adds r0, #0x30
	adds r0, r0, r2
	mov ip, r0
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08039252
	ldr r0, _080391CC @ =0x03000020
	adds r1, r2, r0
	ldrb r0, [r1]
	cmp r0, r5
	bne _080391D4
	ldr r0, _080391D0 @ =0x0300007A
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	b _0803925C
	.align 2, 0
_080391C8: .4byte gCurTask
_080391CC: .4byte 0x03000020
_080391D0: .4byte 0x0300007A
_080391D4:
	ldrb r0, [r1]
	subs r0, #8
	cmp r0, #8
	bhi _08039240
	lsls r0, r0, #2
	ldr r1, _080391E8 @ =_080391EC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080391E8: .4byte _080391EC
_080391EC: @ jump table
	.4byte _08039210 @ case 0
	.4byte _08039220 @ case 1
	.4byte _08039230 @ case 2
	.4byte _08039240 @ case 3
	.4byte _08039240 @ case 4
	.4byte _08039240 @ case 5
	.4byte _08039210 @ case 6
	.4byte _08039220 @ case 7
	.4byte _08039230 @ case 8
_08039210:
	adds r1, r3, #0
	adds r1, #0x20
	movs r0, #0xa
	strb r0, [r1]
	mov r1, ip
	adds r1, #0x20
	movs r0, #0xd
	b _0803923E
_08039220:
	adds r1, r3, #0
	adds r1, #0x20
	movs r0, #8
	strb r0, [r1]
	mov r1, ip
	adds r1, #0x20
	movs r0, #0xb
	b _0803923E
_08039230:
	adds r1, r3, #0
	adds r1, #0x20
	movs r0, #9
	strb r0, [r1]
	mov r1, ip
	adds r1, #0x20
	movs r0, #0xc
_0803923E:
	strb r0, [r1]
_08039240:
	adds r1, r3, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	mov r1, ip
	adds r1, #0x21
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
_08039252:
	adds r2, r4, #0
	adds r2, #0x7a
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
_0803925C:
	strb r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8039264
sub_8039264: @ 0x08039264
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r3, _080392C4 @ =gCurTask
	ldr r0, [r3]
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r4, r1
	ldrh r0, [r0]
	adds r0, r0, r1
	ldrh r2, [r0, #6]
	adds r6, r2, r1
	mov r8, r5
	ldr r0, _080392C8 @ =0x03000030
	adds r0, r0, r4
	mov sb, r0
	ldr r0, [r5, #0x10]
	ldr r1, _080392CC @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r5, #0x10]
	mov r7, sb
	ldr r0, [r7, #0x10]
	ands r0, r1
	str r0, [r7, #0x10]
	ldr r1, [r6, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r1, r0
	ldr r0, [r5, #0x10]
	orrs r0, r1
	str r0, [r5, #0x10]
	ldr r0, [r7, #0x10]
	orrs r0, r1
	str r0, [r7, #0x10]
	ldr r0, _080392D0 @ =0x03000031
	adds r2, r2, r0
	ldrb r1, [r2]
	adds r7, r3, #0
	cmp r1, #0
	beq _080392D8
	ldr r1, _080392D4 @ =0x03000025
	adds r0, r4, r1
	movs r1, #0xfe
	b _080392DC
	.align 2, 0
_080392C4: .4byte gCurTask
_080392C8: .4byte 0x03000030
_080392CC: .4byte 0xFFFFFBFF
_080392D0: .4byte 0x03000031
_080392D4: .4byte 0x03000025
_080392D8:
	ldr r3, _08039348 @ =0x03000025
	adds r0, r4, r3
_080392DC:
	strb r1, [r0]
	ldr r2, _0803934C @ =0x03000055
	adds r0, r4, r2
	strb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x8c
	ldrh r0, [r0]
	adds r3, r5, #0
	adds r3, #0x74
	strh r0, [r3]
	adds r0, r6, #0
	adds r0, #0x8e
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x76
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0x94
	movs r2, #0
	ldrsb r2, [r0, r2]
	mov sl, r3
	str r1, [sp]
	str r0, [sp, #4]
	cmp r2, #7
	ble _08039354
	adds r4, r5, #0
	adds r4, #0x79
	ldrb r0, [r4]
	cmp r0, #0
	beq _0803932A
	mov r0, r8
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #6
	beq _08039326
	bl sub_8039108
_08039326:
	movs r0, #0
	strb r0, [r4]
_0803932A:
	movs r0, #0
	str r0, [r5, #0x6c]
	str r0, [r5, #0x70]
	adds r0, r6, #0
	adds r0, #0x99
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0803933C
	b _08039514
_0803933C:
	ldr r0, _08039350 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08039658
	.align 2, 0
_08039348: .4byte 0x03000025
_0803934C: .4byte 0x03000055
_08039350: .4byte gCurTask
_08039354:
	adds r0, r5, #0
	adds r0, #0x79
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #0x16
	bls _08039362
	b _08039514
_08039362:
	lsls r0, r1, #2
	ldr r1, _0803936C @ =_08039370
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803936C: .4byte _08039370
_08039370: @ jump table
	.4byte _08039514 @ case 0
	.4byte _080393CC @ case 1
	.4byte _080393F8 @ case 2
	.4byte _08039410 @ case 3
	.4byte _08039514 @ case 4
	.4byte _08039422 @ case 5
	.4byte _080394FC @ case 6
	.4byte _08039514 @ case 7
	.4byte _0803942C @ case 8
	.4byte _0803943E @ case 9
	.4byte _08039498 @ case 10
	.4byte _080394A4 @ case 11
	.4byte _08039514 @ case 12
	.4byte _080394B4 @ case 13
	.4byte _08039514 @ case 14
	.4byte _080394C0 @ case 15
	.4byte _080394D2 @ case 16
	.4byte _080394FC @ case 17
	.4byte _08039514 @ case 18
	.4byte _080394EC @ case 19
	.4byte _08039514 @ case 20
	.4byte _080394FC @ case 21
	.4byte _08039514 @ case 22
_080393CC:
	ldr r0, [r7]
	ldrh r0, [r0, #6]
	ldr r3, _080393F4 @ =0x03000078
	adds r0, r0, r3
	movs r1, #8
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x7a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080393E8
	b _08039514
_080393E8:
	adds r1, r5, #0
	adds r1, #0x60
	movs r0, #0x1e
	strh r0, [r1]
	b _0803950E
	.align 2, 0
_080393F4: .4byte 0x03000078
_080393F8:
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803940A
	b _08039514
_0803940A:
	movs r0, #0x80
	lsls r0, r0, #1
	b _0803950C
_08039410:
	ldr r0, [r5, #0x68]
	ldr r1, [r5, #0x70]
	adds r0, r0, r1
	cmp r0, #0
	bge _0803941C
	b _08039514
_0803941C:
	movs r0, #0
	str r0, [r5, #0x68]
	b _0803950C
_08039422:
	ldr r0, _08039428 @ =0xFFFFFF00
	b _0803950C
	.align 2, 0
_08039428: .4byte 0xFFFFFF00
_0803942C:
	ldr r0, _08039460 @ =0xFFFFE900
	str r0, [r5, #0x68]
	adds r1, r5, #0
	adds r1, #0x78
	movs r0, #0
	strb r0, [r1]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
_0803943E:
	adds r1, r6, #0
	adds r1, #0x9a
	ldrb r0, [r1]
	cmp r0, #0
	beq _08039514
	adds r2, r0, #0
	adds r1, r2, #0
	ldr r0, [r7]
	ldrh r0, [r0, #6]
	cmp r2, #2
	beq _08039478
	cmp r2, #2
	bgt _08039464
	cmp r2, #1
	beq _0803946A
	b _08039514
	.align 2, 0
_08039460: .4byte 0xFFFFE900
_08039464:
	cmp r1, #3
	beq _08039488
	b _08039514
_0803946A:
	ldr r7, _08039474 @ =0x03000078
	adds r1, r0, r7
	movs r0, #8
	strb r0, [r1]
	b _08039514
	.align 2, 0
_08039474: .4byte 0x03000078
_08039478:
	ldr r2, _08039484 @ =0x03000078
	adds r1, r0, r2
	movs r0, #9
	strb r0, [r1]
	b _08039514
	.align 2, 0
_08039484: .4byte 0x03000078
_08039488:
	ldr r3, _08039494 @ =0x03000078
	adds r1, r0, r3
	movs r0, #0xa
	strb r0, [r1]
	b _08039514
	.align 2, 0
_08039494: .4byte 0x03000078
_08039498:
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r5, #0x70]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
_080394A4:
	ldr r0, [r5, #0x68]
	ldr r1, [r5, #0x70]
	adds r0, r0, r1
	cmp r0, #0
	blt _08039514
	movs r0, #0
	str r0, [r5, #0x68]
	b _0803950C
_080394B4:
	adds r0, r6, #0
	adds r0, #0x9a
	ldrb r0, [r0]
	bl sub_8039074
	b _0803950E
_080394C0:
	bl sub_8039108
	adds r1, r5, #0
	adds r1, #0x60
	movs r0, #0xa
	strh r0, [r1]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
_080394D2:
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08039514
	ldr r0, _080394E8 @ =0xFFFFFE00
	b _0803950C
	.align 2, 0
_080394E8: .4byte 0xFFFFFE00
_080394EC:
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	ldr r0, _080394F8 @ =0xFFFFFE00
	b _0803950C
	.align 2, 0
_080394F8: .4byte 0xFFFFFE00
_080394FC:
	ldr r0, [r5, #0x68]
	ldr r1, [r5, #0x70]
	adds r0, r0, r1
	ldr r1, _08039538 @ =0xFFFFE900
	cmp r0, r1
	bgt _08039514
	str r1, [r5, #0x68]
	movs r0, #0
_0803950C:
	str r0, [r5, #0x70]
_0803950E:
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
_08039514:
	ldr r0, [r5, #0x64]
	ldr r1, [r5, #0x6c]
	adds r0, r0, r1
	str r0, [r5, #0x64]
	ldr r0, [r5, #0x68]
	ldr r1, [r5, #0x70]
	adds r0, r0, r1
	str r0, [r5, #0x68]
	ldr r1, _08039538 @ =0xFFFFE900
	cmp r0, r1
	bgt _0803953C
	adds r0, r5, #0
	adds r0, #0x7a
	ldrb r2, [r0]
	movs r1, #4
	orrs r1, r2
	b _08039546
	.align 2, 0
_08039538: .4byte 0xFFFFE900
_0803953C:
	adds r0, r5, #0
	adds r0, #0x7a
	ldrb r2, [r0]
	movs r1, #0xfb
	ands r1, r2
_08039546:
	strb r1, [r0]
	adds r2, r0, #0
	ldr r0, [r5, #0x68]
	cmp r0, #0
	blt _08039558
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	b _0803955E
_08039558:
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
_0803955E:
	strb r0, [r2]
	ldr r0, [r5, #0x64]
	asrs r0, r0, #8
	mov r7, sl
	ldrh r7, [r7]
	adds r0, r0, r7
	ldr r1, [r5, #0x68]
	asrs r1, r1, #8
	ldr r2, [sp]
	ldrh r2, [r2]
	adds r1, r1, r2
	ldr r3, _080395F8 @ =gCamera
	ldrh r2, [r3]
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	subs r2, r7, r2
	mov r0, r8
	strh r2, [r0, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	subs r0, r4, r0
	mov r1, r8
	strh r0, [r1, #0x18]
	mov r3, sb
	strh r2, [r3, #0x16]
	ldrh r0, [r1, #0x18]
	strh r0, [r3, #0x18]
	adds r0, r5, #0
	adds r0, #0x78
	ldrb r0, [r0]
	bl sub_803918C
	adds r0, r6, #0
	adds r0, #0x98
	ldrb r0, [r0]
	cmp r0, #0
	beq _08039640
	adds r0, r6, #0
	adds r0, #0x95
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08039640
	ldr r1, [sp, #4]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #7
	bgt _08039640
	ldr r0, _080395FC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r6, r0, r2
	adds r5, r7, #0
	ldr r3, _08039600 @ =gPlayer
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	adds r7, r0, #0
	ldr r0, _08039604 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0803960C
	ldr r3, _08039608 @ =gUnknown_03005AB0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	b _0803960E
	.align 2, 0
_080395F8: .4byte gCamera
_080395FC: .4byte gCurTask
_08039600: .4byte gPlayer
_08039604: .4byte gUnknown_03005088
_08039608: .4byte gUnknown_03005AB0
_0803960C:
	movs r0, #0
_0803960E:
	cmp r7, #2
	beq _08039616
	cmp r0, #2
	bne _08039640
_08039616:
	ldr r0, _08039668 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r0, r0, r3
	ldrh r2, [r0, #6]
	ldr r7, _0803966C @ =0x03000044
	adds r3, r2, r7
	ldr r0, _08039670 @ =0x03000064
	adds r1, r2, r0
	movs r0, #3
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _08039674 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r1, _08039678 @ =0x03000065
	adds r2, r2, r1
	movs r0, #0xff
	strb r0, [r2]
_08039640:
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, r8
	bl DisplaySprite
	mov r0, sb
	bl DisplaySprite
_08039658:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039668: .4byte gCurTask
_0803966C: .4byte 0x03000044
_08039670: .4byte 0x03000064
_08039674: .4byte 0xFFFFBFFF
_08039678: .4byte 0x03000065

	thumb_func_start sub_803967C
sub_803967C: @ 0x0803967C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r2, _080396F0 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080396F4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080396F8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r5, #0x80
	lsls r5, r5, #4
	ands r5, r0
	ldr r0, _080396FC @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r6, #0xc0
	lsls r6, r6, #0x12
	adds r7, r4, r6
	ldr r0, _08039700 @ =sub_80397A8
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08039704 @ =sub_803A5EC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	adds r6, r2, r6
	ldr r3, _08039708 @ =0x03000088
	adds r0, r4, r3
	ldrh r1, [r0]
	subs r3, #0x48
	adds r0, r2, r3
	strh r1, [r0]
	ldr r0, _0803970C @ =0x0300008A
	adds r4, r4, r0
	ldrh r1, [r4]
	adds r3, #2
	adds r0, r2, r3
	strh r1, [r0]
	ldr r0, [r7, #0x74]
	str r0, [r6, #0x34]
	ldr r0, [r7, #0x78]
	str r0, [r6, #0x38]
	cmp r5, #0
	beq _08039714
	ldr r1, _08039710 @ =0x03000044
	adds r0, r2, r1
	movs r1, #0x28
	strh r1, [r0]
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r6, #0x3e]
	movs r2, #0xc0
	lsls r2, r2, #2
	b _08039726
	.align 2, 0
_080396F0: .4byte gPseudoRandom
_080396F4: .4byte 0x00196225
_080396F8: .4byte 0x3C6EF35F
_080396FC: .4byte gCurTask
_08039700: .4byte sub_80397A8
_08039704: .4byte sub_803A5EC
_08039708: .4byte 0x03000088
_0803970C: .4byte 0x0300008A
_08039710: .4byte 0x03000044
_08039714:
	ldr r3, _08039740 @ =0x03000044
	adds r0, r2, r3
	movs r1, #0x30
	strh r1, [r0]
	movs r0, #0xfb
	lsls r0, r0, #8
	strh r0, [r6, #0x3e]
	movs r2, #0xc0
	lsls r2, r2, #1
_08039726:
	ldr r0, [r7, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08039744
	ldr r0, [r6, #0x34]
	movs r1, #0xa0
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r6, #0x34]
	strh r2, [r6, #0x3c]
	b _08039750
	.align 2, 0
_08039740: .4byte 0x03000044
_08039744:
	ldr r0, [r6, #0x34]
	ldr r3, _080397A0 @ =0xFFFFEC00
	adds r0, r0, r3
	str r0, [r6, #0x34]
	rsbs r0, r2, #0
	strh r0, [r6, #0x3c]
_08039750:
	movs r0, #4
	bl VramMalloc
	str r0, [r6, #4]
	movs r3, #0
	movs r2, #0
	movs r0, #0xb8
	lsls r0, r0, #3
	strh r0, [r6, #0x1a]
	strh r2, [r6, #8]
	ldr r0, _080397A4 @ =0x000002B2
	strh r0, [r6, #0xa]
	adds r1, r6, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	strh r2, [r6, #0x14]
	strh r2, [r6, #0x1c]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x25
	strb r3, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r6, #0x10]
	movs r0, #0x91
	bl m4aSongNumStart
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080397A0: .4byte 0xFFFFEC00
_080397A4: .4byte 0x000002B2

	thumb_func_start sub_80397A8
sub_80397A8: @ 0x080397A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08039888 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r3, r1
	ldrh r0, [r0]
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	adds r7, r0, r1
	mov sb, r4
	adds r1, #0x44
	adds r0, r3, r1
	ldrh r0, [r0]
	ldrh r2, [r4, #0x3e]
	adds r0, r0, r2
	strh r0, [r4, #0x3e]
	movs r5, #0x3c
	ldrsh r0, [r4, r5]
	ldr r1, [r4, #0x34]
	adds r1, r1, r0
	str r1, [r4, #0x34]
	movs r0, #0x3e
	ldrsh r2, [r4, r0]
	ldr r0, [r4, #0x38]
	adds r0, r0, r2
	str r0, [r4, #0x38]
	ldr r5, _0803988C @ =0x03000040
	adds r2, r3, r5
	asrs r1, r1, #8
	ldrh r2, [r2]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	ldr r2, _08039890 @ =0x03000042
	adds r3, r3, r2
	asrs r0, r0, #8
	ldrh r3, [r3]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #8
	lsrs r6, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, _08039894 @ =sub_803FD5C
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	bl sub_804021C
	cmp r0, #0
	bge _08039838
	lsls r0, r0, #8
	ldr r1, [r4, #0x38]
	adds r1, r1, r0
	str r1, [r4, #0x38]
	ldrh r0, [r4, #0x3e]
	rsbs r1, r0, #0
	movs r3, #0x3e
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge _08039832
	adds r0, #3
_08039832:
	asrs r0, r0, #2
	adds r0, r1, r0
	strh r0, [r4, #0x3e]
_08039838:
	adds r0, r7, #0
	adds r0, #0x94
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r5, r5, #0x10
	str r5, [sp, #4]
	lsls r6, r6, #0x10
	mov sl, r6
	cmp r0, #7
	bgt _080398DA
	ldr r0, _08039888 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r7, r0, r5
	asrs r6, r6, #0x10
	ldr r0, [sp, #4]
	asrs r5, r0, #0x10
	ldr r3, _08039898 @ =gPlayer
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_800BF10
	mov r8, r0
	ldr r0, _0803989C @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _080398A4
	ldr r3, _080398A0 @ =gUnknown_03005AB0
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_800BF10
	b _080398A6
	.align 2, 0
_08039888: .4byte gCurTask
_0803988C: .4byte 0x03000040
_08039890: .4byte 0x03000042
_08039894: .4byte sub_803FD5C
_08039898: .4byte gPlayer
_0803989C: .4byte gUnknown_03005088
_080398A0: .4byte gUnknown_03005AB0
_080398A4:
	movs r0, #0
_080398A6:
	mov r1, r8
	cmp r1, #2
	beq _080398B0
	cmp r0, #2
	bne _080398DA
_080398B0:
	ldr r0, _08039928 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r0, r0, r2
	ldrh r2, [r0, #6]
	ldr r5, _0803992C @ =0x03000044
	adds r3, r2, r5
	ldr r0, _08039930 @ =0x03000064
	adds r1, r2, r0
	movs r0, #3
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _08039934 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r1, _08039938 @ =0x03000065
	adds r2, r2, r1
	movs r0, #0xff
	strb r0, [r2]
_080398DA:
	ldr r2, _0803993C @ =gCamera
	ldrh r1, [r2]
	mov r3, sl
	asrs r0, r3, #0x10
	subs r0, r0, r1
	mov r5, sb
	strh r0, [r5, #0x16]
	ldrh r1, [r2, #2]
	ldr r2, [sp, #4]
	asrs r0, r2, #0x10
	subs r0, r0, r1
	strh r0, [r5, #0x18]
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, sb
	bl DisplaySprite
	ldr r0, [r4, #0x34]
	movs r3, #0xd0
	lsls r3, r3, #8
	adds r0, r0, r3
	movs r1, #0xd0
	lsls r1, r1, #9
	cmp r0, r1
	bls _08039916
	ldr r0, _08039928 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08039916:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039928: .4byte gCurTask
_0803992C: .4byte 0x03000044
_08039930: .4byte 0x03000064
_08039934: .4byte 0xFFFFBFFF
_08039938: .4byte 0x03000065
_0803993C: .4byte gCamera

	thumb_func_start sub_8039940
sub_8039940: @ 0x08039940
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _080399B4 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r7, r4, r5
	ldr r0, _080399B8 @ =sub_8039A64
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _080399BC @ =sub_803A600
	str r1, [sp]
	movs r1, #0x64
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	adds r6, r2, r5
	ldr r0, _080399C0 @ =0x03000088
	adds r1, r4, r0
	ldr r0, [r7, #0x74]
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r1, _080399C4 @ =0x03000050
	adds r5, r2, r1
	movs r3, #0
	strh r0, [r5]
	ldr r0, _080399C8 @ =0x0300008A
	adds r4, r4, r0
	ldr r0, [r7, #0x78]
	asrs r0, r0, #8
	ldrh r4, [r4]
	adds r0, r0, r4
	ldr r4, _080399CC @ =0x03000052
	adds r1, r2, r4
	strh r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #4
	str r0, [r6, #0x40]
	ldr r0, _080399D0 @ =0x03000048
	adds r1, r2, r0
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r1]
	ldr r1, _080399D4 @ =0x0300004A
	adds r2, r2, r1
	strh r3, [r2]
	ldr r0, [r7, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080399D8
	ldrh r0, [r5]
	adds r0, #0x1a
	b _080399DC
	.align 2, 0
_080399B4: .4byte gCurTask
_080399B8: .4byte sub_8039A64
_080399BC: .4byte sub_803A600
_080399C0: .4byte 0x03000088
_080399C4: .4byte 0x03000050
_080399C8: .4byte 0x0300008A
_080399CC: .4byte 0x03000052
_080399D0: .4byte 0x03000048
_080399D4: .4byte 0x0300004A
_080399D8:
	ldrh r0, [r5]
	subs r0, #0x1a
_080399DC:
	strh r0, [r5]
	movs r4, #0
	movs r5, #0
	movs r0, #0x11
	strh r0, [r6, #0x3c]
	adds r0, r6, #0
	adds r0, #0x61
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	movs r0, #0x40
	bl VramMalloc
	str r0, [r6, #4]
	movs r0, #0xb8
	lsls r0, r0, #3
	strh r0, [r6, #0x1a]
	strh r5, [r6, #8]
	ldr r0, _08039A48 @ =0x000002B1
	strh r0, [r6, #0xa]
	adds r0, r6, #0
	adds r0, #0x20
	strb r4, [r0]
	strh r5, [r6, #0x14]
	strh r5, [r6, #0x1c]
	adds r1, r6, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x25
	strb r4, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x28]
	ldr r0, [r7, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #3
	ands r0, r2
	ldr r1, _08039A4C @ =0x00002030
	orrs r0, r1
	str r0, [r6, #0x10]
	adds r1, r6, #0
	adds r1, #0x30
	strh r5, [r6, #0x30]
	ands r0, r2
	cmp r0, #0
	beq _08039A50
	movs r0, #0xff
	lsls r0, r0, #8
	b _08039A54
	.align 2, 0
_08039A48: .4byte 0x000002B1
_08039A4C: .4byte 0x00002030
_08039A50:
	movs r0, #0x80
	lsls r0, r0, #1
_08039A54:
	strh r0, [r1, #2]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #4]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8039A64
sub_8039A64: @ 0x08039A64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, _08039AD0 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r2, r4, r1
	mov r8, r2
	ldrh r0, [r0]
	adds r0, r0, r1
	ldrh r3, [r0, #6]
	adds r1, r3, r1
	str r1, [sp]
	mov sl, r8
	ldr r0, _08039AD4 @ =0x03000030
	adds r0, r4, r0
	str r0, [sp, #4]
	ldr r1, _08039AD8 @ =0x03000094
	adds r0, r3, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	bgt _08039AEA
	ldr r2, _08039ADC @ =0x0300008C
	adds r0, r3, r2
	ldrh r0, [r0]
	subs r1, #0x44
	adds r2, r4, r1
	strh r0, [r2]
	adds r1, #0x3e
	adds r0, r3, r1
	ldrh r1, [r0]
	ldr r3, _08039AE0 @ =0x03000052
	adds r0, r4, r3
	strh r1, [r0]
	mov r4, sl
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08039AE4
	ldrh r0, [r2]
	adds r0, #0x1a
	b _08039AE8
	.align 2, 0
_08039AD0: .4byte gCurTask
_08039AD4: .4byte 0x03000030
_08039AD8: .4byte 0x03000094
_08039ADC: .4byte 0x0300008C
_08039AE0: .4byte 0x03000052
_08039AE4:
	ldrh r0, [r2]
	subs r0, #0x1a
_08039AE8:
	strh r0, [r2]
_08039AEA:
	mov r3, r8
	adds r3, #0x48
	movs r0, #0
	ldrsh r1, [r3, r0]
	mov r2, r8
	ldr r0, [r2, #0x40]
	adds r0, r0, r1
	str r0, [r2, #0x40]
	adds r2, #0x4a
	ldrh r0, [r2]
	mov r1, r8
	adds r1, #0x4e
	strh r0, [r1]
	ldrh r6, [r2]
	mov ip, r6
	mov r4, sl
	ldr r1, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r1, r0
	str r3, [sp, #0xc]
	mov sb, r2
	cmp r1, #0
	beq _08039B38
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	ldr r2, _08039BD4 @ =0xFFFFFE00
	adds r1, r2, #0
	subs r6, r1, r0
	ldr r1, _08039BD8 @ =0x000003FF
	ands r6, r1
	mov r3, ip
	lsls r0, r3, #0x10
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	mov ip, r0
	mov r4, ip
	ands r4, r1
	mov ip, r4
_08039B38:
	ldr r2, _08039BDC @ =gSineTable
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r1, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r4, #0
	ldrsh r6, [r0, r4]
	asrs r6, r6, #6
	mov r3, r8
	ldr r0, [r3, #0x40]
	muls r6, r0, r6
	asrs r6, r6, #0x10
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r4, #0
	ldrsh r7, [r1, r4]
	asrs r7, r7, #6
	muls r7, r0, r7
	asrs r7, r7, #0x10
	mov r5, r8
	adds r5, #0x50
	movs r1, #0
	ldrsh r0, [r5, r1]
	adds r6, r6, r0
	mov r4, r8
	adds r4, #0x52
	movs r2, #0
	ldrsh r0, [r4, r2]
	adds r7, r7, r0
	ldr r1, _08039BE0 @ =gCamera
	ldrh r0, [r1]
	subs r0, r6, r0
	ldr r3, [sp, #4]
	strh r0, [r3, #6]
	ldrh r0, [r1, #2]
	subs r0, r7, r0
	strh r0, [r3, #8]
	mov r0, ip
	strh r0, [r3]
	mov r0, sl
	bl UpdateSpriteAnimation
	mov r0, sl
	ldr r1, [sp, #4]
	bl TransformSprite
	mov r0, sl
	bl DisplaySprite
	ldr r0, [sp]
	adds r0, #0x94
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _08039BEC
	movs r0, #0
	ldr r1, [sp, #0xc]
	strh r0, [r1]
	lsls r0, r6, #8
	mov r2, r8
	str r0, [r2, #0x54]
	lsls r0, r7, #8
	str r0, [r2, #0x58]
	movs r0, #0xb8
	lsls r0, r0, #3
	mov r3, sl
	strh r0, [r3, #0x1a]
	movs r0, #0x50
	strh r0, [r2, #0x3c]
	ldr r0, _08039BE4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08039BE8 @ =sub_803A46C
	str r0, [r1, #8]
	b _0803A14A
	.align 2, 0
_08039BD4: .4byte 0xFFFFFE00
_08039BD8: .4byte 0x000003FF
_08039BDC: .4byte gSineTable
_08039BE0: .4byte gCamera
_08039BE4: .4byte gCurTask
_08039BE8: .4byte sub_803A46C
_08039BEC:
	mov r0, r8
	adds r0, #0x61
	ldrb r1, [r0]
	str r0, [sp, #0x10]
	cmp r1, #0
	blt _08039C1E
	cmp r1, #1
	ble _08039C02
	cmp r1, #2
	beq _08039C0E
	b _08039C1E
_08039C02:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	movs r2, #0
	b _08039C18
_08039C0E:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	movs r2, #1
_08039C18:
	bl sub_8036F9C
	str r0, [sp, #8]
_08039C1E:
	ldr r1, [sp, #0x10]
	ldrb r0, [r1]
	cmp r0, #9
	bls _08039C28
	b _0803A14A
_08039C28:
	lsls r0, r0, #2
	ldr r1, _08039C34 @ =_08039C38
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08039C34: .4byte _08039C38
_08039C38: @ jump table
	.4byte _08039C60 @ case 0
	.4byte _08039CDE @ case 1
	.4byte _08039E08 @ case 2
	.4byte _08039EE2 @ case 3
	.4byte _08039EFC @ case 4
	.4byte _08039F30 @ case 5
	.4byte _08039F94 @ case 6
	.4byte _08039FD4 @ case 7
	.4byte _0803A026 @ case 8
	.4byte _0803A084 @ case 9
_08039C60:
	mov r2, r8
	ldrh r0, [r2, #0x3c]
	subs r0, #1
	strh r0, [r2, #0x3c]
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _08039C72
	b _0803A14A
_08039C72:
	ldr r2, _08039CA8 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _08039CAC @ =0x00196225
	muls r0, r1, r0
	ldr r4, _08039CB0 @ =0x3C6EF35F
	adds r0, r0, r4
	str r0, [r2]
	adds r1, r0, #0
	ldr r0, [sp, #0xc]
	strh r3, [r0]
	ldr r2, [sp, #0x10]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	adds r0, r1, #0
	movs r1, #0x64
	bl __modsi3
	adds r1, r0, #0
	subs r1, #0x23
	cmp r1, #0
	bgt _08039CB4
	movs r0, #0xb4
	mov r3, r8
	strh r0, [r3, #0x3c]
	b _0803A14A
	.align 2, 0
_08039CA8: .4byte gPseudoRandom
_08039CAC: .4byte 0x00196225
_08039CB0: .4byte 0x3C6EF35F
_08039CB4:
	adds r1, r0, #0
	subs r1, #0x46
	cmp r1, #0
	bgt _08039CC4
	movs r0, #0x3c
	mov r4, r8
	strh r0, [r4, #0x3c]
	b _0803A14A
_08039CC4:
	adds r1, r0, #0
	subs r1, #0x5a
	cmp r1, #0
	bgt _08039CD4
	movs r0, #0x12
	mov r1, r8
	strh r0, [r1, #0x3c]
	b _0803A14A
_08039CD4:
	movs r0, #0x96
	lsls r0, r0, #1
	mov r2, r8
	strh r0, [r2, #0x3c]
	b _0803A14A
_08039CDE:
	movs r3, #0
	ldrsh r1, [r5, r3]
	ldr r2, _08039D48 @ =gPlayer
	ldr r0, [r2]
	asrs r0, r0, #8
	subs r6, r1, r0
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	subs r7, r1, r0
	cmp r6, #0
	bge _08039CFA
	rsbs r6, r6, #0
_08039CFA:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	bl sa2__sub_8004418
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r1, _08039D4C @ =0xFF1F0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	movs r1, #0x8f
	lsls r1, r1, #1
	cmp r0, r1
	bhi _08039D1A
	movs r6, #0xe0
_08039D1A:
	lsls r0, r6, #0x10
	ldr r2, _08039D50 @ =0xFDFF0000
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	cmp r0, r1
	bhi _08039D2A
	movs r6, #0xc8
	lsls r6, r6, #2
_08039D2A:
	mov r3, sb
	ldrh r2, [r3]
	lsls r0, r2, #0x16
	asrs r1, r0, #0x10
	lsls r0, r6, #0x16
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _08039D54
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r0, r0, r3
	cmp r1, r0
	blt _08039D60
	subs r0, r2, #6
	b _08039D6E
	.align 2, 0
_08039D48: .4byte gPlayer
_08039D4C: .4byte 0xFF1F0000
_08039D50: .4byte 0xFDFF0000
_08039D54:
	cmp r1, r0
	bge _08039D72
	ldr r3, _08039D68 @ =0xFFFFFE80
	adds r0, r0, r3
	cmp r1, r0
	ble _08039D6C
_08039D60:
	mov r0, sb
	strh r6, [r0]
	b _08039D72
	.align 2, 0
_08039D68: .4byte 0xFFFFFE80
_08039D6C:
	adds r0, r2, #6
_08039D6E:
	mov r1, sb
	strh r0, [r1]
_08039D72:
	mov r2, sb
	ldrh r0, [r2]
	ldr r1, _08039DFC @ =0x000003FF
	ands r1, r0
	strh r1, [r2]
	mov r3, r8
	ldrh r0, [r3, #0x3c]
	subs r0, #1
	strh r0, [r3, #0x3c]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08039D8C
	b _0803A14A
_08039D8C:
	movs r1, #0
	ldrsh r0, [r5, r1]
	ldr r3, _08039E00 @ =gPlayer
	ldr r1, [r3]
	asrs r1, r1, #8
	subs r0, r0, r1
	movs r1, #0
	ldrsh r2, [r4, r1]
	ldr r1, [r3, #4]
	asrs r1, r1, #8
	subs r2, r2, r1
	adds r3, r0, #0
	muls r3, r0, r3
	adds r0, r3, #0
	adds r4, r2, #0
	muls r4, r2, r4
	adds r2, r4, #0
	lsls r0, r0, #8
	lsls r2, r2, #8
	adds r0, r0, r2
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xc
	ldr r1, _08039E04 @ =0xFFFFF000
	subs r1, r1, r0
	mov r0, r8
	str r1, [r0, #0x44]
	movs r0, #0xfa
	lsls r0, r0, #8
	ldr r1, [sp, #0xc]
	strh r0, [r1]
	mov r1, r8
	adds r1, #0x60
	movs r0, #0
	strb r0, [r1]
	ldr r2, [sp, #0x10]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	movs r0, #0xf0
	lsls r0, r0, #2
	mov r3, sl
	strh r0, [r3, #0x1a]
	mov r1, sl
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0xb3
	bl m4aSongNumStart
	b _0803A14A
	.align 2, 0
_08039DFC: .4byte 0x000003FF
_08039E00: .4byte gPlayer
_08039E04: .4byte 0xFFFFF000
_08039E08:
	mov r4, r8
	ldr r0, [r4, #0x40]
	rsbs r0, r0, #0
	asrs r0, r0, #8
	subs r0, #0x14
	asrs r0, r0, #4
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	mov r1, r8
	adds r1, #0x60
	ldrb r0, [r1]
	cmp r0, r2
	bhs _08039E2A
	strb r2, [r1]
	bl sub_803A1D8
_08039E2A:
	ldr r0, [sp, #8]
	cmp r0, #2
	bne _08039EB8
	mov r1, r8
	adds r1, #0x62
	movs r0, #0xff
	strb r0, [r1]
	movs r4, #0
	ldr r1, [sp, #0xc]
	strh r4, [r1]
	movs r0, #7
	ldr r2, [sp, #0x10]
	strb r0, [r2]
	mov r0, sl
	adds r0, #0x20
	mov r3, sp
	ldrb r3, [r3, #8]
	strb r3, [r0]
	mov r1, sl
	adds r1, #0x21
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r5, _08039E90 @ =gPlayer
	adds r0, r5, #0
	bl sub_8046CEC
	lsls r0, r6, #8
	str r0, [r5]
	lsls r0, r7, #8
	str r0, [r5, #4]
	strh r4, [r5, #8]
	strh r4, [r5, #0xa]
	strh r4, [r5, #0xc]
	ldr r0, [r5, #0x10]
	ldr r1, _08039E94 @ =0x00E00100
	orrs r0, r1
	str r0, [r5, #0x10]
	mov r4, sl
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08039E98
	mov r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	rsbs r0, r0, #0
	asrs r0, r0, #2
	b _08039E9E
	.align 2, 0
_08039E90: .4byte gPlayer
_08039E94: .4byte 0x00E00100
_08039E98:
	mov r3, sb
	ldrh r0, [r3]
	lsrs r0, r0, #2
_08039E9E:
	strb r0, [r5, #0x14]
	ldr r1, _08039EB4 @ =gPlayer
	adds r3, r1, #0
	adds r3, #0x40
	movs r2, #0
	movs r0, #0x28
	strb r0, [r3]
	strh r2, [r1, #0x38]
	strh r2, [r1, #0x3a]
	b _0803A14A
	.align 2, 0
_08039EB4: .4byte gPlayer
_08039EB8:
	mov r4, r8
	ldr r1, [r4, #0x40]
	ldr r0, [r4, #0x44]
	cmp r1, r0
	ble _08039EC4
	b _0803A14A
_08039EC4:
	movs r0, #0
	ldr r1, [sp, #0xc]
	strh r0, [r1]
	ldr r2, [sp, #0x10]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	mov r1, sl
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	b _0803A14A
_08039EE2:
	mov r3, sl
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _08039EF2
	b _0803A14A
_08039EF2:
	movs r0, #0x80
	lsls r0, r0, #2
	ldr r4, [sp, #0xc]
	strh r0, [r4]
	b _0803A076
_08039EFC:
	mov r2, r8
	ldr r0, [r2, #0x40]
	ldr r1, _08039F2C @ =0xFFFFEC00
	cmp r0, r1
	bge _08039F08
	b _0803A14A
_08039F08:
	str r1, [r2, #0x40]
	movs r1, #0
	movs r0, #0
	ldr r3, [sp, #0xc]
	strh r0, [r3]
	movs r0, #0xb8
	lsls r0, r0, #3
	mov r4, sl
	strh r0, [r4, #0x1a]
	mov r0, sl
	adds r0, #0x20
	strb r1, [r0]
	mov r1, sl
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	b _0803A076
	.align 2, 0
_08039F2C: .4byte 0xFFFFEC00
_08039F30:
	mov r2, sb
	ldrh r0, [r2]
	movs r3, #0
	ldrsh r1, [r2, r3]
	cmp r1, #0
	bne _08039F56
	movs r0, #0xb8
	lsls r0, r0, #3
	mov r4, sl
	strh r0, [r4, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r1, [sp, #0xc]
	strh r0, [r1]
	ldr r2, [sp, #0x10]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	b _0803A14A
_08039F56:
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r1, r2
	ble _08039F78
	adds r0, #6
	ldr r3, _08039F74 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	mov r4, sb
	strh r0, [r4]
	cmp r0, #6
	ble _08039F70
	b _0803A14A
_08039F70:
	b _08039F8A
	.align 2, 0
_08039F74: .4byte 0x000003FF
_08039F78:
	subs r0, #6
	ldr r3, _08039F90 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	mov r4, sb
	strh r0, [r4]
	cmp r0, r2
	bgt _08039F8A
	b _0803A14A
_08039F8A:
	movs r0, #0
	strh r0, [r4]
	b _0803A14A
	.align 2, 0
_08039F90: .4byte 0x000003FF
_08039F94:
	mov r0, r8
	ldr r1, [r0, #0x40]
	ldr r0, _08039FB8 @ =0x00000DFF
	cmp r1, r0
	bgt _08039FA0
	b _0803A14A
_08039FA0:
	mov r0, r8
	adds r0, #0x62
	ldrb r0, [r0]
	cmp r0, #0
	bne _08039FBC
	ldr r1, [sp]
	adds r1, #0x99
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08039FC4
	.align 2, 0
_08039FB8: .4byte 0x00000DFF
_08039FBC:
	ldr r1, [sp]
	adds r1, #0x92
	movs r0, #1
	strh r0, [r1]
_08039FC4:
	ldr r0, _08039FD0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0803A14A
	.align 2, 0
_08039FD0: .4byte gCurTask
_08039FD4:
	ldr r2, _08039FF8 @ =gPlayer
	lsls r0, r6, #8
	str r0, [r2]
	lsls r0, r7, #8
	str r0, [r2, #4]
	mov r1, sl
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08039FFC
	mov r3, sb
	movs r4, #0
	ldrsh r0, [r3, r4]
	rsbs r0, r0, #0
	asrs r0, r0, #2
	b _0803A002
	.align 2, 0
_08039FF8: .4byte gPlayer
_08039FFC:
	mov r1, sb
	ldrh r0, [r1]
	lsrs r0, r0, #2
_0803A002:
	strb r0, [r2, #0x14]
	mov r2, sl
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0803A014
	b _0803A14A
_0803A014:
	movs r0, #0xc0
	lsls r0, r0, #3
	ldr r3, [sp, #0xc]
	strh r0, [r3]
	ldr r4, [sp, #0x10]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	b _0803A14A
_0803A026:
	ldr r2, _0803A04C @ =gPlayer
	lsls r0, r6, #8
	str r0, [r2]
	lsls r0, r7, #8
	str r0, [r2, #4]
	mov r1, sl
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0803A050
	mov r3, sb
	movs r4, #0
	ldrsh r0, [r3, r4]
	rsbs r0, r0, #0
	asrs r0, r0, #2
	b _0803A056
	.align 2, 0
_0803A04C: .4byte gPlayer
_0803A050:
	mov r1, sb
	ldrh r0, [r1]
	lsrs r0, r0, #2
_0803A056:
	strb r0, [r2, #0x14]
	mov r2, r8
	ldr r0, [r2, #0x40]
	ldr r1, _0803A080 @ =0xFFFFDC00
	cmp r0, r1
	blt _0803A14A
	str r1, [r2, #0x40]
	movs r2, #0
	ldr r3, [sp, #0xc]
	strh r2, [r3]
	mov r1, r8
	adds r1, #0x4c
	movs r0, #0x10
	strh r0, [r1]
	mov r4, r8
	strh r2, [r4, #0x3c]
_0803A076:
	ldr r1, [sp, #0x10]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _0803A14A
	.align 2, 0
_0803A080: .4byte 0xFFFFDC00
_0803A084:
	ldr r2, _0803A0AC @ =gPlayer
	lsls r0, r6, #8
	str r0, [r2]
	lsls r0, r7, #8
	str r0, [r2, #4]
	mov r3, sl
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	adds r3, r2, #0
	cmp r0, #0
	beq _0803A0B0
	mov r4, sb
	movs r1, #0
	ldrsh r0, [r4, r1]
	rsbs r0, r0, #0
	asrs r0, r0, #2
	b _0803A0B6
	.align 2, 0
_0803A0AC: .4byte gPlayer
_0803A0B0:
	mov r2, sb
	ldrh r0, [r2]
	lsrs r0, r0, #2
_0803A0B6:
	strb r0, [r3, #0x14]
	mov r2, r8
	adds r2, #0x4c
	ldrh r0, [r2]
	mov r4, sb
	ldrh r4, [r4]
	adds r0, r0, r4
	ldr r1, _0803A15C @ =0x000003FF
	ands r0, r1
	mov r1, sb
	strh r0, [r1]
	ldr r1, _0803A160 @ =0x000001FF
	adds r5, r2, #0
	cmp r0, r1
	ble _0803A102
	ldr r6, _0803A164 @ =gRingCount
	ldrh r4, [r6]
	cmp r4, #0
	beq _0803A0FE
	movs r2, #0
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bge _0803A0FE
	cmp r4, #5
	bls _0803A0EA
	movs r4, #5
_0803A0EA:
	ldr r0, [r3]
	asrs r0, r0, #8
	ldr r1, [r3, #4]
	asrs r1, r1, #8
	adds r2, r4, #0
	bl sub_8040B10
	ldrh r0, [r6]
	subs r0, r0, r4
	strh r0, [r6]
_0803A0FE:
	movs r0, #0x10
	strh r0, [r5]
_0803A102:
	ldr r3, _0803A168 @ =0xFFFFFF00
	adds r0, r3, #0
	mov r4, sb
	ldrh r4, [r4]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	bhi _0803A14A
	ldr r0, _0803A16C @ =0x0000FFF0
	strh r0, [r5]
	mov r1, r8
	ldrh r0, [r1, #0x3c]
	adds r0, #1
	strh r0, [r1, #0x3c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #4
	bne _0803A130
	ldr r1, [sp]
	adds r1, #0x99
	movs r0, #0x33
	strb r0, [r1]
_0803A130:
	mov r2, r8
	ldrh r4, [r2, #0x3c]
	cmp r4, #5
	bne _0803A14A
	mov r3, sl
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	bl sub_803A170
	ldr r0, [sp, #0x10]
	strb r4, [r0]
_0803A14A:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A15C: .4byte 0x000003FF
_0803A160: .4byte 0x000001FF
_0803A164: .4byte gRingCount
_0803A168: .4byte 0xFFFFFF00
_0803A16C: .4byte 0x0000FFF0

	thumb_func_start sub_803A170
sub_803A170: @ 0x0803A170
	push {r4, r5, lr}
	ldr r2, _0803A184 @ =gPlayer
	movs r1, #0x78
	strh r1, [r2, #0x1c]
	adds r5, r2, #0
	cmp r0, #0
	beq _0803A188
	movs r0, #0xfe
	lsls r0, r0, #8
	b _0803A18C
	.align 2, 0
_0803A184: .4byte gPlayer
_0803A188:
	movs r0, #0x80
	lsls r0, r0, #2
_0803A18C:
	strh r0, [r5, #8]
	movs r4, #0
	ldr r0, _0803A1D0 @ =0x0000FA20
	strh r0, [r5, #0xa]
	strb r4, [r5, #0x14]
	ldr r0, [r5, #0x10]
	ldr r1, _0803A1D4 @ =0xFF1FFAC3
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0x10]
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0xf
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #0xe
	bl sub_804516C
	movs r0, #6
	strb r0, [r5, #0xe]
	movs r0, #0xe
	strb r0, [r5, #0xf]
	adds r1, r5, #0
	adds r1, #0x3d
	movs r0, #0
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x3e
	strb r4, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803A1D0: .4byte 0x0000FA20
_0803A1D4: .4byte 0xFF1FFAC3

	thumb_func_start sub_803A1D8
sub_803A1D8: @ 0x0803A1D8
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	ldr r0, _0803A2A0 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r6, #0xc0
	lsls r6, r6, #0x12
	adds r0, r4, r6
	mov sb, r0
	ldr r0, _0803A2A4 @ =sub_803A2F8
	ldr r2, _0803A2A8 @ =0x00002101
	ldr r1, _0803A2AC @ =sub_803A600
	str r1, [sp]
	movs r1, #0x64
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	adds r6, r5, r6
	ldr r1, _0803A2B0 @ =0x03000050
	adds r0, r4, r1
	ldrh r1, [r0]
	ldr r2, _0803A2B0 @ =0x03000050
	adds r0, r5, r2
	movs r2, #0
	mov r8, r2
	movs r3, #0
	strh r1, [r0]
	ldr r1, _0803A2B4 @ =0x03000052
	adds r0, r4, r1
	ldrh r1, [r0]
	ldr r2, _0803A2B4 @ =0x03000052
	adds r0, r5, r2
	strh r1, [r0]
	ldr r1, _0803A2B8 @ =0x0300004E
	adds r0, r4, r1
	ldrh r1, [r0]
	subs r2, #8
	adds r0, r5, r2
	strh r1, [r0]
	ldr r0, _0803A2BC @ =0x03000060
	adds r4, r4, r0
	ldrb r1, [r4]
	adds r0, r5, r0
	strb r1, [r0]
	movs r0, #4
	str r3, [sp, #4]
	bl VramMalloc
	str r0, [r6, #4]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r6, #0x1a]
	ldr r3, [sp, #4]
	strh r3, [r6, #8]
	ldr r0, _0803A2C0 @ =0x000002B2
	strh r0, [r6, #0xa]
	ldr r1, _0803A2C4 @ =0x03000020
	adds r0, r5, r1
	mov r2, r8
	strb r2, [r0]
	strh r3, [r6, #0x14]
	strh r3, [r6, #0x1c]
	ldr r0, _0803A2C8 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r2, _0803A2CC @ =0x03000022
	adds r1, r5, r2
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0803A2D0 @ =0x03000025
	adds r0, r5, r1
	mov r2, r8
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x28]
	mov r1, sb
	ldr r0, [r1, #0x10]
	movs r2, #0x80
	lsls r2, r2, #3
	ands r0, r2
	ldr r1, _0803A2D4 @ =0x00002030
	orrs r0, r1
	str r0, [r6, #0x10]
	ldr r0, _0803A2D8 @ =0x03000030
	adds r5, r5, r0
	strh r3, [r5]
	ldr r0, [r6, #0x10]
	ands r0, r2
	cmp r0, #0
	beq _0803A2DC
	movs r0, #0xff
	lsls r0, r0, #8
	b _0803A2E0
	.align 2, 0
_0803A2A0: .4byte gCurTask
_0803A2A4: .4byte sub_803A2F8
_0803A2A8: .4byte 0x00002101
_0803A2AC: .4byte sub_803A600
_0803A2B0: .4byte 0x03000050
_0803A2B4: .4byte 0x03000052
_0803A2B8: .4byte 0x0300004E
_0803A2BC: .4byte 0x03000060
_0803A2C0: .4byte 0x000002B2
_0803A2C4: .4byte 0x03000020
_0803A2C8: .4byte 0x03000021
_0803A2CC: .4byte 0x03000022
_0803A2D0: .4byte 0x03000025
_0803A2D4: .4byte 0x00002030
_0803A2D8: .4byte 0x03000030
_0803A2DC:
	movs r0, #0x80
	lsls r0, r0, #1
_0803A2E0:
	strh r0, [r5, #2]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #4]
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803A2F8
sub_803A2F8: @ 0x0803A2F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r1, _0803A43C @ =gCurTask
	ldr r0, [r1]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r2, r1
	ldrh r0, [r0]
	adds r0, r0, r1
	ldrh r3, [r0, #6]
	mov r8, r3
	adds r3, r3, r1
	ldrh r0, [r0]
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp]
	ldr r4, _0803A440 @ =0x03000030
	adds r4, r4, r2
	mov sb, r4
	ldr r0, _0803A444 @ =0x03000050
	add r0, r8
	ldrh r0, [r0]
	adds r1, #0x50
	adds r1, r1, r2
	mov sl, r1
	strh r0, [r1]
	ldr r0, _0803A448 @ =0x03000052
	add r0, r8
	ldrh r0, [r0]
	ldr r4, _0803A448 @ =0x03000052
	adds r4, r4, r2
	mov ip, r4
	strh r0, [r4]
	ldr r0, _0803A44C @ =0x0300004E
	add r0, r8
	ldrh r6, [r0]
	adds r4, r6, #0
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0803A36C
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	ldr r1, _0803A450 @ =0xFFFFFE00
	adds r4, r0, r1
	ldr r1, _0803A454 @ =0x000003FF
	ands r4, r1
	adds r6, r1, #0
	ands r6, r0
_0803A36C:
	ldr r1, _0803A458 @ =0x03000060
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	adds r0, #8
	lsls r0, r0, #8
	ldr r2, [r3, #0x40]
	adds r2, r2, r0
	str r2, [r7, #0x40]
	ldr r3, _0803A45C @ =gSineTable
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r1, r4
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r4, #0
	ldrsh r5, [r0, r4]
	asrs r5, r5, #6
	muls r5, r2, r5
	asrs r5, r5, #0x10
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r0, #0
	ldrsh r4, [r1, r0]
	asrs r4, r4, #6
	muls r4, r2, r4
	asrs r4, r4, #0x10
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r5, r5, r0
	mov r3, ip
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r4, r4, r0
	ldr r1, _0803A460 @ =gCamera
	ldrh r0, [r1]
	subs r0, r5, r0
	mov r2, sb
	strh r0, [r2, #6]
	ldrh r0, [r1, #2]
	subs r0, r4, r0
	strh r0, [r2, #8]
	strh r6, [r2]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	mov r1, sb
	bl TransformSprite
	adds r0, r7, #0
	bl DisplaySprite
	ldr r1, [r7, #0x40]
	movs r0, #0x80
	lsls r0, r0, #4
	cmp r1, r0
	bgt _0803A3F0
	ldr r0, _0803A464 @ =0x03000061
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #6
	bne _0803A3F8
_0803A3F0:
	ldr r3, _0803A43C @ =gCurTask
	ldr r0, [r3]
	bl TaskDestroy
_0803A3F8:
	ldr r0, [sp]
	adds r0, #0x94
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _0803A42C
	adds r1, r7, #0
	adds r1, #0x48
	movs r0, #0
	strh r0, [r1]
	lsls r0, r5, #8
	str r0, [r7, #0x54]
	lsls r0, r4, #8
	str r0, [r7, #0x58]
	ldr r0, _0803A43C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803A468 @ =sub_803A46C
	str r0, [r1, #8]
	adds r0, r7, #0
	adds r0, #0x60
	ldrb r1, [r0]
	lsls r1, r1, #2
	movs r0, #0x50
	subs r0, r0, r1
	strh r0, [r7, #0x3c]
_0803A42C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A43C: .4byte gCurTask
_0803A440: .4byte 0x03000030
_0803A444: .4byte 0x03000050
_0803A448: .4byte 0x03000052
_0803A44C: .4byte 0x0300004E
_0803A450: .4byte 0xFFFFFE00
_0803A454: .4byte 0x000003FF
_0803A458: .4byte 0x03000060
_0803A45C: .4byte gSineTable
_0803A460: .4byte gCamera
_0803A464: .4byte 0x03000061
_0803A468: .4byte sub_803A46C

	thumb_func_start sub_803A46C
sub_803A46C: @ 0x0803A46C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _0803A520 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	adds r1, #0x30
	adds r1, r1, r0
	mov r8, r1
	ldr r2, _0803A524 @ =0x03000048
	adds r5, r0, r2
	ldrh r0, [r5]
	adds r0, #0x20
	strh r0, [r5]
	movs r0, #0
	ldrsh r1, [r5, r0]
	ldr r0, [r4, #0x58]
	adds r0, r0, r1
	str r0, [r4, #0x58]
	ldr r1, [r4, #0x54]
	lsls r1, r1, #8
	lsls r0, r0, #8
	asrs r7, r0, #0x10
	adds r0, r7, #0
	adds r0, #8
	asrs r6, r1, #0x10
	ldr r1, _0803A528 @ =sub_803FD5C
	str r1, [sp]
	adds r1, r6, #0
	movs r2, #1
	movs r3, #8
	bl sub_804021C
	cmp r0, #0
	bge _0803A4D0
	lsls r1, r0, #8
	ldr r0, [r4, #0x58]
	adds r0, r0, r1
	str r0, [r4, #0x58]
	ldrh r1, [r5]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x12
	subs r0, r0, r1
	strh r0, [r5]
_0803A4D0:
	ldr r1, _0803A52C @ =gCamera
	ldrh r0, [r1]
	subs r0, r6, r0
	mov r2, r8
	strh r0, [r2, #6]
	ldrh r0, [r1, #2]
	subs r0, r7, r0
	strh r0, [r2, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	mov r1, r8
	bl TransformSprite
	adds r0, r4, #0
	bl DisplaySprite
	ldrh r0, [r4, #0x3c]
	subs r0, #1
	strh r0, [r4, #0x3c]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803A510
	lsls r0, r6, #8
	lsls r1, r7, #8
	bl sub_8017540
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
_0803A510:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A520: .4byte gCurTask
_0803A524: .4byte 0x03000048
_0803A528: .4byte sub_803FD5C
_0803A52C: .4byte gCamera

	thumb_func_start TaskDestructor_EggX
TaskDestructor_EggX: @ 0x0803A530
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

	thumb_func_start sub_803A54C
sub_803A54C: @ 0x0803A54C
	push {r4, lr}
	sub sp, #4
	ldr r2, _0803A588 @ =gUnknown_03005160
	ldrh r0, [r2, #8]
	cmp r0, #0xd
	bhi _0803A55A
	movs r0, #0xe
_0803A55A:
	movs r4, #0
	movs r1, #0
	strh r0, [r2, #8]
	ldr r0, _0803A58C @ =sub_8038554
	ldr r2, _0803A590 @ =0x00001FFF
	str r1, [sp]
	movs r1, #0x10
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r1, #0xd2
	lsls r1, r1, #1
	strh r1, [r0, #6]
	strb r4, [r0, #9]
	strb r4, [r0, #8]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803A588: .4byte gUnknown_03005160
_0803A58C: .4byte sub_8038554
_0803A590: .4byte 0x00001FFF

	thumb_func_start sub_803A594
sub_803A594: @ 0x0803A594
	push {r4, lr}
	sub sp, #4
	ldr r0, _0803A5C8 @ =sub_803891C
	ldr r2, _0803A5CC @ =0x00001FFF
	movs r4, #0
	str r4, [sp]
	movs r1, #0x10
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #0
	movs r1, #0x20
	strh r1, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	movs r1, #0x78
	strh r1, [r0, #6]
	strb r2, [r0, #8]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803A5C8: .4byte sub_803891C
_0803A5CC: .4byte 0x00001FFF

	thumb_func_start sub_803A5D0
sub_803A5D0: @ 0x0803A5D0
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #4]
	bl VramFree
	ldr r0, [r4, #0x34]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_803A5EC
sub_803A5EC: @ 0x0803A5EC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_803A600
sub_803A600: @ 0x0803A600
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

@ Inline?
	thumb_func_start sub_803A614
sub_803A614: @ 0x0803A614
	sub sp, #4
	mov r1, sp
	ldr r2, _0803A63C @ =0x00007FFF
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0803A640 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _0803A644 @ =gObjPalette+0x180
	str r0, [r1, #4]
	ldr r0, _0803A648 @ =0x81000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _0803A64C @ =gFlags
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	add sp, #4
	bx lr
	.align 2, 0
_0803A63C: .4byte 0x00007FFF
_0803A640: .4byte 0x040000D4
_0803A644: .4byte gObjPalette+0x180
_0803A648: .4byte 0x81000010
_0803A64C: .4byte gFlags

@ Inline?
	thumb_func_start sub_803A650
sub_803A650: @ 0x0803A650
	push {r4, r5, r6, r7, lr}
	ldr r2, _0803A690 @ =gCurTask
	ldr r2, [r2]
	ldrh r3, [r2, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r6, r3, r2
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	ldr r3, _0803A694 @ =gPlayer
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	adds r7, r0, #0
	ldr r0, _0803A698 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0803A6A0
	ldr r3, _0803A69C @ =gUnknown_03005AB0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	b _0803A6A2
	.align 2, 0
_0803A690: .4byte gCurTask
_0803A694: .4byte gPlayer
_0803A698: .4byte gUnknown_03005088
_0803A69C: .4byte gUnknown_03005AB0
_0803A6A0:
	movs r0, #0
_0803A6A2:
	cmp r7, #2
	beq _0803A6AA
	cmp r0, #2
	bne _0803A6D4
_0803A6AA:
	ldr r0, _0803A6DC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldrh r2, [r0, #6]
	ldr r0, _0803A6E0 @ =0x03000044
	adds r3, r2, r0
	adds r0, #0x20
	adds r1, r2, r0
	movs r0, #3
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _0803A6E4 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r0, _0803A6E8 @ =0x03000065
	adds r2, r2, r0
	movs r0, #0xff
	strb r0, [r2]
_0803A6D4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A6DC: .4byte gCurTask
_0803A6E0: .4byte 0x03000044
_0803A6E4: .4byte 0xFFFFBFFF
_0803A6E8: .4byte 0x03000065

	thumb_func_start sub_803A6EC
sub_803A6EC: @ 0x0803A6EC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0xc
	ldr r6, [sp, #0x20]
	ldr r4, [sp, #0x24]
	mov r8, r4
	movs r5, #0
	str r5, [sp, #4]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r4, _0803A76C @ =0xFFFFFF00
	ldr r5, [sp, #8]
	ands r4, r5
	orrs r4, r2
	str r4, [sp, #8]
	lsls r3, r3, #0x18
	lsrs r3, r3, #8
	ldr r5, _0803A770 @ =0xFF00FFFF
	ands r5, r4
	orrs r5, r3
	str r5, [sp, #8]
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x10
	ldr r2, _0803A774 @ =0xFFFF00FF
	ands r2, r5
	orrs r2, r6
	str r2, [sp, #8]
	mov r3, r8
	lsls r3, r3, #0x18
	mov r8, r3
	ldr r3, _0803A778 @ =0x00FFFFFF
	ands r2, r3
	mov r4, r8
	orrs r4, r2
	str r4, [sp, #8]
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	ldr r0, _0803A77C @ =gPlayer
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_800C1E8
	adds r4, r0, #0
	ldr r0, _0803A780 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0803A788
	ldr r0, _0803A784 @ =gUnknown_03005AB0
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_800C1E8
	b _0803A78A
	.align 2, 0
_0803A76C: .4byte 0xFFFFFF00
_0803A770: .4byte 0xFF00FFFF
_0803A774: .4byte 0xFFFF00FF
_0803A778: .4byte 0x00FFFFFF
_0803A77C: .4byte gPlayer
_0803A780: .4byte gUnknown_03005088
_0803A784: .4byte gUnknown_03005AB0
_0803A788:
	movs r0, #0
_0803A78A:
	orrs r4, r0
	cmp r4, #2
	bne _0803A7B2
	ldr r0, _0803A7C0 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	ldr r5, _0803A7C4 @ =0x03000044
	adds r3, r2, r5
	ldr r0, _0803A7C8 @ =0x03000064
	adds r1, r2, r0
	movs r0, #3
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _0803A7CC @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r3, _0803A7D0 @ =0x03000065
	adds r2, r2, r3
	movs r0, #0xff
	strb r0, [r2]
_0803A7B2:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803A7C0: .4byte gCurTask
_0803A7C4: .4byte 0x03000044
_0803A7C8: .4byte 0x03000064
_0803A7CC: .4byte 0xFFFFBFFF
_0803A7D0: .4byte 0x03000065

	thumb_func_start sub_803A7D4
sub_803A7D4: @ 0x0803A7D4
	push {r4, r5, r6, r7, lr}
	ldr r2, _0803A814 @ =gCurTask
	ldr r2, [r2]
	ldrh r3, [r2, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r6, r3, r2
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	ldr r3, _0803A818 @ =gPlayer
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	adds r7, r0, #0
	ldr r0, _0803A81C @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0803A824
	ldr r3, _0803A820 @ =gUnknown_03005AB0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	b _0803A826
	.align 2, 0
_0803A814: .4byte gCurTask
_0803A818: .4byte gPlayer
_0803A81C: .4byte gUnknown_03005088
_0803A820: .4byte gUnknown_03005AB0
_0803A824:
	movs r0, #0
_0803A826:
	cmp r7, #2
	beq _0803A82E
	cmp r0, #2
	bne _0803A858
_0803A82E:
	ldr r0, _0803A860 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldrh r2, [r0, #6]
	ldr r0, _0803A864 @ =0x03000044
	adds r3, r2, r0
	adds r0, #0x20
	adds r1, r2, r0
	movs r0, #3
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _0803A868 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r0, _0803A86C @ =0x03000065
	adds r2, r2, r0
	movs r0, #0xff
	strb r0, [r2]
_0803A858:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A860: .4byte gCurTask
_0803A864: .4byte 0x03000044
_0803A868: .4byte 0xFFFFBFFF
_0803A86C: .4byte 0x03000065

	thumb_func_start sub_803A870
sub_803A870: @ 0x0803A870
	ldr r0, _0803A8A0 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	ldr r0, _0803A8A4 @ =0x03000044
	adds r1, r2, r0
	adds r0, #0x20
	adds r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq _0803A89C
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0803A89C
	movs r0, #0
	strb r0, [r3]
	ldr r0, _0803A8A8 @ =0x03000065
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
_0803A89C:
	bx lr
	.align 2, 0
_0803A8A0: .4byte gCurTask
_0803A8A4: .4byte 0x03000044
_0803A8A8: .4byte 0x03000065

	thumb_func_start sub_803A8AC
sub_803A8AC: @ 0x0803A8AC
	ldr r0, _0803A8C4 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _0803A8C8 @ =0x0300000C
	adds r2, r0, r1
	adds r1, #0x38
	adds r0, r0, r1
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	bx lr
	.align 2, 0
_0803A8C4: .4byte gCurTask
_0803A8C8: .4byte 0x0300000C

	thumb_func_start sub_803A8CC
sub_803A8CC: @ 0x0803A8CC
	push {r4, lr}
	ldr r2, _0803A8F4 @ =gCurTask
	ldr r2, [r2]
	ldrh r2, [r2, #6]
	ldr r3, _0803A8F8 @ =0x0300000C
	adds r2, r2, r3
	ldr r4, _0803A8FC @ =gCamera
	ldrh r3, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r3
	strh r0, [r2, #0x16]
	ldrh r0, [r4, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r2, #0x18]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803A8F4: .4byte gCurTask
_0803A8F8: .4byte 0x0300000C
_0803A8FC: .4byte gCamera

	thumb_func_start sub_803A900
sub_803A900: @ 0x0803A900
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r3, r2, #0
	ldr r0, _0803A91C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	cmp r2, #2
	beq _0803A934
	cmp r2, #2
	bgt _0803A920
	cmp r2, #1
	beq _0803A926
	b _0803A948
	.align 2, 0
_0803A91C: .4byte gCurTask
_0803A920:
	cmp r3, #3
	beq _0803A940
	b _0803A948
_0803A926:
	ldr r0, _0803A930 @ =0x03000078
	adds r1, r1, r0
	movs r0, #8
	b _0803A946
	.align 2, 0
_0803A930: .4byte 0x03000078
_0803A934:
	ldr r0, _0803A93C @ =0x03000078
	adds r1, r1, r0
	movs r0, #9
	b _0803A946
	.align 2, 0
_0803A93C: .4byte 0x03000078
_0803A940:
	ldr r0, _0803A94C @ =0x03000078
	adds r1, r1, r0
	movs r0, #0xa
_0803A946:
	strb r0, [r1]
_0803A948:
	bx lr
	.align 2, 0
_0803A94C: .4byte 0x03000078

@ --- End of X-Zone Final Boss
