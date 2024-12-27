.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateStageRingsManager
CreateStageRingsManager: @ 0x08007D30
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _08007D7C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _08007D90
	ldr r0, _08007D80 @ =Task_RingsMgrMain
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08007D84 @ =TaskDestructor_8007F1C
	str r1, [sp]
	movs r1, #0x34
	movs r3, #0
	bl TaskCreate
	adds r7, r0, #0
	ldr r5, _08007D88 @ =gSpritePosData_rings
	ldr r4, _08007D8C @ =gCurrentLevel
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldr r0, [r0]
	lsrs r0, r0, #8
	bl EwramMalloc
	adds r6, r0, #0
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	adds r1, r6, #0
	bl RLUnCompWram
	b _08007DC0
	.align 2, 0
_08007D7C: .4byte gGameMode
_08007D80: .4byte Task_RingsMgrMain
_08007D84: .4byte TaskDestructor_8007F1C
_08007D88: .4byte gSpritePosData_rings
_08007D8C: .4byte gCurrentLevel
_08007D90:
	ldr r0, _08007E18 @ =Task_RingsMgrMain
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x34
	movs r3, #0
	bl TaskCreate
	adds r7, r0, #0
	ldr r0, _08007E1C @ =gUnknown_0203300C
	ldr r0, [r0]
	ldr r0, [r0]
	lsrs r0, r0, #8
	adds r0, #3
	lsrs r0, r0, #2
	lsls r0, r0, #4
	ldr r1, _08007E20 @ =gUnknown_0203F000
	adds r6, r0, r1
	ldr r0, _08007E24 @ =gUnknown_02033008
	ldr r0, [r0]
	adds r1, r6, #0
	bl RLUnCompWram
