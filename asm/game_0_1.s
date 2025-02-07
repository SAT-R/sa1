.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateMultiplayerModeSelectScreen
CreateMultiplayerModeSelectScreen: @ 0x0800E470
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r7, _0800E498 @ =gLoadedSaveGame
	ldr r0, [r7, #4]
	cmp r0, #0
	bne _0800E4A0
	movs r0, #3     @ MUS_CHARACTER_SELECTION
	bl m4aSongNumStartOrChange
	ldr r1, _0800E49C @ =gGameMode
	movs r0, #2
	strb r0, [r1]
	bl CreatePlayerNameInputMenu
	b _0800E5DA
	.align 2, 0
_0800E498: .4byte gLoadedSaveGame
_0800E49C: .4byte gGameMode
_0800E4A0:
	ldr r1, _0800E5EC @ =gDispCnt
	ldr r2, _0800E5F0 @ =0x00001141
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0800E5F4 @ =gBgCntRegs
	movs r0, #0
	mov r8, r0
	movs r6, #0
	ldr r0, _0800E5F8 @ =0x00001E03
	strh r0, [r1]
	ldr r0, _0800E5FC @ =sub_800FEF4
	movs r1, #0x87
	lsls r1, r1, #2
	str r6, [sp]
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r4, r5
	ldr r1, _0800E600 @ =0x03000200
	adds r0, r4, r1
	strh r6, [r0]
	ldr r2, _0800E604 @ =0x03000203
	adds r0, r4, r2
	mov r1, r8
	strb r1, [r0]
	subs r2, #7
	adds r0, r4, r2
	str r6, [r0]
	ldr r0, _0800E608 @ =0x03000208
	adds r1, r4, r0
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1]
	ldr r1, _0800E60C @ =gBldRegs
	movs r0, #0xff
	strh r0, [r1]
	movs r2, #0x10
	mov sb, r2
	movs r0, #0x10
	strh r0, [r1, #4]
	ldr r0, _0800E610 @ =0x03000040
	adds r2, r4, r0
	movs r0, #0xe8
	strh r0, [r2, #0x16]
	movs r1, #0x40
	mov sl, r1
	mov r0, sl
	strh r0, [r2, #0x18]
	ldr r0, _0800E614 @ =0x06010000
	str r0, [r2, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r2, #0x1a]
	strh r6, [r2, #8]
	ldr r1, _0800E618 @ =gUnknown_080BB348
	ldrb r0, [r7, #0x19]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xa]
	ldr r1, _0800E61C @ =0x03000060
	adds r0, r4, r1
	mov r1, r8
	strb r1, [r0]
	strh r6, [r2, #0x14]
	strh r6, [r2, #0x1c]
	ldr r0, _0800E620 @ =0x03000061
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _0800E624 @ =0x03000062
	adds r0, r4, r1
	mov r1, sb
	strb r1, [r0]
	ldr r1, _0800E628 @ =0x03000065
	adds r0, r4, r1
	mov r1, r8
	strb r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	ldr r1, _0800E62C @ =0x03000070
	adds r2, r4, r1
	strh r6, [r2, #0x16]
	mov r0, sl
	strh r0, [r2, #0x18]
	ldr r0, _0800E630 @ =0x06010840
	str r0, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r2, #0x1a]
	strh r6, [r2, #8]
	subs r0, #0xa4
	strh r0, [r2, #0xa]
	adds r1, #0x20
	adds r0, r4, r1
	mov r1, r8
	strb r1, [r0]
	strh r6, [r2, #0x14]
	strh r6, [r2, #0x1c]
	ldr r0, _0800E634 @ =0x03000091
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _0800E638 @ =0x03000092
	adds r0, r4, r1
	mov r1, sb
	strb r1, [r0]
	ldr r1, _0800E63C @ =0x03000095
	adds r0, r4, r1
	mov r1, r8
	strb r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r5, #4]
	strh r6, [r5, #0xa]
	ldr r0, _0800E640 @ =0x0600F000
	str r0, [r5, #0xc]
	strh r6, [r5, #0x18]
	strh r6, [r5, #0x1a]
	ldrb r0, [r7, #0x19]
	adds r0, #0x4c
	strh r0, [r5, #0x1c]
	strh r6, [r5, #0x1e]
	strh r6, [r5, #0x20]
	strh r6, [r5, #0x22]
	strh r6, [r5, #0x24]
	movs r0, #0x1e
	strh r0, [r5, #0x26]
	movs r0, #0x14
	strh r0, [r5, #0x28]
	ldr r1, _0800E644 @ =0x0300002A
	adds r4, r4, r1
	mov r2, r8
	strb r2, [r4]
	strh r6, [r5, #0x2e]
	adds r0, r5, #0
	bl DrawBackground
	movs r0, #3     @ MUS_CHARACTER_SELECTION
	bl m4aSongNumStartOrChange
_0800E5DA:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E5EC: .4byte gDispCnt
_0800E5F0: .4byte 0x00001141
_0800E5F4: .4byte gBgCntRegs
_0800E5F8: .4byte 0x00001E03
_0800E5FC: .4byte sub_800FEF4
_0800E600: .4byte 0x03000200
_0800E604: .4byte 0x03000203
_0800E608: .4byte 0x03000208
_0800E60C: .4byte gBldRegs
_0800E610: .4byte 0x03000040
_0800E614: .4byte 0x06010000
_0800E618: .4byte gUnknown_080BB348
_0800E61C: .4byte 0x03000060
_0800E620: .4byte 0x03000061
_0800E624: .4byte 0x03000062
_0800E628: .4byte 0x03000065
_0800E62C: .4byte 0x03000070
_0800E630: .4byte 0x06010840
_0800E634: .4byte 0x03000091
_0800E638: .4byte 0x03000092
_0800E63C: .4byte 0x03000095
_0800E640: .4byte 0x0600F000
_0800E644: .4byte 0x0300002A

	thumb_func_start sub_800E648
sub_800E648: @ 0x0800E648
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _0800E690 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	ldr r0, _0800E694 @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0800E6A0
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r0, _0800E698 @ =0x03000203
	adds r1, r5, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0800E684
	movs r0, #1
	strb r0, [r1]
_0800E684:
	ldr r0, _0800E69C @ =0x030001FC
	adds r1, r5, r0
	movs r0, #0
	str r0, [r1]
	b _0800E6C8
	.align 2, 0
_0800E690: .4byte gCurTask
_0800E694: .4byte gRepeatedKeys
_0800E698: .4byte 0x03000203
_0800E69C: .4byte 0x030001FC
_0800E6A0:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800E6C8
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r0, _0800E714 @ =0x03000203
	adds r1, r5, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0800E6C2
	strb r4, [r1]
_0800E6C2:
	ldr r1, _0800E718 @ =0x030001FC
	adds r0, r5, r1
	str r4, [r0]
_0800E6C8:
	ldr r0, _0800E71C @ =gPressedKeys
	ldrh r1, [r0]
	movs r2, #1
	ands r2, r1
	cmp r2, #0
	beq _0800E744
	ldr r1, _0800E720 @ =0x0000020A
	adds r0, r6, r1
	movs r4, #0
	strb r4, [r0]
	movs r0, #0x6a
	bl m4aSongNumStart
	str r4, [sp]
	ldr r0, _0800E724 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _0800E728 @ =gMultiSioSend
	str r1, [r0, #4]
	ldr r1, _0800E72C @ =0x85000005
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r4, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _0800E730 @ =gMultiSioRecv
	str r1, [r0, #4]
	ldr r1, _0800E734 @ =0x85000014
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r1, _0800E738 @ =gBldRegs
	movs r0, #0xff
	strh r0, [r1]
	ldr r0, _0800E73C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0800E740 @ =sub_800E868
	str r0, [r1, #8]
	b _0800E776
	.align 2, 0
_0800E714: .4byte 0x03000203
_0800E718: .4byte 0x030001FC
_0800E71C: .4byte gPressedKeys
_0800E720: .4byte 0x0000020A
_0800E724: .4byte 0x040000D4
_0800E728: .4byte gMultiSioSend
_0800E72C: .4byte 0x85000005
_0800E730: .4byte gMultiSioRecv
_0800E734: .4byte 0x85000014
_0800E738: .4byte gBldRegs
_0800E73C: .4byte gCurTask
_0800E740: .4byte sub_800E868
_0800E744:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800E776
	ldr r0, _0800E784 @ =0x0000020A
	adds r1, r6, r0
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0800E788 @ =gMultiSioEnabled
	strb r2, [r0]
	bl MultiSioStop
	movs r0, #0
	bl MultiSioInit
	ldr r0, _0800E78C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0800E790 @ =sub_800E868
	str r0, [r1, #8]
	movs r0, #0x6b
	bl m4aSongNumStart
	ldr r1, _0800E794 @ =gBldRegs
	movs r0, #0xff
	strh r0, [r1]
_0800E776:
	bl sub_800E798
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800E784: .4byte 0x0000020A
_0800E788: .4byte gMultiSioEnabled
_0800E78C: .4byte gCurTask
_0800E790: .4byte sub_800E868
_0800E794: .4byte gBldRegs

	thumb_func_start sub_800E798
sub_800E798: @ 0x0800E798
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0800E848 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r6
	mov sb, r0
	ldr r0, _0800E84C @ =0x030001FC
	adds r4, r6, r0
	ldr r2, [r4]
	adds r1, r2, #0
	adds r1, #0x80
	str r1, [r4]
	movs r0, #0xc8
	lsls r0, r0, #8
	cmp r1, r0
	ble _0800E7C8
	ldr r1, _0800E850 @ =0xFFFF3880
	adds r0, r2, r1
	str r0, [r4]
_0800E7C8:
	ldr r2, _0800E854 @ =0x03000040
	adds r5, r6, r2
	ldr r0, _0800E858 @ =0x03000203
	adds r2, r6, r0
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x40
	strh r0, [r5, #0x18]
	ldrb r1, [r2]
	ldr r2, _0800E85C @ =0x03000060
	adds r0, r6, r2
	strb r1, [r0]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	ldr r0, [r4]
	asrs r0, r0, #8
	adds r4, r0, #0
	subs r4, #0xc8
	movs r0, #0xe8
	subs r0, r0, r4
	ldr r1, _0800E860 @ =0x03000070
	adds r1, r1, r6
	mov r8, r1
	cmp r0, #0
	ble _0800E816
	movs r7, #0xe8
	movs r6, #0xe8
_0800E804:
	subs r0, r7, r4
	strh r0, [r5, #0x16]
	adds r0, r5, #0
	bl DisplaySprite
	adds r4, #0xc8
	subs r0, r6, r4
	cmp r0, #0
	bgt _0800E804
_0800E816:
	mov r5, r8
	ldr r0, _0800E864 @ =0x00000203
	add r0, sb
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x36
	strh r0, [r5, #0x18]
	movs r4, #0
_0800E82A:
	lsls r0, r4, #5
	strh r0, [r5, #0x16]
	adds r0, r5, #0
	bl DisplaySprite
	adds r4, #1
	cmp r4, #7
	bls _0800E82A
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E848: .4byte gCurTask
_0800E84C: .4byte 0x030001FC
_0800E850: .4byte 0xFFFF3880
_0800E854: .4byte 0x03000040
_0800E858: .4byte 0x03000203
_0800E85C: .4byte 0x03000060
_0800E860: .4byte 0x03000070
_0800E864: .4byte 0x00000203

	thumb_func_start sub_800E868
sub_800E868: @ 0x0800E868
	push {r4, r5, r6, r7, lr}
	ldr r7, _0800E8C4 @ =gCurTask
	ldr r5, [r7]
	ldrh r3, [r5, #6]
	ldr r0, _0800E8C8 @ =0x03000208
	adds r1, r3, r0
	ldrh r0, [r1]
	adds r0, #0x80
	movs r4, #0
	movs r6, #0
	strh r0, [r1]
	lsls r2, r0, #0x10
	ldr r0, _0800E8CC @ =0x0FFF0000
	cmp r2, r0
	ble _0800E920
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1]
	ldr r1, _0800E8D0 @ =0x0300020A
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800E8E0
	ldr r0, _0800E8D4 @ =gBldRegs
	strh r6, [r0]
	strh r6, [r0, #4]
	movs r0, #3
	bl m4aSongNumStop
	ldr r0, _0800E8D8 @ =sa2__gUnknown_03004D80
	strb r4, [r0]
	ldr r1, _0800E8DC @ =sa2__gUnknown_03002280
	strb r4, [r1]
	strb r4, [r1, #1]
	movs r0, #0xff
	strb r0, [r1, #2]
	movs r0, #0x20
	strb r0, [r1, #3]
	ldr r0, [r7]
	bl TaskDestroy
	movs r0, #1
	bl CreateMainMenu
	b _0800E92A
	.align 2, 0
_0800E8C4: .4byte gCurTask
_0800E8C8: .4byte 0x03000208
_0800E8CC: .4byte 0x0FFF0000
_0800E8D0: .4byte 0x0300020A
_0800E8D4: .4byte gBldRegs
_0800E8D8: .4byte sa2__gUnknown_03004D80
_0800E8DC: .4byte sa2__gUnknown_03002280
_0800E8E0:
	ldr r1, _0800E90C @ =gUnknown_080BB354
	ldr r2, _0800E910 @ =0x03000203
	adds r0, r3, r2
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r5, #8]
	ldr r0, _0800E914 @ =sa2__gUnknown_03004D80
	strb r4, [r0]
	ldr r1, _0800E918 @ =sa2__gUnknown_03002280
	strb r4, [r1]
	strb r4, [r1, #1]
	movs r0, #0xff
	strb r0, [r1, #2]
	movs r0, #0x20
	strb r0, [r1, #3]
	ldr r1, _0800E91C @ =gMultiSioEnabled
	movs r0, #1
	strb r0, [r1]
	b _0800E92A
	.align 2, 0
_0800E90C: .4byte gUnknown_080BB354
_0800E910: .4byte 0x03000203
_0800E914: .4byte sa2__gUnknown_03004D80
_0800E918: .4byte sa2__gUnknown_03002280
_0800E91C: .4byte gMultiSioEnabled
_0800E920:
	ldr r1, _0800E930 @ =gBldRegs
	asrs r0, r2, #0x18
	strh r0, [r1, #4]
	bl sub_800E798
_0800E92A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E930: .4byte gBldRegs

	thumb_func_start sub_800E934
sub_800E934: @ 0x0800E934
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r6, _0800EB18 @ =0x06010000
	movs r0, #5     @ MUS_VS_PLEASE_WAIT
	bl m4aSongNumStart
	ldr r0, _0800EB1C @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r2, r0
	ldr r0, _0800EB20 @ =0x03000214
	adds r3, r2, r0
	ldr r0, _0800EB24 @ =gLoadedSaveGame
	ldr r1, _0800EB28 @ =gFrameCount
	ldr r0, [r0, #4]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r3]
	movs r1, #0
	ldr r3, _0800EB2C @ =0x0300020B
	adds r2, r2, r3
	movs r0, #3
_0800E96A:
	strb r1, [r2]
	strb r1, [r2, #4]
	adds r2, #1
	subs r0, #1
	cmp r0, #0
	bge _0800E96A
	adds r2, r7, #0
	adds r2, #0x40
	movs r5, #0
	movs r4, #0
	movs r0, #0x78
	strh r0, [r2, #0x16]
	movs r0, #0x21
	strh r0, [r2, #0x18]
	str r6, [r2, #4]
	movs r1, #0xf0
	lsls r1, r1, #2
	mov r8, r1
	mov r3, r8
	strh r3, [r2, #0x1a]
	strh r4, [r2, #8]
	ldr r1, _0800EB30 @ =gUnknown_080BB34C
	ldr r3, _0800EB24 @ =gLoadedSaveGame
	ldrb r0, [r3, #0x19]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xa]
	adds r0, r7, #0
	adds r0, #0x60
	strb r5, [r0]
	strh r4, [r2, #0x14]
	strh r4, [r2, #0x1c]
	adds r1, r7, #0
	adds r1, #0x61
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x62
	movs r1, #0x10
	mov sb, r1
	mov r3, sb
	strb r3, [r0]
	adds r0, #3
	strb r5, [r0]
	movs r0, #0x80
	lsls r0, r0, #6
	mov sl, r0
	str r0, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	movs r1, #0xa8
	lsls r1, r1, #3
	adds r6, r6, r1
	adds r2, r7, #0
	adds r2, #0x70
	movs r0, #0x65
	strh r0, [r2, #0x16]
	movs r0, #0x29
	strh r0, [r2, #0x18]
	str r6, [r2, #4]
	mov r3, r8
	strh r3, [r2, #0x1a]
	strh r4, [r2, #8]
	movs r0, #0xde
	lsls r0, r0, #2     @ SA1_ANIM_MP_CHAO_SEARCHING
	strh r0, [r2, #0xa]
	adds r0, r7, #0
	adds r0, #0x90
	strb r5, [r0]
	strh r4, [r2, #0x14]
	strh r4, [r2, #0x1c]
	adds r1, r7, #0
	adds r1, #0x91
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x92
	mov r1, sb
	strb r1, [r0]
	adds r0, #3
	strb r5, [r0]
	mov r3, sl
	str r3, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	movs r0, #0x8c
	lsls r0, r0, #3
	adds r6, r6, r0
	adds r2, r7, #0
	adds r2, #0xa0
	movs r1, #0x78
	strh r1, [r2, #0x16]
	movs r0, #0x6d
	strh r0, [r2, #0x18]
	str r6, [r2, #4]
	mov r3, r8
	strh r3, [r2, #0x1a]
	strh r4, [r2, #8]
	ldr r0, _0800EB34 @ =0x0000037B
	strh r0, [r2, #0xa]
	adds r1, r7, #0
	adds r1, #0xc0
	movs r0, #4
	strb r0, [r1]
	strh r4, [r2, #0x14]
	strh r4, [r2, #0x1c]
	adds r1, #1
	subs r0, #5
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0xc2
	mov r1, sb
	strb r1, [r0]
	adds r0, #3
	strb r5, [r0]
	mov r3, sl
	str r3, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	adds r6, #0x80
	adds r2, r7, #0
	adds r2, #0xd0
	movs r0, #0x78
	strh r0, [r2, #0x16]
	movs r0, #0x7d
	strh r0, [r2, #0x18]
	str r6, [r2, #4]
	mov r1, r8
	strh r1, [r2, #0x1a]
	strh r4, [r2, #8]
	ldr r1, _0800EB38 @ =gUnknown_080BB350
	ldr r3, _0800EB24 @ =gLoadedSaveGame
	ldrb r0, [r3, #0x19]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xa]
	adds r0, r7, #0
	adds r0, #0xf0
	strb r5, [r0]
	strh r4, [r2, #0x14]
	strh r4, [r2, #0x1c]
	adds r1, r7, #0
	adds r1, #0xf1
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0xf2
	mov r1, sb
	strb r1, [r0]
	adds r0, #3
	strb r5, [r0]
	mov r3, sl
	str r3, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r7, #4]
	strh r4, [r7, #0xa]
	ldr r0, _0800EB3C @ =0x0600F000
	str r0, [r7, #0xc]
	strh r4, [r7, #0x18]
	strh r4, [r7, #0x1a]
	movs r0, #0x50
	strh r0, [r7, #0x1c]
	strh r4, [r7, #0x1e]
	strh r4, [r7, #0x20]
	strh r4, [r7, #0x22]
	strh r4, [r7, #0x24]
	movs r0, #0x1e
	strh r0, [r7, #0x26]
	movs r0, #0x14
	strh r0, [r7, #0x28]
	adds r0, r7, #0
	adds r0, #0x2a
	strb r5, [r0]
	strh r4, [r7, #0x2e]
	adds r0, r7, #0
	bl DrawBackground
	ldr r0, _0800EB40 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800EAF2
	bl MultiSioStart
_0800EAF2:
	ldr r1, _0800EB44 @ =0x00000206
	adds r0, r7, r1
	strb r5, [r0]
	movs r3, #0x86
	lsls r3, r3, #2
	adds r0, r7, r3
	strb r5, [r0]
	ldr r0, _0800EB1C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0800EB48 @ =sub_800EB4C
	str r0, [r1, #8]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800EB18: .4byte 0x06010000
_0800EB1C: .4byte gCurTask
_0800EB20: .4byte 0x03000214
_0800EB24: .4byte gLoadedSaveGame
_0800EB28: .4byte gFrameCount
_0800EB2C: .4byte 0x0300020B
_0800EB30: .4byte gUnknown_080BB34C
_0800EB34: .4byte 0x0000037B
_0800EB38: .4byte gUnknown_080BB350
_0800EB3C: .4byte 0x0600F000
_0800EB40: .4byte gMultiSioStatusFlags
_0800EB44: .4byte 0x00000206
_0800EB48: .4byte sub_800EB4C

	thumb_func_start sub_800EB4C
sub_800EB4C: @ 0x0800EB4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	movs r0, #0
	str r0, [sp]
	movs r1, #0
	str r1, [sp, #4]
	mov sl, r1
	movs r2, #0
	str r2, [sp, #8]
	mov sb, r2
	movs r7, #1
	str r7, [sp, #0xc]
	ldr r1, _0800EBBC @ =gMultiSioStatusFlags
	ldr r2, [r1]
	movs r0, #0x81
	ands r0, r2
	cmp r0, #0
	beq _0800EBE6
	ldr r3, _0800EBC0 @ =0x04000128
	ldr r1, [r3]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	adds r0, r7, #0
	lsls r0, r1
	ands r2, r0
	cmp r2, #0
	bne _0800EBD8
	ldr r1, _0800EBC4 @ =gMultiplayerMissingHeartbeats
	ldr r0, [r3]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r2, r1, #1
	strb r2, [r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0xb4
	bls _0800EBE6
	ldr r1, _0800EBC8 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0800EBCC @ =gBackgroundsCopyQueueCursor
	ldr r0, _0800EBD0 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0800EBD4 @ =sa2__gUnknown_03005390
	mov r1, sl
	strb r1, [r0]
	b _0800EE82
	.align 2, 0
_0800EBBC: .4byte gMultiSioStatusFlags
_0800EBC0: .4byte 0x04000128
_0800EBC4: .4byte gMultiplayerMissingHeartbeats
_0800EBC8: .4byte 0x0000FFFF
_0800EBCC: .4byte gBackgroundsCopyQueueCursor
_0800EBD0: .4byte gBackgroundsCopyQueueIndex
_0800EBD4: .4byte sa2__gUnknown_03005390
_0800EBD8:
	ldr r1, _0800EC78 @ =gMultiplayerMissingHeartbeats
	ldr r0, [r3]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, r0, r1
	mov r2, sl
	strb r2, [r0]
_0800EBE6:
	ldr r0, _0800EC7C @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r3
	mov r8, r0
	ldr r7, _0800EC80 @ =0x03000208
	adds r2, r3, r7
	ldrh r0, [r2]
	subs r0, #0x80
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0800EC08
	movs r0, #0
	strh r0, [r2]
_0800EC08:
	ldr r1, _0800EC84 @ =gBldRegs
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	strh r0, [r1, #4]
	movs r5, #0
	ldr r0, _0800EC88 @ =gMultiSioStatusFlags
	mov ip, r0
	movs r4, #1
	ldr r1, _0800EC8C @ =0x0300020B
	adds r3, r3, r1
	movs r2, #0
	str r2, [sp, #0x18]
_0800EC22:
	ldr r7, [sp, #0x18]
	ldr r0, _0800EC90 @ =gMultiSioRecv
	adds r6, r7, r0
	ldrb r0, [r3]
	lsls r2, r0, #1
	strb r2, [r3]
	ldrb r0, [r3, #4]
	lsls r0, r0, #1
	strb r0, [r3, #4]
	ldr r0, _0800EC94 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r5, r0
	beq _0800EC54
	adds r1, r4, #0
	lsls r1, r5
	mov r7, ip
	ldr r0, [r7]
	ands r0, r1
	cmp r0, #0
	beq _0800EC98
	ldrh r0, [r6]
	cmp r0, #0xf
	bls _0800EC98
_0800EC54:
	orrs r2, r4
	strb r2, [r3]
	ldr r0, [sp]
	adds r0, #1
	str r0, [sp]
	adds r0, r4, #0
	lsls r0, r5
	mov r1, sl
	orrs r1, r0
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	ldr r2, [sp, #8]
	cmp r2, #0
	beq _0800ED00
	movs r7, #1
	mov sb, r7
	b _0800ED00
	.align 2, 0
_0800EC78: .4byte gMultiplayerMissingHeartbeats
_0800EC7C: .4byte gCurTask
_0800EC80: .4byte 0x03000208
_0800EC84: .4byte gBldRegs
_0800EC88: .4byte gMultiSioStatusFlags
_0800EC8C: .4byte 0x0300020B
_0800EC90: .4byte gMultiSioRecv
_0800EC94: .4byte 0x04000128
_0800EC98:
	lsls r0, r5, #1
	ldr r1, _0800ECD0 @ =0x04000120
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r2, r0, #0
	movs r7, #1
	str r7, [sp, #8]
	adds r1, r7, #0
	lsls r1, r5
	mov r7, ip
	ldr r0, [r7]
	ands r0, r1
	cmp r0, #0
	bne _0800ECD4
	cmp r2, #0
	bne _0800ECD4
	movs r0, #1
	mov sb, r0
	ldrb r0, [r3, #4]
	adds r1, r4, #0
	orrs r1, r0
	strb r1, [r3, #4]
	ldrb r0, [r3]
	cmp r0, #0
	bne _0800ED06
	movs r1, #0
	str r1, [sp, #0xc]
	b _0800ED00
	.align 2, 0
_0800ECD0: .4byte 0x04000120
_0800ECD4:
	ldrb r0, [r3, #4]
	cmp r0, #0
	beq _0800ECE4
	movs r2, #1
	mov sb, r2
	movs r7, #0
	str r7, [sp, #0xc]
	b _0800ED00
_0800ECE4:
	adds r1, r4, #0
	lsls r1, r5
	mov r2, ip
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _0800ED00
	ldrh r0, [r6]
	cmp r0, #0xf
	bhi _0800ED00
	movs r7, #1
	mov sb, r7
	movs r0, #0
	str r0, [sp, #0xc]
_0800ED00:
	ldrb r0, [r3]
	cmp r0, #0
	beq _0800ED0C
_0800ED06:
	ldr r1, [sp, #4]
	adds r1, #1
	str r1, [sp, #4]
_0800ED0C:
	adds r3, #1
	ldr r2, [sp, #0x18]
	adds r2, #0x14
	str r2, [sp, #0x18]
	adds r5, #1
	cmp r5, #3
	bgt _0800ED1C
	b _0800EC22
_0800ED1C:
	ldr r7, [sp, #4]
	cmp r7, #0
	bne _0800ED26
	movs r0, #1
	str r0, [sp, #4]
_0800ED26:
	ldr r6, _0800ED5C @ =gMultiSioRecv
	movs r0, #0x86
	lsls r0, r0, #2
	add r0, r8
	ldrb r4, [r0]
	cmp r4, #0
	bne _0800ED7E
	ldr r1, _0800ED60 @ =gMultiSioStatusFlags
	ldr r0, [r1]
	movs r1, #0x81
	ands r0, r1
	cmp r0, #1
	bne _0800ED74
	ldrh r0, [r6]
	cmp r0, #0x10
	bls _0800ED74
	ldr r1, _0800ED64 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0800ED68 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0800ED6C @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0800ED70 @ =sa2__gUnknown_03005390
	strb r4, [r0]
	b _0800EE82
	.align 2, 0
_0800ED5C: .4byte gMultiSioRecv
_0800ED60: .4byte gMultiSioStatusFlags
_0800ED64: .4byte 0x0000FFFF
_0800ED68: .4byte gBackgroundsCopyQueueCursor
_0800ED6C: .4byte gBackgroundsCopyQueueIndex
_0800ED70: .4byte sa2__gUnknown_03005390
_0800ED74:
	movs r1, #0x86
	lsls r1, r1, #2
	add r1, r8
	movs r0, #1
	strb r0, [r1]
_0800ED7E:
	ldrh r1, [r6]
	mov r2, sb
	cmp r2, #0
	bne _0800EE64
	cmp r1, #0x11
	bne _0800EE64
	movs r0, #0x86
	lsls r0, r0, #2
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800EE64
	movs r7, #2
	ldr r1, _0800EDC8 @ =gMultiplayerPseudoRandom
	ldr r0, [r6, #0x10]
	str r0, [r1]
	ldr r1, _0800EDCC @ =gMultiplayerConnections
	ldrb r0, [r6, #2]
	strb r0, [r1]
	movs r5, #3
	ldr r0, _0800EDD0 @ =gUnknown_03005008
	adds r4, r0, #3
	movs r2, #0x3c
	movs r3, #0xff
_0800EDAE:
	ldr r0, _0800EDD4 @ =gMultiSioRecv
	adds r6, r2, r0
	ldr r0, _0800EDD8 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r5, r0
	bne _0800EDDC
	ldrb r0, [r4]
	orrs r0, r3
	strb r0, [r4]
	b _0800EE14
	.align 2, 0
_0800EDC8: .4byte gMultiplayerPseudoRandom
_0800EDCC: .4byte gMultiplayerConnections
_0800EDD0: .4byte gUnknown_03005008
_0800EDD4: .4byte gMultiSioRecv
_0800EDD8: .4byte 0x04000128
_0800EDDC:
	ldr r0, _0800EE04 @ =gMultiSioStatusFlags
	movs r1, #1
	lsls r1, r5
	ldr r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _0800EE08
	adds r0, r6, #0
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	bl sub_800FD9C
	adds r1, r7, #0
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	strb r1, [r4]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	b _0800EE14
	.align 2, 0
_0800EE04: .4byte gMultiSioStatusFlags
_0800EE08:
	ldrb r0, [r4]
	orrs r0, r3
	strb r0, [r4]
	subs r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_0800EE14:
	subs r4, #1
	subs r2, #0x14
	subs r5, #1
	cmp r5, #0
	bge _0800EDAE
	movs r2, #0
	movs r0, #0x80
	lsls r0, r0, #2
	add r0, r8
	movs r1, #0
	strh r2, [r0]
	ldr r0, _0800EE50 @ =0x00000206
	add r0, r8
	strb r1, [r0]
	ldr r0, _0800EE54 @ =gMultiplayerMissingHeartbeats
	strb r1, [r0, #3]
	strb r1, [r0, #2]
	strb r1, [r0, #1]
	strb r1, [r0]
	ldr r0, _0800EE58 @ =0x00000219
	add r0, r8
	strb r1, [r0]
	ldr r0, _0800EE5C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0800EE60 @ =sub_800F058
	str r0, [r1, #8]
	bl _call_via_r0
	b _0800F032
	.align 2, 0
_0800EE50: .4byte 0x00000206
_0800EE54: .4byte gMultiplayerMissingHeartbeats
_0800EE58: .4byte 0x00000219
_0800EE5C: .4byte gCurTask
_0800EE60: .4byte sub_800F058
_0800EE64:
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x12
	bls _0800EEA8
	ldr r1, _0800EE90 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0800EE94 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0800EE98 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0800EE9C @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
_0800EE82:
	ldr r1, _0800EEA0 @ =gVramGraphicsCopyCursor
	ldr r0, _0800EEA4 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl MultiPakCommunicationError
	b _0800F032
	.align 2, 0
_0800EE90: .4byte 0x0000FFFF
_0800EE94: .4byte gBackgroundsCopyQueueCursor
_0800EE98: .4byte gBackgroundsCopyQueueIndex
_0800EE9C: .4byte sa2__gUnknown_03005390
_0800EEA0: .4byte gVramGraphicsCopyCursor
_0800EEA4: .4byte gVramGraphicsCopyQueueIndex
_0800EEA8:
	ldr r0, _0800EEF8 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800EF10
	ldr r1, _0800EEFC @ =gMultiSioEnabled
	movs r0, #0
	strb r0, [r1]
	bl MultiSioStop
	movs r0, #0
	bl MultiSioInit
	ldr r6, _0800EF00 @ =gMultiSioSend
	movs r4, #0
	movs r0, #0
	strh r0, [r6]
	movs r0, #3
	bl m4aSongNumStop
	movs r0, #0x6b
	bl m4aSongNumStart
	ldr r0, _0800EF04 @ =sa2__gUnknown_03004D80
	strb r4, [r0]
	ldr r1, _0800EF08 @ =sa2__gUnknown_03002280
	strb r4, [r1]
	strb r4, [r1, #1]
	movs r0, #0xff
	strb r0, [r1, #2]
	movs r0, #0x20
	strb r0, [r1, #3]
	ldr r0, _0800EF0C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl CreateMultiplayerModeSelectScreen
	b _0800F032
	.align 2, 0
_0800EEF8: .4byte gPressedKeys
_0800EEFC: .4byte gMultiSioEnabled
_0800EF00: .4byte gMultiSioSend
_0800EF04: .4byte sa2__gUnknown_03004D80
_0800EF08: .4byte sa2__gUnknown_03002280
_0800EF0C: .4byte gCurTask
_0800EF10:
	ldr r1, [sp, #4]
	adds r1, #3
	mov r0, r8
	adds r0, #0xc0
	strb r1, [r0]
	mov r4, r8
	adds r4, #0x40
	movs r5, #2
_0800EF20:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r4, #0x30
	subs r5, #1
	cmp r5, #0
	bge _0800EF20
	ldr r0, _0800EFDC @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800EFF8
	ldr r7, [sp, #4]
	cmp r7, #1
	ble _0800EF5C
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0800EF5C
	mov r4, r8
	adds r4, #0xd0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0800EF5C:
	ldr r0, _0800EFDC @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800EFF8
	mov r1, sb
	cmp r1, #0
	bne _0800EF80
	ldr r2, [sp]
	cmp r2, #1
	ble _0800EF80
	ldr r0, _0800EFE0 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0800EF96
_0800EF80:
	ldr r0, _0800EFE4 @ =0x00000206
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800F006
	mov r7, sb
	cmp r7, #0
	bne _0800EFF8
	ldr r0, [sp]
	cmp r0, #1
	ble _0800EFF8
_0800EF96:
	ldr r6, _0800EFE8 @ =gMultiSioSend
	movs r0, #0x11
	strh r0, [r6]
	mov r1, sl
	strb r1, [r6, #2]
	ldr r2, _0800EFEC @ =gLoadedSaveGame
	ldr r0, [r2, #4]
	str r0, [r6, #4]
	ldr r1, _0800EFF0 @ =0x040000D4
	adds r5, r2, #0
	adds r5, #0x10
	str r5, [r1]
	adds r4, r6, #0
	adds r4, #8
	str r4, [r1, #4]
	ldr r3, _0800EFF4 @ =0x84000002
	str r3, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r2, #4]
	str r0, [r6, #4]
	movs r0, #0x85
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	str r0, [r6, #0x10]
	str r5, [r1]
	str r4, [r1, #4]
	str r3, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _0800EFE4 @ =0x00000206
	add r1, r8
	movs r0, #1
	strb r0, [r1]
	b _0800F032
	.align 2, 0
_0800EFDC: .4byte gMultiSioStatusFlags
_0800EFE0: .4byte gPressedKeys
_0800EFE4: .4byte 0x00000206
_0800EFE8: .4byte gMultiSioSend
_0800EFEC: .4byte gLoadedSaveGame
_0800EFF0: .4byte 0x040000D4
_0800EFF4: .4byte 0x84000002
_0800EFF8:
	ldr r1, _0800F044 @ =0x00000206
	add r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800F006
	movs r0, #0
	strb r0, [r1]
_0800F006:
	ldr r6, _0800F048 @ =gMultiSioSend
	movs r0, #0x10
	strh r0, [r6]
	ldr r1, _0800F04C @ =gLoadedSaveGame
	ldr r0, [r1, #4]
	str r0, [r6, #4]
	ldr r0, _0800F050 @ =0x040000D4
	adds r4, r1, #0
	adds r4, #0x10
	str r4, [r0]
	adds r3, r6, #0
	adds r3, #8
	str r3, [r0, #4]
	ldr r2, _0800F054 @ =0x84000002
	str r2, [r0, #8]
	ldr r5, [r0, #8]
	ldr r1, [r1, #4]
	str r1, [r6, #4]
	str r4, [r0]
	str r3, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
_0800F032:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F044: .4byte 0x00000206
_0800F048: .4byte gMultiSioSend
_0800F04C: .4byte gLoadedSaveGame
_0800F050: .4byte 0x040000D4
_0800F054: .4byte 0x84000002

	thumb_func_start sub_800F058
sub_800F058: @ 0x0800F058
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	movs r7, #0
	ldr r2, _0800F0B8 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov ip, r1
	ldr r0, _0800F0BC @ =gGameMode
	ldrb r1, [r0]
	mov sl, r2
	mov sb, r0
	cmp r1, #1
	bls _0800F0E8
	movs r3, #0
	ldr r0, _0800F0C0 @ =gMultiplayerConnections
	ldrb r1, [r0]
	movs r2, #1
	ands r1, r2
	mov r8, r0
	cmp r1, #0
	beq _0800F0E8
	movs r5, #1
	ldr r2, _0800F0C4 @ =gMultiplayerMissingHeartbeats
_0800F094:
	ldr r1, _0800F0C8 @ =gMultiSioStatusFlags
	adds r0, r5, #0
	lsls r0, r3
	ldr r4, [r1]
	ands r4, r0
	cmp r4, #0
	bne _0800F0D0
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _0800F0D4
	movs r0, #0
	ldr r1, _0800F0CC @ =0x0000FFFF
	b _0800F1A2
	.align 2, 0
_0800F0B8: .4byte gCurTask
_0800F0BC: .4byte gGameMode
_0800F0C0: .4byte gMultiplayerConnections
_0800F0C4: .4byte gMultiplayerMissingHeartbeats
_0800F0C8: .4byte gMultiSioStatusFlags
_0800F0CC: .4byte 0x0000FFFF
_0800F0D0:
	movs r0, #0
	strb r0, [r2]
_0800F0D4:
	adds r2, #1
	adds r3, #1
	cmp r3, #3
	bhi _0800F0E8
	mov r1, r8
	ldrb r0, [r1]
	asrs r0, r3
	ands r0, r5
	cmp r0, #0
	bne _0800F094
_0800F0E8:
	ldr r2, _0800F108 @ =gMultiSioRecv
	ldrh r0, [r2]
	mov r8, r2
	cmp r0, #0x12
	bne _0800F10C
	movs r0, #2
	mov r2, sb
	strb r0, [r2]
	mov r1, sl
	ldr r0, [r1]
	bl TaskDestroy
	movs r0, #0
	bl CreateMultipackOutcomeScreen
	b _0800F2FA
	.align 2, 0
_0800F108: .4byte gMultiSioRecv
_0800F10C:
	cmp r0, #0x10
	beq _0800F12C
	ldr r0, _0800F170 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800F1DC
	ldr r0, _0800F174 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0800F18C
_0800F12C:
	ldr r1, _0800F178 @ =gMultiSioEnabled
	movs r0, #0
	strb r0, [r1]
	bl MultiSioStop
	movs r0, #0
	bl MultiSioInit
	ldr r2, _0800F17C @ =gMultiSioSend
	movs r4, #0
	movs r0, #0
	strh r0, [r2]
	movs r0, #3
	bl m4aSongNumStop
	movs r0, #0x6b
	bl m4aSongNumStart
	ldr r0, _0800F180 @ =sa2__gUnknown_03004D80
	strb r4, [r0]
	ldr r1, _0800F184 @ =sa2__gUnknown_03002280
	strb r4, [r1]
	strb r4, [r1, #1]
	movs r0, #0xff
	strb r0, [r1, #2]
	movs r0, #0x20
	strb r0, [r1, #3]
	ldr r0, _0800F188 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl CreateMultiplayerModeSelectScreen
	b _0800F2FA
	.align 2, 0
_0800F170: .4byte gMultiSioStatusFlags
_0800F174: .4byte gPressedKeys
_0800F178: .4byte gMultiSioEnabled
_0800F17C: .4byte gMultiSioSend
_0800F180: .4byte sa2__gUnknown_03004D80
_0800F184: .4byte sa2__gUnknown_03002280
_0800F188: .4byte gCurTask
_0800F18C:
	ldr r0, _0800F1C0 @ =0x00000219
	add r0, ip
	ldrb r1, [r0]
	adds r2, r1, #1
	strb r2, [r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0x3c
	bls _0800F1DC
	ldr r1, _0800F1C4 @ =0x0000FFFF
	movs r0, #0
_0800F1A2:
	bl TasksDestroyInPriorityRange
	ldr r1, _0800F1C8 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0800F1CC @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0800F1D0 @ =sa2__gUnknown_03005390
	strb r4, [r0]
	ldr r1, _0800F1D4 @ =gVramGraphicsCopyCursor
	ldr r0, _0800F1D8 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl MultiPakCommunicationError
	b _0800F2FA
	.align 2, 0
_0800F1C0: .4byte 0x00000219
_0800F1C4: .4byte 0x0000FFFF
_0800F1C8: .4byte gBackgroundsCopyQueueCursor
_0800F1CC: .4byte gBackgroundsCopyQueueIndex
_0800F1D0: .4byte sa2__gUnknown_03005390
_0800F1D4: .4byte gVramGraphicsCopyCursor
_0800F1D8: .4byte gVramGraphicsCopyQueueIndex
_0800F1DC:
	movs r5, #0
	mov r4, ip
	adds r4, #0xc0
	ldr r1, _0800F2B0 @ =0x0000020B
	add r1, ip
	movs r3, #0
_0800F1E8:
	mov r0, r8
	adds r2, r3, r0
	ldrb r0, [r1]
	lsls r0, r0, #1
	strb r0, [r1]
	ldr r0, _0800F2B4 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, r5
	beq _0800F204
	ldrh r0, [r2]
	cmp r0, #0x10
	bls _0800F20E
_0800F204:
	movs r0, #1
	lsls r0, r5
	orrs r7, r0
	lsls r0, r7, #0x18
	lsrs r7, r0, #0x18
_0800F20E:
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800F216
	adds r6, #1
_0800F216:
	adds r1, #1
	adds r3, #0x14
	adds r5, #1
	cmp r5, #3
	ble _0800F1E8
	cmp r6, #0
	bne _0800F226
	movs r6, #1
_0800F226:
	adds r0, r6, #3
	strb r0, [r4]
	mov r4, ip
	adds r4, #0x40
	movs r5, #2
_0800F230:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r4, #0x30
	subs r5, #1
	cmp r5, #0
	bge _0800F230
	ldr r2, _0800F2B8 @ =gMultiSioStatusFlags
	ldr r0, [r2]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800F2DA
	ldr r6, _0800F2BC @ =gMultiSioSend
	movs r0, #0x12
	strh r0, [r6]
	strb r7, [r6, #2]
	ldr r0, _0800F2C0 @ =gLoadedSaveGame
	ldr r1, [r0, #4]
	str r1, [r6, #4]
	ldr r1, _0800F2C4 @ =0x040000D4
	adds r0, #0x10
	str r0, [r1]
	adds r0, r6, #0
	adds r0, #8
	str r0, [r1, #4]
	ldr r0, _0800F2C8 @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r5, #0
	ldr r1, _0800F2CC @ =gMultiplayerConnections
	ldrb r7, [r1]
	movs r4, #1
	mov ip, r2
	movs r3, #0
	ldr r2, _0800F2D0 @ =gMultiSioRecv
	mov r8, r2
_0800F280:
	adds r0, r7, #0
	asrs r0, r5
	ands r0, r4
	cmp r0, #0
	beq _0800F2A6
	cmp r5, #0
	beq _0800F2A6
	adds r1, r4, #0
	lsls r1, r5
	mov r2, ip
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _0800F2D4
	mov r0, r8
	adds r2, r3, r0
	ldrh r0, [r2]
	cmp r0, #0x11
	bne _0800F2D4
_0800F2A6:
	adds r3, #0x14
	adds r5, #1
	cmp r5, #3
	ble _0800F280
	b _0800F2FA
	.align 2, 0
_0800F2B0: .4byte 0x0000020B
_0800F2B4: .4byte 0x04000128
_0800F2B8: .4byte gMultiSioStatusFlags
_0800F2BC: .4byte gMultiSioSend
_0800F2C0: .4byte gLoadedSaveGame
_0800F2C4: .4byte 0x040000D4
_0800F2C8: .4byte 0x84000002
_0800F2CC: .4byte gMultiplayerConnections
_0800F2D0: .4byte gMultiSioRecv
_0800F2D4:
	movs r0, #0x11
	strh r0, [r6]
	b _0800F2FA
_0800F2DA:
	ldr r6, _0800F308 @ =gMultiSioSend
	movs r0, #0x11
	strh r0, [r6]
	strb r7, [r6, #2]
	ldr r0, _0800F30C @ =gLoadedSaveGame
	ldr r1, [r0, #4]
	str r1, [r6, #4]
	ldr r1, _0800F310 @ =0x040000D4
	adds r0, #0x10
	str r0, [r1]
	adds r0, r6, #0
	adds r0, #8
	str r0, [r1, #4]
	ldr r0, _0800F314 @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0800F2FA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F308: .4byte gMultiSioSend
_0800F30C: .4byte gLoadedSaveGame
_0800F310: .4byte 0x040000D4
_0800F314: .4byte 0x84000002

	thumb_func_start sub_800F318
sub_800F318: @ 0x0800F318
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0800F548 @ =0x06010000
	mov r8, r0
	ldr r3, _0800F54C @ =sa2__gUnknown_03004D80
	movs r5, #0
	strb r5, [r3]
	ldr r0, _0800F550 @ =sa2__gUnknown_03002280
	strb r5, [r0]
	strb r5, [r0, #1]
	movs r1, #0xff
	strb r1, [r0, #2]
	movs r2, #0x20
	strb r2, [r0, #3]
	strb r5, [r3, #2]
	strb r5, [r0, #8]
	strb r5, [r0, #9]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0xa]
	strb r2, [r0, #0xb]
	ldr r1, _0800F554 @ =gDispCnt
	ldr r2, _0800F558 @ =0x00001141
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0800F55C @ =gBgCntRegs
	movs r7, #0
	ldr r0, _0800F560 @ =0x00001E03
	strh r0, [r1]
	ldr r3, _0800F564 @ =gCurTask
	ldr r0, [r3]
	ldrh r4, [r0, #6]
	movs r6, #0xc0
	lsls r6, r6, #0x12
	adds r6, r4, r6
	ldr r1, _0800F568 @ =0x03000207
	adds r0, r4, r1
	strb r7, [r0]
	ldr r3, _0800F56C @ =0x03000040
	adds r2, r4, r3
	movs r0, #0x78
	strh r0, [r2, #0x16]
	movs r0, #0x21
	strh r0, [r2, #0x18]
	mov r1, r8
	str r1, [r2, #4]
	movs r3, #0xf0
	lsls r3, r3, #2
	strh r3, [r2, #0x1a]
	strh r5, [r2, #8]
	ldr r1, _0800F570 @ =gUnknown_080BB34C
	ldr r3, _0800F574 @ =gLoadedSaveGame
	ldrb r0, [r3, #0x19]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xa]
	ldr r1, _0800F578 @ =0x03000060
	adds r0, r4, r1
	strb r7, [r0]
	strh r5, [r2, #0x14]
	strh r5, [r2, #0x1c]
	ldr r3, _0800F57C @ =0x03000061
	adds r1, r4, r3
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _0800F580 @ =0x03000062
	adds r0, r4, r1
	movs r3, #0x10
	mov sl, r3
	mov r1, sl
	strb r1, [r0]
	ldr r3, _0800F584 @ =0x03000065
	adds r0, r4, r3
	strb r7, [r0]
	movs r0, #0x80
	lsls r0, r0, #6
	mov sb, r0
	str r0, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	movs r0, #0xa8
	lsls r0, r0, #3
	add r8, r0
	ldr r1, _0800F588 @ =0x03000070
	adds r2, r4, r1
	movs r0, #0x65
	strh r0, [r2, #0x16]
	movs r0, #0x29
	strh r0, [r2, #0x18]
	mov r3, r8
	str r3, [r2, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r2, #0x1a]
	strh r5, [r2, #8]
	subs r0, #0x48
	strh r0, [r2, #0xa]
	adds r1, #0x20
	adds r0, r4, r1
	strb r7, [r0]
	strh r5, [r2, #0x14]
	strh r5, [r2, #0x1c]
	ldr r3, _0800F58C @ =0x03000091
	adds r1, r4, r3
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _0800F590 @ =0x03000092
	adds r0, r4, r1
	mov r3, sl
	strb r3, [r0]
	adds r1, #3
	adds r0, r4, r1
	strb r7, [r0]
	mov r3, sb
	str r3, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	movs r0, #0x8c
	lsls r0, r0, #3
	add r8, r0
	ldr r1, _0800F594 @ =0x030000A0
	adds r2, r4, r1
	movs r3, #0x78
	strh r3, [r2, #0x16]
	movs r0, #0x6d
	strh r0, [r2, #0x18]
	mov r0, r8
	str r0, [r2, #4]
	movs r1, #0xf0
	lsls r1, r1, #2
	strh r1, [r2, #0x1a]
	strh r5, [r2, #8]
	ldr r0, _0800F598 @ =0x0000037B
	strh r0, [r2, #0xa]
	ldr r3, _0800F59C @ =0x030000C0
	adds r1, r4, r3
	movs r0, #4
	strb r0, [r1]
	strh r5, [r2, #0x14]
	strh r5, [r2, #0x1c]
	ldr r0, _0800F5A0 @ =0x030000C1
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _0800F5A4 @ =0x030000C2
	adds r0, r4, r1
	mov r3, sl
	strb r3, [r0]
	adds r1, #3
	adds r0, r4, r1
	strb r7, [r0]
	mov r3, sb
	str r3, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	movs r0, #0x80
	add r8, r0
	ldr r1, _0800F5A8 @ =0x030000D0
	adds r2, r4, r1
	movs r3, #0x78
	strh r3, [r2, #0x16]
	movs r0, #0x7d
	strh r0, [r2, #0x18]
	mov r0, r8
	str r0, [r2, #4]
	movs r1, #0xf0
	lsls r1, r1, #2
	strh r1, [r2, #0x1a]
	strh r5, [r2, #8]
	ldr r1, _0800F5AC @ =gUnknown_080BB350
	ldr r3, _0800F574 @ =gLoadedSaveGame
	ldrb r0, [r3, #0x19]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xa]
	ldr r1, _0800F5B0 @ =0x030000F0
	adds r0, r4, r1
	strb r7, [r0]
	strh r5, [r2, #0x14]
	strh r5, [r2, #0x1c]
	ldr r3, _0800F5B4 @ =0x030000F1
	adds r1, r4, r3
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _0800F5B8 @ =0x030000F2
	adds r0, r4, r1
	mov r3, sl
	strb r3, [r0]
	adds r1, #3
	adds r0, r4, r1
	strb r7, [r0]
	mov r3, sb
	str r3, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r6, #4]
	strh r5, [r6, #0xa]
	ldr r0, _0800F5BC @ =0x0600F000
	str r0, [r6, #0xc]
	strh r5, [r6, #0x18]
	strh r5, [r6, #0x1a]
	movs r0, #0x50
	strh r0, [r6, #0x1c]
	strh r5, [r6, #0x1e]
	strh r5, [r6, #0x20]
	strh r5, [r6, #0x22]
	strh r5, [r6, #0x24]
	movs r0, #0x1e
	strh r0, [r6, #0x26]
	movs r0, #0x14
	strh r0, [r6, #0x28]
	ldr r0, _0800F5C0 @ =0x0300002A
	adds r4, r4, r0
	strb r7, [r4]
	strh r5, [r6, #0x2e]
	adds r0, r6, #0
	bl DrawBackground
	ldr r0, _0800F5C4 @ =gMultiSioEnabled
	strb r7, [r0]
	movs r0, #5     @ MUS_VS_PLEASE_WAIT
	bl m4aSongNumStart
	ldr r0, _0800F5C8 @ =gMultiBootParam
	ldr r1, _0800F5CC @ =gMultiboot_087C0258
	str r1, [r0, #0x28]
	adds r1, r0, #0
	adds r1, #0x4b
	strb r7, [r1]
	bl MultiBootInit
	ldr r2, _0800F564 @ =gCurTask
	ldr r1, [r2]
	ldr r0, _0800F5D0 @ =sub_800F5F0
	str r0, [r1, #8]
	ldr r0, _0800F5D4 @ =0x04000128
	ldrb r1, [r0]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _0800F538
	ldr r1, _0800F5D8 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0800F5DC @ =gBackgroundsCopyQueueCursor
	ldr r0, _0800F5E0 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0800F5E4 @ =sa2__gUnknown_03005390
	strb r7, [r0]
	ldr r1, _0800F5E8 @ =gVramGraphicsCopyCursor
	ldr r0, _0800F5EC @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl MultiPakCommunicationError
_0800F538:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F548: .4byte 0x06010000
_0800F54C: .4byte sa2__gUnknown_03004D80
_0800F550: .4byte sa2__gUnknown_03002280
_0800F554: .4byte gDispCnt
_0800F558: .4byte 0x00001141
_0800F55C: .4byte gBgCntRegs
_0800F560: .4byte 0x00001E03
_0800F564: .4byte gCurTask
_0800F568: .4byte 0x03000207
_0800F56C: .4byte 0x03000040
_0800F570: .4byte gUnknown_080BB34C
_0800F574: .4byte gLoadedSaveGame
_0800F578: .4byte 0x03000060
_0800F57C: .4byte 0x03000061
_0800F580: .4byte 0x03000062
_0800F584: .4byte 0x03000065
_0800F588: .4byte 0x03000070
_0800F58C: .4byte 0x03000091
_0800F590: .4byte 0x03000092
_0800F594: .4byte 0x030000A0
_0800F598: .4byte 0x0000037B
_0800F59C: .4byte 0x030000C0
_0800F5A0: .4byte 0x030000C1
_0800F5A4: .4byte 0x030000C2
_0800F5A8: .4byte 0x030000D0
_0800F5AC: .4byte gUnknown_080BB350
_0800F5B0: .4byte 0x030000F0
_0800F5B4: .4byte 0x030000F1
_0800F5B8: .4byte 0x030000F2
_0800F5BC: .4byte 0x0600F000
_0800F5C0: .4byte 0x0300002A
_0800F5C4: .4byte gMultiSioEnabled
_0800F5C8: .4byte gMultiBootParam
_0800F5CC: .4byte gMultiboot_087C0258
_0800F5D0: .4byte sub_800F5F0
_0800F5D4: .4byte 0x04000128
_0800F5D8: .4byte 0x0000FFFF
_0800F5DC: .4byte gBackgroundsCopyQueueCursor
_0800F5E0: .4byte gBackgroundsCopyQueueIndex
_0800F5E4: .4byte sa2__gUnknown_03005390
_0800F5E8: .4byte gVramGraphicsCopyCursor
_0800F5EC: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start sub_800F5F0
sub_800F5F0: @ 0x0800F5F0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	movs r6, #1
	ldr r0, _0800F66C @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r3, r0
	ldr r0, _0800F670 @ =0x03000208
	adds r2, r3, r0
	ldrh r0, [r2]
	subs r0, #0x80
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0800F61A
	movs r0, #0
	strh r0, [r2]
_0800F61A:
	ldr r1, _0800F674 @ =gBldRegs
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	strh r0, [r1, #4]
	movs r5, #1
	ldr r1, _0800F678 @ =gMultiBootParam
	ldrb r0, [r1, #0x1d]
	asrs r0, r0, #1
	ands r0, r6
	mov r8, r1
	ldr r1, _0800F67C @ =0x030000C0
	adds r3, r3, r1
	cmp r0, #0
	beq _0800F680
	mov r2, r8
	ldrb r0, [r2, #0x1e]
	asrs r0, r0, #1
	ands r0, r6
	cmp r0, #0
	beq _0800F680
	movs r6, #2
_0800F646:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bhi _0800F680
	ldrb r0, [r2, #0x1d]
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800F680
	mov r4, r8
	ldrb r0, [r4, #0x1e]
	asrs r0, r5
	ands r0, r1
	cmp r0, #0
	beq _0800F680
	adds r6, #1
	b _0800F646
	.align 2, 0
_0800F66C: .4byte gCurTask
_0800F670: .4byte 0x03000208
_0800F674: .4byte gBldRegs
_0800F678: .4byte gMultiBootParam
_0800F67C: .4byte 0x030000C0
_0800F680:
	adds r0, r6, #3
	strb r0, [r3]
	movs r5, #0
_0800F686:
	lsls r4, r5, #1
	adds r4, r4, r5
	lsls r4, r4, #4
	adds r4, #0x40
	adds r4, r7, r4
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _0800F686
	ldr r1, _0800F6D0 @ =gMultiBootParam
	ldrb r0, [r1, #0x1e]
	movs r2, #0xe
	ands r2, r0
	mov r8, r1
	cmp r2, #0
	beq _0800F6D4
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	bne _0800F6F0
	cmp r6, #1
	ble _0800F6F0
	adds r4, r7, #0
	adds r4, #0xd0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	b _0800F6EC
	.align 2, 0
_0800F6D0: .4byte gMultiBootParam
_0800F6D4:
	ldr r1, _0800F7BC @ =0x00000207
	adds r0, r7, r1
	strb r2, [r0]
	ldr r2, _0800F7C0 @ =gFlags
	ldr r0, [r2]
	ldr r1, _0800F7C4 @ =0xFFFFBFFF
	ands r0, r1
	ldr r1, _0800F7C8 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r2]
	bl m4aSoundVSyncOn
_0800F6EC:
	ldr r2, _0800F7CC @ =gMultiBootParam
	mov r8, r2
_0800F6F0:
	mov r4, r8
	ldrb r0, [r4, #0x18]
	cmp r0, #0
	bne _0800F796
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _0800F796
	ldr r0, _0800F7D0 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800F796
	ldr r1, _0800F7BC @ =0x00000207
	adds r0, r7, r1
	movs r5, #1
	strb r5, [r0]
	ldr r4, _0800F7C0 @ =gFlags
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	str r0, [r4]
	bl m4aMPlayAllStop
	ldr r0, [r4]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4]
	bl m4aSoundVSyncOff
	ldr r1, _0800F7D4 @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r4, _0800F7D8 @ =0x0000C5FF
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r3, _0800F7DC @ =0x00007FFF
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xc
	ldrh r2, [r1, #0xa]
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xc
	ldrh r2, [r1, #0xa]
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r0, _0800F7E0 @ =0x040000D4
	ldrh r1, [r0, #0xa]
	ands r4, r1
	strh r4, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ands r3, r1
	strh r3, [r0, #0xa]
	ldrh r0, [r0, #0xa]
	ldr r1, _0800F7E4 @ =gMultiboot_087C0258 + 0xC0
	ldr r2, _0800F7E8 @ =gMultiboot_087C22F8
	subs r2, r2, r1
	str r5, [sp]
	mov r0, r8
	movs r3, #4
	bl MultiBootStartMaster
_0800F796:
	ldr r2, _0800F7BC @ =0x00000207
	adds r0, r7, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800F7F0
	ldr r0, _0800F7D0 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800F7F0
	ldr r0, _0800F7EC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl CreateMultiplayerModeSelectScreen
	b _0800F986
	.align 2, 0
_0800F7BC: .4byte 0x00000207
_0800F7C0: .4byte gFlags
_0800F7C4: .4byte 0xFFFFBFFF
_0800F7C8: .4byte 0xFFFF7FFF
_0800F7CC: .4byte gMultiBootParam
_0800F7D0: .4byte gPressedKeys
_0800F7D4: .4byte 0x040000B0
_0800F7D8: .4byte 0x0000C5FF
_0800F7DC: .4byte 0x00007FFF
_0800F7E0: .4byte 0x040000D4
_0800F7E4: .4byte gMultiboot_087C0258 + 0xC0
_0800F7E8: .4byte gMultiboot_087C22F8
_0800F7EC: .4byte gCurTask
_0800F7F0:
	ldr r4, _0800F840 @ =gMultiBootParam
	adds r0, r4, #0
	bl MultiBootMain
	cmp r0, #0x50
	beq _0800F808
	cmp r0, #0x60
	beq _0800F808
	cmp r0, #0x70
	beq _0800F808
	cmp r0, #0x71
	bne _0800F868
_0800F808:
	ldr r1, _0800F844 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0800F848 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0800F84C @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0800F850 @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0800F854 @ =gVramGraphicsCopyCursor
	ldr r0, _0800F858 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r2, _0800F85C @ =gFlags
	ldr r0, [r2]
	ldr r1, _0800F860 @ =0xFFFFBFFF
	ands r0, r1
	ldr r1, _0800F864 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r2]
	bl m4aSoundVSyncOn
	bl MultiPakCommunicationError
	b _0800F986
	.align 2, 0
_0800F840: .4byte gMultiBootParam
_0800F844: .4byte 0x0000FFFF
_0800F848: .4byte gBackgroundsCopyQueueCursor
_0800F84C: .4byte gBackgroundsCopyQueueIndex
_0800F850: .4byte sa2__gUnknown_03005390
_0800F854: .4byte gVramGraphicsCopyCursor
_0800F858: .4byte gVramGraphicsCopyQueueIndex
_0800F85C: .4byte gFlags
_0800F860: .4byte 0xFFFFBFFF
_0800F864: .4byte 0xFFFF7FFF
_0800F868:
	adds r0, r4, #0
	bl MultiBootCheckComplete
	cmp r0, #0
	bne _0800F874
	b _0800F986
_0800F874:
	ldr r4, _0800F8FC @ =gDispCnt
	ldr r1, _0800F900 @ =0x00001341
	adds r0, r1, #0
	strh r0, [r4]
	ldr r1, _0800F904 @ =gBgCntRegs
	movs r5, #0
	movs r2, #0
	ldr r0, _0800F908 @ =0x00001E02
	strh r0, [r1]
	adds r0, #1
	strh r0, [r1, #2]
	ldr r0, _0800F90C @ =gBgScrollRegs
	strh r2, [r0]
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	movs r1, #0x80
	strh r1, [r0, #6]
	ldr r0, _0800F910 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r6, #4]
	strh r2, [r6, #0xa]
	ldr r0, _0800F914 @ =0x0600F000
	str r0, [r6, #0xc]
	strh r2, [r6, #0x18]
	strh r2, [r6, #0x1a]
	movs r0, #0x53
	strh r0, [r6, #0x1c]
	strh r2, [r6, #0x1e]
	strh r2, [r6, #0x20]
	strh r2, [r6, #0x22]
	strh r2, [r6, #0x24]
	movs r0, #0x1e
	strh r0, [r6, #0x26]
	movs r0, #0x1b
	strh r0, [r6, #0x28]
	ldr r0, _0800F918 @ =0x0300002A
	adds r1, r1, r0
	strb r5, [r1]
	strh r2, [r6, #0x2e]
	adds r0, r6, #0
	bl DrawBackground
	ldr r0, _0800F91C @ =gLoadedSaveGame
	ldrb r2, [r0, #0x19]
	cmp r2, #0
	beq _0800F928
	ldrh r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	ldr r1, _0800F920 @ =gWinRegs
	movs r0, #2
	strh r0, [r1, #8]
	movs r0, #1
	strh r0, [r1, #0xa]
	movs r0, #0xf0
	strh r0, [r1]
	ldr r0, _0800F924 @ =0x00002058
	strh r0, [r1, #4]
	b _0800F936
	.align 2, 0
_0800F8FC: .4byte gDispCnt
_0800F900: .4byte 0x00001341
_0800F904: .4byte gBgCntRegs
_0800F908: .4byte 0x00001E02
_0800F90C: .4byte gBgScrollRegs
_0800F910: .4byte gCurTask
_0800F914: .4byte 0x0600F000
_0800F918: .4byte 0x0300002A
_0800F91C: .4byte gLoadedSaveGame
_0800F920: .4byte gWinRegs
_0800F924: .4byte 0x00002058
_0800F928:
	ldrh r0, [r4]
	ldr r1, _0800F994 @ =0x0000DFFF
	ands r1, r0
	strh r1, [r4]
	ldr r0, _0800F998 @ =gWinRegs
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
_0800F936:
	ldr r2, _0800F99C @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	add r0, sp, #4
	movs r4, #0
	strh r4, [r0]
	ldr r1, _0800F9A0 @ =gBgPalette+0x40
	ldr r2, _0800F9A4 @ =0x01000010
	bl CpuSet
	ldr r0, _0800F9A8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0800F9AC @ =sub_800FF38
	str r0, [r1, #8]
	ldr r1, _0800F9B0 @ =gMultiSioSend
	strb r4, [r1]
	ldr r5, _0800F9B4 @ =gMultiSioRecv
	strb r4, [r5]
	strb r4, [r5, #0x14]
	adds r3, r5, #0
	adds r3, #0x28
	strb r4, [r3]
	adds r2, r5, #0
	adds r2, #0x3c
	strb r4, [r2]
	strb r4, [r1, #2]
	ldr r0, _0800F9B8 @ =0x0000F001
	strh r0, [r1]
	strb r4, [r5, #2]
	adds r0, r5, #0
	adds r0, #0x14
	strb r4, [r0, #2]
	strb r4, [r3, #2]
	strb r4, [r2, #2]
	movs r1, #0x81
	lsls r1, r1, #2
	adds r0, r6, r1
	strb r4, [r0]
_0800F986:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F994: .4byte 0x0000DFFF
_0800F998: .4byte gWinRegs
_0800F99C: .4byte gFlags
_0800F9A0: .4byte gBgPalette+0x40
_0800F9A4: .4byte 0x01000010
_0800F9A8: .4byte gCurTask
_0800F9AC: .4byte sub_800FF38
_0800F9B0: .4byte gMultiSioSend
_0800F9B4: .4byte gMultiSioRecv
_0800F9B8: .4byte 0x0000F001

	thumb_func_start sub_800F9BC
sub_800F9BC: @ 0x0800F9BC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _0800FA98 @ =gCurTask
	ldr r3, [r0]
	ldrh r2, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r2
	mov r8, r0
	ldr r0, _0800FA9C @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800F9EC
	ldr r1, _0800FAA0 @ =0x03000204
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #8
	bhi _0800F9EC
	ldr r0, _0800FAA4 @ =sub_800FBF8
	str r0, [r3, #8]
_0800F9EC:
	ldr r5, _0800FA9C @ =gMultiSioStatusFlags
	ldr r0, [r5]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800FA00
	ldr r1, _0800FAA8 @ =0x00000202
	add r1, r8
	movs r0, #1
	strb r0, [r1]
_0800FA00:
	ldr r0, _0800FAAC @ =gMultiSioSend
	ldr r1, _0800FAB0 @ =gLoadedSaveGame
	ldrb r1, [r1, #0x19]
	strb r1, [r0]
	ldr r1, _0800FAB4 @ =gMultiSioRecv
	ldr r2, _0800FAA8 @ =0x00000202
	add r2, r8
	ldrb r2, [r2]
	bl MultiSioMain
	str r0, [r5]
	ldr r4, _0800FAB8 @ =0x00000205
	add r4, r8
	ldrb r0, [r4]
	cmp r0, #0
	bne _0800FA28
	bl MultiSioStart
	movs r0, #1
	strb r0, [r4]
_0800FA28:
	ldr r0, [r5]
	movs r1, #0xf0
	lsls r1, r1, #4
	ands r0, r1
	lsrs r6, r0, #8
	movs r3, #1
_0800FA34:
	adds r1, r3, #0
	adds r1, #8
	movs r2, #1
	adds r0, r2, #0
	lsls r0, r1
	ldr r1, [r5]
	ands r0, r1
	cmp r0, #0
	beq _0800FAEC
	adds r4, r2, #0
	lsls r4, r3
	ands r4, r1
	cmp r4, #0
	bne _0800FAE4
	ldr r0, _0800FABC @ =gMultiplayerMissingHeartbeats
	adds r0, r3, r0
	ldrb r1, [r0]
	adds r2, r1, #1
	strb r2, [r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0xb4
	bls _0800FAEC
	movs r0, #0
	ldr r1, _0800FAC0 @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _0800FAC4 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0800FAC8 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0800FACC @ =sa2__gUnknown_03005390
	strb r4, [r0]
	ldr r1, _0800FAD0 @ =gVramGraphicsCopyCursor
	ldr r0, _0800FAD4 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r2, _0800FAD8 @ =gFlags
	ldr r1, [r2]
	ldr r0, _0800FADC @ =0xFFFFBFFF
	ands r1, r0
	ldr r0, _0800FAE0 @ =0xFFFF7FFF
	ands r1, r0
	str r1, [r2]
	bl m4aSoundVSyncOn
	bl MultiPakCommunicationError
	b _0800FBD8
	.align 2, 0
_0800FA98: .4byte gCurTask
_0800FA9C: .4byte gMultiSioStatusFlags
_0800FAA0: .4byte 0x03000204
_0800FAA4: .4byte sub_800FBF8
_0800FAA8: .4byte 0x00000202
_0800FAAC: .4byte gMultiSioSend
_0800FAB0: .4byte gLoadedSaveGame
_0800FAB4: .4byte gMultiSioRecv
_0800FAB8: .4byte 0x00000205
_0800FABC: .4byte gMultiplayerMissingHeartbeats
_0800FAC0: .4byte 0x0000FFFF
_0800FAC4: .4byte gBackgroundsCopyQueueCursor
_0800FAC8: .4byte gBackgroundsCopyQueueIndex
_0800FACC: .4byte sa2__gUnknown_03005390
_0800FAD0: .4byte gVramGraphicsCopyCursor
_0800FAD4: .4byte gVramGraphicsCopyQueueIndex
_0800FAD8: .4byte gFlags
_0800FADC: .4byte 0xFFFFBFFF
_0800FAE0: .4byte 0xFFFF7FFF
_0800FAE4:
	ldr r0, _0800FB40 @ =gMultiplayerMissingHeartbeats
	adds r0, r3, r0
	movs r1, #0
	strb r1, [r0]
_0800FAEC:
	adds r0, r6, #0
	lsls r0, r3
	cmp r0, #0
	beq _0800FB60
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r1, _0800FB44 @ =gMultiSioRecv
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0x10
	bne _0800FB60
	movs r1, #0
	ldr r2, _0800FB48 @ =gCurTask
	mov r8, r2
	ldr r6, _0800FB40 @ =gMultiplayerMissingHeartbeats
	ldr r7, _0800FB4C @ =sub_8010048
	ldr r0, _0800FB50 @ =gDispCnt
	mov ip, r0
	ldr r5, _0800FB54 @ =gMultiplayerCharacters
	movs r2, #0
	ldr r4, _0800FB58 @ =gMPRingCollectWins
	ldr r3, _0800FB5C @ =sa2__gUnknown_030054B4
_0800FB1A:
	adds r0, r1, r5
	strb r2, [r0]
	adds r0, r1, r4
	strb r2, [r0]
	adds r0, r1, r3
	strb r1, [r0]
	adds r0, r1, r6
	strb r2, [r0]
	adds r1, #1
	cmp r1, #3
	bls _0800FB1A
	mov r1, r8
	ldr r0, [r1]
	str r7, [r0, #8]
	movs r0, #0x40
	mov r2, ip
	strh r0, [r2]
	b _0800FBD8
	.align 2, 0
_0800FB40: .4byte gMultiplayerMissingHeartbeats
_0800FB44: .4byte gMultiSioRecv
_0800FB48: .4byte gCurTask
_0800FB4C: .4byte sub_8010048
_0800FB50: .4byte gDispCnt
_0800FB54: .4byte gMultiplayerCharacters
_0800FB58: .4byte gMPRingCollectWins
_0800FB5C: .4byte sa2__gUnknown_030054B4
_0800FB60:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bhi _0800FB6C
	b _0800FA34
_0800FB6C:
	ldr r2, _0800FBE4 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	movs r7, #0x81
	lsls r7, r7, #2
	add r7, r8
	ldrb r0, [r7]
	lsls r0, r0, #4
	adds r0, #8
	movs r1, #9
	bl __udivsi3
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	lsls r1, r4, #1
	ldr r6, _0800FBE8 @ =gBgPalette+0x40
	adds r1, r1, r6
	movs r2, #0x10
	subs r2, r2, r4
	ldr r0, _0800FBEC @ =0x001FFFFF
	ands r2, r0
	movs r5, #0x80
	lsls r5, r5, #0x11
	orrs r2, r5
	mov r0, sp
	bl CpuSet
	mov r0, sp
	adds r0, #2
	ldr r2, _0800FBF0 @ =0x0000027F
	adds r1, r2, #0
	strh r1, [r0]
	orrs r4, r5
	adds r1, r6, #0
	adds r2, r4, #0
	bl CpuSet
	ldr r0, _0800FBF4 @ =gMultiSioRecv
	ldrb r2, [r0, #2]
	ldrb r0, [r7]
	cmp r0, r2
	beq _0800FBD8
	movs r1, #0
	strb r2, [r7]
	movs r0, #0xfc
	lsls r0, r0, #1
	add r0, r8
	str r1, [r0]
_0800FBD8:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800FBE4: .4byte gFlags
_0800FBE8: .4byte gBgPalette+0x40
_0800FBEC: .4byte 0x001FFFFF
_0800FBF0: .4byte 0x0000027F
_0800FBF4: .4byte gMultiSioRecv

	thumb_func_start sub_800FBF8
sub_800FBF8: @ 0x0800FBF8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r5, _0800FC80 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	bl MultiSioStop
	ldr r0, _0800FC84 @ =0x03000204
	adds r3, r4, r0
	ldrb r0, [r3]
	cmp r0, #9
	bne _0800FCAC
	movs r1, #0
	ldr r0, _0800FC88 @ =gIntrTable
	mov ip, r0
	ldr r0, _0800FC8C @ =gMultiSioEnabled
	mov r8, r0
	ldr r0, _0800FC90 @ =gMultiSioStatusFlags
	mov sb, r0
	ldr r6, _0800FC94 @ =gMultiplayerCharacters
	movs r2, #0
	ldr r5, _0800FC98 @ =gMPRingCollectWins
	ldr r4, _0800FC9C @ =sa2__gUnknown_030054B4
	ldr r3, _0800FCA0 @ =gMultiplayerMissingHeartbeats
_0800FC32:
	adds r0, r1, r6
	strb r2, [r0]
	adds r0, r1, r5
	strb r2, [r0]
	adds r0, r1, r4
	strb r1, [r0]
	adds r0, r1, r3
	strb r2, [r0]
	adds r1, #1
	cmp r1, #3
	bls _0800FC32
	movs r1, #0xf8
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	mov r1, ip
	str r0, [r1]
	movs r0, #1
	mov r1, r8
	strb r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	movs r1, #0xf0
	lsls r1, r1, #4
	ands r0, r1
	lsrs r0, r0, #8
	bl MultiSioInit
	bl MultiSioStart
	ldr r0, _0800FC80 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0800FCA4 @ =sub_8010048
	str r0, [r1, #8]
	ldr r1, _0800FCA8 @ =gDispCnt
	movs r0, #0x40
	strh r0, [r1]
	b _0800FCD6
	.align 2, 0
_0800FC80: .4byte gCurTask
_0800FC84: .4byte 0x03000204
_0800FC88: .4byte gIntrTable
_0800FC8C: .4byte gMultiSioEnabled
_0800FC90: .4byte gMultiSioStatusFlags
_0800FC94: .4byte gMultiplayerCharacters
_0800FC98: .4byte gMPRingCollectWins
_0800FC9C: .4byte sa2__gUnknown_030054B4
_0800FCA0: .4byte gMultiplayerMissingHeartbeats
_0800FCA4: .4byte sub_8010048
_0800FCA8: .4byte gDispCnt
_0800FCAC:
	ldr r0, _0800FCE4 @ =0x030001F0
	adds r2, r4, r0
	ldr r1, _0800FCE8 @ =gIntrTable
	ldr r0, [r1]
	str r0, [r2]
	ldr r0, _0800FCEC @ =Sio32MultiLoadIntr
	str r0, [r1]
	ldr r0, _0800FCF0 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	ldr r2, _0800FCF4 @ =gUnknown_080BB3F8
	ldrb r1, [r3]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl Sio32MultiLoadInit
	ldr r1, [r5]
	ldr r0, _0800FCF8 @ =sub_8010020
	str r0, [r1, #8]
_0800FCD6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800FCE4: .4byte 0x030001F0
_0800FCE8: .4byte gIntrTable
_0800FCEC: .4byte Sio32MultiLoadIntr
_0800FCF0: .4byte gMultiSioStatusFlags
_0800FCF4: .4byte gUnknown_080BB3F8
_0800FCF8: .4byte sub_8010020

	thumb_func_start sub_800FCFC
sub_800FCFC: @ 0x0800FCFC
	push {lr}
	ldr r3, _0800FD64 @ =gGameMode
	movs r2, #6
	ldr r0, _0800FD68 @ =gRingsScatterTask
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800FD6C @ =gDummyTask
	str r1, [r0]
	ldr r0, _0800FD70 @ =gGameStageTask
	str r1, [r0]
	ldr r0, _0800FD74 @ =gPlayer
	str r1, [r0, #0x60]
	ldr r0, _0800FD78 @ =gPartner
	str r1, [r0, #0x60]
	ldr r0, _0800FD7C @ =gCamera
	str r1, [r0, #0x30]
	ldr r0, _0800FD80 @ =sa2__gUnknown_0300543C
	strb r1, [r0]
	strb r2, [r3]
	ldr r0, _0800FD84 @ =gEntitiesManagerTask
	str r1, [r0]
	ldr r3, _0800FD88 @ =gMultiplayerPlayerTasks
	movs r2, #0
_0800FD2A:
	lsls r0, r1, #2
	adds r0, r0, r3
	str r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0800FD2A
	bl ApplyGameStageSettings
	ldr r2, _0800FD8C @ =gStageFlags
	ldrh r1, [r2]
	ldr r0, _0800FD90 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2]
	ldr r2, _0800FD74 @ =gPlayer
	ldr r0, [r2, #0x10]
	ldr r1, _0800FD94 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r2, #0x10]
	ldr r1, _0800FD98 @ =gUnknown_030060E0
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	orrs r0, r1
	ldrh r1, [r2, #0x38]
	orrs r0, r1
	strh r0, [r2, #0x38]
	pop {r0}
	bx r0
	.align 2, 0
_0800FD64: .4byte gGameMode
_0800FD68: .4byte gRingsScatterTask
_0800FD6C: .4byte gDummyTask
_0800FD70: .4byte gGameStageTask
_0800FD74: .4byte gPlayer
_0800FD78: .4byte gPartner
_0800FD7C: .4byte gCamera
_0800FD80: .4byte sa2__gUnknown_0300543C
_0800FD84: .4byte gEntitiesManagerTask
_0800FD88: .4byte gMultiplayerPlayerTasks
_0800FD8C: .4byte gStageFlags
_0800FD90: .4byte 0x0000FFFE
_0800FD94: .4byte 0xFFDFFFFF
_0800FD98: .4byte gUnknown_030060E0

	thumb_func_start sub_800FD9C
sub_800FD9C: @ 0x0800FD9C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov sb, r0
	movs r0, #0
	mov ip, r0
	ldr r1, _0800FDD4 @ =gLoadedSaveGame + 0x380
	mov sl, r1
	mov r5, sb
	adds r5, #4
	str r5, [sp, #0x10]
	mov r7, sl
	mov r8, r0
_0800FDBC:
	ldr r4, _0800FDD4 @ =gLoadedSaveGame + 0x380
	add r4, r8
	movs r6, #1
	movs r3, #0
	mov r2, sb
	ldrb r1, [r2, #4]
	ldrb r0, [r4]
	cmp r1, r0
	beq _0800FDD8
	movs r6, #0
	b _0800FE38
	.align 2, 0
_0800FDD4: .4byte gLoadedSaveGame + 0x380
_0800FDD8:
	adds r3, #1
	cmp r3, #0xb
	bhi _0800FDEC
	adds r0, r5, r3
	adds r1, r4, r3
	ldrb r2, [r0]
	ldrb r0, [r1]
	cmp r2, r0
	beq _0800FDD8
	movs r6, #0
_0800FDEC:
	cmp r6, #0
	beq _0800FE38
	mov r0, sp
	adds r1, r7, #0
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
	mov r2, ip
	cmp r2, #0
	beq _0800FE22
	ldr r4, _0800FE30 @ =gLoadedSaveGame
	movs r3, #0xe0
	lsls r3, r3, #2
_0800FE08:
	lsls r1, r2, #4
	adds r1, r1, r4
	subs r2, #1
	lsls r0, r2, #4
	adds r0, r0, r4
	adds r1, r1, r3
	adds r0, r0, r3
	ldm r0!, {r5, r6, r7}
	stm r1!, {r5, r6, r7}
	ldr r0, [r0]
	str r0, [r1]
	cmp r2, #0
	bne _0800FE08
_0800FE22:
	ldr r0, _0800FE34 @ =gLoadedSaveGame + 0x380
	mov r1, sp
	ldm r1!, {r2, r6, r7}
	stm r0!, {r2, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
	b _0800FE94
	.align 2, 0
_0800FE30: .4byte gLoadedSaveGame
_0800FE34: .4byte gLoadedSaveGame + 0x380
_0800FE38:
	adds r7, #0x10
	movs r3, #0x10
	add r8, r3
	movs r4, #1
	add ip, r4
	mov r6, ip
	cmp r6, #9
	bls _0800FDBC
	movs r2, #9
	ldr r4, _0800FEA4 @ =gLoadedSaveGame
	movs r3, #0xe0
	lsls r3, r3, #2
_0800FE50:
	lsls r1, r2, #4
	adds r1, r1, r4
	subs r2, #1
	lsls r0, r2, #4
	adds r0, r0, r4
	adds r1, r1, r3
	adds r0, r0, r3
	ldm r0!, {r5, r6, r7}
	stm r1!, {r5, r6, r7}
	ldr r0, [r0]
	str r0, [r1]
	cmp r2, #0
	bne _0800FE50
	ldr r5, [sp, #0x10]
	mov r4, sl
_0800FE6E:
	ldrb r0, [r5]
	strb r0, [r4]
	adds r5, #1
	adds r4, #1
	adds r2, #1
	cmp r2, #0xb
	bls _0800FE6E
	ldr r7, _0800FEA4 @ =gLoadedSaveGame
	movs r1, #0xe3
	lsls r1, r1, #2
	adds r0, r7, r1
	movs r1, #0
	strb r1, [r0]
	ldr r2, _0800FEA8 @ =0x0000038D
	adds r0, r7, r2
	strb r1, [r0]
	ldr r3, _0800FEAC @ =0x0000038E
	adds r0, r7, r3
	strb r1, [r0]
_0800FE94:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800FEA4: .4byte gLoadedSaveGame
_0800FEA8: .4byte 0x0000038D
_0800FEAC: .4byte 0x0000038E

	thumb_func_start ShowSinglePakResults
ShowSinglePakResults: @ 0x0800FEB0
	push {r4, r5, r6, lr}
	movs r1, #0
	ldr r6, _0800FEE4 @ =gMultiplayerCharacters
	movs r2, #0
	ldr r5, _0800FEE8 @ =gMPRingCollectWins
	ldr r4, _0800FEEC @ =sa2__gUnknown_030054B4
	ldr r3, _0800FEF0 @ =gMultiplayerMissingHeartbeats
_0800FEBE:
	adds r0, r1, r6
	strb r2, [r0]
	adds r0, r1, r5
	strb r2, [r0]
	adds r0, r1, r4
	strb r1, [r0]
	adds r0, r1, r3
	strb r2, [r0]
	adds r1, #1
	cmp r1, #3
	bls _0800FEBE
	bl MultiSioStart
	movs r0, #0
	bl CreateMultiplayerSinglePakResultsScreen
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800FEE4: .4byte gMultiplayerCharacters
_0800FEE8: .4byte gMPRingCollectWins
_0800FEEC: .4byte sa2__gUnknown_030054B4
_0800FEF0: .4byte gMultiplayerMissingHeartbeats

	thumb_func_start sub_800FEF4
sub_800FEF4: @ 0x0800FEF4
	push {lr}
	ldr r0, _0800FF28 @ =gCurTask
	ldr r1, [r0]
	ldrh r0, [r1, #6]
	ldr r3, _0800FF2C @ =0x03000208
	adds r2, r0, r3
	ldrh r0, [r2]
	subs r0, #0x80
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _0800FF14
	movs r0, #0
	strh r0, [r2]
	ldr r0, _0800FF30 @ =sub_800E648
	str r0, [r1, #8]
_0800FF14:
	ldr r1, _0800FF34 @ =gBldRegs
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	strh r0, [r1, #4]
	bl sub_800E798
	pop {r0}
	bx r0
	.align 2, 0
_0800FF28: .4byte gCurTask
_0800FF2C: .4byte 0x03000208
_0800FF30: .4byte sub_800E648
_0800FF34: .4byte gBldRegs

	thumb_func_start sub_800FF38
sub_800FF38: @ 0x0800FF38
	push {lr}
	ldr r1, _0800FF5C @ =gMultiplayerMissingHeartbeats
	movs r0, #0
	strb r0, [r1, #3]
	strb r0, [r1, #2]
	strb r0, [r1, #1]
	strb r0, [r1]
	bl sub_800FF94
	ldr r0, _0800FF60 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0800FF64 @ =sub_800F9BC
	str r0, [r1, #8]
	bl MultiSioStart
	pop {r0}
	bx r0
	.align 2, 0
_0800FF5C: .4byte gMultiplayerMissingHeartbeats
_0800FF60: .4byte gCurTask
_0800FF64: .4byte sub_800F9BC

	thumb_func_start sub_800FF68
sub_800FF68: @ 0x0800FF68
	push {lr}
	ldr r1, _0800FF88 @ =gMultiplayerMissingHeartbeats
	movs r0, #0
	strb r0, [r1, #3]
	strb r0, [r1, #2]
	strb r0, [r1, #1]
	strb r0, [r1]
	bl sub_800FF94
	ldr r0, _0800FF8C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0800FF90 @ =sub_800FFE0
	str r0, [r1, #8]
	pop {r0}
	bx r0
	.align 2, 0
_0800FF88: .4byte gMultiplayerMissingHeartbeats
_0800FF8C: .4byte gCurTask
_0800FF90: .4byte sub_800FFE0

	thumb_func_start sub_800FF94
sub_800FF94: @ 0x0800FF94
	push {r4, r5, lr}
	ldr r0, _0800FFC8 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	ldr r1, _0800FFCC @ =gIntrTable
	ldr r0, _0800FFD0 @ =gMultiSioIntrFuncBuf
	str r0, [r1]
	ldr r5, _0800FFD4 @ =gMultiSioStatusFlags
	ldr r0, [r5]
	movs r1, #0xf0
	lsls r1, r1, #4
	ands r0, r1
	lsrs r0, r0, #8
	bl MultiSioInit
	ldr r0, _0800FFD8 @ =0x03000202
	adds r1, r4, r0
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0800FFDC @ =0x03000205
	adds r4, r4, r1
	strb r0, [r4]
	str r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800FFC8: .4byte gCurTask
_0800FFCC: .4byte gIntrTable
_0800FFD0: .4byte gMultiSioIntrFuncBuf
_0800FFD4: .4byte gMultiSioStatusFlags
_0800FFD8: .4byte 0x03000202
_0800FFDC: .4byte 0x03000205

	thumb_func_start sub_800FFE0
sub_800FFE0: @ 0x0800FFE0
	push {lr}
	ldr r0, _08010010 @ =gMultiSioStatusFlags
	ldr r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08010006
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _0800FFFE
	ldr r1, _08010014 @ =gMultiSioSend
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
_0800FFFE:
	ldr r0, _08010018 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801001C @ =sub_800F9BC
	str r0, [r1, #8]
_08010006:
	bl sub_800F9BC
	pop {r0}
	bx r0
	.align 2, 0
_08010010: .4byte gMultiSioStatusFlags
_08010014: .4byte gMultiSioSend
_08010018: .4byte gCurTask
_0801001C: .4byte sub_800F9BC

	thumb_func_start sub_8010020
sub_8010020: @ 0x08010020
	push {lr}
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	mov r0, sp
	bl Sio32MultiLoadMain
	cmp r0, #0
	beq _0801003A
	ldr r0, _08010040 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08010044 @ =sub_800FF68
	str r0, [r1, #8]
_0801003A:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08010040: .4byte gCurTask
_08010044: .4byte sub_800FF68

	thumb_func_start sub_8010048
sub_8010048: @ 0x08010048
	push {lr}
	ldr r0, _0801005C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	movs r0, #0
	bl CreateMultiplayerSinglePakResultsScreen
	pop {r0}
	bx r0
	.align 2, 0
_0801005C: .4byte gCurTask

	thumb_func_start sub_8010060
sub_8010060: @ 0x08010060
	push {lr}
	ldr r0, _08010094 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08010090
	movs r0, #0x6b
	bl m4aSongNumStart
	ldr r0, _08010098 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801009C @ =sub_800E648
	str r0, [r1, #8]
	ldr r1, _080100A0 @ =sa2__gUnknown_03004D80
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080100A4 @ =sa2__gUnknown_03002280
	strb r0, [r1]
	strb r0, [r1, #1]
	movs r0, #0xff
	strb r0, [r1, #2]
	movs r0, #0x20
	strb r0, [r1, #3]
_08010090:
	pop {r0}
	bx r0
	.align 2, 0
_08010094: .4byte gPressedKeys
_08010098: .4byte gCurTask
_0801009C: .4byte sub_800E648
_080100A0: .4byte sa2__gUnknown_03004D80
_080100A4: .4byte sa2__gUnknown_03002280
@ --- End of end of game/multiboot/connection.c ---

@ --- Start of Time Attack Menu (TODO: different to SA2?) ---
	thumb_func_start CreateTimeAttackMenu
CreateTimeAttackMenu: @ 0x080100A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	ldr r1, _080101D4 @ =gDispCnt
	movs r2, #0x8a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _080101D8 @ =gBgCntRegs
	movs r3, #0
	mov r8, r3
	movs r5, #0
	ldr r0, _080101DC @ =0x00000F84
	strh r0, [r1]
	ldr r0, _080101E0 @ =gBgScrollRegs
	strh r5, [r0, #2]
	ldr r0, _080101E4 @ =Task_TimeAttackMenu
	movs r2, #0x80
	lsls r2, r2, #6
	str r5, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	str r5, [r7, #0x70]
	ldr r1, _080101E8 @ =0x0300006C
	adds r0, r4, r1
	strh r5, [r0]
	ldr r2, _080101EC @ =0x03000074
	adds r0, r4, r2
	mov r3, r8
	strb r3, [r0]
	adds r1, #0xa
	adds r0, r4, r1
	strh r5, [r0]
	ldr r3, _080101F0 @ =0x0300000C
	adds r2, r4, r3
	movs r0, #0xe0
	strh r0, [r2, #0x16]
	movs r0, #0x40
	mov sl, r0
	mov r1, sl
	strh r1, [r2, #0x18]
	ldr r0, _080101F4 @ =0x06010000
	str r0, [r2, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r2, #0x1a]
	strh r5, [r2, #8]
	ldr r1, _080101F8 @ =gUnknown_080BB35C
	ldr r6, _080101FC @ =gLoadedSaveGame
	ldrb r0, [r6, #0x19]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xa]
	ldr r1, _08010200 @ =gUnknown_080BB360
	ldrb r0, [r6, #0x19]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r3, #0x20
	adds r0, r4, r3
	strb r1, [r0]
	strh r5, [r2, #0x14]
	strh r5, [r2, #0x1c]
	ldr r0, _08010204 @ =0x0300002D
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08010208 @ =0x0300002E
	adds r0, r4, r1
	movs r3, #0x10
	mov sb, r3
	mov r1, sb
	strb r1, [r0]
	ldr r3, _0801020C @ =0x03000031
	adds r0, r4, r3
	mov r1, r8
	strb r1, [r0]
	str r5, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	ldr r3, _08010210 @ =0x0300003C
	adds r2, r4, r3
	strh r5, [r2, #0x16]
	mov r0, sl
	strh r0, [r2, #0x18]
	ldr r0, _08010214 @ =0x06012000
	str r0, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r2, #0x1a]
	strh r5, [r2, #8]
	subs r0, #0xa4
	strh r0, [r2, #0xa]
	ldr r1, _08010218 @ =0x0300005C
	adds r0, r4, r1
	mov r3, r8
	strb r3, [r0]
	strh r5, [r2, #0x14]
	strh r5, [r2, #0x1c]
	ldr r0, _0801021C @ =0x0300005D
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08010220 @ =0x0300005E
	adds r0, r4, r1
	mov r3, sb
	strb r3, [r0]
	ldr r0, _08010224 @ =0x03000061
	adds r4, r4, r0
	mov r1, r8
	strb r1, [r4]
	str r5, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	bl sub_80535FC
	bl sub_8053674
	add r1, sp, #0x30
	movs r0, #0x80
	strb r0, [r1]
	mov r0, sp
	adds r0, #0x2f
	mov r2, r8
	strb r2, [r0]
	ldrb r0, [r6, #0x19]
	cmp r0, #0
	beq _08010234
	ldr r0, _08010228 @ =gUnknown_0869F034
	str r0, [sp, #0x18]
	ldr r0, _0801022C @ =gUnknown_0869EE34
	str r0, [sp, #0x24]
	ldr r0, _08010230 @ =gUnknown_086A10F4
	str r0, [sp, #0x14]
	movs r0, #0x83
	lsls r0, r0, #6
	b _08010244
	.align 2, 0
_080101D4: .4byte gDispCnt
_080101D8: .4byte gBgCntRegs
_080101DC: .4byte 0x00000F84
_080101E0: .4byte gBgScrollRegs
_080101E4: .4byte Task_TimeAttackMenu
_080101E8: .4byte 0x0300006C
_080101EC: .4byte 0x03000074
_080101F0: .4byte 0x0300000C
_080101F4: .4byte 0x06010000
_080101F8: .4byte gUnknown_080BB35C
_080101FC: .4byte gLoadedSaveGame
_08010200: .4byte gUnknown_080BB360
_08010204: .4byte 0x0300002D
_08010208: .4byte 0x0300002E
_0801020C: .4byte 0x03000031
_08010210: .4byte 0x0300003C
_08010214: .4byte 0x06012000
_08010218: .4byte 0x0300005C
_0801021C: .4byte 0x0300005D
_08010220: .4byte 0x0300005E
_08010224: .4byte 0x03000061
_08010228: .4byte gUnknown_0869F034
_0801022C: .4byte gUnknown_0869EE34
_08010230: .4byte gUnknown_086A10F4
_08010234:
	ldr r0, _0801029C @ =gUnknown_0869CCF4
	str r0, [sp, #0x18]
	ldr r0, _080102A0 @ =gUnknown_0869CAF4
	str r0, [sp, #0x24]
	ldr r0, _080102A4 @ =gUnknown_0869E934
	str r0, [sp, #0x14]
	movs r0, #0xe2
	lsls r0, r0, #5
_08010244:
	str r0, [sp, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x28]
	movs r0, #0xa0
	lsls r0, r0, #3
	str r0, [sp, #0x20]
	add r0, sp, #0x2c
	movs r4, #0
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	mov r1, sp
	adds r1, #0x2e
	movs r0, #0x15
	strb r0, [r1]
	add r0, sp, #4
	bl sub_80528AC
	strh r4, [r7]
	movs r0, #1
	strh r0, [r7, #2]
	movs r0, #2
	strh r0, [r7, #4]
	strh r4, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r7, #8]
	movs r0, #0x10
	strb r0, [r7, #0xa]
	adds r0, r7, #0
	bl sub_805423C
	movs r0, #3     @ MUS_CHARACTER_SELECTION
	bl m4aSongNumStartOrContinue
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801029C: .4byte gUnknown_0869CCF4
_080102A0: .4byte gUnknown_0869CAF4
_080102A4: .4byte gUnknown_0869E934

	thumb_func_start Task_TimeAttackMenu
Task_TimeAttackMenu: @ 0x080102A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08010394 @ =gCurTask
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r7
	mov r8, r0
	ldr r2, [r0, #0x70]
	adds r1, r2, #0
	adds r1, #0x80
	str r1, [r0, #0x70]
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	ble _080102D8
	ldr r1, _08010398 @ =0xFFFF8080
	adds r0, r2, r1
	mov r2, r8
	str r0, [r2, #0x70]
_080102D8:
	ldr r0, _0801039C @ =0x0300000C
	adds r6, r7, r0
	ldr r1, _080103A0 @ =0x03000074
	adds r4, r7, r1
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x40
	strh r0, [r6, #0x18]
	ldr r2, _080103A4 @ =gUnknown_080BB360
	ldr r1, _080103A8 @ =gLoadedSaveGame
	ldrb r0, [r4]
	lsls r0, r0, #1
	ldrb r1, [r1, #0x19]
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r1, [r0]
	ldr r2, _080103AC @ =0x0300002C
	adds r0, r7, r2
	strb r1, [r0]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	mov r1, r8
	ldr r0, [r1, #0x70]
	asrs r0, r0, #8
	adds r5, r0, #0
	subs r5, #0x80
	movs r0, #0xe0
	subs r0, r0, r5
	ldr r2, _080103B0 @ =0x0300003C
	adds r2, r2, r7
	mov sl, r2
	mov sb, r4
	cmp r0, #0
	ble _08010338
	movs r4, #0xe0
	movs r7, #0xe0
_08010326:
	subs r0, r4, r5
	strh r0, [r6, #0x16]
	adds r0, r6, #0
	bl DisplaySprite
	adds r5, #0x80
	subs r0, r7, r5
	cmp r0, #0
	bgt _08010326
_08010338:
	mov r6, sl
	mov r0, sb
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x36
	strh r0, [r6, #0x18]
	movs r4, #0
_0801034A:
	lsls r0, r4, #5
	strh r0, [r6, #0x16]
	adds r0, r6, #0
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _0801034A
	mov r0, r8
	bl sub_805423C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08010384
	ldr r2, _080103B4 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _080103B8 @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _080103BC @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	ldr r0, _08010394 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080103C0 @ =Task_80103C4
	str r0, [r1, #8]
_08010384:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010394: .4byte gCurTask
_08010398: .4byte 0xFFFF8080
_0801039C: .4byte 0x0300000C
_080103A0: .4byte 0x03000074
_080103A4: .4byte gUnknown_080BB360
_080103A8: .4byte gLoadedSaveGame
_080103AC: .4byte 0x0300002C
_080103B0: .4byte 0x0300003C
_080103B4: .4byte gDispCnt
_080103B8: .4byte 0x00001FFF
_080103BC: .4byte gBldRegs
_080103C0: .4byte Task_80103C4

	thumb_func_start Task_80103C4
Task_80103C4: @ 0x080103C4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08010414 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r5, r0
	adds r6, r7, #0
	movs r0, #4
	ldrsh r4, [r7, r0]
	cmp r4, #1
	beq _0801048C
	ldr r0, _08010418 @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08010420
	movs r0, #0
	str r0, [r7, #0x70]
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r2, _0801041C @ =0x03000074
	adds r1, r5, r2
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08010444
	movs r0, #1
	strb r0, [r1]
	b _08010444
	.align 2, 0
_08010414: .4byte gCurTask
_08010418: .4byte gRepeatedKeys
_0801041C: .4byte 0x03000074
_08010420:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08010444
	str r4, [r7, #0x70]
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r0, _08010468 @ =0x03000074
	adds r1, r5, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08010444
	strb r4, [r1]
_08010444:
	ldr r0, _0801046C @ =gPressedKeys
	ldrh r2, [r0]
	movs r3, #1
	adds r1, r3, #0
	ands r1, r2
	cmp r1, #0
	beq _08010470
	movs r0, #0
	strh r3, [r6, #4]
	strh r0, [r6, #6]
	adds r0, r7, #0
	adds r0, #0x76
	strh r3, [r0]
	movs r0, #0x6a
	bl m4aSongNumStart
	b _080104D0
	.align 2, 0
_08010468: .4byte 0x03000074
_0801046C: .4byte gPressedKeys
_08010470:
	movs r4, #2
	adds r0, r4, #0
	ands r0, r2
	cmp r0, #0
	beq _080104D0
	strh r3, [r6, #4]
	strh r1, [r6, #6]
	adds r0, r7, #0
	adds r0, #0x76
	strh r4, [r0]
	movs r0, #0x6b
	bl m4aSongNumStart
	b _080104D0
_0801048C:
	adds r0, r7, #0
	bl sub_805423C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080104D0
	ldr r1, _080104B8 @ =0x03000076
	adds r0, r5, r1
	ldrh r0, [r0]
	ands r4, r0
	cmp r4, #0
	beq _080104C4
	ldr r1, _080104BC @ =gUnknown_080BB364
	ldr r2, _080104C0 @ =0x03000074
	adds r0, r5, r2
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	b _08010568
	.align 2, 0
_080104B8: .4byte 0x03000076
_080104BC: .4byte gUnknown_080BB364
_080104C0: .4byte 0x03000074
_080104C4:
	bl sub_8010580
	movs r0, #3
	bl m4aSongNumStop
	b _08010568
_080104D0:
	ldr r2, [r7, #0x70]
	adds r1, r2, #0
	adds r1, #0x80
	str r1, [r7, #0x70]
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	ble _080104E6
	ldr r1, _08010574 @ =0xFFFF8080
	adds r0, r2, r1
	str r0, [r7, #0x70]
_080104E6:
	adds r6, r7, #0
	adds r6, #0xc
	adds r4, r7, #0
	adds r4, #0x74
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x40
	strh r0, [r6, #0x18]
	ldr r2, _08010578 @ =gUnknown_080BB360
	ldr r1, _0801057C @ =gLoadedSaveGame
	ldrb r0, [r4]
	lsls r0, r0, #1
	ldrb r1, [r1, #0x19]
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x2c
	strb r1, [r0]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	ldr r0, [r7, #0x70]
	asrs r0, r0, #8
	adds r5, r0, #0
	subs r5, #0x80
	movs r0, #0xe0
	subs r0, r0, r5
	mov sb, r4
	adds r7, #0x3c
	mov r8, r7
	cmp r0, #0
	ble _08010542
	movs r4, #0xe0
	movs r7, #0xe0
_08010530:
	subs r0, r4, r5
	strh r0, [r6, #0x16]
	adds r0, r6, #0
	bl DisplaySprite
	adds r5, #0x80
	subs r0, r7, r5
	cmp r0, #0
	bgt _08010530
_08010542:
	mov r6, r8
	mov r2, sb
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x36
	strh r0, [r6, #0x18]
	movs r4, #0
_08010554:
	lsls r0, r4, #5
	strh r0, [r6, #0x16]
	adds r0, r6, #0
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _08010554
_08010568:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010574: .4byte 0xFFFF8080
_08010578: .4byte gUnknown_080BB360
_0801057C: .4byte gLoadedSaveGame

	thumb_func_start sub_8010580
sub_8010580: @ 0x08010580
	push {lr}
	ldr r2, _080105BC @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _080105C0 @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _080105C4 @ =gBldRegs
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	ldr r0, _080105C8 @ =sa2__gUnknown_03004D80
	strb r2, [r0]
	ldr r1, _080105CC @ =sa2__gUnknown_03002280
	strb r2, [r1]
	strb r2, [r1, #1]
	movs r0, #0xff
	strb r0, [r1, #2]
	movs r0, #0x20
	strb r0, [r1, #3]
	ldr r0, _080105D0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	movs r0, #1
	bl CreateMainMenu
	pop {r0}
	bx r0
	.align 2, 0
_080105BC: .4byte gDispCnt
_080105C0: .4byte 0x00001FFF
_080105C4: .4byte gBldRegs
_080105C8: .4byte sa2__gUnknown_03004D80
_080105CC: .4byte sa2__gUnknown_03002280
_080105D0: .4byte gCurTask

	thumb_func_start sub_80105D4
sub_80105D4: @ 0x080105D4
	push {lr}
	ldr r1, _080105F0 @ =gGameMode
	movs r0, #1
	strb r0, [r1]
	ldr r0, _080105F4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	movs r0, #0
	bl CreateCharacterSelectionScreen
	pop {r0}
	bx r0
	.align 2, 0
_080105F0: .4byte gGameMode
_080105F4: .4byte gCurTask

	thumb_func_start sub_80105F8
sub_80105F8: @ 0x080105F8
	push {lr}
	ldr r1, _08010614 @ =gGameMode
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08010618 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	movs r0, #1
	bl sub_8061948
	pop {r0}
	bx r0
	.align 2, 0
_08010614: .4byte gGameMode
_08010618: .4byte gCurTask

@ --- Start of Options Menu ---
	thumb_func_start CreateOptionsMenu
CreateOptionsMenu: @ 0x0801061C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	ldr r4, _08010868 @ =gDispCnt
	movs r1, #0x8a
	lsls r1, r1, #5
	adds r0, r1, #0
	strh r0, [r4]
	ldr r1, _0801086C @ =gBgCntRegs
	movs r7, #0
	movs r5, #0
	ldr r0, _08010870 @ =0x00001E03
	strh r0, [r1]
	ldr r0, _08010874 @ =gBgScrollRegs
	strh r5, [r0]
	strh r5, [r0, #2]
	bl sub_80535FC
	bl sub_8053674
	ldrh r1, [r4]
	ldr r0, _08010878 @ =0x00001FFF
	ands r0, r1
	strh r0, [r4]
	ldr r0, _0801087C @ =gBldRegs
	strh r5, [r0]
	strh r5, [r0, #4]
	ldr r0, _08010880 @ =Task_OptionsMenuMain
	movs r1, #0xd1
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r3, _08010884 @ =TaskDestructor_OptionsMenu
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	ldr r2, _08010888 @ =0x0300033F
	adds r0, r4, r2
	strb r7, [r0]
	ldr r1, _0801088C @ =0x0300033C
	adds r0, r4, r1
	strh r5, [r0]
	subs r2, #1
	adds r0, r4, r2
	strb r7, [r0]
	ldr r0, _08010890 @ =0x03000340
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	strh r5, [r6, #0x16]
	strh r5, [r6, #0x18]
	movs r0, #0x16
	bl VramMalloc
	str r0, [r6, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r6, #0x1a]
	strh r5, [r6, #8]
	subs r0, #0x67
	strh r0, [r6, #0xa]
	ldr r1, _08010894 @ =0x03000020
	adds r0, r4, r1
	strb r7, [r0]
	strh r5, [r6, #0x14]
	strh r5, [r6, #0x1c]
	ldr r2, _08010898 @ =0x03000021
	adds r1, r4, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0801089C @ =0x03000022
	adds r1, r4, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _080108A0 @ =0x03000025
	adds r4, r4, r1
	strb r7, [r4]
	str r5, [r6, #0x10]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	movs r4, #0
	mov r2, sp
	adds r2, #0x30
	str r2, [sp, #0x44]
	mov r0, sp
	adds r0, #0x2f
	str r0, [sp, #0x40]
	mov r1, sp
	adds r1, #0x2c
	str r1, [sp, #0x34]
	subs r2, #3
	str r2, [sp, #0x38]
	subs r0, #1
	str r0, [sp, #0x3c]
	ldr r1, _080108A4 @ =gUnknown_080BB36C
	mov sb, r1
_080106EE:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, #0x30
	adds r7, r6, r0
	movs r0, #0x19
	strh r0, [r7, #0x16]
	lsls r0, r4, #4
	adds r0, #0x26
	strh r0, [r7, #0x18]
	ldr r0, _080108A8 @ =gUnknown_080BB382
	adds r0, r4, r0
	ldrb r0, [r0]
	bl VramMalloc
	str r0, [r7, #4]
	movs r2, #0xf0
	lsls r2, r2, #2
	strh r2, [r7, #0x1a]
	strh r5, [r7, #8]
	ldr r1, _080108AC @ =gLoadedSaveGame
	ldrb r0, [r1, #0x19]
	lsls r0, r0, #1
	add r0, sb
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
	ldr r0, _080108B0 @ =gUnknown_080BB370
	adds r0, r4, r0
	ldrb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x20
	strb r1, [r0]
	strh r5, [r7, #0x14]
	strh r5, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x21
	movs r2, #1
	rsbs r2, r2, #0
	mov r8, r2
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x22
	movs r1, #0x10
	mov sl, r1
	mov r2, sl
	strb r2, [r0]
	adds r0, #3
	movs r1, #0
	strb r1, [r0]
	str r5, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _080106EE
	movs r2, #0xd8
	lsls r2, r2, #1
	adds r7, r6, r2
	movs r4, #0
	movs r5, #0xdc
	strh r5, [r7, #0x16]
	movs r0, #0x36
	strh r0, [r7, #0x18]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r7, #0x1a]
	strh r4, [r7, #8]
	ldr r1, _080108AC @ =gLoadedSaveGame
	mov sb, r1
	ldrb r0, [r1, #0x19]
	lsls r0, r0, #1
	ldr r2, _080108A4 @ =gUnknown_080BB36C
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
	ldr r1, _080108B4 @ =gUnknown_080BB37C
	mov r2, sb
	ldrb r0, [r2, #0x18]
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r0, r6, r2
	strb r1, [r0]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	ldr r0, _080108B8 @ =0x000001D1
	adds r1, r6, r0
	ldrb r0, [r1]
	mov r2, r8
	orrs r0, r2
	strb r0, [r1]
	movs r1, #0xe9
	lsls r1, r1, #1
	adds r0, r6, r1
	mov r2, sl
	strb r2, [r0]
	adds r1, #3
	adds r0, r6, r1
	movs r2, #0
	strb r2, [r0]
	str r4, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r0, #0xf0
	lsls r0, r0, #1
	adds r7, r6, r0
	strh r5, [r7, #0x16]
	movs r0, #0x46
	strh r0, [r7, #0x18]
	movs r0, #8
	bl VramMalloc
	str r0, [r7, #4]
	movs r1, #0xf0
	lsls r1, r1, #2
	strh r1, [r7, #0x1a]
	strh r4, [r7, #8]
	mov r2, sb
	ldrb r0, [r2, #0x19]
	lsls r0, r0, #1
	ldr r1, _080108A4 @ =gUnknown_080BB36C
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
	ldr r1, _080108BC @ =gUnknown_080BB37E
	ldrb r0, [r2, #0x1b]
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r6, r2
	strb r1, [r0]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	ldr r0, _080108C0 @ =0x00000201
	adds r1, r6, r0
	ldrb r0, [r1]
	mov r2, r8
	orrs r0, r2
	strb r0, [r1]
	ldr r1, _080108C4 @ =0x00000202
	adds r0, r6, r1
	mov r2, sl
	strb r2, [r0]
	adds r1, #3
	adds r0, r6, r1
	movs r2, #0
	strb r2, [r0]
	str r4, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r0, #0x84
	lsls r0, r0, #2
	adds r7, r6, r0
	strh r5, [r7, #0x16]
	movs r0, #0x66
	strh r0, [r7, #0x18]
	movs r0, #0x12
	bl VramMalloc
	str r0, [r7, #4]
	movs r1, #0xf0
	lsls r1, r1, #2
	strh r1, [r7, #0x1a]
	strh r4, [r7, #8]
	mov r2, sb
	ldrb r0, [r2, #0x1a]
	cmp r0, #1
	bls _080108CC
	ldr r0, _080108C8 @ =0x0000036E
	strh r0, [r7, #0xa]
	ldrb r0, [r2, #0x1a]
	subs r0, #2
	movs r2, #0x8c
	lsls r2, r2, #2
	adds r1, r6, r2
	b _080108E2
	.align 2, 0
_08010868: .4byte gDispCnt
_0801086C: .4byte gBgCntRegs
_08010870: .4byte 0x00001E03
_08010874: .4byte gBgScrollRegs
_08010878: .4byte 0x00001FFF
_0801087C: .4byte gBldRegs
_08010880: .4byte Task_OptionsMenuMain
_08010884: .4byte TaskDestructor_OptionsMenu
_08010888: .4byte 0x0300033F
_0801088C: .4byte 0x0300033C
_08010890: .4byte 0x03000340
_08010894: .4byte 0x03000020
_08010898: .4byte 0x03000021
_0801089C: .4byte 0x03000022
_080108A0: .4byte 0x03000025
_080108A4: .4byte gUnknown_080BB36C
_080108A8: .4byte gUnknown_080BB382
_080108AC: .4byte gLoadedSaveGame
_080108B0: .4byte gUnknown_080BB370
_080108B4: .4byte gUnknown_080BB37C
_080108B8: .4byte 0x000001D1
_080108BC: .4byte gUnknown_080BB37E
_080108C0: .4byte 0x00000201
_080108C4: .4byte 0x00000202
_080108C8: .4byte 0x0000036E
_080108CC:
	ldr r1, _08010B18 @ =gLoadedSaveGame
	ldrb r0, [r1, #0x19]
	lsls r0, r0, #1
	ldr r2, _08010B1C @ =gUnknown_080BB36C
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
	movs r0, #0x8c
	lsls r0, r0, #2
	adds r1, r6, r0
	movs r0, #0xa
_080108E2:
	strb r0, [r1]
	movs r5, #0
	movs r4, #0
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x22
	movs r1, #0x10
	mov r8, r1
	mov r2, r8
	strb r2, [r0]
	adds r0, #3
	strb r5, [r0]
	str r4, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r0, #0x90
	lsls r0, r0, #2
	adds r7, r6, r0
	movs r0, #0xdc
	strh r0, [r7, #0x16]
	movs r0, #0x76
	strh r0, [r7, #0x18]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r7, #0x1a]
	strh r4, [r7, #8]
	ldr r1, _08010B1C @ =gUnknown_080BB36C
	ldr r2, _08010B18 @ =gLoadedSaveGame
	mov sb, r2
	ldrb r0, [r2, #0x19]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
	ldr r1, _08010B20 @ =gUnknown_080BB380
	ldrb r0, [r2, #0x1c]
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x98
	lsls r2, r2, #2
	adds r0, r6, r2
	strb r1, [r0]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	ldr r0, _08010B24 @ =0x00000261
	adds r1, r6, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08010B28 @ =0x00000262
	adds r0, r6, r1
	mov r2, r8
	strb r2, [r0]
	adds r1, #3
	adds r0, r6, r1
	strb r5, [r0]
	str r4, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r2, #0x9c
	lsls r2, r2, #2
	adds r7, r6, r2
	movs r0, #0x78
	strh r0, [r7, #0x16]
	movs r0, #0x50
	strh r0, [r7, #0x18]
	movs r0, #0x90
	bl VramMalloc
	str r0, [r7, #4]
	strh r4, [r7, #0x1a]
	strh r4, [r7, #8]
	ldr r0, _08010B2C @ =0x0000036D
	strh r0, [r7, #0xa]
	ldr r1, _08010B30 @ =gUnknown_080BB38A
	mov r2, sb
	ldrb r0, [r2, #0x19]
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0xa4
	lsls r2, r2, #2
	adds r0, r6, r2
	strb r1, [r0]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	ldr r0, _08010B34 @ =0x00000291
	adds r1, r6, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08010B38 @ =0x00000292
	adds r0, r6, r1
	mov r2, r8
	strb r2, [r0]
	adds r1, #3
	adds r0, r6, r1
	strb r5, [r0]
	str r4, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r2, #0xa8
	lsls r2, r2, #2
	adds r7, r6, r2
	strh r4, [r7, #0x16]
	movs r0, #7
	strh r0, [r7, #0x18]
	movs r0, #0xc
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0x40
	strh r0, [r7, #0x1a]
	strh r4, [r7, #8]
	ldr r0, _08010B3C @ =0x00000363
	strh r0, [r7, #0xa]
	movs r1, #0xb0
	lsls r1, r1, #2
	adds r0, r6, r1
	strb r5, [r0]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	ldr r2, _08010B40 @ =0x000002C1
	adds r1, r6, r2
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08010B44 @ =0x000002C2
	adds r0, r6, r1
	mov r2, r8
	strb r2, [r0]
	adds r1, #3
	adds r0, r6, r1
	strb r5, [r0]
	str r4, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r2, #0xb4
	lsls r2, r2, #2
	adds r7, r6, r2
	strh r4, [r7, #0x16]
	movs r0, #0x11
	strh r0, [r7, #0x18]
	movs r0, #0x16
	bl VramMalloc
	str r0, [r7, #4]
	strh r4, [r7, #0x1a]
	strh r4, [r7, #8]
	ldr r1, _08010B48 @ =gUnknown_080BB378
	mov r2, sb
	ldrb r0, [r2, #0x19]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
	movs r1, #0xbc
	lsls r1, r1, #2
	adds r0, r6, r1
	strb r5, [r0]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	ldr r2, _08010B4C @ =0x000002F1
	adds r1, r6, r2
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08010B50 @ =0x000002F2
	adds r0, r6, r1
	mov r2, r8
	strb r2, [r0]
	adds r1, #3
	adds r0, r6, r1
	strb r5, [r0]
	str r4, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r7, r6, r2
	movs r0, #0xef
	strh r0, [r7, #0x16]
	movs r0, #0x9f
	strh r0, [r7, #0x18]
	movs r0, #1
	bl VramMalloc
	str r0, [r7, #4]
	strh r4, [r7, #0x1a]
	strh r4, [r7, #8]
	ldr r0, _08010B54 @ =0x0000035F
	strh r0, [r7, #0xa]
	subs r0, #0x3f
	adds r1, r6, r0
	movs r0, #0xf
	strb r0, [r1]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	ldr r2, _08010B58 @ =0x00000321
	adds r1, r6, r2
	subs r0, #0x10
	strb r0, [r1]
	ldr r1, _08010B5C @ =0x00000322
	adds r0, r6, r1
	mov r2, r8
	strb r2, [r0]
	adds r1, #3
	adds r0, r6, r1
	strb r5, [r0]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r0, #0x80
	ldr r2, [sp, #0x44]
	strb r0, [r2]
	movs r7, #1
	ldr r0, [sp, #0x40]
	strb r7, [r0]
	ldr r0, _08010B60 @ =gUnknown_086CC794
	str r0, [sp, #0x18]
	movs r0, #0xa0
	str r0, [sp, #0x1c]
	ldr r0, _08010B64 @ =gUnknown_086CC774
	str r0, [sp, #0x24]
	movs r0, #0x20
	str r0, [sp, #0x28]
	ldr r0, _08010B68 @ =gUnknown_086CC834
	str r0, [sp, #0x14]
	movs r0, #0xa0
	lsls r0, r0, #3
	str r0, [sp, #0x20]
	ldr r1, [sp, #0x34]
	strb r5, [r1]
	ldr r2, [sp, #0x38]
	strb r5, [r2]
	movs r0, #0x15
	ldr r1, [sp, #0x3c]
	strb r0, [r1]
	add r0, sp, #4
	bl sub_80528AC
	movs r2, #0xcc
	lsls r2, r2, #2
	adds r0, r6, r2
	strh r4, [r0]
	strh r7, [r0, #2]
	movs r1, #2
	strh r1, [r0, #4]
	strh r4, [r0, #6]
	adds r1, #0xfe
	strh r1, [r0, #8]
	mov r1, r8
	strb r1, [r0, #0xa]
	bl sub_805423C
	movs r0, #0xb       @ MUS_OPTIONS
	bl m4aSongNumStart
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010B18: .4byte gLoadedSaveGame
_08010B1C: .4byte gUnknown_080BB36C
_08010B20: .4byte gUnknown_080BB380
_08010B24: .4byte 0x00000261
_08010B28: .4byte 0x00000262
_08010B2C: .4byte 0x0000036D
_08010B30: .4byte gUnknown_080BB38A
_08010B34: .4byte 0x00000291
_08010B38: .4byte 0x00000292
_08010B3C: .4byte 0x00000363
_08010B40: .4byte 0x000002C1
_08010B44: .4byte 0x000002C2
_08010B48: .4byte gUnknown_080BB378
_08010B4C: .4byte 0x000002F1
_08010B50: .4byte 0x000002F2
_08010B54: .4byte 0x0000035F
_08010B58: .4byte 0x00000321
_08010B5C: .4byte 0x00000322
_08010B60: .4byte gUnknown_086CC794
_08010B64: .4byte gUnknown_086CC774
_08010B68: .4byte gUnknown_086CC834

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

	thumb_func_start CreatePlayerDataMenu
CreatePlayerDataMenu: @ 0x080117A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	ldr r1, _08011918 @ =gDispCnt
	movs r2, #0x8a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0801191C @ =gBgCntRegs
	movs r7, #0
	movs r5, #0
	ldr r0, _08011920 @ =0x00001B04
	strh r0, [r1]
	ldr r0, _08011924 @ =gBldRegs
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	ldr r0, _08011928 @ =gBgScrollRegs
	strh r5, [r0]
	strh r5, [r0, #2]
	ldr r0, _0801192C @ =Task_PlayerDataMenuInit
	movs r1, #0x8e
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r3, _08011930 @ =TaskDestructor_PlayerDataMenu
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r4
	mov sl, r0
	strh r5, [r0, #0x16]
	strh r5, [r0, #0x18]
	movs r0, #0x16
	bl VramMalloc
	mov r1, sl
	str r0, [r1, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r1, #0x1a]
	strh r5, [r1, #8]
	subs r0, #0x67
	strh r0, [r1, #0xa]
	ldr r2, _08011934 @ =0x03000020
	adds r0, r4, r2
	strb r7, [r0]
	strh r5, [r1, #0x14]
	strh r5, [r1, #0x1c]
	ldr r0, _08011938 @ =0x03000021
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	adds r2, #2
	adds r1, r4, r2
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _0801193C @ =0x03000025
	adds r4, r4, r0
	strb r7, [r4]
	mov r1, sl
	str r5, [r1, #0x10]
	mov r0, sl
	bl UpdateSpriteAnimation
	add r6, sp, #0x30
	movs r2, #0x2f
	add r2, sp
	mov sb, r2
	mov r0, sp
	adds r0, #0x2c
	str r0, [sp, #0x34]
	mov r1, sp
	adds r1, #0x2d
	str r1, [sp, #0x38]
	mov r2, sp
	adds r2, #0x2e
	str r2, [sp, #0x3c]
	movs r4, #0
_08011854:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #4
	adds r0, #0x30
	mov r1, sl
	adds r7, r1, r0
	movs r0, #0x19
	strh r0, [r7, #0x16]
	ldr r0, _08011940 @ =gUnknown_080BB3C7
	adds r0, r5, r0
	ldrb r0, [r0]
	strh r0, [r7, #0x18]
	ldr r0, _08011944 @ =gUnknown_080BB3CA
	adds r0, r5, r0
	ldrb r0, [r0]
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r7, #0x1a]
	strh r4, [r7, #8]
	ldr r1, _08011948 @ =gUnknown_080BB3C0
	ldr r2, _0801194C @ =gLoadedSaveGame
	mov r8, r2
	ldrb r0, [r2, #0x19]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
	ldr r0, _08011950 @ =gUnknown_080BB3C4
	adds r0, r5, r0
	ldrb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x20
	strb r1, [r0]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x25
	movs r1, #0
	strb r1, [r0]
	str r4, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08011854
	movs r0, #0x8b
	lsls r0, r0, #1
	add r0, sl
	movs r4, #0
	movs r1, #0
	strh r1, [r0]
	movs r0, #0x8c
	lsls r0, r0, #1
	add r0, sl
	strb r4, [r0]
	ldr r0, _08011954 @ =0x00000119
	add r0, sl
	strb r4, [r0]
	movs r0, #0x8a
	lsls r0, r0, #1
	add r0, sl
	strh r1, [r0]
	bl sub_80535FC
	bl sub_8053674
	movs r0, #0x80
	strb r0, [r6]
	mov r2, sb
	strb r4, [r2]
	ldr r0, _08011958 @ =gUnknown_086CCD54
	str r0, [sp, #0x18]
	movs r0, #0xba
	lsls r0, r0, #4
	str r0, [sp, #0x1c]
	ldr r0, _0801195C @ =gUnknown_086CCD34
	str r0, [sp, #0x24]
	movs r0, #0x20
	str r0, [sp, #0x28]
	mov r1, r8
	ldrb r0, [r1, #0x19]
	cmp r0, #0
	bne _08011964
	ldr r0, _08011960 @ =gUnknown_086CDDF4
	b _08011966
	.align 2, 0
_08011918: .4byte gDispCnt
_0801191C: .4byte gBgCntRegs
_08011920: .4byte 0x00001B04
_08011924: .4byte gBldRegs
_08011928: .4byte gBgScrollRegs
_0801192C: .4byte Task_PlayerDataMenuInit
_08011930: .4byte TaskDestructor_PlayerDataMenu
_08011934: .4byte 0x03000020
_08011938: .4byte 0x03000021
_0801193C: .4byte 0x03000025
_08011940: .4byte gUnknown_080BB3C7
_08011944: .4byte gUnknown_080BB3CA
_08011948: .4byte gUnknown_080BB3C0
_0801194C: .4byte gLoadedSaveGame
_08011950: .4byte gUnknown_080BB3C4
_08011954: .4byte 0x00000119
_08011958: .4byte gUnknown_086CCD54
_0801195C: .4byte gUnknown_086CCD34
_08011960: .4byte gUnknown_086CDDF4
_08011964:
	ldr r0, _08011B5C @ =gUnknown_086CD8F4
_08011966:
	str r0, [sp, #0x14]
	movs r0, #0xa0
	lsls r0, r0, #3
	str r0, [sp, #0x20]
	movs r0, #0
	ldr r2, [sp, #0x34]
	strb r0, [r2]
	ldr r1, [sp, #0x38]
	strb r0, [r1]
	movs r0, #0x15
	ldr r2, [sp, #0x3c]
	strb r0, [r2]
	add r0, sp, #4
	bl sub_80528AC
	movs r0, #0
	strb r0, [r6]
	movs r5, #1
	mov r1, sb
	strb r5, [r1]
	ldr r3, _08011B60 @ =gUiGraphics
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	str r0, [sp, #0x18]
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _08011B64 @ =gUiGraphics + 0x4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [sp, #0x24]
	movs r0, #0xe0
	str r3, [sp, #0x40]
	bl VramMalloc
	str r0, [sp, #0x10]
	movs r0, #0xe0
	lsls r0, r0, #5
	str r0, [sp, #0x1c]
	movs r4, #0x20
	str r4, [sp, #0x28]
	ldr r0, [sp, #0x34]
	strb r5, [r0]
	movs r0, #0xd
	ldr r1, [sp, #0x3c]
	strb r0, [r1]
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r3, [sp, #0x40]
	ldr r2, _08011B68 @ =gUiGraphics + 0x8
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [sp, #8]
	add r2, sp, #4
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08011B6C @ =gUiGraphics + 0xC
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08011B70 @ =gUiGraphics + 0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08011B74 @ =gUiGraphics + 0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0x18
	adds r1, r1, r3
	mov r8, r1
	add r0, r8
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	adds r0, r2, #0
	str r3, [sp, #0x40]
	bl sub_80528AC
	mov r7, sl
	adds r7, #0xc0
	ldr r0, [sp, #0x10]
	str r0, [r7, #4]
	movs r0, #0x3c
	strb r0, [r6]
	movs r0, #2
	mov r2, sb
	strb r0, [r2]
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r3, [sp, #0x40]
	adds r0, r0, r3
	ldr r0, [r0]
	str r0, [sp, #0x18]
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08011B64 @ =gUiGraphics + 0x4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x24]
	ldr r0, [r7, #4]
	str r0, [sp, #0x10]
	str r4, [sp, #0x1c]
	str r4, [sp, #0x28]
	ldr r2, [sp, #0x34]
	strb r5, [r2]
	movs r0, #0xc
	ldr r1, [sp, #0x3c]
	strb r0, [r1]
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _08011B68 @ =gUiGraphics + 0x8
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [sp, #8]
	add r2, sp, #4
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08011B6C @ =gUiGraphics + 0xC
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08011B70 @ =gUiGraphics + 0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08011B74 @ =gUiGraphics + 0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	adds r0, r2, #0
	bl sub_80528AC
	movs r1, #0x83
	lsls r1, r1, #1
	add r1, sl
	movs r0, #0x8c
	strh r0, [r1]
	movs r1, #0x84
	lsls r1, r1, #1
	add r1, sl
	movs r0, #0x3d
	strh r0, [r1]
	adds r0, #0xcd
	add r0, sl
	movs r1, #1
	strh r5, [r0]
	movs r0, #0x86
	lsls r0, r0, #1
	add r0, sl
	strh r5, [r0]
	movs r0, #0x87
	lsls r0, r0, #1
	add r0, sl
	strh r5, [r0]
	movs r0, #0x89
	lsls r0, r0, #1
	add r0, sl
	strb r1, [r0]
	movs r0, #0x82
	lsls r0, r0, #1
	add r0, sl
	movs r2, #0
	strh r2, [r0]
	movs r5, #0
	mov r4, sl
	adds r4, #0xf0
	ldr r3, _08011B78 @ =gLoadedSaveGame + 0x10
	movs r2, #0x20
_08011B0E:
	adds r1, r5, r3
	ldrb r0, [r1]
	subs r0, #0x20
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x69
	bls _08011B1E
	strb r2, [r1]
_08011B1E:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #5
	bls _08011B0E
	movs r1, #0
	strh r1, [r4]
	movs r0, #1
	strh r0, [r4, #2]
	movs r0, #2
	strh r0, [r4, #4]
	strh r1, [r4, #6]
	adds r0, #0xfe
	strh r0, [r4, #8]
	movs r0, #0x10
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	bl sub_805423C
	movs r0, #0x30      @ MUS_PLAYER_DATA
	bl m4aSongNumStart
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011B5C: .4byte gUnknown_086CD8F4
_08011B60: .4byte gUiGraphics
_08011B64: .4byte gUiGraphics + 0x4
_08011B68: .4byte gUiGraphics + 0x8
_08011B6C: .4byte gUiGraphics + 0xC
_08011B70: .4byte gUiGraphics + 0x10
_08011B74: .4byte gUiGraphics + 0x14
_08011B78: .4byte gLoadedSaveGame + 0x10

	thumb_func_start Task_PlayerDataMenuInit
Task_PlayerDataMenuInit: @ 0x08011B7C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08011BD4 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r4
	mov r8, r0
	ldr r0, _08011BD8 @ =0x030000F0
	adds r5, r4, r0
	adds r0, r5, #0
	bl sub_805423C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08011C86
	movs r1, #4
	ldrsh r7, [r5, r1]
	cmp r7, #2
	bne _08011C40
	ldr r0, _08011BDC @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _08011BE4
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r2, _08011BE0 @ =0x03000118
	adds r1, r4, r2
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _08011C06
	strb r7, [r1]
	b _08011C06
	.align 2, 0
_08011BD4: .4byte gCurTask
_08011BD8: .4byte 0x030000F0
_08011BDC: .4byte gRepeatedKeys
_08011BE0: .4byte 0x03000118
_08011BE4:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08011C06
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r0, _08011C30 @ =0x03000118
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _08011C06
	strb r6, [r1]
_08011C06:
	ldr r0, _08011C34 @ =gPressedKeys
	ldrh r2, [r0]
	movs r0, #3
	ands r0, r2
	cmp r0, #0
	beq _08011C86
	movs r0, #0x8a
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0
	strh r2, [r0]
	movs r0, #1
	strh r0, [r5, #4]
	strh r1, [r5, #6]
	ands r0, r2
	cmp r0, #0
	beq _08011C38
	movs r0, #0x6a
	bl m4aSongNumStart
	b _08011C86
	.align 2, 0
_08011C30: .4byte 0x03000118
_08011C34: .4byte gPressedKeys
_08011C38:
	movs r0, #0x6b
	bl m4aSongNumStart
	b _08011C86
_08011C40:
	ldr r1, _08011C6C @ =0x03000114
	adds r0, r4, r1
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08011C78
	ldr r2, _08011C70 @ =0x03000119
	adds r1, r4, r2
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08011C74 @ =gUnknown_080BB3D0
	subs r2, #1
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	b _08011C8A
	.align 2, 0
_08011C6C: .4byte 0x03000114
_08011C70: .4byte 0x03000119
_08011C74: .4byte gUnknown_080BB3D0
_08011C78:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08011C86
	bl PlayerDataSelectOK
	b _08011C8A
_08011C86:
	bl sub_8011C94
_08011C8A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8011C94
sub_8011C94: @ 0x08011C94
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08011CF8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	movs r0, #9
	strh r0, [r5, #0x16]
	ldr r0, _08011CFC @ =gUnknown_080BB3C7
	ldr r2, _08011D00 @ =0x03000118
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r1, r1, r0
	ldr r3, _08011D04 @ =0x0000FFFE
	adds r0, r3, #0
	ldrb r1, [r1]
	adds r0, r0, r1
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl DisplaySprite
	movs r4, #0
_08011CC6:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, #0x30
	adds r2, r5, r0
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, r4
	bne _08011D14
	movs r1, #0
	movs r0, #0x1e
	strh r0, [r2, #0x16]
	ldr r3, _08011D08 @ =0x00000119
	adds r0, r5, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08011D0C
	adds r1, r2, #0
	adds r1, #0x25
	movs r0, #1
	strb r0, [r1]
	b _08011D18
	.align 2, 0
_08011CF8: .4byte gCurTask
_08011CFC: .4byte gUnknown_080BB3C7
_08011D00: .4byte 0x03000118
_08011D04: .4byte 0x0000FFFE
_08011D08: .4byte 0x00000119
_08011D0C:
	adds r0, r2, #0
	adds r0, #0x25
	strb r1, [r0]
	b _08011D18
_08011D14:
	movs r0, #0x19
	strh r0, [r2, #0x16]
_08011D18:
	ldr r0, _08011D80 @ =gUnknown_080BB3C7
	adds r0, r4, r0
	ldrb r0, [r0]
	strh r0, [r2, #0x18]
	adds r0, r2, #0
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _08011CC6
	movs r4, #0
	adds r7, r5, #0
	adds r7, #0xfc
	movs r0, #0x84
	lsls r0, r0, #1
	adds r6, r5, r0
	ldr r1, _08011D84 @ =gLoadedSaveGame + 0x10
	mov r8, r1
_08011D40:
	lsls r0, r4, #3
	adds r0, #0x9f
	movs r2, #0x83
	lsls r2, r2, #1
	adds r1, r5, r2
	strh r0, [r1]
	movs r0, #0x3c
	strh r0, [r6]
	mov r3, r8
	adds r1, r4, r3
	ldrb r0, [r1]
	subs r0, #0x70
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bhi _08011D64
	movs r0, #0x44
	strh r0, [r6]
_08011D64:
	adds r0, r1, #0
	adds r1, r7, #0
	bl sub_8052F78
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #5
	bls _08011D40
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011D80: .4byte gUnknown_080BB3C7
_08011D84: .4byte gLoadedSaveGame + 0x10

	thumb_func_start PlayerDataSelectName
PlayerDataSelectName: @ 0x08011D88
	push {lr}
	ldr r0, _08011D9C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl CreatePlayerNameInputMenu
	pop {r0}
	bx r0
	.align 2, 0
_08011D9C: .4byte gCurTask

	thumb_func_start PlayerDataSelectVsRecord
PlayerDataSelectVsRecord: @ 0x08011DA0
	push {lr}
	ldr r0, _08011DB4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl CreateVsRecord
	pop {r0}
	bx r0
	.align 2, 0
_08011DB4: .4byte gCurTask

	thumb_func_start PlayerDataSelectOK
PlayerDataSelectOK: @ 0x08011DB8
	push {lr}
	ldr r0, _08011DCC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl CreateOptionsMenu
	pop {r0}
	bx r0
	.align 2, 0
_08011DCC: .4byte gCurTask

	thumb_func_start TaskDestructor_PlayerDataMenu
TaskDestructor_PlayerDataMenu: @ 0x08011DD0
	push {r4, r5, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldr r0, [r0, #4]
	bl VramFree
	movs r5, #0
	ldr r0, _08011E04 @ =0x03000034
	adds r4, r4, r0
_08011DE6:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #4
	adds r0, r4, r0
	ldr r0, [r0]
	bl VramFree
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08011DE6
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011E04: .4byte 0x03000034
