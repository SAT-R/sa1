.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start CreateVsRecord
CreateVsRecord: @ 0x080604EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	bl sub_80535FC
	ldr r1, _080606A8 @ =gDispCnt
	movs r2, #0x9a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0x30      @ MUS_PLAYER_DATA
	bl m4aSongNumStop
	movs r0, #0xa       @ MUS_VS_RECORD
	bl m4aSongNumStart
	ldr r1, _080606AC @ =gBgCntRegs
	movs r4, #0
	movs r0, #0xf8
	lsls r0, r0, #5
	strh r0, [r1]
	subs r0, #0xf9
	strh r0, [r1, #2]
	ldr r0, _080606B0 @ =gBgScrollRegs
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	bl sub_806012C
	ldr r0, _080606B4 @ =Task_VsRecordInit
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _080606B8 @ =TaskDestructor_VsRecord
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	mov r8, r3
	adds r7, r5, r3
	str r4, [r7, #0x40]
	str r4, [r7, #0x44]
	strh r4, [r7]
	movs r0, #1
	mov sb, r0
	movs r0, #1
	strh r0, [r7, #2]
	movs r6, #2
	strh r6, [r7, #4]
	strh r4, [r7, #6]
	adds r0, #0xff
	strh r0, [r7, #8]
	movs r0, #8
	strb r0, [r7, #0xa]
	ldr r0, _080606BC @ =Task_8060874
	ldr r2, _080606C0 @ =0x00002030
	str r4, [sp]
	movs r1, #0xf0
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	adds r1, r2, #0
	add r1, r8
	mov sl, r1
	ldr r3, _080606C4 @ =0x030000EC
	adds r1, r2, r3
	str r4, [r1]
	subs r3, #0x42
	adds r1, r2, r3
	strh r4, [r1]
	adds r3, #2
	adds r1, r2, r3
	strh r4, [r1]
	adds r3, #2
	adds r1, r2, r3
	strh r4, [r1]
	adds r3, #2
	adds r1, r2, r3
	strh r6, [r1]
	adds r3, #2
	adds r1, r2, r3
	strh r6, [r1]
	adds r3, #4
	adds r1, r2, r3
	mov r3, sb
	strb r3, [r1]
	ldr r3, _080606C8 @ =0x030000A8
	adds r1, r2, r3
	strh r4, [r1]
	adds r3, #0x40
	adds r1, r2, r3
	str r4, [r1]
	str r0, [r7, #0x3c]
	ldr r0, _080606CC @ =0x030000B8
	adds r3, r2, r0
	ldr r0, _080606D0 @ =0x06017080
	str r0, [r3, #4]
	movs r0, #0xda
	lsls r0, r0, #2     @ "LOSE" text (anim 872)
	strh r0, [r3, #0xa]
	ldr r1, _080606D4 @ =0x030000D8
	adds r0, r2, r1
	movs r1, #0
	strb r1, [r0]
	strh r4, [r3, #0x1a]
	strh r4, [r3, #8]
	strh r4, [r3, #0x14]
	strh r4, [r3, #0x1c]
	ldr r0, _080606D8 @ =0x030000D9
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _080606DC @ =0x030000DA
	adds r0, r2, r1
	movs r1, #0x10
	mov r8, r1
	mov r1, r8
	strb r1, [r0]
	ldr r0, _080606E0 @ =0x030000DD
	adds r2, r2, r0
	movs r1, #0
	strb r1, [r2]
	subs r6, #3
	str r6, [r3, #0x28]
	str r4, [r3, #0x10]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	ldr r2, _080606E4 @ =0x0300000C
	adds r3, r5, r2
	ldr r0, _080606E8 @ =0x06016400
	str r0, [r3, #4]
	ldr r0, _080606EC @ =0x000002E9
	strh r0, [r3, #0xa]
	ldr r1, _080606F0 @ =0x0300002C
	adds r0, r5, r1
	movs r2, #0
	strb r2, [r0]
	strh r4, [r3, #0x1a]
	strh r4, [r3, #8]
	strh r4, [r3, #0x14]
	strh r4, [r3, #0x1c]
	ldr r0, _080606F4 @ =0x0300002D
	adds r1, r5, r0
	adds r0, r6, #0
	strb r0, [r1]
	ldr r1, _080606F8 @ =0x0300002E
	adds r0, r5, r1
	mov r2, r8
	strb r2, [r0]
	ldr r0, _080606FC @ =0x03000031
	adds r5, r5, r0
	movs r1, #0
	strb r1, [r5]
	str r6, [r3, #0x28]
	str r4, [r3, #0x10]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	ldr r1, _08060700 @ =0x040000D4
	ldr r0, _08060704 @ =gLoadedSaveGame + 0x380
	str r0, [r1]
	mov r2, sl
	str r2, [r1, #4]
	ldr r0, _08060708 @ =0x80000050
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0
_0806064C:
	adds r1, r2, #1
	lsls r0, r1, #0x18
	lsrs r4, r0, #0x18
	adds r6, r1, #0
	cmp r4, #9
	bhi _08060682
	lsls r0, r2, #4
	mov r3, sl
	adds r5, r3, r0
_0806065E:
	lsls r0, r4, #4
	mov r1, sl
	adds r2, r1, r0
	movs r1, #0xc
	ldrsb r1, [r5, r1]
	movs r0, #0xc
	ldrsb r0, [r2, r0]
	cmp r1, r0
	bge _08060678
	adds r0, r5, #0
	adds r1, r2, #0
	bl SwapRecords
_08060678:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #9
	bls _0806065E
_08060682:
	lsls r0, r6, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #8
	bls _0806064C
	adds r0, r7, #0
	bl sub_805423C
	movs r0, #0xa       @ MUS_VS_RECORD
	bl m4aSongNumStart
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080606A8: .4byte gDispCnt
_080606AC: .4byte gBgCntRegs
_080606B0: .4byte gBgScrollRegs
_080606B4: .4byte Task_VsRecordInit
_080606B8: .4byte TaskDestructor_VsRecord
_080606BC: .4byte Task_8060874
_080606C0: .4byte 0x00002030
_080606C4: .4byte 0x030000EC
_080606C8: .4byte 0x030000A8
_080606CC: .4byte 0x030000B8
_080606D0: .4byte 0x06017080
_080606D4: .4byte 0x030000D8
_080606D8: .4byte 0x030000D9
_080606DC: .4byte 0x030000DA
_080606E0: .4byte 0x030000DD
_080606E4: .4byte 0x0300000C
_080606E8: .4byte 0x06016400
_080606EC: .4byte 0x000002E9
_080606F0: .4byte 0x0300002C
_080606F4: .4byte 0x0300002D
_080606F8: .4byte 0x0300002E
_080606FC: .4byte 0x03000031
_08060700: .4byte 0x040000D4
_08060704: .4byte gLoadedSaveGame + 0x380
_08060708: .4byte 0x80000050

	thumb_func_start Task_VsRecordInit
Task_VsRecordInit: @ 0x0806070C
	push {r4, r5, r6, lr}
	ldr r0, _08060744 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r0, [r4, #0x3c]
	ldrh r0, [r0, #6]
	adds r6, r0, r1
	ldr r5, [r4, #0x44]
	ldr r2, [r4, #0x40]
	adds r2, #1
	cmp r5, #0
	beq _08060750
	ldr r0, _08060748 @ =gInput
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08060750
	ldr r0, _0806074C @ =0xFFFFFF00
	adds r1, r5, r0
	lsrs r0, r1, #8
	movs r5, #0
	cmp r0, #0
	beq _08060774
	b _08060772
	.align 2, 0
_08060744: .4byte gCurTask
_08060748: .4byte gInput
_0806074C: .4byte 0xFFFFFF00
_08060750:
	ldr r3, _08060814 @ =0x000041FF
	cmp r5, r3
	bhi _08060774
	ldr r0, _08060818 @ =gInput
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08060774
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r5, r0
	lsrs r0, r1, #8
	movs r5, #0x84
	lsls r5, r5, #7
	cmp r0, r3
	bhi _08060774
_08060772:
	adds r5, r1, #0
_08060774:
	str r2, [r4, #0x40]
	adds r0, r6, #0
	adds r0, #0xe8
	str r2, [r0]
	str r5, [r4, #0x44]
	adds r0, #4
	str r5, [r0]
	adds r0, r4, #0
	bl sub_805423C
	movs r2, #6
	ldrsh r1, [r4, r2]
	movs r0, #0xc0
	lsls r0, r0, #5
	cmp r1, r0
	ble _0806082C
	ldr r0, _0806081C @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080607C4
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #1
	beq _080607C4
	movs r0, #0x6b
	bl m4aSongNumStart
	movs r0, #1
	strh r0, [r4, #4]
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	subs r0, r0, r1
	strh r0, [r4, #6]
	movs r0, #0x6b
	bl m4aSongNumStart
_080607C4:
	movs r0, #6
	ldrsh r1, [r4, r0]
	movs r0, #0xc0
	lsls r0, r0, #5
	cmp r1, r0
	ble _0806082C
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #1
	bne _0806082C
	movs r0, #0xa
	bl m4aSongNumStop
	ldr r0, [r4, #0x3c]
	bl TaskDestroy
	ldr r0, _08060820 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	ldr r4, _08060824 @ =sa2__gUnknown_03004D80
	movs r2, #0
	strb r2, [r4, #1]
	ldr r0, _08060828 @ =sa2__gUnknown_03002280
	strb r2, [r0, #4]
	strb r2, [r0, #5]
	movs r1, #0xff
	strb r1, [r0, #6]
	movs r3, #0x20
	strb r3, [r0, #7]
	strb r2, [r4, #2]
	strb r2, [r0, #8]
	strb r2, [r0, #9]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0xa]
	strb r3, [r0, #0xb]
	bl CreatePlayerDataMenu
	b _0806086A
	.align 2, 0
_08060814: .4byte 0x000041FF
_08060818: .4byte gInput
_0806081C: .4byte gPressedKeys
_08060820: .4byte gCurTask
_08060824: .4byte sa2__gUnknown_03004D80
_08060828: .4byte sa2__gUnknown_03002280
_0806082C:
	adds r4, #0xc
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	movs r0, #0xe9
	strh r0, [r4, #0x16]
	cmp r5, #0
	beq _0806084E
	movs r0, #0x46
	strh r0, [r4, #0x18]
	ldr r0, [r4, #0x10]
	ldr r1, _08060870 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl DisplaySprite
_0806084E:
	movs r0, #0x84
	lsls r0, r0, #7
	cmp r5, r0
	beq _0806086A
	movs r0, #0x8a
	strh r0, [r4, #0x18]
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl DisplaySprite
_0806086A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08060870: .4byte 0xFFFFF7FF

	thumb_func_start Task_8060874
Task_8060874: @ 0x08060874
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	ldr r7, _08060938 @ =gLoadedSaveGame
	ldr r0, _0806093C @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	str r0, [sp, #8]
	ldr r1, _08060940 @ =0x030000EC
	adds r0, r2, r1
	ldr r0, [r0]
	str r0, [sp, #0xc]
	ldr r3, _08060944 @ =gBgScrollRegs
	lsrs r0, r0, #8
	subs r0, #0x30
	ldr r4, _08060948 @ =0x000001FF
	adds r1, r4, #0
	ands r0, r1
	strh r0, [r3, #6]
	ldr r0, _0806094C @ =0x030000AE
	adds r1, r2, r0
	movs r0, #1
	strh r0, [r1]
	movs r5, #0
	ldr r1, _08060950 @ =0x030000AC
	adds r4, r2, r1
	movs r0, #0x10
	adds r0, r0, r7
	mov r8, r0
	subs r1, #2
	adds r1, r2, r1
	str r1, [sp, #0x18]
	ldr r0, _08060950 @ =0x030000AC
	adds r0, r2, r0
	str r0, [sp, #0x1c]
	ldr r1, _08060954 @ =0x030000A0
	adds r1, r2, r1
	str r1, [sp, #0x14]
_080608CC:
	lsls r0, r5, #3
	adds r0, #0x1b
	ldr r1, [sp, #8]
	adds r1, #0xaa
	strh r0, [r1]
	movs r6, #0x20
	strh r6, [r4]
	mov r2, r8
	adds r1, r5, r2
	ldrb r0, [r1]
	subs r0, #0x70
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bhi _080608EE
	movs r0, #0x28
	strh r0, [r4]
_080608EE:
	adds r0, r1, #0
	ldr r1, [sp, #8]
	adds r1, #0xa0
	bl sub_805321C
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #5
	bls _080608CC
	ldr r4, [sp, #0x1c]
	strh r6, [r4]
	ldr r0, _08060958 @ =0x00000425
	adds r5, r7, r0
	ldrb r0, [r5]
	cmp r0, #9
	bls _08060976
	movs r1, #0xa
	bl Div
	mov r1, sp
	adds r0, #0x30
	strb r0, [r1]
	ldrb r0, [r5]
	movs r1, #0xa
	bl Mod
	mov r1, sp
	adds r0, #0x30
	strb r0, [r1, #1]
	ldrb r0, [r7, #0x19]
	cmp r0, #0
	beq _0806095C
	movs r0, #0x5b
	ldr r1, [sp, #0x18]
	strh r0, [r1]
	b _08060962
	.align 2, 0
_08060938: .4byte gLoadedSaveGame
_0806093C: .4byte gCurTask
_08060940: .4byte 0x030000EC
_08060944: .4byte gBgScrollRegs
_08060948: .4byte 0x000001FF
_0806094C: .4byte 0x030000AE
_08060950: .4byte 0x030000AC
_08060954: .4byte 0x030000A0
_08060958: .4byte 0x00000425
_0806095C:
	movs r0, #0x59
	ldr r2, [sp, #0x18]
	strh r0, [r2]
_08060962:
	ldr r4, [sp, #8]
	adds r4, #0xae
	movs r0, #2
	strh r0, [r4]
	mov r0, sp
	ldr r1, [sp, #0x14]
	bl sub_805321C
	str r4, [sp, #0x20]
	b _080609DA
_08060976:
	ldr r2, [sp, #8]
	adds r2, #0xae
	movs r0, #1
	strh r0, [r2]
	mov r1, sp
	ldrb r0, [r5]
	adds r0, #0x30
	strb r0, [r1]
	ldrb r0, [r7, #0x19]
	str r2, [sp, #0x20]
	cmp r0, #0
	beq _08060996
	movs r0, #0x63
	ldr r4, [sp, #0x18]
	strh r0, [r4]
	b _0806099C
_08060996:
	movs r0, #0x61
	ldr r1, [sp, #0x18]
	strh r0, [r1]
_0806099C:
	ldr r2, _080609C8 @ =0x00000425
	adds r0, r7, r2
	ldrb r0, [r0]
	cmp r0, #1
	bhi _080609CC
	mov r1, sp
	movs r0, #0x8a
	strb r0, [r1, #1]
	mov r0, sp
	ldr r1, [sp, #0x14]
	bl sub_805321C
	movs r0, #0x7e
	ldr r4, [sp, #0x18]
	strh r0, [r4]
	mov r0, sp
	adds r0, #1
	ldr r1, [sp, #0x14]
	bl sub_805321C
	b _080609DA
	.align 2, 0
_080609C8: .4byte 0x00000425
_080609CC:
	mov r1, sp
	adds r0, #0x30
	strb r0, [r1]
	mov r0, sp
	ldr r1, [sp, #0x14]
	bl sub_805321C
_080609DA:
	ldr r0, _08060A14 @ =0x00000426
	adds r5, r7, r0
	ldrb r0, [r5]
	cmp r0, #9
	bls _08060A22
	movs r0, #2
	ldr r1, [sp, #0x20]
	strh r0, [r1]
	ldrb r0, [r5]
	movs r1, #0xa
	bl Div
	mov r1, sp
	adds r0, #0x30
	strb r0, [r1]
	ldrb r0, [r5]
	movs r1, #0xa
	bl Mod
	mov r1, sp
	adds r0, #0x30
	strb r0, [r1, #1]
	ldrb r0, [r7, #0x19]
	cmp r0, #0
	beq _08060A18
	movs r0, #0x88
	ldr r2, [sp, #0x18]
	strh r0, [r2]
	b _08060A1E
	.align 2, 0
_08060A14: .4byte 0x00000426
_08060A18:
	movs r0, #0x89
	ldr r4, [sp, #0x18]
	strh r0, [r4]
_08060A1E:
	mov r0, sp
	b _08060A84
_08060A22:
	movs r0, #1
	ldr r1, [sp, #0x20]
	strh r0, [r1]
	ldrb r0, [r7, #0x19]
	cmp r0, #0
	beq _08060A36
	movs r0, #0x90
	ldr r2, [sp, #0x18]
	strh r0, [r2]
	b _08060A3C
_08060A36:
	movs r0, #0x91
	ldr r4, [sp, #0x18]
	strh r0, [r4]
_08060A3C:
	mov r2, sp
	ldr r0, _08060A8C @ =0x00000426
	adds r1, r7, r0
	ldrb r0, [r1]
	adds r0, #0x30
	strb r0, [r2]
	ldrb r0, [r1]
	cmp r0, #1
	bhi _08060A94
	ldrb r0, [r7, #0x19]
	cmp r0, #0
	beq _08060A94
	ldr r0, [sp, #8]
	adds r0, #0xb8
	movs r1, #0x98
	strh r1, [r0, #0x16]
	movs r1, #0x20
	strh r1, [r0, #0x18]
	ldr r1, [r0, #0x10]
	ldr r2, _08060A90 @ =0xFFFFF7FF
	ands r1, r2
	str r1, [r0, #0x10]
	bl DisplaySprite
	mov r1, sp
	movs r0, #0x8a
	strb r0, [r1, #1]
	mov r0, sp
	ldr r1, [sp, #0x14]
	bl sub_805321C
	movs r0, #0xb1
	ldr r1, [sp, #0x18]
	strh r0, [r1]
	mov r0, sp
	adds r0, #1
_08060A84:
	ldr r1, [sp, #0x14]
	bl sub_805321C
	b _08060A9C
	.align 2, 0
_08060A8C: .4byte 0x00000426
_08060A90: .4byte 0xFFFFF7FF
_08060A94:
	mov r0, sp
	ldr r1, [sp, #0x14]
	bl sub_805321C
_08060A9C:
	ldr r2, _08060AD4 @ =0x00000427
	adds r5, r7, r2
	ldrb r0, [r5]
	cmp r0, #9
	bls _08060AD8
	movs r0, #2
	ldr r4, [sp, #0x20]
	strh r0, [r4]
	ldrb r0, [r5]
	movs r1, #0xa
	bl Div
	mov r1, sp
	adds r0, #0x30
	strb r0, [r1]
	ldrb r0, [r5]
	movs r1, #0xa
	bl Mod
	mov r1, sp
	adds r0, #0x30
	strb r0, [r1, #1]
	movs r0, #0xb9
	ldr r1, [sp, #0x18]
	strh r0, [r1]
	mov r0, sp
	b _08060B06
	.align 2, 0
_08060AD4: .4byte 0x00000427
_08060AD8:
	movs r0, #1
	ldr r2, [sp, #0x20]
	strh r0, [r2]
	movs r0, #0xc1
	ldr r4, [sp, #0x18]
	strh r0, [r4]
	mov r1, sp
	ldrb r0, [r5]
	adds r0, #0x30
	strb r0, [r1]
	ldrb r0, [r5]
	cmp r0, #1
	bhi _08060B0E
	movs r0, #0x8a
	strb r0, [r1, #1]
	mov r0, sp
	ldr r1, [sp, #0x14]
	bl sub_805321C
	movs r0, #0xe2
	strh r0, [r4]
	mov r0, sp
	adds r0, #1
_08060B06:
	ldr r1, [sp, #0x14]
	bl sub_805321C
	b _08060B16
_08060B0E:
	mov r0, sp
	ldr r1, [sp, #0x14]
	bl sub_805321C
_08060B16:
	movs r5, #0
	ldr r0, [sp, #0xc]
	lsrs r0, r0, #0xc
	str r0, [sp, #0x10]
	mov r7, sp
_08060B20:
	ldr r1, [sp, #0x10]
	adds r0, r5, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r2, r5, #1
	str r2, [sp, #0x28]
	cmp r1, #9
	bls _08060B32
	b _08060C68
_08060B32:
	movs r0, #1
	ldr r4, [sp, #0x20]
	strh r0, [r4]
	movs r4, #0
	ldr r0, [sp, #0xc]
	lsrs r6, r0, #8
	lsls r5, r5, #4
	mov sl, r5
	lsls r1, r1, #4
	mov sb, r1
	ldr r1, [sp, #8]
	adds r1, #4
	str r1, [sp, #0x24]
	movs r1, #0xf
	adds r0, r6, #0
	ands r0, r1
	subs r0, #0x38
	subs r5, r5, r0
	movs r2, #8
	adds r2, r2, r5
	mov r8, r2
	mov r3, sb
	ldr r2, [sp, #8]
	add r2, sb
_08060B62:
	lsls r0, r4, #3
	adds r0, #0x3c
	ldr r1, [sp, #0x18]
	strh r0, [r1]
	ldr r0, [sp, #0x1c]
	strh r5, [r0]
	adds r0, r4, r3
	ldr r1, [sp, #0x24]
	adds r0, r1, r0
	ldrb r0, [r0]
	subs r0, #0x70
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bhi _08060B86
	mov r1, r8
	ldr r0, [sp, #0x1c]
	strh r1, [r0]
_08060B86:
	adds r0, r4, #4
	adds r0, r2, r0
	ldr r1, [sp, #0x14]
	str r2, [sp, #0x2c]
	str r3, [sp, #0x30]
	bl sub_805345C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r2, [sp, #0x2c]
	ldr r3, [sp, #0x30]
	cmp r4, #5
	bls _08060B62
	movs r0, #0xf
	ands r6, r0
	adds r0, r6, #0
	subs r0, #0x38
	mov r2, sl
	subs r0, r2, r0
	ldr r4, [sp, #0x1c]
	strh r0, [r4]
	ldr r4, [sp, #8]
	add r4, sb
	ldrb r0, [r4, #0xc]
	cmp r0, #0xff
	bne _08060BC4
	movs r0, #0x20
	strb r0, [r7]
	movs r0, #0x30
	b _08060BE6
_08060BC4:
	cmp r0, #9
	bls _08060BDE
	ldrb r0, [r4, #0xc]
	movs r1, #0xa
	bl Div
	adds r0, #0x30
	strb r0, [r7]
	ldrb r0, [r4, #0xc]
	movs r1, #0xa
	bl Mod
	b _08060BE4
_08060BDE:
	movs r1, #0x20
	strb r1, [r7]
	ldrb r0, [r4, #0xc]
_08060BE4:
	adds r0, #0x30
_08060BE6:
	strb r0, [r7, #1]
	movs r0, #0x80
	ldr r2, [sp, #0x18]
	strh r0, [r2]
	movs r0, #2
	ldr r4, [sp, #0x20]
	strh r0, [r4]
	mov r0, sp
	ldr r1, [sp, #0x14]
	bl sub_805345C
	ldr r4, [sp, #8]
	add r4, sb
	ldrb r0, [r4, #0xd]
	cmp r0, #9
	bls _08060C1A
	movs r1, #0xa
	bl Div
	adds r0, #0x30
	strb r0, [r7]
	ldrb r0, [r4, #0xd]
	movs r1, #0xa
	bl Mod
	b _08060C20
_08060C1A:
	movs r0, #0x20
	strb r0, [r7]
	ldrb r0, [r4, #0xd]
_08060C20:
	adds r0, #0x30
	strb r0, [r7, #1]
	movs r0, #0xa0
	ldr r1, [sp, #0x18]
	strh r0, [r1]
	mov r0, sp
	ldr r1, [sp, #0x14]
	bl sub_805345C
	ldr r4, [sp, #8]
	add r4, sb
	ldrb r0, [r4, #0xe]
	cmp r0, #9
	bls _08060C50
	movs r1, #0xa
	bl Div
	adds r0, #0x30
	strb r0, [r7]
	ldrb r0, [r4, #0xe]
	movs r1, #0xa
	bl Mod
	b _08060C56
_08060C50:
	movs r2, #0x20
	strb r2, [r7]
	ldrb r0, [r4, #0xe]
_08060C56:
	adds r0, #0x30
	strb r0, [r7, #1]
	movs r0, #0xc0
	ldr r4, [sp, #0x18]
	strh r0, [r4]
	mov r0, sp
	ldr r1, [sp, #0x14]
	bl sub_805345C
_08060C68:
	ldr r1, [sp, #0x28]
	lsls r0, r1, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #8
	bhi _08060C74
	b _08060B20
_08060C74:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
    .align 2, 0

    thumb_func_start TaskDestructor_VsRecord
TaskDestructor_VsRecord: @ 0x08060C84
    bx lr
    .align 2, 0
