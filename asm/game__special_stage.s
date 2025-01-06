.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateSpecialStage
CreateSpecialStage: @ 0x08029908
	push {r4, r5, lr}
	bl sa2__sub_801F044
	ldr r1, _08029984 @ =gUnknown_03005730
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08029988 @ =gUnknown_0300507C
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0802998C @ =gSpecialStageCollectedRings
	strh r1, [r0]
	ldr r5, _08029990 @ =gUnknown_03005028
	ldr r1, _08029994 @ =gUnknown_08487140
	ldr r3, _08029998 @ =gUnknown_08487134
	ldr r2, _0802999C @ =gCurrentLevel
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r4, [r0]
	strh r4, [r5]
	ldr r5, _080299A0 @ =gUnknown_03005070
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5]
	ldr r0, _080299A4 @ =gUnknown_03005154
	strh r4, [r0]
	ldr r1, _080299A8 @ =gPlayer
	adds r1, #0x26
	ldrb r2, [r1]
	movs r0, #0xfb
	ands r0, r2
	strb r0, [r1]
	ldr r0, _080299AC @ =gLoadedSaveGame
	ldrb r0, [r0, #0x1c]
	bl sub_804D02C
	bl sub_802D158
	bl sub_802D190
	bl sub_802D1D8
	bl sub_8029B74
	bl sub_802C934
	movs r0, #1
	bl sub_805C448
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08029984: .4byte gUnknown_03005730
_08029988: .4byte gUnknown_0300507C
_0802998C: .4byte gSpecialStageCollectedRings
_08029990: .4byte gUnknown_03005028
_08029994: .4byte gUnknown_08487140
_08029998: .4byte gUnknown_08487134
_0802999C: .4byte gCurrentLevel
_080299A0: .4byte gUnknown_03005070
_080299A4: .4byte gUnknown_03005154
_080299A8: .4byte gPlayer
_080299AC: .4byte gLoadedSaveGame

	thumb_func_start sub_80299B0
sub_80299B0: @ 0x080299B0
	push {r4, r5, lr}
	ldr r4, _08029A30 @ =gUnknown_03005690
	ldr r5, _08029A34 @ =gUnknown_030055E0
	ldrb r0, [r5]
	cmp r0, #2
	bne _080299F0
	movs r0, #0xd2
	lsls r0, r0, #1
	strh r0, [r5, #2]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x2a
	movs r0, #0x40
	strb r0, [r1]
	ldr r0, _08029A38 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08029A3C @ =sub_8029A50
	str r0, [r1, #8]
	ldr r0, _08029A40 @ =gUnknown_03005028
	ldr r1, _08029A44 @ =gSpecialStageCollectedRings
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bls _080299F0
	movs r0, #2
	bl sub_802C56C
_080299F0:
	ldrb r0, [r5]
	cmp r0, #1
	bne _08029A2A
	movs r0, #0xd2
	lsls r0, r0, #1
	strh r0, [r5, #2]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x2a
	movs r0, #0x80
	strb r0, [r1]
	ldr r0, _08029A38 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08029A48 @ =sub_802D274
	str r0, [r1, #8]
	ldr r0, _08029A4C @ =gUnknown_03005070
	ldr r1, _08029A44 @ =gSpecialStageCollectedRings
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bls _08029A2A
	movs r0, #2
	bl sub_802C56C
_08029A2A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08029A30: .4byte gUnknown_03005690
_08029A34: .4byte gUnknown_030055E0
_08029A38: .4byte gCurTask
_08029A3C: .4byte sub_8029A50
_08029A40: .4byte gUnknown_03005028
_08029A44: .4byte gSpecialStageCollectedRings
_08029A48: .4byte sub_802D274
_08029A4C: .4byte gUnknown_03005070

	thumb_func_start sub_8029A50
sub_8029A50: @ 0x08029A50
	push {lr}
	ldr r2, _08029A88 @ =gUnknown_03005690
	ldr r3, _08029A8C @ =gUnknown_030055E0
	ldrh r0, [r3, #2]
	subs r0, #1
	strh r0, [r3, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _08029AB2
	ldr r0, _08029A90 @ =gUnknown_03005028
	ldr r1, _08029A94 @ =gSpecialStageCollectedRings
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bhi _08029AA0
	movs r0, #0
	strb r0, [r3]
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	bl sub_802D560
	ldr r0, _08029A98 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08029A9C @ =sub_80299B0
	b _08029AB0
	.align 2, 0
_08029A88: .4byte gUnknown_03005690
_08029A8C: .4byte gUnknown_030055E0
_08029A90: .4byte gUnknown_03005028
_08029A94: .4byte gSpecialStageCollectedRings
_08029A98: .4byte gCurTask
_08029A9C: .4byte sub_80299B0
_08029AA0:
	ldr r2, _08029AB8 @ =gStageFlags
	ldrh r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08029ABC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08029AC0 @ =sub_8029AC4
_08029AB0:
	str r0, [r1, #8]
_08029AB2:
	pop {r0}
	bx r0
	.align 2, 0
_08029AB8: .4byte gStageFlags
_08029ABC: .4byte gCurTask
_08029AC0: .4byte sub_8029AC4

	thumb_func_start sub_8029AC4
sub_8029AC4: @ 0x08029AC4
	push {r4, r5, lr}
	ldr r5, _08029B20 @ =gUnknown_030055E0
	ldrh r0, [r5, #4]
	adds r0, #0x40
	movs r2, #0
	strh r0, [r5, #4]
	ldr r4, _08029B24 @ =gBldRegs
	ldr r1, _08029B28 @ =0x00003F9F
	strh r1, [r4]
	strh r2, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x18
	strh r1, [r4, #4]
	ldr r1, _08029B2C @ =0x0FFF0000
	cmp r0, r1
	bls _08029B6E
	movs r0, #0x10
	strh r0, [r4, #2]
	ldr r1, _08029B30 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08029B34 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08029B38 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08029B3C @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08029B40 @ =gVramGraphicsCopyCursor
	ldr r0, _08029B44 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldrh r0, [r4]
	ldr r2, _08029B48 @ =0x00003F1F
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	ldrb r0, [r5]
	cmp r0, #2
	bne _08029B4C
	movs r0, #0
	bl sub_805D048
	b _08029B6E
	.align 2, 0
_08029B20: .4byte gUnknown_030055E0
_08029B24: .4byte gBldRegs
_08029B28: .4byte 0x00003F9F
_08029B2C: .4byte 0x0FFF0000
_08029B30: .4byte 0x0000FFFF
_08029B34: .4byte gBackgroundsCopyQueueCursor
_08029B38: .4byte gBackgroundsCopyQueueIndex
_08029B3C: .4byte sa2__gUnknown_03005390
_08029B40: .4byte gVramGraphicsCopyCursor
_08029B44: .4byte gVramGraphicsCopyQueueIndex
_08029B48: .4byte 0x00003F1F
_08029B4C:
	ldr r0, _08029B60 @ =gUnknown_03005154
	ldr r1, _08029B64 @ =gSpecialStageCollectedRings
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bhi _08029B68
	bl sub_8068D0C
	b _08029B6E
	.align 2, 0
_08029B60: .4byte gUnknown_03005154
_08029B64: .4byte gSpecialStageCollectedRings
_08029B68:
	movs r0, #0
	bl sub_805D048
_08029B6E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8029B74
sub_8029B74: @ 0x08029B74
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r2, _08029C8C @ =gUnknown_03005780
	ldr r1, _08029C90 @ =gDispCnt
	movs r3, #0xe2
	lsls r3, r3, #5
	adds r0, r3, #0
	strh r0, [r1]
	ldr r1, _08029C94 @ =gBgCntRegs
	movs r7, #0
	ldr r0, _08029C98 @ =0x00000201
	strh r0, [r1, #2]
	ldr r0, _08029C9C @ =0x00005806
	strh r0, [r1, #4]
	ldr r0, _08029CA0 @ =0x00001C0B
	strh r0, [r1, #6]
	movs r4, #0x88
	strh r4, [r2]
	movs r5, #0x20
	strh r5, [r2, #2]
	strh r7, [r2, #0xe]
	strh r7, [r2, #4]
	strh r7, [r2, #0x10]
	strh r7, [r2, #6]
	strh r7, [r2, #8]
	strh r7, [r2, #0xc]
	ldr r3, _08029CA4 @ =gBgScrollRegs
	movs r1, #4
	ldrsh r0, [r2, r1]
	subs r0, r4, r0
	cmp r0, #0
	bge _08029BBC
	adds r0, #7
_08029BBC:
	asrs r0, r0, #3
	strh r0, [r3, #0xc]
	movs r0, #6
	ldrsh r1, [r2, r0]
	adds r0, r1, #0
	adds r0, #0x20
	cmp r0, #0
	bge _08029BCE
	adds r0, #7
_08029BCE:
	asrs r0, r0, #3
	strh r0, [r3, #0xe]
	strh r4, [r3, #8]
	strh r5, [r3, #0xa]
	ldr r1, _08029CA8 @ =gUnknown_03005630
	mov sb, r1
	ldr r1, _08029CAC @ =gUnknown_08487034
	mov r0, sb
	movs r2, #0x40
	bl memcpy
	ldr r3, _08029CB0 @ =gUnknown_030055A0
	mov r8, r3
	ldr r1, _08029CB4 @ =gUnknown_08487074
	mov r0, r8
	movs r2, #0x40
	bl memcpy
	ldr r6, _08029CB8 @ =gUnknown_03005740
	ldr r1, _08029CBC @ =gUnknown_084870B4
	adds r0, r6, #0
	movs r2, #0x40
	bl memcpy
	ldr r5, _08029CC0 @ =gUnknown_03005800
	ldr r1, _08029CC4 @ =gUnknown_084870F4
	adds r0, r5, #0
	movs r2, #0x40
	bl memcpy
	ldr r4, _08029CC8 @ =gUnknown_030057A0
	ldr r1, _08029CCC @ =gUnknown_08486FF4
	adds r0, r4, #0
	movs r2, #0x40
	bl memcpy
	mov r0, sb
	bl DrawBackground
	mov r0, r8
	bl DrawBackground
	adds r0, r6, #0
	bl DrawBackground
	adds r0, r5, #0
	bl DrawBackground
	adds r0, r4, #0
	bl DrawBackground
	ldr r0, _08029CD0 @ =sub_802D2BC
	movs r2, #0x90
	lsls r2, r2, #5
	str r7, [sp]
	movs r1, #0
	movs r3, #0
	bl TaskCreate
	movs r0, #0x80
	lsls r0, r0, #6
	mov r8, r0
	ldr r6, _08029CD4 @ =gUnknown_08487134
	ldr r5, _08029CD8 @ =gCurrentLevel
	movs r0, #0
	ldrsb r0, [r5, r0]
	adds r0, r0, r6
	movs r1, #0xd0
	lsls r1, r1, #2
	adds r4, r1, #0
	ldrb r0, [r0]
	adds r1, r4, r0
	mov r0, r8
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0
	ldrsb r0, [r5, r0]
	adds r0, r0, r6
	ldrb r0, [r0]
	adds r4, r4, r0
	mov r0, r8
	adds r1, r4, #0
	movs r2, #1
	movs r3, #0
	bl CreatePaletteLoaderTask
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029C8C: .4byte gUnknown_03005780
_08029C90: .4byte gDispCnt
_08029C94: .4byte gBgCntRegs
_08029C98: .4byte 0x00000201
_08029C9C: .4byte 0x00005806
_08029CA0: .4byte 0x00001C0B
_08029CA4: .4byte gBgScrollRegs
_08029CA8: .4byte gUnknown_03005630
_08029CAC: .4byte gUnknown_08487034
_08029CB0: .4byte gUnknown_030055A0
_08029CB4: .4byte gUnknown_08487074
_08029CB8: .4byte gUnknown_03005740
_08029CBC: .4byte gUnknown_084870B4
_08029CC0: .4byte gUnknown_03005800
_08029CC4: .4byte gUnknown_084870F4
_08029CC8: .4byte gUnknown_030057A0
_08029CCC: .4byte gUnknown_08486FF4
_08029CD0: .4byte sub_802D2BC
_08029CD4: .4byte gUnknown_08487134
_08029CD8: .4byte gCurrentLevel

	thumb_func_start sub_8029CDC
sub_8029CDC: @ 0x08029CDC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r4, _08029DE8 @ =gUnknown_03005780
	ldr r6, _08029DEC @ =gUnknown_03005630
	ldr r7, _08029DF0 @ =gUnknown_030055A0
	ldr r0, _08029DF4 @ =gUnknown_03005740
	mov r8, r0
	ldr r1, _08029DF8 @ =gUnknown_03005800
	mov sb, r1
	ldr r5, _08029DFC @ =gUnknown_03005690
	ldr r0, [r5]
	movs r1, #0x86
	bl __divsi3
	lsls r0, r0, #5
	rsbs r0, r0, #0
	asrs r0, r0, #8
	strh r0, [r4, #4]
	ldr r0, [r5, #4]
	movs r1, #0x5e
	bl __divsi3
	lsls r0, r0, #5
	rsbs r0, r0, #0
	asrs r0, r0, #8
	strh r0, [r4, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x20
	rsbs r1, r1, #0
	cmp r0, r1
	bge _08029D24
	ldr r0, _08029E00 @ =0x0000FFE0
	strh r0, [r4, #6]
_08029D24:
	movs r2, #6
	ldrsh r0, [r4, r2]
	cmp r0, #0x20
	ble _08029D30
	movs r0, #0x20
	strh r0, [r4, #6]
_08029D30:
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, r1
	bge _08029D3A
	strh r1, [r4, #4]
_08029D3A:
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0x20
	ble _08029D46
	movs r0, #0x20
	strh r0, [r4, #4]
_08029D46:
	ldr r2, _08029E04 @ =gBgScrollRegs
	movs r3, #0
	ldrsh r1, [r4, r3]
	movs r3, #4
	ldrsh r0, [r4, r3]
	subs r0, r1, r0
	cmp r0, #0
	bge _08029D58
	adds r0, #7
_08029D58:
	asrs r0, r0, #3
	strh r0, [r2, #0xc]
	movs r0, #2
	ldrsh r1, [r4, r0]
	movs r3, #6
	ldrsh r0, [r4, r3]
	adds r0, r1, r0
	cmp r0, #0
	bge _08029D6C
	adds r0, #7
_08029D6C:
	asrs r0, r0, #3
	strh r0, [r2, #0xe]
	ldrh r0, [r4]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r2, #8]
	ldrh r0, [r4, #6]
	ldrh r1, [r4, #2]
	adds r0, r0, r1
	strh r0, [r2, #0xa]
	ldrh r0, [r5, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x19
	ldrb r2, [r4, #0x12]
	adds r0, r0, r2
	movs r1, #0x3f
	ands r0, r1
	strb r0, [r4, #0x12]
	movs r0, #0x12
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _08029D9A
	adds r0, #3
_08029D9A:
	asrs r0, r0, #2
	adds r0, #0x37
	strh r0, [r6, #0x1c]
	movs r0, #0x12
	ldrsb r0, [r4, r0]
	adds r2, r0, #0
	adds r1, r0, #0
	cmp r1, #0
	bge _08029DAE
	adds r0, r1, #3
_08029DAE:
	asrs r0, r0, #2
	adds r0, #0x37
	strh r0, [r7, #0x1c]
	mov r3, r8
	strh r0, [r3, #0x1c]
	mov r1, sb
	strh r0, [r1, #0x1c]
	ldrh r1, [r6, #0x2e]
	ldr r0, _08029E08 @ =0x0000FFF7
	ands r0, r1
	strh r0, [r6, #0x2e]
	adds r0, r6, #0
	bl DrawBackground
	adds r0, r7, #0
	bl DrawBackground
	mov r0, r8
	bl DrawBackground
	mov r0, sb
	bl DrawBackground
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029DE8: .4byte gUnknown_03005780
_08029DEC: .4byte gUnknown_03005630
_08029DF0: .4byte gUnknown_030055A0
_08029DF4: .4byte gUnknown_03005740
_08029DF8: .4byte gUnknown_03005800
_08029DFC: .4byte gUnknown_03005690
_08029E00: .4byte 0x0000FFE0
_08029E04: .4byte gBgScrollRegs
_08029E08: .4byte 0x0000FFF7

	thumb_func_start sub_8029E0C
sub_8029E0C: @ 0x08029E0C
	push {r4, lr}
	ldr r1, _08029E9C @ =gUnknown_03005690
	mov ip, r1
	mov r4, ip
	adds r4, #0x4c
	movs r2, #0
	strb r0, [r4]
	mov r0, ip
	str r2, [r0]
	str r2, [r0, #4]
	str r2, [r0, #8]
	movs r3, #0
	ldr r0, _08029EA0 @ =0x0000FFCC
	strh r0, [r1, #0x10]
	strh r2, [r1, #0x14]
	strh r2, [r1, #0x16]
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r1, #0x18]
	strh r2, [r1, #0x1a]
	mov r0, ip
	adds r0, #0x2b
	strb r3, [r0]
	subs r0, #3
	strb r3, [r0]
	adds r0, #1
	movs r1, #1
	strb r1, [r0]
	adds r0, #1
	strb r3, [r0]
	mov r0, ip
	strh r2, [r0, #0x2e]
	adds r0, #0x30
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	adds r0, #0xf
	strb r1, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	ldr r1, _08029EA4 @ =gPlayerCharacterIdleAnims
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #0x1b
	mov r1, ip
	adds r1, #0x48
	strh r0, [r1]
	adds r1, #2
	movs r0, #4
	strh r0, [r1]
	mov r1, ip
	strh r2, [r1, #0x34]
	mov r0, ip
	adds r0, #0x3f
	strb r3, [r0]
	adds r0, #0x11
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	subs r0, #0x15
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	strh r2, [r1, #0x32]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08029E9C: .4byte gUnknown_03005690
_08029EA0: .4byte 0x0000FFCC
_08029EA4: .4byte gPlayerCharacterIdleAnims

	thumb_func_start sub_8029EA8
sub_8029EA8: @ 0x08029EA8
	push {r4, lr}
	ldr r4, _08029F20 @ =gUnknown_03005690
	ldr r0, _08029F24 @ =gUnknown_030055FC
	mov ip, r0
	ldr r0, _08029F28 @ =0x06010000
	mov r1, ip
	str r0, [r1, #4]
	movs r3, #0
	movs r2, #0
	strh r2, [r1, #8]
	adds r0, r4, #0
	adds r0, #0x48
	ldrh r0, [r0]
	strh r0, [r1, #0xa]
	adds r0, r4, #0
	adds r0, #0x4a
	ldrh r1, [r0]
	mov r0, ip
	adds r0, #0x20
	strb r1, [r0]
	mov r1, ip
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r4]
	asrs r0, r0, #8
	adds r0, #0x78
	mov r1, ip
	strh r0, [r1, #0x16]
	ldr r1, [r4, #4]
	asrs r1, r1, #8
	movs r0, #0x50
	subs r0, r0, r1
	mov r1, ip
	strh r0, [r1, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1, #0x1a]
	strh r2, [r1, #0x1c]
	adds r1, #0x22
	movs r0, #0x10
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x25
	strb r3, [r0]
	ldr r0, _08029F2C @ =0x00002020
	mov r1, ip
	str r0, [r1, #0x10]
	mov r0, ip
	subs r0, #0xc
	strh r2, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	strh r2, [r0, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08029F20: .4byte gUnknown_03005690
_08029F24: .4byte gUnknown_030055FC
_08029F28: .4byte 0x06010000
_08029F2C: .4byte 0x00002020

	thumb_func_start sub_8029F30
sub_8029F30: @ 0x08029F30
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _08029F9A
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08029F64
	adds r1, r2, #0
	adds r1, #0x28
	movs r0, #2
	strb r0, [r1]
	ldrb r1, [r3]
	movs r0, #0xf7
	ands r0, r1
	strb r0, [r3]
	bl sub_802A988
	movs r0, #1
	b _08029F9C
_08029F64:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08029F9A
	movs r0, #0x52
	adds r0, r0, r2
	mov ip, r0
	adds r4, r2, #0
	adds r4, #0x50
	ldrh r0, [r0]
	ldrh r1, [r4]
	cmp r0, r1
	beq _08029F9A
	adds r0, r2, #0
	adds r0, #0x28
	strb r5, [r0]
	ldrb r1, [r3]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r3]
	ldrh r0, [r4]
	mov r1, ip
	strh r0, [r1]
	bl sub_802A688
	movs r0, #1
	b _08029F9C
_08029F9A:
	movs r0, #0
_08029F9C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8029FA4
sub_8029FA4: @ 0x08029FA4
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x3e
	ldrb r1, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _08029FC4
	subs r0, r1, #1
	movs r1, #0
	strb r0, [r2]
	adds r0, r3, #0
	adds r0, #0x3d
	strb r1, [r0]
	b _0802A060
_08029FC4:
	adds r1, r3, #0
	adds r1, #0x3d
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0802A01C
	subs r0, r2, #1
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x44
	ldr r1, _0802A010 @ =gUnknown_030060E0
	ldrh r2, [r0]
	ldrh r0, [r1, #2]
	ands r0, r2
	cmp r0, #0
	beq _0802A060
	bl sub_802ACF0
	ldr r2, _0802A014 @ =gMPlayTable
	ldr r0, _0802A018 @ =gSongTable
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	bl MPlayStop
	movs r0, #0x2b
	movs r1, #0x2a
	bl sub_8025980
	movs r0, #1
	b _0802A062
	.align 2, 0
_0802A010: .4byte gUnknown_030060E0
_0802A014: .4byte gMPlayTable
_0802A018: .4byte gSongTable
_0802A01C:
	adds r0, r3, #0
	adds r0, #0x44
	ldr r1, _0802A04C @ =gUnknown_030060E0
	ldrh r2, [r0]
	ldrh r0, [r1, #2]
	ands r0, r2
	cmp r0, #0
	beq _0802A060
	adds r0, r3, #0
	adds r0, #0x29
	ldrb r0, [r0]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _0802A060
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0802A050
	adds r0, r3, #0
	adds r0, #0x3c
	strb r1, [r0]
	b _0802A058
	.align 2, 0
_0802A04C: .4byte gUnknown_030060E0
_0802A050:
	adds r1, r3, #0
	adds r1, #0x3c
	movs r0, #0xff
	strb r0, [r1]
_0802A058:
	bl sub_802ABA0
	movs r0, #1
	b _0802A062
_0802A060:
	movs r0, #0
_0802A062:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_802A068
sub_802A068: @ 0x0802A068
	adds r2, r0, #0
	adds r0, #0x42
	ldrh r3, [r0]
	movs r0, #0xc0
	ands r0, r3
	cmp r0, #0
	beq _0802A0B4
	ldr r0, _0802A0B0 @ =gUnknown_084871C4
	movs r1, #0xf0
	ands r1, r3
	lsrs r1, r1, #2
	adds r0, #2
	adds r1, r1, r0
	ldrh r1, [r1]
	strh r1, [r2, #0x1e]
	movs r3, #0x16
	ldrsh r0, [r2, r3]
	cmp r0, #0
	ble _0802A098
	lsls r0, r1, #0x10
	cmp r0, #0
	bge _0802A098
	movs r0, #0
	strh r0, [r2, #0x16]
_0802A098:
	movs r1, #0x16
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _0802A0CE
	movs r3, #0x1e
	ldrsh r0, [r2, r3]
	cmp r0, #0
	ble _0802A0CE
	movs r0, #0
	strh r0, [r2, #0x16]
	b _0802A0CE
	.align 2, 0
_0802A0B0: .4byte gUnknown_084871C4
_0802A0B4:
	movs r1, #0x16
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _0802A0BE
	adds r0, #3
_0802A0BE:
	asrs r0, r0, #2
	rsbs r0, r0, #0
	strh r0, [r2, #0x1e]
	cmp r0, #0
	bne _0802A0CE
	ldrh r0, [r2, #0x16]
	rsbs r0, r0, #0
	strh r0, [r2, #0x1e]
_0802A0CE:
	adds r0, r2, #0
	adds r0, #0x42
	ldrh r3, [r0]
	movs r0, #0x30
	ands r0, r3
	cmp r0, #0
	beq _0802A118
	ldr r0, _0802A114 @ =gUnknown_084871C4
	movs r1, #0xf0
	ands r1, r3
	lsrs r1, r1, #2
	adds r1, r1, r0
	ldrh r1, [r1]
	strh r1, [r2, #0x1c]
	movs r3, #0x14
	ldrsh r0, [r2, r3]
	cmp r0, #0
	ble _0802A0FC
	lsls r0, r1, #0x10
	cmp r0, #0
	bge _0802A0FC
	movs r0, #0
	strh r0, [r2, #0x14]
_0802A0FC:
	movs r1, #0x14
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _0802A132
	movs r3, #0x1c
	ldrsh r0, [r2, r3]
	cmp r0, #0
	ble _0802A132
	movs r0, #0
	strh r0, [r2, #0x14]
	b _0802A132
	.align 2, 0
_0802A114: .4byte gUnknown_084871C4
_0802A118:
	movs r1, #0x14
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _0802A122
	adds r0, #3
_0802A122:
	asrs r0, r0, #2
	rsbs r0, r0, #0
	strh r0, [r2, #0x1c]
	cmp r0, #0
	bne _0802A132
	ldrh r0, [r2, #0x14]
	rsbs r0, r0, #0
	strh r0, [r2, #0x1c]
_0802A132:
	bx lr

	thumb_func_start sub_802A134
sub_802A134: @ 0x0802A134
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r7, _0802A174 @ =gUnknown_030055FC
	adds r0, #0x29
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802A1A0
	movs r0, #0x18
	ldrsh r1, [r5, r0]
	movs r0, #0xc0
	lsls r0, r0, #4
	cmp r1, r0
	bgt _0802A17C
	ldr r1, _0802A178 @ =gPlayerCharacterIdleAnims
	adds r0, r5, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #0x1d
	adds r2, r5, #0
	adds r2, #0x48
	movs r1, #0
	strh r0, [r2]
	adds r0, r5, #0
	adds r0, #0x4a
	strh r1, [r0]
	adds r1, r0, #0
	b _0802A218
	.align 2, 0
_0802A174: .4byte gUnknown_030055FC
_0802A178: .4byte gPlayerCharacterIdleAnims
_0802A17C:
	ldr r1, _0802A19C @ =gPlayerCharacterIdleAnims
	adds r0, r5, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #0x1d
	adds r2, r5, #0
	adds r2, #0x48
	strh r0, [r2]
	adds r1, r5, #0
	adds r1, #0x4a
	movs r0, #1
	strh r0, [r1]
	b _0802A218
	.align 2, 0
_0802A19C: .4byte gPlayerCharacterIdleAnims
_0802A1A0:
	adds r4, r5, #0
	adds r4, #0x42
	ldrh r1, [r4]
	movs r6, #0xf0
	adds r0, r6, #0
	ands r0, r1
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802A1E4
	ldr r2, _0802A1DC @ =gUnknown_08487184
	lsrs r1, r0, #0x12
	adds r1, r1, r2
	ldr r3, _0802A1E0 @ =gPlayerCharacterIdleAnims
	adds r0, r5, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r3, r5, #0
	adds r3, #0x48
	strh r0, [r3]
	ldrh r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	lsrs r0, r0, #2
	b _0802A20A
	.align 2, 0
_0802A1DC: .4byte gUnknown_08487184
_0802A1E0: .4byte gPlayerCharacterIdleAnims
_0802A1E4:
	adds r0, r5, #0
	bl sub_802D2F4
	lsls r0, r0, #0x10
	ldr r2, _0802A240 @ =gUnknown_0848715C
	lsrs r0, r0, #0xe
	adds r4, r0, r2
	ldr r3, _0802A244 @ =gPlayerCharacterIdleAnims
	adds r1, r5, #0
	adds r1, #0x4c
	ldrb r1, [r1]
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r1, [r1]
	ldrh r4, [r4]
	adds r1, r1, r4
	adds r3, r5, #0
	adds r3, #0x48
	strh r1, [r3]
_0802A20A:
	adds r2, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x4a
	strh r0, [r1]
	adds r2, r3, #0
_0802A218:
	ldrh r2, [r2]
	ldrh r0, [r7, #0xa]
	adds r4, r7, #0
	adds r4, #0x20
	cmp r0, r2
	bne _0802A22C
	ldrb r0, [r4]
	ldrh r3, [r1]
	cmp r0, r3
	beq _0802A23A
_0802A22C:
	strh r2, [r7, #0xa]
	ldrh r0, [r1]
	strb r0, [r4]
	adds r1, r7, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
_0802A23A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802A240: .4byte gUnknown_0848715C
_0802A244: .4byte gPlayerCharacterIdleAnims

	thumb_func_start sub_802A248
sub_802A248: @ 0x0802A248
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, [r6]
	mov ip, r0
	ldr r2, [r6, #4]
	ldrh r4, [r6, #0x1c]
	ldrh r1, [r6, #0x14]
	adds r3, r4, r1
	strh r3, [r6, #0x14]
	ldrh r5, [r6, #0x1e]
	ldrh r7, [r6, #0x16]
	adds r1, r5, r7
	strh r1, [r6, #0x16]
	ldrh r0, [r6, #0x20]
	ldrh r7, [r6, #0x18]
	adds r0, r0, r7
	strh r0, [r6, #0x18]
	adds r0, r6, #0
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #1
	bne _0802A276
	b _0802A37E
_0802A276:
	cmp r0, #1
	bgt _0802A280
	cmp r0, #0
	beq _0802A286
	b _0802A486
_0802A280:
	cmp r0, #5
	ble _0802A286
	b _0802A486
_0802A286:
	movs r0, #0x14
	ldrsh r1, [r6, r0]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	bgt _0802A298
	ldr r0, _0802A2DC @ =0xFFFFFC00
	cmp r1, r0
	bge _0802A29A
_0802A298:
	strh r0, [r6, #0x14]
_0802A29A:
	movs r7, #0x16
	ldrsh r1, [r6, r7]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	bgt _0802A2AC
	ldr r0, _0802A2DC @ =0xFFFFFC00
	cmp r1, r0
	bge _0802A2AE
_0802A2AC:
	strh r0, [r6, #0x16]
_0802A2AE:
	movs r0, #0x18
	ldrsh r1, [r6, r0]
	movs r0, #0xc0
	lsls r0, r0, #4
	cmp r1, r0
	bgt _0802A2C2
	ldr r0, _0802A2E0 @ =0x000007FF
	cmp r1, r0
	bgt _0802A2C4
	adds r0, #1
_0802A2C2:
	strh r0, [r6, #0x18]
_0802A2C4:
	movs r7, #0x18
	ldrsh r1, [r6, r7]
	movs r0, #0x80
	lsls r0, r0, #4
	cmp r1, r0
	bne _0802A2E4
	adds r0, r6, #0
	adds r0, #0x29
	ldrb r2, [r0]
	movs r1, #0xfd
	ands r1, r2
	b _0802A2EE
	.align 2, 0
_0802A2DC: .4byte 0xFFFFFC00
_0802A2E0: .4byte 0x000007FF
_0802A2E4:
	adds r0, r6, #0
	adds r0, #0x29
	ldrb r2, [r0]
	movs r1, #2
	orrs r1, r2
_0802A2EE:
	strb r1, [r0]
	adds r7, r0, #0
	ldrb r1, [r7]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802A358
	ldr r0, [r6, #4]
	asrs r2, r0, #5
	cmp r2, #0
	blt _0802A30E
	movs r1, #0x16
	ldrsh r0, [r6, r1]
	cmp r2, r0
	bge _0802A318
	b _0802A316
_0802A30E:
	movs r1, #0x16
	ldrsh r0, [r6, r1]
	cmp r2, r0
	ble _0802A318
_0802A316:
	strh r2, [r6, #0x16]
_0802A318:
	ldrb r1, [r7]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802A358
	movs r1, #0x14
	ldrsh r0, [r6, r1]
	lsls r0, r0, #3
	ldrh r5, [r6, #0x18]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x18
	adds r1, r5, #0
	bl __divsi3
	ldr r4, [r6]
	adds r4, r4, r0
	str r4, [r6]
	movs r1, #0x16
	ldrsh r0, [r6, r1]
	lsls r0, r0, #3
	adds r1, r5, #0
	bl __divsi3
	ldr r1, [r6, #4]
	adds r1, r1, r0
	asrs r0, r4, #5
	subs r4, r4, r0
	str r4, [r6]
	asrs r0, r1, #5
	subs r1, r1, r0
	str r1, [r6, #4]
	b _0802A36C
_0802A358:
	movs r0, #0x14
	ldrsh r1, [r6, r0]
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r6]
	movs r0, #0x16
	ldrsh r1, [r6, r0]
	ldr r0, [r6, #4]
	adds r0, r0, r1
	str r0, [r6, #4]
_0802A36C:
	ldrb r1, [r7]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802A378
	b _0802A486
_0802A378:
	movs r7, #0x18
	ldrsh r1, [r6, r7]
	b _0802A480
_0802A37E:
	adds r0, r6, #0
	adds r0, #0x54
	ldrh r0, [r0]
	cmp r0, #4
	beq _0802A39C
	cmp r0, #5
	beq _0802A408
	movs r1, #0x14
	ldrsh r0, [r6, r1]
	add r0, ip
	str r0, [r6]
	movs r7, #0x16
	ldrsh r0, [r6, r7]
	adds r0, r2, r0
	b _0802A46C
_0802A39C:
	adds r0, r3, r4
	strh r0, [r6, #0x14]
	adds r1, r1, r5
	strh r1, [r6, #0x16]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #3
	cmp r0, r1
	bgt _0802A3B6
	ldr r1, _0802A404 @ =0xFFFFFC00
	cmp r0, r1
	bge _0802A3B8
_0802A3B6:
	strh r1, [r6, #0x14]
_0802A3B8:
	movs r0, #0x16
	ldrsh r1, [r6, r0]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	bgt _0802A3CA
	ldr r0, _0802A404 @ =0xFFFFFC00
	cmp r1, r0
	bge _0802A3CC
_0802A3CA:
	strh r0, [r6, #0x16]
_0802A3CC:
	movs r7, #0x14
	ldrsh r1, [r6, r7]
	ldrh r0, [r6, #0x18]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x18
	adds r0, r1, #0
	muls r0, r2, r0
	cmp r0, #0
	bge _0802A3E0
	adds r0, #7
_0802A3E0:
	asrs r0, r0, #3
	strh r0, [r6, #0x14]
	movs r1, #0x16
	ldrsh r0, [r6, r1]
	muls r0, r2, r0
	cmp r0, #0
	bge _0802A3F0
	adds r0, #7
_0802A3F0:
	asrs r0, r0, #3
	strh r0, [r6, #0x16]
	movs r7, #0x14
	ldrsh r1, [r6, r7]
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r6]
	movs r0, #0x16
	ldrsh r1, [r6, r0]
	b _0802A468
	.align 2, 0
_0802A404: .4byte 0xFFFFFC00
_0802A408:
	adds r0, r3, r4
	strh r0, [r6, #0x14]
	adds r1, r1, r5
	strh r1, [r6, #0x16]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #3
	cmp r0, r1
	bgt _0802A422
	ldr r1, _0802A4B8 @ =0xFFFFFC00
	cmp r0, r1
	bge _0802A424
_0802A422:
	strh r1, [r6, #0x14]
_0802A424:
	movs r7, #0x16
	ldrsh r1, [r6, r7]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	bgt _0802A436
	ldr r0, _0802A4B8 @ =0xFFFFFC00
	cmp r1, r0
	bge _0802A438
_0802A436:
	strh r0, [r6, #0x16]
_0802A438:
	movs r1, #0x14
	ldrsh r0, [r6, r1]
	lsls r0, r0, #3
	ldrh r4, [r6, #0x18]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x18
	adds r1, r4, #0
	bl __divsi3
	strh r0, [r6, #0x14]
	movs r7, #0x16
	ldrsh r0, [r6, r7]
	lsls r0, r0, #3
	adds r1, r4, #0
	bl __divsi3
	strh r0, [r6, #0x16]
	movs r0, #0x14
	ldrsh r1, [r6, r0]
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r6]
	movs r7, #0x16
	ldrsh r1, [r6, r7]
_0802A468:
	ldr r0, [r6, #4]
	adds r0, r0, r1
_0802A46C:
	str r0, [r6, #4]
	adds r0, r6, #0
	adds r0, #0x29
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0802A486
	movs r0, #0x18
	ldrsh r1, [r6, r0]
_0802A480:
	ldr r0, [r6, #8]
	adds r0, r0, r1
	str r0, [r6, #8]
_0802A486:
	ldr r0, [r6]
	ldr r1, _0802A4BC @ =0xFFFF7A00
	cmp r0, r1
	bge _0802A490
	str r1, [r6]
_0802A490:
	ldr r0, [r6]
	movs r1, #0x86
	lsls r1, r1, #8
	cmp r0, r1
	ble _0802A49C
	str r1, [r6]
_0802A49C:
	ldr r0, [r6, #4]
	ldr r1, _0802A4C0 @ =0xFFFFA200
	cmp r0, r1
	bge _0802A4A6
	str r1, [r6, #4]
_0802A4A6:
	ldr r0, [r6, #4]
	movs r1, #0xbc
	lsls r1, r1, #7
	cmp r0, r1
	ble _0802A4B2
	str r1, [r6, #4]
_0802A4B2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802A4B8: .4byte 0xFFFFFC00
_0802A4BC: .4byte 0xFFFF7A00
_0802A4C0: .4byte 0xFFFFA200

	thumb_func_start sub_802A4C4
sub_802A4C4: @ 0x0802A4C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	ldr r0, _0802A554 @ =gUnknown_030055FC
	mov sl, r0
	mov r7, sl
	subs r7, #0xc
	movs r3, #0x10
	ldrsh r1, [r6, r3]
	mov r8, r1
	movs r5, #0x90
	lsls r5, r5, #2
	adds r1, r1, r5
	mov sb, r1
	ldr r0, [r6]
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	adds r1, r5, #0
	bl __divsi3
	adds r4, r0, #0
	lsls r4, r4, #8
	lsrs r4, r4, #0x10
	ldr r0, [r6, #4]
	mov r3, sb
	muls r3, r0, r3
	adds r0, r3, #0
	adds r1, r5, #0
	bl __divsi3
	lsls r0, r0, #8
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r2, #0
	movs r1, #0x50
	asrs r0, r0, #0x10
	subs r1, r1, r0
	adds r4, #0x78
	ldr r0, _0802A558 @ =gUnknown_03005780
	ldrh r0, [r0, #4]
	adds r4, r4, r0
	strh r4, [r6, #0xc]
	ldr r3, _0802A558 @ =gUnknown_03005780
	ldrh r0, [r3, #6]
	subs r1, r1, r0
	strh r1, [r6, #0xe]
	mov r0, sl
	strh r4, [r0, #0x16]
	strh r1, [r0, #0x18]
	strh r4, [r7, #6]
	strh r1, [r7, #8]
	strh r2, [r7]
	movs r1, #0x80
	lsls r1, r1, #1
	add r8, r1
	mov r3, r8
	strh r3, [r7, #2]
	strh r3, [r7, #4]
	ldr r0, _0802A55C @ =0x00002020
	mov r1, sl
	str r0, [r1, #0x10]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802A554: .4byte gUnknown_030055FC
_0802A558: .4byte gUnknown_03005780
_0802A55C: .4byte 0x00002020

	thumb_func_start sub_802A560
sub_802A560: @ 0x0802A560
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r4, _0802A5C4 @ =gUnknown_03005690
	ldr r5, _0802A5C8 @ =gUnknown_030055FC
	movs r0, #0xc
	rsbs r0, r0, #0
	adds r0, r0, r5
	mov r8, r0
	ldr r0, _0802A5CC @ =gInput
	ldrh r0, [r0]
	adds r7, r4, #0
	adds r7, #0x42
	movs r6, #0
	strh r0, [r7]
	ldr r0, _0802A5D0 @ =gPressedKeys
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x44
	strh r1, [r0]
	subs r0, #0x1a
	ldrb r1, [r0]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _0802A5DC
	movs r0, #0x78
	strh r0, [r4, #0x32]
	ldr r0, [r4]
	rsbs r0, r0, #0
	movs r1, #0x78
	bl __divsi3
	strh r0, [r4, #0x14]
	ldr r0, [r4, #4]
	rsbs r0, r0, #0
	movs r1, #0x78
	bl __divsi3
	strh r0, [r4, #0x16]
	strh r6, [r4, #0x1c]
	strh r6, [r4, #0x1e]
	ldr r0, _0802A5D4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802A5D8 @ =sub_802AE40
	str r0, [r1, #8]
	bl _call_via_r0
	b _0802A67C
	.align 2, 0
_0802A5C4: .4byte gUnknown_03005690
_0802A5C8: .4byte gUnknown_030055FC
_0802A5CC: .4byte gInput
_0802A5D0: .4byte gPressedKeys
_0802A5D4: .4byte gCurTask
_0802A5D8: .4byte sub_802AE40
_0802A5DC:
	adds r0, r4, #0
	bl sub_8029F30
	cmp r0, #0
	bne _0802A67C
	adds r0, r4, #0
	bl sub_8029FA4
	cmp r0, #0
	bne _0802A67C
	ldrh r0, [r4, #0x12]
	adds r0, #0x10
	ldr r2, _0802A630 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r4, #0x12]
	ldr r1, _0802A634 @ =gSineTable
	movs r2, #0x12
	ldrsh r0, [r4, r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1a
	strh r0, [r4, #0x10]
    @ inline of sub_802D6B4?
	ldr r0, _0802A638 @ =gUnknown_030060E0 
	ldrh r1, [r7]
	ldrh r0, [r0]
	ands r0, r1
	adds r2, r4, #0
	adds r2, #0x29
	cmp r0, #0
	beq _0802A63C
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0802A63C
	movs r0, #0x80
	lsls r0, r0, #1
	b _0802A64E
	.align 2, 0
_0802A630: .4byte 0x000003FF
_0802A634: .4byte gSineTable
_0802A638: .4byte gUnknown_030060E0
_0802A63C:
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0802A64E
	movs r0, #0xff
	lsls r0, r0, #8
_0802A64E:
	strh r0, [r4, #0x20]
	adds r0, r4, #0
	bl sub_802A068
	adds r0, r4, #0
	bl sub_802A134
	adds r0, r4, #0
	bl sub_802A248
	adds r0, r4, #0
	bl sub_802A4C4
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	mov r1, r8
	bl sub_802BE0C
	adds r0, r5, #0
	bl DisplaySprite
_0802A67C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_802A688
sub_802A688: @ 0x0802A688
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r7, _0802A738 @ =gUnknown_03005690
	ldr r0, _0802A73C @ =gUnknown_030055FC
	mov r8, r0
	movs r1, #0xc
	rsbs r1, r1, #0
	add r1, r8
	mov sb, r1
	adds r0, r7, #0
	adds r0, #0x54
	ldrh r0, [r0]
	subs r0, #4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r2, _0802A740 @ =gUnknown_08487214
	lsls r3, r6, #2
	adds r4, r3, r2
	ldr r1, _0802A744 @ =gPlayerCharacterIdleAnims
	adds r0, r7, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldrh r4, [r4]
	adds r1, r1, r4
	adds r0, r7, #0
	adds r0, #0x48
	strh r1, [r0]
	adds r2, #2
	adds r3, r3, r2
	ldrh r2, [r3]
	adds r0, #2
	strh r2, [r0]
	mov r0, r8
	strh r1, [r0, #0xa]
	adds r0, #0x20
	strb r2, [r0]
	mov r1, r8
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x29
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802A74C
	lsls r5, r6, #1
	adds r4, r5, r6
	lsls r4, r4, #1
	ldr r1, _0802A748 @ =gUnknown_0848722C
	adds r0, r4, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #2
	movs r1, #3
	bl __divsi3
	strh r0, [r7, #0x14]
	ldr r0, _0802A748 @ =gUnknown_0848722C
	adds r0, #2
	adds r0, r4, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #2
	movs r1, #3
	bl __divsi3
	strh r0, [r7, #0x16]
	ldr r0, _0802A748 @ =gUnknown_0848722C
	adds r0, #4
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r0, r0, #2
	movs r1, #3
	bl __divsi3
	strh r0, [r7, #0x18]
	ldr r2, _0802A748 @ =gUnknown_0848722C
	adds r3, r5, #0
	b _0802A76A
	.align 2, 0
_0802A738: .4byte gUnknown_03005690
_0802A73C: .4byte gUnknown_030055FC
_0802A740: .4byte gUnknown_08487214
_0802A744: .4byte gPlayerCharacterIdleAnims
_0802A748: .4byte gUnknown_0848722C
_0802A74C:
	ldr r2, _0802A808 @ =gUnknown_0848722C
	lsls r3, r6, #1
	adds r1, r3, r6
	lsls r1, r1, #1
	adds r0, r1, r2
	ldrh r0, [r0]
	strh r0, [r7, #0x14]
	adds r0, r2, #2
	adds r0, r1, r0
	ldrh r0, [r0]
	strh r0, [r7, #0x16]
	adds r0, r2, #4
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r7, #0x18]
_0802A76A:
	cmp r6, #0
	beq _0802A820
	cmp r6, #1
	beq _0802A828
	adds r1, r3, r6
	lsls r1, r1, #1
	adds r0, r1, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x17
	rsbs r0, r0, #0
	strh r0, [r7, #0x1c]
	adds r0, r2, #2
	adds r1, r1, r0
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x17
	rsbs r0, r0, #0
	strh r0, [r7, #0x1e]
	ldr r0, _0802A80C @ =0x0000FFE0
	strh r0, [r7, #0x20]
	movs r1, #0x14
	ldrsh r0, [r7, r1]
	bl __floatsidf
	ldr r2, _0802A810 @ =0x3FF80000
	ldr r3, _0802A814 @ =0x00000000
	bl __muldf3
	bl __fixdfsi
	strh r0, [r7, #0x14]
	movs r1, #0x16
	ldrsh r0, [r7, r1]
	bl __floatsidf
	ldr r2, _0802A810 @ =0x3FF80000
	ldr r3, _0802A814 @ =0x00000000
	bl __muldf3
	bl __fixdfsi
	strh r0, [r7, #0x16]
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	bl __floatsidf
	ldr r2, _0802A810 @ =0x3FF80000
	ldr r3, _0802A814 @ =0x00000000
	bl __muldf3
	bl __fixdfsi
	strh r0, [r7, #0x18]
	movs r1, #0x1c
	ldrsh r0, [r7, r1]
	bl __floatsidf
	ldr r2, _0802A818 @ =0x40080000
	ldr r3, _0802A81C @ =0x00000000
	bl __muldf3
	bl __fixdfsi
	strh r0, [r7, #0x1c]
	movs r1, #0x1e
	ldrsh r0, [r7, r1]
	bl __floatsidf
	ldr r2, _0802A818 @ =0x40080000
	ldr r3, _0802A81C @ =0x00000000
	bl __muldf3
	bl __fixdfsi
	strh r0, [r7, #0x1e]
	movs r0, #0x60
	rsbs r0, r0, #0
	b _0802A830
	.align 2, 0
_0802A808: .4byte gUnknown_0848722C
_0802A80C: .4byte 0x0000FFE0
_0802A810: .4byte 0x3FF80000
_0802A814: .4byte 0x00000000
_0802A818: .4byte 0x40080000
_0802A81C: .4byte 0x00000000
_0802A820:
	strh r6, [r7, #0x1c]
	strh r6, [r7, #0x1e]
	movs r0, #0x40
	b _0802A830
_0802A828:
	movs r0, #0
	strh r0, [r7, #0x1c]
	strh r0, [r7, #0x1e]
	ldr r0, _0802A880 @ =0x0000FFC0
_0802A830:
	strh r0, [r7, #0x20]
	ldr r0, _0802A884 @ =gUnknown_03005730
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802A840
	movs r0, #0x94
	bl m4aSongNumStart
_0802A840:
	adds r2, r7, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0xf9
	ands r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_802A248
	adds r0, r7, #0
	bl sub_802A4C4
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, r8
	mov r1, sb
	bl sub_802BE0C
	mov r0, r8
	bl DisplaySprite
	ldr r0, _0802A888 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802A88C @ =sub_802A890
	str r0, [r1, #8]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802A880: .4byte 0x0000FFC0
_0802A884: .4byte gUnknown_03005730
_0802A888: .4byte gCurTask
_0802A88C: .4byte sub_802A890

	thumb_func_start sub_802A890
sub_802A890: @ 0x0802A890
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r4, _0802A8DC @ =gUnknown_03005690
	ldr r5, _0802A8E0 @ =gUnknown_030055FC
	movs r0, #0xc
	rsbs r0, r0, #0
	adds r0, r0, r5
	mov r8, r0
	movs r7, #0
	ldr r0, _0802A8E4 @ =gInput
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, _0802A8E8 @ =gPressedKeys
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x44
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x3d
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0802A8CA
	subs r0, r2, #1
	strb r0, [r1]
_0802A8CA:
	adds r0, r4, #0
	adds r0, #0x54
	ldrh r1, [r0]
	adds r6, r0, #0
	cmp r1, #4
	beq _0802A8EC
	cmp r1, #5
	beq _0802A8FC
	b _0802A902
	.align 2, 0
_0802A8DC: .4byte gUnknown_03005690
_0802A8E0: .4byte gUnknown_030055FC
_0802A8E4: .4byte gInput
_0802A8E8: .4byte gPressedKeys
_0802A8EC:
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0802A902
	adds r0, r4, #0
	bl sub_802A068
	b _0802A902
_0802A8FC:
	adds r0, r4, #0
	bl sub_802A068
_0802A902:
	adds r0, r4, #0
	bl sub_8029F30
	cmp r0, #0
	bne _0802A976
	ldrh r0, [r6]
	cmp r0, #4
	bne _0802A924
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	ldr r0, _0802A920 @ =0x000007FF
	cmp r1, r0
	ble _0802A932
	b _0802A936
	.align 2, 0
_0802A920: .4byte 0x000007FF
_0802A924:
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	movs r0, #0x80
	lsls r0, r0, #4
	cmp r1, r0
	bgt _0802A932
	movs r7, #1
_0802A932:
	cmp r7, #0
	beq _0802A956
_0802A936:
	ldr r0, _0802A980 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802A984 @ =sub_802A560
	str r0, [r1, #8]
	adds r0, r4, #0
	adds r0, #0x28
	movs r1, #0
	strb r1, [r0]
	movs r2, #0
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r4, #0x18]
	strh r1, [r4, #0x20]
	adds r0, r4, #0
	adds r0, #0x3e
	strb r2, [r0]
_0802A956:
	adds r0, r4, #0
	bl sub_802A248
	adds r0, r4, #0
	bl sub_802A4C4
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	mov r1, r8
	bl sub_802BE0C
	adds r0, r5, #0
	bl DisplaySprite
_0802A976:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802A980: .4byte gCurTask
_0802A984: .4byte sub_802A560

	thumb_func_start sub_802A988
sub_802A988: @ 0x0802A988
	push {r4, r5, r6, lr}
	ldr r4, _0802AA2C @ =gUnknown_03005690
	ldr r5, _0802AA30 @ =gUnknown_030055FC
	adds r6, r5, #0
	subs r6, #0xc
	ldr r0, _0802AA34 @ =gSpecialStageCollectedRings
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802A9AC
	bl sub_802AAF0
	ldr r0, _0802AA38 @ =gUnknown_03005730
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802A9AC
	movs r0, #0x76
	bl m4aSongNumStart
_0802A9AC:
	ldr r1, _0802AA3C @ =gPlayerCharacterIdleAnims
	adds r0, r4, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #0x20
	adds r1, r4, #0
	adds r1, #0x48
	movs r2, #0
	strh r0, [r1]
	adds r3, r4, #0
	adds r3, #0x4a
	strh r2, [r3]
	ldrh r0, [r1]
	strh r0, [r5, #0xa]
	ldrh r1, [r3]
	adds r0, r5, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	strh r2, [r4, #0x14]
	strh r2, [r4, #0x16]
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r4, #0x18]
	strh r2, [r4, #0x1c]
	strh r2, [r4, #0x1e]
	strh r2, [r4, #0x20]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	movs r0, #0x3c
	strh r0, [r4, #0x34]
	adds r0, r4, #0
	bl sub_802A248
	adds r0, r4, #0
	bl sub_802A4C4
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_802BE0C
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0802AA40 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802AA44 @ =sub_802AA48
	str r0, [r1, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802AA2C: .4byte gUnknown_03005690
_0802AA30: .4byte gUnknown_030055FC
_0802AA34: .4byte gSpecialStageCollectedRings
_0802AA38: .4byte gUnknown_03005730
_0802AA3C: .4byte gPlayerCharacterIdleAnims
_0802AA40: .4byte gCurTask
_0802AA44: .4byte sub_802AA48

	thumb_func_start sub_802AA48
sub_802AA48: @ 0x0802AA48
	push {r4, r5, r6, lr}
	ldr r4, _0802AAD8 @ =gUnknown_03005690
	ldr r5, _0802AADC @ =gUnknown_030055FC
	adds r6, r5, #0
	subs r6, #0xc
	ldr r0, _0802AAE0 @ =gInput
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	movs r3, #0
	strh r0, [r1]
	ldr r0, _0802AAE4 @ =gPressedKeys
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x44
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x3d
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0802AA7A
	subs r0, r2, #1
	strb r0, [r1]
_0802AA7A:
	ldrh r0, [r4, #0x34]
	subs r0, #1
	strh r0, [r4, #0x34]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802AA98
	ldr r0, _0802AAE8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802AAEC @ =sub_802A560
	str r0, [r1, #8]
	adds r0, r4, #0
	adds r0, #0x28
	strb r3, [r0]
	adds r0, #0x16
	strb r3, [r0]
_0802AA98:
	movs r1, #0x34
	ldrsh r0, [r4, r1]
	cmp r0, #0x1e
	bgt _0802AAA6
	adds r0, r4, #0
	bl sub_802A068
_0802AAA6:
	adds r0, r4, #0
	bl sub_802A248
	adds r0, r4, #0
	bl sub_802A4C4
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_802BE0C
	ldrh r1, [r4, #0x34]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0802AAD0
	adds r0, r5, #0
	bl DisplaySprite
_0802AAD0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802AAD8: .4byte gUnknown_03005690
_0802AADC: .4byte gUnknown_030055FC
_0802AAE0: .4byte gInput
_0802AAE4: .4byte gPressedKeys
_0802AAE8: .4byte gCurTask
_0802AAEC: .4byte sub_802A560

	thumb_func_start sub_802AAF0
sub_802AAF0: @ 0x0802AAF0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r6, _0802AB04 @ =gUnknown_03005690
	ldr r1, _0802AB08 @ =gSpecialStageCollectedRings
	ldrh r0, [r1]
	cmp r0, #9
	bls _0802AB0C
	movs r5, #0xa
	subs r0, #0xa
	b _0802AB10
	.align 2, 0
_0802AB04: .4byte gUnknown_03005690
_0802AB08: .4byte gSpecialStageCollectedRings
_0802AB0C:
	ldrh r5, [r1]
	movs r0, #0
_0802AB10:
	strh r0, [r1]
	adds r7, r5, #0
	cmp r5, #0
	beq _0802AB86
	movs r4, #0
_0802AB1A:
	str r4, [sp]
	ldr r0, _0802AB90 @ =sub_802C6C4
	movs r1, #0x74
	movs r2, #0xa8
	lsls r2, r2, #5
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	subs r3, r5, #1
	ldr r5, _0802AB94 @ =0x0300006A
	adds r0, r1, r5
	strb r3, [r0]
	adds r5, #1
	adds r0, r1, r5
	strb r7, [r0]
	ldr r0, [r6]
	str r0, [r2, #0x3c]
	ldr r0, [r6, #4]
	str r0, [r2, #0x40]
	ldr r0, [r6, #8]
	str r0, [r2, #0x44]
	ldr r2, _0802AB98 @ =0x03000052
	adds r0, r1, r2
	strh r4, [r0]
	subs r5, #0x17
	adds r0, r1, r5
	strh r4, [r0]
	adds r2, #4
	adds r0, r1, r2
	strh r4, [r0]
	adds r5, #4
	adds r0, r1, r5
	strh r4, [r0]
	adds r2, #4
	adds r0, r1, r2
	strh r4, [r0]
	adds r5, #4
	adds r0, r1, r5
	strh r4, [r0]
	adds r2, #6
	adds r0, r1, r2
	strh r4, [r0]
	adds r5, #0xc
	adds r1, r1, r5
	ldr r0, _0802AB9C @ =0x0000FFFF
	strh r0, [r1]
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	cmp r5, #0
	bne _0802AB1A
_0802AB86:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802AB90: .4byte sub_802C6C4
_0802AB94: .4byte 0x0300006A
_0802AB98: .4byte 0x03000052
_0802AB9C: .4byte 0x0000FFFF

	thumb_func_start sub_802ABA0
sub_802ABA0: @ 0x0802ABA0
	push {r4, r5, r6, lr}
	ldr r4, _0802AC38 @ =gUnknown_03005690
	ldr r5, _0802AC3C @ =gUnknown_030055FC
	adds r6, r5, #0
	subs r6, #0xc
	ldr r1, _0802AC40 @ =gPlayerCharacterIdleAnims
	adds r0, r4, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #0x1e
	adds r1, r4, #0
	adds r1, #0x48
	movs r2, #0
	strh r0, [r1]
	adds r1, #2
	strh r2, [r1]
	strh r0, [r5, #0xa]
	movs r1, #0
	adds r0, r5, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	strh r2, [r4, #0x14]
	strh r2, [r4, #0x16]
	strh r2, [r4, #0x1c]
	strh r2, [r4, #0x1e]
	strh r2, [r4, #0x20]
	adds r1, r4, #0
	adds r1, #0x28
	movs r0, #3
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x2d
	strh r0, [r4, #0x3a]
	ldr r0, _0802AC44 @ =gUnknown_03005730
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802AC08
	movs r0, #0x95
	bl m4aSongNumStart
_0802AC08:
	adds r0, r4, #0
	bl sub_802A248
	adds r0, r4, #0
	bl sub_802A4C4
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_802BE0C
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0802AC48 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802AC4C @ =sub_802AC50
	str r0, [r1, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802AC38: .4byte gUnknown_03005690
_0802AC3C: .4byte gUnknown_030055FC
_0802AC40: .4byte gPlayerCharacterIdleAnims
_0802AC44: .4byte gUnknown_03005730
_0802AC48: .4byte gCurTask
_0802AC4C: .4byte sub_802AC50

	thumb_func_start sub_802AC50
sub_802AC50: @ 0x0802AC50
	push {r4, r5, r6, lr}
	ldr r4, _0802ACDC @ =gUnknown_03005690
	ldr r5, _0802ACE0 @ =gUnknown_030055FC
	adds r6, r5, #0
	subs r6, #0xc
	adds r1, r4, #0
	adds r1, #0x3d
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0802AC6C
	subs r0, r2, #1
	strb r0, [r1]
_0802AC6C:
	adds r0, r4, #0
	bl sub_8029F30
	cmp r0, #0
	bne _0802ACD6
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0802AC8A
	ldr r0, _0802ACE4 @ =0x0000FF80
_0802AC8A:
	strh r0, [r4, #0x20]
	ldrh r0, [r4, #0x3a]
	subs r0, #1
	strh r0, [r4, #0x3a]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802ACB6
	ldr r0, _0802ACE8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802ACEC @ =sub_802A560
	str r0, [r1, #8]
	ldrb r1, [r2]
	movs r0, #0xef
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x28
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x16
	movs r0, #0xc
	strb r0, [r1]
_0802ACB6:
	adds r0, r4, #0
	bl sub_802A248
	adds r0, r4, #0
	bl sub_802A4C4
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_802BE0C
	adds r0, r5, #0
	bl DisplaySprite
_0802ACD6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802ACDC: .4byte gUnknown_03005690
_0802ACE0: .4byte gUnknown_030055FC
_0802ACE4: .4byte 0x0000FF80
_0802ACE8: .4byte gCurTask
_0802ACEC: .4byte sub_802A560

	thumb_func_start sub_802ACF0
sub_802ACF0: @ 0x0802ACF0
	push {r4, r5, r6, lr}
	ldr r4, _0802AD84 @ =gUnknown_03005690
	ldr r5, _0802AD88 @ =gUnknown_030055FC
	adds r6, r5, #0
	subs r6, #0xc
	ldr r1, _0802AD8C @ =gPlayerCharacterIdleAnims
	adds r0, r4, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #0x1f
	adds r1, r4, #0
	adds r1, #0x48
	movs r2, #0
	strh r0, [r1]
	adds r1, #2
	strh r2, [r1]
	strh r0, [r5, #0xa]
	movs r1, #0
	adds r0, r5, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	strh r2, [r4, #0x14]
	strh r2, [r4, #0x16]
	strh r2, [r4, #0x1c]
	strh r2, [r4, #0x1e]
	strh r2, [r4, #0x20]
	adds r1, r4, #0
	adds r1, #0x28
	movs r0, #4
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0802AD90 @ =gUnknown_03005730
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802AD54
	movs r0, #0x95
	bl m4aSongNumStart
_0802AD54:
	adds r0, r4, #0
	bl sub_802A248
	adds r0, r4, #0
	bl sub_802A4C4
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_802BE0C
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0802AD94 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802AD98 @ =sub_802AD9C
	str r0, [r1, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802AD84: .4byte gUnknown_03005690
_0802AD88: .4byte gUnknown_030055FC
_0802AD8C: .4byte gPlayerCharacterIdleAnims
_0802AD90: .4byte gUnknown_03005730
_0802AD94: .4byte gCurTask
_0802AD98: .4byte sub_802AD9C

	thumb_func_start sub_802AD9C
sub_802AD9C: @ 0x0802AD9C
	push {r4, r5, r6, lr}
	ldr r4, _0802AE2C @ =gUnknown_03005690
	ldr r5, _0802AE30 @ =gUnknown_030055FC
	adds r6, r5, #0
	subs r6, #0xc
	adds r1, r4, #0
	adds r1, #0x3d
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0802ADB8
	subs r0, r2, #1
	strb r0, [r1]
_0802ADB8:
	adds r0, r4, #0
	bl sub_8029F30
	cmp r0, #0
	bne _0802AE24
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0802ADD6
	ldr r0, _0802AE34 @ =0x0000FF80
_0802ADD6:
	strh r0, [r4, #0x20]
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0802AE04
	ldr r0, _0802AE38 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802AE3C @ =sub_802A560
	str r0, [r1, #8]
	ldrb r1, [r2]
	movs r0, #0xdf
	ands r0, r1
	movs r1, #0
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x28
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x3e
	movs r0, #0xc
	strb r0, [r1]
_0802AE04:
	adds r0, r4, #0
	bl sub_802A248
	adds r0, r4, #0
	bl sub_802A4C4
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_802BE0C
	adds r0, r5, #0
	bl DisplaySprite
_0802AE24:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802AE2C: .4byte gUnknown_03005690
_0802AE30: .4byte gUnknown_030055FC
_0802AE34: .4byte 0x0000FF80
_0802AE38: .4byte gCurTask
_0802AE3C: .4byte sub_802A560

	thumb_func_start sub_802AE40
sub_802AE40: @ 0x0802AE40
	push {r4, r5, r6, lr}
	ldr r4, _0802AF04 @ =gUnknown_03005690
	ldr r6, _0802AF08 @ =gUnknown_030055FC
	adds r5, r6, #0
	subs r5, #0xc
	adds r0, r4, #0
	adds r0, #0x42
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldrh r0, [r4, #0x12]
	adds r0, #0x10
	ldr r2, _0802AF0C @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r4, #0x12]
	ldr r1, _0802AF10 @ =gSineTable
	movs r2, #0x12
	ldrsh r0, [r4, r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1a
	strh r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x29
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0802AE8A
	movs r0, #0xff
	lsls r0, r0, #8
_0802AE8A:
	strh r0, [r4, #0x20]
	adds r0, r4, #0
	bl sub_802A134
	adds r0, r4, #0
	bl sub_802A248
	adds r0, r4, #0
	bl sub_802A4C4
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_802BE0C
	adds r0, r6, #0
	bl DisplaySprite
	ldrh r0, [r4, #0x32]
	subs r0, #1
	strh r0, [r4, #0x32]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	beq _0802AEC2
	b _0802AFF6
_0802AEC2:
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #0x40
	bne _0802AF64
	ldr r0, _0802AF14 @ =gUnknown_03005028
	ldr r1, _0802AF18 @ =gSpecialStageCollectedRings
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bhi _0802AF28
	movs r0, #0xa5
	lsls r0, r0, #1
	strh r0, [r4, #0x32]
	ldr r1, _0802AF1C @ =gPlayerCharacterIdleAnims
	adds r0, r4, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #0x21
	adds r5, r4, #0
	adds r5, #0x48
	strh r0, [r5]
	adds r4, #0x4a
	strh r2, [r4]
	ldr r0, _0802AF20 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802AF24 @ =sub_802B07C
	str r0, [r1, #8]
	b _0802AF98
	.align 2, 0
_0802AF04: .4byte gUnknown_03005690
_0802AF08: .4byte gUnknown_030055FC
_0802AF0C: .4byte 0x000003FF
_0802AF10: .4byte gSineTable
_0802AF14: .4byte gUnknown_03005028
_0802AF18: .4byte gSpecialStageCollectedRings
_0802AF1C: .4byte gPlayerCharacterIdleAnims
_0802AF20: .4byte gCurTask
_0802AF24: .4byte sub_802B07C
_0802AF28:
	strh r2, [r4, #0x32]
	ldr r1, _0802AF58 @ =gPlayerCharacterIdleAnims
	adds r0, r4, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #0x22
	adds r5, r4, #0
	adds r5, #0x48
	strh r0, [r5]
	adds r4, #0x4a
	strh r2, [r4]
	ldr r0, _0802AF5C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802AF60 @ =sub_802B008
	str r0, [r1, #8]
	bl sub_802B214
	movs r0, #1
	bl sub_802C56C
	b _0802AFE2
	.align 2, 0
_0802AF58: .4byte gPlayerCharacterIdleAnims
_0802AF5C: .4byte gCurTask
_0802AF60: .4byte sub_802B008
_0802AF64:
	ldr r0, _0802AFA0 @ =gUnknown_03005070
	ldr r1, _0802AFA4 @ =gSpecialStageCollectedRings
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bhi _0802AFB4
	ldr r1, _0802AFA8 @ =gPlayerCharacterIdleAnims
	adds r0, r4, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #0x21
	adds r5, r4, #0
	adds r5, #0x48
	strh r0, [r5]
	adds r4, #0x4a
	strh r2, [r4]
	ldr r0, _0802AFAC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802AFB0 @ =sub_802B18C
	str r0, [r1, #8]
	movs r0, #0x2c
	bl m4aSongNumStart
_0802AF98:
	movs r0, #0
	bl sub_802C56C
	b _0802AFE2
	.align 2, 0
_0802AFA0: .4byte gUnknown_03005070
_0802AFA4: .4byte gSpecialStageCollectedRings
_0802AFA8: .4byte gPlayerCharacterIdleAnims
_0802AFAC: .4byte gCurTask
_0802AFB0: .4byte sub_802B18C
_0802AFB4:
	strh r2, [r4, #0x32]
	ldr r1, _0802AFFC @ =gPlayerCharacterIdleAnims
	adds r0, r4, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #0x22
	adds r5, r4, #0
	adds r5, #0x48
	strh r0, [r5]
	adds r4, #0x4a
	strh r2, [r4]
	ldr r0, _0802B000 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802B004 @ =sub_802B008
	str r0, [r1, #8]
	bl sub_802B214
	movs r0, #1
	bl sub_802C56C
_0802AFE2:
	ldrh r0, [r5]
	strh r0, [r6, #0xa]
	ldrh r1, [r4]
	adds r0, r6, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r1, r6, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
_0802AFF6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802AFFC: .4byte gPlayerCharacterIdleAnims
_0802B000: .4byte gCurTask
_0802B004: .4byte sub_802B008

	thumb_func_start sub_802B008
sub_802B008: @ 0x0802B008
	push {r4, r5, r6, lr}
	ldr r4, _0802B074 @ =gUnknown_03005690
	ldr r5, _0802B078 @ =gUnknown_030055FC
	adds r6, r5, #0
	subs r6, #0xc
	ldrh r2, [r4, #0x32]
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	movs r0, #0x78
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0802B06E
	subs r0, r2, #1
	movs r1, #0
	strh r0, [r4, #0x32]
	strh r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x42
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	subs r0, #0x1b
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0802B046
	movs r0, #0xff
	lsls r0, r0, #8
_0802B046:
	strh r0, [r4, #0x20]
	adds r0, r4, #0
	bl sub_802A068
	adds r0, r4, #0
	bl sub_802A248
	adds r0, r4, #0
	bl sub_802A4C4
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_802BE0C
	adds r0, r5, #0
	bl DisplaySprite
_0802B06E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802B074: .4byte gUnknown_03005690
_0802B078: .4byte gUnknown_030055FC

	thumb_func_start sub_802B07C
sub_802B07C: @ 0x0802B07C
	push {r4, r5, r6, r7, lr}
	ldr r4, _0802B168 @ =gUnknown_03005690
	ldr r5, _0802B16C @ =gUnknown_030055FC
	adds r7, r5, #0
	subs r7, #0xc
	adds r0, r4, #0
	adds r0, #0x42
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldrh r0, [r4, #0x12]
	adds r0, #0x10
	ldr r2, _0802B170 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r4, #0x12]
	ldr r1, _0802B174 @ =gSineTable
	movs r2, #0x12
	ldrsh r0, [r4, r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1a
	strh r0, [r4, #0x10]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r2, #0
	cmp r0, #0
	beq _0802B0C8
	movs r0, #0xff
	lsls r0, r0, #8
_0802B0C8:
	strh r0, [r4, #0x20]
	adds r0, r4, #0
	bl sub_802A068
	adds r0, r4, #0
	bl sub_802A248
	adds r0, r4, #0
	bl sub_802A4C4
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_802BE0C
	adds r0, r5, #0
	bl DisplaySprite
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	cmp r0, #0xb4
	bne _0802B110
	ldr r1, _0802B178 @ =gUnknown_03005154
	ldr r0, _0802B17C @ =gUnknown_03005070
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #0x8c
	lsls r0, r0, #5
	ldr r1, _0802B180 @ =0x00001181
	bl TasksDestroyInPriorityRange
	movs r0, #0
	bl sub_805C448
_0802B110:
	ldrh r1, [r4, #0x32]
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _0802B13C
	subs r0, r1, #1
	strh r0, [r4, #0x32]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802B13C
	adds r2, r4, #0
	adds r2, #0x4a
	movs r1, #1
	movs r0, #1
	strh r0, [r2]
	adds r0, r5, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
_0802B13C:
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0802B160
	ldr r0, _0802B184 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802B188 @ =sub_802A560
	str r0, [r1, #8]
	movs r0, #0
	strb r0, [r6]
	adds r1, r4, #0
	adds r1, #0x2a
	strb r0, [r1]
	adds r1, #0x14
	movs r0, #0xc
	strb r0, [r1]
_0802B160:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802B168: .4byte gUnknown_03005690
_0802B16C: .4byte gUnknown_030055FC
_0802B170: .4byte 0x000003FF
_0802B174: .4byte gSineTable
_0802B178: .4byte gUnknown_03005154
_0802B17C: .4byte gUnknown_03005070
_0802B180: .4byte 0x00001181
_0802B184: .4byte gCurTask
_0802B188: .4byte sub_802A560

	thumb_func_start sub_802B18C
sub_802B18C: @ 0x0802B18C
	push {r4, r5, r6, lr}
	ldr r4, _0802B204 @ =gUnknown_03005690
	ldr r5, _0802B208 @ =gUnknown_030055FC
	adds r6, r5, #0
	subs r6, #0xc
	adds r0, r4, #0
	adds r0, #0x42
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldrh r0, [r4, #0x12]
	adds r0, #0x10
	ldr r2, _0802B20C @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r4, #0x12]
	ldr r1, _0802B210 @ =gSineTable
	movs r2, #0x12
	ldrsh r0, [r4, r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1a
	strh r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x29
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0802B1D6
	movs r0, #0xff
	lsls r0, r0, #8
_0802B1D6:
	strh r0, [r4, #0x20]
	adds r0, r4, #0
	bl sub_802A068
	adds r0, r4, #0
	bl sub_802A248
	adds r0, r4, #0
	bl sub_802A4C4
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_802BE0C
	adds r0, r5, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802B204: .4byte gUnknown_03005690
_0802B208: .4byte gUnknown_030055FC
_0802B20C: .4byte 0x000003FF
_0802B210: .4byte gSineTable

	thumb_func_start sub_802B214
sub_802B214: @ 0x0802B214
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0802B380 @ =gUnknown_03005690
	mov sb, r0
	ldr r0, _0802B384 @ =Task_802D508
	ldr r2, _0802B388 @ =0x000010FF
	movs r1, #0
	mov r8, r1
	str r1, [sp]
	movs r1, #0x74
	movs r3, #0
	bl TaskCreate
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r7, r0
	mov r2, sb
	ldr r0, [r2]
	str r0, [r5, #0x3c]
	ldr r0, [r2, #4]
	str r0, [r5, #0x40]
	ldr r0, [r2, #8]
	ldr r3, _0802B38C @ =0xFFFFFF00
	adds r0, r0, r3
	str r0, [r5, #0x44]
	ldrh r1, [r2, #0x10]
	ldr r4, _0802B390 @ =0x03000050
	adds r0, r7, r4
	strh r1, [r0]
	ldr r1, _0802B394 @ =0x03000052
	adds r0, r7, r1
	mov r2, r8
	strh r2, [r0]
	ldr r3, _0802B398 @ =0x03000054
	adds r0, r7, r3
	strh r2, [r0]
	adds r4, #6
	adds r0, r7, r4
	strh r2, [r0]
	ldr r3, _0802B39C @ =gPseudoRandom
	ldr r1, [r3]
	ldr r0, _0802B3A0 @ =0x00196225
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r0, _0802B3A4 @ =0x3C6EF35F
	adds r2, r2, r0
	str r2, [r3]
	movs r1, #0xf
	adds r0, r2, #0
	ands r0, r1
	ldr r1, _0802B3A8 @ =0x03000058
	adds r3, r7, r1
	strh r0, [r3]
	movs r0, #0x70
	ands r0, r2
	asrs r0, r0, #4
	rsbs r0, r0, #0
	adds r4, #4
	adds r1, r7, r4
	strh r0, [r1]
	ldr r0, _0802B3AC @ =0x0300005C
	adds r1, r7, r0
	ldr r0, _0802B3B0 @ =0x0000FFF0
	strh r0, [r1]
	movs r0, #0x80
	ands r2, r0
	cmp r2, #0
	beq _0802B2AC
	ldrh r0, [r3]
	rsbs r0, r0, #0
	strh r0, [r3]
_0802B2AC:
	ldr r1, _0802B3B4 @ =0x0300006E
	adds r0, r7, r1
	mov r2, r8
	strh r2, [r0]
	ldr r3, _0802B3B8 @ =0x03000060
	adds r1, r7, r3
	movs r0, #0xe
	strh r0, [r1]
	ldr r1, _0802B3BC @ =gPlayerCharacterIdleAnims
	mov r0, sb
	adds r0, #0x4c
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #0x22
	ldr r4, _0802B3C0 @ =0x03000062
	adds r1, r7, r4
	strh r0, [r1]
	ldr r0, _0802B3C4 @ =0x03000064
	adds r2, r7, r0
	movs r0, #1
	strh r0, [r2]
	adds r3, #7
	adds r0, r7, r3
	movs r4, #0
	strb r4, [r0]
	ldr r0, _0802B3C8 @ =0x0300000C
	adds r4, r7, r0
	ldr r0, _0802B3CC @ =0x06011400
	str r0, [r4, #4]
	mov r3, r8
	strh r3, [r4, #8]
	ldrh r0, [r1]
	strh r0, [r4, #0xa]
	ldrh r1, [r2]
	ldr r2, _0802B3D0 @ =0x0300002C
	adds r0, r7, r2
	strb r1, [r0]
	ldr r3, _0802B3D4 @ =0x0300002D
	adds r1, r7, r3
	movs r0, #0xff
	strb r0, [r1]
	mov r0, r8
	strh r0, [r4, #0x1c]
	ldr r1, _0802B3D8 @ =0x0300002E
	adds r6, r7, r1
	movs r2, #0x10
	mov sl, r2
	mov r3, sl
	strb r3, [r6]
	mov r1, sb
	ldr r0, [r1, #8]
	asrs r0, r0, #8
	ldr r1, [r5, #0x44]
	asrs r1, r1, #8
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_802D58C
	ldr r3, _0802B3DC @ =0x03000066
	adds r2, r7, r3
	strb r0, [r2]
	ldr r0, [r5, #0x3c]
	asrs r0, r0, #8
	adds r0, #0x78
	strh r0, [r4, #0x16]
	ldr r1, [r5, #0x40]
	asrs r1, r1, #8
	movs r0, #0x50
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x1a]
	mov r0, r8
	strh r0, [r4, #0x1c]
	mov r1, sl
	strb r1, [r6]
	subs r3, #0x35
	adds r0, r7, r3
	movs r1, #0
	strb r1, [r0]
	ldrb r0, [r2]
	ldr r1, _0802B3E0 @ =0x00002020
	orrs r0, r1
	str r0, [r4, #0x10]
	mov r2, r8
	strh r2, [r5]
	movs r0, #0x40
	strh r0, [r5, #2]
	strh r0, [r5, #4]
	ldrh r0, [r4, #0x16]
	strh r0, [r5, #6]
	ldrh r0, [r4, #0x18]
	strh r0, [r5, #8]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802B380: .4byte gUnknown_03005690
_0802B384: .4byte Task_802D508
_0802B388: .4byte 0x000010FF
_0802B38C: .4byte 0xFFFFFF00
_0802B390: .4byte 0x03000050
_0802B394: .4byte 0x03000052
_0802B398: .4byte 0x03000054
_0802B39C: .4byte gPseudoRandom
_0802B3A0: .4byte 0x00196225
_0802B3A4: .4byte 0x3C6EF35F
_0802B3A8: .4byte 0x03000058
_0802B3AC: .4byte 0x0300005C
_0802B3B0: .4byte 0x0000FFF0
_0802B3B4: .4byte 0x0300006E
_0802B3B8: .4byte 0x03000060
_0802B3BC: .4byte gPlayerCharacterIdleAnims
_0802B3C0: .4byte 0x03000062
_0802B3C4: .4byte 0x03000064
_0802B3C8: .4byte 0x0300000C
_0802B3CC: .4byte 0x06011400
_0802B3D0: .4byte 0x0300002C
_0802B3D4: .4byte 0x0300002D
_0802B3D8: .4byte 0x0300002E
_0802B3DC: .4byte 0x03000066
_0802B3E0: .4byte 0x00002020

	thumb_func_start sub_802B3E4
sub_802B3E4: @ 0x0802B3E4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _0802B4A4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _0802B4A8 @ =gUnknown_03005690
	mov sb, r0
	ldr r3, _0802B4AC @ =gUnknown_030055E0
	ldr r2, _0802B4B0 @ =gUnknown_087BF8DC
	ldr r1, _0802B4B4 @ =gUnknown_08487134
	ldr r0, _0802B4B8 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r5, [r0]
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _0802B41E
	b _0802B5BA
_0802B41E:
	ldrb r0, [r3]
	cmp r0, #1
	bne _0802B426
	b _0802B5BA
_0802B426:
	ldrh r2, [r4, #2]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r5
	mov r3, sb
	ldr r1, [r3, #8]
	asrs r1, r1, #8
	movs r7, #0xc0
	lsls r7, r7, #2
	adds r1, r1, r7
	ldr r0, [r0, #4]
	cmp r0, r1
	blt _0802B444
	b _0802B5BA
_0802B444:
	movs r6, #0
	movs r0, #1
	mov r8, r0
_0802B44A:
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrh r1, [r0, #8]
	ldr r0, _0802B4BC @ =0x0000FFFF
	cmp r1, r0
	bne _0802B4C8
	str r6, [sp]
	ldr r0, _0802B4C0 @ =sub_802D33C
	movs r1, #0x74
	movs r2, #0xf8
	lsls r2, r2, #5
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r7, #0xc0
	lsls r7, r7, #0x12
	adds r3, r1, r7
	ldr r0, _0802B4C4 @ =0x03000060
	adds r1, r1, r0
	movs r0, #1
	strh r0, [r1]
	ldrh r1, [r4, #2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0, #4]
	lsls r0, r0, #8
	str r0, [r3, #0x44]
	ldrh r1, [r4, #2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0, #4]
	strh r0, [r4, #4]
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	mov r1, r8
	strb r1, [r4, #6]
	b _0802B5BA
	.align 2, 0
_0802B4A4: .4byte gCurTask
_0802B4A8: .4byte gUnknown_03005690
_0802B4AC: .4byte gUnknown_030055E0
_0802B4B0: .4byte gUnknown_087BF8DC
_0802B4B4: .4byte gUnknown_08487134
_0802B4B8: .4byte gCurrentLevel
_0802B4BC: .4byte 0x0000FFFF
_0802B4C0: .4byte sub_802D33C
_0802B4C4: .4byte 0x03000060
_0802B4C8:
	ldr r0, _0802B500 @ =0x00007FFF
	cmp r1, r0
	bne _0802B50C
	str r6, [sp]
	ldr r0, _0802B504 @ =sub_802D33C
	movs r1, #0x74
	movs r2, #0xf8
	lsls r2, r2, #5
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r7, #0xc0
	lsls r7, r7, #0x12
	adds r3, r1, r7
	ldr r0, _0802B508 @ =0x03000060
	adds r1, r1, r0
	movs r0, #2
	strh r0, [r1]
	ldrh r1, [r4, #2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0, #4]
	lsls r0, r0, #8
	str r0, [r3, #0x44]
	b _0802B588
	.align 2, 0
_0802B500: .4byte 0x00007FFF
_0802B504: .4byte sub_802D33C
_0802B508: .4byte 0x03000060
_0802B50C:
	cmp r1, #0
	bne _0802B514
	adds r0, r2, #1
	b _0802B59A
_0802B514:
	str r6, [sp]
	ldr r0, _0802B5C8 @ =Task_802BEDC
	movs r1, #0x74
	movs r2, #0xa8
	lsls r2, r2, #5
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r3, r2, r1
	ldrh r1, [r4, #2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrh r1, [r0, #8]
	ldr r7, _0802B5CC @ =0x03000060
	adds r0, r2, r7
	strh r1, [r0]
	ldrh r1, [r4, #2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	str r0, [r3, #0x3c]
	ldrh r1, [r4, #2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	movs r7, #2
	ldrsh r0, [r0, r7]
	lsls r0, r0, #8
	str r0, [r3, #0x40]
	ldrh r1, [r4, #2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0, #4]
	lsls r0, r0, #8
	str r0, [r3, #0x44]
	ldrh r1, [r4, #2]
	ldr r3, _0802B5D0 @ =0x03000068
	adds r0, r2, r3
	strh r1, [r0]
	ldr r7, _0802B5D4 @ =0x0300006D
	adds r1, r2, r7
	movs r0, #0xb
	strb r0, [r1]
	ldr r0, _0802B5D8 @ =0x03000070
	adds r2, r2, r0
	strh r6, [r2]
_0802B588:
	ldrh r1, [r4, #2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0, #4]
	strh r0, [r4, #4]
	ldrh r0, [r4, #2]
	adds r0, #1
_0802B59A:
	strh r0, [r4, #2]
	ldrh r2, [r4, #2]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r5
	mov r3, sb
	ldr r1, [r3, #8]
	asrs r1, r1, #8
	movs r7, #0xc0
	lsls r7, r7, #2
	adds r1, r1, r7
	ldr r0, [r0, #4]
	cmp r0, r1
	bge _0802B5BA
	b _0802B44A
_0802B5BA:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802B5C8: .4byte Task_802BEDC
_0802B5CC: .4byte 0x03000060
_0802B5D0: .4byte 0x03000068
_0802B5D4: .4byte 0x0300006D
_0802B5D8: .4byte 0x03000070

	thumb_func_start sub_802B5DC
sub_802B5DC: @ 0x0802B5DC
	push {r4, r5, r6, lr}
	mov ip, r0
	ldrh r3, [r0, #0xa]
	adds r1, r3, #0
	ldr r0, _0802B628 @ =0x0000031D
	cmp r1, r0
	bne _0802B5F4
	mov r0, ip
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802B666
_0802B5F4:
	movs r2, #0
	adds r6, r3, #0
	ldr r4, _0802B62C @ =gUnknown_030056F0
	adds r5, r1, #0
	adds r3, r4, #0
_0802B5FE:
	lsls r1, r2, #2
	ldrh r0, [r3]
	cmp r0, r5
	bne _0802B630
	adds r0, r4, #2
	adds r0, r1, r0
	mov r1, ip
	adds r1, #0x20
	ldrh r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0802B630
	mov r1, ip
	ldr r0, [r1, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #0x10]
	b _0802B666
	.align 2, 0
_0802B628: .4byte 0x0000031D
_0802B62C: .4byte gUnknown_030056F0
_0802B630:
	adds r3, #4
	adds r2, #1
	cmp r2, #0xf
	ble _0802B5FE
	movs r2, #0
	ldr r3, _0802B658 @ =gUnknown_030056F0
	adds r5, r6, #0
	adds r1, r4, #2
_0802B640:
	ldrh r0, [r3]
	cmp r0, #0
	bne _0802B65C
	ldrh r0, [r1]
	cmp r0, #0
	bne _0802B65C
	strh r5, [r3]
	mov r0, ip
	adds r0, #0x20
	ldrb r0, [r0]
	strh r0, [r1]
	b _0802B666
	.align 2, 0
_0802B658: .4byte gUnknown_030056F0
_0802B65C:
	adds r3, #4
	adds r1, #4
	adds r2, #1
	cmp r2, #0xf
	ble _0802B640
_0802B666:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_802B66C
sub_802B66C: @ 0x0802B66C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	mov ip, r1
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	ldr r5, _0802B750 @ =gUnknown_030055FC
	ldr r1, [r1, #0x28]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0802B68E
	b _0802B878
_0802B68E:
	ldr r0, _0802B754 @ =gUnknown_03005690
	ldr r3, [r6, #0x44]
	ldr r2, _0802B758 @ =0xFFFFC000
	adds r1, r3, r2
	ldr r2, [r0, #8]
	adds r7, r0, #0
	cmp r2, r1
	bge _0802B6A0
	b _0802B878
_0802B6A0:
	cmp r2, r3
	ble _0802B6A6
	b _0802B878
_0802B6A6:
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r0, #4
	bge _0802B6B2
	b _0802B7E0
_0802B6B2:
	cmp r0, #9
	ble _0802B6BC
	cmp r0, #0xb
	beq _0802B6BC
	b _0802B7E0
_0802B6BC:
	adds r0, r7, #0
	adds r0, #0x29
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802B760
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	mov r1, ip
	adds r1, #0x2c
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r3, r0, r4
	ldr r0, [r7]
	asrs r0, r0, #8
	ldr r1, _0802B75C @ =gUnknown_0848720C
	movs r2, #0
	ldrsh r5, [r1, r2]
	adds r2, r0, r5
	adds r6, r1, #0
	cmp r3, r2
	bgt _0802B702
	mov r0, ip
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r3, r0
	cmp r0, r2
	bge _0802B710
	cmp r3, r2
	bge _0802B702
	b _0802B878
_0802B702:
	movs r1, #4
	ldrsh r0, [r6, r1]
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r3
	bge _0802B710
	b _0802B878
_0802B710:
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov r2, ip
	adds r2, #0x2d
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r3, r0, r1
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	movs r2, #2
	ldrsh r4, [r6, r2]
	adds r2, r0, r4
	cmp r3, r2
	bgt _0802B748
	mov r0, ip
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r1
	adds r0, r3, r0
	cmp r0, r2
	blt _0802B742
	b _0802B874
_0802B742:
	cmp r3, r2
	bge _0802B748
	b _0802B878
_0802B748:
	movs r1, #6
	ldrsh r0, [r6, r1]
	b _0802B86C
	.align 2, 0
_0802B750: .4byte gUnknown_030055FC
_0802B754: .4byte gUnknown_03005690
_0802B758: .4byte 0xFFFFC000
_0802B75C: .4byte gUnknown_0848720C
_0802B760:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	mov r1, ip
	adds r1, #0x2c
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r3, r0, r4
	ldr r0, [r7]
	asrs r0, r0, #8
	ldr r1, _0802B7DC @ =gUnknown_08487204
	movs r2, #0
	ldrsh r5, [r1, r2]
	adds r2, r0, r5
	adds r6, r1, #0
	cmp r3, r2
	bgt _0802B796
	mov r0, ip
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r3, r0
	cmp r0, r2
	bge _0802B7A2
	cmp r3, r2
	blt _0802B878
_0802B796:
	movs r1, #4
	ldrsh r0, [r6, r1]
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r3
	blt _0802B878
_0802B7A2:
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov r2, ip
	adds r2, #0x2d
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r3, r0, r1
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	movs r2, #2
	ldrsh r4, [r6, r2]
	adds r2, r0, r4
	cmp r3, r2
	bgt _0802B7D6
	mov r0, ip
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r1
	adds r0, r3, r0
	cmp r0, r2
	bge _0802B874
	cmp r3, r2
	blt _0802B878
_0802B7D6:
	movs r1, #6
	ldrsh r0, [r6, r1]
	b _0802B86C
	.align 2, 0
_0802B7DC: .4byte gUnknown_08487204
_0802B7E0:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	mov r1, ip
	adds r1, #0x2c
	movs r3, #0
	ldrsb r3, [r1, r3]
	adds r2, r0, r3
	ldr r0, [r7]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0x2c
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r1, r0, r4
	cmp r2, r1
	bgt _0802B816
	mov r0, ip
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0802B828
	cmp r2, r1
	blt _0802B878
_0802B816:
	adds r0, r5, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	blt _0802B878
_0802B828:
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov r1, ip
	adds r1, #0x2d
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r3, r0, r1
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	adds r2, r5, #0
	adds r2, #0x2d
	movs r4, #0
	ldrsb r4, [r2, r4]
	adds r2, r0, r4
	cmp r3, r2
	bgt _0802B862
	mov r0, ip
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r1
	adds r0, r3, r0
	cmp r0, r2
	bge _0802B874
	cmp r3, r2
	blt _0802B878
_0802B862:
	adds r0, r5, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
_0802B86C:
	subs r0, r0, r4
	adds r0, r2, r0
	cmp r0, r3
	blt _0802B878
_0802B874:
	movs r0, #1
	b _0802B87A
_0802B878:
	movs r0, #0
_0802B87A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_802B884
sub_802B884: @ 0x0802B884
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0802B900 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	adds r0, #0xc
	adds r6, r4, r0
	ldr r7, _0802B904 @ =gUnknown_03005690
	ldr r1, _0802B908 @ =0x03000067
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0802B8AE
	b _0802BBCC
_0802B8AE:
	adds r2, r7, #0
	adds r2, #0x29
	ldrb r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	mov r8, r2
	cmp r0, #0
	beq _0802B8C0
	b _0802BBCC
_0802B8C0:
	adds r0, r7, #0
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #2
	bne _0802B8CC
	b _0802BBCC
_0802B8CC:
	ldr r1, _0802B90C @ =0x03000048
	adds r0, r4, r1
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r1, _0802B910 @ =0x0300004A
	adds r0, r4, r1
	movs r1, #0
	ldrsh r3, [r0, r1]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_802B66C
	cmp r0, #0
	bne _0802B8EA
	b _0802BBCC
_0802B8EA:
	ldr r1, _0802B914 @ =0x03000060
	adds r0, r4, r1
	ldrh r0, [r0]
	cmp r0, #0xb
	bls _0802B8F6
	b _0802BBCC
_0802B8F6:
	lsls r0, r0, #2
	ldr r1, _0802B918 @ =_0802B91C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802B900: .4byte gCurTask
_0802B904: .4byte gUnknown_03005690
_0802B908: .4byte 0x03000067
_0802B90C: .4byte 0x03000048
_0802B910: .4byte 0x0300004A
_0802B914: .4byte 0x03000060
_0802B918: .4byte _0802B91C
_0802B91C: @ jump table
	.4byte _0802B94C @ case 0
	.4byte _0802BBCC @ case 1
	.4byte _0802BA8C @ case 2
	.4byte _0802B9E8 @ case 3
	.4byte _0802BAD8 @ case 4
	.4byte _0802BAD8 @ case 5
	.4byte _0802BAD8 @ case 6
	.4byte _0802BAD8 @ case 7
	.4byte _0802BAD8 @ case 8
	.4byte _0802BAD8 @ case 9
	.4byte _0802BAFE @ case 10
	.4byte _0802BB2C @ case 11
_0802B94C:
	adds r3, r5, #0
	adds r3, #0x60
	movs r2, #0
	movs r0, #1
	strh r0, [r3]
	ldr r1, _0802B9D8 @ =gUnknown_0848728C
	ldrh r0, [r1, #4]
	adds r7, r5, #0
	adds r7, #0x62
	strh r0, [r7]
	ldrh r0, [r3]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r4, r5, #0
	adds r4, #0x64
	strh r0, [r4]
	movs r0, #0x67
	adds r0, r0, r5
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #1
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x52
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
    @ inline of sub_802D6FC?
	ldr r1, _0802B9DC @ =gUnknown_084872C4
	ldrh r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0802B9E0 @ =0x06010000
	adds r0, r0, r1
	str r0, [r6, #4]
	strh r2, [r6, #8]
	ldrh r0, [r7]
	strh r0, [r6, #0xa]
	ldrh r1, [r4]
	adds r0, r6, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r1, r6, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	strh r2, [r6, #0x1c]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0802B9E4 @ =gSpecialStageCollectedRings
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	bl SpStage_PlayRingSoundeffect
	b _0802BBC4
	.align 2, 0
_0802B9D8: .4byte gUnknown_0848728C
_0802B9DC: .4byte gUnknown_084872C4
_0802B9E0: .4byte 0x06010000
_0802B9E4: .4byte gSpecialStageCollectedRings
_0802B9E8:
	adds r3, r5, #0
	adds r3, #0x60
	movs r2, #0
	movs r0, #1
	strh r0, [r3]
	ldr r1, _0802BA74 @ =gUnknown_0848728C
	ldrh r0, [r1, #4]
	adds r7, r5, #0
	adds r7, #0x62
	strh r0, [r7]
	ldrh r0, [r3]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r4, r5, #0
	adds r4, #0x64
	strh r0, [r4]
	movs r0, #0x67
	adds r0, r0, r5
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #1
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x52
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #4
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
    @ inline of sub_802D6FC?
	ldr r1, _0802BA78 @ =gUnknown_084872C4
	ldrh r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0802BA7C @ =0x06010000
	adds r0, r0, r1
	str r0, [r6, #4]
	strh r2, [r6, #8]
	ldrh r0, [r7]
	strh r0, [r6, #0xa]
	ldrh r1, [r4]
	adds r0, r6, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r1, r6, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	strh r2, [r6, #0x1c]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0802BA80 @ =gSpecialStageCollectedRings
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	bl SpStage_PlayRingSoundeffect
	ldr r0, _0802BA84 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802BA88 @ =sub_802C224
	b _0802BBCA
	.align 2, 0
_0802BA74: .4byte gUnknown_0848728C
_0802BA78: .4byte gUnknown_084872C4
_0802BA7C: .4byte 0x06010000
_0802BA80: .4byte gSpecialStageCollectedRings
_0802BA84: .4byte gCurTask
_0802BA88: .4byte sub_802C224
_0802BA8C:
	adds r2, r5, #0
	adds r2, #0x67
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0802BACC @ =gUnknown_03005730
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802BAA6
	movs r0, #0x96
	bl m4aSongNumStart
_0802BAA6:
	adds r0, r5, #0
	bl sub_802C2DC
	adds r0, r5, #0
	bl sub_802C04C
	ldr r0, _0802BAD0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802BAD4 @ =sub_802C488
	str r0, [r1, #8]
	adds r1, r7, #0
	adds r1, #0x3d
	movs r0, #0xa
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x6d
	movs r0, #0xb
	strb r0, [r1]
	b _0802BBCC
	.align 2, 0
_0802BACC: .4byte gUnknown_03005730
_0802BAD0: .4byte gCurTask
_0802BAD4: .4byte sub_802C488
_0802BAD8:
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #4
	orrs r0, r1
	mov r1, r8
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x68
	ldrh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x54
	strh r1, [r0]
	b _0802BBCC
_0802BAFE:
	ldr r0, _0802BB20 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	ldr r0, _0802BB24 @ =gUnknown_03005730
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802BB14
	movs r0, #0x97
	bl m4aSongNumStart
_0802BB14:
	ldr r1, _0802BB28 @ =gUnknown_0300507C
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b _0802BBCC
	.align 2, 0
_0802BB20: .4byte gCurTask
_0802BB24: .4byte gUnknown_03005730
_0802BB28: .4byte gUnknown_0300507C
_0802BB2C:
	adds r3, r5, #0
	adds r3, #0x60
	movs r2, #0
	movs r0, #0xc
	strh r0, [r3]
	ldr r1, _0802BBD8 @ =gUnknown_0848728C
	ldrh r0, [r1, #0x30]
	adds r7, r5, #0
	adds r7, #0x62
	strh r0, [r7]
	ldrh r0, [r3]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r4, r5, #0
	adds r4, #0x64
	strh r0, [r4]
	movs r0, #0x67
	adds r0, r0, r5
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #1
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x52
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
    @ inline of sub_802D6FC?
	ldr r1, _0802BBDC @ =gUnknown_084872C4
	ldrh r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0802BBE0 @ =0x06010000
	adds r0, r0, r1
	str r0, [r6, #4]
	strh r2, [r6, #8]
	ldrh r0, [r7]
	strh r0, [r6, #0xa]
	ldrh r1, [r4]
	adds r0, r6, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r1, r6, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	strh r2, [r6, #0x1c]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #8
	orrs r0, r1
	mov r1, r8
	strb r0, [r1]
	ldr r0, _0802BBE4 @ =gUnknown_03005730
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802BBC4
	movs r0, #0x90
	bl m4aSongNumStart
_0802BBC4:
	ldr r0, _0802BBE8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802BBEC @ =sub_802D3E4
_0802BBCA:
	str r0, [r1, #8]
_0802BBCC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802BBD8: .4byte gUnknown_0848728C
_0802BBDC: .4byte gUnknown_084872C4
_0802BBE0: .4byte 0x06010000
_0802BBE4: .4byte gUnknown_03005730
_0802BBE8: .4byte gCurTask
_0802BBEC: .4byte sub_802D3E4

	thumb_func_start sub_802BBF0
sub_802BBF0: @ 0x0802BBF0
	push {r4, r5, lr}
	ldr r0, _0802BC54 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r1, r2
	ldr r0, _0802BC58 @ =0x03000052
	adds r5, r1, r0
	ldr r3, _0802BC5C @ =0x03000058
	adds r0, r1, r3
	ldrh r0, [r0]
	ldrh r3, [r5]
	adds r0, r0, r3
	strh r0, [r5]
	ldr r0, _0802BC60 @ =0x03000054
	adds r4, r1, r0
	ldr r3, _0802BC64 @ =0x0300005A
	adds r0, r1, r3
	ldrh r0, [r0]
	ldrh r3, [r4]
	adds r0, r0, r3
	strh r0, [r4]
	ldr r0, _0802BC68 @ =0x03000056
	adds r3, r1, r0
	adds r0, #6
	adds r1, r1, r0
	ldrh r0, [r1]
	ldrh r1, [r3]
	adds r0, r0, r1
	strh r0, [r3]
	movs r0, #0
	ldrsh r1, [r5, r0]
	ldr r0, [r2, #0x3c]
	adds r0, r0, r1
	str r0, [r2, #0x3c]
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [r2, #0x40]
	adds r0, r0, r1
	str r0, [r2, #0x40]
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, [r2, #0x44]
	adds r0, r0, r1
	str r0, [r2, #0x44]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802BC54: .4byte gCurTask
_0802BC58: .4byte 0x03000052
_0802BC5C: .4byte 0x03000058
_0802BC60: .4byte 0x03000054
_0802BC64: .4byte 0x0300005A
_0802BC68: .4byte 0x03000056

	thumb_func_start sub_802BC6C
sub_802BC6C: @ 0x0802BC6C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r1, _0802BCC0 @ =gUnknown_03005690
	ldr r0, _0802BCC4 @ =gCurTask
	ldr r3, [r0]
	ldrh r2, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r2
	mov r8, r0
	ldr r0, _0802BCC8 @ =0x0300000C
	adds r0, r0, r2
	mov sl, r0
	mov sb, r8
	ldr r0, [r1, #8]
	mov r4, sb
	ldr r1, [r4, #0x44]
	subs r0, r0, r1
	asrs r1, r0, #8
	ldr r4, _0802BCCC @ =0x03000050
	adds r0, r2, r4
	strh r1, [r0]
	ldr r0, _0802BCD0 @ =0x03000060
	adds r2, r2, r0
	ldrh r0, [r2]
	cmp r0, #3
	beq _0802BCD4
	lsls r1, r1, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x12
	cmp r1, r0
	ble _0802BCD4
	adds r0, r3, #0
	bl TaskDestroy
_0802BCBA:
	movs r0, #0
	b _0802BDE8
	.align 2, 0
_0802BCC0: .4byte gUnknown_03005690
_0802BCC4: .4byte gCurTask
_0802BCC8: .4byte 0x0300000C
_0802BCCC: .4byte 0x03000050
_0802BCD0: .4byte 0x03000060
_0802BCD4:
	mov r1, r8
	adds r1, #0x50
	str r1, [sp]
	movs r2, #0
	ldrsh r1, [r1, r2]
	cmp r1, #0xc0
	bgt _0802BCBA
	ldr r0, _0802BDF8 @ =0xFFFFFD00
	cmp r1, r0
	blt _0802BCBA
	ldr r3, [sp]
	movs r4, #0
	ldrsh r0, [r3, r4]
	bl sub_802D58C
	mov r1, r8
	adds r1, #0x66
	str r1, [sp, #4]
	strb r0, [r1]
	ldr r2, [sp]
	movs r3, #0
	ldrsh r0, [r2, r3]
	movs r4, #0xc0
	lsls r4, r4, #2
	adds r7, r0, r4
	asrs r7, r7, #3
	cmp r7, #0
	bne _0802BD0E
	movs r7, #1
_0802BD0E:
	adds r0, r7, #0
	muls r0, r7, r0
	muls r0, r7, r0
	muls r7, r0, r7
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r0, r7, #0
	bl __divsi3
	adds r7, r0, #0
	adds r4, r7, #0
	cmp r7, #0
	bge _0802BD2C
	ldr r0, _0802BDFC @ =0x000001FF
	adds r4, r7, r0
_0802BD2C:
	asrs r4, r4, #9
	adds r4, #0x38
	mov r1, r8
	ldr r0, [r1, #0x3c]
	muls r0, r4, r0
	movs r5, #0xa0
	lsls r5, r5, #2
	adds r1, r5, #0
	bl __divsi3
	asrs r0, r0, #8
	mov r6, r8
	adds r6, #0x48
	strh r0, [r6]
	mov r2, r8
	ldr r0, [r2, #0x40]
	muls r0, r4, r0
	adds r1, r5, #0
	bl __divsi3
	asrs r0, r0, #8
	mov r1, r8
	adds r1, #0x4a
	strh r0, [r1]
	ldrh r0, [r6]
	adds r0, #0x78
	mov r3, r8
	adds r3, #0x4c
	strh r0, [r3]
	ldrh r1, [r1]
	movs r0, #0x50
	subs r0, r0, r1
	mov r2, r8
	adds r2, #0x4e
	strh r0, [r2]
	ldr r4, _0802BE00 @ =gUnknown_03005780
	ldrh r0, [r4, #4]
	ldrh r1, [r3]
	adds r0, r0, r1
	strh r0, [r3]
	ldrh r0, [r2]
	ldrh r1, [r4, #6]
	subs r0, r0, r1
	strh r0, [r2]
	ldrh r1, [r3]
	mov r3, sl
	strh r1, [r3, #0x16]
	ldrh r0, [r2]
	strh r0, [r3, #0x18]
	mov r4, sb
	strh r1, [r4, #6]
	ldrh r0, [r3, #0x18]
	strh r0, [r4, #8]
	adds r0, r7, #0
	cmp r7, #0
	bge _0802BDA0
	ldr r1, _0802BE04 @ =0x000003FF
	adds r0, r7, r1
_0802BDA0:
	asrs r0, r0, #0xa
	adds r0, #0x40
	mov r2, sb
	strh r0, [r2, #2]
	mov r3, sb
	strh r0, [r3, #4]
	ldr r4, [sp, #4]
	ldrb r2, [r4]
	ldr r0, _0802BE08 @ =0x00002020
	orrs r2, r0
	mov r0, sl
	str r2, [r0, #0x10]
	movs r4, #2
	ldrsh r1, [r3, r4]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _0802BDCC
	movs r0, #0x40
	orrs r2, r0
	mov r0, sl
	str r2, [r0, #0x10]
_0802BDCC:
	ldr r2, [sp]
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r1, #0
	subs r0, #0xc0
	cmp r0, #0
	bge _0802BDDC
	adds r0, #0x1f
_0802BDDC:
	asrs r0, r0, #5
	rsbs r0, r0, #0
	lsls r0, r0, #6
	mov r4, sl
	strh r0, [r4, #0x1a]
	movs r0, #1
_0802BDE8:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802BDF8: .4byte 0xFFFFFD00
_0802BDFC: .4byte 0x000001FF
_0802BE00: .4byte gUnknown_03005780
_0802BE04: .4byte 0x000003FF
_0802BE08: .4byte 0x00002020

	thumb_func_start sub_802BE0C
sub_802BE0C: @ 0x0802BE0C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	mov sb, r0
	adds r6, r1, #0
	ldr r0, [r0, #0xc]
	mov r8, r0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r8, r0
	beq _0802BEC6
	mov r1, sp
	ldrh r0, [r6, #2]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r6, #4]
	strh r0, [r1]
	add r4, sp, #0xc
	mov r1, sb
	ldr r0, [r1, #0x10]
	movs r1, #0x1f
	ands r0, r1
	strh r0, [r4]
	ldr r1, _0802BED4 @ =gUnknown_030057E0
	ldrh r0, [r4]
	adds r0, r0, r1
	movs r7, #0
	ldrsb r7, [r0, r7]
	cmp r7, #0
	bne _0802BE7C
	ldrh r0, [r4]
	adds r0, r0, r1
	movs r1, #0xff
	strb r1, [r0]
	ldrh r4, [r4]
	lsls r4, r4, #5
	ldr r0, _0802BED8 @ =gOamBuffer+0x6
	adds r4, r4, r0
	movs r5, #0x80
	lsls r5, r5, #9
	movs r0, #2
	ldrsh r1, [r6, r0]
	adds r0, r5, #0
	bl Div
	strh r0, [r4]
	strh r7, [r4, #8]
	strh r7, [r4, #0x10]
	movs r0, #4
	ldrsh r1, [r6, r0]
	adds r0, r5, #0
	bl Div
	strh r0, [r4, #0x18]
_0802BE7C:
	movs r1, #6
	ldrsh r2, [r6, r1]
	movs r4, #2
	ldrsh r3, [r6, r4]
	mov r1, r8
	movs r4, #8
	ldrsh r0, [r1, r4]
	ldrh r1, [r1, #4]
	lsrs r1, r1, #1
	subs r0, r0, r1
	muls r0, r3, r0
	lsls r1, r1, #8
	adds r0, r0, r1
	asrs r0, r0, #8
	subs r2, r2, r0
	str r2, [sp, #4]
	movs r0, #8
	ldrsh r2, [r6, r0]
	movs r1, #4
	ldrsh r3, [r6, r1]
	mov r4, r8
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	ldrh r1, [r4, #6]
	lsrs r1, r1, #1
	subs r0, r0, r1
	muls r0, r3, r0
	lsls r1, r1, #8
	adds r0, r0, r1
	asrs r0, r0, #8
	subs r2, r2, r0
	str r2, [sp, #8]
	ldr r0, [sp, #4]
	mov r4, sb
	strh r0, [r4, #0x16]
	ldr r0, [sp, #8]
	strh r0, [r4, #0x18]
_0802BEC6:
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802BED4: .4byte gUnknown_030057E0
_0802BED8: .4byte gOamBuffer+0x6

	thumb_func_start Task_802BEDC
Task_802BEDC: @ 0x0802BEDC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r7, _0802C008 @ =gCurTask
	ldr r0, [r7]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r8, r0
	add r8, r4
	ldr r1, _0802C00C @ =0x03000050
	adds r0, r4, r1
	movs r2, #0
	mov sl, r2
	movs r6, #0
	strh r6, [r0]
	ldr r3, _0802C010 @ =0x03000052
	adds r0, r4, r3
	strh r6, [r0]
	adds r1, #4
	adds r0, r4, r1
	strh r6, [r0]
	ldr r2, _0802C014 @ =0x03000056
	adds r0, r4, r2
	strh r6, [r0]
	adds r3, #6
	adds r0, r4, r3
	strh r6, [r0]
	adds r1, #6
	adds r0, r4, r1
	strh r6, [r0]
	adds r2, #6
	adds r0, r4, r2
	strh r6, [r0]
	ldr r1, _0802C018 @ =gUnknown_0848728C
	adds r3, #8
	adds r2, r4, r3
	ldrh r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r3, #2
	adds r3, r3, r4
	mov sb, r3
	strh r0, [r3]
	ldrh r0, [r2]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _0802C01C @ =0x03000064
	adds r3, r4, r1
	strh r0, [r3]
	adds r1, #3
	adds r0, r4, r1
	mov r1, sl
	strb r1, [r0]
	ldr r0, _0802C020 @ =0x0300000C
	adds r5, r4, r0
    @ inline of sub_802D6FC?
	ldr r1, _0802C024 @ =gUnknown_084872C4
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0802C028 @ =0x06010000
	adds r0, r0, r1
	str r0, [r5, #4]
	strh r6, [r5, #8]
	mov r2, sb
	ldrh r0, [r2]
	strh r0, [r5, #0xa]
	ldrh r1, [r3]
	ldr r3, _0802C02C @ =0x0300002C
	adds r0, r4, r3
	strb r1, [r0]
	ldr r0, _0802C030 @ =0x0300002D
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	strh r6, [r5, #0x1c]
	ldr r2, _0802C034 @ =0x0300002E
	adds r1, r4, r2
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _0802C038 @ =gUnknown_03005690
	ldr r0, [r0, #8]
	asrs r0, r0, #8
	mov r3, r8
	ldr r1, [r3, #0x44]
	asrs r1, r1, #8
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_802D58C
	ldr r1, _0802C03C @ =0x03000066
	adds r2, r4, r1
	strb r0, [r2]
	mov r3, r8
	ldr r0, [r3, #0x3c]
	asrs r0, r0, #8
	adds r0, #0x78
	strh r0, [r5, #0x16]
	ldr r1, [r3, #0x40]
	asrs r1, r1, #8
	movs r0, #0x50
	subs r0, r0, r1
	strh r0, [r5, #0x18]
	movs r0, #0xf8
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	ldr r0, _0802C040 @ =0x03000031
	adds r4, r4, r0
	mov r1, sl
	strb r1, [r4]
	ldrb r0, [r2]
	ldr r1, _0802C044 @ =0x00002020
	orrs r0, r1
	str r0, [r5, #0x10]
	strh r6, [r3]
	movs r0, #0x40
	strh r0, [r3, #2]
	strh r0, [r3, #4]
	ldrh r0, [r5, #0x16]
	strh r0, [r3, #6]
	ldrh r0, [r5, #0x18]
	strh r0, [r3, #8]
	ldr r1, [r7]
	ldr r0, _0802C048 @ =sub_802D37C
	str r0, [r1, #8]
	adds r0, r5, #0
	bl sub_802B5DC
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	mov r1, r8
	bl sub_802BE0C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802C008: .4byte gCurTask
_0802C00C: .4byte 0x03000050
_0802C010: .4byte 0x03000052
_0802C014: .4byte 0x03000056
_0802C018: .4byte gUnknown_0848728C
_0802C01C: .4byte 0x03000064
_0802C020: .4byte 0x0300000C
_0802C024: .4byte gUnknown_084872C4
_0802C028: .4byte 0x06010000
_0802C02C: .4byte 0x0300002C
_0802C030: .4byte 0x0300002D
_0802C034: .4byte 0x0300002E
_0802C038: .4byte gUnknown_03005690
_0802C03C: .4byte 0x03000066
_0802C040: .4byte 0x03000031
_0802C044: .4byte 0x00002020
_0802C048: .4byte sub_802D37C

	thumb_func_start sub_802C04C
sub_802C04C: @ 0x0802C04C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r5, _0802C0B8 @ =gUnknown_084872E0
	movs r6, #0xb
_0802C056:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0802C0BC @ =Task_802BEDC
	movs r1, #0x74
	ldr r2, _0802C0C0 @ =0x00001510
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	adds r0, #0x60
	adds r1, r2, r0
	movs r0, #3
	strh r0, [r1]
	movs r0, #0
	ldrsh r1, [r5, r0]
	lsls r1, r1, #6
	ldr r0, [r4, #0x3c]
	adds r0, r0, r1
	str r0, [r3, #0x3c]
	movs r0, #2
	ldrsh r1, [r5, r0]
	lsls r1, r1, #6
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r3, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r3, #0x44]
	adds r0, r4, #0
	adds r0, #0x68
	ldrh r1, [r0]
	ldr r3, _0802C0C4 @ =0x03000068
	adds r0, r2, r3
	strh r1, [r0]
	ldr r0, _0802C0C8 @ =0x03000070
	adds r2, r2, r0
	movs r0, #0xf
	strh r0, [r2]
	adds r5, #4
	subs r6, #1
	cmp r6, #0
	bge _0802C056
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802C0B8: .4byte gUnknown_084872E0
_0802C0BC: .4byte Task_802BEDC
_0802C0C0: .4byte 0x00001510
_0802C0C4: .4byte 0x03000068
_0802C0C8: .4byte 0x03000070

	thumb_func_start sub_802C0CC
sub_802C0CC: @ 0x0802C0CC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0802C188 @ =gUnknown_03005690
	mov sb, r0
	ldr r0, _0802C18C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	ldr r1, _0802C190 @ =0x0300000C
	adds r1, r1, r4
	mov r8, r1
	adds r7, r6, #0
	ldr r2, _0802C194 @ =0x0300004C
	adds r0, r4, r2
	mov r3, sb
	ldrh r1, [r3, #0xc]
	ldrh r0, [r0]
	subs r1, r1, r0
	ldr r5, _0802C198 @ =0x0300004E
	adds r2, r4, r5
	ldrh r0, [r3, #0xe]
	ldrh r2, [r2]
	subs r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sa2__sub_8004418
	ldr r1, _0802C19C @ =0x03000052
	adds r2, r4, r1
	ldrh r1, [r2]
	adds r1, #0x15
	strh r1, [r2]
	movs r5, #0
	ldrsh r3, [r2, r5]
	mov ip, r3
	ldr r3, _0802C1A0 @ =gSineTable
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r5, #0x80
	lsls r5, r5, #1
	adds r1, r0, r5
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r5, #0
	ldrsh r1, [r1, r5]
	mov r5, ip
	muls r5, r1, r5
	adds r1, r5, #0
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r5, #0
	ldrsh r3, [r0, r5]
	asrs r1, r1, #0xe
	ldr r0, [r7, #0x3c]
	adds r0, r0, r1
	str r0, [r7, #0x3c]
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r1, r0, #0
	muls r1, r3, r1
	asrs r1, r1, #0xe
	ldr r0, [r7, #0x40]
	subs r0, r0, r1
	str r0, [r7, #0x40]
	mov r2, sb
	ldr r1, [r2, #8]
	ldr r0, [r7, #0x44]
	subs r1, r1, r0
	asrs r1, r1, #8
	ldr r3, _0802C1A4 @ =0x0300005C
	adds r0, r4, r3
	strh r1, [r0]
	ldr r5, _0802C1A8 @ =0x03000056
	adds r4, r4, r5
	ldrh r0, [r4]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _0802C1AC
	movs r0, #0xe0
	lsls r0, r0, #4
	cmp r1, r0
	ble _0802C1B6
	adds r2, r0, #0
	b _0802C1B6
	.align 2, 0
_0802C188: .4byte gUnknown_03005690
_0802C18C: .4byte gCurTask
_0802C190: .4byte 0x0300000C
_0802C194: .4byte 0x0300004C
_0802C198: .4byte 0x0300004E
_0802C19C: .4byte 0x03000052
_0802C1A0: .4byte gSineTable
_0802C1A4: .4byte 0x0300005C
_0802C1A8: .4byte 0x03000056
_0802C1AC:
	ldr r0, _0802C1F4 @ =0xFFFFF200
	cmp r1, r0
	bge _0802C1B6
	movs r2, #0xf2
	lsls r2, r2, #8
_0802C1B6:
	adds r0, r6, #0
	adds r0, #0x56
	strh r2, [r0]
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, [r6, #0x44]
	adds r1, r1, r0
	str r1, [r6, #0x44]
	mov r3, sb
	ldr r2, [r3, #8]
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r2, r5
	cmp r0, r1
	bge _0802C1D6
	str r2, [r6, #0x44]
_0802C1D6:
	bl sub_802BC6C
	cmp r0, #0
	beq _0802C216
	adds r4, r6, #0
	adds r4, #0x70
	ldrh r1, [r4]
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _0802C1F8
	subs r0, r1, #1
	strh r0, [r4]
	b _0802C1FC
	.align 2, 0
_0802C1F4: .4byte 0xFFFFF200
_0802C1F8:
	bl sub_802B884
_0802C1FC:
	mov r0, r8
	bl sub_802B5DC
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, r8
	adds r1, r7, #0
	bl sub_802BE0C
	mov r0, r8
	bl DisplaySprite
_0802C216:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_802C224
sub_802C224: @ 0x0802C224
	push {r4, r5, r6, r7, lr}
	ldr r7, _0802C24C @ =gUnknown_03005690
	ldr r0, _0802C250 @ =gCurTask
	ldr r4, [r0]
	ldrh r2, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	adds r0, #0xc
	adds r5, r2, r0
	adds r6, r3, #0
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0802C258
	ldr r0, _0802C254 @ =sub_802D450
	str r0, [r4, #8]
	b _0802C2D2
	.align 2, 0
_0802C24C: .4byte gUnknown_03005690
_0802C250: .4byte gCurTask
_0802C254: .4byte sub_802D450
_0802C258:
	ldr r1, [r7, #8]
	ldr r0, [r6, #0x44]
	subs r1, r1, r0
	asrs r1, r1, #8
	ldr r4, _0802C284 @ =0x0300005C
	adds r0, r2, r4
	strh r1, [r0]
	subs r4, #6
	adds r0, r2, r4
	ldrh r0, [r0]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _0802C288
	movs r0, #0xe0
	lsls r0, r0, #4
	cmp r1, r0
	ble _0802C292
	adds r2, r0, #0
	b _0802C292
	.align 2, 0
_0802C284: .4byte 0x0300005C
_0802C288:
	ldr r0, _0802C2D8 @ =0xFFFFF200
	cmp r1, r0
	bge _0802C292
	movs r2, #0xf2
	lsls r2, r2, #8
_0802C292:
	adds r0, r3, #0
	adds r0, #0x56
	strh r2, [r0]
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, [r3, #0x44]
	adds r1, r1, r0
	str r1, [r3, #0x44]
	ldr r2, [r7, #8]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r2, r4
	cmp r0, r1
	bge _0802C2B0
	str r2, [r3, #0x44]
_0802C2B0:
	bl sub_802BC6C
	cmp r0, #0
	beq _0802C2D2
	adds r0, r5, #0
	bl sub_802B5DC
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_802BE0C
	adds r0, r5, #0
	bl DisplaySprite
_0802C2D2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802C2D8: .4byte 0xFFFFF200

	thumb_func_start sub_802C2DC
sub_802C2DC: @ 0x0802C2DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	movs r0, #0
	mov sb, r0
	ldr r1, _0802C434 @ =gUnknown_08487310
	mov sl, r1
	movs r2, #7
	str r2, [sp, #4]
_0802C2F6:
	mov r3, sb
	str r3, [sp]
	ldr r0, _0802C438 @ =sub_802D3E4
	movs r1, #0x74
	ldr r2, _0802C43C @ =0x00001510
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r6, r0
	ldr r1, _0802C440 @ =0x03000060
	adds r7, r6, r1
	movs r0, #0xd
	strh r0, [r7]
	mov r3, sl
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	mov r3, r8
	ldr r0, [r3, #0x3c]
	adds r0, r0, r1
	str r0, [r2, #0x3c]
	mov r0, sl
	movs r3, #2
	ldrsh r1, [r0, r3]
	lsls r1, r1, #8
	mov r3, r8
	ldr r0, [r3, #0x40]
	adds r0, r0, r1
	str r0, [r2, #0x40]
	ldr r0, [r3, #0x44]
	str r0, [r2, #0x44]
	ldr r1, _0802C444 @ =0x03000050
	adds r0, r6, r1
	mov r2, sb
	strh r2, [r0]
	mov r3, sl
	ldrh r0, [r3]
	lsls r0, r0, #3
	ldr r2, _0802C448 @ =0x03000052
	adds r1, r6, r2
	strh r0, [r1]
	ldrh r0, [r3, #2]
	lsls r0, r0, #3
	ldr r3, _0802C44C @ =0x03000054
	adds r2, r6, r3
	strh r0, [r2]
	adds r3, #2
	adds r0, r6, r3
	mov r3, sb
	strh r3, [r0]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _0802C36A
	adds r0, #0x1f
_0802C36A:
	asrs r0, r0, #5
	rsbs r0, r0, #0
	ldr r3, _0802C450 @ =0x03000058
	adds r1, r6, r3
	strh r0, [r1]
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _0802C37E
	adds r0, #0x1f
_0802C37E:
	asrs r0, r0, #5
	rsbs r0, r0, #0
	ldr r2, _0802C454 @ =0x0300005A
	adds r1, r6, r2
	strh r0, [r1]
	ldr r3, _0802C458 @ =0x0300005C
	adds r0, r6, r3
	mov r1, sb
	strh r1, [r0]
	ldrh r0, [r7]
	lsls r0, r0, #2
	ldr r2, _0802C45C @ =gUnknown_0848728C
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r3, #6
	adds r4, r6, r3
	strh r0, [r4]
	ldrh r0, [r7]
	lsls r0, r0, #2
	ldr r1, _0802C460 @ =gUnknown_0848728C+0x2
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r2, _0802C464 @ =0x03000064
	adds r3, r6, r2
	strh r0, [r3]
	mov r0, r8
	adds r0, #0x66
	ldrb r0, [r0]
	ldr r1, _0802C468 @ =0x03000066
	adds r5, r6, r1
	strb r0, [r5]
	adds r2, #3
	adds r1, r6, r2
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0802C46C @ =0x0300000C
	adds r2, r6, r0
    @ inline of sub_802D6FC?
	ldr r1, _0802C470 @ =gUnknown_084872C4
	ldrh r0, [r7]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0802C474 @ =0x06010000
	adds r0, r0, r1
	str r0, [r2, #4]
	mov r0, sb
	strh r0, [r2, #8]
	ldrh r0, [r4]
	strh r0, [r2, #0xa]
	ldrh r1, [r3]
	ldr r3, _0802C478 @ =0x0300002C
	adds r0, r6, r3
	strb r1, [r0]
	ldr r0, _0802C47C @ =0x0300002D
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
	mov r1, sb
	strh r1, [r2, #0x1c]
	adds r3, #2
	adds r1, r6, r3
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0802C480 @ =0x03000031
	adds r0, r6, r1
	mov r3, sb
	strb r3, [r0]
	ldrb r0, [r5]
	ldr r1, _0802C484 @ =0x00002020
	orrs r0, r1
	str r0, [r2, #0x10]
	movs r0, #0xf8
	lsls r0, r0, #3
	strh r0, [r2, #0x1a]
	movs r0, #4
	add sl, r0
	ldr r1, [sp, #4]
	subs r1, #1
	str r1, [sp, #4]
	cmp r1, #0
	blt _0802C424
	b _0802C2F6
_0802C424:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802C434: .4byte gUnknown_08487310
_0802C438: .4byte sub_802D3E4
_0802C43C: .4byte 0x00001510
_0802C440: .4byte 0x03000060
_0802C444: .4byte 0x03000050
_0802C448: .4byte 0x03000052
_0802C44C: .4byte 0x03000054
_0802C450: .4byte 0x03000058
_0802C454: .4byte 0x0300005A
_0802C458: .4byte 0x0300005C
_0802C45C: .4byte gUnknown_0848728C
_0802C460: .4byte gUnknown_0848728C+0x2
_0802C464: .4byte 0x03000064
_0802C468: .4byte 0x03000066
_0802C46C: .4byte 0x0300000C
_0802C470: .4byte gUnknown_084872C4
_0802C474: .4byte 0x06010000
_0802C478: .4byte 0x0300002C
_0802C47C: .4byte 0x0300002D
_0802C480: .4byte 0x03000031
_0802C484: .4byte 0x00002020

	thumb_func_start sub_802C488
sub_802C488: @ 0x0802C488
	push {r4, r5, lr}
	ldr r1, _0802C4D0 @ =gCurTask
	ldr r0, [r1]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	adds r0, #0xc
	adds r0, r0, r2
	mov ip, r0
	ldr r0, _0802C4D4 @ =0x0300006D
	adds r3, r2, r0
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	adds r5, r1, #0
	cmp r0, #0
	bne _0802C552
	movs r0, #0x3c
	strb r0, [r3]
	ldr r0, _0802C4D8 @ =gUnknown_03005690
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #4
	bne _0802C4E4
	ldr r0, _0802C4DC @ =0x03000062
	adds r1, r2, r0
	movs r0, #0xcb
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, _0802C4E0 @ =0x03000064
	adds r1, r2, r0
	movs r0, #1
	b _0802C4F4
	.align 2, 0
_0802C4D0: .4byte gCurTask
_0802C4D4: .4byte 0x0300006D
_0802C4D8: .4byte gUnknown_03005690
_0802C4DC: .4byte 0x03000062
_0802C4E0: .4byte 0x03000064
_0802C4E4:
	ldr r0, _0802C558 @ =0x03000062
	adds r1, r2, r0
	movs r0, #0xcb
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, _0802C55C @ =0x03000064
	adds r1, r2, r0
	movs r0, #2
_0802C4F4:
	strh r0, [r1]
    @ inline of sub_802D6FC?
	ldr r1, _0802C560 @ =gUnknown_084872C4
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0802C564 @ =0x06010000
	adds r0, r0, r1
	mov r1, ip
	str r0, [r1, #4]
	movs r2, #0
	strh r2, [r1, #8]
	adds r0, r4, #0
	adds r0, #0x62
	ldrh r0, [r0]
	strh r0, [r1, #0xa]
	adds r0, r4, #0
	adds r0, #0x64
	ldrh r1, [r0]
	mov r0, ip
	adds r0, #0x20
	strb r1, [r0]
	mov r1, ip
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	mov r0, ip
	strh r2, [r0, #0x1c]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	movs r0, #0x78
	mov r1, ip
	strh r0, [r1, #0x16]
	movs r0, #0x28
	strh r0, [r1, #0x18]
	movs r0, #0x40
	strh r0, [r1, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r1, #0x10]
	ldr r1, [r5]
	ldr r0, _0802C568 @ =sub_802D4C4
	str r0, [r1, #8]
_0802C552:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802C558: .4byte 0x03000062
_0802C55C: .4byte 0x03000064
_0802C560: .4byte gUnknown_084872C4
_0802C564: .4byte 0x06010000
_0802C568: .4byte sub_802D4C4

	thumb_func_start sub_802C56C
sub_802C56C: @ 0x0802C56C
	push {r4, r5, r6, lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _0802C5A4 @ =sub_802D4C4
	movs r2, #0xa8
	lsls r2, r2, #5
	movs r6, #0
	str r6, [sp]
	movs r1, #0x74
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	adds r0, #0xc
	adds r0, r0, r2
	mov ip, r0
	cmp r4, #1
	beq _0802C5E8
	cmp r4, #1
	bgt _0802C5A8
	cmp r4, #0
	beq _0802C5AE
	b _0802C644
	.align 2, 0
_0802C5A4: .4byte sub_802D4C4
_0802C5A8:
	cmp r4, #2
	beq _0802C620
	b _0802C644
_0802C5AE:
	movs r0, #0x28
	mov r1, ip
	strh r0, [r1, #0x18]
	ldr r0, _0802C5D4 @ =0x03000062
	adds r1, r2, r0
	ldr r0, _0802C5D8 @ =0x0000032D
	strh r0, [r1]
	ldr r1, _0802C5DC @ =0x03000064
	adds r0, r2, r1
	strh r4, [r0]
	ldr r0, _0802C5E0 @ =0x03000060
	adds r1, r2, r0
	movs r0, #5
	strh r0, [r1]
	ldr r0, _0802C5E4 @ =0x0300006D
	adds r1, r2, r0
	movs r0, #0xb4
	b _0802C642
	.align 2, 0
_0802C5D4: .4byte 0x03000062
_0802C5D8: .4byte 0x0000032D
_0802C5DC: .4byte 0x03000064
_0802C5E0: .4byte 0x03000060
_0802C5E4: .4byte 0x0300006D
_0802C5E8:
	movs r0, #0x28
	mov r1, ip
	strh r0, [r1, #0x18]
	ldr r0, _0802C60C @ =0x03000062
	adds r1, r2, r0
	ldr r0, _0802C610 @ =0x0000032D
	strh r0, [r1]
	ldr r1, _0802C614 @ =0x03000064
	adds r0, r2, r1
	strh r4, [r0]
	ldr r0, _0802C618 @ =0x03000060
	adds r1, r2, r0
	movs r0, #5
	strh r0, [r1]
	ldr r0, _0802C61C @ =0x0300006D
	adds r1, r2, r0
	movs r0, #0xb4
	b _0802C642
	.align 2, 0
_0802C60C: .4byte 0x03000062
_0802C610: .4byte 0x0000032D
_0802C614: .4byte 0x03000064
_0802C618: .4byte 0x03000060
_0802C61C: .4byte 0x0300006D
_0802C620:
	movs r0, #0x88
	mov r1, ip
	strh r0, [r1, #0x18]
	ldr r0, _0802C6B0 @ =0x03000062
	adds r1, r2, r0
	movs r0, #0xcb
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r1, _0802C6B4 @ =0x03000064
	adds r0, r2, r1
	strh r6, [r0]
	subs r1, #4
	adds r0, r2, r1
	strh r4, [r0]
	ldr r0, _0802C6B8 @ =0x0300006D
	adds r1, r2, r0
	movs r0, #0x78
_0802C642:
	strb r0, [r1]
_0802C644: @ inline of sub_802D6FC?
	ldr r1, _0802C6BC @ =gUnknown_084872C4
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0802C6C0 @ =0x06010000
	adds r0, r0, r1
	mov r1, ip
	str r0, [r1, #4]
	movs r3, #0
	movs r2, #0
	strh r2, [r1, #8]
	adds r0, r5, #0
	adds r0, #0x62
	ldrh r0, [r0]
	strh r0, [r1, #0xa]
	adds r0, r5, #0
	adds r0, #0x64
	ldrh r1, [r0]
	mov r0, ip
	adds r0, #0x20
	strb r1, [r0]
	mov r1, ip
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	mov r0, ip
	strh r2, [r0, #0x1c]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	movs r0, #0x78
	mov r1, ip
	strh r0, [r1, #0x16]
	movs r0, #0x40
	strh r0, [r1, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r1, #0x10]
	mov r0, ip
	adds r0, #0x25
	strb r3, [r0]
	strh r2, [r1, #0x14]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1, #0x28]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802C6B0: .4byte 0x03000062
_0802C6B4: .4byte 0x03000064
_0802C6B8: .4byte 0x0300006D
_0802C6BC: .4byte gUnknown_084872C4
_0802C6C0: .4byte 0x06010000

	thumb_func_start sub_802C6C4
sub_802C6C4: @ 0x0802C6C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _0802C83C @ =gCurTask
	ldr r0, [r1]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r7
	mov sb, r0
	ldr r2, _0802C840 @ =0x03000050
	adds r0, r7, r2
	movs r3, #0
	mov sl, r3
	mov r4, sl
	strh r4, [r0]
	ldr r1, _0802C844 @ =gUnknown_08487330
	ldr r0, _0802C848 @ =0x0300006A
	adds r2, r7, r0
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r4, _0802C84C @ =0x03000052
	adds r3, r7, r4
	strh r0, [r3]
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _0802C850 @ =0x03000054
	adds r2, r7, r1
	strh r0, [r2]
	ldr r0, _0802C854 @ =0x03000056
	adds r4, r7, r0
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r4]
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bge _0802C720
	adds r0, #0x1f
_0802C720:
	asrs r0, r0, #5
	rsbs r0, r0, #0
	ldr r3, _0802C858 @ =0x03000058
	adds r1, r7, r3
	strh r0, [r1]
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _0802C734
	adds r0, #0x1f
_0802C734:
	asrs r0, r0, #5
	rsbs r0, r0, #0
	ldr r2, _0802C85C @ =0x0300005A
	adds r1, r7, r2
	strh r0, [r1]
	movs r3, #0
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge _0802C748
	adds r0, #0x3f
_0802C748:
	asrs r0, r0, #6
	rsbs r0, r0, #0
	ldr r4, _0802C860 @ =0x0300005C
	adds r1, r7, r4
	strh r0, [r1]
	ldr r1, _0802C864 @ =gUnknown_0848728C
	ldrh r0, [r1]
	ldr r2, _0802C868 @ =0x03000062
	adds r6, r7, r2
	strh r0, [r6]
	ldrh r0, [r1, #2]
	ldr r3, _0802C86C @ =0x03000064
	adds r5, r7, r3
	strh r0, [r5]
	adds r4, #0xb
	adds r0, r7, r4
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0802C870 @ =gUnknown_03005690
	ldr r0, [r0, #8]
	asrs r0, r0, #8
	mov r2, sb
	ldr r1, [r2, #0x44]
	asrs r1, r1, #8
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_802D58C
	ldr r3, _0802C874 @ =0x03000066
	adds r3, r3, r7
	mov r8, r3
	strb r0, [r3]
	ldr r0, _0802C878 @ =0x0300000C
	adds r4, r7, r0
    @ inline of sub_802D6FC
	ldr r1, _0802C87C @ =gUnknown_084872C4
	ldr r2, _0802C880 @ =0x03000060
	adds r0, r7, r2
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r3, _0802C884 @ =0x06010000
	adds r0, r0, r3
	str r0, [r4, #4]
	mov r0, sl
	strh r0, [r4, #8]
	ldrh r0, [r6]
	strh r0, [r4, #0xa]
	ldrh r1, [r5]
	subs r2, #0x34
	adds r0, r7, r2
	strb r1, [r0]
	ldr r3, _0802C888 @ =0x0300002D
	adds r1, r7, r3
	movs r0, #0xff
	strb r0, [r1]
	mov r0, sl
	strh r0, [r4, #0x1c]
	ldr r1, _0802C88C @ =0x0300002E
	adds r3, r7, r1
	movs r2, #0x10
	strb r2, [r3]
	mov r1, sb
	ldr r0, [r1, #0x3c]
	asrs r0, r0, #8
	adds r0, #0x78
	strh r0, [r4, #0x16]
	ldr r1, [r1, #0x40]
	asrs r1, r1, #8
	movs r0, #0x50
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x1a]
	mov r0, sl
	strh r0, [r4, #0x1c]
	strb r2, [r3]
	ldr r1, _0802C890 @ =0x03000031
	adds r0, r7, r1
	movs r2, #0
	strb r2, [r0]
	mov r3, r8
	ldrb r0, [r3]
	ldr r1, _0802C894 @ =0x00002020
	orrs r0, r1
	str r0, [r4, #0x10]
	mov r1, sl
	mov r0, sb
	strh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	mov r2, sb
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	ldrh r0, [r4, #0x16]
	strh r0, [r2, #6]
	ldrh r0, [r4, #0x18]
	strh r0, [r2, #8]
	ldr r3, _0802C83C @ =gCurTask
	ldr r1, [r3]
	ldr r0, _0802C898 @ =sub_802C89C
	str r0, [r1, #8]
	adds r0, r4, #0
	bl sub_802B5DC
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	mov r1, sb
	bl sub_802BE0C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802C83C: .4byte gCurTask
_0802C840: .4byte 0x03000050
_0802C844: .4byte gUnknown_08487330
_0802C848: .4byte 0x0300006A
_0802C84C: .4byte 0x03000052
_0802C850: .4byte 0x03000054
_0802C854: .4byte 0x03000056
_0802C858: .4byte 0x03000058
_0802C85C: .4byte 0x0300005A
_0802C860: .4byte 0x0300005C
_0802C864: .4byte gUnknown_0848728C
_0802C868: .4byte 0x03000062
_0802C86C: .4byte 0x03000064
_0802C870: .4byte gUnknown_03005690
_0802C874: .4byte 0x03000066
_0802C878: .4byte 0x0300000C
_0802C87C: .4byte gUnknown_084872C4
_0802C880: .4byte 0x03000060
_0802C884: .4byte 0x06010000
_0802C888: .4byte 0x0300002D
_0802C88C: .4byte 0x0300002E
_0802C890: .4byte 0x03000031
_0802C894: .4byte 0x00002020
_0802C898: .4byte sub_802C89C

	thumb_func_start sub_802C89C
sub_802C89C: @ 0x0802C89C
	push {r4, r5, r6, lr}
	ldr r0, _0802C91C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	adds r0, #0xc
	adds r5, r4, r0
	ldr r1, _0802C920 @ =0x03000052
	adds r0, r4, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bge _0802C8BC
	adds r0, #0x1f
_0802C8BC:
	asrs r0, r0, #5
	rsbs r0, r0, #0
	ldr r2, _0802C924 @ =0x03000058
	adds r1, r4, r2
	strh r0, [r1]
	ldr r1, _0802C928 @ =0x03000054
	adds r0, r4, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bge _0802C8D4
	adds r0, #0x1f
_0802C8D4:
	asrs r0, r0, #5
	rsbs r0, r0, #0
	ldr r2, _0802C92C @ =0x0300005A
	adds r1, r4, r2
	strh r0, [r1]
	bl sub_802BBF0
	bl sub_802BC6C
	cmp r0, #0
	beq _0802C916
	adds r0, r5, #0
	bl sub_802B5DC
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_802BE0C
	ldr r0, _0802C930 @ =0x0300006C
	adds r1, r4, r0
	ldrb r2, [r1]
	adds r0, r2, #1
	strb r0, [r1]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0802C916
	adds r0, r5, #0
	bl DisplaySprite
_0802C916:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802C91C: .4byte gCurTask
_0802C920: .4byte 0x03000052
_0802C924: .4byte 0x03000058
_0802C928: .4byte 0x03000054
_0802C92C: .4byte 0x0300005A
_0802C930: .4byte 0x0300006C

@ Used for scaling and displaying objects in Special Stages
	thumb_func_start sub_802C934
sub_802C934: @ 0x0802C934
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r2, _0802CA4C @ =gUnknown_087BF8DC
	ldr r1, _0802CA50 @ =gUnknown_08487134
	ldr r0, _0802CA54 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	mov ip, r0
	movs r4, #0
	movs r2, #0
	ldr r0, _0802CA58 @ =0x0000FFFF
	mov sb, r0
	ldr r1, _0802CA5C @ =gUnknown_03005840
	mov r8, r1
_0802C964:
	lsls r3, r2, #0xc
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	mov r5, ip
	adds r1, r0, r5
	ldr r0, [r1, #4]
	movs r5, #0xc0
	lsls r5, r5, #2
	adds r0, r0, r5
	lsls r6, r2, #1
	adds r2, #1
	mov sl, r2
	cmp r3, r0
	bls _0802C9AA
	ldrh r0, [r1, #8]
	cmp r0, sb
	beq _0802C9AA
	adds r2, r3, #0
	ldr r3, _0802CA58 @ =0x0000FFFF
_0802C98C:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	mov r7, ip
	adds r1, r0, r7
	ldr r0, [r1, #4]
	adds r0, r0, r5
	cmp r2, r0
	bls _0802C9AA
	ldrh r0, [r1, #8]
	cmp r0, r3
	bne _0802C98C
_0802C9AA:
	mov r1, r8
	adds r0, r6, r1
	strh r4, [r0]
	mov r3, sl
	lsls r0, r3, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xf
	bls _0802C964
	lsrs r4, r4, #3
	adds r4, #4
	ldr r0, _0802CA60 @ =0x0000FFFC
	ands r4, r0
	adds r0, r4, #0
	bl EwramMalloc
	adds r6, r0, #0
	movs r5, #0
	str r5, [sp, #4]
	ldr r1, _0802CA64 @ =0x040000D4
	add r7, sp, #4
	str r7, [r1]
	str r6, [r1, #4]
	lsrs r4, r4, #2
	movs r0, #0x85
	lsls r0, r0, #0x18
	orrs r4, r0
	str r4, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0802CA68 @ =Task_802CA90
	movs r2, #0x98
	lsls r2, r2, #5
	ldr r1, _0802CA6C @ =sub_802D578
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	str r6, [r0, #0x3c]
	ldr r0, _0802CA70 @ =0x0300000C
	adds r1, r2, r0
	movs r4, #0
	strh r5, [r1, #0x16]
	strh r5, [r1, #0x18]
	ldr r0, _0802CA74 @ =0x06010800
	str r0, [r1, #4]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r1, #0x1a]
	strh r5, [r1, #8]
	ldr r0, _0802CA78 @ =0x0000031B @ SA1_ANIM_RING
	strh r0, [r1, #0xa]
	ldr r3, _0802CA7C @ =0x0300002C
	adds r0, r2, r3
	strb r4, [r0]
	strh r5, [r1, #0x14]
	strh r5, [r1, #0x1c]
	ldr r5, _0802CA80 @ =0x0300002D
	adds r3, r2, r5
	movs r0, #0xff
	strb r0, [r3]
	ldr r7, _0802CA84 @ =0x0300002E
	adds r3, r2, r7
	movs r0, #0x10
	strb r0, [r3]
	ldr r0, _0802CA88 @ =0x03000031
	adds r2, r2, r0
	strb r4, [r2]
	ldr r0, _0802CA8C @ =0x00002030
	str r0, [r1, #0x10]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802CA4C: .4byte gUnknown_087BF8DC
_0802CA50: .4byte gUnknown_08487134
_0802CA54: .4byte gCurrentLevel
_0802CA58: .4byte 0x0000FFFF
_0802CA5C: .4byte gUnknown_03005840
_0802CA60: .4byte 0x0000FFFC
_0802CA64: .4byte 0x040000D4
_0802CA68: .4byte Task_802CA90
_0802CA6C: .4byte sub_802D578
_0802CA70: .4byte 0x0300000C
_0802CA74: .4byte 0x06010800
_0802CA78: .4byte 0x0000031B
_0802CA7C: .4byte 0x0300002C
_0802CA80: .4byte 0x0300002D
_0802CA84: .4byte 0x0300002E
_0802CA88: .4byte 0x03000031
_0802CA8C: .4byte 0x00002030

	thumb_func_start Task_802CA90
Task_802CA90: @ 0x0802CA90
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	ldr r0, _0802CB88 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	str r0, [sp, #0x14]
	ldr r2, _0802CB8C @ =gUnknown_087BF8DC
	ldr r1, _0802CB90 @ =gUnknown_08487134
	ldr r0, _0802CB94 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [sp, #8]
	ldr r1, _0802CB98 @ =gUnknown_03005690
	str r1, [sp, #0xc]
	ldr r2, _0802CB9C @ =gUnknown_030055FC
	str r2, [sp, #0x10]
	ldr r4, _0802CBA0 @ =0x0300000C
	adds r4, r4, r3
	mov r8, r4
	ldr r5, [sp, #0x14]
	orrs r5, r3
	str r5, [sp, #0x14]
	movs r6, #0
	str r6, [sp, #0x20]
	mov r2, sp
	adds r2, #6
	ldr r7, _0802CBA4 @ =0x00007FFF
	adds r0, r7, #0
	strh r0, [r2]
	ldr r0, _0802CBA8 @ =0x040000D4
	str r2, [r0]
	ldr r1, _0802CBAC @ =gUnknown_03005670
	str r1, [r0, #4]
	ldr r1, _0802CBB0 @ =0x81000010
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	strh r6, [r2]
	str r2, [r0]
	ldr r1, _0802CBB4 @ =gUnknown_030057E0
	str r1, [r0, #4]
	ldr r1, _0802CBB8 @ =0x81000008
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r2, [r5, #0x3c]
	str r2, [sp, #0x1c]
	mov r0, r8
	bl UpdateSpriteAnimation
	ldr r3, [r4, #0xc]
	str r3, [sp, #0x18]
	ldr r4, [sp, #0xc]
	ldr r1, [r4, #8]
	asrs r1, r1, #8
	movs r5, #0xc0
	lsls r5, r5, #2
	adds r3, r1, r5
	asrs r0, r3, #0xc
	lsls r0, r0, #0x18
	ldr r2, _0802CBBC @ =gUnknown_03005840
	lsrs r0, r0, #0x17
	adds r0, r0, r2
	ldrh r0, [r0]
	mov sb, r0
	subs r1, #0xc0
	str r1, [sp, #0x34]
	str r3, [sp, #0x38]
	lsls r0, r0, #1
	add r0, sb
	lsls r0, r0, #2
	ldr r6, [sp, #8]
	adds r0, r0, r6
	ldr r0, [r0, #4]
	cmp r0, r3
	blt _0802CB3E
	b _0802D12A
_0802CB3E:
	mov r7, sp
	adds r7, #4
	str r7, [sp, #0x3c]
_0802CB44:
	mov r1, sb
	lsls r0, r1, #1
	add r0, sb
	lsls r0, r0, #2
	ldr r2, [sp, #8]
	adds r3, r0, r2
	ldrh r1, [r3, #8]
	ldr r0, _0802CBC0 @ =0x0000FFFF
	cmp r1, r0
	bne _0802CB5A
	b _0802D12A
_0802CB5A:
	cmp r1, #0
	bne _0802CB80
	ldr r4, [r3, #4]
	ldr r5, [sp, #0x34]
	cmp r4, r5
	blt _0802CB80
	mov r6, sb
	lsrs r2, r6, #3
	ldr r7, [sp, #0x1c]
	adds r0, r7, r2
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r6
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	str r2, [sp, #0x40]
	cmp r1, #0
	beq _0802CBC4
_0802CB80:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	b _0802CE5C
	.align 2, 0
_0802CB88: .4byte gCurTask
_0802CB8C: .4byte gUnknown_087BF8DC
_0802CB90: .4byte gUnknown_08487134
_0802CB94: .4byte gCurrentLevel
_0802CB98: .4byte gUnknown_03005690
_0802CB9C: .4byte gUnknown_030055FC
_0802CBA0: .4byte 0x0300000C
_0802CBA4: .4byte 0x00007FFF
_0802CBA8: .4byte 0x040000D4
_0802CBAC: .4byte gUnknown_03005670
_0802CBB0: .4byte 0x81000010
_0802CBB4: .4byte gUnknown_030057E0
_0802CBB8: .4byte 0x81000008
_0802CBBC: .4byte gUnknown_03005840
_0802CBC0: .4byte 0x0000FFFF
_0802CBC4:
	movs r1, #0
	ldrsh r0, [r3, r1]
	lsls r0, r0, #8
	str r0, [sp, #0x24]
	movs r2, #2
	ldrsh r0, [r3, r2]
	lsls r0, r0, #8
	str r0, [sp, #0x28]
	lsls r3, r4, #8
	str r3, [sp, #0x2c]
	ldr r5, [sp, #0xc]
	ldr r0, [r5, #8]
	asrs r7, r0, #8
	subs r0, r7, r4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	str r6, [sp, #0x30]
	asrs r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r6, r0, r1
	asrs r6, r6, #3
	cmp r6, #0
	bne _0802CBF6
	movs r6, #1
_0802CBF6:
	adds r0, r6, #0
	muls r0, r6, r0
	muls r0, r6, r0
	muls r6, r0, r6
	adds r0, r6, #0
	movs r1, #0xcc
	lsls r1, r1, #1
	bl __divsi3
	adds r6, r0, #0
	adds r4, r6, #0
	cmp r6, #0
	bge _0802CC14
	ldr r2, _0802CE64 @ =0x000001FF
	adds r4, r6, r2
_0802CC14:
	asrs r4, r4, #9
	adds r4, #0x38
	ldr r3, [sp, #0x24]
	adds r0, r3, #0
	muls r0, r4, r0
	movs r5, #0xa0
	lsls r5, r5, #2
	adds r1, r5, #0
	bl __divsi3
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r1, [sp, #0x28]
	adds r0, r1, #0
	muls r0, r4, r0
	adds r1, r5, #0
	bl __divsi3
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r0, [sp, #0xc]
	adds r0, #0x29
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802CC50
	b _0802CEA0
_0802CC50:
	ldr r0, [sp, #0xc]
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #2
	bne _0802CC5C
	b _0802CEA0
_0802CC5C:
	ldr r2, [sp, #0x2c]
	asrs r1, r2, #8
	adds r0, r1, #0
	subs r0, #0x20
	cmp r7, r0
	bge _0802CC6A
	b _0802CEA0
_0802CC6A:
	cmp r7, r1
	ble _0802CC70
	b _0802CEA0
_0802CC70:
	mov r3, sl
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	adds r0, #0x2c
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r2, r1, r3
	ldr r4, [sp, #0xc]
	ldr r1, [r4]
	asrs r1, r1, #8
	ldr r0, [sp, #0x10]
	adds r0, #0x2c
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r1, r1, r4
	cmp r2, r1
	bgt _0802CCAC
	mov r0, r8
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0802CCC0
	cmp r2, r1
	bge _0802CCAC
	b _0802CEA0
_0802CCAC:
	ldr r0, [sp, #0x10]
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	bge _0802CCC0
	b _0802CEA0
_0802CCC0:
	mov r5, ip
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r1, r8
	adds r1, #0x2d
	movs r3, #0
	ldrsb r3, [r1, r3]
	adds r2, r0, r3
	ldr r7, [sp, #0xc]
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	ldr r1, [sp, #0x10]
	adds r1, #0x2d
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r1, r0, r4
	cmp r2, r1
	bgt _0802CCFC
	mov r0, r8
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0802CD10
	cmp r2, r1
	bge _0802CCFC
	b _0802CEA0
_0802CCFC:
	ldr r0, [sp, #0x10]
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	bge _0802CD10
	b _0802CEA0
_0802CD10:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0802CE68 @ =sub_802D3E4
	movs r1, #0x74
	movs r2, #0xa8
	lsls r2, r2, #5
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r2, r1
	ldr r3, _0802CE6C @ =0x03000060
	adds r4, r2, r3
	movs r6, #1
	strh r6, [r4]
	ldr r7, [sp, #0x24]
	str r7, [r5, #0x3c]
	ldr r0, [sp, #0x28]
	str r0, [r5, #0x40]
	ldr r1, [sp, #0x2c]
	str r1, [r5, #0x44]
	subs r3, #0x10
	adds r0, r2, r3
	movs r6, #0
	strh r6, [r0]
	ldr r7, _0802CE70 @ =0x03000052
	adds r0, r2, r7
	strh r6, [r0]
	ldr r1, _0802CE74 @ =0x03000054
	adds r0, r2, r1
	strh r6, [r0]
	adds r3, #6
	adds r0, r2, r3
	strh r6, [r0]
	ldr r6, _0802CE78 @ =0x03000058
	adds r0, r2, r6
	movs r7, #0
	strh r7, [r0]
	adds r1, #6
	adds r0, r2, r1
	movs r3, #0
	strh r3, [r0]
	adds r6, #4
	adds r0, r2, r6
	strh r3, [r0]
	ldr r3, _0802CE7C @ =gUnknown_0848728C
	ldrh r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrh r1, [r0]
	ldr r7, _0802CE80 @ =0x03000062
	adds r0, r2, r7
	strh r1, [r0]
	ldrh r0, [r4]
	lsls r0, r0, #2
	adds r3, #2
	adds r0, r0, r3
	ldrh r0, [r0]
	ldr r1, _0802CE84 @ =0x03000064
	adds r2, r2, r1
	strh r0, [r2]
	ldr r2, [sp, #0x30]
	lsls r0, r2, #0x10
	asrs r3, r0, #0x10
	movs r2, #0
	ldr r1, _0802CE88 @ =gUnknown_03005670
	movs r4, #0
	ldrsh r0, [r1, r4]
	mov r4, sb
	adds r4, #1
	ldr r6, _0802CE8C @ =0x00007FFF
	cmp r0, r6
	beq _0802CDCC
_0802CDA6:
	ldr r1, _0802CE88 @ =gUnknown_03005670
	lsls r0, r2, #1
	adds r0, r0, r1
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r0, r3
	beq _0802CDCE
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xf
	bhi _0802CDCE
	lsls r0, r2, #1
	adds r1, r0, r1
	movs r6, #0
	ldrsh r0, [r1, r6]
	ldr r7, _0802CE8C @ =0x00007FFF
	cmp r0, r7
	bne _0802CDA6
_0802CDCC:
	strh r3, [r1]
_0802CDCE:
	adds r0, r2, #1
	adds r3, r5, #0
	adds r3, #0x66
	strb r0, [r3]
	adds r0, r5, #0
	adds r0, #0x67
	movs r1, #1
	strb r1, [r0]
	adds r2, r5, #0
	adds r2, #0xc
    @ inline of sub_802D6FC
	ldr r1, _0802CE90 @ =gUnknown_084872C4
	subs r0, #7
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r6, _0802CE94 @ =0x06010000
	adds r0, r0, r6
	str r0, [r2, #4]
	movs r7, #0
	strh r7, [r2, #8]
	adds r0, r5, #0
	adds r0, #0x62
	ldrh r0, [r0]
	strh r0, [r2, #0xa]
	adds r0, r5, #0
	adds r0, #0x64
	ldrh r1, [r0]
	subs r0, #0x38
	strb r1, [r0]
	adds r1, r5, #0
	adds r1, #0x2d
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0
	strh r0, [r2, #0x1c]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	movs r6, #0
	strh r6, [r2, #0x1c]
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x31
	strb r7, [r0]
	ldrb r0, [r3]
	ldr r1, _0802CE98 @ =0x00002020
	orrs r0, r1
	str r0, [r2, #0x10]
	movs r0, #0xf8
	lsls r0, r0, #3
	strh r0, [r2, #0x1a]
	ldr r1, _0802CE9C @ =gSpecialStageCollectedRings
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	bl SpStage_PlayRingSoundeffect
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x40]
	adds r2, r0, r1
	movs r0, #7
	mov r3, sb
	ands r3, r0
	movs r0, #1
	lsls r0, r3
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	lsls r0, r4, #0x10
_0802CE5C:
	lsrs r0, r0, #0x10
	mov sb, r0
	b _0802D114
	.align 2, 0
_0802CE64: .4byte 0x000001FF
_0802CE68: .4byte sub_802D3E4
_0802CE6C: .4byte 0x03000060
_0802CE70: .4byte 0x03000052
_0802CE74: .4byte 0x03000054
_0802CE78: .4byte 0x03000058
_0802CE7C: .4byte gUnknown_0848728C
_0802CE80: .4byte 0x03000062
_0802CE84: .4byte 0x03000064
_0802CE88: .4byte gUnknown_03005670
_0802CE8C: .4byte 0x00007FFF
_0802CE90: .4byte gUnknown_084872C4
_0802CE94: .4byte 0x06010000
_0802CE98: .4byte 0x00002020
_0802CE9C: .4byte gSpecialStageCollectedRings
_0802CEA0:
	ldr r4, [sp, #0x30]
	lsls r0, r4, #0x10
	asrs r3, r0, #0x10
	movs r2, #0
	ldr r0, _0802CECC @ =gUnknown_03005670
	movs r5, #0
	ldrsh r1, [r0, r5]
	adds r4, r0, #0
	mov r7, sl
	lsls r5, r7, #0x10
	mov r0, ip
	lsls r0, r0, #0x10
	mov ip, r0
	movs r7, #0x23
	add r7, r8
	mov sl, r7
	ldr r0, _0802CED0 @ =0x00007FFF
	cmp r1, r0
	bne _0802CED4
	strh r3, [r4]
	b _0802CEFA
	.align 2, 0
_0802CECC: .4byte gUnknown_03005670
_0802CED0: .4byte 0x00007FFF
_0802CED4:
	lsls r0, r2, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r3
	beq _0802CEFA
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xf
	bhi _0802CEFA
	lsls r0, r2, #1
	adds r1, r0, r4
	movs r7, #0
	ldrsh r0, [r1, r7]
	ldr r7, _0802D008 @ =0x00007FFF
	cmp r0, r7
	bne _0802CED4
	strh r3, [r1]
_0802CEFA:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	asrs r0, r5, #0x10
	ldr r1, _0802D00C @ =gUnknown_03005780
	ldrh r1, [r1, #4]
	adds r0, r0, r1
	adds r0, #0x78
	ldr r2, [sp, #0x14]
	strh r0, [r2, #6]
	ldr r4, _0802D00C @ =gUnknown_03005780
	ldrh r1, [r4, #6]
	movs r0, #0x50
	subs r0, r0, r1
	mov r5, ip
	asrs r1, r5, #0x10
	subs r0, r0, r1
	strh r0, [r2, #8]
	adds r0, r6, #0
	cmp r0, #0
	bge _0802CF28
	ldr r6, _0802D010 @ =0x000003FF
	adds r0, r0, r6
_0802CF28:
	asrs r0, r0, #0xa
	adds r0, #0x40
	ldr r7, [sp, #0x14]
	strh r0, [r7, #2]
	strh r0, [r7, #4]
	ldr r2, _0802D014 @ =0x00002020
	orrs r2, r3
	mov r0, r8
	str r2, [r0, #0x10]
	movs r3, #2
	ldrsh r1, [r7, r3]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _0802CF4E
	movs r0, #0x40
	orrs r2, r0
	mov r4, r8
	str r2, [r4, #0x10]
_0802CF4E:
	ldr r5, [sp, #0x14]
	movs r6, #2
	ldrsh r2, [r5, r6]
	ldr r7, [sp, #0x18]
	movs r0, #8
	ldrsh r1, [r7, r0]
	ldrh r0, [r7, #4]
	lsrs r0, r0, #1
	subs r1, r1, r0
	muls r1, r2, r1
	lsls r0, r0, #8
	adds r1, r1, r0
	asrs r1, r1, #8
	ldrh r0, [r5, #6]
	subs r3, r0, r1
	mov r1, r8
	strh r3, [r1, #0x16]
	movs r4, #4
	ldrsh r2, [r5, r4]
	movs r5, #0xa
	ldrsh r1, [r7, r5]
	ldrh r0, [r7, #6]
	lsrs r0, r0, #1
	subs r1, r1, r0
	muls r1, r2, r1
	lsls r0, r0, #8
	adds r1, r1, r0
	asrs r1, r1, #8
	ldr r6, [sp, #0x14]
	ldrh r0, [r6, #8]
	subs r2, r0, r1
	mov r7, r8
	strh r2, [r7, #0x18]
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _0802CF9E
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _0802D020
_0802CF9E:
	movs r3, #1
	rsbs r3, r3, #0
	adds r2, r3, #0
	movs r0, #0xff
	mov r4, sl
	strb r0, [r4]
	mov r5, r8
	ldr r0, [r5, #0x10]
	movs r1, #0x1f
	ands r0, r1
	ldr r6, [sp, #0x3c]
	strh r0, [r6]
	ldrh r0, [r6]
	ldr r7, _0802D018 @ =gUnknown_030057E0
	adds r0, r0, r7
	movs r6, #0
	ldrsb r6, [r0, r6]
	cmp r6, #0
	bne _0802CFFE
	ldr r0, [sp, #0x3c]
	ldrh r1, [r0]
	adds r1, r1, r7
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
	ldr r1, [sp, #0x3c]
	ldrh r0, [r1]
	lsls r0, r0, #5
	ldr r1, _0802D01C @ =gOamBuffer+0x6
	adds r5, r0, r1
	movs r4, #0x80
	lsls r4, r4, #9
	ldr r2, [sp, #0x14]
	movs r3, #2
	ldrsh r1, [r2, r3]
	adds r0, r4, #0
	bl Div
	strh r0, [r5]
	strh r6, [r5, #8]
	strh r6, [r5, #0x10]
	ldr r6, [sp, #0x14]
	movs r7, #4
	ldrsh r1, [r6, r7]
	adds r0, r4, #0
	bl Div
	strh r0, [r5, #0x18]
_0802CFFE:
	mov r0, r8
	bl DisplaySprite
	b _0802D100
	.align 2, 0
_0802D008: .4byte 0x00007FFF
_0802D00C: .4byte gUnknown_03005780
_0802D010: .4byte 0x000003FF
_0802D014: .4byte 0x00002020
_0802D018: .4byte gUnknown_030057E0
_0802D01C: .4byte gOamBuffer+0x6
_0802D020:
	mov r0, r8
	ldr r1, [r0, #0x10]
	adds r0, r1, #0
	movs r4, #0x40
	ands r0, r4
	cmp r0, #0
	beq _0802D042
	ldr r5, [sp, #0x18]
	ldrh r0, [r5, #4]
	lsrs r0, r0, #1
	subs r0, r3, r0
	mov r6, r8
	strh r0, [r6, #0x16]
	ldrh r0, [r5, #6]
	lsrs r0, r0, #1
	subs r0, r2, r0
	strh r0, [r6, #0x18]
_0802D042:
	movs r7, #0x1f
	ands r1, r7
	ldr r0, [sp, #0x3c]
	strh r1, [r0]
	ldrh r0, [r0]
	ldr r1, _0802D13C @ =gUnknown_030057E0
	adds r0, r0, r1
	movs r6, #0
	ldrsb r6, [r0, r6]
	cmp r6, #0
	bne _0802D08E
	ldr r2, [sp, #0x3c]
	ldrh r0, [r2]
	adds r0, r0, r1
	movs r1, #0xff
	strb r1, [r0]
	ldrh r0, [r2]
	lsls r0, r0, #5
	ldr r1, _0802D140 @ =gOamBuffer+0x6
	adds r5, r0, r1
	movs r4, #0x80
	lsls r4, r4, #9
	ldr r3, [sp, #0x14]
	movs r0, #2
	ldrsh r1, [r3, r0]
	adds r0, r4, #0
	bl Div
	strh r0, [r5]
	strh r6, [r5, #8]
	strh r6, [r5, #0x10]
	ldr r2, [sp, #0x14]
	movs r3, #4
	ldrsh r1, [r2, r3]
	adds r0, r4, #0
	bl Div
	strh r0, [r5, #0x18]
_0802D08E:
	mov r4, sl
	ldrb r0, [r4]
	lsls r0, r0, #3
	ldr r1, _0802D144 @ =gOamBuffer2
	adds r5, r0, r1
	mov r6, r8
	ldrh r0, [r6, #0x1a]
	movs r2, #0xf8
	lsls r2, r2, #3
	adds r1, r2, #0
	ands r0, r1
	lsrs r0, r0, #6
	bl OamMalloc
	adds r4, r0, #0
	ldr r0, _0802D148 @ =iwram_end
	ldr r0, [r0]
	cmp r0, r4
	beq _0802D12A
	ldr r1, _0802D14C @ =0x040000D4
	str r5, [r1]
	str r4, [r1, #4]
	ldr r0, _0802D150 @ =0x80000003
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r4]
	movs r3, #0xfd
	lsls r3, r3, #8
	adds r0, r3, #0
	ands r2, r0
	strh r2, [r4]
	ldrh r3, [r4, #2]
	movs r5, #0xc0
	lsls r5, r5, #8
	adds r0, r5, #0
	ands r3, r0
	strh r3, [r4, #2]
	ldrb r1, [r6, #0x18]
	ldr r0, [r6, #0x10]
	movs r6, #0x40
	ands r0, r6
	lsls r0, r0, #3
	orrs r1, r0
	orrs r1, r2
	strh r1, [r4]
	mov r0, r8
	ldrh r1, [r0, #0x16]
	ldr r2, _0802D154 @ =0x000001FF
	adds r0, r2, #0
	ands r1, r0
	mov r5, r8
	ldr r0, [r5, #0x10]
	ands r0, r7
	lsls r0, r0, #9
	orrs r1, r0
	orrs r1, r3
	strh r1, [r4, #2]
_0802D100:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r0, [sp, #0x20]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x20]
_0802D114:
	mov r6, sb
	lsls r0, r6, #1
	add r0, sb
	lsls r0, r0, #2
	ldr r7, [sp, #8]
	adds r0, r0, r7
	ldr r0, [r0, #4]
	ldr r1, [sp, #0x38]
	cmp r0, r1
	bge _0802D12A
	b _0802CB44
_0802D12A:
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802D13C: .4byte gUnknown_030057E0
_0802D140: .4byte gOamBuffer+0x6
_0802D144: .4byte gOamBuffer2
_0802D148: .4byte iwram_end
_0802D14C: .4byte 0x040000D4
_0802D150: .4byte 0x80000003
_0802D154: .4byte 0x000001FF

	thumb_func_start sub_802D158
sub_802D158: @ 0x0802D158
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _0802D188 @ =Task_SpStageInitializeSomethingAndStartMusic
	movs r5, #0x80
	lsls r5, r5, #5
	movs r4, #0
	str r4, [sp]
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0
	bl TaskCreate
	ldr r0, _0802D18C @ =sub_802D680
	str r4, [sp]
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0
	bl TaskCreate
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802D188: .4byte Task_SpStageInitializeSomethingAndStartMusic
_0802D18C: .4byte sub_802D680

	thumb_func_start sub_802D190
sub_802D190: @ 0x0802D190
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _0802D1D0 @ =gSelectedCharacter
	movs r4, #0
	ldrsb r4, [r0, r4]
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	bl sub_8029E0C
	adds r0, r4, #0
	bl sub_8029EA8
	ldr r0, _0802D1D4 @ =sub_802A560
	movs r2, #0x88
	lsls r2, r2, #5
	movs r1, #0
	str r1, [sp]
	movs r1, #1
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	strb r5, [r0]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802D1D0: .4byte gSelectedCharacter
_0802D1D4: .4byte sub_802A560

	thumb_func_start sub_802D1D8
sub_802D1D8: @ 0x0802D1D8
	push {r4, lr}
	sub sp, #4
	ldr r0, _0802D208 @ =sub_802B3E4
	movs r2, #0xa0
	lsls r2, r2, #5
	movs r4, #0
	str r4, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r1, #0
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strb r1, [r0, #6]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802D208: .4byte sub_802B3E4

	thumb_func_start Task_SpStageInitializeSomethingAndStartMusic
Task_SpStageInitializeSomethingAndStartMusic: @ 0x0802D20C
	push {lr}
	ldr r1, _0802D22C @ =gUnknown_030055E0
	movs r2, #0
	strb r2, [r1]
	movs r0, #0xf0
	strh r0, [r1, #2]
	strh r2, [r1, #4]
	ldr r0, _0802D230 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802D234 @ =Task_802D238
	str r0, [r1, #8]
	movs r0, #0x2a @ MUS_SPECIAL_STAGE
	bl m4aSongNumStart
	pop {r0}
	bx r0
	.align 2, 0
_0802D22C: .4byte gUnknown_030055E0
_0802D230: .4byte gCurTask
_0802D234: .4byte Task_802D238

	thumb_func_start Task_802D238
Task_802D238: @ 0x0802D238
	push {lr}
	ldr r2, _0802D264 @ =gUnknown_03005690
	ldr r1, _0802D268 @ =gUnknown_030055E0
	ldrh r0, [r1, #2]
	subs r0, #1
	strh r0, [r1, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _0802D260
	ldr r0, _0802D26C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802D270 @ =sub_80299B0
	str r0, [r1, #8]
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	bl sub_802D560
_0802D260:
	pop {r0}
	bx r0
	.align 2, 0
_0802D264: .4byte gUnknown_03005690
_0802D268: .4byte gUnknown_030055E0
_0802D26C: .4byte gCurTask
_0802D270: .4byte sub_80299B0

	thumb_func_start sub_802D274
sub_802D274: @ 0x0802D274
	ldr r1, _0802D298 @ =gUnknown_030055E0
	ldrh r0, [r1, #2]
	subs r0, #1
	strh r0, [r1, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _0802D294
	ldr r2, _0802D29C @ =gStageFlags
	ldrh r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0802D2A0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802D2A4 @ =sub_8029AC4
	str r0, [r1, #8]
_0802D294:
	bx lr
	.align 2, 0
_0802D298: .4byte gUnknown_030055E0
_0802D29C: .4byte gStageFlags
_0802D2A0: .4byte gCurTask
_0802D2A4: .4byte sub_8029AC4

	thumb_func_start sub_802D2A8
sub_802D2A8: @ 0x0802D2A8
	ldr r0, _0802D2B8 @ =gDispCnt
	ldrh r1, [r0]
	movs r3, #0xf0
	lsls r3, r3, #5
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0]
	bx lr
	.align 2, 0
_0802D2B8: .4byte gDispCnt

	thumb_func_start sub_802D2BC
sub_802D2BC: @ 0x0802D2BC
	push {lr}
	ldr r3, _0802D2E0 @ =gUnknown_03005780
	ldr r1, _0802D2E4 @ =gBldRegs
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	strb r2, [r3, #0x12]
	movs r0, #8
	strb r0, [r3, #0x13]
	bl sub_8029CDC
	ldr r0, _0802D2E8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802D2EC @ =sub_8029CDC
	str r0, [r1, #8]
	pop {r0}
	bx r0
	.align 2, 0
_0802D2E0: .4byte gUnknown_03005780
_0802D2E4: .4byte gBldRegs
_0802D2E8: .4byte gCurTask
_0802D2EC: .4byte sub_8029CDC

    .align 2 , 0
    thumb_func_start nullsub_802D2F0
nullsub_802D2F0:
    bx lr
	.align 2 , 0

	thumb_func_start sub_802D2F4
sub_802D2F4: @ 0x0802D2F4
	adds r3, r0, #0
	ldr r2, [r3]
	ldr r0, _0802D304 @ =0xFFFFD800
	cmp r2, r0
	bge _0802D308
	movs r1, #1
	b _0802D314
	.align 2, 0
_0802D304: .4byte 0xFFFFD800
_0802D308:
	movs r0, #0xa0
	lsls r0, r0, #6
	movs r1, #3
	cmp r2, r0
	bgt _0802D314
	movs r1, #2
_0802D314:
	ldr r2, [r3, #4]
	ldr r0, _0802D328 @ =0x00001DFF
	cmp r2, r0
	bgt _0802D336
	ldr r0, _0802D32C @ =0xFFFFE200
	cmp r2, r0
	ble _0802D330
	adds r0, r1, #3
	b _0802D332
	.align 2, 0
_0802D328: .4byte 0x00001DFF
_0802D32C: .4byte 0xFFFFE200
_0802D330:
	adds r0, r1, #6
_0802D332:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_0802D336:
	adds r0, r1, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_802D33C
sub_802D33C: @ 0x0802D33C
	push {r4, lr}
	ldr r1, _0802D36C @ =gUnknown_03005690
	ldr r4, _0802D370 @ =gUnknown_030055E0
	ldr r0, _0802D374 @ =gCurTask
	ldr r3, [r0]
	ldrh r2, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r1, [r1, #8]
	ldr r0, [r0, #0x44]
	cmp r1, r0
	blt _0802D364
	ldr r1, _0802D378 @ =0x03000060
	adds r0, r2, r1
	ldrh r0, [r0]
	strb r0, [r4]
	adds r0, r3, #0
	bl TaskDestroy
_0802D364:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802D36C: .4byte gUnknown_03005690
_0802D370: .4byte gUnknown_030055E0
_0802D374: .4byte gCurTask
_0802D378: .4byte 0x03000060

	thumb_func_start sub_802D37C
sub_802D37C: @ 0x0802D37C
	push {r4, r5, r6, lr}
	ldr r0, _0802D3B4 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r6, #0xc0
	lsls r6, r6, #0x12
	ldr r0, _0802D3B8 @ =0x0300000C
	adds r5, r4, r0
	orrs r6, r4
	bl sub_802D464
	bl sub_802BBF0
	bl sub_802BC6C
	cmp r0, #0
	beq _0802D3DE
	ldr r3, _0802D3BC @ =0x03000070
	adds r1, r4, r3
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0802D3C0
	subs r0, r2, #1
	strh r0, [r1]
	b _0802D3C4
	.align 2, 0
_0802D3B4: .4byte gCurTask
_0802D3B8: .4byte 0x0300000C
_0802D3BC: .4byte 0x03000070
_0802D3C0:
	bl sub_802B884
_0802D3C4:
	adds r0, r5, #0
	bl sub_802B5DC
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_802BE0C
	adds r0, r5, #0
	bl DisplaySprite
_0802D3DE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_802D3E4
sub_802D3E4: @ 0x0802D3E4
	push {r4, r5, r6, lr}
	ldr r5, _0802D418 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r4, r1, r0
	bl sub_802BBF0
	bl sub_802BC6C
	cmp r0, #0
	beq _0802D444
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0802D420
	ldr r1, [r5]
	ldr r0, _0802D41C @ =sub_802D450
	str r0, [r1, #8]
	b _0802D444
	.align 2, 0
_0802D418: .4byte gCurTask
_0802D41C: .4byte sub_802D450
_0802D420:
	adds r0, r4, #0
	bl sub_802B5DC
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _0802D436
	ldr r1, [r5]
	ldr r0, _0802D44C @ =sub_802D450
	str r0, [r1, #8]
_0802D436:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_802BE0C
	adds r0, r4, #0
	bl DisplaySprite
_0802D444:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802D44C: .4byte sub_802D450

	thumb_func_start sub_802D450
sub_802D450: @ 0x0802D450
	push {lr}
	ldr r0, _0802D460 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_0802D460: .4byte gCurTask

	thumb_func_start sub_802D464
sub_802D464: @ 0x0802D464
	push {r4, r5, lr}
	ldr r0, _0802D4A4 @ =gCurTask
	ldr r2, [r0]
	ldrh r4, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	ldrh r0, [r2]
	adds r0, r0, r1
	ldrh r1, [r0, #6]
	ldr r0, _0802D4A8 @ =0x03000060
	adds r3, r4, r0
	ldrh r0, [r3]
	cmp r0, #3
	bne _0802D4BE
	ldr r5, _0802D4AC @ =0x0300006D
	adds r0, r1, r5
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802D4BC
	ldr r0, _0802D4B0 @ =gUnknown_03005690
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #4
	bne _0802D4BE
	ldr r0, _0802D4B4 @ =sub_802C0CC
	str r0, [r2, #8]
	ldr r0, _0802D4B8 @ =0x03000052
	adds r1, r4, r0
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r1]
	b _0802D4BE
	.align 2, 0
_0802D4A4: .4byte gCurTask
_0802D4A8: .4byte 0x03000060
_0802D4AC: .4byte 0x0300006D
_0802D4B0: .4byte gUnknown_03005690
_0802D4B4: .4byte sub_802C0CC
_0802D4B8: .4byte 0x03000052
_0802D4BC:
	strh r0, [r3]
_0802D4BE:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_802D4C4
sub_802D4C4: @ 0x0802D4C4
	push {r4, r5, r6, lr}
	ldr r6, _0802D4F8 @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	ldr r0, _0802D4FC @ =0x0300000C
	adds r5, r4, r0
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0802D500 @ =0x0300006D
	adds r4, r4, r0
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802D4F2
	ldr r1, [r6]
	ldr r0, _0802D504 @ =sub_802D66C
	str r0, [r1, #8]
_0802D4F2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802D4F8: .4byte gCurTask
_0802D4FC: .4byte 0x0300000C
_0802D500: .4byte 0x0300006D
_0802D504: .4byte sub_802D66C

	thumb_func_start Task_802D508
Task_802D508: @ 0x0802D508
	push {r4, r5, lr}
	ldr r0, _0802D55C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r0, r1
	adds r1, #0xc
	adds r4, r0, r1
	adds r1, #0x62
	adds r2, r0, r1
	ldrh r3, [r2]
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #0xa0
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0802D556
	subs r0, r3, #1
	strh r0, [r2]
	bl sub_802BBF0
	bl sub_802BC6C
	cmp r0, #0
	beq _0802D556
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r4, #0x1a]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_802BE0C
	adds r0, r4, #0
	bl DisplaySprite
_0802D556:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802D55C: .4byte gCurTask

	thumb_func_start sub_802D560
sub_802D560: @ 0x0802D560
	movs r2, #0
	ldr r0, _0802D574 @ =gUnknown_030056F0
	movs r1, #0xf
_0802D566:
	strh r2, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	subs r1, #1
	cmp r1, #0
	bge _0802D566
	bx lr
	.align 2, 0
_0802D574: .4byte gUnknown_030056F0

	thumb_func_start sub_802D578
sub_802D578: @ 0x0802D578
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x3c]
	bl EwramFree
	pop {r0}
	bx r0

	thumb_func_start sub_802D58C
sub_802D58C: @ 0x0802D58C
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r3, #0
	ldr r0, _0802D5A8 @ =gUnknown_03005670
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r1, _0802D5AC @ =0x00007FFF
	adds r5, r0, #0
	cmp r2, r1
	bne _0802D5B0
	strh r4, [r5]
	b _0802D5DA
	.align 2, 0
_0802D5A8: .4byte gUnknown_03005670
_0802D5AC: .4byte 0x00007FFF
_0802D5B0:
	lsls r0, r3, #1
	adds r0, r0, r5
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	beq _0802D5DA
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xf
	bhi _0802D5DA
	lsls r0, r3, #1
	adds r2, r0, r5
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, _0802D5E8 @ =0x00007FFF
	cmp r1, r0
	bne _0802D5B0
	strh r4, [r2]
_0802D5DA:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r0, r3, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0802D5E8: .4byte 0x00007FFF

	thumb_func_start SpStage_PlayRingSoundeffect
SpStage_PlayRingSoundeffect: @ 0x0802D5EC
	push {r4, r5, lr}
	ldr r0, _0802D624 @ =gSpecialStageCollectedRings
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802D634
	ldr r4, _0802D628 @ =gMPlayInfo_SE2
	ldr r1, _0802D62C @ =se_ring_copy
	adds r0, r4, #0
	bl MPlayStart
	adds r0, r4, #0
	bl m4aMPlayImmInit
	ldr r5, _0802D630 @ =0x0000FFFF
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl m4aMPlayVolumeControl
	movs r2, #0x40
	rsbs r2, r2, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl m4aMPlayPanpotControl
	b _0802D65A
	.align 2, 0
_0802D624: .4byte gSpecialStageCollectedRings
_0802D628: .4byte gMPlayInfo_SE2
_0802D62C: .4byte se_ring_copy
_0802D630: .4byte 0x0000FFFF
_0802D634:
	ldr r4, _0802D660 @ =gMPlayInfo_SE1
	ldr r1, _0802D664 @ =se_ring_copy
	adds r0, r4, #0
	bl MPlayStart
	adds r0, r4, #0
	bl m4aMPlayImmInit
	ldr r5, _0802D668 @ =0x0000FFFF
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl m4aMPlayVolumeControl
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x40
	bl m4aMPlayPanpotControl
_0802D65A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802D660: .4byte gMPlayInfo_SE1
_0802D664: .4byte se_ring_copy
_0802D668: .4byte 0x0000FFFF

	thumb_func_start sub_802D66C
sub_802D66C: @ 0x0802D66C
	push {lr}
	ldr r0, _0802D67C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_0802D67C: .4byte gCurTask

	thumb_func_start sub_802D680
sub_802D680: @ 0x0802D680
	push {lr}
	ldr r0, _0802D6AC @ =gStageFlags
	ldrh r2, [r0]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	bne _0802D6A6
	ldr r0, _0802D6B0 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0802D6A6
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	bne _0802D6A6
	bl sub_801A38C
_0802D6A6:
	pop {r0}
	bx r0
	.align 2, 0
_0802D6AC: .4byte gStageFlags
_0802D6B0: .4byte gPressedKeys

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
