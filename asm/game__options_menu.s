.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_OptionsMenuMain
Task_OptionsMenuMain: @ 0x08010B6C
	push {r4, r5, r6, lr}
	ldr r0, _08010BC8 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	ldr r0, _08010BCC @ =0x03000330
	adds r5, r4, r0
	ldr r1, _08010BD0 @ =0x0300033F
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08010BD4 @ =gBgScrollRegs
	strh r1, [r0]
	adds r0, r5, #0
	bl sub_805423C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08010B98
	b _08010CA8
_08010B98:
	movs r2, #4
	ldrsh r0, [r5, r2]
	cmp r0, #2
	bne _08010C6C
	ldr r0, _08010BD8 @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08010BE0
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r0, _08010BDC @ =0x0300033E
	adds r1, r4, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _08010C04
	movs r0, #7
	b _08010C02
	.align 2, 0
_08010BC8: .4byte gCurTask
_08010BCC: .4byte 0x03000330
_08010BD0: .4byte 0x0300033F
_08010BD4: .4byte gBgScrollRegs
_08010BD8: .4byte gRepeatedKeys
_08010BDC: .4byte 0x0300033E
_08010BE0:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08010C04
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r2, _08010C34 @ =0x0300033E
	adds r1, r4, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _08010C04
	movs r0, #0
_08010C02:
	strb r0, [r1]
_08010C04:
	ldr r0, _08010C38 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08010C58
	movs r0, #0x6a
	bl m4aSongNumStart
	ldr r0, _08010C3C @ =0x0000033E
	adds r2, r6, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _08010C28
	cmp r0, #3
	beq _08010C28
	cmp r0, #4
	bne _08010C40
