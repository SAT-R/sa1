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
	bl sub_8058360
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
	ldr r1, _0800EDC8 @ =gUnknown_03005010
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
_0800EDC8: .4byte gUnknown_03005010
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
	ldr r4, _0800FB58 @ =gUnknown_0300500C
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
_0800FB58: .4byte gUnknown_0300500C
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
	ldr r5, _0800FC98 @ =gUnknown_0300500C
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
_0800FC98: .4byte gUnknown_0300500C
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
	bl sub_803DBD4
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
	ldr r1, _0800FDD4 @ =gUnknown_030054E0
	mov sl, r1
	mov r5, sb
	adds r5, #4
	str r5, [sp, #0x10]
	mov r7, sl
	mov r8, r0
_0800FDBC:
	ldr r4, _0800FDD4 @ =gUnknown_030054E0
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
_0800FDD4: .4byte gUnknown_030054E0
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
	ldr r0, _0800FE34 @ =gUnknown_030054E0
	mov r1, sp
	ldm r1!, {r2, r6, r7}
	stm r0!, {r2, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
	b _0800FE94
	.align 2, 0
_0800FE30: .4byte gLoadedSaveGame
_0800FE34: .4byte gUnknown_030054E0
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
	ldr r5, _0800FEE8 @ =gUnknown_0300500C
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
_0800FEE8: .4byte gUnknown_0300500C
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
	ldr r0, _08010880 @ =sub_8010B6C
	movs r1, #0xd1
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r3, _08010884 @ =sub_80115D4
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
_08010880: .4byte sub_8010B6C
_08010884: .4byte sub_80115D4
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

	thumb_func_start sub_8010B6C
sub_8010B6C: @ 0x08010B6C
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
	ldr r1, _08010C54 @ =gUnknown_080BB3A0
	ldrb r0, [r2]
	b _08010C8E
	.align 2, 0
_08010C50: .4byte 0x0000033F
_08010C54: .4byte gUnknown_080BB3A0
_08010C58:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08010CA8
	movs r0, #0x6b
	bl m4aSongNumStart
	bl sub_8011738
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
	ldr r1, _08010CA4 @ =gUnknown_080BB3A0
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
_08010CA4: .4byte gUnknown_080BB3A0
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
	ldr r0, _08010EFC @ =sub_8010B6C
	str r0, [r1, #8]
_08010EE8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08010EF0: .4byte gLoadedSaveGame
_08010EF4: .4byte gPressedKeys
_08010EF8: .4byte gCurTask
_08010EFC: .4byte sub_8010B6C

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
	ldr r0, _08010F6C @ =sub_8010B6C
	str r0, [r1, #8]
_08010F58:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08010F60: .4byte gLoadedSaveGame
_08010F64: .4byte gPressedKeys
_08010F68: .4byte gCurTask
_08010F6C: .4byte sub_8010B6C

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
	ldr r0, _08010FD8 @ =sub_8010B6C
	str r0, [r1, #8]
_08010FC6:
	pop {r0}
	bx r0
	.align 2, 0
_08010FCC: .4byte gLoadedSaveGame
_08010FD0: .4byte gPressedKeys
_08010FD4: .4byte gCurTask
_08010FD8: .4byte sub_8010B6C

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
	ldr r0, _08011048 @ =sub_8010B6C
	str r0, [r1, #8]
_08011034:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801103C: .4byte gLoadedSaveGame
_08011040: .4byte gPressedKeys
_08011044: .4byte gCurTask
_08011048: .4byte sub_8010B6C

	thumb_func_start sub_801104C
sub_801104C: @ 0x0801104C
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
	ldr r0, _080111EC @ =sub_8010B6C
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
_080111EC: .4byte sub_8010B6C
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
	ldr r0, _0801149C @ =sub_8010B6C
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
_0801149C: .4byte sub_8010B6C

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
	bl sub_8012D98
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

	thumb_func_start sub_80115D4
sub_80115D4: @ 0x080115D4
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

	thumb_func_start sub_801166C
sub_801166C: @ 0x0801166C
	push {lr}
	ldr r0, _08011680 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl sub_80117A8
	pop {r0}
	bx r0
	.align 2, 0
_08011680: .4byte gCurTask

	thumb_func_start sub_8011684
sub_8011684: @ 0x08011684
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

	thumb_func_start sub_80116A0
sub_80116A0: @ 0x080116A0
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

	thumb_func_start sub_80116BC
sub_80116BC: @ 0x080116BC
	push {lr}
	movs r0, #3
	bl m4aSongNumStop
	ldr r0, _080116D4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl sub_805EAE8
	pop {r0}
	bx r0
	.align 2, 0
_080116D4: .4byte gCurTask

	thumb_func_start sub_80116D8
sub_80116D8: @ 0x080116D8
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

	thumb_func_start sub_801171C
sub_801171C: @ 0x0801171C
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

	thumb_func_start sub_8011738
sub_8011738: @ 0x08011738
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

	thumb_func_start sub_80117A8
sub_80117A8: @ 0x080117A8
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
	ldr r0, _0801192C @ =sub_8011B7C
	movs r1, #0x8e
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r3, _08011930 @ =sub_8011DD0
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
_0801192C: .4byte sub_8011B7C
_08011930: .4byte sub_8011DD0
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
	ldr r3, _08011B78 @ =gUnknown_03005170
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
_08011B78: .4byte gUnknown_03005170

	thumb_func_start sub_8011B7C
sub_8011B7C: @ 0x08011B7C
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
	bl sub_8011DB8
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
	ldr r1, _08011D84 @ =gUnknown_03005170
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
_08011D84: .4byte gUnknown_03005170

	thumb_func_start sub_8011D88
sub_8011D88: @ 0x08011D88
	push {lr}
	ldr r0, _08011D9C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl sub_8058360
	pop {r0}
	bx r0
	.align 2, 0
_08011D9C: .4byte gCurTask

	thumb_func_start sub_8011DA0
sub_8011DA0: @ 0x08011DA0
	push {lr}
	ldr r0, _08011DB4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl CreateVsRecord
	pop {r0}
	bx r0
	.align 2, 0
_08011DB4: .4byte gCurTask

	thumb_func_start sub_8011DB8
sub_8011DB8: @ 0x08011DB8
	push {lr}
	ldr r0, _08011DCC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl CreateOptionsMenu
	pop {r0}
	bx r0
	.align 2, 0
_08011DCC: .4byte gCurTask

	thumb_func_start sub_8011DD0
sub_8011DD0: @ 0x08011DD0
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

	thumb_func_start sub_8011E08
sub_8011E08: @ 0x08011E08
	push {r4, lr}
	sub sp, #4
	ldr r0, _08011E4C @ =Task_Spotlights
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08011E50 @ =TaskDestructor_Spotlights
	str r1, [sp]
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r2, r2, r1
	movs r4, #0
	movs r3, #0
	movs r1, #0x78
	strh r1, [r2, #6]
	movs r1, #0xc8
	strh r1, [r2, #8]
	strh r3, [r2]
	movs r1, #0x40
	strh r1, [r2, #2]
	movs r1, #0x80
	lsls r1, r1, #4
	strh r1, [r2, #4]
	strb r4, [r2, #0xa]
	movs r1, #0x20
	strb r1, [r2, #0xb]
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08011E4C: .4byte Task_Spotlights
_08011E50: .4byte TaskDestructor_Spotlights

	thumb_func_start Task_Spotlights
Task_Spotlights: @ 0x08011E54
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r0, _08011E7C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r1, [r4]
	ldr r0, _08011E80 @ =0x000001FF
	cmp r1, r0
	bhi _08011E84
	ldrh r0, [r4, #4]
	ldrh r1, [r4, #2]
	subs r0, r0, r1
	b _08011E8A
	.align 2, 0
_08011E7C: .4byte gCurTask
_08011E80: .4byte 0x000001FF
_08011E84:
	ldrh r0, [r4, #2]
	ldrh r1, [r4, #4]
	adds r0, r0, r1
_08011E8A:
	strh r0, [r4, #4]
	ldrh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r2, [r4]
	adds r0, r0, r2
	movs r3, #0
	mov r8, r3
	ldr r3, _08011F28 @ =0x000003FF
	ands r0, r3
	strh r0, [r4]
	ldrb r1, [r4, #0xb]
	adds r5, r0, r1
	ands r5, r3
	ldr r6, _08011F2C @ =gSineTable
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r5, r7
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	lsls r1, r0, #0x10
	cmp r1, #0
	bne _08011EBC
	b _080122BA
_08011EBC:
	lsls r0, r5, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #8
	asrs r1, r1, #0x16
	str r3, [sp, #0x18]
	bl Div
	mov sl, r0
	add r2, sp, #0x10
	movs r1, #8
	ldrsh r0, [r4, r1]
	mov sb, r0
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r1, sb
	muls r1, r0, r1
	asrs r1, r1, #8
	ldrh r0, [r4, #6]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov sl, r2
	ldr r3, [sp, #0x18]
	cmp r0, #0
	bgt _08011F6A
	mov r0, r8
	strh r0, [r2]
	cmp r5, #0xff
	bls _08011F34
	ldr r2, _08011F30 @ =0xFFFFFD00
	adds r1, r5, r2
	ands r1, r3
	lsls r0, r1, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #8
	adds r1, r1, r7
	lsls r1, r1, #1
	adds r1, r1, r6
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	bl Div
	movs r3, #6
	ldrsh r1, [r4, r3]
	b _08011FB0
	.align 2, 0
_08011F28: .4byte 0x000003FF
_08011F2C: .4byte gSineTable
_08011F30: .4byte 0xFFFFFD00
_08011F34:
	subs r1, r7, r5
	ands r1, r3
	lsls r0, r1, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #8
	adds r1, r1, r7
	lsls r1, r1, #1
	adds r1, r1, r6
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	bl Div
	movs r2, #6
	ldrsh r1, [r4, r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r1, r0, r1
	asrs r1, r1, #8
	ldrh r0, [r4, #8]
	subs r0, r0, r1
	mov r3, sl
	strh r0, [r3, #2]
	b _08011FC8
_08011F6A:
	cmp r0, #0xef
	ble _08011FC2
	movs r0, #0xf0
	mov r8, r0
	mov r2, r8
	mov r1, sl
	strh r2, [r1]
	cmp r5, #0xff
	bls _08011F88
	ldr r0, _08011F84 @ =0xFFFFFD00
	adds r1, r5, r0
	b _08011F8A
	.align 2, 0
_08011F84: .4byte 0xFFFFFD00
_08011F88:
	subs r1, r7, r5
_08011F8A:
	ands r1, r3
	lsls r0, r1, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #8
	adds r1, r1, r7
	lsls r1, r1, #1
	adds r1, r1, r6
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	bl Div
	movs r2, #6
	ldrsh r1, [r4, r2]
	mov r3, r8
	subs r1, r3, r1
_08011FB0:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r1, r0, r1
	asrs r1, r1, #8
	ldrh r0, [r4, #8]
	subs r0, r0, r1
	mov r1, sl
	strh r0, [r1, #2]
	b _08011FC8
_08011FC2:
	mov r3, r8
	mov r2, sl
	strh r3, [r2, #2]
_08011FC8:
	add r1, sp, #8
	mov r2, sl
	ldrh r0, [r2]
	movs r3, #0
	mov sb, r3
	strb r0, [r1]
	ldrh r0, [r2, #2]
	strb r0, [r1, #1]
	ldr r6, _08012074 @ =gSineTable
	lsls r0, r5, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #8
	movs r7, #0x80
	lsls r7, r7, #1
	adds r1, r5, r7
	lsls r1, r1, #1
	adds r1, r1, r6
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	bl Div
	add r3, sp, #8
	ldrb r2, [r4, #6]
	movs r5, #8
	ldrsh r1, [r4, r5]
	subs r1, #0xa0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	subs r2, r2, r0
	strb r2, [r3, #2]
	adds r1, r3, #0
	movs r0, #0xa0
	strb r0, [r1, #3]
	ldrb r1, [r4, #0xb]
	ldrh r0, [r4]
	subs r0, r0, r1
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	subs r5, r1, r0
	ldr r3, _08012078 @ =0x000003FF
	adds r0, r3, #0
	ands r5, r0
	lsls r0, r5, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #8
	adds r1, r5, r7
	lsls r1, r1, #1
	adds r1, r1, r6
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	bl Div
	add r2, sp, #0x14
	movs r3, #8
	ldrsh r1, [r4, r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	ldrh r1, [r4, #6]
	adds r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r8, r2
	cmp r0, #0
	bgt _080120BC
	mov r3, sb
	strh r3, [r2]
	cmp r5, #0xff
	bls _08012080
	ldr r0, _0801207C @ =0xFFFFFD00
	adds r1, r5, r0
	b _08012082
	.align 2, 0
_08012074: .4byte gSineTable
_08012078: .4byte 0x000003FF
_0801207C: .4byte 0xFFFFFD00
_08012080:
	subs r1, r7, r5
_08012082:
	ldr r0, _080120B8 @ =0x000003FF
	ands r1, r0
	lsls r0, r1, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #8
	adds r1, r1, r7
	lsls r1, r1, #1
	adds r1, r1, r6
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	bl Div
	movs r2, #6
	ldrsh r1, [r4, r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r1, r0, r1
	asrs r1, r1, #8
	ldrh r0, [r4, #8]
	subs r0, r0, r1
	mov r3, r8
	strh r0, [r3, #2]
	b _0801211E
	.align 2, 0
_080120B8: .4byte 0x000003FF
_080120BC:
	cmp r0, #0xef
	ble _08012118
	movs r0, #0xf0
	mov sb, r0
	mov r2, sb
	mov r1, r8
	strh r2, [r1]
	cmp r5, #0xff
	bls _080120D8
	ldr r3, _080120D4 @ =0xFFFFFD00
	adds r1, r5, r3
	b _080120DA
	.align 2, 0
_080120D4: .4byte 0xFFFFFD00
_080120D8:
	subs r1, r7, r5
_080120DA:
	ldr r0, _08012114 @ =0x000003FF
	ands r1, r0
	lsls r0, r1, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #8
	adds r1, r1, r7
	lsls r1, r1, #1
	adds r1, r1, r6
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	bl Div
	movs r2, #6
	ldrsh r1, [r4, r2]
	mov r3, sb
	subs r1, r3, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r1, r0, r1
	asrs r1, r1, #8
	ldrh r0, [r4, #8]
	subs r0, r0, r1
	mov r1, r8
	strh r0, [r1, #2]
	b _0801211E
	.align 2, 0
_08012114: .4byte 0x000003FF
_08012118:
	mov r3, sb
	mov r2, r8
	strh r3, [r2, #2]
_0801211E:
	add r1, sp, #8
	mov r6, r8
	ldrh r0, [r6]
	strb r0, [r1, #4]
	ldrh r0, [r6, #2]
	strb r0, [r1, #5]
	ldr r2, _080121A4 @ =gSineTable
	lsls r0, r5, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #8
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r5, r3
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	bl Div
	add r2, sp, #8
	movs r5, #8
	ldrsh r1, [r4, r5]
	subs r1, #0xa0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	ldrb r1, [r4, #6]
	adds r0, r0, r1
	strb r0, [r2, #6]
	adds r1, r2, #0
	movs r0, #0xa0
	strb r0, [r1, #7]
	ldrh r1, [r4]
	ldr r0, _080121A8 @ =0x000001FF
	cmp r1, r0
	bhi _0801221C
	ldrh r0, [r6, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	ble _0801217C
	b _080122BA
_0801217C:
	mov r2, sl
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	ble _080121E0
	ldrb r1, [r4, #0xa]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080121B0
	ldr r2, _080121AC @ =gWinRegs
	add r0, sp, #8
	ldrb r0, [r0, #5]
	lsls r0, r0, #8
	movs r1, #0xa0
	orrs r0, r1
	strh r0, [r2, #6]
	b _080121BE
	.align 2, 0
_080121A4: .4byte gSineTable
_080121A8: .4byte 0x000001FF
_080121AC: .4byte gWinRegs
_080121B0:
	ldr r2, _080121DC @ =gWinRegs
	add r0, sp, #8
	ldrb r0, [r0, #5]
	lsls r0, r0, #8
	movs r1, #0xa0
	orrs r0, r1
	strh r0, [r2, #4]
_080121BE:
	ldrb r0, [r4, #0xa]
	add r1, sp, #8
	ldrb r1, [r1, #4]
	add r2, sp, #8
	ldrb r2, [r2, #5]
	add r3, sp, #8
	ldrb r3, [r3, #6]
	add r4, sp, #8
	ldrb r4, [r4, #7]
	str r4, [sp]
	movs r4, #0
	str r4, [sp, #4]
	bl sa2__sub_8006228
	b _080122BA
	.align 2, 0
_080121DC: .4byte gWinRegs
_080121E0:
	ldrb r1, [r4, #0xa]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08012200
	ldr r2, _080121FC @ =gWinRegs
	add r0, sp, #8
	ldrb r0, [r0, #5]
	lsls r0, r0, #8
	movs r1, #0xa0
	orrs r0, r1
	strh r0, [r2, #6]
	b _0801220E
	.align 2, 0
_080121FC: .4byte gWinRegs
_08012200:
	ldr r2, _08012218 @ =gWinRegs
	add r0, sp, #8
	ldrb r0, [r0, #5]
	lsls r0, r0, #8
	movs r1, #0xa0
	orrs r0, r1
	strh r0, [r2, #4]
_0801220E:
	ldrb r0, [r4, #0xa]
	add r1, sp, #8
	bl sa2__sub_800724C
	b _080122BA
	.align 2, 0
_08012218: .4byte gWinRegs
_0801221C:
	mov r3, sl
	ldrh r0, [r3, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	bgt _080122BA
	mov r5, r8
	ldrh r0, [r5, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	ble _08012284
	ldrb r1, [r4, #0xa]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08012254
	ldr r2, _08012250 @ =gWinRegs
	add r0, sp, #8
	ldrb r0, [r0, #1]
	lsls r0, r0, #8
	movs r1, #0xa0
	orrs r0, r1
	strh r0, [r2, #6]
	b _08012262
	.align 2, 0
_08012250: .4byte gWinRegs
_08012254:
	ldr r2, _08012280 @ =gWinRegs
	add r0, sp, #8
	ldrb r0, [r0, #1]
	lsls r0, r0, #8
	movs r1, #0xa0
	orrs r0, r1
	strh r0, [r2, #4]
_08012262:
	ldrb r0, [r4, #0xa]
	add r1, sp, #8
	ldrb r1, [r1]
	add r2, sp, #8
	ldrb r2, [r2, #1]
	add r3, sp, #8
	ldrb r3, [r3, #2]
	add r4, sp, #8
	ldrb r4, [r4, #3]
	str r4, [sp]
	movs r4, #0
	str r4, [sp, #4]
	bl sa2__sub_80064A8
	b _080122BA
	.align 2, 0
_08012280: .4byte gWinRegs
_08012284:
	ldrb r1, [r4, #0xa]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080122A4
	ldr r2, _080122A0 @ =gWinRegs
	add r0, sp, #8
	ldrb r0, [r0, #1]
	lsls r0, r0, #8
	movs r1, #0xa0
	orrs r0, r1
	strh r0, [r2, #6]
	b _080122B2
	.align 2, 0
_080122A0: .4byte gWinRegs
_080122A4:
	ldr r2, _080122CC @ =gWinRegs
	add r0, sp, #8
	ldrb r0, [r0, #1]
	lsls r0, r0, #8
	movs r1, #0xa0
	orrs r0, r1
	strh r0, [r2, #4]
_080122B2:
	ldrb r0, [r4, #0xa]
	add r1, sp, #8
	bl sa2__sub_800724C
_080122BA:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080122CC: .4byte gWinRegs

	thumb_func_start TaskDestructor_Spotlights
TaskDestructor_Spotlights: @ 0x080122D0
	ldr r0, _080122E0 @ =gFlags
	ldr r1, [r0]
	movs r2, #5
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_080122E0: .4byte gFlags

	thumb_func_start sub_80122E4
sub_80122E4: @ 0x080122E4
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r1, _080123AC @ =gDispCnt
	movs r2, #0x82
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080123B0 @ =sub_80123E4
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _080123B4 @ =sub_8012720
	str r1, [sp]
	movs r1, #0x80
	movs r3, #0
	bl TaskCreate
	adds r5, r0, #0
	ldrh r2, [r5, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r2, r0
	movs r4, #0
	movs r3, #0
	strh r3, [r6, #0x30]
	ldr r1, _080123B8 @ =0x0300007C
	adds r0, r2, r1
	strh r3, [r0]
	movs r0, #0xf0
	strh r0, [r6, #0x16]
	movs r0, #0x50
	strh r0, [r6, #0x18]
	ldr r0, _080123BC @ =0x06010000
	str r0, [r6, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r6, #0x1a]
	strh r3, [r6, #8]
	ldr r0, _080123C0 @ =0x000002CD
	strh r0, [r6, #0xa]
	subs r1, #0x5c
	adds r0, r2, r1
	strb r4, [r0]
	strh r3, [r6, #0x14]
	strh r3, [r6, #0x1c]
	ldr r0, _080123C4 @ =0x03000021
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _080123C8 @ =0x03000022
	adds r1, r2, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _080123CC @ =0x03000025
	adds r2, r2, r1
	strb r4, [r2]
	subs r0, #0x11
	str r0, [r6, #0x28]
	str r3, [r6, #0x10]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	movs r5, #0
_08012362:
	adds r4, r5, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r1, r4, #0
	bl sub_80125C0
	lsls r2, r5, #2
	adds r1, r6, #0
	adds r1, #0x74
	adds r1, r1, r2
	str r0, [r1]
	adds r5, r4, #0
	cmp r5, #1
	bls _08012362
	ldr r0, _080123D0 @ =0x01E00050
	str r0, [sp, #4]
	ldr r1, _080123D4 @ =0x040000D4
	add r2, sp, #4
	str r2, [r1]
	adds r0, r6, #0
	adds r0, #0x32
	str r0, [r1, #4]
	ldr r0, _080123D8 @ =0x85000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _080123DC @ =gBgPalette
	movs r0, #0
	strh r0, [r1]
	ldr r2, _080123E0 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080123AC: .4byte gDispCnt
_080123B0: .4byte sub_80123E4
_080123B4: .4byte 0x08012721
_080123B8: .4byte 0x0300007C
_080123BC: .4byte 0x06010000
_080123C0: .4byte 0x000002CD
_080123C4: .4byte 0x03000021
_080123C8: .4byte 0x03000022
_080123CC: .4byte 0x03000025
_080123D0: .4byte 0x01E00050
_080123D4: .4byte 0x040000D4
_080123D8: .4byte 0x85000010
_080123DC: .4byte gBgPalette
_080123E0: .4byte gFlags

	thumb_func_start sub_80123E4
sub_80123E4: @ 0x080123E4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _08012478 @ =gBldRegs
	movs r3, #0
	strh r3, [r0]
	strh r3, [r0, #4]
	ldr r0, _0801247C @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r7, r0
	ldr r1, _08012480 @ =0x0300007C
	adds r4, r7, r1
	ldrh r0, [r4]
	adds r0, #8
	ldr r2, _08012484 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r4]
	ldr r1, _08012488 @ =gSineTable
	ldrh r0, [r4]
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r1, r0, #4
	subs r1, r1, r0
	asrs r1, r1, #4
	adds r1, #0x78
	strh r1, [r6, #0x16]
	ldrh r2, [r6, #0x30]
	lsls r2, r2, #2
	mov ip, r2
	ldr r2, _0801248C @ =0x03000032
	adds r0, r7, r2
	add r0, ip
	strh r1, [r0]
	ldrh r0, [r6, #0x30]
	lsls r0, r0, #2
	adds r2, #2
	adds r1, r7, r2
	adds r1, r1, r0
	ldrh r0, [r6, #0x18]
	strh r0, [r1]
	ldrh r0, [r6, #0x30]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strh r0, [r6, #0x30]
	adds r0, r6, #0
	str r3, [sp]
	bl DisplaySprite
	ldrh r1, [r4]
	ldr r3, [sp]
	cmp r1, r5
	bne _08012498
	movs r0, #0x78
	strh r0, [r6, #0x16]
	ldr r1, _08012490 @ =0x0300007E
	adds r0, r7, r1
	strh r3, [r0]
	mov r2, r8
	ldr r1, [r2]
	ldr r0, _08012494 @ =sub_80124C4
	b _080124AC
	.align 2, 0
_08012478: .4byte gBldRegs
_0801247C: .4byte gCurTask
_08012480: .4byte 0x0300007C
_08012484: .4byte 0x000003FF
_08012488: .4byte gSineTable
_0801248C: .4byte 0x03000032
_08012490: .4byte 0x0300007E
_08012494: .4byte sub_80124C4
_08012498:
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	bne _080124AE
	ldr r1, _080124BC @ =0x0300007E
	adds r0, r7, r1
	strh r3, [r0]
	mov r2, r8
	ldr r1, [r2]
	ldr r0, _080124C0 @ =sub_801252C
_080124AC:
	str r0, [r1, #8]
_080124AE:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080124BC: .4byte 0x0300007E
_080124C0: .4byte sub_801252C

	thumb_func_start sub_80124C4
sub_80124C4: @ 0x080124C4
	push {r4, r5, lr}
	ldr r5, _0801251C @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldrh r1, [r0, #0x30]
	lsls r1, r1, #2
	ldr r3, _08012520 @ =0x03000032
	adds r2, r4, r3
	adds r2, r2, r1
	ldrh r1, [r0, #0x16]
	strh r1, [r2]
	ldrh r1, [r0, #0x30]
	lsls r1, r1, #2
	adds r3, #2
	adds r2, r4, r3
	adds r2, r2, r1
	ldrh r1, [r0, #0x18]
	strh r1, [r2]
	ldrh r1, [r0, #0x30]
	adds r1, #1
	movs r2, #0xf
	ands r1, r2
	strh r1, [r0, #0x30]
	bl DisplaySprite
	ldr r0, _08012524 @ =0x0300007E
	adds r4, r4, r0
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3d
	bne _08012514
	ldr r1, [r5]
	ldr r0, _08012528 @ =sub_80123E4
	str r0, [r1, #8]
_08012514:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801251C: .4byte gCurTask
_08012520: .4byte 0x03000032
_08012524: .4byte 0x0300007E
_08012528: .4byte sub_80123E4

	thumb_func_start sub_801252C
sub_801252C: @ 0x0801252C
	push {r4, lr}
	ldr r0, _0801259C @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r3, r2
	ldrh r0, [r2, #0x30]
	lsls r0, r0, #2
	ldr r4, _080125A0 @ =0x03000032
	adds r1, r3, r4
	adds r1, r1, r0
	ldrh r0, [r2, #0x16]
	strh r0, [r1]
	ldrh r0, [r2, #0x30]
	lsls r0, r0, #2
	adds r4, #2
	adds r1, r3, r4
	adds r1, r1, r0
	ldrh r0, [r2, #0x18]
	strh r0, [r1]
	ldrh r0, [r2, #0x30]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strh r0, [r2, #0x30]
	ldr r0, _080125A4 @ =0x0300007E
	adds r3, r3, r0
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3d
	bne _08012594
	ldr r1, _080125A8 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080125AC @ =gBackgroundsCopyQueueCursor
	ldr r0, _080125B0 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080125B4 @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080125B8 @ =gVramGraphicsCopyCursor
	ldr r0, _080125BC @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl CreateSegaLogo
_08012594:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801259C: .4byte gCurTask
_080125A0: .4byte 0x03000032
_080125A4: .4byte 0x0300007E
_080125A8: .4byte 0x0000FFFF
_080125AC: .4byte gBackgroundsCopyQueueCursor
_080125B0: .4byte gBackgroundsCopyQueueIndex
_080125B4: .4byte sa2__gUnknown_03005390
_080125B8: .4byte gVramGraphicsCopyCursor
_080125BC: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start sub_80125C0
sub_80125C0: @ 0x080125C0
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #8
	mov sb, r0
	lsls r5, r1, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _08012688 @ =sub_80126B4
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	adds r2, r5, #0
	orrs r2, r1
	ldr r1, _0801268C @ =0x08012725
	str r1, [sp]
	movs r1, #0x74
	movs r3, #0
	bl TaskCreate
	mov r8, r0
	movs r0, #0
	mov sl, r0
	movs r6, #0
	mov r2, sb
	mov r1, r8
	strh r2, [r1]
	ldrh r4, [r1, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r4, r1
	mov r2, sb
	ldrh r3, [r2, #6]
	adds r3, r3, r1
	ldrh r1, [r3, #0x30]
	adds r1, #8
	movs r2, #0xf
	ands r1, r2
	strh r1, [r0, #0x30]
	ldrh r1, [r3, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r3, #0x18]
	strh r1, [r0, #0x18]
	ldr r1, [r3, #4]
	movs r2, #0xe0
	lsls r2, r2, #3
	adds r1, r1, r2
	str r1, [r0, #4]
	adds r1, r5, #0
	adds r1, #0x12
	lsls r1, r1, #6
	strh r1, [r0, #0x1a]
	strh r6, [r0, #8]
	ldr r1, _08012690 @ =0x000002CD
	strh r1, [r0, #0xa]
	ldr r2, _08012694 @ =0x03000020
	adds r1, r4, r2
	strb r5, [r1]
	strh r6, [r0, #0x14]
	strh r6, [r0, #0x1c]
	ldr r1, _08012698 @ =0x03000021
	adds r2, r4, r1
	movs r1, #0xff
	strb r1, [r2]
	ldr r1, _0801269C @ =0x03000022
	adds r2, r4, r1
	movs r1, #0x10
	strb r1, [r2]
	ldr r2, _080126A0 @ =0x03000025
	adds r1, r4, r2
	mov r2, sl
	strb r2, [r1]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0, #0x28]
	str r6, [r0, #0x10]
	bl UpdateSpriteAnimation
	ldr r0, _080126A4 @ =0x01E00050
	str r0, [sp, #4]
	ldr r1, _080126A8 @ =0x040000D4
	add r0, sp, #4
	str r0, [r1]
	ldr r2, _080126AC @ =0x03000032
	adds r4, r4, r2
	str r4, [r1, #4]
	ldr r0, _080126B0 @ =0x85000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r0, r8
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08012688: .4byte sub_80126B4
_0801268C: .4byte 0x08012725
_08012690: .4byte 0x000002CD
_08012694: .4byte 0x03000020
_08012698: .4byte 0x03000021
_0801269C: .4byte 0x03000022
_080126A0: .4byte 0x03000025
_080126A4: .4byte 0x01E00050
_080126A8: .4byte 0x040000D4
_080126AC: .4byte 0x03000032
_080126B0: .4byte 0x85000010

	thumb_func_start sub_80126B4
sub_80126B4: @ 0x080126B4
	push {r4, r5, r6, lr}
	ldr r0, _08012714 @ =gCurTask
	ldr r1, [r0]
	ldrh r4, [r1, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r0, r4, r5
	ldrh r1, [r1]
	adds r1, r1, r5
	ldrh r3, [r1, #6]
	adds r5, r3, r5
	ldrh r2, [r0, #0x30]
	lsls r2, r2, #2
	ldr r6, _08012718 @ =0x03000032
	adds r1, r3, r6
	adds r1, r1, r2
	ldrh r6, [r1]
	strh r6, [r0, #0x16]
	ldrh r1, [r0, #0x30]
	lsls r1, r1, #2
	ldr r2, _0801271C @ =0x03000034
	adds r3, r3, r2
	adds r3, r3, r1
	ldrh r1, [r3]
	strh r1, [r0, #0x18]
	ldrh r2, [r0, #0x30]
	lsls r2, r2, #2
	ldr r3, _08012718 @ =0x03000032
	adds r1, r4, r3
	adds r1, r1, r2
	strh r6, [r1]
	ldrh r1, [r0, #0x30]
	lsls r1, r1, #2
	ldr r6, _0801271C @ =0x03000034
	adds r4, r4, r6
	adds r4, r4, r1
	ldrh r1, [r0, #0x18]
	strh r1, [r4]
	ldrh r1, [r5, #0x30]
	adds r1, #8
	movs r2, #0xf
	ands r1, r2
	strh r1, [r0, #0x30]
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08012714: .4byte gCurTask
_08012718: .4byte 0x03000032
_0801271C: .4byte 0x03000034

	thumb_func_start nullsub_8012720
nullsub_8012720: @ 0x08012720
    bx lr
    .align 2 , 0

	thumb_func_start nullsub_8012724
nullsub_8012724: @ 0x08012724
    bx lr
    .align 2 , 0

	thumb_func_start sub_8012728
sub_8012728: @ 0x08012728
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	mov sb, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	ldr r0, _080127C0 @ =sub_80127DC
	movs r2, #0x80
	lsls r2, r2, #6
	mov sl, r2
	ldr r1, _080127C4 @ =sub_80128AC
	str r1, [sp]
	movs r1, #0x34
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	movs r7, #0
	movs r6, #0
	strh r6, [r4, #0x30]
	mov r0, r8
	strh r0, [r4, #0x16]
	mov r1, sb
	strh r1, [r4, #0x18]
	movs r0, #2
	bl VramMalloc
	str r0, [r4, #4]
	strh r6, [r4, #0x1a]
	strh r6, [r4, #8]
	ldr r0, _080127C8 @ =0x000002C5
	strh r0, [r4, #0xa]
	ldr r0, _080127CC @ =gPlayer
	adds r0, #0x58
	ldrb r1, [r0]
	ldr r2, _080127D0 @ =0x03000020
	adds r0, r5, r2
	strb r1, [r0]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	ldr r0, _080127D4 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	adds r2, #2
	adds r1, r5, r2
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _080127D8 @ =0x03000025
	adds r5, r5, r0
	strb r7, [r5]
	mov r1, sl
	str r1, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080127C0: .4byte sub_80127DC
_080127C4: .4byte sub_80128AC
_080127C8: .4byte 0x000002C5
_080127CC: .4byte gPlayer
_080127D0: .4byte 0x03000020
_080127D4: .4byte 0x03000021
_080127D8: .4byte 0x03000025

	thumb_func_start sub_80127DC
sub_80127DC: @ 0x080127DC
	push {r4, r5, r6, r7, lr}
	ldr r0, _0801282C @ =gCurTask
	ldr r5, [r0]
	ldrh r1, [r5, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r6, [r4, #0x16]
	ldrh r7, [r4, #0x18]
	ldrh r2, [r4, #0x30]
	adds r2, #1
	strh r2, [r4, #0x30]
	ldr r3, _08012830 @ =gCamera
	ldrh r0, [r4, #0x16]
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldrh r1, [r3, #2]
	adds r1, r1, r2
	ldrh r0, [r4, #0x18]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #0x3b
	ble _08012838
	ldr r0, _08012834 @ =sub_8012848
	str r0, [r5, #8]
	adds r0, r4, #0
	bl DisplaySprite
	strh r6, [r4, #0x16]
	ldrh r1, [r4, #0x30]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	movs r0, #0
	strh r0, [r4, #0x30]
	b _08012842
	.align 2, 0
_0801282C: .4byte gCurTask
_08012830: .4byte gCamera
_08012834: .4byte sub_8012848
_08012838:
	adds r0, r4, #0
	bl DisplaySprite
	strh r6, [r4, #0x16]
	strh r7, [r4, #0x18]
_08012842:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8012848
sub_8012848: @ 0x08012848
	push {r4, r5, r6, lr}
	ldr r0, _08012880 @ =gCurTask
	ldr r3, [r0]
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r5, [r4, #0x16]
	ldrh r6, [r4, #0x18]
	ldr r2, _08012884 @ =gCamera
	ldrh r0, [r2]
	subs r0, r5, r0
	strh r0, [r4, #0x16]
	ldrh r0, [r4, #0x18]
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	ldrh r0, [r4, #0x30]
	adds r0, #1
	strh r0, [r4, #0x30]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1e
	ble _08012888
	adds r0, r3, #0
	bl TaskDestroy
	b _080128A6
	.align 2, 0
_08012880: .4byte gCurTask
_08012884: .4byte gCamera
_08012888:
	ldrh r1, [r2]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldrh r1, [r2, #2]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl DisplaySprite
	strh r5, [r4, #0x16]
	strh r6, [r4, #0x18]
_080128A6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_80128AC
sub_80128AC: @ 0x080128AC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80128C0
sub_80128C0: @ 0x080128C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r1, _080129FC @ =gUnknown_080BB3DC
	add r0, sp, #4
	movs r2, #4
	bl memcpy
	ldr r0, _08012A00 @ =gBldRegs
	ldrb r1, [r0]
	movs r0, #0xc0
	ands r0, r1
	str r0, [sp, #8]
	ldr r0, _08012A04 @ =sub_8012A38
	ldr r1, _08012A08 @ =sub_8012C70
	str r1, [sp]
	movs r1, #0x68
	movs r2, #1
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	ldr r1, _08012A0C @ =0x03000060
	adds r0, r6, r1
	movs r2, #0
	mov r8, r2
	movs r7, #0
	strh r7, [r0]
	adds r1, #2
	adds r0, r6, r1
	strh r7, [r0]
	ldr r2, _08012A10 @ =0x03000064
	adds r0, r6, r2
	mov r1, r8
	strb r1, [r0]
	ldr r4, _08012A14 @ =gLoadedSaveGame
	ldrb r1, [r4, #0x1b]
	adds r2, #1
	adds r0, r6, r2
	strb r1, [r0]
	ldr r2, _08012A18 @ =gStageFlags
	ldrh r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2]
	orrs r5, r6
	movs r0, #0x78
	strh r0, [r5, #0x16]
	movs r0, #0x71
	strh r0, [r5, #0x18]
	movs r0, #0x2e
	bl VramMalloc
	str r0, [r5, #4]
	strh r7, [r5, #8]
	ldrb r0, [r4, #0x19]
	lsls r0, r0, #1
	add r0, sp
	adds r0, #4
	ldrh r0, [r0]
	strh r0, [r5, #0xa]
	ldr r1, _08012A1C @ =0x03000020
	adds r0, r6, r1
	mov r2, r8
	strb r2, [r0]
	strh r7, [r5, #0x14]
	ldr r0, _08012A20 @ =0x03000021
	adds r1, r6, r0
	movs r2, #1
	rsbs r2, r2, #0
	mov sb, r2
	movs r0, #0xff
	strb r0, [r1]
	strh r7, [r5, #0x1c]
	ldr r1, _08012A24 @ =0x03000022
	adds r0, r6, r1
	movs r2, #0x10
	strb r2, [r0]
	adds r1, #3
	adds r0, r6, r1
	mov r2, r8
	strb r2, [r0]
	movs r0, #0xf0
	lsls r0, r0, #2
	mov sl, r0
	mov r1, sl
	strh r1, [r5, #0x1a]
	movs r4, #0x80
	lsls r4, r4, #5
	str r4, [r5, #0x10]
	ldr r2, [sp, #8]
	cmp r2, #0x40
	beq _0801298A
	movs r0, #0x80
	orrs r0, r4
	str r0, [r5, #0x10]
_0801298A:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	ldr r0, _08012A28 @ =0x03000030
	adds r5, r6, r0
	movs r1, #0x78
	strh r1, [r5, #0x16]
	movs r0, #0x50
	strh r0, [r5, #0x18]
	movs r0, #3
	bl VramMalloc
	str r0, [r5, #4]
	strh r7, [r5, #8]
	ldr r0, _08012A2C @ =0x000002D1
	strh r0, [r5, #0xa]
	ldr r2, _08012A30 @ =0x03000050
	adds r0, r6, r2
	mov r1, r8
	strb r1, [r0]
	strh r7, [r5, #0x14]
	adds r2, #1
	adds r1, r6, r2
	ldrb r0, [r1]
	mov r2, sb
	orrs r0, r2
	strb r0, [r1]
	strh r7, [r5, #0x1c]
	ldr r1, _08012A34 @ =0x03000052
	adds r0, r6, r1
	movs r2, #0x10
	strb r2, [r0]
	adds r1, #3
	adds r0, r6, r1
	mov r2, r8
	strb r2, [r0]
	mov r0, sl
	strh r0, [r5, #0x1a]
	str r4, [r5, #0x10]
	ldr r1, [sp, #8]
	cmp r1, #0x40
	beq _080129E4
	movs r0, #0x80
	orrs r0, r4
	str r0, [r5, #0x10]
_080129E4:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080129FC: .4byte gUnknown_080BB3DC
_08012A00: .4byte gBldRegs
_08012A04: .4byte sub_8012A38
_08012A08: .4byte sub_8012C70
_08012A0C: .4byte 0x03000060
_08012A10: .4byte 0x03000064
_08012A14: .4byte gLoadedSaveGame
_08012A18: .4byte gStageFlags
_08012A1C: .4byte 0x03000020
_08012A20: .4byte 0x03000021
_08012A24: .4byte 0x03000022
_08012A28: .4byte 0x03000030
_08012A2C: .4byte 0x000002D1
_08012A30: .4byte 0x03000050
_08012A34: .4byte 0x03000052

	thumb_func_start sub_8012A38
sub_8012A38: @ 0x08012A38
	push {r4, r5, r6, lr}
	ldr r6, _08012AAC @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r0, _08012AB0 @ =gPhysicalInput
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08012ADC
	ldr r2, _08012AB4 @ =gPlayer
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r2, #0x10]
	movs r3, #0
	strh r3, [r2, #0x38]
	ldr r1, _08012AB8 @ =gDestroySpotlights
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08012ABC @ =0x03000064
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	ldr r1, [r6]
	ldr r0, _08012AC0 @ =sub_8012C34
	str r0, [r1, #8]
	ldr r1, _08012AC4 @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	strh r3, [r1, #4]
	ldr r1, _08012AC8 @ =gMusicManagerState
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08012ACC @ =gMPlayInfo_BGM
	movs r1, #4
	bl m4aMPlayFadeOut
	ldr r0, _08012AD0 @ =gMPlayInfo_SE1
	movs r1, #4
	bl m4aMPlayFadeOut
	ldr r0, _08012AD4 @ =gMPlayInfo_SE2
	movs r1, #4
	bl m4aMPlayFadeOut
	ldr r0, _08012AD8 @ =gMPlayInfo_SE3
	movs r1, #4
	bl m4aMPlayFadeOut
	b _08012B22
	.align 2, 0
_08012AAC: .4byte gCurTask
_08012AB0: .4byte gPhysicalInput
_08012AB4: .4byte gPlayer
_08012AB8: .4byte gDestroySpotlights
_08012ABC: .4byte 0x03000064
_08012AC0: .4byte sub_8012C34
_08012AC4: .4byte gBldRegs
_08012AC8: .4byte gMusicManagerState
_08012ACC: .4byte gMPlayInfo_BGM
_08012AD0: .4byte gMPlayInfo_SE1
_08012AD4: .4byte gMPlayInfo_SE2
_08012AD8: .4byte gMPlayInfo_SE3
_08012ADC:
	ldr r0, _08012B40 @ =gCheckpointTime
	ldr r1, [r0]
	movs r0, #0xe1
	lsls r0, r0, #3
	cmp r1, r0
	bls _08012B22
	ldr r1, _08012B44 @ =0x03000064
	adds r0, r4, r1
	strb r2, [r0]
	ldr r1, [r6]
	ldr r0, _08012B48 @ =sub_8012C34
	str r0, [r1, #8]
	ldr r1, _08012B4C @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #4]
	ldr r1, _08012B50 @ =gMusicManagerState
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08012B54 @ =gMPlayInfo_BGM
	movs r1, #4
	bl m4aMPlayFadeOut
	ldr r0, _08012B58 @ =gMPlayInfo_SE1
	movs r1, #4
	bl m4aMPlayFadeOut
	ldr r0, _08012B5C @ =gMPlayInfo_SE2
	movs r1, #4
	bl m4aMPlayFadeOut
	ldr r0, _08012B60 @ =gMPlayInfo_SE3
	movs r1, #4
	bl m4aMPlayFadeOut
_08012B22:
	adds r2, r5, #0
	ldr r0, _08012B40 @ =gCheckpointTime
	ldr r0, [r0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08012B72
	ldr r0, _08012B4C @ =gBldRegs
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _08012B64
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	orrs r0, r1
	b _08012B6A
	.align 2, 0
_08012B40: .4byte gCheckpointTime
_08012B44: .4byte 0x03000064
_08012B48: .4byte sub_8012C34
_08012B4C: .4byte gBldRegs
_08012B50: .4byte gMusicManagerState
_08012B54: .4byte gMPlayInfo_BGM
_08012B58: .4byte gMPlayInfo_SE1
_08012B5C: .4byte gMPlayInfo_SE2
_08012B60: .4byte gMPlayInfo_SE3
_08012B64:
	ldr r0, [r5, #0x10]
	ldr r1, _08012B84 @ =0xFFFFFE7F
	ands r0, r1
_08012B6A:
	str r0, [r5, #0x10]
	adds r0, r2, #0
	bl DisplaySprite
_08012B72:
	ldr r0, _08012B88 @ =gBldRegs
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _08012B8C
	ldr r0, [r5, #0x40]
	movs r1, #0x80
	orrs r0, r1
	b _08012B92
	.align 2, 0
_08012B84: .4byte 0xFFFFFE7F
_08012B88: .4byte gBldRegs
_08012B8C:
	ldr r0, [r5, #0x40]
	ldr r1, _08012BA4 @ =0xFFFFFE7F
	ands r0, r1
_08012B92:
	str r0, [r5, #0x40]
	adds r0, r5, #0
	adds r0, #0x30
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08012BA4: .4byte 0xFFFFFE7F

	thumb_func_start sub_8012BA8
sub_8012BA8: @ 0x08012BA8
	push {r4, lr}
	ldr r0, _08012BFC @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	ldr r0, _08012C00 @ =0x03000062
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x2f
	bls _08012C2E
	ldr r1, _08012C04 @ =gLoadedSaveGame
	ldr r2, _08012C08 @ =0x03000065
	adds r0, r4, r2
	ldrb r0, [r0]
	strb r0, [r1, #0x1b]
	ldr r1, _08012C0C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08012C10 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08012C14 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08012C18 @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08012C1C @ =gVramGraphicsCopyCursor
	ldr r0, _08012C20 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08012C24 @ =0x03000064
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08012C28
	bl CreateSegaLogo
	b _08012C2E
	.align 2, 0
_08012BFC: .4byte gCurTask
_08012C00: .4byte 0x03000062
_08012C04: .4byte gLoadedSaveGame
_08012C08: .4byte 0x03000065
_08012C0C: .4byte 0x0000FFFF
_08012C10: .4byte gBackgroundsCopyQueueCursor
_08012C14: .4byte gBackgroundsCopyQueueIndex
_08012C18: .4byte sa2__gUnknown_03005390
_08012C1C: .4byte gVramGraphicsCopyCursor
_08012C20: .4byte gVramGraphicsCopyQueueIndex
_08012C24: .4byte 0x03000064
_08012C28:
	movs r0, #1
	bl CreateTitleScreen
_08012C2E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8012C34
sub_8012C34: @ 0x08012C34
	ldr r0, _08012C5C @ =gCurTask
	ldr r3, [r0]
	ldrh r1, [r3, #6]
	ldr r0, _08012C60 @ =0x03000060
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #0x40
	strh r0, [r1]
	ldr r2, _08012C64 @ =gBldRegs
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strh r0, [r2, #4]
	ldrh r1, [r1]
	ldr r0, _08012C68 @ =0x00000FFF
	cmp r1, r0
	bls _08012C58
	ldr r0, _08012C6C @ =sub_8012BA8
	str r0, [r3, #8]
_08012C58:
	bx lr
	.align 2, 0
_08012C5C: .4byte gCurTask
_08012C60: .4byte 0x03000060
_08012C64: .4byte gBldRegs
_08012C68: .4byte 0x00000FFF
_08012C6C: .4byte sub_8012BA8

	thumb_func_start sub_8012C70
sub_8012C70: @ 0x08012C70
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #4]
	bl VramFree
	ldr r0, [r4, #0x34]
	bl VramFree
	ldr r1, _08012C9C @ =gDestroySpotlights
	movs r0, #0
	strb r0, [r1]
	ldr r2, _08012CA0 @ =gStageFlags
	ldrh r1, [r2]
	ldr r0, _08012CA4 @ =0x0000FFBF
	ands r0, r1
	strh r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08012C9C: .4byte gDestroySpotlights
_08012CA0: .4byte gStageFlags
_08012CA4: .4byte 0x0000FFBF

@ TODO: Is the name correct?
	thumb_func_start SaveGameExists
SaveGameExists: @ 0x08012CA8
	push {r4, r5, r6, r7, lr}
	movs r6, #0
	ldr r7, _08012CC8 @ =gUnknown_0300508C
	movs r1, #1
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	ldr r0, _08012CCC @ =gFlags
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08012CD0
	movs r0, #0
	b _08012D8E
	.align 2, 0
_08012CC8: .4byte gUnknown_0300508C
_08012CCC: .4byte gFlags
_08012CD0:
	ldr r5, _08012D00 @ =gLoadedSaveGame
	movs r3, #0x86
	lsls r3, r3, #3
	movs r0, #0
	movs r1, #0
	adds r2, r5, #0
	bl ReadFlash
	ldr r1, [r5]
	ldr r0, _08012D04 @ =0x4F524950
	cmp r1, r0
	bne _08012D0C
	ldr r2, _08012D08 @ =0x0000042C
	adds r4, r5, r2
	adds r0, r5, #0
	bl sub_8012FC4
	ldr r1, [r4]
	cmp r1, r0
	bne _08012D0E
	movs r0, #0
	strb r0, [r7]
	b _08012D0E
	.align 2, 0
_08012D00: .4byte gLoadedSaveGame
_08012D04: .4byte 0x4F524950
_08012D08: .4byte 0x0000042C
_08012D0C:
	movs r6, #1
_08012D0E:
	lsls r1, r6, #0x18
	asrs r0, r1, #0x18
	cmp r0, #9
	bgt _08012D54
	ldr r5, _08012D68 @ =gLoadedSaveGame
	ldr r0, _08012D6C @ =0x0000042C
	adds r7, r5, r0
_08012D1C:
	asrs r4, r1, #0x18
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0x86
	lsls r3, r3, #3
	bl ReadFlash
	ldr r1, [r5]
	ldr r0, _08012D70 @ =0x4F524950
	cmp r1, r0
	bne _08012D54
	adds r0, r5, #0
	bl sub_8012FC4
	ldr r1, [r7]
	cmp r1, r0
	bne _08012D46
	ldr r0, _08012D74 @ =gUnknown_0300508C
	strb r6, [r0]
_08012D46:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r6, #0x18
	asrs r0, r1, #0x18
	cmp r0, #9
	ble _08012D1C
_08012D54:
	ldr r1, _08012D74 @ =gUnknown_0300508C
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _08012D78
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r1]
	movs r0, #0
	b _08012D8E
	.align 2, 0
_08012D68: .4byte gLoadedSaveGame
_08012D6C: .4byte 0x0000042C
_08012D70: .4byte 0x4F524950
_08012D74: .4byte gUnknown_0300508C
_08012D78:
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08012D94 @ =gLoadedSaveGame
	movs r3, #0x86
	lsls r3, r3, #3
	movs r1, #0
	bl ReadFlash
	movs r0, #1
_08012D8E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08012D94: .4byte gLoadedSaveGame

	thumb_func_start sub_8012D98
sub_8012D98: @ 0x08012D98
	push {r4, r5, r6, lr}
	ldr r0, _08012DE0 @ =gFlags
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08012E0E
	ldr r6, _08012DE4 @ =gUnknown_0300508C
	movs r1, #0
	ldrsb r1, [r6, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08012E1C
	movs r4, #0x86
	lsls r4, r4, #3
	adds r0, r4, #0
	bl EwramMalloc
	adds r5, r0, #0
	movs r0, #0
	ldrsb r0, [r6, r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl ReadFlash
	movs r4, #1
	movs r2, #0
	ldr r0, _08012DE8 @ =gLoadedSaveGame
	ldrb r1, [r5]
	b _08012DFC
	.align 2, 0
_08012DE0: .4byte gFlags
_08012DE4: .4byte gUnknown_0300508C
_08012DE8: .4byte gLoadedSaveGame
_08012DEC:
	adds r2, #1
	ldr r0, _08012E14 @ =0x0000042F
	cmp r2, r0
	bhi _08012E04
	adds r1, r5, r2
	ldr r0, _08012E18 @ =gLoadedSaveGame
	adds r0, r2, r0
	ldrb r1, [r1]
_08012DFC:
	ldrb r0, [r0]
	cmp r1, r0
	beq _08012DEC
	movs r4, #0
_08012E04:
	adds r0, r5, #0
	bl EwramFree
	cmp r4, #0
	beq _08012E1C
_08012E0E:
	movs r0, #0
	b _08012E8A
	.align 2, 0
_08012E14: .4byte 0x0000042F
_08012E18: .4byte gLoadedSaveGame
_08012E1C:
	ldr r0, _08012E34 @ =gUnknown_0300508C
	ldrb r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #9
	bne _08012E3C
	ldr r0, _08012E38 @ =EraseFlashSector
	ldr r1, [r0]
	movs r0, #0
	b _08012E52
	.align 2, 0
_08012E34: .4byte gUnknown_0300508C
_08012E38: .4byte EraseFlashSector
_08012E3C:
	cmp r0, #9
	ble _08012E42
	movs r5, #0
_08012E42:
	ldr r1, _08012E90 @ =EraseFlashSector
	lsls r0, r5, #0x18
	asrs r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	ldr r1, [r1]
_08012E52:
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _08012E8A
	ldr r4, _08012E94 @ =gLoadedSaveGame
	ldr r0, _08012E98 @ =0x4F524950
	str r0, [r4]
	adds r0, r4, #0
	bl sub_8012FC4
	ldr r2, _08012E9C @ =0x0000042C
	adds r1, r4, r2
	str r0, [r1]
	ldr r0, _08012EA0 @ =gUnknown_0300508C
	strb r5, [r0]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r2, #4
	adds r1, r4, #0
	bl ProgramFlashSectorAndVerifyNBytes
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_08012E8A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08012E90: .4byte EraseFlashSector
_08012E94: .4byte gLoadedSaveGame
_08012E98: .4byte 0x4F524950
_08012E9C: .4byte 0x0000042C
_08012EA0: .4byte gUnknown_0300508C

	thumb_func_start sub_8012EA4
sub_8012EA4: @ 0x08012EA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r3, r0, #0
	movs r0, #0
	mov sb, r0
	mov r8, r0
	ldr r6, _08012F44 @ =gCurrentLevel
	ldr r5, _08012F48 @ =gSelectedCharacter
	ldr r4, _08012F4C @ =gUnknown_03005180
	adds r7, r6, #0
	mov sl, r5
_08012EC0:
	movs r1, #0
	ldrsb r1, [r6, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	add r0, r8
	lsls r0, r0, #2
	movs r2, #0
	ldrsb r2, [r5, r2]
	movs r1, #0xd8
	muls r1, r2, r1
	adds r0, r0, r1
	adds r0, r0, r4
	ldr r1, [r0]
	cmp r3, r1
	bhs _08012F50
	adds r4, r1, #0
	str r3, [r0]
	mov r3, r8
	adds r3, #1
	cmp r3, #2
	bhi _08012F38
	mov ip, r7
	mov r7, sl
	movs r6, #0xd8
	ldr r5, _08012F4C @ =gUnknown_03005180
_08012EF2:
	lsls r2, r3, #2
	mov r0, ip
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r2, r0
	movs r1, #0
	ldrsb r1, [r7, r1]
	muls r1, r6, r1
	adds r0, r0, r1
	adds r0, r0, r5
	ldr r1, [r0]
	eors r1, r4
	str r1, [r0]
	mov r0, ip
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r0, #0
	ldrsb r0, [r7, r0]
	muls r0, r6, r0
	adds r2, r2, r0
	adds r2, r2, r5
	ldr r0, [r2]
	eors r4, r0
	eors r0, r4
	str r0, [r2]
	adds r3, #1
	cmp r3, #2
	bls _08012EF2
_08012F38:
	mov r0, r8
	cmp r0, #0
	bne _08012F5A
	movs r0, #1
	mov sb, r0
	b _08012F5A
	.align 2, 0
_08012F44: .4byte gCurrentLevel
_08012F48: .4byte gSelectedCharacter
_08012F4C: .4byte gUnknown_03005180
_08012F50:
	movs r0, #1
	add r8, r0
	mov r0, r8
	cmp r0, #2
	bls _08012EC0
_08012F5A:
	mov r0, sb
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8012F6C
sub_8012F6C: @ 0x08012F6C
	push {r4, r5, lr}
	ldr r0, _08012F80 @ =gFlags
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08012F88
	b _08012FB2
	.align 2, 0
_08012F80: .4byte gFlags
_08012F84:
	adds r0, r1, #0
	b _08012FB4
_08012F88:
	movs r2, #0
	ldr r5, _08012FBC @ =EraseFlashSector
_08012F8C:
	lsls r0, r2, #0x18
	asrs r4, r0, #0x18
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [r5]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08012F84
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #9
	ble _08012F8C
	ldr r0, _08012FC0 @ =gUnknown_0300508C
	strb r1, [r0]
_08012FB2:
	movs r0, #0
_08012FB4:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08012FBC: .4byte EraseFlashSector
_08012FC0: .4byte gUnknown_0300508C

	thumb_func_start sub_8012FC4
sub_8012FC4: @ 0x08012FC4
	push {r4, lr}
	adds r3, r0, #0
	movs r2, #0
	movs r1, #0
	ldr r4, _08012FE4 @ =0x0000042B
_08012FCE:
	adds r0, r3, r1
	ldr r0, [r0]
	adds r2, r2, r0
	adds r1, #4
	cmp r1, r4
	bls _08012FCE
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08012FE4: .4byte 0x0000042B

	thumb_func_start sub_8012FE8
sub_8012FE8: @ 0x08012FE8
	push {r4, lr}
	sub sp, #8
	ldr r1, _0801304C @ =gDispCnt
	movs r2, #0x88
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08013050 @ =gBgCntRegs
	movs r4, #0
	movs r3, #0
	ldr r0, _08013054 @ =0x00001E01
	strh r0, [r1, #4]
	str r3, [sp, #4]
	ldr r1, _08013058 @ =0x040000D4
	add r0, sp, #4
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _0801305C @ =0x85000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08013060 @ =sa2__gUnknown_03004D80
	strb r4, [r0, #2]
	ldr r1, _08013064 @ =sa2__gUnknown_03002280
	strb r4, [r1, #8]
	strb r4, [r1, #9]
	movs r0, #0xff
	strb r0, [r1, #0xa]
	movs r0, #0x40
	strb r0, [r1, #0xb]
	ldr r0, _08013068 @ =sub_8013078
	movs r2, #0x80
	lsls r2, r2, #5
	str r3, [sp]
	movs r1, #0
	bl TaskCreate
	ldr r1, _0801306C @ =gBgPalette
	ldr r0, _08013070 @ =0x00007FFF
	strh r0, [r1, #2]
	ldr r2, _08013074 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801304C: .4byte gDispCnt
_08013050: .4byte gBgCntRegs
_08013054: .4byte 0x00001E01
_08013058: .4byte 0x040000D4
_0801305C: .4byte 0x85000010
_08013060: .4byte sa2__gUnknown_03004D80
_08013064: .4byte sa2__gUnknown_03002280
_08013068: .4byte sub_8013078
_0801306C: .4byte gBgPalette
_08013070: .4byte 0x00007FFF
_08013074: .4byte gFlags

	thumb_func_start sub_8013078
sub_8013078: @ 0x08013078
	push {lr}
	sub sp, #0xc
	ldr r0, _080130AC @ =0x06000020
	ldr r1, _080130B0 @ =gMultiBootProgram_TinyChaoGarden
	movs r2, #2
	str r2, [sp]
	ldr r2, _080130B4 @ =gUnknown_080BB3E0
	str r2, [sp, #4]
	movs r2, #0
	str r2, [sp, #8]
	movs r2, #1
	movs r3, #0xa
	bl RenderText
	ldr r0, _080130B8 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080130A4
	bl sub_80130BC
_080130A4:
	add sp, #0xc
	pop {r0}
	bx r0
	.align 2, 0
_080130AC: .4byte 0x06000020
_080130B0: .4byte gMultiBootProgram_TinyChaoGarden
_080130B4: .4byte gUnknown_080BB3E0
_080130B8: .4byte gPressedKeys

	thumb_func_start sub_80130BC
sub_80130BC: @ 0x080130BC
	push {lr}
	ldr r1, _080130E4 @ =sa2__gUnknown_03004D80
	movs r0, #0
	strb r0, [r1, #2]
	ldr r1, _080130E8 @ =sa2__gUnknown_03002280
	strb r0, [r1, #8]
	strb r0, [r1, #9]
	movs r0, #0xff
	strb r0, [r1, #0xa]
	movs r0, #0x20
	strb r0, [r1, #0xb]
	ldr r0, _080130EC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl CreateSegaLogo
	pop {r0}
	bx r0
	.align 2, 0
_080130E4: .4byte sa2__gUnknown_03004D80
_080130E8: .4byte sa2__gUnknown_03002280
_080130EC: .4byte gCurTask

	thumb_func_start sub_80130F0
sub_80130F0: @ 0x080130F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0801315C @ =sub_8013400
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08013160 @ =sub_8015728
	str r1, [sp]
	movs r1, #0x6c
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #4]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r3
	mov ip, r0
	ldr r1, _08013164 @ =0x03000056
	adds r0, r3, r1
	movs r1, #0
	strb r4, [r0]
	ldr r2, _08013168 @ =0x03000054
	adds r0, r3, r2
	strh r1, [r0]
	mov r6, ip
	str r1, [r6, #0x44]
	str r1, [r6, #0x48]
	adds r2, #0x12
	adds r0, r3, r2
	strh r1, [r0]
	ldr r6, _0801316C @ =0x03000068
	adds r0, r3, r6
	strh r1, [r0]
	adds r2, #4
	adds r0, r3, r2
	strh r1, [r0]
	ldr r0, _08013170 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r4, r0
	beq _08013174
	subs r6, #8
	adds r1, r3, r6
	movs r0, #0x1e
	b _0801317A
	.align 2, 0
_0801315C: .4byte sub_8013400
_08013160: .4byte sub_8015728
_08013164: .4byte 0x03000056
_08013168: .4byte 0x03000054
_0801316C: .4byte 0x03000068
_08013170: .4byte 0x04000128
_08013174:
	ldr r0, _080131E8 @ =0x03000060
	adds r1, r3, r0
	movs r0, #0
_0801317A:
	strb r0, [r1]
	mov r1, ip
	adds r1, #0x57
	movs r3, #0
	movs r0, #0x80
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x61
	strb r3, [r0]
	mov r1, ip
	str r3, [r1, #0x5c]
	mov r2, ip
	adds r2, #0x56
	ldrb r1, [r2]
	adds r0, #3
	strb r1, [r0]
	ldr r6, _080131EC @ =gGameMode
	ldrb r0, [r6]
	str r2, [sp, #0x10]
	cmp r0, #6
	beq _080131AE
	mov r2, ip
	ldr r0, [r2, #0x5c]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x5c]
_080131AE:
	mov r4, ip
	adds r4, #0x50
	movs r1, #0
	strh r3, [r4]
	mov r5, ip
	adds r5, #0x52
	strh r3, [r5]
	ldrb r0, [r6]
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	cmp r0, #3
	bhi _080131F8
	ldr r1, _080131F0 @ =gSpawnPositions
	ldr r2, _080131F4 @ =gCurrentLevel
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5]
	subs r5, #0x1a
	b _0801336C
	.align 2, 0
_080131E8: .4byte 0x03000060
_080131EC: .4byte gGameMode
_080131F0: .4byte gSpawnPositions
_080131F4: .4byte gCurrentLevel
_080131F8:
	cmp r0, #4
	bne _08013238
	ldr r0, _0801322C @ =0x04000128
	ldr r1, [r0]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	ldr r2, _08013230 @ =gSpawnPositions_Modes_4_and_5
	lsls r1, r1, #2
	ldr r3, _08013234 @ =gCurrentLevel
	movs r0, #0
	ldrsb r0, [r3, r0]
	subs r0, #0xe
	lsls r0, r0, #4
	adds r0, r1, r0
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r4]
	movs r0, #0
	ldrsb r0, [r3, r0]
	subs r0, #0xe
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r2, #2
	adds r1, r1, r2
	ldrh r0, [r1]
	b _08013366
	.align 2, 0
_0801322C: .4byte 0x04000128
_08013230: .4byte gSpawnPositions_Modes_4_and_5
_08013234: .4byte gCurrentLevel
_08013238:
	cmp r0, #5
	bne _08013314
	ldr r3, _08013288 @ =0x04000128
	ldr r0, [r3]
	lsls r0, r0, #0x1a
	lsrs r6, r0, #0x1e
	ldr r0, _0801328C @ =gCurrentLevel
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov sb, r0
	cmp r1, #0x10
	bne _08013294
	ldr r2, _08013290 @ =gSpawnPositions_Modes_4_and_5
	ldr r0, [r3]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r0, r0, #2
	mov r6, sb
	movs r1, #0
	ldrsb r1, [r6, r1]
	subs r1, #0xe
	lsls r1, r1, #4
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r1, [r3]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	lsls r1, r1, #2
	movs r0, #0
	ldrsb r0, [r6, r0]
	subs r0, #0xe
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r2, #2
	adds r1, r1, r2
	ldrh r0, [r1]
	b _08013366
	.align 2, 0
_08013288: .4byte 0x04000128
_0801328C: .4byte gCurrentLevel
_08013290: .4byte gSpawnPositions_Modes_4_and_5
_08013294:
	ldr r0, _0801330C @ =gMultiplayerConnections
	ldrb r1, [r0]
	movs r2, #0x10
	lsls r2, r6
	ands r2, r1
	adds r0, r6, #4
	asrs r2, r0
	movs r4, #0
	movs r3, #0
	ldr r0, _08013310 @ =gSpawnPositions_Modes_4_and_5
	mov sl, r0
	mov r5, ip
	adds r5, #0x38
	cmp r4, r6
	bhs _080132CE
	adds r7, r1, #0
	movs r1, #0x10
	mov r8, r1
_080132B8:
	mov r0, r8
	lsls r0, r3
	ands r0, r7
	adds r1, r3, #4
	asrs r0, r1
	cmp r0, r2
	bne _080132C8
	adds r4, #1
_080132C8:
	adds r3, #1
	cmp r3, r6
	blo _080132B8
_080132CE:
	cmp r2, #0
	bne _080132D4
	rsbs r4, r4, #0
_080132D4:
	lsls r2, r2, #2
	mov r3, sb
	movs r1, #0
	ldrsb r1, [r3, r1]
	subs r1, #0xe
	lsls r1, r1, #4
	adds r1, r2, r1
	add r1, sl
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #3
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r6, [sp, #8]
	strh r0, [r6]
	movs r0, #0
	ldrsb r0, [r3, r0]
	subs r0, #0xe
	lsls r0, r0, #4
	adds r2, r2, r0
	mov r0, sl
	adds r0, #2
	adds r2, r2, r0
	ldrh r0, [r2]
	ldr r1, [sp, #0xc]
	strh r0, [r1]
	b _0801336C
	.align 2, 0
_0801330C: .4byte gMultiplayerConnections
_08013310: .4byte gSpawnPositions_Modes_4_and_5
_08013314:
	ldr r0, _0801332C @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _08013348
	cmp r0, #1
	bgt _08013330
	cmp r0, #0
	beq _0801333A
	b _08013368
	.align 2, 0
_0801332C: .4byte 0x04000128
_08013330:
	cmp r0, #2
	beq _08013358
	cmp r0, #3
	beq _08013360
	b _08013368
_0801333A:
	movs r0, #0xe8
	strh r0, [r4]
	ldr r0, _08013344 @ =0x0000033D
	b _08013366
	.align 2, 0
_08013344: .4byte 0x0000033D
_08013348:
	ldr r0, _08013350 @ =0x00000631
	strh r0, [r4]
	ldr r0, _08013354 @ =0x0000039E
	b _08013366
	.align 2, 0
_08013350: .4byte 0x00000631
_08013354: .4byte 0x0000039E
_08013358:
	movs r0, #0xe8
	strh r0, [r4]
	adds r0, #0x74
	b _08013366
_08013360:
	ldr r0, _08013388 @ =0x00000631
	strh r0, [r4]
	ldr r0, _0801338C @ =0x00000117
_08013366:
	strh r0, [r5]
_08013368:
	mov r5, ip
	adds r5, #0x38
_0801336C:
	mov r4, ip
	ldr r0, _08013390 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	ldr r2, [sp, #0x10]
	ldrb r1, [r2]
	lsrs r0, r0, #0x1e
	cmp r1, r0
	beq _08013394
	movs r0, #0x40
	bl VramMalloc
	b _08013396
	.align 2, 0
_08013388: .4byte 0x00000631
_0801338C: .4byte 0x00000117
_08013390: .4byte 0x04000128
_08013394:
	ldr r0, _080133F8 @ =0x06010000
_08013396:
	str r0, [r4, #4]
	movs r2, #0
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	strh r1, [r4, #8]
	strh r1, [r4, #0x14]
	strh r1, [r4, #0x1c]
	adds r3, r4, #0
	adds r3, #0x21
	movs r0, #0xff
	strb r0, [r3]
	adds r3, #1
	movs r0, #0x10
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x25
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	strh r1, [r4, #0xa]
	adds r0, r4, #0
	adds r0, #0x20
	strb r2, [r0]
	strh r1, [r4, #0x16]
	strh r1, [r4, #0x18]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #4]
	ldr r1, _080133FC @ =gMultiplayerPlayerTasks
	ldr r3, [sp, #0x10]
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r6, [sp, #4]
	str r6, [r0]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080133F8: .4byte 0x06010000
_080133FC: .4byte gMultiplayerPlayerTasks

	thumb_func_start sub_8013400
sub_8013400: @ 0x08013400
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _080134CC @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	adds r6, r7, #0
	adds r0, #0x38
	adds r0, r4, r0
	str r0, [sp]
	ldr r1, _080134D0 @ =0x03000056
	adds r3, r4, r1
	ldrb r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, _080134D4 @ =gMultiSioRecv
	adds r0, r0, r1
	mov r8, r0
	ldr r5, _080134D8 @ =gMultiSioStatusFlags
	mov sb, r5
	movs r5, #1
	adds r1, r5, #0
	lsls r1, r2
	mov r2, sb
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _08013448
	b _08013810
_08013448:
	ldr r0, _080134DC @ =0x03000061
	adds r2, r4, r0
	movs r1, #0
	mov sl, r1
	mov r0, sl
	strb r0, [r2]
	adds r1, r5, #0
	ldrb r3, [r3]
	lsls r1, r3
	mov r3, sb
	ldr r0, [r3]
	ands r0, r1
	cmp r0, #0
	bne _08013466
	b _08013810
_08013466:
	mov r5, r8
	ldrh r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r1, r0
	beq _08013474
	b _08013810
_08013474:
	mov r0, sl
	strb r0, [r2]
	movs r1, #2
	ldrsh r0, [r5, r1]
	ldr r2, _080134E0 @ =0x03000050
	adds r3, r4, r2
	movs r5, #0
	ldrsh r1, [r3, r5]
	subs r0, r0, r1
	str r0, [r7, #0x44]
	mov r1, r8
	movs r2, #4
	ldrsh r0, [r1, r2]
	ldr r5, _080134E4 @ =0x03000052
	adds r2, r4, r5
	movs r5, #0
	ldrsh r1, [r2, r5]
	subs r0, r0, r1
	str r0, [r7, #0x48]
	mov r1, r8
	ldrh r0, [r1, #2]
	strh r0, [r3]
	ldrh r0, [r1, #4]
	strh r0, [r2]
	ldr r0, [r7, #0x44]
	cmp r0, #0
	bge _080134AC
	rsbs r0, r0, #0
_080134AC:
	cmp r0, #0x40
	bgt _080134BC
	ldr r0, [r7, #0x48]
	cmp r0, #0
	bge _080134B8
	rsbs r0, r0, #0
_080134B8:
	cmp r0, #0x40
	ble _080134E8
_080134BC:
	adds r0, r6, #0
	adds r0, #0x66
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	b _080134FC
	.align 2, 0
_080134CC: .4byte gCurTask
_080134D0: .4byte 0x03000056
_080134D4: .4byte gMultiSioRecv
_080134D8: .4byte gMultiSioStatusFlags
_080134DC: .4byte 0x03000061
_080134E0: .4byte 0x03000050
_080134E4: .4byte 0x03000052
_080134E8:
	ldr r0, [r7, #0x44]
	lsls r0, r0, #8
	ldr r2, _0801358C @ =0x03000066
	adds r1, r4, r2
	strh r0, [r1]
	ldr r0, [r7, #0x48]
	lsls r0, r0, #8
	ldr r3, _08013590 @ =0x03000068
	adds r1, r4, r3
	strh r0, [r1]
_080134FC:
	adds r2, r6, #0
	adds r2, #0x57
	ldrb r1, [r2]
	mov r4, r8
	ldrb r0, [r4, #0xa]
	adds r4, r0, #0
	bics r4, r1
	adds r5, r4, #0
	adds r0, r4, #0
	movs r1, #2
	ands r0, r1
	mov sl, r2
	movs r2, #0x56
	adds r2, r2, r6
	mov sb, r2
	cmp r0, #0
	beq _08013526
	movs r0, #0
	ldrsb r0, [r2, r0]
	bl sub_804B678
_08013526:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _08013538
	mov r3, sb
	movs r0, #0
	ldrsb r0, [r3, r0]
	bl sub_804B5CC
_08013538:
	movs r0, #8
	ands r4, r0
	cmp r4, #0
	beq _0801354A
	mov r4, sb
	movs r0, #0
	ldrsb r0, [r4, r0]
	bl sub_804B71C
_0801354A:
	movs r0, #0x50
	ands r5, r0
	cmp r5, #0
	beq _0801355C
	mov r5, sb
	movs r0, #0
	ldrsb r0, [r5, r0]
	bl sub_804B7C8
_0801355C:
	mov r1, r8
	ldrb r0, [r1, #0xa]
	mov r2, sl
	strb r0, [r2]
	ldrh r1, [r1, #8]
	adds r0, r6, #0
	adds r0, #0x54
	strh r1, [r0]
	ldr r3, _08013594 @ =0x04000128
	ldr r0, [r3]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	mov r4, sb
	ldrb r4, [r4]
	cmp r0, r4
	beq _08013598
	movs r0, #0xc0
	lsls r0, r0, #3
	ands r0, r1
	lsrs r0, r0, #9
	adds r1, r6, #0
	adds r1, #0x64
	strb r0, [r1]
	b _08013644
	.align 2, 0
_0801358C: .4byte 0x03000066
_08013590: .4byte 0x03000068
_08013594: .4byte 0x04000128
_08013598:
	ldr r0, [r3]
	lsls r0, r0, #0x1a
	adds r4, r6, #0
	adds r4, #0x64
	ldrb r2, [r4]
	lsrs r0, r0, #0x1e
	cmp r0, r2
	beq _08013644
	ldr r1, _08013674 @ =gMultiplayerPlayerTasks
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, [r3]
	lsls r0, r0, #0x1a
	ldr r2, _08013678 @ =0x03000064
	adds r1, r1, r2
	lsrs r0, r0, #0x1e
	ldrb r1, [r1]
	cmp r0, r1
	bne _08013644
	ldr r0, [r3]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	strb r0, [r4]
	ldr r4, _0801367C @ =gPlayer
	ldr r0, [r4, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x18
	ands r0, r1
	movs r3, #5
	rsbs r3, r3, #0
	mov sl, r3
	ands r0, r3
	adds r1, #0x10
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	ldr r1, _08013680 @ =0xFFFFFBFF
	ands r0, r1
	ldr r1, _08013684 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #0xe
	bl sa2__sub_8023B5C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x40
	movs r1, #4
	strb r1, [r0]
	movs r0, #0x3c
	strh r0, [r4, #0x1c]
	ldr r0, [r4, #0x10]
	ldr r2, _08013688 @ =0xFFBFFFFF
	ands r0, r2
	str r0, [r4, #0x10]
	ldr r0, [r6, #0x5c]
	mov r3, sl
	ands r0, r3
	str r0, [r6, #0x5c]
	ldr r0, [r5, #0x5c]
	ands r0, r1
	cmp r0, #0
	beq _08013644
	ldr r0, [r4, #0x10]
	ands r0, r2
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x5c]
	ands r0, r3
	str r0, [r5, #0x5c]
_08013644:
	ldr r0, _0801368C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _080136D4
	mov r4, r8
	ldrh r1, [r4, #6]
	ldrb r3, [r4, #6]
	ldr r2, _08013690 @ =gMultiplayerCharRings
	mov r5, sb
	ldrb r0, [r5]
	adds r0, r0, r2
	lsrs r1, r1, #8
	strb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x6a
	strh r3, [r0]
	ldrb r0, [r5]
	cmp r0, #3
	bne _080136A0
	cmp r3, #8
	bne _08013694
	movs r3, #0xc4
	lsls r3, r3, #1
	b _080136B2
	.align 2, 0
_08013674: .4byte gMultiplayerPlayerTasks
_08013678: .4byte 0x03000064
_0801367C: .4byte gPlayer
_08013680: .4byte 0xFFFFFBFF
_08013684: .4byte 0xFFFFFEFF
_08013688: .4byte 0xFFBFFFFF
_0801368C: .4byte gGameMode
_08013690: .4byte gMultiplayerCharRings
_08013694:
	cmp r3, #0x12
	bne _080136A0
	ldr r3, _0801369C @ =0x00000189
	b _080136B2
	.align 2, 0
_0801369C: .4byte 0x00000189
_080136A0:
	ldr r0, _080136D0 @ =gPlayerCharacterIdleAnims
	mov r5, sb
	ldrb r1, [r5]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_080136B2:
	adds r5, r7, #0
	adds r5, #0x20
	adds r0, r6, #0
	adds r0, #0x58
	str r0, [sp, #0x10]
	movs r1, #0x22
	adds r1, r1, r7
	mov sl, r1
	adds r2, r6, #0
	adds r2, #0x50
	movs r4, #0x52
	adds r4, r4, r6
	mov ip, r4
	b _0801377A
	.align 2, 0
_080136D0: .4byte gPlayerCharacterIdleAnims
_080136D4:
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0801375C
	movs r5, #0
	str r5, [sp, #8]
	mov r0, r8
	ldrh r1, [r0, #6]
	ldr r3, _08013750 @ =0x000003FF
	ands r3, r1
	ldr r0, _08013754 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	mov r2, sb
	ldrb r2, [r2]
	cmp r0, r2
	beq _08013704
	lsrs r1, r1, #0xc
	lsls r1, r1, #0x10
	ldr r0, [r6, #0x5c]
	orrs r0, r1
	str r0, [r6, #0x5c]
_08013704:
	movs r1, #0
	adds r5, r7, #0
	adds r5, #0x20
	adds r4, r6, #0
	adds r4, #0x58
	str r4, [sp, #0x10]
	movs r0, #0x22
	adds r0, r0, r7
	mov sl, r0
	adds r2, r6, #0
	adds r2, #0x50
	movs r4, #0x52
	adds r4, r4, r6
	mov ip, r4
	ldr r4, [r6, #0x5c]
_08013722:
	movs r0, #0x80
	lsls r0, r0, #9
	lsls r0, r1
	ands r0, r4
	cmp r0, #0
	beq _08013738
	ldr r0, [sp, #8]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
_08013738:
	adds r1, #1
	cmp r1, #2
	bls _08013722
	mov r1, sb
	ldrb r0, [r1]
	ldr r4, _08013758 @ =gMultiplayerCharRings
	adds r0, r0, r4
	mov r1, sp
	ldrb r1, [r1, #8]
	strb r1, [r0]
	b _0801377A
	.align 2, 0
_08013750: .4byte 0x000003FF
_08013754: .4byte 0x04000128
_08013758: .4byte gMultiplayerCharRings
_0801375C:
	mov r2, r8
	ldrh r3, [r2, #6]
	adds r5, r7, #0
	adds r5, #0x20
	adds r4, r6, #0
	adds r4, #0x58
	str r4, [sp, #0x10]
	movs r0, #0x22
	adds r0, r0, r7
	mov sl, r0
	adds r2, r6, #0
	adds r2, #0x50
	movs r1, #0x52
	adds r1, r1, r6
	mov ip, r1
_0801377A:
	mov r4, r8
	ldrb r0, [r4, #0xb]
	movs r1, #7
	mov sb, r1
	mov r4, sb
	ands r4, r0
	mov sb, r4
	ldrh r0, [r7, #0xa]
	cmp r0, r3
	bne _08013794
	ldrb r0, [r5]
	cmp r0, sb
	beq _0801379C
_08013794:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	str r0, [r7, #0x30]
_0801379C:
	adds r0, r6, #0
	adds r0, #0x54
	ldrh r1, [r0]
	movs r4, #4
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080137E4
	ldr r0, [r6, #0x5c]
	ands r0, r4
	ldr r4, _08013808 @ =gPlayer
	cmp r0, #0
	beq _080137C8
	ldr r0, [r4, #0x10]
	ldr r1, _0801380C @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r6, #0x5c]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x5c]
_080137C8:
	ldr r1, [r4, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080137E4
	ldr r0, [r4, #0x28]
	cmp r0, r7
	bne _080137E4
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r4, #0x10]
_080137E4:
	strh r3, [r7, #0xa]
	mov r0, sb
	strb r0, [r5]
	mov r1, r8
	ldrb r0, [r1, #0xb]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1b
	ldr r3, [sp, #0x10]
	strb r0, [r3]
	ldrb r0, [r1, #0xc]
	mov r4, sl
	strb r0, [r4]
	ldrb r0, [r1, #0xd]
	lsls r0, r0, #2
	ldr r5, [sp]
	strh r0, [r5]
	b _08013890
	.align 2, 0
_08013808: .4byte gPlayer
_0801380C: .4byte 0xFFBFFFFF
_08013810:
	adds r2, r6, #0
	adds r2, #0x50
	adds r0, r6, #0
	adds r0, #0x66
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	adds r4, r6, #0
	adds r4, #0x52
	adds r0, r6, #0
	adds r0, #0x68
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r3, [r4]
	adds r0, r0, r3
	strh r0, [r4]
	adds r3, r6, #0
	adds r3, #0x61
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r4
	cmp r0, #0x1e
	bls _08013890
	ldr r1, _08013874 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08013878 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0801387C @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08013880 @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08013884 @ =gVramGraphicsCopyCursor
	ldr r0, _08013888 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0801388C @ =gGameMode
	ldrb r0, [r0]
	bl MultiPakCommunicationError
	b _08013DB4
	.align 2, 0
_08013874: .4byte 0x0000FFFF
_08013878: .4byte gBackgroundsCopyQueueCursor
_0801387C: .4byte gBackgroundsCopyQueueIndex
_08013880: .4byte sa2__gUnknown_03005390
_08013884: .4byte gVramGraphicsCopyCursor
_08013888: .4byte gVramGraphicsCopyQueueIndex
_0801388C: .4byte gGameMode
_08013890:
	movs r3, #3
	ldr r4, _08013A60 @ =gPlayerCharacterIdleAnims
	movs r5, #6
	ldrsh r0, [r4, r5]
	ldrh r1, [r7, #0xa]
	adds r5, r6, #0
	adds r5, #0x54
	str r5, [sp, #0xc]
	ldr r5, _08013A64 @ =gCamera
	cmp r0, r1
	ble _080138C4
	mov r8, r4
_080138A8:
	lsls r0, r3, #0x18
	movs r3, #0xff
	lsls r3, r3, #0x18
	adds r0, r0, r3
	lsrs r3, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	blt _080138C4
	lsls r0, r0, #1
	add r0, r8
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, r1
	bgt _080138A8
_080138C4:
	ldrh r0, [r2]
	ldrh r1, [r5]
	subs r0, r0, r1
	strh r0, [r7, #0x16]
	mov r1, ip
	ldrh r0, [r1]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	strh r0, [r7, #0x18]
	ldrh r0, [r2]
	ldrh r1, [r5]
	subs r0, r0, r1
	ldr r2, [sp]
	strh r0, [r2, #6]
	mov r3, ip
	ldrh r0, [r3]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	strh r0, [r2, #8]
	ldr r4, [sp, #0xc]
	ldrh r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08013908
	adds r1, r7, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	str r0, [r7, #0x30]
_08013908:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r3, _08013A68 @ =gMultiplayerPlayerTasks
	ldr r2, _08013A6C @ =0x04000128
	ldr r0, [r2]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	str r1, [sp, #4]
	ldr r0, _08013A70 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _08013934
	cmp r0, #5
	bne _080139C6
_08013934:
	ldr r1, _08013A74 @ =sa2__gUnknown_030054B4
	ldr r0, [r2]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080139C6
	movs r5, #1
	mov sl, r5
	movs r4, #0
	ldr r0, [r3]
	cmp r0, #0
	beq _080139B8
	ldr r0, _08013A78 @ =gMultiplayerConnections
	ldrb r0, [r0]
	mov ip, r0
	movs r0, #0x10
	mov sb, r0
	mov r8, r2
	adds r5, r3, #0
_08013964:
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	str r0, [sp, #0x14]
	mov r2, sb
	lsls r2, r4
	mov r1, ip
	ands r2, r1
	adds r0, r4, #4
	asrs r2, r0
	mov r3, r8
	ldr r0, [r3]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	mov r1, sb
	lsls r1, r0
	mov r0, ip
	ands r1, r0
	ldr r0, [r3]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, #4
	asrs r1, r0
	cmp r2, r1
	bne _080139AA
	ldr r1, [sp, #0x14]
	ldr r2, _08013A7C @ =0x03000054
	adds r0, r1, r2
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080139AA
	movs r3, #0
	mov sl, r3
_080139AA:
	adds r5, #4
	adds r4, #1
	cmp r4, #3
	bhi _080139B8
	ldr r0, [r5]
	cmp r0, #0
	bne _08013964
_080139B8:
	mov r4, sl
	cmp r4, #0
	beq _080139C6
	bl sub_80182FC
	movs r1, #7
	strb r1, [r0]
_080139C6:
	ldr r0, _08013A80 @ =gStageFlags
	ldrh r1, [r0]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	ldr r4, _08013A84 @ =gPlayer
	cmp r0, #0
	bne _08013ACC
	ldr r5, [sp, #0xc]
	ldrh r1, [r5]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08013ACC
	ldr r0, [sp, #4]
	adds r0, #0x57
	ldrb r1, [r0]
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08013ACC
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08013A02
	b _08013B10
_08013A02:
	adds r0, r6, #0
	adds r0, #0x57
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08013ACC
	ldr r1, [sp, #4]
	ldr r0, [r1, #0x5c]
	ands r0, r3
	cmp r0, #0
	bne _08013ACC
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bne _08013ACC
	ldr r0, [r4, #0x10]
	ands r0, r2
	cmp r0, #0
	bne _08013ACC
	ldr r0, _08013A70 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _08013AAE
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r1, [r0]
	ldr r0, _08013A6C @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r1, r0
	bne _08013A46
	b _08013BD4
_08013A46:
	ldr r0, _08013A88 @ =gMultiplayerCharacters
	adds r0, r1, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08013A9C
	cmp r0, #1
	bgt _08013A8C
	cmp r0, #0
	beq _08013A96
	b _08013BD4
	.align 2, 0
_08013A60: .4byte gPlayerCharacterIdleAnims
_08013A64: .4byte gCamera
_08013A68: .4byte gMultiplayerPlayerTasks
_08013A6C: .4byte 0x04000128
_08013A70: .4byte gGameMode
_08013A74: .4byte sa2__gUnknown_030054B4
_08013A78: .4byte gMultiplayerConnections
_08013A7C: .4byte 0x03000054
_08013A80: .4byte gStageFlags
_08013A84: .4byte gPlayer
_08013A88: .4byte gMultiplayerCharacters
_08013A8C:
	cmp r0, #2
	beq _08013AA2
	cmp r0, #3
	beq _08013AA8
	b _08013BD4
_08013A96:
	bl sub_8013DF0
	b _08013BD4
_08013A9C:
	bl sub_8014144
	b _08013BD4
_08013AA2:
	bl sub_801473C
	b _08013BD4
_08013AA8:
	bl sub_8014D0C
	b _08013BD4
_08013AAE:
	adds r1, r6, #0
	adds r1, #0x56
	ldr r0, _08013AC8 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	ldrb r1, [r1]
	lsrs r0, r0, #0x1e
	cmp r1, r0
	bne _08013AC2
	b _08013BD4
_08013AC2:
	bl sub_80157A8
	b _08013BD4
	.align 2, 0
_08013AC8: .4byte 0x04000128
_08013ACC:
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r1, [r0]
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08013B10
	adds r0, r6, #0
	adds r0, #0x57
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08013B10
	movs r5, #0x1c
	ldrsh r0, [r4, r5]
	cmp r0, #0
	bne _08013B10
	ldr r0, [r4, #0x10]
	ands r0, r2
	cmp r0, #0
	bne _08013B10
	ldr r1, _08013B98 @ =sa2__gUnknown_030054B4
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08013BD4
_08013B10:
	ldr r0, _08013B9C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _08013BB0
	adds r4, r6, #0
	adds r4, #0x56
	ldrb r1, [r4]
	ldr r0, _08013BA0 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r1, r0
	beq _08013B76
	ldr r0, _08013BA4 @ =gMultiplayerCharacters
	adds r0, r1, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bgt _08013B76
	cmp r0, #1
	blt _08013B76
	ldr r1, [r6, #0x5c]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08013B76
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r6, #0x5c]
	ldr r2, _08013BA8 @ =gPlayer
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08013B66
	ldr r0, [r2, #0x10]
	ldr r1, _08013BAC @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r2, #0x10]
_08013B66:
	bl sub_80182FC
	movs r2, #0
	movs r1, #8
	strb r1, [r0]
	ldrb r1, [r4]
	strb r1, [r0, #1]
	strb r2, [r0, #2]
_08013B76:
	ldr r2, _08013BA8 @ =gPlayer
	ldr r1, [r2, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08013BD4
	ldr r0, [r2, #0x28]
	cmp r0, r7
	bne _08013BD4
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r2, #0x10]
	b _08013BCC
	.align 2, 0
_08013B98: .4byte sa2__gUnknown_030054B4
_08013B9C: .4byte gGameMode
_08013BA0: .4byte 0x04000128
_08013BA4: .4byte gMultiplayerCharacters
_08013BA8: .4byte gPlayer
_08013BAC: .4byte 0xFFBFFFFF
_08013BB0:
	ldr r1, [r4, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08013BD4
	ldr r0, [r4, #0x28]
	cmp r0, r7
	bne _08013BD4
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r4, #0x10]
_08013BCC:
	adds r1, r6, #0
	adds r1, #0x60
	movs r0, #0x1e
	strb r0, [r1]
_08013BD4:
	ldr r0, [sp, #0xc]
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08013C42
	ldr r0, [r7, #0x10]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	ldr r2, _08013C18 @ =sa2__gUnknown_030054B8
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	movs r0, #0x20
	orrs r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r7, #0x10]
	orrs r0, r1
	str r0, [r7, #0x10]
	ldr r2, [sp, #0xc]
	ldrh r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08013C1C
	movs r0, #0xff
	lsls r0, r0, #8
	ldr r3, [sp]
	strh r0, [r3, #2]
	b _08013C24
	.align 2, 0
_08013C18: .4byte sa2__gUnknown_030054B8
_08013C1C:
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r4, [sp]
	strh r0, [r4, #2]
_08013C24:
	ldr r5, [sp, #0xc]
	ldrh r1, [r5]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08013C38
	ldr r1, [sp]
	ldrh r0, [r1, #2]
	rsbs r0, r0, #0
	strh r0, [r1, #2]
_08013C38:
	adds r0, r7, #0
	ldr r1, [sp]
	bl TransformSprite
	b _08013C88
_08013C42:
	ldr r2, [r7, #0x10]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r7, #0x10]
	ldr r3, [sp, #0xc]
	ldrh r1, [r3]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08013C60
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r2, r0
	b _08013C64
_08013C60:
	ldr r0, _08013C7C @ =0xFFFFFBFF
	ands r2, r0
_08013C64:
	str r2, [r7, #0x10]
	ldr r4, [sp, #0xc]
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08013C80
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _08013C86
	.align 2, 0
_08013C7C: .4byte 0xFFFFFBFF
_08013C80:
	ldr r0, [r7, #0x10]
	ldr r1, _08013DC4 @ =0xFFFFF7FF
	ands r0, r1
_08013C86:
	str r0, [r7, #0x10]
_08013C88:
	ldr r1, [r7, #0x10]
	ldr r0, _08013DC8 @ =0xFFFFCFFF
	ands r1, r0
	str r1, [r7, #0x10]
	ldr r5, [sp, #0xc]
	ldrh r2, [r5]
	movs r0, #0x30
	ands r0, r2
	lsls r0, r0, #8
	orrs r1, r0
	str r1, [r7, #0x10]
	ldrh r3, [r5]
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0
	beq _08013CAA
	b _08013DB4
_08013CAA:
	ldr r0, _08013DCC @ =gStageTime
	ldr r0, [r0]
	movs r4, #2
	ands r0, r4
	movs r1, #0x57
	adds r1, r1, r6
	mov sl, r1
	cmp r0, #0
	bne _08013CFE
	ldrb r1, [r1]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08013CFE
	ldr r2, [r6, #0x5c]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _08013CFE
	ldr r1, _08013DD0 @ =sa2__gUnknown_030054B4
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08013CFE
	adds r0, r6, #0
	adds r0, #0x60
	ldrb r0, [r0]
	cmp r0, #0
	bne _08013DB4
	movs r0, #4
	ands r0, r3
	cmp r0, #0
	bne _08013DB4
	ands r2, r4
	cmp r2, #0
	bne _08013DB4
_08013CFE:
	ldr r2, [sp, #0xc]
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	cmp r0, #0
	beq _08013D16
	movs r4, #0x88
	lsls r4, r4, #3
	adds r1, r4, #0
_08013D16:
	strh r1, [r7, #0x1a]
	ldr r0, [r7, #0x10]
	ldr r1, _08013DD4 @ =0xFFFFFE7F
	ands r0, r1
	str r0, [r7, #0x10]
	mov r5, sl
	ldrb r1, [r5]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08013DAE
	ldr r0, _08013DD8 @ =gGameMode
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #3
	beq _08013D3A
	cmp r1, #5
	bne _08013D6A
_08013D3A:
	ldr r0, _08013DDC @ =gMultiplayerConnections
	ldrb r3, [r0]
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	movs r2, #0x10
	adds r1, r2, #0
	lsls r1, r0
	ands r1, r3
	adds r0, #4
	asrs r1, r0
	ldr r4, _08013DE0 @ =0x04000128
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r2, r0
	ands r3, r2
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, #4
	asrs r3, r0
	cmp r1, r3
	bne _08013D74
_08013D6A:
	ldrb r0, [r5]
	cmp r0, #3
	beq _08013DAE
	cmp r0, #5
	beq _08013DAE
_08013D74:
	adds r0, r6, #0
	adds r0, #0x60
	ldrb r0, [r0]
	cmp r0, #0
	bne _08013DAE
	adds r1, r6, #0
	adds r1, #0x56
	ldr r0, _08013DE0 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	ldrb r1, [r1]
	lsrs r0, r0, #0x1e
	cmp r1, r0
	beq _08013DAE
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r7, #0x10]
	ldr r2, _08013DE4 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08013DE8 @ =gWinRegs
	ldr r0, _08013DEC @ =0x0000083F
	strh r0, [r1, #0xa]
_08013DAE:
	adds r0, r7, #0
	bl DisplaySprite
_08013DB4:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013DC4: .4byte 0xFFFFF7FF
_08013DC8: .4byte 0xFFFFCFFF
_08013DCC: .4byte gStageTime
_08013DD0: .4byte sa2__gUnknown_030054B4
_08013DD4: .4byte 0xFFFFFE7F
_08013DD8: .4byte gGameMode
_08013DDC: .4byte gMultiplayerConnections
_08013DE0: .4byte 0x04000128
_08013DE4: .4byte gDispCnt
_08013DE8: .4byte gWinRegs
_08013DEC: .4byte 0x0000083F

	thumb_func_start sub_8013DF0
sub_8013DF0: @ 0x08013DF0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	ldr r2, _08013E94 @ =gPlayer
	ldr r0, [r2, #0x64]
	adds r7, r0, #0
	adds r7, #0xc
	ldr r0, _08013E98 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	mov r8, r6
	ldr r0, [r2, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08013E24
	ldr r0, [r2, #0x28]
	cmp r0, r6
	bne _08013E24
	bl sub_8015024
_08013E24:
	ldr r0, _08013E9C @ =gGameMode
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #3
	beq _08013E32
	cmp r1, #5
	bne _08013E62
_08013E32:
	ldr r0, _08013EA0 @ =gMultiplayerConnections
	ldrb r3, [r0]
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	movs r2, #0x10
	adds r1, r2, #0
	lsls r1, r0
	ands r1, r3
	adds r0, #4
	asrs r1, r0
	ldr r4, _08013EA4 @ =0x04000128
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r2, r0
	ands r3, r2
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, #4
	asrs r3, r0
	cmp r1, r3
	bne _08013E6C
_08013E62:
	ldrb r0, [r5]
	cmp r0, #3
	beq _08013EA8
	cmp r0, #5
	beq _08013EA8
_08013E6C:
	bl sub_80152C8
	cmp r0, #0
	bne _08013E76
	b _08014132
_08013E76:
	ldr r0, [r6, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08013E82
	b _08014132
_08013E82:
	ldr r2, _08013E94 @ =gPlayer
	ldr r0, [r2, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r2, #0x10]
	movs r0, #0
	str r0, [r6, #0x4c]
	b _08014132
	.align 2, 0
_08013E94: .4byte gPlayer
_08013E98: .4byte gCurTask
_08013E9C: .4byte gGameMode
_08013EA0: .4byte gMultiplayerConnections
_08013EA4: .4byte 0x04000128
_08013EA8:
	adds r1, r6, #0
	adds r1, #0x60
	ldrb r0, [r1]
	adds r4, r0, #0
	mov sb, r1
	cmp r4, #0
	beq _08013EB8
	b _080140CA
_08013EB8:
	bl sub_80151AC
	cmp r0, #0
	beq _08013F6E
	ldr r0, [r6, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08013ED8
	ldr r0, _08013F30 @ =gPlayer
	ldr r1, [r0, #0x10]
	movs r2, #0x21
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0, #0x10]
	str r4, [r6, #0x4c]
_08013ED8:
	mov r1, r8
	ldrh r0, [r1, #0xa]
	cmp r0, #0x12
	beq _08013EE2
	b _08014132
_08013EE2:
	ldr r2, _08013F30 @ =gPlayer
	adds r1, r2, #0
	adds r1, #0x40
	movs r0, #4
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x3d
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	ldr r1, [r2, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08013F12
	ldr r0, [r2, #0x28]
	cmp r0, r8
	bne _08013F12
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r2, #0x10]
_08013F12:
	ldr r0, _08013F34 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08013F38
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0x52
	movs r3, #0
	ldrsh r1, [r1, r3]
	cmp r0, r1
	ble _08013F4A
	b _08014084
	.align 2, 0
_08013F30: .4byte gPlayer
_08013F34: .4byte gStageFlags
_08013F38:
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0x52
	movs r3, #0
	ldrsh r1, [r1, r3]
	cmp r0, r1
	bge _08013F4A
	b _08014084
_08013F4A:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08013F5A
	b _080140AE
_08013F5A:
	ldr r0, [r2, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x1f
	ands r0, r1
	str r0, [r2, #0x10]
	movs r0, #0xc0
	lsls r0, r0, #4
	b _080140BE
_08013F6E:
	ldr r0, [r7, #0x30]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08013F82
	mov r3, r8
	ldr r0, [r3, #0x30]
	cmp r0, r1
	beq _08013F82
	b _08014132
_08013F82:
	ldr r7, _0801406C @ =gPlayer
	adds r0, r7, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08013FA4
	adds r0, r7, #0
	adds r0, #0x59
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08013FA4
	b _08014132
_08013FA4:
	adds r0, r6, #0
	adds r0, #0x50
	movs r4, #0
	ldrsh r1, [r0, r4]
	adds r5, r6, #0
	adds r5, #0x52
	movs r0, #0
	ldrsh r2, [r5, r0]
	adds r0, r6, #0
	adds r0, #0x66
	movs r4, #0
	ldrsh r3, [r0, r4]
	adds r0, #2
	movs r4, #0
	ldrsh r0, [r0, r4]
	str r0, [sp]
	adds r0, r6, #0
	adds r0, #0x54
	ldrh r0, [r0]
	lsrs r0, r0, #7
	movs r4, #1
	ands r0, r4
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, r8
	bl sub_80097E4
	adds r2, r0, #0
	ldr r0, [r6, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08013FF6
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08013FF6
	ldr r0, [r7, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r7, #0x10]
_08013FF6:
	str r2, [r6, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r0, r2
	cmp r0, #0
	beq _08014008
	movs r0, #0x1e
	mov r1, sb
	strb r0, [r1]
_08014008:
	ldr r0, _08014070 @ =0x00010028
	ands r0, r2
	cmp r0, #0
	bne _08014012
	b _08014132
_08014012:
	mov r2, r8
	ldrh r0, [r2, #0xa]
	cmp r0, #0x12
	beq _0801401C
	b _08014132
_0801401C:
	ldr r3, _0801406C @ =gPlayer
	adds r1, r3, #0
	adds r1, #0x40
	movs r2, #0
	movs r0, #4
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x3d
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	ldr r1, [r3, #0x10]
	movs r0, #8
	ands r0, r1
	adds r2, r3, #0
	cmp r0, #0
	beq _08014050
	ldr r0, [r2, #0x28]
	cmp r0, r8
	bne _08014050
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r2, #0x10]
_08014050:
	ldr r0, _08014074 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08014078
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	movs r3, #0
	ldrsh r1, [r5, r3]
	cmp r0, r1
	ble _0801408C
	b _08014084
	.align 2, 0
_0801406C: .4byte gPlayer
_08014070: .4byte 0x00010028
_08014074: .4byte gStageFlags
_08014078:
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	movs r3, #0
	ldrsh r1, [r5, r3]
	cmp r0, r1
	bge _0801408C
_08014084:
	movs r0, #0x1e
	mov r4, sb
	strb r0, [r4]
	b _08014132
_0801408C:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080140AE
	ldr r0, [r2, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x1f
	ands r0, r1
	str r0, [r2, #0x10]
	movs r0, #0xc0
	lsls r0, r0, #4
	b _080140BE
_080140AE:
	ldr r0, [r2, #0x10]
	movs r1, #1
	orrs r0, r1
	subs r1, #0x22
	ands r0, r1
	str r0, [r2, #0x10]
	movs r0, #0xf4
	lsls r0, r0, #8
_080140BE:
	strh r0, [r2, #0xc]
	strh r0, [r2, #8]
	movs r0, #0x1e
	mov r2, sb
	strb r0, [r2]
	b _08014132
_080140CA:
	subs r0, #1
	strb r0, [r1]
	ldr r5, _08014140 @ =gPlayer
	ldr r0, [r5, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08014132
	ldr r0, [r5, #0x28]
	cmp r0, r8
	bne _08014132
	adds r0, r6, #0
	adds r0, #0x50
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r0, #2
	movs r4, #0
	ldrsh r2, [r0, r4]
	adds r0, #0x14
	movs r4, #0
	ldrsh r3, [r0, r4]
	adds r0, #2
	movs r4, #0
	ldrsh r0, [r0, r4]
	str r0, [sp]
	adds r0, r6, #0
	adds r0, #0x54
	ldrh r0, [r0]
	lsrs r0, r0, #7
	movs r4, #1
	ands r0, r4
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	mov r0, r8
	bl sub_80097E4
	adds r2, r0, #0
	ldr r0, [r6, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08014130
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08014130
	ldr r0, [r5, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r5, #0x10]
_08014130:
	str r2, [r6, #0x4c]
_08014132:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08014140: .4byte gPlayer

	thumb_func_start sub_8014144
sub_8014144: @ 0x08014144
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	ldr r2, _080141F8 @ =gPlayer
	ldr r0, [r2, #0x64]
	adds r0, #0xc
	mov r8, r0
	movs r0, #0
	str r0, [sp, #0x14]
	ldr r0, _080141FC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	str r7, [sp, #0x10]
	ldr r1, [r2, #0x10]
	lsrs r3, r1, #5
	movs r0, #1
	ands r3, r0
	str r3, [sp, #0x18]
	movs r0, #8
	ands r1, r0
	cmp r1, #0
	beq _0801418A
	ldr r0, [r2, #0x28]
	cmp r0, r7
	bne _0801418A
	bl sub_8015024
	movs r4, #1
	str r4, [sp, #0x14]
_0801418A:
	ldr r0, _08014200 @ =gGameMode
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #3
	beq _08014198
	cmp r1, #5
	bne _080141C8
_08014198:
	ldr r0, _08014204 @ =gMultiplayerConnections
	ldrb r3, [r0]
	adds r0, r7, #0
	adds r0, #0x56
	ldrb r0, [r0]
	movs r2, #0x10
	adds r1, r2, #0
	lsls r1, r0
	ands r1, r3
	adds r0, #4
	asrs r1, r0
	ldr r4, _08014208 @ =0x04000128
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r2, r0
	ands r3, r2
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, #4
	asrs r3, r0
	cmp r1, r3
	bne _080141D2
_080141C8:
	ldrb r0, [r5]
	cmp r0, #3
	beq _0801420C
	cmp r0, #5
	beq _0801420C
_080141D2:
	bl sub_80152C8
	cmp r0, #0
	bne _080141DC
	b _0801472A
_080141DC:
	ldr r0, [r7, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080141E8
	b _0801472A
_080141E8:
	ldr r2, _080141F8 @ =gPlayer
	ldr r0, [r2, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r2, #0x10]
	movs r0, #0
	str r0, [r7, #0x4c]
	b _0801472A
	.align 2, 0
_080141F8: .4byte gPlayer
_080141FC: .4byte gCurTask
_08014200: .4byte gGameMode
_08014204: .4byte gMultiplayerConnections
_08014208: .4byte 0x04000128
_0801420C:
	ldr r6, _08014278 @ =gPlayer
	adds r0, r6, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0801422C
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0801422C
	b _0801472A
_0801422C:
	adds r1, r7, #0
	adds r1, #0x60
	ldrb r2, [r1]
	str r1, [sp, #0x24]
	cmp r2, #0
	beq _08014244
	ldr r5, [r7, #0x5c]
	movs r0, #4
	ands r5, r0
	cmp r5, #0
	bne _08014244
	b _080146C4
_08014244:
	movs r4, #0
	strb r4, [r1]
	ldr r5, [sp, #0x10]
	ldrh r0, [r5, #0xa]
	subs r0, #0x9b
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _080142A0
	bl sub_80151AC
	cmp r0, #0
	beq _0801427C
	ldr r0, [r7, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0801426A
	b _0801472A
_0801426A:
	ldr r0, [r6, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r6, #0x10]
	str r4, [r7, #0x4c]
	b _0801472A
	.align 2, 0
_08014278: .4byte gPlayer
_0801427C:
	ldr r1, [sp, #0x10]
	ldrh r0, [r1, #0xa]
	subs r0, #0x9b
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _080142A0
	mov r2, r8
	ldr r0, [r2, #0x30]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080142A0
	ldr r3, [sp, #0x10]
	ldr r0, [r3, #0x30]
	cmp r0, r1
	beq _080142A0
	b _0801472A
_080142A0:
	ldr r4, _0801439C @ =gPlayer
	mov sl, r4
	ldr r0, [r4, #0x10]
	lsrs r0, r0, #1
	mov sb, r0
	movs r4, #1
	mov r5, sb
	ands r5, r4
	mov sb, r5
	movs r0, #0x50
	adds r0, r0, r7
	mov r8, r0
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r6, r7, #0
	adds r6, #0x52
	movs r3, #0
	ldrsh r2, [r6, r3]
	adds r0, r7, #0
	adds r0, #0x66
	movs r5, #0
	ldrsh r3, [r0, r5]
	adds r0, #2
	movs r5, #0
	ldrsh r0, [r0, r5]
	str r0, [sp]
	adds r5, r7, #0
	adds r5, #0x54
	ldrh r0, [r5]
	lsrs r0, r0, #7
	ands r0, r4
	str r0, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [sp, #0x10]
	bl sub_80097E4
	adds r2, r0, #0
	ldr r0, [r7, #0x4c]
	movs r1, #0x20
	ands r0, r1
	mov r3, r8
	str r3, [sp, #0x1c]
	str r5, [sp, #0x20]
	cmp r0, #0
	beq _0801430C
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _0801430C
	mov r4, sl
	ldr r0, [r4, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r4, #0x10]
_0801430C:
	str r2, [r7, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r0, r2
	cmp r0, #0
	beq _0801431E
	movs r0, #0x1e
	ldr r5, [sp, #0x24]
	strb r0, [r5]
_0801431E:
	ldr r0, [r7, #0x5c]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0801432A
	b _0801445E
_0801432A:
	mov r0, sb
	cmp r0, #0
	bne _08014338
	ldr r1, [sp, #0x14]
	cmp r1, #0
	bne _08014338
	b _08014452
_08014338:
	ldr r0, _080143A0 @ =0x00010028
	ands r0, r2
	cmp r0, #0
	bne _08014342
	b _08014452
_08014342:
	ldr r2, [sp, #0x10]
	ldrh r0, [r2, #0xa]
	subs r0, #0x9b
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _08014352
	b _08014452
_08014352:
	ldr r0, _080143A4 @ =gStageFlags
	ldrh r3, [r0]
	lsrs r2, r3, #7
	movs r1, #1
	ands r2, r1
	ldr r4, [sp, #0x20]
	ldrh r0, [r4]
	lsrs r0, r0, #3
	bics r1, r0
	cmp r2, r1
	beq _08014452
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	bne _080143AC
	ldr r2, _0801439C @ =gPlayer
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	movs r5, #0
	ldrsh r1, [r6, r5]
	cmp r1, r0
	bge _08014380
	adds r1, r0, #0
_08014380:
	movs r0, #0xf
	ldrsb r0, [r2, r0]
	adds r0, r1, r0
	ldr r1, [r2]
	asrs r1, r1, #8
	adds r2, #0x27
	ldrb r2, [r2]
	add r3, sp, #0xc
	str r3, [sp]
	ldr r3, _080143A8 @ =sa2__sub_801EE64
	str r3, [sp, #4]
	movs r3, #8
	b _080143D6
	.align 2, 0
_0801439C: .4byte gPlayer
_080143A0: .4byte 0x00010028
_080143A4: .4byte gStageFlags
_080143A8: .4byte sa2__sub_801EE64
_080143AC:
	ldr r2, _08014438 @ =gPlayer
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	movs r4, #0
	ldrsh r1, [r6, r4]
	cmp r1, r0
	ble _080143BC
	adds r1, r0, #0
_080143BC:
	movs r0, #0xf
	ldrsb r0, [r2, r0]
	subs r0, r1, r0
	ldr r1, [r2]
	asrs r1, r1, #8
	adds r2, #0x27
	ldrb r2, [r2]
	movs r3, #8
	rsbs r3, r3, #0
	add r5, sp, #0xc
	str r5, [sp]
	ldr r4, _0801443C @ =sa2__sub_801EE64
	str r4, [sp, #4]
_080143D6:
	bl sa2__sub_801E4E4
	adds r1, r0, #0
	ldr r4, _08014438 @ =gPlayer
	movs r0, #0xf
	ldrsb r0, [r4, r0]
	subs r0, r1, r0
	cmp r0, #0
	ble _08014452
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r7, #0x5c]
	movs r1, #4
	orrs r0, r1
	str r0, [r7, #0x5c]
	adds r0, r4, #0
	movs r1, #0xe
	bl sa2__sub_8023B5C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
	bl sub_80182FC
	movs r1, #8
	strb r1, [r0]
	adds r1, r7, #0
	adds r1, #0x56
	ldrb r1, [r1]
	strb r1, [r0, #1]
	movs r1, #1
	strb r1, [r0, #2]
	ldr r0, _08014440 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08014448
	ldr r0, [r7, #0x5c]
	ldr r1, _08014444 @ =0xFFFFFEFF
	ands r0, r1
	b _08014450
	.align 2, 0
_08014438: .4byte gPlayer
_0801443C: .4byte sa2__sub_801EE64
_08014440: .4byte gStageFlags
_08014444: .4byte 0xFFFFFEFF
_08014448:
	ldr r0, [r7, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
_08014450:
	str r0, [r7, #0x5c]
_08014452:
	ldr r0, [r7, #0x5c]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801445E
	b _0801472A
_0801445E:
	ldr r0, _080144A0 @ =gPlayer
	mov r8, r0
	mov r1, r8
	adds r1, #0x40
	movs r2, #0
	movs r0, #0x26
	strb r0, [r1]
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r3, #2
	mov sb, r3
	orrs r0, r3
	str r0, [r1, #0x10]
	mov r0, r8
	adds r0, #0x3d
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	mov r0, r8
	bl sub_8044250
	cmp r0, #0
	beq _080144A8
	movs r0, #0x1e
	ldr r4, [sp, #0x24]
	strb r0, [r4]
	mov r5, r8
	ldr r0, [r5, #0x10]
	ldr r1, _080144A4 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
	b _08014568
	.align 2, 0
_080144A0: .4byte gPlayer
_080144A4: .4byte 0xFFBFFFFF
_080144A8:
	ldr r1, [sp, #0x10]
	ldrh r0, [r1, #0xa]
	subs r0, #0x9b
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bhi _080144FA
	mov r2, r8
	ldr r0, [r2]
	asrs r1, r0, #8
	ldr r2, _08014544 @ =gCamera
	movs r3, #0x18
	ldrsh r0, [r2, r3]
	cmp r1, r0
	ble _080144FA
	movs r4, #0x1a
	ldrsh r0, [r2, r4]
	cmp r1, r0
	bge _080144FA
	ldr r0, _08014548 @ =gStageFlags
	ldrh r5, [r0]
	lsrs r0, r5, #7
	movs r4, #1
	adds r2, r4, #0
	bics r2, r0
	ldr r0, [sp, #0x20]
	ldrh r1, [r0]
	lsrs r1, r1, #3
	adds r0, r4, #0
	bics r0, r1
	cmp r2, r0
	bne _080144FA
	ldr r3, [r7, #0x5c]
	lsrs r1, r3, #8
	adds r0, r4, #0
	bics r0, r1
	cmp r0, r2
	bne _080144FA
	ldr r1, [sp, #0x18]
	cmp r1, #0
	beq _08014554
_080144FA:
	ldr r4, _0801454C @ =gPlayer
	ldr r0, [r4, #0x10]
	ldr r1, _08014550 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r7, #0x5c]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x5c]
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08014548 @ =gStageFlags
	ldrh r0, [r0]
	lsrs r0, r0, #7
	movs r3, #1
	adds r2, r3, #0
	bics r2, r0
	ldr r5, [sp, #0x20]
	ldrh r1, [r5]
	lsrs r1, r1, #3
	adds r0, r3, #0
	bics r0, r1
	cmp r2, r0
	bne _0801453E
	ldr r1, [r7, #0x5c]
	lsrs r1, r1, #8
	adds r0, r3, #0
	bics r0, r1
	cmp r0, r2
	bne _0801453E
	b _08014670
_0801453E:
	movs r0, #0x3c
	strh r0, [r4, #0x1c]
	b _08014670
	.align 2, 0
_08014544: .4byte gCamera
_08014548: .4byte gStageFlags
_0801454C: .4byte gPlayer
_08014550: .4byte 0xFFBFFFFF
_08014554:
	mov r0, r8
	ldr r1, [r0, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08014578
	ldr r0, _08014574 @ =0xFFBFFFFF
	ands r1, r0
	mov r2, r8
	str r1, [r2, #0x10]
_08014568:
	ldr r0, [r7, #0x5c]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x5c]
	b _08014670
	.align 2, 0
_08014574: .4byte 0xFFBFFFFF
_08014578:
	movs r0, #0x80
	ands r0, r5
	movs r1, #4
	orrs r3, r1
	str r3, [r7, #0x5c]
	ldr r3, [sp, #0x1c]
	movs r4, #0
	ldrsh r1, [r3, r4]
	lsls r5, r1, #8
	cmp r0, #0
	bne _080145E8
	movs r1, #0
	ldrsh r0, [r6, r1]
	ldr r1, [sp, #0x10]
	adds r1, #0x2f
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r0, #0x11
	lsls r6, r0, #8
	mov r2, r8
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	movs r1, #0xf
	ldrsb r1, [r2, r1]
	adds r0, r0, r1
	ldr r1, [r2]
	asrs r1, r1, #8
	adds r2, #0x27
	ldrb r2, [r2]
	add r3, sp, #0xc
	str r3, [sp]
	ldr r3, _080145E0 @ =sa2__sub_801EE64
	str r3, [sp, #4]
	movs r3, #8
	bl sa2__sub_801E4E4
	adds r1, r0, #0
	cmp r1, #0
	bge _08014646
	lsls r0, r1, #8
	adds r6, r6, r0
	mov r4, r8
	ldr r0, [r4, #0x10]
	ldr r1, _080145E4 @ =0xFFBFFFFF
	ands r0, r1
	mov r1, sb
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0801463C
	.align 2, 0
_080145E0: .4byte sa2__sub_801EE64
_080145E4: .4byte 0xFFBFFFFF
_080145E8:
	movs r2, #0
	ldrsh r0, [r6, r2]
	ldr r1, [sp, #0x10]
	adds r1, #0x2d
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	subs r0, #0x11
	lsls r6, r0, #8
	mov r3, r8
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	movs r1, #0xf
	ldrsb r1, [r3, r1]
	subs r0, r0, r1
	ldr r1, [r3]
	asrs r1, r1, #8
	mov r2, r8
	adds r2, #0x27
	ldrb r2, [r2]
	movs r3, #8
	rsbs r3, r3, #0
	add r4, sp, #0xc
	str r4, [sp]
	ldr r4, _080146A4 @ =sa2__sub_801EE64
	str r4, [sp, #4]
	bl sa2__sub_801E4E4
	adds r1, r0, #0
	cmp r1, #0
	bge _08014646
	lsls r0, r1, #8
	subs r6, r6, r0
	mov r1, r8
	ldr r0, [r1, #0x10]
	ldr r1, _080146A8 @ =0xFFBFFFFF
	ands r0, r1
	mov r2, sb
	orrs r0, r2
	mov r3, r8
	str r0, [r3, #0x10]
_0801463C:
	ldr r0, [r7, #0x5c]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x5c]
_08014646:
	ldr r0, _080146AC @ =gPlayer
	str r5, [r0]
	str r6, [r0, #4]
	ldr r1, [r7, #0x5c]
	movs r2, #4
	ands r1, r2
	adds r3, r0, #0
	cmp r1, #0
	beq _0801467A
	movs r2, #0
	strh r2, [r3, #8]
	ldr r0, _080146B0 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	strh r2, [r3, #0xa]
	ldr r0, [r3, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #0x10]
_08014670:
	ldr r0, [r7, #0x5c]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801468E
_0801467A:
	bl sub_80182FC
	movs r2, #0
	movs r1, #8
	strb r1, [r0]
	adds r1, r7, #0
	adds r1, #0x56
	ldrb r1, [r1]
	strb r1, [r0, #1]
	strb r2, [r0, #2]
_0801468E:
	ldr r0, _080146B0 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080146B8
	ldr r0, [r7, #0x5c]
	ldr r1, _080146B4 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r7, #0x5c]
	b _0801472A
	.align 2, 0
_080146A4: .4byte sa2__sub_801EE64
_080146A8: .4byte 0xFFBFFFFF
_080146AC: .4byte gPlayer
_080146B0: .4byte gStageFlags
_080146B4: .4byte 0xFFFFFEFF
_080146B8:
	ldr r0, [r7, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r7, #0x5c]
	b _0801472A
_080146C4:
	subs r0, r2, #1
	strb r0, [r1]
	ldr r0, [r6, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0801472A
	ldr r0, [r6, #0x28]
	ldr r4, [sp, #0x10]
	cmp r0, r4
	bne _0801472A
	adds r0, r7, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, #2
	movs r3, #0
	ldrsh r2, [r0, r3]
	adds r0, #0x14
	movs r4, #0
	ldrsh r3, [r0, r4]
	adds r0, #2
	movs r4, #0
	ldrsh r0, [r0, r4]
	str r0, [sp]
	adds r0, r7, #0
	adds r0, #0x54
	ldrh r0, [r0]
	lsrs r0, r0, #7
	movs r4, #1
	ands r0, r4
	str r0, [sp, #4]
	str r5, [sp, #8]
	ldr r0, [sp, #0x10]
	bl sub_80097E4
	adds r2, r0, #0
	ldr r0, [r7, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08014728
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08014728
	ldr r0, [r6, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r6, #0x10]
_08014728:
	str r2, [r7, #0x4c]
_0801472A:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801473C
sub_801473C: @ 0x0801473C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	ldr r2, _080147EC @ =gPlayer
	ldr r0, [r2, #0x64]
	adds r0, #0xc
	mov r8, r0
	ldr r0, _080147F0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	mov sb, r7
	ldr r1, [r2, #0x10]
	lsrs r0, r1, #5
	str r0, [sp, #0x14]
	movs r0, #1
	ldr r3, [sp, #0x14]
	ands r3, r0
	str r3, [sp, #0x14]
	movs r0, #8
	ands r1, r0
	cmp r1, #0
	beq _0801477E
	ldr r0, [r2, #0x28]
	cmp r0, r7
	bne _0801477E
	bl sub_8015024
_0801477E:
	ldr r0, _080147F4 @ =gGameMode
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #3
	beq _0801478C
	cmp r1, #5
	bne _080147BC
_0801478C:
	ldr r0, _080147F8 @ =gMultiplayerConnections
	ldrb r3, [r0]
	adds r0, r7, #0
	adds r0, #0x56
	ldrb r0, [r0]
	movs r2, #0x10
	adds r1, r2, #0
	lsls r1, r0
	ands r1, r3
	adds r0, #4
	asrs r1, r0
	ldr r4, _080147FC @ =0x04000128
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r2, r0
	ands r3, r2
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, #4
	asrs r3, r0
	cmp r1, r3
	bne _080147C6
_080147BC:
	ldrb r0, [r5]
	cmp r0, #3
	beq _08014800
	cmp r0, #5
	beq _08014800
_080147C6:
	bl sub_80152C8
	cmp r0, #0
	bne _080147D0
	b _08014CFC
_080147D0:
	ldr r0, [r7, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080147DC
	b _08014CFC
_080147DC:
	ldr r2, _080147EC @ =gPlayer
	ldr r0, [r2, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r2, #0x10]
	movs r0, #0
	str r0, [r7, #0x4c]
	b _08014CFC
	.align 2, 0
_080147EC: .4byte gPlayer
_080147F0: .4byte gCurTask
_080147F4: .4byte gGameMode
_080147F8: .4byte gMultiplayerConnections
_080147FC: .4byte 0x04000128
_08014800:
	ldr r6, _08014870 @ =gPlayer
	adds r0, r6, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08014820
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08014820
	b _08014CFC
_08014820:
	adds r1, r7, #0
	adds r1, #0x60
	ldrb r2, [r1]
	str r1, [sp, #0x20]
	cmp r2, #0
	beq _08014838
	ldr r5, [r7, #0x5c]
	movs r0, #4
	ands r5, r0
	cmp r5, #0
	bne _08014838
	b _08014C98
_08014838:
	movs r5, #0
	strb r5, [r1]
	ldr r0, _08014874 @ =0xFFFFFEFC
	adds r4, r0, #0
	mov r1, sb
	ldrh r1, [r1, #0xa]
	adds r0, r4, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _0801489C
	bl sub_80151AC
	cmp r0, #0
	beq _08014878
	ldr r0, [r7, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08014862
	b _08014CFC
_08014862:
	ldr r0, [r6, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r6, #0x10]
	str r5, [r7, #0x4c]
	b _08014CFC
	.align 2, 0
_08014870: .4byte gPlayer
_08014874: .4byte 0xFFFFFEFC
_08014878:
	mov r2, sb
	ldrh r2, [r2, #0xa]
	adds r0, r4, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _0801489C
	mov r3, r8
	ldr r0, [r3, #0x30]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0801489C
	mov r4, sb
	ldr r0, [r4, #0x30]
	cmp r0, r1
	beq _0801489C
	b _08014CFC
_0801489C:
	ldr r0, _080149A8 @ =gPlayer
	mov sl, r0
	ldrb r4, [r0, #0xe]
	rsbs r0, r4, #0
	add r1, sp, #0x10
	strb r0, [r1]
	mov r2, sl
	ldrb r3, [r2, #0xf]
	rsbs r2, r3, #0
	mov r0, sp
	adds r0, #0x11
	strb r2, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r3, [r0]
	add r0, sp, #0xc
	movs r2, #4
	bl memcpy
	movs r3, #0x50
	adds r3, r3, r7
	mov r8, r3
	movs r4, #0
	ldrsh r1, [r3, r4]
	adds r6, r7, #0
	adds r6, #0x52
	movs r0, #0
	ldrsh r2, [r6, r0]
	adds r0, r7, #0
	adds r0, #0x66
	movs r4, #0
	ldrsh r3, [r0, r4]
	adds r0, #2
	movs r4, #0
	ldrsh r0, [r0, r4]
	str r0, [sp]
	adds r5, r7, #0
	adds r5, #0x54
	ldrh r0, [r5]
	lsrs r0, r0, #7
	movs r4, #1
	ands r0, r4
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, sb
	bl sub_80097E4
	adds r2, r0, #0
	ldr r0, [r7, #0x4c]
	movs r1, #0x20
	ands r0, r1
	mov r3, r8
	str r3, [sp, #0x18]
	str r6, [sp, #0x1c]
	mov r8, r5
	cmp r0, #0
	beq _08014922
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08014922
	mov r4, sl
	ldr r0, [r4, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r4, #0x10]
_08014922:
	str r2, [r7, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r0, r2
	cmp r0, #0
	beq _08014934
	movs r0, #0x1e
	ldr r1, [sp, #0x20]
	strb r0, [r1]
_08014934:
	ldr r2, [sp, #0x18]
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r4, [sp, #0x1c]
	movs r0, #0
	ldrsh r2, [r4, r0]
	ldr r5, _080149A8 @ =gPlayer
	add r3, sp, #0xc
	str r3, [sp]
	mov r0, sb
	adds r3, r5, #0
	bl CheckRectCollision_SpritePlayer
	cmp r0, #0
	bne _08014954
	b _08014A6A
_08014954:
	mov r4, r8
	ldrh r0, [r4]
	lsls r2, r0, #0x10
	lsrs r0, r2, #0x17
	movs r4, #1
	ands r0, r4
	adds r1, r5, #0
	adds r1, #0x27
	ldrb r1, [r1]
	cmp r0, r1
	beq _0801496C
	b _08014A6A
_0801496C:
	ldr r1, _080149AC @ =0xFFFFFEFC
	adds r0, r1, #0
	mov r3, sb
	ldrh r3, [r3, #0xa]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bhi _08014A6A
	ldr r0, _080149B0 @ =gStageFlags
	ldrh r3, [r0]
	lsrs r1, r3, #7
	ands r1, r4
	lsrs r2, r2, #0x13
	adds r0, r4, #0
	bics r0, r2
	cmp r1, r0
	beq _08014A6A
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	bne _080149B4
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	ldr r4, [sp, #0x1c]
	movs r2, #0
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bgt _080149C2
	b _08014A6A
	.align 2, 0
_080149A8: .4byte gPlayer
_080149AC: .4byte 0xFFFFFEFC
_080149B0: .4byte gStageFlags
_080149B4:
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	ldr r3, [sp, #0x1c]
	movs r4, #0
	ldrsh r1, [r3, r4]
	cmp r0, r1
	bge _08014A6A
_080149C2:
	ldr r4, _08014A10 @ =gPlayer
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #0xe
	bl sa2__sub_8023B5C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
	adds r2, r4, #0
	movs r1, #0
	movs r0, #0
	strh r0, [r2, #0xc]
	strh r0, [r2, #8]
	adds r0, r2, #0
	adds r0, #0x40
	strb r1, [r0]
	subs r0, #3
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	mov r1, sb
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08014A14
	ldr r0, [r2, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x10]
	b _08014A1C
	.align 2, 0
_08014A10: .4byte gPlayer
_08014A14:
	ldr r0, [r4, #0x10]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0x10]
_08014A1C:
	ldr r0, [r7, #0x5c]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08014A62
	bl sub_80182FC
	movs r1, #8
	strb r1, [r0]
	adds r1, r7, #0
	adds r1, #0x56
	ldrb r1, [r1]
	strb r1, [r0, #1]
	movs r1, #1
	strb r1, [r0, #2]
	ldr r0, _08014A50 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08014A58
	ldr r0, [r7, #0x5c]
	ldr r1, _08014A54 @ =0xFFFFFEFF
	ands r0, r1
	b _08014A60
	.align 2, 0
_08014A50: .4byte gStageFlags
_08014A54: .4byte 0xFFFFFEFF
_08014A58:
	ldr r0, [r7, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
_08014A60:
	str r0, [r7, #0x5c]
_08014A62:
	ldr r0, [r7, #0x5c]
	movs r1, #4
	orrs r0, r1
	str r0, [r7, #0x5c]
_08014A6A:
	ldr r0, [r7, #0x5c]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08014A76
	b _08014CFC
_08014A76:
	ldr r6, _08014A98 @ =gPlayer
	adds r0, r6, #0
	bl sub_8044250
	cmp r0, #0
	beq _08014AA0
	movs r0, #0x1e
	ldr r2, [sp, #0x20]
	strb r0, [r2]
	ldr r0, [r6, #0x10]
	ldr r1, _08014A9C @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, [r7, #0x5c]
	movs r1, #5
	rsbs r1, r1, #0
	b _08014C7C
	.align 2, 0
_08014A98: .4byte gPlayer
_08014A9C: .4byte 0xFFBFFFFF
_08014AA0:
	ldr r3, _08014B3C @ =0xFFFFFEFC
	adds r0, r3, #0
	mov r4, sb
	ldrh r4, [r4, #0xa]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _08014B40 @ =gStageFlags
	cmp r0, #2
	bhi _08014AF4
	ldr r0, [r6]
	asrs r1, r0, #8
	ldr r2, _08014B44 @ =gCamera
	movs r3, #0x18
	ldrsh r0, [r2, r3]
	cmp r1, r0
	ble _08014AF4
	movs r4, #0x1a
	ldrsh r0, [r2, r4]
	cmp r1, r0
	bge _08014AF4
	ldrh r4, [r5]
	lsrs r0, r4, #7
	movs r3, #1
	adds r2, r3, #0
	bics r2, r0
	mov r1, r8
	ldrh r0, [r1]
	lsrs r0, r0, #3
	adds r1, r3, #0
	bics r1, r0
	cmp r2, r1
	bne _08014AF4
	ldr r1, [r7, #0x5c]
	lsrs r1, r1, #8
	adds r0, r3, #0
	bics r0, r1
	cmp r0, r2
	bne _08014AF4
	ldr r2, [sp, #0x14]
	cmp r2, #0
	beq _08014B50
_08014AF4:
	ldr r2, _08014B48 @ =gPlayer
	ldr r0, [r2, #0x10]
	ldr r1, _08014B4C @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r2, #0x10]
	ldr r0, [r7, #0x5c]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x5c]
	adds r2, #0x40
	movs r0, #0
	strb r0, [r2]
	ldrh r0, [r5]
	lsrs r0, r0, #7
	movs r3, #1
	adds r2, r3, #0
	bics r2, r0
	mov r4, r8
	ldrh r1, [r4]
	lsrs r1, r1, #3
	adds r0, r3, #0
	bics r0, r1
	cmp r2, r0
	bne _08014B34
	ldr r1, [r7, #0x5c]
	lsrs r1, r1, #8
	adds r0, r3, #0
	bics r0, r1
	cmp r0, r2
	bne _08014B34
	b _08014CFC
_08014B34:
	movs r0, #0x1e
	ldr r1, [sp, #0x20]
	strb r0, [r1]
	b _08014CFC
	.align 2, 0
_08014B3C: .4byte 0xFFFFFEFC
_08014B40: .4byte gStageFlags
_08014B44: .4byte gCamera
_08014B48: .4byte gPlayer
_08014B4C: .4byte 0xFFBFFFFF
_08014B50:
	movs r2, #0xf
	ldrsb r2, [r6, r2]
	movs r0, #0x80
	ands r0, r4
	ldr r3, [sp, #0x18]
	movs r4, #0
	ldrsh r1, [r3, r4]
	lsls r1, r1, #8
	mov r8, r1
	cmp r0, #0
	bne _08014BAC
	ldr r1, [sp, #0x1c]
	movs r3, #0
	ldrsh r0, [r1, r3]
	mov r1, sb
	adds r1, #0x2d
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	add r1, sp, #0xc
	ldrb r1, [r1, #3]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	lsls r5, r0, #8
	subs r0, r0, r2
	mov r4, r8
	asrs r1, r4, #8
	adds r2, r6, #0
	adds r2, #0x27
	ldrb r2, [r2]
	movs r3, #8
	rsbs r3, r3, #0
	ldr r4, _08014BA8 @ =sa2__sub_801EC3C
	str r4, [sp]
	bl sa2__sub_801F100
	cmp r0, #0
	bge _08014BFC
	lsls r0, r0, #8
	subs r5, r5, r0
	b _08014BE8
	.align 2, 0
_08014BA8: .4byte sa2__sub_801EC3C
_08014BAC:
	ldr r1, [sp, #0x1c]
	movs r3, #0
	ldrsh r0, [r1, r3]
	mov r1, sb
	adds r1, #0x2f
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	add r1, sp, #0xc
	ldrb r1, [r1, #3]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	lsls r5, r0, #8
	adds r0, r0, r2
	mov r4, r8
	asrs r1, r4, #8
	adds r2, r6, #0
	adds r2, #0x27
	ldrb r2, [r2]
	ldr r3, _08014C3C @ =sa2__sub_801EC3C
	str r3, [sp]
	movs r3, #8
	bl sa2__sub_801F100
	cmp r0, #0
	bge _08014BFC
	lsls r0, r0, #8
	adds r5, r5, r0
_08014BE8:
	ldr r0, [r6, #0x10]
	ldr r1, _08014C40 @ =0xFFBFFFFF
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	str r0, [r6, #0x10]
	ldr r0, [r7, #0x5c]
	subs r1, #7
	ands r0, r1
	str r0, [r7, #0x5c]
_08014BFC:
	ldr r3, _08014C44 @ =gPlayer
	mov r0, r8
	str r0, [r3]
	str r5, [r3, #4]
	ldr r0, [r7, #0x5c]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08014C58
	ldr r2, [r3, #0x10]
	movs r0, #8
	orrs r2, r0
	subs r0, #0xd
	ands r2, r0
	adds r0, #2
	ands r2, r0
	str r2, [r3, #0x10]
	mov r1, sb
	str r1, [r3, #0x28]
	movs r0, #0
	strh r0, [r3, #0xa]
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08014C48
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
	b _08014C4C
	.align 2, 0
_08014C3C: .4byte sa2__sub_801EC3C
_08014C40: .4byte 0xFFBFFFFF
_08014C44: .4byte gPlayer
_08014C48:
	movs r0, #1
	orrs r2, r0
_08014C4C:
	str r2, [r3, #0x10]
	ldr r0, [r7, #0x5c]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08014C6C
_08014C58:
	bl sub_80182FC
	movs r2, #0
	movs r1, #8
	strb r1, [r0]
	adds r1, r7, #0
	adds r1, #0x56
	ldrb r1, [r1]
	strb r1, [r0, #1]
	strb r2, [r0, #2]
_08014C6C:
	ldr r0, _08014C84 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08014C8C
	ldr r0, [r7, #0x5c]
	ldr r1, _08014C88 @ =0xFFFFFEFF
_08014C7C:
	ands r0, r1
	str r0, [r7, #0x5c]
	b _08014CFC
	.align 2, 0
_08014C84: .4byte gStageFlags
_08014C88: .4byte 0xFFFFFEFF
_08014C8C:
	ldr r0, [r7, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r7, #0x5c]
	b _08014CFC
_08014C98:
	subs r0, r2, #1
	strb r0, [r1]
	ldr r0, [r6, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08014CFC
	ldr r0, [r6, #0x28]
	cmp r0, sb
	bne _08014CFC
	adds r0, r7, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, #2
	movs r3, #0
	ldrsh r2, [r0, r3]
	adds r0, #0x14
	movs r4, #0
	ldrsh r3, [r0, r4]
	adds r0, #2
	movs r4, #0
	ldrsh r0, [r0, r4]
	str r0, [sp]
	adds r0, r7, #0
	adds r0, #0x54
	ldrh r0, [r0]
	lsrs r0, r0, #7
	movs r4, #1
	ands r0, r4
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, sb
	bl sub_80097E4
	adds r2, r0, #0
	ldr r0, [r7, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08014CFA
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08014CFA
	ldr r0, [r6, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r6, #0x10]
_08014CFA:
	str r2, [r7, #0x4c]
_08014CFC:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8014D0C
sub_8014D0C: @ 0x08014D0C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _08014DAC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	str r7, [sp, #0xc]
	ldr r2, _08014DB0 @ =gPlayer
	ldr r0, [r2, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08014D3C
	ldr r0, [r2, #0x28]
	cmp r0, r7
	bne _08014D3C
	bl sub_8015024
_08014D3C:
	ldr r0, _08014DB4 @ =gGameMode
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #3
	beq _08014D4A
	cmp r1, #5
	bne _08014D7A
_08014D4A:
	ldr r0, _08014DB8 @ =gMultiplayerConnections
	ldrb r3, [r0]
	adds r0, r7, #0
	adds r0, #0x56
	ldrb r0, [r0]
	movs r2, #0x10
	adds r1, r2, #0
	lsls r1, r0
	ands r1, r3
	adds r0, #4
	asrs r1, r0
	ldr r4, _08014DBC @ =0x04000128
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r2, r0
	ands r3, r2
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, #4
	asrs r3, r0
	cmp r1, r3
	bne _08014D84
_08014D7A:
	ldrb r0, [r5]
	cmp r0, #3
	beq _08014DC0
	cmp r0, #5
	beq _08014DC0
_08014D84:
	bl sub_80152C8
	cmp r0, #0
	bne _08014D8E
	b _0801500E
_08014D8E:
	ldr r0, [r7, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08014D9A
	b _0801500E
_08014D9A:
	ldr r2, _08014DB0 @ =gPlayer
	ldr r0, [r2, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r2, #0x10]
	movs r0, #0
	str r0, [r7, #0x4c]
	b _0801500E
	.align 2, 0
_08014DAC: .4byte gCurTask
_08014DB0: .4byte gPlayer
_08014DB4: .4byte gGameMode
_08014DB8: .4byte gMultiplayerConnections
_08014DBC: .4byte 0x04000128
_08014DC0:
	adds r1, r7, #0
	adds r1, #0x60
	ldrb r0, [r1]
	str r1, [sp, #0x14]
	cmp r0, #0
	beq _08014DCE
	b _08014FA4
_08014DCE:
	ldr r0, [sp, #0xc]
	ldr r1, [r0, #0x30]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08014E30
	ldr r5, _08014E2C @ =gPlayer
	adds r0, r5, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08014DFC
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08014DFC
	b _0801500E
_08014DFC:
	adds r0, r7, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, #2
	movs r3, #0
	ldrsh r2, [r0, r3]
	adds r0, #0x14
	movs r4, #0
	ldrsh r3, [r0, r4]
	adds r0, #2
	movs r6, #0
	ldrsh r0, [r0, r6]
	str r0, [sp]
	adds r0, r7, #0
	adds r0, #0x54
	ldrh r0, [r0]
	lsrs r0, r0, #7
	movs r4, #1
	ands r0, r4
	str r0, [sp, #4]
	str r4, [sp, #8]
	b _08014FEA
	.align 2, 0
_08014E2C: .4byte gPlayer
_08014E30:
	ldr r0, _08014EC4 @ =gPlayer
	str r0, [sp, #0x10]
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08014E52
	ldr r0, [sp, #0x10]
	adds r0, #0x59
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08014E52
	b _0801500E
_08014E52:
	movs r1, #0x50
	adds r1, r1, r7
	mov sl, r1
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r3, #0x52
	adds r3, r3, r7
	mov sb, r3
	movs r4, #0
	ldrsh r2, [r3, r4]
	movs r5, #0x66
	adds r5, r5, r7
	mov r8, r5
	movs r6, #0
	ldrsh r3, [r5, r6]
	adds r6, r7, #0
	adds r6, #0x68
	movs r4, #0
	ldrsh r0, [r6, r4]
	str r0, [sp]
	adds r5, r7, #0
	adds r5, #0x54
	ldrh r0, [r5]
	lsrs r0, r0, #7
	movs r4, #1
	ands r0, r4
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	bl sub_800A3A8
	adds r3, r0, #0
	movs r1, #2
	ands r0, r1
	mov r2, sl
	mov sl, r6
	mov ip, r5
	cmp r0, #0
	beq _08014EE4
	ldr r5, [sp, #0x10]
	ldr r0, [r5, #0x10]
	ands r0, r1
	cmp r0, #0
	bne _08014EE4
	ldrb r0, [r5, #0x14]
	cmp r0, #0
	bne _08014EE4
	ldr r6, [sp, #0xc]
	ldrh r1, [r6, #0xa]
	movs r0, #0xae
	lsls r0, r0, #1
	cmp r1, r0
	bne _08014ECC
	ldr r0, _08014EC8 @ =0xFFFFF880
	bl sub_8015754
	b _08014F46
	.align 2, 0
_08014EC4: .4byte gPlayer
_08014EC8: .4byte 0xFFFFF880
_08014ECC:
	ldr r0, _08014EDC @ =0x00000161
	cmp r1, r0
	bne _08014EE4
	ldr r0, _08014EE0 @ =0xFFFFF580
	bl sub_8015754
	b _08014F46
	.align 2, 0
_08014EDC: .4byte 0x00000161
_08014EE0: .4byte 0xFFFFF580
_08014EE4:
	movs r4, #1
	adds r0, r3, #0
	ands r0, r4
	cmp r0, #0
	beq _08014F54
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r3
	cmp r0, #0
	beq _08014F0C
	ldr r1, _08014F08 @ =gPlayer
	ldrh r2, [r1, #8]
	movs r4, #8
	ldrsh r0, [r1, r4]
	cmp r0, #0
	ble _08014F2C
	b _08014F22
	.align 2, 0
_08014F08: .4byte gPlayer
_08014F0C:
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r3
	cmp r0, #0
	beq _08014F2C
	ldr r1, _08014F50 @ =gPlayer
	ldrh r2, [r1, #8]
	movs r5, #8
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _08014F2C
_08014F22:
	rsbs r0, r2, #0
	strh r0, [r1, #8]
	ldrh r0, [r1, #0xc]
	rsbs r0, r0, #0
	strh r0, [r1, #0xc]
_08014F2C:
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r0, r3
	cmp r0, #0
	beq _08014F46
	ldr r1, _08014F50 @ =gPlayer
	ldrh r2, [r1, #0xa]
	movs r6, #0xa
	ldrsh r0, [r1, r6]
	cmp r0, #0
	ble _08014F46
	rsbs r0, r2, #0
	strh r0, [r1, #0xa]
_08014F46:
	movs r0, #0x1e
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	b _0801500E
	.align 2, 0
_08014F50: .4byte gPlayer
_08014F54:
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r5, sb
	movs r6, #0
	ldrsh r2, [r5, r6]
	mov r0, r8
	movs r5, #0
	ldrsh r3, [r0, r5]
	mov r6, sl
	movs r5, #0
	ldrsh r0, [r6, r5]
	str r0, [sp]
	mov r6, ip
	ldrh r0, [r6]
	lsrs r0, r0, #7
	ands r0, r4
	str r0, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [sp, #0xc]
	bl sub_80097E4
	adds r3, r0, #0
	ldr r0, [r7, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801500C
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _0801500C
	ldr r0, _08014FA0 @ =gPlayer
	ldr r1, [r0, #0x10]
	movs r2, #0x21
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0, #0x10]
	b _0801500C
	.align 2, 0
_08014FA0: .4byte gPlayer
_08014FA4:
	subs r0, #1
	strb r0, [r1]
	ldr r5, _08015020 @ =gPlayer
	ldr r0, [r5, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0801500E
	ldr r0, [r5, #0x28]
	ldr r1, [sp, #0xc]
	cmp r0, r1
	bne _0801500E
	adds r0, r7, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, #2
	movs r3, #0
	ldrsh r2, [r0, r3]
	adds r0, #0x14
	movs r4, #0
	ldrsh r3, [r0, r4]
	adds r0, #2
	movs r6, #0
	ldrsh r0, [r0, r6]
	str r0, [sp]
	adds r0, r7, #0
	adds r0, #0x54
	ldrh r0, [r0]
	lsrs r0, r0, #7
	movs r4, #1
	ands r0, r4
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
_08014FEA:
	ldr r0, [sp, #0xc]
	bl sub_80097E4
	adds r3, r0, #0
	ldr r0, [r7, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801500C
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _0801500C
	ldr r0, [r5, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r5, #0x10]
_0801500C:
	str r3, [r7, #0x4c]
_0801500E:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08015020: .4byte gPlayer

	thumb_func_start sub_8015024
sub_8015024: @ 0x08015024
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _08015068 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r0, [r6, #0x44]
	cmp r0, #0
	bge _0801503C
	rsbs r0, r0, #0
_0801503C:
	cmp r0, #0x80
	bgt _0801504C
	ldr r0, [r6, #0x48]
	cmp r0, #0
	bge _08015048
	rsbs r0, r0, #0
_08015048:
	cmp r0, #0x80
	ble _08015070
_0801504C:
	ldr r2, _0801506C @ =gPlayer
	ldr r0, [r2, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x10]
	adds r1, r6, #0
	adds r1, #0x60
	movs r0, #0x1e
	strb r0, [r1]
	b _0801519C
	.align 2, 0
_08015068: .4byte gCurTask
_0801506C: .4byte gPlayer
_08015070:
	ldr r2, _08015094 @ =gPlayer
	ldr r1, [r6, #0x44]
	lsls r1, r1, #8
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, _08015098 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	bne _0801509C
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	b _080150A0
	.align 2, 0
_08015094: .4byte gPlayer
_08015098: .4byte gStageFlags
_0801509C:
	ldr r1, [r5, #4]
	ldr r0, _080150DC @ =0xFFFFFE00
_080150A0:
	adds r1, r1, r0
	ldr r0, [r6, #0x48]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r5, #4]
	ldr r0, [r6, #0x48]
	cmp r0, #0
	bge _080150E4
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	movs r1, #0xf
	ldrsb r1, [r5, r1]
	subs r0, r0, r1
	ldr r1, [r5]
	asrs r1, r1, #8
	adds r2, r5, #0
	adds r2, #0x27
	ldrb r2, [r2]
	movs r3, #8
	rsbs r3, r3, #0
	ldr r4, _080150E0 @ =sa2__sub_801EC3C
	str r4, [sp]
	bl sa2__sub_801F100
	cmp r0, #0
	bge _08015128
	lsls r1, r0, #8
	ldr r0, [r5, #4]
	subs r0, r0, r1
	b _08015110
	.align 2, 0
_080150DC: .4byte 0xFFFFFE00
_080150E0: .4byte sa2__sub_801EC3C
_080150E4:
	cmp r0, #0
	ble _08015128
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	movs r1, #0xf
	ldrsb r1, [r5, r1]
	adds r0, r0, r1
	ldr r1, [r5]
	asrs r1, r1, #8
	adds r2, r5, #0
	adds r2, #0x27
	ldrb r2, [r2]
	ldr r3, _08015160 @ =sa2__sub_801EC3C
	str r3, [sp]
	movs r3, #8
	bl sa2__sub_801F100
	cmp r0, #0
	bge _08015128
	lsls r1, r0, #8
	ldr r0, [r5, #4]
	adds r0, r0, r1
_08015110:
	str r0, [r5, #4]
	ldr r0, [r5, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0x10]
	adds r1, r6, #0
	adds r1, #0x60
	movs r0, #0x1e
	strb r0, [r1]
_08015128:
	ldr r1, [r6, #0x44]
	cmp r1, #0
	bge _0801516C
	ldr r5, _08015164 @ =gPlayer
	ldr r0, [r5]
	asrs r0, r0, #8
	movs r1, #0xe
	ldrsb r1, [r5, r1]
	subs r0, r0, r1
	ldr r1, [r5, #4]
	asrs r1, r1, #8
	adds r2, r5, #0
	adds r2, #0x27
	ldrb r2, [r2]
	movs r3, #8
	rsbs r3, r3, #0
	ldr r4, _08015168 @ =sa2__sub_801EB44
	str r4, [sp]
	bl sa2__sub_801F100
	cmp r0, #0
	bge _0801519C
	lsls r1, r0, #8
	ldr r0, [r5]
	subs r0, r0, r1
	str r0, [r5]
	b _0801519C
	.align 2, 0
_08015160: .4byte sa2__sub_801EC3C
_08015164: .4byte gPlayer
_08015168: .4byte sa2__sub_801EB44
_0801516C:
	cmp r1, #0
	ble _0801519C
	ldr r4, _080151A4 @ =gPlayer
	ldr r0, [r4]
	asrs r0, r0, #8
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	adds r0, r0, r1
	ldr r1, [r4, #4]
	asrs r1, r1, #8
	adds r2, r4, #0
	adds r2, #0x27
	ldrb r2, [r2]
	ldr r3, _080151A8 @ =sa2__sub_801EB44
	str r3, [sp]
	movs r3, #8
	bl sa2__sub_801F100
	cmp r0, #0
	bge _0801519C
	lsls r1, r0, #8
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
_0801519C:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080151A4: .4byte gPlayer
_080151A8: .4byte sa2__sub_801EB44

	thumb_func_start sub_80151AC
sub_80151AC: @ 0x080151AC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	ldr r5, _08015238 @ =gPlayer
	ldr r1, [r5, #0x64]
	ldr r0, _0801523C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	mov r8, r6
	ldr r0, [r1, #0x3c]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08015298
	ldr r0, [r6, #0x30]
	cmp r0, r1
	beq _08015298
	ldr r1, _08015240 @ =0x03000050
	adds r0, r4, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r3, _08015244 @ =0x03000052
	adds r0, r4, r3
	movs r7, #0
	ldrsh r2, [r0, r7]
	adds r3, #0x14
	adds r0, r4, r3
	movs r7, #0
	ldrsh r3, [r0, r7]
	ldr r7, _08015248 @ =0x03000068
	adds r0, r4, r7
	movs r7, #0
	ldrsh r0, [r0, r7]
	str r0, [sp]
	ldr r7, _0801524C @ =0x03000054
	adds r0, r4, r7
	ldrh r0, [r0]
	lsrs r0, r0, #7
	movs r4, #1
	ands r0, r4
	str r0, [sp, #4]
	adds r0, r6, #0
	bl sub_800A3A8
	adds r2, r0, #0
	ands r0, r4
	cmp r0, #0
	beq _08015298
	adds r0, r5, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0801526E
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _08015250
	ldrh r1, [r5, #8]
	movs r3, #8
	ldrsh r0, [r5, r3]
	cmp r0, #0
	ble _0801526E
	b _08015264
	.align 2, 0
_08015238: .4byte gPlayer
_0801523C: .4byte gCurTask
_08015240: .4byte 0x03000050
_08015244: .4byte 0x03000052
_08015248: .4byte 0x03000068
_0801524C: .4byte 0x03000054
_08015250:
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r2
	cmp r0, #0
	beq _0801526E
	ldrh r1, [r5, #8]
	movs r7, #8
	ldrsh r0, [r5, r7]
	cmp r0, #0
	bge _0801526E
_08015264:
	rsbs r0, r1, #0
	strh r0, [r5, #8]
	ldrh r0, [r5, #0xc]
	rsbs r0, r0, #0
	strh r0, [r5, #0xc]
_0801526E:
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r0, r2
	cmp r0, #0
	beq _08015288
	ldr r1, _08015294 @ =gPlayer
	ldrh r2, [r1, #0xa]
	movs r3, #0xa
	ldrsh r0, [r1, r3]
	cmp r0, #0
	ble _08015288
	rsbs r0, r2, #0
	strh r0, [r1, #0xa]
_08015288:
	mov r1, r8
	adds r1, #0x60
	movs r0, #0x1e
	strb r0, [r1]
	movs r0, #1
	b _080152B8
	.align 2, 0
_08015294: .4byte gPlayer
_08015298:
	ldr r2, _080152C4 @ =gPlayer
	ldr r1, [r2, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080152B6
	ldr r0, [r2, #0x28]
	cmp r0, r6
	bne _080152B6
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r2, #0x10]
_080152B6:
	movs r0, #0
_080152B8:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080152C4: .4byte gPlayer

	thumb_func_start sub_80152C8
sub_80152C8: @ 0x080152C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	ldr r6, _08015380 @ =gPlayer
	ldr r0, [r6, #0x64]
	adds r0, #0xc
	str r0, [sp, #0x14]
	ldr r0, _08015384 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r5, r4, r2
	str r5, [sp, #0x10]
	ldr r1, _08015388 @ =gMultiplayerPlayerTasks
	ldr r0, _0801538C @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	adds r0, r0, r2
	str r0, [sp, #0xc]
	ldr r0, _08015390 @ =0x03000060
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801530C
	b _080155D4
_0801530C:
	ldr r1, _08015394 @ =0x03000050
	adds r1, r4, r1
	str r1, [sp, #0x18]
	movs r2, #0
	ldrsh r1, [r1, r2]
	ldr r3, _08015398 @ =0x03000052
	adds r3, r4, r3
	str r3, [sp, #0x1c]
	movs r7, #0
	ldrsh r2, [r3, r7]
	ldr r0, _0801539C @ =0x03000066
	adds r0, r4, r0
	str r0, [sp, #0x20]
	movs r7, #0
	ldrsh r3, [r0, r7]
	mov ip, r3
	ldr r0, _080153A0 @ =0x03000068
	adds r0, r0, r4
	mov sl, r0
	movs r3, #0
	ldrsh r0, [r0, r3]
	str r0, [sp]
	ldr r7, _080153A4 @ =0x03000054
	adds r7, r7, r4
	mov sb, r7
	ldrh r0, [r7]
	lsrs r0, r0, #7
	movs r3, #1
	mov r8, r3
	ands r0, r3
	str r0, [sp, #4]
	adds r0, r5, #0
	mov r3, ip
	bl sub_800A3A8
	adds r4, r0, #0
	mov r7, r8
	ands r0, r7
	cmp r0, #0
	beq _080153F8
	adds r0, r6, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080153C6
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r4
	cmp r0, #0
	beq _080153A8
	ldrh r1, [r6, #8]
	movs r2, #8
	ldrsh r0, [r6, r2]
	cmp r0, #0
	ble _080153C6
	b _080153BC
	.align 2, 0
_08015380: .4byte gPlayer
_08015384: .4byte gCurTask
_08015388: .4byte gMultiplayerPlayerTasks
_0801538C: .4byte 0x04000128
_08015390: .4byte 0x03000060
_08015394: .4byte 0x03000050
_08015398: .4byte 0x03000052
_0801539C: .4byte 0x03000066
_080153A0: .4byte 0x03000068
_080153A4: .4byte 0x03000054
_080153A8:
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r4
	cmp r0, #0
	beq _080153C6
	ldrh r1, [r6, #8]
	movs r3, #8
	ldrsh r0, [r6, r3]
	cmp r0, #0
	bge _080153C6
_080153BC:
	rsbs r0, r1, #0
	strh r0, [r6, #8]
	ldrh r0, [r6, #0xc]
	rsbs r0, r0, #0
	strh r0, [r6, #0xc]
_080153C6:
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r0, r4
	cmp r0, #0
	beq _080153E0
	ldr r1, _080153F4 @ =gPlayer
	ldrh r2, [r1, #0xa]
	movs r7, #0xa
	ldrsh r0, [r1, r7]
	cmp r0, #0
	ble _080153E0
	rsbs r0, r2, #0
	strh r0, [r1, #0xa]
_080153E0:
	adds r1, r5, #0
	adds r1, #0x60
	movs r0, #0x1e
	strb r0, [r1]
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	bne _08015402
_080153F0:
	movs r0, #1
	b _08015654
	.align 2, 0
_080153F4: .4byte gPlayer
_080153F8:
	movs r7, #2
	ands r7, r4
	cmp r7, #0
	bne _08015402
	b _08015558
_08015402:
	ldr r0, _08015484 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _0801540E
	cmp r0, #5
	bne _0801545C
_0801540E:
	ldr r0, _08015488 @ =gMultiplayerCharacters
	adds r1, r5, #0
	adds r1, #0x56
	ldrb r1, [r1]
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #3
	bne _0801545C
	ldr r0, [sp, #0x10]
	ldrh r1, [r0, #0xa]
	movs r0, #0xae
	lsls r0, r0, #1
	cmp r1, r0
	beq _08015432
	adds r0, #5
	cmp r1, r0
	bne _0801545C
_08015432:
	ldr r2, _0801548C @ =gPlayer
	adds r3, r2, #0
	adds r3, #0x26
	ldrb r1, [r3]
	movs r0, #0x10
	orrs r0, r1
	movs r1, #0x96
	lsls r1, r1, #2
	strh r1, [r2, #0x20]
	movs r1, #0xfb
	ands r0, r1
	strb r0, [r3]
	adds r2, #0x59
	movs r0, #0
	ldrsb r0, [r2, r0]
	bl sub_804B7C8
	ldr r0, _08015490 @ =gMPlayInfo_BGM
	movs r1, #0x80
	bl m4aMPlayTempoControl
_0801545C:
	movs r6, #1
	ands r4, r6
	cmp r4, #0
	beq _080154A2
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r1, _0801548C @ =gPlayer
	ldr r0, [r1]
	asrs r0, r0, #8
	adds r3, r1, #0
	cmp r2, r0
	bge _08015494
	ldr r0, [r3, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _08015498
	.align 2, 0
_08015484: .4byte gGameMode
_08015488: .4byte gMultiplayerCharacters
_0801548C: .4byte gPlayer
_08015490: .4byte gMPlayInfo_BGM
_08015494:
	ldr r0, [r3, #0x10]
	orrs r0, r6
_08015498:
	str r0, [r3, #0x10]
	adds r0, r3, #0
	bl sub_800C848
	b _080154D0
_080154A2:
	adds r0, r5, #0
	adds r0, #0x50
	movs r3, #0
	ldrsh r2, [r0, r3]
	ldr r1, _080154BC @ =gPlayer
	ldr r0, [r1]
	asrs r0, r0, #8
	adds r3, r1, #0
	cmp r2, r0
	bge _080154C0
	ldr r0, [r3, #0x10]
	orrs r0, r6
	b _080154C8
	.align 2, 0
_080154BC: .4byte gPlayer
_080154C0:
	ldr r0, [r3, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080154C8:
	str r0, [r3, #0x10]
	adds r0, r3, #0
	bl sub_800C760
_080154D0:
	adds r1, r5, #0
	adds r1, #0x60
	movs r0, #0x1e
	strb r0, [r1]
	ldr r0, _0801554C @ =gGameMode
	ldrb r0, [r0]
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080154E8
	b _080153F0
_080154E8:
	ldr r4, [sp, #0xc]
	ldr r1, [r4, #0x5c]
	movs r0, #0xe0
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	bne _080154F8
	b _080153F0
_080154F8:
	movs r4, #0
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r1, #0
	ands r0, r2
	adds r5, #0x56
	ldr r6, _08015550 @ =gUnknown_03004FF0
	cmp r0, #0
	bne _0801551E
	adds r3, r2, #0
	adds r2, r1, #0
_0801550E:
	adds r4, #1
	cmp r4, #2
	bhi _0801551E
	adds r0, r3, #0
	lsls r0, r4
	ands r0, r2
	cmp r0, #0
	beq _0801550E
_0801551E:
	movs r0, #0x80
	lsls r0, r0, #9
	lsls r0, r4
	bics r1, r0
	ldr r7, [sp, #0xc]
	str r1, [r7, #0x5c]
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldrb r1, [r5]
	ldr r2, _08015554 @ =0x03000041
	adds r0, r0, r2
	strb r1, [r0]
	bl sub_80182FC
	movs r1, #9
	strb r1, [r0]
	strb r4, [r0, #1]
	ldrb r1, [r5]
	strb r1, [r0, #2]
	b _080153F0
	.align 2, 0
_0801554C: .4byte gGameMode
_08015550: .4byte gUnknown_03004FF0
_08015554: .4byte 0x03000041
_08015558:
	ldr r3, [sp, #0x14]
	ldr r1, [r3, #0x30]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0801559A
	ldr r0, [r5, #0x30]
	cmp r0, r1
	bne _0801559A
	ldr r4, [sp, #0x18]
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r3, [sp, #0x1c]
	movs r4, #0
	ldrsh r2, [r3, r4]
	ldr r0, [sp, #0x20]
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov ip, r0
	mov r4, sl
	movs r3, #0
	ldrsh r0, [r4, r3]
	str r0, [sp]
	mov r4, sb
	ldrh r0, [r4]
	lsrs r0, r0, #7
	mov r3, r8
	ands r0, r3
	str r0, [sp, #4]
	str r7, [sp, #8]
	adds r0, r5, #0
	mov r3, ip
	b _0801561E
_0801559A:
	ldr r1, _080155D0 @ =gPlayer
	ldr r2, [r1, #0x10]
	movs r0, #8
	ands r0, r2
	adds r3, r1, #0
	cmp r0, #0
	beq _080155BC
	ldr r0, [r3, #0x28]
	ldr r4, [sp, #0x10]
	cmp r0, r4
	bne _080155BC
	movs r0, #9
	rsbs r0, r0, #0
	ands r2, r0
	movs r0, #2
	orrs r2, r0
	str r2, [r3, #0x10]
_080155BC:
	ldr r0, [r5, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08015652
	ldr r0, [r3, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r3, #0x10]
	b _08015652
	.align 2, 0
_080155D0: .4byte gPlayer
_080155D4:
	subs r0, #1
	strb r0, [r1]
	ldr r0, [r6, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08015652
	ldr r0, [r6, #0x28]
	cmp r0, r5
	bne _08015652
	ldr r7, _08015664 @ =0x03000050
	adds r0, r4, r7
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r3, _08015668 @ =0x03000052
	adds r0, r4, r3
	movs r7, #0
	ldrsh r2, [r0, r7]
	adds r3, #0x14
	adds r0, r4, r3
	movs r7, #0
	ldrsh r3, [r0, r7]
	ldr r7, _0801566C @ =0x03000068
	adds r0, r4, r7
	movs r7, #0
	ldrsh r0, [r0, r7]
	str r0, [sp]
	ldr r7, _08015670 @ =0x03000054
	adds r0, r4, r7
	ldrh r0, [r0]
	lsrs r0, r0, #7
	movs r4, #1
	ands r0, r4
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	adds r0, r5, #0
_0801561E:
	bl sub_80097E4
	adds r2, r0, #0
	ldr r0, [r5, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801563E
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _0801563E
	ldr r0, [r6, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r6, #0x10]
_0801563E:
	str r2, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r0, r2
	cmp r0, #0
	beq _08015652
	adds r1, r5, #0
	adds r1, #0x60
	movs r0, #0x1e
	strb r0, [r1]
_08015652:
	movs r0, #0
_08015654:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08015664: .4byte 0x03000050
_08015668: .4byte 0x03000052
_0801566C: .4byte 0x03000068
_08015670: .4byte 0x03000054

	thumb_func_start sub_8015674
sub_8015674: @ 0x08015674
	push {r4, r5, r6, lr}
	ldr r6, _080156E0 @ =gPlayer
	ldr r2, [r6, #0x64]
	ldr r0, [r2, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080156F4
	ldr r5, _080156E4 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r6, #0x10]
	ldr r1, _080156E8 @ =0xFFDFFFFF
	ands r0, r1
	ldr r1, _080156EC @ =0xFF7FFFFF
	ands r0, r1
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	ldr r1, _080156F0 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r6, #0x10]
	adds r1, r6, #0
	adds r1, #0x40
	movs r0, #0x15
	strb r0, [r1]
	adds r1, r2, #0
	adds r1, #0x2d
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r6, #0
	movs r1, #0xe
	bl sa2__sub_8023B5C
	movs r0, #6
	strb r0, [r6, #0xe]
	movs r0, #0xe
	strb r0, [r6, #0xf]
	movs r0, #0xaa      @ SE_SPRING
	bl m4aSongNumStart
	ldrh r0, [r4]
	strh r0, [r6, #0xa]
	ldr r0, [r5]
	bl TaskDestroy
	b _08015716
	.align 2, 0
_080156E0: .4byte gPlayer
_080156E4: .4byte gCurTask
_080156E8: .4byte 0xFFDFFFFF
_080156EC: .4byte 0xFF7FFFFF
_080156F0: .4byte 0xFFFFFEFF
_080156F4:
	adds r0, r6, #0
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x2a
	beq _08015716
	ldr r0, [r6, #0x10]
	ldr r1, _0801571C @ =0xFFDFFFFF
	ands r0, r1
	ldr r1, _08015720 @ =0xFF7FFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, _08015724 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08015716:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801571C: .4byte 0xFFDFFFFF
_08015720: .4byte 0xFF7FFFFF
_08015724: .4byte gCurTask

	thumb_func_start sub_8015728
sub_8015728: @ 0x08015728
	push {lr}
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r0, r2
	ldr r1, _0801574C @ =gMultiplayerPlayerTasks
	ldr r3, _08015750 @ =0x03000056
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	ldr r0, [r2, #4]
	bl VramFree
	pop {r0}
	bx r0
	.align 2, 0
_0801574C: .4byte gMultiplayerPlayerTasks
_08015750: .4byte 0x03000056

	thumb_func_start sub_8015754
sub_8015754: @ 0x08015754
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _080157A0 @ =sub_8015674
	movs r2, #0x80
	lsls r2, r2, #6
	movs r5, #0
	str r5, [sp]
	movs r1, #2
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	strh r4, [r0]
	ldr r2, _080157A4 @ =gPlayer
	ldr r1, [r2, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xe
	orrs r1, r0
	strh r5, [r2, #0x38]
	adds r3, r2, #0
	adds r3, #0x40
	movs r0, #0x2a
	strb r0, [r3]
	movs r0, #0x80
	lsls r0, r0, #0x10
	orrs r1, r0
	str r1, [r2, #0x10]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080157A0: .4byte sub_8015674
_080157A4: .4byte gPlayer

	thumb_func_start sub_80157A8
sub_80157A8: @ 0x080157A8
	push {r4, lr}
	ldr r0, _08015808 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, _0801580C @ =gPlayer
	ldr r0, [r2, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080157E2
	ldr r0, [r2, #0x28]
	cmp r0, r4
	bne _080157E2
	ldr r1, [r4, #0x44]
	lsls r1, r1, #8
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, [r4, #0x48]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r2, #4]
_080157E2:
	bl sub_80152C8
	cmp r0, #0
	beq _08015802
	ldr r0, [r4, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08015802
	ldr r2, _0801580C @ =gPlayer
	ldr r0, [r2, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r2, #0x10]
	movs r0, #0
	str r0, [r4, #0x4c]
_08015802:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08015808: .4byte gCurTask
_0801580C: .4byte gPlayer

	thumb_func_start sub_8015810
sub_8015810: @ 0x08015810
	push {r4, r5, lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _08015870 @ =sub_80158D4
	ldr r2, _08015874 @ =0x00002001
	ldr r1, _08015878 @ =sub_8015C58
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	movs r1, #0
	strb r4, [r0]
	ldr r0, _0801587C @ =0x03000010
	adds r3, r2, r0
	subs r0, #0xc
	adds r5, r2, r0
	ldr r0, _08015880 @ =0x06012500
	str r0, [r3, #4]
	movs r0, #0x40
	strh r0, [r3, #0x1a]
	strh r1, [r3, #8]
	strh r1, [r3, #0x14]
	strh r1, [r3, #0x1c]
	ldr r0, _08015884 @ =0x03000031
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08015888 @ =0x03000032
	adds r1, r2, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _0801588C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _08015898
	ldr r0, _08015890 @ =gMultiplayerCharacters
	adds r0, r4, r0
	ldrb r1, [r0]
	ldr r4, _08015894 @ =0x03000035
	adds r0, r2, r4
	strb r1, [r0]
	b _0801589E
	.align 2, 0
_08015870: .4byte sub_80158D4
_08015874: .4byte 0x00002001
_08015878: .4byte sub_8015C58
_0801587C: .4byte 0x03000010
_08015880: .4byte 0x06012500
_08015884: .4byte 0x03000031
_08015888: .4byte 0x03000032
_0801588C: .4byte gGameMode
_08015890: .4byte gMultiplayerCharacters
_08015894: .4byte 0x03000035
_08015898:
	ldr r1, _080158C8 @ =0x03000035
	adds r0, r2, r1
	strb r4, [r0]
_0801589E:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x28]
	ldr r0, _080158CC @ =0x00040060
	str r0, [r3, #0x10]
	movs r1, #0
	movs r2, #0
	ldr r0, _080158D0 @ =0x000002FF
	strh r0, [r3, #0xa]
	adds r0, r3, #0
	adds r0, #0x20
	strb r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #2]
	strh r0, [r5, #4]
	strh r2, [r5]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080158C8: .4byte 0x03000035
_080158CC: .4byte 0x00040060
_080158D0: .4byte 0x000002FF

	thumb_func_start sub_80158D4
sub_80158D4: @ 0x080158D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _0801596C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r0, r1, r3
	ldr r2, _08015970 @ =gMultiplayerPlayerTasks
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	adds r3, r4, r3
	ldr r0, _08015974 @ =0x03000010
	adds r0, r1, r0
	str r0, [sp]
	ldr r2, _08015978 @ =0x03000004
	adds r2, r2, r1
	mov sl, r2
	ldr r5, _0801597C @ =0x03000050
	adds r0, r4, r5
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r2, _08015980 @ =gCamera
	movs r5, #0
	ldrsh r0, [r2, r5]
	subs r1, r1, r0
	cmp r1, #0xf0
	bhi _08015932
	ldr r1, _08015984 @ =0x03000052
	adds r0, r4, r1
	movs r4, #0
	ldrsh r1, [r0, r4]
	movs r5, #2
	ldrsh r0, [r2, r5]
	subs r0, r1, r0
	cmp r0, #0
	blt _08015932
	cmp r0, #0xa0
	bgt _08015932
	b _08015C42
_08015932:
	adds r0, r3, #0
	adds r0, #0x50
	ldrh r0, [r0]
	subs r0, #0x78
	ldrh r1, [r2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r3, #0
	adds r0, #0x52
	ldrh r0, [r0]
	subs r0, #0x50
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r6, #0x10
	lsrs r1, r0, #0x10
	lsls r2, r5, #0x10
	lsrs r4, r2, #0x10
	ldr r7, [sp]
	adds r7, #0x22
	cmp r0, #0
	beq _080159D6
	cmp r2, #0
	beq _080159D6
	lsls r3, r4, #0x10
	b _080159BC
	.align 2, 0
_0801596C: .4byte gCurTask
_08015970: .4byte gMultiplayerPlayerTasks
_08015974: .4byte 0x03000010
_08015978: .4byte 0x03000004
_0801597C: .4byte 0x03000050
_08015980: .4byte gCamera
_08015984: .4byte 0x03000052
_08015988:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	lsrs r0, r0, #0x1f
	adds r2, r2, r0
	lsls r2, r2, #0xf
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1f
	adds r1, r1, r0
	lsls r1, r1, #0xf
	lsrs r4, r1, #0x10
	lsrs r1, r2, #0x10
	asrs r0, r2, #0x10
	cmp r0, #0
	bge _080159A8
	rsbs r0, r0, #0
_080159A8:
	cmp r0, #1
	ble _080159D6
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	adds r3, r0, #0
	cmp r2, #0
	bge _080159B8
	rsbs r2, r2, #0
_080159B8:
	cmp r2, #1
	ble _080159D6
_080159BC:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080159C6
	rsbs r0, r0, #0
_080159C6:
	cmp r0, #0x7f
	bgt _08015988
	asrs r0, r3, #0x10
	cmp r0, #0
	bge _080159D2
	rsbs r0, r0, #0
_080159D2:
	cmp r0, #0x7f
	bgt _08015988
_080159D6:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _080159E2
	rsbs r0, r1, #0
_080159E2:
	cmp r0, #1
	bgt _080159F6
	lsls r0, r4, #0x10
	movs r4, #0xc0
	lsls r4, r4, #2
	cmp r0, #0
	ble _08015A1A
	movs r4, #0x80
	lsls r4, r4, #1
	b _08015A1A
_080159F6:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r2, r0, #0
	cmp r0, #0
	bge _08015A02
	rsbs r2, r0, #0
_08015A02:
	cmp r2, #1
	bgt _08015A12
	movs r4, #0x80
	lsls r4, r4, #2
	cmp r1, #0
	ble _08015A1A
	movs r4, #0
	b _08015A1A
_08015A12:
	bl sa2__sub_8004418
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08015A1A:
	lsls r4, r4, #0x10
	asrs r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r2, _08015A50 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	mov r1, sl
	strh r0, [r1]
	lsls r3, r6, #0x10
	asrs r0, r3, #0x10
	adds r1, r0, #0
	muls r1, r0, r1
	lsls r2, r5, #0x10
	asrs r0, r2, #0x10
	adds r5, r0, #0
	muls r5, r0, r5
	adds r0, r5, #0
	adds r1, r1, r0
	ldr r0, _08015A54 @ =0x0000FFFF
	adds r5, r3, #0
	str r2, [sp, #4]
	cmp r1, r0
	bgt _08015A58
	movs r0, #0x18
	b _08015A5A
	.align 2, 0
_08015A50: .4byte 0x000003FF
_08015A54: .4byte 0x0000FFFF
_08015A58:
	movs r0, #0x10
_08015A5A:
	strb r0, [r7]
	movs r2, #0xc0
	lsls r2, r2, #0x13
	cmp r1, r2
	ble _08015A68
	movs r0, #0x40
	b _08015A96
_08015A68:
	ldr r0, _08015A7C @ =0x0000FFFF
	cmp r1, r0
	bgt _08015A80
	movs r0, #0xf0
	lsls r0, r0, #1
	mov r2, sl
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	b _08015A9C
	.align 2, 0
_08015A7C: .4byte 0x0000FFFF
_08015A80:
	subs r1, r2, r1
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #5
	ldr r1, _08015AA8 @ =0x000005FF
	bl Div
	adds r0, #0x40
_08015A96:
	mov r1, sl
	strh r0, [r1, #2]
	strh r0, [r1, #4]
_08015A9C:
	asrs r4, r4, #0x10
	cmp r4, #0
	bne _08015AAC
	movs r5, #0x50
_08015AA4:
	movs r0, #0xf0
	b _08015C0A
	.align 2, 0
_08015AA8: .4byte 0x000005FF
_08015AAC:
	movs r6, #0x80
	lsls r6, r6, #1
	cmp r4, r6
	bne _08015ABA
	movs r5, #0xa0
	movs r0, #0x78
	b _08015C0A
_08015ABA:
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r4, r0
	bne _08015AC6
	movs r5, #0x50
	b _08015C08
_08015AC6:
	movs r2, #0xc0
	lsls r2, r2, #2
	mov sb, r2
	cmp r4, sb
	bne _08015AD6
	movs r5, #0
	movs r0, #0x78
	b _08015C0A
_08015AD6:
	cmp r5, #0
	ble _08015B3C
	ldr r7, _08015B20 @ =gSineTable
	lsls r0, r4, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #8
	adds r1, r4, r6
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #4
	subs r1, r1, r0
	asrs r1, r1, #5
	adds r1, #0x50
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _08015B28
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	ble _08015AA4
	movs r5, #0xa0
	subs r1, r6, r4
	ldr r0, _08015B24 @ =0x000003FF
	ands r1, r0
	b _08015B8E
	.align 2, 0
_08015B20: .4byte gSineTable
_08015B24: .4byte 0x000003FF
_08015B28:
	lsls r0, r5, #0x10
	cmp r0, #0
	bge _08015AA4
	movs r5, #0
	subs r1, r6, r4
	ldr r0, _08015B38 @ =0x000003FF
	ands r1, r0
	b _08015BD8
	.align 2, 0
_08015B38: .4byte 0x000003FF
_08015B3C:
	ldr r7, _08015BBC @ =gSineTable
	ldr r2, _08015BC0 @ =0xFFFFFE00
	adds r1, r4, r2
	ldr r5, _08015BC4 @ =0x000003FF
	mov r8, r5
	ands r1, r5
	lsls r0, r1, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #8
	adds r1, r1, r6
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #4
	subs r1, r1, r0
	asrs r1, r1, #5
	movs r0, #0x50
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _08015BC8
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	ble _08015C08
	movs r5, #0xa0
	mov r2, sb
	subs r1, r2, r4
	mov r4, r8
	ands r1, r4
_08015B8E:
	lsls r0, r1, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #8
	adds r1, r1, r6
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	asrs r1, r1, #4
	adds r1, #0x78
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	b _08015C0A
	.align 2, 0
_08015BBC: .4byte gSineTable
_08015BC0: .4byte 0xFFFFFE00
_08015BC4: .4byte 0x000003FF
_08015BC8:
	lsls r0, r5, #0x10
	cmp r0, #0
	bge _08015C08
	movs r5, #0
	mov r0, sb
	subs r1, r0, r4
	mov r2, r8
	ands r1, r2
_08015BD8:
	lsls r0, r1, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #8
	adds r1, r1, r6
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	asrs r1, r1, #4
	movs r0, #0x78
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _08015C0A
_08015C08:
	movs r0, #0
_08015C0A:
	mov r4, sl
	strh r0, [r4, #6]
	strh r5, [r4, #8]
	ldr r5, [sp]
	ldr r0, [r5, #0x10]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	ldr r2, _08015C54 @ =sa2__gUnknown_030054B8
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r5, #0x10]
	orrs r0, r1
	str r0, [r5, #0x10]
	ldr r0, [sp]
	bl UpdateSpriteAnimation
	ldr r0, [sp]
	mov r1, sl
	bl TransformSprite
	ldr r0, [sp]
	bl DisplaySprite
_08015C42:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08015C54: .4byte sa2__gUnknown_030054B8

    thumb_func_start sub_8015C58
sub_8015C58:
	bx lr
    .align 2 , 0

	thumb_func_start sub_8015C5C
sub_8015C5C: @ 0x08015C5C
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
	ldr r0, _08015D4C @ =sub_8015D88
	movs r7, #0x80
	lsls r7, r7, #6
	movs r4, #0
	str r4, [sp]
	movs r1, #0x6c
	adds r2, r7, #0
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r2, r1
	ldr r3, _08015D50 @ =0x03000060
	adds r0, r2, r3
	movs r3, #0
	mov r8, r3
	strh r5, [r0]
	ldr r3, _08015D54 @ =0x03000062
	adds r0, r2, r3
	strh r6, [r0]
	adds r3, #2
	adds r0, r2, r3
	strh r4, [r0]
	adds r3, #2
	adds r0, r2, r3
	strh r4, [r0]
	adds r3, #2
	adds r0, r2, r3
	strh r4, [r0]
	strh r5, [r1, #0x16]
	strh r6, [r1, #0x18]
	ldr r0, _08015D58 @ =0x06012580
	str r0, [r1, #4]
	movs r0, #0xa8
	lsls r0, r0, #3
	strh r0, [r1, #0x1a]
	strh r4, [r1, #8]
	ldr r0, _08015D5C @ =0x000002B5
	strh r0, [r1, #0xa]
	subs r3, #0x48
	adds r0, r2, r3
	mov r3, r8
	strb r3, [r0]
	strh r4, [r1, #0x14]
	strh r4, [r1, #0x1c]
	ldr r0, _08015D60 @ =0x03000021
	adds r3, r2, r0
	movs r0, #0xff
	strb r0, [r3]
	ldr r3, _08015D64 @ =0x03000022
	adds r0, r2, r3
	movs r3, #0x10
	mov sl, r3
	mov r3, sl
	strb r3, [r0]
	ldr r3, _08015D68 @ =0x03000025
	adds r0, r2, r3
	mov r3, r8
	strb r3, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	mov sb, r0
	str r0, [r1, #0x28]
	str r7, [r1, #0x10]
	ldr r3, _08015D6C @ =0x03000030
	adds r1, r2, r3
	strh r5, [r1, #0x16]
	strh r6, [r1, #0x18]
	ldr r0, _08015D70 @ =0x06012E40
	str r0, [r1, #4]
	movs r0, #0x98
	lsls r0, r0, #3
	strh r0, [r1, #0x1a]
	strh r4, [r1, #8]
	ldr r0, _08015D74 @ =0x000002B6
	strh r0, [r1, #0xa]
	ldr r0, _08015D78 @ =0x03000050
	adds r3, r2, r0
	movs r0, #4
	strb r0, [r3]
	strh r4, [r1, #0x14]
	strh r4, [r1, #0x1c]
	ldr r0, _08015D7C @ =0x03000051
	adds r3, r2, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r3]
	ldr r3, _08015D80 @ =0x03000052
	adds r0, r2, r3
	mov r3, sl
	strb r3, [r0]
	ldr r0, _08015D84 @ =0x03000055
	adds r2, r2, r0
	mov r3, r8
	strb r3, [r2]
	mov r0, sb
	str r0, [r1, #0x28]
	str r7, [r1, #0x10]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08015D4C: .4byte sub_8015D88
_08015D50: .4byte 0x03000060
_08015D54: .4byte 0x03000062
_08015D58: .4byte 0x06012580
_08015D5C: .4byte 0x000002B5
_08015D60: .4byte 0x03000021
_08015D64: .4byte 0x03000022
_08015D68: .4byte 0x03000025
_08015D6C: .4byte 0x03000030
_08015D70: .4byte 0x06012E40
_08015D74: .4byte 0x000002B6
_08015D78: .4byte 0x03000050
_08015D7C: .4byte 0x03000051
_08015D80: .4byte 0x03000052
_08015D84: .4byte 0x03000055

	thumb_func_start sub_8015D88
sub_8015D88: @ 0x08015D88
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08015E2C @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r1, _08015E30 @ =0x03000030
	adds r7, r4, r1
	adds r1, #0x30
	adds r0, r4, r1
	ldr r3, _08015E34 @ =gCamera
	ldrh r2, [r0]
	ldrh r0, [r3]
	subs r2, r2, r0
	strh r2, [r5, #0x16]
	ldr r0, _08015E38 @ =0x03000062
	adds r1, r4, r0
	adds r0, #4
	adds r6, r4, r0
	ldrh r0, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r1, [r1]
	adds r0, r0, r1
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	strh r0, [r5, #0x18]
	strh r2, [r7, #0x16]
	ldrh r0, [r5, #0x18]
	strh r0, [r7, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, _08015E3C @ =0x03000068
	adds r1, r4, r0
	ldrh r0, [r1]
	cmp r0, #0x2d
	bls _08015E5C
	ldr r1, _08015E40 @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r1, [r6]
	adds r0, r0, r1
	strh r0, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _08015E44 @ =0xFFFFB000
	cmp r0, r1
	bgt _08015E60
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _08015E48 @ =sub_8015E6C
	str r0, [r1, #8]
	ldr r0, _08015E4C @ =0x000002B5
	strh r0, [r5, #0xa]
	ldr r0, _08015E50 @ =0x03000020
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08015E54 @ =0x000002B6
	strh r0, [r7, #0xa]
	ldr r0, _08015E58 @ =0x03000050
	adds r1, r4, r0
	movs r0, #9
	strb r0, [r1]
	ldrh r0, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	strh r0, [r6]
	b _08015E60
	.align 2, 0
_08015E2C: .4byte gCurTask
_08015E30: .4byte 0x03000030
_08015E34: .4byte gCamera
_08015E38: .4byte 0x03000062
_08015E3C: .4byte 0x03000068
_08015E40: .4byte 0xFFFFFF00
_08015E44: .4byte 0xFFFFB000
_08015E48: .4byte sub_8015E6C
_08015E4C: .4byte 0x000002B5
_08015E50: .4byte 0x03000020
_08015E54: .4byte 0x000002B6
_08015E58: .4byte 0x03000050
_08015E5C:
	adds r0, #1
	strh r0, [r1]
_08015E60:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8015E6C
sub_8015E6C: @ 0x08015E6C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08015F30 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r7, r0
	ldr r1, _08015F34 @ =0x03000030
	adds r6, r7, r1
	ldr r3, _08015F38 @ =0x03000060
	adds r3, r3, r7
	mov r8, r3
	ldr r3, _08015F3C @ =gCamera
	mov r4, r8
	ldrh r2, [r4]
	ldrh r0, [r3]
	subs r2, r2, r0
	movs r0, #0
	mov sl, r0
	strh r2, [r5, #0x16]
	ldr r4, _08015F40 @ =0x03000062
	adds r1, r7, r4
	adds r4, #4
	adds r0, r7, r4
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	strh r0, [r5, #0x18]
	strh r2, [r6, #0x16]
	ldrh r0, [r5, #0x18]
	strh r0, [r6, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r4, r0, #0
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	cmp r4, #0
	bne _08015F20
	mov r0, sb
	ldr r1, [r0]
	ldr r0, _08015F44 @ =sub_8015F60
	str r0, [r1, #8]
	ldr r0, _08015F48 @ =0x000002B5
	strh r0, [r5, #0xa]
	ldr r1, _08015F4C @ =0x03000020
	adds r0, r7, r1
	mov r3, sl
	strb r3, [r0]
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5, #0x10]
	ldr r0, [r6, #0x10]
	orrs r0, r1
	str r0, [r6, #0x10]
	ldr r0, _08015F50 @ =0x000002B6
	strh r0, [r6, #0xa]
	ldr r4, _08015F54 @ =0x03000050
	adds r2, r7, r4
	strb r3, [r2]
	ldr r0, _08015F58 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xc
	bne _08015F20
	mov r0, r8
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, _08015F5C @ =0x000007FF
	cmp r1, r0
	ble _08015F20
	movs r0, #8
	strb r0, [r2]
_08015F20:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08015F30: .4byte gCurTask
_08015F34: .4byte 0x03000030
_08015F38: .4byte 0x03000060
_08015F3C: .4byte gCamera
_08015F40: .4byte 0x03000062
_08015F44: .4byte sub_8015F60
_08015F48: .4byte 0x000002B5
_08015F4C: .4byte 0x03000020
_08015F50: .4byte 0x000002B6
_08015F54: .4byte 0x03000050
_08015F58: .4byte gCurrentLevel
_08015F5C: .4byte 0x000007FF

	thumb_func_start sub_8015F60
sub_8015F60: @ 0x08015F60
	push {r4, r5, r6, r7, lr}
	ldr r0, _08015FC4 @ =gCurTask
	ldr r7, [r0]
	ldrh r2, [r7, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	adds r0, #0x30
	adds r6, r2, r0
	ldr r3, _08015FC8 @ =0x03000064
	adds r1, r2, r3
	ldrh r0, [r1]
	adds r0, #4
	strh r0, [r1]
	subs r3, #4
	adds r1, r2, r3
	ldrh r3, [r1]
	adds r3, r3, r0
	ldr r4, _08015FCC @ =gCamera
	ldrh r0, [r4]
	subs r3, r3, r0
	strh r3, [r5, #0x16]
	ldr r0, _08015FD0 @ =0x03000062
	adds r1, r2, r0
	adds r0, #4
	adds r2, r2, r0
	ldrh r0, [r2]
	ldrh r1, [r1]
	adds r0, r0, r1
	ldrh r1, [r4, #2]
	subs r0, r0, r1
	strh r0, [r5, #0x18]
	strh r3, [r6, #0x16]
	ldrh r0, [r5, #0x18]
	strh r0, [r6, #0x18]
	movs r1, #0x16
	ldrsh r0, [r5, r1]
	bl __floatsidf
	ldr r2, _08015FD4 @ =0x40768000
	ldr r3, _08015FD8 @ =0x00000000
	bl __gtdf2
	cmp r0, #0
	ble _08015FDC
	adds r0, r7, #0
	bl TaskDestroy
	b _08015FF4
	.align 2, 0
_08015FC4: .4byte gCurTask
_08015FC8: .4byte 0x03000064
_08015FCC: .4byte gCamera
_08015FD0: .4byte 0x03000062
_08015FD4: .4byte 0x40768000
_08015FD8: .4byte 0x00000000
_08015FDC:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_08015FF4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateBossCapsule
CreateBossCapsule: @ 0x08015FFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	mov sb, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	ldr r0, _08016114 @ =sub_801615C
	ldr r1, _08016118 @ =sub_80175A8
	str r1, [sp]
	movs r1, #0x78
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	ldr r1, _0801611C @ =0x0300006C
	adds r0, r5, r1
	movs r6, #0
	mov r1, r8
	strh r1, [r0]
	ldr r1, _08016120 @ =0x0300006E
	adds r0, r5, r1
	mov r1, sb
	strh r1, [r0]
	ldr r1, _08016124 @ =0x03000070
	adds r0, r5, r1
	strh r6, [r0]
	adds r1, #2
	adds r0, r5, r1
	strh r6, [r0]
	ldr r0, _08016128 @ =0x03000074
	adds r1, r5, r0
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r1]
	mov r1, r8
	strh r1, [r4, #0x16]
	mov r0, sb
	strh r0, [r4, #0x18]
	movs r0, #0x51
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0x98
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	strh r6, [r4, #8]
	ldr r0, _0801612C @ =0x00000242
	strh r0, [r4, #0xa]
	ldr r1, _08016130 @ =0x03000020
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	ldr r0, _08016134 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08016138 @ =0x03000022
	adds r0, r5, r1
	movs r1, #0x10
	mov sl, r1
	mov r1, sl
	strb r1, [r0]
	ldr r1, _0801613C @ =0x03000025
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	movs r7, #1
	rsbs r7, r7, #0
	str r7, [r4, #0x28]
	ldr r0, _08016140 @ =0x00002030
	str r0, [r4, #0x10]
	ldr r0, _08016144 @ =0x03000030
	adds r4, r5, r0
	mov r1, r8
	strh r1, [r4, #0x16]
	mov r0, sb
	strh r0, [r4, #0x18]
	movs r0, #6
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	strh r6, [r4, #8]
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r4, #0xa]
	ldr r1, _08016148 @ =0x03000050
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	ldr r0, _0801614C @ =0x03000051
	adds r1, r5, r0
	adds r0, r7, #0
	strb r0, [r1]
	ldr r1, _08016150 @ =0x03000052
	adds r0, r5, r1
	mov r1, sl
	strb r1, [r0]
	ldr r1, _08016154 @ =0x03000055
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	str r7, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	ldr r1, _08016158 @ =0x03000060
	adds r5, r5, r1
	strh r6, [r5]
	movs r0, #0x40
	strh r0, [r5, #2]
	strh r0, [r5, #4]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016114: .4byte sub_801615C
_08016118: .4byte sub_80175A8
_0801611C: .4byte 0x0300006C
_08016120: .4byte 0x0300006E
_08016124: .4byte 0x03000070
_08016128: .4byte 0x03000074
_0801612C: .4byte 0x00000242
_08016130: .4byte 0x03000020
_08016134: .4byte 0x03000021
_08016138: .4byte 0x03000022
_0801613C: .4byte 0x03000025
_08016140: .4byte 0x00002030
_08016144: .4byte 0x03000030
_08016148: .4byte 0x03000050
_0801614C: .4byte 0x03000051
_08016150: .4byte 0x03000052
_08016154: .4byte 0x03000055
_08016158: .4byte 0x03000060

	thumb_func_start sub_801615C
sub_801615C: @ 0x0801615C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08016210 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r7, #0xc0
	lsls r7, r7, #0x12
	orrs r7, r5
	ldr r1, _08016214 @ =0x03000060
	adds r4, r5, r1
	ldr r2, _08016218 @ =0x0300006C
	adds r0, r5, r2
	ldr r2, _0801621C @ =gCamera
	ldrh r0, [r0]
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #6]
	ldr r1, _08016220 @ =0x0300006E
	adds r0, r5, r1
	ldrh r0, [r0]
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	ldr r2, _08016224 @ =0x03000072
	adds r6, r5, r2
	ldrh r1, [r6]
	subs r0, r0, r1
	strh r0, [r4, #8]
	ldrh r1, [r4, #2]
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, #0xff
	bgt _080161A8
	adds r0, r1, #0
	adds r0, #8
	strh r0, [r4, #2]
	strh r0, [r4, #4]
_080161A8:
	ldrh r0, [r4]
	adds r0, #0x10
	strh r0, [r4]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r1, r4, #0
	bl TransformSprite
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, _08016228 @ =0x03000074
	adds r1, r5, r0
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r1, [r6]
	adds r0, r0, r1
	strh r0, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe0
	ble _08016204
	mov r2, r8
	ldr r1, [r2]
	ldr r0, _0801622C @ =Task_801623C
	str r0, [r1, #8]
	ldr r0, _08016230 @ =0x03000076
	adds r1, r5, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08016234 @ =0x0000023F
	strh r0, [r7, #0xa]
	ldr r2, _08016238 @ =0x03000020
	adds r1, r5, r2
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r7, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
_08016204:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016210: .4byte gCurTask
_08016214: .4byte 0x03000060
_08016218: .4byte 0x0300006C
_0801621C: .4byte gCamera
_08016220: .4byte 0x0300006E
_08016224: .4byte 0x03000072
_08016228: .4byte 0x03000074
_0801622C: .4byte Task_801623C
_08016230: .4byte 0x03000076
_08016234: .4byte 0x0000023F
_08016238: .4byte 0x03000020

	thumb_func_start Task_801623C
Task_801623C: @ 0x0801623C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _080163AC @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r5, r0
	ldr r1, _080163B0 @ =0x03000030
	adds r1, r5, r1
	str r1, [sp, #4]
	movs r2, #0x78
	strh r2, [r7, #0x16]
	ldr r3, _080163B4 @ =0x0300006E
	adds r6, r5, r3
	ldr r0, _080163B8 @ =gCamera
	mov r8, r0
	ldrh r0, [r6]
	mov r3, r8
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	ldr r1, _080163BC @ =0x03000072
	adds r4, r5, r1
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r7, #0x18]
	ldr r3, [sp, #4]
	strh r2, [r3, #0x16]
	ldrh r0, [r7, #0x18]
	strh r0, [r3, #0x18]
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	cmp r0, #0
	blt _080162A2
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r0, [sp, #4]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, [sp, #4]
	bl DisplaySprite
_080162A2:
	ldr r2, _080163C0 @ =0x03000074
	adds r0, r5, r2
	ldrh r1, [r0]
	subs r1, #0x10
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	ldrh r3, [r4]
	adds r1, r1, r3
	strh r1, [r4]
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	cmp r0, #0x5f
	bgt _080162C0
	b _08016470
_080162C0:
	mov r2, r8
	movs r3, #2
	ldrsh r0, [r2, r3]
	movs r2, #0x18
	ldrsh r1, [r7, r2]
	adds r0, r0, r1
	adds r0, #8
	mov r3, r8
	movs r2, #0
	ldrsh r1, [r3, r2]
	movs r3, #0x16
	ldrsh r2, [r7, r3]
	adds r1, r1, r2
	ldr r2, _080163C4 @ =sa2__sub_801EC3C
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F100
	adds r2, r0, #0
	cmp r2, #0
	ble _080162EE
	b _08016470
_080162EE:
	ldrh r0, [r6]
	ldrh r1, [r4]
	subs r0, r0, r1
	adds r0, r0, r2
	strh r0, [r6]
	mov r0, sb
	ldr r1, [r0]
	ldr r0, _080163C8 @ =Task_BossCapsuleUpdate
	str r0, [r1, #8]
	mov r1, r8
	ldrh r0, [r1]
	adds r0, #0x78
	ldr r2, _080163CC @ =0x0300006C
	adds r4, r5, r2
	strh r0, [r4]
	movs r0, #0x80
	lsls r0, r0, #4
	movs r2, #0x80
	lsls r2, r2, #1
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x80
	str r1, [sp]
	movs r1, #0x40
	bl CreateScreenShake
	movs r0, #0x88
	bl m4aSongNumStart
	movs r3, #0
	mov r8, r3
	mov sl, r4
	ldr r0, _080163B4 @ =0x0300006E
	adds r0, r0, r5
	mov sb, r0
_08016334:
	ldr r4, _080163D0 @ =gPlayer
	mov r1, r8
	cmp r1, #0
	beq _0801633E
	ldr r4, _080163D4 @ =gPartner
_0801633E:
	mov r5, sl
	movs r2, #0
	ldrsh r1, [r5, r2]
	mov r3, sb
	movs r0, #0
	ldrsh r2, [r3, r0]
	adds r0, r7, #0
	adds r3, r4, #0
	bl sub_800CE34
	movs r6, #0x80
	lsls r6, r6, #0xc
	ands r0, r6
	cmp r0, #0
	bne _08016374
	movs r2, #0
	ldrsh r1, [r5, r2]
	mov r3, sb
	movs r0, #0
	ldrsh r2, [r3, r0]
	ldr r0, [sp, #4]
	adds r3, r4, #0
	bl sub_800CE34
	ands r0, r6
	cmp r0, #0
	beq _0801645E
_08016374:
	movs r0, #0x78
	strh r0, [r4, #0x1c]
	ldr r0, [r4]
	asrs r2, r0, #8
	ldr r0, _080163B8 @ =gCamera
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, #0x78
	cmp r2, r0
	bge _080163D8
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r4, #8]
	movs r3, #0
	ldrsh r1, [r5, r3]
	adds r0, r7, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	movs r0, #0xe
	ldrsb r0, [r4, r0]
	subs r0, r1, r0
	cmp r2, r0
	ble _080163FE
	b _080163FA
	.align 2, 0
_080163AC: .4byte gCurTask
_080163B0: .4byte 0x03000030
_080163B4: .4byte 0x0300006E
_080163B8: .4byte gCamera
_080163BC: .4byte 0x03000072
_080163C0: .4byte 0x03000074
_080163C4: .4byte sa2__sub_801EC3C
_080163C8: .4byte Task_BossCapsuleUpdate
_080163CC: .4byte 0x0300006C
_080163D0: .4byte gPlayer
_080163D4: .4byte gPartner
_080163D8:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #8]
	mov r0, sl
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r0, r7, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	movs r0, #0xe
	ldrsb r0, [r4, r0]
	adds r0, r1, r0
	cmp r2, r0
	bge _080163FE
_080163FA:
	lsls r0, r0, #8
	str r0, [r4]
_080163FE:
	ldr r1, [r4, #0x10]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08016410
	ldr r0, _0801640C @ =0x0000FD60
	b _08016412
	.align 2, 0
_0801640C: .4byte 0x0000FD60
_08016410:
	ldr r0, _08016480 @ =0x0000FB20
_08016412:
	strh r0, [r4, #0xa]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #2
	orrs r0, r1
	ldr r1, _08016484 @ =0xFFFFFBFF
	ands r1, r0
	ldr r0, _08016488 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0xf
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0xe
	bl sa2__sub_8023B5C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x3d
	movs r1, #0
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
_0801645E:
	movs r0, #1
	add r8, r0
	ldr r0, _0801648C @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r8, r0
	bge _08016470
	b _08016334
_08016470:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016480: .4byte 0x0000FB20
_08016484: .4byte 0xFFFFFBFF
_08016488: .4byte 0xFFFFFEFF
_0801648C: .4byte gNumSingleplayerCharacters

	thumb_func_start Task_BossCapsuleUpdate
Task_BossCapsuleUpdate: @ 0x08016490
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _08016624 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0
	adds r2, r0, #0
	str r2, [sp]
	ldr r2, _08016628 @ =0x03000030
	adds r2, r2, r1
	mov sb, r2
	ldr r2, _0801662C @ =0x0300006C
	adds r0, r1, r2
	ldr r3, _08016630 @ =gCamera
	ldrh r2, [r0]
	ldrh r0, [r3]
	subs r2, r2, r0
	mov r0, r8
	strh r2, [r0, #0x16]
	ldr r0, _08016634 @ =0x0300006E
	adds r1, r1, r0
	ldrh r0, [r1]
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	mov r1, r8
	strh r0, [r1, #0x18]
	mov r0, sb
	strh r2, [r0, #0x16]
	ldrh r0, [r1, #0x18]
	mov r1, sb
	strh r0, [r1, #0x18]
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, r8
	bl DisplaySprite
	mov r0, sb
	bl DisplaySprite
	movs r2, #0
	mov sl, r2
_080164FC:
	ldr r6, _08016638 @ =gPlayer
	mov r0, sl
	cmp r0, #0
	beq _08016506
	ldr r6, _0801663C @ =gPartner
_08016506:
	adds r0, r6, #0
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xf
	beq _080165AC
	ldr r1, _08016638 @ =gPlayer
	ldr r0, [r1, #4]
	lsls r0, r0, #8
	lsrs r7, r0, #0x10
	ldr r5, [sp]
	adds r5, #0x6c
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r4, [sp]
	adds r4, #0x6e
	movs r0, #0
	ldrsh r2, [r4, r0]
	mov r0, r8
	adds r3, r6, #0
	bl sub_80096B0
	ldr r2, _08016638 @ =gPlayer
	ldr r1, [r2, #0x10]
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	bne _0801657C
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r2, #4]
	asrs r2, r0, #8
	cmp r1, r2
	blt _08016554
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, r2
	bge _0801657C
_08016554:
	movs r2, #0
	ldrsh r0, [r5, r2]
	mov r1, r8
	adds r1, #0x2c
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	movs r1, #0xe
	ldrsb r1, [r6, r1]
	subs r0, r0, r1
	lsls r0, r0, #8
	str r0, [r6]
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r1, #0xf
	ldrsb r1, [r6, r1]
	subs r0, r0, r1
	lsls r0, r0, #8
	str r0, [r6, #4]
_0801657C:
	movs r2, #0
	ldrsh r1, [r5, r2]
	movs r0, #0
	ldrsh r2, [r4, r0]
	mov r0, sb
	adds r3, r6, #0
	bl sub_80096B0
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	bne _080165A8
	movs r2, #0
	ldrsh r1, [r5, r2]
	movs r0, #0
	ldrsh r2, [r4, r0]
	mov r0, sb
	adds r3, r6, #0
	bl sub_800A768
	cmp r0, #0
	beq _080165AC
_080165A8:
	movs r1, #1
	str r1, [sp, #4]
_080165AC:
	movs r2, #1
	add sl, r2
	ldr r0, _08016640 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp sl, r0
	blt _080164FC
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _08016614
	ldr r0, _08016624 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08016644 @ =sub_8016650
	str r0, [r1, #8]
	ldr r2, _08016648 @ =gStageFlags
	ldrh r0, [r2]
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0801664C @ =0x0000023F
	mov r1, r8
	strh r0, [r1, #0xa]
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x89
	bl m4aSongNumStart
	movs r4, #0
	movs r5, #0
_080165EA:
	ldr r2, _08016638 @ =gPlayer
	cmp r4, #0
	beq _080165F2
	ldr r2, _0801663C @ =gPartner
_080165F2:
	strh r5, [r2, #0xc]
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r2, #0x10]
	strh r5, [r2, #0x38]
	adds r0, r2, #0
	bl sub_801766C
	adds r4, #1
	ldr r0, _08016640 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _080165EA
_08016614:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016624: .4byte gCurTask
_08016628: .4byte 0x03000030
_0801662C: .4byte 0x0300006C
_08016630: .4byte gCamera
_08016634: .4byte 0x0300006E
_08016638: .4byte gPlayer
_0801663C: .4byte gPartner
_08016640: .4byte gNumSingleplayerCharacters
_08016644: .4byte sub_8016650
_08016648: .4byte gStageFlags
_0801664C: .4byte 0x0000023F

	thumb_func_start sub_8016650
sub_8016650: @ 0x08016650
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _08016820 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	str r7, [sp, #4]
	adds r0, #0x30
	adds r0, r0, r4
	mov r8, r0
	ldr r1, _08016824 @ =0x0300006C
	adds r0, r4, r1
	ldr r1, _08016828 @ =gCamera
	ldrh r2, [r0]
	ldrh r0, [r1]
	subs r2, r2, r0
	strh r2, [r7, #0x16]
	ldr r3, _0801682C @ =0x0300006E
	adds r0, r4, r3
	ldrh r0, [r0]
	ldrh r1, [r1, #2]
	subs r0, r0, r1
	strh r0, [r7, #0x18]
	mov r5, r8
	strh r2, [r5, #0x16]
	ldrh r0, [r7, #0x18]
	adds r0, #4
	strh r0, [r5, #0x18]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	mov sl, r0
	mov r0, r8
	bl UpdateSpriteAnimation
	movs r6, #0
	ldr r0, _08016824 @ =0x0300006C
	adds r0, r0, r4
	mov sb, r0
	ldr r1, _0801682C @ =0x0300006E
	adds r4, r4, r1
_080166AE:
	ldr r5, _08016830 @ =gPlayer
	cmp r6, #0
	beq _080166B6
	ldr r5, _08016834 @ =gPartner
_080166B6:
	adds r0, r5, #0
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xf
	beq _080166EC
	mov r2, sb
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r0, #0
	ldrsh r2, [r4, r0]
	adds r0, r7, #0
	adds r3, r5, #0
	bl sub_80096B0
	mov r2, sb
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldrh r2, [r4]
	adds r2, #4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r0, r8
	adds r3, r5, #0
	bl sub_80096B0
_080166EC:
	adds r6, #1
	ldr r5, _08016838 @ =gNumSingleplayerCharacters
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r6, r0
	blt _080166AE
	adds r0, r7, #0
	bl DisplaySprite
	mov r0, r8
	bl DisplaySprite
	mov r0, sl
	cmp r0, #0
	beq _0801670C
	b _08016810
_0801670C:
	movs r3, #0
	ldr r1, [sp, #4]
	adds r1, #0x6c
	str r1, [sp, #8]
	ldr r2, [sp, #4]
	adds r2, #0x6e
	str r2, [sp, #0xc]
	movs r0, #0x20
	adds r0, r0, r7
	mov ip, r0
	movs r1, #8
	mov sl, r1
	movs r2, #9
	rsbs r2, r2, #0
	mov sb, r2
	movs r6, #2
	adds r4, r5, #0
_0801672E:
	ldr r2, _08016830 @ =gPlayer
	cmp r3, #0
	beq _08016736
	ldr r2, _08016834 @ =gPartner
_08016736:
	ldr r1, [r2, #0x10]
	adds r0, r1, #0
	mov r5, sl
	ands r0, r5
	cmp r0, #0
	beq _08016750
	ldr r0, [r2, #0x28]
	cmp r0, r8
	bne _08016750
	mov r0, sb
	ands r1, r0
	orrs r1, r6
	str r1, [r2, #0x10]
_08016750:
	adds r3, #1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r3, r0
	blt _0801672E
	ldr r1, _08016820 @ =gCurTask
	ldr r0, [r1]
	ldr r2, _0801683C @ =sub_801685C
	str r2, [r0, #8]
	movs r5, #0
	ldr r0, _08016840 @ =0x0000023F
	strh r0, [r7, #0xa]
	movs r0, #2
	mov r3, ip
	strb r0, [r3]
	ldr r1, [sp, #8]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0xc]
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r3, _08016844 @ =0x00000241
	mov sl, r3
	str r5, [sp]
	movs r2, #0x40
	bl sub_80168F0
	ldrh r1, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	ldr r2, _08016848 @ =0x03000044
	adds r0, r1, r2
	movs r7, #0xff
	lsls r7, r7, #8
	strh r7, [r0]
	ldr r3, _0801684C @ =0x03000046
	adds r0, r1, r3
	movs r2, #0xfe
	lsls r2, r2, #8
	mov sb, r2
	mov r3, sb
	strh r3, [r0]
	ldr r2, _08016850 @ =0x03000048
	adds r0, r1, r2
	strh r5, [r0]
	ldr r3, _08016854 @ =0x03000042
	adds r0, r1, r3
	movs r6, #4
	strh r6, [r0]
	ldr r0, _08016858 @ =0x03000040
	adds r1, r1, r0
	movs r2, #0x3c
	mov r8, r2
	mov r3, r8
	strh r3, [r1]
	ldr r1, [sp, #8]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0xc]
	movs r2, #0
	ldrsh r1, [r3, r2]
	str r5, [sp]
	movs r2, #0x40
	mov r3, sl
	bl sub_80168F0
	ldrh r0, [r0, #6]
	adds r4, r0, r4
	ldr r3, _08016848 @ =0x03000044
	adds r2, r0, r3
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r2]
	ldr r2, _0801684C @ =0x03000046
	adds r1, r0, r2
	mov r3, sb
	strh r3, [r1]
	adds r2, #2
	adds r1, r0, r2
	strh r5, [r1]
	ldr r3, _08016854 @ =0x03000042
	adds r1, r0, r3
	strh r6, [r1]
	strh r7, [r4, #0x32]
	ldr r5, _08016858 @ =0x03000040
	adds r0, r0, r5
	mov r1, r8
	strh r1, [r0]
	ldr r2, [sp, #8]
	movs r3, #0
	ldrsh r0, [r2, r3]
	ldr r5, [sp, #0xc]
	movs r2, #0
	ldrsh r1, [r5, r2]
	bl sub_801749C
_08016810:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016820: .4byte gCurTask
_08016824: .4byte 0x0300006C
_08016828: .4byte gCamera
_0801682C: .4byte 0x0300006E
_08016830: .4byte gPlayer
_08016834: .4byte gPartner
_08016838: .4byte gNumSingleplayerCharacters
_0801683C: .4byte sub_801685C
_08016840: .4byte 0x0000023F
_08016844: .4byte 0x00000241
_08016848: .4byte 0x03000044
_0801684C: .4byte 0x03000046
_08016850: .4byte 0x03000048
_08016854: .4byte 0x03000042
_08016858: .4byte 0x03000040

	thumb_func_start sub_801685C
sub_801685C: @ 0x0801685C
	push {r4, r5, r6, r7, lr}
	ldr r0, _080168D4 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	adds r6, r4, #0
	ldr r1, _080168D8 @ =0x0300006C
	adds r0, r2, r1
	ldr r3, _080168DC @ =gCamera
	ldrh r0, [r0]
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldr r7, _080168E0 @ =0x0300006E
	adds r2, r2, r7
	ldrh r0, [r2]
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	movs r5, #0
_0801688E:
	ldr r3, _080168E4 @ =gPlayer
	cmp r5, #0
	beq _08016896
	ldr r3, _080168E8 @ =gPartner
_08016896:
	adds r0, r3, #0
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xf
	beq _080168B8
	adds r0, r6, #0
	adds r0, #0x6c
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, #2
	movs r7, #0
	ldrsh r2, [r0, r7]
	adds r0, r4, #0
	bl sub_80096B0
_080168B8:
	adds r5, #1
	ldr r0, _080168EC @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	blt _0801688E
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080168D4: .4byte gCurTask
_080168D8: .4byte 0x0300006C
_080168DC: .4byte gCamera
_080168E0: .4byte 0x0300006E
_080168E4: .4byte gPlayer
_080168E8: .4byte gPartner
_080168EC: .4byte gNumSingleplayerCharacters

	thumb_func_start sub_80168F0
sub_80168F0: @ 0x080168F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r6, r2, #0
	mov sb, r3
	ldr r2, [sp, #0x34]
	mov sl, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #8]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, sb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r1, sl
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	ldr r0, _080169EC @ =sub_8016A14
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _080169F0 @ =sub_80175C4
	str r1, [sp]
	movs r1, #0x4c
	movs r3, #0
	bl TaskCreate
	adds r7, r0, #0
	ldrh r4, [r7, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r4, r5
	ldr r0, _080169F4 @ =0x03000030
	adds r2, r4, r0
	adds r0, #0x10
	adds r1, r4, r0
	movs r3, #0
	movs r0, #0x3c
	strh r0, [r1]
	mov r1, sp
	ldrh r1, [r1, #4]
	strh r1, [r5, #0x3c]
	mov r0, sp
	ldrh r0, [r0, #8]
	strh r0, [r5, #0x3e]
	ldr r1, _080169F8 @ =0x03000044
	adds r0, r4, r1
	movs r1, #0x80
	lsls r1, r1, #1
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	ldr r0, _080169FC @ =0x03000046
	adds r1, r4, r0
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r1]
	ldr r0, _08016A00 @ =0x03000048
	adds r1, r4, r0
	movs r0, #8
	strh r0, [r1]
	adds r0, r6, #0
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	ldr r3, [sp, #0x10]
	strh r3, [r5, #8]
	mov r1, sb
	strh r1, [r5, #0xa]
	ldr r1, _08016A04 @ =0x03000020
	adds r0, r4, r1
	mov r1, sl
	strb r1, [r0]
	strh r3, [r5, #0x14]
	strh r3, [r5, #0x1c]
	ldr r0, _08016A08 @ =0x03000021
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08016A0C @ =0x03000022
	adds r1, r4, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08016A10 @ =0x03000025
	adds r4, r4, r1
	movs r0, #0
	strb r0, [r4]
	movs r0, #0x70
	str r0, [r5, #0x10]
	ldr r2, [sp, #0xc]
	strh r3, [r2]
	mov r1, r8
	strh r1, [r2, #2]
	strh r1, [r2, #4]
	mov r0, sp
	ldrh r0, [r0, #4]
	strh r0, [r2, #6]
	mov r1, sp
	ldrh r1, [r1, #8]
	strh r1, [r2, #8]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080169EC: .4byte sub_8016A14
_080169F0: .4byte sub_80175C4
_080169F4: .4byte 0x03000030
_080169F8: .4byte 0x03000044
_080169FC: .4byte 0x03000046
_08016A00: .4byte 0x03000048
_08016A04: .4byte 0x03000020
_08016A08: .4byte 0x03000021
_08016A0C: .4byte 0x03000022
_08016A10: .4byte 0x03000025

	thumb_func_start sub_8016A14
sub_8016A14: @ 0x08016A14
	push {r4, r5, r6, lr}
	ldr r0, _08016A40 @ =gCurTask
	ldr r2, [r0]
	ldrh r5, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	adds r0, #0x30
	adds r4, r5, r0
	adds r0, #0x10
	adds r1, r5, r0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	ldr r1, _08016A44 @ =0xFFFF0000
	cmp r0, r1
	bne _08016A48
	adds r0, r2, #0
	bl TaskDestroy
	b _08016B66
	.align 2, 0
_08016A40: .4byte gCurTask
_08016A44: .4byte 0xFFFF0000
_08016A48:
	ldr r1, _08016ABC @ =0x03000046
	adds r2, r5, r1
	ldrh r0, [r2]
	adds r0, #0x28
	strh r0, [r2]
	ldr r0, _08016AC0 @ =0x03000044
	adds r3, r5, r0
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	ldrh r0, [r6, #0x3c]
	adds r1, r1, r0
	strh r1, [r6, #0x3c]
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r2, [r6, #0x3e]
	adds r0, r0, r2
	strh r0, [r6, #0x3e]
	ldr r2, _08016AC4 @ =gCamera
	ldrh r0, [r2]
	subs r1, r1, r0
	strh r1, [r4, #6]
	ldrh r0, [r6, #0x3e]
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r4, #8]
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	ble _08016AD8
	ldr r2, _08016AC8 @ =0x03000042
	adds r0, r5, r2
	ldrh r0, [r0]
	ldrh r1, [r4]
	adds r0, r0, r1
	ldr r2, _08016ACC @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r4]
	ldrh r2, [r4, #2]
	movs r0, #2
	ldrsh r1, [r4, r0]
	ldr r0, _08016AD0 @ =0xFFFFFE00
	cmp r1, r0
	ble _08016AAE
	ldr r1, _08016AD4 @ =0x03000048
	adds r0, r5, r1
	ldrh r0, [r0]
	subs r0, r2, r0
	strh r0, [r4, #2]
_08016AAE:
	ldrh r1, [r4, #2]
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _08016B0A
	b _08016B20
	.align 2, 0
_08016ABC: .4byte 0x03000046
_08016AC0: .4byte 0x03000044
_08016AC4: .4byte gCamera
_08016AC8: .4byte 0x03000042
_08016ACC: .4byte 0x000003FF
_08016AD0: .4byte 0xFFFFFE00
_08016AD4: .4byte 0x03000048
_08016AD8:
	ldr r0, _08016B10 @ =0x03000042
	adds r1, r5, r0
	ldrh r0, [r4]
	ldrh r1, [r1]
	subs r0, r0, r1
	ldr r2, _08016B14 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r4]
	ldrh r2, [r4, #2]
	movs r0, #2
	ldrsh r1, [r4, r0]
	ldr r0, _08016B18 @ =0x000001FF
	cmp r1, r0
	bgt _08016B00
	ldr r1, _08016B1C @ =0x03000048
	adds r0, r5, r1
	ldrh r0, [r0]
	adds r0, r2, r0
	strh r0, [r4, #2]
_08016B00:
	ldrh r1, [r4, #2]
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, #0
	blt _08016B20
_08016B0A:
	strh r1, [r4, #4]
	b _08016B24
	.align 2, 0
_08016B10: .4byte 0x03000042
_08016B14: .4byte 0x000003FF
_08016B18: .4byte 0x000001FF
_08016B1C: .4byte 0x03000048
_08016B20:
	rsbs r0, r1, #0
	strh r0, [r4, #4]
_08016B24:
	ldr r1, [r6, #0x10]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08016B58
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r6, #0x10]
	ldr r2, _08016B54 @ =sa2__gUnknown_030054B8
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r6, #0x10]
	orrs r0, r1
	str r0, [r6, #0x10]
	adds r0, r6, #0
	adds r1, r4, #0
	bl TransformSprite
	b _08016B60
	.align 2, 0
_08016B54: .4byte sa2__gUnknown_030054B8
_08016B58:
	ldrh r0, [r4, #6]
	strh r0, [r6, #0x16]
	ldrh r0, [r4, #8]
	strh r0, [r6, #0x18]
_08016B60:
	adds r0, r6, #0
	bl DisplaySprite
_08016B66:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8016B6C
sub_8016B6C: @ 0x08016B6C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08016D54 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r7, #0xc0
	lsls r7, r7, #0x12
	adds r5, r0, r7
	ldrh r1, [r5, #4]
	adds r2, r1, #1
	strh r2, [r5, #4]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08016B92
	b _08016D2E
_08016B92:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	beq _08016C00
	movs r1, #0
	ldrsh r0, [r5, r1]
	ldrh r1, [r5, #2]
	subs r1, #0x20
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r4, _08016D58 @ =gUnknown_080BB43C
	ldr r2, _08016D5C @ =gCurrentLevel
	ldrb r3, [r2]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x19
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #1
	adds r2, r2, r4
	ldrh r2, [r2]
	movs r3, #0
	bl sub_8016D80
	ldrh r6, [r0, #6]
	adds r3, r6, r7
	ldr r2, _08016D60 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _08016D64 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08016D68 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	adds r4, r0, #0
	movs r1, #0xff
	ands r0, r1
	ldrh r1, [r3, #0x3e]
	adds r2, r0, r1
	strh r2, [r3, #0x3e]
	ldrh r1, [r5, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08016BEC
	rsbs r0, r2, #0
	strh r0, [r3, #0x3e]
_08016BEC:
	movs r0, #0xf8
	lsls r0, r0, #5
	ands r0, r4
	lsrs r0, r0, #4
	ldrh r2, [r3, #0x3c]
	adds r0, r0, r2
	strh r0, [r3, #0x3c]
	ldr r2, _08016D6C @ =0x03000040
	adds r1, r6, r2
	strh r0, [r1]
_08016C00:
	movs r1, #0
	ldrsh r0, [r5, r1]
	ldrh r1, [r5, #2]
	subs r1, #0x20
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r4, _08016D58 @ =gUnknown_080BB43C
	ldr r2, _08016D5C @ =gCurrentLevel
	ldrb r3, [r2]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x19
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #1
	adds r4, #2
	adds r2, r2, r4
	ldrh r2, [r2]
	movs r3, #0
	bl sub_8016D80
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r6, r0
	ldr r7, _08016D60 @ =gPseudoRandom
	ldr r0, [r7]
	ldr r2, _08016D64 @ =0x00196225
	mov sb, r2
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r2, _08016D68 @ =0x3C6EF35F
	mov r8, r2
	add r0, r8
	str r0, [r7]
	adds r4, r0, #0
	movs r1, #0xff
	ands r0, r1
	ldrh r1, [r3, #0x3e]
	adds r2, r0, r1
	strh r2, [r3, #0x3e]
	ldrh r1, [r5, #8]
	movs r0, #1
	mov sl, r0
	ands r0, r1
	cmp r0, #0
	bne _08016C62
	rsbs r0, r2, #0
	strh r0, [r3, #0x3e]
_08016C62:
	movs r0, #0xf8
	lsls r0, r0, #5
	ands r0, r4
	lsrs r0, r0, #4
	ldrh r1, [r3, #0x3c]
	adds r0, r0, r1
	strh r0, [r3, #0x3c]
	ldr r2, _08016D6C @ =0x03000040
	adds r1, r6, r2
	strh r0, [r1]
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #5
	beq _08016CDA
	movs r2, #0
	ldrsh r0, [r5, r2]
	ldrh r1, [r5, #2]
	subs r1, #0x20
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xe0
	lsls r2, r2, #1
	movs r3, #0
	bl sub_8016F44
	ldrh r6, [r0, #6]
	ldr r0, [r7]
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	add r0, r8
	str r0, [r7]
	adds r4, r0, #0
	ldr r0, _08016D70 @ =0x03000052
	adds r2, r6, r0
	movs r1, #7
	adds r0, r4, #0
	ands r0, r1
	ldrh r1, [r2]
	adds r3, r0, r1
	strh r3, [r2]
	ldrh r1, [r5, #8]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _08016CCC
	rsbs r0, r3, #0
	strh r0, [r2]
	ldr r2, _08016D74 @ =0x03000050
	adds r1, r6, r2
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
_08016CCC:
	ldr r0, _08016D78 @ =gPlayer
	ldr r0, [r0, #4]
	asrs r0, r0, #8
	subs r0, #0x20
	ldr r2, _08016D7C @ =0x0300004E
	adds r1, r6, r2
	strh r0, [r1]
_08016CDA:
	movs r1, #0
	ldrsh r0, [r5, r1]
	ldrh r1, [r5, #2]
	subs r1, #0x20
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xdd
	lsls r2, r2, #1
	movs r3, #0
	bl sub_8016F44
	ldrh r3, [r0, #6]
	asrs r4, r4, #8
	ldr r0, _08016D70 @ =0x03000052
	adds r2, r3, r0
	movs r0, #7
	ands r4, r0
	ldrh r1, [r2]
	adds r4, r4, r1
	strh r4, [r2]
	ldrh r1, [r5, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08016D1A
	rsbs r0, r4, #0
	strh r0, [r2]
	ldr r2, _08016D74 @ =0x03000050
	adds r1, r3, r2
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
_08016D1A:
	ldr r0, _08016D78 @ =gPlayer
	ldr r0, [r0, #4]
	asrs r0, r0, #8
	subs r0, #0x20
	ldr r2, _08016D7C @ =0x0300004E
	adds r1, r3, r2
	strh r0, [r1]
	ldrh r0, [r5, #8]
	adds r0, #1
	strh r0, [r5, #8]
_08016D2E:
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #0xc
	ble _08016D44
	movs r0, #0
	strh r0, [r5, #4]
	strh r0, [r5, #6]
	ldr r0, _08016D54 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08016D44:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016D54: .4byte gCurTask
_08016D58: .4byte gUnknown_080BB43C
_08016D5C: .4byte gCurrentLevel
_08016D60: .4byte gPseudoRandom
_08016D64: .4byte 0x00196225
_08016D68: .4byte 0x3C6EF35F
_08016D6C: .4byte 0x03000040
_08016D70: .4byte 0x03000052
_08016D74: .4byte 0x03000050
_08016D78: .4byte gPlayer
_08016D7C: .4byte 0x0300004E

	thumb_func_start sub_8016D80
sub_8016D80: @ 0x08016D80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	mov sb, r1
	mov sl, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #4]
	ldr r0, _08016E38 @ =sub_8016E54
	ldr r1, _08016E3C @ =sub_8017658
	str r1, [sp]
	movs r1, #0x44
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	adds r7, r0, #0
	ldrh r5, [r7, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	movs r6, #0
	mov r0, r8
	strh r0, [r4, #0x38]
	mov r1, sb
	strh r1, [r4, #0x3a]
	movs r1, #0xfc
	lsls r1, r1, #8
	strh r1, [r4, #0x3c]
	ldr r2, _08016E40 @ =0x03000040
	adds r0, r5, r2
	strh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x3e]
	str r6, [r4, #0x34]
	str r6, [r4, #0x30]
	movs r0, #4
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x1a]
	strh r6, [r4, #8]
	mov r0, sl
	strh r0, [r4, #0xa]
	ldr r1, _08016E44 @ =0x03000020
	adds r0, r5, r1
	mov r2, sp
	ldrb r2, [r2, #4]
	strb r2, [r0]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	ldr r0, _08016E48 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r2, _08016E4C @ =0x03000022
	adds r1, r5, r2
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _08016E50 @ =0x03000025
	adds r5, r5, r0
	movs r1, #0
	strb r1, [r5]
	movs r2, #0x80
	lsls r2, r2, #6
	str r2, [r4, #0x10]
	adds r0, r7, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08016E38: .4byte sub_8016E54
_08016E3C: .4byte sub_8017658
_08016E40: .4byte 0x03000040
_08016E44: .4byte 0x03000020
_08016E48: .4byte 0x03000021
_08016E4C: .4byte 0x03000022
_08016E50: .4byte 0x03000025

	thumb_func_start sub_8016E54
sub_8016E54: @ 0x08016E54
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _08016ECC @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	adds r5, r4, #0
	ldrh r1, [r4, #0x3c]
	adds r1, #0x28
	strh r1, [r4, #0x3c]
	movs r0, #0x3c
	ldrsh r2, [r4, r0]
	ldr r0, [r4, #0x34]
	adds r3, r0, r2
	str r3, [r4, #0x34]
	movs r0, #0x3e
	ldrsh r2, [r4, r0]
	ldr r0, [r4, #0x30]
	adds r2, r0, r2
	str r2, [r4, #0x30]
	lsls r1, r1, #0x10
	cmp r1, #0
	ble _08016EEE
	movs r1, #0x3a
	ldrsh r0, [r4, r1]
	asrs r1, r3, #8
	adds r0, r0, r1
	movs r3, #0x38
	ldrsh r1, [r4, r3]
	asrs r2, r2, #8
	adds r1, r1, r2
	ldr r2, _08016ED0 @ =sa2__sub_801EC3C
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F100
	cmp r0, #0
	bge _08016EEE
	ldr r1, _08016ED4 @ =0x03000040
	adds r0, r6, r1
	ldrh r0, [r0]
	strh r0, [r4, #0x3c]
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	movs r1, #0x20
	rsbs r1, r1, #0
	cmp r0, r1
	bge _08016ED8
	ldrh r1, [r4, #0x3e]
	movs r2, #0x3e
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _08016ED8
	rsbs r0, r1, #0
	strh r0, [r4, #0x3e]
	b _08016EEE
	.align 2, 0
_08016ECC: .4byte gCurTask
_08016ED0: .4byte sa2__sub_801EC3C
_08016ED4: .4byte 0x03000040
_08016ED8:
	ldr r0, [r5, #0x30]
	asrs r0, r0, #8
	cmp r0, #0x20
	ble _08016EEE
	ldrh r1, [r5, #0x3e]
	movs r3, #0x3e
	ldrsh r0, [r5, r3]
	cmp r0, #0
	ble _08016EEE
	rsbs r0, r1, #0
	strh r0, [r5, #0x3e]
_08016EEE:
	movs r1, #0x3e
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _08016F04
	ldr r0, [r4, #0x10]
	ldr r1, _08016F00 @ =0xFFFFFBFF
	ands r0, r1
	b _08016F0C
	.align 2, 0
_08016F00: .4byte 0xFFFFFBFF
_08016F04:
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
_08016F0C:
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x30]
	asrs r0, r0, #8
	ldrh r2, [r5, #0x38]
	adds r0, r0, r2
	ldr r2, _08016F40 @ =gCamera
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldr r0, [r5, #0x34]
	asrs r0, r0, #8
	ldrh r5, [r5, #0x3a]
	adds r0, r0, r5
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08016F40: .4byte gCamera

	thumb_func_start sub_8016F44
sub_8016F44: @ 0x08016F44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov r8, r0
	mov sb, r1
	mov sl, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #4]
	ldr r0, _08017024 @ =sub_8017054
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08017028 @ =sub_8017658
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #8]
	ldrh r4, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r4, r5
	ldr r0, _0801702C @ =0x03000030
	adds r7, r4, r0
	ldr r1, _08017030 @ =0x03000044
	adds r0, r4, r1
	movs r6, #0
	mov r2, r8
	strh r2, [r0]
	adds r1, #2
	adds r0, r4, r1
	mov r2, sb
	strh r2, [r0]
	ldr r0, _08017034 @ =0x03000048
	adds r1, r4, r0
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r1]
	str r6, [r5, #0x40]
	str r6, [r5, #0x3c]
	ldr r1, _08017038 @ =0x0300004C
	adds r0, r4, r1
	strh r6, [r0]
	ldr r2, _0801703C @ =0x0300004E
	adds r0, r4, r2
	strh r6, [r0]
	adds r1, #4
	adds r0, r4, r1
	strh r6, [r0]
	adds r2, #4
	adds r1, r4, r2
	movs r0, #1
	strh r0, [r1]
	movs r0, #4
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	strh r6, [r5, #8]
	mov r0, sl
	strh r0, [r5, #0xa]
	ldr r1, _08017040 @ =0x03000020
	adds r0, r4, r1
	mov r2, sp
	ldrb r2, [r2, #4]
	strb r2, [r0]
	strh r6, [r5, #0x14]
	strh r6, [r5, #0x1c]
	ldr r0, _08017044 @ =0x03000021
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r2, _08017048 @ =0x03000022
	adds r1, r4, r2
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _0801704C @ =0x03000025
	adds r4, r4, r0
	movs r1, #0
	strb r1, [r4]
	ldr r0, _08017050 @ =0x00002070
	str r0, [r5, #0x10]
	strh r6, [r7]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r7, #2]
	strh r0, [r7, #4]
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08017024: .4byte sub_8017054
_08017028: .4byte sub_8017658
_0801702C: .4byte 0x03000030
_08017030: .4byte 0x03000044
_08017034: .4byte 0x03000048
_08017038: .4byte 0x0300004C
_0801703C: .4byte 0x0300004E
_08017040: .4byte 0x03000020
_08017044: .4byte 0x03000021
_08017048: .4byte 0x03000022
_0801704C: .4byte 0x03000025
_08017050: .4byte 0x00002070

	thumb_func_start sub_8017054
sub_8017054: @ 0x08017054
	push {r4, r5, r6, lr}
	ldr r0, _080170D0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	mov ip, r5
	adds r0, #0x30
	adds r6, r1, r0
	ldr r3, _080170D4 @ =0x0300004C
	adds r2, r1, r3
	ldrh r0, [r2]
	adds r0, #0x10
	ldr r3, _080170D8 @ =0x000003FF
	adds r4, r3, #0
	ands r0, r4
	strh r0, [r2]
	ldr r0, _080170DC @ =0x03000050
	adds r3, r1, r0
	adds r0, #2
	adds r1, r1, r0
	ldrh r0, [r1]
	ldrh r1, [r3]
	adds r0, r0, r1
	ands r0, r4
	strh r0, [r3]
	ldr r4, _080170E0 @ =gSineTable
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	asrs r0, r0, #2
	str r0, [r5, #0x40]
	ldrh r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	str r0, [r5, #0x3c]
	ldrh r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	asrs r0, r0, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	strh r2, [r6, #4]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	ble _080170E4
	movs r0, #0xf0
	lsls r0, r0, #2
	b _080170E8
	.align 2, 0
_080170D0: .4byte gCurTask
_080170D4: .4byte 0x0300004C
_080170D8: .4byte 0x000003FF
_080170DC: .4byte 0x03000050
_080170E0: .4byte gSineTable
_080170E4:
	movs r0, #0x88
	lsls r0, r0, #3
_080170E8:
	strh r0, [r5, #0x1a]
	mov r0, ip
	adds r0, #0x52
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	ble _08017110
	mov r0, ip
	adds r0, #0x50
	ldrh r0, [r0]
	ldr r1, _0801710C @ =0xFFFFFF00
	adds r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0801712C
	b _08017124
	.align 2, 0
_0801710C: .4byte 0xFFFFFF00
_08017110:
	mov r0, ip
	adds r0, #0x50
	ldrh r0, [r0]
	ldr r3, _08017128 @ =0xFFFFFF00
	adds r0, r0, r3
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0801712C
_08017124:
	strh r2, [r6, #2]
	b _08017134
	.align 2, 0
_08017128: .4byte 0xFFFFFF00
_0801712C:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	strh r0, [r6, #2]
_08017134:
	mov r1, ip
	adds r1, #0x46
	mov r0, ip
	adds r0, #0x4e
	ldrh r2, [r1]
	ldrh r0, [r0]
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r3, r1, #0
	cmp r0, #0
	ble _08017150
	subs r0, r2, #1
	b _08017156
_08017150:
	cmp r0, #0
	bge _08017158
	adds r0, r2, #1
_08017156:
	strh r0, [r3]
_08017158:
	mov r1, ip
	adds r1, #0x44
	mov r2, ip
	ldr r0, [r2, #0x3c]
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r2, _080171B4 @ =gCamera
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r6, #6]
	mov r1, ip
	ldr r0, [r1, #0x40]
	asrs r0, r0, #8
	ldrh r3, [r3]
	adds r0, r0, r3
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r6, #8]
	ldr r0, [r5, #0x10]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	ldr r2, _080171B8 @ =sa2__gUnknown_030054B8
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r5, #0x10]
	orrs r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	adds r1, r6, #0
	bl TransformSprite
	adds r0, r5, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080171B4: .4byte gCamera
_080171B8: .4byte sa2__gUnknown_030054B8

	thumb_func_start sub_80171BC
sub_80171BC: @ 0x080171BC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, _0801723C @ =sub_8017244
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r7, r0, #0
	ldrh r2, [r7, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
	strh r4, [r2]
	strh r5, [r2, #2]
	strh r6, [r2, #4]
	mov r1, r8
	strh r1, [r2, #6]
	ldr r3, _08017240 @ =gCamera
	ldrh r4, [r3, #2]
	strh r4, [r3, #0x14]
	adds r1, r4, #0
	adds r1, #0xa0
	strh r1, [r3, #0x16]
	ldrh r0, [r3]
	strh r0, [r3, #0x18]
	mov r5, r8
	strh r5, [r3, #0x1a]
	movs r5, #2
	ldrsh r0, [r2, r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r0, r1
	ble _0801722E
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r4, r1
	strh r0, [r3, #0x16]
_0801722E:
	adds r0, r7, #0
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801723C: .4byte sub_8017244
_08017240: .4byte gCamera

	thumb_func_start sub_8017244
sub_8017244: @ 0x08017244
	push {r4, r5, r6, lr}
	ldr r2, _0801726C @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, _08017270 @ =gCamera
	movs r1, #0
	ldrsh r3, [r5, r1]
	ldrh r4, [r0, #0x14]
	movs r6, #0x14
	ldrsh r1, [r0, r6]
	adds r6, r2, #0
	adds r2, r0, #0
	cmp r3, r1
	ble _08017274
	adds r0, r4, #1
	b _0801727A
	.align 2, 0
_0801726C: .4byte gCurTask
_08017270: .4byte gCamera
_08017274:
	cmp r3, r1
	bge _0801727C
	subs r0, r4, #1
_0801727A:
	strh r0, [r2, #0x14]
_0801727C:
	movs r0, #2
	ldrsh r3, [r5, r0]
	ldrh r0, [r2, #0x16]
	movs r4, #0x16
	ldrsh r1, [r2, r4]
	cmp r3, r1
	ble _0801728E
	adds r0, #1
	b _08017294
_0801728E:
	cmp r3, r1
	bge _08017296
	subs r0, #1
_08017294:
	strh r0, [r2, #0x16]
_08017296:
	movs r0, #4
	ldrsh r3, [r5, r0]
	ldrh r0, [r2, #0x18]
	movs r4, #0x18
	ldrsh r1, [r2, r4]
	cmp r3, r1
	ble _080172A8
	adds r0, #1
	b _080172AE
_080172A8:
	cmp r3, r1
	bge _080172B0
	subs r0, #1
_080172AE:
	strh r0, [r2, #0x18]
_080172B0:
	ldr r1, [r5]
	ldr r0, [r2, #0x14]
	cmp r1, r0
	bne _080172C6
	ldr r1, [r5, #4]
	ldr r0, [r2, #0x18]
	cmp r1, r0
	bne _080172C6
	ldr r0, [r6]
	bl TaskDestroy
_080172C6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_80172CC
sub_80172CC: @ 0x080172CC
	push {r4, r5, r6, lr}
	ldr r2, _080172F4 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, _080172F8 @ =gCamera
	movs r3, #0
	ldrsh r1, [r5, r3]
	ldrh r4, [r0, #0x14]
	movs r6, #0x14
	ldrsh r3, [r0, r6]
	adds r6, r2, #0
	adds r2, r0, #0
	cmp r1, r3
	ble _080172FC
	adds r0, r4, #1
	b _08017302
	.align 2, 0
_080172F4: .4byte gCurTask
_080172F8: .4byte gCamera
_080172FC:
	cmp r1, r3
	bge _08017304
	subs r0, r4, #1
_08017302:
	strh r0, [r2, #0x14]
_08017304:
	movs r1, #2
	ldrsh r0, [r5, r1]
	ldrh r1, [r2, #0x16]
	movs r4, #0x16
	ldrsh r3, [r2, r4]
	cmp r0, r3
	ble _08017316
	adds r0, r1, #1
	b _0801731C
_08017316:
	cmp r0, r3
	bge _0801731E
	subs r0, r1, #1
_0801731C:
	strh r0, [r2, #0x16]
_0801731E:
	ldr r1, [r5]
	ldr r0, [r2, #0x14]
	cmp r1, r0
	bne _0801732C
	ldr r0, [r6]
	bl TaskDestroy
_0801732C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8017334
sub_8017334: @ 0x08017334
	push {r4, r5, r6, r7, lr}
	ldr r0, _080173A0 @ =gCurTask
	mov ip, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r2, [r6, #4]
	ldr r0, [r2]
	asrs r0, r0, #8
	ldr r1, _080173A4 @ =gCamera
	ldrh r1, [r1]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0x78
	ble _080173A8
	ldr r3, [r2, #0x10]
	movs r7, #0x80
	lsls r7, r7, #0xe
	orrs r3, r7
	str r3, [r2, #0x10]
	movs r5, #0
	movs r0, #0x10
	strh r0, [r2, #0x38]
	adds r0, r2, #0
	adds r0, #0x3c
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #3
	movs r0, #0xc8
	subs r0, r0, r1
	cmp r0, r4
	bge _080173F6
	strh r5, [r2, #0xc]
	strh r5, [r2, #8]
	orrs r3, r7
	strh r5, [r2, #0x38]
	movs r0, #1
	orrs r3, r0
	str r3, [r2, #0x10]
	adds r1, r2, #0
	adds r1, #0x40
	movs r0, #0x1d
	strb r0, [r1]
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x10]
	strh r5, [r6]
	strh r5, [r6, #2]
	b _080173EE
	.align 2, 0
_080173A0: .4byte gCurTask
_080173A4: .4byte gCamera
_080173A8:
	ldr r1, [r2, #0x10]
	movs r5, #0x80
	lsls r5, r5, #0xe
	orrs r1, r5
	str r1, [r2, #0x10]
	movs r3, #0
	movs r0, #0x20
	strh r0, [r2, #0x38]
	adds r0, r2, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #3
	adds r0, #0x28
	cmp r0, r4
	ble _080173F6
	strh r3, [r2, #0xc]
	strh r3, [r2, #8]
	orrs r1, r5
	strh r3, [r2, #0x38]
	movs r0, #1
	orrs r1, r0
	str r1, [r2, #0x10]
	adds r1, r2, #0
	adds r1, #0x40
	movs r0, #0x1d
	strb r0, [r1]
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x10]
	strh r3, [r6]
	strh r3, [r6, #2]
_080173EE:
	mov r0, ip
	ldr r1, [r0]
	ldr r0, _080173FC @ =sub_8017400
	str r0, [r1, #8]
_080173F6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080173FC: .4byte sub_8017400

	thumb_func_start sub_8017400
sub_8017400: @ 0x08017400
	push {r4, r5, lr}
	ldr r5, _08017490 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, [r4, #4]
	ldr r0, [r2, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08017422
	adds r1, r2, #0
	adds r1, #0x40
	movs r0, #0x1d
	strb r0, [r1]
_08017422:
	adds r0, r2, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08017488
	ldr r0, [r2, #0x64]
	ldr r0, [r0, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801745E
	ldrh r0, [r4]
	adds r1, r0, #1
	strh r1, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	ble _0801745E
	ldr r0, _08017494 @ =gRingCount
	ldrh r0, [r0]
	ldr r1, _08017498 @ =gCourseTime
	ldr r1, [r1]
	bl CreateStageResults
	ldr r0, [r5]
	bl TaskDestroy
_0801745E:
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08017488
	ldrh r0, [r4, #2]
	adds r1, r0, #1
	strh r1, [r4, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf0
	ble _08017488
	ldr r0, _08017494 @ =gRingCount
	ldrh r0, [r0]
	ldr r1, _08017498 @ =gCourseTime
	ldr r1, [r1]
	bl CreateStageResults
	ldr r0, _08017490 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08017488:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017490: .4byte gCurTask
_08017494: .4byte gRingCount
_08017498: .4byte gCourseTime

	thumb_func_start sub_801749C
sub_801749C: @ 0x0801749C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r0, _080174D8 @ =sub_8016B6C
	movs r2, #0x80
	lsls r2, r2, #6
	movs r4, #0
	str r4, [sp]
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r1, r1, r2
	strh r4, [r1, #4]
	strh r4, [r1, #8]
	strh r5, [r1]
	strh r6, [r1, #2]
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080174D8: .4byte sub_8016B6C

	thumb_func_start sub_80174DC
sub_80174DC: @ 0x080174DC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _08017538 @ =sub_80172CC
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r6, r0, #0
	ldrh r1, [r6, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	strh r4, [r1]
	strh r5, [r1, #2]
	ldr r3, _0801753C @ =gCamera
	ldrh r2, [r3, #2]
	strh r2, [r3, #0x14]
	adds r0, r2, #0
	adds r0, #0xa0
	strh r0, [r3, #0x16]
	movs r4, #2
	ldrsh r1, [r1, r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _0801752C
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r2, r1
	strh r0, [r3, #0x16]
_0801752C:
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08017538: .4byte sub_80172CC
_0801753C: .4byte gCamera

	thumb_func_start sub_8017540
sub_8017540: @ 0x08017540
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	movs r7, #0
	movs r4, #0x80
	lsls r4, r4, #6
	ldr r1, _08017594 @ =0x06011000
	ldr r2, _08017598 @ =0x00000263
	str r7, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_801769C
	adds r7, r0, #0
	ldrh r2, [r7, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
	str r5, [r2, #0x30]
	str r6, [r2, #0x34]
	str r4, [r2, #0x10]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r2, #0x1a]
	ldr r3, _0801759C @ =gPseudoRandom
	ldr r1, [r3]
	ldr r0, _080175A0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080175A4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r3]
	movs r1, #0xc0
	lsls r1, r1, #4
	ands r0, r1
	orrs r0, r4
	str r0, [r2, #0x10]
	adds r0, r7, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08017594: .4byte 0x06011000
_08017598: .4byte 0x00000263
_0801759C: .4byte gPseudoRandom
_080175A0: .4byte 0x00196225
_080175A4: .4byte 0x3C6EF35F

	thumb_func_start sub_80175A8
sub_80175A8: @ 0x080175A8
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

	thumb_func_start sub_80175C4
sub_80175C4: @ 0x080175C4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80175D8
sub_80175D8: @ 0x080175D8
	push {r4, r5, lr}
	ldr r5, _08017648 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _0801764C @ =gPlayer
	ldr r0, [r0, #0x64]
	ldr r0, [r0, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08017616
	ldrh r0, [r4, #4]
	adds r1, r0, #1
	strh r1, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	ble _08017616
	ldr r0, _08017650 @ =gRingCount
	ldrh r0, [r0]
	ldr r1, _08017654 @ =gCourseTime
	ldr r1, [r1]
	bl CreateStageResults
	ldr r0, [r5]
	bl TaskDestroy
_08017616:
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08017640
	ldrh r0, [r4, #6]
	adds r1, r0, #1
	strh r1, [r4, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf0
	ble _08017640
	ldr r0, _08017650 @ =gRingCount
	ldrh r0, [r0]
	ldr r1, _08017654 @ =gCourseTime
	ldr r1, [r1]
	bl CreateStageResults
	ldr r0, _08017648 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08017640:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017648: .4byte gCurTask
_0801764C: .4byte gPlayer
_08017650: .4byte gRingCount
_08017654: .4byte gCourseTime

	thumb_func_start sub_8017658
sub_8017658: @ 0x08017658
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_801766C
sub_801766C: @ 0x0801766C
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _08017698 @ =sub_8017334
	movs r2, #0x80
	lsls r2, r2, #6
	movs r4, #0
	str r4, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	strh r4, [r0]
	str r5, [r0, #4]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017698: .4byte sub_8017334

@ Input:
@ R0: flags 0x2000
@ R1: vram*
	thumb_func_start sub_801769C
sub_801769C: @ 0x0801769C
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #4
	adds r4, r0, #0
	mov sl, r1
	adds r6, r2, #0
	mov r8, r3
	ldr r1, [sp, #0x20]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _0801773C @ =sub_8017750
	str r1, [sp]
	movs r1, #0x44
	adds r2, r4, #0
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r5, r1
	movs r3, #0
	str r3, [r1, #0x30]
	str r3, [r1, #0x34]
	movs r2, #0
	mov sb, r2
	strh r3, [r1, #0x38]
	strh r3, [r1, #0x3a]
	strh r3, [r1, #0x3c]
	strh r3, [r1, #0x3e]
	ldr r4, _08017740 @ =0x03000040
	adds r2, r5, r4
	strh r3, [r2]
	strh r3, [r1, #0x16]
	strh r3, [r1, #0x18]
	mov r2, sl
	str r2, [r1, #4]
	strh r3, [r1, #0x1a]
	strh r3, [r1, #8]
	strh r6, [r1, #0xa]
	subs r4, #0x20
	adds r2, r5, r4
	mov r4, r8
	strb r4, [r2]
	strh r3, [r1, #0x14]
	strh r3, [r1, #0x1c]
	ldr r2, _08017744 @ =0x03000021
	adds r4, r5, r2
	movs r2, #0xff
	strb r2, [r4]
	ldr r2, _08017748 @ =0x03000022
	adds r4, r5, r2
	movs r2, #0x10
	strb r2, [r4]
	ldr r4, _0801774C @ =0x03000025
	adds r5, r5, r4
	mov r2, sb
	strb r2, [r5]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r1, #0x28]
	str r3, [r1, #0x10]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0801773C: .4byte sub_8017750
_08017740: .4byte 0x03000040
_08017744: .4byte 0x03000021
_08017748: .4byte 0x03000022
_0801774C: .4byte 0x03000025

	thumb_func_start sub_8017750
sub_8017750: @ 0x08017750
	push {r4, r5, r6, lr}
	ldr r6, _080177D4 @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldrh r0, [r5, #0x3c]
	ldrh r1, [r5, #0x38]
	adds r0, r0, r1
	strh r0, [r5, #0x38]
	ldrh r0, [r5, #0x3e]
	ldrh r1, [r5, #0x3a]
	adds r0, r0, r1
	strh r0, [r5, #0x3a]
	movs r0, #0x38
	ldrsh r1, [r5, r0]
	ldr r0, [r5, #0x30]
	adds r0, r0, r1
	str r0, [r5, #0x30]
	movs r1, #0x3a
	ldrsh r2, [r5, r1]
	ldr r1, [r5, #0x34]
	adds r1, r1, r2
	str r1, [r5, #0x34]
	asrs r0, r0, #8
	ldr r3, _080177D8 @ =gCamera
	ldrh r2, [r3]
	subs r0, r0, r2
	strh r0, [r5, #0x16]
	asrs r1, r1, #8
	ldrh r0, [r3, #2]
	subs r1, r1, r0
	strh r1, [r5, #0x18]
	ldr r0, _080177DC @ =0x03000040
	adds r4, r4, r0
	ldrh r0, [r4]
	cmp r0, #0
	beq _080177A2
	subs r0, #1
	strh r0, [r4]
_080177A2:
	ldrh r0, [r5, #0x16]
	adds r0, #0x20
	lsls r0, r0, #0x10
	movs r1, #0x98
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080177CA
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	subs r0, #0x20
	cmp r0, #0xa0
	bgt _080177CA
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _080177E0
	ldrh r0, [r4]
	cmp r0, #0
	bne _080177E0
_080177CA:
	ldr r0, [r6]
	bl TaskDestroy
	b _080177E6
	.align 2, 0
_080177D4: .4byte gCurTask
_080177D8: .4byte gCamera
_080177DC: .4byte 0x03000040
_080177E0:
	adds r0, r5, #0
	bl DisplaySprite
_080177E6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_80177EC
sub_80177EC: @ 0x080177EC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8017800
sub_8017800: @ 0x08017800
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	ldr r0, _0801789C @ =gPlayer
	adds r0, #0x48
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0xab
	lsls r0, r0, #3
	cmp r1, r0
	bgt _080178B0
	ldr r0, _080178A0 @ =sub_80178C0
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _080178A4 @ =sub_80179F4
	str r1, [sp]
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r4, r4, r5
	movs r0, #0
	mov r8, r0
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r4, #8]
	bl sub_8011E08
	str r0, [r4]
	ldrh r0, [r0, #6]
	adds r1, r0, r5
	movs r0, #0x3c
	strh r0, [r1, #6]
	movs r6, #0xc8
	strh r6, [r1, #8]
	mov r2, r8
	strh r2, [r1]
	movs r0, #0x40
	strh r0, [r1, #2]
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r1, #4]
	movs r0, #2
	strb r0, [r1, #0xa]
	movs r0, #0x20
	strb r0, [r1, #0xb]
	bl sub_8011E08
	str r0, [r4, #4]
	ldrh r0, [r0, #6]
	adds r1, r0, r5
	strh r6, [r1, #6]
	movs r0, #0xf0
	strh r0, [r1, #8]
	mov r0, r8
	strh r0, [r1]
	movs r0, #8
	strh r0, [r1, #2]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1, #4]
	movs r0, #3
	strb r0, [r1, #0xa]
	movs r0, #0x10
	strb r0, [r1, #0xb]
	ldr r1, _080178A8 @ =gBldRegs
	ldr r0, _080178AC @ =0x00003FDF
	strh r0, [r1]
	ldrh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	strh r0, [r1, #4]
	movs r0, #1
	b _080178B2
	.align 2, 0
_0801789C: .4byte gPlayer
_080178A0: .4byte sub_80178C0
_080178A4: .4byte sub_80179F4
_080178A8: .4byte gBldRegs
_080178AC: .4byte 0x00003FDF
_080178B0:
	movs r0, #0
_080178B2:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80178C0
sub_80178C0: @ 0x080178C0
	push {r4, r5, lr}
	ldr r5, _0801791C @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, _08017920 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0xc0
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08017924 @ =gWinRegs
	ldr r0, _08017928 @ =0x00001F1F
	strh r0, [r1, #8]
	movs r0, #0x3f
	strh r0, [r1, #0xa]
	ldrh r0, [r4, #8]
	subs r0, #0x40
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	ldr r1, _0801792C @ =0x07FF0000
	cmp r0, r1
	bgt _080178FA
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r4, #8]
_080178FA:
	ldr r1, _08017930 @ =gBldRegs
	ldrh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	strh r0, [r1, #4]
	ldr r2, _08017934 @ =gPlayer
	ldr r0, [r2]
	asrs r0, r0, #8
	movs r1, #0xab
	lsls r1, r1, #3
	cmp r0, r1
	ble _0801793C
	ldr r1, [r5]
	ldr r0, _08017938 @ =Task_801796C
	str r0, [r1, #8]
	b _08017960
	.align 2, 0
_0801791C: .4byte gCurTask
_08017920: .4byte gDispCnt
_08017924: .4byte gWinRegs
_08017928: .4byte 0x00001F1F
_0801792C: .4byte 0x07FF0000
_08017930: .4byte gBldRegs
_08017934: .4byte gPlayer
_08017938: .4byte Task_801796C
_0801793C:
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0801794E
	ldr r0, _08017968 @ =gDestroySpotlights
	ldrb r0, [r0]
	cmp r0, #0
	beq _08017960
_0801794E:
	ldr r0, [r4]
	bl TaskDestroy
	ldr r0, [r4, #4]
	bl TaskDestroy
	ldr r0, [r5]
	bl TaskDestroy
_08017960:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017968: .4byte gDestroySpotlights

@ Used to destroy spotlights
	thumb_func_start Task_801796C
Task_801796C: @ 0x0801796C
	push {r4, r5, lr}
	ldr r5, _0801799C @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r0, [r4, #8]
	subs r0, #0x40
	strh r0, [r4, #8]
	lsls r3, r0, #0x10
	cmp r3, #0
	bge _080179A0
	ldr r0, [r4]
	bl TaskDestroy
	ldr r0, [r4, #4]
	bl TaskDestroy
	ldr r0, [r5]
	bl TaskDestroy
	b _080179EA
	.align 2, 0
_0801799C: .4byte gCurTask
_080179A0:
	ldr r2, _080179D8 @ =gPlayer
	ldr r0, [r2]
	asrs r0, r0, #8
	movs r1, #0xba
	lsls r1, r1, #3
	cmp r0, r1
	bgt _080179C0
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080179C0
	ldr r0, _080179DC @ =gDestroySpotlights
	ldrb r0, [r0]
	cmp r0, #0
	beq _080179E4
_080179C0:
	ldr r0, [r4]
	bl TaskDestroy
	ldr r0, [r4, #4]
	bl TaskDestroy
	ldr r0, _080179E0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080179EA
	.align 2, 0
_080179D8: .4byte gPlayer
_080179DC: .4byte gDestroySpotlights
_080179E0: .4byte gCurTask
_080179E4:
	ldr r1, _080179F0 @ =gBldRegs
	asrs r0, r3, #0x18
	strh r0, [r1, #4]
_080179EA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080179F0: .4byte gBldRegs

	thumb_func_start sub_80179F4
sub_80179F4: @ 0x080179F4
	ldr r2, _08017A1C @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08017A20 @ =0x00009FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08017A24 @ =gBldRegs
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #4]
	ldr r0, _08017A28 @ =gWinRegs
	strh r1, [r0]
	strh r1, [r0, #4]
	strh r1, [r0, #2]
	strh r1, [r0, #6]
	ldr r2, _08017A2C @ =gFlags
	ldr r0, [r2]
	subs r1, #5
	ands r0, r1
	str r0, [r2]
	bx lr
	.align 2, 0
_08017A1C: .4byte gDispCnt
_08017A20: .4byte 0x00009FFF
_08017A24: .4byte gBldRegs
_08017A28: .4byte gWinRegs
_08017A2C: .4byte gFlags

	thumb_func_start sub_8017A30
sub_8017A30: @ 0x08017A30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08017AE0 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r6, r0, #0x1e
	ldr r0, _08017AE4 @ =gMultiSioSend
	mov r8, r0
	ldrh r5, [r0, #8]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	lsls r0, r6
	ands r5, r0
	movs r4, #0
	ldr r2, _08017AE8 @ =gMultiplayerConnections
	ldrb r0, [r2]
	movs r1, #1
	ands r0, r1
	mov sl, r2
	cmp r0, #0
	beq _08017ABA
	ldr r0, _08017AEC @ =gMultiSioStatusFlags
	movs r7, #1
	ldr r0, [r0]
	mov ip, r0
	mov sb, r3
_08017A6E:
	adds r0, r7, #0
	lsls r0, r4
	mov r1, ip
	ands r0, r1
	cmp r0, #0
	beq _08017B34
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _08017AF0 @ =gMultiSioRecv
	adds r0, r0, r1
	ldrh r1, [r0]
	cmp r1, sb
	bne _08017AA4
	movs r2, #0
	cmp r5, #0
	bne _08017A92
	movs r2, #1
_08017A92:
	movs r3, #0
	ldrh r0, [r0, #8]
	lsls r1, r6
	ands r0, r1
	cmp r0, #0
	bne _08017AA0
	movs r3, #1
_08017AA0:
	cmp r2, r3
	bne _08017B34
_08017AA4:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bhi _08017ABA
	mov r2, sl
	ldrb r0, [r2]
	asrs r0, r4
	ands r0, r7
	cmp r0, #0
	bne _08017A6E
_08017ABA:
	ldr r0, _08017AF4 @ =gUnknown_03005014
	ldr r3, _08017AF8 @ =gUnknown_03005000
	ldrb r4, [r3]
	ldrb r0, [r0]
	cmp r0, r4
	bne _08017B08
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08017AFC @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08017B00 @ =gMultiSioSend+0xE
	str r0, [r1, #4]
	ldr r0, _08017B04 @ =0x81000003
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	b _08017B34
	.align 2, 0
_08017AE0: .4byte 0x04000128
_08017AE4: .4byte gMultiSioSend
_08017AE8: .4byte gMultiplayerConnections
_08017AEC: .4byte gMultiSioStatusFlags
_08017AF0: .4byte gMultiSioRecv
_08017AF4: .4byte gUnknown_03005014
_08017AF8: .4byte gUnknown_03005000
_08017AFC: .4byte 0x040000D4
_08017B00: .4byte gMultiSioSend+0xE
_08017B04: .4byte 0x81000003
_08017B08:
	ldr r2, _08017B44 @ =0x040000D4
	ldrb r0, [r3]
	lsls r0, r0, #3
	ldr r1, _08017B48 @ =gUnknown_030050A0
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, _08017B4C @ =gMultiSioSend+0xE
	str r0, [r2, #4]
	ldr r0, _08017B50 @ =0x80000003
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r4, #1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r3]
	movs r0, #0x80
	lsls r0, r0, #5
	lsls r0, r6
	mov r2, r8
	ldrh r1, [r2, #8]
	eors r0, r1
	strh r0, [r2, #8]
_08017B34:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08017B44: .4byte 0x040000D4
_08017B48: .4byte gUnknown_030050A0
_08017B4C: .4byte gMultiSioSend+0xE
_08017B50: .4byte 0x80000003

	thumb_func_start sub_8017B54
sub_8017B54: @ 0x08017B54
	push {r4, r5, r6, r7, lr}
	ldr r0, _08017B6C @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r6, r0, #0x1e
	ldr r7, _08017B70 @ =gMultiSioSend
	movs r5, #0
	cmp r5, r6
	beq _08017BD0
	ldr r0, _08017B74 @ =gMultiplayerConnections
	ldrb r0, [r0]
	b _08017BE4
	.align 2, 0
_08017B6C: .4byte 0x04000128
_08017B70: .4byte gMultiSioSend
_08017B74: .4byte gMultiplayerConnections
_08017B78:
	ldr r0, _08017BF4 @ =gMultiSioStatusFlags
	movs r1, #1
	lsls r1, r5
	ldr r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _08017BD0
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	ldr r1, _08017BF8 @ =gMultiSioRecv
	adds r3, r0, r1
	ldrh r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r2, r0
	bne _08017BD0
	ldrh r1, [r3, #8]
	adds r4, r2, #0
	lsls r4, r5
	ands r1, r4
	ldrh r0, [r7, #8]
	ands r0, r4
	cmp r1, r0
	beq _08017BD0
	ldrb r0, [r3, #0xe]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bhi _08017BCA
	ldr r0, _08017BFC @ =sa2__gUnknown_080D5744
	ldrb r1, [r3, #0xe]
	subs r1, #1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	adds r0, r3, #0
	adds r1, r5, #0
	bl _call_via_r2
_08017BCA:
	ldrh r0, [r7, #8]
	eors r4, r0
	strh r4, [r7, #8]
_08017BD0:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bhi _08017BEC
	cmp r5, r6
	beq _08017BD0
	ldr r0, _08017C00 @ =gMultiplayerConnections
	ldrb r0, [r0]
	asrs r0, r5
_08017BE4:
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08017B78
_08017BEC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08017BF4: .4byte gMultiSioStatusFlags
_08017BF8: .4byte gMultiSioRecv
_08017BFC: .4byte sa2__gUnknown_080D5744
_08017C00: .4byte gMultiplayerConnections

@ SA2: sub_8018AD8
	thumb_func_start sub_8017C04
sub_8017C04: @ 0x08017C04
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r2, _08017C7C @ =gMultiplayerPlayerTasks
	lsls r0, r4, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	ldr r3, _08017C80 @ =0x04000128
	ldr r0, [r3]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov ip, r0
	ldr r0, [r0, #0x5c]
	movs r1, #1
	ands r0, r1
	mov r8, r2
	cmp r0, #0
	beq _08017C42
	b _08017F02
_08017C42:
	ldr r2, _08017C84 @ =gPlayer
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08017C52
	b _08017F02
_08017C52:
	ldr r1, _08017C88 @ =sa2__gUnknown_030054B4
	ldr r0, [r3]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08017C6A
	b _08017F02
_08017C6A:
	ldrb r0, [r7, #0xf]
	cmp r0, #5
	bls _08017C72
	b _08017F02
_08017C72:
	lsls r0, r0, #2
	ldr r1, _08017C8C @ =_08017C90
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08017C7C: .4byte gMultiplayerPlayerTasks
_08017C80: .4byte 0x04000128
_08017C84: .4byte gPlayer
_08017C88: .4byte sa2__gUnknown_030054B4
_08017C8C: .4byte _08017C90
_08017C90: @ jump table
	.4byte _08017CA8 @ case 0
	.4byte _08017D10 @ case 1
	.4byte _08017F02 @ case 2
	.4byte _08017EFC @ case 3
	.4byte _08017DA8 @ case 4
	.4byte _08017E84 @ case 5
_08017CA8:
	ldr r0, _08017D04 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _08017CB4
	cmp r0, #5
	bne _08017CE0
_08017CB4:
	ldr r0, _08017D08 @ =gMultiplayerConnections
	ldrb r3, [r0]
	movs r2, #0x10
	adds r1, r2, #0
	lsls r1, r4
	ands r1, r3
	adds r0, r4, #4
	asrs r1, r0
	ldr r4, _08017D0C @ =0x04000128
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r2, r0
	ands r3, r2
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, #4
	asrs r3, r0
	cmp r1, r3
	bne _08017CE0
	b _08017F02
_08017CE0:
	adds r2, r5, #0
	adds r2, #0x26
	ldrb r1, [r2]
	movs r0, #0x40
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r5, #0x22]
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bl sub_804B7C8
	b _08017F02
	.align 2, 0
_08017D04: .4byte gGameMode
_08017D08: .4byte gMultiplayerConnections
_08017D0C: .4byte 0x04000128
_08017D10:
	ldr r0, _08017D98 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _08017D1C
	cmp r0, #5
	bne _08017D48
_08017D1C:
	ldr r0, _08017D9C @ =gMultiplayerConnections
	ldrb r3, [r0]
	movs r2, #0x10
	adds r1, r2, #0
	lsls r1, r4
	ands r1, r3
	adds r0, r4, #4
	asrs r1, r0
	ldr r4, _08017DA0 @ =0x04000128
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r2, r0
	ands r3, r2
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, #4
	asrs r3, r0
	cmp r1, r3
	bne _08017D48
	b _08017F02
_08017D48:
	movs r4, #0
	movs r3, #0
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [r6, #0x5c]
	cmp r0, #0
	beq _08017D78
	ldr r5, _08017DA4 @ =gMultiplayerCharRings
	mov r2, r8
_08017D5A:
	adds r0, r3, r5
	ldrb r0, [r0]
	adds r0, r4, r0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bhi _08017D78
	lsls r0, r3, #2
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _08017D5A
_08017D78:
	movs r2, #0xe0
	lsls r2, r2, #0xb
	ands r1, r2
	cmp r1, #0
	bne _08017D92
	mov r1, ip
	ldr r0, [r1, #0x5c]
	ands r0, r2
	cmp r0, #0
	bne _08017D92
	cmp r4, #0
	beq _08017D92
	b _08017F02
_08017D92:
	bl sub_801C704
	b _08017F02
	.align 2, 0
_08017D98: .4byte gGameMode
_08017D9C: .4byte gMultiplayerConnections
_08017DA0: .4byte 0x04000128
_08017DA4: .4byte gMultiplayerCharRings
_08017DA8:
	ldr r0, _08017E70 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	ldrb r1, [r7, #0x10]
	lsrs r0, r0, #0x1e
	cmp r1, r0
	beq _08017DB8
	b _08017F02
_08017DB8:
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08017DC8
	b _08017F02
_08017DC8:
	ldr r4, [r5, #0x10]
	movs r0, #0xc0
	lsls r0, r0, #0xf
	ands r4, r0
	cmp r4, #0
	beq _08017DD6
	b _08017F02
_08017DD6:
	adds r0, r5, #0
	bl InitializePlayer
	adds r0, r6, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	str r0, [r5]
	adds r0, r6, #0
	adds r0, #0x52
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r6, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	lsls r0, r0, #8
	str r0, [r5, #4]
	ldr r0, _08017E74 @ =gMPlayInfo_BGM
	movs r1, #0x80
	lsls r1, r1, #1
	bl m4aMPlayTempoControl
	str r4, [r5, #0x10]
	ldr r1, [r5, #0x64]
	ldr r0, [r1, #0x1c]
	ldr r3, _08017E78 @ =0xFFFFCFFF
	ands r0, r3
	movs r2, #0x80
	lsls r2, r2, #6
	orrs r0, r2
	str r0, [r1, #0x1c]
	ldr r1, [r5, #0x68]
	ldr r0, [r1, #0x1c]
	ands r0, r3
	orrs r0, r2
	str r0, [r1, #0x1c]
	ldr r2, _08017E7C @ =gCamera
	ldrh r1, [r2, #0x26]
	ldr r0, _08017E80 @ =0x0000FFFC
	ands r0, r1
	strh r0, [r2, #0x26]
	adds r0, r6, #0
	adds r0, #0x54
	ldrh r0, [r0]
	lsrs r0, r0, #7
	movs r1, #1
	ands r0, r1
	adds r1, r5, #0
	adds r1, #0x27
	strb r0, [r1]
	ldr r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0x10]
	adds r1, r6, #0
	adds r1, #0x60
	movs r0, #0x1e
	strb r0, [r1]
	movs r0, #0x78
	strh r0, [r5, #0x1c]
	ldr r0, [r5]
	asrs r0, r0, #8
	ldrh r1, [r2, #0xc]
	adds r0, r0, r1
	subs r0, #0x78
	strh r0, [r2]
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	ldrh r1, [r2, #0xe]
	adds r0, r0, r1
	subs r0, #0x50
	strh r0, [r2, #2]
	b _08017F02
	.align 2, 0
_08017E70: .4byte 0x04000128
_08017E74: .4byte gMPlayInfo_BGM
_08017E78: .4byte 0xFFFFCFFF
_08017E7C: .4byte gCamera
_08017E80: .4byte 0x0000FFFC
_08017E84:
	ldr r0, _08017EEC @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _08017E90
	cmp r0, #5
	bne _08017EBA
_08017E90:
	ldr r0, _08017EF0 @ =gMultiplayerConnections
	ldrb r3, [r0]
	movs r2, #0x10
	adds r1, r2, #0
	lsls r1, r4
	ands r1, r3
	adds r0, r4, #4
	asrs r1, r0
	ldr r4, _08017EF4 @ =0x04000128
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r2, r0
	ands r3, r2
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, #4
	asrs r3, r0
	cmp r1, r3
	beq _08017F02
_08017EBA:
	adds r2, r5, #0
	adds r2, #0x26
	ldrb r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r5, #0x20]
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bl sub_804B7C8
	ldr r0, _08017EF8 @ =gMPlayInfo_BGM
	movs r1, #0x80
	bl m4aMPlayTempoControl
	b _08017F02
	.align 2, 0
_08017EEC: .4byte gGameMode
_08017EF0: .4byte gMultiplayerConnections
_08017EF4: .4byte 0x04000128
_08017EF8: .4byte gMPlayInfo_BGM
_08017EFC:
	ldr r1, _08017F0C @ =gUnknown_03004FE0
	movs r0, #0x1e
	strb r0, [r1]
_08017F02:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08017F0C: .4byte gUnknown_03004FE0

@ SA2: sub_8018E00
	thumb_func_start sub_8017F10
sub_8017F10: @ 0x08017F10
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	movs r0, #0
	mov sb, r0
	movs r1, #0
	str r1, [sp, #4]
	mov sl, r1
	movs r2, #0
	str r2, [sp, #8]
	ldr r2, _08017F80 @ =gMultiplayerPlayerTasks
	lsls r0, r7, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	str r1, [sp]
	movs r6, #0
	ldr r0, [r2]
	cmp r0, #0
	beq _08017FD8
	ldr r0, _08017F84 @ =gGameMode
	ldrb r5, [r0]
	movs r0, #0x10
	mov ip, r0
	adds r4, r2, #0
	ldr r1, _08017F88 @ =0x04000128
	mov r8, r1
_08017F56:
	ldr r2, [sp, #4]
	adds r2, #1
	str r2, [sp, #4]
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	cmp r5, #3
	beq _08017F8C
	cmp r5, #5
	beq _08017F8C
	ldr r0, [r1, #0x5c]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08017FCA
	add sb, r1
	add sl, r1
	b _08017FCA
	.align 2, 0
_08017F80: .4byte gMultiplayerPlayerTasks
_08017F84: .4byte gGameMode
_08017F88: .4byte 0x04000128
_08017F8C:
	ldr r0, _08017FF8 @ =gMultiplayerConnections
	ldrb r3, [r0]
	mov r2, ip
	lsls r2, r6
	ands r2, r3
	adds r0, r6, #4
	asrs r2, r0
	mov r0, r8
	ldr r1, [r0]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	mov r0, ip
	lsls r0, r1
	ands r3, r0
	mov r1, r8
	ldr r0, [r1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, #4
	asrs r3, r0
	cmp r2, r3
	beq _08017FCA
	ldr r2, _08017FFC @ =sa2__gUnknown_030054B4
	adds r0, r6, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08017FCA
	movs r0, #1
	mov sb, r0
_08017FCA:
	adds r4, #4
	adds r6, #1
	cmp r6, #3
	bhi _08017FD8
	ldr r0, [r4]
	cmp r0, #0
	bne _08017F56
_08017FD8:
	ldr r1, _08017FFC @ =sa2__gUnknown_030054B4
	adds r0, r7, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08018000
	mov r2, sb
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	adds r0, r7, #0
	bl sub_8019C14
	b _08018004
	.align 2, 0
_08017FF8: .4byte gMultiplayerConnections
_08017FFC: .4byte sa2__gUnknown_030054B4
_08018000:
	movs r0, #1
	str r0, [sp, #8]
_08018004:
	ldr r0, _08018180 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _0801801C
	mov r1, sl
	adds r1, #1
	str r1, [sp, #0x10]
	ldr r2, [sp, #4]
	subs r2, #1
	str r2, [sp, #0xc]
	cmp r0, #5
	bne _08018106
_0801801C:
	movs r6, #0
	ldr r0, _08018184 @ =gMultiplayerPlayerTasks
	ldr r0, [r0]
	mov r1, sl
	adds r1, #1
	str r1, [sp, #0x10]
	ldr r2, [sp, #4]
	subs r2, #1
	str r2, [sp, #0xc]
	cmp r0, #0
	beq _08018106
	movs r0, #0x10
	mov sl, r0
	mov r8, sl
	mov r1, r8
	lsls r1, r7
	mov r8, r1
	ldr r5, _08018188 @ =gPlayer
_08018040:
	cmp r6, r7
	beq _080180F4
	ldr r0, _0801818C @ =sa2__gUnknown_030054B4
	adds r0, r6, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r2, #1
	rsbs r2, r2, #0
	cmp r0, r2
	bne _080180F4
	ldr r0, _08018190 @ =gMultiplayerConnections
	ldrb r2, [r0]
	mov r0, sl
	lsls r0, r6
	ands r0, r2
	adds r1, r6, #4
	asrs r0, r1
	mov r1, r8
	ands r2, r1
	adds r1, r7, #4
	asrs r2, r1
	cmp r0, r2
	bne _080180F4
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	mov r2, sb
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	bl sub_8019C14
	ldr r0, _08018194 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r6, r0
	bne _080180F4
	adds r0, r5, #0
	bl sub_8046CEC
	ldr r0, [r5, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x18
	ands r0, r1
	adds r1, #0x1c
	ands r0, r1
	subs r1, #0xc
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	ldr r1, _08018198 @ =0xFFFFFBFF
	ands r0, r1
	ldr r1, _0801819C @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #0x10]
	adds r4, r5, #0
	adds r4, #0x40
	movs r0, #0xf
	strb r0, [r4]
	adds r0, r5, #0
	movs r1, #0xe
	bl sa2__sub_8023B5C
	movs r0, #6
	strb r0, [r5, #0xe]
	movs r0, #0xe
	strb r0, [r5, #0xf]
	adds r0, r5, #0
	adds r0, #0x3d
	movs r2, #0
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	strh r2, [r5, #0xc]
	strh r2, [r5, #8]
	ldr r1, [r5, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xe
	orrs r1, r0
	strh r2, [r5, #0x38]
	movs r0, #1
	orrs r1, r0
	movs r0, #0x1d
	strb r0, [r4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	orrs r1, r0
	str r1, [r5, #0x10]
_080180F4:
	adds r6, #1
	cmp r6, #3
	bhi _08018106
	ldr r0, _08018184 @ =gMultiplayerPlayerTasks
	lsls r1, r6, #2
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	bne _08018040
_08018106:
	ldr r1, [sp]
	ldr r0, [r1, #0x5c]
	movs r2, #1
	orrs r0, r2
	str r0, [r1, #0x5c]
	mov r0, sb
	cmp r0, #0
	bne _08018130
	ldr r3, _080181A0 @ =gStageFlags
	ldrh r1, [r3]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08018130
	movs r0, #4
	orrs r0, r1
	strh r0, [r3]
	ldr r1, _080181A4 @ =gCourseTime
	movs r0, #0xe1
	lsls r0, r0, #4
	str r0, [r1]
_08018130:
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	cmp r1, r2
	bhs _08018144
	ldr r0, _08018180 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _08018144
	cmp r0, #5
	bne _080181E4
_08018144:
	movs r6, #0
	ldr r0, _08018184 @ =gMultiplayerPlayerTasks
	ldr r0, [r0]
	cmp r0, #0
	beq _080181DA
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	movs r4, #0
	ldr r5, _08018188 @ =gPlayer
_08018158:
	cmp r6, r7
	beq _080181C2
	ldr r0, _0801818C @ =sa2__gUnknown_030054B4
	adds r0, r6, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r8
	bne _080181C2
	ldr r0, _08018180 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _08018176
	cmp r0, #5
	bne _080181A8
_08018176:
	lsrs r0, r4, #0x18
	movs r1, #1
	bl sub_8019C14
	b _080181C2
	.align 2, 0
_08018180: .4byte gGameMode
_08018184: .4byte gMultiplayerPlayerTasks
_08018188: .4byte gPlayer
_0801818C: .4byte sa2__gUnknown_030054B4
_08018190: .4byte gMultiplayerConnections
_08018194: .4byte 0x04000128
_08018198: .4byte 0xFFFFFBFF
_0801819C: .4byte 0xFFFFFEFF
_080181A0: .4byte gStageFlags
_080181A4: .4byte gCourseTime
_080181A8:
	lsrs r0, r4, #0x18
	ldr r2, [sp, #0xc]
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	bl sub_8019C14
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r5, #0x10]
	movs r0, #0
	strh r0, [r5, #0x38]
_080181C2:
	movs r0, #0x80
	lsls r0, r0, #0x11
	adds r4, r4, r0
	adds r6, #1
	cmp r6, #3
	bhi _080181DA
	ldr r0, _080181F4 @ =gMultiplayerPlayerTasks
	lsls r1, r6, #2
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	bne _08018158
_080181DA:
	ldr r1, [sp, #8]
	cmp r1, #0
	bne _080181E4
	bl sub_8019DB0
_080181E4:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080181F4: .4byte gMultiplayerPlayerTasks

	thumb_func_start sub_80181F8
sub_80181F8: @ 0x080181F8
	push {r4, lr}
	sub sp, #8
	ldr r0, _08018250 @ =sub_8017A30
	ldr r2, _08018254 @ =0x0000FFFE
	movs r4, #0
	str r4, [sp]
	movs r1, #0
	movs r3, #0
	bl TaskCreate
	str r4, [sp, #4]
	ldr r2, _08018258 @ =0x040000D4
	add r1, sp, #4
	str r1, [r2]
	ldr r1, _0801825C @ =gMultiSioSend
	str r1, [r2, #4]
	ldr r1, _08018260 @ =0x85000005
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	str r4, [sp, #4]
	add r1, sp, #4
	str r1, [r2]
	ldr r1, _08018264 @ =gMultiSioRecv
	str r1, [r2, #4]
	ldr r1, _08018268 @ =0x85000014
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	str r4, [sp, #4]
	add r1, sp, #4
	str r1, [r2]
	ldr r1, _0801826C @ =gUnknown_030050A0
	str r1, [r2, #4]
	ldr r1, _08018270 @ =0x85000020
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r2, _08018274 @ =gUnknown_03005014
	ldr r1, _08018278 @ =gUnknown_03005000
	strb r4, [r1]
	strb r4, [r2]
	add sp, #8
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08018250: .4byte sub_8017A30
_08018254: .4byte 0x0000FFFE
_08018258: .4byte 0x040000D4
_0801825C: .4byte gMultiSioSend
_08018260: .4byte 0x85000005
_08018264: .4byte gMultiSioRecv
_08018268: .4byte 0x85000014
_0801826C: .4byte gUnknown_030050A0
_08018270: .4byte 0x85000020
_08018274: .4byte gUnknown_03005014
_08018278: .4byte gUnknown_03005000

	thumb_func_start sub_801827C
sub_801827C: @ 0x0801827C
	push {r4, lr}
	sub sp, #8
	ldr r0, _080182D4 @ =sub_8017B54
	movs r4, #0
	str r4, [sp]
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl TaskCreate
	str r4, [sp, #4]
	ldr r2, _080182D8 @ =0x040000D4
	add r1, sp, #4
	str r1, [r2]
	ldr r1, _080182DC @ =gMultiSioSend
	str r1, [r2, #4]
	ldr r1, _080182E0 @ =0x85000005
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	str r4, [sp, #4]
	add r1, sp, #4
	str r1, [r2]
	ldr r1, _080182E4 @ =gMultiSioRecv
	str r1, [r2, #4]
	ldr r1, _080182E8 @ =0x85000014
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	str r4, [sp, #4]
	add r1, sp, #4
	str r1, [r2]
	ldr r1, _080182EC @ =gUnknown_030050A0
	str r1, [r2, #4]
	ldr r1, _080182F0 @ =0x85000020
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r1, _080182F4 @ =gUnknown_03005000
	strb r4, [r1]
	ldr r1, _080182F8 @ =gUnknown_03005014
	strb r4, [r1]
	add sp, #8
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080182D4: .4byte sub_8017B54
_080182D8: .4byte 0x040000D4
_080182DC: .4byte gMultiSioSend
_080182E0: .4byte 0x85000005
_080182E4: .4byte gMultiSioRecv
_080182E8: .4byte 0x85000014
_080182EC: .4byte gUnknown_030050A0
_080182F0: .4byte 0x85000020
_080182F4: .4byte gUnknown_03005000
_080182F8: .4byte gUnknown_03005014

@ Start of player_unk_1.c
@ SA2: sub_8019224
	thumb_func_start sub_80182FC
sub_80182FC: @ 0x080182FC
	ldr r3, _08018310 @ =gUnknown_03005014
	ldrb r1, [r3]
	lsls r0, r1, #3
	ldr r2, _08018314 @ =gUnknown_030050A0
	adds r0, r0, r2
	adds r1, #1
	movs r2, #0xf
	ands r1, r2
	strb r1, [r3]
	bx lr
	.align 2, 0
_08018310: .4byte gUnknown_03005014
_08018314: .4byte gUnknown_030050A0

@ SA2: sub_8019240
	thumb_func_start sub_8018318
sub_8018318: @ 0x08018318
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0801837C @ =gEntitiesManagerTask
	ldr r0, [r0]
	cmp r0, #0
	beq _08018376
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r3, [r0]
	adds r3, #4
	ldm r3!, {r0}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, #4
	ldrb r2, [r4, #0xf]
	ldrb r1, [r4, #0x10]
	muls r0, r1, r0
	lsls r2, r2, #2
	lsls r0, r0, #2
	adds r0, r0, r3
	adds r2, r2, r0
	ldr r0, [r2]
	cmp r0, #0
	beq _08018376
	subs r0, #8
	adds r2, r3, r0
	ldrb r1, [r4, #0x11]
	lsls r0, r1, #3
	subs r0, r0, r1
	adds r2, r2, r0
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	beq _0801836E
	cmp r0, #1
	bne _08018376
	movs r1, #0
	ldrsb r1, [r2, r1]
	movs r0, #2
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08018376
_0801836E:
	movs r1, #3
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r2]
_08018376:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801837C: .4byte gEntitiesManagerTask

@ SA2: sub_80192A8
	thumb_func_start sub_8018380
sub_8018380: @ 0x08018380
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080183D0 @ =gEntitiesManagerTask
	ldr r0, [r0]
	cmp r0, #0
	beq _080183C8
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r3, [r0, #4]
	adds r3, #4
	ldm r3!, {r0}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, #4
	ldrb r2, [r4, #0xf]
	ldrb r1, [r4, #0x10]
	muls r0, r1, r0
	lsls r2, r2, #2
	lsls r0, r0, #2
	adds r0, r0, r3
	adds r2, r2, r0
	ldr r1, [r2]
	cmp r1, #0
	beq _080183C8
	subs r1, #8
	adds r1, r3, r1
	ldrb r2, [r4, #0x11]
	lsls r0, r2, #1
	adds r0, r0, r2
	adds r1, r1, r0
	movs r2, #3
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r1]
_080183C8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080183D0: .4byte gEntitiesManagerTask

@ SA2: sub_80192FC
	thumb_func_start sub_80183D4
sub_80183D4: @ 0x080183D4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08018424 @ =gEntitiesManagerTask
	ldr r0, [r0]
	cmp r0, #0
	beq _0801841C
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r3, [r0, #8]
	adds r3, #4
	ldm r3!, {r0}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, #4
	ldrb r2, [r4, #0xf]
	ldrb r1, [r4, #0x10]
	muls r0, r1, r0
	lsls r2, r2, #2
	lsls r0, r0, #2
	adds r0, r0, r3
	adds r2, r2, r0
	ldr r1, [r2]
	cmp r1, #0
	beq _0801841C
	subs r1, #8
	adds r1, r3, r1
	ldrb r2, [r4, #0x11]
	lsls r0, r2, #3
	subs r0, r0, r2
	adds r1, r1, r0
	movs r2, #3
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r1]
_0801841C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08018424: .4byte gEntitiesManagerTask

@ SA2: sub_8019350
	thumb_func_start sub_8018428
sub_8018428: @ 0x08018428
	push {lr}
	movs r1, #2
	ldrsh r3, [r0, r1]
	movs r2, #4
	ldrsh r1, [r0, r2]
	ldrb r2, [r0, #0xf]
	adds r0, r3, #0
	bl InitScatteringRings
	pop {r0}
	bx r0
	.align 2, 0

@ SA2: sub_8019368
	thumb_func_start sub_8018440
sub_8018440: @ 0x08018440
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0801848C @ =gEntitiesManagerTask
	ldr r0, [r0]
	cmp r0, #0
	beq _08018484
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r3, [r0]
	adds r3, #4
	ldm r3!, {r0}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, #4
	ldrb r2, [r4, #0xf]
	ldrb r1, [r4, #0x10]
	muls r0, r1, r0
	lsls r2, r2, #2
	lsls r0, r0, #2
	adds r0, r0, r3
	adds r2, r2, r0
	ldr r1, [r2]
	cmp r1, #0
	beq _08018484
	subs r1, #8
	adds r1, r3, r1
	ldrb r2, [r4, #0x11]
	lsls r0, r2, #3
	subs r0, r0, r2
	adds r1, r1, r0
	ldrb r0, [r4, #0x12]
	strb r0, [r1, #4]
_08018484:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801848C: .4byte gEntitiesManagerTask

@ SA2: VoidReturnSIOControl32 (but most code must be ifdefd out there)
@      void fn(union MultiSioData *msioData, u32 UNUSED someId)
	thumb_func_start sub_8018490
sub_8018490: @ 0x08018490
	adds r1, r0, #0
	ldr r0, _080184B4 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	ldrb r2, [r1, #0xf]
	cmp r0, r2
	bne _080184C6
	ldrb r0, [r1, #0x10]
	cmp r0, #0
	beq _080184BC
	ldr r0, _080184B8 @ =gPlayer
	ldr r1, [r0, #0x10]
	movs r2, #0x80
	lsls r2, r2, #9
	orrs r1, r2
	b _080184C4
	.align 2, 0
_080184B4: .4byte 0x04000128
_080184B8: .4byte gPlayer
_080184BC:
	ldr r0, _080184C8 @ =gPlayer
	ldr r1, [r0, #0x10]
	ldr r2, _080184CC @ =0xFFFEFFFF
	ands r1, r2
_080184C4:
	str r1, [r0, #0x10]
_080184C6:
	bx lr
	.align 2, 0
_080184C8: .4byte gPlayer
_080184CC: .4byte 0xFFFEFFFF

@ SA2: Not available
@      void fn(union MultiSioData *msioData, u32 UNUSED someId)
	thumb_func_start sub_80184D0
sub_80184D0: @ 0x080184D0
	push {r4, r5, r6, lr}
	lsls r1, r1, #0x18
	ldr r3, _0801852C @ =gUnknown_03004FF0
	ldrb r2, [r0, #0xf]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	ldrh r2, [r2, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	ldrb r3, [r0, #0x10]
	ldr r4, _08018530 @ =0x03000041
	adds r2, r2, r4
	strb r3, [r2]
	ldr r4, _08018534 @ =gMultiplayerPlayerTasks
	lsrs r1, r1, #0x16
	adds r1, r1, r4
	ldr r1, [r1]
	ldrh r1, [r1, #6]
	adds r6, r1, r5
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r3, #0
	ldrb r1, [r0, #0xf]
	lsls r2, r1
	ldr r1, [r6, #0x5c]
	bics r1, r2
	str r1, [r6, #0x5c]
	ldrb r1, [r0, #0x10]
	lsls r1, r1, #2
	adds r1, r1, r4
	ldr r1, [r1]
	ldrh r1, [r1, #6]
	adds r6, r1, r5
	ldrb r0, [r0, #0xf]
	lsls r3, r0
	ldr r0, [r6, #0x5c]
	orrs r0, r3
	str r0, [r6, #0x5c]
	movs r0, #0xa3
	bl m4aSongNumStart
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801852C: .4byte gUnknown_03004FF0
_08018530: .4byte 0x03000041
_08018534: .4byte gMultiplayerPlayerTasks

	thumb_func_start sub_8018538
sub_8018538: @ 0x08018538
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _080186DC @ =gMultiplayerMissingHeartbeats
	movs r5, #0
	strb r5, [r0, #3]
	strb r5, [r0, #2]
	strb r5, [r0, #1]
	strb r5, [r0]
	ldr r1, _080186E0 @ =gDispCnt
	ldr r2, _080186E4 @ =0x00001141
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _080186E8 @ =gBgCntRegs
	movs r3, #0
	mov r8, r3
	ldr r0, _080186EC @ =0x00001E03
	strh r0, [r1]
	ldr r0, _080186F0 @ =gBldRegs
	strh r5, [r0]
	strh r5, [r0, #4]
	ldr r0, _080186F4 @ =sub_801874C
	movs r1, #0x87
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #6
	mov sl, r2
	str r5, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r6, #0xc0
	lsls r6, r6, #0x12
	adds r6, r4, r6
	ldr r3, _080186F8 @ =0x03000200
	adds r0, r4, r3
	strh r5, [r0]
	ldr r1, _080186FC @ =0x03000203
	adds r0, r4, r1
	mov r2, r8
	strb r2, [r0]
	subs r3, #4
	adds r0, r4, r3
	str r5, [r0]
	adds r1, #0x10
	adds r0, r4, r1
	strb r2, [r0]
	ldr r3, _08018700 @ =0x03000040
	adds r2, r4, r3
	movs r0, #0xe8
	strh r0, [r2, #0x16]
	movs r7, #0x40
	strh r7, [r2, #0x18]
	ldr r0, _08018704 @ =0x06010000
	str r0, [r2, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r2, #0x1a]
	strh r5, [r2, #8]
	ldr r1, _08018708 @ =gUnknown_080BB488
	ldr r3, _0801870C @ =gLoadedSaveGame
	ldrb r0, [r3, #0x19]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xa]
	ldr r1, _08018710 @ =0x03000060
	adds r0, r4, r1
	mov r3, r8
	strb r3, [r0]
	strh r5, [r2, #0x14]
	strh r5, [r2, #0x1c]
	ldr r0, _08018714 @ =0x03000061
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08018718 @ =0x03000062
	adds r0, r4, r1
	movs r3, #0x10
	mov sb, r3
	mov r1, sb
	strb r1, [r0]
	ldr r3, _0801871C @ =0x03000065
	adds r0, r4, r3
	mov r1, r8
	strb r1, [r0]
	mov r3, sl
	str r3, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	ldr r0, _08018720 @ =0x03000070
	adds r2, r4, r0
	strh r5, [r2, #0x16]
	strh r7, [r2, #0x18]
	ldr r0, _08018724 @ =0x060102C0
	str r0, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r2, #0x1a]
	strh r5, [r2, #8]
	subs r0, #0xa4
	strh r0, [r2, #0xa]
	ldr r1, _08018728 @ =0x03000090
	adds r0, r4, r1
	mov r3, r8
	strb r3, [r0]
	strh r5, [r2, #0x14]
	strh r5, [r2, #0x1c]
	ldr r0, _0801872C @ =0x03000091
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08018730 @ =0x03000092
	adds r0, r4, r1
	mov r3, sb
	strb r3, [r0]
	adds r1, #3
	adds r0, r4, r1
	mov r3, r8
	strb r3, [r0]
	mov r0, sl
	str r0, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	ldr r1, _08018734 @ =0x030001C0
	adds r2, r4, r1
	movs r0, #0x78
	strh r0, [r2, #0x16]
	movs r0, #0x50
	strh r0, [r2, #0x18]
	ldr r0, [r6, #0x74]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r2, #4]
	movs r0, #0x80
	strh r0, [r2, #0x1a]
	strh r5, [r2, #8]
	ldr r0, _08018738 @ =0x00000389
	strh r0, [r2, #0xa]
	adds r1, #0x20
	adds r0, r4, r1
	mov r3, r8
	strb r3, [r0]
	strh r5, [r2, #0x14]
	strh r5, [r2, #0x1c]
	ldr r0, _0801873C @ =0x030001E1
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08018740 @ =0x030001E2
	adds r0, r4, r1
	mov r3, sb
	strb r3, [r0]
	adds r1, #3
	adds r0, r4, r1
	mov r3, r8
	strb r3, [r0]
	mov r0, sl
	str r0, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r6, #4]
	strh r5, [r6, #0xa]
	ldr r0, _08018744 @ =0x0600F000
	str r0, [r6, #0xc]
	strh r5, [r6, #0x18]
	strh r5, [r6, #0x1a]
	ldr r1, _0801870C @ =gLoadedSaveGame
	ldrb r0, [r1, #0x19]
	adds r0, #0x54
	strh r0, [r6, #0x1c]
	strh r5, [r6, #0x1e]
	strh r5, [r6, #0x20]
	strh r5, [r6, #0x22]
	strh r5, [r6, #0x24]
	movs r0, #0x1e
	strh r0, [r6, #0x26]
	movs r0, #0x14
	strh r0, [r6, #0x28]
	ldr r2, _08018748 @ =0x0300002A
	adds r4, r4, r2
	mov r3, r8
	strb r3, [r4]
	strh r5, [r6, #0x2e]
	adds r0, r6, #0
	bl DrawBackground
	movs r0, #6
	bl m4aSongNumStartOrChange
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080186DC: .4byte gMultiplayerMissingHeartbeats
_080186E0: .4byte gDispCnt
_080186E4: .4byte 0x00001141
_080186E8: .4byte gBgCntRegs
_080186EC: .4byte 0x00001E03
_080186F0: .4byte gBldRegs
_080186F4: .4byte sub_801874C
_080186F8: .4byte 0x03000200
_080186FC: .4byte 0x03000203
_08018700: .4byte 0x03000040
_08018704: .4byte 0x06010000
_08018708: .4byte gUnknown_080BB488
_0801870C: .4byte gLoadedSaveGame
_08018710: .4byte 0x03000060
_08018714: .4byte 0x03000061
_08018718: .4byte 0x03000062
_0801871C: .4byte 0x03000065
_08018720: .4byte 0x03000070
_08018724: .4byte 0x060102C0
_08018728: .4byte 0x03000090
_0801872C: .4byte 0x03000091
_08018730: .4byte 0x03000092
_08018734: .4byte 0x030001C0
_08018738: .4byte 0x00000389
_0801873C: .4byte 0x030001E1
_08018740: .4byte 0x030001E2
_08018744: .4byte 0x0600F000
_08018748: .4byte 0x0300002A

	thumb_func_start sub_801874C
sub_801874C: @ 0x0801874C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080187BC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r0, _080187C0 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _080187FE
	movs r3, #0
	ldr r0, _080187C4 @ =gMultiplayerConnections
	ldrb r1, [r0]
	movs r2, #1
	ands r1, r2
	adds r7, r0, #0
	cmp r1, #0
	beq _080187FE
	movs r5, #1
	ldr r2, _080187C8 @ =gMultiplayerMissingHeartbeats
_0801877E:
	ldr r1, _080187CC @ =gMultiSioStatusFlags
	adds r0, r5, #0
	lsls r0, r3
	ldr r4, [r1]
	ands r4, r0
	cmp r4, #0
	bne _080187E8
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _080187EC
	movs r0, #0
	ldr r1, _080187D0 @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _080187D4 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080187D8 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080187DC @ =sa2__gUnknown_03005390
	strb r4, [r0]
	ldr r1, _080187E0 @ =gVramGraphicsCopyCursor
	ldr r0, _080187E4 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl MultiPakCommunicationError
	b _08018AC2
	.align 2, 0
_080187BC: .4byte gCurTask
_080187C0: .4byte gGameMode
_080187C4: .4byte gMultiplayerConnections
_080187C8: .4byte gMultiplayerMissingHeartbeats
_080187CC: .4byte gMultiSioStatusFlags
_080187D0: .4byte 0x0000FFFF
_080187D4: .4byte gBackgroundsCopyQueueCursor
_080187D8: .4byte gBackgroundsCopyQueueIndex
_080187DC: .4byte sa2__gUnknown_03005390
_080187E0: .4byte gVramGraphicsCopyCursor
_080187E4: .4byte gVramGraphicsCopyQueueIndex
_080187E8:
	movs r0, #0
	strb r0, [r2]
_080187EC:
	adds r2, #1
	adds r3, #1
	cmp r3, #3
	bhi _080187FE
	ldrb r0, [r7]
	asrs r0, r3
	ands r0, r5
	cmp r0, #0
	bne _0801877E
_080187FE:
	ldr r5, _0801882C @ =gMultiSioRecv
	ldrh r0, [r5]
	cmp r0, #0x30
	bne _08018838
	ldr r0, _08018830 @ =0x00000203
	adds r4, r6, r0
	ldrb r0, [r4]
	ldrb r1, [r5, #2]
	cmp r0, r1
	beq _080188DC
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r0, _08018834 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080188EA
	ldrb r0, [r5, #2]
	strb r0, [r4]
	b _080188DC
	.align 2, 0
_0801882C: .4byte gMultiSioRecv
_08018830: .4byte 0x00000203
_08018834: .4byte gMultiSioStatusFlags
_08018838:
	cmp r0, #0x31
	bne _080188DC
	ldr r3, _0801887C @ =0x00000203
	adds r4, r6, r3
	ldrb r0, [r4]
	ldrb r1, [r5, #2]
	cmp r0, r1
	beq _08018852
	movs r0, #0x6c
	bl m4aSongNumStart
	ldrb r0, [r5, #2]
	strb r0, [r4]
_08018852:
	movs r0, #0x6a
	bl m4aSongNumStart
	ldrb r0, [r4]
	cmp r0, #0
	bne _08018894
	ldr r1, _08018880 @ =gGameMode
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08018884 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	ldr r2, _08018888 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _0801888C @ =0x00196225
	muls r0, r1, r0
	ldr r3, _08018890 @ =0x3C6EF35F
	adds r0, r0, r3
	b _080188AE
	.align 2, 0
_0801887C: .4byte 0x00000203
_08018880: .4byte gGameMode
_08018884: .4byte gCurTask
_08018888: .4byte gPseudoRandom
_0801888C: .4byte 0x00196225
_08018890: .4byte 0x3C6EF35F
_08018894:
	ldr r1, _080188C4 @ =gGameMode
	movs r0, #4
	strb r0, [r1]
	ldr r0, _080188C8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	ldr r2, _080188CC @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080188D0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080188D4 @ =0x3C6EF35F
	adds r0, r0, r1
_080188AE:
	str r0, [r2]
	ldr r1, _080188D8 @ =0x04000128
	ldr r1, [r1]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	adds r0, r0, r1
	movs r1, #3
	ands r0, r1
	bl CreateCharacterSelectionScreen
	b _08018AC2
	.align 2, 0
_080188C4: .4byte gGameMode
_080188C8: .4byte gCurTask
_080188CC: .4byte gPseudoRandom
_080188D0: .4byte 0x00196225
_080188D4: .4byte 0x3C6EF35F
_080188D8: .4byte 0x04000128
_080188DC:
	ldr r0, _08018934 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080188EA
	b _08018A08
_080188EA:
	movs r3, #1
	mov r8, r3
	movs r0, #0x30
	ldr r1, _08018938 @ =gMultiSioSend
	strh r0, [r1]
	ldr r3, _0801893C @ =0x00000213
	adds r0, r6, r3
	ldrb r5, [r0]
	cmp r5, #0
	bne _08018974
	ldr r0, _08018940 @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08018948
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r0, _08018944 @ =0x00000203
	adds r1, r6, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0801892A
	mov r3, r8
	strb r3, [r1]
_0801892A:
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r0, r6, r1
	str r5, [r0]
	b _08018974
	.align 2, 0
_08018934: .4byte gMultiSioStatusFlags
_08018938: .4byte gMultiSioSend
_0801893C: .4byte 0x00000213
_08018940: .4byte gRepeatedKeys
_08018944: .4byte 0x00000203
_08018948:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08018974
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r3, _080189F0 @ =0x00000203
	adds r1, r6, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0801896C
	movs r0, #0
	strb r0, [r1]
_0801896C:
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r0, r6, r1
	str r4, [r0]
_08018974:
	ldr r3, _080189F0 @ =0x00000203
	adds r0, r6, r3
	ldrb r0, [r0]
	ldr r1, _080189F4 @ =gMultiSioSend
	strb r0, [r1, #2]
	movs r4, #1
	ldr r1, _080189F8 @ =gMultiplayerConnections
	ldrb r0, [r1]
	asrs r0, r0, #1
	ands r0, r4
	adds r7, r1, #0
	adds r5, r6, #0
	adds r5, #0x40
	movs r3, #0x60
	adds r3, r3, r6
	mov sb, r3
	movs r1, #0x70
	adds r1, r1, r6
	mov sl, r1
	cmp r0, #0
	beq _080189C4
	ldr r0, _080189FC @ =gMultiSioRecv
	adds r1, r7, #0
	adds r2, r0, #0
	adds r2, #0x14
	movs r3, #1
_080189A8:
	ldrh r0, [r2]
	cmp r0, #0x30
	beq _080189B2
	movs r0, #0
	mov r8, r0
_080189B2:
	adds r2, #0x14
	adds r4, #1
	cmp r4, #3
	bhi _080189C4
	ldrb r0, [r1]
	asrs r0, r4
	ands r0, r3
	cmp r0, #0
	bne _080189A8
_080189C4:
	mov r1, r8
	cmp r1, #0
	beq _080189D6
	ldr r0, _08018A00 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080189E0
_080189D6:
	ldr r3, _08018A04 @ =0x00000213
	adds r0, r6, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08018A30
_080189E0:
	ldr r1, _08018A04 @ =0x00000213
	adds r0, r6, r1
	movs r1, #1
	strb r1, [r0]
	movs r0, #0x31
	ldr r3, _080189F4 @ =gMultiSioSend
	strh r0, [r3]
	b _08018A30
	.align 2, 0
_080189F0: .4byte 0x00000203
_080189F4: .4byte gMultiSioSend
_080189F8: .4byte gMultiplayerConnections
_080189FC: .4byte gMultiSioRecv
_08018A00: .4byte gPressedKeys
_08018A04: .4byte 0x00000213
_08018A08:
	movs r0, #0x30
	ldr r1, _08018AD0 @ =gMultiSioSend
	strh r0, [r1]
	movs r3, #0xe0
	lsls r3, r3, #1
	adds r5, r6, r3
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	adds r5, r6, #0
	adds r5, #0x40
	movs r0, #0x60
	adds r0, r0, r6
	mov sb, r0
	movs r1, #0x70
	adds r1, r1, r6
	mov sl, r1
_08018A30:
	ldr r1, _08018AD4 @ =gUnknown_080BB48C
	ldr r3, _08018AD8 @ =0x00000203
	adds r2, r6, r3
	ldr r0, _08018ADC @ =gLoadedSaveGame
	ldrb r0, [r0, #0x19]
	lsls r0, r0, #1
	ldrb r3, [r2]
	adds r0, r0, r3
	adds r0, r0, r1
	ldrb r7, [r0]
	movs r0, #0xfe
	lsls r0, r0, #1
	adds r4, r6, r0
	ldr r0, [r4]
	adds r0, #0x80
	str r0, [r4]
	lsls r1, r7, #8
	cmp r0, r1
	ble _08018A5A
	subs r0, r0, r1
	str r0, [r4]
_08018A5A:
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x40
	strh r0, [r5, #0x18]
	ldrb r0, [r2]
	mov r1, sb
	strb r0, [r1]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	ldr r0, [r4]
	asrs r0, r0, #8
	subs r4, r0, r7
	movs r0, #0xe8
	subs r0, r0, r4
	cmp r0, #0
	ble _08018A9E
	movs r3, #0xe8
	mov sb, r3
	movs r0, #0xe8
	mov r8, r0
_08018A88:
	mov r1, sb
	subs r0, r1, r4
	strh r0, [r5, #0x16]
	adds r0, r5, #0
	bl DisplaySprite
	adds r4, r4, r7
	mov r3, r8
	subs r0, r3, r4
	cmp r0, #0
	bgt _08018A88
_08018A9E:
	mov r5, sl
	ldr r1, _08018AD8 @ =0x00000203
	adds r0, r6, r1
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x36
	strh r0, [r5, #0x18]
	movs r4, #0
_08018AB2:
	lsls r0, r4, #5
	strh r0, [r5, #0x16]
	adds r0, r5, #0
	bl DisplaySprite
	adds r4, #1
	cmp r4, #7
	bls _08018AB2
_08018AC2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018AD0: .4byte gMultiSioSend
_08018AD4: .4byte gUnknown_080BB48C
_08018AD8: .4byte 0x00000203
_08018ADC: .4byte gLoadedSaveGame

	thumb_func_start sub_8018AE0
sub_8018AE0: @ 0x08018AE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08018DF8 @ =0x06010000
	str r0, [sp, #4]
	ldr r0, _08018DFC @ =gMultiplayerMissingHeartbeats
	movs r4, #0
	strb r4, [r0, #3]
	strb r4, [r0, #2]
	strb r4, [r0, #1]
	strb r4, [r0]
	ldr r1, _08018E00 @ =gDispCnt
	movs r2, #0x9a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08018E04 @ =gBgCntRegs
	ldr r0, _08018E08 @ =0x00001E03
	strh r0, [r1]
	ldr r0, _08018E0C @ =0x00001F06
	strh r0, [r1, #2]
	ldr r0, _08018E10 @ =sub_8018ECC
	movs r1, #0x92
	lsls r1, r1, #2
	str r4, [sp]
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r8, r0
	add r8, r5
	ldr r1, _08018E14 @ =0x03000234
	adds r0, r5, r1
	strh r4, [r0]
	ldr r2, _08018E18 @ =0x03000236
	adds r0, r5, r2
	strh r4, [r0]
	adds r1, #4
	adds r0, r5, r1
	strh r4, [r0]
	adds r2, #0x11
	adds r0, r5, r2
	movs r1, #0
	strb r1, [r0]
	subs r2, #1
	adds r0, r5, r2
	movs r1, #1
	strb r1, [r0]
	subs r2, #0x16
	adds r0, r5, r2
	str r4, [r0]
	ldr r1, _08018E1C @ =0x0300023A
	adds r0, r5, r1
	strh r4, [r0]
	adds r2, #0xc
	adds r0, r5, r2
	strh r4, [r0]
	adds r1, #4
	adds r0, r5, r1
	strh r4, [r0]
	adds r2, #4
	adds r0, r5, r2
	strh r4, [r0]
	ldr r0, _08018E20 @ =0x03000080
	adds r2, r5, r0
	strh r4, [r2, #0x16]
	movs r1, #0x19
	strh r1, [r2, #0x18]
	ldr r0, [sp, #4]
	str r0, [r2, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r2, #0x1a]
	strh r4, [r2, #8]
	subs r0, #0x42
	strh r0, [r2, #0xa]
	ldr r1, _08018E24 @ =0x030000A0
	adds r0, r5, r1
	movs r1, #2
	strb r1, [r0]
	strh r4, [r2, #0x14]
	strh r4, [r2, #0x1c]
	ldr r0, _08018E28 @ =0x030000A1
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08018E2C @ =0x030000A2
	adds r0, r5, r1
	movs r1, #0x10
	mov sb, r1
	mov r1, sb
	strb r1, [r0]
	ldr r1, _08018E30 @ =0x030000A5
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	str r4, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	movs r0, #0xd0
	lsls r0, r0, #2
	ldr r2, [sp, #4]
	adds r2, r2, r0
	str r2, [sp, #4]
	ldr r0, _08018E34 @ =0x030000B0
	adds r2, r5, r0
	strh r4, [r2, #0x16]
	movs r0, #0xe
	strh r0, [r2, #0x18]
	ldr r1, [sp, #4]
	str r1, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r2, #0x1a]
	strh r4, [r2, #8]
	subs r0, #0xa4
	strh r0, [r2, #0xa]
	ldr r1, _08018E38 @ =0x030000D0
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	strh r4, [r2, #0x14]
	strh r4, [r2, #0x1c]
	ldr r0, _08018E3C @ =0x030000D1
	adds r1, r5, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08018E40 @ =0x030000D2
	adds r0, r5, r1
	mov r1, sb
	strb r1, [r0]
	ldr r1, _08018E44 @ =0x030000D5
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	str r4, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	movs r2, #0xc0
	lsls r2, r2, #1
	mov sl, r2
	ldr r0, [sp, #4]
	add r0, sl
	str r0, [sp, #4]
	ldr r1, _08018E48 @ =0x030000E0
	adds r2, r5, r1
	movs r0, #0x35
	strh r0, [r2, #0x16]
	movs r6, #0x58
	strh r6, [r2, #0x18]
	ldr r0, [sp, #4]
	str r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #3
	strh r1, [r2, #0x1a]
	strh r4, [r2, #8]
	ldr r7, _08018E4C @ =0x0000037B
	strh r7, [r2, #0xa]
	ldr r1, _08018E50 @ =0x03000100
	adds r0, r5, r1
	movs r1, #2
	strb r1, [r0]
	strh r4, [r2, #0x14]
	strh r4, [r2, #0x1c]
	ldr r0, _08018E54 @ =0x03000101
	adds r1, r5, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08018E58 @ =0x03000102
	adds r0, r5, r1
	mov r1, sb
	strb r1, [r0]
	ldr r1, _08018E5C @ =0x03000105
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	str r4, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	ldr r2, [sp, #4]
	add r2, sl
	str r2, [sp, #4]
	ldr r0, _08018E60 @ =0x03000110
	adds r2, r5, r0
	movs r0, #0xb7
	strh r0, [r2, #0x16]
	strh r6, [r2, #0x18]
	ldr r1, [sp, #4]
	str r1, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r2, #0x1a]
	strh r4, [r2, #8]
	strh r7, [r2, #0xa]
	ldr r0, _08018E64 @ =0x03000130
	adds r1, r5, r0
	movs r0, #3
	strb r0, [r1]
	strh r4, [r2, #0x14]
	strh r4, [r2, #0x1c]
	ldr r0, _08018E68 @ =0x03000131
	adds r1, r5, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08018E6C @ =0x03000132
	adds r0, r5, r1
	mov r1, sb
	strb r1, [r0]
	ldr r1, _08018E70 @ =0x03000135
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	str r4, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	ldr r2, [sp, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r2, r2, r0
	str r2, [sp, #4]
	ldr r1, _08018E74 @ =0x03000140
	adds r2, r5, r1
	movs r0, #0x19
	strh r0, [r2, #0x16]
	movs r0, #0x49
	strh r0, [r2, #0x18]
	ldr r1, [sp, #4]
	str r1, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r2, #0x1a]
	strh r4, [r2, #8]
	subs r0, #0xa6
	strh r0, [r2, #0xa]
	ldr r1, _08018E78 @ =0x03000160
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	strh r4, [r2, #0x14]
	strh r4, [r2, #0x1c]
	ldr r0, _08018E7C @ =0x03000161
	adds r1, r5, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08018E80 @ =0x03000162
	adds r0, r5, r1
	mov r1, sb
	strb r1, [r0]
	ldr r1, _08018E84 @ =0x03000165
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	str r4, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	ldr r2, [sp, #4]
	movs r0, #0xe0
	lsls r0, r0, #2
	adds r2, r2, r0
	str r2, [sp, #4]
	ldr r1, _08018E88 @ =0x03000200
	adds r2, r5, r1
	movs r0, #0x78
	strh r0, [r2, #0x16]
	movs r0, #0x50
	strh r0, [r2, #0x18]
	ldr r0, [sp, #4]
	str r0, [r2, #4]
	movs r0, #0x80
	strh r0, [r2, #0x1a]
	strh r4, [r2, #8]
	ldr r0, _08018E8C @ =0x00000389
	strh r0, [r2, #0xa]
	adds r1, #0x20
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	strh r4, [r2, #0x14]
	strh r4, [r2, #0x1c]
	ldr r0, _08018E90 @ =0x03000221
	adds r1, r5, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08018E94 @ =0x03000222
	adds r0, r5, r1
	mov r1, sb
	strb r1, [r0]
	ldr r1, _08018E98 @ =0x03000225
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	movs r0, #0xc0
	lsls r0, r0, #0x13
	mov r1, r8
	str r0, [r1, #4]
	strh r4, [r1, #0xa]
	ldr r0, _08018E9C @ =0x0600F000
	str r0, [r1, #0xc]
	strh r4, [r1, #0x18]
	strh r4, [r1, #0x1a]
	movs r0, #0x51
	strh r0, [r1, #0x1c]
	strh r4, [r1, #0x1e]
	strh r4, [r1, #0x20]
	strh r4, [r1, #0x22]
	strh r4, [r1, #0x24]
	movs r0, #0x1e
	strh r0, [r1, #0x26]
	movs r0, #0x14
	strh r0, [r1, #0x28]
	ldr r2, _08018EA0 @ =0x0300002A
	adds r0, r5, r2
	movs r1, #0
	strb r1, [r0]
	mov r2, r8
	strh r4, [r2, #0x2e]
	mov r0, r8
	bl DrawBackground
	ldr r1, _08018EA4 @ =0x03000040
	adds r0, r5, r1
	ldr r1, _08018EA8 @ =0x06004000
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _08018EAC @ =0x0600F800
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	movs r1, #0x52
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	ldr r2, _08018EB0 @ =0x0300006A
	adds r5, r5, r2
	movs r1, #0
	strb r1, [r5]
	movs r2, #1
	strh r2, [r0, #0x2e]
	bl DrawBackground
	movs r0, #3     @ MUS_CHARACTER_SELECTION
	bl m4aSongNumStartOrChange
	ldr r0, _08018EB4 @ =gRepeatedKeys
	strh r4, [r0]
	ldr r0, _08018EB8 @ =gPressedKeys
	strh r4, [r0]
	ldr r0, _08018EBC @ =gInput
	strh r4, [r0]
	ldr r2, _08018EC0 @ =gWinRegs
	movs r0, #0x3f
	strh r0, [r2, #0xa]
	ldr r1, _08018EC4 @ =gBldRegs
	ldr r0, _08018EC8 @ =0x00003F46
	strh r0, [r1]
	movs r0, #0xa1
	lsls r0, r0, #4
	strh r0, [r1, #2]
	movs r0, #0xa0
	strh r0, [r2, #4]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018DF8: .4byte 0x06010000
_08018DFC: .4byte gMultiplayerMissingHeartbeats
_08018E00: .4byte gDispCnt
_08018E04: .4byte gBgCntRegs
_08018E08: .4byte 0x00001E03
_08018E0C: .4byte 0x00001F06
_08018E10: .4byte sub_8018ECC
_08018E14: .4byte 0x03000234
_08018E18: .4byte 0x03000236
_08018E1C: .4byte 0x0300023A
_08018E20: .4byte 0x03000080
_08018E24: .4byte 0x030000A0
_08018E28: .4byte 0x030000A1
_08018E2C: .4byte 0x030000A2
_08018E30: .4byte 0x030000A5
_08018E34: .4byte 0x030000B0
_08018E38: .4byte 0x030000D0
_08018E3C: .4byte 0x030000D1
_08018E40: .4byte 0x030000D2
_08018E44: .4byte 0x030000D5
_08018E48: .4byte 0x030000E0
_08018E4C: .4byte 0x0000037B
_08018E50: .4byte 0x03000100
_08018E54: .4byte 0x03000101
_08018E58: .4byte 0x03000102
_08018E5C: .4byte 0x03000105
_08018E60: .4byte 0x03000110
_08018E64: .4byte 0x03000130
_08018E68: .4byte 0x03000131
_08018E6C: .4byte 0x03000132
_08018E70: .4byte 0x03000135
_08018E74: .4byte 0x03000140
_08018E78: .4byte 0x03000160
_08018E7C: .4byte 0x03000161
_08018E80: .4byte 0x03000162
_08018E84: .4byte 0x03000165
_08018E88: .4byte 0x03000200
_08018E8C: .4byte 0x00000389
_08018E90: .4byte 0x03000221
_08018E94: .4byte 0x03000222
_08018E98: .4byte 0x03000225
_08018E9C: .4byte 0x0600F000
_08018EA0: .4byte 0x0300002A
_08018EA4: .4byte 0x03000040
_08018EA8: .4byte 0x06004000
_08018EAC: .4byte 0x0600F800
_08018EB0: .4byte 0x0300006A
_08018EB4: .4byte gRepeatedKeys
_08018EB8: .4byte gPressedKeys
_08018EBC: .4byte gInput
_08018EC0: .4byte gWinRegs
_08018EC4: .4byte gBldRegs
_08018EC8: .4byte 0x00003F46

	thumb_func_start sub_8018ECC
sub_8018ECC: @ 0x08018ECC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08018F3C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r0, _08018F40 @ =0x03000234
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldr r0, _08018F44 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _08018F7C
	movs r3, #0
	ldr r0, _08018F48 @ =gMultiplayerConnections
	ldrb r1, [r0]
	movs r2, #1
	ands r1, r2
	mov ip, r0
	cmp r1, #0
	beq _08018F7C
	movs r5, #1
	ldr r2, _08018F4C @ =gMultiplayerMissingHeartbeats
_08018F08:
	ldr r1, _08018F50 @ =gMultiSioStatusFlags
	adds r0, r5, #0
	lsls r0, r3
	ldr r4, [r1]
	ands r4, r0
	cmp r4, #0
	bne _08018F64
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _08018F68
	movs r0, #0
	ldr r1, _08018F54 @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _08018F58 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08018F5C @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _08018F60 @ =sa2__gUnknown_03005390
	strb r4, [r0]
	b _080190AC
	.align 2, 0
_08018F3C: .4byte gCurTask
_08018F40: .4byte 0x03000234
_08018F44: .4byte gGameMode
_08018F48: .4byte gMultiplayerConnections
_08018F4C: .4byte gMultiplayerMissingHeartbeats
_08018F50: .4byte gMultiSioStatusFlags
_08018F54: .4byte 0x0000FFFF
_08018F58: .4byte gBackgroundsCopyQueueCursor
_08018F5C: .4byte gBackgroundsCopyQueueIndex
_08018F60: .4byte sa2__gUnknown_03005390
_08018F64:
	movs r0, #0
	strb r0, [r2]
_08018F68:
	adds r2, #1
	adds r3, #1
	cmp r3, #3
	bhi _08018F7C
	mov r1, ip
	ldrb r0, [r1]
	asrs r0, r3
	ands r0, r5
	cmp r0, #0
	bne _08018F08
_08018F7C:
	ldr r6, _08018FAC @ =gMultiSioRecv
	ldrh r2, [r6]
	cmp r2, #0x34
	bne _08018FB8
	ldr r2, _08018FB0 @ =0x00000246
	adds r4, r7, r2
	ldrb r0, [r4]
	ldrb r3, [r6, #2]
	cmp r0, r3
	bne _08018F92
	b _080190D4
_08018F92:
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r0, _08018FB4 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08018FA6
	b _080190E0
_08018FA6:
	ldrb r0, [r6, #2]
	strb r0, [r4]
	b _080190D4
	.align 2, 0
_08018FAC: .4byte gMultiSioRecv
_08018FB0: .4byte 0x00000246
_08018FB4: .4byte gMultiSioStatusFlags
_08018FB8:
	cmp r2, #0x35
	bne _08019092
	movs r3, #1
	ldr r0, _08018FFC @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08019004
	movs r5, #1
	ldr r1, _08019000 @ =gMultiplayerConnections
	ldrb r0, [r1]
	asrs r0, r0, #1
	ands r0, r5
	cmp r0, #0
	beq _08019008
	adds r2, r6, #0
	adds r2, #0x14
	movs r4, #1
_08018FDE:
	ldrh r0, [r2]
	cmp r0, #0x34
	bhi _08018FE6
	movs r3, #0
_08018FE6:
	adds r2, #0x14
	adds r5, #1
	cmp r5, #3
	bgt _08019008
	ldrb r0, [r1]
	asrs r0, r5
	ands r0, r4
	cmp r0, #0
	bne _08018FDE
	b _08019008
	.align 2, 0
_08018FFC: .4byte gMultiSioStatusFlags
_08019000: .4byte gMultiplayerConnections
_08019004:
	ldr r4, _0801903C @ =gMultiSioSend
	strh r2, [r4]
_08019008:
	cmp r3, #0
	beq _080190D4
	ldr r0, _08019040 @ =0x00000246
	adds r4, r7, r0
	ldrb r0, [r4]
	ldrb r1, [r6, #2]
	cmp r0, r1
	beq _08019022
	movs r0, #0x6c
	bl m4aSongNumStart
	ldrb r0, [r6, #2]
	strb r0, [r4]
_08019022:
	movs r0, #0x6a
	bl m4aSongNumStart
	ldrb r0, [r4]
	cmp r0, #0
	bne _08019060
	ldr r1, _08019044 @ =gGameMode
	ldrb r0, [r1]
	cmp r0, #2
	bne _08019048
	movs r0, #3
	b _0801904A
	.align 2, 0
_0801903C: .4byte gMultiSioSend
_08019040: .4byte 0x00000246
_08019044: .4byte gGameMode
_08019048:
	movs r0, #5
_0801904A:
	strb r0, [r1]
	ldr r0, _08019058 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801905C @ =sub_8019348
	str r0, [r1, #8]
	b _0801933A
	.align 2, 0
_08019058: .4byte gCurTask
_0801905C: .4byte sub_8019348
_08019060:
	ldr r1, _08019084 @ =gGameMode
	ldrb r0, [r1]
	cmp r0, #2
	beq _0801906A
	movs r0, #4
_0801906A:
	strb r0, [r1]
	ldr r0, _08019088 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	ldr r0, _08019084 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #2
	bne _0801908C
	movs r0, #0
	bl sub_8061948
	b _0801933A
	.align 2, 0
_08019084: .4byte gGameMode
_08019088: .4byte gCurTask
_0801908C:
	bl sub_8062F90
	b _0801933A
_08019092:
	cmp r2, #0x35
	bls _080190D4
	ldr r1, _080190BC @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080190C0 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080190C4 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080190C8 @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
_080190AC:
	ldr r1, _080190CC @ =gVramGraphicsCopyCursor
	ldr r0, _080190D0 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl MultiPakCommunicationError
	b _0801933A
	.align 2, 0
_080190BC: .4byte 0x0000FFFF
_080190C0: .4byte gBackgroundsCopyQueueCursor
_080190C4: .4byte gBackgroundsCopyQueueIndex
_080190C8: .4byte sa2__gUnknown_03005390
_080190CC: .4byte gVramGraphicsCopyCursor
_080190D0: .4byte gVramGraphicsCopyQueueIndex
_080190D4:
	ldr r0, _08019108 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080191B8
_080190E0:
	movs r4, #1
	ldr r2, _0801910C @ =gMultiSioSend
	mov r8, r2
	movs r0, #0x34
	strh r0, [r2]
	ldr r3, _08019110 @ =0x00000247
	adds r0, r7, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801912C
	ldr r0, _08019114 @ =gInput
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801911C
	ldr r1, _08019118 @ =0x00000246
	adds r0, r7, r1
	strb r4, [r0]
	b _0801912C
	.align 2, 0
_08019108: .4byte gMultiSioStatusFlags
_0801910C: .4byte gMultiSioSend
_08019110: .4byte 0x00000247
_08019114: .4byte gInput
_08019118: .4byte 0x00000246
_0801911C:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801912C
	ldr r2, _080191A4 @ =0x00000246
	adds r1, r7, r2
	movs r0, #0
	strb r0, [r1]
_0801912C:
	ldr r3, _080191A4 @ =0x00000246
	adds r0, r7, r3
	ldrb r0, [r0]
	mov r1, r8
	strb r0, [r1, #2]
	movs r5, #1
	ldr r1, _080191A8 @ =gMultiplayerConnections
	ldrb r0, [r1]
	asrs r0, r0, #1
	ands r0, r5
	movs r2, #0x80
	adds r2, r2, r7
	mov sb, r2
	movs r3, #0xb0
	adds r3, r3, r7
	mov sl, r3
	cmp r0, #0
	beq _08019172
	ldr r0, _080191AC @ =gMultiSioRecv
	adds r2, r0, #0
	adds r2, #0x14
	movs r3, #1
_08019158:
	ldrh r0, [r2]
	cmp r0, #0x33
	bhi _08019160
	movs r4, #0
_08019160:
	adds r2, #0x14
	adds r5, #1
	cmp r5, #3
	bgt _08019172
	ldrb r0, [r1]
	asrs r0, r5
	ands r0, r3
	cmp r0, #0
	bne _08019158
_08019172:
	cmp r4, #0
	beq _08019182
	ldr r0, _080191B0 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801918C
_08019182:
	ldr r4, _080191B4 @ =0x00000247
	adds r0, r7, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _080191DC
_0801918C:
	movs r0, #0x35
	mov r1, r8
	strh r0, [r1]
	ldr r2, _080191A4 @ =0x00000246
	adds r0, r7, r2
	ldrb r0, [r0]
	strb r0, [r1, #2]
	ldr r3, _080191B4 @ =0x00000247
	adds r1, r7, r3
	movs r0, #1
	strb r0, [r1]
	b _080191DC
	.align 2, 0
_080191A4: .4byte 0x00000246
_080191A8: .4byte gMultiplayerConnections
_080191AC: .4byte gMultiSioRecv
_080191B0: .4byte gPressedKeys
_080191B4: .4byte 0x00000247
_080191B8:
	ldr r4, _08019220 @ =gMultiSioSend
	movs r0, #0x34
	strh r0, [r4]
	movs r0, #0x80
	lsls r0, r0, #2
	adds r6, r7, r0
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	movs r1, #0x80
	adds r1, r1, r7
	mov sb, r1
	movs r2, #0xb0
	adds r2, r2, r7
	mov sl, r2
_080191DC:
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r6, r7, r3
	ldr r4, _08019224 @ =0x00000246
	adds r3, r7, r4
	ldrb r0, [r3]
	lsls r1, r0, #5
	adds r1, r1, r0
	lsls r1, r1, #2
	subs r1, r1, r0
	adds r1, #0x19
	strh r1, [r6, #0x16]
	ldr r0, _08019228 @ =0x00000236
	adds r1, r7, r0
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #3
	cmp r0, r2
	ble _0801920C
	strh r2, [r1]
_0801920C:
	ldrb r0, [r3]
	cmp r0, #0
	bne _0801922C
	movs r1, #0x8e
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrh r1, [r0]
	adds r1, #1
	b _08019236
	.align 2, 0
_08019220: .4byte gMultiSioSend
_08019224: .4byte 0x00000246
_08019228: .4byte 0x00000236
_0801922C:
	movs r4, #0x8e
	lsls r4, r4, #2
	adds r0, r7, r4
	ldrh r1, [r0]
	subs r1, #1
_08019236:
	ldr r3, _080192D8 @ =0x000003FF
	adds r2, r3, #0
	ands r1, r2
	strh r1, [r0]
	ldr r4, _080192DC @ =0x00000236
	adds r1, r7, r4
	movs r0, #0
	ldrsh r3, [r1, r0]
	ldr r5, _080192E0 @ =gSineTable
	adds r4, #2
	adds r2, r7, r4
	ldrh r0, [r2]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r3, r0
	asrs r0, r0, #8
	ldr r3, _080192E4 @ =0x0000023A
	adds r4, r7, r3
	strh r0, [r4]
	movs r0, #0
	ldrsh r1, [r1, r0]
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r1, r0
	asrs r0, r0, #8
	movs r1, #0x8f
	lsls r1, r1, #2
	adds r3, r7, r1
	strh r0, [r3]
	ldr r2, _080192E8 @ =0x0000023E
	adds r1, r7, r2
	ldrh r0, [r4]
	ldrh r4, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	movs r0, #0x90
	lsls r0, r0, #2
	adds r2, r7, r0
	ldrh r0, [r3]
	ldrh r3, [r2]
	adds r0, r0, r3
	strh r0, [r2]
	ldr r3, _080192EC @ =gBgScrollRegs
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	strh r0, [r3, #4]
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	strh r0, [r3, #6]
	movs r4, #0x8c
	lsls r4, r4, #2
	adds r2, r7, r4
	ldr r3, [r2]
	adds r1, r3, #0
	adds r1, #0x80
	str r1, [r2]
	movs r0, #0x88
	lsls r0, r0, #8
	cmp r1, r0
	ble _080192CC
	ldr r1, _080192F0 @ =0xFFFF7880
	adds r0, r3, r1
	str r0, [r2]
_080192CC:
	mov r6, sb
	ldr r0, [r2]
	rsbs r0, r0, #0
	lsls r0, r0, #8
	lsrs r4, r0, #0x10
	b _08019304
	.align 2, 0
_080192D8: .4byte 0x000003FF
_080192DC: .4byte 0x00000236
_080192E0: .4byte gSineTable
_080192E4: .4byte 0x0000023A
_080192E8: .4byte 0x0000023E
_080192EC: .4byte gBgScrollRegs
_080192F0: .4byte 0xFFFF7880
_080192F4:
	strh r4, [r6, #0x16]
	movs r2, #0x88
	lsls r2, r2, #0x10
	adds r0, r1, r2
	lsrs r4, r0, #0x10
	adds r0, r6, #0
	bl DisplaySprite
_08019304:
	lsls r1, r4, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0xef
	ble _080192F4
	adds r4, r7, #0
	adds r4, #0xe0
	movs r5, #2
_08019312:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r4, #0x30
	subs r5, #1
	cmp r5, #0
	bge _08019312
	mov r6, sl
	movs r5, #0
_0801932A:
	lsls r0, r5, #5
	strh r0, [r6, #0x16]
	adds r0, r6, #0
	bl DisplaySprite
	adds r5, #1
	cmp r5, #7
	ble _0801932A
_0801933A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8019348
sub_8019348: @ 0x08019348
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r6, _08019634 @ =0x06010000
	ldr r1, _08019638 @ =gCurTask
	ldr r0, [r1]
	ldrh r4, [r0, #6]
	ldr r0, _0801963C @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	movs r1, #1
	ands r1, r0
	ldr r2, _08019640 @ =0x03000246
	adds r0, r4, r2
	movs r5, #0
	strb r1, [r0]
	ldr r3, _08019644 @ =0x03000247
	adds r0, r4, r3
	strb r5, [r0]
	ldr r0, _08019648 @ =0x03000080
	adds r2, r4, r0
	movs r1, #0
	mov sb, r1
	strh r5, [r2, #0x16]
	movs r0, #0x19
	strh r0, [r2, #0x18]
	str r6, [r2, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r2, #0x1a]
	strh r5, [r2, #8]
	ldr r3, _0801964C @ =0x0000037E
	strh r3, [r2, #0xa]
	ldr r0, _08019650 @ =0x030000A0
	adds r1, r4, r0
	movs r0, #3
	strb r0, [r1]
	strh r5, [r2, #0x14]
	strh r5, [r2, #0x1c]
	ldr r3, _08019654 @ =0x030000A1
	adds r1, r4, r3
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08019658 @ =0x030000A2
	adds r0, r4, r1
	movs r3, #0x10
	strb r3, [r0]
	adds r1, #3
	adds r0, r4, r1
	mov r3, sb
	strb r3, [r0]
	str r5, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	movs r0, #0x80
	lsls r0, r0, #3
	mov r8, r0
	add r6, r8
	ldr r1, _0801965C @ =0x030000B0
	adds r2, r4, r1
	strh r5, [r2, #0x16]
	movs r0, #0xe
	strh r0, [r2, #0x18]
	str r6, [r2, #4]
	mov r3, r8
	strh r3, [r2, #0x1a]
	strh r5, [r2, #8]
	movs r0, #0xd7
	lsls r0, r0, #2
	strh r0, [r2, #0xa]
	adds r1, #0x20
	adds r0, r4, r1
	mov r3, sb
	strb r3, [r0]
	strh r5, [r2, #0x14]
	strh r5, [r2, #0x1c]
	ldr r0, _08019660 @ =0x030000D1
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08019664 @ =0x030000D2
	adds r0, r4, r1
	movs r3, #0x10
	strb r3, [r0]
	adds r1, #3
	adds r0, r4, r1
	mov r3, sb
	strb r3, [r0]
	str r5, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r6, r6, r0
	ldr r0, _08019668 @ =0x030000E0
	adds r2, r4, r0
	movs r1, #0x2b
	mov sl, r1
	mov r3, sl
	strh r3, [r2, #0x16]
	movs r0, #0x3d
	strh r0, [r2, #0x18]
	str r6, [r2, #4]
	mov r1, r8
	strh r1, [r2, #0x1a]
	strh r5, [r2, #8]
	ldr r3, _0801964C @ =0x0000037E
	strh r3, [r2, #0xa]
	ldr r0, _0801966C @ =0x03000100
	adds r1, r4, r0
	movs r0, #5
	strb r0, [r1]
	strh r5, [r2, #0x14]
	strh r5, [r2, #0x1c]
	ldr r3, _08019670 @ =0x03000101
	adds r1, r4, r3
	subs r0, #6
	strb r0, [r1]
	ldr r1, _08019674 @ =0x03000102
	adds r0, r4, r1
	movs r3, #0x10
	strb r3, [r0]
	adds r1, #3
	adds r0, r4, r1
	mov r3, sb
	strb r3, [r0]
	str r5, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	movs r7, #0x80
	lsls r7, r7, #1
	adds r6, r6, r7
	ldr r0, _08019678 @ =0x03000110
	adds r2, r4, r0
	mov r1, sl
	strh r1, [r2, #0x16]
	movs r0, #0x55
	strh r0, [r2, #0x18]
	str r6, [r2, #4]
	mov r3, r8
	strh r3, [r2, #0x1a]
	strh r5, [r2, #8]
	ldr r0, _0801964C @ =0x0000037E
	strh r0, [r2, #0xa]
	ldr r3, _0801967C @ =0x03000130
	adds r1, r4, r3
	movs r0, #6
	strb r0, [r1]
	strh r5, [r2, #0x14]
	strh r5, [r2, #0x1c]
	ldr r0, _08019680 @ =0x03000131
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08019684 @ =0x03000132
	adds r0, r4, r1
	movs r3, #0x10
	strb r3, [r0]
	adds r1, #3
	adds r0, r4, r1
	mov r3, sb
	strb r3, [r0]
	str r5, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	adds r6, r6, r7
	ldr r0, _08019688 @ =0x03000140
	adds r2, r4, r0
	mov r1, sl
	strh r1, [r2, #0x16]
	movs r0, #0x6d
	strh r0, [r2, #0x18]
	str r6, [r2, #4]
	mov r3, r8
	strh r3, [r2, #0x1a]
	strh r5, [r2, #8]
	ldr r0, _0801964C @ =0x0000037E
	strh r0, [r2, #0xa]
	ldr r3, _0801968C @ =0x03000160
	adds r1, r4, r3
	movs r0, #7
	strb r0, [r1]
	strh r5, [r2, #0x14]
	strh r5, [r2, #0x1c]
	ldr r0, _08019690 @ =0x03000161
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08019694 @ =0x03000162
	adds r0, r4, r1
	movs r3, #0x10
	strb r3, [r0]
	adds r1, #3
	adds r0, r4, r1
	mov r3, sb
	strb r3, [r0]
	str r5, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	adds r6, r6, r7
	ldr r0, _08019698 @ =0x03000170
	adds r2, r4, r0
	mov r1, sl
	strh r1, [r2, #0x16]
	movs r0, #0x85
	strh r0, [r2, #0x18]
	str r6, [r2, #4]
	mov r3, r8
	strh r3, [r2, #0x1a]
	strh r5, [r2, #8]
	ldr r0, _0801964C @ =0x0000037E
	strh r0, [r2, #0xa]
	ldr r3, _0801969C @ =0x03000190
	adds r1, r4, r3
	movs r0, #8
	strb r0, [r1]
	strh r5, [r2, #0x14]
	strh r5, [r2, #0x1c]
	ldr r0, _080196A0 @ =0x03000191
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _080196A4 @ =0x03000192
	adds r0, r4, r1
	movs r3, #0x10
	strb r3, [r0]
	adds r1, #3
	adds r0, r4, r1
	mov r3, sb
	strb r3, [r0]
	str r5, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	adds r6, r6, r7
	ldr r0, _080196A8 @ =0x030001A0
	adds r2, r4, r0
	movs r0, #0x4b
	strh r0, [r2, #0x16]
	movs r0, #0x35
	strh r0, [r2, #0x18]
	str r6, [r2, #4]
	mov r1, r8
	strh r1, [r2, #0x1a]
	strh r5, [r2, #8]
	ldr r0, _080196AC @ =0x00000359
	strh r0, [r2, #0xa]
	ldr r3, _080196B0 @ =0x030001C0
	adds r0, r4, r3
	mov r1, sb
	strb r1, [r0]
	strh r5, [r2, #0x14]
	strh r5, [r2, #0x1c]
	adds r3, #1
	adds r1, r4, r3
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _080196B4 @ =0x030001C2
	adds r0, r4, r1
	movs r3, #0x10
	strb r3, [r0]
	adds r1, #3
	adds r0, r4, r1
	mov r3, sb
	strb r3, [r0]
	str r5, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	adds r6, #0x80
	ldr r0, _080196B8 @ =0x030001D0
	adds r2, r4, r0
	movs r0, #0x67
	strh r0, [r2, #0x16]
	movs r0, #0x61
	strh r0, [r2, #0x18]
	str r6, [r2, #4]
	mov r1, r8
	strh r1, [r2, #0x1a]
	strh r5, [r2, #8]
	ldr r3, _0801964C @ =0x0000037E
	strh r3, [r2, #0xa]
	ldr r0, _080196BC @ =0x030001F0
	adds r1, r4, r0
	movs r0, #4
	strb r0, [r1]
	strh r5, [r2, #0x14]
	strh r5, [r2, #0x1c]
	ldr r3, _080196C0 @ =0x030001F1
	adds r1, r4, r3
	subs r0, #5
	strb r0, [r1]
	ldr r1, _080196C4 @ =0x030001F2
	adds r0, r4, r1
	movs r3, #0x10
	strb r3, [r0]
	adds r1, #3
	adds r0, r4, r1
	mov r3, sb
	strb r3, [r0]
	str r5, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	ldr r0, _080196C8 @ =gRepeatedKeys
	strh r5, [r0]
	ldr r0, _080196CC @ =gPressedKeys
	strh r5, [r0]
	ldr r0, _080196D0 @ =gInput
	strh r5, [r0]
	ldr r1, _080196D4 @ =gBgCntRegs
	ldr r0, _080196D8 @ =0x00001F05
	strh r0, [r1, #4]
	ldr r1, _080196DC @ =gBgScrollRegs
	ldrh r2, [r1, #4]
	strh r2, [r1, #8]
	ldrh r0, [r1, #6]
	strh r0, [r1, #0xa]
	ldr r3, _080196E0 @ =0x0300023E
	adds r0, r4, r3
	strh r2, [r0]
	ldrh r2, [r1, #6]
	adds r3, #2
	adds r0, r4, r3
	strh r2, [r0]
	ldrh r2, [r1, #4]
	adds r3, #2
	adds r0, r4, r3
	strh r2, [r0]
	ldrh r0, [r1, #6]
	ldr r1, _080196E4 @ =0x03000244
	adds r4, r4, r1
	strh r0, [r4]
	ldr r2, _080196E8 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x90
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080196EC @ =gWinRegs
	movs r0, #0x3d
	strh r0, [r1, #8]
	movs r0, #0x3b
	strh r0, [r1, #0xa]
	ldr r1, _080196F0 @ =gBldRegs
	ldr r0, _080196F4 @ =0x00003F46
	strh r0, [r1]
	ldr r2, _08019638 @ =gCurTask
	ldr r1, [r2]
	ldr r0, _080196F8 @ =sub_80196FC
	str r0, [r1, #8]
	bl _call_via_r0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08019634: .4byte 0x06010000
_08019638: .4byte gCurTask
_0801963C: .4byte 0x04000128
_08019640: .4byte 0x03000246
_08019644: .4byte 0x03000247
_08019648: .4byte 0x03000080
_0801964C: .4byte 0x0000037E
_08019650: .4byte 0x030000A0
_08019654: .4byte 0x030000A1
_08019658: .4byte 0x030000A2
_0801965C: .4byte 0x030000B0
_08019660: .4byte 0x030000D1
_08019664: .4byte 0x030000D2
_08019668: .4byte 0x030000E0
_0801966C: .4byte 0x03000100
_08019670: .4byte 0x03000101
_08019674: .4byte 0x03000102
_08019678: .4byte 0x03000110
_0801967C: .4byte 0x03000130
_08019680: .4byte 0x03000131
_08019684: .4byte 0x03000132
_08019688: .4byte 0x03000140
_0801968C: .4byte 0x03000160
_08019690: .4byte 0x03000161
_08019694: .4byte 0x03000162
_08019698: .4byte 0x03000170
_0801969C: .4byte 0x03000190
_080196A0: .4byte 0x03000191
_080196A4: .4byte 0x03000192
_080196A8: .4byte 0x030001A0
_080196AC: .4byte 0x00000359
_080196B0: .4byte 0x030001C0
_080196B4: .4byte 0x030001C2
_080196B8: .4byte 0x030001D0
_080196BC: .4byte 0x030001F0
_080196C0: .4byte 0x030001F1
_080196C4: .4byte 0x030001F2
_080196C8: .4byte gRepeatedKeys
_080196CC: .4byte gPressedKeys
_080196D0: .4byte gInput
_080196D4: .4byte gBgCntRegs
_080196D8: .4byte 0x00001F05
_080196DC: .4byte gBgScrollRegs
_080196E0: .4byte 0x0300023E
_080196E4: .4byte 0x03000244
_080196E8: .4byte gDispCnt
_080196EC: .4byte gWinRegs
_080196F0: .4byte gBldRegs
_080196F4: .4byte 0x00003F46
_080196F8: .4byte sub_80196FC

	thumb_func_start sub_80196FC
sub_80196FC: @ 0x080196FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	movs r0, #1
	str r0, [sp, #0xc]
	add r0, sp, #8
	movs r1, #0
	movs r2, #2
	bl memset
	ldr r0, _08019758 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0
	ldr r2, _0801975C @ =0x03000247
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08019782
	ldr r0, _08019760 @ =gRepeatedKeys
	ldrh r2, [r0]
	movs r0, #0x10
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _08019768
	ldr r3, _08019764 @ =0x03000246
	adds r4, r1, r3
	ldrb r0, [r4]
	cmp r0, #0
	bne _0801974E
	movs r0, #0x6c
	bl m4aSongNumStart
_0801974E:
	mov r0, sp
	ldrb r0, [r0, #0xc]
	strb r0, [r4]
	b _08019782
	.align 2, 0
_08019758: .4byte gCurTask
_0801975C: .4byte 0x03000247
_08019760: .4byte gRepeatedKeys
_08019764: .4byte 0x03000246
_08019768:
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08019782
	ldr r2, _080197D0 @ =0x03000246
	adds r4, r1, r2
	ldrb r0, [r4]
	cmp r0, #1
	bne _08019780
	movs r0, #0x6c
	bl m4aSongNumStart
_08019780:
	strb r5, [r4]
_08019782:
	ldr r0, _080197D4 @ =gGameMode
	ldrb r0, [r0]
	ldr r7, _080197D8 @ =gMultiplayerConnections
	cmp r0, #1
	bls _0801980A
	movs r3, #0
	ldrb r0, [r7]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801980A
	movs r5, #1
	ldr r2, _080197DC @ =gMultiplayerMissingHeartbeats
_0801979C:
	ldr r1, _080197E0 @ =gMultiSioStatusFlags
	adds r0, r5, #0
	lsls r0, r3
	ldr r4, [r1]
	ands r4, r0
	cmp r4, #0
	bne _080197F4
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _080197F8
	movs r0, #0
	ldr r1, _080197E4 @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _080197E8 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080197EC @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080197F0 @ =sa2__gUnknown_03005390
	strb r4, [r0]
	b _08019B0E
	.align 2, 0
_080197D0: .4byte 0x03000246
_080197D4: .4byte gGameMode
_080197D8: .4byte gMultiplayerConnections
_080197DC: .4byte gMultiplayerMissingHeartbeats
_080197E0: .4byte gMultiSioStatusFlags
_080197E4: .4byte 0x0000FFFF
_080197E8: .4byte gBackgroundsCopyQueueCursor
_080197EC: .4byte gBackgroundsCopyQueueIndex
_080197F0: .4byte sa2__gUnknown_03005390
_080197F4:
	movs r0, #0
	strb r0, [r2]
_080197F8:
	adds r2, #1
	adds r3, #1
	cmp r3, #3
	bhi _0801980A
	ldrb r0, [r7]
	asrs r0, r3
	ands r0, r5
	cmp r0, #0
	bne _0801979C
_0801980A:
	movs r6, #0
	ldrb r0, [r7]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080198F2
	mov sb, r7
	add r7, sp, #8
	movs r3, #0xe0
	mov sl, r3
	movs r0, #0
	str r0, [sp, #0x10]
_08019822:
	ldr r0, _08019880 @ =gMultiSioRecv
	ldr r1, [sp, #0x10]
	adds r5, r1, r0
	ldrh r1, [r5]
	adds r0, r1, #0
	subs r0, #0x40
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _080198D0
	cmp r1, #0x41
	beq _080198AE
	mov r4, r8
	add r4, sl
	ldrb r0, [r5, #2]
	lsls r0, r0, #7
	adds r0, #0x2b
	strh r0, [r4, #0x16]
	adds r0, r4, #0
	bl DisplaySprite
	movs r4, #0xd0
	lsls r4, r4, #1
	add r4, r8
	ldr r0, _08019884 @ =gUnknown_080BB484
	adds r0, r6, r0
	ldrb r0, [r0]
	strh r0, [r4, #0x18]
	ldrb r1, [r5, #2]
	movs r0, #0x5e
	muls r0, r1, r0
	adds r0, #0x4b
	strh r0, [r4, #0x16]
	ldrb r0, [r5, #2]
	cmp r0, #0
	bne _0801988C
	ldr r0, [r4, #0x10]
	ldr r1, _08019888 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #0x10]
	movs r1, #0x10
	lsls r1, r6
	mov r2, sb
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
	b _080198A2
	.align 2, 0
_08019880: .4byte gMultiSioRecv
_08019884: .4byte gUnknown_080BB484
_08019888: .4byte 0xFFFFFBFF
_0801988C:
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #0x10]
	movs r0, #0x10
	lsls r0, r6
	mov r3, sb
	ldrb r1, [r3]
	orrs r0, r1
	strb r0, [r3]
_080198A2:
	adds r0, r4, #0
	bl DisplaySprite
	movs r0, #0
	str r0, [sp, #0xc]
	b _080198D4
_080198AE:
	mov r4, r8
	add r4, sl
	adds r0, r4, #0
	bl DisplaySprite
	movs r1, #0x16
	ldrsh r0, [r4, r1]
	cmp r0, #0x2b
	bne _080198C8
	ldrb r0, [r7]
	adds r0, #1
	strb r0, [r7]
	b _080198D4
_080198C8:
	ldrb r0, [r7, #1]
	adds r0, #1
	strb r0, [r7, #1]
	b _080198D4
_080198D0:
	movs r2, #0
	str r2, [sp, #0xc]
_080198D4:
	movs r3, #0x30
	add sl, r3
	ldr r0, [sp, #0x10]
	adds r0, #0x14
	str r0, [sp, #0x10]
	adds r6, #1
	cmp r6, #3
	bgt _080198F2
	mov r1, sb
	ldrb r0, [r1]
	asrs r0, r6
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08019822
_080198F2:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	ldr r2, [sp, #0xc]
	cmp r2, #0
	beq _08019952
	add r0, sp, #8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801990E
	add r0, sp, #8
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _0801991C
_0801990E:
	ldr r1, _08019918 @ =0x00000247
	add r1, r8
	movs r0, #0
	strb r0, [r1]
	b _08019952
	.align 2, 0
_08019918: .4byte 0x00000247
_0801991C:
	ldr r0, _08019940 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	ldr r2, _08019944 @ =gFlags
	ldr r0, [r2]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	ldr r0, _08019948 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	bne _0801994C
	movs r0, #0
	bl sub_8061948
	b _08019BEA
	.align 2, 0
_08019940: .4byte gCurTask
_08019944: .4byte gFlags
_08019948: .4byte gGameMode
_0801994C:
	bl sub_8062F90
	b _08019BEA
_08019952:
	movs r0, #8
	str r0, [sp]
	movs r4, #0xf0
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0x74
	movs r2, #0
	movs r3, #0x7c
	bl sa2__sub_80064A8
	movs r0, #0x10
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0x7c
	movs r2, #8
	movs r3, #0x74
	bl sa2__sub_80064A8
	ldr r2, _08019AC0 @ =0x040000D4
	ldr r0, _08019AC4 @ =gBgOffsetsHBlank
	ldr r4, [r0]
	ldr r0, _08019AC8 @ =sa2__gUnknown_03002A80
	ldrb r3, [r0]
	lsls r0, r3, #4
	adds r1, r0, r4
	movs r7, #0x84
	lsls r7, r7, #0x18
	adds r5, r0, #0
	movs r6, #0x80
_0801998E:
	str r4, [r2]
	str r1, [r2, #4]
	lsls r0, r3, #4
	asrs r0, r0, #2
	orrs r0, r7
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	adds r1, r1, r5
	subs r6, #0x10
	cmp r6, #0
	bge _0801998E
	movs r2, #0x8e
	lsls r2, r2, #2
	add r2, r8
	ldrh r0, [r2]
	adds r0, #1
	ldr r3, _08019ACC @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08019AD0 @ =0x00000236
	add r0, r8
	movs r1, #0
	ldrsh r4, [r0, r1]
	ldr r3, _08019AD4 @ =gSineTable
	ldrh r1, [r2]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	adds r2, r4, #0
	muls r2, r0, r2
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	adds r1, r4, #0
	muls r1, r0, r1
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r3, _08019AD8 @ =0x0000023E
	add r3, r8
	ldrh r0, [r3]
	adds r0, r0, r2
	strh r0, [r3]
	movs r4, #0x90
	lsls r4, r4, #2
	add r4, r8
	ldrh r0, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	ldr r5, _08019ADC @ =0x00000242
	add r5, r8
	ldrh r0, [r5]
	subs r0, r0, r2
	strh r0, [r5]
	movs r2, #0x91
	lsls r2, r2, #2
	add r2, r8
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r2]
	ldr r1, _08019AE0 @ =gBgScrollRegs
	ldrh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	strh r0, [r1, #4]
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	strh r0, [r1, #6]
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	strh r0, [r1, #8]
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	strh r0, [r1, #0xa]
	ldr r4, _08019AE4 @ =gPressedKeys
	ldrh r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08019A54
	movs r0, #0x6b
	bl m4aSongNumStart
	ldr r1, _08019AE8 @ =0x00000247
	add r1, r8
	movs r0, #0
	strb r0, [r1]
_08019A54:
	ldr r0, _08019AEC @ =gInput
	ldrh r1, [r0]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	bne _08019A90
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08019A90
	ldr r0, _08019AF0 @ =0x00000246
	add r0, r8
	ldrb r2, [r0]
	cmp r2, #0
	bne _08019A80
	mov r1, sb
	subs r1, #1
	add r0, sp, #8
	ldrb r0, [r0]
	cmp r1, r0
	bne _08019A9A
_08019A80:
	cmp r2, #1
	bne _08019A90
	mov r0, sb
	subs r0, #1
	add r1, sp, #8
	ldrb r1, [r1, #1]
	cmp r0, r1
	bne _08019A9A
_08019A90:
	ldr r0, _08019AE8 @ =0x00000247
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	beq _08019B34
_08019A9A:
	ldr r4, _08019AE8 @ =0x00000247
	add r4, r8
	ldrb r0, [r4]
	cmp r0, #0
	bne _08019AAA
	movs r0, #0x6a
	bl m4aSongNumStart
_08019AAA:
	ldr r5, _08019AF4 @ =gMultiSioSend
	movs r0, #0x41
	strh r0, [r5]
	ldr r0, _08019AF0 @ =0x00000246
	add r0, r8
	ldrb r0, [r0]
	strb r0, [r5, #2]
	movs r0, #1
	strb r0, [r4]
	b _08019B42
	.align 2, 0
_08019AC0: .4byte 0x040000D4
_08019AC4: .4byte gBgOffsetsHBlank
_08019AC8: .4byte sa2__gUnknown_03002A80
_08019ACC: .4byte 0x000003FF
_08019AD0: .4byte 0x00000236
_08019AD4: .4byte gSineTable
_08019AD8: .4byte 0x0000023E
_08019ADC: .4byte 0x00000242
_08019AE0: .4byte gBgScrollRegs
_08019AE4: .4byte gPressedKeys
_08019AE8: .4byte 0x00000247
_08019AEC: .4byte gInput
_08019AF0: .4byte 0x00000246
_08019AF4: .4byte gMultiSioSend
_08019AF8:
	ldr r1, _08019B1C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08019B20 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08019B24 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08019B28 @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
_08019B0E:
	ldr r1, _08019B2C @ =gVramGraphicsCopyCursor
	ldr r0, _08019B30 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl MultiPakCommunicationError
	b _08019BEA
	.align 2, 0
_08019B1C: .4byte 0x0000FFFF
_08019B20: .4byte gBackgroundsCopyQueueCursor
_08019B24: .4byte gBackgroundsCopyQueueIndex
_08019B28: .4byte sa2__gUnknown_03005390
_08019B2C: .4byte gVramGraphicsCopyCursor
_08019B30: .4byte gVramGraphicsCopyQueueIndex
_08019B34:
	ldr r5, _08019BFC @ =gMultiSioSend
	movs r0, #0x40
	strh r0, [r5]
	ldr r0, _08019C00 @ =0x00000246
	add r0, r8
	ldrb r0, [r0]
	strb r0, [r5, #2]
_08019B42:
	movs r6, #0
	ldr r0, _08019C04 @ =gMultiplayerConnections
	ldrb r1, [r0]
	movs r2, #1
	ands r1, r2
	adds r7, r0, #0
	cmp r1, #0
	beq _08019B7E
	movs r2, #0
_08019B54:
	ldr r0, _08019C08 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, r6
	beq _08019B6A
	ldr r0, _08019C0C @ =gMultiSioRecv
	adds r5, r2, r0
	ldrh r0, [r5]
	cmp r0, #0x41
	bhi _08019AF8
_08019B6A:
	adds r2, #0x14
	adds r6, #1
	cmp r6, #3
	bgt _08019B7E
	ldrb r0, [r7]
	asrs r0, r6
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08019B54
_08019B7E:
	mov r4, r8
	adds r4, #0x80
	movs r2, #0x8c
	lsls r2, r2, #2
	add r2, r8
	ldr r3, [r2]
	adds r1, r3, #0
	adds r1, #0x80
	str r1, [r2]
	movs r0, #0xa4
	lsls r0, r0, #8
	cmp r1, r0
	ble _08019B9E
	ldr r1, _08019C10 @ =0xFFFF5C80
	adds r0, r3, r1
	str r0, [r2]
_08019B9E:
	ldr r0, [r2]
	rsbs r0, r0, #0
	lsls r0, r0, #8
	lsrs r5, r0, #0x10
	lsls r1, r5, #0x10
	asrs r0, r1, #0x10
	mov r6, r8
	adds r6, #0xb0
	cmp r0, #0xef
	bgt _08019BCA
_08019BB2:
	strh r5, [r4, #0x16]
	movs r2, #0xa4
	lsls r2, r2, #0x10
	adds r0, r1, r2
	lsrs r5, r0, #0x10
	adds r0, r4, #0
	bl DisplaySprite
	lsls r1, r5, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0xef
	ble _08019BB2
_08019BCA:
	movs r4, #0xe8
	lsls r4, r4, #1
	add r4, r8
	adds r0, r4, #0
	bl DisplaySprite
	adds r4, r6, #0
	movs r6, #0
_08019BDA:
	lsls r0, r6, #5
	strh r0, [r4, #0x16]
	adds r0, r4, #0
	bl DisplaySprite
	adds r6, #1
	cmp r6, #7
	ble _08019BDA
_08019BEA:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08019BFC: .4byte gMultiSioSend
_08019C00: .4byte 0x00000246
_08019C04: .4byte gMultiplayerConnections
_08019C08: .4byte 0x04000128
_08019C0C: .4byte gMultiSioRecv
_08019C10: .4byte 0xFFFF5C80

	thumb_func_start sub_8019C14
sub_8019C14: @ 0x08019C14
	push {r4, r5, r6, lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	movs r6, #0
	ldr r0, _08019C40 @ =sub_8019D18
	ldr r2, _08019C44 @ =0x00002010
	ldr r1, _08019C48 @ =sub_8019D9C
	str r1, [sp]
	movs r1, #0x34
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	ldr r1, _08019C4C @ =gMultiplayerPlayerTasks
	b _08019C58
	.align 2, 0
_08019C40: .4byte sub_8019D18
_08019C44: .4byte 0x00002010
_08019C48: .4byte sub_8019D9C
_08019C4C: .4byte gMultiplayerPlayerTasks
_08019C50:
	adds r1, #4
	adds r6, #1
	cmp r6, #3
	bhi _08019C5E
_08019C58:
	ldr r0, [r1]
	cmp r0, #0
	bne _08019C50
_08019C5E:
	cmp r5, #5
	bhi _08019C70
	ldr r0, _08019C6C @ =sa2__gUnknown_030054B4
	adds r0, r4, r0
	strb r5, [r0]
	b _08019C78
	.align 2, 0
_08019C6C: .4byte sa2__gUnknown_030054B4
_08019C70:
	ldr r0, _08019CA0 @ =sa2__gUnknown_030054B4
	adds r0, r4, r0
	subs r1, r6, #1
	strb r1, [r0]
_08019C78:
	adds r0, r2, #0
	adds r0, #0x30
	movs r1, #0
	strb r4, [r0]
	adds r0, #1
	strb r5, [r0]
	adds r4, r2, #0
	strh r1, [r4, #8]
	movs r0, #0xe2
	lsls r0, r0, #2
	strh r0, [r4, #0xa]
	cmp r5, #5
	bne _08019CA4
	adds r0, r4, #0
	adds r0, #0x20
	movs r1, #1
	strb r1, [r0]
	movs r0, #0xc
	b _08019CE2
	.align 2, 0
_08019CA0: .4byte sa2__gUnknown_030054B4
_08019CA4:
	cmp r5, #4
	bne _08019CB4
	adds r0, r4, #0
	adds r0, #0x20
	movs r1, #2
	strb r1, [r0]
	movs r0, #0xc
	b _08019CE2
_08019CB4:
	cmp r6, #2
	beq _08019CC8
	ldr r0, _08019CD4 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #4
	beq _08019CC8
	cmp r0, #3
	beq _08019CC8
	cmp r0, #5
	bne _08019CD8
_08019CC8:
	adds r0, r4, #0
	adds r0, #0x20
	strb r5, [r0]
	movs r0, #0xc
	b _08019CE2
	.align 2, 0
_08019CD4: .4byte gGameMode
_08019CD8:
	adds r0, r5, #3
	adds r1, r4, #0
	adds r1, #0x20
	strb r0, [r1]
	movs r0, #8
_08019CE2:
	bl VramMalloc
	str r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	movs r2, #0
	movs r1, #0
	strh r1, [r4, #0x1a]
	strh r1, [r4, #0x1c]
	adds r3, r4, #0
	adds r3, #0x22
	movs r0, #0x10
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x25
	strb r2, [r0]
	str r1, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8019D18
sub_8019D18: @ 0x08019D18
	push {r4, lr}
	ldr r0, _08019D60 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r3, r0, r1
	ldr r1, _08019D64 @ =gMultiplayerPlayerTasks
	ldr r2, _08019D68 @ =0x03000030
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	ldr r1, _08019D6C @ =0x03000050
	adds r0, r2, r1
	ldr r4, _08019D70 @ =gCamera
	ldrh r0, [r0]
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r3, #0x16]
	ldr r0, _08019D74 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08019D7C
	ldr r1, _08019D78 @ =0x03000052
	adds r0, r2, r1
	ldrh r0, [r0]
	ldrh r1, [r4, #2]
	subs r0, r0, r1
	subs r0, #0x20
	b _08019D88
	.align 2, 0
_08019D60: .4byte gCurTask
_08019D64: .4byte gMultiplayerPlayerTasks
_08019D68: .4byte 0x03000030
_08019D6C: .4byte 0x03000050
_08019D70: .4byte gCamera
_08019D74: .4byte gStageFlags
_08019D78: .4byte 0x03000052
_08019D7C:
	ldr r1, _08019D98 @ =0x03000052
	adds r0, r2, r1
	ldrh r0, [r0]
	ldrh r1, [r4, #2]
	subs r0, r0, r1
	adds r0, #0x20
_08019D88:
	strh r0, [r3, #0x18]
	adds r0, r3, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08019D98: .4byte 0x03000052

	thumb_func_start sub_8019D9C
sub_8019D9C: @ 0x08019D9C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8019DB0
sub_8019DB0: @ 0x08019DB0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	ldr r1, _08019E90 @ =gUnknown_080BB490
	add r0, sp, #4
	movs r2, #4
	bl memcpy
	add r5, sp, #8
	adds r0, r5, #0
	movs r1, #0
	movs r2, #4
	bl memset
	ldr r0, _08019E94 @ =sub_801A110
	movs r2, #0x80
	lsls r2, r2, #6
	movs r4, #0
	str r4, [sp]
	movs r1, #4
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	strh r4, [r0]
	ldr r4, _08019E98 @ =gGameMode
	ldrb r0, [r4]
	mov sb, r5
	cmp r0, #6
	beq _08019E04
	ldr r0, _08019E9C @ =gMusicManagerState
	movs r1, #0xff
	strb r1, [r0]
	movs r0, #0x98
	lsls r0, r0, #1     @ SE_VS_MULTIPAK_ROUND_OVER
	bl m4aSongNumStart
_08019E04:
	ldrb r3, [r4]
	cmp r3, #4
	bne _08019EF4
	ldr r0, _08019EA0 @ =gMultiplayerCharRings
	ldr r0, [r0]
	str r0, [sp, #8]
	movs r6, #0
	movs r0, #3
	mov ip, r0
_08019E16:
	movs r4, #0
	cmp r4, ip
	bhs _08019E64
	mov r7, sb
	mov r8, ip
_08019E20:
	adds r3, r7, r4
	adds r5, r4, #1
	adds r2, r7, r5
	ldrb r0, [r3]
	ldrb r1, [r2]
	cmp r0, r1
	bhs _08019E5E
	eors r1, r0
	strb r1, [r3]
	ldrb r0, [r2]
	eors r0, r1
	strb r0, [r2]
	ldrb r1, [r3]
	eors r0, r1
	strb r0, [r3]
	mov r3, sp
	adds r3, r3, r4
	adds r3, #4
	mov r2, sp
	adds r2, r2, r5
	adds r2, #4
	ldrb r1, [r3]
	ldrb r0, [r2]
	eors r1, r0
	strb r1, [r3]
	ldrb r0, [r2]
	eors r0, r1
	strb r0, [r2]
	ldrb r1, [r3]
	eors r0, r1
	strb r0, [r3]
_08019E5E:
	adds r4, r5, #0
	cmp r4, r8
	blo _08019E20
_08019E64:
	movs r1, #1
	rsbs r1, r1, #0
	add ip, r1
	adds r6, #1
	cmp r6, #3
	bls _08019E16
	movs r6, #0
	mov r5, sb
	ldr r3, _08019EA4 @ =sa2__gUnknown_030054B4
	add r2, sp, #4
_08019E78:
	cmp r6, #0
	beq _08019EA8
	adds r0, r5, r6
	ldrb r0, [r0]
	ldrb r4, [r5]
	cmp r0, r4
	beq _08019EB0
	ldrb r0, [r2]
	adds r0, r0, r3
	movs r1, #1
	strb r1, [r0]
	b _08019EC2
	.align 2, 0
_08019E90: .4byte gUnknown_080BB490
_08019E94: .4byte sub_801A110
_08019E98: .4byte gGameMode
_08019E9C: .4byte gMusicManagerState
_08019EA0: .4byte gMultiplayerCharRings
_08019EA4: .4byte sa2__gUnknown_030054B4
_08019EA8:
	ldrb r1, [r5, #1]
	ldrb r0, [r5]
	cmp r0, r1
	bne _08019EBA
_08019EB0:
	ldrb r0, [r2]
	adds r0, r0, r3
	movs r1, #4
	strb r1, [r0]
	b _08019EC2
_08019EBA:
	add r0, sp, #4
	ldrb r0, [r0]
	adds r0, r0, r3
	strb r6, [r0]
_08019EC2:
	adds r2, #1
	adds r6, #1
	cmp r6, #3
	bls _08019E78
	movs r6, #0
	ldr r4, _08019EEC @ =gMultiplayerPlayerTasks
_08019ECE:
	ldr r0, [r4]
	cmp r0, #0
	beq _08019EE2
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08019EF0 @ =sa2__gUnknown_030054B4
	adds r1, r6, r1
	ldrb r1, [r1]
	bl sub_8019C14
_08019EE2:
	adds r4, #4
	adds r6, #1
	cmp r6, #3
	bls _08019ECE
	b _0801A0F6
	.align 2, 0
_08019EEC: .4byte gMultiplayerPlayerTasks
_08019EF0: .4byte sa2__gUnknown_030054B4
_08019EF4:
	cmp r3, #5
	beq _08019EFA
	b _0801A00C
_08019EFA:
	movs r6, #0
	ldr r0, _08019F90 @ =gMultiplayerPlayerTasks
	ldr r1, [r0]
	mov r8, r0
	cmp r1, #0
	beq _08019F36
	mov ip, sb
	ldr r0, _08019F94 @ =gMultiplayerConnections
	ldrb r3, [r0]
	mov r2, r8
	movs r5, #0x10
	ldr r4, _08019F98 @ =gMultiplayerCharRings
_08019F12:
	adds r1, r5, #0
	lsls r1, r6
	ands r1, r3
	adds r0, r6, #4
	asrs r1, r0
	add r1, ip
	adds r0, r6, r4
	ldrb r0, [r0]
	ldrb r7, [r1]
	adds r0, r0, r7
	strb r0, [r1]
	adds r2, #4
	adds r6, #1
	cmp r6, #3
	bhi _08019F36
	ldr r0, [r2]
	cmp r0, #0
	bne _08019F12
_08019F36:
	mov r3, sb
	ldrb r1, [r3]
	ldrb r2, [r3, #1]
	cmp r1, r2
	bhs _08019F6A
	eors r1, r2
	adds r0, r1, #0
	eors r0, r2
	strb r0, [r3, #1]
	eors r1, r0
	strb r1, [r3]
	add r3, sp, #4
	adds r0, r3, #0
	adds r2, r0, #0
	ldrb r1, [r0]
	ldrb r0, [r2, #1]
	eors r1, r0
	strb r1, [r3]
	adds r0, r2, #0
	ldrb r0, [r0, #1]
	eors r0, r1
	strb r0, [r2, #1]
	adds r1, r2, #0
	ldrb r1, [r1]
	eors r0, r1
	strb r0, [r2]
_08019F6A:
	mov r0, sb
	ldrb r1, [r0, #1]
	ldrb r0, [r0]
	cmp r0, r1
	bne _08019FA0
	movs r6, #0
	ldr r3, _08019F9C @ =sa2__gUnknown_030054B4
	movs r2, #4
	ldr r1, _08019F90 @ =gMultiplayerPlayerTasks
_08019F7C:
	ldr r0, [r1]
	cmp r0, #0
	beq _08019F86
	adds r0, r6, r3
	strb r2, [r0]
_08019F86:
	adds r1, #4
	adds r6, #1
	cmp r6, #3
	bls _08019F7C
	b _08019FE2
	.align 2, 0
_08019F90: .4byte gMultiplayerPlayerTasks
_08019F94: .4byte gMultiplayerConnections
_08019F98: .4byte gMultiplayerCharRings
_08019F9C: .4byte sa2__gUnknown_030054B4
_08019FA0:
	movs r6, #0
	ldr r2, _08019FC8 @ =sa2__gUnknown_030054B4
	ldr r3, _08019FCC @ =gMultiplayerPlayerTasks
	ldr r4, _08019FD0 @ =gMultiplayerConnections
_08019FA8:
	ldr r0, [r3]
	cmp r0, #0
	beq _08019FD8
	ldrb r1, [r4]
	movs r0, #0x10
	lsls r0, r6
	ands r1, r0
	adds r0, r6, #4
	asrs r1, r0
	add r0, sp, #4
	ldrb r0, [r0]
	cmp r1, r0
	bne _08019FD4
	movs r0, #0
	b _08019FD6
	.align 2, 0
_08019FC8: .4byte sa2__gUnknown_030054B4
_08019FCC: .4byte gMultiplayerPlayerTasks
_08019FD0: .4byte gMultiplayerConnections
_08019FD4:
	movs r0, #1
_08019FD6:
	strb r0, [r2]
_08019FD8:
	adds r2, #1
	adds r3, #4
	adds r6, #1
	cmp r6, #3
	bls _08019FA8
_08019FE2:
	movs r6, #0
	ldr r4, _0801A004 @ =gMultiplayerPlayerTasks
_08019FE6:
	ldr r0, [r4]
	cmp r0, #0
	beq _08019FFA
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0801A008 @ =sa2__gUnknown_030054B4
	adds r1, r6, r1
	ldrb r1, [r1]
	bl sub_8019C14
_08019FFA:
	adds r4, #4
	adds r6, #1
	cmp r6, #3
	bls _08019FE6
	b _0801A0F6
	.align 2, 0
_0801A004: .4byte gMultiplayerPlayerTasks
_0801A008: .4byte sa2__gUnknown_030054B4
_0801A00C:
	cmp r3, #6
	beq _0801A0F6
	ldr r1, _0801A080 @ =gLoadedSaveGame
	movs r2, #0x85
	lsls r2, r2, #3
	adds r1, r1, r2
	ldr r0, _0801A084 @ =gRingCount
	movs r4, #0
	ldrsh r2, [r0, r4]
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
	ldr r0, _0801A088 @ =gCourseTime
	ldr r2, [r0]
	ldr r0, _0801A08C @ =0x00008CA0
	cmp r2, r0
	bhi _0801A03E
	ldr r0, _0801A090 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0801A0F6
	cmp r2, #0
	bne _0801A0F6
_0801A03E:
	movs r2, #0
	cmp r3, #3
	beq _0801A0AC
	cmp r3, #5
	beq _0801A0AC
	movs r4, #0
	ldr r0, _0801A094 @ =gMultiplayerPlayerTasks
	ldr r1, [r0]
	mov r8, r0
	cmp r1, #0
	beq _0801A078
	ldr r5, _0801A098 @ =sa2__gUnknown_030054B4
	movs r3, #1
	rsbs r3, r3, #0
	mov r1, r8
_0801A05C:
	adds r0, r4, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r3
	beq _0801A06A
	adds r2, #1
_0801A06A:
	adds r1, #4
	adds r4, #1
	cmp r4, #3
	bhi _0801A078
	ldr r0, [r1]
	cmp r0, #0
	bne _0801A05C
_0801A078:
	cmp r2, #0
	bne _0801A09C
	movs r5, #4
	b _0801A0B2
	.align 2, 0
_0801A080: .4byte gLoadedSaveGame
_0801A084: .4byte gRingCount
_0801A088: .4byte gCourseTime
_0801A08C: .4byte 0x00008CA0
_0801A090: .4byte gStageFlags
_0801A094: .4byte gMultiplayerPlayerTasks
_0801A098: .4byte sa2__gUnknown_030054B4
_0801A09C:
	subs r0, r4, #1
	cmp r2, r0
	bne _0801A0A8
	lsls r0, r2, #0x18
	lsrs r5, r0, #0x18
	b _0801A0B2
_0801A0A8:
	movs r5, #5
	b _0801A0B2
_0801A0AC:
	movs r5, #4
	ldr r7, _0801A104 @ =gMultiplayerPlayerTasks
	mov r8, r7
_0801A0B2:
	movs r4, #0
	mov r1, r8
	ldr r0, [r1]
	cmp r0, #0
	beq _0801A0F6
	movs r6, #1
	rsbs r6, r6, #0
_0801A0C0:
	ldr r0, _0801A108 @ =sa2__gUnknown_030054B4
	adds r0, r4, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r6
	beq _0801A0DA
	ldr r0, _0801A10C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _0801A0DA
	cmp r0, #5
	bne _0801A0E4
_0801A0DA:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	adds r1, r5, #0
	bl sub_8019C14
_0801A0E4:
	adds r4, #1
	cmp r4, #3
	bhi _0801A0F6
	ldr r0, _0801A104 @ =gMultiplayerPlayerTasks
	lsls r1, r4, #2
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	bne _0801A0C0
_0801A0F6:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801A104: .4byte gMultiplayerPlayerTasks
_0801A108: .4byte sa2__gUnknown_030054B4
_0801A10C: .4byte gGameMode

	thumb_func_start sub_801A110
sub_801A110: @ 0x0801A110
	push {r4, r5, r6, lr}
	movs r2, #0
	ldr r6, _0801A17C @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, _0801A180 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _0801A12A
	movs r2, #0xf0
_0801A12A:
	ldr r0, _0801A184 @ =gUnknown_03005014
	ldr r1, _0801A188 @ =gUnknown_03005000
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0801A176
	ldrh r0, [r5]
	adds r1, r0, #1
	strh r1, [r5]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r2
	bls _0801A176
	ldr r1, _0801A18C @ =gBldRegs
	movs r4, #0
	movs r0, #0xbf
	strh r0, [r1]
	strh r4, [r1, #4]
	ldr r0, _0801A190 @ =gMPlayInfo_BGM
	movs r1, #4
	bl m4aMPlayFadeOut
	ldr r0, _0801A194 @ =gMPlayInfo_SE1
	movs r1, #4
	bl m4aMPlayFadeOut
	ldr r0, _0801A198 @ =gMPlayInfo_SE2
	movs r1, #4
	bl m4aMPlayFadeOut
	ldr r0, _0801A19C @ =gMPlayInfo_SE3
	movs r1, #4
	bl m4aMPlayFadeOut
	strh r4, [r5]
	ldr r1, [r6]
	ldr r0, _0801A1A0 @ =sub_801A1A4
	str r0, [r1, #8]
_0801A176:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801A17C: .4byte gCurTask
_0801A180: .4byte gGameMode
_0801A184: .4byte gUnknown_03005014
_0801A188: .4byte gUnknown_03005000
_0801A18C: .4byte gBldRegs
_0801A190: .4byte gMPlayInfo_BGM
_0801A194: .4byte gMPlayInfo_SE1
_0801A198: .4byte gMPlayInfo_SE2
_0801A19C: .4byte gMPlayInfo_SE3
_0801A1A0: .4byte sub_801A1A4

	thumb_func_start sub_801A1A4
sub_801A1A4: @ 0x0801A1A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0801A290 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #0x40
	strh r0, [r1]
	ldr r2, _0801A294 @ =gBldRegs
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strh r0, [r2, #4]
	ldrh r1, [r1]
	ldr r0, _0801A298 @ =0x00000FFF
	cmp r1, r0
	bhi _0801A1D4
	b _0801A36E
_0801A1D4:
	movs r0, #0xbf
	strh r0, [r2]
	movs r0, #0
	strh r0, [r2, #4]
	ldr r0, _0801A29C @ =gGameMode
	ldrb r0, [r0]
	add r1, sp, #8
	mov sl, r1
	cmp r0, #6
	beq _0801A1EA
	b _0801A2EA
_0801A1EA:
	ldr r1, _0801A2A0 @ =gUnknown_080BB490
	mov r0, sp
	movs r2, #4
	bl memcpy
	add r4, sp, #4
	adds r0, r4, #0
	movs r1, #0
	movs r2, #4
	bl memset
	ldr r0, _0801A2A4 @ =gMultiplayerCharRings
	ldr r0, [r0]
	str r0, [sp, #4]
	movs r7, #0
	mov sb, r4
	movs r0, #3
	mov ip, r0
_0801A20E:
	movs r4, #0
	cmp r4, ip
	bhs _0801A256
	mov r6, sb
	mov r8, ip
_0801A218:
	adds r3, r6, r4
	adds r5, r4, #1
	adds r2, r6, r5
	ldrb r0, [r3]
	ldrb r1, [r2]
	cmp r0, r1
	bhs _0801A250
	eors r1, r0
	strb r1, [r3]
	ldrb r0, [r2]
	eors r0, r1
	strb r0, [r2]
	ldrb r1, [r3]
	eors r0, r1
	strb r0, [r3]
	mov r1, sp
	adds r3, r1, r4
	adds r2, r1, r5
	ldrb r1, [r3]
	ldrb r0, [r2]
	eors r1, r0
	strb r1, [r3]
	ldrb r0, [r2]
	eors r0, r1
	strb r0, [r2]
	ldrb r1, [r3]
	eors r0, r1
	strb r0, [r3]
_0801A250:
	adds r4, r5, #0
	cmp r4, r8
	blo _0801A218
_0801A256:
	movs r0, #1
	rsbs r0, r0, #0
	add ip, r0
	adds r7, #1
	cmp r7, #3
	bls _0801A20E
	movs r7, #0
	mov r4, sb
	ldr r6, _0801A2A8 @ =sa2__gUnknown_030054B4
	ldr r5, _0801A2AC @ =gMultiplayerCharacters
	mov r3, sp
	mov r2, sp
	ldr r1, _0801A2B0 @ =gUnknown_0300500C
	mov r8, r1
_0801A272:
	cmp r7, #0
	beq _0801A2B4
	adds r0, r4, r7
	ldrb r0, [r0]
	ldrb r1, [r4]
	cmp r0, r1
	beq _0801A2BC
	ldrb r0, [r2]
	adds r0, r0, r6
	strb r7, [r0]
	ldrb r0, [r2]
	adds r0, r0, r5
	movs r1, #1
	strb r1, [r0]
	b _0801A2E2
	.align 2, 0
_0801A290: .4byte gCurTask
_0801A294: .4byte gBldRegs
_0801A298: .4byte 0x00000FFF
_0801A29C: .4byte gGameMode
_0801A2A0: .4byte gUnknown_080BB490
_0801A2A4: .4byte gMultiplayerCharRings
_0801A2A8: .4byte sa2__gUnknown_030054B4
_0801A2AC: .4byte gMultiplayerCharacters
_0801A2B0: .4byte gUnknown_0300500C
_0801A2B4:
	ldrb r1, [r4, #1]
	ldrb r0, [r4]
	cmp r0, r1
	bne _0801A2CC
_0801A2BC:
	ldrb r0, [r2]
	adds r0, r0, r6
	strb r7, [r0]
	ldrb r0, [r2]
	adds r0, r0, r5
	movs r1, #2
	strb r1, [r0]
	b _0801A2E2
_0801A2CC:
	ldrb r0, [r3]
	adds r0, r0, r6
	strb r7, [r0]
	ldrb r1, [r3]
	add r1, r8
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r0, [r3]
	adds r0, r0, r5
	strb r7, [r0]
_0801A2E2:
	adds r2, #1
	adds r7, #1
	cmp r7, #3
	bls _0801A272
_0801A2EA:
	ldr r1, _0801A32C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0801A330 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0801A334 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0801A338 @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0801A33C @ =gVramGraphicsCopyCursor
	ldr r0, _0801A340 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0801A344 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _0801A354
	movs r0, #0
	str r0, [sp, #8]
	ldr r1, _0801A348 @ =0x040000D4
	mov r0, sl
	str r0, [r1]
	ldr r0, _0801A34C @ =gMultiSioSend
	str r0, [r1, #4]
	ldr r0, _0801A350 @ =0x85000005
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	bl CreateChaoMessageMP
	b _0801A36E
	.align 2, 0
_0801A32C: .4byte 0x0000FFFF
_0801A330: .4byte gBackgroundsCopyQueueCursor
_0801A334: .4byte gBackgroundsCopyQueueIndex
_0801A338: .4byte sa2__gUnknown_03005390
_0801A33C: .4byte gVramGraphicsCopyCursor
_0801A340: .4byte gVramGraphicsCopyQueueIndex
_0801A344: .4byte gGameMode
_0801A348: .4byte 0x040000D4
_0801A34C: .4byte gMultiSioSend
_0801A350: .4byte 0x85000005
_0801A354:
	movs r0, #0
	str r0, [sp, #8]
	ldr r1, _0801A380 @ =0x040000D4
	mov r0, sl
	str r0, [r1]
	ldr r0, _0801A384 @ =gMultiSioSend
	str r0, [r1, #4]
	ldr r0, _0801A388 @ =0x85000005
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	bl CreateMultiplayerSinglePakResultsScreen
_0801A36E:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801A380: .4byte 0x040000D4
_0801A384: .4byte gMultiSioSend
_0801A388: .4byte 0x85000005

	thumb_func_start sub_801A38C
sub_801A38C: @ 0x0801A38C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0801A470 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _0801A3AA
	b _0801A548
_0801A3AA:
	ldr r0, _0801A474 @ =sub_801A6B8
	ldr r2, _0801A478 @ =0x0000FFFE
	ldr r1, _0801A47C @ =sub_801A70C
	str r1, [sp]
	movs r1, #0x64
	movs r3, #4
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r6, r0
	ldr r2, _0801A480 @ =0x03000060
	adds r0, r6, r2
	movs r2, #0
	mov sb, r2
	strh r5, [r0]
	ldr r0, _0801A484 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bne _0801A4B0
	adds r7, r1, #0
	movs r0, #0x60
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0x40
	strh r0, [r7, #0x1a]
	strh r5, [r7, #8]
	ldr r0, _0801A488 @ =0x00000329
	strh r0, [r7, #0xa]
	ldr r1, _0801A48C @ =0x03000020
	adds r0, r6, r1
	mov r2, sb
	strb r2, [r0]
	strh r5, [r7, #0x14]
	strh r5, [r7, #0x1c]
	ldr r0, _0801A490 @ =0x03000021
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _0801A494 @ =0x03000022
	adds r0, r6, r1
	movs r2, #0x10
	mov r8, r2
	mov r1, r8
	strb r1, [r0]
	ldr r2, _0801A498 @ =0x03000025
	adds r0, r6, r2
	mov r1, sb
	strb r1, [r0]
	movs r2, #0x78
	mov sl, r2
	mov r0, sl
	strh r0, [r7, #0x16]
	movs r4, #0x50
	strh r4, [r7, #0x18]
	str r5, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r1, _0801A49C @ =0x03000030
	adds r7, r6, r1
	movs r0, #0x40
	bl VramMalloc
	str r0, [r7, #4]
	movs r2, #0x40
	strh r2, [r7, #0x1a]
	strh r5, [r7, #8]
	ldr r0, _0801A4A0 @ =0x000002CE
	strh r0, [r7, #0xa]
	ldr r1, _0801A4A4 @ =0x03000050
	adds r0, r6, r1
	mov r2, sb
	strb r2, [r0]
	strh r5, [r7, #0x14]
	strh r5, [r7, #0x1c]
	ldr r0, _0801A4A8 @ =0x03000051
	adds r1, r6, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _0801A4AC @ =0x03000052
	adds r0, r6, r1
	mov r2, r8
	strb r2, [r0]
	adds r1, #3
	adds r0, r6, r1
	mov r2, sb
	strb r2, [r0]
	mov r0, sl
	strh r0, [r7, #0x16]
	strh r4, [r7, #0x18]
	str r5, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	b _0801A548
	.align 2, 0
_0801A470: .4byte gStageFlags
_0801A474: .4byte sub_801A6B8
_0801A478: .4byte 0x0000FFFE
_0801A47C: .4byte sub_801A70C
_0801A480: .4byte 0x03000060
_0801A484: .4byte gGameMode
_0801A488: .4byte 0x00000329
_0801A48C: .4byte 0x03000020
_0801A490: .4byte 0x03000021
_0801A494: .4byte 0x03000022
_0801A498: .4byte 0x03000025
_0801A49C: .4byte 0x03000030
_0801A4A0: .4byte 0x000002CE
_0801A4A4: .4byte 0x03000050
_0801A4A8: .4byte 0x03000051
_0801A4AC: .4byte 0x03000052
_0801A4B0:
	adds r7, r1, #0
	movs r0, #0x30
	bl VramMalloc
	str r0, [r7, #4]
	movs r1, #0x40
	strh r1, [r7, #0x1a]
	strh r5, [r7, #8]
	movs r0, #0xb4
	lsls r0, r0, #2
	strh r0, [r7, #0xa]
	ldr r2, _0801A558 @ =0x03000020
	adds r0, r6, r2
	mov r1, sb
	strb r1, [r0]
	strh r5, [r7, #0x14]
	strh r5, [r7, #0x1c]
	adds r2, #1
	adds r1, r6, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _0801A55C @ =0x03000022
	adds r0, r6, r1
	movs r2, #0x10
	strb r2, [r0]
	adds r1, #3
	adds r0, r6, r1
	mov r2, sb
	strb r2, [r0]
	movs r0, #0x78
	mov sl, r0
	mov r1, sl
	strh r1, [r7, #0x16]
	movs r4, #0x50
	strh r4, [r7, #0x18]
	str r5, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r2, _0801A560 @ =0x03000030
	adds r7, r6, r2
	movs r0, #0x14
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0x40
	strh r0, [r7, #0x1a]
	strh r5, [r7, #8]
	ldr r0, _0801A564 @ =0x000002CE
	strh r0, [r7, #0xa]
	ldr r1, _0801A568 @ =0x03000050
	adds r0, r6, r1
	mov r2, sb
	strb r2, [r0]
	strh r5, [r7, #0x14]
	strh r5, [r7, #0x1c]
	ldr r0, _0801A56C @ =0x03000051
	adds r1, r6, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _0801A570 @ =0x03000052
	adds r0, r6, r1
	movs r2, #0x10
	strb r2, [r0]
	adds r1, #3
	adds r0, r6, r1
	mov r2, sb
	strb r2, [r0]
	mov r0, sl
	strh r0, [r7, #0x16]
	strh r4, [r7, #0x18]
	str r5, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
_0801A548:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801A558: .4byte 0x03000020
_0801A55C: .4byte 0x03000022
_0801A560: .4byte 0x03000030
_0801A564: .4byte 0x000002CE
_0801A568: .4byte 0x03000050
_0801A56C: .4byte 0x03000051
_0801A570: .4byte 0x03000052

	thumb_func_start sub_801A574
sub_801A574: @ 0x0801A574
	push {r4, r5, r6, lr}
	ldr r6, _0801A5A8 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, _0801A5AC @ =gPressedKeys
	ldrh r2, [r0]
	movs r0, #8
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0801A5B8
	ldr r2, _0801A5B0 @ =gFlags
	ldr r0, [r2]
	ldr r1, _0801A5B4 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r2]
	bl m4aMPlayAllContinue
	ldr r0, [r6]
	bl TaskDestroy
	b _0801A6B2
	.align 2, 0
_0801A5A8: .4byte gCurTask
_0801A5AC: .4byte gPressedKeys
_0801A5B0: .4byte gFlags
_0801A5B4: .4byte 0xFFFFFBFF
_0801A5B8:
	ldr r0, _0801A5FC @ =gGameMode
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #1
	bne _0801A620
	ands r1, r2
	cmp r1, #0
	beq _0801A620
	ldr r2, _0801A600 @ =gFlags
	ldr r0, [r2]
	ldr r1, _0801A604 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r2]
	movs r0, #0x6a
	bl m4aSongNumStart
	ldr r1, _0801A608 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0801A60C @ =gBackgroundsCopyQueueCursor
	ldr r0, _0801A610 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0801A614 @ =sa2__gUnknown_03005390
	strb r4, [r0]
	ldr r1, _0801A618 @ =gVramGraphicsCopyCursor
	ldr r0, _0801A61C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl sub_806A1A4
	b _0801A6B2
	.align 2, 0
_0801A5FC: .4byte gGameMode
_0801A600: .4byte gFlags
_0801A604: .4byte 0xFFFFFBFF
_0801A608: .4byte 0x0000FFFF
_0801A60C: .4byte gBackgroundsCopyQueueCursor
_0801A610: .4byte gBackgroundsCopyQueueIndex
_0801A614: .4byte sa2__gUnknown_03005390
_0801A618: .4byte gVramGraphicsCopyCursor
_0801A61C: .4byte gVramGraphicsCopyQueueIndex
_0801A620:
	ldr r0, _0801A638 @ =gBldRegs
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _0801A63C
	ldr r0, [r5, #0x40]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x10]
	orrs r0, r1
	b _0801A648
	.align 2, 0
_0801A638: .4byte gBldRegs
_0801A63C:
	ldr r0, [r5, #0x40]
	ldr r1, _0801A684 @ =0xFFFFFE7F
	ands r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x10]
	ands r0, r1
_0801A648:
	str r0, [r5, #0x10]
	ldrb r0, [r3]
	adds r4, r5, #0
	adds r4, #0x30
	cmp r0, #1
	bne _0801A6A6
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r1]
	adds r0, #1
	movs r2, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3b
	bls _0801A6A6
	movs r0, #0
	strh r0, [r1]
	ldrh r0, [r5, #0x3a]
	ldr r1, _0801A688 @ =0x000002CE
	cmp r0, r1
	bne _0801A694
	ldr r0, _0801A68C @ =0x0000032A
	strh r0, [r5, #0x3a]
	ldr r0, _0801A690 @ =gLoadedSaveGame
	ldrb r1, [r0, #0x19]
	adds r0, r5, #0
	adds r0, #0x50
	strb r1, [r0]
	b _0801A69C
	.align 2, 0
_0801A684: .4byte 0xFFFFFE7F
_0801A688: .4byte 0x000002CE
_0801A68C: .4byte 0x0000032A
_0801A690: .4byte gLoadedSaveGame
_0801A694:
	strh r1, [r5, #0x3a]
	adds r0, r5, #0
	adds r0, #0x50
	strb r2, [r0]
_0801A69C:
	adds r4, r5, #0
	adds r4, #0x30
	adds r0, r4, #0
	bl UpdateSpriteAnimation
_0801A6A6:
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #0
	bl DisplaySprite
_0801A6B2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_801A6B8
sub_801A6B8: @ 0x0801A6B8
	push {r4, r5, r6, r7, lr}
	movs r4, #0
	ldr r0, _0801A6F8 @ =gSongTable + 0x474
	ldrh r6, [r0]
	movs r5, #0
	ldr r7, _0801A6FC @ =gMPlayTable
_0801A6C4:
	cmp r4, r6
	beq _0801A6D0
	adds r0, r5, r7
	ldr r0, [r0]
	bl MPlayStop
_0801A6D0:
	adds r5, #0xc
	adds r4, #1
	cmp r4, #3
	bls _0801A6C4
	movs r0, #0x8e      @ SE_PAUSE
	bl m4aSongNumStart
	ldr r2, _0801A700 @ =gFlags
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r0, _0801A704 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801A708 @ =sub_801A574
	str r0, [r1, #8]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801A6F8: .4byte gSongTable + 0x474
_0801A6FC: .4byte gMPlayTable
_0801A700: .4byte gFlags
_0801A704: .4byte gCurTask
_0801A708: .4byte sub_801A574

	thumb_func_start sub_801A70C
sub_801A70C: @ 0x0801A70C
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x34]
	bl VramFree
	ldr r0, [r4, #4]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start MultiPakCommunicationError
MultiPakCommunicationError: @ 0x0801A728
	push {lr}
	bl m4aMPlayAllStop
	ldr r2, _0801A774 @ =gFlags
	ldr r0, [r2]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	ldr r1, _0801A778 @ =gDispCnt
	movs r0, #0x40
	strh r0, [r1]
	ldr r1, _0801A77C @ =gMultiSioEnabled
	movs r0, #0
	strb r0, [r1]
	bl MultiSioStop
	movs r0, #0
	bl MultiSioInit
	ldr r1, _0801A780 @ =gTilemapsRef
	ldr r0, _0801A784 @ =gTilemaps
	str r0, [r1]
	ldr r1, _0801A788 @ =gRefSpriteTables
	ldr r0, _0801A78C @ =gSpriteTables
	str r0, [r1]
	ldr r1, _0801A790 @ =gMultiplayerMissingHeartbeats
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	movs r0, #1
	bl CreateMultipackOutcomeScreen
	pop {r0}
	bx r0
	.align 2, 0
_0801A774: .4byte gFlags
_0801A778: .4byte gDispCnt
_0801A77C: .4byte gMultiSioEnabled
_0801A780: .4byte gTilemapsRef
_0801A784: .4byte gTilemaps
_0801A788: .4byte gRefSpriteTables
_0801A78C: .4byte gSpriteTables
_0801A790: .4byte gMultiplayerMissingHeartbeats

	thumb_func_start CreateMultiplayerSinglePakResultsScreen
CreateMultiplayerSinglePakResultsScreen: @ 0x0801A794
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov sl, r0
	ldr r0, _0801AA0C @ =gMultiplayerMissingHeartbeats
	movs r5, #0
	strb r5, [r0, #3]
	strb r5, [r0, #2]
	strb r5, [r0, #1]
	strb r5, [r0]
	ldr r0, _0801AA10 @ =gWinRegs
	movs r6, #0
	strh r5, [r0, #8]
	strh r5, [r0, #0xa]
	strh r5, [r0]
	strh r5, [r0, #4]
	strh r5, [r0, #2]
	strh r5, [r0, #6]
	ldr r0, _0801AA14 @ =gStageFlags
	strh r5, [r0]
	ldr r1, _0801AA18 @ =gMultiSioEnabled
	movs r0, #1
	strb r0, [r1]
	ldr r4, _0801AA1C @ =gFlags
	ldr r0, [r4]
	ldr r1, _0801AA20 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r4]
	bl m4aSoundVSyncOn
	ldr r1, _0801AA24 @ =gGameMode
	movs r0, #6
	strb r0, [r1]
	ldr r0, [r4]
	ldr r1, _0801AA28 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r4]
	ldr r0, _0801AA2C @ =gUnknown_087E3610
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #6
	mov sb, r2
	bl CpuFastSet
	ldr r0, _0801AA30 @ =gUnknown_087D7E80
	ldr r4, _0801AA34 @ =gUnknown_02033000
	movs r2, #0xd0
	lsls r2, r2, #6
	adds r1, r4, #0
	bl CpuFastSet
	ldr r1, _0801AA38 @ =gTilemapsRef
	ldr r0, [r4]
	str r0, [r1]
	ldr r0, _0801AA3C @ =gDispCnt
	movs r3, #0x40
	strh r3, [r0]
	ldr r1, _0801AA40 @ =gBgCntRegs
	ldr r0, _0801AA44 @ =0x00005E0B
	strh r0, [r1, #6]
	ldr r0, _0801AA48 @ =0x00001C0C
	strh r0, [r1, #4]
	ldr r2, _0801AA4C @ =sa2__gUnknown_03004D80
	movs r0, #0x7f
	strb r0, [r2, #2]
	ldr r0, _0801AA50 @ =sa2__gUnknown_03002280
	strb r6, [r0, #8]
	strb r6, [r0, #9]
	movs r1, #0xff
	strb r1, [r0, #0xa]
	movs r1, #0x20
	strb r1, [r0, #0xb]
	subs r1, #0x21
	strb r1, [r2, #3]
	strb r6, [r0, #0xc]
	strb r6, [r0, #0xd]
	strb r1, [r0, #0xe]
	strb r3, [r0, #0xf]
	str r5, [sp, #4]
	ldr r2, _0801AA54 @ =0x040000D4
	add r3, sp, #4
	str r3, [r2]
	ldr r0, _0801AA58 @ =0x06009FE0
	str r0, [r2, #4]
	ldr r3, _0801AA5C @ =0x85000010
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	str r5, [sp, #4]
	add r4, sp, #4
	str r4, [r2]
	movs r0, #3
	mov r8, r0
	lsls r0, r0, #0xe
	ldr r1, _0801AA60 @ =0x06000FE0
	adds r0, r0, r1
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0801AA64 @ =sa2__Task_808207C
	movs r1, #0x88
	lsls r1, r1, #3
	str r5, [sp]
	mov r2, sb
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	ldr r1, _0801AA68 @ =0x03000434
	adds r0, r4, r1
	mov r2, sl
	str r2, [r0]
	ldr r3, _0801AA6C @ =0x03000430
	adds r0, r4, r3
	strh r5, [r0]
	adds r1, #4
	adds r0, r4, r1
	strb r6, [r0]
	adds r3, #0xc
	adds r2, r4, r3
	ldr r0, _0801AA70 @ =gLoadedSaveGame
	ldr r1, _0801AA74 @ =gFrameCount
	ldr r0, [r0, #4]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, _0801AA78 @ =0x06008000
	str r0, [r7, #4]
	strh r5, [r7, #0xa]
	ldr r0, _0801AA7C @ =0x0600F000
	str r0, [r7, #0xc]
	strh r5, [r7, #0x18]
	strh r5, [r7, #0x1a]
	movs r0, #4
	strh r0, [r7, #0x1c]
	strh r5, [r7, #0x1e]
	strh r5, [r7, #0x20]
	strh r5, [r7, #0x22]
	strh r5, [r7, #0x24]
	movs r0, #0x1e
	strh r0, [r7, #0x26]
	movs r0, #0x19
	strh r0, [r7, #0x28]
	ldr r5, _0801AA80 @ =0x0300002A
	adds r0, r4, r5
	strb r6, [r0]
	mov r0, r8
	strh r0, [r7, #0x2e]
	adds r0, r7, #0
	bl DrawBackground
	movs r6, #0
	movs r1, #0
	mov r8, r1
	movs r3, #0
	ldr r2, _0801AA84 @ =0x03000088
	adds r5, r4, r2
	movs r2, #0x14
	ldr r0, _0801AA88 @ =0x03000080
	adds r4, r4, r0
_0801A8E0:
	movs r0, #0x78
	strh r0, [r5, #0xe]
	strh r2, [r5, #0x10]
	lsls r0, r6, #0xb
	ldr r1, _0801AA8C @ =0x06010000
	adds r0, r0, r1
	str r0, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r5, #0x12]
	strh r3, [r5]
	ldr r1, _0801AA90 @ =gPlayerCharacterIdleAnims
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5, #2]
	mov r0, r8
	strb r0, [r5, #0x18]
	strh r3, [r5, #0xc]
	strh r3, [r5, #0x14]
	movs r0, #0xff
	strb r0, [r5, #0x19]
	movs r0, #0x10
	strb r0, [r5, #0x1a]
	mov r1, r8
	strb r1, [r5, #0x1d]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r5, #8]
	adds r0, r4, #0
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	bl UpdateSpriteAnimation
	adds r5, #0x38
	ldr r2, [sp, #0x10]
	adds r2, #0x28
	adds r4, #0x38
	adds r6, #1
	ldr r3, [sp, #0x14]
	cmp r6, #3
	bls _0801A8E0
	movs r6, #0
	movs r1, #0
	movs r2, #0xb4
	lsls r2, r2, #1
	adds r4, r7, r2
	movs r3, #0xb0
	lsls r3, r3, #1
	adds r5, r7, r3
	ldr r2, _0801AA94 @ =0x06012000
_0801A946:
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x10]
	str r2, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x12]
	strh r1, [r4]
	movs r3, #0xe0
	lsls r3, r3, #2
	mov r8, r3
	mov r0, r8
	strh r0, [r4, #2]
	adds r0, r6, #3
	strb r0, [r4, #0x18]
	strh r1, [r4, #0xc]
	strh r1, [r4, #0x14]
	movs r0, #1
	rsbs r0, r0, #0
	mov r3, sp
	strb r0, [r3, #8]
	movs r0, #0xff
	strb r0, [r4, #0x19]
	movs r3, #0x10
	mov sb, r3
	mov r0, sb
	strb r0, [r4, #0x1a]
	movs r3, #0
	strb r3, [r4, #0x1d]
	movs r0, #0x80
	lsls r0, r0, #5
	mov sl, r0
	str r0, [r4, #8]
	adds r0, r5, #0
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	bl UpdateSpriteAnimation
	adds r4, #0x30
	adds r5, #0x30
	ldr r2, [sp, #0x10]
	adds r2, #0x80
	adds r6, #1
	ldr r1, [sp, #0xc]
	cmp r6, #9
	bls _0801A946
	ldr r1, _0801AA98 @ =0x00000434
	adds r0, r7, r1
	ldr r4, [r0]
	cmp r4, #0
	beq _0801AAA0
	movs r6, #0
	movs r2, #0
	mov r8, r2
	movs r1, #0
	movs r3, #0xde
	lsls r3, r3, #2
	adds r4, r7, r3
	ldr r2, _0801AA9C @ =0x06012500
	movs r0, #0xdc
	lsls r0, r0, #2
	adds r5, r7, r0
_0801A9C0:
	str r2, [r5, #4]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x12]
	strh r1, [r4]
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r4, #2]
	strb r6, [r4, #0x18]
	strh r1, [r4, #0xc]
	strh r1, [r4, #0x14]
	movs r0, #0xff
	strb r0, [r4, #0x19]
	movs r0, #0x10
	strb r0, [r4, #0x1a]
	mov r3, r8
	strb r3, [r4, #0x1d]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r5, #0
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	bl UpdateSpriteAnimation
	adds r4, #0x30
	ldr r2, [sp, #0x10]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r2, r2, r0
	adds r5, #0x30
	adds r6, #1
	ldr r1, [sp, #0xc]
	cmp r6, #2
	bls _0801A9C0
	b _0801AAEE
	.align 2, 0
_0801AA0C: .4byte gMultiplayerMissingHeartbeats
_0801AA10: .4byte gWinRegs
_0801AA14: .4byte gStageFlags
_0801AA18: .4byte gMultiSioEnabled
_0801AA1C: .4byte gFlags
_0801AA20: .4byte 0xFFFFBFFF
_0801AA24: .4byte gGameMode
_0801AA28: .4byte 0xFFFF7FFF
_0801AA2C: .4byte gUnknown_087E3610
_0801AA30: .4byte gUnknown_087D7E80
_0801AA34: .4byte gUnknown_02033000
_0801AA38: .4byte gTilemapsRef
_0801AA3C: .4byte gDispCnt
_0801AA40: .4byte gBgCntRegs
_0801AA44: .4byte 0x00005E0B
_0801AA48: .4byte 0x00001C0C
_0801AA4C: .4byte sa2__gUnknown_03004D80
_0801AA50: .4byte sa2__gUnknown_03002280
_0801AA54: .4byte 0x040000D4
_0801AA58: .4byte 0x06009FE0
_0801AA5C: .4byte 0x85000010
_0801AA60: .4byte 0x06000FE0
_0801AA64: .4byte sa2__Task_808207C
_0801AA68: .4byte 0x03000434
_0801AA6C: .4byte 0x03000430
_0801AA70: .4byte gLoadedSaveGame
_0801AA74: .4byte gFrameCount
_0801AA78: .4byte 0x06008000
_0801AA7C: .4byte 0x0600F000
_0801AA80: .4byte 0x0300002A
_0801AA84: .4byte 0x03000088
_0801AA88: .4byte 0x03000080
_0801AA8C: .4byte 0x06010000
_0801AA90: .4byte gPlayerCharacterIdleAnims
_0801AA94: .4byte 0x06012000
_0801AA98: .4byte 0x00000434
_0801AA9C: .4byte 0x06012500
_0801AAA0:
	movs r1, #0xd0
	lsls r1, r1, #2
	adds r0, r7, r1
	movs r3, #0
	strh r4, [r0, #0x16]
	strh r4, [r0, #0x18]
	ldr r1, _0801AB00 @ =0x06012500
	str r1, [r0, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #0x1a]
	strh r4, [r0, #8]
	mov r2, r8
	strh r2, [r0, #0xa]
	movs r5, #0xd8
	lsls r5, r5, #2
	adds r2, r7, r5
	movs r1, #0xd
	strb r1, [r2]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0x1c]
	ldr r1, _0801AB04 @ =0x00000361
	adds r2, r7, r1
	ldrb r1, [r2]
	mov r4, sp
	ldrb r4, [r4, #8]
	orrs r1, r4
	strb r1, [r2]
	adds r5, #2
	adds r1, r7, r5
	mov r2, sb
	strb r2, [r1]
	ldr r4, _0801AB08 @ =0x00000365
	adds r1, r7, r4
	strb r3, [r1]
	mov r5, sl
	str r5, [r0, #0x10]
	bl UpdateSpriteAnimation
_0801AAEE:
	ldr r1, _0801AB0C @ =0x00000434
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0801AB10
	movs r0, #0x36      @ MUS_VS_RESULT
	bl m4aSongNumStart
	b _0801AB16
	.align 2, 0
_0801AB00: .4byte 0x06012500
_0801AB04: .4byte 0x00000361
_0801AB08: .4byte 0x00000365
_0801AB0C: .4byte 0x00000434
_0801AB10:
	movs r0, #0x34      @ MUS_VS_SCORE_OVERVIEW
	bl m4aSongNumStart
_0801AB16:
	ldr r0, _0801AB30 @ =gBldRegs
	movs r1, #0xff
	strh r1, [r0]
	movs r1, #0x10
	strh r1, [r0, #4]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801AB30: .4byte gBldRegs

	thumb_func_start sa2__Task_808207C
sa2__Task_808207C: @ 0x0801AB34
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	ldr r2, _0801ABB0 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0xc0
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _0801ABB4 @ =gMultiplayerConnections
	ldr r3, _0801ABB8 @ =gMultiSioStatusFlags
	ldr r0, [r3]
	movs r1, #0xf0
	lsls r1, r1, #4
	ands r0, r1
	lsrs r0, r0, #8
	strb r0, [r2]
	ldr r0, _0801ABBC @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0801ABF2
	movs r6, #0
	ldrb r0, [r2]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801ABF2
	movs r7, #1
	ldr r5, _0801ABC0 @ =gMultiplayerMissingHeartbeats
_0801AB72:
	adds r0, r7, #0
	lsls r0, r6
	ldr r4, [r3]
	ands r4, r0
	cmp r4, #0
	bne _0801ABDC
	ldrb r0, [r5]
	adds r1, r0, #1
	strb r1, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _0801ABE0
	movs r0, #0
	ldr r1, _0801ABC4 @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _0801ABC8 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0801ABCC @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0801ABD0 @ =sa2__gUnknown_03005390
	strb r4, [r0]
	ldr r1, _0801ABD4 @ =gVramGraphicsCopyCursor
	ldr r0, _0801ABD8 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl MultiPakCommunicationError
	b _0801AE7A
	.align 2, 0
_0801ABB0: .4byte gDispCnt
_0801ABB4: .4byte gMultiplayerConnections
_0801ABB8: .4byte gMultiSioStatusFlags
_0801ABBC: .4byte gGameMode
_0801ABC0: .4byte gMultiplayerMissingHeartbeats
_0801ABC4: .4byte 0x0000FFFF
_0801ABC8: .4byte gBackgroundsCopyQueueCursor
_0801ABCC: .4byte gBackgroundsCopyQueueIndex
_0801ABD0: .4byte sa2__gUnknown_03005390
_0801ABD4: .4byte gVramGraphicsCopyCursor
_0801ABD8: .4byte gVramGraphicsCopyQueueIndex
_0801ABDC:
	movs r0, #0
	strb r0, [r5]
_0801ABE0:
	adds r5, #1
	adds r6, #1
	cmp r6, #3
	bhi _0801ABF2
	ldrb r0, [r2]
	asrs r0, r6
	ands r0, r7
	cmp r0, #0
	bne _0801AB72
_0801ABF2:
	ldr r2, _0801AC68 @ =gMultiSioSend
	movs r0, #0x10
	strh r0, [r2]
	ldr r0, [r3]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801AC08
	ldr r0, _0801AC6C @ =gLoadedSaveGame
	ldrb r0, [r0, #0x19]
	strb r0, [r2, #3]
_0801AC08:
	ldr r0, _0801AC70 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r3
	mov r8, r0
	ldr r1, _0801AC74 @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	ldr r0, _0801AC78 @ =0x03000430
	adds r1, r3, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf0
	bhi _0801AC32
	b _0801AD78
_0801AC32:
	ldr r1, _0801AC7C @ =0x03000434
	adds r0, r3, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0801ACBE
	movs r6, #0
	movs r7, #0
	ldr r0, _0801AC80 @ =0x03000378
	adds r4, r3, r0
	ldr r1, _0801AC84 @ =0x06012500
	subs r0, #8
	adds r5, r3, r0
_0801AC4A:
	str r1, [r5, #4]
	strh r7, [r4, #0xe]
	strh r7, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x12]
	strh r7, [r4]
	ldr r0, _0801AC6C @ =gLoadedSaveGame
	ldrb r0, [r0, #0x19]
	cmp r0, #0
	bne _0801AC88
	movs r0, #0xe1
	lsls r0, r0, #2
	b _0801AC8C
	.align 2, 0
_0801AC68: .4byte gMultiSioSend
_0801AC6C: .4byte gLoadedSaveGame
_0801AC70: .4byte gCurTask
_0801AC74: .4byte gBldRegs
_0801AC78: .4byte 0x03000430
_0801AC7C: .4byte 0x03000434
_0801AC80: .4byte 0x03000378
_0801AC84: .4byte 0x06012500
_0801AC88:
	movs r0, #0xe0
	lsls r0, r0, #2
_0801AC8C:
	strh r0, [r4, #2]
	strb r6, [r4, #0x18]
	strh r7, [r4, #0xc]
	strh r7, [r4, #0x14]
	movs r0, #0xff
	strb r0, [r4, #0x19]
	movs r0, #0x10
	strb r0, [r4, #0x1a]
	strb r7, [r4, #0x1d]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r5, #0
	str r1, [sp, #4]
	bl UpdateSpriteAnimation
	adds r4, #0x30
	ldr r1, [sp, #4]
	movs r3, #0xe0
	lsls r3, r3, #1
	adds r1, r1, r3
	adds r5, #0x30
	adds r6, #1
	cmp r6, #2
	bls _0801AC4A
_0801ACBE:
	ldr r0, _0801ACF4 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801AD54
	movs r2, #0x80
	lsls r2, r2, #3
	add r2, r8
	movs r0, #0x78
	strh r0, [r2, #0x16]
	movs r0, #0x50
	strh r0, [r2, #0x18]
	ldr r0, _0801ACF8 @ =0x00000434
	add r0, r8
	ldr r0, [r0]
	cmp r0, #0
	beq _0801ACFC
	movs r0, #0xf5
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	movs r1, #0xe0
	lsls r1, r1, #1
	adds r0, r0, r1
	b _0801AD0A
	.align 2, 0
_0801ACF4: .4byte gMultiSioStatusFlags
_0801ACF8: .4byte 0x00000434
_0801ACFC:
	movs r0, #0xd1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	movs r3, #0xe0
	lsls r3, r3, #1
	adds r0, r0, r3
_0801AD0A:
	str r0, [r2, #4]
	movs r1, #0
	movs r0, #0
	strh r0, [r2, #0x1a]
	strh r0, [r2, #8]
	ldr r0, _0801AD20 @ =gLoadedSaveGame
	ldrb r0, [r0, #0x19]
	cmp r0, #0
	bne _0801AD28
	ldr r0, _0801AD24 @ =0x0000037D
	b _0801AD2A
	.align 2, 0
_0801AD20: .4byte gLoadedSaveGame
_0801AD24: .4byte 0x0000037D
_0801AD28:
	ldr r0, _0801AD6C @ =0x0000037A
_0801AD2A:
	strh r0, [r2, #0xa]
	adds r0, r2, #0
	adds r0, #0x20
	movs r1, #0
	strb r1, [r0]
	strh r1, [r2, #0x14]
	strh r1, [r2, #0x1c]
	adds r3, r2, #0
	adds r3, #0x21
	movs r0, #0xff
	strb r0, [r3]
	adds r3, #1
	movs r0, #0x10
	strb r0, [r3]
	adds r3, #3
	movs r0, #0xa
	strb r0, [r3]
	str r1, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
_0801AD54:
	movs r1, #0x86
	lsls r1, r1, #3
	add r1, r8
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0801AD70 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801AD74 @ =sub_801AE88
	str r0, [r1, #8]
	bl _call_via_r0
	b _0801AE7A
	.align 2, 0
_0801AD6C: .4byte 0x0000037A
_0801AD70: .4byte gCurTask
_0801AD74: .4byte sub_801AE88
_0801AD78:
	movs r6, #0
	movs r0, #1
	mov r8, r0
	ldr r1, _0801ADC0 @ =0x03000430
	adds r7, r3, r1
_0801AD82:
	ldr r2, _0801ADC4 @ =gMultiSioStatusFlags
	adds r0, r6, #0
	adds r0, #8
	mov r1, r8
	lsls r1, r0
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _0801ADFA
	ldr r0, _0801ADC8 @ =sa2__gUnknown_030054B4
	adds r0, r6, r0
	ldrb r1, [r0]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _0801ADCC
	lsls r1, r6, #2
	adds r1, r1, r6
	lsls r5, r1, #3
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x18
	adds r4, r6, #1
	lsls r2, r4, #2
	adds r2, r2, r4
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x18
	ldrh r0, [r7]
	movs r3, #0xf0
	subs r3, r3, r0
	b _0801ADE4
	.align 2, 0
_0801ADC0: .4byte 0x03000430
_0801ADC4: .4byte gMultiSioStatusFlags
_0801ADC8: .4byte sa2__gUnknown_030054B4
_0801ADCC:
	lsls r1, r6, #2
	adds r1, r1, r6
	lsls r5, r1, #3
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x18
	adds r4, r6, #1
	lsls r2, r4, #2
	adds r2, r2, r4
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x18
	ldrh r3, [r7]
	subs r3, #0xf0
_0801ADE4:
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r0, #0xa0
	subs r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #3
	bl sa2__sub_80078D4
	b _0801AE72
_0801ADFA:
	ldr r0, _0801AE3C @ =sa2__gUnknown_030054B4
	adds r2, r6, r0
	ldrb r1, [r2]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _0801AE40
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r1, r4, #0x1b
	lsrs r1, r1, #0x18
	adds r0, #1
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x18
	ldrh r0, [r7]
	movs r3, #0xf0
	subs r3, r3, r0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r6, #2
	adds r0, r0, r6
	subs r0, r0, r4
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #3
	bl sa2__sub_80078D4
	b _0801AE70
	.align 2, 0
_0801AE3C: .4byte sa2__gUnknown_030054B4
_0801AE40:
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r1, r4, #0x1b
	lsrs r1, r1, #0x18
	adds r0, #1
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x18
	ldrh r3, [r7]
	subs r3, #0xf0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r6, #2
	adds r0, r0, r6
	subs r0, r0, r4
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #3
	bl sa2__sub_80078D4
_0801AE70:
	adds r4, r6, #1
_0801AE72:
	adds r6, r4, #0
	cmp r6, #3
	bhi _0801AE7A
	b _0801AD82
_0801AE7A:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801AE88
sub_801AE88: @ 0x0801AE88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r7, #0
	movs r0, #0
	mov sl, r0
	ldr r1, _0801AF38 @ =gCurTask
	mov sb, r1
	ldr r0, [r1]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	str r0, [sp]
	ldr r2, _0801AF3C @ =gMultiplayerConnections
	mov r8, r2
	ldr r6, _0801AF40 @ =gMultiSioStatusFlags
	ldr r0, [r6]
	movs r1, #0xf0
	lsls r1, r1, #4
	ands r0, r1
	lsrs r0, r0, #8
	strb r0, [r2]
	ldr r5, _0801AF44 @ =gMultiSioRecv
	ldrh r3, [r5]
	cmp r3, #0x12
	bne _0801AF88
	ldr r0, _0801AF48 @ =gSelectedCharacter
	strb r7, [r0]
	ldr r0, _0801AF4C @ =0x03000434
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	bne _0801AF10
	ldr r1, _0801AF50 @ =0x03000040
	adds r0, r4, r1
	ldr r1, _0801AF54 @ =0x0600C000
	str r1, [r0, #4]
	movs r2, #0
	strh r7, [r0, #0xa]
	ldr r1, _0801AF58 @ =0x0600E000
	str r1, [r0, #0xc]
	strh r7, [r0, #0x18]
	strh r7, [r0, #0x1a]
	movs r1, #5
	strh r1, [r0, #0x1c]
	strh r7, [r0, #0x1e]
	ldr r1, _0801AF5C @ =gLoadedSaveGame
	ldrb r1, [r1, #0x19]
	lsls r1, r1, #2
	strh r1, [r0, #0x20]
	movs r1, #6
	strh r1, [r0, #0x22]
	movs r1, #8
	strh r1, [r0, #0x24]
	strh r3, [r0, #0x26]
	movs r1, #4
	strh r1, [r0, #0x28]
	ldr r3, _0801AF60 @ =0x0300006A
	adds r1, r4, r3
	strb r2, [r1]
	movs r1, #2
	strh r1, [r0, #0x2e]
	bl DrawBackground
_0801AF10:
	ldr r2, _0801AF64 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0801AF68 @ =0x03000430
	adds r0, r4, r1
	strh r7, [r0]
	ldr r0, [r5]
	cmp r0, #0
	beq _0801AF74
	ldr r1, _0801AF6C @ =gBldRegs
	movs r0, #0xff
	strh r0, [r1]
	mov r2, sb
	ldr r1, [r2]
	ldr r0, _0801AF70 @ =sa2__Task_8082630
	b _0801AF7A
	.align 2, 0
_0801AF38: .4byte gCurTask
_0801AF3C: .4byte gMultiplayerConnections
_0801AF40: .4byte gMultiSioStatusFlags
_0801AF44: .4byte gMultiSioRecv
_0801AF48: .4byte gSelectedCharacter
_0801AF4C: .4byte 0x03000434
_0801AF50: .4byte 0x03000040
_0801AF54: .4byte 0x0600C000
_0801AF58: .4byte 0x0600E000
_0801AF5C: .4byte gLoadedSaveGame
_0801AF60: .4byte 0x0300006A
_0801AF64: .4byte gDispCnt
_0801AF68: .4byte 0x03000430
_0801AF6C: .4byte gBldRegs
_0801AF70: .4byte sa2__Task_8082630
_0801AF74:
	mov r3, sb
	ldr r1, [r3]
	ldr r0, _0801AF84 @ =sub_801B500
_0801AF7A:
	str r0, [r1, #8]
	bl _call_via_r0
	b _0801B04E
	.align 2, 0
_0801AF84: .4byte sub_801B500
_0801AF88:
	bl sa2__sub_8082788
	ldr r0, [r6]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801AF9E
	ldr r1, _0801AFC8 @ =0x03000400
	adds r0, r4, r1
	bl DisplaySprite
_0801AF9E:
	movs r2, #0
	mov r3, r8
	ldrb r1, [r3]
	movs r0, #1
	ands r1, r0
	ldr r0, _0801AFCC @ =gMultiSioSend
	mov ip, r0
	cmp r1, #0
	beq _0801AFFC
	movs r3, #1
	ldr r4, [r6]
	mov sb, r5
	movs r1, #0
_0801AFB8:
	adds r0, r3, #0
	lsls r0, r2
	ands r0, r4
	cmp r0, #0
	bne _0801AFD0
	movs r5, #1
	mov sl, r5
	b _0801AFE8
	.align 2, 0
_0801AFC8: .4byte 0x03000400
_0801AFCC: .4byte gMultiSioSend
_0801AFD0:
	mov r0, sb
	adds r5, r1, r0
	ldr r0, _0801B060 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r2, r0
	beq _0801AFE6
	ldrh r0, [r5]
	cmp r0, #0x10
	bne _0801AFE8
_0801AFE6:
	adds r7, #1
_0801AFE8:
	adds r1, #0x14
	adds r2, #1
	cmp r2, #3
	bhi _0801AFFC
	mov r5, r8
	ldrb r0, [r5]
	asrs r0, r2
	ands r0, r3
	cmp r0, #0
	bne _0801AFB8
_0801AFFC:
	mov r5, ip
	movs r0, #0x10
	strh r0, [r5]
	ldr r0, [r6]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801B030
	ldr r0, _0801B064 @ =gLoadedSaveGame
	ldrb r0, [r0, #0x19]
	strb r0, [r5, #3]
	ldr r0, [r6]
	ands r0, r1
	cmp r0, #0
	beq _0801B030
	ldr r0, _0801B068 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0801B030
	mov r0, sl
	cmp r0, #0
	bne _0801B030
	cmp r7, #1
	bgt _0801B03E
_0801B030:
	ldr r1, [sp]
	movs r2, #0x87
	lsls r2, r2, #3
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801B04E
_0801B03E:
	ldr r3, [sp]
	movs r1, #0x87
	lsls r1, r1, #3
	adds r0, r3, r1
	movs r1, #1
	strb r1, [r0]
	movs r0, #0x12
	strh r0, [r5]
_0801B04E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801B060: .4byte 0x04000128
_0801B064: .4byte gLoadedSaveGame
_0801B068: .4byte gPressedKeys

	thumb_func_start sa2__Task_8082630
sa2__Task_8082630: @ 0x0801B06C
	push {r4, r5, lr}
	ldr r5, _0801B0A8 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	ldr r1, _0801B0AC @ =0x03000430
	adds r4, r0, r1
	ldrh r0, [r4]
	adds r0, #0x20
	strh r0, [r4]
	bl sa2__sub_8082788
	ldrh r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #5
	cmp r0, r1
	bls _0801B09A
	strh r1, [r4]
	ldr r1, _0801B0B0 @ =gBldRegs
	movs r0, #0x10
	strh r0, [r1, #4]
	ldr r1, [r5]
	ldr r0, _0801B0B4 @ =sa2__sub_808267C
	str r0, [r1, #8]
_0801B09A:
	ldr r1, _0801B0B0 @ =gBldRegs
	ldrh r0, [r4]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801B0A8: .4byte gCurTask
_0801B0AC: .4byte 0x03000430
_0801B0B0: .4byte gBldRegs
_0801B0B4: .4byte sa2__sub_808267C

	thumb_func_start sa2__sub_808267C
sa2__sub_808267C: @ 0x0801B0B8
	push {r4, r5, r6, r7, lr}
	ldr r2, _0801B110 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r3, _0801B114 @ =gMultiSioRecv
	ldrh r0, [r3]
	adds r6, r2, #0
	cmp r0, #0x80
	bne _0801B144
	ldr r1, _0801B118 @ =gUnknown_03005010
	ldr r0, [r3, #8]
	str r0, [r1]
	movs r1, #0
	ldr r5, _0801B11C @ =gFlags
	ldr r2, _0801B120 @ =gMultiplayerCharacters
	movs r4, #0
	ldr r3, _0801B124 @ =sa2__gUnknown_030054B4
_0801B0E0:
	adds r0, r1, r2
	strb r4, [r0]
	adds r0, r1, r3
	strb r1, [r0]
	adds r1, #1
	cmp r1, #3
	bls _0801B0E0
	ldr r0, [r5]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5]
	ldr r1, _0801B128 @ =0x00000434
	adds r0, r7, r1
	ldr r4, [r0]
	cmp r4, #0
	beq _0801B12C
	ldr r0, [r6]
	bl TaskDestroy
	movs r0, #0
	bl CreateMultiplayerSinglePakResultsScreen
	b _0801B198
	.align 2, 0
_0801B110: .4byte gCurTask
_0801B114: .4byte gMultiSioRecv
_0801B118: .4byte gUnknown_03005010
_0801B11C: .4byte gFlags
_0801B120: .4byte gMultiplayerCharacters
_0801B124: .4byte sa2__gUnknown_030054B4
_0801B128: .4byte 0x00000434
_0801B12C:
	ldr r0, [r6]
	bl TaskDestroy
	ldr r0, _0801B140 @ =gBldRegs
	strh r4, [r0]
	strh r4, [r0, #4]
	bl sub_800FCFC
	b _0801B198
	.align 2, 0
_0801B140: .4byte gBldRegs
_0801B144:
	bl sa2__sub_8082788
	ldr r3, _0801B1A0 @ =gMultiSioSend
	movs r1, #0
	movs r0, #0x51
	strh r0, [r3]
	strb r1, [r3, #2]
	ldr r0, _0801B1A4 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801B198
	movs r1, #0
	ldr r0, _0801B1A8 @ =gMultiplayerConnections
	ldrb r2, [r0]
	movs r5, #1
	ldr r4, _0801B1AC @ =gMultiSioRecv
_0801B168:
	adds r0, r2, #0
	asrs r0, r1
	ands r0, r5
	cmp r0, #0
	beq _0801B180
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r3, r0, r4
	ldrh r0, [r3]
	cmp r0, #0x51
	bne _0801B198
_0801B180:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0801B168
	ldr r3, _0801B1A0 @ =gMultiSioSend
	movs r0, #0x80
	strh r0, [r3]
	ldr r1, _0801B1B0 @ =0x0000043C
	adds r0, r7, r1
	ldr r0, [r0]
	str r0, [r3, #8]
_0801B198:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801B1A0: .4byte gMultiSioSend
_0801B1A4: .4byte gMultiSioStatusFlags
_0801B1A8: .4byte gMultiplayerConnections
_0801B1AC: .4byte gMultiSioRecv
_0801B1B0: .4byte 0x0000043C

	thumb_func_start sa2__sub_8082788
sa2__sub_8082788: @ 0x0801B1B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0801B218 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0801B256
	movs r5, #0
	ldr r2, _0801B21C @ =gMultiplayerConnections
	ldrb r1, [r2]
	movs r0, #1
	ands r1, r0
	ldr r7, _0801B220 @ =gMultiSioStatusFlags
	cmp r1, #0
	beq _0801B256
	movs r6, #1
	ldr r3, _0801B224 @ =gMultiplayerMissingHeartbeats
_0801B1DC:
	adds r0, r6, #0
	lsls r0, r5
	ldr r4, [r7]
	ands r4, r0
	cmp r4, #0
	bne _0801B240
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _0801B244
	movs r0, #0
	ldr r1, _0801B228 @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _0801B22C @ =gBackgroundsCopyQueueCursor
	ldr r0, _0801B230 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0801B234 @ =sa2__gUnknown_03005390
	strb r4, [r0]
	ldr r1, _0801B238 @ =gVramGraphicsCopyCursor
	ldr r0, _0801B23C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl MultiPakCommunicationError
	b _0801B4EE
	.align 2, 0
_0801B218: .4byte gGameMode
_0801B21C: .4byte gMultiplayerConnections
_0801B220: .4byte gMultiSioStatusFlags
_0801B224: .4byte gMultiplayerMissingHeartbeats
_0801B228: .4byte 0x0000FFFF
_0801B22C: .4byte gBackgroundsCopyQueueCursor
_0801B230: .4byte gBackgroundsCopyQueueIndex
_0801B234: .4byte sa2__gUnknown_03005390
_0801B238: .4byte gVramGraphicsCopyCursor
_0801B23C: .4byte gVramGraphicsCopyQueueIndex
_0801B240:
	movs r0, #0
	strb r0, [r3]
_0801B244:
	adds r3, #1
	adds r5, #1
	cmp r5, #3
	bhi _0801B256
	ldrb r0, [r2]
	asrs r0, r5
	ands r0, r6
	cmp r0, #0
	bne _0801B1DC
_0801B256:
	ldr r0, _0801B2AC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov r8, r1
	movs r6, #0
_0801B266:
	ldr r2, _0801B2B0 @ =gMultiSioStatusFlags
	adds r0, r6, #0
	adds r0, #8
	movs r3, #1
	adds r1, r3, #0
	lsls r1, r0
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _0801B2B8
	ldr r0, _0801B2B4 @ =sa2__gUnknown_030054B4
	adds r0, r6, r0
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	lsls r1, r6, #2
	adds r1, r1, r6
	lsls r3, r1, #3
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x18
	adds r4, r6, #1
	lsls r2, r4, #2
	adds r2, r2, r4
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x18
	movs r0, #0xa0
	subs r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #3
	movs r3, #0
	bl sa2__sub_80078D4
	b _0801B4E6
	.align 2, 0
_0801B2AC: .4byte gCurTask
_0801B2B0: .4byte gMultiSioStatusFlags
_0801B2B4: .4byte sa2__gUnknown_030054B4
_0801B2B8:
	ldr r0, _0801B42C @ =sa2__gUnknown_030054B4
	adds r0, r0, r6
	mov sb, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r3, r1, #3
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x18
	adds r0, #1
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x18
	lsls r5, r6, #2
	adds r4, r5, r6
	lsls r7, r4, #3
	subs r3, r7, r3
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp]
	movs r0, #3
	movs r3, #0
	bl sa2__sub_80078D4
	lsls r4, r4, #2
	ldr r0, _0801B430 @ =gMultiSioRecv
	adds r4, r4, r0
	ldr r0, _0801B434 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	mov sl, r5
	cmp r6, r0
	beq _0801B30C
	ldrh r0, [r4]
	adds r4, r6, #1
	cmp r0, #0xf
	bhi _0801B30C
	b _0801B4E6
_0801B30C:
	ldr r0, _0801B438 @ =0x00000434
	add r0, r8
	ldr r0, [r0]
	cmp r0, #0
	bne _0801B318
	b _0801B444
_0801B318:
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #3
	adds r0, #0x80
	mov r1, r8
	adds r5, r1, r0
	movs r0, #0x78
	strh r0, [r5, #0x16]
	mov r0, sb
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x14
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0801B43C @ =gMultiplayerCharacters
	adds r0, r6, r0
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r1, #0xdc
	lsls r1, r1, #2
	adds r0, r0, r1
	mov r1, r8
	adds r5, r1, r0
	movs r0, #0x34
	strh r0, [r5, #0x16]
	mov r0, sb
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x14
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0801B440 @ =gMultiplayerCharRings
	adds r0, r6, r0
	ldrb r0, [r0]
	bl Base10DigitsToHexNibbles
	lsls r4, r0, #0x10
	lsrs r1, r4, #0x10
	mov sl, r1
	lsrs r1, r4, #0x18
	movs r3, #0xf
	ands r1, r3
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r0, r0, r2
	mov r1, r8
	adds r5, r1, r0
	adds r7, r1, r2
	cmp r5, r7
	beq _0801B3C4
	movs r0, #0xa0
	strh r0, [r5, #0x16]
	mov r0, sb
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x14
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl DisplaySprite
	ldr r3, [sp, #8]
	ldr r2, [sp, #4]
_0801B3C4:
	lsrs r1, r4, #0x14
	ands r1, r3
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	mov r1, r8
	adds r5, r1, r0
	cmp r5, r7
	bne _0801B3DE
	mov r0, sl
	cmp r0, #0xff
	bls _0801B3F8
_0801B3DE:
	movs r0, #0xab
	strh r0, [r5, #0x16]
	mov r0, sb
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x14
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl DisplaySprite
_0801B3F8:
	movs r1, #0xf
	mov r0, sl
	ands r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r0, r1
	mov r1, r8
	adds r5, r1, r0
	movs r0, #0xb6
	strh r0, [r5, #0x16]
	ldr r0, _0801B42C @ =sa2__gUnknown_030054B4
	adds r0, r6, r0
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x14
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl DisplaySprite
	b _0801B4E4
	.align 2, 0
_0801B42C: .4byte sa2__gUnknown_030054B4
_0801B430: .4byte gMultiSioRecv
_0801B434: .4byte 0x04000128
_0801B438: .4byte 0x00000434
_0801B43C: .4byte gMultiplayerCharacters
_0801B440: .4byte gMultiplayerCharRings
_0801B444:
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #3
	adds r0, #0x80
	mov r1, r8
	adds r5, r1, r0
	movs r0, #0x78
	strh r0, [r5, #0x16]
	adds r0, r7, #0
	adds r0, #0x14
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0801B474 @ =gUnknown_0300500C
	adds r1, r6, r0
	ldrb r0, [r1]
	cmp r0, #0x63
	bls _0801B478
	movs r7, #0x63
	b _0801B482
	.align 2, 0
_0801B474: .4byte gUnknown_0300500C
_0801B478:
	ldrb r0, [r1]
	bl Base10DigitsToHexNibbles
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0801B482:
	lsrs r0, r7, #4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #4
	movs r4, #0xb0
	lsls r4, r4, #1
	adds r1, r1, r4
	mov r0, r8
	adds r5, r0, r1
	adds r0, r0, r4
	cmp r5, r0
	beq _0801B4AE
	movs r0, #0xa0
	strh r0, [r5, #0x16]
	mov r1, sl
	adds r0, r1, r6
	lsls r0, r0, #3
	adds r0, #0x14
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl DisplaySprite
_0801B4AE:
	movs r1, #0xf
	ands r1, r7
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r4
	mov r1, r8
	adds r5, r1, r0
	movs r0, #0xab
	strh r0, [r5, #0x16]
	mov r0, sl
	adds r4, r0, r6
	lsls r4, r4, #3
	adds r4, #0x14
	strh r4, [r5, #0x18]
	adds r0, r5, #0
	bl DisplaySprite
	movs r5, #0xd0
	lsls r5, r5, #2
	add r5, r8
	movs r0, #0xc5
	strh r0, [r5, #0x16]
	strh r4, [r5, #0x18]
	adds r0, r5, #0
	bl DisplaySprite
_0801B4E4:
	adds r4, r6, #1
_0801B4E6:
	adds r6, r4, #0
	cmp r6, #3
	bhi _0801B4EE
	b _0801B266
_0801B4EE:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801B500
sub_801B500: @ 0x0801B500
	push {r4, r5, lr}
	ldr r5, _0801B554 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	bl sa2__sub_8082788
	ldr r0, _0801B558 @ =0x03000430
	adds r4, r4, r0
	ldrh r0, [r4]
	adds r1, r0, #1
	strh r1, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1e
	bls _0801B54E
	movs r0, #0
	strh r0, [r4]
	ldr r0, _0801B55C @ =gMPlayInfo_BGM
	movs r1, #8
	bl m4aMPlayFadeOut
	ldr r0, _0801B560 @ =gMPlayInfo_SE1
	movs r1, #8
	bl m4aMPlayFadeOut
	ldr r0, _0801B564 @ =gMPlayInfo_SE2
	movs r1, #8
	bl m4aMPlayFadeOut
	ldr r0, _0801B568 @ =gMPlayInfo_SE3
	movs r1, #8
	bl m4aMPlayFadeOut
	ldr r1, _0801B56C @ =gBldRegs
	movs r0, #0xff
	strh r0, [r1]
	ldr r1, [r5]
	ldr r0, _0801B570 @ =sa2__Task_8082630
	str r0, [r1, #8]
_0801B54E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801B554: .4byte gCurTask
_0801B558: .4byte 0x03000430
_0801B55C: .4byte gMPlayInfo_BGM
_0801B560: .4byte gMPlayInfo_SE1
_0801B564: .4byte gMPlayInfo_SE2
_0801B568: .4byte gMPlayInfo_SE3
_0801B56C: .4byte gBldRegs
_0801B570: .4byte sa2__Task_8082630

	thumb_func_start sub_801B574
sub_801B574: @ 0x0801B574
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0801B5C4 @ =sub_801B6F4
	movs r1, #0x8a
	lsls r1, r1, #3
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r3, _0801B5C8 @ =sub_801BAA0
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r7, r4, #0
	movs r6, #0
	movs r1, #0
	strh r1, [r4, #0x16]
	movs r0, #8
	strh r0, [r4, #0x18]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r4, #0x1a]
	strh r1, [r4, #8]
	ldr r0, _0801B5CC @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _0801B5D4
	movs r0, #0xc
	bl VramMalloc
	str r0, [r4, #4]
	ldr r0, _0801B5D0 @ =0x000002CA
	b _0801B5DE
	.align 2, 0
_0801B5C4: .4byte sub_801B6F4
_0801B5C8: .4byte sub_801BAA0
_0801B5CC: .4byte gGameMode
_0801B5D0: .4byte 0x000002CA
_0801B5D4:
	movs r0, #0x10
	bl VramMalloc
	str r0, [r4, #4]
	ldr r0, _0801B634 @ =0x0000025E
_0801B5DE:
	strh r0, [r4, #0xa]
	ldr r1, _0801B638 @ =0x03000020
	adds r0, r5, r1
	strb r6, [r0]
	movs r1, #0
	movs r0, #0
	strh r0, [r4, #0x14]
	strh r0, [r4, #0x1c]
	adds r2, r4, #0
	adds r2, #0x21
	movs r0, #0xff
	strb r0, [r2]
	adds r2, #1
	movs r0, #0x10
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x25
	strb r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	movs r6, #0
	movs r5, #0
	mov r8, r5
	movs r0, #0x90
	lsls r0, r0, #2
	mov sl, r0
	movs r1, #0x30
	mov sb, r1
_0801B61E:
	mov r0, sb
	adds r4, r7, r0
	strh r5, [r4, #0x16]
	strh r5, [r4, #0x18]
	cmp r6, #0
	bne _0801B63C
	movs r0, #0x16
	bl VramMalloc
	b _0801B640
	.align 2, 0
_0801B634: .4byte 0x0000025E
_0801B638: .4byte 0x03000020
_0801B63C:
	ldr r0, [r7, #0x34]
	add r0, r8
_0801B640:
	str r0, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x1a]
	strh r5, [r4, #8]
	ldr r1, _0801B688 @ =0x0000038B
	strh r1, [r4, #0xa]
	adds r0, r4, #0
	adds r0, #0x20
	strb r6, [r0]
	strh r5, [r4, #0x14]
	strh r5, [r4, #0x1c]
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x25
	strb r5, [r0]
	str r5, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	mov r0, sl
	adds r4, r7, r0
	strh r5, [r4, #0x16]
	strh r5, [r4, #0x18]
	cmp r6, #0
	bne _0801B68C
	movs r0, #0x16
	bl VramMalloc
	b _0801B696
	.align 2, 0
_0801B688: .4byte 0x0000038B
_0801B68C:
	movs r1, #0x91
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	add r0, r8
_0801B696:
	str r0, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x1a]
	strh r5, [r4, #8]
	ldr r0, _0801B6F0 @ =0x0000038B
	strh r0, [r4, #0xa]
	adds r1, r6, #0
	adds r1, #0xb
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
	strh r5, [r4, #0x14]
	strh r5, [r4, #0x1c]
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x25
	strb r5, [r0]
	str r5, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	movs r1, #0x40
	add r8, r1
	movs r0, #0x30
	add sl, r0
	add sb, r0
	adds r6, #1
	cmp r6, #0xa
	bls _0801B61E
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801B6F0: .4byte 0x0000038B

	thumb_func_start sub_801B6F4
sub_801B6F4: @ 0x0801B6F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0801B8A0 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r3, r0
	str r0, [sp]
	ldr r0, _0801B8A4 @ =gCourseTime
	ldr r2, [r0]
	ldr r1, _0801B8A8 @ =0x00000E0F
	ldr r4, _0801B8AC @ =0x03000030
	adds r4, r4, r3
	mov sl, r4
	adds r4, r0, #0
	cmp r2, r1
	bhi _0801B72E
	movs r0, #2
	ands r2, r0
	cmp r2, #0
	beq _0801B72E
	ldr r0, _0801B8B0 @ =0x03000240
	adds r0, r0, r3
	mov sl, r0
_0801B72E:
	ldr r0, _0801B8B4 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801B754
	ldr r1, [r4]
	ldr r0, _0801B8B8 @ =0x000004AF
	cmp r1, r0
	bhi _0801B754
	adds r0, r1, #0
	movs r1, #0x3c
	bl Mod
	cmp r0, #0
	bne _0801B754
	movs r0, #0x8b      @ SE_TIMER
	bl m4aSongNumStart
_0801B754:
	movs r7, #0xf0
	lsls r7, r7, #1
	add r7, sl
	movs r1, #0x20
	mov r8, r1
	mov r4, r8
	strh r4, [r7, #0x18]
	movs r0, #0x18
	strh r0, [r7, #0x16]
	adds r0, r7, #0
	bl DisplaySprite
	movs r0, #0x30
	strh r0, [r7, #0x16]
	adds r0, r7, #0
	bl DisplaySprite
	ldr r4, _0801B8A4 @ =gCourseTime
	ldr r0, [r4]
	movs r1, #0x3c
	bl Div
	adds r5, r0, #0
	ldr r1, [r4]
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #2
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _0801B8BC @ =gUnknown_080BB494
	adds r0, r1, r0
	ldrb r4, [r0]
	movs r0, #0xf
	mov sb, r0
	lsrs r1, r4, #4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	mov r1, sl
	adds r7, r1, r0
	movs r0, #0x38
	strh r0, [r7, #0x16]
	mov r0, r8
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
	movs r6, #0xf
	adds r1, r6, #0
	ands r1, r4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	mov r1, sl
	adds r7, r1, r0
	movs r0, #0x40
	strh r0, [r7, #0x16]
	mov r4, r8
	strh r4, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
	adds r0, r5, #0
	movs r1, #0x3c
	bl Div
	adds r4, r0, #0
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	subs r5, r5, r0
	lsls r5, r5, #0x10
	lsrs r1, r5, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r1, #0
	bl Base10DigitsToHexNibbles
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsrs r0, r0, #0x14
	mov r1, sb
	ands r0, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #4
	mov r0, sl
	adds r7, r0, r1
	mov r1, r8
	strh r1, [r7, #0x16]
	strh r1, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
	adds r1, r6, #0
	ands r1, r5
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	mov r1, sl
	adds r7, r1, r0
	movs r0, #0x28
	strh r0, [r7, #0x16]
	mov r0, r8
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
	adds r0, r4, #0
	movs r1, #0x3c
	bl Div
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	subs r4, r4, r1
	lsls r4, r4, #0x10
	lsrs r1, r4, #0x10
	adds r0, r1, #0
	bl Base10DigitsToHexNibbles
	ands r6, r0
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #4
	mov r1, sl
	adds r7, r1, r0
	movs r0, #0x10
	strh r0, [r7, #0x16]
	mov r4, r8
	strh r4, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
	movs r5, #0
	ldr r0, _0801B8C0 @ =gMultiplayerConnections
	ldrb r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801B876
	b _0801BA86
_0801B876:
	ldr r2, _0801B8C4 @ =gGameMode
	ldr r0, [sp]
	adds r0, #0x30
	mov sl, r0
_0801B87E:
	ldr r7, [sp]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, #8
	strh r0, [r7, #0x16]
	movs r0, #8
	strh r0, [r7, #0x18]
	ldrb r0, [r2]
	cmp r0, #6
	bne _0801B8C8
	adds r0, r7, #0
	adds r0, #0x25
	strb r5, [r0]
	adds r1, r5, #1
	mov sb, r1
	b _0801B920
	.align 2, 0
_0801B8A0: .4byte gCurTask
_0801B8A4: .4byte gCourseTime
_0801B8A8: .4byte 0x00000E0F
_0801B8AC: .4byte 0x03000030
_0801B8B0: .4byte 0x03000240
_0801B8B4: .4byte gStageFlags
_0801B8B8: .4byte 0x000004AF
_0801B8BC: .4byte gUnknown_080BB494
_0801B8C0: .4byte gMultiplayerConnections
_0801B8C4: .4byte gGameMode
_0801B8C8:
	cmp r0, #4
	bne _0801B8E4
	ldr r0, _0801B8E0 @ =gMultiplayerCharacters
	adds r0, r5, r0
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x25
	strb r0, [r1]
	adds r4, r5, #1
	mov sb, r4
	b _0801B920
	.align 2, 0
_0801B8E0: .4byte gMultiplayerCharacters
_0801B8E4:
	movs r2, #0
	ldr r3, _0801B974 @ =gMultiplayerConnections
	ldrb r1, [r3]
	movs r0, #0x10
	ands r1, r0
	asrs r1, r1, #4
	ldr r0, _0801B978 @ =gMultiplayerCharacters
	mov r8, r0
	adds r4, r7, #0
	adds r4, #0x25
	adds r0, r5, #1
	mov sb, r0
	cmp r5, r1
	beq _0801B918
	movs r6, #0x10
_0801B902:
	adds r2, #1
	cmp r2, #3
	bhi _0801B918
	ldrb r0, [r3]
	adds r1, r6, #0
	lsls r1, r2
	ands r0, r1
	adds r1, r2, #4
	asrs r0, r1
	cmp r5, r0
	bne _0801B902
_0801B918:
	mov r1, r8
	adds r0, r2, r1
	ldrb r0, [r0]
	strb r0, [r4]
_0801B920:
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, _0801B97C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #5
	bne _0801B988
	movs r4, #0
	movs r2, #0
	ldr r1, _0801B980 @ =gMultiplayerPlayerTasks
	ldr r0, [r1]
	cmp r0, #0
	beq _0801B970
	ldr r0, _0801B974 @ =gMultiplayerConnections
	ldrb r3, [r0]
	mov r8, r1
	ldr r7, _0801B984 @ =gMultiplayerCharRings
	movs r6, #0x10
_0801B944:
	adds r0, r6, #0
	lsls r0, r2
	ands r0, r3
	adds r1, r2, #4
	asrs r0, r1
	cmp r5, r0
	bne _0801B95C
	adds r0, r2, r7
	ldrb r0, [r0]
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0801B95C:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bhi _0801B970
	lsls r0, r2, #2
	add r0, r8
	ldr r0, [r0]
	cmp r0, #0
	bne _0801B944
_0801B970:
	adds r0, r4, #0
	b _0801B98E
	.align 2, 0
_0801B974: .4byte gMultiplayerConnections
_0801B978: .4byte gMultiplayerCharacters
_0801B97C: .4byte gGameMode
_0801B980: .4byte gMultiplayerPlayerTasks
_0801B984: .4byte gMultiplayerCharRings
_0801B988:
	ldr r0, _0801B9F4 @ =gMultiplayerCharRings
	adds r0, r5, r0
	ldrb r0, [r0]
_0801B98E:
	bl Base10DigitsToHexNibbles
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xff
	bls _0801B9F8
	lsrs r1, r4, #8
	movs r0, #0xf
	ands r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	mov r1, sl
	adds r7, r1, r0
	ldr r1, [sp]
	ldrh r0, [r1, #0x16]
	adds r0, #3
	strh r0, [r7, #0x16]
	movs r0, #0xe
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
	lsrs r1, r4, #4
	movs r0, #0xf
	ands r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	mov r1, sl
	adds r7, r1, r0
	ldr r1, [sp]
	ldrh r0, [r1, #0x16]
	adds r0, #0xb
	strh r0, [r7, #0x16]
	movs r0, #0xe
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
	movs r1, #0xf
	ands r1, r4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	mov r1, sl
	adds r7, r1, r0
	ldr r4, [sp]
	ldrh r0, [r4, #0x16]
	adds r0, #0x13
	b _0801BA32
	.align 2, 0
_0801B9F4: .4byte gMultiplayerCharRings
_0801B9F8:
	cmp r4, #0xf
	bls _0801BA40
	lsrs r1, r4, #4
	movs r0, #0xf
	ands r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	mov r1, sl
	adds r7, r1, r0
	ldr r1, [sp]
	ldrh r0, [r1, #0x16]
	adds r0, #7
	strh r0, [r7, #0x16]
	movs r0, #0xe
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
	movs r1, #0xf
	ands r1, r4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	mov r1, sl
	adds r7, r1, r0
	ldr r4, [sp]
	ldrh r0, [r4, #0x16]
	adds r0, #0xf
_0801BA32:
	strh r0, [r7, #0x16]
	movs r0, #0xe
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
	b _0801BA60
_0801BA40:
	movs r0, #0xf
	ands r0, r4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #4
	mov r4, sl
	adds r7, r4, r1
	ldr r1, [sp]
	ldrh r0, [r1, #0x16]
	adds r0, #0xb
	strh r0, [r7, #0x16]
	movs r4, #0xe
	strh r4, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
_0801BA60:
	mov r5, sb
	cmp r5, #3
	bhi _0801BA86
	ldr r0, _0801BA98 @ =gMultiplayerConnections
	ldrb r0, [r0]
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801BA86
	ldr r0, _0801BA9C @ =gGameMode
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #5
	beq _0801BA80
	b _0801B87E
_0801BA80:
	cmp r5, #2
	beq _0801BA86
	b _0801B87E
_0801BA86:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801BA98: .4byte gMultiplayerConnections
_0801BA9C: .4byte gGameMode

	thumb_func_start sub_801BAA0
sub_801BAA0: @ 0x0801BAA0
	push {r4, r5, lr}
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	ldr r0, [r4, #4]
	bl VramFree
	ldr r0, [r4, #0x34]
	bl VramFree
	ldr r0, _0801BAC8 @ =0x03000244
	adds r5, r5, r0
	ldr r0, [r5]
	bl VramFree
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801BAC8: .4byte 0x03000244
