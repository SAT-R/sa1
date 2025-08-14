.include "asm/macros.inc"
.include "constants/constants.inc"

.section .rodata

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start CreateMainMenu
CreateMainMenu: @ 0x0800D8FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r4, r0, #0
	ldr r0, _0800DAEC @ =gGameMode
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0800DAF0 @ =sa2__gUnknown_0300543C
	strb r1, [r0]
	ldr r1, _0800DAF4 @ =gDispCnt
	ldr r2, _0800DAF8 @ =0x00001541
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0800DAFC @ =gBgCntRegs
	mov sb, r0
	movs r7, #0
	movs r5, #0
	ldr r0, _0800DB00 @ =0x0000568D
	mov r1, sb
	strh r0, [r1, #4]
	ldr r0, _0800DB04 @ =0x00001482
	strh r0, [r1]
	ldr r0, _0800DB08 @ =gBgScrollRegs
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	strh r5, [r0, #0xa]
	ldr r0, _0800DB0C @ =Task_MainMenuInit
	movs r1, #0xda
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #6
	str r5, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r6, r1
	ldr r2, _0800DB10 @ =0x030001AC
	adds r0, r6, r2
	strh r5, [r0]
	ldr r0, _0800DB14 @ =0x030001AF
	adds r0, r0, r6
	mov r8, r0
	strb r4, [r0]
	movs r0, #0x78
	strh r0, [r1, #0x16]
	movs r0, #0x50
	strh r0, [r1, #0x18]
	ldr r0, _0800DB18 @ =0x06000040
	str r0, [r1, #4]
	strh r5, [r1, #8]
	movs r2, #1
	mov sl, r2
	mov r0, sl
	strh r0, [r1, #0xa]
	ldr r2, _0800DB1C @ =0x03000020
	adds r0, r6, r2
	strb r7, [r0]
	strh r5, [r1, #0x14]
	ldr r0, _0800DB20 @ =0x03000021
	adds r2, r6, r0
	movs r0, #1
	rsbs r0, r0, #0
	adds r4, r0, #0
	movs r0, #0xff
	strb r0, [r2]
	strh r5, [r1, #0x1c]
	ldr r0, _0800DB24 @ =0x03000022
	adds r2, r6, r0
	movs r0, #0x10
	strb r0, [r2]
	ldr r2, _0800DB28 @ =0x03000025
	adds r0, r6, r2
	strb r7, [r0]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r1, #0x10]
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800DA10
	ldr r2, _0800DB2C @ =sa2__gUnknown_03004D80
	strb r7, [r2]
	ldr r1, _0800DB30 @ =sa2__gUnknown_03002280
	strb r7, [r1]
	strb r7, [r1, #1]
	ldrb r0, [r1, #2]
	orrs r0, r4
	strb r0, [r1, #2]
	movs r3, #0x20
	strb r3, [r1, #3]
	ldrb r0, [r2, #2]
	orrs r0, r4
	strb r0, [r2, #2]
	strb r7, [r1, #8]
	strb r7, [r1, #9]
	ldrb r0, [r1, #0xa]
	orrs r0, r4
	strb r0, [r1, #0xa]
	strb r3, [r1, #0xb]
	str r5, [sp, #0x10]
	ldr r3, _0800DB34 @ =0x040000D4
	add r2, sp, #0x10
	str r2, [r3]
	mov r0, sb
	ldrh r1, [r0]
	movs r2, #0xc
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r3, #4]
	ldr r0, _0800DB38 @ =0x85000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	str r5, [sp, #0x10]
	add r1, sp, #0x10
	str r1, [r3]
	mov r1, sb
	ldrh r0, [r1, #4]
	ands r2, r0
	lsls r2, r2, #0xc
	ldr r0, _0800DB3C @ =0x06003FC0
	adds r2, r2, r0
	str r2, [r3, #4]
	ldr r0, _0800DB40 @ =0x85000020
	str r0, [r3, #8]
	ldr r0, [r3, #8]
_0800DA10:
	ldr r2, _0800DB44 @ =0x030001AE
	adds r0, r6, r2
	strb r7, [r0]
	ldr r0, _0800DB48 @ =0x03000120
	adds r1, r6, r0
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	strh r5, [r1, #0xa]
	ldr r0, _0800DB4C @ =0x0600A000
	str r0, [r1, #0xc]
	strh r5, [r1, #0x18]
	strh r5, [r1, #0x1a]
	movs r0, #0x4b
	strh r0, [r1, #0x1c]
	strh r5, [r1, #0x1e]
	strh r5, [r1, #0x20]
	strh r5, [r1, #0x22]
	strh r5, [r1, #0x24]
	movs r4, #0x1e
	strh r4, [r1, #0x26]
	movs r0, #0x14
	strh r0, [r1, #0x28]
	subs r2, #0x64
	adds r0, r6, r2
	strb r7, [r0]
	movs r0, #4
	strh r0, [r1, #0x2e]
	mov r2, r8
	ldrb r0, [r2]
	cmp r0, #0
	beq _0800DA56
	adds r0, r1, #0
	bl DrawBackground
_0800DA56:
	ldr r0, _0800DB50 @ =0x03000160
	adds r1, r6, r0
	ldr r0, _0800DB54 @ =0x0600C000
	str r0, [r1, #4]
	strh r5, [r1, #0xa]
	ldr r0, _0800DB58 @ =0x0600B000
	str r0, [r1, #0xc]
	strh r5, [r1, #0x18]
	strh r5, [r1, #0x1a]
	ldr r0, _0800DB5C @ =gLoadedSaveGame
	ldrb r0, [r0, #0x19]
	adds r0, #0x49
	strh r0, [r1, #0x1c]
	strh r5, [r1, #0x1e]
	strh r5, [r1, #0x20]
	strh r5, [r1, #0x22]
	strh r5, [r1, #0x24]
	movs r0, #0x18
	strh r0, [r1, #0x26]
	movs r0, #0xa
	strh r0, [r1, #0x28]
	ldr r2, _0800DB60 @ =0x0300018A
	adds r0, r6, r2
	strb r7, [r0]
	movs r0, #6
	strh r0, [r1, #0x2e]
	mov r2, r8
	ldrb r0, [r2]
	cmp r0, #0
	beq _0800DA98
	adds r0, r1, #0
	bl DrawBackground
_0800DA98:
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0x1a
	str r0, [sp]
	movs r0, #0xc0
	str r0, [sp, #4]
	str r4, [sp, #8]
	ldr r0, _0800DB64 @ =gBgAffineRegs
	str r0, [sp, #0xc]
	movs r0, #0
	adds r1, r2, #0
	movs r3, #0x8d
	bl sa2__sub_8003EE4
	ldr r0, _0800DB68 @ =0x030001A0
	adds r1, r6, r0
	strh r5, [r1]
	mov r2, sl
	strh r2, [r1, #2]
	movs r0, #2
	strh r0, [r1, #4]
	strh r5, [r1, #6]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1, #8]
	movs r0, #1
	strb r0, [r1, #0xa]
	mov r2, r8
	ldrb r0, [r2]
	cmp r0, #0
	beq _0800DADC
	adds r0, r1, #0
	bl sub_805423C
_0800DADC:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800DAEC: .4byte gGameMode
_0800DAF0: .4byte sa2__gUnknown_0300543C
_0800DAF4: .4byte gDispCnt
_0800DAF8: .4byte 0x00001541
_0800DAFC: .4byte gBgCntRegs
_0800DB00: .4byte 0x0000568D
_0800DB04: .4byte 0x00001482
_0800DB08: .4byte gBgScrollRegs
_0800DB0C: .4byte Task_MainMenuInit
_0800DB10: .4byte 0x030001AC
_0800DB14: .4byte 0x030001AF
_0800DB18: .4byte 0x06000040
_0800DB1C: .4byte 0x03000020
_0800DB20: .4byte 0x03000021
_0800DB24: .4byte 0x03000022
_0800DB28: .4byte 0x03000025
_0800DB2C: .4byte sa2__gUnknown_03004D80
_0800DB30: .4byte sa2__gUnknown_03002280
_0800DB34: .4byte 0x040000D4
_0800DB38: .4byte 0x85000010
_0800DB3C: .4byte 0x06003FC0
_0800DB40: .4byte 0x85000020
_0800DB44: .4byte 0x030001AE
_0800DB48: .4byte 0x03000120
_0800DB4C: .4byte 0x0600A000
_0800DB50: .4byte 0x03000160
_0800DB54: .4byte 0x0600C000
_0800DB58: .4byte 0x0600B000
_0800DB5C: .4byte gLoadedSaveGame
_0800DB60: .4byte 0x0300018A
_0800DB64: .4byte gBgAffineRegs
_0800DB68: .4byte 0x030001A0

	thumb_func_start Task_MainMenuInit
Task_MainMenuInit: @ 0x0800DB6C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r6, _0800DCB4 @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	mov sb, r5
	ldr r0, _0800DCB8 @ =0x030001A0
	adds r2, r4, r0
	movs r1, #1
	ldr r3, _0800DCBC @ =0x030001AF
	adds r0, r4, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800DBA4
	adds r0, r2, #0
	bl sub_805423C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
_0800DBA4:
	cmp r1, #0
	beq _0800DCA4
	ldrh r1, [r5, #8]
	cmp r1, #0
	bne _0800DBF0
	movs r2, #0
	strh r1, [r5, #0x16]
	strh r1, [r5, #0x18]
	ldr r0, _0800DCC0 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x1a]
	strh r1, [r5, #8]
	ldr r0, _0800DCC4 @ =0x000002BB
	strh r0, [r5, #0xa]
	ldr r3, _0800DCC8 @ =0x03000020
	adds r0, r4, r3
	strb r2, [r0]
	strh r1, [r5, #0x14]
	strh r1, [r5, #0x1c]
	ldr r0, _0800DCCC @ =0x03000021
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	adds r3, #2
	adds r1, r4, r3
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0800DCD0 @ =0x03000025
	adds r0, r4, r1
	strb r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r5, #0x10]
	ldr r1, [r6]
	ldr r0, _0800DCD4 @ =Task_SwitchTo_Task_800DCFC
	str r0, [r1, #8]
_0800DBF0:
	movs r6, #0
	movs r2, #0
	mov sl, r2
	movs r7, #0
	ldr r3, _0800DCD8 @ =gLoadedSaveGame
	mov r8, r3
_0800DBFC:
	lsls r4, r6, #1
	adds r0, r4, r6
	lsls r0, r0, #4
	adds r0, #0x30
	mov r1, sb
	adds r5, r1, r0
	movs r0, #0x78
	strh r0, [r5, #0x16]
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #1
	adds r0, #0x5d
	strh r0, [r5, #0x18]
	ldr r0, _0800DCDC @ =sTitlescreenFrameTileSizes
	adds r0, r6, r0
	ldrb r0, [r0]
	bl VramMalloc
	str r0, [r5, #4]
	strh r7, [r5, #8]
	ldr r1, _0800DCE0 @ =gUnknown_080BB310
	mov r2, r8
	ldrb r0, [r2, #0x19]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5, #0xa]
	ldr r1, _0800DCE4 @ =gUnknown_080BB314
	ldrb r0, [r2, #0x19]
	adds r0, r0, r4
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x20
	strb r1, [r0]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x1a]
	strh r7, [r5, #8]
	strh r7, [r5, #0x14]
	strh r7, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x25
	mov r3, sl
	strb r3, [r0]
	str r7, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bls _0800DBFC
	movs r6, #0
	ldr r5, _0800DCE8 @ =gDispCnt
	ldr r7, _0800DCEC @ =gBldRegs
	ldr r4, _0800DCF0 @ =gKeysFirstRepeatIntervals
	movs r3, #0x14
	ldr r2, _0800DCF4 @ =gKeysContinuedRepeatIntervals
	movs r1, #8
_0800DC84:
	adds r0, r6, r4
	strb r3, [r0]
	adds r0, r6, r2
	strb r1, [r0]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #9
	bls _0800DC84
	ldrh r0, [r5]
	ldr r1, _0800DCF8 @ =0x00009FFF
	ands r1, r0
	strh r1, [r5]
	movs r0, #0
	strh r0, [r7]
	strh r0, [r7, #4]
_0800DCA4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800DCB4: .4byte gCurTask
_0800DCB8: .4byte 0x030001A0
_0800DCBC: .4byte 0x030001AF
_0800DCC0: .4byte 0x06010000
_0800DCC4: .4byte 0x000002BB
_0800DCC8: .4byte 0x03000020
_0800DCCC: .4byte 0x03000021
_0800DCD0: .4byte 0x03000025
_0800DCD4: .4byte Task_SwitchTo_Task_800DCFC
_0800DCD8: .4byte gLoadedSaveGame
_0800DCDC: .4byte sTitlescreenFrameTileSizes
_0800DCE0: .4byte gUnknown_080BB310
_0800DCE4: .4byte gUnknown_080BB314
_0800DCE8: .4byte gDispCnt
_0800DCEC: .4byte gBldRegs
_0800DCF0: .4byte gKeysFirstRepeatIntervals
_0800DCF4: .4byte gKeysContinuedRepeatIntervals
_0800DCF8: .4byte 0x00009FFF

	thumb_func_start Task_800DCFC
Task_800DCFC: @ 0x0800DCFC
	push {r4, r5, r6, r7, lr}
	ldr r0, _0800DD3C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	adds r5, r6, #0
	ldr r0, _0800DD40 @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0
	beq _0800DD48
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r0, _0800DD44 @ =0x030001AE
	adds r1, r4, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _0800DD6A
	movs r0, #4
	strb r0, [r1]
	b _0800DD6A
	.align 2, 0
_0800DD3C: .4byte gCurTask
_0800DD40: .4byte gRepeatedKeys
_0800DD44: .4byte 0x030001AE
_0800DD48:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800DD6A
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r0, _0800DDB4 @ =0x030001AE
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _0800DD6A
	strb r7, [r1]
_0800DD6A:
	movs r0, #0x48
	strh r0, [r5, #0x16]
	movs r1, #0xd7
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #1
	adds r0, #0x6b
	strh r0, [r5, #0x18]
_0800DD80:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	cmp r0, #1
	beq _0800DD8E
	cmp r0, #0
	bne _0800DD80
_0800DD8E:
	movs r4, #0
_0800DD90:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, #0x30
	adds r5, r6, r0
	movs r1, #0xd7
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r4, r0
	bne _0800DDC0
	cmp r4, #0
	beq _0800DDB8
	adds r1, r5, #0
	adds r1, #0x25
	movs r0, #1
	b _0800DDD2
	.align 2, 0
_0800DDB4: .4byte 0x030001AE
_0800DDB8:
	adds r0, r5, #0
	adds r0, #0x25
	strb r4, [r0]
	b _0800DDD4
_0800DDC0:
	cmp r4, #0
	beq _0800DDCC
	adds r1, r5, #0
	adds r1, #0x25
	movs r0, #0
	b _0800DDD2
_0800DDCC:
	adds r1, r5, #0
	adds r1, #0x25
	movs r0, #0xff
_0800DDD2:
	strb r0, [r1]
_0800DDD4:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0800DD90
	ldr r0, _0800DE20 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800DE3A
	movs r0, #0x6a
	bl m4aSongNumStart
	ldr r0, _0800DE24 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0800DE28 @ =sub_800DE44
	str r0, [r1, #8]
	movs r0, #0xd8
	lsls r0, r0, #1
	adds r1, r6, r0
	movs r0, #0
	strh r0, [r1]
	movs r1, #0xd7
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #4
	bne _0800DE30
	ldr r1, _0800DE2C @ =gBldRegs
	movs r0, #0xbf
	b _0800DE34
	.align 2, 0
_0800DE20: .4byte gPressedKeys
_0800DE24: .4byte gCurTask
_0800DE28: .4byte sub_800DE44
_0800DE2C: .4byte gBldRegs
_0800DE30:
	ldr r1, _0800DE40 @ =gBldRegs
	movs r0, #0xff
_0800DE34:
	strh r0, [r1]
	movs r0, #0
	strh r0, [r1, #4]
_0800DE3A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800DE40: .4byte gBldRegs

	thumb_func_start sub_800DE44
sub_800DE44: @ 0x0800DE44
	push {r4, r5, r6, lr}
	ldr r0, _0800DEC4 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r0, _0800DEC8 @ =0x030001B0
	adds r5, r1, r0
	ldrh r0, [r5]
	adds r0, #0x55
	movs r4, #0
	strh r0, [r5]
	lsls r0, r0, #0x10
	ldr r1, _0800DECC @ =0x0FFF0000
	cmp r0, r1
	ble _0800DE9A
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r5]
	ldr r0, _0800DED0 @ =sub_800DEE4
	str r0, [r2, #8]
	ldr r3, _0800DED4 @ =sa2__gUnknown_03004D80
	strb r4, [r3]
	ldr r0, _0800DED8 @ =sa2__gUnknown_03002280
	strb r4, [r0]
	strb r4, [r0, #1]
	movs r1, #0xff
	strb r1, [r0, #2]
	movs r2, #0x20
	strb r2, [r0, #3]
	strb r4, [r3, #2]
	strb r4, [r0, #8]
	strb r4, [r0, #9]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0xa]
	strb r2, [r0, #0xb]
	ldr r2, _0800DEDC @ =gFlags
	ldr r0, [r2]
	subs r1, #4
	ands r0, r1
	str r0, [r2]
_0800DE9A:
	ldr r1, _0800DEE0 @ =gBldRegs
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	strh r0, [r1, #4]
	movs r4, #0
_0800DEA6:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, #0x30
	adds r0, r6, r0
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0800DEA6
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800DEC4: .4byte gCurTask
_0800DEC8: .4byte 0x030001B0
_0800DECC: .4byte 0x0FFF0000
_0800DED0: .4byte sub_800DEE4
_0800DED4: .4byte sa2__gUnknown_03004D80
_0800DED8: .4byte sa2__gUnknown_03002280
_0800DEDC: .4byte gFlags
_0800DEE0: .4byte gBldRegs

	thumb_func_start sub_800DEE4
sub_800DEE4: @ 0x0800DEE4
	push {r4, r5, r6, lr}
	ldr r0, _0800DF3C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	ldr r2, _0800DF40 @ =0x030001AE
	adds r0, r1, r2
	ldrb r6, [r0]
	movs r4, #0
	ldr r0, _0800DF44 @ =0x03000034
	adds r5, r1, r0
_0800DEF8:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, r5, r0
	ldr r0, [r0]
	bl VramFree
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0800DEF8
	ldr r0, _0800DF3C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	movs r0, #0x1d      @ MUS_BOSS_FIGHT
	bl m4aSongNumStart
	ldr r0, _0800DF48 @ =gMPlayInfo_BGM
	bl m4aMPlayImmInit
	movs r0, #0x1d
	bl m4aSongNumStop
	cmp r6, #0
	bne _0800DF50
	ldr r0, _0800DF4C @ =gGameMode
	strb r6, [r0]
	movs r0, #0
	bl CreateCharacterSelectionScreen
	b _0800DF70
	.align 2, 0
_0800DF3C: .4byte gCurTask
_0800DF40: .4byte 0x030001AE
_0800DF44: .4byte 0x03000034
_0800DF48: .4byte gMPlayInfo_BGM
_0800DF4C: .4byte gGameMode
_0800DF50:
	ldr r2, _0800DF78 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0800DF7C @ =0x00009FFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _0800DF80 @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	ldr r1, _0800DF84 @ =gUnknown_080BB32C
	subs r0, r6, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
_0800DF70:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800DF78: .4byte gDispCnt
_0800DF7C: .4byte 0x00009FFF
_0800DF80: .4byte gBldRegs
_0800DF84: .4byte gUnknown_080BB32C

	thumb_func_start sub_800DF88
sub_800DF88: @ 0x0800DF88
	push {r4, lr}
	ldr r0, _0800DFE0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	ldr r1, _0800DFE4 @ =gInputRecorder
	movs r4, #0
	movs r0, #2
	strb r0, [r1, #8]
	ldr r3, _0800DFE8 @ =gInputPlaybackData
	ldr r1, _0800DFEC @ =gUnknown_087BF8CC
	ldr r2, _0800DFF0 @ =gDemoPlayCounter
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _0800DFF4 @ =gSelectedCharacter
	ldr r1, _0800DFF8 @ =gUnknown_080BB327
	ldrb r0, [r2]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r3]
	ldr r3, _0800DFFC @ =gCurrentLevel
	ldr r1, _0800E000 @ =gUnknown_080BB323
	ldrb r0, [r2]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r3]
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r2]
	ldr r0, _0800E004 @ =gGameMode
	strb r4, [r0]
	bl CreateDemoManager
	bl ApplyGameStageSettings
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800DFE0: .4byte gCurTask
_0800DFE4: .4byte gInputRecorder
_0800DFE8: .4byte gInputPlaybackData
_0800DFEC: .4byte gUnknown_087BF8CC
_0800DFF0: .4byte gDemoPlayCounter
_0800DFF4: .4byte gSelectedCharacter
_0800DFF8: .4byte gUnknown_080BB327
_0800DFFC: .4byte gCurrentLevel
_0800E000: .4byte gUnknown_080BB323
_0800E004: .4byte gGameMode

	thumb_func_start sub_800E008
sub_800E008: @ 0x0800E008
	push {lr}
	ldr r0, _0800E01C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	movs r0, #0
	bl CreateMainMenu
	pop {r0}
	bx r0
	.align 2, 0
_0800E01C: .4byte gCurTask

	thumb_func_start TaskDestructor_TitleScreen
TaskDestructor_TitleScreen: @ 0x0800E020
	push {r4, lr}
	ldr r0, _0800E040 @ =gCurTask
	ldr r0, [r0]
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
	.align 2, 0
_0800E040: .4byte gCurTask

	thumb_func_start Task_SwitchTo_Task_800DCFC
Task_SwitchTo_Task_800DCFC: @ 0x0800E044
	push {lr}
	ldr r0, _0800E058 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0800E05C @ =Task_800DCFC
	str r0, [r1, #8]
	bl _call_via_r0
	pop {r0}
	bx r0
	.align 2, 0
_0800E058: .4byte gCurTask
_0800E05C: .4byte Task_800DCFC

	thumb_func_start LoadTinyChaoGarden
LoadTinyChaoGarden: @ 0x0800E060
	push {lr}
	ldr r2, _0800E0B0 @ =gFlags
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r2]
	movs r0, #3
	bl m4aSongNumStop
	bl m4aSoundVSyncOff
	ldr r0, _0800E0B4 @ =gMultiBootProgram_TinyChaoGarden
	movs r1, #0x80
	lsls r1, r1, #0x12
	bl LZ77UnCompWram
	ldr r2, _0800E0B8 @ =EWRAM_START + 8
	ldr r1, _0800E0BC @ =gLoadedSaveGame
	movs r3, #0x85
	lsls r3, r3, #3
	adds r0, r1, r3
	ldr r0, [r0]
	str r0, [r2]
	adds r2, #4
	ldrb r0, [r1, #0x1a]
	str r0, [r2]
	adds r2, #4
	ldr r0, _0800E0C0 @ =gFrameCount
	adds r3, #4
	adds r1, r1, r3
	ldr r0, [r0]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2]
	movs r0, #0
	bl SoftResetExram
	pop {r0}
	bx r0
	.align 2, 0
_0800E0B0: .4byte gFlags
_0800E0B4: .4byte gMultiBootProgram_TinyChaoGarden
_0800E0B8: .4byte EWRAM_START + 8
_0800E0BC: .4byte gLoadedSaveGame
_0800E0C0: .4byte gFrameCount