_08010C28:
	movs r1, #0
	movs r0, #1
	strh r0, [r5, #4]
	strh r1, [r5, #6]
	b _08010CA8
	.align 2, 0
_08010C34: .4byte 0x0300033E
_08010C38: .4byte gPressedKeys
_08010C3C: .4byte 0x0000033E
_08010C40:
	ldr r0, _08010C50 @ =0x0000033F
	adds r1, r6, r0
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08010C54 @ =sOptionsSelectFuncs
	ldrb r0, [r2]
	b _08010C8E
	.align 2, 0
_08010C50: .4byte 0x0000033F
_08010C54: .4byte sOptionsSelectFuncs
_08010C58:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08010CA8
	movs r0, #0x6b
	bl m4aSongNumStart
	bl OptionsSelectEnd
	b _08010CAC
_08010C6C:
	ldr r1, _08010C9C @ =0x0300033E
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08010C7E
	cmp r0, #3
	beq _08010C7E
	cmp r0, #4
	bne _08010CA8
_08010C7E:
	ldr r2, _08010CA0 @ =0x0000033F
	adds r1, r6, r2
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08010CA4 @ =sOptionsSelectFuncs
	subs r2, #1
	adds r0, r6, r2
	ldrb r0, [r0]
_08010C8E:
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	b _08010CAC
	.align 2, 0
_08010C9C: .4byte 0x0300033E
_08010CA0: .4byte 0x0000033F
_08010CA4: .4byte sOptionsSelectFuncs
_08010CA8:
	bl sub_8010CB4
_08010CAC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8010CB4
sub_8010CB4: @ 0x08010CB4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08010D08 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r6, r7, #0
	movs r0, #9
	strh r0, [r6, #0x16]
	ldr r0, _08010D0C @ =0x0300033E
	adds r1, r1, r0
	ldrb r0, [r1]
	lsls r0, r0, #4
	adds r0, #0x1c
	strh r0, [r6, #0x18]
	adds r0, r6, #0
	bl DisplaySprite
	movs r4, #0
_08010CE0:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, #0x30
	adds r7, r6, r0
	ldr r1, _08010D10 @ =0x0000033E
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, r4
	bne _08010D22
	ldr r2, _08010D14 @ =0x0000033F
	adds r0, r6, r2
	ldrb r1, [r0]
	cmp r1, #0
	beq _08010D18
	adds r1, r7, #0
	adds r1, #0x25
	movs r0, #1
	strb r0, [r1]
	b _08010D1E
	.align 2, 0
_08010D08: .4byte gCurTask
_08010D0C: .4byte 0x0300033E
_08010D10: .4byte 0x0000033E
_08010D14: .4byte 0x0000033F
_08010D18:
	adds r0, r7, #0
	adds r0, #0x25
	strb r1, [r0]
_08010D1E:
	movs r0, #0x1e
	b _08010D24
_08010D22:
	movs r0, #0x19
_08010D24:
	strh r0, [r7, #0x16]
	lsls r0, r4, #4
	adds r0, #0x26
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _08010CE0
	movs r0, #0xd8
	lsls r0, r0, #1
	adds r7, r6, r0
	movs r5, #0xdc
	strh r5, [r7, #0x16]
	movs r0, #0x36
	strh r0, [r7, #0x18]
	ldr r2, _08010E70 @ =0x000001D1
	adds r1, r6, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08010E74 @ =gUnknown_080BB36C
	mov r8, r0
	ldr r4, _08010E78 @ =gLoadedSaveGame
	ldrb r0, [r4, #0x19]
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
	ldr r1, _08010E7C @ =gUnknown_080BB37C
	ldrb r0, [r4, #0x18]
	adds r0, r0, r1
	ldrb r1, [r0]
	subs r2, #1
	adds r0, r6, r2
	strb r1, [r0]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	movs r0, #0xf0
	lsls r0, r0, #1
	adds r7, r6, r0
	strh r5, [r7, #0x16]
	movs r0, #0x46
	strh r0, [r7, #0x18]
	ldr r2, _08010E80 @ =0x00000201
	adds r1, r6, r2
	subs r0, #0x47
	strb r0, [r1]
	ldrb r0, [r4, #0x19]
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
	ldr r1, _08010E84 @ =gUnknown_080BB37E
	ldrb r0, [r4, #0x1b]
	adds r0, r0, r1
	ldrb r1, [r0]
	subs r2, #1
	adds r0, r6, r2
	strb r1, [r0]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	movs r0, #0x84
	lsls r0, r0, #2
	adds r7, r6, r0
	strh r5, [r7, #0x16]
	movs r0, #0x66
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
	movs r1, #0x90
	lsls r1, r1, #2
	adds r7, r6, r1
	strh r5, [r7, #0x16]
	movs r0, #0x76
	strh r0, [r7, #0x18]
	ldr r2, _08010E88 @ =0x00000261
	adds r1, r6, r2
	subs r0, #0x77
	strb r0, [r1]
	ldrb r0, [r4, #0x19]
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
	ldr r1, _08010E8C @ =gUnknown_080BB380
	ldrb r0, [r4, #0x1c]
	adds r0, r0, r1
	ldrb r1, [r0]
	subs r2, #1
	adds r0, r6, r2
	strb r1, [r0]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r7, r6, r0
	movs r4, #0
	movs r5, #0xf
_08010E08:
	lsls r0, r4, #5
	strh r0, [r7, #0x16]
	strh r5, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _08010E08
	movs r1, #0xb4
	lsls r1, r1, #2
	adds r7, r6, r1
	movs r2, #0xcf
	lsls r2, r2, #2
	adds r1, r6, r2
	ldrh r2, [r1]
	adds r0, r2, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x63
	bls _08010E3E
	adds r0, r2, #0
	subs r0, #0x63
	strh r0, [r1]
_08010E3E:
	movs r4, #0
_08010E40:
	movs r0, #0x64
	adds r1, r4, #0
	muls r1, r0, r1
	movs r2, #0xcf
	lsls r2, r2, #2
	adds r0, r6, r2
	ldrh r0, [r0]
	subs r1, r1, r0
	strh r1, [r7, #0x16]
	movs r0, #0x11
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08010E40
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010E70: .4byte 0x000001D1
_08010E74: .4byte gUnknown_080BB36C
_08010E78: .4byte gLoadedSaveGame
_08010E7C: .4byte gUnknown_080BB37C
_08010E80: .4byte 0x00000201
_08010E84: .4byte gUnknown_080BB37E
_08010E88: .4byte 0x00000261
_08010E8C: .4byte gUnknown_080BB380

	thumb_func_start sub_8010E90
sub_8010E90: @ 0x08010E90
	push {r4, lr}
	ldr r0, _08010EB0 @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08010EB8
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r1, _08010EB4 @ =gLoadedSaveGame
	movs r0, #1
	strb r0, [r1, #0x18]
	b _08010ECA
	.align 2, 0
_08010EB0: .4byte gRepeatedKeys
_08010EB4: .4byte gLoadedSaveGame
_08010EB8:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08010ECA
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r0, _08010EF0 @ =gLoadedSaveGame
	strb r4, [r0, #0x18]
_08010ECA:
	bl sub_8010CB4
	ldr r0, _08010EF4 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08010EE8
	movs r0, #0x6a
	bl m4aSongNumStart
	ldr r0, _08010EF8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08010EFC @ =Task_OptionsMenuMain
	str r0, [r1, #8]
_08010EE8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08010EF0: .4byte gLoadedSaveGame
_08010EF4: .4byte gPressedKeys
_08010EF8: .4byte gCurTask
_08010EFC: .4byte Task_OptionsMenuMain

	thumb_func_start sub_8010F00
sub_8010F00: @ 0x08010F00
	push {r4, lr}
	ldr r0, _08010F20 @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08010F28
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r1, _08010F24 @ =gLoadedSaveGame
	movs r0, #1
	strb r0, [r1, #0x1b]
	b _08010F3A
	.align 2, 0
_08010F20: .4byte gRepeatedKeys
_08010F24: .4byte gLoadedSaveGame
_08010F28:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08010F3A
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r0, _08010F60 @ =gLoadedSaveGame
	strb r4, [r0, #0x1b]
_08010F3A:
	bl sub_8010CB4
	ldr r0, _08010F64 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08010F58
	movs r0, #0x6a
	bl m4aSongNumStart
	ldr r0, _08010F68 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08010F6C @ =Task_OptionsMenuMain
	str r0, [r1, #8]
_08010F58:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08010F60: .4byte gLoadedSaveGame
_08010F64: .4byte gPressedKeys
_08010F68: .4byte gCurTask
_08010F6C: .4byte Task_OptionsMenuMain

	thumb_func_start sub_8010F70
sub_8010F70: @ 0x08010F70
	push {lr}
	ldr r0, _08010F8C @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08010F94
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r1, _08010F90 @ =gLoadedSaveGame
	movs r0, #0
	b _08010FA6
	.align 2, 0
_08010F8C: .4byte gRepeatedKeys
_08010F90: .4byte gLoadedSaveGame
_08010F94:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08010FA8
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r1, _08010FCC @ =gLoadedSaveGame
	movs r0, #1
_08010FA6:
	strb r0, [r1, #0x1c]
_08010FA8:
	bl sub_8010CB4
	ldr r0, _08010FD0 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08010FC6
	movs r0, #0x6a
	bl m4aSongNumStart
	ldr r0, _08010FD4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08010FD8 @ =Task_OptionsMenuMain
	str r0, [r1, #8]
_08010FC6:
	pop {r0}
	bx r0
	.align 2, 0
_08010FCC: .4byte gLoadedSaveGame
_08010FD0: .4byte gPressedKeys
_08010FD4: .4byte gCurTask
_08010FD8: .4byte Task_OptionsMenuMain

	thumb_func_start sub_8010FDC
sub_8010FDC: @ 0x08010FDC
	push {r4, lr}
	ldr r0, _08010FFC @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08011004
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r1, _08011000 @ =gLoadedSaveGame
	movs r0, #1
	strb r0, [r1, #0x19]
	b _08011016
	.align 2, 0
_08010FFC: .4byte gRepeatedKeys
_08011000: .4byte gLoadedSaveGame
_08011004:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08011016
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r0, _0801103C @ =gLoadedSaveGame
	strb r4, [r0, #0x19]
_08011016:
	bl sub_8010CB4
	ldr r0, _08011040 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08011034
	movs r0, #0x6a
	bl m4aSongNumStart
	ldr r0, _08011044 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08011048 @ =Task_OptionsMenuMain
	str r0, [r1, #8]
_08011034:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801103C: .4byte gLoadedSaveGame
_08011040: .4byte gPressedKeys
_08011044: .4byte gCurTask
_08011048: .4byte Task_OptionsMenuMain

	thumb_func_start OptionsSelectDeleteGameData
OptionsSelectDeleteGameData: @ 0x0801104C
	push {r4, r5, r6, lr}
	ldr r5, _080110D4 @ =gCurTask
	ldr r0, [r5]
	ldrh r2, [r0, #6]
	ldr r1, _080110D8 @ =0x03000270
	adds r0, r2, r1
	ldr r6, _080110DC @ =0x0300033F
	adds r3, r2, r6
	movs r1, #2
	strb r1, [r3]
	ldr r3, _080110E0 @ =gUnknown_080BB38A
	ldr r4, _080110E4 @ =gLoadedSaveGame
	ldrb r1, [r4, #0x19]
	adds r1, r1, r3
	ldrb r3, [r1]
	subs r6, #0xaf
	adds r1, r2, r6
	strb r3, [r1]
	ldr r1, _080110E8 @ =0x03000291
	adds r2, r2, r1
	movs r1, #0xff
	strb r1, [r2]
	bl UpdateSpriteAnimation
	bl sub_8010CB4
	ldr r2, _080110EC @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080110F0 @ =gBldRegs
	ldr r0, _080110F4 @ =0x00003FBF
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #2]
	movs r0, #0xc
	strh r0, [r1, #4]
	ldr r2, _080110F8 @ =gWinRegs
	ldr r1, _080110FC @ =gUnknown_080BB38E
	ldrb r0, [r4, #0x19]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #2]
	ldrb r0, [r4, #0x19]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #6]
	movs r0, #0xfc
	lsls r0, r0, #6
	strh r0, [r2, #8]
	movs r0, #0x1f
	strh r0, [r2, #0xa]
	ldr r1, [r5]
	ldr r0, _08011100 @ =sub_8011104
	str r0, [r1, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080110D4: .4byte gCurTask
_080110D8: .4byte 0x03000270
_080110DC: .4byte 0x0300033F
_080110E0: .4byte gUnknown_080BB38A
_080110E4: .4byte gLoadedSaveGame
_080110E8: .4byte 0x03000291
_080110EC: .4byte gDispCnt
_080110F0: .4byte gBldRegs
_080110F4: .4byte 0x00003FBF
_080110F8: .4byte gWinRegs
_080110FC: .4byte gUnknown_080BB38E
_08011100: .4byte sub_8011104

	thumb_func_start sub_8011104
sub_8011104: @ 0x08011104
	push {r4, r5, r6, r7, lr}
	ldr r0, _08011130 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	ldr r0, _08011134 @ =0x03000270
	adds r5, r4, r0
	ldr r0, _08011138 @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08011140
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r7, _0801113C @ =0x0300033F
	adds r1, r4, r7
	movs r0, #1
	b _08011154
	.align 2, 0
_08011130: .4byte gCurTask
_08011134: .4byte 0x03000270
_08011138: .4byte gRepeatedKeys
_0801113C: .4byte 0x0300033F
_08011140:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08011156
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r0, _080111C4 @ =0x0300033F
	adds r1, r4, r0
	movs r0, #2
_08011154:
	strb r0, [r1]
_08011156:
	ldr r2, _080111C8 @ =gWinRegs
	ldr r1, _080111CC @ =gUnknown_080BB38E
	ldr r7, _080111D0 @ =0x0000033F
	adds r4, r6, r7
	ldr r3, _080111D4 @ =gLoadedSaveGame
	ldrb r0, [r3, #0x19]
	lsls r0, r0, #1
	subs r0, #1
	ldrb r6, [r4]
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r6, #0
	strh r0, [r2, #2]
	ldrb r0, [r3, #0x19]
	lsls r0, r0, #1
	subs r0, #1
	ldrb r7, [r4]
	adds r0, r0, r7
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #6]
	ldr r0, _080111D8 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080111A2
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08011220
	ldrb r0, [r4]
	cmp r0, #1
	beq _080111F0
_080111A2:
	ldr r2, _080111DC @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _080111E0 @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _080111E4 @ =gBldRegs
	strh r6, [r0]
	strh r6, [r0, #4]
	movs r0, #0
	strb r0, [r4]
	movs r0, #0x6b
	bl m4aSongNumStart
	ldr r0, _080111E8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080111EC @ =Task_OptionsMenuMain
	b _0801121E
	.align 2, 0
_080111C4: .4byte 0x0300033F
_080111C8: .4byte gWinRegs
_080111CC: .4byte gUnknown_080BB38E
_080111D0: .4byte 0x0000033F
_080111D4: .4byte gLoadedSaveGame
_080111D8: .4byte gPressedKeys
_080111DC: .4byte gDispCnt
_080111E0: .4byte 0x00001FFF
_080111E4: .4byte gBldRegs
_080111E8: .4byte gCurTask
_080111EC: .4byte Task_OptionsMenuMain
_080111F0:
	ldr r1, _08011230 @ =gUnknown_080BB38A
	ldrb r0, [r3, #0x19]
	adds r0, #2
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	movs r0, #2
	strb r0, [r4]
	movs r0, #0x6a
	bl m4aSongNumStart
	ldr r0, _08011234 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08011238 @ =sub_801123C
_0801121E:
	str r0, [r1, #8]
_08011220:
	adds r0, r5, #0
	bl DisplaySprite
	bl sub_8010CB4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011230: .4byte gUnknown_080BB38A
_08011234: .4byte gCurTask
_08011238: .4byte sub_801123C

	thumb_func_start sub_801123C
sub_801123C: @ 0x0801123C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _08011274 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r0, _08011278 @ =0x03000270
	adds r0, r4, r0
	str r0, [sp]
	ldr r0, _0801127C @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08011284
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r2, _08011280 @ =0x0300033F
	adds r1, r4, r2
	movs r0, #1
	b _08011298
	.align 2, 0
_08011274: .4byte gCurTask
_08011278: .4byte 0x03000270
_0801127C: .4byte gRepeatedKeys
_08011280: .4byte 0x0300033F
_08011284:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801129A
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r3, _08011324 @ =0x0300033F
	adds r1, r4, r3
	movs r0, #2
_08011298:
	strb r0, [r1]
_0801129A:
	ldr r2, _08011328 @ =gWinRegs
	ldr r1, _0801132C @ =gUnknown_080BB38E
	ldr r4, _08011330 @ =0x0000033F
	adds r4, r4, r5
	mov sl, r4
	ldr r3, _08011334 @ =gLoadedSaveGame
	ldrb r0, [r3, #0x19]
	lsls r0, r0, #1
	subs r0, #1
	ldrb r4, [r4]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #2]
	ldrb r0, [r3, #0x19]
	lsls r0, r0, #1
	subs r0, #1
	mov r3, sl
	ldrb r3, [r3]
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #6]
	ldr r0, _08011338 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0
	bne _080112F0
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080112E8
	b _0801144A
_080112E8:
	mov r4, sl
	ldrb r0, [r4]
	cmp r0, #1
	beq _08011348
_080112F0:
	movs r0, #2
	mov r1, sl
	strb r0, [r1]
	ldr r1, _0801133C @ =gUnknown_080BB38A
	ldr r2, _08011334 @ =gLoadedSaveGame
	ldrb r0, [r2, #0x19]
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r0, [sp]
	adds r0, #0x20
	strb r1, [r0]
	ldr r1, [sp]
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [sp]
	bl UpdateSpriteAnimation
	movs r0, #0x6b
	bl m4aSongNumStart
	ldr r0, _08011340 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08011344 @ =sub_8011104
	b _08011448
	.align 2, 0
_08011324: .4byte 0x0300033F
_08011328: .4byte gWinRegs
_0801132C: .4byte gUnknown_080BB38E
_08011330: .4byte 0x0000033F
_08011334: .4byte gLoadedSaveGame
_08011338: .4byte gPressedKeys
_0801133C: .4byte gUnknown_080BB38A
_08011340: .4byte gCurTask
_08011344: .4byte sub_8011104
_08011348:
	ldr r3, _08011464 @ =gLoadedSaveGame
	ldrb r3, [r3, #0x19]
	str r3, [sp, #4]
	bl m4aMPlayAllStop
	bl m4aSoundVSyncOff
	ldr r4, _08011468 @ =gFlags
	ldr r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r1, r0
	ldr r0, _0801146C @ =0x04000200
	mov r8, r0
	ldrh r0, [r0]
	str r0, [sp, #8]
	ldr r6, _08011470 @ =0x04000208
	ldrh r0, [r6]
	str r0, [sp, #0xc]
	ldr r5, _08011474 @ =0x04000004
	ldrh r2, [r5]
	mov sb, r2
	mov r3, r8
	strh r7, [r3]
	ldrh r0, [r3]
	strh r7, [r6]
	ldrh r0, [r6]
	strh r7, [r5]
	ldrh r0, [r5]
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4]
	ldr r1, _08011478 @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r4, _0801147C @ =0x0000C5FF
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r3, _08011480 @ =0x00007FFF
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xc
	ldrh r2, [r1, #0xa]
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xc
	ldrh r2, [r1, #0xa]
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r0, _08011484 @ =0x040000D4
	ldrh r1, [r0, #0xa]
	ands r4, r1
	strh r4, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ands r3, r1
	strh r3, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ldrh r0, [r0, #0xa]
	bl sub_8012F6C
	mov r4, sp
	ldrh r0, [r4, #8]
	mov r4, r8
	strh r0, [r4]
	ldrh r0, [r4]
	mov r1, sp
	ldrh r1, [r1, #0xc]
	strh r1, [r6]
	ldrh r0, [r6]
	mov r2, sb
	strh r2, [r5]
	ldrh r0, [r5]
	bl m4aSoundVSyncOn
	ldr r3, _08011468 @ =gFlags
	ldr r0, [r3]
	ldr r1, _08011488 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r3]
	movs r0, #0x6a
	bl m4aSongNumStart
	bl CreateEmptySaveGame
	mov r4, sp
	ldrb r0, [r4, #4]
	ldr r4, _08011464 @ =gLoadedSaveGame
	strb r0, [r4, #0x19]
	ldr r2, _0801148C @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08011490 @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08011494 @ =gBldRegs
	strh r7, [r0]
	strh r7, [r0, #4]
	movs r0, #0
	mov r1, sl
	strb r0, [r1]
	movs r0, #0xb
	bl m4aSongNumStart
	ldr r0, _08011498 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801149C @ =Task_OptionsMenuMain
_08011448:
	str r0, [r1, #8]
_0801144A:
	ldr r0, [sp]
	bl DisplaySprite
	bl sub_8010CB4
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011464: .4byte gLoadedSaveGame
_08011468: .4byte gFlags
_0801146C: .4byte 0x04000200
_08011470: .4byte 0x04000208
_08011474: .4byte 0x04000004
_08011478: .4byte 0x040000B0
_0801147C: .4byte 0x0000C5FF
_08011480: .4byte 0x00007FFF
_08011484: .4byte 0x040000D4
_08011488: .4byte 0xFFFF7FFF
_0801148C: .4byte gDispCnt
_08011490: .4byte 0x00001FFF
_08011494: .4byte gBldRegs
_08011498: .4byte gCurTask
_0801149C: .4byte Task_OptionsMenuMain

	thumb_func_start sub_80114A0
sub_80114A0: @ 0x080114A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080115A0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl m4aMPlayAllStop
	bl m4aSoundVSyncOff
	ldr r0, _080115A4 @ =gFlags
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r1, r0
	ldr r2, _080115A8 @ =0x04000200
	mov r8, r2
	ldrh r0, [r2]
	mov sl, r0
	ldr r6, _080115AC @ =0x04000208
	ldrh r0, [r6]
	adds r7, r0, #0
	ldr r5, _080115B0 @ =0x04000004
	ldrh r3, [r5]
	mov sb, r3
	movs r0, #0
	strh r0, [r2]
	ldrh r2, [r2]
	strh r0, [r6]
	ldrh r2, [r6]
	strh r0, [r5]
	ldrh r0, [r5]
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	ldr r0, _080115A4 @ =gFlags
	str r1, [r0]
	ldr r1, _080115B4 @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r4, _080115B8 @ =0x0000C5FF
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r3, _080115BC @ =0x00007FFF
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xc
	ldrh r2, [r1, #0xa]
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xc
	ldrh r2, [r1, #0xa]
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r0, _080115C0 @ =0x040000D4
	ldrh r1, [r0, #0xa]
	ands r4, r1
	strh r4, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ands r3, r1
	strh r3, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ldrh r0, [r0, #0xa]
	bl WriteSaveGame
	mov r2, sl
	mov r1, r8
	strh r2, [r1]
	ldrh r0, [r1]
	strh r7, [r6]
	ldrh r0, [r6]
	mov r3, sb
	strh r3, [r5]
	ldrh r0, [r5]
	bl m4aSoundVSyncOn
	ldr r1, _080115A4 @ =gFlags
	ldr r0, [r1]
	ldr r1, _080115C4 @ =0xFFFF7FFF
	ands r0, r1
	ldr r2, _080115A4 @ =gFlags
	str r0, [r2]
	ldr r2, _080115C8 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _080115CC @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _080115D0 @ =gBldRegs
	movs r2, #0
	movs r0, #0xff
	strh r0, [r1]
	strh r2, [r1, #4]
	movs r0, #1
	bl CreateMainMenu
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080115A0: .4byte gCurTask
_080115A4: .4byte gFlags
_080115A8: .4byte 0x04000200
_080115AC: .4byte 0x04000208
_080115B0: .4byte 0x04000004
_080115B4: .4byte 0x040000B0
_080115B8: .4byte 0x0000C5FF
_080115BC: .4byte 0x00007FFF
_080115C0: .4byte 0x040000D4
_080115C4: .4byte 0xFFFF7FFF
_080115C8: .4byte gDispCnt
_080115CC: .4byte 0x00001FFF
_080115D0: .4byte gBldRegs

	thumb_func_start TaskDestructor_OptionsMenu
TaskDestructor_OptionsMenu: @ 0x080115D4
	push {r4, r5, r6, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	ldr r0, [r6, #4]
	bl VramFree
	movs r5, #0
	ldr r0, _08011668 @ =0x03000034
	adds r4, r4, r0
_080115EA:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #4
	adds r0, r4, r0
	ldr r0, [r0]
	bl VramFree
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _080115EA
	movs r1, #0xda
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	bl VramFree
	movs r1, #0xf2
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	bl VramFree
	movs r1, #0x85
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	bl VramFree
	movs r1, #0x91
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	bl VramFree
	movs r1, #0x9d
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	bl VramFree
	movs r1, #0xa9
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	bl VramFree
	movs r1, #0xb5
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	bl VramFree
	movs r1, #0xc1
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	bl VramFree
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08011668: .4byte 0x03000034

	thumb_func_start OptionsSelectPlayerData
OptionsSelectPlayerData: @ 0x0801166C
	push {lr}
	ldr r0, _08011680 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl CreatePlayerDataMenu
	pop {r0}
	bx r0
	.align 2, 0
_08011680: .4byte gCurTask

	thumb_func_start OptionsSelectDifficulty
OptionsSelectDifficulty: @ 0x08011684
	push {lr}
	ldr r0, _08011698 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801169C @ =sub_8010E90
	str r0, [r1, #8]
	bl sub_8010CB4
	pop {r0}
	bx r0
	.align 2, 0
_08011698: .4byte gCurTask
_0801169C: .4byte sub_8010E90

	thumb_func_start OptionsSelectTimeUp
OptionsSelectTimeUp: @ 0x080116A0
	push {lr}
	ldr r0, _080116B4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080116B8 @ =sub_8010F00
	str r0, [r1, #8]
	bl sub_8010CB4
	pop {r0}
	bx r0
	.align 2, 0
_080116B4: .4byte gCurTask
_080116B8: .4byte sub_8010F00

	thumb_func_start OptionsSelectSoundTest
OptionsSelectSoundTest: @ 0x080116BC
	push {lr}
	movs r0, #3
	bl m4aSongNumStop
	ldr r0, _080116D4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl CreateSoundTest
	pop {r0}
	bx r0
	.align 2, 0
_080116D4: .4byte gCurTask

	thumb_func_start OptionsSelectLanguage
OptionsSelectLanguage: @ 0x080116D8
	push {lr}
	ldr r1, _08011704 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08011708 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0801170C @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08011710 @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08011714 @ =gVramGraphicsCopyCursor
	ldr r0, _08011718 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #0
	bl CreateEditLanguageScreen
	pop {r0}
	bx r0
	.align 2, 0
_08011704: .4byte 0x0000FFFF
_08011708: .4byte gBackgroundsCopyQueueCursor
_0801170C: .4byte gBackgroundsCopyQueueIndex
_08011710: .4byte sa2__gUnknown_03005390
_08011714: .4byte gVramGraphicsCopyCursor
_08011718: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start OptionsSelectButtonConfig
OptionsSelectButtonConfig: @ 0x0801171C
	push {lr}
	ldr r0, _08011730 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08011734 @ =sub_8010F70
	str r0, [r1, #8]
	bl sub_8010CB4
	pop {r0}
	bx r0
	.align 2, 0
_08011730: .4byte gCurTask
_08011734: .4byte sub_8010F70

	thumb_func_start OptionsSelectEnd
OptionsSelectEnd: @ 0x08011738
	push {r4, lr}
	ldr r4, _08011760 @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	ldr r1, _08011764 @ =0x03000330
	adds r0, r0, r1
	movs r2, #0
	movs r1, #1
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	bl sub_805423C
	ldr r1, [r4]
	ldr r0, _08011768 @ =sub_801176C
	str r0, [r1, #8]
	bl sub_8010CB4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08011760: .4byte gCurTask
_08011764: .4byte 0x03000330
_08011768: .4byte sub_801176C

	thumb_func_start sub_801176C
sub_801176C: @ 0x0801176C
	push {r4, lr}
	ldr r4, _0801179C @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	ldr r1, _080117A0 @ =0x03000330
	adds r0, r0, r1
	bl sub_805423C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08011790
	bl m4aMPlayAllStop
	bl m4aSoundVSyncOff
	ldr r1, [r4]
	ldr r0, _080117A4 @ =sub_80114A0
	str r0, [r1, #8]
_08011790:
	bl sub_8010CB4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801179C: .4byte gCurTask
_080117A0: .4byte 0x03000330
_080117A4: .4byte sub_80114A0
