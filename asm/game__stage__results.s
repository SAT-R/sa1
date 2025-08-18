.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
	thumb_func_start CreateStageResults
CreateStageResults: @ 0x080573D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r4, r1, #0
	movs r1, #0x64
	adds r2, r0, #0
	muls r2, r1, r2
	mov sl, r2
	ldr r3, _08057434 @ =gLoadedSaveGame
	movs r6, #0x85
	lsls r6, r6, #3
	adds r2, r3, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r2]
	adds r1, r1, r0
	str r1, [r2]
	ldr r2, _08057438 @ =gStageFlags
	ldrh r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0805743C @ =gCurrentLevel
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r5, r0, #0
	cmp r1, #0xa
	bne _08057420
	ldr r2, _08057440 @ =gCamera
	ldrh r1, [r2, #0x26]
	movs r6, #0x80
	lsls r6, r6, #6
	adds r0, r6, #0
	orrs r0, r1
	strh r0, [r2, #0x26]
_08057420:
	ldr r0, _08057444 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bne _08057448
	adds r0, r4, #0
	bl sub_8069C94
	movs r0, #0
	b _08057844
	.align 2, 0
_08057434: .4byte gLoadedSaveGame
_08057438: .4byte gStageFlags
_0805743C: .4byte gCurrentLevel
_08057440: .4byte gCamera
_08057444: .4byte gGameMode
_08057448:
	movs r2, #0
	ldr r0, _080574E0 @ =gSelectedCharacter
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0805748E
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0xb
	ble _0805748E
	ldrb r0, [r3, #0x1d]
	cmp r0, #0x7f
	bne _0805748E
	ldrh r1, [r3, #8]
	cmp r1, #0xc
	bls _0805748E
	ldrh r0, [r3, #0xa]
	cmp r0, #0xc
	bls _0805748E
	ldrh r0, [r3, #0xc]
	cmp r0, #0xc
	bls _0805748E
	ldrh r0, [r3, #0xe]
	cmp r0, #0xc
	bls _0805748E
	cmp r1, #0xf
	bne _0805748C
	ldr r0, _080574E4 @ =gMultiplayerCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xc
	beq _0805748E
_0805748C:
	movs r2, #1
_0805748E:
	str r2, [sp, #0x1c]
	cmp r2, #0
	bne _080574B6
	ldr r0, _080574E8 @ =gPlayer
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r1, r3, #0
	adds r1, #8
	adds r1, r0, r1
	ldrh r2, [r1]
	movs r0, #0
	ldrsb r0, [r5, r0]
	adds r0, #1
	cmp r0, r2
	bge _080574B4
	adds r0, r2, #0
_080574B4:
	strh r0, [r1]
_080574B6:
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0xa
	bne _080574CE
	ldr r0, _080574EC @ =gCheckpointTime
	ldr r0, [r0]
	ldr r1, _080574F0 @ =0x00002A30
	ldr r2, _080574F4 @ =0xFFFFD5D0
	adds r4, r0, r2
	cmp r0, r1
	bhi _080574CE
	movs r4, #1
_080574CE:
	ldrb r1, [r5]
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0xd
	bne _080574F8
	movs r0, #0x24      @ MUS_EXTRA_CLEAR
	bl m4aSongNumStart
	b _0805751A
	.align 2, 0
_080574E0: .4byte gSelectedCharacter
_080574E4: .4byte gMultiplayerCurrentLevel
_080574E8: .4byte gPlayer
_080574EC: .4byte gCheckpointTime
_080574F0: .4byte 0x00002A30
_080574F4: .4byte 0xFFFFD5D0
_080574F8:
	cmp r0, #0xc
	bne _08057504
	movs r0, #0x23      @ MUS_FINAL_CLEAR
	bl m4aSongNumStart
	b _0805751A
_08057504:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08057514
	movs r0, #0x22      @ MUS_BOSS_CLEAR
	bl m4aSongNumStart
	b _0805751A
_08057514:
	movs r0, #0x21      @ MUS_ACT_CLEAR
	bl m4aSongNumStart
_0805751A:
	ldr r0, _0805752C @ =gMusicManagerState
	movs r1, #0xff
	strb r1, [r0]
	ldr r0, _08057530 @ =0x0000545F
	cmp r4, r0
	bls _08057534
	movs r6, #0
	b _080575BA
	.align 2, 0
_0805752C: .4byte gMusicManagerState
_08057530: .4byte 0x0000545F
_08057534:
	ldr r0, _08057540 @ =0x0000464F
	cmp r4, r0
	bls _08057544
	movs r6, #0xfa
	lsls r6, r6, #1
	b _080575BA
	.align 2, 0
_08057540: .4byte 0x0000464F
_08057544:
	ldr r0, _08057550 @ =0x0000383F
	cmp r4, r0
	bls _08057554
	movs r6, #0xfa
	lsls r6, r6, #2
	b _080575BA
	.align 2, 0
_08057550: .4byte 0x0000383F
_08057554:
	ldr r0, _08057560 @ =0x00002A2F
	cmp r4, r0
	bls _08057564
	movs r6, #0xfa
	lsls r6, r6, #3
	b _080575BA
	.align 2, 0
_08057560: .4byte 0x00002A2F
_08057564:
	ldr r0, _08057570 @ =0x00001C1F
	cmp r4, r0
	bls _08057578
	ldr r6, _08057574 @ =0x00000BB8
	b _080575BA
	.align 2, 0
_08057570: .4byte 0x00001C1F
_08057574: .4byte 0x00000BB8
_08057578:
	ldr r0, _08057584 @ =0x00001517
	cmp r4, r0
	bls _08057588
	movs r6, #0xfa
	lsls r6, r6, #4
	b _080575BA
	.align 2, 0
_08057584: .4byte 0x00001517
_08057588:
	ldr r0, _08057594 @ =0x00000E0F
	cmp r4, r0
	bls _0805759C
	ldr r6, _08057598 @ =0x00001388
	b _080575BA
	.align 2, 0
_08057594: .4byte 0x00000E0F
_08057598: .4byte 0x00001388
_0805759C:
	ldr r0, _080575A8 @ =0x00000BB7
	cmp r4, r0
	bls _080575B0
	ldr r6, _080575AC @ =0x00002710
	b _080575BA
	.align 2, 0
_080575A8: .4byte 0x00000BB7
_080575AC: .4byte 0x00002710
_080575B0:
	ldr r0, _080575C4 @ =0x00000707
	ldr r6, _080575C8 @ =0x00013880
	cmp r4, r0
	bls _080575BA
	ldr r6, _080575CC @ =0x0000C350
_080575BA:
	cmp sl, r6
	bls _080575D0
	mov r0, sl
	b _080575D2
	.align 2, 0
_080575C4: .4byte 0x00000707
_080575C8: .4byte 0x00013880
_080575CC: .4byte 0x0000C350
_080575D0:
	adds r0, r6, #0
_080575D2:
	movs r1, #0x64
	bl Div
	adds r0, #0x4b
	str r0, [sp, #0x10]
	mov r0, sl
	str r0, [sp, #0x18]
	str r6, [sp, #0x14]
	bl UiGfxStackInit
	ldr r0, _08057854 @ =Task_8057B74
	ldr r1, _08057858 @ =0x00002120
	mov r8, r1
	movs r4, #0
	str r4, [sp]
	movs r1, #0x34
	mov r2, r8
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0xc]
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r7, r0, r2
	strh r4, [r7, #0x1c]
	ldr r0, [sp, #0x10]
	str r0, [r7, #0x30]
	strh r4, [r7, #0x1e]
	movs r0, #0xf0
	strh r0, [r7, #0xa]
	movs r0, #0x7e
	strh r0, [r7, #0xc]
	movs r0, #8
	strh r0, [r7, #0xe]
	strh r0, [r7, #0x10]
	movs r1, #6
	strh r1, [r7, #0x12]
	movs r5, #1
	strb r5, [r7, #0x16]
	movs r0, #0xa
	strh r0, [r7, #8]
	ldr r0, _0805785C @ =Task_8057C3C
	str r4, [sp]
	movs r1, #0x34
	mov r2, r8
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #4]
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r7, r0, r2
	strh r4, [r7, #0x1c]
	ldr r0, [sp, #0x10]
	str r0, [r7, #0x30]
	strh r4, [r7, #0x1e]
	movs r1, #0x80
	lsls r1, r1, #1
	mov sb, r1
	mov r2, sb
	strh r2, [r7, #0xa]
	movs r0, #0x80
	strh r0, [r7, #0xc]
	movs r0, #9
	strh r0, [r7, #0xe]
	movs r0, #2
	strh r0, [r7, #0x10]
	movs r0, #0xc
	strh r0, [r7, #0x12]
	strb r5, [r7, #0x16]
	strh r4, [r7, #8]
	ldr r0, _08057860 @ =Task_8057D30
	str r4, [sp]
	movs r1, #0x34
	mov r2, r8
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #8]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r2, [sp, #0x18]
	str r2, [r7, #0x18]
	strh r4, [r7, #0x1c]
	ldr r0, [sp, #0x10]
	str r0, [r7, #0x30]
	strh r4, [r7, #0x1e]
	mov r2, sb
	strh r2, [r7, #0xa]
	movs r0, #0x66
	strh r0, [r7, #0xc]
	movs r0, #0x10
	strh r0, [r7, #0xe]
	movs r0, #4
	strh r0, [r7, #0x10]
	movs r0, #6
	strh r0, [r7, #0x12]
	strb r5, [r7, #0x16]
	strh r4, [r7, #8]
	movs r5, #0xf
	ldr r2, _08057864 @ =0x03000020
	adds r2, r2, r1
	mov r8, r2
_080576A8:
	mov r0, sl
	movs r1, #0xa
	bl Div
	adds r4, r0, #0
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	adds r3, r7, #0
	adds r3, #0x20
	adds r3, r3, r2
	lsls r0, r4, #3
	lsls r1, r4, #1
	adds r0, r0, r1
	mov r1, sl
	subs r0, r1, r0
	adds r0, #0x20
	strb r0, [r3]
	mov sl, r4
	subs r2, #1
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	cmp r2, #0
	bge _080576A8
	movs r5, #0xb
	ldr r7, _08057868 @ =Task_805803C
	mov r3, r8
	movs r4, #0x2b
_080576DE:
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
	adds r1, r3, r2
	ldrb r0, [r1]
	cmp r0, #0x20
	bne _080576F8
	strb r4, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe
	ble _080576DE
_080576F8:
	movs r5, #0
	mov r3, r8
	ldr r4, _0805786C @ =gUnknown_08688404
_080576FE:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r2, r3, r0
	adds r1, r0, r4
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa
	ble _080576FE
	ldr r2, _08057858 @ =0x00002120
	movs r4, #0
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #0x34
	movs r3, #0
	bl TaskCreate
	mov sb, r0
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	str r6, [r7, #0x18]
	strh r4, [r7, #0x1c]
	ldr r2, [sp, #0x10]
	str r2, [r7, #0x30]
	strh r4, [r7, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r7, #0xa]
	movs r0, #0x50
	strh r0, [r7, #0xc]
	movs r0, #0x10
	strh r0, [r7, #0xe]
	movs r0, #4
	strh r0, [r7, #0x10]
	movs r0, #6
	strh r0, [r7, #0x12]
	movs r0, #1
	strb r0, [r7, #0x16]
	strh r4, [r7, #8]
	movs r5, #0xf
	ldr r0, _08057864 @ =0x03000020
	adds r0, r0, r1
	mov r8, r0
_0805775E:
	adds r0, r6, #0
	movs r1, #0xa
	bl Div
	adds r4, r0, #0
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	adds r3, r7, #0
	adds r3, #0x20
	adds r3, r3, r2
	lsls r0, r4, #3
	lsls r1, r4, #1
	adds r0, r0, r1
	subs r0, r6, r0
	adds r0, #0x20
	strb r0, [r3]
	adds r6, r4, #0
	subs r2, #1
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	cmp r2, #0
	bge _0805775E
	movs r5, #0xb
	ldr r7, _08057870 @ =Task_8057888
	ldr r6, _08057874 @ =TaskDestructor_8058344
	mov r3, r8
	movs r4, #0x2b
_08057794:
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
	adds r1, r3, r2
	ldrb r0, [r1]
	cmp r0, #0x20
	bne _080577AE
	strb r4, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe
	ble _08057794
_080577AE:
	movs r5, #0
	mov r3, r8
	ldr r4, _08057878 @ =gUnknown_0868840F
_080577B4:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r2, r3, r0
	adds r1, r0, r4
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa
	ble _080577B4
	movs r2, #0x84
	lsls r2, r2, #6
	str r6, [sp]
	adds r0, r7, #0
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	movs r1, #0
	strh r1, [r4, #0x24]
	ldr r2, [sp, #0x18]
	str r2, [r4, #0x2c]
	ldr r6, [sp, #0x14]
	str r6, [r4, #0x30]
	movs r0, #0x2d
	strh r0, [r4, #0x34]
	ldr r0, [sp, #0x10]
	str r0, [r4, #0x28]
	ldr r2, [sp, #0xc]
	str r2, [r4, #0x14]
	mov r6, sb
	str r6, [r4, #0x18]
	ldr r0, [sp, #4]
	str r0, [r4, #0x10]
	ldr r2, [sp, #8]
	str r2, [r4, #0xc]
	strh r1, [r4]
	strh r1, [r4, #2]
	movs r2, #1
	movs r0, #1
	strh r0, [r4, #4]
	strh r1, [r4, #6]
	adds r0, #0xff
	strh r0, [r4, #8]
	strb r2, [r4, #0xa]
	ldr r6, _0805787C @ =0x03000036
	adds r0, r5, r6
	mov r1, sp
	ldrb r1, [r1, #0x1c]
	strb r1, [r0]
	movs r0, #0x80
	bl VramMalloc
	str r0, [r4, #0x1c]
	movs r0, #0x1e
	bl VramMalloc
	str r0, [r4, #0x20]
	ldr r2, _08057880 @ =0x0300001C
	adds r5, r5, r2
	adds r0, r5, #0
	bl sub_8056FE4
	ldr r6, [sp, #0x10]
	ldr r1, _08057884 @ =0x0000011D
	adds r0, r6, r1
_08057844:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08057854: .4byte Task_8057B74
_08057858: .4byte 0x00002120
_0805785C: .4byte Task_8057C3C
_08057860: .4byte Task_8057D30
_08057864: .4byte 0x03000020
_08057868: .4byte Task_805803C
_0805786C: .4byte gUnknown_08688404
_08057870: .4byte Task_8057888
_08057874: .4byte TaskDestructor_8058344
_08057878: .4byte gUnknown_0868840F
_0805787C: .4byte 0x03000036
_08057880: .4byte 0x0300001C
_08057884: .4byte 0x0000011D
.endif

	thumb_func_start Task_8057888
Task_8057888: @ 0x08057888
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08057904 @ =gPlayer
	mov sl, r0
	ldr r1, _08057908 @ =gCamera
	mov r8, r1
	ldr r0, _0805790C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r0, r1
	ldr r0, [r7, #0x14]
	ldrh r3, [r0, #6]
	adds r3, r3, r1
	ldr r0, [r7, #0x18]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp]
	ldr r0, [r7, #0x10]
	ldrh r2, [r0, #6]
	adds r2, r2, r1
	ldr r0, [r7, #0xc]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sb, r0
	ldrh r0, [r7, #0x24]
	strh r0, [r3, #0x1c]
	ldrh r0, [r7, #0x24]
	ldr r3, [sp]
	strh r0, [r3, #0x1c]
	ldrh r0, [r7, #0x24]
	strh r0, [r2, #0x1c]
	ldrh r0, [r7, #0x24]
	mov r4, sb
	strh r0, [r4, #0x1c]
	movs r5, #0x24
	ldrsh r0, [r7, r5]
	cmp r0, #0x86
	bgt _08057928
	movs r4, #0
_080578E2:
	cmp r4, #0
	beq _08057910
	lsls r0, r4, #8
	movs r1, #0xc
	bl Div
	adds r2, r0, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r3, r4, #0
	adds r3, #0x14
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #1
	bl sa2__sub_80047A0
	b _0805791E
	.align 2, 0
_08057904: .4byte gPlayer
_08057908: .4byte gCamera
_0805790C: .4byte gCurTask
_08057910:
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #1
	movs r2, #1
	movs r3, #0x14
	bl sa2__sub_80047A0
_0805791E:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xb
	bls _080578E2
_08057928:
	movs r1, #0x24
	ldrsh r0, [r7, r1]
	cmp r0, #0xb4
	bgt _08057932
	b _08057B5C
_08057932:
	ldr r0, [r7, #0x2c]
	cmp r0, #0
	bne _08057942
	ldr r2, [r7, #0x30]
	cmp r2, #0
	bne _08057940
	b _08057A58
_08057940:
	b _0805797C
_08057942:
	subs r0, #0x64
	str r0, [r7, #0x2c]
	ldr r1, _08057A08 @ =gLevelScore
	ldr r6, [r1]
	adds r0, r6, #0
	adds r0, #0x64
	str r0, [r1]
	ldr r4, _08057A0C @ =0x0000C350
	adds r1, r4, #0
	bl Div
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl Div
	cmp r5, r0
	beq _08057976
	ldr r0, _08057A10 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _08057976
	ldr r1, _08057A14 @ =gNumLives
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08057976:
	ldr r0, [r7, #0x2c]
	mov r2, sb
	str r0, [r2, #0x18]
_0805797C:
	ldr r0, [r7, #0x30]
	cmp r0, #0
	beq _080579BC
	subs r0, #0x64
	str r0, [r7, #0x30]
	ldr r1, _08057A08 @ =gLevelScore
	ldr r6, [r1]
	adds r0, r6, #0
	adds r0, #0x64
	str r0, [r1]
	ldr r4, _08057A0C @ =0x0000C350
	adds r1, r4, #0
	bl Div
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl Div
	cmp r5, r0
	beq _080579B6
	ldr r0, _08057A10 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _080579B6
	ldr r1, _08057A14 @ =gNumLives
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_080579B6:
	ldr r0, [r7, #0x30]
	ldr r3, [sp]
	str r0, [r3, #0x18]
_080579BC:
	ldr r0, [r7, #0x2c]
	cmp r0, #0
	bne _08057A3C
	ldr r2, [r7, #0x30]
	cmp r2, #0
	bne _08057A3C
	ldr r3, _08057A18 @ =gCurrentLevel
	ldrb r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080579DE
	mov r4, sl
	ldr r0, [r4, #0x10]
	ldr r1, _08057A1C @ =0xFF7FFFFF
	ands r0, r1
	str r0, [r4, #0x10]
_080579DE:
	mov r5, r8
	strh r2, [r5, #4]
	strh r2, [r5, #6]
	ldr r0, _08057A20 @ =gSelectedCharacter
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08057A24
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0
	bne _08057A30
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0xb
	ble _08057A30
	movs r0, #0x87
	b _08057A32
	.align 2, 0
_08057A08: .4byte gLevelScore
_08057A0C: .4byte 0x0000C350
_08057A10: .4byte gGameMode
_08057A14: .4byte gNumLives
_08057A18: .4byte gCurrentLevel
_08057A1C: .4byte 0xFF7FFFFF
_08057A20: .4byte gSelectedCharacter
_08057A24:
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0xc
	bne _08057A30
	movs r0, #0x87
	b _08057A32
_08057A30:
	movs r0, #0x2d
_08057A32:
	strh r0, [r7, #0x34]
	movs r0, #0x8d      @ SE_STAGE_RESULT_COUNTER_DONE
	bl m4aSongNumStart
	b _08057B5C
_08057A3C:
	ldr r0, _08057A54 @ =gStageTime
	ldr r0, [r0]
	movs r1, #4
	bl Mod
	cmp r0, #0
	beq _08057A4C
	b _08057B5C
_08057A4C:
	movs r0, #0x8c      @ SE_STAGE_RESULT_COUNTER
	bl m4aSongNumStart
	b _08057B5C
	.align 2, 0
_08057A54: .4byte gStageTime
_08057A58:
	mov r0, r8
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	mov r1, sl
	ldr r0, [r1]
	asrs r0, r0, #8
	mov r3, r8
	movs r4, #0
	ldrsh r1, [r3, r4]
	subs r0, r0, r1
	adds r0, #0x40
	movs r1, #0xb8
	lsls r1, r1, #1
	cmp r0, r1
	bls _08057AB6
	ldr r0, _08057B30 @ =gPlayer
	strh r2, [r0, #8]
	strh r2, [r0, #0xc]
	ldr r0, _08057B34 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08057AB6
	ldr r3, _08057B38 @ =gPartner
	ldr r0, [r3]
	asrs r0, r0, #8
	mov r5, r8
	movs r4, #0
	ldrsh r1, [r5, r4]
	subs r0, r0, r1
	movs r1, #0x98
	lsls r1, r1, #1
	cmp r0, r1
	ble _08057AB6
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r3, #0x10]
	strh r2, [r3, #0x38]
	strh r2, [r3, #0x3a]
	strh r2, [r3, #8]
	strh r2, [r3, #0xc]
_08057AB6:
	ldr r0, [r7, #0x28]
	adds r0, #0xf0
	movs r5, #0x24
	ldrsh r1, [r7, r5]
	cmp r0, r1
	bhs _08057B5C
	ldr r5, _08057B3C @ =gCurrentLevel
	ldrb r0, [r5]
	subs r0, #0xc
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08057AD6
	adds r0, r7, #0
	bl sub_805423C
_08057AD6:
	ldrh r0, [r7, #0x34]
	cmp r0, #0
	beq _08057AE6
	subs r0, #1
	strh r0, [r7, #0x34]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08057B5C
_08057AE6:
	movs r0, #0
	strh r0, [r7, #0x34]
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r4, [r0]
	ldr r0, [r7, #0xc]
	bl TaskDestroy
	ldr r0, [r7, #0x10]
	bl TaskDestroy
	ldr r0, [r7, #0x14]
	bl TaskDestroy
	ldr r0, [r7, #0x18]
	bl TaskDestroy
	ldr r0, _08057B40 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	ldr r0, _08057B44 @ =gSelectedCharacter
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08057B52
	cmp r4, #0
	bne _08057B62
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0xb
	bgt _08057B48
_08057B28:
	bl GoToNextLevel
	b _08057B62
	.align 2, 0
_08057B30: .4byte gPlayer
_08057B34: .4byte gNumSingleplayerCharacters
_08057B38: .4byte gPartner
_08057B3C: .4byte gCurrentLevel
_08057B40: .4byte gCurTask
_08057B44: .4byte gSelectedCharacter
_08057B48:
	cmp r0, #0xd
	beq _08057B62
_08057B4C:
	bl CreateCongratulationsAnimation
	b _08057B62
_08057B52:
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0xc
	beq _08057B4C
	b _08057B28
_08057B5C:
	ldrh r0, [r7, #0x24]
	adds r0, #1
	strh r0, [r7, #0x24]
_08057B62:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Task_8057B74
Task_8057B74: @ 0x08057B74
	push {lr}
	ldr r0, _08057BCC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	movs r0, #0x1c
	ldrsh r1, [r2, r0]
	ldr r0, [r2, #0x30]
	adds r0, #0xe6
	cmp r1, r0
	bls _08057BD4
	ldr r0, _08057BD0 @ =gCurrentLevel
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08057BA2
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xb
	ble _08057C14
_08057BA2:
	ldrh r3, [r2, #0xa]
	movs r0, #0xa
	ldrsh r1, [r2, r0]
	movs r0, #0x20
	rsbs r0, r0, #0
	cmp r1, r0
	bge _08057BC4
	adds r0, r3, #0
	adds r0, #0x20
	strh r0, [r2, #0xa]
	ldrh r1, [r2, #0xe]
	movs r3, #0xe
	ldrsh r0, [r2, r3]
	cmp r0, #0
	beq _08057BC4
	subs r0, r1, #1
	strh r0, [r2, #0xe]
_08057BC4:
	ldrh r0, [r2, #0xa]
	subs r0, #0x1a
	strh r0, [r2, #0xa]
	b _08057C14
	.align 2, 0
_08057BCC: .4byte gCurTask
_08057BD0: .4byte gCurrentLevel
_08057BD4:
	cmp r1, #0x31
	ble _08057BE2
	movs r0, #9
	strh r0, [r2, #0xe]
	movs r0, #0x2a
	strh r0, [r2, #0xc]
	b _08057C14
_08057BE2:
	cmp r1, #0x23
	ble _08057BEE
	ldrh r0, [r2, #0xc]
	subs r0, #6
	strh r0, [r2, #0xc]
	b _08057C14
_08057BEE:
	cmp r1, #0x19
	ble _08057BFC
	ldr r0, _08057BF8 @ =0x0000FFF0
	strh r0, [r2, #0xa]
	b _08057C14
	.align 2, 0
_08057BF8: .4byte 0x0000FFF0
_08057BFC:
	cmp r1, #0xf
	ble _08057C14
	ldrh r0, [r2, #0xa]
	subs r0, #0x1a
	strh r0, [r2, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x10
	rsbs r1, r1, #0
	cmp r0, r1
	bge _08057C14
	strh r1, [r2, #0xa]
_08057C14:
	ldr r0, [r2, #0x30]
	adds r0, #0xf0
	ldrh r1, [r2, #0x1c]
	cmp r0, r1
	bhs _08057C2C
	ldr r0, _08057C28 @ =gUnknown_0868841C
	adds r1, r2, #0
	bl sub_8052F78
	b _08057C34
	.align 2, 0
_08057C28: .4byte gUnknown_0868841C
_08057C2C:
	ldr r0, _08057C38 @ =gUnknown_0868841C
	adds r1, r2, #0
	bl sub_80530CC
_08057C34:
	pop {r0}
	bx r0
	.align 2, 0
_08057C38: .4byte gUnknown_0868841C

	thumb_func_start Task_8057C3C
Task_8057C3C: @ 0x08057C3C
	push {r4, lr}
	sub sp, #0x1c
	ldr r1, _08057C88 @ =gUnknown_08688428
	mov r0, sp
	movs r2, #0x19
	bl memcpy
	ldr r0, _08057C8C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r0, #0x1c
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x30]
	adds r0, #0xe6
	cmp r1, r0
	bls _08057C90
	ldrh r0, [r4, #0xa]
	subs r0, #0x1c
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x1f
	rsbs r1, r1, #0
	cmp r0, r1
	bge _08057CDE
	ldrh r1, [r4, #0xe]
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _08057C82
	subs r0, r1, #1
	strh r0, [r4, #0xe]
_08057C82:
	ldrh r0, [r4, #0xa]
	adds r0, #0x20
	b _08057CD0
	.align 2, 0
_08057C88: .4byte gUnknown_08688428
_08057C8C: .4byte gCurTask
_08057C90:
	cmp r1, #0x31
	ble _08057CA0
	movs r0, #0x2c
	strh r0, [r4, #0xc]
	ldrh r2, [r4, #0xa]
	subs r0, r2, #2
	strh r0, [r4, #0xa]
	b _08057CC0
_08057CA0:
	cmp r1, #0x23
	ble _08057CB2
	ldrh r0, [r4, #0xc]
	subs r0, #6
	strh r0, [r4, #0xc]
	ldrh r2, [r4, #0xa]
	subs r0, r2, #2
	strh r0, [r4, #0xa]
	b _08057CC0
_08057CB2:
	cmp r1, #0x19
	ble _08057CEA
	ldrh r2, [r4, #0xa]
	subs r0, r2, #2
	strh r0, [r4, #0xa]
	movs r1, #9
	strh r1, [r4, #0xe]
_08057CC0:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x1f
	rsbs r1, r1, #0
	cmp r0, r1
	bge _08057CDE
	adds r0, r2, #0
	adds r0, #0x1e
_08057CD0:
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0x1e]
	adds r0, #1
	movs r1, #8
	bl Mod
	strh r0, [r4, #0x1e]
_08057CDE:
	ldrh r0, [r4, #0x1e]
	add r0, sp
	adds r1, r4, #0
	bl sub_80530CC
	b _08057D28
_08057CEA:
	cmp r1, #0xf
	ble _08057D28
	ldrh r3, [r4, #0xa]
	adds r0, r3, #0
	subs r0, #0x1c
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0xef
	bgt _08057D28
	asrs r0, r0, #0x15
	movs r1, #9
	subs r1, r1, r0
	strh r1, [r4, #0xe]
	movs r0, #0x1f
	rsbs r0, r0, #0
	cmp r2, r0
	bge _08057D1E
	adds r0, r3, #4
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0x1e]
	adds r0, #1
	movs r1, #8
	bl Mod
	strh r0, [r4, #0x1e]
_08057D1E:
	ldrh r0, [r4, #0x1e]
	add r0, sp
	adds r1, r4, #0
	bl sub_80530CC
_08057D28:
	add sp, #0x1c
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start Task_8057D30
Task_8057D30: @ 0x08057D30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08057D58 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r7, [r5, #0x18]
	ldrh r0, [r5, #0x1c]
	cmp r0, #0x5a
	bls _08057D5C
	subs r0, #0x5a
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	b _08057D5E
	.align 2, 0
_08057D58: .4byte gCurTask
_08057D5C:
	movs r1, #0
_08057D5E:
	ldrh r0, [r5, #0x1c]
	lsls r1, r1, #0x10
	str r1, [sp]
	cmp r0, #0x85
	bls _08057DD6
	movs r6, #0xf
	movs r0, #0x20
	adds r0, r0, r5
	mov r8, r0
_08057D70:
	adds r0, r7, #0
	movs r1, #0xa
	bl Div
	lsls r3, r6, #0x18
	asrs r3, r3, #0x18
	mov r1, r8
	adds r4, r1, r3
	lsls r1, r0, #3
	lsls r2, r0, #1
	adds r1, r1, r2
	subs r1, r7, r1
	adds r1, #0x20
	strb r1, [r4]
	adds r7, r0, #0
	subs r3, #1
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	cmp r3, #0
	bge _08057D70
	movs r6, #0xb
	mov r3, r8
	movs r4, #0x2b
_08057D9E:
	lsls r0, r6, #0x18
	asrs r2, r0, #0x18
	adds r1, r3, r2
	ldrb r0, [r1]
	cmp r0, #0x20
	bne _08057DB8
	strb r4, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xe
	ble _08057D9E
_08057DB8:
	movs r6, #0
	mov r4, r8
	ldr r3, _08057DF0 @ =gUnknown_08688404
_08057DBE:
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	adds r2, r4, r0
	adds r1, r0, r3
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xa
	ble _08057DBE
_08057DD6:
	ldrh r1, [r5, #0x1c]
	ldr r2, [r5, #0x30]
	adds r0, r2, #0
	adds r0, #0xe6
	cmp r1, r0
	bls _08057DF4
	subs r1, #0xe6
	subs r1, r1, r2
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #0x12
	lsrs r7, r0, #0x10
	b _08057DF6
	.align 2, 0
_08057DF0: .4byte gUnknown_08688404
_08057DF4:
	movs r7, #0
_08057DF6:
	ldr r2, [sp]
	asrs r0, r2, #0x10
	cmp r0, #0x96
	ble _08057E7C
	movs r0, #4
	strh r0, [r5, #0x10]
	movs r6, #6
	strh r6, [r5, #0x12]
	movs r0, #0xa
	strh r0, [r5, #0xe]
	movs r0, #0x32
	lsls r1, r7, #0x10
	asrs r4, r1, #0x10
	subs r0, r0, r4
	strh r0, [r5, #0xa]
	movs r1, #0x66
	strh r1, [r5, #0xc]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, #0xb6
	movs r3, #0x20
	adds r3, r3, r5
	mov r8, r3
	cmp r0, r1
	blt _08057E30
	mov r0, r8
	adds r1, r5, #0
	bl sub_80530CC
_08057E30:
	movs r0, #0
	strh r0, [r5, #0x10]
	strh r6, [r5, #0x12]
	movs r0, #1
	strh r0, [r5, #0xe]
	movs r6, #0xb
	subs r4, #0x32
	movs r7, #8
	rsbs r7, r7, #0
_08057E42:
	lsls r0, r6, #0x18
	asrs r2, r0, #0x18
	mov r3, r8
	adds r1, r3, r2
	ldrb r1, [r1]
	adds r6, r0, #0
	cmp r1, #0x2b
	beq _08057E6C
	lsls r0, r2, #3
	subs r0, r0, r4
	strh r0, [r5, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r7
	blt _08057E6C
	adds r0, r2, #0
	adds r0, #0x20
	adds r0, r5, r0
	adds r1, r5, #0
	bl sub_80530CC
_08057E6C:
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r6, r1
	lsrs r6, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xf
	ble _08057E42
	b _0805802A
_08057E7C:
	cmp r0, #0x2c
	ble _08057EF0
	movs r0, #4
	strh r0, [r5, #0x10]
	movs r0, #6
	strh r0, [r5, #0x12]
	movs r0, #0xa
	strh r0, [r5, #0xe]
	movs r0, #0x32
	strh r0, [r5, #0xa]
	movs r0, #0x66
	strh r0, [r5, #0xc]
	adds r4, r5, #0
	adds r4, #0x20
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_80530CC
	movs r6, #0xb
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	mov r8, r4
	lsls r3, r7, #0x10
	cmp r0, #0x2b
	bne _08057EC8
_08057EB0:
	lsls r0, r6, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r0, r2
	lsrs r6, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xe
	bgt _08057EC8
	adds r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0x2b
	beq _08057EB0
_08057EC8:
	movs r0, #0
	strh r0, [r5, #0x10]
	movs r0, #6
	strh r0, [r5, #0x12]
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0xe]
	lsls r2, r0, #3
	asrs r1, r3, #0x10
	subs r1, #0x32
	subs r2, r2, r1
	strh r2, [r5, #0xa]
	adds r0, #0x20
	adds r0, r5, r0
	adds r1, r5, #0
	bl sub_80530CC
	b _0805802A
_08057EF0:
	movs r1, #2
	bl Div
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #0x10
	bls _08057F04
	movs r3, #0x10
	mov sb, r3
_08057F04:
	mov r4, sb
	cmp r4, #0
	bne _08057F0C
	b _0805802A
_08057F0C:
	movs r0, #0
	mov sl, r0
	movs r6, #0
	movs r1, #0x20
	adds r1, r1, r5
	mov r8, r1
	cmp sl, sb
	bge _08057FAC
_08057F1C:
	lsls r2, r6, #0x18
	asrs r3, r2, #0x18
	lsls r1, r3, #1
	ldr r4, [sp]
	asrs r0, r4, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r6, r2, #0
	cmp r3, #0xa
	bgt _08057F36
	movs r0, #4
	b _08057F38
_08057F36:
	movs r0, #0
_08057F38:
	strh r0, [r5, #0x10]
	movs r0, #6
	strh r0, [r5, #0x12]
	lsls r0, r7, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0xc
	ble _08057F56
	mov r1, sl
	lsls r0, r1, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r0, r2
	lsrs r0, r0, #0x18
	mov sl, r0
	b _08057F9E
_08057F56:
	asrs r0, r6, #0x18
	cmp r0, #0xa
	ble _08057F64
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0x2b
	beq _08057F9E
_08057F64:
	movs r0, #1
	strh r0, [r5, #0xe]
	lsls r1, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r4
	adds r0, #0xff
	subs r0, r0, r1
	movs r1, #0x23
	bl Div
	adds r0, #0x5e
	strh r0, [r5, #0xc]
	cmp r4, #0xc
	bne _08057F86
	movs r0, #0x1f
	b _08057F8A
_08057F86:
	adds r0, r4, #0
	adds r0, #0x14
_08057F8A:
	strh r0, [r5, #6]
	asrs r0, r6, #0x18
	lsls r1, r0, #3
	adds r1, #0x2e
	strh r1, [r5, #0xa]
	adds r0, #0x20
	adds r0, r5, r0
	adds r1, r5, #0
	bl sub_8052E40
_08057F9E:
	movs r3, #0x80
	lsls r3, r3, #0x11
	adds r0, r6, r3
	lsrs r6, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, sb
	blt _08057F1C
_08057FAC:
	mov r4, sl
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xb
	ble _0805800A
	movs r6, #0xb
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0x2b
	bne _08057FDC
	mov r1, r8
_08057FC4:
	lsls r0, r6, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r0, r2
	lsrs r6, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xe
	bgt _08057FDC
	adds r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #0x2b
	beq _08057FC4
_08057FDC:
	movs r0, #0
	strh r0, [r5, #0x10]
	movs r0, #6
	strh r0, [r5, #0x12]
	mov r3, sl
	lsls r1, r3, #0x18
	asrs r1, r1, #0x18
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	subs r1, r1, r0
	strh r1, [r5, #0xe]
	movs r1, #0x66
	strh r1, [r5, #0xc]
	lsls r1, r0, #3
	adds r1, #0x32
	strh r1, [r5, #0xa]
	adds r0, #0x20
	adds r0, r5, r0
	adds r1, r5, #0
	bl sub_80530CC
	movs r4, #0xb
	mov sl, r4
_0805800A:
	movs r0, #4
	strh r0, [r5, #0x10]
	movs r0, #6
	strh r0, [r5, #0x12]
	mov r1, sl
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	strh r0, [r5, #0xe]
	movs r0, #0x66
	strh r0, [r5, #0xc]
	movs r0, #0x32
	strh r0, [r5, #0xa]
	mov r0, r8
	adds r1, r5, #0
	bl sub_80530CC
_0805802A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Task_805803C
Task_805803C: @ 0x0805803C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08058064 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r7, [r5, #0x18]
	ldrh r0, [r5, #0x1c]
	cmp r0, #0x3c
	bls _08058068
	subs r0, #0x3c
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	b _0805806A
	.align 2, 0
_08058064: .4byte gCurTask
_08058068:
	movs r1, #0
_0805806A:
	ldrh r0, [r5, #0x1c]
	lsls r1, r1, #0x10
	str r1, [sp, #4]
	cmp r0, #0x85
	bls _080580E2
	movs r6, #0xf
	movs r0, #0x20
	adds r0, r0, r5
	mov sb, r0
_0805807C:
	adds r0, r7, #0
	movs r1, #0xa
	bl Div
	lsls r3, r6, #0x18
	asrs r3, r3, #0x18
	mov r1, sb
	adds r4, r1, r3
	lsls r1, r0, #3
	lsls r2, r0, #1
	adds r1, r1, r2
	subs r1, r7, r1
	adds r1, #0x20
	strb r1, [r4]
	adds r7, r0, #0
	subs r3, #1
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	cmp r3, #0
	bge _0805807C
	movs r6, #0xb
	mov r3, sb
	movs r4, #0x2b
_080580AA:
	lsls r0, r6, #0x18
	asrs r2, r0, #0x18
	adds r1, r3, r2
	ldrb r0, [r1]
	cmp r0, #0x20
	bne _080580C4
	strb r4, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xe
	ble _080580AA
_080580C4:
	movs r6, #0
	mov r4, sb
	ldr r3, _080580FC @ =gUnknown_0868840F
_080580CA:
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	adds r2, r4, r0
	adds r1, r0, r3
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xa
	ble _080580CA
_080580E2:
	ldrh r1, [r5, #0x1c]
	ldr r2, [r5, #0x30]
	adds r0, r2, #0
	adds r0, #0xe6
	cmp r1, r0
	bls _08058100
	subs r1, #0xe6
	subs r1, r1, r2
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #0x12
	lsrs r7, r0, #0x10
	b _08058102
	.align 2, 0
_080580FC: .4byte gUnknown_0868840F
_08058100:
	movs r7, #0
_08058102:
	ldr r2, [sp, #4]
	asrs r0, r2, #0x10
	cmp r0, #0xb4
	ble _08058188
	movs r0, #4
	strh r0, [r5, #0x10]
	movs r6, #6
	strh r6, [r5, #0x12]
	movs r0, #0xa
	strh r0, [r5, #0xe]
	movs r0, #0x32
	lsls r1, r7, #0x10
	asrs r4, r1, #0x10
	subs r0, r0, r4
	strh r0, [r5, #0xa]
	movs r1, #0x50
	strh r1, [r5, #0xc]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, #0xa0
	movs r3, #0x20
	adds r3, r3, r5
	mov sb, r3
	cmp r0, r1
	blt _0805813C
	mov r0, sb
	adds r1, r5, #0
	bl sub_80530CC
_0805813C:
	movs r0, #0
	strh r0, [r5, #0x10]
	strh r6, [r5, #0x12]
	movs r0, #1
	strh r0, [r5, #0xe]
	movs r6, #0xb
	subs r4, #0x32
	movs r7, #8
	rsbs r7, r7, #0
_0805814E:
	lsls r0, r6, #0x18
	asrs r2, r0, #0x18
	mov r3, sb
	adds r1, r3, r2
	ldrb r1, [r1]
	mov r8, r0
	cmp r1, #0x2b
	beq _08058178
	lsls r0, r2, #3
	subs r0, r0, r4
	strh r0, [r5, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r7
	blt _08058178
	adds r0, r2, #0
	adds r0, #0x20
	adds r0, r5, r0
	adds r1, r5, #0
	bl sub_80530CC
_08058178:
	movs r0, #0x80
	lsls r0, r0, #0x11
	add r0, r8
	lsrs r6, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xf
	ble _0805814E
	b _08058332
_08058188:
	cmp r0, #0x2c
	ble _080581FC
	movs r0, #4
	strh r0, [r5, #0x10]
	movs r0, #6
	strh r0, [r5, #0x12]
	movs r0, #0xa
	strh r0, [r5, #0xe]
	movs r0, #0x32
	strh r0, [r5, #0xa]
	movs r0, #0x50
	strh r0, [r5, #0xc]
	adds r4, r5, #0
	adds r4, #0x20
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_80530CC
	movs r6, #0xb
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	mov sb, r4
	lsls r3, r7, #0x10
	cmp r0, #0x2b
	bne _080581D4
_080581BC:
	lsls r0, r6, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r0, r1
	lsrs r6, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xe
	bgt _080581D4
	adds r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0x2b
	beq _080581BC
_080581D4:
	movs r0, #0
	strh r0, [r5, #0x10]
	movs r0, #6
	strh r0, [r5, #0x12]
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0xe]
	lsls r2, r0, #3
	asrs r1, r3, #0x10
	subs r1, #0x32
	subs r2, r2, r1
	strh r2, [r5, #0xa]
	adds r0, #0x20
	adds r0, r5, r0
	adds r1, r5, #0
	bl sub_80530CC
	b _08058332
_080581FC:
	movs r1, #2
	bl Div
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #0x10
	bls _08058210
	movs r2, #0x10
	mov sl, r2
_08058210:
	mov r3, sl
	cmp r3, #0
	bne _08058218
	b _08058332
_08058218:
	movs r4, #0
	str r4, [sp]
	movs r6, #0
	movs r0, #0x20
	adds r0, r0, r5
	mov sb, r0
	cmp r4, sl
	bge _080582B4
_08058228:
	lsls r2, r6, #0x18
	asrs r3, r2, #0x18
	lsls r1, r3, #1
	ldr r4, [sp, #4]
	asrs r0, r4, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r8, r2
	cmp r3, #0xa
	bgt _08058242
	movs r0, #4
	b _08058244
_08058242:
	movs r0, #0
_08058244:
	strh r0, [r5, #0x10]
	movs r0, #6
	strh r0, [r5, #0x12]
	lsls r0, r7, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0xb
	ble _08058262
	ldr r1, [sp]
	lsls r0, r1, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r0, r2
	lsrs r0, r0, #0x18
	str r0, [sp]
	b _080582A6
_08058262:
	mov r3, r8
	asrs r6, r3, #0x18
	cmp r6, #0xa
	ble _08058274
	mov r1, sb
	adds r0, r1, r6
	ldrb r0, [r0]
	cmp r0, #0x2b
	beq _080582A6
_08058274:
	movs r0, #1
	strh r0, [r5, #0xe]
	lsls r1, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r4
	adds r0, #0xff
	subs r0, r0, r1
	movs r1, #0x23
	bl Div
	adds r0, #0x48
	strh r0, [r5, #0xc]
	adds r0, r4, #0
	adds r0, #0x14
	strh r0, [r5, #6]
	lsls r0, r6, #3
	adds r0, #0x2e
	strh r0, [r5, #0xa]
	adds r0, r6, #0
	adds r0, #0x20
	adds r0, r5, r0
	adds r1, r5, #0
	bl sub_8052E40
_080582A6:
	movs r0, #0x80
	lsls r0, r0, #0x11
	add r0, r8
	lsrs r6, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, sl
	blt _08058228
_080582B4:
	ldr r2, [sp]
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xb
	ble _08058312
	movs r6, #0xb
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0x2b
	bne _080582E4
	mov r1, sb
_080582CC:
	lsls r0, r6, #0x18
	movs r3, #0x80
	lsls r3, r3, #0x11
	adds r0, r0, r3
	lsrs r6, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xe
	bgt _080582E4
	adds r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #0x2b
	beq _080582CC
_080582E4:
	movs r0, #0
	strh r0, [r5, #0x10]
	movs r0, #6
	strh r0, [r5, #0x12]
	ldr r4, [sp]
	lsls r1, r4, #0x18
	asrs r1, r1, #0x18
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	subs r1, r1, r0
	strh r1, [r5, #0xe]
	movs r1, #0x50
	strh r1, [r5, #0xc]
	lsls r1, r0, #3
	adds r1, #0x32
	strh r1, [r5, #0xa]
	adds r0, #0x20
	adds r0, r5, r0
	adds r1, r5, #0
	bl sub_80530CC
	movs r0, #0xb
	str r0, [sp]
_08058312:
	movs r0, #4
	strh r0, [r5, #0x10]
	movs r0, #6
	strh r0, [r5, #0x12]
	ldr r1, [sp]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	strh r0, [r5, #0xe]
	movs r0, #0x50
	strh r0, [r5, #0xc]
	movs r0, #0x32
	strh r0, [r5, #0xa]
	mov r0, sb
	adds r1, r5, #0
	bl sub_80530CC
_08058332:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start TaskDestructor_8058344
TaskDestructor_8058344: @ 0x08058344
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x1c]
	bl VramFree
	ldr r0, [r4, #0x20]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0
