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
	ldr r0, _0800E5FC @ =Task_MultiplayerModeSelectScreenInit
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
_0800E5FC: .4byte Task_MultiplayerModeSelectScreenInit
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

	thumb_func_start Task_800E648
Task_800E648: @ 0x0800E648
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
	ldr r0, _0800E740 @ =Task_800E868
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
_0800E740: .4byte Task_800E868
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
	ldr r0, _0800E790 @ =Task_800E868
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
_0800E790: .4byte Task_800E868
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

	thumb_func_start Task_800E868
Task_800E868: @ 0x0800E868
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
	bl LinkCommunicationError
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
	bl LinkCommunicationError
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
	bl LinkCommunicationError
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
	bl LinkCommunicationError
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
	bl LinkCommunicationError
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

	thumb_func_start sa2__sub_8081200
sa2__sub_8081200: @ 0x0800FCFC
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
	ldr r1, _0800FD98 @ =gPlayerControls
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
_0800FD98: .4byte gPlayerControls

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

	thumb_func_start Task_MultiplayerModeSelectScreenInit
Task_MultiplayerModeSelectScreenInit: @ 0x0800FEF4
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
	ldr r0, _0800FF30 @ =Task_800E648
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
_0800FF30: .4byte Task_800E648
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
	ldr r0, _0801009C @ =Task_800E648
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
_0801009C: .4byte Task_800E648
_080100A0: .4byte sa2__gUnknown_03004D80
_080100A4: .4byte sa2__gUnknown_03002280
@ --- End of end of game/multiboot/connection.c ---
