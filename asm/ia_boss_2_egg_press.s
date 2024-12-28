.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

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
	ldr r0, _0802D7F4 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0802D7FC
	ldr r3, _0802D7F8 @ =gPartner
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
_0802D7F4: .4byte gNumSingleplayerCharacters
_0802D7F8: .4byte gPartner
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
	ldr r0, _0802E6A0 @ =gNumSingleplayerCharacters
	movs r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #2
	bne _0802E620
	ldr r0, _0802E6A4 @ =gPartner
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
_0802E6A0: .4byte gNumSingleplayerCharacters
_0802E6A4: .4byte gPartner
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
	ldrh r3, [r3, #6] @ inline of sub_802EF24?
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
	bl CreateBossCapsule
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