_08007DC0:
	ldrh r0, [r7, #6]
	ldr r5, _08007E28 @ =0x03000030
	adds r0, r0, r5
	str r6, [r0]
	ldrh r3, [r7, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r3, r1
	movs r4, #0
	movs r2, #0
	strh r2, [r1, #0x16]
	strh r2, [r1, #0x18]
	ldr r0, _08007E2C @ =0x06011D00
	str r0, [r1, #4]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r1, #0x1a]
	strh r2, [r1, #8]
	ldr r0, _08007E30 @ =0x000002C3
	strh r0, [r1, #0xa]
	subs r5, #0x10
	adds r0, r3, r5
	strb r4, [r0]
	strh r2, [r1, #0x14]
	strh r2, [r1, #0x1c]
	ldr r0, _08007E34 @ =0x03000021
	adds r2, r3, r0
	movs r0, #0xff
	strb r0, [r2]
	adds r5, #2
	adds r2, r3, r5
	movs r0, #0x10
	strb r0, [r2]
	ldr r0, _08007E38 @ =0x03000025
	adds r3, r3, r0
	strb r4, [r3]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r1, #0x10]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007E18: .4byte Task_RingsMgrMain
_08007E1C: .4byte gUnknown_0203300C
_08007E20: .4byte gUnknown_0203F000
_08007E24: .4byte gUnknown_02033008
_08007E28: .4byte 0x03000030
_08007E2C: .4byte 0x06011D00
_08007E30: .4byte 0x000002C3
_08007E34: .4byte 0x03000021
_08007E38: .4byte 0x03000025

	thumb_func_start Task_RingsMgrMain
Task_RingsMgrMain: @ 0x08007E3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x54
	movs r0, #0
	str r0, [sp, #0x1c]
	ldr r2, _080081B0 @ =gPlayer
	ldrb r4, [r2, #0xe]
	rsbs r0, r4, #0
	add r1, sp, #4
	strb r0, [r1]
	ldrb r3, [r2, #0xf]
	rsbs r2, r3, #0
	mov r0, sp
	adds r0, #5
	strb r2, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r3, [r0]
	mov r0, sp
	movs r2, #4
	bl memcpy
	movs r4, #0
	ldr r0, _080081B4 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08007E82
	bl _08008744
_08007E82:
	ldr r0, _080081B8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	ldr r2, _080081BC @ =0x03000030
	adds r0, r1, r2
	ldr r0, [r0]
	str r0, [sp, #0x14]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	str r1, [sp, #0x18]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
	ldr r3, [sp, #0x18]
	ldr r3, [r3, #0xc]
	str r3, [sp, #0x20]
	ldr r5, [sp, #0x14]
	adds r5, #4
	ldm r5!, {r0}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	ldm r5!, {r0}
	str r5, [sp, #0x14]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	mov r0, sp
	str r0, [sp, #0x24]
_08007EBE:
	ldr r1, _080081B0 @ =gPlayer
	mov sb, r1
	cmp r4, #0
	beq _08007ECA
	ldr r2, _080081C0 @ =gPartner
	mov sb, r2
_08007ECA:
	mov r3, sb
	ldr r2, [r3, #4]
	asrs r1, r2, #8
	ldr r5, [sp, #0x24]
	movs r0, #1
	ldrsb r0, [r5, r0]
	adds r0, r1, r0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r0, #3
	ldrsb r0, [r5, r0]
	adds r1, r1, r0
	subs r1, #0x10
	asrs r1, r1, #8
	adds r3, r2, #0
	adds r4, #1
	str r4, [sp, #0x38]
	ldr r0, [sp, #8]
	cmp r0, r1
	ble _08007EF6
	b _080080CE
_08007EF6:
	ldr r1, [sp, #0x10]
	cmp r0, r1
	blo _08007EFE
	b _080080CE
_08007EFE:
	mov r4, sb
	ldr r2, [r4]
	asrs r1, r2, #8
	ldr r5, [sp, #0x24]
	movs r0, #0
	ldrsb r0, [r5, r0]
	adds r0, r1, r0
	subs r0, #8
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r0, #2
	ldrsb r0, [r5, r0]
	adds r1, r1, r0
	subs r1, #8
	asrs r1, r1, #8
	ldr r0, [sp, #8]
	adds r0, #1
	str r0, [sp, #0x50]
	cmp r8, r1
	ble _08007F2A
	b _080080AA
_08007F2A:
	ldr r1, [sp, #0xc]
	cmp r8, r1
	blo _08007F32
	b _080080AA
_08007F32:
	ldr r4, [sp, #0xc]
	ldr r5, [sp, #8]
	adds r0, r4, #0
	muls r0, r5, r0
	mov r4, r8
	lsls r1, r4, #2
	lsls r0, r0, #2
	ldr r5, [sp, #0x14]
	adds r0, r0, r5
	adds r1, r1, r0
	ldr r0, [r1]
	adds r4, #1
	str r4, [sp, #0x4c]
	cmp r0, #0
	bne _08007F52
	b _08008088
_08007F52:
	subs r0, #8
	adds r6, r5, r0
	ldrb r1, [r6]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _08007F60
	b _08008088
_08007F60:
	mov r0, sp
	str r0, [sp, #0x28]
_08007F64:
	cmp r1, #0xfe
	bne _08007F6A
	b _08008076
_08007F6A:
	ldrb r0, [r6]
	lsls r0, r0, #3
	mov r2, r8
	lsls r1, r2, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	ldr r3, [sp, #8]
	lsls r1, r3, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r4, sb
	ldr r1, [r4, #0x10]
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	bne _08008076
	mov r0, sb
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xf
	bne _08007FAA
	movs r5, #0x1c
	ldrsh r0, [r4, r5]
	cmp r0, #0
	bne _08008076
_08007FAA:
	mov r0, sl
	lsls r1, r0, #0x10
	asrs r4, r1, #0x10
	adds r2, r4, #0
	subs r2, #8
	mov r3, sb
	ldr r0, [r3]
	asrs r0, r0, #8
	ldr r3, [sp, #0x28]
	movs r5, #0
	ldrsb r5, [r3, r5]
	adds r3, r0, r5
	mov sl, r1
	cmp r2, r3
	bgt _08007FD4
	adds r0, r4, #0
	adds r0, #8
	cmp r0, r3
	bge _08007FE2
	cmp r2, r3
	blt _08008076
_08007FD4:
	ldr r4, [sp, #0x28]
	movs r0, #2
	ldrsb r0, [r4, r0]
	subs r0, r0, r5
	adds r0, r3, r0
	cmp r0, r2
	blt _08008076
_08007FE2:
	lsls r1, r7, #0x10
	asrs r4, r1, #0x10
	adds r3, r4, #0
	subs r3, #0x10
	mov r5, sb
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	ldr r2, [sp, #0x28]
	movs r5, #1
	ldrsb r5, [r2, r5]
	adds r2, r0, r5
	adds r7, r1, #0
	cmp r3, r2
	bgt _08008006
	cmp r4, r2
	bge _08008014
	cmp r3, r2
	blt _08008076
_08008006:
	ldr r4, [sp, #0x28]
	movs r0, #3
	ldrsb r0, [r4, r0]
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r3
	blt _08008076
_08008014:
	ldr r1, _080081C4 @ =gRingCount
	ldrh r5, [r1]
	adds r0, r5, #1
	strh r0, [r1]
	ldr r0, _080081C8 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xd
	beq _08008054
	ldrh r0, [r1]
	movs r1, #0x64
	bl Div
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #0x64
	bl Div
	cmp r4, r0
	beq _08008054
	ldr r0, _080081CC @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _08008054
	ldr r1, _080081D0 @ =gNumLives
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _080081D4 @ =gUnknown_03005040
	movs r0, #0x10
	strb r0, [r1, #3]
_08008054:
	ldr r0, _080081CC @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _08008068
	ldr r1, _080081C4 @ =gRingCount
	ldrh r0, [r1]
	cmp r0, #0xff
	bls _08008068
	movs r0, #0xff
	strh r0, [r1]
_08008068:
	mov r5, sl
	asrs r0, r5, #0x10
	asrs r1, r7, #0x10
	bl CreateCollectRingEffect
	movs r0, #0xfe
	strb r0, [r6]
_08008076:
	adds r6, #2
	ldrb r1, [r6]
	adds r0, r1, #0
	mov r2, sb
	ldr r3, [r2, #4]
	ldr r2, [r2]
	cmp r0, #0xff
	beq _08008088
	b _08007F64
_08008088:
	ldr r4, [sp, #0x4c]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	asrs r0, r2, #8
	ldr r5, [sp, #0x24]
	movs r1, #2
	ldrsb r1, [r5, r1]
	adds r0, r0, r1
	subs r0, #8
	asrs r0, r0, #8
	cmp r8, r0
	bgt _080080AA
	ldr r0, [sp, #0xc]
	cmp r8, r0
	bhs _080080AA
	b _08007F32
_080080AA:
	ldr r1, [sp, #0x50]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	asrs r0, r3, #8
	ldr r2, [sp, #0x24]
	movs r1, #3
	ldrsb r1, [r2, r1]
	adds r0, r0, r1
	subs r0, #0x10
	asrs r0, r0, #8
	ldr r4, [sp, #8]
	cmp r4, r0
	bgt _080080CE
	ldr r5, [sp, #0x10]
	cmp r4, r5
	bhs _080080CE
	b _08007EFE
_080080CE:
	ldr r4, [sp, #0x38]
	ldr r0, _080081D8 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	bge _080080DE
	b _08007EBE
_080080DE:
	ldr r0, _080081CC @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bhi _080080E8
	b _0800833E
_080080E8:
	movs r2, #0
_080080EA:
	ldr r0, _080081DC @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r1, r2, #1
	str r1, [sp, #0x40]
	cmp r2, r0
	bne _080080FC
	b _08008332
_080080FC:
	ldr r1, _080081E0 @ =gMultiplayerPlayerTasks
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0800810A
	b _08008332
_0800810A:
	ldrh r2, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r3, r2
	mov sb, r3
	ldr r4, _080081E4 @ =0x03000052
	adds r0, r2, r4
	movs r5, #0
	ldrsh r1, [r0, r5]
	ldr r3, _080081E8 @ =0x0300002D
	adds r0, r2, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r1, r0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	subs r4, #0x23
	adds r0, r2, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	subs r1, #0x10
	asrs r1, r1, #8
	ldr r5, [sp, #8]
	cmp r5, r1
	ble _08008146
	b _08008332
_08008146:
	ldr r0, [sp, #0x10]
	cmp r5, r0
	blo _0800814E
	b _08008332
_0800814E:
	ldr r1, _080081EC @ =0x03000050
	adds r1, r2, r1
	str r1, [sp, #0x2c]
	subs r3, #1
	adds r3, r2, r3
	str r3, [sp, #0x30]
	subs r4, #1
	adds r4, r2, r4
	str r4, [sp, #0x34]
_08008160:
	ldr r5, [sp, #0x2c]
	movs r1, #0
	ldrsh r0, [r5, r1]
	ldr r2, [sp, #0x30]
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r1, r0, r1
	subs r1, #8
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	mov r8, r1
	ldr r3, [sp, #0x34]
	movs r1, #0
	ldrsb r1, [r3, r1]
	adds r0, r0, r1
	subs r0, #8
	asrs r0, r0, #8
	ldr r4, [sp, #8]
	adds r4, #1
	str r4, [sp, #0x50]
	mov r5, sb
	adds r5, #0x52
	str r5, [sp, #0x48]
	mov r1, sb
	adds r1, #0x2f
	str r1, [sp, #0x44]
	cmp r8, r0
	ble _0800819A
	b _0800830A
_0800819A:
	ldr r2, [sp, #0xc]
	cmp r8, r2
	blo _080081A2
	b _0800830A
_080081A2:
	ldr r3, [sp, #0xc]
	ldr r4, [sp, #8]
	adds r0, r3, #0
	muls r0, r4, r0
	mov r5, r8
	b _080081F0
	.align 2, 0
_080081B0: .4byte gPlayer
_080081B4: .4byte gUnknown_03005004
_080081B8: .4byte gCurTask
_080081BC: .4byte 0x03000030
_080081C0: .4byte gPartner
_080081C4: .4byte gRingCount
_080081C8: .4byte gCurrentLevel
_080081CC: .4byte gGameMode
_080081D0: .4byte gNumLives
_080081D4: .4byte gUnknown_03005040
_080081D8: .4byte gUnknown_03005088
_080081DC: .4byte 0x04000128
_080081E0: .4byte gMultiplayerPlayerTasks
_080081E4: .4byte 0x03000052
_080081E8: .4byte 0x0300002D
_080081EC: .4byte 0x03000050
_080081F0:
	lsls r1, r5, #2
	lsls r0, r0, #2
	ldr r2, [sp, #0x14]
	adds r0, r0, r2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r5, #1
	str r5, [sp, #0x4c]
	cmp r0, #0
	beq _080082E4
	subs r0, #8
	adds r6, r2, r0
	b _080082DC
_0800820A:
	cmp r1, #0xfe
	beq _080082DA
	ldrb r2, [r6]
	lsls r2, r2, #3
	mov r3, r8
	lsls r0, r3, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	ldr r4, [sp, #8]
	lsls r1, r4, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsrs r5, r2, #0x10
	mov sl, r5
	asrs r2, r2, #0x10
	adds r3, r2, #0
	subs r3, #8
	ldr r1, [sp, #0x2c]
	movs r4, #0
	ldrsh r0, [r1, r4]
	ldr r5, [sp, #0x30]
	movs r4, #0
	ldrsb r4, [r5, r4]
	adds r1, r0, r4
	cmp r3, r1
	bgt _08008250
	adds r0, r2, #0
	adds r0, #8
	cmp r0, r1
	bge _0800825E
	cmp r3, r1
	blt _080082DA
_08008250:
	ldr r2, [sp, #0x34]
	movs r0, #0
	ldrsb r0, [r2, r0]
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r3
	blt _080082DA
_0800825E:
	lsls r1, r7, #0x10
	asrs r4, r1, #0x10
	adds r3, r4, #0
	subs r3, #0x10
	ldr r5, [sp, #0x48]
	movs r2, #0
	ldrsh r0, [r5, r2]
	mov r2, sb
	adds r2, #0x2d
	movs r5, #0
	ldrsb r5, [r2, r5]
	adds r2, r0, r5
	adds r7, r1, #0
	cmp r3, r2
	bgt _08008284
	cmp r4, r2
	bge _08008292
	cmp r3, r2
	blt _080082DA
_08008284:
	ldr r4, [sp, #0x44]
	movs r0, #0
	ldrsb r0, [r4, r0]
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r3
	blt _080082DA
_08008292:
	mov r5, sb
	ldrb r1, [r5, #0xa]
	ldr r3, _0800845C @ =gPlayerCharacterIdleAnims
	ldr r2, _08008460 @ =gMultiplayerCharacters
	mov r0, sb
	adds r0, #0x56
	ldrb r0, [r0]
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrb r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0x13
	beq _080082BC
	cmp r1, #0x15
	bne _080082CA
_080082BC:
	mov r0, sb
	adds r0, #0x54
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080082DA
_080082CA:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	asrs r1, r7, #0x10
	bl CreateCollectRingEffect
	movs r0, #0xfe
	strb r0, [r6]
_080082DA:
	adds r6, #2
_080082DC:
	ldrb r1, [r6]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _0800820A
_080082E4:
	ldr r2, [sp, #0x4c]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r3, [sp, #0x2c]
	movs r4, #0
	ldrsh r0, [r3, r4]
	ldr r5, [sp, #0x34]
	movs r1, #0
	ldrsb r1, [r5, r1]
	adds r0, r0, r1
	subs r0, #8
	asrs r0, r0, #8
	cmp r8, r0
	bgt _0800830A
	ldr r0, [sp, #0xc]
	cmp r8, r0
	bhs _0800830A
	b _080081A2
_0800830A:
	ldr r1, [sp, #0x50]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r2, [sp, #0x48]
	movs r3, #0
	ldrsh r0, [r2, r3]
	ldr r4, [sp, #0x44]
	movs r1, #0
	ldrsb r1, [r4, r1]
	adds r0, r0, r1
	subs r0, #0x10
	asrs r0, r0, #8
	ldr r5, [sp, #8]
	cmp r5, r0
	bgt _08008332
	ldr r0, [sp, #0x10]
	cmp r5, r0
	bhs _08008332
	b _08008160
_08008332:
	ldr r1, [sp, #0x40]
	lsls r0, r1, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bhi _0800833E
	b _080080EA
_0800833E:
	ldr r2, _08008464 @ =gCamera
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, _08008468 @ =gPlayer
	adds r0, #0x26
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0800835C
	b _080085A4
_0800835C:
	ldr r0, _0800846C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _08008366
	b _080085A4
_08008366:
	ldr r2, [sp, #8]
	lsls r1, r2, #8
	ldr r3, _08008464 @ =gCamera
	movs r4, #2
	ldrsh r0, [r3, r4]
	adds r0, #0xa0
	cmp r1, r0
	blt _08008378
	b _08008744
_08008378:
	ldr r5, [sp, #0x10]
	cmp r2, r5
	blo _08008380
	b _08008744
_08008380:
	ldr r1, _08008464 @ =gCamera
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r0, #8
	ldr r2, _08008464 @ =gCamera
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r0, #0xf0
	cmp r1, r0
	blt _0800839E
	b _08008564
_0800839E:
	ldr r4, [sp, #0xc]
	ldr r5, [sp, #8]
	adds r2, r4, #0
	muls r2, r5, r2
	mov r0, r8
	lsls r1, r0, #2
	lsls r0, r2, #2
	ldr r3, [sp, #0x14]
	adds r0, r0, r3
	adds r1, r1, r0
	ldr r0, [r1]
	str r2, [sp, #0x3c]
	cmp r8, r4
	blo _080083BC
	b _08008564
_080083BC:
	cmp r0, #0
	bne _080083C2
	b _08008534
_080083C2:
	subs r0, #8
	ldr r4, [sp, #0x14]
	adds r6, r4, r0
	ldrb r1, [r6]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _080083D2
	b _08008534
_080083D2:
	ldr r5, _08008464 @ =gCamera
	mov sb, r5
_080083D6:
	cmp r1, #0xfe
	beq _08008458
	ldrb r2, [r6]
	lsls r2, r2, #3
	mov r1, r8
	lsls r0, r1, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	ldr r3, [sp, #8]
	lsls r1, r3, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsrs r4, r2, #0x10
	mov sl, r4
	asrs r2, r2, #0x10
	ldr r5, _08008464 @ =gCamera
	movs r1, #0
	ldrsh r0, [r5, r1]
	subs r0, r2, r0
	adds r0, #8
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	bhi _08008458
	lsls r1, r7, #0x10
	asrs r4, r1, #0x10
	movs r3, #2
	ldrsh r0, [r5, r3]
	subs r0, r4, r0
	adds r7, r1, #0
	cmp r0, #0
	blt _08008458
	subs r0, #0x10
	cmp r0, #0xa0
	bgt _08008458
	adds r1, r2, #0
	subs r1, #0x40
	ldr r5, _08008468 @ =gPlayer
	ldr r0, [r5]
	asrs r3, r0, #8
	cmp r1, r3
	bgt _08008470
	adds r0, r2, #0
	adds r0, #0x40
	cmp r0, r3
	blt _08008470
	adds r1, r4, #0
	subs r1, #0x48
	ldr r0, [r5, #4]
	asrs r3, r0, #8
	cmp r1, r3
	bgt _08008470
	adds r0, r4, #0
	adds r0, #0x38
	cmp r0, r3
	blt _08008470
	adds r0, r2, #0
	adds r1, r4, #0
	bl CreateMagneticRing
	movs r0, #0xfe
	strb r0, [r6]
_08008458:
	adds r6, #2
	b _0800852A
	.align 2, 0
_0800845C: .4byte gPlayerCharacterIdleAnims
_08008460: .4byte gMultiplayerCharacters
_08008464: .4byte gCamera
_08008468: .4byte gPlayer
_0800846C: .4byte gGameMode
_08008470:
	adds r6, #2
	ldr r2, [sp, #0x18]
	adds r2, #0x23
	ldr r4, [sp, #0x1c]
	cmp r4, #0
	beq _08008482
	ldrb r0, [r2]
	cmp r0, #0xff
	bne _080084A6
_08008482:
	movs r0, #0xff
	strb r0, [r2]
	mov r5, sb
	ldrh r1, [r5]
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	ldr r3, [sp, #0x18]
	strh r0, [r3, #0x16]
	ldrh r1, [r5, #2]
	asrs r0, r7, #0x10
	subs r0, r0, r1
	strh r0, [r3, #0x18]
	ldr r0, [sp, #0x18]
	bl DisplaySprite
	b _08008520
_080084A6:
	ldrb r1, [r2]
	lsls r1, r1, #3
	ldr r0, _0800858C @ =gOamBuffer2
	adds r5, r1, r0
	ldr r4, [sp, #0x18]
	ldrh r0, [r4, #0x1a]
	movs r2, #0xf8
	lsls r2, r2, #3
	adds r1, r2, #0
	ands r0, r1
	lsrs r0, r0, #6
	bl OamMalloc
	adds r4, r0, #0
	ldr r0, _08008590 @ =iwram_end
	ldr r0, [r0]
	cmp r0, r4
	bne _080084CC
	b _08008744
_080084CC:
	ldr r1, _08008594 @ =0x040000D4
	str r5, [r1]
	str r4, [r1, #4]
	ldr r0, _08008598 @ =0x80000003
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r3, [r4, #2]
	movs r5, #0xfe
	lsls r5, r5, #8
	adds r0, r5, #0
	ands r3, r0
	strh r3, [r4, #2]
	ldrh r2, [r4]
	movs r1, #0xff
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r2, r0
	strh r2, [r4]
	mov r5, sb
	ldrh r1, [r5, #2]
	asrs r0, r7, #0x10
	subs r0, r0, r1
	ldr r5, [sp, #0x20]
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
	ldr r5, _0800859C @ =0x000001FF
	adds r1, r5, #0
	ands r0, r1
	adds r3, r3, r0
	strh r3, [r4, #2]
_08008520:
	ldr r0, [sp, #0x1c]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x1c]
_0800852A:
	ldrb r1, [r6]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _08008534
	b _080083D6
_08008534:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r0, #8
	ldr r2, _080085A0 @ =gCamera
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r0, #0xf0
	cmp r1, r0
	bge _08008564
	mov r4, r8
	lsls r1, r4, #2
	ldr r5, [sp, #0x3c]
	lsls r0, r5, #2
	ldr r2, [sp, #0x14]
	adds r0, r0, r2
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r3, [sp, #0xc]
	cmp r8, r3
	bhs _08008564
	b _080083BC
_08008564:
	ldr r0, [sp, #8]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	lsls r1, r0, #8
	ldr r4, _080085A0 @ =gCamera
	movs r5, #2
	ldrsh r0, [r4, r5]
	adds r0, #0xa0
	cmp r1, r0
	blt _0800857E
	b _08008744
_0800857E:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x10]
	cmp r0, r1
	bhs _08008588
	b _08008380
_08008588:
	b _08008744
	.align 2, 0
_0800858C: .4byte gOamBuffer2
_08008590: .4byte iwram_end
_08008594: .4byte 0x040000D4
_08008598: .4byte 0x80000003
_0800859C: .4byte 0x000001FF
_080085A0: .4byte gCamera
_080085A4:
	ldr r2, [sp, #8]
	lsls r1, r2, #8
	ldr r3, _080085C8 @ =gCamera
	movs r4, #2
	ldrsh r0, [r3, r4]
	adds r0, #0xa0
	cmp r1, r0
	blt _080085B6
	b _08008744
_080085B6:
	ldr r5, [sp, #0x10]
	cmp r2, r5
	blo _080085BE
	b _08008744
_080085BE:
	ldr r1, _080085C8 @ =gCamera
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	b _08008706
	.align 2, 0
_080085C8: .4byte gCamera
_080085CC:
	ldr r5, [sp, #0xc]
	ldr r1, [sp, #8]
	adds r0, r5, #0
	muls r0, r1, r0
	mov r2, r8
	lsls r1, r2, #2
	lsls r0, r0, #2
	ldr r3, [sp, #0x14]
	adds r0, r0, r3
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	bne _080085E8
	b _08008702
_080085E8:
	subs r0, #8
	adds r6, r3, r0
	b _080086F8
_080085EE:
	cmp r1, #0xfe
	beq _0800863A
	ldrb r2, [r6]
	lsls r2, r2, #3
	mov r4, r8
	lsls r0, r4, #8
	adds r2, r2, r0
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	ldr r5, [sp, #8]
	lsls r1, r5, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov sb, r2
	ldr r1, _08008640 @ =gCamera
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r3, sb
	subs r0, r3, r0
	adds r0, #8
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	bhi _0800863A
	lsls r0, r7, #0x10
	asrs r7, r0, #0x10
	ldr r4, _08008640 @ =gCamera
	movs r5, #2
	ldrsh r0, [r4, r5]
	subs r0, r7, r0
	cmp r0, #0
	blt _0800863A
	subs r0, #0x10
	cmp r0, #0xa0
	ble _08008644
_0800863A:
	adds r6, #2
	b _080086F8
	.align 2, 0
_08008640: .4byte gCamera
_08008644:
	adds r6, #2
	ldr r2, [sp, #0x18]
	adds r2, #0x23
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _08008658
	adds r1, r2, #0
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _0800867C
_08008658:
	movs r0, #0xff
	strb r0, [r2]
	ldr r1, _08008678 @ =gCamera
	ldrh r0, [r1]
	mov r2, sb
	subs r0, r2, r0
	ldr r3, [sp, #0x18]
	strh r0, [r3, #0x16]
	ldrh r0, [r1, #2]
	subs r0, r7, r0
	strh r0, [r3, #0x18]
	ldr r0, [sp, #0x18]
	bl DisplaySprite
	b _080086EE
	.align 2, 0
_08008678: .4byte gCamera
_0800867C:
	ldrb r1, [r1]
	lsls r1, r1, #3
	ldr r0, _08008754 @ =gOamBuffer2
	adds r5, r1, r0
	ldr r4, [sp, #0x18]
	ldrh r0, [r4, #0x1a]
	movs r2, #0xf8
	lsls r2, r2, #3
	adds r1, r2, #0
	ands r0, r1
	lsrs r0, r0, #6
	bl OamMalloc
	adds r4, r0, #0
	ldr r0, _08008758 @ =iwram_end
	ldr r0, [r0]
	cmp r0, r4
	beq _08008744
	ldr r1, _0800875C @ =0x040000D4
	str r5, [r1]
	str r4, [r1, #4]
	ldr r0, _08008760 @ =0x80000003
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r3, [r4, #2]
	movs r5, #0xfe
	lsls r5, r5, #8
	adds r0, r5, #0
	ands r3, r0
	strh r3, [r4, #2]
	ldrh r2, [r4]
	movs r1, #0xff
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r2, r0
	strh r2, [r4]
	ldr r5, _08008764 @ =gCamera
	ldrh r0, [r5, #2]
	subs r0, r7, r0
	ldr r5, [sp, #0x20]
	ldrh r1, [r5, #0xa]
	subs r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	adds r2, r2, r0
	strh r2, [r4]
	ldr r1, _08008764 @ =gCamera
	ldrh r0, [r1]
	mov r2, sb
	subs r0, r2, r0
	ldrh r1, [r5, #8]
	subs r0, r0, r1
	ldr r5, _08008768 @ =0x000001FF
	adds r1, r5, #0
	ands r0, r1
	adds r3, r3, r0
	strh r3, [r4, #2]
_080086EE:
	ldr r0, [sp, #0x1c]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x1c]
_080086F8:
	ldrb r1, [r6]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _08008702
	b _080085EE
_08008702:
	mov r0, r8
	adds r0, #1
_08008706:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r0, #8
	ldr r2, _08008764 @ =gCamera
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r0, #0xf0
	cmp r1, r0
	bge _08008722
	ldr r4, [sp, #0xc]
	cmp r8, r4
	bhs _08008722
	b _080085CC
_08008722:
	ldr r0, [sp, #8]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	lsls r1, r0, #8
	ldr r5, _08008764 @ =gCamera
	movs r2, #2
	ldrsh r0, [r5, r2]
	adds r0, #0xa0
	cmp r1, r0
	bge _08008744
	ldr r3, [sp, #8]
	ldr r4, [sp, #0x10]
	cmp r3, r4
	bhs _08008744
	b _080085BE
_08008744:
	add sp, #0x54
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08008754: .4byte gOamBuffer2
_08008758: .4byte iwram_end
_0800875C: .4byte 0x040000D4
_08008760: .4byte 0x80000003
_08008764: .4byte gCamera
_08008768: .4byte 0x000001FF

	thumb_func_start TaskDestructor_8007F1C
TaskDestructor_8007F1C: @ 0x0800876C
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _08008780 @ =0x03000030
	adds r0, r0, r1
	ldr r0, [r0]
	bl EwramFree
	pop {r0}
	bx r0
	.align 2, 0
_08008780: .4byte 0x03000030
