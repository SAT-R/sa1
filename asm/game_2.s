.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ --- Start of game/stage/ui.c ---
	thumb_func_start Task_StageUIMain
Task_StageUIMain: @ 0x080536E4
	push {r4, r5, r6, lr}
	sub sp, #0x18
	mov r1, sp
	ldr r0, _08053758 @ =0x0000FFFE
	strh r0, [r1, #0xa]
	adds r0, #1
	strh r0, [r1, #0xc]
	mov r0, sp
	movs r2, #1
	movs r5, #1
	strh r5, [r0, #0xe]
	movs r0, #0x18
	strh r0, [r1, #8]
	movs r0, #3
	strh r0, [r1, #0x10]
	movs r0, #6
	strh r0, [r1, #0x12]
	mov r0, sp
	strb r2, [r0, #0x16]
	ldr r4, _0805375C @ =gUnknown_0865F178
	adds r0, r4, #0
	bl sub_80530CC
	ldr r0, _08053760 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _08053738
	mov r1, sp
	movs r0, #0x90
	strh r0, [r1, #0xc]
	movs r0, #2
	strh r0, [r1, #0xa]
	mov r0, sp
	strh r5, [r0, #0x10]
	ldr r0, _08053764 @ =gSelectedCharacter
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r1, #0x12]
	adds r0, r4, #0
	bl sub_80530CC
_08053738:
	ldr r0, _08053768 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r2, _0805376C @ =gRingCount
	ldrh r1, [r2]
	ldr r0, _08053770 @ =0x000003E7
	cmp r1, r0
	bls _08053774
	movs r0, #0x29
	strb r0, [r6]
	strb r0, [r6, #1]
	strb r0, [r6, #2]
	b _0805379C
	.align 2, 0
_08053758: .4byte 0x0000FFFE
_0805375C: .4byte gUnknown_0865F178
_08053760: .4byte gGameMode
_08053764: .4byte gSelectedCharacter
_08053768: .4byte gCurTask
_0805376C: .4byte gRingCount
_08053770: .4byte 0x000003E7
_08053774:
	ldrh r4, [r2]
	movs r5, #0
_08053778:
	adds r0, r4, #0
	movs r1, #0xa
	bl Div
	adds r3, r0, #0
	movs r0, #2
	subs r0, r0, r5
	adds r0, r6, r0
	lsls r1, r3, #3
	lsls r2, r3, #1
	adds r1, r1, r2
	subs r1, r4, r1
	adds r1, #0x20
	strb r1, [r0]
	adds r4, r3, #0
	adds r5, #1
	cmp r5, #2
	ble _08053778
_0805379C:
	ldr r2, _08053800 @ =gCurTask
	ldr r0, [r2]
	ldrh r0, [r0, #6]
	ldr r1, _08053804 @ =0x03000044
	adds r0, r0, r1
	ldr r1, _08053808 @ =gRingCount
	ldrh r1, [r1]
	strh r1, [r0]
	ldr r0, [r2]
	ldrh r0, [r0, #6]
	ldr r1, _0805380C @ =0x03000010
	adds r6, r0, r1
	movs r0, #0
	strb r0, [r6, #9]
	ldr r0, _08053810 @ =gLevelScore
	ldr r4, [r0]
	movs r5, #8
_080537BE:
	adds r0, r4, #0
	movs r1, #0xa
	bl Div
	adds r3, r0, #0
	adds r0, r6, r5
	lsls r1, r3, #3
	lsls r2, r3, #1
	adds r1, r1, r2
	subs r1, r4, r1
	adds r1, #0x20
	strb r1, [r0]
	adds r4, r3, #0
	subs r5, #1
	cmp r5, #0
	bge _080537BE
	ldr r0, _08053814 @ =gCourseTime
	ldr r0, [r0]
	bl sub_8053A90
	ldr r0, _08053800 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _08053818 @ =0x03000030
	adds r6, r0, r1
	ldr r0, _0805381C @ =gNumLives
	ldrb r0, [r0]
	adds r1, r0, #0
	cmp r1, #9
	bls _08053820
	movs r0, #0x29
	b _0805382A
	.align 2, 0
_08053800: .4byte gCurTask
_08053804: .4byte 0x03000044
_08053808: .4byte gRingCount
_0805380C: .4byte 0x03000010
_08053810: .4byte gLevelScore
_08053814: .4byte gCourseTime
_08053818: .4byte 0x03000030
_0805381C: .4byte gNumLives
_08053820:
	cmp r1, #0
	beq _08053828
	adds r0, #0x1f
	b _0805382A
_08053828:
	movs r0, #0x20
_0805382A:
	strb r0, [r6]
	bl sub_8053BAC
	ldr r0, _08053870 @ =gLoadedSaveGame
	ldrb r0, [r0, #0x1b]
	cmp r0, #1
	bne _08053840
	ldr r0, _08053874 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	beq _080538A8
_08053840:
	ldr r0, _08053878 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08053884
	ldr r4, _0805387C @ =gCourseTime
	ldr r1, [r4]
	ldr r0, _08053880 @ =0x000004AF
	cmp r1, r0
	bhi _080538A8
	adds r0, r1, #0
	movs r1, #0x3c
	bl Mod
	cmp r0, #0
	bne _080538A8
	ldr r0, [r4]
	cmp r0, #0
	beq _080538A8
	movs r0, #0x8b
	bl m4aSongNumStart
	b _080538A8
	.align 2, 0
_08053870: .4byte gLoadedSaveGame
_08053874: .4byte gGameMode
_08053878: .4byte gStageFlags
_0805387C: .4byte gCourseTime
_08053880: .4byte 0x000004AF
_08053884:
	ldr r4, _080538B0 @ =gCourseTime
	ldr r1, [r4]
	ldr r0, _080538B4 @ =0x000087F0
	cmp r1, r0
	bls _080538A8
	adds r0, r1, #0
	movs r1, #0x3c
	bl Mod
	cmp r0, #0
	bne _080538A8
	ldr r1, [r4]
	ldr r0, _080538B8 @ =0x00008C9F
	cmp r1, r0
	bhi _080538A8
	movs r0, #0x8b
	bl m4aSongNumStart
_080538A8:
	add sp, #0x18
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080538B0: .4byte gCourseTime
_080538B4: .4byte 0x000087F0
_080538B8: .4byte 0x00008C9F

	thumb_func_start sub_80538BC
sub_80538BC: @ 0x080538BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	add r5, sp, #0x2c
	movs r0, #0
	strb r0, [r5]
	mov r4, sp
	adds r4, #0x2b
	strb r0, [r4]
	ldr r7, _08053A78 @ =gUiGraphics
	ldr r0, [r7]
	movs r1, #0xe0
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [sp, #0x14]
	ldr r0, [r7, #4]
	str r0, [sp, #0x20]
	ldr r0, _08053A7C @ =0x06010D40
	str r0, [sp, #0xc]
	movs r6, #0xb0
	lsls r6, r6, #2
	str r6, [sp, #0x18]
	movs r0, #0x20
	mov sl, r0
	str r0, [sp, #0x24]
	add r1, sp, #0x28
	mov r8, r1
	movs r0, #6
	strb r0, [r1]
	movs r1, #0x2a
	add r1, sp
	mov sb, r1
	movs r0, #0xd
	strb r0, [r1]
	ldr r0, [r7, #8]
	str r0, [sp, #4]
	mov r1, sp
	ldr r0, [r7, #0xc]
	strb r0, [r1, #8]
	ldr r0, [r7, #0x10]
	strb r0, [r1, #9]
	ldr r0, [r7, #0x14]
	strb r0, [r1, #0xa]
	ldr r0, [r7, #0x18]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r0, #0
	strb r0, [r5]
	strb r0, [r4]
	ldr r0, [r7]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [sp, #0x14]
	ldr r0, [r7, #4]
	str r0, [sp, #0x20]
	ldr r0, _08053A80 @ =0x06010A80
	str r0, [sp, #0xc]
	str r6, [sp, #0x18]
	mov r0, sl
	str r0, [sp, #0x24]
	movs r0, #6
	mov r1, r8
	strb r0, [r1]
	movs r6, #9
	mov r1, sb
	strb r6, [r1]
	ldr r0, [r7, #8]
	str r0, [sp, #4]
	mov r1, sp
	ldr r0, [r7, #0xc]
	strb r0, [r1, #8]
	ldr r0, [r7, #0x10]
	strb r0, [r1, #9]
	ldr r0, [r7, #0x14]
	strb r0, [r1, #0xa]
	ldr r0, [r7, #0x18]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	ldr r0, _08053A84 @ =gSelectedCharacter
	ldrb r2, [r0]
	adds r0, r2, #1
	strb r0, [r5]
	movs r0, #1
	strb r0, [r4]
	ldrb r1, [r5]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldrb r1, [r5]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0x80
	str r0, [sp, #0x18]
	mov r0, sl
	str r0, [sp, #0x24]
	mov r1, r8
	strb r2, [r1]
	ldr r0, _08053A88 @ =0x06010800
	str r0, [sp, #0xc]
	mov r0, sb
	strb r6, [r0]
	ldrb r1, [r5]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r5]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r5]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r5]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r5]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r0, #5
	strb r0, [r5]
	movs r0, #3
	strb r0, [r4]
	adds r0, r7, #0
	adds r0, #0x8c
	ldr r0, [r0]
	str r0, [sp, #0x14]
	adds r0, r7, #0
	adds r0, #0x90
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x18]
	mov r1, sl
	str r1, [sp, #0x24]
	movs r1, #6
	mov r0, r8
	strb r1, [r0]
	ldr r0, _08053A8C @ =0x06010880
	str r0, [sp, #0xc]
	mov r0, sb
	strb r6, [r0]
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r1, sp
	adds r0, r7, #0
	adds r0, #0x98
	ldr r0, [r0]
	strb r0, [r1, #8]
	adds r0, r7, #0
	adds r0, #0x9c
	ldr r0, [r0]
	strb r0, [r1, #9]
	adds r0, r7, #0
	adds r0, #0xa0
	ldr r0, [r0]
	strb r0, [r1, #0xa]
	adds r0, r7, #0
	adds r0, #0xa4
	ldr r0, [r0]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08053A78: .4byte gUiGraphics
_08053A7C: .4byte 0x06010D40
_08053A80: .4byte 0x06010A80
_08053A84: .4byte gSelectedCharacter
_08053A88: .4byte 0x06010800
_08053A8C: .4byte 0x06010880

	thumb_func_start sub_8053A90
sub_8053A90: @ 0x08053A90
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, _08053AB8 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _08053ABC @ =0x03000020
	adds r5, r0, r1
	ldr r0, _08053AC0 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08053ACC
	ldr r0, _08053AC4 @ =gCourseTime
	ldr r1, [r0]
	ldr r0, _08053AC8 @ =0x00000E0F
	movs r6, #0
	cmp r1, r0
	bhi _08053AE6
	b _08053AD8
	.align 2, 0
_08053AB8: .4byte gCurTask
_08053ABC: .4byte 0x03000020
_08053AC0: .4byte gStageFlags
_08053AC4: .4byte gCourseTime
_08053AC8: .4byte 0x00000E0F
_08053ACC:
	ldr r0, _08053B14 @ =gCourseTime
	ldr r1, [r0]
	ldr r0, _08053B18 @ =0x00007E90
	movs r6, #0
	cmp r1, r0
	bls _08053AE6
_08053AD8:
	ldr r0, _08053B1C @ =gStageTime
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08053AE6
	movs r6, #0xb
_08053AE6:
	ldr r0, _08053B20 @ =gLoadedSaveGame
	ldrb r0, [r0, #0x1b]
	cmp r0, #1
	bne _08053AF8
	ldr r0, _08053B24 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _08053AF8
	movs r6, #0
_08053AF8:
	ldr r0, _08053B28 @ =0x00008C9F
	cmp r7, r0
	bls _08053B2C
	adds r1, r6, #0
	adds r1, #0x29
	strb r1, [r5, #6]
	strb r1, [r5, #5]
	strb r1, [r5, #3]
	adds r0, r6, #0
	adds r0, #0x25
	strb r0, [r5, #2]
	strb r1, [r5]
	b _08053B8E
	.align 2, 0
_08053B14: .4byte gCourseTime
_08053B18: .4byte 0x00007E90
_08053B1C: .4byte gStageTime
_08053B20: .4byte gLoadedSaveGame
_08053B24: .4byte gGameMode
_08053B28: .4byte 0x00008C9F
_08053B2C:
	adds r0, r7, #0
	movs r1, #0x3c
	bl Div
	adds r4, r0, #0
	movs r1, #0x3c
	bl Div
	ldr r2, _08053B9C @ =sZoneTimeSecondsTable
	lsls r0, r0, #1
	adds r1, r0, r2
	movs r3, #0
	ldrsh r1, [r1, r3]
	subs r4, r4, r1
	lsls r4, r4, #1
	adds r2, r4, r2
	movs r1, #0
	ldrsh r2, [r2, r1]
	subs r2, r7, r2
	ldr r1, _08053BA0 @ =sZoneTimeMinutesTable
	adds r1, r0, r1
	ldrh r1, [r1]
	subs r2, r2, r1
	lsls r2, r2, #1
	ldr r3, _08053BA4 @ =gUnknown_0865EFF4
	adds r1, r2, #1
	adds r1, r1, r3
	ldrb r1, [r1]
	adds r1, r6, r1
	strb r1, [r5, #6]
	adds r2, r2, r3
	ldrb r1, [r2]
	adds r1, r6, r1
	strb r1, [r5, #5]
	ldr r2, _08053BA8 @ =gUnknown_0865F06C
	adds r1, r4, #1
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r1, r6, r1
	strb r1, [r5, #3]
	adds r1, r4, r2
	ldrb r1, [r1]
	adds r1, r6, r1
	strb r1, [r5, #2]
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r0, r6, r0
	strb r0, [r5]
_08053B8E:
	adds r0, r6, #0
	adds r0, #0x2a
	strb r0, [r5, #1]
	strb r0, [r5, #4]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08053B9C: .4byte sZoneTimeSecondsTable
_08053BA0: .4byte sZoneTimeMinutesTable
_08053BA4: .4byte gUnknown_0865EFF4
_08053BA8: .4byte gUnknown_0865F06C

	thumb_func_start sub_8053BAC
sub_8053BAC: @ 0x08053BAC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x18
	ldr r0, _08053C24 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r1, _08053C28 @ =0x03000048
	mov r8, r1
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r6, r0, #0x18
	lsrs r7, r6, #0x18
	mov r0, sp
	movs r2, #0
	movs r1, #5
	mov ip, r1
	mov r1, ip
	strh r1, [r0, #0xc]
	mov r1, sp
	movs r0, #6
	strh r0, [r1, #0x12]
	movs r0, #0x10
	strh r0, [r1, #8]
	mov r0, sp
	strh r2, [r0, #0x10]
	movs r3, #1
	strb r3, [r0, #0x16]
	ldr r0, _08053C2C @ =gRingCount
	ldrh r2, [r0]
	cmp r2, #9
	bhi _08053C3C
	mov r0, sp
	movs r1, #9
	strh r1, [r0, #0xa]
	strh r3, [r0, #0xe]
	cmp r2, #0
	bne _08053C34
	adds r4, r7, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsrs r0, r6, #0x1b
	ldr r1, _08053C30 @ =gUnknown_0865F174
	adds r0, r0, r1
	mov r1, sp
	bl sub_80530CC
	movs r0, #0x1f
	ands r4, r0
	mov r1, sb
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	add r0, r8
	strh r4, [r0]
	b _08053C6C
	.align 2, 0
_08053C24: .4byte gCurTask
_08053C28: .4byte 0x03000048
_08053C2C: .4byte gRingCount
_08053C30: .4byte gUnknown_0865F174
_08053C34:
	ldr r1, _08053C38 @ =0x03000002
	b _08053C4E
	.align 2, 0
_08053C38: .4byte 0x03000002
_08053C3C:
	cmp r2, #0x63
	bhi _08053C5C
	mov r0, sp
	mov r1, ip
	strh r1, [r0, #0xa]
	mov r1, sp
	movs r0, #2
	strh r0, [r1, #0xe]
	ldr r1, _08053C58 @ =0x03000001
_08053C4E:
	adds r0, r4, r1
	mov r1, sp
	bl sub_80530CC
	b _08053C6C
	.align 2, 0
_08053C58: .4byte 0x03000001
_08053C5C:
	mov r0, sp
	strh r3, [r0, #0xa]
	mov r1, sp
	movs r0, #3
	strh r0, [r1, #0xe]
	adds r0, r5, #0
	bl sub_80530CC
_08053C6C:
	adds r5, #0x10
	mov r0, sp
	ldr r1, _08053CB4 @ =0x0000FFFE
	strh r1, [r0, #0xc]
	movs r3, #0
	ldrb r0, [r5]
	ldr r1, _08053CB8 @ =gLevelScore
	cmp r0, #0x20
	bne _08053C90
_08053C7E:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #9
	bhi _08053C90
	adds r0, r5, r3
	ldrb r0, [r0]
	cmp r0, #0x20
	beq _08053C7E
_08053C90:
	ldr r0, [r1]
	cmp r0, #0
	beq _08053CBC
	mov r0, sp
	movs r1, #9
	subs r1, r1, r3
	strh r1, [r0, #0xe]
	mov r2, sp
	lsls r1, r1, #3
	movs r0, #0x51
	subs r0, r0, r1
	strh r0, [r2, #0xa]
	adds r0, r5, r3
	mov r1, sp
	bl sub_80530CC
	b _08053CCC
	.align 2, 0
_08053CB4: .4byte 0x0000FFFE
_08053CB8: .4byte gLevelScore
_08053CBC:
	mov r1, sp
	movs r0, #1
	strh r0, [r1, #0xe]
	movs r0, #0x49
	strh r0, [r1, #0xa]
	ldr r0, _08053D10 @ =gUnknown_0865F178
	bl sub_80530CC
_08053CCC:
	adds r5, #0x10
	mov r1, sp
	movs r0, #0x19
	strh r0, [r1, #0xa]
	movs r0, #0xc
	strh r0, [r1, #0xc]
	movs r0, #7
	strh r0, [r1, #0xe]
	adds r0, r5, #0
	bl sub_80530CC
	ldr r0, _08053D14 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _08053D00
	adds r5, #0x10
	mov r1, sp
	movs r0, #0x16
	strh r0, [r1, #0xa]
	movs r0, #0x8f
	strh r0, [r1, #0xc]
	movs r0, #1
	strh r0, [r1, #0xe]
	adds r0, r5, #0
	bl sub_80530CC
_08053D00:
	add sp, #0x18
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08053D10: .4byte gUnknown_0865F178
_08053D14: .4byte gGameMode

	thumb_func_start sub_8053D18
sub_8053D18: @ 0x08053D18
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _08053D64 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	ldr r2, _08053D68 @ =0x03000048
	adds r0, r1, r2
	ldrb r7, [r0]
	ldr r4, _08053D6C @ =0x0300004C
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, #1
	lsls r2, r0, #0x10
	strh r0, [r1]
	movs r4, #0x72
	mov sl, r4
	lsrs r0, r2, #0x10
	mov sb, r0
	asrs r2, r2, #0x10
	adds r1, r2, #0
	subs r1, #0xa
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x13
	bhi _08053D70
	lsls r0, r1, #6
	movs r1, #0x14
	bl Div
	mov r1, sp
	subs r0, #0x46
	b _08053D84
	.align 2, 0
_08053D64: .4byte gCurTask
_08053D68: .4byte 0x03000048
_08053D6C: .4byte 0x0300004C
_08053D70:
	cmp r2, #0x1d
	ble _08053D80
	mov r1, sp
	ldr r0, _08053D7C @ =0x0000FFFA
	b _08053D84
	.align 2, 0
_08053D7C: .4byte 0x0000FFFA
_08053D80:
	mov r1, sp
	ldr r0, _08053DDC @ =0x0000FFBA
_08053D84:
	strh r0, [r1, #0xc]
	mov r1, sp
	movs r4, #0x5a
	lsls r4, r4, #0x10
	asrs r0, r4, #0x10
	adds r0, #4
	strh r0, [r1, #0xa]
	movs r2, #1
	movs r0, #1
	strh r0, [r1, #0xe]
	movs r0, #0x18
	strh r0, [r1, #8]
	movs r0, #3
	strh r0, [r1, #0x10]
	movs r0, #0xa
	strh r0, [r1, #0x12]
	mov r0, sp
	strb r2, [r0, #0x16]
	ldr r0, _08053DE0 @ =gUnknown_0865F178
	bl sub_80530CC
	ldr r0, _08053DE4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r2, _08053DE8 @ =gSpecialStageCollectedRings
	ldrh r1, [r2]
	ldr r0, _08053DEC @ =0x000003E7
	mov r8, r4
	cmp r1, r0
	bls _08053DF0
	movs r0, #0x29
	strb r0, [r6]
	strb r0, [r6, #1]
	strb r0, [r6, #2]
	mov r1, sb
	lsls r1, r1, #0x10
	mov sb, r1
	mov r2, sl
	lsls r2, r2, #0x10
	mov sl, r2
	b _08053E24
	.align 2, 0
_08053DDC: .4byte 0x0000FFBA
_08053DE0: .4byte gUnknown_0865F178
_08053DE4: .4byte gCurTask
_08053DE8: .4byte gSpecialStageCollectedRings
_08053DEC: .4byte 0x000003E7
_08053DF0:
	ldrh r4, [r2]
	movs r5, #0
	mov r0, sb
	lsls r0, r0, #0x10
	mov sb, r0
	mov r1, sl
	lsls r1, r1, #0x10
	mov sl, r1
_08053E00:
	adds r0, r4, #0
	movs r1, #0xa
	bl Div
	adds r3, r0, #0
	movs r0, #2
	subs r0, r0, r5
	adds r0, r6, r0
	lsls r1, r3, #3
	lsls r2, r3, #1
	adds r1, r1, r2
	subs r1, r4, r1
	adds r1, #0x20
	strb r1, [r0]
	adds r4, r3, #0
	adds r5, #1
	cmp r5, #2
	ble _08053E00
_08053E24:
	ldr r0, _08053E54 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r2, _08053E58 @ =0x03000044
	adds r0, r0, r2
	ldr r1, _08053E5C @ =gSpecialStageCollectedRings
	ldrh r1, [r1]
	strh r1, [r0]
	mov r4, sb
	asrs r2, r4, #0x10
	adds r1, r2, #0
	subs r1, #0x14
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x13
	bhi _08053E60
	lsls r0, r1, #6
	movs r1, #0x14
	bl Div
	mov r1, sp
	subs r0, #0x40
	b _08053E6E
	.align 2, 0
_08053E54: .4byte gCurTask
_08053E58: .4byte 0x03000044
_08053E5C: .4byte gSpecialStageCollectedRings
_08053E60:
	cmp r2, #0x27
	ble _08053E6A
	mov r1, sp
	movs r0, #0
	b _08053E6E
_08053E6A:
	mov r1, sp
	ldr r0, _08053EC4 @ =0x0000FFC0
_08053E6E:
	strh r0, [r1, #0xc]
	mov r1, sp
	movs r2, #0
	movs r0, #6
	strh r0, [r1, #0x12]
	movs r0, #0x10
	strh r0, [r1, #8]
	mov r0, sp
	strh r2, [r0, #0x10]
	movs r3, #1
	strb r3, [r0, #0x16]
	ldr r0, _08053EC8 @ =gSpecialStageCollectedRings
	ldrh r2, [r0]
	cmp r2, #9
	bhi _08053EE2
	mov r0, sp
	mov r4, r8
	asrs r1, r4, #0x10
	adds r1, #0xc
	strh r1, [r0, #0xa]
	strh r3, [r0, #0xe]
	cmp r2, #0
	bne _08053ED8
	adds r0, r7, #0
	adds r1, r0, #1
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsrs r0, r0, #3
	ldr r1, _08053ECC @ =gUnknown_0865F174
	adds r0, r0, r1
	mov r1, sp
	bl sub_80530CC
	movs r0, #0x1f
	ands r7, r0
	ldr r0, _08053ED0 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _08053ED4 @ =0x03000048
	adds r0, r0, r1
	strh r7, [r0]
	b _08053F10
	.align 2, 0
_08053EC4: .4byte 0x0000FFC0
_08053EC8: .4byte gSpecialStageCollectedRings
_08053ECC: .4byte gUnknown_0865F174
_08053ED0: .4byte gCurTask
_08053ED4: .4byte 0x03000048
_08053ED8:
	adds r0, r6, #2
	mov r1, sp
	bl sub_80530CC
	b _08053F10
_08053EE2:
	cmp r2, #0x63
	bhi _08053EFC
	mov r1, sp
	mov r2, r8
	asrs r0, r2, #0x10
	adds r0, #8
	strh r0, [r1, #0xa]
	movs r0, #2
	strh r0, [r1, #0xe]
	adds r0, r6, #1
	bl sub_80530CC
	b _08053F10
_08053EFC:
	mov r1, sp
	mov r4, r8
	asrs r0, r4, #0x10
	adds r0, #4
	strh r0, [r1, #0xa]
	movs r0, #3
	strh r0, [r1, #0xe]
	adds r0, r6, #0
	bl sub_80530CC
_08053F10:
	ldr r0, _08053F30 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _08053F34 @ =0x03000010
	adds r6, r0, r1
	ldr r2, _08053F38 @ =gUnknown_03005154
	ldrh r1, [r2]
	ldr r0, _08053F3C @ =0x000003E7
	cmp r1, r0
	bls _08053F40
	movs r0, #0x29
	strb r0, [r6]
	strb r0, [r6, #1]
	strb r0, [r6, #2]
	b _08053F68
	.align 2, 0
_08053F30: .4byte gCurTask
_08053F34: .4byte 0x03000010
_08053F38: .4byte gUnknown_03005154
_08053F3C: .4byte 0x000003E7
_08053F40:
	ldrh r4, [r2]
	movs r5, #0
_08053F44:
	adds r0, r4, #0
	movs r1, #0xa
	bl Div
	adds r3, r0, #0
	movs r0, #2
	subs r0, r0, r5
	adds r0, r6, r0
	lsls r1, r3, #3
	lsls r2, r3, #1
	adds r1, r1, r2
	subs r1, r4, r1
	adds r1, #0x20
	strb r1, [r0]
	adds r4, r3, #0
	adds r5, #1
	cmp r5, #2
	ble _08053F44
_08053F68:
	ldr r0, _08053F98 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r2, _08053F9C @ =0x03000044
	adds r0, r0, r2
	ldr r1, _08053FA0 @ =gUnknown_03005154
	ldrh r1, [r1]
	strh r1, [r0]
	mov r4, sb
	asrs r2, r4, #0x10
	adds r1, r2, #0
	subs r1, #0xf
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x13
	bhi _08053FA4
	lsls r0, r1, #6
	movs r1, #0x14
	bl Div
	mov r1, sp
	subs r0, #0x34
	b _08053FB2
	.align 2, 0
_08053F98: .4byte gCurTask
_08053F9C: .4byte 0x03000044
_08053FA0: .4byte gUnknown_03005154
_08053FA4:
	cmp r2, #0x22
	ble _08053FAE
	mov r1, sp
	movs r0, #0xc
	b _08053FB2
_08053FAE:
	mov r1, sp
	ldr r0, _0805400C @ =0x0000FFCC
_08053FB2:
	strh r0, [r1, #0xc]
	mov r1, sp
	movs r2, #0
	movs r0, #6
	strh r0, [r1, #0x12]
	movs r0, #0x10
	strh r0, [r1, #8]
	mov r0, sp
	strh r2, [r0, #0x10]
	movs r3, #1
	strb r3, [r0, #0x16]
	ldr r0, _08054010 @ =gUnknown_03005154
	ldrh r2, [r0]
	cmp r2, #9
	bhi _0805402A
	mov r0, sp
	mov r4, sl
	asrs r1, r4, #0x10
	adds r1, #0xc
	strh r1, [r0, #0xa]
	strh r3, [r0, #0xe]
	cmp r2, #0
	bne _08054020
	adds r0, r7, #0
	adds r1, r0, #1
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsrs r0, r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08054014 @ =gUnknown_0865F174
	adds r0, r0, r1
	mov r1, sp
	bl sub_80530CC
	movs r0, #0x1f
	ands r7, r0
	ldr r0, _08054018 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _0805401C @ =0x03000048
	adds r0, r0, r1
	strh r7, [r0]
	b _08054058
	.align 2, 0
_0805400C: .4byte 0x0000FFCC
_08054010: .4byte gUnknown_03005154
_08054014: .4byte gUnknown_0865F174
_08054018: .4byte gCurTask
_0805401C: .4byte 0x03000048
_08054020:
	adds r0, r6, #2
	mov r1, sp
	bl sub_80530CC
	b _08054058
_0805402A:
	cmp r2, #0x63
	bhi _08054044
	mov r1, sp
	mov r2, sl
	asrs r0, r2, #0x10
	adds r0, #8
	strh r0, [r1, #0xa]
	movs r0, #2
	strh r0, [r1, #0xe]
	adds r0, r6, #1
	bl sub_80530CC
	b _08054058
_08054044:
	mov r1, sp
	mov r4, sl
	asrs r0, r4, #0x10
	adds r0, #4
	strh r0, [r1, #0xa]
	movs r0, #3
	strh r0, [r1, #0xe]
	adds r0, r6, #0
	bl sub_80530CC
_08054058:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8054068
sub_8054068: @ 0x08054068
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	add r7, sp, #0x2c
	movs r5, #0
	strb r5, [r7]
	movs r0, #0x2b
	add r0, sp
	mov sl, r0
	strb r5, [r0]
	ldr r4, _0805418C @ =gUiGraphics
	ldr r0, [r4]
	movs r1, #0xf8
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [sp, #0x14]
	ldr r0, [r4, #4]
	str r0, [sp, #0x20]
	ldr r0, _08054190 @ =0x060178A0
	str r0, [sp, #0xc]
	movs r0, #0xc0
	str r0, [sp, #0x18]
	movs r2, #0x20
	str r2, [sp, #0x24]
	add r0, sp, #0x28
	mov r8, r0
	movs r6, #6
	strb r6, [r0]
	movs r1, #0x2a
	add r1, sp
	mov sb, r1
	movs r0, #9
	strb r0, [r1]
	ldr r0, [r4, #8]
	str r0, [sp, #4]
	mov r1, sp
	ldr r0, [r4, #0xc]
	strb r0, [r1, #8]
	ldr r0, [r4, #0x10]
	strb r0, [r1, #9]
	ldr r0, [r4, #0x14]
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x18]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	strb r5, [r7]
	mov r2, sl
	strb r5, [r2]
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [sp, #0x14]
	ldr r0, [r4, #4]
	str r0, [sp, #0x20]
	ldr r0, _08054194 @ =0x060175E0
	str r0, [sp, #0xc]
	movs r0, #0xb0
	lsls r0, r0, #2
	str r0, [sp, #0x18]
	movs r2, #0x20
	str r2, [sp, #0x24]
	mov r0, r8
	strb r6, [r0]
	movs r5, #0xd
	mov r1, sb
	strb r5, [r1]
	ldr r0, [r4, #8]
	str r0, [sp, #4]
	mov r1, sp
	ldr r0, [r4, #0xc]
	strb r0, [r1, #8]
	ldr r0, [r4, #0x10]
	strb r0, [r1, #9]
	ldr r0, [r4, #0x14]
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x18]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r0, #0x2e
	strb r0, [r7]
	movs r0, #3
	mov r2, sl
	strb r0, [r2]
	movs r1, #0xa1
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldr r2, _08054198 @ =0x0000050C
	adds r0, r4, r2
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [sp, #0x18]
	movs r1, #0x20
	str r1, [sp, #0x24]
	movs r0, #0xa
	mov r2, r8
	strb r0, [r2]
	ldr r0, _0805419C @ =0x06017BE0
	str r0, [sp, #0xc]
	mov r0, sb
	strb r5, [r0]
	movs r1, #0xa2
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r1, sp
	ldr r2, _080541A0 @ =0x00000514
	adds r0, r4, r2
	ldr r0, [r0]
	strb r0, [r1, #8]
	adds r2, #4
	adds r0, r4, r2
	ldr r0, [r0]
	strb r0, [r1, #9]
	adds r2, #4
	adds r0, r4, r2
	ldr r0, [r0]
	strb r0, [r1, #0xa]
	movs r0, #0xa4
	lsls r0, r0, #3
	adds r4, r4, r0
	ldr r0, [r4]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805418C: .4byte gUiGraphics
_08054190: .4byte 0x060178A0
_08054194: .4byte 0x060175E0
_08054198: .4byte 0x0000050C
_0805419C: .4byte 0x06017BE0
_080541A0: .4byte 0x00000514

	thumb_func_start CreateStageUI
CreateStageUI: @ 0x080541A4
	push {r4, lr}
	sub sp, #4
	movs r1, #0
	movs r4, #0
	ldr r0, _080541E4 @ =Task_StageUIMain
	movs r2, #0x86
	lsls r2, r2, #6
	str r1, [sp]
	movs r1, #0x50
	movs r3, #0
	bl TaskCreate
	adds r1, r0, #0
	ldrh r0, [r1, #6]
	ldr r2, _080541E8 @ =0x03000040
	adds r0, r0, r2
	strh r4, [r0]
	ldrh r0, [r1, #6]
	ldr r1, _080541EC @ =0x03000020
	adds r4, r0, r1
	movs r0, #0x2a
	strb r0, [r4, #1]
	strb r0, [r4, #4]
	bl sub_8053674
	bl sub_80538BC
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080541E4: .4byte Task_StageUIMain
_080541E8: .4byte 0x03000040
_080541EC: .4byte 0x03000020

	thumb_func_start sub_80541F0
sub_80541F0: @ 0x080541F0
	push {r4, lr}
	sub sp, #4
	movs r1, #0
	ldr r0, _0805422C @ =sub_8053D18
	movs r2, #0x8c
	lsls r2, r2, #5
	movs r4, #0
	str r1, [sp]
	movs r1, #0x50
	movs r3, #0
	bl TaskCreate
	adds r1, r0, #0
	ldrh r0, [r1, #6]
	ldr r2, _08054230 @ =0x03000040
	adds r0, r0, r2
	strh r4, [r0]
	ldrh r0, [r1, #6]
	ldr r1, _08054234 @ =0x0300004C
	adds r0, r0, r1
	strh r4, [r0]
	bl sub_8053674
	bl sub_8054068
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805422C: .4byte sub_8053D18
_08054230: .4byte 0x03000040
_08054234: .4byte 0x0300004C

    thumb_func_start sub_8054238
sub_8054238: @ 0x08054238
    bx lr
    .align 2, 0

	thumb_func_start sub_805423C
sub_805423C: @ 0x0805423C
	push {r4, r5, lr}
	adds r3, r0, #0
	movs r1, #2
	ldrsh r0, [r3, r1]
	cmp r0, #0
	beq _08054258
	ldr r0, _08054254 @ =gDispCnt
	ldrh r1, [r0]
	movs r4, #0x80
	lsls r4, r4, #7
	adds r2, r4, #0
	b _08054262
	.align 2, 0
_08054254: .4byte gDispCnt
_08054258:
	ldr r0, _08054280 @ =gDispCnt
	ldrh r1, [r0]
	movs r5, #0x80
	lsls r5, r5, #6
	adds r2, r5, #0
_08054262:
	orrs r1, r2
	strh r1, [r0]
	ldrb r1, [r3, #0xa]
	movs r2, #1
	ands r2, r1
	cmp r2, #0
	beq _0805428C
	ldr r0, _08054284 @ =gBldRegs
	ldr r1, _08054288 @ =0x00003F3F
	strh r1, [r0]
	movs r1, #0x10
	strh r1, [r0, #2]
	adds r4, r0, #0
	b _080542CA
	.align 2, 0
_08054280: .4byte gDispCnt
_08054284: .4byte gBldRegs
_08054288: .4byte 0x00003F3F
_0805428C:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080542A4
	ldr r0, _0805429C @ =gBldRegs
	ldr r1, _080542A0 @ =0x0000203F
	b _080542B0
	.align 2, 0
_0805429C: .4byte gBldRegs
_080542A0: .4byte 0x0000203F
_080542A4:
	lsls r0, r1, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _080542BC
	ldr r0, _080542B8 @ =gBldRegs
	movs r1, #0xf
_080542B0:
	strh r1, [r0]
	strh r2, [r0, #2]
	adds r4, r0, #0
	b _080542CA
	.align 2, 0
_080542B8: .4byte gBldRegs
_080542BC:
	movs r0, #8
	ands r0, r1
	ldr r4, _080542E8 @ =gBldRegs
	cmp r0, #0
	beq _080542CA
	ldr r0, _080542EC @ =0x00003F3F
	strh r0, [r4]
_080542CA:
	movs r1, #2
	ldrsh r0, [r3, r1]
	cmp r0, #0
	beq _080542F4
	ldr r1, _080542F0 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r1, #2]
	movs r0, #0xa0
	strh r0, [r1, #6]
	ldrh r2, [r1, #8]
	movs r5, #0xfc
	lsls r5, r5, #6
	adds r0, r5, #0
	b _08054302
	.align 2, 0
_080542E8: .4byte gBldRegs
_080542EC: .4byte 0x00003F3F
_080542F0: .4byte gWinRegs
_080542F4:
	ldr r1, _08054320 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldrh r2, [r1, #8]
	movs r0, #0x3f
_08054302:
	orrs r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldrh r1, [r3, #4]
	movs r0, #0xc
	ands r0, r1
	adds r2, r1, #0
	cmp r0, #0
	beq _08054324
	ldrh r1, [r4]
	movs r0, #0x80
	b _08054328
	.align 2, 0
_08054320: .4byte gWinRegs
_08054324:
	ldrh r1, [r4]
	movs r0, #0xc0
_08054328:
	orrs r0, r1
	strh r0, [r4]
	movs r0, #5
	ands r0, r2
	cmp r0, #0
	beq _0805433C
	ldrh r0, [r3, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	b _08054346
_0805433C:
	ldrh r1, [r3, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	movs r0, #0x20
	subs r0, r0, r1
_08054346:
	strh r0, [r4, #4]
	ldrh r2, [r3, #6]
	adds r1, r4, #0
	ldrh r0, [r1, #4]
	cmp r0, #0x1f
	bls _08054356
	movs r0, #0x20
	strh r0, [r1, #4]
_08054356:
	ldrh r0, [r4, #4]
	lsrs r0, r0, #1
	strh r0, [r4, #4]
	ldrh r4, [r3]
	movs r0, #0
	ldrsh r1, [r3, r0]
	cmp r1, #0
	beq _0805437C
	ldrh r2, [r3, #8]
	movs r5, #8
	ldrsh r0, [r3, r5]
	cmp r1, r0
	blt _08054374
	subs r0, r4, r2
	b _08054376
_08054374:
	movs r0, #0
_08054376:
	strh r0, [r3]
	movs r0, #0
	b _0805439C
_0805437C:
	ldrh r0, [r3, #8]
	adds r0, r2, r0
	strh r0, [r3, #6]
	lsls r0, r0, #0x10
	ldr r1, _08054390 @ =0x1FFF0000
	cmp r0, r1
	bgt _08054394
	movs r0, #0
	b _0805439C
	.align 2, 0
_08054390: .4byte 0x1FFF0000
_08054394:
	movs r0, #0x80
	lsls r0, r0, #6
	strh r0, [r3, #6]
	movs r0, #1
_0805439C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80543A4
sub_80543A4: @ 0x080543A4
	push {r4, r5, lr}
	adds r3, r0, #0
	movs r1, #2
	ldrsh r0, [r3, r1]
	cmp r0, #0
	beq _080543C0
	ldr r0, _080543BC @ =gDispCnt
	ldrh r1, [r0]
	movs r4, #0x80
	lsls r4, r4, #7
	adds r2, r4, #0
	b _080543CA
	.align 2, 0
_080543BC: .4byte gDispCnt
_080543C0:
	ldr r0, _080543E8 @ =gDispCnt
	ldrh r1, [r0]
	movs r5, #0x80
	lsls r5, r5, #6
	adds r2, r5, #0
_080543CA:
	orrs r1, r2
	strh r1, [r0]
	ldrb r1, [r3, #0xa]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080543F4
	ldr r0, _080543EC @ =gBldRegs
	ldr r1, _080543F0 @ =0x00003F3F
	strh r1, [r0]
	movs r1, #0x10
	strh r1, [r0, #2]
	adds r4, r0, #0
	b _08054404
	.align 2, 0
_080543E8: .4byte gDispCnt
_080543EC: .4byte gBldRegs
_080543F0: .4byte 0x00003F3F
_080543F4:
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
	ldr r4, _08054420 @ =gBldRegs
	cmp r1, #0
	bne _08054404
	movs r0, #0xf
	strh r0, [r4]
	strh r1, [r4, #2]
_08054404:
	movs r1, #2
	ldrsh r0, [r3, r1]
	cmp r0, #0
	beq _08054428
	ldr r1, _08054424 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r1, #2]
	movs r0, #0xa0
	strh r0, [r1, #6]
	ldrh r2, [r1, #8]
	movs r5, #0xfc
	lsls r5, r5, #6
	adds r0, r5, #0
	b _08054436
	.align 2, 0
_08054420: .4byte gBldRegs
_08054424: .4byte gWinRegs
_08054428:
	ldr r1, _08054454 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldrh r2, [r1, #8]
	movs r0, #0x3f
_08054436:
	orrs r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldrh r1, [r3, #4]
	movs r0, #0xc
	ands r0, r1
	adds r2, r1, #0
	cmp r0, #0
	beq _08054458
	ldrh r1, [r4]
	movs r0, #0x80
	b _0805445C
	.align 2, 0
_08054454: .4byte gWinRegs
_08054458:
	ldrh r1, [r4]
	movs r0, #0xc0
_0805445C:
	orrs r0, r1
	strh r0, [r4]
	movs r0, #5
	ands r0, r2
	cmp r0, #0
	beq _08054470
	ldrh r0, [r3, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	b _0805447A
_08054470:
	ldrh r1, [r3, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	movs r0, #0x20
	subs r0, r0, r1
_0805447A:
	strh r0, [r4, #4]
	adds r1, r4, #0
	ldrh r0, [r1, #4]
	cmp r0, #0x1f
	bls _08054488
	movs r0, #0x20
	strh r0, [r1, #4]
_08054488:
	ldrh r0, [r4, #4]
	lsrs r0, r0, #1
	strh r0, [r4, #4]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8054494
sub_8054494: @ 0x08054494
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08054528 @ =sub_8054540
	movs r1, #0x80
	lsls r1, r1, #6
	mov r8, r1
	movs r5, #0
	str r5, [sp]
	movs r1, #0x3c
	mov r2, r8
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r3, r1
	ldr r0, [r4, #0xc]
	lsls r0, r0, #8
	str r0, [r1, #0x30]
	ldr r0, [r4, #0x10]
	lsls r0, r0, #8
	str r0, [r1, #0x34]
	movs r6, #0
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r1, #0x38]
	ldr r0, _0805452C @ =0x0300003A
	adds r2, r3, r0
	movs r0, #1
	strb r0, [r2]
	ldr r0, [r4, #0xc]
	strh r0, [r1, #0x16]
	ldr r0, [r4, #0x10]
	strh r0, [r1, #0x18]
	ldr r0, [r4]
	lsls r0, r0, #5
	ldr r2, _08054530 @ =0x06010000
	adds r0, r0, r2
	str r0, [r1, #4]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r1, #0x1a]
	strh r5, [r1, #8]
	ldr r0, [r4, #4]
	strh r0, [r1, #0xa]
	ldr r2, [r4, #8]
	ldr r4, _08054534 @ =0x03000020
	adds r0, r3, r4
	strb r2, [r0]
	strh r5, [r1, #0x14]
	strh r5, [r1, #0x1c]
	ldr r0, _08054538 @ =0x03000021
	adds r2, r3, r0
	movs r0, #0xff
	strb r0, [r2]
	adds r4, #2
	adds r2, r3, r4
	movs r0, #0x10
	strb r0, [r2]
	ldr r0, _0805453C @ =0x03000025
	adds r3, r3, r0
	strb r6, [r3]
	mov r2, r8
	str r2, [r1, #0x10]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08054528: .4byte sub_8054540
_0805452C: .4byte 0x0300003A
_08054530: .4byte 0x06010000
_08054534: .4byte 0x03000020
_08054538: .4byte 0x03000021
_0805453C: .4byte 0x03000025

	thumb_func_start sub_8054540
sub_8054540: @ 0x08054540
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0805457C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r7, r6, #0
	ldr r5, [r6, #0x30]
	ldr r0, [r6, #0x34]
	mov r8, r0
	ldr r0, _08054580 @ =0x0300003A
	adds r2, r1, r0
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _08054584
	ldrh r0, [r6, #0x38]
	adds r0, #6
	strh r0, [r6, #0x38]
	lsls r0, r0, #0x10
	movs r1, #0xa0
	lsls r1, r1, #0x12
	cmp r0, r1
	ble _08054596
	movs r0, #0
	b _08054594
	.align 2, 0
_0805457C: .4byte gCurTask
_08054580: .4byte 0x0300003A
_08054584:
	ldrh r0, [r6, #0x38]
	subs r0, #6
	strh r0, [r6, #0x38]
	lsls r0, r0, #0x10
	ldr r1, _08054610 @ =0x01FF0000
	cmp r0, r1
	bgt _08054596
	movs r0, #1
_08054594:
	strb r0, [r2]
_08054596:
	ldr r1, _08054614 @ =gSineTable
	mov sb, r1
	ldrh r1, [r7, #0x38]
	ldr r4, _08054618 @ =0x000003FF
	adds r0, r4, #0
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	add r0, sb
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0x14
	bl Div
	adds r5, r5, r0
	ldrh r0, [r7, #0x38]
	ands r4, r0
	lsls r4, r4, #1
	add r4, sb
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r1, #0x14
	bl Div
	add r8, r0
	str r5, [r7, #0x30]
	mov r0, r8
	str r0, [r7, #0x34]
	asrs r0, r5, #8
	ldr r3, _0805461C @ =gCamera
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r6, #0x16]
	mov r1, r8
	asrs r2, r1, #8
	ldrh r1, [r3, #2]
	subs r2, r2, r1
	strh r2, [r6, #0x18]
	adds r0, #0x20
	lsls r0, r0, #0x10
	movs r1, #0x98
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08054604
	movs r1, #0x18
	ldrsh r0, [r6, r1]
	adds r0, #0x20
	cmp r0, #0
	blt _08054604
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xc0
	ble _08054624
_08054604:
	ldr r0, _08054620 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08054630
	.align 2, 0
_08054610: .4byte 0x01FF0000
_08054614: .4byte gSineTable
_08054618: .4byte 0x000003FF
_0805461C: .4byte gCamera
_08054620: .4byte gCurTask
_08054624:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_08054630:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_805463C
sub_805463C: @ 0x0805463C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _080546DC @ =sub_80546F8
	movs r1, #0x80
	lsls r1, r1, #6
	mov r8, r1
	movs r5, #0
	str r5, [sp]
	movs r1, #0x40
	mov r2, r8
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r3, r1
	ldr r0, [r4, #0xc]
	lsls r0, r0, #8
	str r0, [r1, #0x30]
	ldr r0, [r4, #0x10]
	lsls r0, r0, #8
	str r0, [r1, #0x34]
	movs r6, #0
	movs r0, #1
	strh r0, [r1, #0x38]
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r1, #0x3a]
	ldr r2, _080546E0 @ =0x0300003C
	adds r0, r3, r2
	strb r6, [r0]
	ldr r0, _080546E4 @ =0x0300003D
	adds r2, r3, r0
	movs r0, #0x2a
	strb r0, [r2]
	ldr r0, [r4, #0xc]
	strh r0, [r1, #0x16]
	ldr r0, [r4, #0x10]
	strh r0, [r1, #0x18]
	ldr r0, [r4]
	lsls r0, r0, #5
	ldr r2, _080546E8 @ =0x06010000
	adds r0, r0, r2
	str r0, [r1, #4]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r1, #0x1a]
	strh r5, [r1, #8]
	ldr r0, [r4, #4]
	strh r0, [r1, #0xa]
	ldr r2, [r4, #8]
	ldr r4, _080546EC @ =0x03000020
	adds r0, r3, r4
	strb r2, [r0]
	strh r5, [r1, #0x14]
	strh r5, [r1, #0x1c]
	ldr r0, _080546F0 @ =0x03000021
	adds r2, r3, r0
	movs r0, #0xff
	strb r0, [r2]
	adds r4, #2
	adds r2, r3, r4
	movs r0, #0x10
	strb r0, [r2]
	ldr r0, _080546F4 @ =0x03000025
	adds r3, r3, r0
	strb r6, [r3]
	mov r2, r8
	str r2, [r1, #0x10]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080546DC: .4byte sub_80546F8
_080546E0: .4byte 0x0300003C
_080546E4: .4byte 0x0300003D
_080546E8: .4byte 0x06010000
_080546EC: .4byte 0x03000020
_080546F0: .4byte 0x03000021
_080546F4: .4byte 0x03000025

	thumb_func_start sub_80546F8
sub_80546F8: @ 0x080546F8
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r0, _08054738 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	adds r7, r4, #0
	ldrh r0, [r4, #0x3a]
	adds r0, #0x30
	strh r0, [r4, #0x3a]
	movs r0, #0x3a
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x34]
	adds r5, r0, r1
	str r5, [r4, #0x34]
	movs r0, #0x38
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x30]
	adds r1, r0, r1
	str r1, [r4, #0x30]
	ldr r0, _0805473C @ =0x0300003D
	adds r3, r6, r0
	ldrb r0, [r3]
	adds r2, r0, #0
	cmp r2, #0
	beq _08054740
	subs r0, #1
	strb r0, [r3]
	b _0805477A
	.align 2, 0
_08054738: .4byte gCurTask
_0805473C: .4byte 0x0300003D
_08054740:
	asrs r0, r5, #8
	asrs r1, r1, #8
	str r2, [sp]
	ldr r2, _080547B8 @ =sa2__sub_801EE64
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F07C
	lsls r0, r0, #8
	adds r1, r5, r0
	ldr r0, [r4, #0x34]
	cmp r1, r0
	bgt _0805477A
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r4, #0x3a]
	str r1, [r4, #0x34]
	ldr r0, _080547BC @ =0x0300003C
	adds r1, r6, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08054776
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r4, #0x38]
_08054776:
	movs r0, #1
	strb r0, [r1]
_0805477A:
	ldr r1, [r7, #0x30]
	asrs r1, r1, #8
	ldr r2, _080547C0 @ =gCamera
	ldrh r0, [r2]
	subs r1, r1, r0
	strh r1, [r4, #0x16]
	ldr r0, [r7, #0x34]
	asrs r0, r0, #8
	ldrh r2, [r2, #2]
	subs r2, r0, r2
	strh r2, [r4, #0x18]
	adds r1, #0x20
	lsls r1, r1, #0x10
	movs r0, #0x98
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _080547AE
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x20
	cmp r0, #0
	blt _080547AE
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xc0
	ble _080547C8
_080547AE:
	ldr r0, _080547C4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080547D4
	.align 2, 0
_080547B8: .4byte sa2__sub_801EE64
_080547BC: .4byte 0x0300003C
_080547C0: .4byte gCamera
_080547C4: .4byte gCurTask
_080547C8:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080547D4:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80547DC
sub_80547DC: @ 0x080547DC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08054874 @ =sub_805488C
	movs r1, #0x80
	lsls r1, r1, #6
	mov r8, r1
	movs r5, #0
	str r5, [sp]
	movs r1, #0x40
	mov r2, r8
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r3, r1
	ldr r0, [r4, #0xc]
	lsls r0, r0, #8
	str r0, [r1, #0x30]
	ldr r0, [r4, #0x10]
	lsls r0, r0, #8
	str r0, [r1, #0x34]
	movs r6, #0
	strh r5, [r1, #0x38]
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r1, #0x3a]
	ldr r0, _08054878 @ =0x0300003C
	adds r2, r3, r0
	movs r0, #0x2a
	strb r0, [r2]
	ldr r0, [r4, #0xc]
	strh r0, [r1, #0x16]
	ldr r0, [r4, #0x10]
	strh r0, [r1, #0x18]
	ldr r0, [r4]
	lsls r0, r0, #5
	ldr r2, _0805487C @ =0x06010000
	adds r0, r0, r2
	str r0, [r1, #4]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r1, #0x1a]
	strh r5, [r1, #8]
	ldr r0, [r4, #4]
	strh r0, [r1, #0xa]
	ldr r2, [r4, #8]
	ldr r4, _08054880 @ =0x03000020
	adds r0, r3, r4
	strb r2, [r0]
	strh r5, [r1, #0x14]
	strh r5, [r1, #0x1c]
	ldr r0, _08054884 @ =0x03000021
	adds r2, r3, r0
	movs r0, #0xff
	strb r0, [r2]
	adds r4, #2
	adds r2, r3, r4
	movs r0, #0x10
	strb r0, [r2]
	ldr r0, _08054888 @ =0x03000025
	adds r3, r3, r0
	strb r6, [r3]
	mov r2, r8
	str r2, [r1, #0x10]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08054874: .4byte sub_805488C
_08054878: .4byte 0x0300003C
_0805487C: .4byte 0x06010000
_08054880: .4byte 0x03000020
_08054884: .4byte 0x03000021
_08054888: .4byte 0x03000025

	thumb_func_start sub_805488C
sub_805488C: @ 0x0805488C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r0, _080548CC @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	adds r7, r4, #0
	ldrh r0, [r4, #0x3a]
	adds r0, #0x30
	strh r0, [r4, #0x3a]
	movs r0, #0x3a
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x34]
	adds r6, r0, r1
	str r6, [r4, #0x34]
	movs r0, #0x38
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x30]
	adds r1, r0, r1
	str r1, [r4, #0x30]
	ldr r0, _080548D0 @ =0x0300003C
	adds r2, r2, r0
	ldrb r0, [r2]
	adds r5, r0, #0
	cmp r5, #0
	beq _080548D4
	subs r0, #1
	strb r0, [r2]
	b _080548F4
	.align 2, 0
_080548CC: .4byte gCurTask
_080548D0: .4byte 0x0300003C
_080548D4:
	asrs r0, r6, #8
	asrs r1, r1, #8
	str r5, [sp]
	ldr r2, _08054934 @ =sa2__sub_801EE64
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F07C
	lsls r0, r0, #8
	adds r1, r6, r0
	ldr r0, [r4, #0x34]
	cmp r1, r0
	bgt _080548F4
	strh r5, [r4, #0x3a]
	str r1, [r4, #0x34]
_080548F4:
	ldr r1, [r7, #0x30]
	asrs r1, r1, #8
	ldr r2, _08054938 @ =gCamera
	ldrh r0, [r2]
	subs r1, r1, r0
	strh r1, [r4, #0x16]
	ldr r0, [r7, #0x34]
	asrs r0, r0, #8
	ldrh r2, [r2, #2]
	subs r2, r0, r2
	strh r2, [r4, #0x18]
	adds r1, #0x20
	lsls r1, r1, #0x10
	movs r0, #0x98
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _08054928
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x20
	cmp r0, #0
	blt _08054928
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xc0
	ble _08054940
_08054928:
	ldr r0, _0805493C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0805494C
	.align 2, 0
_08054934: .4byte sa2__sub_801EE64
_08054938: .4byte gCamera
_0805493C: .4byte gCurTask
_08054940:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0805494C:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8054954
sub_8054954: @ 0x08054954
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r2, _080549D8 @ =gCurrentLevel
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	ldr r5, _080549DC @ =gUnknown_08688258
	ldr r6, _080549E0 @ =gUnknown_0300501C
	movs r3, #0
	ldrsb r3, [r6, r3]
	lsls r3, r3, #4
	asrs r2, r2, #0x19
	lsls r4, r2, #1
	adds r4, r4, r2
	lsls r4, r4, #4
	adds r3, r3, r4
	adds r2, r5, #0
	adds r2, #0xc
	adds r2, r3, r2
	ldrb r7, [r2]
	adds r3, r3, r5
	ldr r2, [r3]
	str r2, [sp]
	movs r2, #0
	ldrsb r2, [r6, r2]
	lsls r2, r2, #4
	adds r2, r2, r4
	adds r3, r5, #4
	adds r2, r2, r3
	ldr r2, [r2]
	str r2, [sp, #4]
	movs r2, #0
	ldrsb r2, [r6, r2]
	lsls r2, r2, #4
	adds r2, r2, r4
	adds r5, #8
	adds r2, r2, r5
	ldr r2, [r2]
	str r2, [sp, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0xc]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #0x10]
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	ble _080549BE
	movs r0, #0
	strb r0, [r6]
_080549BE:
	lsls r0, r7, #0x18
	asrs r1, r0, #0x18
	cmp r1, #0
	beq _080549EC
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080549E4
	mov r0, sp
	bl sub_805463C
	b _080549F2
	.align 2, 0
_080549D8: .4byte gCurrentLevel
_080549DC: .4byte gUnknown_08688258
_080549E0: .4byte gUnknown_0300501C
_080549E4:
	mov r0, sp
	bl sub_8054494
	b _080549F2
_080549EC:
	mov r0, sp
	bl sub_80547DC
_080549F2:
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80549FC
sub_80549FC: @ 0x080549FC
	movs r1, #0
	ldr r0, _08054A20 @ =gSelectedCharacter
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08054A1C
	ldr r0, _08054A24 @ =gPlayer
	adds r0, #0x40
	ldrb r0, [r0]
	subs r0, #0x46
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bhi _08054A1C
	movs r1, #1
_08054A1C:
	adds r0, r1, #0
	bx lr
	.align 2, 0
_08054A20: .4byte gSelectedCharacter
_08054A24: .4byte gPlayer

	thumb_func_start sub_8054A28
sub_8054A28: @ 0x08054A28
	movs r1, #0
	ldr r0, _08054A4C @ =gSelectedCharacter
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08054A48
	ldr r0, _08054A50 @ =gPlayer
	adds r0, #0x40
	ldrb r0, [r0]
	subs r0, #0x3e
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bhi _08054A48
	movs r1, #1
_08054A48:
	adds r0, r1, #0
	bx lr
	.align 2, 0
_08054A4C: .4byte gSelectedCharacter
_08054A50: .4byte gPlayer

	thumb_func_start sub_8054A54
sub_8054A54: @ 0x08054A54
	movs r1, #0
	ldr r0, _08054A78 @ =gSelectedCharacter
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	bne _08054A74
	ldr r0, _08054A7C @ =gPlayer
	adds r0, #0x40
	ldrb r0, [r0]
	subs r0, #0x5b
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _08054A74
	movs r1, #1
_08054A74:
	adds r0, r1, #0
	bx lr
	.align 2, 0
_08054A78: .4byte gSelectedCharacter
_08054A7C: .4byte gPlayer

	thumb_func_start sub_8054A80
sub_8054A80: @ 0x08054A80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	str r0, [sp, #0x30]
	ldr r1, _08054E10 @ =gCurrentLevel
	ldrb r0, [r1]
	movs r2, #1
	ands r2, r0
	str r2, [sp, #0x34]
	ldr r1, _08054E14 @ =gSelectedCharacter
	ldrb r0, [r1]
	adds r0, #6
	add r4, sp, #0x2c
	strb r0, [r4]
	mov r2, sp
	adds r2, #0x2b
	str r2, [sp, #0x38]
	movs r0, #6
	strb r0, [r2]
	ldr r7, _08054E18 @ =gUiGraphics
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08054E1C @ =gUiGraphics + 0x4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [sp, #0x18]
	movs r2, #0x20
	str r2, [sp, #0x24]
	mov r0, sp
	adds r0, #0x28
	str r0, [sp, #0x3c]
	movs r1, #0xf
	strb r1, [r0]
	ldr r2, [sp, #0x30]
	ldr r0, [r2, #4]
	str r0, [sp, #0xc]
	mov r0, sp
	adds r0, #0x2a
	str r0, [sp, #0x40]
	movs r1, #0xd
	strb r1, [r0]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _08054E20 @ =gUiGraphics + 0x8
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08054E24 @ =gUiGraphics + 0xC
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08054E28 @ =gUiGraphics + 0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08054E2C @ =gUiGraphics + 0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08054E30 @ =gUiGraphics + 0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r0, #0xa
	strb r0, [r4]
	movs r0, #7
	ldr r2, [sp, #0x38]
	strb r0, [r2]
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r2, _08054E14 @ =gSelectedCharacter
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r1, r1, #0xb
	ldr r0, [r0]
	adds r0, r0, r1
	str r0, [sp, #0x14]
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [sp, #0x18]
	movs r2, #0x20
	str r2, [sp, #0x24]
	movs r1, #0xf
	ldr r0, [sp, #0x3c]
	strb r1, [r0]
	ldr r0, _08054E34 @ =0x06010800
	str r0, [sp, #0xc]
	movs r0, #0xd
	ldr r2, [sp, #0x40]
	strb r0, [r2]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r1, sp
	movs r2, #0x92
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #8]
	adds r2, #4
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #9]
	adds r2, #4
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #0xa]
	adds r2, #4
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r0, #0x10
	strb r0, [r4]
	movs r0, #8
	ldr r1, [sp, #0x38]
	strb r0, [r1]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r0, [r0]
	str r0, [sp, #0x14]
	movs r1, #0xe2
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	adds r2, #0x40
	mov sb, r2
	str r2, [sp, #0x18]
	movs r0, #0x20
	str r0, [sp, #0x24]
	movs r2, #6
	ldr r1, [sp, #0x3c]
	strb r2, [r1]
	ldr r1, [sp, #0x30]
	ldr r0, [r1]
	str r0, [sp, #0xc]
	movs r0, #0xd
	ldr r2, [sp, #0x40]
	strb r0, [r2]
	movs r1, #0xe4
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r1, sp
	movs r2, #0xe6
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #8]
	adds r2, #4
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #9]
	adds r2, #4
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #0xa]
	adds r2, #4
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	ldr r1, _08054E10 @ =gCurrentLevel
	movs r0, #0
	ldrsb r0, [r1, r0]
	mov sl, r4
	cmp r0, #0xd
	ble _08054C3A
	b _08054E5C
_08054C3A:
	movs r2, #0x11
	strb r2, [r4]
	movs r0, #9
	movs r1, #0x2b
	add r1, sp
	strb r0, [r1]
	ldr r2, _08054E38 @ =gUiGraphics + ((17 * 0x1C) + 0)
	ldr r0, [r2]
	movs r1, #0x92
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [sp, #0x14]
	ldr r2, _08054E3C @ =gUiGraphics + ((17 * 0x1C) + 0x4)
	ldr r0, [r2]
	str r0, [sp, #0x20]
	ldr r1, _08054E10 @ =gCurrentLevel
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldr r2, _08054E40 @ =gUnknown_08688378
	adds r0, r0, r2
	ldrb r0, [r0]
	movs r4, #0xc
	subs r0, r4, r0
	lsls r0, r0, #5
	str r0, [sp, #0x18]
	movs r0, #0x20
	str r0, [sp, #0x24]
	movs r1, #6
	add r2, sp, #0x28
	strb r1, [r2]
	ldr r1, [sp, #0x30]
	ldr r0, [r1, #8]
	str r0, [sp, #0xc]
	movs r2, #0xd
	movs r0, #0x2a
	add r0, sp
	strb r2, [r0]
	ldr r1, _08054E44 @ =gUiGraphics + ((17 * 0x1C) + 0x8)
	ldr r0, [r1]
	str r0, [sp, #4]
	mov r1, sp
	ldr r2, _08054E48 @ =gUiGraphics + ((17 * 0x1C) + 0xC)
	ldr r0, [r2]
	strb r0, [r1, #8]
	ldr r2, _08054E4C @ =gUiGraphics + ((17 * 0x1C) + 0x10)
	ldr r0, [r2]
	strb r0, [r1, #9]
	ldr r2, _08054E50 @ =gUiGraphics + ((17 * 0x1C) + 0x14)
	ldr r0, [r2]
	strb r0, [r1, #0xa]
	ldr r2, _08054E54 @ =gUiGraphics + ((17 * 0x1C) + 0x18)
	ldr r0, [r2]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r1, #0x11
	mov r0, sl
	strb r1, [r0]
	movs r2, #9
	movs r0, #0x2b
	add r0, sp
	strb r2, [r0]
	ldr r1, _08054E38 @ =gUiGraphics + ((17 * 0x1C) + 0)
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r0, r7
	str r0, [sp, #0x14]
	ldr r2, _08054E3C @ =gUiGraphics + ((17 * 0x1C) + 0x4)
	ldr r0, [r2]
	str r0, [sp, #0x20]
	movs r0, #0x80
	str r0, [sp, #0x18]
	movs r0, #0x20
	str r0, [sp, #0x24]
	movs r1, #6
	add r2, sp, #0x28
	strb r1, [r2]
	ldr r1, [sp, #0x30]
	ldr r0, [r1, #8]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [sp, #0xc]
	movs r0, #0xd
	movs r1, #0x2a
	add r1, sp
	strb r0, [r1]
	ldr r2, _08054E44 @ =gUiGraphics + ((17 * 0x1C) + 0x8)
	ldr r0, [r2]
	str r0, [sp, #4]
	mov r1, sp
	ldr r2, _08054E48 @ =gUiGraphics + ((17 * 0x1C) + 0xC)
	ldr r0, [r2]
	strb r0, [r1, #8]
	ldr r2, _08054E4C @ =gUiGraphics + ((17 * 0x1C) + 0x10)
	ldr r0, [r2]
	strb r0, [r1, #9]
	ldr r2, _08054E50 @ =gUiGraphics + ((17 * 0x1C) + 0x14)
	ldr r0, [r2]
	strb r0, [r1, #0xa]
	ldr r2, _08054E54 @ =gUiGraphics + ((17 * 0x1C) + 0x18)
	ldr r0, [r2]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r1, #0x11
	mov r0, sl
	strb r1, [r0]
	movs r2, #9
	movs r0, #0x2b
	add r0, sp
	strb r2, [r0]
	ldr r1, _08054E58 @ =gUnknown_08688386
	ldr r2, _08054E10 @ =gCurrentLevel
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r1, r1, #5
	ldr r2, _08054E38 @ =gUiGraphics + ((17 * 0x1C) + 0)
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [sp, #0x14]
	ldr r1, _08054E3C @ =gUiGraphics + ((17 * 0x1C) + 0x4)
	ldr r0, [r1]
	str r0, [sp, #0x20]
	ldr r2, _08054E10 @ =gCurrentLevel
	movs r0, #0
	ldrsb r0, [r2, r0]
	ldr r1, _08054E40 @ =gUnknown_08688378
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #5
	str r0, [sp, #0x18]
	movs r2, #0x20
	str r2, [sp, #0x24]
	movs r0, #6
	add r1, sp, #0x28
	strb r0, [r1]
	ldr r2, _08054E10 @ =gCurrentLevel
	movs r0, #0
	ldrsb r0, [r2, r0]
	ldr r1, _08054E40 @ =gUnknown_08688378
	adds r0, r0, r1
	ldrb r0, [r0]
	subs r4, r4, r0
	lsls r4, r4, #5
	ldr r2, [sp, #0x30]
	ldr r0, [r2, #8]
	adds r0, r0, r4
	str r0, [sp, #0xc]
	movs r0, #0xd
	movs r1, #0x2a
	add r1, sp
	strb r0, [r1]
	ldr r2, _08054E44 @ =gUiGraphics + ((17 * 0x1C) + 0x8)
	ldr r0, [r2]
	str r0, [sp, #4]
	mov r1, sp
	ldr r2, _08054E48 @ =gUiGraphics + ((17 * 0x1C) + 0xC)
	ldr r0, [r2]
	strb r0, [r1, #8]
	ldr r2, _08054E4C @ =gUiGraphics + ((17 * 0x1C) + 0x10)
	ldr r0, [r2]
	strb r0, [r1, #9]
	ldr r2, _08054E50 @ =gUiGraphics + ((17 * 0x1C) + 0x14)
	ldr r0, [r2]
	strb r0, [r1, #0xa]
	ldr r2, _08054E54 @ =gUiGraphics + ((17 * 0x1C) + 0x18)
	ldr r0, [r2]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r1, #0x11
	mov r0, sl
	strb r1, [r0]
	movs r2, #9
	movs r0, #0x2b
	add r0, sp
	strb r2, [r0]
	ldr r1, _08054E38 @ =gUiGraphics + ((17 * 0x1C) + 0)
	ldr r0, [r1]
	adds r0, r0, r7
	str r0, [sp, #0x14]
	ldr r2, _08054E3C @ =gUiGraphics + ((17 * 0x1C) + 0x4)
	ldr r0, [r2]
	str r0, [sp, #0x20]
	movs r0, #0x20
	str r0, [sp, #0x18]
	str r0, [sp, #0x24]
	movs r1, #6
	add r2, sp, #0x28
	strb r1, [r2]
	ldr r1, [sp, #0x30]
	ldr r0, [r1, #8]
	str r0, [sp, #0xc]
	movs r2, #0xd
	movs r0, #0x2a
	add r0, sp
	strb r2, [r0]
	ldr r1, _08054E44 @ =gUiGraphics + ((17 * 0x1C) + 0x8)
	ldr r0, [r1]
	str r0, [sp, #4]
	mov r1, sp
	ldr r2, _08054E48 @ =gUiGraphics + ((17 * 0x1C) + 0xC)
	ldr r0, [r2]
	strb r0, [r1, #8]
	ldr r2, _08054E4C @ =gUiGraphics + ((17 * 0x1C) + 0x10)
	ldr r0, [r2]
	strb r0, [r1, #9]
	ldr r2, _08054E50 @ =gUiGraphics + ((17 * 0x1C) + 0x14)
	ldr r0, [r2]
	strb r0, [r1, #0xa]
	ldr r2, _08054E54 @ =gUiGraphics + ((17 * 0x1C) + 0x18)
	ldr r0, [r2]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r1, #4
	str r1, [sp, #4]
	mov r0, sp
	movs r2, #1
	strb r2, [r0, #8]
	strb r2, [r0, #9]
	strb r1, [r0, #0xa]
	strb r2, [r0, #0xb]
	movs r1, #9
	bl sub_80535C8
	b _08054F14
	.align 2, 0
_08054E10: .4byte gCurrentLevel
_08054E14: .4byte gSelectedCharacter
_08054E18: .4byte gUiGraphics
_08054E1C: .4byte gUiGraphics + 0x4
_08054E20: .4byte gUiGraphics + 0x8
_08054E24: .4byte gUiGraphics + 0xC
_08054E28: .4byte gUiGraphics + 0x10
_08054E2C: .4byte gUiGraphics + 0x14
_08054E30: .4byte gUiGraphics + 0x18
_08054E34: .4byte 0x06010800
_08054E38: .4byte gUiGraphics + ((17 * 0x1C) + 0)
_08054E3C: .4byte gUiGraphics + ((17 * 0x1C) + 0x4)
_08054E40: .4byte gUnknown_08688378
_08054E44: .4byte gUiGraphics + ((17 * 0x1C) + 0x8)
_08054E48: .4byte gUiGraphics + ((17 * 0x1C) + 0xC)
_08054E4C: .4byte gUiGraphics + ((17 * 0x1C) + 0x10)
_08054E50: .4byte gUiGraphics + ((17 * 0x1C) + 0x14)
_08054E54: .4byte gUiGraphics + ((17 * 0x1C) + 0x18)
_08054E58: .4byte gUnknown_08688386
_08054E5C:
	movs r0, #0x12
	mov r1, sl
	strb r0, [r1]
	movs r0, #9
	movs r2, #0x2b
	add r2, sp
	strb r0, [r2]
	ldrb r1, [r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r2, _080550C4 @ =gCurrentLevel
	movs r1, #0
	ldrsb r1, [r2, r1]
	subs r1, #0xe
	lsls r1, r1, #9
	ldr r0, [r0]
	adds r0, r0, r1
	str r0, [sp, #0x14]
	mov r0, sl
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080550C8 @ =gUiGraphics + 0x4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	mov r2, sb
	str r2, [sp, #0x18]
	movs r0, #0x20
	str r0, [sp, #0x24]
	movs r1, #6
	add r2, sp, #0x28
	strb r1, [r2]
	ldr r1, [sp, #0x30]
	ldr r0, [r1, #8]
	str r0, [sp, #0xc]
	movs r2, #0xd
	movs r0, #0x2a
	add r0, sp
	strb r2, [r0]
	mov r2, sl
	ldrb r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080550CC @ =gUiGraphics + 0x8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	mov r0, sl
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080550D0 @ =gUiGraphics + 0xC
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	mov r0, sl
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080550D4 @ =gUiGraphics + 0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	mov r0, sl
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080550D8 @ =gUiGraphics + 0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	mov r0, sl
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080550DC @ =gUiGraphics + 0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	bl sub_80528AC
_08054F14:
	movs r0, #0xf
	mov r2, sl
	strb r0, [r2]
	movs r1, #0xa
	movs r2, #0x2b
	add r2, sp
	strb r1, [r2]
	ldr r7, _080550E0 @ =gUiGraphics
	movs r0, #0xd2
	lsls r0, r0, #1
	adds r6, r7, r0
	ldr r0, [r6]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r0, r4
	ldr r2, [sp, #0x34]
	lsls r1, r2, #7
	adds r0, r0, r1
	str r0, [sp, #0x14]
	movs r0, #0x80
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x30]
	ldr r0, [r1, #0x10]
	adds r0, r0, r4
	str r0, [sp, #0xc]
	movs r0, #9
	movs r2, #0x2a
	add r2, sp
	strb r0, [r2]
	movs r0, #0xd6
	lsls r0, r0, #1
	adds r5, r7, r0
	ldr r0, [r5]
	str r0, [sp, #4]
	mov r1, sp
	ldr r2, _080550E4 @ =gUiGraphics + ((15 * 0x1C) + 0xC)
	ldr r0, [r2]
	strb r0, [r1, #8]
	ldr r2, _080550E8 @ =gUiGraphics + ((15 * 0x1C) + 0x10)
	ldr r0, [r2]
	strb r0, [r1, #9]
	ldr r2, _080550EC @ =gUiGraphics + ((15 * 0x1C) + 0x14)
	ldr r0, [r2]
	strb r0, [r1, #0xa]
	ldr r2, _080550F0 @ =gUiGraphics + ((15 * 0x1C) + 0x18)
	ldr r0, [r2]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r1, #0xf
	mov r0, sl
	strb r1, [r0]
	movs r2, #0xa
	movs r0, #0x2b
	add r0, sp
	strb r2, [r0]
	ldr r0, [r6]
	str r0, [sp, #0x14]
	movs r1, #0xd4
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	str r4, [sp, #0x18]
	ldr r2, [sp, #0x30]
	ldr r0, [r2, #0x10]
	str r0, [sp, #0xc]
	movs r0, #0x20
	mov r8, r0
	str r0, [sp, #0x24]
	movs r1, #6
	mov sb, r1
	mov r2, sb
	add r0, sp, #0x28
	strb r2, [r0]
	movs r1, #0xd
	movs r2, #0x2a
	add r2, sp
	strb r1, [r2]
	ldr r0, [r5]
	str r0, [sp, #4]
	mov r1, sp
	ldr r2, _080550E4 @ =gUiGraphics + ((15 * 0x1C) + 0xC)
	ldr r0, [r2]
	strb r0, [r1, #8]
	ldr r2, _080550E8 @ =gUiGraphics + ((15 * 0x1C) + 0x10)
	ldr r0, [r2]
	strb r0, [r1, #9]
	ldr r2, _080550EC @ =gUiGraphics + ((15 * 0x1C) + 0x14)
	ldr r0, [r2]
	strb r0, [r1, #0xa]
	ldr r2, _080550F0 @ =gUiGraphics + ((15 * 0x1C) + 0x18)
	ldr r0, [r2]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	ldr r1, _080550F4 @ =gUnknown_08688398
	ldr r0, _080550C4 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r0, #0x13
	mov r1, sl
	strb r0, [r1]
	movs r4, #2
	movs r2, #0x2b
	add r2, sp
	strb r4, [r2]
	ldrb r1, [r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	str r0, [sp, #0x14]
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0xe0
	lsls r0, r0, #3
	str r0, [sp, #0x18]
	mov r2, r8
	str r2, [sp, #0x24]
	mov r0, sb
	add r1, sp, #0x28
	strb r0, [r1]
	ldr r2, [sp, #0x30]
	ldr r0, [r2, #0xc]
	str r0, [sp, #0xc]
	movs r0, #0xd
	movs r1, #0x2a
	add r1, sp
	strb r0, [r1]
	mov r2, sl
	ldrb r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	mov r0, sl
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	mov r0, sl
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	mov r0, sl
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	mov r0, sl
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r0, #8
	str r0, [sp, #4]
	mov r0, sp
	strb r4, [r0, #8]
	mov r1, sp
	movs r0, #1
	strb r0, [r1, #9]
	movs r0, #4
	strb r0, [r1, #0xa]
	mov r0, sp
	strb r4, [r0, #0xb]
	movs r1, #2
	bl sub_80535C8
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080550C4: .4byte gCurrentLevel
_080550C8: .4byte gUiGraphics + 0x4
_080550CC: .4byte gUiGraphics + 0x8
_080550D0: .4byte gUiGraphics + 0xC
_080550D4: .4byte gUiGraphics + 0x10
_080550D8: .4byte gUiGraphics + 0x14
_080550DC: .4byte gUiGraphics + 0x18
_080550E0: .4byte gUiGraphics
_080550E4: .4byte gUiGraphics + ((15 * 0x1C) + 0xC)
_080550E8: .4byte gUiGraphics + ((15 * 0x1C) + 0x10)
_080550EC: .4byte gUiGraphics + ((15 * 0x1C) + 0x14)
_080550F0: .4byte gUiGraphics + ((15 * 0x1C) + 0x18)
_080550F4: .4byte gUnknown_08688398

	thumb_func_start sub_80550F8
sub_80550F8: @ 0x080550F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	ldr r2, _0805512C @ =gCurrentLevel
	ldrb r1, [r2]
	movs r3, #0
	ldrsb r3, [r2, r3]
	cmp r3, #0xc
	bgt _08055164
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08055164
	ldr r0, _08055130 @ =gUnknown_03005020
	ldrb r1, [r0]
	adds r0, r3, #0
	cmp r1, r0
	beq _08055164
	cmp r3, #0xd
	beq _08055164
	movs r4, #0
	ldr r5, _08055134 @ =0x0000042A
	b _08055150
	.align 2, 0
_0805512C: .4byte gCurrentLevel
_08055130: .4byte gUnknown_03005020
_08055134: .4byte 0x0000042A
_08055138:
	strh r5, [r2]
	lsls r0, r4, #5
	ldr r3, _080552A8 @ =0xFFFF8000
	adds r1, r3, #0
	adds r0, r0, r1
	strh r0, [r2, #2]
	movs r0, #0xc1
	lsls r0, r0, #7
	strh r0, [r2, #4]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08055150:
	cmp r4, #7
	bhi _08055164
	movs r0, #1
	bl OamMalloc
	adds r2, r0, #0
	ldr r0, _080552AC @ =iwram_end
	ldr r0, [r0]
	cmp r0, r2
	bne _08055138
_08055164:
	bl sub_80535FC
	bl sub_8053674
	ldr r0, _080552B0 @ =sub_8055730
	ldr r1, _080552B4 @ =sub_8055C38
	str r1, [sp]
	movs r1, #0x24
	ldr r2, _080552B8 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0x20]
	ldrh r4, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r7, r4, r2
	movs r5, #0
	strh r5, [r7, #0x18]
	ldr r3, _080552BC @ =0x03000020
	adds r0, r4, r3
	movs r1, #1
	strb r1, [r0]
	strh r5, [r7, #0x1a]
	ldr r0, _080552C0 @ =0x0000FFB0
	strh r0, [r7, #0xa]
	strh r5, [r7, #0xc]
	movs r0, #3
	strh r0, [r7, #0xe]
	movs r0, #0x18
	strh r0, [r7, #8]
	movs r2, #6
	strh r2, [r7, #0x10]
	movs r3, #0
	strb r3, [r7, #0x16]
	movs r0, #0xf
	mov sl, r0
	mov r1, sl
	strh r1, [r7, #0x12]
	movs r0, #5
	strh r0, [r7, #0x14]
	movs r0, #0x20
	bl VramMalloc
	str r0, [r7, #0x1c]
	str r0, [sp, #8]
	ldr r2, _080552C4 @ =0x03000021
	adds r4, r4, r2
	movs r3, #0
	strb r3, [r4]
	ldr r0, _080552C8 @ =sub_8055798
	str r5, [sp]
	movs r1, #0x24
	ldr r2, _080552B8 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0x24]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	strh r5, [r7, #0x18]
	ldr r2, _080552BC @ =0x03000020
	adds r0, r1, r2
	movs r3, #0
	strb r3, [r0]
	movs r0, #1
	strh r0, [r7, #0x1a]
	movs r0, #0x14
	strh r0, [r7, #0xa]
	movs r2, #1
	strh r2, [r7, #0xe]
	movs r0, #7
	strh r0, [r7, #0x10]
	mov r3, sl
	strh r3, [r7, #0x12]
	movs r0, #1
	strb r0, [r7, #0x16]
	movs r0, #0x10
	strh r0, [r7, #8]
	ldr r2, _080552C4 @ =0x03000021
	adds r1, r1, r2
	movs r3, #0
	strb r3, [r1]
	ldr r0, _080552CC @ =sub_8055904
	ldr r1, _080552B4 @ =sub_8055C38
	str r1, [sp]
	movs r1, #0x24
	ldr r2, _080552B8 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0x18]
	ldrh r4, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r7, r4, r2
	strh r5, [r7, #0x18]
	ldr r3, _080552BC @ =0x03000020
	adds r0, r4, r3
	movs r1, #1
	strb r1, [r0]
	strh r5, [r7, #0x1a]
	movs r0, #0xb4
	strh r0, [r7, #0xa]
	movs r0, #0xa0
	strh r0, [r7, #0xc]
	movs r2, #6
	strh r2, [r7, #0xe]
	movs r0, #0xa
	strh r0, [r7, #0x10]
	strh r2, [r7, #0x12]
	strb r1, [r7, #0x16]
	strh r5, [r7, #8]
	movs r0, #0xc
	bl VramMalloc
	str r0, [r7, #0x1c]
	str r0, [sp, #0x14]
	ldr r3, _080552C4 @ =0x03000021
	adds r4, r4, r3
	movs r0, #0
	strb r0, [r4]
	ldr r0, _080552D0 @ =sub_8055998
	ldr r1, _080552B4 @ =sub_8055C38
	str r1, [sp]
	movs r1, #0x24
	ldr r2, _080552B8 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0x1c]
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r7, r0, r2
	strh r5, [r7, #0x18]
	ldr r3, _080552BC @ =0x03000020
	adds r0, r0, r3
	movs r1, #1
	strb r1, [r0]
	strh r5, [r7, #0x1a]
	ldr r3, _080552D4 @ =gCurrentLevel
	ldrb r2, [r3]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _080552E0
	ldr r0, _080552D8 @ =gUnknown_03005020
	ldrb r1, [r0]
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r1, r0
	beq _080552E0
	cmp r2, #0xd
	beq _080552E0
	ldr r0, _080552DC @ =0x0000FFF0
	strh r0, [r7, #0xa]
	movs r0, #0x2a
	b _080552E6
	.align 2, 0
_080552A8: .4byte 0xFFFF8000
_080552AC: .4byte iwram_end
_080552B0: .4byte sub_8055730
_080552B4: .4byte sub_8055C38
_080552B8: .4byte 0x00002120
_080552BC: .4byte 0x03000020
_080552C0: .4byte 0x0000FFB0
_080552C4: .4byte 0x03000021
_080552C8: .4byte sub_8055798
_080552CC: .4byte sub_8055904
_080552D0: .4byte sub_8055998
_080552D4: .4byte gCurrentLevel
_080552D8: .4byte gUnknown_03005020
_080552DC: .4byte 0x0000FFF0
_080552E0:
	movs r0, #0xf0
	strh r0, [r7, #0xa]
	movs r0, #0x7e
_080552E6:
	strh r0, [r7, #0xc]
	movs r0, #8
	strh r0, [r7, #0xe]
	strh r0, [r7, #0x10]
	movs r1, #6
	strh r1, [r7, #0x12]
	movs r2, #1
	strb r2, [r7, #0x16]
	strh r0, [r7, #8]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r7, #0x1c]
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r0, #0x21
	movs r3, #0
	strb r3, [r0]
	ldr r0, _08055430 @ =sub_8055AA0
	ldr r1, _08055434 @ =sub_8055C38
	mov sb, r1
	str r1, [sp]
	movs r1, #0x24
	ldr r2, _08055438 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0x28]
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r7, r5, r4
	movs r2, #0
	strh r2, [r7, #0x18]
	ldr r3, _0805543C @ =0x03000020
	adds r0, r5, r3
	movs r1, #1
	strb r1, [r0]
	strh r2, [r7, #0x1a]
	movs r0, #0xb4
	lsls r0, r0, #1
	strh r0, [r7, #0xa]
	movs r0, #0x72
	strh r0, [r7, #0xc]
	movs r0, #4
	strh r0, [r7, #0xe]
	movs r2, #9
	strh r2, [r7, #0x10]
	movs r3, #6
	strh r3, [r7, #0x12]
	strb r1, [r7, #0x16]
	movs r0, #0
	strh r0, [r7, #8]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r7, #0x1c]
	str r0, [sp, #0xc]
	ldr r1, _08055440 @ =0x03000021
	adds r5, r5, r1
	movs r2, #0
	strb r2, [r5]
	ldr r0, _08055444 @ =sub_8055B18
	mov r3, sb
	str r3, [sp]
	movs r1, #0x24
	ldr r2, _08055438 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	adds r6, r0, #0
	ldrh r5, [r6, #6]
	adds r7, r5, r4
	movs r0, #0
	strh r0, [r7, #0x18]
	ldr r1, _0805543C @ =0x03000020
	adds r0, r5, r1
	movs r2, #1
	strb r2, [r0]
	movs r3, #0
	strh r3, [r7, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r7, #0xa]
	movs r0, #0x80
	strh r0, [r7, #0xc]
	movs r0, #9
	strh r0, [r7, #0xe]
	movs r1, #2
	mov r8, r1
	mov r2, r8
	strh r2, [r7, #0x10]
	movs r3, #6
	strh r3, [r7, #0x12]
	movs r0, #1
	strb r0, [r7, #0x16]
	movs r1, #0
	strh r1, [r7, #8]
	movs r0, #0x38
	bl VramMalloc
	str r0, [r7, #0x1c]
	str r0, [sp, #0x10]
	ldr r2, _08055440 @ =0x03000021
	adds r5, r5, r2
	movs r3, #0
	strb r3, [r5]
	ldr r0, _08055448 @ =sub_8055458
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0805544C @ =0x08055C4D
	str r1, [sp]
	movs r1, #0x28
	movs r3, #0
	bl TaskCreate
	adds r5, r0, #0
	ldrh r1, [r5, #6]
	adds r4, r1, r4
	movs r0, #0
	strh r0, [r4, #0x24]
	ldr r2, _08055450 @ =0x03000026
	adds r0, r1, r2
	movs r3, #1
	strb r3, [r0]
	ldr r0, [sp, #0x20]
	str r0, [r4, #0xc]
	ldr r2, [sp, #0x24]
	str r2, [r4, #0x10]
	ldr r3, [sp, #0x1c]
	str r3, [r4, #0x14]
	ldr r0, [sp, #0x28]
	str r0, [r4, #0x18]
	ldr r2, [sp, #0x18]
	str r2, [r4, #0x1c]
	str r6, [r4, #0x20]
	movs r3, #0
	strh r3, [r4]
	strh r3, [r4, #2]
	mov r0, r8
	strh r0, [r4, #4]
	strh r3, [r4, #6]
	movs r0, #0x60
	strh r0, [r4, #8]
	movs r2, #1
	strb r2, [r4, #0xa]
	ldr r3, _08055454 @ =0x03000027
	adds r1, r1, r3
	movs r0, #0
	strb r0, [r1]
	add r0, sp, #4
	bl sub_8054A80
	adds r0, r4, #0
	bl sub_805423C
	adds r0, r5, #0
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08055430: .4byte sub_8055AA0
_08055434: .4byte sub_8055C38
_08055438: .4byte 0x00002120
_0805543C: .4byte 0x03000020
_08055440: .4byte 0x03000021
_08055444: .4byte sub_8055B18
_08055448: .4byte sub_8055458
_0805544C: .4byte 0x08055C4D
_08055450: .4byte 0x03000026
_08055454: .4byte 0x03000027

	thumb_func_start sub_8055458
sub_8055458: @ 0x08055458
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08055594 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r5, r1
	ldr r0, [r4, #0xc]
	ldrh r0, [r0, #6]
	adds r6, r0, r1
	ldr r0, [r4, #0x10]
	ldrh r0, [r0, #6]
	adds r7, r0, r1
	ldr r0, [r4, #0x14]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov r8, r0
	ldr r0, [r4, #0x18]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sb, r0
	ldr r0, [r4, #0x1c]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sl, r0
	ldr r0, [r4, #0x20]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp]
	ldr r0, _08055598 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #0xf3
	ands r0, r1
	cmp r0, #0
	beq _080554E8
	ldr r0, _0805559C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bhi _080554E8
	ldrh r0, [r4, #0x24]
	subs r0, #0x24
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xb2
	bhi _080554E8
	movs r0, #0xd7
	strh r0, [r4, #0x24]
	movs r0, #6
	ldrsh r1, [r4, r0]
	movs r0, #0x80
	lsls r0, r0, #6
	subs r0, r0, r1
	movs r1, #0xa
	bl Div
	strh r0, [r4, #8]
	ldr r1, _080555A0 @ =0x03000027
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080554E8
	adds r0, r4, #0
	bl sub_805423C
	ldr r2, _080555A4 @ =0x03000026
	adds r1, r5, r2
	strb r0, [r1]
_080554E8:
	ldrh r0, [r4, #0x24]
	strh r0, [r6, #0x18]
	ldrh r0, [r4, #0x24]
	strh r0, [r7, #0x18]
	ldrh r0, [r4, #0x24]
	mov r1, r8
	strh r0, [r1, #0x18]
	ldrh r0, [r4, #0x24]
	mov r2, sb
	strh r0, [r2, #0x18]
	ldrh r0, [r4, #0x24]
	mov r1, sl
	strh r0, [r1, #0x18]
	ldrh r0, [r4, #0x24]
	ldr r2, [sp]
	strh r0, [r2, #0x18]
	adds r5, r4, #0
	adds r5, #0x26
	ldrb r1, [r5]
	adds r0, r6, #0
	adds r0, #0x20
	strb r1, [r0]
	ldrb r1, [r5]
	adds r0, r7, #0
	adds r0, #0x20
	strb r1, [r0]
	ldrb r1, [r5]
	mov r0, r8
	adds r0, #0x20
	strb r1, [r0]
	ldrb r1, [r5]
	mov r0, sb
	adds r0, #0x20
	strb r1, [r0]
	ldrb r1, [r5]
	mov r0, sl
	adds r0, #0x20
	strb r1, [r0]
	ldrb r1, [r5]
	adds r0, r2, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x27
	ldrb r2, [r1]
	adds r0, r6, #0
	adds r0, #0x21
	strb r2, [r0]
	ldrb r2, [r1]
	adds r0, r7, #0
	adds r0, #0x21
	strb r2, [r0]
	ldrb r2, [r1]
	mov r0, r8
	adds r0, #0x21
	strb r2, [r0]
	ldrb r2, [r1]
	mov r0, sb
	adds r0, #0x21
	strb r2, [r0]
	ldrb r2, [r1]
	mov r0, sl
	adds r0, #0x21
	strb r2, [r0]
	ldrb r2, [r1]
	ldr r0, [sp]
	adds r0, #0x21
	strb r2, [r0]
	ldrb r0, [r1]
	adds r6, r1, #0
	cmp r0, #0
	bne _080555AE
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	cmp r1, #0x69
	ble _08055586
	ldrb r0, [r5]
	cmp r0, #0
	bne _080555AE
_08055586:
	cmp r1, #0x14
	ble _080555A8
	adds r0, r4, #0
	bl sub_805423C
	strb r0, [r5]
	b _080555AE
	.align 2, 0
_08055594: .4byte gCurTask
_08055598: .4byte gPressedKeys
_0805559C: .4byte gGameMode
_080555A0: .4byte 0x03000027
_080555A4: .4byte 0x03000026
_080555A8:
	adds r0, r4, #0
	bl sub_80543A4
_080555AE:
	ldrh r0, [r4, #0x24]
	adds r0, #1
	strh r0, [r4, #0x24]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe1
	bgt _080555BE
	b _08055708
_080555BE:
	ldrb r3, [r6]
	cmp r3, #0
	bne _080555D4
	ldr r2, _080556AC @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _080556B0 @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _080556B4 @ =gBldRegs
	strh r3, [r0]
	strh r3, [r0, #4]
_080555D4:
	ldr r0, _080556B8 @ =gGameMode
	ldrb r0, [r0]
	ldr r1, _080556BC @ =gPlayer
	mov r8, r1
	ldr r2, _080556C0 @ =gStageFlags
	mov sb, r2
	ldr r1, _080556C4 @ =gPartner
	mov sl, r1
	ldr r2, _080556C8 @ =gUnknown_03005020
	mov ip, r2
	cmp r0, #1
	bls _08055622
	ldr r1, _080556CC @ =gMultiplayerPlayerTasks
	ldr r0, [r1]
	cmp r0, #0
	beq _0805561C
	movs r7, #0xc0
	lsls r7, r7, #0x12
	movs r6, #3
	rsbs r6, r6, #0
	adds r3, r1, #0
	adds r5, r3, #0
	adds r2, r3, #0
	adds r2, #0xc
_08055604:
	ldm r5!, {r0}
	ldrh r1, [r0, #6]
	adds r1, r1, r7
	ldr r0, [r1, #0x5c]
	ands r0, r6
	str r0, [r1, #0x5c]
	adds r3, #4
	cmp r5, r2
	bhi _0805561C
	ldr r0, [r3]
	cmp r0, #0
	bne _08055604
_0805561C:
	movs r0, #0x78
	mov r1, r8
	strh r0, [r1, #0x1c]
_08055622:
	mov r2, sb
	ldrh r1, [r2]
	ldr r0, _080556D0 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2]
	mov r1, r8
	ldr r0, [r1, #0x10]
	ldr r1, _080556D4 @ =0xFFDFFFFF
	ands r0, r1
	mov r2, r8
	str r0, [r2, #0x10]
	mov r2, sl
	ldr r0, [r2, #0x10]
	ands r0, r1
	str r0, [r2, #0x10]
	ldr r3, _080556D8 @ =gCurrentLevel
	ldrb r0, [r3]
	mov r1, ip
	strb r0, [r1]
	mov r2, r8
	adds r2, #0x26
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	mov r2, sb
	ldrh r1, [r2]
	ldr r0, _080556DC @ =0x0000FFDF
	ands r0, r1
	strh r0, [r2]
	ldrb r0, [r3]
	subs r0, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08055672
	bl sub_804C598
	bl sub_804C40C
_08055672:
	ldr r0, [r4, #0x20]
	bl TaskDestroy
	ldr r0, [r4, #0x1c]
	bl TaskDestroy
	ldr r0, [r4, #0x18]
	bl TaskDestroy
	ldr r0, [r4, #0x14]
	bl TaskDestroy
	ldr r0, [r4, #0x10]
	bl TaskDestroy
	ldr r0, [r4, #0xc]
	bl TaskDestroy
	ldr r0, _080556E0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	ldr r0, _080556B8 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	bhi _080556E4
	bl CreateStageUI
	b _080556E8
	.align 2, 0
_080556AC: .4byte gDispCnt
_080556B0: .4byte 0x00001FFF
_080556B4: .4byte gBldRegs
_080556B8: .4byte gGameMode
_080556BC: .4byte gPlayer
_080556C0: .4byte gStageFlags
_080556C4: .4byte gPartner
_080556C8: .4byte gUnknown_03005020
_080556CC: .4byte gMultiplayerPlayerTasks
_080556D0: .4byte 0x0000FFFE
_080556D4: .4byte 0xFFDFFFFF
_080556D8: .4byte gCurrentLevel
_080556DC: .4byte 0x0000FFDF
_080556E0: .4byte gCurTask
_080556E4:
	bl sub_801B574
_080556E8:
	ldr r0, _08055704 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xd
	bne _0805571A
	movs r0, #0xf0
	lsls r0, r0, #7
	movs r1, #0xa0
	lsls r1, r1, #7
	bl sub_804A5D8
	b _0805571A
	.align 2, 0
_08055704: .4byte gCurrentLevel
_08055708:
	ldr r0, _0805572C @ =gCurrentLevel
	ldrb r0, [r0]
	subs r0, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0805571A
	bl sub_804C40C
_0805571A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805572C: .4byte gCurrentLevel

	thumb_func_start sub_8055730
sub_8055730: @ 0x08055730
	push {lr}
	ldr r0, _0805574C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	movs r2, #0x18
	ldrsh r0, [r1, r2]
	cmp r0, #0xd7
	ble _08055750
	ldrh r0, [r1, #0xa]
	subs r0, #8
	b _08055760
	.align 2, 0
_0805574C: .4byte gCurTask
_08055750:
	cmp r0, #0xa
	ble _08055758
	movs r0, #0
	b _08055760
_08055758:
	cmp r0, #0
	ble _08055762
	ldrh r0, [r1, #0xa]
	adds r0, #8
_08055760:
	strh r0, [r1, #0xa]
_08055762:
	ldrh r0, [r1, #0x18]
	cmp r0, #0x69
	bls _0805577C
	adds r0, r1, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805577C
	adds r0, r1, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _08055788
_0805577C:
	ldr r0, _08055784 @ =gUnknown_086883AC
	bl sub_8052F78
	b _0805578E
	.align 2, 0
_08055784: .4byte gUnknown_086883AC
_08055788:
	ldr r0, _08055794 @ =gUnknown_086883AC
	bl sub_80530CC
_0805578E:
	pop {r0}
	bx r0
	.align 2, 0
_08055794: .4byte gUnknown_086883AC

	thumb_func_start sub_8055798
sub_8055798: @ 0x08055798
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08055804 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r0, [r4, #0x18]
	movs r2, #0x18
	ldrsh r1, [r4, r2]
	cmp r1, #0xd7
	ble _08055826
	subs r0, #0xd7
	lsls r0, r0, #7
	movs r1, #0xa
	bl Div
	movs r5, #0
	lsls r0, r0, #0x10
	movs r1, #0x20
	rsbs r1, r1, #0
	mov sb, r1
	asrs r1, r0, #0x10
	rsbs r0, r0, #0
	mov r8, r0
	rsbs r6, r1, #0
	ldr r7, _08055808 @ =gUnknown_08688394
_080557D6:
	strh r6, [r4, #0xc]
	mov r2, r8
	asrs r0, r2, #0x10
	cmp r0, sb
	blt _08055814
	ldrh r0, [r4, #0x18]
	cmp r0, #0x69
	bls _080557FA
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	beq _080557FA
	adds r0, r4, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805580C
_080557FA:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_8052F78
	b _08055814
	.align 2, 0
_08055804: .4byte gCurTask
_08055808: .4byte gUnknown_08688394
_0805580C:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_80530CC
_08055814:
	movs r0, #0x80
	lsls r0, r0, #0xe
	add r8, r0
	adds r6, #0x20
	adds r7, #1
	adds r5, #1
	cmp r5, #3
	ble _080557D6
	b _080558F0
_08055826:
	cmp r1, #0x1f
	ble _0805586E
	movs r5, #0
	ldr r6, _08055858 @ =gUnknown_08688394
_0805582E:
	lsls r0, r5, #5
	strh r0, [r4, #0xc]
	ldrh r0, [r4, #0x18]
	cmp r0, #0x69
	bls _0805584C
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805584C
	adds r0, r4, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805585C
_0805584C:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_8052F78
	b _08055864
	.align 2, 0
_08055858: .4byte gUnknown_08688394
_0805585C:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_80530CC
_08055864:
	adds r6, #1
	adds r5, #1
	cmp r5, #3
	ble _0805582E
	b _080558F0
_0805586E:
	cmp r1, #0x19
	ble _080558F0
	subs r0, #0xd7
	lsls r0, r0, #7
	movs r1, #6
	bl Div
	subs r0, #0xb0
	mov r8, r0
	ldr r1, _080558CC @ =0x000001FF
	adds r0, r1, #0
	movs r5, #0
	mov r2, r8
	ands r2, r0
	mov r8, r2
	ldr r0, _080558D0 @ =0x000001A5
	mov sl, r0
	lsls r7, r2, #0x10
	mov r6, r8
	movs r1, #0x20
	rsbs r1, r1, #0
	mov sb, r1
_0805589A:
	cmp r8, sl
	ble _080558E2
	strh r6, [r4, #0xc]
	asrs r0, r7, #0x10
	cmp r0, sb
	blt _080558E2
	ldrh r0, [r4, #0x18]
	cmp r0, #0x69
	bls _080558C0
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	beq _080558C0
	adds r0, r4, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _080558D8
_080558C0:
	ldr r0, _080558D4 @ =gUnknown_08688394
	adds r0, r5, r0
	adds r1, r4, #0
	bl sub_8052F78
	b _080558E2
	.align 2, 0
_080558CC: .4byte 0x000001FF
_080558D0: .4byte 0x000001A5
_080558D4: .4byte gUnknown_08688394
_080558D8:
	ldr r0, _08055900 @ =gUnknown_08688394
	adds r0, r5, r0
	adds r1, r4, #0
	bl sub_80530CC
_080558E2:
	movs r2, #0x80
	lsls r2, r2, #0xe
	adds r7, r7, r2
	adds r6, #0x20
	adds r5, #1
	cmp r5, #3
	ble _0805589A
_080558F0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08055900: .4byte gUnknown_08688394

	thumb_func_start sub_8055904
sub_8055904: @ 0x08055904
	push {lr}
	ldr r0, _08055928 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	movs r2, #0x18
	ldrsh r0, [r1, r2]
	cmp r0, #0xd7
	ble _0805592C
	ldrh r2, [r1, #0xc]
	movs r3, #0xc
	ldrsh r0, [r1, r3]
	cmp r0, #0x9f
	bgt _08055950
	adds r0, r2, #2
	b _0805594E
	.align 2, 0
_08055928: .4byte gCurTask
_0805592C:
	cmp r0, #0x23
	ble _0805593E
	movs r0, #0xb4
	strh r0, [r1, #0xa]
	movs r0, #0x90
	strh r0, [r1, #0xc]
	movs r0, #6
	strh r0, [r1, #0xe]
	b _08055950
_0805593E:
	cmp r0, #0x1e
	ble _08055950
	ldrh r2, [r1, #0xc]
	movs r3, #0xc
	ldrsh r0, [r1, r3]
	cmp r0, #0x90
	ble _08055950
	subs r0, r2, #3
_0805594E:
	strh r0, [r1, #0xc]
_08055950:
	ldr r0, _08055980 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xb
	bgt _0805598E
	ldrh r0, [r1, #0x18]
	cmp r0, #0x69
	bls _08055976
	adds r0, r1, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	beq _08055976
	adds r0, r1, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _08055988
_08055976:
	ldr r0, _08055984 @ =gUnknown_086883B0
	bl sub_8052F78
	b _0805598E
	.align 2, 0
_08055980: .4byte gCurrentLevel
_08055984: .4byte gUnknown_086883B0
_08055988:
	ldr r0, _08055994 @ =gUnknown_086883B0
	bl sub_80530CC
_0805598E:
	pop {r0}
	bx r0
	.align 2, 0
_08055994: .4byte gUnknown_086883B0

	thumb_func_start sub_8055998
sub_8055998: @ 0x08055998
	push {lr}
	ldr r0, _080559D8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	movs r1, #0x18
	ldrsh r0, [r2, r1]
	cmp r0, #0xd7
	ble _080559DC
	ldrh r3, [r2, #0xa]
	movs r0, #0xa
	ldrsh r1, [r2, r0]
	movs r0, #0x20
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080559D0
	adds r0, r3, #0
	adds r0, #0x20
	strh r0, [r2, #0xa]
	ldrh r1, [r2, #0xe]
	movs r3, #0xe
	ldrsh r0, [r2, r3]
	cmp r0, #0
	beq _080559D0
	subs r0, r1, #1
	strh r0, [r2, #0xe]
_080559D0:
	ldrh r0, [r2, #0xa]
	subs r0, #0x1a
	b _08055A60
	.align 2, 0
_080559D8: .4byte gCurTask
_080559DC:
	cmp r0, #0x19
	bgt _08055A5E
	cmp r0, #0xf
	ble _08055A62
	ldr r3, _08055A0C @ =gCurrentLevel
	ldrb r1, [r3]
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0xd
	bne _08055A10
	movs r0, #0x7e
	strh r0, [r2, #0xc]
	ldrh r0, [r2, #0xa]
	subs r0, #0x1a
	strh r0, [r2, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x10
	rsbs r1, r1, #0
	cmp r0, r1
	bge _08055A62
	strh r1, [r2, #0xa]
	b _08055A62
	.align 2, 0
_08055A0C: .4byte gCurrentLevel
_08055A10:
	cmp r0, #0xc
	bgt _08055A48
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08055A48
	ldr r0, _08055A40 @ =gUnknown_03005020
	ldrb r1, [r0]
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r1, r0
	beq _08055A48
	ldr r0, _08055A44 @ =0x0000FFF0
	strh r0, [r2, #0xa]
	ldrh r0, [r2, #0xc]
	adds r0, #9
	strh r0, [r2, #0xc]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x7e
	ble _08055A62
	movs r0, #0x7e
	strh r0, [r2, #0xc]
	b _08055A62
	.align 2, 0
_08055A40: .4byte gUnknown_03005020
_08055A44: .4byte 0x0000FFF0
_08055A48:
	movs r0, #0x7e
	strh r0, [r2, #0xc]
	ldrh r0, [r2, #0xa]
	subs r0, #0x1a
	strh r0, [r2, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x10
	rsbs r1, r1, #0
	cmp r0, r1
	bge _08055A62
_08055A5E:
	ldr r0, _08055A88 @ =0x0000FFF0
_08055A60:
	strh r0, [r2, #0xa]
_08055A62:
	ldrh r0, [r2, #0x18]
	cmp r0, #0x69
	bls _08055A7C
	adds r0, r2, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	beq _08055A7C
	adds r0, r2, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _08055A90
_08055A7C:
	ldr r0, _08055A8C @ =gUnknown_086883B8
	adds r1, r2, #0
	bl sub_8052F78
	b _08055A98
	.align 2, 0
_08055A88: .4byte 0x0000FFF0
_08055A8C: .4byte gUnknown_086883B8
_08055A90:
	ldr r0, _08055A9C @ =gUnknown_086883B8
	adds r1, r2, #0
	bl sub_80530CC
_08055A98:
	pop {r0}
	bx r0
	.align 2, 0
_08055A9C: .4byte gUnknown_086883B8

	thumb_func_start sub_8055AA0
sub_8055AA0: @ 0x08055AA0
	push {lr}
	ldr r0, _08055AC0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1, #0x18]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0xd7
	ble _08055AC4
	ldrh r0, [r1, #0xa]
	subs r0, #0x1a
	b _08055ADE
	.align 2, 0
_08055AC0: .4byte gCurTask
_08055AC4:
	cmp r2, #0x19
	bgt _08055ADC
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _08055AE0
	ldrh r0, [r1, #0xa]
	subs r0, #0x1a
	strh r0, [r1, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x6f
	bgt _08055AE0
_08055ADC:
	movs r0, #0x70
_08055ADE:
	strh r0, [r1, #0xa]
_08055AE0:
	ldrh r0, [r1, #0x18]
	cmp r0, #0x69
	bls _08055AFA
	adds r0, r1, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	beq _08055AFA
	adds r0, r1, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _08055B08
_08055AFA:
	ldr r0, _08055B04 @ =gUnknown_086883C4
	bl sub_8052F78
	b _08055B0E
	.align 2, 0
_08055B04: .4byte gUnknown_086883C4
_08055B08:
	ldr r0, _08055B14 @ =gUnknown_086883C4
	bl sub_80530CC
_08055B0E:
	pop {r0}
	bx r0
	.align 2, 0
_08055B14: .4byte gUnknown_086883C4

	thumb_func_start sub_8055B18
sub_8055B18: @ 0x08055B18
	push {r4, r5, lr}
	sub sp, #0x1c
	ldr r1, _08055B64 @ =gUnknown_086883CC
	mov r0, sp
	movs r2, #0x16
	bl memcpy
	mov r0, sp
	adds r0, #0x16
	movs r1, #0
	movs r2, #5
	bl memset
	ldr r0, _08055B68 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0xd7
	ble _08055B6C
	ldrh r2, [r4, #0xa]
	adds r0, r2, #0
	subs r0, #0x1c
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x1f
	rsbs r1, r1, #0
	cmp r0, r1
	bge _08055B96
	ldrh r0, [r4, #0xe]
	subs r0, #1
	strh r0, [r4, #0xe]
	adds r0, r2, #4
	b _08055B88
	.align 2, 0
_08055B64: .4byte gUnknown_086883CC
_08055B68: .4byte gCurTask
_08055B6C:
	cmp r0, #0x19
	ble _08055BC0
	ldrh r2, [r4, #0xa]
	subs r0, r2, #2
	strh r0, [r4, #0xa]
	movs r1, #9
	strh r1, [r4, #0xe]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, #0x28
	cmp r0, r1
	bge _08055B96
	adds r0, r2, #0
	adds r0, #0x1e
_08055B88:
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0x1a]
	adds r0, #1
	movs r1, #7
	bl Mod
	strh r0, [r4, #0x1a]
_08055B96:
	ldrh r0, [r4, #0x18]
	cmp r0, #0x69
	bls _08055C12
	ldr r1, _08055BBC @ =0x03000020
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08055C12
	adds r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08055C12
	ldrh r0, [r4, #0x1a]
	add r0, sp
	adds r1, r4, #0
	bl sub_80530CC
	b _08055C2E
	.align 2, 0
_08055BBC: .4byte 0x03000020
_08055BC0:
	cmp r0, #0xf
	ble _08055C2E
	movs r0, #0x80
	strh r0, [r4, #0xc]
	ldrh r3, [r4, #0xa]
	adds r0, r3, #0
	subs r0, #0x1c
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0xef
	bgt _08055C2E
	asrs r0, r0, #0x15
	movs r1, #9
	subs r1, r1, r0
	strh r1, [r4, #0xe]
	movs r0, #0x1f
	rsbs r0, r0, #0
	cmp r2, r0
	bge _08055BF8
	adds r0, r3, #4
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0x1a]
	adds r0, #1
	movs r1, #7
	bl Mod
	strh r0, [r4, #0x1a]
_08055BF8:
	ldrh r0, [r4, #0x18]
	cmp r0, #0x69
	bls _08055C12
	ldr r1, _08055C20 @ =0x03000020
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08055C12
	adds r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08055C24
_08055C12:
	ldrh r0, [r4, #0x1a]
	add r0, sp
	adds r1, r4, #0
	bl sub_8052F78
	b _08055C2E
	.align 2, 0
_08055C20: .4byte 0x03000020
_08055C24:
	ldrh r0, [r4, #0x1a]
	add r0, sp
	adds r1, r4, #0
	bl sub_80530CC
_08055C2E:
	add sp, #0x1c
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8055C38
sub_8055C38: @ 0x08055C38
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x1c]
	bl VramFree
	pop {r0}
	bx r0

    thumb_func_start sub_8055C4C
sub_8055C4C: @ 0x08055C4C
    bx lr
    .align 2, 0

	thumb_func_start sub_8055C50
sub_8055C50: @ 0x08055C50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	mov sl, r0
	bl sub_8053674
	add r4, sp, #0x2c
	movs r0, #0x20
	mov r8, r0
	mov r1, r8
	strb r1, [r4]
	mov r5, sp
	adds r5, #0x2b
	movs r0, #4
	strb r0, [r5]
	ldr r7, _08055DBC @ =gUiGraphics
	movs r2, #0xe0
	lsls r2, r2, #2
	adds r0, r7, r2
	ldr r0, [r0]
	str r0, [sp, #0x14]
	movs r1, #0xe1
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r2, #0xa0
	lsls r2, r2, #3
	str r2, [sp, #0x18]
	mov r0, r8
	str r0, [sp, #0x24]
	add r1, sp, #0x28
	mov sb, r1
	movs r2, #6
	strb r2, [r1]
	mov r1, sl
	ldr r0, [r1, #4]
	str r0, [sp, #0xc]
	mov r6, sp
	adds r6, #0x2a
	movs r2, #0xd
	strb r2, [r6]
	movs r1, #0xe2
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r1, sp
	movs r2, #0xe3
	lsls r2, r2, #2
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #8]
	adds r2, #4
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #9]
	adds r2, #4
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #0xa]
	adds r2, #4
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r0, #0x21
	strb r0, [r4]
	movs r0, #5
	strb r0, [r5]
	movs r1, #0xe7
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	str r0, [sp, #0x14]
	movs r2, #0xe8
	lsls r2, r2, #2
	adds r0, r7, r2
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x18]
	mov r1, r8
	str r1, [sp, #0x24]
	movs r0, #6
	mov r2, sb
	strb r0, [r2]
	mov r1, sl
	ldr r0, [r1]
	str r0, [sp, #0xc]
	movs r2, #0xd
	strb r2, [r6]
	movs r1, #0xe9
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r1, sp
	movs r2, #0xea
	lsls r2, r2, #2
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #8]
	adds r2, #4
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #9]
	adds r2, #4
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #0xa]
	adds r2, #4
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r0, #0x2d
	strb r0, [r4]
	movs r0, #0xe
	strb r0, [r5]
	ldr r1, _08055DC0 @ =0x000004EC
	adds r0, r7, r1
	ldr r0, [r0]
	str r0, [sp, #0x14]
	movs r2, #0x9e
	lsls r2, r2, #3
	adds r0, r7, r2
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x18]
	mov r1, r8
	str r1, [sp, #0x24]
	movs r0, #6
	mov r2, sb
	strb r0, [r2]
	mov r1, sl
	ldr r0, [r1, #8]
	str r0, [sp, #0xc]
	movs r2, #0xd
	strb r2, [r6]
	ldr r1, _08055DC4 @ =0x000004F4
	adds r0, r7, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r1, sp
	movs r2, #0x9f
	lsls r2, r2, #3
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #8]
	adds r2, #4
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #9]
	ldr r2, _08055DC8 @ =gUiGraphics + ((45 * 0x1C) + 0x14)
	ldr r0, [r2]
	strb r0, [r1, #0xa]
	ldr r2, _08055DCC @ =0x00000504
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08055DBC: .4byte gUiGraphics
_08055DC0: .4byte 0x000004EC
_08055DC4: .4byte 0x000004F4
_08055DC8: .4byte gUiGraphics + ((45 * 0x1C) + 0x14)
_08055DCC: .4byte 0x00000504

	thumb_func_start sub_8055DD0
sub_8055DD0: @ 0x08055DD0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	movs r7, #0
	ldr r0, _08055E8C @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xa
	bne _08055DFC
	ldr r2, _08055E90 @ =gCamera
	ldrh r1, [r2, #0x26]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2, #0x26]
_08055DFC:
	ldr r0, _08055E94 @ =gBldRegs
	movs r1, #0
	mov r8, r1
	strh r7, [r0]
	strh r7, [r0, #4]
	ldr r0, _08055E98 @ =gWinRegs
	strh r7, [r0]
	strh r7, [r0, #4]
	strh r7, [r0, #2]
	strh r7, [r0, #6]
	ldr r0, _08055E9C @ =sub_8056084
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08055EA0 @ =sub_8056CB4
	str r1, [sp]
	movs r1, #0x84
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r5
	mov sl, r0
	str r7, [r0, #0x78]
	str r6, [r0, #0x7c]
	ldr r3, _08055EA4 @ =0x03000080
	adds r0, r5, r3
	mov r1, r8
	strb r1, [r0]
	movs r0, #0x40
	bl VramMalloc
	mov r3, sl
	str r0, [r3, #4]
	strh r7, [r3, #8]
	movs r0, #0x80
	str r0, [r3, #0x10]
	adds r0, #0x80
	strh r0, [r3, #0x16]
	strh r7, [r3, #0x18]
	movs r4, #3
	strh r4, [r3, #0x1a]
	strh r7, [r3, #0x1c]
	ldr r0, _08055EA8 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r3, _08055EAC @ =0x03000022
	adds r1, r5, r3
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08055EB0 @ =0x03000025
	adds r0, r5, r1
	mov r3, r8
	strb r3, [r0]
	movs r0, #0x25      @ MUS_GAME_OVER
	bl m4aSongNumStart
	adds r0, r6, #0
	ands r0, r4
	cmp r0, #0
	beq _08055EBC
	ldr r0, _08055EB4 @ =0x000002CB
	mov r1, sl
	strh r0, [r1, #0xa]
	ldr r3, _08055EB8 @ =0x03000020
	adds r0, r5, r3
	mov r1, r8
	strb r1, [r0]
	b _08055ED2
	.align 2, 0
_08055E8C: .4byte gCurrentLevel
_08055E90: .4byte gCamera
_08055E94: .4byte gBldRegs
_08055E98: .4byte gWinRegs
_08055E9C: .4byte sub_8056084
_08055EA0: .4byte sub_8056CB4
_08055EA4: .4byte 0x03000080
_08055EA8: .4byte 0x03000021
_08055EAC: .4byte 0x03000022
_08055EB0: .4byte 0x03000025
_08055EB4: .4byte 0x000002CB
_08055EB8: .4byte 0x03000020
_08055EBC:
	movs r0, #4
	ands r0, r6
	cmp r0, #0
	beq _08055ED2
	ldr r0, _08055F1C @ =0x000002CB
	mov r3, sl
	strh r0, [r3, #0xa]
	ldr r0, _08055F20 @ =0x03000020
	adds r1, r5, r0
	movs r0, #2
	strb r0, [r1]
_08055ED2:
	mov r4, sl
	adds r4, #0x3c
	movs r0, #0x40
	bl VramMalloc
	str r0, [r4, #4]
	movs r3, #0
	movs r1, #0
	strh r1, [r4, #8]
	movs r0, #0x80
	str r0, [r4, #0x10]
	movs r0, #0x14
	strh r0, [r4, #0x16]
	movs r0, #0x78
	strh r0, [r4, #0x18]
	movs r2, #3
	strh r2, [r4, #0x1a]
	strh r1, [r4, #0x1c]
	mov r1, sl
	adds r1, #0x5d
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	mov r0, sl
	adds r0, #0x61
	strb r3, [r0]
	adds r0, r6, #0
	ands r0, r2
	cmp r0, #0
	beq _08055F24
	ldr r0, _08055F1C @ =0x000002CB
	strh r0, [r4, #0xa]
	subs r1, #2
	movs r0, #1
	b _08055F36
	.align 2, 0
_08055F1C: .4byte 0x000002CB
_08055F20: .4byte 0x03000020
_08055F24:
	movs r0, #4
	ands r0, r6
	cmp r0, #0
	beq _08055F38
	ldr r0, _08055FF4 @ =0x000002CB
	strh r0, [r4, #0xa]
	mov r1, sl
	adds r1, #0x5c
	movs r0, #3
_08055F36:
	strb r0, [r1]
_08055F38:
	movs r4, #5
	ands r4, r6
	cmp r4, #0
	beq _08056008
	ldr r0, _08055FF8 @ =sub_8056F54
	movs r1, #0x80
	lsls r1, r1, #6
	mov sb, r1
	movs r6, #0
	str r6, [sp]
	movs r1, #0x20
	mov r2, sb
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	mov r8, r3
	add r5, r8
	str r6, [r5, #0x18]
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r5, #0xa]
	movs r0, #0x5a
	strh r0, [r5, #0xc]
	movs r0, #8
	strh r0, [r5, #0xe]
	movs r0, #0xe
	strh r0, [r5, #0x10]
	movs r0, #6
	strh r0, [r5, #0x12]
	movs r4, #1
	strb r4, [r5, #0x16]
	movs r0, #0xa
	strh r0, [r5, #8]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r5, #0x1c]
	ldr r0, _08055FFC @ =sub_8056CE0
	ldr r1, _08056000 @ =sub_8056F30
	str r1, [sp]
	movs r1, #0x1c
	mov r2, sb
	movs r3, #0
	bl TaskCreate
	adds r7, r0, #0
	ldrh r0, [r7, #6]
	mov r1, r8
	adds r7, r0, r1
	str r6, [r7, #0x18]
	strh r6, [r7]
	movs r1, #1
	strh r4, [r7, #2]
	strh r4, [r7, #4]
	strh r6, [r7, #6]
	movs r0, #0x40
	strh r0, [r7, #8]
	strb r1, [r7, #0xa]
	ldr r0, _08056004 @ =sub_8056FA0
	str r6, [sp]
	movs r1, #0x34
	mov r2, sb
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	add r4, r8
	str r6, [r4, #0x24]
	movs r0, #9
	strh r0, [r4, #0x28]
	movs r0, #0x28
	bl VramMalloc
	str r0, [r4, #0x2c]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r4, #0x30]
	str r5, [r4, #0x1c]
	mov r3, sl
	str r3, [r4, #0x18]
	str r7, [r4, #0x20]
	ldr r1, [r5, #0x1c]
	str r1, [sp, #0xc]
	ldr r0, [r4, #0x30]
	str r0, [sp, #4]
	ldr r0, [r4, #0x2c]
	str r0, [sp, #8]
	str r1, [r7, #0x14]
	b _0805605C
	.align 2, 0
_08055FF4: .4byte 0x000002CB
_08055FF8: .4byte sub_8056F54
_08055FFC: .4byte sub_8056CE0
_08056000: .4byte sub_8056F30
_08056004: .4byte sub_8056FA0
_08056008:
	movs r0, #2
	ands r0, r6
	cmp r0, #0
	beq _08056064
	ldr r0, _0805607C @ =sub_8056E24
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08056080 @ =sub_8056F30
	str r1, [sp]
	movs r1, #0x1c
	movs r3, #0
	bl TaskCreate
	adds r7, r0, #0
	ldrh r1, [r7, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	str r4, [r7, #0x18]
	strh r4, [r7]
	movs r1, #1
	movs r0, #1
	strh r0, [r7, #2]
	strh r0, [r7, #4]
	strh r4, [r7, #6]
	movs r0, #0x60
	strh r0, [r7, #8]
	strb r1, [r7, #0xa]
	movs r0, #0x10
	bl VramMalloc
	str r0, [sp, #0xc]
	movs r0, #0x10
	bl VramMalloc
	str r0, [sp, #4]
	movs r0, #0x28
	bl VramMalloc
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	str r0, [r7, #0x14]
_0805605C:
	ldr r0, [sp, #4]
	str r0, [r7, #0xc]
	ldr r0, [sp, #8]
	str r0, [r7, #0x10]
_08056064:
	add r0, sp, #4
	bl sub_8055C50
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805607C: .4byte sub_8056E24
_08056080: .4byte sub_8056F30

	thumb_func_start sub_8056084
sub_8056084: @ 0x08056084
	push {r4, r5, r6, r7, lr}
	ldr r0, _080560EC @ =gCurTask
	ldr r6, [r0]
	ldrh r5, [r6, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldr r1, [r4, #0x78]
	movs r0, #0
	mov ip, r0
	movs r2, #0x98
	lsls r2, r2, #1
	strh r2, [r4, #0x16]
	movs r3, #0x3c
	strh r3, [r4, #0x18]
	ldr r7, _080560F0 @ =0x03000052
	adds r0, r5, r7
	strh r2, [r0]
	ldr r2, _080560F4 @ =0x03000054
	adds r0, r5, r2
	strh r3, [r0]
	lsls r1, r1, #0x10
	movs r7, #0x80
	lsls r7, r7, #9
	adds r1, r1, r7
	asrs r0, r1, #0x10
	str r0, [r4, #0x78]
	adds r1, r0, #0
	cmp r1, #0x3b
	ble _080560CA
	mov r0, ip
	str r0, [r4, #0x10]
	str r0, [r4, #0x4c]
	ldr r0, _080560F8 @ =sub_8056100
	str r0, [r6, #8]
_080560CA:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r2, _080560FC @ =0x0300003C
	adds r4, r5, r2
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080560EC: .4byte gCurTask
_080560F0: .4byte 0x03000052
_080560F4: .4byte 0x03000054
_080560F8: .4byte sub_8056100
_080560FC: .4byte 0x0300003C

	thumb_func_start sub_8056100
sub_8056100: @ 0x08056100
	push {r4, r5, r6, r7, lr}
	ldr r0, _08056174 @ =gCurTask
	ldr r7, [r0]
	ldrh r6, [r7, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r6, r0
	ldr r0, [r5, #0x78]
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	ldr r1, _08056178 @ =0xFFC40000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	movs r1, #0xb8
	muls r0, r1, r0
	movs r1, #0x1e
	bl __divsi3
	movs r1, #0xf0
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, #0x40
	strh r1, [r5, #0x16]
	movs r2, #0x3c
	strh r2, [r5, #0x18]
	ldr r3, _0805617C @ =0x03000052
	adds r0, r6, r3
	strh r1, [r0]
	ldr r1, _08056180 @ =0x03000054
	adds r0, r6, r1
	strh r2, [r0]
	adds r4, #1
	lsls r4, r4, #0x10
	asrs r0, r4, #0x10
	str r0, [r5, #0x78]
	adds r4, r0, #0
	cmp r4, #0x59
	ble _08056152
	ldr r0, _08056184 @ =sub_805618C
	str r0, [r7, #8]
_08056152:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r3, _08056188 @ =0x0300003C
	adds r4, r6, r3
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08056174: .4byte gCurTask
_08056178: .4byte 0xFFC40000
_0805617C: .4byte 0x03000052
_08056180: .4byte 0x03000054
_08056184: .4byte sub_805618C
_08056188: .4byte 0x0300003C

	thumb_func_start sub_805618C
sub_805618C: @ 0x0805618C
	push {r4, r5, lr}
	ldr r0, _080561D4 @ =gCurTask
	ldr r3, [r0]
	ldrh r2, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r1, [r0, #0x78]
	adds r4, r0, #0
	ldr r0, _080561D8 @ =0x0300003C
	adds r5, r2, r0
	movs r2, #0x80
	strh r2, [r4, #0x16]
	movs r0, #0x3c
	strh r0, [r4, #0x18]
	strh r2, [r5, #0x16]
	strh r0, [r5, #0x18]
	lsls r1, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r1, r0
	asrs r0, r1, #0x10
	str r0, [r4, #0x78]
	adds r1, r0, #0
	cmp r1, #0x77
	ble _080561F4
	str r2, [r4, #0x10]
	str r2, [r5, #0x10]
	ldr r1, [r4, #0x7c]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080561E0
	ldr r0, _080561DC @ =sub_8056348
	b _080561F2
	.align 2, 0
_080561D4: .4byte gCurTask
_080561D8: .4byte 0x0300003C
_080561DC: .4byte sub_8056348
_080561E0:
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _080561F0
	ldr r0, _080561EC @ =sub_8056218
	b _080561F2
	.align 2, 0
_080561EC: .4byte sub_8056218
_080561F0:
	ldr r0, _08056214 @ =sub_80565C4
_080561F2:
	str r0, [r3, #8]
_080561F4:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08056214: .4byte sub_80565C4

	thumb_func_start sub_8056218
sub_8056218: @ 0x08056218
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _0805630C @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r1, [r0, #0x78]
	adds r6, r0, #0
	ldr r0, _08056310 @ =0x0300003C
	adds r0, r0, r2
	mov r8, r0
	lsls r1, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r1, r2
	asrs r0, r1, #0x10
	str r0, [r6, #0x78]
	lsrs r0, r1, #0x10
	str r0, [sp, #0xc]
	asrs r4, r1, #0x10
	cmp r4, #0xd8
	ble _080562F2
	ldr r2, _08056314 @ =sa2__gUnknown_030054B8
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	movs r3, #0xa0
	orrs r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r1, r8
	str r0, [r1, #0x10]
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	orrs r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [r6, #0x10]
	adds r1, r4, #0
	subs r1, #0xf8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0x20
	subs r0, r0, r1
	mov r1, sp
	movs r2, #0
	mov sl, r2
	mov r2, sl
	strh r2, [r1]
	mov r2, sp
	ldr r1, _08056318 @ =gSineTable
	lsls r0, r0, #0x10
	asrs r0, r0, #0xc
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r4, r0, #0x16
	strh r4, [r2, #2]
	adds r5, r4, #0
	cmp r5, #9
	bgt _080562AE
	mov r1, sp
	movs r0, #0xa
	strh r0, [r1, #2]
_080562AE:
	mov r0, sp
	strh r7, [r0, #4]
	mov r1, sp
	movs r0, #0x7f
	strh r0, [r1, #6]
	mov r0, sp
	movs r1, #0x3c
	mov sb, r1
	mov r2, sb
	strh r2, [r0, #8]
	adds r0, r6, #0
	mov r1, sp
	bl TransformSprite
	mov r0, sp
	mov r1, sl
	strh r1, [r0]
	strh r4, [r0, #2]
	cmp r5, #9
	bgt _080562DC
	mov r1, sp
	movs r0, #0xa
	strh r0, [r1, #2]
_080562DC:
	mov r0, sp
	strh r7, [r0, #4]
	mov r1, sp
	ldrh r0, [r0, #6]
	strh r0, [r1, #6]
	mov r0, sp
	mov r2, sb
	strh r2, [r0, #8]
	mov r0, r8
	bl TransformSprite
_080562F2:
	ldr r1, [sp, #0xc]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe8
	ble _08056320
	cmp r0, #0xf7
	ble _08056338
	ldr r0, _0805630C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0805631C @ =sub_8056AC8
	str r0, [r1, #8]
	b _08056338
	.align 2, 0
_0805630C: .4byte gCurTask
_08056310: .4byte 0x0300003C
_08056314: .4byte sa2__gUnknown_030054B8
_08056318: .4byte gSineTable
_0805631C: .4byte sub_8056AC8
_08056320:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, r8
	bl DisplaySprite
_08056338:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8056348
sub_8056348: @ 0x08056348
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r1, _08056468 @ =gCurTask
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	mov sl, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r3, sl
	adds r5, r3, r0
	ldr r0, [r5, #0x78]
	ldr r6, _0805646C @ =0x0300003C
	add r6, sl
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	str r1, [sp, #0xc]
	ldr r3, _08056470 @ =0xFF880000
	adds r0, r0, r3
	lsrs r0, r0, #8
	lsls r2, r0, #0xc
	ldr r7, _08056474 @ =sa2__gUnknown_030054B8
	ldrb r0, [r7]
	adds r1, r0, #1
	strb r1, [r7]
	movs r1, #0x20
	orrs r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r3, #0x80
	orrs r0, r3
	str r0, [r5, #0x10]
	mov r0, sp
	movs r1, #0
	strh r1, [r0]
	mov r1, sp
	ldr r0, _08056478 @ =gSineTable
	asrs r2, r2, #0x10
	adds r3, #0x80
	mov sb, r3
	add r2, sb
	lsls r2, r2, #1
	adds r2, r2, r0
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r4, r0, #0x16
	strh r4, [r1, #2]
	mov r8, r4
	cmp r4, #9
	bgt _080563B6
	movs r0, #0xa
	strh r0, [r1, #2]
_080563B6:
	mov r0, sp
	mov r1, sb
	strh r1, [r0, #4]
	mov r1, sp
	movs r0, #0x7f
	strh r0, [r1, #6]
	mov r0, sp
	movs r3, #0x3c
	strh r3, [r0, #8]
	adds r0, r5, #0
	bl TransformSprite
	ldrb r0, [r7]
	adds r1, r0, #1
	strb r1, [r7]
	movs r1, #0x20
	orrs r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r3, #0x80
	orrs r0, r3
	str r0, [r6, #0x10]
	mov r0, sp
	movs r1, #0
	strh r1, [r0]
	strh r4, [r0, #2]
	mov r3, r8
	cmp r3, #9
	bgt _080563F6
	mov r1, sp
	movs r0, #0xa
	strh r0, [r1, #2]
_080563F6:
	mov r0, sp
	mov r1, sb
	strh r1, [r0, #4]
	mov r1, sp
	ldrh r0, [r0, #6]
	strh r0, [r1, #6]
	mov r0, sp
	movs r3, #0x3c
	strh r3, [r0, #8]
	adds r0, r6, #0
	bl TransformSprite
	ldr r0, [sp, #0xc]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r5, #0x78]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x87
	ble _08056458
	ldr r2, _0805647C @ =0x000002CB
	strh r2, [r5, #0xa]
	ldr r1, _08056480 @ =0x03000020
	add r1, sl
	movs r0, #2
	strb r0, [r1]
	strh r2, [r6, #0xa]
	ldr r1, _08056484 @ =0x0300005C
	add r1, sl
	movs r0, #3
	strb r0, [r1]
	ldr r0, _08056468 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08056488 @ =sub_805648C
	str r0, [r1, #8]
_08056458:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08056468: .4byte gCurTask
_0805646C: .4byte 0x0300003C
_08056470: .4byte 0xFF880000
_08056474: .4byte sa2__gUnknown_030054B8
_08056478: .4byte gSineTable
_0805647C: .4byte 0x000002CB
_08056480: .4byte 0x03000020
_08056484: .4byte 0x0300005C
_08056488: .4byte sub_805648C

	thumb_func_start sub_805648C
sub_805648C: @ 0x0805648C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r1, _080565AC @ =gCurTask
	ldr r0, [r1]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r0, [r6, #0x78]
	ldr r2, _080565B0 @ =0x0300003C
	adds r7, r1, r2
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	str r4, [sp, #0xc]
	ldr r1, _080565B4 @ =0xFF780000
	adds r0, r0, r1
	lsrs r0, r0, #8
	lsls r2, r0, #0xc
	ldr r3, _080565B8 @ =sa2__gUnknown_030054B8
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	movs r4, #0x20
	orrs r0, r4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x80
	mov sl, r1
	orrs r0, r1
	str r0, [r6, #0x10]
	mov r0, sp
	movs r4, #0
	strh r4, [r0]
	adds r1, #0x80
	adds r0, r1, #0
	asrs r2, r2, #0x10
	subs r0, r0, r2
	mov r2, sp
	ldr r1, _080565BC @ =gSineTable
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #0x80
	lsls r4, r4, #1
	mov sb, r4
	add r0, sb
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r5, r0, #0x16
	strh r5, [r2, #2]
	mov r0, sp
	adds r4, r5, #1
	strh r4, [r0, #2]
	mov r8, r4
	cmp r4, #9
	bgt _0805650C
	mov r1, sp
	movs r0, #0xa
	strh r0, [r1, #2]
_0805650C:
	mov r0, sp
	mov r1, sb
	strh r1, [r0, #4]
	mov r1, sp
	movs r0, #0x7f
	strh r0, [r1, #6]
	mov r0, sp
	movs r2, #0x3c
	strh r2, [r0, #8]
	adds r0, r6, #0
	str r3, [sp, #0x10]
	bl TransformSprite
	ldr r3, [sp, #0x10]
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	movs r1, #0x20
	orrs r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r2, sl
	orrs r0, r2
	str r0, [r7, #0x10]
	mov r0, sp
	movs r1, #0
	strh r1, [r0]
	strh r5, [r0, #2]
	strh r4, [r0, #2]
	mov r2, r8
	cmp r2, #9
	bgt _08056552
	mov r1, sp
	movs r0, #0xa
	strh r0, [r1, #2]
_08056552:
	mov r0, sp
	mov r4, sb
	strh r4, [r0, #4]
	mov r1, sl
	strh r1, [r0, #6]
	movs r2, #0x3c
	strh r2, [r0, #8]
	adds r0, r7, #0
	mov r1, sp
	bl TransformSprite
	ldr r0, [sp, #0xc]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r6, #0x78]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x97
	ble _0805659C
	ldr r4, _080565AC @ =gCurTask
	ldr r1, [r4]
	ldr r0, _080565C0 @ =sub_80565C4
	str r0, [r1, #8]
_0805659C:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080565AC: .4byte gCurTask
_080565B0: .4byte 0x0300003C
_080565B4: .4byte 0xFF780000
_080565B8: .4byte sa2__gUnknown_030054B8
_080565BC: .4byte gSineTable
_080565C0: .4byte sub_80565C4

	thumb_func_start sub_80565C4
sub_80565C4: @ 0x080565C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _080566D4 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r1, [r0, #0x78]
	adds r5, r0, #0
	ldr r0, _080566D8 @ =0x0300003C
	adds r6, r2, r0
	movs r0, #0x80
	strh r0, [r5, #0x16]
	movs r2, #0x3c
	mov sb, r2
	mov r3, sb
	strh r3, [r5, #0x18]
	str r0, [r5, #0x10]
	strh r0, [r6, #0x16]
	strh r3, [r6, #0x18]
	str r0, [r6, #0x10]
	lsls r1, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r1, r0
	asrs r0, r1, #0x10
	str r0, [r5, #0x78]
	lsrs r2, r1, #0x10
	mov sl, r2
	adds r4, r0, #0
	movs r0, #0xb3
	lsls r0, r0, #3
	cmp r4, r0
	ble _080566AE
	ldr r2, _080566DC @ =sa2__gUnknown_030054B8
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	movs r3, #0xa0
	orrs r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [r6, #0x10]
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	orrs r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [r5, #0x10]
	ldr r3, _080566E0 @ =0xFFFFFA48
	adds r1, r4, r3
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0x20
	subs r0, r0, r1
	mov r1, sp
	movs r2, #0
	strh r2, [r1]
	mov r2, sp
	ldr r1, _080566E4 @ =gSineTable
	lsls r0, r0, #0x10
	asrs r0, r0, #0xc
	movs r3, #0x80
	lsls r3, r3, #1
	mov r8, r3
	add r0, r8
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r4, r0, #0x16
	strh r4, [r2, #2]
	adds r7, r4, #0
	cmp r7, #9
	bgt _0805666C
	mov r1, sp
	movs r0, #0xa
	strh r0, [r1, #2]
_0805666C:
	mov r0, sp
	mov r1, r8
	strh r1, [r0, #4]
	mov r1, sp
	movs r0, #0x7f
	strh r0, [r1, #6]
	mov r0, sp
	mov r2, sb
	strh r2, [r0, #8]
	adds r0, r5, #0
	bl TransformSprite
	mov r0, sp
	movs r3, #0
	strh r3, [r0]
	strh r4, [r0, #2]
	cmp r7, #9
	bgt _08056696
	mov r1, sp
	movs r0, #0xa
	strh r0, [r1, #2]
_08056696:
	mov r0, sp
	mov r1, r8
	strh r1, [r0, #4]
	mov r1, sp
	ldrh r0, [r0, #6]
	strh r0, [r1, #6]
	mov r0, sp
	mov r2, sb
	strh r2, [r0, #8]
	adds r0, r6, #0
	bl TransformSprite
_080566AE:
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	movs r0, #0xb5
	lsls r0, r0, #3
	cmp r1, r0
	ble _080566EC
	adds r0, #0xf
	cmp r1, r0
	ble _08056704
	bl m4aMPlayAllStop
	bl m4aSoundVSyncOff
	ldr r0, _080566D4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080566E8 @ =sub_8056AC8
	str r0, [r1, #8]
	b _08056704
	.align 2, 0
_080566D4: .4byte gCurTask
_080566D8: .4byte 0x0300003C
_080566DC: .4byte sa2__gUnknown_030054B8
_080566E0: .4byte 0xFFFFFA48
_080566E4: .4byte gSineTable
_080566E8: .4byte sub_8056AC8
_080566EC:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_08056704:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8056714
sub_8056714: @ 0x08056714
	push {r4, r5, r6, r7, lr}
	ldr r7, _08056760 @ =gCurTask
	ldr r0, [r7]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r4, #0x18]
	ldrh r0, [r4, #0xa]
	adds r0, #0xc
	movs r5, #0
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08056740
	strh r5, [r4, #0xa]
_08056740:
	ldr r0, _08056764 @ =gUnknown_086883F8
	adds r1, r4, #0
	bl sub_80530CC
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb5
	ble _0805675A
	ldr r1, [r7]
	ldr r0, _08056768 @ =sub_8056F80
	str r0, [r1, #8]
	strh r5, [r4, #0xa]
	str r5, [r4, #0x18]
_0805675A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08056760: .4byte gCurTask
_08056764: .4byte gUnknown_086883F8
_08056768: .4byte sub_8056F80

	thumb_func_start sub_805676C
sub_805676C: @ 0x0805676C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x1c
	ldr r0, _08056814 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldrh r7, [r6, #0x24]
	mov r1, sp
	movs r0, #0
	mov r8, r0
	movs r0, #0x5b
	strh r0, [r1, #0xc]
	movs r0, #6
	strh r0, [r1, #0x12]
	mov r0, sp
	mov r1, r8
	strh r1, [r0, #8]
	mov r1, sp
	movs r0, #4
	strh r0, [r1, #0x10]
	movs r2, #1
	movs r0, #1
	strh r0, [r1, #0xe]
	mov r0, sp
	strb r2, [r0, #0x16]
	lsls r4, r7, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0x78
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r0, #0x29
	subs r0, r0, r1
	add r5, sp, #0x18
	strb r0, [r5]
	adds r0, r4, #0
	movs r1, #0x78
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0x50
	ble _0805681C
	adds r0, r1, #0
	subs r0, #0x50
	mov r4, sp
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x74
	muls r0, r1, r0
	movs r1, #0x12
	bl __divsi3
	adds r0, #0x74
	strh r0, [r4, #0xa]
	ldrb r0, [r5]
	cmp r0, #0x1f
	bls _0805689E
	mov r0, sp
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	strh r1, [r0, #2]
	mov r3, r8
	strh r3, [r0, #4]
	mov r3, sp
	ldr r2, _08056818 @ =sa2__gUnknown_030054B8
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r3, #6]
	adds r0, r5, #0
	mov r1, sp
	bl sub_8052C84
	b _0805689E
	.align 2, 0
_08056814: .4byte gCurTask
_08056818: .4byte sa2__gUnknown_030054B8
_0805681C:
	cmp r1, #0x14
	ble _08056864
	subs r1, #0x14
	mov r2, sp
	lsls r1, r1, #0x10
	asrs r1, r1, #0xe
	ldr r3, _0805685C @ =0x000001F1
	adds r0, r3, #0
	subs r0, r0, r1
	strh r0, [r2]
	mov r1, sp
	strh r0, [r1, #2]
	mov r0, sp
	mov r1, r8
	strh r1, [r0, #4]
	mov r3, sp
	ldr r2, _08056860 @ =sa2__gUnknown_030054B8
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r3, #6]
	mov r1, sp
	movs r0, #0x68
	strh r0, [r1, #0xa]
	movs r0, #0x53
	strh r0, [r1, #0xc]
	adds r0, r5, #0
	bl sub_8052C84
	b _0805689E
	.align 2, 0
_0805685C: .4byte 0x000001F1
_08056860: .4byte sa2__gUnknown_030054B8
_08056864:
	mov r4, sp
	movs r0, #0x74
	muls r0, r1, r0
	movs r1, #0x14
	bl __divsi3
	strh r0, [r4, #0xa]
	ldrb r0, [r5]
	cmp r0, #0x1f
	bls _0805689E
	mov r0, sp
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	strh r1, [r0, #2]
	mov r3, r8
	strh r3, [r0, #4]
	mov r3, sp
	ldr r2, _08056918 @ =sa2__gUnknown_030054B8
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r3, #6]
	adds r0, r5, #0
	mov r1, sp
	bl sub_8052C84
_0805689E:
	lsls r0, r7, #0x10
	asrs r2, r0, #0x10
	ldr r0, _0805691C @ =0x000004AF
	cmp r2, r0
	ble _080568B0
	ldr r0, _08056920 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08056924 @ =sub_8056FD0
	str r0, [r1, #8]
_080568B0:
	ldr r5, _08056928 @ =gPressedKeys
	ldrh r1, [r5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080568F8
	adds r0, r2, #0
	movs r1, #0x78
	bl Div
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	asrs r2, r0, #0x10
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r1, r1, #0x13
	lsrs r7, r1, #0x10
	ldr r4, [r6, #0x1c]
	movs r3, #0x96
	lsls r3, r3, #3
	adds r0, r2, #0
	movs r1, #0xa
	subs r1, r1, r0
	lsls r2, r1, #4
	subs r2, r2, r1
	lsls r2, r2, #3
	subs r3, r3, r2
	str r3, [r4, #0x18]
	ldr r1, [r6, #0x20]
	ldr r0, _0805692C @ =0x00000566
	subs r0, r0, r2
	str r0, [r1, #0x18]
	ldr r1, [r6, #0x18]
	str r0, [r1, #0x78]
_080568F8:
	ldrh r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08056934
	ldr r0, _08056920 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08056930 @ =sub_8056970
	str r0, [r1, #8]
	movs r0, #0
	str r0, [r6, #0x24]
	ldr r1, [r6, #0x18]
	adds r1, #0x80
	movs r0, #1
	strb r0, [r1]
	b _08056940
	.align 2, 0
_08056918: .4byte sa2__gUnknown_030054B8
_0805691C: .4byte 0x000004AF
_08056920: .4byte gCurTask
_08056924: .4byte sub_8056FD0
_08056928: .4byte gPressedKeys
_0805692C: .4byte 0x00000566
_08056930: .4byte sub_8056970
_08056934:
	lsls r0, r7, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	asrs r0, r0, #0x10
	str r0, [r6, #0x24]
_08056940:
	ldr r0, [r6, #0x24]
	movs r1, #0x78
	bl Mod
	cmp r0, #0x3c
	bne _08056960
	ldr r4, _0805696C @ =gUnknown_086883E4
	ldr r0, [r6, #0x24]
	movs r1, #0x78
	bl Div
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	bl m4aSongNumStart
_08056960:
	add sp, #0x1c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805696C: .4byte gUnknown_086883E4

	thumb_func_start sub_8056970
sub_8056970: @ 0x08056970
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x1c
	ldr r0, _080569FC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldrh r0, [r6, #0x24]
	mov r8, r0
	mov r1, sp
	movs r7, #0
	movs r0, #0x54
	strh r0, [r1, #0xc]
	movs r0, #6
	strh r0, [r1, #0x12]
	mov r0, sp
	strh r7, [r0, #8]
	movs r0, #5
	strh r0, [r1, #0x10]
	movs r2, #1
	movs r0, #1
	strh r0, [r1, #0xe]
	mov r0, sp
	strb r2, [r0, #0x16]
	add r5, sp, #0x18
	movs r0, #0x20
	strb r0, [r5]
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0x50
	ble _08056A04
	adds r0, r1, #0
	subs r0, #0x50
	mov r4, sp
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x74
	muls r0, r1, r0
	movs r1, #0x12
	bl __divsi3
	adds r0, #0x74
	strh r0, [r4, #0xa]
	ldrb r0, [r5]
	cmp r0, #0x1f
	bls _08056A84
	mov r0, sp
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r7, [r0, #4]
	mov r3, sp
	ldr r2, _08056A00 @ =sa2__gUnknown_030054B8
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r3, #6]
	adds r0, r5, #0
	mov r1, sp
	bl sub_8052C84
	b _08056A84
	.align 2, 0
_080569FC: .4byte gCurTask
_08056A00: .4byte sa2__gUnknown_030054B8
_08056A04:
	cmp r1, #0x14
	ble _08056A4C
	subs r1, #0x14
	mov r2, sp
	lsls r1, r1, #0x10
	asrs r1, r1, #0xe
	ldr r3, _08056A44 @ =0x000001F1
	adds r0, r3, #0
	subs r0, r0, r1
	strh r0, [r2]
	mov r1, sp
	strh r0, [r1, #2]
	mov r0, sp
	strh r7, [r0, #4]
	mov r3, sp
	ldr r2, _08056A48 @ =sa2__gUnknown_030054B8
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r3, #6]
	mov r1, sp
	movs r0, #0x58
	strh r0, [r1, #0xa]
	movs r0, #0x44
	strh r0, [r1, #0xc]
	adds r0, r5, #0
	bl sub_8052C84
	b _08056A84
	.align 2, 0
_08056A44: .4byte 0x000001F1
_08056A48: .4byte sa2__gUnknown_030054B8
_08056A4C:
	mov r4, sp
	movs r0, #0x74
	muls r0, r1, r0
	movs r1, #0x14
	bl __divsi3
	strh r0, [r4, #0xa]
	ldrb r0, [r5]
	cmp r0, #0x1f
	bls _08056A84
	mov r0, sp
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r7, [r0, #4]
	mov r3, sp
	ldr r2, _08056AB8 @ =sa2__gUnknown_030054B8
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r3, #6]
	adds r0, r5, #0
	mov r1, sp
	bl sub_8052C84
_08056A84:
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0x77
	ble _08056AA2
	ldr r0, _08056ABC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08056AC0 @ =sub_8056FD0
	str r0, [r1, #8]
	ldr r1, [r6, #0x20]
	ldr r0, _08056AC4 @ =0x00000566
	str r0, [r1, #0x18]
	ldr r1, [r6, #0x18]
	adds r0, #0x52
	str r0, [r1, #0x78]
_08056AA2:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r6, #0x24]
	add sp, #0x1c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08056AB8: .4byte sa2__gUnknown_030054B8
_08056ABC: .4byte gCurTask
_08056AC0: .4byte sub_8056FD0
_08056AC4: .4byte 0x00000566

	thumb_func_start sub_8056AC8
sub_8056AC8: @ 0x08056AC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08056C14 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	str r0, [sp]
	ldr r2, _08056C18 @ =gMPlayTable
	ldr r0, _08056C1C @ =gSongTable
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r2, [r0]
	ldr r1, _08056C20 @ =gBldRegs
	movs r4, #0
	movs r0, #0xff
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	ldr r1, [r2, #4]
	ldr r7, _08056C24 @ =0x0000FFFF
	adds r0, r1, #0
	ands r0, r7
	cmp r0, #0
	beq _08056B10
	cmp r1, #0
	blt _08056B10
	b _08056C8E
_08056B10:
	bl m4aMPlayAllStop
	bl m4aSoundVSyncOff
	ldr r2, _08056C28 @ =gFlags
	ldr r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r1, r0
	ldr r0, _08056C2C @ =0x04000200
	mov r8, r0
	ldrh r0, [r0]
	str r0, [sp, #4]
	ldr r6, _08056C30 @ =0x04000208
	ldrh r0, [r6]
	mov sl, r0
	ldr r5, _08056C34 @ =0x04000004
	ldrh r2, [r5]
	mov sb, r2
	mov r0, r8
	strh r4, [r0]
	ldrh r0, [r0]
	strh r4, [r6]
	ldrh r0, [r6]
	strh r4, [r5]
	ldrh r0, [r5]
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	ldr r2, _08056C28 @ =gFlags
	str r1, [r2]
	ldr r1, _08056C38 @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r4, _08056C3C @ =0x0000C5FF
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r3, _08056C40 @ =0x00007FFF
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
	ldr r0, _08056C44 @ =0x040000D4
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
	mov r0, sp
	ldrh r1, [r0, #4]
	mov r0, r8
	strh r1, [r0]
	ldrh r0, [r0]
	mov r2, sl
	strh r2, [r6]
	ldrh r0, [r6]
	mov r0, sb
	strh r0, [r5]
	ldrh r0, [r5]
	bl m4aSoundVSyncOn
	ldr r1, _08056C28 @ =gFlags
	ldr r0, [r1]
	ldr r1, _08056C48 @ =0xFFFF7FFF
	ands r0, r1
	ldr r2, _08056C28 @ =gFlags
	str r0, [r2]
	ldr r2, _08056C4C @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08056C50 @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, [sp]
	ldr r2, _08056C54 @ =0x03000080
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08056C6C
	movs r0, #0
	adds r1, r7, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08056C58 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08056C5C @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _08056C60 @ =sa2__gUnknown_03005390
	movs r1, #0
	strb r1, [r0]
	ldr r1, _08056C64 @ =gVramGraphicsCopyCursor
	ldr r0, _08056C68 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl ApplyGameStageSettings
	b _08056C8E
	.align 2, 0
_08056C14: .4byte gCurTask
_08056C18: .4byte gMPlayTable
_08056C1C: .4byte gSongTable
_08056C20: .4byte gBldRegs
_08056C24: .4byte 0x0000FFFF
_08056C28: .4byte gFlags
_08056C2C: .4byte 0x04000200
_08056C30: .4byte 0x04000208
_08056C34: .4byte 0x04000004
_08056C38: .4byte 0x040000B0
_08056C3C: .4byte 0x0000C5FF
_08056C40: .4byte 0x00007FFF
_08056C44: .4byte 0x040000D4
_08056C48: .4byte 0xFFFF7FFF
_08056C4C: .4byte gDispCnt
_08056C50: .4byte 0x00001FFF
_08056C54: .4byte 0x03000080
_08056C58: .4byte gBackgroundsCopyQueueCursor
_08056C5C: .4byte gBackgroundsCopyQueueIndex
_08056C60: .4byte sa2__gUnknown_03005390
_08056C64: .4byte gVramGraphicsCopyCursor
_08056C68: .4byte gVramGraphicsCopyQueueIndex
_08056C6C:
	movs r0, #0
	adds r1, r7, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08056CA0 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08056CA4 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _08056CA8 @ =sa2__gUnknown_03005390
	movs r2, #0
	strb r2, [r0]
	ldr r1, _08056CAC @ =gVramGraphicsCopyCursor
	ldr r0, _08056CB0 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl CreateSegaLogo
_08056C8E:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08056CA0: .4byte gBackgroundsCopyQueueCursor
_08056CA4: .4byte gBackgroundsCopyQueueIndex
_08056CA8: .4byte sa2__gUnknown_03005390
_08056CAC: .4byte gVramGraphicsCopyCursor
_08056CB0: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start sub_8056CB4
sub_8056CB4: @ 0x08056CB4
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #4]
	bl VramFree
	ldr r0, [r4, #0x40]
	bl VramFree
	ldr r1, _08056CDC @ =gBldRegs
	movs r0, #0xff
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08056CDC: .4byte gBldRegs

	thumb_func_start sub_8056CE0
sub_8056CE0: @ 0x08056CE0
	push {r4, r5, lr}
	ldr r0, _08056D20 @ =gCurTask
	ldr r4, [r0]
	ldrh r2, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
	movs r1, #0x18
	ldrsh r0, [r2, r1]
	adds r0, #1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	str r1, [r2, #0x18]
	adds r0, r1, #0
	cmp r0, #0x77
	ble _08056D1A
	ldr r3, _08056D24 @ =gDispCnt
	ldrh r1, [r3]
	ldr r2, _08056D28 @ =0x00001FFF
	adds r0, r2, #0
	ands r0, r1
	movs r5, #0x80
	lsls r5, r5, #6
	adds r1, r5, #0
	orrs r0, r1
	ands r0, r2
	strh r0, [r3]
	ldr r0, _08056D2C @ =sub_8056D30
	str r0, [r4, #8]
_08056D1A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08056D20: .4byte gCurTask
_08056D24: .4byte gDispCnt
_08056D28: .4byte 0x00001FFF
_08056D2C: .4byte sub_8056D30

	thumb_func_start sub_8056D30
sub_8056D30: @ 0x08056D30
	push {r4, r5, r6, lr}
	ldr r6, _08056D74 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r5, r0
	ldrh r4, [r5, #0x18]
	adds r0, r5, #0
	bl sub_805423C
	ldr r2, _08056D78 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	lsls r4, r4, #0x10
	movs r0, #0x80
	lsls r0, r0, #9
	adds r4, r4, r0
	asrs r0, r4, #0x10
	str r0, [r5, #0x18]
	adds r4, r0, #0
	cmp r4, #0x87
	ble _08056D6C
	ldr r1, [r6]
	ldr r0, _08056D7C @ =sub_8056D80
	str r0, [r1, #8]
_08056D6C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08056D74: .4byte gCurTask
_08056D78: .4byte gDispCnt
_08056D7C: .4byte sub_8056D80

	thumb_func_start sub_8056D80
sub_8056D80: @ 0x08056D80
	push {r4, r5, r6, lr}
	ldr r6, _08056DC4 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r5, r0
	ldrh r4, [r5, #0x18]
	adds r0, r5, #0
	bl sub_805423C
	ldr r2, _08056DC8 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	lsls r4, r4, #0x10
	movs r0, #0x80
	lsls r0, r0, #9
	adds r4, r4, r0
	asrs r0, r4, #0x10
	str r0, [r5, #0x18]
	adds r4, r0, #0
	cmp r4, #0x97
	ble _08056DBC
	ldr r1, [r6]
	ldr r0, _08056DCC @ =sub_8056DD0
	str r0, [r1, #8]
_08056DBC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08056DC4: .4byte gCurTask
_08056DC8: .4byte gDispCnt
_08056DCC: .4byte sub_8056DD0

	thumb_func_start sub_8056DD0
sub_8056DD0: @ 0x08056DD0
	push {r4, r5, lr}
	ldr r5, _08056E14 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #0x18
	ldrsh r1, [r0, r2]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	str r1, [r0, #0x18]
	bl sub_80543A4
	ldr r2, _08056E18 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	lsls r4, r4, #0x10
	ldr r0, _08056E1C @ =0x05650000
	cmp r4, r0
	ble _08056E0C
	ldr r1, [r5]
	ldr r0, _08056E20 @ =sub_8056EC4
	str r0, [r1, #8]
_08056E0C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08056E14: .4byte gCurTask
_08056E18: .4byte gDispCnt
_08056E1C: .4byte 0x05650000
_08056E20: .4byte sub_8056EC4

	thumb_func_start sub_8056E24
sub_8056E24: @ 0x08056E24
	ldr r0, _08056E54 @ =gCurTask
	ldr r3, [r0]
	ldrh r2, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
	movs r1, #0x18
	ldrsh r0, [r2, r1]
	adds r0, #1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	str r1, [r2, #0x18]
	adds r0, r1, #0
	cmp r0, #0x77
	ble _08056E50
	ldr r2, _08056E58 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08056E5C @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08056E60 @ =sub_8056E64
	str r0, [r3, #8]
_08056E50:
	bx lr
	.align 2, 0
_08056E54: .4byte gCurTask
_08056E58: .4byte gDispCnt
_08056E5C: .4byte 0x00001FFF
_08056E60: .4byte sub_8056E64

	thumb_func_start sub_8056E64
sub_8056E64: @ 0x08056E64
	push {r4, r5, r6, r7, lr}
	ldr r7, _08056EB8 @ =gCurTask
	ldr r0, [r7]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r6, r0
	movs r0, #0x18
	ldrsh r4, [r6, r0]
	adds r0, r4, #0
	subs r0, #0x78
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xb
	movs r1, #0x60
	bl __divsi3
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	adds r0, r6, #0
	bl sub_805423C
	ldr r2, _08056EBC @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	adds r4, #1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	str r4, [r6, #0x18]
	cmp r5, #0x5f
	bls _08056EB0
	ldr r1, [r7]
	ldr r0, _08056EC0 @ =sub_8056F1C
	str r0, [r1, #8]
_08056EB0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08056EB8: .4byte gCurTask
_08056EBC: .4byte gDispCnt
_08056EC0: .4byte sub_8056F1C

	thumb_func_start sub_8056EC4
sub_8056EC4: @ 0x08056EC4
	push {r4, r5, lr}
	ldr r5, _08056F0C @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #0x18
	ldrsh r1, [r0, r2]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	str r1, [r0, #0x18]
	bl sub_805423C
	ldr r2, _08056F10 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, #0xe
	ldr r0, _08056F14 @ =0x000005C5
	cmp r4, r0
	ble _08056F04
	ldr r1, [r5]
	ldr r0, _08056F18 @ =sub_8056F1C
	str r0, [r1, #8]
_08056F04:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08056F0C: .4byte gCurTask
_08056F10: .4byte gDispCnt
_08056F14: .4byte 0x000005C5
_08056F18: .4byte sub_8056F1C

	thumb_func_start sub_8056F1C
sub_8056F1C: @ 0x08056F1C
	push {lr}
	ldr r0, _08056F2C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_08056F2C: .4byte gCurTask

	thumb_func_start sub_8056F30
sub_8056F30: @ 0x08056F30
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0xc]
	bl VramFree
	ldr r0, [r4, #0x14]
	bl VramFree
	ldr r0, [r4, #0x10]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8056F54
sub_8056F54: @ 0x08056F54
	ldr r0, _08056F78 @ =gCurTask
	ldr r3, [r0]
	ldrh r2, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
	movs r1, #0x18
	ldrsh r0, [r2, r1]
	adds r0, #1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	str r1, [r2, #0x18]
	adds r0, r1, #0
	cmp r0, #0xa1
	ble _08056F76
	ldr r0, _08056F7C @ =sub_8056714
	str r0, [r3, #8]
_08056F76:
	bx lr
	.align 2, 0
_08056F78: .4byte gCurTask
_08056F7C: .4byte sub_8056714

	thumb_func_start sub_8056F80
sub_8056F80: @ 0x08056F80
	push {lr}
	ldr r0, _08056F98 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldr r0, _08056F9C @ =gUnknown_086883F8
	bl sub_80530CC
	pop {r0}
	bx r0
	.align 2, 0
_08056F98: .4byte gCurTask
_08056F9C: .4byte gUnknown_086883F8

	thumb_func_start sub_8056FA0
sub_8056FA0: @ 0x08056FA0
	ldr r0, _08056FC8 @ =gCurTask
	ldr r3, [r0]
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	movs r1, #0x24
	ldrsh r0, [r2, r1]
	adds r0, #1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	str r1, [r2, #0x24]
	adds r0, r1, #0
	cmp r0, #0xb5
	ble _08056FC6
	movs r0, #0
	str r0, [r2, #0x24]
	ldr r0, _08056FCC @ =sub_805676C
	str r0, [r3, #8]
_08056FC6:
	bx lr
	.align 2, 0
_08056FC8: .4byte gCurTask
_08056FCC: .4byte sub_805676C

	thumb_func_start sub_8056FD0
sub_8056FD0: @ 0x08056FD0
	push {lr}
	ldr r0, _08056FE0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_08056FE0: .4byte gCurTask

	thumb_func_start sub_8056FE4
sub_8056FE4: @ 0x08056FE4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	adds r6, r0, #0
	mov r0, sp
	adds r0, #0x2c
	str r0, [sp, #0x30]
	movs r0, #0x10
	ldr r1, [sp, #0x30]
	strb r0, [r1]
	mov r4, sp
	adds r4, #0x2b
	movs r0, #8
	strb r0, [r4]
	ldr r0, _080570A4 @ =gUiGraphics
	mov sb, r0
	movs r0, #0xe0
	lsls r0, r0, #1
	add r0, sb
	ldr r0, [r0]
	str r0, [sp, #0x14]
	movs r0, #0xe2
	lsls r0, r0, #1
	add r0, sb
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x18]
	movs r0, #0x20
	str r0, [sp, #0x24]
	add r1, sp, #0x28
	movs r0, #6
	strb r0, [r1]
	ldr r0, _080570A8 @ =0x06011000
	str r0, [sp, #0xc]
	mov r5, sp
	adds r5, #0x2a
	movs r0, #0xd
	strb r0, [r5]
	movs r0, #0xe4
	lsls r0, r0, #1
	add r0, sb
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r1, sp
	movs r0, #0xe6
	lsls r0, r0, #1
	add r0, sb
	ldr r0, [r0]
	strb r0, [r1, #8]
	movs r0, #0xe8
	lsls r0, r0, #1
	add r0, sb
	ldr r0, [r0]
	strb r0, [r1, #9]
	movs r0, #0xea
	lsls r0, r0, #1
	add r0, sb
	ldr r0, [r0]
	strb r0, [r1, #0xa]
	movs r0, #0xec
	lsls r0, r0, #1
	add r0, sb
	ldr r0, [r0]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r0, #0x22
	ldr r1, [sp, #0x30]
	strb r0, [r1]
	movs r0, #2
	strb r0, [r4]
	ldr r0, _080570AC @ =gCurrentLevel
	ldrb r1, [r0]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r7, [sp, #0x30]
	cmp r0, #0xd
	bne _080570B0
	ldrb r0, [r7]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	add r1, sb
	ldr r0, [r1]
	movs r1, #0xf0
	lsls r1, r1, #5
	adds r0, r0, r1
	b _080570F0
	.align 2, 0
_080570A4: .4byte gUiGraphics
_080570A8: .4byte 0x06011000
_080570AC: .4byte gCurrentLevel
_080570B0:
	cmp r0, #0xc
	bne _080570C8
	ldrb r0, [r7]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	add r1, sb
	ldr r0, [r1]
	movs r1, #0xa0
	lsls r1, r1, #5
	adds r0, r0, r1
	b _080570F0
_080570C8:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080570E4
	ldrb r0, [r7]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	add r1, sb
	ldr r0, [r1]
	movs r1, #0xa0
	lsls r1, r1, #4
	adds r0, r0, r1
	b _080570F0
_080570E4:
	ldrb r0, [r7]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	add r1, sb
	ldr r0, [r1]
_080570F0:
	str r0, [sp, #0x14]
	ldr r4, _080573BC @ =gUiGraphics
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080573C0 @ =gUiGraphics + 0x4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0x20
	str r0, [sp, #0x24]
	movs r1, #0xc
	mov sl, r1
	mov r0, sl
	add r1, sp, #0x28
	strb r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, [r6]
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [sp, #0xc]
	movs r0, #0xd
	movs r1, #0x2a
	add r1, sp
	strb r0, [r1]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080573C4 @ =gUiGraphics + 0x8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080573C8 @ =gUiGraphics + 0xC
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0x10
	adds r1, r1, r4
	mov sb, r1
	add r0, sb
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0x14
	adds r1, r1, r4
	mov r8, r1
	add r0, r8
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080573CC @ =gUiGraphics + 0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	bl sub_80528AC
	ldr r0, _080573D0 @ =gSelectedCharacter
	ldrb r0, [r0]
	adds r0, #0xb
	strb r0, [r7]
	movs r0, #2
	movs r1, #0x2b
	add r1, sp
	strb r0, [r1]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080573C0 @ =gUiGraphics + 0x4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0xc0
	lsls r0, r0, #3
	str r0, [sp, #0x18]
	mov r1, sl
	str r1, [sp, #0x24]
	add r0, sp, #0x28
	strb r1, [r0]
	ldr r0, [r6]
	str r0, [sp, #0xc]
	movs r1, #0xd
	movs r0, #0x2a
	add r0, sp
	strb r1, [r0]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080573C4 @ =gUiGraphics + 0x8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080573C8 @ =gUiGraphics + 0xC
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080573CC @ =gUiGraphics + 0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r0, #0
	strb r0, [r7]
	movs r0, #4
	movs r1, #0x2b
	add r1, sp
	strb r0, [r1]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0x9c
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [sp, #0x14]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080573C0 @ =gUiGraphics + 0x4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0x40
	str r0, [sp, #0x18]
	movs r1, #0x20
	str r1, [sp, #0x24]
	movs r0, #6
	add r1, sp, #0x28
	strb r0, [r1]
	ldr r0, [r6, #4]
	movs r1, #0x90
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [sp, #0xc]
	movs r0, #0xd
	movs r1, #0x2a
	add r1, sp
	strb r0, [r1]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080573C4 @ =gUiGraphics + 0x8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080573C8 @ =gUiGraphics + 0xC
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080573CC @ =gUiGraphics + 0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	bl sub_80528AC
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0xb4
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [sp, #0x14]
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	mov r8, r1
	add r0, r8
	str r0, [sp, #0xc]
	movs r0, #0xc0
	str r0, [sp, #0x18]
	mov r0, sp
	bl sub_80528AC
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0x88
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [sp, #0x14]
	ldr r0, [r6, #4]
	movs r1, #0xe0
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [sp, #0xc]
	movs r0, #0x40
	str r0, [sp, #0x18]
	mov r0, sp
	bl sub_80528AC
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0x94
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [sp, #0x14]
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_80528AC
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0xa4
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [sp, #0x14]
	ldr r0, [r6, #4]
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_80528AC
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0x92
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [sp, #0x14]
	ldr r0, [r6, #4]
	movs r1, #0xb0
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [sp, #0xc]
	mov r0, sp
	bl sub_80528AC
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0xc8
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [sp, #0x14]
	ldr r0, [r6, #4]
	str r0, [sp, #0xc]
	mov r0, r8
	str r0, [sp, #0x18]
	mov r0, sp
	bl sub_80528AC
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080573BC: .4byte gUiGraphics
_080573C0: .4byte gUiGraphics + 0x4
_080573C4: .4byte gUiGraphics + 0x8
_080573C8: .4byte gUiGraphics + 0xC
_080573CC: .4byte gUiGraphics + 0x18
_080573D0: .4byte gSelectedCharacter

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
	ldr r0, _080574E4 @ =gUnknown_03005124
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
_080574E4: .4byte gUnknown_03005124
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
	bl sub_8053674
	ldr r0, _08057854 @ =sub_8057B74
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
	ldr r0, _0805785C @ =sub_8057C3C
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
	ldr r0, _08057860 @ =sub_8057D30
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
	ldr r7, _08057868 @ =sub_805803C
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
_08057854: .4byte sub_8057B74
_08057858: .4byte 0x00002120
_0805785C: .4byte sub_8057C3C
_08057860: .4byte sub_8057D30
_08057864: .4byte 0x03000020
_08057868: .4byte sub_805803C
_0805786C: .4byte gUnknown_08688404
_08057870: .4byte Task_8057888
_08057874: .4byte TaskDestructor_8058344
_08057878: .4byte gUnknown_0868840F
_0805787C: .4byte 0x03000036
_08057880: .4byte 0x0300001C
_08057884: .4byte 0x0000011D

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
	bl sub_803D724
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

	thumb_func_start sub_8057B74
sub_8057B74: @ 0x08057B74
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

	thumb_func_start sub_8057C3C
sub_8057C3C: @ 0x08057C3C
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

	thumb_func_start sub_8057D30
sub_8057D30: @ 0x08057D30
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

	thumb_func_start sub_805803C
sub_805803C: @ 0x0805803C
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

	thumb_func_start CreatePlayerNameInputMenu
CreatePlayerNameInputMenu: @ 0x08058360
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	movs r6, #0
	ldr r2, _0805847C @ =gDispCnt
	ldr r1, _08058480 @ =gBgCntRegs
	movs r4, #0
	ldr r0, _08058484 @ =0x00001C06
	strh r0, [r1, #2]
	ldr r0, _08058488 @ =0x00001A09
	strh r0, [r1, #4]
	ldr r0, _0805848C @ =gBgScrollRegs
	strh r6, [r0, #4]
	strh r6, [r0, #6]
	strh r6, [r0, #8]
	strh r6, [r0, #0xa]
	movs r0, #0xd9
	lsls r0, r0, #6
	strh r0, [r2]
	ldr r1, _08058490 @ =gBldRegs
	movs r0, #0x1f
	strh r0, [r1]
	ldr r0, _08058494 @ =gWinRegs
	movs r1, #1
	mov r8, r1
	movs r5, #1
	strh r5, [r0]
	strh r5, [r0, #4]
	bl sub_80535FC
	ldr r0, _08058498 @ =sub_8058830
	movs r7, #0x80
	lsls r7, r7, #1
	movs r2, #0x80
	lsls r2, r2, #6
	str r6, [sp]
	adds r1, r7, #0
	movs r3, #0
	bl TaskCreate
	adds r6, r0, #0
	ldrh r0, [r6, #6]
	ldr r2, _0805849C @ =0x03000024
	adds r0, r0, r2
	strh r4, [r0]
	ldrh r0, [r6, #6]
	ldr r3, _080584A0 @ =0x03000028
	adds r0, r0, r3
	strh r4, [r0]
	ldrh r0, [r6, #6]
	ldr r1, _080584A4 @ =0x0300002C
	adds r0, r0, r1
	strh r4, [r0]
	ldrh r0, [r6, #6]
	adds r2, #0xc
	adds r0, r0, r2
	strh r4, [r0]
	ldrh r0, [r6, #6]
	adds r3, #0x2c
	adds r0, r0, r3
	strh r4, [r0]
	ldrh r0, [r6, #6]
	adds r1, #0xd0
	adds r0, r0, r1
	strh r4, [r0]
	ldrh r0, [r6, #6]
	subs r1, #0xfc
	adds r0, r0, r1
	movs r1, #0x1e
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r5, [r0, #0xe]
	strh r4, [r0, #8]
	movs r1, #3
	strh r1, [r0, #0x10]
	mov r2, r8
	strb r2, [r0, #0x16]
	strh r4, [r0, #0x12]
	ldrh r0, [r6, #6]
	subs r3, #0x3c
	adds r3, r3, r0
	mov sb, r3
	strh r4, [r3]
	strh r5, [r3, #2]
	movs r0, #2
	strh r0, [r3, #4]
	strh r4, [r3, #6]
	strh r7, [r3, #8]
	strb r2, [r3, #0xa]
	movs r0, #0
	mov r8, r0
	add r7, sp, #0x30
	mov r1, sp
	adds r1, #0x2f
	str r1, [sp, #0x40]
	mov r2, sp
	adds r2, #0x2c
	str r2, [sp, #0x34]
	mov r3, sp
	adds r3, #0x2d
	str r3, [sp, #0x38]
	mov r0, sp
	adds r0, #0x2e
	str r0, [sp, #0x3c]
	ldr r1, _080584A8 @ =gLoadedSaveGame
	mov sl, r1
	ldr r5, _080584AC @ =gUnknown_08688492
_0805843C:
	ldr r0, _080584A8 @ =gLoadedSaveGame
	adds r0, #0x10
	mov r2, r8
	adds r3, r2, r0
	ldrb r0, [r3]
	subs r0, #0x20
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x69
	bhi _080584BC
	ldrh r2, [r6, #6]
	adds r2, r4, r2
	ldr r0, _080584B0 @ =0x030000C8
	adds r0, r0, r2
	mov ip, r0
	ldrb r0, [r3]
	subs r0, #0x20
	lsls r0, r0, #1
	adds r0, r0, r5
	ldr r2, _080584B4 @ =0x00001001
	adds r1, r2, #0
	ldrh r0, [r0]
	adds r1, r1, r0
	mov r0, ip
	strh r1, [r0]
	ldrh r2, [r6, #6]
	adds r2, r4, r2
	ldr r1, _080584B8 @ =0x030000CA
	adds r1, r1, r2
	mov ip, r1
	b _080584DC
	.align 2, 0
_0805847C: .4byte gDispCnt
_08058480: .4byte gBgCntRegs
_08058484: .4byte 0x00001C06
_08058488: .4byte 0x00001A09
_0805848C: .4byte gBgScrollRegs
_08058490: .4byte gBldRegs
_08058494: .4byte gWinRegs
_08058498: .4byte sub_8058830
_0805849C: .4byte 0x03000024
_080584A0: .4byte 0x03000028
_080584A4: .4byte 0x0300002C
_080584A8: .4byte gLoadedSaveGame
_080584AC: .4byte gUnknown_08688492
_080584B0: .4byte 0x030000C8
_080584B4: .4byte 0x00001001
_080584B8: .4byte 0x030000CA
_080584BC:
	movs r0, #0x20
	strb r0, [r3]
	ldrh r1, [r6, #6]
	adds r1, r4, r1
	ldr r0, _080587EC @ =0x030000C8
	adds r1, r1, r0
	ldr r2, _080587F0 @ =0x00001001
	adds r0, r2, #0
	ldrh r2, [r5]
	adds r0, r0, r2
	strh r0, [r1]
	ldrh r2, [r6, #6]
	adds r2, r4, r2
	ldr r0, _080587F4 @ =0x030000CA
	adds r0, r0, r2
	mov ip, r0
_080584DC:
	ldrb r0, [r3]
	subs r0, #0x20
	lsls r0, r0, #1
	adds r0, r0, r5
	ldr r2, _080587F8 @ =0x00001002
	adds r1, r2, #0
	ldrh r0, [r0]
	adds r1, r1, r0
	mov r0, ip
	strh r1, [r0]
	ldrh r2, [r6, #6]
	adds r2, r4, r2
	ldr r1, _080587FC @ =0x030000E0
	adds r1, r1, r2
	mov ip, r1
	ldrb r0, [r3]
	subs r0, #0x20
	lsls r0, r0, #1
	adds r0, r0, r5
	ldr r2, _08058800 @ =0x00001015
	adds r1, r2, #0
	ldrh r0, [r0]
	adds r1, r1, r0
	mov r0, ip
	strh r1, [r0]
	ldrh r2, [r6, #6]
	adds r2, r4, r2
	ldr r1, _08058804 @ =0x030000E2
	adds r2, r2, r1
	ldrb r0, [r3]
	subs r0, #0x20
	lsls r0, r0, #1
	adds r0, r0, r5
	ldr r3, _08058808 @ =0x00001016
	adds r1, r3, #0
	ldrh r0, [r0]
	adds r1, r1, r0
	strh r1, [r2]
	adds r4, #4
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #5
	ble _0805843C
	movs r2, #5
	mov r8, r2
	mov r3, sl
	ldrb r0, [r3, #0x15]
	ldrh r1, [r6, #6]
	cmp r0, #0x20
	bne _0805855A
	mov r2, sl
	adds r2, #0x10
_08058546:
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	mov r3, r8
	cmp r3, #0
	blt _0805855A
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #0x20
	beq _08058546
_0805855A:
	ldr r0, _0805880C @ =0x030000F8
	adds r1, r1, r0
	mov r0, r8
	adds r0, #1
	strh r0, [r1]
	bl sub_8053674
	movs r0, #0x23
	strb r0, [r7]
	movs r2, #0
	ldr r1, [sp, #0x40]
	strb r2, [r1]
	ldr r3, _08058810 @ =gUiGraphics
	mov sl, r3
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	str r0, [sp, #0x18]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08058814 @ =gUiGraphics + 0x4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x24]
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [sp, #0x1c]
	movs r2, #0x20
	str r2, [sp, #0x28]
	movs r0, #0
	ldr r3, [sp, #0x34]
	strb r0, [r3]
	movs r2, #2
	ldr r1, [sp, #0x38]
	strb r2, [r1]
	ldr r0, _08058818 @ =gUnknown_08684D3C
	str r0, [sp, #0x14]
	movs r0, #0xa0
	lsls r0, r0, #3
	str r0, [sp, #0x20]
	movs r0, #0x15
	ldr r3, [sp, #0x3c]
	strb r0, [r3]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805881C @ =gUiGraphics + 0x8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #8]
	add r2, sp, #4
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r3, _08058820 @ =gUiGraphics + 0xC
	adds r0, r0, r3
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0x10
	add r1, sl
	mov r8, r1
	add r0, r8
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r3, _08058824 @ =gUiGraphics + 0x14
	adds r0, r0, r3
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	mov r5, sl
	adds r5, #0x18
	adds r0, r0, r5
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	adds r0, r2, #0
	bl sub_80528AC
	movs r0, #0x24
	strb r0, [r7]
	movs r4, #1
	ldr r0, [sp, #0x40]
	strb r4, [r0]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	str r0, [sp, #0x18]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08058814 @ =gUiGraphics + 0x4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x24]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [sp, #0x1c]
	movs r2, #0x20
	str r2, [sp, #0x28]
	movs r0, #0
	ldr r3, [sp, #0x34]
	strb r0, [r3]
	ldr r1, [sp, #0x38]
	strb r4, [r1]
	ldr r0, _08058828 @ =gUnknown_08685D3C
	str r0, [sp, #0x14]
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [sp, #0x20]
	movs r3, #0x15
	ldr r2, [sp, #0x3c]
	strb r3, [r2]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805881C @ =gUiGraphics + 0x8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #8]
	add r2, sp, #4
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r3, _08058820 @ =gUiGraphics + 0xC
	adds r0, r0, r3
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08058824 @ =gUiGraphics + 0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	adds r0, r2, #0
	bl sub_80528AC
	movs r0, #0x25
	strb r0, [r7]
	ldr r2, [sp, #0x40]
	strb r4, [r2]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r3, _08058814 @ =gUiGraphics + 0x4
	adds r0, r0, r3
	ldr r0, [r0]
	str r0, [sp, #0x24]
	movs r0, #0x20
	str r0, [sp, #0x28]
	movs r2, #2
	ldr r1, [sp, #0x34]
	strb r2, [r1]
	ldr r3, [sp, #0x38]
	strb r4, [r3]
	movs r0, #4
	ldr r1, [sp, #0x3c]
	strb r0, [r1]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _0805881C @ =gUiGraphics + 0x8
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [sp, #8]
	add r2, sp, #4
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r3, _08058820 @ =gUiGraphics + 0xC
	adds r0, r0, r3
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08058824 @ =gUiGraphics + 0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	adds r0, r2, #0
	bl sub_80528AC
	movs r0, #0x26
	strb r0, [r7]
	movs r0, #3
	ldr r2, [sp, #0x40]
	strb r0, [r2]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	str r0, [sp, #0x18]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r3, _08058814 @ =gUiGraphics + 0x4
	adds r0, r0, r3
	ldr r0, [r0]
	str r0, [sp, #0x24]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp, #0x1c]
	movs r0, #0x20
	str r0, [sp, #0x28]
	movs r2, #0
	ldr r1, [sp, #0x34]
	strb r2, [r1]
	ldr r0, _0805882C @ =0x06012000
	str r0, [sp, #0x10]
	movs r0, #0xd
	ldr r3, [sp, #0x3c]
	strb r0, [r3]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805881C @ =gUiGraphics + 0x8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #8]
	add r2, sp, #4
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r3, _08058820 @ =gUiGraphics + 0xC
	adds r0, r0, r3
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08058824 @ =gUiGraphics + 0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	adds r0, r2, #0
	bl sub_80528AC
	mov r0, sb
	bl sub_805423C
	movs r0, #0x30      @ MUS_PLAYER_DATA
	bl m4aSongNumStartOrChange
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080587EC: .4byte 0x030000C8
_080587F0: .4byte 0x00001001
_080587F4: .4byte 0x030000CA
_080587F8: .4byte 0x00001002
_080587FC: .4byte 0x030000E0
_08058800: .4byte 0x00001015
_08058804: .4byte 0x030000E2
_08058808: .4byte 0x00001016
_0805880C: .4byte 0x030000F8
_08058810: .4byte gUiGraphics
_08058814: .4byte gUiGraphics + 0x4
_08058818: .4byte gUnknown_08684D3C
_0805881C: .4byte gUiGraphics + 0x8
_08058820: .4byte gUiGraphics + 0xC
_08058824: .4byte gUiGraphics + 0x14
_08058828: .4byte gUnknown_08685D3C
_0805882C: .4byte 0x06012000

	thumb_func_start sub_8058830
sub_8058830: @ 0x08058830
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x64
	ldr r0, _080588A8 @ =gPressedKeys
	ldrh r7, [r0]
	ldr r3, _080588AC @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	ldr r0, _080588B0 @ =0x03000018
	adds r0, r1, r0
	str r0, [sp, #0x30]
	ldr r2, _080588B4 @ =0x0300002C
	adds r1, r1, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0x20
	ble _08058868
	movs r0, #0
	strh r0, [r1]
_08058868:
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	ldr r2, _080588B8 @ =0x03000030
	adds r1, r1, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	adds r1, r0, r2
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0x2e
	ble _08058888
	movs r0, #0
	strh r0, [r1]
_08058888:
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	ldr r5, _080588BC @ =0x030000FC
	adds r1, r1, r5
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	bgt _080588C0
	ldr r0, [sp, #0x30]
	bl sub_805423C
	b _080588CC
	.align 2, 0
_080588A8: .4byte gPressedKeys
_080588AC: .4byte gCurTask
_080588B0: .4byte 0x03000018
_080588B4: .4byte 0x0300002C
_080588B8: .4byte 0x03000030
_080588BC: .4byte 0x030000FC
_080588C0:
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	ldr r1, _080588F0 @ =0x030000FC
	adds r0, r0, r1
	movs r1, #0x3c
	strh r1, [r0]
_080588CC:
	ldr r2, _080588F4 @ =gInput
	ldrh r1, [r2]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r4, r2, #0
	cmp r3, #0
	beq _08058900
	ldr r2, _080588F8 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	ldr r3, _080588FC @ =0x03000058
	adds r1, r1, r3
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b _0805890C
	.align 2, 0
_080588F0: .4byte 0x030000FC
_080588F4: .4byte gInput
_080588F8: .4byte gCurTask
_080588FC: .4byte 0x03000058
_08058900:
	ldr r1, _0805892C @ =gCurTask
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	ldr r5, _08058930 @ =0x03000058
	adds r0, r0, r5
	strh r3, [r0]
_0805890C:
	ldrh r1, [r4]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _08058938
	ldr r1, _0805892C @ =gCurTask
	ldr r0, [r1]
	ldrh r1, [r0, #6]
	ldr r2, _08058934 @ =0x0300005C
	adds r1, r1, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b _08058944
	.align 2, 0
_0805892C: .4byte gCurTask
_08058930: .4byte 0x03000058
_08058934: .4byte 0x0300005C
_08058938:
	ldr r3, _08058964 @ =gCurTask
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	ldr r5, _08058968 @ =0x0300005C
	adds r0, r0, r5
	strh r1, [r0]
_08058944:
	ldrh r1, [r4]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _08058970
	ldr r1, _08058964 @ =gCurTask
	ldr r0, [r1]
	ldrh r1, [r0, #6]
	ldr r2, _0805896C @ =0x03000064
	adds r1, r1, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b _0805897C
	.align 2, 0
_08058964: .4byte gCurTask
_08058968: .4byte 0x0300005C
_0805896C: .4byte 0x03000064
_08058970:
	ldr r3, _0805899C @ =gCurTask
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	ldr r5, _080589A0 @ =0x03000064
	adds r0, r0, r5
	strh r1, [r0]
_0805897C:
	ldrh r1, [r4]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _080589A8
	ldr r1, _0805899C @ =gCurTask
	ldr r0, [r1]
	ldrh r1, [r0, #6]
	ldr r2, _080589A4 @ =0x03000060
	adds r1, r1, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b _080589B4
	.align 2, 0
_0805899C: .4byte gCurTask
_080589A0: .4byte 0x03000064
_080589A4: .4byte 0x03000060
_080589A8:
	ldr r3, _08058A20 @ =gCurTask
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	ldr r4, _08058A24 @ =0x03000060
	adds r0, r0, r4
	strh r1, [r0]
_080589B4:
	ldr r4, _08058A20 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	ldr r6, _08058A28 @ =0x03000024
	adds r0, r1, r6
	ldrh r0, [r0]
	mov sb, r0
	ldr r5, _08058A2C @ =0x03000028
	adds r0, r1, r5
	ldrh r0, [r0]
	mov sl, r0
	ldr r2, _08058A30 @ =0x03000054
	adds r0, r1, r2
	ldrh r0, [r0]
	mov r8, r0
	ldr r0, _08058A34 @ =gPressedKeys
	ldrh r2, [r0]
	movs r5, #0x10
	adds r0, r5, #0
	ands r0, r2
	cmp r0, #0
	bne _080589EC
	ldr r3, _08058A38 @ =0x03000058
	adds r0, r1, r3
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0xf
	ble _08058A3C
_080589EC:
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	ldr r0, _08058A38 @ =0x03000058
	adds r1, r1, r0
	ldrh r0, [r1]
	subs r0, #5
	strh r0, [r1]
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	adds r1, r1, r6
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	adds r1, r0, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #9
	ble _08058A84
	movs r0, #0
	b _08058A82
	.align 2, 0
_08058A20: .4byte gCurTask
_08058A24: .4byte 0x03000060
_08058A28: .4byte 0x03000024
_08058A2C: .4byte 0x03000028
_08058A30: .4byte 0x03000054
_08058A34: .4byte gPressedKeys
_08058A38: .4byte 0x03000058
_08058A3C:
	movs r5, #0x20
	adds r0, r5, #0
	ands r0, r2
	cmp r0, #0
	bne _08058A52
	ldr r3, _08058B10 @ =0x0300005C
	adds r0, r1, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0xf
	ble _08058A86
_08058A52:
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	ldr r2, _08058B10 @ =0x0300005C
	adds r1, r1, r2
	ldrh r0, [r1]
	subs r0, #5
	strh r0, [r1]
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	adds r1, r1, r6
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	adds r1, r0, r6
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _08058A84
	movs r0, #9
_08058A82:
	strh r0, [r1]
_08058A84:
	orrs r7, r5
_08058A86:
	ldr r0, _08058B14 @ =gPressedKeys
	ldrh r2, [r0]
	movs r0, #0x80
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _08058AA8
	ldr r1, _08058B18 @ =gCurTask
	ldr r0, [r1]
	ldrh r3, [r0, #6]
	ldr r5, _08058B1C @ =0x03000060
	adds r0, r3, r5
	movs r5, #0
	ldrsh r0, [r0, r5]
	cmp r0, #0xf
	ble _08058B28
_08058AA8:
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r3, _08058B18 @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	ldr r0, _08058B1C @ =0x03000060
	adds r1, r1, r0
	ldrh r0, [r1]
	subs r0, #5
	strh r0, [r1]
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	ldr r4, _08058B20 @ =0x03000028
	adds r1, r1, r4
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	adds r1, r0, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #5
	ble _08058B0A
	movs r0, #5
	strh r0, [r1]
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	ldr r2, _08058B24 @ =0x03000054
	adds r1, r1, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	adds r2, r1, r2
	movs r5, #0
	ldrsh r0, [r2, r5]
	cmp r0, #2
	ble _08058B0A
	adds r0, r1, r4
	movs r1, #0
	strh r1, [r0]
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	ldr r2, _08058B24 @ =0x03000054
	adds r0, r0, r2
	strh r1, [r0]
_08058B0A:
	movs r0, #0x80
	b _08058BA4
	.align 2, 0
_08058B10: .4byte 0x0300005C
_08058B14: .4byte gPressedKeys
_08058B18: .4byte gCurTask
_08058B1C: .4byte 0x03000060
_08058B20: .4byte 0x03000028
_08058B24: .4byte 0x03000054
_08058B28:
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	bne _08058B3C
	ldr r5, _08058BEC @ =0x03000064
	adds r0, r3, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0xf
	ble _08058BA6
_08058B3C:
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r2, _08058BF0 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	ldr r3, _08058BEC @ =0x03000064
	adds r1, r1, r3
	ldrh r0, [r1]
	subs r0, #5
	strh r0, [r1]
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	subs r3, #0x3c
	adds r1, r1, r3
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	ldr r0, [r2]
	ldrh r0, [r0, #6]
	adds r1, r0, r3
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _08058BA2
	strh r4, [r1]
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	ldr r2, _08058BF4 @ =0x03000054
	adds r1, r1, r2
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	ldr r1, _08058BF0 @ =gCurTask
	ldr r0, [r1]
	ldrh r1, [r0, #6]
	adds r2, r1, r2
	movs r4, #0
	ldrsh r0, [r2, r4]
	cmp r0, #0
	bge _08058BA2
	adds r1, r1, r3
	movs r0, #5
	strh r0, [r1]
	ldr r5, _08058BF0 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	ldr r1, _08058BF4 @ =0x03000054
	adds r0, r0, r1
	movs r1, #2
	strh r1, [r0]
_08058BA2:
	movs r0, #0x40
_08058BA4:
	orrs r7, r0
_08058BA6:
	ldr r2, _08058BF0 @ =gCurTask
	ldr r3, [r2]
	ldrh r0, [r3, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r5, _08058BF8 @ =0x0300002C
	adds r1, r0, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0xf
	bgt _08058BFC
	adds r1, r0, #0
	movs r2, #0x10
	subs r1, r2, r1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	movs r5, #0x80
	lsls r5, r5, #1
	adds r1, r5, #0
	adds r0, r0, r1
	strh r0, [r4]
	ldrh r0, [r3, #6]
	ldr r3, _08058BF8 @ =0x0300002C
	adds r0, r0, r3
	movs r5, #0
	ldrsh r0, [r0, r5]
	subs r2, r2, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r1
	b _08058C26
	.align 2, 0
_08058BEC: .4byte 0x03000064
_08058BF0: .4byte gCurTask
_08058BF4: .4byte 0x03000054
_08058BF8: .4byte 0x0300002C
_08058BFC:
	movs r0, #0
	ldrsh r1, [r1, r0]
	subs r1, #0xf
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r1, #0
	adds r0, r0, r2
	strh r0, [r4]
	ldrh r0, [r3, #6]
	ldr r3, _08058E94 @ =0x0300002C
	adds r0, r0, r3
	movs r5, #0
	ldrsh r1, [r0, r5]
	subs r1, #0xf
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
_08058C26:
	strh r0, [r4, #2]
	ldr r0, _08058E98 @ =gCurTask
	ldr r1, [r0]
	ldrh r0, [r1, #6]
	ldr r2, _08058E9C @ =0x03000024
	adds r0, r0, r2
	ldrh r2, [r0]
	lsls r2, r2, #4
	adds r2, #0x20
	movs r3, #0
	strh r2, [r4, #0xa]
	ldrh r0, [r1, #6]
	ldr r5, _08058EA0 @ =0x03000028
	adds r0, r0, r5
	ldrh r1, [r0]
	lsls r1, r1, #4
	adds r1, #0x28
	ldrh r0, [r4]
	subs r0, #0xf0
	asrs r0, r0, #7
	subs r2, r2, r0
	strh r2, [r4, #0xa]
	ldrh r0, [r4, #2]
	subs r0, #0xf0
	asrs r0, r0, #7
	subs r1, r1, r0
	strh r1, [r4, #0xc]
	strh r3, [r4, #4]
	movs r0, #2
	strh r0, [r4, #6]
	ldr r0, _08058EA4 @ =gUnknown_08688568
	adds r1, r4, #0
	bl sub_8052D64
	ldr r0, _08058EA8 @ =gPrevInput
	ldrh r0, [r0]
	orrs r0, r7
	movs r1, #0xf9
	ands r0, r1
	mov r7, r8
	lsls r7, r7, #0x10
	str r7, [sp, #0x60]
	cmp r0, #0
	beq _08058D32
	ldr r0, _08058E98 @ =gCurTask
	ldr r0, [r0]
	str r0, [sp, #0x34]
	ldrh r0, [r0, #6]
	ldr r1, _08058EAC @ =0x03000080
	adds r7, r0, r1
	mov r3, sb
	lsls r2, r3, #0x10
	asrs r2, r2, #0xe
	adds r1, r2, #0
	adds r1, #0xa
	mov r4, sl
	lsls r4, r4, #0x10
	asrs r5, r4, #0x10
	ldr r3, [sp, #0x60]
	asrs r0, r3, #0x10
	adds r0, r5, r0
	lsls r4, r0, #7
	str r4, [sp, #0x44]
	adds r1, r1, r4
	ldr r5, _08058EB0 @ =0x000007FF
	ands r1, r5
	str r1, [r7, #4]
	adds r0, r1, #0
	ldr r3, _08058EB4 @ =0x000003FF
	ands r0, r3
	ldr r4, _08058EB8 @ =gUnknown_08685D3C
	adds r0, r0, r4
	str r0, [r7]
	movs r5, #0xc0
	lsls r5, r5, #0x13
	mov sl, r5
	add r1, sl
	ldr r0, _08058EBC @ =gBgCntRegs
	mov sb, r0
	ldrh r4, [r0, #2]
	movs r3, #0xf8
	lsls r3, r3, #5
	adds r0, r3, #0
	ands r0, r4
	lsls r0, r0, #3
	adds r1, r1, r0
	str r1, [r7, #4]
	movs r1, #4
	strh r1, [r7, #8]
	ldr r4, _08058EC0 @ =gVramGraphicsCopyQueue
	mov r8, r4
	ldr r1, _08058EC4 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r1]
	lsls r0, r0, #2
	add r0, r8
	str r7, [r0]
	ldrb r0, [r1]
	adds r0, #1
	movs r4, #0x1f
	ands r0, r4
	strb r0, [r1]
	ldr r5, [sp, #0x34]
	ldrh r0, [r5, #6]
	ldr r5, _08058EC8 @ =0x0300008C
	adds r7, r0, r5
	adds r2, #0x4a
	ldr r0, [sp, #0x44]
	adds r2, r2, r0
	ldr r5, _08058EB0 @ =0x000007FF
	ands r2, r5
	str r2, [r7, #4]
	adds r0, r2, #0
	ldr r5, _08058EB4 @ =0x000003FF
	ands r0, r5
	ldr r5, _08058EB8 @ =gUnknown_08685D3C
	adds r0, r0, r5
	str r0, [r7]
	add r2, sl
	mov r5, sb
	ldrh r0, [r5, #2]
	ands r3, r0
	lsls r3, r3, #3
	adds r2, r2, r3
	str r2, [r7, #4]
	movs r0, #4
	strh r0, [r7, #8]
	ldrb r0, [r1]
	lsls r0, r0, #2
	add r0, r8
	str r7, [r0]
	ldrb r0, [r1]
	adds r0, #1
	ands r0, r4
	strb r0, [r1]
_08058D32:
	ldr r1, _08058E98 @ =gCurTask
	ldr r1, [r1]
	mov ip, r1
	ldrh r3, [r1, #6]
	ldr r4, _08058EA0 @ =0x03000028
	adds r2, r3, r4
	ldr r5, _08058ECC @ =0x03000054
	adds r0, r3, r5
	ldrh r1, [r0]
	ldrh r2, [r2]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	movs r0, #0xe0
	lsls r0, r0, #0xb
	ands r0, r1
	lsrs r6, r0, #0x10
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #0x12
	ldr r7, _08058E9C @ =0x03000024
	adds r1, r3, r7
	lsrs r0, r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x11
	lsrs r6, r0, #0x10
	ldr r0, _08058ED0 @ =gPressedKeys
	ldrh r1, [r0]
	cmp r1, #0
	bne _08058E62
	ldr r1, _08058ED4 @ =0x030000F8
	adds r0, r3, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #5
	bgt _08058E62
	adds r4, #0x40
	adds r7, r3, r4
	movs r0, #0xa
	str r0, [r7, #4]
	mov r5, ip
	ldrh r0, [r5, #6]
	subs r1, #0xd4
	adds r0, r0, r1
	movs r3, #0
	ldrsh r2, [r0, r3]
	lsls r2, r2, #2
	adds r2, #0xa
	str r2, [r7, #4]
	ldrh r0, [r5, #6]
	subs r4, #0x40
	adds r1, r0, r4
	movs r5, #0
	ldrsh r1, [r1, r5]
	ldr r3, _08058ECC @ =0x03000054
	adds r0, r0, r3
	movs r4, #0
	ldrsh r0, [r0, r4]
	adds r1, r1, r0
	lsls r1, r1, #7
	adds r2, r2, r1
	ldr r5, _08058EB0 @ =0x000007FF
	ands r2, r5
	str r2, [r7, #4]
	adds r0, r2, #0
	ldr r1, _08058EB4 @ =0x000003FF
	ands r0, r1
	ldr r3, _08058ED8 @ =gUnknown_0868653C
	adds r0, r0, r3
	str r0, [r7]
	movs r4, #0xc0
	lsls r4, r4, #0x13
	mov sl, r4
	add r2, sl
	ldr r5, _08058EBC @ =gBgCntRegs
	mov sb, r5
	ldrh r1, [r5, #2]
	movs r3, #0xf8
	lsls r3, r3, #5
	adds r0, r3, #0
	ands r0, r1
	lsls r0, r0, #3
	adds r2, r2, r0
	str r2, [r7, #4]
	movs r0, #4
	strh r0, [r7, #8]
	ldr r1, _08058EC0 @ =gVramGraphicsCopyQueue
	mov r8, r1
	ldr r4, _08058EC4 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r4]
	lsls r0, r0, #2
	add r0, r8
	str r7, [r0]
	ldrb r0, [r4]
	adds r0, #1
	movs r2, #0x1f
	ands r0, r2
	strb r0, [r4]
	mov r5, ip
	ldrh r0, [r5, #6]
	ldr r1, _08058EDC @ =0x03000074
	adds r7, r0, r1
	movs r0, #0x4a
	str r0, [r7, #4]
	ldrh r0, [r5, #6]
	ldr r2, _08058E9C @ =0x03000024
	adds r0, r0, r2
	movs r5, #0
	ldrsh r1, [r0, r5]
	lsls r1, r1, #2
	adds r1, #0x4a
	str r1, [r7, #4]
	mov r2, ip
	ldrh r0, [r2, #6]
	ldr r5, _08058EA0 @ =0x03000028
	adds r2, r0, r5
	movs r5, #0
	ldrsh r2, [r2, r5]
	ldr r5, _08058ECC @ =0x03000054
	adds r0, r0, r5
	movs r5, #0
	ldrsh r0, [r0, r5]
	adds r2, r2, r0
	lsls r2, r2, #7
	adds r1, r1, r2
	ldr r0, _08058EB0 @ =0x000007FF
	ands r1, r0
	str r1, [r7, #4]
	adds r0, r1, #0
	ldr r2, _08058EB4 @ =0x000003FF
	ands r0, r2
	ldr r5, _08058ED8 @ =gUnknown_0868653C
	adds r0, r0, r5
	str r0, [r7]
	add r1, sl
	mov r2, sb
	ldrh r0, [r2, #2]
	ands r3, r0
	lsls r3, r3, #3
	adds r1, r1, r3
	str r1, [r7, #4]
	movs r3, #4
	strh r3, [r7, #8]
	ldrb r0, [r4]
	lsls r0, r0, #2
	add r0, r8
	str r7, [r0]
	ldrb r0, [r4]
	adds r0, #1
	movs r5, #0x1f
	ands r0, r5
	strb r0, [r4]
_08058E62:
	ldr r7, _08058ED0 @ =gPressedKeys
	ldrh r1, [r7]
	movs r0, #0xc0
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08058EF8
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08058EE0
	ldr r0, _08058E98 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r2, _08058ED4 @ =0x030000F8
	adds r1, r0, r2
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _08058EF8
	subs r0, r2, #1
	b _08058EF6
	.align 2, 0
_08058E94: .4byte 0x0300002C
_08058E98: .4byte gCurTask
_08058E9C: .4byte 0x03000024
_08058EA0: .4byte 0x03000028
_08058EA4: .4byte gUnknown_08688568
_08058EA8: .4byte gPrevInput
_08058EAC: .4byte 0x03000080
_08058EB0: .4byte 0x000007FF
_08058EB4: .4byte 0x000003FF
_08058EB8: .4byte gUnknown_08685D3C
_08058EBC: .4byte gBgCntRegs
_08058EC0: .4byte gVramGraphicsCopyQueue
_08058EC4: .4byte gVramGraphicsCopyQueueIndex
_08058EC8: .4byte 0x0300008C
_08058ECC: .4byte 0x03000054
_08058ED0: .4byte gPressedKeys
_08058ED4: .4byte 0x030000F8
_08058ED8: .4byte gUnknown_0868653C
_08058EDC: .4byte 0x03000074
_08058EE0:
	ldr r0, _08058F50 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r4, _08058F54 @ =0x030000F8
	adds r1, r0, r4
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #4
	bgt _08058EF8
	adds r0, r2, #1
_08058EF6:
	strh r0, [r1]
_08058EF8:
	ldr r7, _08058F58 @ =gPressedKeys
	ldrh r1, [r7]
	movs r0, #1
	ands r0, r1
	add r2, sp, #0x2c
	mov r8, r2
	movs r3, #0x2b
	add r3, sp
	mov sb, r3
	add r4, sp, #0x28
	mov sl, r4
	mov r5, sp
	adds r5, #0x29
	str r5, [sp, #0x58]
	mov r7, sp
	adds r7, #0x2a
	str r7, [sp, #0x5c]
	cmp r0, #0
	bne _08058F20
	b _0805905C
_08058F20:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08058F2A
	b _0805905C
_08058F2A:
	movs r0, #0x93
	lsls r0, r0, #1
	cmp r6, r0
	bne _08058F5C
	ldr r0, _08058F50 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r2, _08058F54 @ =0x030000F8
	adds r1, r0, r2
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bne _08058F48
	b _08059056
_08058F48:
	subs r0, r2, #1
	strh r0, [r1]
	b _08059056
	.align 2, 0
_08058F50: .4byte gCurTask
_08058F54: .4byte 0x030000F8
_08058F58: .4byte gPressedKeys
_08058F5C:
	movs r0, #0x94
	lsls r0, r0, #1
	cmp r6, r0
	bne _08058F88
	ldr r0, _08058F80 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r4, _08058F84 @ =0x030000F8
	adds r1, r0, r4
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #5
	bgt _08059056
	adds r0, r2, #1
	strh r0, [r1]
	b _08059056
	.align 2, 0
_08058F80: .4byte gCurTask
_08058F84: .4byte 0x030000F8
_08058F88:
	movs r0, #0x95
	lsls r0, r0, #1
	cmp r6, r0
	bne _08058FFC
	movs r1, #0
	movs r6, #0
	ldr r7, _08058FE4 @ =gCurTask
	ldr r0, [r7]
	ldrh r2, [r0, #6]
	ldr r5, _08058FE8 @ =0x030000C8
	ldr r4, _08058FEC @ =0xFFFFF000
	ldr r3, _08058FF0 @ =0x000010DB
_08058FA0:
	lsls r0, r6, #2
	adds r0, r0, r2
	adds r0, r0, r5
	movs r7, #0
	ldrsh r0, [r0, r7]
	adds r0, r0, r4
	cmp r0, r3
	beq _08058FB4
	movs r0, #1
	orrs r1, r0
_08058FB4:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #5
	bls _08058FA0
	cmp r1, #0
	beq _08059056
	movs r1, #0
	ldr r0, [sp, #0x30]
	strh r1, [r0, #6]
	movs r0, #1
	ldr r2, [sp, #0x30]
	strh r0, [r2, #4]
	ldr r3, _08058FE4 @ =gCurTask
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	ldr r4, _08058FF4 @ =0x030000FC
	adds r0, r0, r4
	strh r1, [r0]
	ldr r1, [r3]
	ldr r0, _08058FF8 @ =sub_80595DC
	str r0, [r1, #8]
	b _08059056
	.align 2, 0
_08058FE4: .4byte gCurTask
_08058FE8: .4byte 0x030000C8
_08058FEC: .4byte 0xFFFFF000
_08058FF0: .4byte 0x000010DB
_08058FF4: .4byte 0x030000FC
_08058FF8: .4byte sub_80595DC
_08058FFC:
	ldr r3, _080590B4 @ =gCurTask
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	ldr r5, _080590B8 @ =0x030000F8
	adds r1, r0, r5
	movs r7, #0
	ldrsh r0, [r1, r7]
	cmp r0, #5
	bgt _08059056
	ldrh r2, [r1]
	adds r0, r2, #1
	strh r0, [r1]
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	lsls r2, r2, #2
	adds r0, r2, r0
	ldr r1, _080590BC @ =0x030000C8
	adds r0, r0, r1
	ldr r4, _080590C0 @ =0x00002001
	adds r1, r6, r4
	strh r1, [r0]
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	adds r0, r2, r0
	subs r5, #0x2e
	adds r0, r0, r5
	ldr r7, _080590C4 @ =0x00002002
	adds r1, r6, r7
	strh r1, [r0]
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	adds r0, r2, r0
	ldr r1, _080590C8 @ =0x030000E0
	adds r0, r0, r1
	adds r4, #0x14
	adds r1, r6, r4
	strh r1, [r0]
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	adds r2, r2, r0
	adds r5, #0x18
	adds r2, r2, r5
	adds r7, #0x14
	adds r0, r6, r7
	strh r0, [r2]
_08059056:
	movs r0, #0x6a
	bl m4aSongNumStart
_0805905C:
	ldr r1, _080590CC @ =gPressedKeys
	ldrh r2, [r1]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	bne _08059082
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _080590F2
	ldr r0, _080590B4 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _080590B8 @ =0x030000F8
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #6
	bne _080590F2
_08059082:
	ldr r3, _080590B4 @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	ldr r4, _080590D0 @ =0x03000054
	adds r2, r1, r4
	ldrh r0, [r2]
	movs r6, #7
	ands r6, r0
	cmp r6, #1
	bhi _080590DC
	movs r0, #2
	strh r0, [r2]
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	ldr r5, _080590D4 @ =0x03000024
	adds r0, r0, r5
	movs r1, #9
	strh r1, [r0]
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	ldr r7, _080590D8 @ =0x03000028
	adds r0, r0, r7
	movs r1, #5
	strh r1, [r0]
	b _080590F2
	.align 2, 0
_080590B4: .4byte gCurTask
_080590B8: .4byte 0x030000F8
_080590BC: .4byte 0x030000C8
_080590C0: .4byte 0x00002001
_080590C4: .4byte 0x00002002
_080590C8: .4byte 0x030000E0
_080590CC: .4byte gPressedKeys
_080590D0: .4byte 0x03000054
_080590D4: .4byte 0x03000024
_080590D8: .4byte 0x03000028
_080590DC:
	ldr r0, _080591E8 @ =0x03000024
	adds r1, r1, r0
	movs r0, #9
	strh r0, [r1]
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	ldr r2, _080591EC @ =0x03000028
	adds r1, r1, r2
	movs r0, #7
	subs r0, r0, r6
	strh r0, [r1]
_080590F2:
	ldr r3, _080591F0 @ =gPressedKeys
	ldrh r1, [r3]
	movs r0, #3
	ands r0, r1
	cmp r0, #2
	bne _080591C8
	ldr r1, _080591F4 @ =gCurTask
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	ldr r4, _080591F8 @ =0x030000F8
	adds r3, r0, r4
	ldrh r4, [r3]
	movs r5, #0
	ldrsh r0, [r3, r5]
	cmp r0, #0
	ble _080591C8
	subs r0, r4, #1
	strh r0, [r3]
	adds r7, r1, #0
	ldr r0, [r7]
	ldrh r0, [r0, #6]
	ldr r1, _080591F8 @ =0x030000F8
	adds r0, r0, r1
	ldrh r6, [r0]
	cmp r6, #4
	bhi _0805917C
	adds r3, r7, #0
_08059128:
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	lsls r1, r6, #2
	adds r0, r1, r0
	ldr r4, _080591FC @ =0x030000C8
	adds r2, r0, r4
	ldr r5, _08059200 @ =0x030000CC
	adds r0, r0, r5
	ldrh r0, [r0]
	strh r0, [r2]
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	adds r0, r1, r0
	ldr r7, _08059204 @ =0x030000CA
	adds r2, r0, r7
	adds r4, #6
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r2]
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	adds r0, r1, r0
	adds r5, #0x14
	adds r2, r0, r5
	adds r7, #0x1a
	adds r0, r0, r7
	ldrh r0, [r0]
	strh r0, [r2]
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	adds r1, r1, r0
	ldr r0, _08059208 @ =0x030000E2
	adds r2, r1, r0
	adds r4, #0x18
	adds r1, r1, r4
	ldrh r0, [r1]
	strh r0, [r2]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #4
	bls _08059128
_0805917C:
	ldr r5, _080591F4 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	lsls r2, r6, #2
	adds r0, r2, r0
	ldr r7, _080591FC @ =0x030000C8
	adds r0, r0, r7
	ldr r3, _0805920C @ =0x000020DB
	adds r1, r3, #0
	strh r1, [r0]
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	adds r0, r2, r0
	ldr r4, _08059204 @ =0x030000CA
	adds r0, r0, r4
	ldr r5, _08059210 @ =0x000020DC
	adds r1, r5, #0
	strh r1, [r0]
	ldr r7, _080591F4 @ =gCurTask
	ldr r0, [r7]
	ldrh r0, [r0, #6]
	adds r0, r2, r0
	ldr r1, _08059214 @ =0x030000E0
	adds r0, r0, r1
	adds r3, #0x14
	adds r1, r3, #0
	strh r1, [r0]
	ldr r0, [r7]
	ldrh r0, [r0, #6]
	adds r2, r2, r0
	adds r4, #0x18
	adds r2, r2, r4
	adds r5, #0x14
	adds r0, r5, #0
	strh r0, [r2]
	movs r0, #0x6b
	bl m4aSongNumStart
_080591C8:
	bl sub_8053674
	ldr r0, _080591F4 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r7, _08059218 @ =0x03000030
	adds r1, r0, r7
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0x16
	bgt _0805921C
	adds r1, r0, #0
	movs r0, #0x17
	subs r0, r0, r1
	b _08059222
	.align 2, 0
_080591E8: .4byte 0x03000024
_080591EC: .4byte 0x03000028
_080591F0: .4byte gPressedKeys
_080591F4: .4byte gCurTask
_080591F8: .4byte 0x030000F8
_080591FC: .4byte 0x030000C8
_08059200: .4byte 0x030000CC
_08059204: .4byte 0x030000CA
_08059208: .4byte 0x030000E2
_0805920C: .4byte 0x000020DB
_08059210: .4byte 0x000020DC
_08059214: .4byte 0x030000E0
_08059218: .4byte 0x03000030
_0805921C:
	movs r4, #0
	ldrsh r0, [r1, r4]
	subs r0, #0x17
_08059222:
	lsls r0, r0, #5
	movs r1, #0x17
	bl __divsi3
	adds r7, r0, #0
	ldr r4, _080593B8 @ =gSineTable
	lsls r0, r7, #5
	movs r1, #0x3c
	bl __udivsi3
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x17
	movs r1, #0x1f
	subs r7, r1, r0
	cmp r7, #0x1f
	bls _0805924A
	movs r7, #0x1f
_0805924A:
	movs r6, #0
_0805924C:
	lsls r5, r6, #1
	str r5, [sp, #0x48]
	ldr r1, _080593BC @ =gUiGraphics + ((37 * 0x1C) + 0x4)
	ldr r0, [r1]
	adds r0, r0, r5
	ldrh r0, [r0]
	movs r2, #0xf8
	lsls r2, r2, #7
	adds r1, r2, #0
	ands r0, r1
	lsrs r0, r0, #0xa
	muls r0, r7, r0
	movs r1, #0x20
	bl Div
	adds r4, r0, #0
	ldr r3, _080593BC @ =gUiGraphics + ((37 * 0x1C) + 0x4)
	ldr r0, [r3]
	adds r0, r0, r5
	ldrh r0, [r0]
	movs r5, #0xf8
	lsls r5, r5, #2
	adds r1, r5, #0
	ands r0, r1
	lsrs r0, r0, #5
	muls r0, r7, r0
	movs r1, #0x20
	bl Div
	adds r5, r0, #0
	ldr r1, _080593BC @ =gUiGraphics + ((37 * 0x1C) + 0x4)
	ldr r0, [r1]
	ldr r2, [sp, #0x48]
	adds r0, r0, r2
	ldrh r1, [r0]
	movs r0, #0x1f
	ands r0, r1
	muls r0, r7, r0
	movs r1, #0x20
	bl Div
	ldr r3, _080593C0 @ =gCurTask
	ldr r1, [r3]
	ldrh r1, [r1, #6]
	ldr r2, [sp, #0x48]
	adds r1, r2, r1
	ldr r3, _080593C4 @ =0x03000034
	adds r3, r1, r3
	lsls r4, r4, #0xa
	lsls r5, r5, #5
	adds r4, r4, r5
	adds r4, r4, r0
	strh r4, [r3]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0xf
	bls _0805924C
	movs r0, #0x25
	mov r4, r8
	strb r0, [r4]
	movs r1, #1
	mov r5, sb
	strb r1, [r5]
	ldr r7, _080593C0 @ =gCurTask
	ldr r0, [r7]
	ldrh r0, [r0, #6]
	ldr r2, _080593C4 @ =0x03000034
	adds r0, r0, r2
	str r0, [sp, #0x20]
	movs r0, #0x20
	str r0, [sp, #0x24]
	mov r3, sl
	strb r1, [r3]
	ldr r4, [sp, #0x58]
	strb r1, [r4]
	movs r0, #4
	ldr r5, [sp, #0x5c]
	strb r0, [r5]
	ldr r3, _080593C8 @ =gUiGraphics
	mov r7, r8
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r3, #0
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r3, #0
	adds r1, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r3, #0
	adds r1, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r3, #0
	adds r1, #0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	bl sub_80528AC
	ldr r0, _080593C0 @ =gCurTask
	ldr r5, [r0]
	ldrh r3, [r5, #6]
	ldr r1, _080593CC @ =0x030000F8
	adds r0, r3, r1
	ldrh r7, [r0]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #5
	bgt _080593F2
	ldr r4, _080593D0 @ =0x03000028
	adds r2, r3, r4
	subs r1, #0xa4
	adds r0, r3, r1
	ldrh r1, [r0]
	ldrh r2, [r2]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	movs r0, #0xe0
	lsls r0, r0, #0xb
	ands r0, r1
	lsrs r6, r0, #0x10
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #0x12
	ldr r2, _080593D4 @ =0x03000024
	adds r1, r3, r2
	lsrs r0, r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x11
	movs r1, #0x95
	lsls r1, r1, #0x11
	cmp r0, r1
	beq _080593F2
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	lsls r0, r7, #4
	adds r0, #0x78
	strh r0, [r4, #0xa]
	ldrh r0, [r5, #6]
	ldr r3, _080593D8 @ =0x0300002C
	adds r1, r0, r3
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0x10
	ble _080593DC
	movs r1, #0x10
	subs r1, r1, r0
	b _080593E2
	.align 2, 0
_080593B8: .4byte gSineTable
_080593BC: .4byte gUiGraphics + ((37 * 0x1C) + 0x4)
_080593C0: .4byte gCurTask
_080593C4: .4byte 0x03000034
_080593C8: .4byte gUiGraphics
_080593CC: .4byte 0x030000F8
_080593D0: .4byte 0x03000028
_080593D4: .4byte 0x03000024
_080593D8: .4byte 0x0300002C
_080593DC:
	movs r0, #0
	ldrsh r1, [r1, r0]
	subs r1, #0x10
_080593E2:
	asrs r1, r1, #2
	movs r0, #0xd
	subs r0, r0, r1
	strh r0, [r4, #0xc]
	ldr r0, _08059520 @ =gUnknown_0868856C
	adds r1, r4, #0
	bl sub_805321C
_080593F2:
	ldr r1, _08059524 @ =gCurTask
	ldr r2, [r1]
	mov sl, r2
	ldrh r0, [r2, #6]
	ldr r3, _08059528 @ =0x03000098
	adds r7, r0, r3
	ldr r4, _0805952C @ =0x030000C8
	adds r0, r0, r4
	str r0, [r7]
	movs r0, #0x1e
	str r0, [r7, #4]
	ldrh r0, [r2, #6]
	subs r4, #0x74
	adds r0, r0, r4
	movs r5, #0
	ldrsh r1, [r0, r5]
	subs r1, #2
	lsls r1, r1, #7
	adds r1, #0x1e
	ldr r0, _08059530 @ =0x000007FF
	ands r1, r0
	str r1, [r7, #4]
	movs r2, #0xc0
	lsls r2, r2, #0x13
	mov r8, r2
	add r1, r8
	ldr r3, _08059534 @ =gBgCntRegs
	ldrh r2, [r3, #2]
	movs r0, #0xf8
	lsls r0, r0, #5
	ands r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	str r1, [r7, #4]
	movs r5, #0x18
	strh r5, [r7, #8]
	ldr r0, _08059538 @ =gVramGraphicsCopyQueue
	mov ip, r0
	ldr r3, _0805953C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r3]
	lsls r0, r0, #2
	add r0, ip
	str r7, [r0]
	ldrb r0, [r3]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r3]
	mov r2, sl
	ldrh r0, [r2, #6]
	ldr r5, _08059540 @ =0x030000A4
	adds r7, r0, r5
	ldr r1, _08059544 @ =0x030000E0
	adds r0, r0, r1
	str r0, [r7]
	movs r0, #0x5e
	str r0, [r7, #4]
	ldrh r0, [r2, #6]
	adds r0, r0, r4
	movs r2, #0
	ldrsh r1, [r0, r2]
	subs r1, #2
	lsls r1, r1, #7
	adds r1, #0x5e
	ldr r5, _08059530 @ =0x000007FF
	ands r1, r5
	str r1, [r7, #4]
	add r1, r8
	ldr r0, _08059534 @ =gBgCntRegs
	ldrh r2, [r0, #2]
	movs r0, #0xf8
	lsls r0, r0, #5
	ands r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	str r1, [r7, #4]
	movs r1, #0x18
	strh r1, [r7, #8]
	ldrb r0, [r3]
	lsls r0, r0, #2
	add r0, ip
	str r7, [r0]
	ldrb r0, [r3]
	adds r0, #1
	movs r2, #0x1f
	ands r0, r2
	strb r0, [r3]
	mov r5, sl
	ldrh r2, [r5, #6]
	adds r4, r2, r4
	ldr r7, [sp, #0x60]
	asrs r1, r7, #0x10
	movs r5, #0
	ldrsh r0, [r4, r5]
	ldr r7, _08059534 @ =gBgCntRegs
	mov r8, r7
	mov sb, ip
	adds r5, r3, #0
	cmp r1, r0
	beq _0805959E
	ldr r0, _08059548 @ =0x030000B0
	adds r7, r2, r0
	adds r0, r1, #6
	lsls r6, r0, #7
	adds r0, r6, #0
	ldr r2, _08059530 @ =0x000007FF
	ands r0, r2
	ldr r3, _0805954C @ =gUnknown_08685D3C + 0x1E
	adds r0, r0, r3
	str r0, [r7]
	subs r0, r1, #2
	lsls r4, r0, #7
	adds r1, r4, #0
	adds r1, #0x1e
	ands r1, r2
	str r1, [r7, #4]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	mov r0, r8
	ldrh r2, [r0, #2]
	movs r0, #0xf8
	lsls r0, r0, #5
	ands r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	str r1, [r7, #4]
	movs r1, #0x18
	strh r1, [r7, #8]
	ldrb r0, [r5]
	lsls r0, r0, #2
	add r0, sb
	str r7, [r0]
	ldrb r0, [r5]
	adds r0, #1
	movs r2, #0x1f
	ands r0, r2
	strb r0, [r5]
	mov r7, sl
	ldrh r0, [r7, #6]
	ldr r1, _08059550 @ =0x030000BC
	adds r7, r0, r1
	ldr r2, _08059554 @ =0x03000028
	adds r0, r0, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08059558
	adds r0, r4, #0
	b _0805955A
	.align 2, 0
_08059520: .4byte gUnknown_0868856C
_08059524: .4byte gCurTask
_08059528: .4byte 0x03000098
_0805952C: .4byte 0x030000C8
_08059530: .4byte 0x000007FF
_08059534: .4byte gBgCntRegs
_08059538: .4byte gVramGraphicsCopyQueue
_0805953C: .4byte gVramGraphicsCopyQueueIndex
_08059540: .4byte 0x030000A4
_08059544: .4byte 0x030000E0
_08059548: .4byte 0x030000B0
_0805954C: .4byte gUnknown_08685D3C + 0x1E
_08059550: .4byte 0x030000BC
_08059554: .4byte 0x03000028
_08059558:
	adds r0, r6, #0
_0805955A:
	adds r0, #0x40
	str r0, [r7]
	ldr r0, [r7]
	ldr r2, _080595C8 @ =0x000007FF
	ands r0, r2
	adds r0, r0, r3
	str r0, [r7]
	ldr r3, [sp, #0x60]
	asrs r1, r3, #9
	subs r1, #0xa2
	ands r1, r2
	str r1, [r7, #4]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	mov r4, r8
	ldrh r2, [r4, #2]
	movs r0, #0xf8
	lsls r0, r0, #5
	ands r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	str r1, [r7, #4]
	movs r0, #0x18
	strh r0, [r7, #8]
	ldrb r0, [r5]
	lsls r0, r0, #2
	add r0, sb
	str r7, [r0]
	ldrb r0, [r5]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r5]
_0805959E:
	ldr r2, _080595CC @ =gBgScrollRegs
	ldr r5, _080595D0 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	ldr r7, _080595D4 @ =0x03000054
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r0, r0, #4
	subs r0, #0x30
	ldr r3, _080595D8 @ =0x000001FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2, #6]
	add sp, #0x64
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080595C8: .4byte 0x000007FF
_080595CC: .4byte gBgScrollRegs
_080595D0: .4byte gCurTask
_080595D4: .4byte 0x03000054
_080595D8: .4byte 0x000001FF

	thumb_func_start sub_80595DC
sub_80595DC: @ 0x080595DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r7, #0
	ldr r4, _08059778 @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	ldr r1, _0805977C @ =0x03000018
	adds r0, r0, r1
	bl sub_805423C
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	ldr r2, _08059780 @ =0x030000FC
	adds r1, r1, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov sb, r4
	cmp r0, #0x3c
	bgt _08059618
	b _080597CC
_08059618:
	movs r6, #0
	ldr r3, _08059784 @ =gLoadedSaveGame
	mov r8, r3
	ldr r0, _08059788 @ =gUnknown_08688444
	mov sl, r0
_08059622:
	mov r2, sb
	ldr r1, [r2]
	lsls r0, r6, #2
	ldrh r1, [r1, #6]
	adds r0, r0, r1
	ldr r3, _0805978C @ =0x030000C8
	adds r0, r0, r3
	movs r1, #0
	ldrsh r5, [r0, r1]
	ldr r2, _08059790 @ =0xFFFFDFFF
	adds r5, r5, r2
	adds r0, r5, #0
	movs r1, #0x28
	bl __udivsi3
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #1
	adds r0, r5, #0
	movs r1, #0x28
	bl __umodsi3
	lsrs r0, r0, #1
	adds r4, r4, r0
	mov r0, r8
	adds r0, #0x10
	adds r1, r6, r0
	add r4, sl
	ldrb r4, [r4]
	ldrb r0, [r1]
	cmp r0, r4
	beq _08059666
	movs r7, #1
	strb r4, [r1]
_08059666:
	adds r6, #1
	cmp r6, #5
	bls _08059622
	cmp r7, #0
	beq _08059740
	ldr r0, _08059794 @ =gFrameCount
	ldr r0, [r0]
	mov r3, r8
	str r0, [r3, #4]
	bl m4aMPlayAllStop
	bl m4aSoundVSyncOff
	ldr r0, _08059798 @ =gFlags
	mov sl, r0
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r1, r0
	ldr r2, _0805979C @ =0x04000200
	mov r8, r2
	ldrh r0, [r2]
	str r0, [sp]
	ldr r6, _080597A0 @ =0x04000208
	ldrh r0, [r6]
	adds r7, r0, #0
	ldr r5, _080597A4 @ =0x04000004
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
	mov r0, sl
	str r1, [r0]
	ldr r1, _080597A8 @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r4, _080597AC @ =0x0000C5FF
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r3, _080597B0 @ =0x00007FFF
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
	ldr r0, _080597B4 @ =0x040000D4
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
	mov r1, sp
	ldrh r2, [r1]
	mov r1, r8
	strh r2, [r1]
	ldrh r0, [r1]
	strh r7, [r6]
	ldrh r0, [r6]
	mov r3, sb
	strh r3, [r5]
	ldrh r0, [r5]
	bl m4aSoundVSyncOn
	mov r1, sl
	ldr r0, [r1]
	ldr r1, _080597B8 @ =0xFFFF7FFF
	ands r0, r1
	mov r2, sl
	str r0, [r2]
_08059740:
	ldr r0, _08059778 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	ldr r4, _080597BC @ =sa2__gUnknown_03004D80
	movs r2, #0
	strb r2, [r4, #1]
	ldr r0, _080597C0 @ =sa2__gUnknown_03002280
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
	ldr r0, _080597C4 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #2
	bne _080597C8
	bl CreateMultiplayerModeSelectScreen
	b _080597CC
	.align 2, 0
_08059778: .4byte gCurTask
_0805977C: .4byte 0x03000018
_08059780: .4byte 0x030000FC
_08059784: .4byte gLoadedSaveGame
_08059788: .4byte gUnknown_08688444
_0805978C: .4byte 0x030000C8
_08059790: .4byte 0xFFFFDFFF
_08059794: .4byte gFrameCount
_08059798: .4byte gFlags
_0805979C: .4byte 0x04000200
_080597A0: .4byte 0x04000208
_080597A4: .4byte 0x04000004
_080597A8: .4byte 0x040000B0
_080597AC: .4byte 0x0000C5FF
_080597B0: .4byte 0x00007FFF
_080597B4: .4byte 0x040000D4
_080597B8: .4byte 0xFFFF7FFF
_080597BC: .4byte sa2__gUnknown_03004D80
_080597C0: .4byte sa2__gUnknown_03002280
_080597C4: .4byte gGameMode
_080597C8:
	bl CreatePlayerDataMenu
_080597CC:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start CreateCharacterSelectionScreen
CreateCharacterSelectionScreen: @ 0x080597DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x34]
	ldr r1, _08059BD8 @ =gTailsEnabled
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08059BDC @ =gMultiplayerMissingHeartbeats
	movs r5, #0
	strb r5, [r0, #3]
	strb r5, [r0, #2]
	strb r5, [r0, #1]
	strb r5, [r0]
	bl sub_80535FC
	bl sub_8053674
	ldr r1, _08059BE0 @ =gDispCnt
	movs r2, #0x92
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r3, _08059BE4 @ =gBgCntRegs
	mov r8, r3
	ldr r0, _08059BE8 @ =0x00001907
	strh r0, [r3, #2]
	ldr r0, _08059BEC @ =gBgScrollRegs
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	strh r5, [r0, #0xa]
	ldr r0, _08059BF0 @ =sub_8059F9C
	movs r4, #0x80
	lsls r4, r4, #6
	str r5, [sp]
	movs r1, #0x3c
	adds r2, r4, #0
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r2, r0
	ldr r1, [sp, #0x34]
	movs r3, #3
	ands r1, r3
	lsls r0, r1, #8
	adds r0, r0, r4
	strh r0, [r7, #0x28]
	adds r1, #0x20
	ldr r4, _08059BF4 @ =0x0300002A
	adds r0, r2, r4
	strb r1, [r0]
	ldr r3, _08059BF8 @ =0x0300002B
	adds r0, r2, r3
	strb r1, [r0]
	adds r4, #2
	adds r0, r2, r4
	movs r1, #0
	strb r1, [r0]
	adds r3, #2
	adds r0, r2, r3
	strb r1, [r0]
	adds r4, #2
	adds r0, r2, r4
	strb r1, [r0]
	str r5, [r7, #0x24]
	ldr r0, _08059BFC @ =0x03000039
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08059C00 @ =0x0300002F
	adds r2, r2, r1
	movs r3, #0
	strb r3, [r2]
	strh r5, [r7]
	strh r5, [r7, #2]
	movs r4, #2
	strh r4, [r7, #4]
	strh r5, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r7, #8]
	movs r4, #1
	strb r4, [r7, #0xa]
	ldr r6, _08059C04 @ =0x00002030
	str r5, [sp]
	ldr r0, _08059C08 @ =Task_805B980
	movs r1, #0x20
	adds r2, r6, #0
	movs r3, #0
	bl TaskCreate
	adds r3, r0, #0
	ldrh r0, [r3, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r0, #0xa]
	movs r1, #0x40
	strh r1, [r0, #0xc]
	movs r1, #8
	strh r1, [r0, #0xe]
	strh r5, [r0, #0x10]
	movs r1, #0xf
	strh r1, [r0, #0x12]
	strb r4, [r0, #0x16]
	movs r1, #0x5a
	strh r1, [r0, #8]
	str r5, [r0, #0x18]
	ldrh r1, [r7, #0x28]
	strh r1, [r0, #0x1c]
	ldrh r1, [r7, #0x28]
	strh r1, [r0, #0x1e]
	str r3, [r7, #0x10]
	movs r2, #0x81
	lsls r2, r2, #6
	str r5, [sp]
	ldr r0, _08059C08 @ =Task_805B980
	movs r1, #0x20
	movs r3, #0
	bl TaskCreate
	adds r3, r0, #0
	ldrh r0, [r3, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r0, r0, r2
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #0xa]
	movs r1, #0x28
	strh r1, [r0, #0xc]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x10]
	strh r5, [r0, #0x12]
	movs r2, #1
	strb r2, [r0, #0x16]
	strh r5, [r0, #8]
	str r5, [r0, #0x18]
	strh r5, [r0, #0x1c]
	str r3, [r7, #0x1c]
	str r5, [sp]
	ldr r0, _08059C08 @ =Task_805B980
	movs r1, #0x20
	adds r2, r6, #0
	movs r3, #0
	bl TaskCreate
	adds r3, r0, #0
	ldrh r0, [r3, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r0, r0, r4
	strh r5, [r0, #0xa]
	movs r1, #0x54
	strh r1, [r0, #0xc]
	movs r1, #6
	strh r1, [r0, #0xe]
	movs r2, #2
	strh r2, [r0, #0x10]
	strh r5, [r0, #0x12]
	movs r4, #1
	strb r4, [r0, #0x16]
	movs r1, #0x14
	strh r1, [r0, #8]
	str r5, [r0, #0x18]
	strh r5, [r0, #0x1c]
	strh r5, [r0, #0x1e]
	str r3, [r7, #0x18]
	str r5, [sp]
	ldr r0, _08059C08 @ =Task_805B980
	movs r1, #0x44
	adds r2, r6, #0
	movs r3, #0
	bl TaskCreate
	adds r3, r0, #0
	ldrh r2, [r3, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r2, r1
	strb r4, [r0, #0x16]
	movs r4, #3
	strh r4, [r0, #0x10]
	strh r5, [r0, #0xa]
	movs r1, #0x38
	strh r1, [r0, #0xc]
	movs r1, #8
	strh r1, [r0, #0xe]
	strh r5, [r0, #0x12]
	movs r1, #0x78
	strh r1, [r0, #8]
	movs r4, #0x8c
	lsls r4, r4, #1
	strh r4, [r0, #0x22]
	movs r1, #0x3a
	strh r1, [r0, #0x24]
	movs r1, #9
	strh r1, [r0, #0x26]
	movs r4, #4
	strh r4, [r0, #0x28]
	strh r5, [r0, #0x2a]
	ldr r4, _08059C0C @ =0x0300002E
	adds r1, r2, r4
	movs r4, #1
	strb r4, [r1]
	movs r1, #0x64
	strh r1, [r0, #0x20]
	str r5, [r0, #0x38]
	str r5, [r0, #0x30]
	movs r1, #0x8c
	lsls r1, r1, #7
	str r1, [r0, #0x34]
	str r1, [r0, #0x3c]
	ldr r0, _08059C10 @ =0x03000040
	adds r2, r2, r0
	strh r5, [r2]
	str r3, [r7, #0x14]
	ldr r0, _08059C14 @ =Task_805B984
	ldr r2, _08059C18 @ =0x00002020
	str r5, [sp]
	movs r1, #0x34
	movs r3, #0
	bl TaskCreate
	adds r3, r0, #0
	ldrh r2, [r3, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r2, r1
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	mov r0, r8
	ldrh r1, [r0, #2]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	ldr r1, _08059C1C @ =0x06000040
	adds r0, r0, r1
	str r0, [r4, #4]
	strh r5, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x10]
	strh r5, [r4, #0x16]
	strh r5, [r4, #0x18]
	strh r5, [r4, #0x1a]
	strh r5, [r4, #0x1c]
	ldr r0, _08059C20 @ =0x03000021
	adds r1, r2, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08059C24 @ =0x03000022
	adds r0, r2, r1
	movs r1, #0x10
	strb r1, [r0]
	ldr r1, _08059C28 @ =0x03000025
	adds r0, r2, r1
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08059C2C @ =0x000002D3
	strh r0, [r4, #0xa]
	ldr r0, _08059C30 @ =0x03000020
	adds r2, r2, r0
	strb r1, [r2]
	str r3, [r7, #0x20]
	adds r0, r4, #0
	bl sa2__sub_80036E0
	adds r0, r4, #0
	bl sa2__sub_8003914
	add r4, sp, #0x30
	movs r0, #0x27
	strb r0, [r4]
	mov r1, sp
	adds r1, #0x2f
	str r1, [sp, #0x3c]
	movs r2, #0
	strb r2, [r1]
	ldr r6, _08059C34 @ =gUiGraphics
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	str r0, [sp, #0x18]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r3, _08059C38 @ =gUiGraphics + 0x4
	adds r0, r0, r3
	ldr r1, [sp, #0x34]
	lsls r1, r1, #1
	mov r8, r1
	ldr r2, [sp, #0x34]
	add r8, r2
	mov r3, r8
	lsls r1, r3, #1
	ldr r0, [r0]
	adds r0, r0, r1
	str r0, [sp, #0x24]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [sp, #0x1c]
	movs r1, #8
	str r1, [sp, #0x28]
	add r2, sp, #0x2c
	mov sb, r2
	movs r3, #0xf
	strb r3, [r2]
	ldr r0, _08059C3C @ =0x06010020
	str r0, [sp, #0x10]
	movs r0, #0x2e
	add r0, sp
	mov sl, r0
	movs r0, #0xd
	mov r1, sl
	strb r0, [r1]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _08059C40 @ =gUiGraphics + 0x8
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [sp, #8]
	add r2, sp, #4
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r3, _08059C44 @ =gUiGraphics + 0xC
	adds r0, r0, r3
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08059C48 @ =gUiGraphics + 0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r3, _08059C4C @ =gUiGraphics + 0x14
	adds r0, r0, r3
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08059C50 @ =gUiGraphics + 0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	adds r0, r2, #0
	bl sub_80528AC
	movs r2, #0x28
	strb r2, [r4]
	movs r0, #1
	ldr r3, [sp, #0x3c]
	strb r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	str r0, [sp, #0x18]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08059C38 @ =gUiGraphics + 0x4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x24]
	movs r2, #0x80
	lsls r2, r2, #3
	str r2, [sp, #0x1c]
	movs r3, #0x20
	str r3, [sp, #0x28]
	movs r1, #0
	mov r0, sb
	strb r1, [r0]
	ldr r0, _08059C54 @ =0x06010420
	str r0, [sp, #0x10]
	movs r0, #0xd
	mov r2, sl
	strb r0, [r2]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r3, _08059C40 @ =gUiGraphics + 0x8
	adds r0, r0, r3
	ldr r0, [r0]
	str r0, [sp, #8]
	add r2, sp, #4
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08059C44 @ =gUiGraphics + 0xC
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r3, _08059C48 @ =gUiGraphics + 0x10
	adds r0, r0, r3
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08059C4C @ =gUiGraphics + 0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r3, _08059C50 @ =gUiGraphics + 0x18
	adds r0, r0, r3
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	adds r0, r2, #0
	bl sub_80528AC
	movs r0, #0x29
	strb r0, [r4]
	movs r1, #2
	ldr r0, [sp, #0x3c]
	strb r1, [r0]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	mov r2, r8
	lsls r2, r2, #0xa
	mov r8, r2
	ldr r0, [r0]
	add r0, r8
	str r0, [sp, #0x18]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r3, _08059C38 @ =gUiGraphics + 0x4
	adds r0, r0, r3
	ldr r0, [r0]
	str r0, [sp, #0x24]
	movs r0, #0xc0
	lsls r0, r0, #4
	str r0, [sp, #0x1c]
	ldr r0, _08059C58 @ =0x06011120
	str r0, [sp, #0x10]
	movs r0, #0x20
	str r0, [sp, #0x28]
	movs r2, #0
	mov r1, sb
	strb r2, [r1]
	movs r0, #9
	mov r3, sl
	strb r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08059C40 @ =gUiGraphics + 0x8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #8]
	add r2, sp, #4
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r3, _08059C44 @ =gUiGraphics + 0xC
	adds r0, r0, r3
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r4]
	lsls r0, r1, #3
	b _08059C5C
	.align 2, 0
_08059BD8: .4byte gTailsEnabled
_08059BDC: .4byte gMultiplayerMissingHeartbeats
_08059BE0: .4byte gDispCnt
_08059BE4: .4byte gBgCntRegs
_08059BE8: .4byte 0x00001907
_08059BEC: .4byte gBgScrollRegs
_08059BF0: .4byte sub_8059F9C
_08059BF4: .4byte 0x0300002A
_08059BF8: .4byte 0x0300002B
_08059BFC: .4byte 0x03000039
_08059C00: .4byte 0x0300002F
_08059C04: .4byte 0x00002030
_08059C08: .4byte Task_805B980
_08059C0C: .4byte 0x0300002E
_08059C10: .4byte 0x03000040
_08059C14: .4byte Task_805B984
_08059C18: .4byte 0x00002020
_08059C1C: .4byte 0x06000040
_08059C20: .4byte 0x03000021
_08059C24: .4byte 0x03000022
_08059C28: .4byte 0x03000025
_08059C2C: .4byte 0x000002D3
_08059C30: .4byte 0x03000020
_08059C34: .4byte gUiGraphics
_08059C38: .4byte gUiGraphics + 0x4
_08059C3C: .4byte 0x06010020
_08059C40: .4byte gUiGraphics + 0x8
_08059C44: .4byte gUiGraphics + 0xC
_08059C48: .4byte gUiGraphics + 0x10
_08059C4C: .4byte gUiGraphics + 0x14
_08059C50: .4byte gUiGraphics + 0x18
_08059C54: .4byte 0x06010420
_08059C58: .4byte 0x06011120
_08059C5C:
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08059F10 @ =gUiGraphics + 0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r3, _08059F14 @ =gUiGraphics + 0x14
	adds r0, r0, r3
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08059F18 @ =gUiGraphics + 0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	adds r0, r2, #0
	bl sub_80528AC
	movs r0, #0x2b
	strb r0, [r4]
	movs r3, #3
	ldr r2, [sp, #0x3c]
	strb r3, [r2]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	str r0, [sp, #0x18]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp, #0x1c]
	ldr r0, _08059F1C @ =0x06010820
	str r0, [sp, #0x10]
	movs r1, #0x20
	str r1, [sp, #0x28]
	movs r3, #0
	mov r2, sb
	strb r3, [r2]
	movs r1, #9
	mov r0, sl
	strb r1, [r0]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _08059F20 @ =gUiGraphics + 0x8
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [sp, #8]
	add r2, sp, #4
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r3, _08059F24 @ =gUiGraphics + 0xC
	adds r0, r0, r3
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08059F10 @ =gUiGraphics + 0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r3, _08059F14 @ =gUiGraphics + 0x14
	adds r0, r0, r3
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08059F18 @ =gUiGraphics + 0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	adds r0, r2, #0
	bl sub_80528AC
	movs r0, #0x2a
	strb r0, [r4]
	movs r3, #4
	ldr r2, [sp, #0x3c]
	strb r3, [r2]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	str r0, [sp, #0x18]
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [sp, #0x1c]
	ldr r0, _08059F28 @ =0x06010920
	str r0, [sp, #0x10]
	movs r0, #0x20
	str r0, [sp, #0x28]
	movs r2, #0
	mov r1, sb
	strb r2, [r1]
	movs r0, #9
	mov r3, sl
	strb r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08059F20 @ =gUiGraphics + 0x8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #8]
	add r2, sp, #4
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r3, _08059F24 @ =gUiGraphics + 0xC
	adds r0, r0, r3
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08059F10 @ =gUiGraphics + 0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r3, _08059F14 @ =gUiGraphics + 0x14
	adds r0, r0, r3
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r4, _08059F18 @ =gUiGraphics + 0x18
	adds r0, r0, r4
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	adds r0, r2, #0
	bl sub_80528AC
	ldr r2, _08059F2C @ =0x00002010
	str r5, [sp]
	ldr r0, _08059F30 @ =Task_805B980
	movs r1, #0xcc
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r2, r1
	str r1, [sp, #0x38]
	ldr r3, _08059F34 @ =0x030000C0
	adds r1, r2, r3
	str r5, [r1]
	ldr r4, _08059F38 @ =0x030000C4
	adds r1, r2, r4
	strh r5, [r1]
	adds r3, #6
	adds r1, r2, r3
	movs r4, #0
	strb r4, [r1]
	adds r3, #2
	adds r1, r2, r3
	strb r4, [r1]
	str r0, [r7, #0xc]
	ldr r4, _08059F3C @ =0x03000030
	adds r1, r2, r4
	ldr r0, _08059F40 @ =0x06012520
	str r0, [r1, #4]
	strh r5, [r1, #8]
	str r5, [r1, #0x10]
	movs r0, #0x8c
	lsls r0, r0, #1
	strh r0, [r1, #0x16]
	movs r3, #0x6e
	mov r8, r3
	mov r4, r8
	strh r4, [r1, #0x18]
	movs r6, #0xf8
	lsls r6, r6, #3
	strh r6, [r1, #0x1a]
	strh r5, [r1, #0x1c]
	ldr r0, _08059F44 @ =0x03000051
	adds r3, r2, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r3]
	ldr r3, _08059F48 @ =0x03000052
	adds r0, r2, r3
	movs r4, #0x10
	strb r4, [r0]
	adds r3, #3
	adds r0, r2, r3
	movs r4, #0
	strb r4, [r0]
	ldr r4, _08059F4C @ =0x000002D2
	strh r4, [r1, #0xa]
	ldr r1, _08059F50 @ =0x03000050
	adds r0, r2, r1
	movs r3, #0
	strb r3, [r0]
	ldr r0, _08059F54 @ =0x06013920
	ldr r1, [sp, #0x38]
	str r0, [r1, #4]
	strh r5, [r1, #8]
	str r5, [r1, #0x10]
	ldr r0, _08059F58 @ =0x0000FFCE
	strh r0, [r1, #0x16]
	mov r3, r8
	strh r3, [r1, #0x18]
	strh r6, [r1, #0x1a]
	strh r5, [r1, #0x1c]
	ldr r0, _08059F5C @ =0x03000021
	adds r1, r2, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08059F60 @ =0x03000022
	adds r0, r2, r1
	movs r3, #0x10
	strb r3, [r0]
	adds r1, #3
	adds r0, r2, r1
	movs r3, #0
	strb r3, [r0]
	ldr r0, [sp, #0x38]
	strh r4, [r0, #0xa]
	subs r1, #5
	adds r0, r2, r1
	movs r3, #6
	strb r3, [r0]
	ldr r0, _08059F64 @ =0x03000060
	adds r1, r2, r0
	ldr r0, _08059F68 @ =0x06014D20
	str r0, [r1, #4]
	strh r5, [r1, #8]
	str r5, [r1, #0x10]
	movs r3, #0x91
	lsls r3, r3, #1
	strh r3, [r1, #0x16]
	mov r0, r8
	strh r0, [r1, #0x18]
	strh r6, [r1, #0x1a]
	strh r5, [r1, #0x1c]
	ldr r0, _08059F6C @ =0x03000081
	adds r3, r2, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r3]
	ldr r3, _08059F70 @ =0x03000082
	adds r0, r2, r3
	movs r3, #0x10
	strb r3, [r0]
	ldr r3, _08059F74 @ =0x03000085
	adds r0, r2, r3
	movs r3, #0
	strb r3, [r0]
	strh r4, [r1, #0xa]
	ldr r4, _08059F78 @ =0x03000080
	adds r0, r2, r4
	movs r1, #2
	strb r1, [r0]
	ldr r3, _08059F7C @ =0x03000090
	adds r0, r2, r3
	ldr r1, _08059F80 @ =0x06016120
	str r1, [r0, #4]
	strh r5, [r0, #8]
	str r5, [r0, #0x10]
	movs r4, #0x91
	lsls r4, r4, #1
	strh r4, [r0, #0x16]
	mov r1, r8
	strh r1, [r0, #0x18]
	movs r1, #0xe0
	lsls r1, r1, #3
	strh r1, [r0, #0x1a]
	strh r5, [r0, #0x1c]
	ldr r4, _08059F84 @ =0x030000B1
	adds r3, r2, r4
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r3]
	ldr r3, _08059F88 @ =0x030000B2
	adds r1, r2, r3
	movs r4, #0x10
	strb r4, [r1]
	adds r3, #3
	adds r1, r2, r3
	movs r4, #0
	strb r4, [r1]
	ldr r1, _08059F8C @ =0x000002DA
	strh r1, [r0, #0xa]
	ldr r1, _08059F90 @ =0x030000B0
	adds r2, r2, r1
	strb r4, [r2]
	bl UpdateSpriteAnimation
	ldr r0, _08059F94 @ =sa2__gUnknown_03004D80
	strb r4, [r0, #1]
	ldr r0, _08059F98 @ =sa2__gUnknown_03002280
	strb r4, [r0, #4]
	strb r4, [r0, #5]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #6]
	movs r2, #0x20
	strb r2, [r0, #7]
	movs r0, #3         @ MUS_CHARACTER_SELECTION
	bl m4aSongNumStartOrContinue
	adds r0, r7, #0
	bl sub_805423C
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08059F10: .4byte gUiGraphics + 0x10
_08059F14: .4byte gUiGraphics + 0x14
_08059F18: .4byte gUiGraphics + 0x18
_08059F1C: .4byte 0x06010820
_08059F20: .4byte gUiGraphics + 0x8
_08059F24: .4byte gUiGraphics + 0xC
_08059F28: .4byte 0x06010920
_08059F2C: .4byte 0x00002010
_08059F30: .4byte Task_805B980
_08059F34: .4byte 0x030000C0
_08059F38: .4byte 0x030000C4
_08059F3C: .4byte 0x03000030
_08059F40: .4byte 0x06012520
_08059F44: .4byte 0x03000051
_08059F48: .4byte 0x03000052
_08059F4C: .4byte 0x000002D2
_08059F50: .4byte 0x03000050
_08059F54: .4byte 0x06013920
_08059F58: .4byte 0x0000FFCE
_08059F5C: .4byte 0x03000021
_08059F60: .4byte 0x03000022
_08059F64: .4byte 0x03000060
_08059F68: .4byte 0x06014D20
_08059F6C: .4byte 0x03000081
_08059F70: .4byte 0x03000082
_08059F74: .4byte 0x03000085
_08059F78: .4byte 0x03000080
_08059F7C: .4byte 0x03000090
_08059F80: .4byte 0x06016120
_08059F84: .4byte 0x030000B1
_08059F88: .4byte 0x030000B2
_08059F8C: .4byte 0x000002DA
_08059F90: .4byte 0x030000B0
_08059F94: .4byte sa2__gUnknown_03004D80
_08059F98: .4byte sa2__gUnknown_03002280

	thumb_func_start sub_8059F9C
sub_8059F9C: @ 0x08059F9C
	push {r4, r5, lr}
	ldr r5, _0805A02C @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_805423C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805A024
	movs r1, #0
	strh r1, [r4]
	movs r2, #1
	movs r0, #1
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #8]
	strb r2, [r4, #0xa]
	ldr r2, _0805A030 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0xc0
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0805A034 @ =gWinRegs
	movs r0, #0x28
	strh r0, [r1]
	movs r2, #0xf0
	strh r2, [r1, #4]
	ldr r0, _0805A038 @ =0x0000C8F0
	strh r0, [r1, #2]
	strh r2, [r1, #6]
	ldr r0, _0805A03C @ =0x00003F3F
	strh r0, [r1, #8]
	movs r0, #0x1f
	strh r0, [r1, #0xa]
	ldr r1, _0805A040 @ =gBldRegs
	ldr r0, _0805A044 @ =0x00001290
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #2]
	movs r0, #8
	strh r0, [r1, #4]
	ldr r1, [r4, #0xc]
	ldr r0, _0805A048 @ =sub_805B1E0
	str r0, [r1, #8]
	ldr r1, [r4, #0x10]
	ldr r0, _0805A04C @ =sub_805B52C
	str r0, [r1, #8]
	ldr r1, [r4, #0x1c]
	ldr r0, _0805A050 @ =sub_805B11C
	str r0, [r1, #8]
	ldr r1, [r4, #0x18]
	ldr r0, _0805A054 @ =sub_805AF24
	str r0, [r1, #8]
	ldr r1, [r4, #0x14]
	ldr r0, _0805A058 @ =sub_805ACD8
	str r0, [r1, #8]
	ldr r1, [r5]
	ldr r0, _0805A05C @ =sub_805A060
	str r0, [r1, #8]
_0805A024:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805A02C: .4byte gCurTask
_0805A030: .4byte gDispCnt
_0805A034: .4byte gWinRegs
_0805A038: .4byte 0x0000C8F0
_0805A03C: .4byte 0x00003F3F
_0805A040: .4byte gBldRegs
_0805A044: .4byte 0x00001290
_0805A048: .4byte sub_805B1E0
_0805A04C: .4byte sub_805B52C
_0805A050: .4byte sub_805B11C
_0805A054: .4byte sub_805AF24
_0805A058: .4byte sub_805ACD8
_0805A05C: .4byte sub_805A060

	thumb_func_start sub_805A060
sub_805A060: @ 0x0805A060
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _0805A0FC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r0, r1
	ldr r0, [r5, #0x18]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #8]
	ldr r0, [r5, #0x10]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp]
	ldr r0, [r5, #0xc]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sl, r0
	ldr r0, [r5, #0x14]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [r5, #0x20]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #0xc]
	ldr r0, _0805A100 @ =gGameMode
	ldrb r1, [r0]
	cmp r1, #1
	bls _0805A18E
	movs r3, #0
	ldr r0, _0805A104 @ =gMultiplayerConnections
	ldrb r1, [r0]
	movs r2, #1
	ands r1, r2
	adds r7, r0, #0
	cmp r1, #0
	beq _0805A13E
	movs r6, #1
	ldr r2, _0805A108 @ =gMultiplayerMissingHeartbeats
_0805A0BC:
	ldr r1, _0805A10C @ =gMultiSioStatusFlags
	adds r0, r6, #0
	lsls r0, r3
	ldr r4, [r1]
	ands r4, r0
	cmp r4, #0
	bne _0805A128
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _0805A12C
	movs r0, #0
	ldr r1, _0805A110 @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _0805A114 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0805A118 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0805A11C @ =sa2__gUnknown_03005390
	strb r4, [r0]
	ldr r1, _0805A120 @ =gVramGraphicsCopyCursor
	ldr r0, _0805A124 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl MultiPakCommunicationError
	b _0805A52C
	.align 2, 0
_0805A0FC: .4byte gCurTask
_0805A100: .4byte gGameMode
_0805A104: .4byte gMultiplayerConnections
_0805A108: .4byte gMultiplayerMissingHeartbeats
_0805A10C: .4byte gMultiSioStatusFlags
_0805A110: .4byte 0x0000FFFF
_0805A114: .4byte gBackgroundsCopyQueueCursor
_0805A118: .4byte gBackgroundsCopyQueueIndex
_0805A11C: .4byte sa2__gUnknown_03005390
_0805A120: .4byte gVramGraphicsCopyCursor
_0805A124: .4byte gVramGraphicsCopyQueueIndex
_0805A128:
	movs r0, #0
	strb r0, [r2]
_0805A12C:
	adds r2, #1
	adds r3, #1
	cmp r3, #3
	bhi _0805A13E
	ldrb r0, [r7]
	asrs r0, r3
	ands r0, r6
	cmp r0, #0
	bne _0805A0BC
_0805A13E:
	ldr r1, _0805A1E8 @ =gGameMode
	ldrb r0, [r1]
	cmp r0, #1
	bls _0805A18E
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	movs r3, #0
	adds r4, r1, #0
	ldr r2, _0805A1EC @ =gMultiSioRecv
	mov r8, r2
	movs r6, #0
_0805A158:
	ldr r0, _0805A1F0 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r3, r0
	beq _0805A186
	ldrb r0, [r7]
	asrs r0, r3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0805A186
	mov r0, r8
	adds r2, r6, r0
	ldrh r0, [r2]
	cmp r0, #0x20
	bls _0805A186
	adds r0, r1, #0
	ldrb r2, [r2, #2]
	lsls r0, r2
	ldrb r1, [r4]
	orrs r0, r1
	strb r0, [r4]
_0805A186:
	adds r6, #0x14
	adds r3, #1
	cmp r3, #3
	bls _0805A158
_0805A18E:
	adds r4, r5, #0
	adds r4, #0x2b
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	bl sub_805B7E4
	ldr r0, _0805A1F4 @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	mov sb, r4
	adds r7, r5, #0
	adds r7, #0x2a
	cmp r0, #0
	beq _0805A1F8
	ldr r0, [r5, #0x24]
	cmp r0, #0x21
	bls _0805A1F8
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r1, #0
	ldrsb r1, [r7, r1]
	cmp r0, r1
	bne _0805A1F8
	ldr r0, _0805A1E8 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0805A1F8
	movs r0, #0x6b
	bl m4aSongNumStart
	bl sub_805B858
	adds r2, r5, #0
	adds r2, #0x2f
	str r2, [sp, #0x10]
	adds r6, r5, #0
	adds r6, #0x2c
	adds r4, #2
	b _0805A358
	.align 2, 0
_0805A1E8: .4byte gGameMode
_0805A1EC: .4byte gMultiSioRecv
_0805A1F0: .4byte 0x04000128
_0805A1F4: .4byte gRepeatedKeys
_0805A1F8:
	ldr r2, _0805A244 @ =gRepeatedKeys
	ldrh r1, [r2]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	adds r3, r5, #0
	adds r3, #0x2f
	str r3, [sp, #0x10]
	mov r1, r8
	lsls r6, r1, #0x10
	cmp r0, #0
	beq _0805A270
	asrs r3, r6, #0x10
	movs r0, #0
	ldrsb r0, [r7, r0]
	cmp r3, r0
	bne _0805A270
	ldr r0, [r5, #0x24]
	cmp r0, #0x21
	bls _0805A270
	ldr r0, [sp, #0x10]
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r3
	asrs r1, r0
	ands r1, r4
	cmp r1, #0
	bne _0805A270
	movs r0, #0x6a
	bl m4aSongNumStart
	ldr r0, _0805A248 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0805A24C
	bl sub_805A9A4
	b _0805A25E
	.align 2, 0
_0805A244: .4byte gRepeatedKeys
_0805A248: .4byte gGameMode
_0805A24C:
	ldr r2, [r5, #0x1c]
	ldrh r0, [r2, #0x12]
	movs r1, #1
	orrs r0, r1
	strh r0, [r2, #0x12]
	ldr r0, _0805A268 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0805A26C @ =sub_805A54C
	str r0, [r1, #8]
_0805A25E:
	adds r6, r5, #0
	adds r6, #0x2c
	adds r4, r5, #0
	adds r4, #0x2d
	b _0805A358
	.align 2, 0
_0805A268: .4byte gCurTask
_0805A26C: .4byte sub_805A54C
_0805A270:
	ldrh r1, [r2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0805A290
	ldr r0, [r5, #0x24]
	cmp r0, #0x21
	bls _0805A290
	ldr r1, _0805A28C @ =0xFFFF0000
	adds r0, r6, r1
	lsrs r0, r0, #0x10
	mov r8, r0
	b _0805A2E8
	.align 2, 0
_0805A28C: .4byte 0xFFFF0000
_0805A290:
	ldrh r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0805A2C6
	ldr r0, [r5, #0x24]
	cmp r0, #0x21
	bls _0805A2C6
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r6, r2
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r1, [r0]
	adds r6, r0, #0
	adds r4, r5, #0
	adds r4, #0x2d
	cmp r1, #0
	bne _0805A358
	movs r0, #1
	strb r0, [r6]
	adds r1, r5, #0
	adds r1, #0x2e
	movs r0, #0x10
	b _0805A302
_0805A2C6:
	asrs r2, r6, #0x10
	movs r0, #0
	ldrsb r0, [r7, r0]
	cmp r2, r0
	ble _0805A2E4
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r1, [r0]
	adds r6, r0, #0
	adds r4, r5, #0
	adds r4, #0x2d
	cmp r1, #0
	bne _0805A358
	movs r0, #1
	b _0805A2FA
_0805A2E4:
	cmp r2, r0
	bge _0805A30C
_0805A2E8:
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r1, [r0]
	adds r6, r0, #0
	adds r4, r5, #0
	adds r4, #0x2d
	cmp r1, #0
	bne _0805A358
	movs r0, #2
_0805A2FA:
	strb r0, [r6]
	adds r1, r5, #0
	adds r1, #0x2e
	movs r0, #0x10
_0805A302:
	strb r0, [r1]
	movs r0, #0x67      @ SE_SHIFT
	bl m4aSongNumStart
	b _0805A358
_0805A30C:
	ldr r3, [sp, #0x10]
	ldrb r1, [r3]
	movs r0, #3
	ands r0, r2
	asrs r1, r0
	movs r3, #1
	ands r1, r3
	adds r6, r5, #0
	adds r6, #0x2c
	adds r4, r5, #0
	adds r4, #0x2d
	cmp r1, #0
	beq _0805A358
	ldr r0, [r5, #0x24]
	cmp r0, #0x21
	bls _0805A358
	ldrb r1, [r4]
	cmp r1, #0
	beq _0805A348
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0805A33E
	adds r0, r2, #1
	b _0805A340
_0805A33E:
	subs r0, r2, #1
_0805A340:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	b _0805A358
_0805A348:
	strb r3, [r6]
	adds r1, r5, #0
	adds r1, #0x2e
	movs r0, #0x10
	strb r0, [r1]
	movs r0, #0x67      @ SE_SHIFT
	bl m4aSongNumStart
_0805A358:
	ldrb r0, [r6]
	strb r0, [r4]
	ldrb r1, [r6]
	cmp r1, #0
	beq _0805A39A
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805A37A
	adds r1, r5, #0
	adds r1, #0x2e
	ldrb r0, [r1]
	cmp r0, #0
	beq _0805A39A
	ldrh r0, [r5, #0x28]
	adds r0, #0x10
	b _0805A388
_0805A37A:
	adds r1, r5, #0
	adds r1, #0x2e
	ldrb r0, [r1]
	cmp r0, #0
	beq _0805A39A
	ldrh r0, [r5, #0x28]
	subs r0, #0x10
_0805A388:
	strh r0, [r5, #0x28]
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805A39A
	movs r0, #0
	strb r0, [r6]
_0805A39A:
	ldrh r1, [r5, #0x28]
	ldr r0, _0805A3BC @ =0x00003FFF
	ands r0, r1
	strh r0, [r5, #0x28]
	movs r0, #0x3f
	mov r1, r8
	ands r0, r1
	mov r2, sb
	strb r0, [r2]
	movs r1, #0
	ldrsb r1, [r7, r1]
	cmp r1, r0
	bgt _0805A3C0
	ldrh r0, [r5, #0x28]
	lsrs r0, r0, #8
	b _0805A3D4
	.align 2, 0
_0805A3BC: .4byte 0x00003FFF
_0805A3C0:
	ldrh r0, [r5, #0x28]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x18
	strb r2, [r7]
	ldrh r1, [r5, #0x28]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _0805A3D6
	adds r0, r2, #1
_0805A3D4:
	strb r0, [r7]
_0805A3D6:
	adds r2, r7, #0
	ldrb r1, [r7]
	movs r0, #0x3f
	ands r0, r1
	strb r0, [r7]
	cmp r0, #0x24
	ble _0805A458
	mov r3, sb
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0x24
	ble _0805A458
	movs r0, #0x28
	ldrsh r1, [r5, r0]
	movs r0, #0x90
	lsls r0, r0, #6
	movs r3, #0xc4
	add r3, sl
	mov r8, r3
	movs r3, #0xc6
	add r3, sl
	mov ip, r3
	mov r3, sl
	adds r3, #0xc8
	str r3, [sp, #0x14]
	cmp r1, r0
	ble _0805A458
_0805A40C:
	ldrb r0, [r2]
	subs r0, #4
	strb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x24
	bgt _0805A40C
	mov r4, sb
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0x24
	ble _0805A432
_0805A424:
	ldrb r0, [r4]
	subs r0, #4
	strb r0, [r4]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x24
	bgt _0805A424
_0805A432:
	movs r1, #0x28
	ldrsh r0, [r5, r1]
	adds r1, r0, #0
	movs r2, #0x90
	lsls r2, r2, #6
	cmp r0, r2
	ble _0805A4D0
	ldr r0, _0805A454 @ =0xFFFFFC00
	adds r3, r0, #0
_0805A444:
	adds r0, r1, r3
	strh r0, [r5, #0x28]
	adds r1, r0, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r2
	bgt _0805A444
	b _0805A4D0
	.align 2, 0
_0805A454: .4byte 0xFFFFFC00
_0805A458:
	adds r2, r7, #0
	movs r0, #0
	ldrsb r0, [r2, r0]
	movs r1, #0xc4
	add r1, sl
	mov r8, r1
	movs r3, #0xc6
	add r3, sl
	mov ip, r3
	mov r1, sl
	adds r1, #0xc8
	str r1, [sp, #0x14]
	cmp r0, #0x1b
	bgt _0805A4D0
	mov r3, sb
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0x1b
	bgt _0805A4D0
	movs r0, #0x28
	ldrsh r1, [r5, r0]
	ldr r0, _0805A53C @ =0x00001BFF
	cmp r1, r0
	bgt _0805A4D0
_0805A488:
	ldrb r0, [r2]
	adds r0, #4
	strb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x1b
	ble _0805A488
	mov r4, sb
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0x1b
	bgt _0805A4AE
_0805A4A0:
	ldrb r0, [r4]
	adds r0, #4
	strb r0, [r4]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x1b
	ble _0805A4A0
_0805A4AE:
	movs r1, #0x28
	ldrsh r0, [r5, r1]
	adds r2, r0, #0
	ldr r1, _0805A53C @ =0x00001BFF
	cmp r0, r1
	bgt _0805A4D0
	movs r3, #0x80
	lsls r3, r3, #3
	adds r4, r3, #0
	adds r3, r1, #0
_0805A4C2:
	adds r1, r2, r4
	adds r2, r1, #0
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, r3
	ble _0805A4C2
	strh r1, [r5, #0x28]
_0805A4D0:
	ldrh r2, [r5, #0x28]
	ldr r1, _0805A540 @ =0x000003FF
	adds r0, r1, #0
	ands r0, r2
	ldr r2, [sp, #8]
	strh r0, [r2, #0x1c]
	ldrh r2, [r5, #0x28]
	adds r0, r1, #0
	ands r0, r2
	ldr r3, [sp]
	strh r0, [r3, #0x1c]
	ldrh r2, [r5, #0x28]
	adds r0, r1, #0
	ands r0, r2
	mov r2, r8
	strh r0, [r2]
	ldrb r0, [r6]
	mov r3, ip
	strb r0, [r3]
	ldrh r0, [r5, #0x28]
	ands r1, r0
	ldr r0, [sp, #0xc]
	strh r1, [r0, #0x32]
	ldr r1, [sp, #0x10]
	ldrb r0, [r1]
	ldr r2, [sp, #0x14]
	strb r0, [r2]
	ldr r0, [r5, #0x24]
	adds r0, #1
	str r0, [r5, #0x24]
	ldr r3, [sp, #4]
	str r0, [r3, #0x38]
	ldr r1, _0805A544 @ =gGameMode
	ldrb r0, [r1]
	cmp r0, #1
	bls _0805A52C
	ldr r2, _0805A548 @ =gMultiSioSend
	movs r0, #0x20
	strh r0, [r2]
	ldr r3, [sp, #8]
	ldrh r1, [r3, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #2
	ands r0, r1
	lsrs r0, r0, #8
	strb r0, [r2, #2]
_0805A52C:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805A53C: .4byte 0x00001BFF
_0805A540: .4byte 0x000003FF
_0805A544: .4byte gGameMode
_0805A548: .4byte gMultiSioSend

	thumb_func_start sub_805A54C
sub_805A54C: @ 0x0805A54C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r0, sp
	movs r1, #0
	movs r2, #4
	bl memset
	ldr r0, _0805A5C8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, _0805A5CC @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0805A60C
	movs r3, #0
	ldr r0, _0805A5D0 @ =gMultiplayerConnections
	ldrb r1, [r0]
	movs r2, #1
	ands r1, r2
	mov ip, r0
	cmp r1, #0
	beq _0805A60C
	movs r6, #1
	ldr r2, _0805A5D4 @ =gMultiplayerMissingHeartbeats
_0805A58A:
	ldr r1, _0805A5D8 @ =gMultiSioStatusFlags
	adds r0, r6, #0
	lsls r0, r3
	ldr r4, [r1]
	ands r4, r0
	cmp r4, #0
	bne _0805A5F4
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _0805A5F8
	movs r0, #0
	ldr r1, _0805A5DC @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _0805A5E0 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0805A5E4 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0805A5E8 @ =sa2__gUnknown_03005390
	strb r4, [r0]
	ldr r1, _0805A5EC @ =gVramGraphicsCopyCursor
	ldr r0, _0805A5F0 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl MultiPakCommunicationError
	b _0805A788
	.align 2, 0
_0805A5C8: .4byte gCurTask
_0805A5CC: .4byte gGameMode
_0805A5D0: .4byte gMultiplayerConnections
_0805A5D4: .4byte gMultiplayerMissingHeartbeats
_0805A5D8: .4byte gMultiSioStatusFlags
_0805A5DC: .4byte 0x0000FFFF
_0805A5E0: .4byte gBackgroundsCopyQueueCursor
_0805A5E4: .4byte gBackgroundsCopyQueueIndex
_0805A5E8: .4byte sa2__gUnknown_03005390
_0805A5EC: .4byte gVramGraphicsCopyCursor
_0805A5F0: .4byte gVramGraphicsCopyQueueIndex
_0805A5F4:
	movs r0, #0
	strb r0, [r2]
_0805A5F8:
	adds r2, #1
	adds r3, #1
	cmp r3, #3
	bhi _0805A60C
	mov r1, ip
	ldrb r0, [r1]
	asrs r0, r3
	ands r0, r6
	cmp r0, #0
	bne _0805A58A
_0805A60C:
	ldr r0, _0805A62C @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0805A63C
	ldr r2, [r5, #0x1c]
	ldrh r1, [r2, #0x12]
	ldr r0, _0805A630 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2, #0x12]
	ldr r0, _0805A634 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0805A638 @ =sub_805A060
	str r0, [r1, #8]
	b _0805A788
	.align 2, 0
_0805A62C: .4byte gPressedKeys
_0805A630: .4byte 0x0000FFFE
_0805A634: .4byte gCurTask
_0805A638: .4byte sub_805A060
_0805A63C:
	ldr r1, _0805A678 @ =gMultiSioRecv
	ldrh r0, [r1]
	adds r7, r1, #0
	cmp r0, #0x22
	bne _0805A68C
	movs r3, #0
	ldr r5, _0805A67C @ =gCurTask
	mov ip, r5
	ldr r7, _0805A680 @ =sub_805A798
	ldr r6, _0805A684 @ =gMultiplayerConnections
	movs r5, #1
	adds r2, r1, #0
	ldr r4, _0805A688 @ =gMultiplayerCharacters
_0805A656:
	ldrb r0, [r6]
	asrs r0, r3
	ands r0, r5
	cmp r0, #0
	beq _0805A666
	adds r1, r3, r4
	ldrb r0, [r2, #2]
	strb r0, [r1]
_0805A666:
	adds r2, #0x14
	adds r3, #1
	cmp r3, #3
	bls _0805A656
	mov r1, ip
	ldr r0, [r1]
	str r7, [r0, #8]
	b _0805A788
	.align 2, 0
_0805A678: .4byte gMultiSioRecv
_0805A67C: .4byte gCurTask
_0805A680: .4byte sub_805A798
_0805A684: .4byte gMultiplayerConnections
_0805A688: .4byte gMultiplayerCharacters
_0805A68C:
	movs r3, #0
	ldr r0, _0805A750 @ =gMultiplayerConnections
	mov ip, r0
	ldr r1, _0805A754 @ =gMultiSioSend
	mov sl, r1
	movs r0, #0xc0
	lsls r0, r0, #2
	mov sb, r0
	ldr r1, _0805A758 @ =0x0000FFFE
	mov r8, r1
	movs r6, #0
_0805A6A2:
	mov r1, ip
	ldrb r0, [r1]
	asrs r0, r3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0805A6EE
	ldr r4, _0805A75C @ =0x04000128
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r3, r0
	beq _0805A6EE
	adds r1, r6, r7
	ldrh r0, [r1]
	cmp r0, #0x21
	bne _0805A6EE
	ldrb r2, [r1, #2]
	ldrh r1, [r5, #0x28]
	mov r0, sb
	ands r0, r1
	lsrs r0, r0, #8
	cmp r2, r0
	bne _0805A6EE
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r3, r0
	bhs _0805A6EE
	ldr r2, [r5, #0x1c]
	ldrh r1, [r2, #0x12]
	mov r0, r8
	ands r0, r1
	strh r0, [r2, #0x12]
	ldr r0, _0805A760 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0805A764 @ =sub_805A060
	str r0, [r1, #8]
_0805A6EE:
	adds r6, #0x14
	adds r3, #1
	cmp r3, #3
	bls _0805A6A2
	ldr r1, _0805A768 @ =gMultiSioStatusFlags
	ldr r0, [r1]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0805A776
	mov r6, sl
	movs r0, #0x22
	strh r0, [r6]
	ldrh r1, [r5, #0x28]
	movs r0, #0xc0
	lsls r0, r0, #2
	ands r0, r1
	lsrs r0, r0, #8
	strb r0, [r6, #2]
	movs r3, #0
	ldr r0, _0805A750 @ =gMultiplayerConnections
	ldrb r0, [r0]
	mov r8, r0
	movs r4, #0
_0805A71E:
	mov r0, r8
	asrs r0, r3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0805A746
	adds r1, r4, r7
	ldrh r2, [r1]
	cmp r2, #0x21
	bne _0805A76C
	ldrb r0, [r1, #2]
	mov r5, sp
	adds r1, r5, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0805A772
_0805A746:
	adds r4, #0x14
	adds r3, #1
	cmp r3, #3
	bls _0805A71E
	b _0805A788
	.align 2, 0
_0805A750: .4byte gMultiplayerConnections
_0805A754: .4byte gMultiSioSend
_0805A758: .4byte 0x0000FFFE
_0805A75C: .4byte 0x04000128
_0805A760: .4byte gCurTask
_0805A764: .4byte sub_805A060
_0805A768: .4byte gMultiSioStatusFlags
_0805A76C:
	movs r0, #0x21
	strh r0, [r6]
	b _0805A788
_0805A772:
	strh r2, [r6]
	b _0805A788
_0805A776:
	mov r6, sl
	movs r0, #0x21
	strh r0, [r6]
	ldrh r1, [r5, #0x28]
	movs r0, #0xc0
	lsls r0, r0, #2
	ands r0, r1
	lsrs r0, r0, #8
	strb r0, [r6, #2]
_0805A788:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_805A798
sub_805A798: @ 0x0805A798
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _0805A808 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r0, _0805A80C @ =gGameMode
	ldrb r0, [r0]
	mov r8, r2
	cmp r0, #1
	bls _0805A84C
	movs r3, #0
	ldr r0, _0805A810 @ =gMultiplayerConnections
	ldrb r1, [r0]
	movs r2, #1
	ands r1, r2
	mov ip, r0
	cmp r1, #0
	beq _0805A84C
	movs r5, #1
	ldr r2, _0805A814 @ =gMultiplayerMissingHeartbeats
_0805A7C8:
	ldr r1, _0805A818 @ =gMultiSioStatusFlags
	adds r0, r5, #0
	lsls r0, r3
	ldr r4, [r1]
	ands r4, r0
	cmp r4, #0
	bne _0805A834
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _0805A838
	movs r0, #0
	ldr r1, _0805A81C @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _0805A820 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0805A824 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0805A828 @ =sa2__gUnknown_03005390
	strb r4, [r0]
	ldr r1, _0805A82C @ =gVramGraphicsCopyCursor
	ldr r0, _0805A830 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl MultiPakCommunicationError
	b _0805A992
	.align 2, 0
_0805A808: .4byte gCurTask
_0805A80C: .4byte gGameMode
_0805A810: .4byte gMultiplayerConnections
_0805A814: .4byte gMultiplayerMissingHeartbeats
_0805A818: .4byte gMultiSioStatusFlags
_0805A81C: .4byte 0x0000FFFF
_0805A820: .4byte gBackgroundsCopyQueueCursor
_0805A824: .4byte gBackgroundsCopyQueueIndex
_0805A828: .4byte sa2__gUnknown_03005390
_0805A82C: .4byte gVramGraphicsCopyCursor
_0805A830: .4byte gVramGraphicsCopyQueueIndex
_0805A834:
	movs r0, #0
	strb r0, [r2]
_0805A838:
	adds r2, #1
	adds r3, #1
	cmp r3, #3
	bhi _0805A84C
	mov r1, ip
	ldrb r0, [r1]
	asrs r0, r3
	ands r0, r5
	cmp r0, #0
	bne _0805A7C8
_0805A84C:
	ldr r3, _0805A8A4 @ =gMultiSioRecv
	ldrh r0, [r3]
	adds r7, r3, #0
	cmp r0, #0x23
	bne _0805A8B8
	ldr r1, _0805A8A8 @ =gUnknown_03005140
	movs r0, #0
	strb r0, [r1]
	movs r2, #0
	ldr r0, _0805A8AC @ =gMultiplayerConnections
	mov ip, r0
	adds r5, r1, #0
	movs r4, #0
_0805A866:
	mov r1, ip
	ldrb r0, [r1]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0805A896
	adds r3, r4, r7
	ldrb r0, [r3, #3]
	ldrb r1, [r5]
	cmp r0, r1
	bhs _0805A880
	adds r0, r1, #0
_0805A880:
	strb r0, [r5]
	ldr r0, _0805A8B0 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0805A896
	ldr r0, _0805A8B4 @ =gMultiplayerCharacters
	adds r0, r2, r0
	ldrb r1, [r3, #2]
	strb r1, [r0]
_0805A896:
	adds r4, #0x14
	adds r2, #1
	cmp r2, #3
	bls _0805A866
	bl sub_805A9A4
	b _0805A992
	.align 2, 0
_0805A8A4: .4byte gMultiSioRecv
_0805A8A8: .4byte gUnknown_03005140
_0805A8AC: .4byte gMultiplayerConnections
_0805A8B0: .4byte gMultiSioStatusFlags
_0805A8B4: .4byte gMultiplayerCharacters
_0805A8B8:
	cmp r0, #0x21
	bne _0805A8E4
	ldr r5, _0805A8D8 @ =gMultiSioSend
	movs r0, #0x20
	strh r0, [r5]
	ldr r2, [r6, #0x1c]
	ldrh r1, [r2, #0x12]
	ldr r0, _0805A8DC @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2, #0x12]
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _0805A8E0 @ =sub_805A060
	str r0, [r1, #8]
	b _0805A992
	.align 2, 0
_0805A8D8: .4byte gMultiSioSend
_0805A8DC: .4byte 0x0000FFFE
_0805A8E0: .4byte sub_805A060
_0805A8E4:
	ldr r0, _0805A950 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0805A972
	ldr r5, _0805A954 @ =gMultiSioSend
	movs r0, #0x23
	strh r0, [r5]
	ldrh r1, [r6, #0x28]
	movs r0, #0xc0
	lsls r0, r0, #2
	ands r0, r1
	lsrs r0, r0, #8
	strb r0, [r5, #2]
	ldr r1, _0805A958 @ =gLoadedSaveGame
	ldrb r0, [r5, #2]
	lsls r0, r0, #1
	adds r1, #8
	adds r0, r0, r1
	ldrh r0, [r0]
	strb r0, [r5, #3]
	movs r2, #0
	ldr r1, _0805A95C @ =gMultiplayerConnections
	mov ip, r1
	movs r4, #0
_0805A918:
	mov r1, ip
	ldrb r0, [r1]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0805A968
	cmp r2, #0
	beq _0805A968
	adds r3, r4, r7
	ldr r0, _0805A960 @ =gMultiplayerCharacters
	adds r0, r2, r0
	ldrb r1, [r3, #2]
	strb r1, [r0]
	ldrh r0, [r3]
	cmp r0, #0x22
	beq _0805A968
	movs r0, #0x22
	strh r0, [r5]
	ldr r0, _0805A964 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0805A992
	movs r0, #0x21
	strh r0, [r5]
	b _0805A992
	.align 2, 0
_0805A950: .4byte gMultiSioStatusFlags
_0805A954: .4byte gMultiSioSend
_0805A958: .4byte gLoadedSaveGame
_0805A95C: .4byte gMultiplayerConnections
_0805A960: .4byte gMultiplayerCharacters
_0805A964: .4byte gPressedKeys
_0805A968:
	adds r4, #0x14
	adds r2, #1
	cmp r2, #3
	bls _0805A918
	b _0805A992
_0805A972:
	ldr r5, _0805A99C @ =gMultiSioSend
	movs r0, #0x22
	strh r0, [r5]
	ldrh r1, [r6, #0x28]
	movs r0, #0xc0
	lsls r0, r0, #2
	ands r0, r1
	lsrs r0, r0, #8
	strb r0, [r5, #2]
	ldr r1, _0805A9A0 @ =gLoadedSaveGame
	ldrb r0, [r5, #2]
	lsls r0, r0, #1
	adds r1, #8
	adds r0, r0, r1
	ldrh r0, [r0]
	strb r0, [r5, #3]
_0805A992:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805A99C: .4byte gMultiSioSend
_0805A9A0: .4byte gLoadedSaveGame

	thumb_func_start sub_805A9A4
sub_805A9A4: @ 0x0805A9A4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x30
	ldr r0, _0805AAC8 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0xc]
	ldrh r3, [r0, #6]
	ldr r0, [r4, #0x14]
	ldrh r6, [r0, #6]
	ldr r5, _0805AACC @ =gSelectedCharacter
	ldrh r2, [r4, #0x28]
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r1, #0
	ands r0, r2
	lsrs r0, r0, #8
	strb r0, [r5]
	ldrh r0, [r4, #0x28]
	ands r1, r0
	lsrs r1, r1, #7
	adds r1, #1
	ldr r0, _0805AAD0 @ =0x03000050
	adds r3, r3, r0
	movs r5, #0
	strb r1, [r3]
	ldr r1, [r4, #0x14]
	ldr r0, _0805AAD4 @ =sub_805AE84
	str r0, [r1, #8]
	ldr r1, [r4, #0xc]
	ldr r0, _0805AAD8 @ =sub_805B8C0
	str r0, [r1, #8]
	ldr r1, [r4, #0x18]
	ldr r0, _0805AADC @ =sub_805B880
	str r0, [r1, #8]
	ldr r1, [r4, #0x10]
	ldr r0, _0805AAE0 @ =sub_805B930
	str r0, [r1, #8]
	ldr r0, [r4, #0x1c]
	bl TaskDestroy
	ldr r0, [r4, #0x20]
	bl TaskDestroy
	str r5, [r4, #0x24]
	ldr r1, _0805AAE4 @ =0x03000040
	adds r6, r6, r1
	movs r3, #0
	movs r1, #0xb4
	strh r1, [r6]
	ldr r0, _0805AAE8 @ =gBldRegs
	strh r5, [r0, #4]
	strh r1, [r6]
	add r2, sp, #0x2c
	movs r0, #0x2c
	strb r0, [r2]
	mov r1, sp
	adds r1, #0x2b
	movs r0, #4
	strb r0, [r1]
	ldr r4, _0805AAEC @ =gUiGraphics
	ldrb r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	str r0, [sp, #0x14]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x18]
	ldr r0, _0805AAF0 @ =0x06010920
	str r0, [sp, #0xc]
	movs r0, #0x20
	str r0, [sp, #0x24]
	add r0, sp, #0x28
	strb r3, [r0]
	mov r1, sp
	adds r1, #0x2a
	movs r0, #9
	strb r0, [r1]
	ldrb r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r3, sp
	ldrb r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r3, #8]
	ldrb r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r3, #9]
	ldrb r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r3, #0xa]
	ldrb r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r3, #0xb]
	mov r0, sp
	bl sub_80528AC
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _0805AAF4 @ =sub_805AAF8
	str r0, [r1, #8]
	add sp, #0x30
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805AAC8: .4byte gCurTask
_0805AACC: .4byte gSelectedCharacter
_0805AAD0: .4byte 0x03000050
_0805AAD4: .4byte sub_805AE84
_0805AAD8: .4byte sub_805B8C0
_0805AADC: .4byte sub_805B880
_0805AAE0: .4byte sub_805B930
_0805AAE4: .4byte 0x03000040
_0805AAE8: .4byte gBldRegs
_0805AAEC: .4byte gUiGraphics
_0805AAF0: .4byte 0x06010920
_0805AAF4: .4byte sub_805AAF8

	thumb_func_start sub_805AAF8
sub_805AAF8: @ 0x0805AAF8
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r1, _0805AB64 @ =gUnknown_0868857C
	mov r0, sp
	movs r2, #4
	bl memcpy
	ldr r5, _0805AB68 @ =gCurTask
	ldr r0, [r5]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	ldr r3, [r4, #0x18]
	ldr r0, [r4, #0x24]
	adds r1, r0, #1
	str r1, [r4, #0x24]
	cmp r1, #0x38
	bls _0805ABDC
	ldr r1, _0805AB6C @ =0x03000039
	adds r0, r2, r1
	ldrb r6, [r0]
	adds r0, r3, #0
	bl TaskDestroy
	ldr r0, [r4, #0x10]
	bl TaskDestroy
	ldr r0, [r4, #0xc]
	bl TaskDestroy
	ldr r0, [r4, #0x14]
	bl TaskDestroy
	ldr r0, [r5]
	bl TaskDestroy
	ldr r2, _0805AB70 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0805AB74 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _0805AB78 @ =gBldRegs
	movs r5, #0
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	ldr r4, _0805AB7C @ =gGameMode
	ldrb r0, [r4]
	cmp r0, #1
	bls _0805AB80
	bl sub_801C9D8
	b _0805ABF2
	.align 2, 0
_0805AB64: .4byte gUnknown_0868857C
_0805AB68: .4byte gCurTask
_0805AB6C: .4byte 0x03000039
_0805AB70: .4byte gDispCnt
_0805AB74: .4byte 0x00000FFF
_0805AB78: .4byte gBldRegs
_0805AB7C: .4byte gGameMode
_0805AB80:
	cmp r0, #0
	bne _0805ABD4
	cmp r6, #8
	bne _0805AB94
	movs r0, #0x75
	bl m4aSongNumStart
	ldr r1, _0805ABC0 @ =gTailsEnabled
	movs r0, #1
	strb r0, [r1]
_0805AB94:
	ldrb r0, [r4]
	cmp r0, #0
	bne _0805ABD4
	ldr r1, _0805ABC4 @ =gLoadedSaveGame
	ldr r0, _0805ABC8 @ =gSelectedCharacter
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r1, #8
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _0805ABD4
	ldr r0, _0805ABCC @ =gCurrentLevel
	strb r5, [r0]
	ldr r0, _0805ABD0 @ =gCurrentgUnknown_03005124Level
	strb r5, [r0]
	bl ApplyGameStageSettings
	b _0805ABF2
	.align 2, 0
_0805ABC0: .4byte gTailsEnabled
_0805ABC4: .4byte gLoadedSaveGame
_0805ABC8: .4byte gSelectedCharacter
_0805ABCC: .4byte gCurrentLevel
_0805ABD0: .4byte gUnknown_03005124
_0805ABD4:
	movs r0, #0
	bl sub_8061948
	b _0805ABF2
_0805ABDC:
	ldr r0, _0805ABFC @ =gSelectedCharacter
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, sp
	ldrb r0, [r0]
	cmp r1, r0
	bls _0805ABF2
	adds r0, r4, #0
	bl sub_805423C
_0805ABF2:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805ABFC: .4byte gSelectedCharacter

	thumb_func_start sub_805AC00
sub_805AC00: @ 0x0805AC00
	push {r4, r5, r6, r7, lr}
	ldr r7, _0805AC58 @ =gCurTask
	ldr r0, [r7]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x24]
	adds r0, #1
	str r0, [r4, #0x24]
	movs r5, #0
	movs r6, #0
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #8]
	movs r0, #0x10
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	bl sub_805423C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805AC74
	movs r0, #3
	bl m4aSongNumStop
	ldr r2, _0805AC5C @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0805AC60 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0805AC64 @ =gBldRegs
	strh r6, [r0]
	strh r6, [r0, #4]
	ldr r0, [r7]
	bl TaskDestroy
	ldr r0, _0805AC68 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bne _0805AC6C
	bl CreateTimeAttackMenu
	b _0805ACC8
	.align 2, 0
_0805AC58: .4byte gCurTask
_0805AC5C: .4byte gDispCnt
_0805AC60: .4byte 0x00000FFF
_0805AC64: .4byte gBldRegs
_0805AC68: .4byte gGameMode
_0805AC6C:
	movs r0, #1
	bl CreateMainMenu
	b _0805ACC8
_0805AC74:
	ldr r0, [r4, #0x24]
	cmp r0, #0x10
	bne _0805ACC8
	ldr r0, [r4, #0x18]
	bl TaskDestroy
	ldr r0, [r4, #0x10]
	bl TaskDestroy
	ldr r0, [r4, #0xc]
	bl TaskDestroy
	ldr r0, [r4, #0x14]
	bl TaskDestroy
	ldr r0, [r4, #0x1c]
	bl TaskDestroy
	ldr r0, [r4, #0x20]
	bl TaskDestroy
	ldr r3, _0805ACD0 @ =sa2__gUnknown_03004D80
	strb r5, [r3]
	ldr r0, _0805ACD4 @ =sa2__gUnknown_03002280
	strb r5, [r0]
	strb r5, [r0, #1]
	movs r1, #0xff
	strb r1, [r0, #2]
	movs r2, #0x14
	strb r2, [r0, #3]
	strb r5, [r3, #1]
	strb r5, [r0, #4]
	strb r5, [r0, #5]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #6]
	strb r2, [r0, #7]
	strb r5, [r3, #2]
	strb r5, [r0, #8]
	strb r5, [r0, #9]
	strb r1, [r0, #0xa]
	strb r2, [r0, #0xb]
_0805ACC8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805ACD0: .4byte sa2__gUnknown_03004D80
_0805ACD4: .4byte sa2__gUnknown_03002280

	thumb_func_start sub_805ACD8
sub_805ACD8: @ 0x0805ACD8
	push {r4, r5, lr}
	sub sp, #0x1c
	ldr r1, _0805AD10 @ =gUnknown_08688580
	mov r0, sp
	movs r2, #0x19
	bl memcpy
	ldr r0, _0805AD14 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	movs r1, #0x38
	ldrsh r0, [r5, r1]
	cmp r0, #0x20
	ble _0805AD1C
	movs r1, #0
	movs r0, #6
	strh r0, [r5, #0xc]
	str r1, [r5, #0x38]
	ldr r0, [r5, #0x3c]
	subs r0, #0xb4
	str r0, [r5, #0x3c]
	ldr r0, _0805AD18 @ =sub_805ADF0
	str r0, [r2, #8]
	b _0805AD78
	.align 2, 0
_0805AD10: .4byte gUnknown_08688580
_0805AD14: .4byte gCurTask
_0805AD18: .4byte sub_805ADF0
_0805AD1C:
	cmp r0, #0xc
	ble _0805AD50
	adds r4, r0, #0
	subs r4, #0xd
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xa
	bl Div
	ldr r1, _0805AD4C @ =gSineTable
	adds r0, #0x11
	muls r0, r4, r0
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	movs r0, #0x38
	subs r0, r0, r1
	strh r0, [r5, #0xc]
	ldr r0, [r5, #0x3c]
	subs r0, #0xb4
	b _0805AD76
	.align 2, 0
_0805AD4C: .4byte gSineTable
_0805AD50:
	cmp r0, #9
	ble _0805AD5E
	movs r0, #0
	strh r0, [r5, #0xa]
	ldr r0, [r5, #0x3c]
	subs r0, #0xb4
	b _0805AD76
_0805AD5E:
	lsls r0, r0, #8
	movs r1, #0xa
	bl Div
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	subs r1, r1, r0
	strh r1, [r5, #0xa]
	ldr r0, [r5, #0x3c]
	ldr r1, _0805AD98 @ =0xFFFFF9C0
	adds r0, r0, r1
_0805AD76:
	str r0, [r5, #0x3c]
_0805AD78:
	ldr r0, _0805AD9C @ =gUnknown_0868859C
	adds r1, r5, #0
	bl sub_8052F78
	ldr r0, [r5, #0x3c]
	cmp r0, #0
	ble _0805ADA0
	asrs r0, r0, #6
	movs r1, #0x20
	bl Div
	movs r1, #9
	subs r1, r1, r0
	strh r1, [r5, #0x26]
	b _0805ADA4
	.align 2, 0
_0805AD98: .4byte 0xFFFFF9C0
_0805AD9C: .4byte gUnknown_0868859C
_0805ADA0:
	movs r0, #9
	strh r0, [r5, #0x26]
_0805ADA4:
	ldr r1, [r5, #0x3c]
	movs r0, #0xf0
	lsls r0, r0, #6
	cmp r1, r0
	ble _0805ADB2
	movs r0, #0
	strh r0, [r5, #0x26]
_0805ADB2:
	ldr r1, [r5, #0x3c]
	ldr r0, _0805ADEC @ =0xFFFFF840
	cmp r1, r0
	bge _0805ADCC
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r1, r2
	str r0, [r5, #0x3c]
	ldr r0, [r5, #0x30]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	str r0, [r5, #0x30]
_0805ADCC:
	ldr r0, [r5, #0x3c]
	asrs r0, r0, #6
	strh r0, [r5, #0x22]
	ldrh r0, [r5, #0xc]
	strh r0, [r5, #0x24]
	ldr r0, [r5, #0x30]
	add r0, sp
	adds r1, r5, #0
	adds r1, #0x18
	bl sub_8052F78
	add sp, #0x1c
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805ADEC: .4byte 0xFFFFF840

	thumb_func_start sub_805ADF0
sub_805ADF0: @ 0x0805ADF0
	push {r4, lr}
	sub sp, #0x1c
	ldr r1, _0805AE3C @ =gUnknown_08688580
	mov r0, sp
	movs r2, #0x19
	bl memcpy
	ldr r0, _0805AE40 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r0, #0
	strh r0, [r4, #0xa]
	ldr r0, _0805AE44 @ =gUnknown_0868859C
	adds r1, r4, #0
	bl sub_8052F78
	ldr r0, [r4, #0x34]
	adds r0, #1
	str r0, [r4, #0x34]
	movs r0, #6
	strh r0, [r4, #0x24]
	ldr r0, [r4, #0x3c]
	subs r0, #0xb4
	str r0, [r4, #0x3c]
	cmp r0, #0
	ble _0805AE48
	asrs r0, r0, #6
	movs r1, #0x20
	bl Div
	movs r1, #9
	subs r1, r1, r0
	strh r1, [r4, #0x26]
	b _0805AE4C
	.align 2, 0
_0805AE3C: .4byte gUnknown_08688580
_0805AE40: .4byte gCurTask
_0805AE44: .4byte gUnknown_0868859C
_0805AE48:
	movs r0, #9
	strh r0, [r4, #0x26]
_0805AE4C:
	ldr r1, [r4, #0x3c]
	ldr r0, _0805AE80 @ =0xFFFFF840
	cmp r1, r0
	bge _0805AE66
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r1, r2
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x30]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	str r0, [r4, #0x30]
_0805AE66:
	ldr r0, [r4, #0x3c]
	asrs r0, r0, #6
	strh r0, [r4, #0x22]
	ldr r0, [r4, #0x30]
	add r0, sp
	adds r1, r4, #0
	adds r1, #0x18
	bl sub_8052F78
	add sp, #0x1c
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805AE80: .4byte 0xFFFFF840

	thumb_func_start sub_805AE84
sub_805AE84: @ 0x0805AE84
	push {r4, r5, lr}
	sub sp, #0x1c
	ldr r1, _0805AF10 @ =gUnknown_086885A8
	mov r0, sp
	movs r2, #0x19
	bl memcpy
	ldr r0, _0805AF14 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r0, [r5, #0x34]
	adds r0, #1
	str r0, [r5, #0x34]
	movs r0, #0
	strh r0, [r5, #0xa]
	ldr r0, _0805AF18 @ =gUnknown_0868859C
	adds r1, r5, #0
	bl sub_805321C
	movs r0, #6
	strh r0, [r5, #0x24]
	ldr r1, _0805AF1C @ =0x03000040
	adds r0, r4, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r5, #0x3c]
	subs r0, r0, r1
	str r0, [r5, #0x3c]
	ldr r3, _0805AF1C @ =0x03000040
	adds r4, r4, r3
	movs r2, #2
_0805AEC8:
	ldrh r1, [r4]
	movs r3, #0
	ldrsh r0, [r4, r3]
	cmp r0, #0
	beq _0805AED6
	subs r0, r1, #1
	strh r0, [r4]
_0805AED6:
	subs r2, #1
	cmp r2, #0
	bge _0805AEC8
	ldr r1, [r5, #0x3c]
	ldr r0, _0805AF20 @ =0xFFFFF840
	cmp r1, r0
	bge _0805AEF6
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r1, r2
	str r0, [r5, #0x3c]
	ldr r0, [r5, #0x30]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	str r0, [r5, #0x30]
_0805AEF6:
	ldr r0, [r5, #0x3c]
	asrs r0, r0, #6
	strh r0, [r5, #0x22]
	ldr r0, [r5, #0x30]
	add r0, sp
	adds r1, r5, #0
	adds r1, #0x18
	bl sub_805321C
	add sp, #0x1c
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805AF10: .4byte gUnknown_086885A8
_0805AF14: .4byte gCurTask
_0805AF18: .4byte gUnknown_0868859C
_0805AF1C: .4byte 0x03000040
_0805AF20: .4byte 0xFFFFF840

	thumb_func_start sub_805AF24
sub_805AF24: @ 0x0805AF24
	push {r4, lr}
	ldr r0, _0805AF50 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x18]
	adds r0, #1
	str r0, [r4, #0x18]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0x21
	ble _0805AF58
	movs r0, #0
	movs r1, #0x84
	strh r1, [r4, #0xc]
	str r0, [r4, #0x18]
	ldr r0, _0805AF54 @ =sub_805AFC4
	str r0, [r2, #8]
	b _0805AFAE
	.align 2, 0
_0805AF50: .4byte gCurTask
_0805AF54: .4byte sub_805AFC4
_0805AF58:
	cmp r1, #0xd
	ble _0805AF84
	movs r0, #0x67
	muls r0, r1, r0
	movs r1, #0x6e
	bl Div
	ldr r2, _0805AF80 @ =gSineTable
	subs r0, #0xa
	lsls r1, r0, #4
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r0, #0x54
	strh r0, [r4, #0xc]
	b _0805AFAE
	.align 2, 0
_0805AF80: .4byte gSineTable
_0805AF84:
	cmp r1, #0xa
	ble _0805AF94
	ldr r0, _0805AF90 @ =gUnknown_08688570
	ldrh r0, [r0]
	strh r0, [r4, #0xa]
	b _0805AFAE
	.align 2, 0
_0805AF90: .4byte gUnknown_08688570
_0805AF94:
	lsls r0, r1, #8
	movs r1, #0xa
	bl Div
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	subs r1, r1, r0
	strh r1, [r4, #0xa]
	ldr r0, _0805AFBC @ =gUnknown_08688570
	ldrh r0, [r0]
	adds r1, r1, r0
	strh r1, [r4, #0xa]
_0805AFAE:
	ldr r0, _0805AFC0 @ =gUnknown_086885C4
	adds r1, r4, #0
	bl sub_8052F78
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805AFBC: .4byte gUnknown_08688570
_0805AFC0: .4byte gUnknown_086885C4

	thumb_func_start sub_805AFC4
sub_805AFC4: @ 0x0805AFC4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x50
	add r4, sp, #0x30
	ldr r1, _0805B0E0 @ =gUnknown_086885CE
	adds r0, r4, #0
	movs r2, #0x20
	bl memcpy
	ldr r0, _0805B0E4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldrh r2, [r5, #0x1c]
	ldrb r1, [r5, #0x1c]
	adds r7, r4, #0
	cmp r1, #0
	bne _0805AFEC
	b _0805B0F4
_0805AFEC:
	movs r0, #0xc0
	lsls r0, r0, #2
	ands r0, r2
	lsrs r4, r0, #8
	adds r0, r1, #0
	subs r0, #0x7f
	cmp r0, #0
	bge _0805B000
	movs r0, #0x7f
	subs r0, r0, r1
_0805B000:
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x10
	adds r6, r0, #0
	movs r1, #0x1e
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _0805B0C6
	ldrh r0, [r5, #0x1c]
	movs r1, #0xc0
	lsls r1, r1, #2
	ands r1, r0
	lsrs r4, r1, #8
	movs r1, #0xff
	ands r1, r0
	cmp r1, #0x80
	ble _0805B022
	adds r4, #1
_0805B022:
	movs r0, #3
	ands r4, r0
	bl sub_8053674
	add r2, sp, #0x2c
	movs r0, #0x29
	strb r0, [r2]
	mov r1, sp
	adds r1, #0x2b
	movs r0, #2
	strb r0, [r1]
	ldr r0, _0805B0E8 @ =gUiGraphics
	mov ip, r0
	ldrb r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #0xa
	ldr r0, [r0]
	adds r0, r0, r1
	str r0, [sp, #0x14]
	movs r0, #0xc0
	lsls r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, _0805B0EC @ =0x06011120
	str r0, [sp, #0xc]
	mov r1, sp
	adds r1, #0x2a
	movs r0, #9
	strb r0, [r1]
	ldrb r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	mov r1, ip
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r3, sp
	ldrb r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	mov r1, ip
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r3, #8]
	ldrb r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	mov r1, ip
	adds r1, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r3, #9]
	ldrb r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	mov r1, ip
	adds r1, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r3, #0xa]
	ldrb r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	mov r1, ip
	adds r1, #0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r3, #0xb]
	mov r0, sp
	bl sub_80528AC
_0805B0C6:
	strh r6, [r5, #0x1e]
	ldr r0, _0805B0F0 @ =gUnknown_08688570
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrb r0, [r5, #0x1c]
	lsrs r0, r0, #4
	lsls r0, r0, #1
	adds r0, r7, r0
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	b _0805B102
	.align 2, 0
_0805B0E0: .4byte gUnknown_086885CE
_0805B0E4: .4byte gCurTask
_0805B0E8: .4byte gUiGraphics
_0805B0EC: .4byte 0x06011120
_0805B0F0: .4byte gUnknown_08688570
_0805B0F4:
	ldr r0, _0805B114 @ =gUnknown_08688570
	movs r1, #0xc0
	lsls r1, r1, #2
	ands r1, r2
	lsrs r1, r1, #7
	adds r1, r1, r0
	ldrh r0, [r1]
_0805B102:
	strh r0, [r5, #0xa]
	ldr r0, _0805B118 @ =gUnknown_086885C4
	adds r1, r5, #0
	bl sub_8052F78
	add sp, #0x50
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805B114: .4byte gUnknown_08688570
_0805B118: .4byte gUnknown_086885C4

	thumb_func_start sub_805B11C
sub_805B11C: @ 0x0805B11C
	push {r4, r5, lr}
	sub sp, #0x10
	ldr r1, _0805B190 @ =gUnknown_086885EE
	mov r0, sp
	movs r2, #0xe
	bl memcpy
	ldr r0, _0805B194 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r1, [r5, #0x18]
	adds r3, r1, #1
	str r3, [r5, #0x18]
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0x26
	ble _0805B1A0
	cmp r2, #0x62
	ble _0805B14E
	adds r0, r1, #0
	subs r0, #0x3b
	str r0, [r5, #0x18]
_0805B14E:
	adds r0, r2, #0
	movs r1, #0x3c
	bl Mod
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xa
	bl Div
	add r0, sp
	ldrb r0, [r0]
	strh r0, [r5, #0xa]
	ldr r0, _0805B198 @ =gUnknown_086885FC
	adds r1, r5, #0
	bl sub_8052F78
	adds r0, r4, #0
	movs r1, #0xa
	bl Div
	mov r1, sp
	adds r1, #7
	adds r1, r1, r0
	ldrb r0, [r1]
	strh r0, [r5, #0xa]
	ldr r0, _0805B19C @ =gUnknown_08688600
	adds r1, r5, #0
	bl sub_8052F78
	b _0805B1D0
	.align 2, 0
_0805B190: .4byte gUnknown_086885EE
_0805B194: .4byte gCurTask
_0805B198: .4byte gUnknown_086885FC
_0805B19C: .4byte gUnknown_08688600
_0805B1A0:
	cmp r3, #0x1e
	bls _0805B1D0
	subs r1, #0x1d
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	subs r0, #0x24
	strh r0, [r5, #0xa]
	ldr r0, _0805B1D8 @ =gUnknown_086885FC
	adds r1, r5, #0
	bl sub_8052F78
	ldr r0, [r5, #0x18]
	subs r0, #0x1e
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	movs r0, #0xf0
	subs r0, r0, r1
	strh r0, [r5, #0xa]
	ldr r0, _0805B1DC @ =gUnknown_08688600
	adds r1, r5, #0
	bl sub_8052F78
_0805B1D0:
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805B1D8: .4byte gUnknown_086885FC
_0805B1DC: .4byte gUnknown_08688600

	thumb_func_start sub_805B1E0
sub_805B1E0: @ 0x0805B1E0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0805B268 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r6, r0
	ldr r1, _0805B26C @ =0x030000C4
	adds r0, r6, r1
	ldrh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #2
	ands r0, r1
	lsrs r0, r0, #8
	mov sb, r0
	ldr r2, _0805B270 @ =0x030000C0
	adds r1, r6, r2
	ldr r0, [r1]
	mov r8, r0
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x11
	bls _0805B29C
	mov r5, r8
	subs r5, #0x10
	lsls r0, r5, #7
	movs r1, #0xb
	bl Div
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	subs r1, r1, r0
	ldr r2, _0805B274 @ =0x03000046
	adds r0, r6, r2
	strh r1, [r0]
	lsls r4, r5, #5
	adds r0, r4, #0
	movs r1, #0xb
	bl Div
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r1, r2, #0
	subs r1, r1, r0
	ldr r2, _0805B278 @ =0x03000076
	adds r0, r6, r2
	strh r1, [r0]
	adds r0, r4, #0
	movs r1, #0xb
	bl Div
	subs r0, #0x20
	strh r0, [r7, #0x16]
	ldr r0, _0805B27C @ =0x03000048
	adds r1, r6, r0
	movs r0, #0x6e
	strh r0, [r1]
	cmp r5, #4
	bgt _0805B288
	ldr r1, _0805B280 @ =gWinRegs
	ldr r0, _0805B284 @ =0x0000F0F0
	strh r0, [r1, #2]
	b _0805B29C
	.align 2, 0
_0805B268: .4byte gCurTask
_0805B26C: .4byte 0x030000C4
_0805B270: .4byte 0x030000C0
_0805B274: .4byte 0x03000046
_0805B278: .4byte 0x03000076
_0805B27C: .4byte 0x03000048
_0805B280: .4byte gWinRegs
_0805B284: .4byte 0x0000F0F0
_0805B288:
	ldr r2, _0805B314 @ =gWinRegs
	mov r0, r8
	subs r0, #0x15
	lsls r1, r0, #2
	adds r1, r1, r0
	movs r0, #0xf0
	subs r0, r0, r1
	lsls r0, r0, #8
	adds r0, #0xf0
	strh r0, [r2, #2]
_0805B29C:
	adds r1, r7, #0
	adds r1, #0xc0
	ldr r0, [r1]
	cmp r0, #0x1c
	bls _0805B2B8
	movs r0, #0
	str r0, [r1]
	ldr r1, _0805B314 @ =gWinRegs
	ldr r0, _0805B318 @ =0x0000C8F0
	strh r0, [r1, #2]
	ldr r0, _0805B31C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0805B320 @ =sub_805B324
	str r0, [r1, #8]
_0805B2B8:
	movs r2, #3
	mov r0, sb
	lsls r1, r0, #1
	adds r0, r7, #0
	adds r0, #0x50
	strb r1, [r0]
	mov r0, sb
	adds r0, #1
	ands r0, r2
	lsls r0, r0, #1
	adds r1, r7, #0
	adds r1, #0x80
	strb r0, [r1]
	mov r0, sb
	adds r0, #3
	ands r0, r2
	lsls r0, r0, #1
	subs r1, #0x60
	strb r0, [r1]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	adds r4, r7, #0
	adds r4, #0x30
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r4, #0x30
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805B314: .4byte gWinRegs
_0805B318: .4byte 0x0000C8F0
_0805B31C: .4byte gCurTask
_0805B320: .4byte sub_805B324

	thumb_func_start sub_805B324
sub_805B324: @ 0x0805B324
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r1, _0805B37C @ =gUnknown_08688602
	mov r0, sp
	movs r2, #6
	bl memcpy
	ldr r0, _0805B380 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	ldr r1, _0805B384 @ =0x030000C4
	adds r0, r2, r1
	ldrh r1, [r0]
	ldrb r0, [r0]
	lsrs r4, r0, #4
	movs r0, #0xc0
	lsls r0, r0, #2
	ands r0, r1
	lsrs r0, r0, #8
	mov sl, r0
	ldr r1, _0805B388 @ =0x030000C6
	adds r0, r2, r1
	ldrb r1, [r0]
	cmp r1, #0
	bne _0805B398
	ldr r0, _0805B38C @ =0x0000FFF8
	strh r0, [r5, #0x16]
	ldr r0, _0805B390 @ =0x03000046
	adds r1, r2, r0
	movs r0, #0x78
	strh r0, [r1]
	ldr r0, _0805B394 @ =0x03000076
	adds r1, r2, r0
	movs r0, #0xf8
	strh r0, [r1]
	movs r6, #0
	b _0805B434
	.align 2, 0
_0805B37C: .4byte gUnknown_08688602
_0805B380: .4byte gCurTask
_0805B384: .4byte 0x030000C4
_0805B388: .4byte 0x030000C6
_0805B38C: .4byte 0x0000FFF8
_0805B390: .4byte 0x03000046
_0805B394: .4byte 0x03000076
_0805B398:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805B3A6
	movs r3, #1
	movs r2, #0xff
	b _0805B3B6
_0805B3A6:
	movs r3, #0
	movs r2, #1
	movs r1, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
_0805B3B6:
	lsls r0, r4, #0x10
	asrs r7, r0, #0x10
	lsls r6, r2, #0x18
	cmp r7, #4
	bne _0805B416
	lsls r2, r3, #1
	adds r2, r2, r3
	mov r1, sp
	adds r0, r1, r2
	ldrb r0, [r0]
	add r0, sl
	movs r3, #3
	ands r0, r3
	lsls r0, r0, #1
	adds r1, r5, #0
	adds r1, #0x50
	strb r0, [r1]
	mov r0, sp
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	add r0, sl
	ands r0, r3
	lsls r0, r0, #1
	adds r1, #0x30
	strb r0, [r1]
	mov r0, sp
	adds r0, #2
	adds r0, r0, r2
	ldrb r0, [r0]
	add r0, sl
	ands r0, r3
	lsls r0, r0, #1
	subs r1, #0x60
	strb r0, [r1]
	asrs r1, r6, #0x11
	ldrh r0, [r5, #0x16]
	subs r0, r0, r1
	strh r0, [r5, #0x16]
	adds r2, r5, #0
	adds r2, #0x46
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r2]
	adds r2, #0x30
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r2]
_0805B416:
	cmp r7, #8
	bgt _0805B434
	asrs r1, r6, #0x14
	ldrh r0, [r5, #0x16]
	adds r0, r0, r1
	strh r0, [r5, #0x16]
	adds r2, r5, #0
	adds r2, #0x46
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	adds r2, #0x30
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
_0805B434:
	asrs r1, r6, #0x18
	cmp r1, #1
	bne _0805B448
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	movs r2, #0
	cmp r0, #3
	bgt _0805B45C
	movs r2, #1
	b _0805B45C
_0805B448:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0805B45A
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	movs r2, #1
	cmp r0, #3
	bgt _0805B45C
_0805B45A:
	movs r2, #0
_0805B45C:
	adds r7, r5, #0
	adds r7, #0xc8
	ldrb r1, [r7]
	adds r6, r2, #0
	subs r0, r6, #1
	add r0, sl
	movs r2, #3
	mov sb, r2
	ands r0, r2
	asrs r1, r0
	movs r0, #1
	mov r8, r0
	ands r1, r0
	cmp r1, #0
	beq _0805B490
	ldrh r0, [r5, #0x16]
	adds r1, r5, #0
	adds r1, #0xa6
	strh r0, [r1]
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0xa8
	strh r1, [r0]
	subs r0, #0x18
	bl DisplaySprite
_0805B490:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldrb r1, [r7]
	mov r2, sl
	adds r0, r2, r6
	mov r2, sb
	ands r0, r2
	asrs r1, r0
	mov r0, r8
	ands r1, r0
	cmp r1, #0
	beq _0805B4CC
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0xa6
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x48
	ldrh r1, [r0]
	adds r0, #0x60
	strh r1, [r0]
	subs r0, #0x18
	bl DisplaySprite
_0805B4CC:
	adds r4, r5, #0
	adds r4, #0x30
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldrb r1, [r7]
	adds r0, r6, #1
	add r0, sl
	mov r2, sb
	ands r0, r2
	asrs r1, r0
	mov r0, r8
	ands r1, r0
	cmp r1, #0
	beq _0805B50C
	adds r0, r5, #0
	adds r0, #0x76
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0xa6
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x78
	ldrh r1, [r0]
	adds r0, #0x30
	strh r1, [r0]
	subs r0, #0x18
	bl DisplaySprite
_0805B50C:
	adds r4, r5, #0
	adds r4, #0x60
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_805B52C
sub_805B52C: @ 0x0805B52C
	push {r4, r5, lr}
	sub sp, #0x40
	ldr r1, _0805B564 @ =gUnknown_08688608
	mov r0, sp
	movs r2, #0x10
	bl memcpy
	ldr r0, _0805B568 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, [r5, #0x18]
	adds r0, #1
	str r0, [r5, #0x18]
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0x21
	ble _0805B570
	movs r0, #0
	str r0, [r5, #0x18]
	movs r0, #0x70
	strh r0, [r5, #0xc]
	ldr r0, _0805B56C @ =sub_805B694
	str r0, [r2, #8]
	b _0805B666
	.align 2, 0
_0805B564: .4byte gUnknown_08688608
_0805B568: .4byte gCurTask
_0805B56C: .4byte sub_805B694
_0805B570:
	cmp r4, #0xd
	ble _0805B59C
	movs r0, #0x67
	muls r0, r4, r0
	movs r1, #0x6e
	bl Div
	ldr r2, _0805B598 @ =gSineTable
	subs r0, #0xa
	lsls r1, r0, #4
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r0, #0x40
	strh r0, [r5, #0xc]
	b _0805B666
	.align 2, 0
_0805B598: .4byte gSineTable
_0805B59C:
	cmp r4, #0xa
	ble _0805B5A6
	movs r0, #0
	strh r0, [r5, #0xa]
	b _0805B666
_0805B5A6:
	lsls r0, r4, #8
	movs r1, #0xa
	bl Div
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	subs r1, r1, r0
	strh r1, [r5, #0xa]
	cmp r4, #1
	bne _0805B666
	ldrh r0, [r5, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #2
	ands r3, r0
	lsrs r3, r3, #8
	add r0, sp, #0x10
	add r4, sp, #0x3c
	movs r1, #0x27
	strb r1, [r4]
	mov r2, sp
	adds r2, #0x3b
	movs r1, #0
	strb r1, [r2]
	ldr r1, _0805B68C @ =gUiGraphics
	mov ip, r1
	ldrb r2, [r4]
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	mov r2, ip
	adds r2, #4
	adds r1, r1, r2
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #1
	ldr r1, [r1]
	adds r1, r1, r2
	str r1, [r0, #0x20]
	ldr r1, _0805B690 @ =0x06010020
	str r1, [r0, #0xc]
	movs r1, #8
	str r1, [r0, #0x24]
	add r2, sp, #0x38
	movs r1, #0xf
	strb r1, [r2]
	adds r2, #2
	movs r1, #0xc
	strb r1, [r2]
	ldrb r2, [r4]
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	mov r2, ip
	adds r2, #8
	adds r1, r1, r2
	ldr r1, [r1]
	str r1, [r0, #4]
	ldrb r2, [r4]
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	mov r2, ip
	adds r2, #0xc
	adds r1, r1, r2
	ldr r1, [r1]
	strb r1, [r0, #8]
	ldrb r2, [r4]
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	mov r2, ip
	adds r2, #0x10
	adds r1, r1, r2
	ldr r1, [r1]
	strb r1, [r0, #9]
	ldrb r2, [r4]
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	mov r2, ip
	adds r2, #0x14
	adds r1, r1, r2
	ldr r1, [r1]
	strb r1, [r0, #0xa]
	ldrb r2, [r4]
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	mov r2, ip
	adds r2, #0x18
	adds r1, r1, r2
	ldr r1, [r1]
	strb r1, [r0, #0xb]
	bl sub_80528AC
_0805B666:
	mov r0, sp
	adds r1, r5, #0
	bl sub_8052F78
	ldrh r0, [r5, #0xc]
	adds r0, #0x20
	strh r0, [r5, #0xc]
	add r0, sp, #8
	adds r1, r5, #0
	bl sub_8052F78
	ldrh r0, [r5, #0xc]
	subs r0, #0x20
	strh r0, [r5, #0xc]
	add sp, #0x40
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805B68C: .4byte gUiGraphics
_0805B690: .4byte 0x06010020

	thumb_func_start sub_805B694
sub_805B694: @ 0x0805B694
	push {r4, r5, r6, lr}
	sub sp, #0x40
	add r4, sp, #0x30
	ldr r1, _0805B7A0 @ =gUnknown_08688608
	adds r0, r4, #0
	movs r2, #0x10
	bl memcpy
	ldr r0, _0805B7A4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	movs r0, #0
	strh r0, [r5, #0xa]
	ldrb r1, [r5, #0x1c]
	adds r6, r4, #0
	cmp r1, #0
	beq _0805B7B0
	adds r0, r1, #0
	subs r0, #0x7f
	cmp r0, #0
	bge _0805B6C8
	movs r0, #0x7f
	subs r0, r0, r1
_0805B6C8:
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x10
	adds r4, r0, #0
	movs r0, #0xa8
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	strh r0, [r5, #0xc]
	movs r1, #0x1e
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _0805B79A
	ldrh r0, [r5, #0x1c]
	movs r1, #0xc0
	lsls r1, r1, #2
	ands r1, r0
	lsrs r3, r1, #8
	movs r1, #0xff
	ands r1, r0
	cmp r1, #0x80
	ble _0805B6F4
	adds r3, #1
_0805B6F4:
	movs r0, #3
	ands r3, r0
	add r2, sp, #0x2c
	movs r0, #0x27
	strb r0, [r2]
	mov r1, sp
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0805B7A8 @ =gUiGraphics
	mov ip, r0
	ldrb r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	mov r1, ip
	adds r1, #4
	adds r0, r0, r1
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #1
	ldr r0, [r0]
	adds r0, r0, r1
	str r0, [sp, #0x20]
	ldr r0, _0805B7AC @ =0x06010020
	str r0, [sp, #0xc]
	movs r0, #8
	str r0, [sp, #0x24]
	add r1, sp, #0x28
	movs r0, #0xf
	strb r0, [r1]
	adds r1, #2
	movs r0, #0xc
	strb r0, [r1]
	ldrb r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	mov r1, ip
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r3, sp
	ldrb r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	mov r1, ip
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r3, #8]
	ldrb r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	mov r1, ip
	adds r1, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r3, #9]
	ldrb r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	mov r1, ip
	adds r1, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r3, #0xa]
	ldrb r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	mov r1, ip
	adds r1, #0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r3, #0xb]
	mov r0, sp
	bl sub_80528AC
_0805B79A:
	strh r4, [r5, #0x1e]
	b _0805B7B4
	.align 2, 0
_0805B7A0: .4byte gUnknown_08688608
_0805B7A4: .4byte gCurTask
_0805B7A8: .4byte gUiGraphics
_0805B7AC: .4byte 0x06010020
_0805B7B0:
	movs r0, #0x70
	strh r0, [r5, #0xc]
_0805B7B4:
	movs r1, #0xc
	ldrsh r0, [r5, r1]
	cmp r0, #0x6f
	bgt _0805B7C0
	movs r0, #0x70
	strh r0, [r5, #0xc]
_0805B7C0:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_8052F78
	ldrh r0, [r5, #0xc]
	adds r0, #0x20
	strh r0, [r5, #0xc]
	add r0, sp, #0x38
	adds r1, r5, #0
	bl sub_8052F78
	ldrh r0, [r5, #0xc]
	subs r0, #0x20
	strh r0, [r5, #0xc]
	add sp, #0x40
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_805B7E4
sub_805B7E4: @ 0x0805B7E4
	push {r4, r5, lr}
	ldr r0, _0805B81C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r4, r0
	ldrh r1, [r3, #0x28]
	movs r0, #0xc0
	lsls r0, r0, #2
	ands r0, r1
	lsrs r1, r0, #8
	ldr r0, _0805B820 @ =gPressedKeys
	ldrh r2, [r0]
	adds r5, r0, #0
	cmp r2, #0
	beq _0805B850
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _0805B828
	cmp r1, #0
	bne _0805B828
	ldr r2, _0805B824 @ =0x03000039
	adds r0, r4, r2
	strb r1, [r0]
	b _0805B850
	.align 2, 0
_0805B81C: .4byte gCurTask
_0805B820: .4byte gPressedKeys
_0805B824: .4byte 0x03000039
_0805B828:
	adds r3, #0x39
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _0805B850
	ldr r1, _0805B848 @ =gUnknown_08688618
	adds r2, r0, #0
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r1, [r5]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _0805B84C
	adds r0, r2, #1
	b _0805B84E
	.align 2, 0
_0805B848: .4byte gUnknown_08688618
_0805B84C:
	movs r0, #0xff
_0805B84E:
	strb r0, [r3]
_0805B850:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_805B858
sub_805B858: @ 0x0805B858
	ldr r0, _0805B874 @ =gCurTask
	ldr r2, [r0]
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0, #0x24]
	ldr r0, _0805B878 @ =gBldRegs
	strh r1, [r0, #4]
	ldr r0, _0805B87C @ =sub_805AC00
	str r0, [r2, #8]
	bx lr
	.align 2, 0
_0805B874: .4byte gCurTask
_0805B878: .4byte gBldRegs
_0805B87C: .4byte sub_805AC00

	thumb_func_start sub_805B880
sub_805B880: @ 0x0805B880
	push {r4, lr}
	ldr r0, _0805B8B4 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x18]
	adds r0, #1
	str r0, [r4, #0x18]
	ldr r0, _0805B8B8 @ =gUnknown_086885C4
	adds r1, r4, #0
	bl sub_805321C
	ldr r2, _0805B8BC @ =gUnknown_08688570
	ldrh r1, [r4, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #2
	ands r0, r1
	lsrs r0, r0, #7
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r4, #0xa]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805B8B4: .4byte gCurTask
_0805B8B8: .4byte gUnknown_086885C4
_0805B8BC: .4byte gUnknown_08688570

	thumb_func_start sub_805B8C0
sub_805B8C0: @ 0x0805B8C0
	push {r4, r5, lr}
	ldr r0, _0805B920 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, #0xc0
	adds r2, r5, r0
	ldr r0, [r2]
	cmp r0, #4
	bhi _0805B8E8
	ldrh r0, [r4, #0x16]
	subs r0, #0x14
	strh r0, [r4, #0x16]
	ldr r0, _0805B924 @ =0x03000076
	adds r1, r5, r0
	ldrh r0, [r1]
	adds r0, #0x14
	strh r0, [r1]
_0805B8E8:
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, _0805B928 @ =0x03000030
	adds r4, r5, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, _0805B92C @ =0x03000060
	adds r4, r5, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805B920: .4byte gCurTask
_0805B924: .4byte 0x03000076
_0805B928: .4byte 0x03000030
_0805B92C: .4byte 0x03000060

	thumb_func_start sub_805B930
sub_805B930: @ 0x0805B930
	push {r4, lr}
	sub sp, #0x10
	ldr r1, _0805B978 @ =gUnknown_08688608
	mov r0, sp
	movs r2, #0x10
	bl memcpy
	ldr r0, _0805B97C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x18]
	adds r0, #1
	str r0, [r4, #0x18]
	movs r0, #0
	strh r0, [r4, #0xa]
	mov r0, sp
	adds r1, r4, #0
	bl sub_805321C
	ldrh r0, [r4, #0xc]
	adds r0, #0x20
	strh r0, [r4, #0xc]
	add r0, sp, #8
	adds r1, r4, #0
	bl sub_805321C
	ldrh r0, [r4, #0xc]
	subs r0, #0x20
	strh r0, [r4, #0xc]
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805B978: .4byte gUnknown_08688608
_0805B97C: .4byte gCurTask

    thumb_func_start Task_805B980
Task_805B980: @ 0x0805B980
    bx lr
    .align 2, 0

	thumb_func_start Task_805B984
Task_805B984: @ 0x0805B984
	push {r4, lr}
	sub sp, #4
	ldr r1, _0805B9D4 @ =gUnknown_08688578
	mov r0, sp
	movs r2, #4
	bl memcpy
	ldr r0, _0805B9D8 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r3, r4
	ldrh r0, [r4, #0x32]
	movs r1, #0xff
	ands r1, r0
	lsrs r1, r1, #6
	ldr r0, _0805B9DC @ =0x03000021
	adds r2, r3, r0
	movs r0, #0xff
	strb r0, [r2]
	ldr r0, _0805B9E0 @ =0x000002D3
	strh r0, [r4, #0xa]
	mov r2, sp
	adds r0, r2, r1
	ldrb r0, [r0]
	ldr r1, _0805B9E4 @ =0x03000020
	adds r3, r3, r1
	strb r0, [r3]
	adds r0, r4, #0
	bl sa2__sub_80036E0
	adds r0, r4, #0
	bl sa2__sub_8003914
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805B9D4: .4byte gUnknown_08688578
_0805B9D8: .4byte gCurTask
_0805B9DC: .4byte 0x03000021
_0805B9E0: .4byte 0x000002D3
_0805B9E4: .4byte 0x03000020

	thumb_func_start sub_805B9E8
sub_805B9E8: @ 0x0805B9E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r6, #0
	ldr r0, _0805BB00 @ =sub_805BC00
	ldr r2, _0805BB04 @ =0x00002220
	ldr r1, _0805BB08 @ =sub_805BC60
	str r1, [sp]
	movs r1, #0x70
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #4]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	str r6, [r5, #0x6c]
	strh r6, [r5]
	movs r0, #1
	strh r0, [r5, #2]
	strh r0, [r5, #4]
	strh r6, [r5, #6]
	movs r0, #0x40
	strh r0, [r5, #8]
	movs r0, #8
	strb r0, [r5, #0xa]
	ldr r1, _0805BB0C @ =0x0300000C
	adds r7, r4, r1
	movs r0, #0xe
	bl VramMalloc
	str r0, [r7, #4]
	strh r6, [r7, #8]
	str r6, [r7, #0x10]
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r7, #0x16]
	movs r1, #0x3c
	strh r1, [r7, #0x18]
	movs r0, #3
	mov sb, r0
	mov r1, sb
	strh r1, [r7, #0x1a]
	strh r6, [r7, #0x1c]
	ldr r0, _0805BB10 @ =0x0300002D
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _0805BB14 @ =0x0300002E
	adds r0, r4, r1
	movs r1, #0x10
	mov r8, r1
	mov r1, r8
	strb r1, [r0]
	ldr r1, _0805BB18 @ =0x03000031
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0805BB1C @ =0x000002CB
	mov sl, r0
	mov r1, sl
	strh r1, [r7, #0xa]
	ldr r0, _0805BB20 @ =0x0300002C
	adds r1, r4, r0
	movs r0, #4
	strb r0, [r1]
	ldr r1, _0805BB24 @ =0x0300003C
	adds r7, r4, r1
	movs r0, #0x40
	bl VramMalloc
	str r0, [r7, #4]
	strh r6, [r7, #8]
	str r6, [r7, #0x10]
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r7, #0x16]
	movs r1, #0x3c
	strh r1, [r7, #0x18]
	mov r0, sb
	strh r0, [r7, #0x1a]
	strh r6, [r7, #0x1c]
	ldr r0, _0805BB28 @ =0x0300005D
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _0805BB2C @ =0x0300005E
	adds r0, r4, r1
	mov r1, r8
	strb r1, [r0]
	ldr r1, _0805BB30 @ =0x03000061
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	mov r0, sl
	strh r0, [r7, #0xa]
	ldr r1, _0805BB34 @ =0x0300005C
	adds r4, r4, r1
	movs r0, #1
	strb r0, [r4]
	ldr r2, _0805BB38 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0805BB3C @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	adds r0, r5, #0
	bl sub_80543A4
	ldr r0, _0805BB40 @ =sub_805BB48
	movs r2, #0x88
	lsls r2, r2, #6
	ldr r1, _0805BB44 @ =0x0805BC91
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r6, r0, #0
	ldrh r0, [r6, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0, #4]
	ldr r1, [sp, #4]
	str r1, [r0]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805BB00: .4byte sub_805BC00
_0805BB04: .4byte 0x00002220
_0805BB08: .4byte sub_805BC60
_0805BB0C: .4byte 0x0300000C
_0805BB10: .4byte 0x0300002D
_0805BB14: .4byte 0x0300002E
_0805BB18: .4byte 0x03000031
_0805BB1C: .4byte 0x000002CB
_0805BB20: .4byte 0x0300002C
_0805BB24: .4byte 0x0300003C
_0805BB28: .4byte 0x0300005D
_0805BB2C: .4byte 0x0300005E
_0805BB30: .4byte 0x03000061
_0805BB34: .4byte 0x0300005C
_0805BB38: .4byte gDispCnt
_0805BB3C: .4byte 0x00001FFF
_0805BB40: .4byte sub_805BB48
_0805BB44: .4byte 0x0805BC91

	thumb_func_start sub_805BB48
sub_805BB48: @ 0x0805BB48
	push {r4, r5, lr}
	ldr r0, _0805BBD8 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	adds r3, r0, r1
	movs r1, #4
	ldrsh r0, [r4, r1]
	str r0, [r3, #0x6c]
	movs r5, #4
	ldrsh r0, [r4, r5]
	cmp r0, #0xd2
	ble _0805BB8A
	ldr r0, _0805BBDC @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xa
	bne _0805BB84
	ldr r2, _0805BBE0 @ =gCamera
	ldrh r1, [r2, #0x26]
	movs r5, #0x80
	lsls r5, r5, #6
	adds r0, r5, #0
	orrs r0, r1
	strh r0, [r2, #0x26]
_0805BB84:
	adds r0, r3, #0
	bl sub_805423C
_0805BB8A:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	movs r1, #0xa5
	lsls r1, r1, #0x11
	cmp r0, r1
	ble _0805BBD0
	ldr r0, [r4]
	bl TaskDestroy
	ldr r0, _0805BBD8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	ldr r1, _0805BBE4 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0805BBE8 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0805BBEC @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0805BBF0 @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0805BBF4 @ =gVramGraphicsCopyCursor
	ldr r0, _0805BBF8 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0805BBFC @ =gRingCount
	movs r0, #0
	strh r0, [r1]
	bl CreateGameStage
_0805BBD0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805BBD8: .4byte gCurTask
_0805BBDC: .4byte gCurrentLevel
_0805BBE0: .4byte gCamera
_0805BBE4: .4byte 0x0000FFFF
_0805BBE8: .4byte gBackgroundsCopyQueueCursor
_0805BBEC: .4byte gBackgroundsCopyQueueIndex
_0805BBF0: .4byte sa2__gUnknown_03005390
_0805BBF4: .4byte gVramGraphicsCopyCursor
_0805BBF8: .4byte gVramGraphicsCopyQueueIndex
_0805BBFC: .4byte gRingCount

	thumb_func_start sub_805BC00
sub_805BC00: @ 0x0805BC00
	push {r4, r5, lr}
	ldr r0, _0805BC1C @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	ldr r0, [r5, #0x6c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x78
	ble _0805BC20
	movs r1, #0x78
	b _0805BC30
	.align 2, 0
_0805BC1C: .4byte gCurTask
_0805BC20:
	cmp r0, #0x1e
	ble _0805BC38
	subs r0, #0x1e
	lsls r0, r0, #1
	movs r3, #0x96
	lsls r3, r3, #1
	adds r1, r3, #0
	subs r1, r1, r0
_0805BC30:
	strh r1, [r5, #0x22]
	ldr r3, _0805BC5C @ =0x03000052
	adds r0, r2, r3
	strh r1, [r0]
_0805BC38:
	adds r4, r5, #0
	adds r4, #0xc
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r4, #0x30
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805BC5C: .4byte 0x03000052

	thumb_func_start sub_805BC60
sub_805BC60: @ 0x0805BC60
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x10]
	bl VramFree
	ldr r0, [r4, #0x40]
	bl VramFree
	ldr r2, _0805BC88 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0805BC8C @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805BC88: .4byte gDispCnt
_0805BC8C: .4byte 0x00001FFF

    thumb_func_start sub_805BC90
sub_805BC90: @ 0x0805BC90
    bx lr
    .align 2, 0

	thumb_func_start sub_805BC94
sub_805BC94: @ 0x0805BC94
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x58
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x30]
	movs r1, #0x64
	bl Div
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805BCB8
	movs r0, #3
	str r0, [sp, #0x38]
	b _0805BCCE
_0805BCB8:
	ldr r0, [sp, #0x30]
	movs r1, #0xa
	bl Div
	lsls r0, r0, #0x18
	movs r1, #1
	str r1, [sp, #0x38]
	cmp r0, #0
	beq _0805BCCE
	movs r2, #2
	str r2, [sp, #0x38]
_0805BCCE:
	mov r3, sp
	adds r3, #0x2c
	str r3, [sp, #0x3c]
	movs r0, #0x32
	strb r0, [r3]
	mov r0, sp
	adds r0, #0x2b
	str r0, [sp, #0x40]
	movs r0, #4
	ldr r1, [sp, #0x40]
	strb r0, [r1]
	ldr r7, _0805BE00 @ =gUiGraphics
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0xa0
	lsls r0, r0, #4
	str r0, [sp, #0x18]
	movs r2, #0x20
	str r2, [sp, #0x24]
	add r3, sp, #0x28
	mov sl, r3
	movs r0, #6
	strb r0, [r3]
	ldr r0, _0805BE04 @ =0x06015DA0
	str r0, [sp, #0xc]
	mov r5, sp
	adds r5, #0x2a
	movs r1, #0xd
	strb r1, [r5]
	ldr r2, [sp, #0x3c]
	ldrb r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldr r3, [sp, #0x3c]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r0, #0x10
	ldr r1, [sp, #0x3c]
	strb r0, [r1]
	movs r0, #8
	ldr r2, [sp, #0x40]
	strb r0, [r2]
	movs r3, #0xe0
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r0, [r0]
	str r0, [sp, #0x14]
	movs r1, #0xe2
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x18]
	movs r2, #0x20
	str r2, [sp, #0x24]
	movs r0, #6
	mov r3, sl
	strb r0, [r3]
	ldr r0, _0805BE08 @ =0x060177A0
	str r0, [sp, #0xc]
	movs r1, #0xd
	strb r1, [r5]
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r1, sp
	movs r3, #0xe6
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r0, [r0]
	strb r0, [r1, #8]
	adds r2, #8
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #9]
	adds r3, #8
	adds r0, r7, r3
	ldr r0, [r0]
	strb r0, [r1, #0xa]
	adds r2, #8
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	ldr r3, [sp, #0x38]
	cmp r3, #1
	bne _0805BE0C
	movs r0, #0x2f
	b _0805BE1C
	.align 2, 0
_0805BE00: .4byte gUiGraphics
_0805BE04: .4byte 0x06015DA0
_0805BE08: .4byte 0x060177A0
_0805BE0C:
	ldr r2, [sp, #0x38]
	cmp r2, #2
	bne _0805BE1A
	movs r0, #0x30
	add r3, sp, #0x2c
	strb r0, [r3]
	b _0805BE20
_0805BE1A:
	movs r0, #0x31
_0805BE1C:
	add r1, sp, #0x2c
	strb r0, [r1]
_0805BE20:
	mov r2, sp
	adds r2, #0x2b
	str r2, [sp, #0x44]
	movs r0, #2
	strb r0, [r2]
	ldr r7, _0805C160 @ =gUiGraphics
	add r6, sp, #0x2c
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0xe0
	lsls r0, r0, #4
	str r0, [sp, #0x18]
	movs r3, #0x20
	str r3, [sp, #0x24]
	mov r0, sp
	adds r0, #0x28
	str r0, [sp, #0x48]
	movs r1, #6
	strb r1, [r0]
	ldr r0, _0805C164 @ =0x060167A0
	str r0, [sp, #0xc]
	subs r2, #1
	str r2, [sp, #0x4c]
	movs r3, #0xd
	strb r3, [r2]
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	bl sub_80528AC
	ldr r0, [sp, #0x38]
	cmp r0, #3
	beq _0805BED6
	b _0805C19C
_0805BED6:
	movs r1, #1
	str r1, [sp, #0x34]
	ldr r0, [sp, #0x30]
	movs r1, #0x64
	bl Div
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, [sp, #0x30]
	movs r1, #0x64
	bl Mod
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x30]
	cmp r5, #0
	beq _0805BFB2
	movs r2, #0
	str r2, [sp, #0x34]
	movs r3, #0x20
	strb r3, [r6]
	add r0, sp, #0x38
	ldrb r1, [r0]
	ldr r0, [sp, #0x44]
	strb r1, [r0]
	lsls r4, r5, #7
	ldr r1, _0805C168 @ =gUiGraphics + ((32 * 0x1C) + 0)
	ldr r0, [r1]
	adds r0, r0, r4
	str r0, [sp, #0x14]
	ldr r2, _0805C16C @ =gUiGraphics + ((32 * 0x1C) + 4)
	ldr r0, [r2]
	str r0, [sp, #0x20]
	ldr r0, _0805C170 @ =0x060169E0
	str r0, [sp, #0xc]
	movs r3, #0x40
	str r3, [sp, #0x18]
	movs r0, #0x20
	str r0, [sp, #0x24]
	movs r2, #6
	ldr r1, [sp, #0x48]
	strb r2, [r1]
	movs r0, #0xd
	ldr r3, [sp, #0x4c]
	strb r0, [r3]
	ldr r1, _0805C174 @ =gUiGraphics + ((32 * 0x1C) + 8)
	ldr r0, [r1]
	str r0, [sp, #4]
	mov r1, sp
	ldr r2, _0805C178 @ =gUiGraphics + ((32 * 0x1C) + 0xC)
	ldr r0, [r2]
	strb r0, [r1, #8]
	ldr r3, _0805C17C @ =gUiGraphics + ((32 * 0x1C) + 0x10)
	ldr r0, [r3]
	strb r0, [r1, #9]
	movs r0, #0xe5
	lsls r0, r0, #2
	adds r5, r7, r0
	ldr r0, [r5]
	strb r0, [r1, #0xa]
	ldr r2, _0805C180 @ =gUiGraphics + ((32 * 0x1C) + 0x18)
	ldr r0, [r2]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r3, #0x20
	strb r3, [r6]
	add r0, sp, #0x38
	ldrb r1, [r0]
	ldr r0, [sp, #0x44]
	strb r1, [r0]
	ldr r1, _0805C168 @ =gUiGraphics + ((32 * 0x1C) + 0)
	ldr r0, [r1]
	adds r0, r0, r4
	adds r0, #0x40
	str r0, [sp, #0x14]
	ldr r2, _0805C16C @ =gUiGraphics + ((32 * 0x1C) + 4)
	ldr r0, [r2]
	str r0, [sp, #0x20]
	ldr r0, _0805C184 @ =0x06016A60
	str r0, [sp, #0xc]
	movs r3, #0x40
	str r3, [sp, #0x18]
	movs r0, #0x20
	str r0, [sp, #0x24]
	movs r2, #6
	ldr r1, [sp, #0x48]
	strb r2, [r1]
	movs r0, #0xd
	ldr r3, [sp, #0x4c]
	strb r0, [r3]
	ldr r1, _0805C174 @ =gUiGraphics + ((32 * 0x1C) + 8)
	ldr r0, [r1]
	str r0, [sp, #4]
	mov r1, sp
	ldr r2, _0805C178 @ =gUiGraphics + ((32 * 0x1C) + 0xC)
	ldr r0, [r2]
	strb r0, [r1, #8]
	ldr r3, _0805C17C @ =gUiGraphics + ((32 * 0x1C) + 0x10)
	ldr r0, [r3]
	strb r0, [r1, #9]
	ldr r0, [r5]
	strb r0, [r1, #0xa]
	ldr r2, _0805C180 @ =gUiGraphics + ((32 * 0x1C) + 0x18)
	ldr r0, [r2]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
_0805BFB2:
	ldr r0, [sp, #0x30]
	movs r1, #0xa
	bl Div
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, [sp, #0x30]
	movs r1, #0xa
	bl Mod
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x30]
	cmp r5, #0
	bne _0805BFD6
	ldr r3, [sp, #0x34]
	cmp r3, #0
	bne _0805C094
_0805BFD6:
	movs r0, #0
	str r0, [sp, #0x34]
	movs r1, #0x20
	strb r1, [r6]
	add r2, sp, #0x38
	ldrb r3, [r2]
	ldr r2, [sp, #0x44]
	strb r3, [r2]
	lsls r5, r5, #7
	mov sb, r5
	ldr r3, _0805C168 @ =gUiGraphics + ((32 * 0x1C) + 0)
	ldr r0, [r3]
	add r0, sb
	str r0, [sp, #0x14]
	ldr r1, _0805C16C @ =gUiGraphics + ((32 * 0x1C) + 4)
	ldr r0, [r1]
	str r0, [sp, #0x20]
	ldr r0, _0805C188 @ =0x06016BA0
	str r0, [sp, #0xc]
	movs r2, #0x40
	str r2, [sp, #0x18]
	movs r3, #0x20
	str r3, [sp, #0x24]
	movs r1, #6
	ldr r0, [sp, #0x48]
	strb r1, [r0]
	movs r3, #0xd
	ldr r2, [sp, #0x4c]
	strb r3, [r2]
	ldr r1, _0805C174 @ =gUiGraphics + ((32 * 0x1C) + 8)
	ldr r0, [r1]
	str r0, [sp, #4]
	mov r1, sp
	ldr r2, _0805C178 @ =gUiGraphics + ((32 * 0x1C) + 0xC)
	ldr r0, [r2]
	strb r0, [r1, #8]
	ldr r3, _0805C17C @ =gUiGraphics + ((32 * 0x1C) + 0x10)
	ldr r0, [r3]
	strb r0, [r1, #9]
	movs r0, #0xe5
	lsls r0, r0, #2
	adds r5, r7, r0
	ldr r0, [r5]
	strb r0, [r1, #0xa]
	movs r2, #0xe6
	lsls r2, r2, #2
	adds r7, r7, r2
	ldr r0, [r7]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r3, #0x20
	strb r3, [r6]
	add r0, sp, #0x38
	ldrb r1, [r0]
	ldr r0, [sp, #0x44]
	strb r1, [r0]
	ldr r1, _0805C168 @ =gUiGraphics + ((32 * 0x1C) + 0)
	ldr r0, [r1]
	add r0, sb
	adds r0, #0x40
	str r0, [sp, #0x14]
	ldr r2, _0805C16C @ =gUiGraphics + ((32 * 0x1C) + 4)
	ldr r0, [r2]
	str r0, [sp, #0x20]
	ldr r0, _0805C18C @ =0x06016C20
	str r0, [sp, #0xc]
	movs r3, #0x40
	str r3, [sp, #0x18]
	movs r0, #0x20
	str r0, [sp, #0x24]
	movs r2, #6
	ldr r1, [sp, #0x48]
	strb r2, [r1]
	movs r0, #0xd
	ldr r3, [sp, #0x4c]
	strb r0, [r3]
	ldr r1, _0805C174 @ =gUiGraphics + ((32 * 0x1C) + 8)
	ldr r0, [r1]
	str r0, [sp, #4]
	mov r1, sp
	ldr r2, _0805C178 @ =gUiGraphics + ((32 * 0x1C) + 0xC)
	ldr r0, [r2]
	strb r0, [r1, #8]
	ldr r3, _0805C17C @ =gUiGraphics + ((32 * 0x1C) + 0x10)
	ldr r0, [r3]
	strb r0, [r1, #9]
	ldr r0, [r5]
	strb r0, [r1, #0xa]
	ldr r0, [r7]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
_0805C094:
	ldr r1, [sp, #0x30]
	lsls r0, r1, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _0805C0A6
	ldr r2, [sp, #0x34]
	cmp r2, #0
	beq _0805C0A6
	b _0805C416
_0805C0A6:
	movs r3, #0x20
	add r0, sp, #0x2c
	strb r3, [r0]
	movs r1, #3
	movs r2, #0x2b
	add r2, sp
	strb r1, [r2]
	ldr r2, _0805C160 @ =gUiGraphics
	lsls r7, r5, #7
	ldr r3, _0805C168 @ =gUiGraphics + ((32 * 0x1C) + 0)
	ldr r0, [r3]
	adds r0, r0, r7
	str r0, [sp, #0x14]
	ldr r1, _0805C16C @ =gUiGraphics + ((32 * 0x1C) + 4)
	ldr r0, [r1]
	str r0, [sp, #0x20]
	ldr r0, _0805C190 @ =0x06016BE0
	str r0, [sp, #0xc]
	movs r3, #0x40
	str r3, [sp, #0x18]
	movs r0, #0x20
	str r0, [sp, #0x24]
	movs r1, #6
	add r3, sp, #0x28
	strb r1, [r3]
	movs r0, #0xd
	movs r1, #0x2a
	add r1, sp
	strb r0, [r1]
	ldr r3, _0805C174 @ =gUiGraphics + ((32 * 0x1C) + 8)
	ldr r0, [r3]
	str r0, [sp, #4]
	mov r1, sp
	ldr r3, _0805C178 @ =gUiGraphics + ((32 * 0x1C) + 0xC)
	ldr r0, [r3]
	strb r0, [r1, #8]
	ldr r3, _0805C17C @ =gUiGraphics + ((32 * 0x1C) + 0x10)
	ldr r0, [r3]
	strb r0, [r1, #9]
	ldr r3, _0805C194 @ =gUiGraphics + ((32 * 0x1C) + 0x14)
	ldr r0, [r3]
	strb r0, [r1, #0xa]
	movs r0, #0xe6
	lsls r0, r0, #2
	adds r5, r2, r0
	ldr r0, [r5]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r1, #0x20
	add r2, sp, #0x2c
	strb r1, [r2]
	movs r3, #3
	movs r0, #0x2b
	add r0, sp
	strb r3, [r0]
	ldr r1, _0805C168 @ =gUiGraphics + ((32 * 0x1C) + 0)
	ldr r0, [r1]
	adds r0, r0, r7
	adds r0, #0x40
	str r0, [sp, #0x14]
	ldr r2, _0805C16C @ =gUiGraphics + ((32 * 0x1C) + 4)
	ldr r0, [r2]
	str r0, [sp, #0x20]
	ldr r0, _0805C198 @ =0x06016C60
	str r0, [sp, #0xc]
	movs r3, #0x40
	str r3, [sp, #0x18]
	movs r0, #0x20
	str r0, [sp, #0x24]
	movs r1, #6
	add r2, sp, #0x28
	strb r1, [r2]
	movs r3, #0xd
	movs r0, #0x2a
	add r0, sp
	strb r3, [r0]
	ldr r1, _0805C174 @ =gUiGraphics + ((32 * 0x1C) + 8)
	ldr r0, [r1]
	str r0, [sp, #4]
	mov r1, sp
	ldr r2, _0805C178 @ =gUiGraphics + ((32 * 0x1C) + 0xC)
	ldr r0, [r2]
	strb r0, [r1, #8]
	ldr r3, _0805C17C @ =gUiGraphics + ((32 * 0x1C) + 0x10)
	ldr r0, [r3]
	strb r0, [r1, #9]
	ldr r2, _0805C194 @ =gUiGraphics + ((32 * 0x1C) + 0x14)
	ldr r0, [r2]
	strb r0, [r1, #0xa]
	ldr r0, [r5]
	b _0805C318
	.align 2, 0
_0805C160: .4byte gUiGraphics
_0805C164: .4byte 0x060167A0
_0805C168: .4byte gUiGraphics + ((32 * 0x1C) + 0)
_0805C16C: .4byte gUiGraphics + ((32 * 0x1C) + 4)
_0805C170: .4byte 0x060169E0
_0805C174: .4byte gUiGraphics + ((32 * 0x1C) + 8)
_0805C178: .4byte gUiGraphics + ((32 * 0x1C) + 0xC)
_0805C17C: .4byte gUiGraphics + ((32 * 0x1C) + 0x10)
_0805C180: .4byte gUiGraphics + ((32 * 0x1C) + 0x18)
_0805C184: .4byte 0x06016A60
_0805C188: .4byte 0x06016BA0
_0805C18C: .4byte 0x06016C20
_0805C190: .4byte 0x06016BE0
_0805C194: .4byte gUiGraphics + ((32 * 0x1C) + 0x14)
_0805C198: .4byte 0x06016C60
_0805C19C:
	ldr r3, [sp, #0x38]
	cmp r3, #2
	beq _0805C1A4
	b _0805C34C
_0805C1A4:
	ldr r0, [sp, #0x30]
	movs r1, #0xa
	bl Div
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, [sp, #0x30]
	movs r1, #0xa
	bl Mod
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x30]
	movs r0, #0x20
	strb r0, [r6]
	movs r2, #3
	ldr r1, [sp, #0x44]
	strb r2, [r1]
	lsls r5, r5, #7
	mov r8, r5
	ldr r3, _0805C324 @ =gUiGraphics + ((32 * 0x1C) + 0)
	ldr r0, [r3]
	add r0, r8
	str r0, [sp, #0x14]
	ldr r1, _0805C328 @ =gUiGraphics + ((32 * 0x1C) + 4)
	ldr r0, [r1]
	str r0, [sp, #0x20]
	ldr r0, _0805C32C @ =0x060169E0
	str r0, [sp, #0xc]
	movs r2, #0x40
	str r2, [sp, #0x18]
	movs r3, #0x20
	str r3, [sp, #0x24]
	movs r1, #6
	ldr r0, [sp, #0x48]
	strb r1, [r0]
	movs r3, #0xd
	ldr r2, [sp, #0x4c]
	strb r3, [r2]
	ldr r1, _0805C330 @ =gUiGraphics + ((32 * 0x1C) + 8)
	ldr r0, [r1]
	str r0, [sp, #4]
	mov r1, sp
	ldr r2, _0805C334 @ =gUiGraphics + ((32 * 0x1C) + 0xC)
	ldr r0, [r2]
	strb r0, [r1, #8]
	ldr r3, _0805C338 @ =gUiGraphics + ((32 * 0x1C) + 0x10)
	ldr r0, [r3]
	strb r0, [r1, #9]
	movs r0, #0xe5
	lsls r0, r0, #2
	adds r5, r7, r0
	ldr r0, [r5]
	strb r0, [r1, #0xa]
	ldr r2, _0805C33C @ =gUiGraphics + ((32 * 0x1C) + 0x18)
	ldr r0, [r2]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r3, #0x20
	strb r3, [r6]
	movs r1, #3
	ldr r0, [sp, #0x44]
	strb r1, [r0]
	ldr r2, _0805C324 @ =gUiGraphics + ((32 * 0x1C) + 0)
	ldr r0, [r2]
	add r0, r8
	adds r0, #0x40
	str r0, [sp, #0x14]
	ldr r3, _0805C328 @ =gUiGraphics + ((32 * 0x1C) + 4)
	ldr r0, [r3]
	str r0, [sp, #0x20]
	ldr r0, _0805C340 @ =0x06016A60
	str r0, [sp, #0xc]
	movs r0, #0x40
	str r0, [sp, #0x18]
	movs r1, #0x20
	str r1, [sp, #0x24]
	movs r3, #6
	ldr r2, [sp, #0x48]
	strb r3, [r2]
	movs r1, #0xd
	ldr r0, [sp, #0x4c]
	strb r1, [r0]
	ldr r2, _0805C330 @ =gUiGraphics + ((32 * 0x1C) + 8)
	ldr r0, [r2]
	str r0, [sp, #4]
	mov r1, sp
	ldr r3, _0805C334 @ =gUiGraphics + ((32 * 0x1C) + 0xC)
	ldr r0, [r3]
	strb r0, [r1, #8]
	ldr r2, _0805C338 @ =gUiGraphics + ((32 * 0x1C) + 0x10)
	ldr r0, [r2]
	strb r0, [r1, #9]
	ldr r0, [r5]
	strb r0, [r1, #0xa]
	ldr r3, _0805C33C @ =gUiGraphics + ((32 * 0x1C) + 0x18)
	ldr r0, [r3]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r0, #0x20
	strb r0, [r6]
	movs r2, #3
	ldr r1, [sp, #0x44]
	strb r2, [r1]
	ldr r3, [sp, #0x30]
	lsls r7, r3, #7
	ldr r1, _0805C324 @ =gUiGraphics + ((32 * 0x1C) + 0)
	ldr r0, [r1]
	adds r0, r0, r7
	str r0, [sp, #0x14]
	ldr r2, _0805C328 @ =gUiGraphics + ((32 * 0x1C) + 4)
	ldr r0, [r2]
	str r0, [sp, #0x20]
	ldr r0, _0805C344 @ =0x06016BA0
	str r0, [sp, #0xc]
	movs r3, #0x40
	str r3, [sp, #0x18]
	movs r0, #0x20
	str r0, [sp, #0x24]
	movs r2, #6
	ldr r1, [sp, #0x48]
	strb r2, [r1]
	movs r0, #0xd
	ldr r3, [sp, #0x4c]
	strb r0, [r3]
	ldr r1, _0805C330 @ =gUiGraphics + ((32 * 0x1C) + 8)
	ldr r0, [r1]
	str r0, [sp, #4]
	mov r1, sp
	ldr r2, _0805C334 @ =gUiGraphics + ((32 * 0x1C) + 0xC)
	ldr r0, [r2]
	strb r0, [r1, #8]
	ldr r3, _0805C338 @ =gUiGraphics + ((32 * 0x1C) + 0x10)
	ldr r0, [r3]
	strb r0, [r1, #9]
	ldr r0, [r5]
	strb r0, [r1, #0xa]
	ldr r2, _0805C33C @ =gUiGraphics + ((32 * 0x1C) + 0x18)
	ldr r0, [r2]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r3, #0x20
	strb r3, [r6]
	movs r1, #3
	ldr r0, [sp, #0x44]
	strb r1, [r0]
	ldr r2, _0805C324 @ =gUiGraphics + ((32 * 0x1C) + 0)
	ldr r0, [r2]
	adds r0, r0, r7
	adds r0, #0x40
	str r0, [sp, #0x14]
	ldr r3, _0805C328 @ =gUiGraphics + ((32 * 0x1C) + 4)
	ldr r0, [r3]
	str r0, [sp, #0x20]
	ldr r0, _0805C348 @ =0x06016C20
	str r0, [sp, #0xc]
	movs r0, #0x40
	str r0, [sp, #0x18]
	movs r1, #0x20
	str r1, [sp, #0x24]
	movs r3, #6
	ldr r2, [sp, #0x48]
	strb r3, [r2]
	movs r1, #0xd
	ldr r0, [sp, #0x4c]
	strb r1, [r0]
	ldr r2, _0805C330 @ =gUiGraphics + ((32 * 0x1C) + 8)
	ldr r0, [r2]
	str r0, [sp, #4]
	mov r1, sp
	ldr r3, _0805C334 @ =gUiGraphics + ((32 * 0x1C) + 0xC)
	ldr r0, [r3]
	strb r0, [r1, #8]
	ldr r2, _0805C338 @ =gUiGraphics + ((32 * 0x1C) + 0x10)
	ldr r0, [r2]
	strb r0, [r1, #9]
	ldr r0, [r5]
	strb r0, [r1, #0xa]
	ldr r3, _0805C33C @ =gUiGraphics + ((32 * 0x1C) + 0x18)
	ldr r0, [r3]
_0805C318:
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	b _0805C416
	.align 2, 0
_0805C324: .4byte gUiGraphics + ((32 * 0x1C) + 0)
_0805C328: .4byte gUiGraphics + ((32 * 0x1C) + 4)
_0805C32C: .4byte 0x060169E0
_0805C330: .4byte gUiGraphics + ((32 * 0x1C) + 8)
_0805C334: .4byte gUiGraphics + ((32 * 0x1C) + 0xC)
_0805C338: .4byte gUiGraphics + ((32 * 0x1C) + 0x10)
_0805C33C: .4byte gUiGraphics + ((32 * 0x1C) + 0x18)
_0805C340: .4byte 0x06016A60
_0805C344: .4byte 0x06016BA0
_0805C348: .4byte 0x06016C20
_0805C34C:
	ldr r0, [sp, #0x30]
	lsls r0, r0, #0x18
	str r0, [sp, #0x50]
	movs r1, #0x20
	add r2, sp, #0x2c
	strb r1, [r2]
	movs r3, #3
	movs r0, #0x2b
	add r0, sp
	strb r3, [r0]
	ldr r1, [sp, #0x50]
	lsrs r1, r1, #0x11
	str r1, [sp, #0x54]
	ldr r2, _0805C428 @ =gUiGraphics + ((32 * 0x1C) + 0)
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [sp, #0x14]
	ldr r3, _0805C42C @ =gUiGraphics + ((32 * 0x1C) + 4)
	ldr r0, [r3]
	str r0, [sp, #0x20]
	ldr r0, _0805C430 @ =0x060169E0
	str r0, [sp, #0xc]
	movs r0, #0x40
	str r0, [sp, #0x18]
	movs r1, #0x20
	str r1, [sp, #0x24]
	movs r2, #6
	add r3, sp, #0x28
	strb r2, [r3]
	movs r0, #0xd
	movs r1, #0x2a
	add r1, sp
	strb r0, [r1]
	ldr r2, _0805C434 @ =gUiGraphics + ((32 * 0x1C) + 8)
	ldr r0, [r2]
	str r0, [sp, #4]
	mov r1, sp
	ldr r3, _0805C438 @ =gUiGraphics + ((32 * 0x1C) + 0xC)
	ldr r0, [r3]
	strb r0, [r1, #8]
	ldr r2, _0805C43C @ =gUiGraphics + ((32 * 0x1C) + 0x10)
	ldr r0, [r2]
	strb r0, [r1, #9]
	ldr r3, _0805C440 @ =gUiGraphics + ((32 * 0x1C) + 0x14)
	ldr r0, [r3]
	strb r0, [r1, #0xa]
	movs r0, #0xe6
	lsls r0, r0, #2
	adds r5, r7, r0
	ldr r0, [r5]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r1, #0x20
	add r2, sp, #0x2c
	strb r1, [r2]
	movs r3, #3
	movs r0, #0x2b
	add r0, sp
	strb r3, [r0]
	ldr r1, _0805C428 @ =gUiGraphics + ((32 * 0x1C) + 0)
	ldr r0, [r1]
	ldr r2, [sp, #0x54]
	adds r0, r0, r2
	adds r0, #0x40
	str r0, [sp, #0x14]
	ldr r3, _0805C42C @ =gUiGraphics + ((32 * 0x1C) + 4)
	ldr r0, [r3]
	str r0, [sp, #0x20]
	ldr r0, _0805C444 @ =0x06016A60
	str r0, [sp, #0xc]
	movs r0, #0x40
	str r0, [sp, #0x18]
	movs r1, #0x20
	str r1, [sp, #0x24]
	movs r2, #6
	add r3, sp, #0x28
	strb r2, [r3]
	movs r0, #0xd
	movs r1, #0x2a
	add r1, sp
	strb r0, [r1]
	ldr r2, _0805C434 @ =gUiGraphics + ((32 * 0x1C) + 8)
	ldr r0, [r2]
	str r0, [sp, #4]
	mov r1, sp
	ldr r3, _0805C438 @ =gUiGraphics + ((32 * 0x1C) + 0xC)
	ldr r0, [r3]
	strb r0, [r1, #8]
	ldr r2, _0805C43C @ =gUiGraphics + ((32 * 0x1C) + 0x10)
	ldr r0, [r2]
	strb r0, [r1, #9]
	ldr r3, _0805C440 @ =gUiGraphics + ((32 * 0x1C) + 0x14)
	ldr r0, [r3]
	strb r0, [r1, #0xa]
	ldr r0, [r5]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
_0805C416:
	add sp, #0x58
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805C428: .4byte gUiGraphics + ((32 * 0x1C) + 0)
_0805C42C: .4byte gUiGraphics + ((32 * 0x1C) + 4)
_0805C430: .4byte 0x060169E0
_0805C434: .4byte gUiGraphics + ((32 * 0x1C) + 8)
_0805C438: .4byte gUiGraphics + ((32 * 0x1C) + 0xC)
_0805C43C: .4byte gUiGraphics + ((32 * 0x1C) + 0x10)
_0805C440: .4byte gUiGraphics + ((32 * 0x1C) + 0x14)
_0805C444: .4byte 0x06016A60

	thumb_func_start sub_805C448
sub_805C448: @ 0x0805C448
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp, #0xc]
	movs r4, #0
	bl sub_80535FC
	bl sub_8053674
	ldr r0, _0805C57C @ =sub_805C6B0
	ldr r7, _0805C580 @ =0x00002120
	str r4, [sp]
	movs r1, #0x1c
	adds r2, r7, #0
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #8]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	mov sl, r1
	adds r1, r0, r1
	strh r4, [r1, #0x18]
	strh r4, [r1, #0x1a]
	movs r0, #0xf0
	strh r0, [r1, #0xa]
	movs r0, #0x7e
	strh r0, [r1, #0xc]
	movs r0, #8
	strh r0, [r1, #0xe]
	strh r0, [r1, #0x10]
	movs r6, #6
	strh r6, [r1, #0x12]
	movs r2, #1
	mov r8, r2
	mov r0, r8
	strb r0, [r1, #0x16]
	movs r0, #0xa
	strh r0, [r1, #8]
	ldr r0, _0805C584 @ =sub_805C740
	str r4, [sp]
	movs r1, #0x1c
	adds r2, r7, #0
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #4]
	ldrh r0, [r0, #6]
	mov r2, sl
	adds r1, r0, r2
	strh r4, [r1, #0x18]
	strh r4, [r1, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #1
	mov sb, r0
	mov r2, sb
	strh r2, [r1, #0xa]
	movs r0, #0x80
	strh r0, [r1, #0xc]
	movs r0, #9
	strh r0, [r1, #0xe]
	movs r0, #2
	strh r0, [r1, #0x10]
	strh r6, [r1, #0x12]
	mov r2, r8
	strb r2, [r1, #0x16]
	strh r4, [r1, #8]
	cmp r5, #0
	beq _0805C520
	ldr r0, _0805C588 @ =sub_805C83C
	str r4, [sp]
	movs r1, #0x1c
	adds r2, r7, #0
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0xc]
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r1, r0, r2
	strh r4, [r1, #0x18]
	strh r4, [r1, #0x1a]
	mov r0, sb
	strh r0, [r1]
	strh r4, [r1, #2]
	strh r4, [r1, #4]
	strh r4, [r1, #6]
	movs r0, #0x39
	strh r0, [r1, #0xa]
	movs r0, #0x49
	strh r0, [r1, #0xc]
	movs r0, #5
	strh r0, [r1, #0xe]
	movs r0, #4
	strh r0, [r1, #0x10]
	strh r6, [r1, #0x12]
	mov r2, r8
	strb r2, [r1, #0x16]
	strh r4, [r1, #8]
_0805C520:
	ldr r0, _0805C58C @ =sub_805C594
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0805C590 @ =0x0805C8FD
	str r1, [sp]
	movs r1, #0x1c
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	mov r1, sl
	adds r4, r0, r1
	movs r2, #0
	strh r2, [r4, #0x18]
	strb r5, [r4, #0x1a]
	ldr r0, [sp, #8]
	str r0, [r4, #0x10]
	ldr r1, [sp, #4]
	str r1, [r4, #0x14]
	ldr r2, [sp, #0xc]
	str r2, [r4, #0xc]
	movs r0, #0
	strh r0, [r4]
	movs r1, #1
	mov r2, r8
	strh r2, [r4, #2]
	movs r0, #2
	strh r0, [r4, #4]
	movs r2, #0
	strh r2, [r4, #6]
	movs r0, #0x60
	strh r0, [r4, #8]
	strb r1, [r4, #0xa]
	cmp r5, #0
	beq _0805C56C
	adds r0, r4, #0
	bl sub_80543A4
_0805C56C:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805C57C: .4byte sub_805C6B0
_0805C580: .4byte 0x00002120
_0805C584: .4byte sub_805C740
_0805C588: .4byte sub_805C83C
_0805C58C: .4byte sub_805C594
_0805C590: .4byte 0x0805C8FD

	thumb_func_start sub_805C594
sub_805C594: @ 0x0805C594
	push {r4, r5, lr}
	ldr r0, _0805C5EC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r0, r1
	ldr r0, [r5, #0x10]
	ldrh r0, [r0, #6]
	adds r2, r0, r1
	ldr r0, [r5, #0x14]
	ldrh r0, [r0, #6]
	adds r1, r0, r1
	ldrb r0, [r5, #0x1a]
	cmp r0, #0
	beq _0805C5BE
	ldr r0, [r5, #0xc]
	ldrh r0, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r3, r0, r4
_0805C5BE:
	ldrh r0, [r5, #0x18]
	strh r0, [r2, #0x18]
	ldrh r0, [r5, #0x18]
	strh r0, [r1, #0x18]
	ldrb r0, [r5, #0x1a]
	cmp r0, #0
	beq _0805C5F6
	ldrh r0, [r5, #0x18]
	strh r0, [r3, #0x18]
	ldrb r0, [r5, #0x1a]
	cmp r0, #0
	beq _0805C5F6
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	cmp r0, #0x69
	bgt _0805C5F6
	cmp r0, #0x14
	ble _0805C5F0
	adds r0, r5, #0
	bl sub_805423C
	b _0805C5F6
	.align 2, 0
_0805C5EC: .4byte gCurTask
_0805C5F0:
	adds r0, r5, #0
	bl sub_80543A4
_0805C5F6:
	ldrh r0, [r5, #0x18]
	adds r0, #1
	movs r3, #0
	strh r0, [r5, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _0805C698
	ldr r2, _0805C670 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0805C674 @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0805C678 @ =gBldRegs
	strh r3, [r0]
	strh r3, [r0, #4]
	ldr r2, _0805C67C @ =gStageFlags
	ldrh r1, [r2]
	ldr r0, _0805C680 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2]
	ldr r3, _0805C684 @ =gPlayer
	ldr r0, [r3, #0x10]
	ldr r4, _0805C688 @ =0xFFDFFFFF
	ands r0, r4
	str r0, [r3, #0x10]
	ldr r0, _0805C68C @ =gUnknown_030060E0
	ldrh r2, [r0]
	ldrh r0, [r0, #2]
	orrs r2, r0
	ldrh r1, [r3, #0x38]
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #0x38]
	ldr r1, _0805C690 @ =gPartner
	ldr r0, [r1, #0x10]
	ands r0, r4
	str r0, [r1, #0x10]
	ldrh r0, [r1, #0x38]
	orrs r2, r0
	strh r2, [r1, #0x38]
	bl sub_80541F0
	ldr r0, [r5, #0x14]
	bl TaskDestroy
	ldr r0, [r5, #0x10]
	bl TaskDestroy
	ldrb r0, [r5, #0x1a]
	cmp r0, #0
	beq _0805C664
	ldr r0, [r5, #0xc]
	bl TaskDestroy
_0805C664:
	ldr r0, _0805C694 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0805C6A4
	.align 2, 0
_0805C670: .4byte gDispCnt
_0805C674: .4byte 0x00001FFF
_0805C678: .4byte gBldRegs
_0805C67C: .4byte gStageFlags
_0805C680: .4byte 0x0000FFFE
_0805C684: .4byte gPlayer
_0805C688: .4byte 0xFFDFFFFF
_0805C68C: .4byte gUnknown_030060E0
_0805C690: .4byte gPartner
_0805C694: .4byte gCurTask
_0805C698:
	cmp r0, #2
	bne _0805C6A4
	ldr r0, _0805C6AC @ =gUnknown_03005154
	ldrh r0, [r0]
	bl sub_805BC94
_0805C6A4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805C6AC: .4byte gUnknown_03005154

	thumb_func_start sub_805C6B0
sub_805C6B0: @ 0x0805C6B0
	push {lr}
	ldr r0, _0805C6F0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	movs r1, #0x18
	ldrsh r0, [r2, r1]
	cmp r0, #0xf5
	ble _0805C6F4
	ldrh r3, [r2, #0xa]
	movs r0, #0xa
	ldrsh r1, [r2, r0]
	movs r0, #0x20
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0805C6E8
	adds r0, r3, #0
	adds r0, #0x20
	strh r0, [r2, #0xa]
	ldrh r1, [r2, #0xe]
	movs r3, #0xe
	ldrsh r0, [r2, r3]
	cmp r0, #0
	beq _0805C6E8
	subs r0, r1, #1
	strh r0, [r2, #0xe]
_0805C6E8:
	ldrh r0, [r2, #0xa]
	subs r0, #0x1a
	strh r0, [r2, #0xa]
	b _0805C730
	.align 2, 0
_0805C6F0: .4byte gCurTask
_0805C6F4:
	cmp r0, #0x2d
	ble _0805C6FE
	movs r0, #0x11
	strh r0, [r2, #0xc]
	b _0805C730
_0805C6FE:
	cmp r0, #0x21
	ble _0805C70A
	ldrh r0, [r2, #0xc]
	subs r0, #8
	strh r0, [r2, #0xc]
	b _0805C730
_0805C70A:
	cmp r0, #0x19
	ble _0805C718
	ldr r0, _0805C714 @ =0x0000FFF0
	strh r0, [r2, #0xa]
	b _0805C730
	.align 2, 0
_0805C714: .4byte 0x0000FFF0
_0805C718:
	cmp r0, #0xf
	ble _0805C730
	ldrh r0, [r2, #0xa]
	subs r0, #0x1a
	strh r0, [r2, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x10
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0805C730
	strh r1, [r2, #0xa]
_0805C730:
	ldr r0, _0805C73C @ =gUnknown_0868862C
	adds r1, r2, #0
	bl sub_8052F78
	pop {r0}
	bx r0
	.align 2, 0
_0805C73C: .4byte gUnknown_0868862C

	thumb_func_start sub_805C740
sub_805C740: @ 0x0805C740
	push {r4, lr}
	sub sp, #0x1c
	ldr r1, _0805C794 @ =gUnknown_08688638
	mov r0, sp
	movs r2, #0x16
	bl memcpy
	mov r0, sp
	adds r0, #0x16
	movs r1, #0
	movs r2, #5
	bl memset
	ldr r0, _0805C798 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0xf5
	ble _0805C79C
	ldrh r0, [r4, #0xa]
	subs r0, #0x1c
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x1f
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0805C7EA
	ldrh r1, [r4, #0xe]
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _0805C78E
	subs r0, r1, #1
	strh r0, [r4, #0xe]
_0805C78E:
	ldrh r0, [r4, #0xa]
	adds r0, #0x20
	b _0805C7DC
	.align 2, 0
_0805C794: .4byte gUnknown_08688638
_0805C798: .4byte gCurTask
_0805C79C:
	cmp r0, #0x2d
	ble _0805C7AC
	movs r0, #0x13
	strh r0, [r4, #0xc]
	ldrh r2, [r4, #0xa]
	subs r0, r2, #2
	strh r0, [r4, #0xa]
	b _0805C7CC
_0805C7AC:
	cmp r0, #0x21
	ble _0805C7BE
	ldrh r0, [r4, #0xc]
	subs r0, #8
	strh r0, [r4, #0xc]
	ldrh r2, [r4, #0xa]
	subs r0, r2, #2
	strh r0, [r4, #0xa]
	b _0805C7CC
_0805C7BE:
	cmp r0, #0x19
	ble _0805C7F6
	ldrh r2, [r4, #0xa]
	subs r0, r2, #2
	strh r0, [r4, #0xa]
	movs r1, #9
	strh r1, [r4, #0xe]
_0805C7CC:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x1f
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0805C7EA
	adds r0, r2, #0
	adds r0, #0x1e
_0805C7DC:
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0x1a]
	adds r0, #1
	movs r1, #7
	bl Mod
	strh r0, [r4, #0x1a]
_0805C7EA:
	ldrh r0, [r4, #0x1a]
	add r0, sp
	adds r1, r4, #0
	bl sub_8052F78
	b _0805C834
_0805C7F6:
	cmp r0, #0xf
	ble _0805C834
	ldrh r3, [r4, #0xa]
	adds r0, r3, #0
	subs r0, #0x1c
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0xef
	bgt _0805C834
	asrs r0, r0, #0x15
	movs r1, #9
	subs r1, r1, r0
	strh r1, [r4, #0xe]
	movs r0, #0x1f
	rsbs r0, r0, #0
	cmp r2, r0
	bge _0805C82A
	adds r0, r3, #4
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0x1a]
	adds r0, #1
	movs r1, #7
	bl Mod
	strh r0, [r4, #0x1a]
_0805C82A:
	ldrh r0, [r4, #0x1a]
	add r0, sp
	adds r1, r4, #0
	bl sub_8052F78
_0805C834:
	add sp, #0x1c
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_805C83C
sub_805C83C: @ 0x0805C83C
	push {lr}
	ldr r0, _0805C874 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	movs r1, #0x18
	ldrsh r0, [r3, r1]
	cmp r0, #0xf5
	ble _0805C87C
	movs r0, #0x49
	strh r0, [r3, #0xc]
	ldrh r0, [r3, #0xa]
	subs r0, #0x1c
	strh r0, [r3, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0805C89C
	movs r0, #0
	strh r0, [r3, #0xe]
	ldr r0, _0805C878 @ =0x0000FF80
	strh r0, [r3, #0xa]
	b _0805C8F4
	.align 2, 0
_0805C874: .4byte gCurTask
_0805C878: .4byte 0x0000FF80
_0805C87C:
	cmp r0, #0x2d
	ble _0805C8C8
	ldrh r0, [r3, #2]
	adds r0, #0x10
	strh r0, [r3, #2]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0xff
	bls _0805C8AC
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #2]
	movs r0, #0x39
	strh r0, [r3, #0xa]
	movs r0, #0x49
	strh r0, [r3, #0xc]
_0805C89C:
	ldr r0, _0805C8A8 @ =gUnknown_08688650
	adds r1, r3, #0
	bl sub_8052F78
	b _0805C8F4
	.align 2, 0
_0805C8A8: .4byte gUnknown_08688650
_0805C8AC:
	movs r0, #0x29
	strh r0, [r3, #0xa]
	lsrs r1, r1, #0x13
	movs r0, #0x54
	subs r0, r0, r1
	strh r0, [r3, #0xc]
	ldr r0, _0805C8C4 @ =gUnknown_08688650
	adds r1, r3, #0
	bl sub_8052C84
	b _0805C8F4
	.align 2, 0
_0805C8C4: .4byte gUnknown_08688650
_0805C8C8:
	cmp r0, #0x21
	ble _0805C8F4
	movs r0, #0x29
	strh r0, [r3, #0xa]
	ldrh r1, [r3, #2]
	lsrs r2, r1, #3
	movs r0, #0x54
	subs r0, r0, r2
	strh r0, [r3, #0xc]
	adds r1, #0x10
	strh r1, [r3, #2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xff
	bls _0805C8EC
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #2]
_0805C8EC:
	ldr r0, _0805C8F8 @ =gUnknown_08688650
	adds r1, r3, #0
	bl sub_8052C84
_0805C8F4:
	pop {r0}
	bx r0
	.align 2, 0
_0805C8F8: .4byte gUnknown_08688650

    thumb_func_start sub_805C8FC
sub_805C8FC: @ 0x0805C8FC
    bx lr
    .align 2, 0

	thumb_func_start sub_805C900
sub_805C900: @ 0x0805C900
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r0, _0805C924 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	cmp r7, #0
	bne _0805C928
	ldrh r1, [r2, #0x26]
	movs r0, #0x64
	adds r6, r1, #0
	muls r6, r0, r6
	b _0805C942
	.align 2, 0
_0805C924: .4byte gCurTask
_0805C928:
	cmp r7, #1
	bne _0805C930
	ldr r6, [r2, #0x18]
	b _0805C942
_0805C930:
	cmp r7, #2
	bne _0805C938
	ldr r6, [r2, #0x1c]
	b _0805C942
_0805C938:
	cmp r7, #3
	bne _0805C942
	ldr r3, _0805C98C @ =0x0300002A
	adds r0, r1, r3
	ldrb r6, [r0]
_0805C942:
	movs r4, #6
	adds r2, #0x2b
	mov r8, r2
_0805C948:
	adds r0, r6, #0
	movs r1, #0xa
	bl Div
	adds r3, r0, #0
	lsls r2, r4, #0x10
	asrs r0, r2, #0x10
	mov r1, r8
	adds r5, r1, r0
	lsls r1, r3, #3
	lsls r0, r3, #1
	adds r1, r1, r0
	subs r4, r6, r1
	adds r0, r4, #0
	adds r0, #0x20
	strb r0, [r5]
	cmp r6, r1
	beq _0805C974
	cmp r7, #3
	bne _0805C974
	adds r0, #0xb
	strb r0, [r5]
_0805C974:
	adds r6, r3, #0
	ldr r3, _0805C990 @ =0xFFFF0000
	adds r0, r2, r3
	lsrs r4, r0, #0x10
	cmp r0, #0
	bge _0805C948
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805C98C: .4byte 0x0300002A
_0805C990: .4byte 0xFFFF0000

	thumb_func_start sub_805C994
sub_805C994: @ 0x0805C994
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov r0, sp
	adds r0, #0x2c
	str r0, [sp, #0x30]
	movs r0, #0x10
	ldr r1, [sp, #0x30]
	strb r0, [r1]
	movs r2, #0x2b
	add r2, sp
	movs r0, #8
	strb r0, [r2]
	ldr r7, _0805CB78 @ =gUiGraphics
	movs r1, #0xe0
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	str r0, [sp, #0x14]
	movs r2, #0xe2
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x18]
	movs r5, #0x20
	str r5, [sp, #0x24]
	add r6, sp, #0x28
	movs r0, #0xe
	strb r0, [r6]
	ldr r0, _0805CB7C @ =0x060177A0
	str r0, [sp, #0xc]
	mov r0, sp
	adds r0, #0x2a
	str r0, [sp, #0x34]
	movs r1, #0xd
	mov sl, r1
	mov r2, sl
	strb r2, [r0]
	movs r1, #0xe4
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r1, sp
	movs r2, #0xe6
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #8]
	adds r2, #4
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #9]
	adds r2, #4
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #0xa]
	adds r2, #4
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	ldr r3, [sp, #0x30]
	cmp r4, #0
	bne _0805CA2E
	b _0805CB94
_0805CA2E:
	movs r0, #0x33
	strb r0, [r3]
	movs r0, #2
	movs r1, #0x2b
	add r1, sp
	strb r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _0805CB80 @ =gUiGraphics + 0x4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0xe0
	lsls r0, r0, #4
	str r0, [sp, #0x18]
	str r5, [sp, #0x24]
	movs r0, #0xf
	add r1, sp, #0x28
	strb r0, [r1]
	ldr r0, _0805CB84 @ =0x060169A0
	str r0, [sp, #0xc]
	mov r2, sl
	movs r0, #0x2a
	add r0, sp
	strb r2, [r0]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CB88 @ =gUiGraphics + 0x8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0xc
	adds r1, r1, r7
	mov r8, r1
	add r0, r8
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r6, r7, #0
	adds r6, #0x10
	adds r0, r0, r6
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0x14
	adds r1, r1, r7
	mov sb, r1
	add r0, sb
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r4, r7, #0
	adds r4, #0x18
	adds r0, r0, r4
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	str r3, [sp, #0x38]
	bl sub_80528AC
	ldr r0, _0805CB8C @ =gSelectedCharacter
	ldrb r0, [r0]
	adds r0, #0xb
	ldr r3, [sp, #0x38]
	strb r0, [r3]
	movs r2, #2
	movs r0, #0x2b
	add r0, sp
	strb r2, [r0]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CB80 @ =gUiGraphics + 0x4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0xc0
	lsls r0, r0, #3
	str r0, [sp, #0x18]
	movs r0, #0xc
	str r0, [sp, #0x24]
	movs r2, #0xf
	add r0, sp, #0x28
	strb r2, [r0]
	ldr r0, _0805CB90 @ =0x060163A0
	str r0, [sp, #0xc]
	mov r1, sl
	movs r2, #0x2a
	add r2, sp
	strb r1, [r2]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CB88 @ =gUiGraphics + 0x8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	str r3, [sp, #0x38]
	bl sub_80528AC
	b _0805CC3C
	.align 2, 0
_0805CB78: .4byte gUiGraphics
_0805CB7C: .4byte 0x060177A0
_0805CB80: .4byte gUiGraphics + 0x4
_0805CB84: .4byte 0x060169A0
_0805CB88: .4byte gUiGraphics + 0x8
_0805CB8C: .4byte gSelectedCharacter
_0805CB90: .4byte 0x060163A0
_0805CB94:
	movs r0, #0x35
	strb r0, [r3]
	movs r0, #2
	movs r2, #0x2b
	add r2, sp
	strb r0, [r2]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0xa0
	lsls r0, r0, #5
	str r0, [sp, #0x18]
	str r5, [sp, #0x24]
	movs r0, #0xf
	add r1, sp, #0x28
	strb r0, [r1]
	ldr r0, _0805CFB8 @ =0x060163A0
	str r0, [sp, #0xc]
	mov r2, sl
	movs r0, #0x2a
	add r0, sp
	strb r2, [r0]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	str r3, [sp, #0x38]
	bl sub_80528AC
_0805CC3C:
	ldr r3, [sp, #0x38]
	movs r0, #0x34
	strb r0, [r3]
	movs r0, #3
	movs r1, #0x2b
	add r1, sp
	strb r0, [r1]
	ldr r4, _0805CFBC @ =gUiGraphics
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _0805CFC0 @ =gUiGraphics + 0x4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0x88
	lsls r0, r0, #5
	str r0, [sp, #0x18]
	movs r7, #0x20
	str r7, [sp, #0x24]
	movs r0, #0xe
	add r1, sp, #0x28
	strb r0, [r1]
	ldr r0, _0805CFC4 @ =0x060152A0
	str r0, [sp, #0xc]
	movs r2, #0xd
	movs r0, #0x2a
	add r0, sp
	strb r2, [r0]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFC8 @ =gUiGraphics + 0x8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFCC @ =gUiGraphics + 0xC
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFD0 @ =gUiGraphics + 0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFD4 @ =gUiGraphics + 0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFD8 @ =gUiGraphics + 0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	str r3, [sp, #0x38]
	bl sub_80528AC
	movs r0, #0x36
	ldr r3, [sp, #0x38]
	strb r0, [r3]
	movs r0, #4
	movs r2, #0x2b
	add r2, sp
	strb r0, [r2]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFC0 @ =gUiGraphics + 0x4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0xc0
	lsls r0, r0, #3
	str r0, [sp, #0x18]
	str r7, [sp, #0x24]
	movs r2, #0xd
	add r0, sp, #0x28
	strb r2, [r0]
	ldr r1, _0805CFDC @ =0x06014CA0
	str r1, [sp, #0xc]
	movs r0, #0x2a
	add r0, sp
	strb r2, [r0]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFC8 @ =gUiGraphics + 0x8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFCC @ =gUiGraphics + 0xC
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFD0 @ =gUiGraphics + 0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFD4 @ =gUiGraphics + 0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFD8 @ =gUiGraphics + 0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	str r3, [sp, #0x38]
	bl sub_80528AC
	movs r0, #0x38
	ldr r3, [sp, #0x38]
	strb r0, [r3]
	movs r2, #5
	mov r8, r2
	mov r0, r8
	movs r1, #0x2b
	add r1, sp
	strb r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _0805CFC0 @ =gUiGraphics + 0x4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [sp, #0x20]
	str r7, [sp, #0x18]
	str r7, [sp, #0x24]
	movs r6, #0xc
	add r0, sp, #0x28
	strb r6, [r0]
	ldr r1, _0805CFDC @ =0x06014CA0
	str r1, [sp, #0xc]
	movs r2, #0x2a
	add r2, sp
	strb r6, [r2]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFC8 @ =gUiGraphics + 0x8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFCC @ =gUiGraphics + 0xC
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFD0 @ =gUiGraphics + 0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFD4 @ =gUiGraphics + 0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFD8 @ =gUiGraphics + 0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	str r3, [sp, #0x38]
	bl sub_80528AC
	movs r0, #0x39
	ldr r3, [sp, #0x38]
	strb r0, [r3]
	mov r2, r8
	movs r0, #0x2b
	add r0, sp
	strb r2, [r0]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFC0 @ =gUiGraphics + 0x4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	str r7, [sp, #0x18]
	str r7, [sp, #0x24]
	movs r0, #0xb
	add r2, sp, #0x28
	strb r0, [r2]
	ldr r0, _0805CFDC @ =0x06014CA0
	str r0, [sp, #0xc]
	movs r1, #0x2a
	add r1, sp
	strb r6, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _0805CFC8 @ =gUiGraphics + 0x8
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFCC @ =gUiGraphics + 0xC
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFD0 @ =gUiGraphics + 0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFD4 @ =gUiGraphics + 0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFD8 @ =gUiGraphics + 0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	str r3, [sp, #0x38]
	bl sub_80528AC
	movs r0, #0x3a
	ldr r3, [sp, #0x38]
	strb r0, [r3]
	mov r2, r8
	movs r0, #0x2b
	add r0, sp
	strb r2, [r0]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFC0 @ =gUiGraphics + 0x4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	str r7, [sp, #0x18]
	str r7, [sp, #0x24]
	movs r0, #0xa
	add r2, sp, #0x28
	strb r0, [r2]
	ldr r0, _0805CFDC @ =0x06014CA0
	str r0, [sp, #0xc]
	movs r1, #0x2a
	add r1, sp
	strb r6, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _0805CFC8 @ =gUiGraphics + 0x8
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFCC @ =gUiGraphics + 0xC
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFD0 @ =gUiGraphics + 0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFD4 @ =gUiGraphics + 0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFD8 @ =gUiGraphics + 0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	str r3, [sp, #0x38]
	bl sub_80528AC
	ldr r3, [sp, #0x38]
	movs r2, #0
	strb r2, [r3]
	movs r0, #6
	movs r1, #0x2b
	add r1, sp
	strb r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [sp, #0x14]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFC0 @ =gUiGraphics + 0x4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	ldr r0, _0805CFE0 @ =0x06014A20
	str r0, [sp, #0xc]
	movs r0, #0xa0
	lsls r0, r0, #2
	str r0, [sp, #0x18]
	str r7, [sp, #0x24]
	movs r0, #9
	add r2, sp, #0x28
	strb r0, [r2]
	movs r0, #0xd
	movs r1, #0x2a
	add r1, sp
	strb r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _0805CFC8 @ =gUiGraphics + 0x8
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	b _0805CFE4
	.align 2, 0
_0805CFB8: .4byte 0x060163A0
_0805CFBC: .4byte gUiGraphics
_0805CFC0: .4byte gUiGraphics + 0x4
_0805CFC4: .4byte 0x060152A0
_0805CFC8: .4byte gUiGraphics + 0x8
_0805CFCC: .4byte gUiGraphics + 0xC
_0805CFD0: .4byte gUiGraphics + 0x10
_0805CFD4: .4byte gUiGraphics + 0x14
_0805CFD8: .4byte gUiGraphics + 0x18
_0805CFDC: .4byte 0x06014CA0
_0805CFE0: .4byte 0x06014A20
_0805CFE4:
	lsls r0, r0, #2
	ldr r1, _0805D038 @ =gUiGraphics + 0xC
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	mov r3, sp
	add r2, sp, #0x2c
	ldrb r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805D03C @ =gUiGraphics + 0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r3, #9]
	ldrb r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805D040 @ =gUiGraphics + 0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r3, #0xa]
	ldrb r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _0805D044 @ =gUiGraphics + 0x18
	adds r0, r0, r2
	ldr r0, [r0]
	strb r0, [r3, #0xb]
	mov r0, sp
	bl sub_80528AC
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805D038: .4byte gUiGraphics + 0xC
_0805D03C: .4byte gUiGraphics + 0x10
_0805D040: .4byte gUiGraphics + 0x14
_0805D044: .4byte gUiGraphics + 0x18

	thumb_func_start sub_805D048
sub_805D048: @ 0x0805D048
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	bl sub_80535FC
	ldr r1, _0805D0B0 @ =gBgScrollRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	strh r0, [r1, #0xa]
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	ldr r0, _0805D0B4 @ =gSpecialStageCollectedRings
	ldr r1, _0805D0B8 @ =gUnknown_03005154
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	blo _0805D0DA
	movs r0, #0x2f
	bl m4aSongNumStart
	movs r0, #1
	str r0, [sp, #0x24]
	ldr r1, _0805D0BC @ =0x00002710
	str r1, [sp, #0x20]
	ldr r3, _0805D0C0 @ =gLoadedSaveGame
	ldrb r2, [r3, #0x1d]
	ldr r1, _0805D0C4 @ =gUnknown_08487134
	ldr r0, _0805D0C8 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r2, #0
	asrs r0, r1
	ldr r4, [sp, #0x24]
	ands r0, r4
	cmp r0, #0
	beq _0805D0CC
	movs r0, #1
	mov r8, r0
	b _0805D0EC
	.align 2, 0
_0805D0B0: .4byte gBgScrollRegs
_0805D0B4: .4byte gSpecialStageCollectedRings
_0805D0B8: .4byte gUnknown_03005154
_0805D0BC: .4byte 0x00002710
_0805D0C0: .4byte gLoadedSaveGame
_0805D0C4: .4byte gUnknown_08487134
_0805D0C8: .4byte gCurrentLevel
_0805D0CC:
	ldr r0, [sp, #0x24]
	lsls r0, r1
	orrs r2, r0
	strb r2, [r3, #0x1d]
	movs r1, #0
	mov r8, r1
	b _0805D0EC
_0805D0DA:
	movs r0, #0x2e
	bl m4aSongNumStart
	movs r2, #0
	mov r8, r2
	movs r3, #0
	str r3, [sp, #0x24]
	movs r4, #0
	str r4, [sp, #0x20]
_0805D0EC:
	ldr r0, _0805D164 @ =gLoadedSaveGame
	ldrb r0, [r0, #0x1d]
	mov sb, r0
	ldr r0, _0805D168 @ =gSpecialStageCollectedRings
	ldrh r0, [r0]
	mov sl, r0
	ldr r0, _0805D16C @ =gUnknown_0300507C
	ldrb r0, [r0]
	add r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r1, _0805D170 @ =sa2__gUnknown_0300543C
	ldrb r0, [r1]
	add r0, r8
	strb r0, [r1]
	ldr r1, _0805D174 @ =gLevelScore
	ldr r6, [r1]
	movs r0, #0x64
	mov r2, sl
	muls r2, r0, r2
	adds r0, r2, #0
	ldr r3, [sp, #0x20]
	adds r0, r3, r0
	adds r0, r6, r0
	str r0, [r1]
	ldr r4, _0805D178 @ =0x0000C350
	adds r1, r4, #0
	bl Div
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl Div
	cmp r5, r0
	beq _0805D146
	ldr r0, _0805D17C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805D146
	ldr r1, _0805D180 @ =gNumLives
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0805D146:
	movs r0, #0x64
	mov r4, sl
	muls r4, r0, r4
	adds r0, r4, #0
	ldr r1, [sp, #0x20]
	cmp r1, r0
	bls _0805D184
	adds r0, r1, #0
	movs r1, #0x64
	bl Div
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	b _0805D186
	.align 2, 0
_0805D164: .4byte gLoadedSaveGame
_0805D168: .4byte gSpecialStageCollectedRings
_0805D16C: .4byte gUnknown_0300507C
_0805D170: .4byte sa2__gUnknown_0300543C
_0805D174: .4byte gLevelScore
_0805D178: .4byte 0x0000C350
_0805D17C: .4byte gGameMode
_0805D180: .4byte gNumLives
_0805D184:
	mov r7, sl
_0805D186:
	bl sub_8053674
	ldr r0, _0805D4B4 @ =sub_805D684
	movs r5, #0
	str r5, [sp]
	movs r1, #0x34
	ldr r2, _0805D4B8 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0xc]
	ldrh r1, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r2, r1, r3
	strh r5, [r2, #0x20]
	strh r7, [r2, #0x22]
	strh r5, [r2, #0x24]
	movs r0, #0xf0
	strh r0, [r2, #0xa]
	movs r0, #0x7e
	strh r0, [r2, #0xc]
	movs r4, #8
	strh r4, [r2, #0xe]
	strh r4, [r2, #0x10]
	movs r0, #0xe
	strh r0, [r2, #0x12]
	movs r3, #1
	strb r3, [r2, #0x16]
	movs r0, #0xa
	strh r0, [r2, #8]
	ldr r4, _0805D4BC @ =0x03000028
	adds r0, r1, r4
	add r3, sp, #0x24
	ldrb r3, [r3]
	strb r3, [r0]
	adds r4, #1
	adds r0, r1, r4
	mov r3, sb
	strb r3, [r0]
	adds r4, #1
	adds r1, r1, r4
	mov r0, r8
	strb r0, [r1]
	mov r1, sl
	strh r1, [r2, #0x26]
	ldr r3, [sp, #0x20]
	str r3, [r2, #0x18]
	movs r4, #0
	str r4, [r2, #0x1c]
	ldr r0, _0805D4C0 @ =sub_805D720
	str r5, [sp]
	movs r1, #0x34
	ldr r2, _0805D4B8 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #8]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	strh r5, [r2, #0x20]
	strh r7, [r2, #0x22]
	strh r5, [r2, #0x24]
	movs r3, #0x80
	lsls r3, r3, #1
	strh r3, [r2, #0xa]
	movs r0, #0x80
	strh r0, [r2, #0xc]
	movs r0, #9
	strh r0, [r2, #0xe]
	movs r4, #2
	strh r4, [r2, #0x10]
	movs r0, #0xf
	strh r0, [r2, #0x12]
	movs r0, #1
	strb r0, [r2, #0x16]
	strh r5, [r2, #8]
	ldr r3, _0805D4BC @ =0x03000028
	adds r0, r1, r3
	add r4, sp, #0x24
	ldrb r4, [r4]
	strb r4, [r0]
	adds r3, #1
	adds r0, r1, r3
	mov r4, sb
	strb r4, [r0]
	ldr r0, _0805D4C4 @ =0x0300002A
	adds r1, r1, r0
	mov r3, r8
	strb r3, [r1]
	mov r4, sl
	strh r4, [r2, #0x26]
	ldr r0, [sp, #0x20]
	str r0, [r2, #0x18]
	movs r1, #0
	str r1, [r2, #0x1c]
	ldr r0, _0805D4C8 @ =sub_805D8EC
	str r5, [sp]
	movs r1, #0x34
	ldr r2, _0805D4B8 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0x10]
	ldrh r1, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r2, r1, r3
	strh r5, [r2, #0x20]
	strh r7, [r2, #0x22]
	strh r5, [r2, #0x24]
	movs r4, #0x80
	lsls r4, r4, #1
	strh r4, [r2]
	strh r5, [r2, #2]
	strh r5, [r2, #4]
	strh r5, [r2, #6]
	movs r6, #0x39
	strh r6, [r2, #0xa]
	movs r0, #0x49
	strh r0, [r2, #0xc]
	movs r4, #3
	strh r4, [r2, #0xe]
	strh r4, [r2, #0x10]
	movs r0, #0xe
	strh r0, [r2, #0x12]
	movs r3, #1
	strb r3, [r2, #0x16]
	movs r0, #0x18
	strh r0, [r2, #8]
	ldr r0, _0805D4BC @ =0x03000028
	add r3, sp, #0x24
	ldrb r3, [r3]
	strb r3, [r0, r1]
	ldr r3, _0805D4CC @ =0x03000029
	adds r0, r1, r3
	mov r3, sb
	strb r3, [r0]
	ldr r0, _0805D4C4 @ =0x0300002A
	adds r1, r1, r0
	mov r3, r8
	strb r3, [r1]
	mov r0, sl
	strh r0, [r2, #0x26]
	ldr r1, [sp, #0x20]
	str r1, [r2, #0x18]
	movs r3, #0
	str r3, [r2, #0x1c]
	ldr r0, _0805D4D0 @ =sub_805DB04
	str r5, [sp]
	movs r1, #0x34
	ldr r2, _0805D4B8 @ =0x00002120
	bl TaskCreate
	str r0, [sp, #0x14]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	strh r5, [r2, #0x20]
	strh r7, [r2, #0x22]
	strh r5, [r2, #0x24]
	movs r3, #0x80
	lsls r3, r3, #1
	strh r3, [r2]
	strh r5, [r2, #2]
	strh r5, [r2, #4]
	movs r0, #1
	strh r0, [r2, #6]
	strh r6, [r2, #0xa]
	strh r6, [r2, #0xc]
	strh r4, [r2, #0xe]
	strh r4, [r2, #0x10]
	movs r3, #0xe
	strh r3, [r2, #0x12]
	strb r0, [r2, #0x16]
	movs r0, #0x10
	strh r0, [r2, #8]
	ldr r3, _0805D4BC @ =0x03000028
	add r0, sp, #0x24
	ldrb r0, [r0]
	strb r0, [r3, r1]
	adds r3, #1
	adds r0, r1, r3
	mov r3, sb
	strb r3, [r0]
	ldr r0, _0805D4C4 @ =0x0300002A
	adds r1, r1, r0
	mov r3, r8
	strb r3, [r1]
	mov r0, sl
	strh r0, [r2, #0x26]
	ldr r1, [sp, #0x20]
	str r1, [r2, #0x18]
	movs r3, #0
	str r3, [r2, #0x1c]
	ldr r0, _0805D4D4 @ =sub_805DD10
	str r5, [sp]
	movs r1, #0x34
	ldr r2, _0805D4B8 @ =0x00002120
	bl TaskCreate
	str r0, [sp, #0x18]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	strh r5, [r2, #0x20]
	strh r7, [r2, #0x22]
	strh r5, [r2, #0x24]
	movs r3, #0x80
	lsls r3, r3, #1
	strh r3, [r2]
	strh r5, [r2, #2]
	strh r5, [r2, #4]
	movs r0, #2
	strh r0, [r2, #6]
	strh r6, [r2, #0xa]
	strh r6, [r2, #0xc]
	strh r4, [r2, #0xe]
	strh r4, [r2, #0x10]
	movs r3, #0xe
	strh r3, [r2, #0x12]
	movs r0, #1
	strb r0, [r2, #0x16]
	movs r3, #8
	strh r3, [r2, #8]
	ldr r0, _0805D4BC @ =0x03000028
	add r3, sp, #0x24
	ldrb r3, [r3]
	strb r3, [r0, r1]
	ldr r3, _0805D4CC @ =0x03000029
	adds r0, r1, r3
	mov r3, sb
	strb r3, [r0]
	ldr r0, _0805D4C4 @ =0x0300002A
	adds r1, r1, r0
	mov r3, r8
	strb r3, [r1]
	mov r0, sl
	strh r0, [r2, #0x26]
	ldr r1, [sp, #0x20]
	str r1, [r2, #0x18]
	movs r3, #0
	str r3, [r2, #0x1c]
	ldr r0, _0805D4D8 @ =sub_805DF2C
	str r5, [sp]
	movs r1, #0x34
	ldr r2, _0805D4B8 @ =0x00002120
	bl TaskCreate
	str r0, [sp, #0x1c]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	strh r5, [r2, #0x20]
	strh r7, [r2, #0x22]
	strh r5, [r2, #0x24]
	movs r3, #0x80
	lsls r3, r3, #1
	strh r3, [r2]
	strh r5, [r2, #2]
	strh r5, [r2, #4]
	strh r4, [r2, #6]
	strh r6, [r2, #0xa]
	strh r6, [r2, #0xc]
	strh r4, [r2, #0xe]
	strh r4, [r2, #0x10]
	movs r4, #0xe
	strh r4, [r2, #0x12]
	movs r0, #1
	strb r0, [r2, #0x16]
	strh r5, [r2, #8]
	ldr r3, _0805D4BC @ =0x03000028
	adds r0, r1, r3
	add r4, sp, #0x24
	ldrb r4, [r4]
	strb r4, [r0]
	adds r3, #1
	adds r0, r1, r3
	mov r4, sb
	strb r4, [r0]
	ldr r0, _0805D4C4 @ =0x0300002A
	adds r1, r1, r0
	mov r3, r8
	strb r3, [r1]
	mov r4, sl
	strh r4, [r2, #0x26]
	ldr r0, [sp, #0x20]
	str r0, [r2, #0x18]
	movs r1, #0
	str r1, [r2, #0x1c]
	ldr r0, _0805D4DC @ =sub_805E018
	str r5, [sp]
	movs r1, #0x34
	ldr r2, _0805D4B8 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	adds r6, r0, #0
	ldrh r1, [r6, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r2, r1, r3
	strh r5, [r2, #0x20]
	strh r7, [r2, #0x22]
	strh r5, [r2, #0x24]
	strh r5, [r2, #0xa]
	movs r0, #0x29
	strh r0, [r2, #0xc]
	movs r4, #1
	strh r4, [r2, #0xe]
	movs r0, #4
	strh r0, [r2, #0x10]
	movs r0, #0xd
	strh r0, [r2, #0x12]
	movs r0, #1
	strb r0, [r2, #0x16]
	strh r5, [r2, #8]
	adds r3, #0x28
	adds r0, r1, r3
	add r4, sp, #0x24
	ldrb r4, [r4]
	strb r4, [r0]
	adds r3, #1
	adds r0, r1, r3
	mov r4, sb
	strb r4, [r0]
	ldr r0, _0805D4C4 @ =0x0300002A
	adds r1, r1, r0
	mov r3, r8
	strb r3, [r1]
	movs r4, #0
	mov r0, sl
	strh r0, [r2, #0x26]
	ldr r1, [sp, #0x20]
	str r1, [r2, #0x18]
	movs r3, #0
	str r3, [r2, #0x1c]
	ldr r0, _0805D4E0 @ =sub_805D4F0
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0805D4E4 @ =TaskDestructor_805E1E4
	str r1, [sp]
	movs r1, #0x2c
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	strh r5, [r0, #0x28]
	strh r7, [r0, #0x2a]
	ldr r2, [sp, #0xc]
	str r2, [r0, #0x1c]
	ldr r3, [sp, #8]
	str r3, [r0, #0x18]
	ldr r1, [sp, #0x10]
	str r1, [r0, #0xc]
	ldr r2, [sp, #0x14]
	str r2, [r0, #0x24]
	ldr r3, [sp, #0x18]
	str r3, [r0, #0x10]
	ldr r1, [sp, #0x1c]
	str r1, [r0, #0x14]
	str r6, [r0, #0x20]
	ldr r3, _0805D4E8 @ =sa2__gUnknown_03004D80
	strb r4, [r3]
	ldr r0, _0805D4EC @ =sa2__gUnknown_03002280
	strb r4, [r0]
	strb r4, [r0, #1]
	movs r1, #0xff
	strb r1, [r0, #2]
	movs r2, #0x20
	strb r2, [r0, #3]
	strb r4, [r3, #1]
	strb r4, [r0, #4]
	strb r4, [r0, #5]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #6]
	strb r2, [r0, #7]
	strb r4, [r3, #2]
	strb r4, [r0, #8]
	strb r4, [r0, #9]
	strb r1, [r0, #0xa]
	strb r2, [r0, #0xb]
	strb r4, [r3, #3]
	strb r4, [r0, #0xc]
	strb r4, [r0, #0xd]
	strb r1, [r0, #0xe]
	strb r2, [r0, #0xf]
	ldr r0, [sp, #4]
	bl sub_805C994
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805D4B4: .4byte sub_805D684
_0805D4B8: .4byte 0x00002120
_0805D4BC: .4byte 0x03000028
_0805D4C0: .4byte sub_805D720
_0805D4C4: .4byte 0x0300002A
_0805D4C8: .4byte sub_805D8EC
_0805D4CC: .4byte 0x03000029
_0805D4D0: .4byte sub_805DB04
_0805D4D4: .4byte sub_805DD10
_0805D4D8: .4byte sub_805DF2C
_0805D4DC: .4byte sub_805E018
_0805D4E0: .4byte sub_805D4F0
_0805D4E4: .4byte TaskDestructor_805E1E4
_0805D4E8: .4byte sa2__gUnknown_03004D80
_0805D4EC: .4byte sa2__gUnknown_03002280

	thumb_func_start sub_805D4F0
sub_805D4F0: @ 0x0805D4F0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _0805D5FC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r0, r1
	ldr r0, [r5, #0x1c]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov r8, r0
	ldr r0, [r5, #0x18]
	ldrh r3, [r0, #6]
	adds r3, r3, r1
	ldr r0, [r5, #0xc]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sb, r0
	ldr r0, [r5, #0x24]
	ldrh r0, [r0, #6]
	adds r7, r0, r1
	ldr r0, [r5, #0x10]
	ldrh r0, [r0, #6]
	adds r4, r0, r1
	ldr r0, [r5, #0x14]
	ldrh r0, [r0, #6]
	adds r6, r0, r1
	ldr r0, [r5, #0x20]
	ldrh r2, [r0, #6]
	adds r2, r2, r1
	ldrh r0, [r5, #0x28]
	mov r1, r8
	strh r0, [r1, #0x20]
	ldrh r0, [r5, #0x28]
	strh r0, [r3, #0x20]
	ldrh r0, [r5, #0x28]
	mov r1, sb
	strh r0, [r1, #0x20]
	ldrh r0, [r5, #0x28]
	strh r0, [r7, #0x20]
	ldrh r0, [r5, #0x28]
	strh r0, [r4, #0x20]
	ldrh r0, [r5, #0x28]
	strh r0, [r6, #0x20]
	ldrh r0, [r5, #0x28]
	strh r0, [r2, #0x20]
	movs r1, #0x28
	ldrsh r0, [r5, r1]
	cmp r0, #0xa9
	ble _0805D586
	ldrh r0, [r6, #0x26]
	cmp r0, #0
	beq _0805D576
	subs r0, #1
	strh r0, [r6, #0x26]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _0805D570
	strh r0, [r6, #0x26]
_0805D570:
	ldr r0, [r7, #0x1c]
	adds r0, #0x64
	str r0, [r7, #0x1c]
_0805D576:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0805D586
	subs r0, #0x64
	str r0, [r4, #0x18]
	ldr r0, [r7, #0x1c]
	adds r0, #0x64
	str r0, [r7, #0x1c]
_0805D586:
	ldrh r1, [r5, #0x2a]
	ldr r0, _0805D600 @ =0x00000267
	adds r1, r1, r0
	ldrh r0, [r5, #0x28]
	adds r0, #1
	strh r0, [r5, #0x28]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r5, #0x2a]
	cmp r1, r0
	bge _0805D62C
	ldr r7, _0805D604 @ =gPlayer
	movs r1, #0x48
	adds r1, r1, r7
	mov sb, r1
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	movs r0, #0x4a
	adds r0, r0, r7
	mov r8, r0
	ldrh r0, [r0]
	subs r0, #0x10
	mov r1, r8
	strh r0, [r1]
	ldr r1, _0805D608 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0805D60C @ =gBackgroundsCopyQueueCursor
	ldr r0, _0805D610 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0805D614 @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0805D618 @ =gVramGraphicsCopyCursor
	ldr r0, _0805D61C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r5, _0805D620 @ =gCourseTime
	ldr r6, [r5]
	bl CreateGameStage
	ldr r0, _0805D624 @ =gUnknown_03005058
	ldrh r0, [r0]
	mov r1, sb
	strh r0, [r1]
	ldr r0, _0805D628 @ =gMultiplayerUnlockedLevels
	ldrh r0, [r0]
	mov r1, r8
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x6e
	movs r0, #1
	strb r0, [r1]
	str r6, [r5]
	b _0805D674
	.align 2, 0
_0805D5FC: .4byte gCurTask
_0805D600: .4byte 0x00000267
_0805D604: .4byte gPlayer
_0805D608: .4byte 0x0000FFFF
_0805D60C: .4byte gBackgroundsCopyQueueCursor
_0805D610: .4byte gBackgroundsCopyQueueIndex
_0805D614: .4byte sa2__gUnknown_03005390
_0805D618: .4byte gVramGraphicsCopyCursor
_0805D61C: .4byte gVramGraphicsCopyQueueIndex
_0805D620: .4byte gCourseTime
_0805D624: .4byte gUnknown_03005058
_0805D628: .4byte gMultiplayerUnlockedLevels
_0805D62C:
	movs r0, #0x28
	ldrsh r1, [r5, r0]
	adds r0, r2, #0
	adds r0, #0xaa
	cmp r1, r0
	bne _0805D650
	mov r0, sb
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805D64A
	movs r0, #0x9a
	bl m4aSongNumStart
	b _0805D650
_0805D64A:
	movs r0, #0x8d      @ SE_STAGE_RESULT_COUNTER_DONE
	bl m4aSongNumStart
_0805D650:
	movs r1, #0x28
	ldrsh r0, [r5, r1]
	cmp r0, #0xaa
	ble _0805D674
	adds r1, r0, #0
	ldrh r0, [r5, #0x2a]
	adds r0, #0xaa
	cmp r1, r0
	bge _0805D674
	adds r0, r1, #0
	movs r1, #4
	bl Mod
	cmp r0, #0
	bne _0805D674
	movs r0, #0x8c      @ SE_STAGE_RESULT_COUNTER
	bl m4aSongNumStart
_0805D674:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_805D684
sub_805D684: @ 0x0805D684
	push {lr}
	ldr r0, _0805D6CC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	movs r0, #0x20
	ldrsh r1, [r2, r0]
	ldrh r0, [r2, #0x22]
	ldr r3, _0805D6D0 @ =0x00000221
	adds r0, r0, r3
	cmp r1, r0
	ble _0805D6D4
	ldrh r3, [r2, #0xa]
	movs r0, #0xa
	ldrsh r1, [r2, r0]
	movs r0, #0x20
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0805D6C2
	adds r0, r3, #0
	adds r0, #0x20
	strh r0, [r2, #0xa]
	ldrh r1, [r2, #0xe]
	movs r3, #0xe
	ldrsh r0, [r2, r3]
	cmp r0, #0
	beq _0805D6C2
	subs r0, r1, #1
	strh r0, [r2, #0xe]
_0805D6C2:
	ldrh r0, [r2, #0xa]
	subs r0, #0x1a
	strh r0, [r2, #0xa]
	b _0805D710
	.align 2, 0
_0805D6CC: .4byte gCurTask
_0805D6D0: .4byte 0x00000221
_0805D6D4:
	cmp r1, #0x31
	ble _0805D6DE
	movs r0, #0x11
	strh r0, [r2, #0xc]
	b _0805D710
_0805D6DE:
	cmp r1, #0x21
	ble _0805D6EA
	ldrh r0, [r2, #0xc]
	subs r0, #6
	strh r0, [r2, #0xc]
	b _0805D710
_0805D6EA:
	cmp r1, #0x19
	ble _0805D6F8
	ldr r0, _0805D6F4 @ =0x0000FFF0
	strh r0, [r2, #0xa]
	b _0805D710
	.align 2, 0
_0805D6F4: .4byte 0x0000FFF0
_0805D6F8:
	cmp r1, #0xf
	ble _0805D710
	ldrh r0, [r2, #0xa]
	subs r0, #0x1a
	strh r0, [r2, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x10
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0805D710
	strh r1, [r2, #0xa]
_0805D710:
	ldr r0, _0805D71C @ =gUnknown_08688658
	adds r1, r2, #0
	bl sub_8052F78
	pop {r0}
	bx r0
	.align 2, 0
_0805D71C: .4byte gUnknown_08688658

	thumb_func_start sub_805D720
sub_805D720: @ 0x0805D720
	push {r4, lr}
	sub sp, #0x20
	ldr r1, _0805D770 @ =gUnknown_08688664
	mov r0, sp
	movs r2, #0x1f
	bl memcpy
	ldr r0, _0805D774 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r0, #0x20
	ldrsh r1, [r4, r0]
	ldrh r0, [r4, #0x22]
	ldr r2, _0805D778 @ =0x00000221
	adds r0, r0, r2
	cmp r1, r0
	ble _0805D77C
	ldrh r0, [r4, #0xa]
	subs r0, #0x1c
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x1f
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0805D7CA
	ldrh r1, [r4, #0xe]
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _0805D768
	subs r0, r1, #1
	strh r0, [r4, #0xe]
_0805D768:
	ldrh r0, [r4, #0xa]
	adds r0, #0x20
	b _0805D7BC
	.align 2, 0
_0805D770: .4byte gUnknown_08688664
_0805D774: .4byte gCurTask
_0805D778: .4byte 0x00000221
_0805D77C:
	cmp r1, #0x31
	ble _0805D78C
	movs r0, #0x13
	strh r0, [r4, #0xc]
	ldrh r2, [r4, #0xa]
	subs r0, r2, #2
	strh r0, [r4, #0xa]
	b _0805D7AC
_0805D78C:
	cmp r1, #0x21
	ble _0805D79E
	ldrh r0, [r4, #0xc]
	subs r0, #6
	strh r0, [r4, #0xc]
	ldrh r2, [r4, #0xa]
	subs r0, r2, #2
	strh r0, [r4, #0xa]
	b _0805D7AC
_0805D79E:
	cmp r1, #0x19
	ble _0805D7D6
	ldrh r2, [r4, #0xa]
	subs r0, r2, #2
	strh r0, [r4, #0xa]
	movs r1, #9
	strh r1, [r4, #0xe]
_0805D7AC:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x1f
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0805D7CA
	adds r0, r2, #0
	adds r0, #0x1e
_0805D7BC:
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0x24]
	adds r0, #1
	movs r1, #0xa
	bl Mod
	strh r0, [r4, #0x24]
_0805D7CA:
	ldrh r0, [r4, #0x24]
	add r0, sp
	adds r1, r4, #0
	bl sub_8052F78
	b _0805D814
_0805D7D6:
	cmp r1, #0xf
	ble _0805D814
	ldrh r3, [r4, #0xa]
	adds r0, r3, #0
	subs r0, #0x1c
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0xef
	bgt _0805D814
	asrs r0, r0, #0x15
	movs r1, #9
	subs r1, r1, r0
	strh r1, [r4, #0xe]
	movs r0, #0x1f
	rsbs r0, r0, #0
	cmp r2, r0
	bge _0805D80A
	adds r0, r3, #4
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0x24]
	adds r0, #1
	movs r1, #0xa
	bl Mod
	strh r0, [r4, #0x24]
_0805D80A:
	ldrh r0, [r4, #0x24]
	add r0, sp
	adds r1, r4, #0
	bl sub_8052F78
_0805D814:
	add sp, #0x20
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_805D81C
sub_805D81C: @ 0x0805D81C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0805D858 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r7, [r4, #0xa]
	ldrh r0, [r4, #0xc]
	mov r8, r0
	ldrh r1, [r4, #0x20]
	ldrh r2, [r4, #0x22]
	ldr r3, _0805D85C @ =0x0000022E
	adds r0, r2, r3
	cmp r1, r0
	bgt _0805D8E2
	subs r3, #0xd
	adds r0, r2, r3
	cmp r1, r0
	ble _0805D864
	ldr r0, _0805D860 @ =0xFFFFFDDF
	adds r1, r1, r0
	subs r1, r1, r2
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #0x12
	lsrs r6, r0, #0x10
	b _0805D866
	.align 2, 0
_0805D858: .4byte gCurTask
_0805D85C: .4byte 0x0000022E
_0805D860: .4byte 0xFFFFFDDF
_0805D864:
	movs r6, #0
_0805D866:
	movs r0, #3
	bl sub_805C900
	movs r5, #0
	adds r1, r4, #0
	adds r1, #0x2b
	ldrb r0, [r1]
	cmp r0, #0x20
	bne _0805D88A
_0805D878:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #6
	bhi _0805D88A
	adds r0, r1, r5
	ldrb r0, [r0]
	cmp r0, #0x20
	beq _0805D878
_0805D88A:
	ldrh r1, [r4, #2]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _0805D8B4
	movs r0, #0x7e
	strh r0, [r4, #0xc]
	movs r0, #1
	strh r0, [r4, #0xe]
	movs r1, #0xb3
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r4, #0xa]
	adds r0, r5, #0
	adds r0, #0x2b
	adds r0, r4, r0
	adds r1, r4, #0
	bl sub_8052F78
	b _0805D8DC
_0805D8B4:
	ldrh r0, [r4, #2]
	movs r1, #0x19
	bl Div
	ldrh r2, [r4, #2]
	lsrs r2, r2, #4
	movs r1, #0x8f
	subs r1, r1, r2
	subs r1, r1, r0
	strh r1, [r4, #0xc]
	movs r0, #1
	strh r0, [r4, #0xe]
	movs r0, #0xa3
	strh r0, [r4, #0xa]
	adds r0, r5, #0
	adds r0, #0x2b
	adds r0, r4, r0
	adds r1, r4, #0
	bl sub_8052C84
_0805D8DC:
	strh r7, [r4, #0xa]
	mov r3, r8
	strh r3, [r4, #0xc]
_0805D8E2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_805D8EC
sub_805D8EC: @ 0x0805D8EC
	push {r4, lr}
	ldr r0, _0805D948 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r3, r0, r1
	ldrh r1, [r3, #0x20]
	ldr r2, _0805D94C @ =0x0300002A
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805D9DA
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	ldrh r2, [r3, #0x22]
	adds r0, r2, #0
	adds r0, #0xaa
	cmp r1, r0
	blt _0805D9DA
	movs r0, #3
	strh r0, [r3, #0xe]
	strh r0, [r3, #0x10]
	movs r0, #0xe
	strh r0, [r3, #0x12]
	ldr r4, _0805D950 @ =0x00000221
	adds r0, r2, r4
	cmp r1, r0
	ble _0805D968
	movs r0, #0x81
	strh r0, [r3, #0xc]
	ldrh r0, [r3, #0xa]
	subs r0, #0x1c
	strh r0, [r3, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0805D958
	movs r0, #0
	strh r0, [r3, #0xe]
	ldr r0, _0805D954 @ =0x0000FF80
	strh r0, [r3, #0xa]
	b _0805D9AC
	.align 2, 0
_0805D948: .4byte gCurTask
_0805D94C: .4byte 0x0300002A
_0805D950: .4byte 0x00000221
_0805D954: .4byte 0x0000FF80
_0805D958:
	ldr r0, _0805D964 @ =gUnknown_08688684
	adds r1, r3, #0
	bl sub_8052F78
	b _0805D9AC
	.align 2, 0
_0805D964: .4byte gUnknown_08688684
_0805D968:
	cmp r1, #0x27
	ble _0805D9B8
	ldrh r0, [r3, #2]
	adds r0, #0x20
	strh r0, [r3, #2]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0xff
	bls _0805D998
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #2]
	movs r0, #0x29
	strh r0, [r3, #0xa]
	movs r0, #0x81
	strh r0, [r3, #0xc]
	ldr r0, _0805D994 @ =gUnknown_08688684
	adds r1, r3, #0
	bl sub_8052F78
	b _0805D9AC
	.align 2, 0
_0805D994: .4byte gUnknown_08688684
_0805D998:
	movs r0, #0x19
	strh r0, [r3, #0xa]
	lsrs r1, r1, #0x14
	movs r0, #0x8b
	subs r0, r0, r1
	strh r0, [r3, #0xc]
	ldr r0, _0805D9B4 @ =gUnknown_08688684
	adds r1, r3, #0
	bl sub_8052C84
_0805D9AC:
	bl sub_805D81C
	b _0805D9DA
	.align 2, 0
_0805D9B4: .4byte gUnknown_08688684
_0805D9B8:
	cmp r1, #0x21
	ble _0805D9DA
	movs r0, #0x19
	strh r0, [r3, #0xa]
	ldrh r1, [r3, #2]
	lsrs r2, r1, #4
	movs r0, #0x8b
	subs r0, r0, r2
	strh r0, [r3, #0xc]
	adds r1, #0x20
	strh r1, [r3, #2]
	ldr r0, _0805D9E0 @ =gUnknown_08688684
	adds r1, r3, #0
	bl sub_8052C84
	bl sub_805D81C
_0805D9DA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805D9E0: .4byte gUnknown_08688684

	thumb_func_start sub_805D9E4
sub_805D9E4: @ 0x0805D9E4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0805DA20 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r7, [r4, #0xa]
	ldrh r0, [r4, #0xc]
	mov r8, r0
	ldrh r1, [r4, #0x20]
	ldrh r2, [r4, #0x22]
	ldr r3, _0805DA24 @ =0x0000022E
	adds r0, r2, r3
	cmp r1, r0
	bgt _0805DAF6
	subs r3, #0xd
	adds r0, r2, r3
	cmp r1, r0
	ble _0805DA2C
	ldr r0, _0805DA28 @ =0xFFFFFDDF
	adds r1, r1, r0
	subs r1, r1, r2
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #0x12
	lsrs r6, r0, #0x10
	b _0805DA2E
	.align 2, 0
_0805DA20: .4byte gCurTask
_0805DA24: .4byte 0x0000022E
_0805DA28: .4byte 0xFFFFFDDF
_0805DA2C:
	movs r6, #0
_0805DA2E:
	movs r0, #6
	strh r0, [r4, #0x10]
	movs r0, #9
	strh r0, [r4, #0x12]
	movs r0, #2
	bl sub_805C900
	movs r5, #0
	adds r1, r4, #0
	adds r1, #0x2b
	ldrb r0, [r1]
	cmp r0, #0x20
	bne _0805DA5A
_0805DA48:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #6
	bhi _0805DA5A
	adds r0, r1, r5
	ldrb r0, [r0]
	cmp r0, #0x20
	beq _0805DA48
_0805DA5A:
	ldrh r1, [r4, #2]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _0805DAA8
	movs r0, #0x6a
	strh r0, [r4, #0xc]
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0805DA8A
	movs r2, #7
	subs r2, r2, r5
	strh r2, [r4, #0xe]
	movs r1, #0xc3
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r2, r2, #3
	subs r1, r1, r2
	strh r1, [r4, #0xa]
	adds r0, r5, #0
	adds r0, #0x2b
	adds r0, r4, r0
	b _0805DA9A
_0805DA8A:
	movs r0, #1
	strh r0, [r4, #0xe]
	movs r1, #0xbb
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r4, #0xa]
	ldr r0, _0805DAA4 @ =gUnknown_08688688
_0805DA9A:
	adds r1, r4, #0
	bl sub_8052F78
	b _0805DAF0
	.align 2, 0
_0805DAA4: .4byte gUnknown_08688688
_0805DAA8:
	ldrh r0, [r4, #2]
	movs r1, #0x19
	bl Div
	ldrh r2, [r4, #2]
	lsrs r2, r2, #4
	movs r1, #0x77
	subs r1, r1, r2
	subs r1, r1, r0
	strh r1, [r4, #0xc]
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0805DAE0
	movs r0, #7
	subs r0, r0, r5
	strh r0, [r4, #0xe]
	movs r1, #6
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x8f
	strh r1, [r4, #0xa]
	adds r0, r5, #0
	adds r0, #0x2b
	adds r0, r4, r0
	adds r1, r4, #0
	bl sub_8052C84
	b _0805DAF0
_0805DAE0:
	movs r0, #1
	strh r0, [r4, #0xe]
	movs r0, #0xb7
	strh r0, [r4, #0xa]
	ldr r0, _0805DB00 @ =gUnknown_08688688
	adds r1, r4, #0
	bl sub_8052C84
_0805DAF0:
	strh r7, [r4, #0xa]
	mov r3, r8
	strh r3, [r4, #0xc]
_0805DAF6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805DB00: .4byte gUnknown_08688688

	thumb_func_start sub_805DB04
sub_805DB04: @ 0x0805DB04
	push {lr}
	ldr r0, _0805DB4C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldrh r1, [r3, #0x20]
	movs r0, #3
	strh r0, [r3, #0xe]
	strh r0, [r3, #0x10]
	movs r0, #0xe
	strh r0, [r3, #0x12]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r3, #0x22]
	ldr r2, _0805DB50 @ =0x00000221
	adds r0, r0, r2
	cmp r1, r0
	ble _0805DB68
	movs r0, #0x6d
	strh r0, [r3, #0xc]
	ldrh r0, [r3, #0xa]
	subs r0, #0x1c
	strh r0, [r3, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0805DB58
	movs r0, #0
	strh r0, [r3, #0xe]
	ldr r0, _0805DB54 @ =0x0000FF80
	strh r0, [r3, #0xa]
	b _0805DBAC
	.align 2, 0
_0805DB4C: .4byte gCurTask
_0805DB50: .4byte 0x00000221
_0805DB54: .4byte 0x0000FF80
_0805DB58:
	ldr r0, _0805DB64 @ =gUnknown_0868868C
	adds r1, r3, #0
	bl sub_8052F78
	b _0805DBAC
	.align 2, 0
_0805DB64: .4byte gUnknown_0868868C
_0805DB68:
	cmp r1, #0x2d
	ble _0805DBB8
	ldrh r0, [r3, #2]
	adds r0, #0x20
	strh r0, [r3, #2]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0xff
	bls _0805DB98
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #2]
	movs r0, #0x29
	strh r0, [r3, #0xa]
	movs r0, #0x6d
	strh r0, [r3, #0xc]
	ldr r0, _0805DB94 @ =gUnknown_0868868C
	adds r1, r3, #0
	bl sub_8052F78
	b _0805DBAC
	.align 2, 0
_0805DB94: .4byte gUnknown_0868868C
_0805DB98:
	movs r0, #0x19
	strh r0, [r3, #0xa]
	lsrs r1, r1, #0x14
	movs r0, #0x77
	subs r0, r0, r1
	strh r0, [r3, #0xc]
	ldr r0, _0805DBB4 @ =gUnknown_0868868C
	adds r1, r3, #0
	bl sub_8052C84
_0805DBAC:
	bl sub_805D9E4
	b _0805DBE8
	.align 2, 0
_0805DBB4: .4byte gUnknown_0868868C
_0805DBB8:
	cmp r1, #0x27
	ble _0805DBE8
	movs r0, #0x19
	strh r0, [r3, #0xa]
	ldrh r1, [r3, #2]
	lsrs r2, r1, #4
	movs r0, #0x77
	subs r0, r0, r2
	strh r0, [r3, #0xc]
	adds r1, #0x20
	strh r1, [r3, #2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xff
	bls _0805DBDC
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #2]
_0805DBDC:
	ldr r0, _0805DBEC @ =gUnknown_0868868C
	adds r1, r3, #0
	bl sub_8052C84
	bl sub_805D9E4
_0805DBE8:
	pop {r0}
	bx r0
	.align 2, 0
_0805DBEC: .4byte gUnknown_0868868C

	thumb_func_start sub_805DBF0
sub_805DBF0: @ 0x0805DBF0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0805DC2C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r7, [r4, #0xa]
	ldrh r0, [r4, #0xc]
	mov r8, r0
	ldrh r1, [r4, #0x20]
	ldrh r2, [r4, #0x22]
	ldr r3, _0805DC30 @ =0x0000022E
	adds r0, r2, r3
	cmp r1, r0
	bgt _0805DD02
	subs r3, #0xd
	adds r0, r2, r3
	cmp r1, r0
	ble _0805DC38
	ldr r0, _0805DC34 @ =0xFFFFFDDF
	adds r1, r1, r0
	subs r1, r1, r2
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #0x12
	lsrs r6, r0, #0x10
	b _0805DC3A
	.align 2, 0
_0805DC2C: .4byte gCurTask
_0805DC30: .4byte 0x0000022E
_0805DC34: .4byte 0xFFFFFDDF
_0805DC38:
	movs r6, #0
_0805DC3A:
	movs r0, #6
	strh r0, [r4, #0x10]
	movs r0, #9
	strh r0, [r4, #0x12]
	movs r0, #1
	bl sub_805C900
	movs r5, #0
	adds r1, r4, #0
	adds r1, #0x2b
	ldrb r0, [r1]
	cmp r0, #0x20
	bne _0805DC66
_0805DC54:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #6
	bhi _0805DC66
	adds r0, r1, r5
	ldrb r0, [r0]
	cmp r0, #0x20
	beq _0805DC54
_0805DC66:
	ldrh r1, [r4, #2]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _0805DCB4
	movs r0, #0x58
	strh r0, [r4, #0xc]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0805DC96
	movs r2, #7
	subs r2, r2, r5
	strh r2, [r4, #0xe]
	movs r1, #0xc3
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r2, r2, #3
	subs r1, r1, r2
	strh r1, [r4, #0xa]
	adds r0, r5, #0
	adds r0, #0x2b
	adds r0, r4, r0
	b _0805DCA6
_0805DC96:
	movs r0, #1
	strh r0, [r4, #0xe]
	movs r1, #0xbb
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r4, #0xa]
	ldr r0, _0805DCB0 @ =gUnknown_08688688
_0805DCA6:
	adds r1, r4, #0
	bl sub_8052F78
	b _0805DCFC
	.align 2, 0
_0805DCB0: .4byte gUnknown_08688688
_0805DCB4:
	ldrh r0, [r4, #2]
	movs r1, #0x19
	bl Div
	ldrh r2, [r4, #2]
	lsrs r2, r2, #4
	movs r1, #0x65
	subs r1, r1, r2
	subs r1, r1, r0
	strh r1, [r4, #0xc]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0805DCEC
	movs r0, #7
	subs r0, r0, r5
	strh r0, [r4, #0xe]
	movs r1, #6
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x8f
	strh r1, [r4, #0xa]
	adds r0, r5, #0
	adds r0, #0x2b
	adds r0, r4, r0
	adds r1, r4, #0
	bl sub_8052C84
	b _0805DCFC
_0805DCEC:
	movs r0, #1
	strh r0, [r4, #0xe]
	movs r0, #0xb7
	strh r0, [r4, #0xa]
	ldr r0, _0805DD0C @ =gUnknown_08688688
	adds r1, r4, #0
	bl sub_8052C84
_0805DCFC:
	strh r7, [r4, #0xa]
	mov r3, r8
	strh r3, [r4, #0xc]
_0805DD02:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805DD0C: .4byte gUnknown_08688688

	thumb_func_start sub_805DD10
sub_805DD10: @ 0x0805DD10
	push {lr}
	ldr r0, _0805DD64 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r3, r0, r1
	ldrh r1, [r3, #0x20]
	ldr r2, _0805DD68 @ =0x03000028
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805DE04
	movs r0, #3
	strh r0, [r3, #0xe]
	strh r0, [r3, #0x10]
	movs r0, #0xe
	strh r0, [r3, #0x12]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	ldrh r0, [r3, #0x22]
	ldr r2, _0805DD6C @ =0x00000221
	adds r0, r0, r2
	cmp r1, r0
	ble _0805DD84
	movs r0, #0x5b
	strh r0, [r3, #0xc]
	ldrh r0, [r3, #0xa]
	subs r0, #0x1c
	strh r0, [r3, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0805DD74
	movs r0, #0
	strh r0, [r3, #0xe]
	ldr r0, _0805DD70 @ =0x0000FF80
	strh r0, [r3, #0xa]
	b _0805DDC8
	.align 2, 0
_0805DD64: .4byte gCurTask
_0805DD68: .4byte 0x03000028
_0805DD6C: .4byte 0x00000221
_0805DD70: .4byte 0x0000FF80
_0805DD74:
	ldr r0, _0805DD80 @ =gUnknown_08688690
	adds r1, r3, #0
	bl sub_8052F78
	b _0805DDC8
	.align 2, 0
_0805DD80: .4byte gUnknown_08688690
_0805DD84:
	cmp r1, #0x33
	ble _0805DDD4
	ldrh r0, [r3, #2]
	adds r0, #0x20
	strh r0, [r3, #2]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0xff
	bls _0805DDB4
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #2]
	movs r0, #0x29
	strh r0, [r3, #0xa]
	movs r0, #0x5b
	strh r0, [r3, #0xc]
	ldr r0, _0805DDB0 @ =gUnknown_08688690
	adds r1, r3, #0
	bl sub_8052F78
	b _0805DDC8
	.align 2, 0
_0805DDB0: .4byte gUnknown_08688690
_0805DDB4:
	movs r0, #0x19
	strh r0, [r3, #0xa]
	lsrs r1, r1, #0x14
	movs r0, #0x65
	subs r0, r0, r1
	strh r0, [r3, #0xc]
	ldr r0, _0805DDD0 @ =gUnknown_08688690
	adds r1, r3, #0
	bl sub_8052C84
_0805DDC8:
	bl sub_805DBF0
	b _0805DE04
	.align 2, 0
_0805DDD0: .4byte gUnknown_08688690
_0805DDD4:
	cmp r1, #0x2d
	ble _0805DE04
	movs r0, #0x19
	strh r0, [r3, #0xa]
	ldrh r1, [r3, #2]
	lsrs r2, r1, #4
	movs r0, #0x65
	subs r0, r0, r2
	strh r0, [r3, #0xc]
	adds r1, #0x20
	strh r1, [r3, #2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xff
	bls _0805DDF8
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #2]
_0805DDF8:
	ldr r0, _0805DE08 @ =gUnknown_08688690
	adds r1, r3, #0
	bl sub_8052C84
	bl sub_805DBF0
_0805DE04:
	pop {r0}
	bx r0
	.align 2, 0
_0805DE08: .4byte gUnknown_08688690

	thumb_func_start sub_805DE0C
sub_805DE0C: @ 0x0805DE0C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0805DE48 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r7, [r4, #0xa]
	ldrh r0, [r4, #0xc]
	mov r8, r0
	ldrh r1, [r4, #0x20]
	ldrh r2, [r4, #0x22]
	ldr r3, _0805DE4C @ =0x0000022E
	adds r0, r2, r3
	cmp r1, r0
	bgt _0805DF1E
	subs r3, #0xd
	adds r0, r2, r3
	cmp r1, r0
	ble _0805DE54
	ldr r0, _0805DE50 @ =0xFFFFFDDF
	adds r1, r1, r0
	subs r1, r1, r2
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #0x12
	lsrs r6, r0, #0x10
	b _0805DE56
	.align 2, 0
_0805DE48: .4byte gCurTask
_0805DE4C: .4byte 0x0000022E
_0805DE50: .4byte 0xFFFFFDDF
_0805DE54:
	movs r6, #0
_0805DE56:
	movs r0, #6
	strh r0, [r4, #0x10]
	movs r0, #9
	strh r0, [r4, #0x12]
	movs r0, #0
	bl sub_805C900
	movs r5, #0
	adds r1, r4, #0
	adds r1, #0x2b
	ldrb r0, [r1]
	cmp r0, #0x20
	bne _0805DE82
_0805DE70:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #6
	bhi _0805DE82
	adds r0, r1, r5
	ldrb r0, [r0]
	cmp r0, #0x20
	beq _0805DE70
_0805DE82:
	ldrh r1, [r4, #2]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _0805DED0
	movs r0, #0x46
	strh r0, [r4, #0xc]
	ldrh r0, [r4, #0x26]
	cmp r0, #0
	beq _0805DEB2
	movs r2, #7
	subs r2, r2, r5
	strh r2, [r4, #0xe]
	movs r1, #0xc3
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r2, r2, #3
	subs r1, r1, r2
	strh r1, [r4, #0xa]
	adds r0, r5, #0
	adds r0, #0x2b
	adds r0, r4, r0
	b _0805DEC2
_0805DEB2:
	movs r0, #1
	strh r0, [r4, #0xe]
	movs r1, #0xbb
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r4, #0xa]
	ldr r0, _0805DECC @ =gUnknown_08688688
_0805DEC2:
	adds r1, r4, #0
	bl sub_8052F78
	b _0805DF18
	.align 2, 0
_0805DECC: .4byte gUnknown_08688688
_0805DED0:
	ldrh r0, [r4, #2]
	movs r1, #0x19
	bl Div
	ldrh r2, [r4, #2]
	lsrs r2, r2, #4
	movs r1, #0x53
	subs r1, r1, r2
	subs r1, r1, r0
	strh r1, [r4, #0xc]
	ldrh r0, [r4, #0x26]
	cmp r0, #0
	beq _0805DF08
	movs r0, #7
	subs r0, r0, r5
	strh r0, [r4, #0xe]
	movs r1, #6
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x8f
	strh r1, [r4, #0xa]
	adds r0, r5, #0
	adds r0, #0x2b
	adds r0, r4, r0
	adds r1, r4, #0
	bl sub_8052C84
	b _0805DF18
_0805DF08:
	movs r0, #1
	strh r0, [r4, #0xe]
	movs r0, #0xb7
	strh r0, [r4, #0xa]
	ldr r0, _0805DF28 @ =gUnknown_08688688
	adds r1, r4, #0
	bl sub_8052C84
_0805DF18:
	strh r7, [r4, #0xa]
	mov r3, r8
	strh r3, [r4, #0xc]
_0805DF1E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805DF28: .4byte gUnknown_08688688

	thumb_func_start sub_805DF2C
sub_805DF2C: @ 0x0805DF2C
	push {lr}
	ldr r0, _0805DF74 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldrh r1, [r3, #0x20]
	movs r0, #3
	strh r0, [r3, #0xe]
	strh r0, [r3, #0x10]
	movs r0, #0xe
	strh r0, [r3, #0x12]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r3, #0x22]
	ldr r2, _0805DF78 @ =0x00000221
	adds r0, r0, r2
	cmp r1, r0
	ble _0805DF90
	movs r0, #0x49
	strh r0, [r3, #0xc]
	ldrh r0, [r3, #0xa]
	subs r0, #0x1c
	strh r0, [r3, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0805DF80
	movs r0, #0
	strh r0, [r3, #0xe]
	ldr r0, _0805DF7C @ =0x0000FF80
	strh r0, [r3, #0xa]
	b _0805DFD4
	.align 2, 0
_0805DF74: .4byte gCurTask
_0805DF78: .4byte 0x00000221
_0805DF7C: .4byte 0x0000FF80
_0805DF80:
	ldr r0, _0805DF8C @ =gUnknown_08688694
	adds r1, r3, #0
	bl sub_8052F78
	b _0805DFD4
	.align 2, 0
_0805DF8C: .4byte gUnknown_08688694
_0805DF90:
	cmp r1, #0x39
	ble _0805DFE0
	ldrh r0, [r3, #2]
	adds r0, #0x20
	strh r0, [r3, #2]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0xff
	bls _0805DFC0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #2]
	movs r0, #0x29
	strh r0, [r3, #0xa]
	movs r0, #0x49
	strh r0, [r3, #0xc]
	ldr r0, _0805DFBC @ =gUnknown_08688694
	adds r1, r3, #0
	bl sub_8052F78
	b _0805DFD4
	.align 2, 0
_0805DFBC: .4byte gUnknown_08688694
_0805DFC0:
	movs r0, #0x19
	strh r0, [r3, #0xa]
	lsrs r1, r1, #0x14
	movs r0, #0x53
	subs r0, r0, r1
	strh r0, [r3, #0xc]
	ldr r0, _0805DFDC @ =gUnknown_08688694
	adds r1, r3, #0
	bl sub_8052C84
_0805DFD4:
	bl sub_805DE0C
	b _0805E010
	.align 2, 0
_0805DFDC: .4byte gUnknown_08688694
_0805DFE0:
	cmp r1, #0x33
	ble _0805E010
	movs r0, #0x19
	strh r0, [r3, #0xa]
	ldrh r1, [r3, #2]
	lsrs r2, r1, #4
	movs r0, #0x53
	subs r0, r0, r2
	strh r0, [r3, #0xc]
	adds r1, #0x20
	strh r1, [r3, #2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xff
	bls _0805E004
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #2]
_0805E004:
	ldr r0, _0805E014 @ =gUnknown_08688694
	adds r1, r3, #0
	bl sub_8052C84
	bl sub_805DE0C
_0805E010:
	pop {r0}
	bx r0
	.align 2, 0
_0805E014: .4byte gUnknown_08688694

	thumb_func_start sub_805E018
sub_805E018: @ 0x0805E018
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0805E088 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	ldrh r1, [r6, #0x20]
	ldrh r2, [r6, #0x22]
	ldr r4, _0805E08C @ =0x00000221
	adds r0, r2, r4
	cmp r1, r0
	ble _0805E0C4
	ldr r3, _0805E090 @ =0xFFFFFDDF
	adds r0, r1, r3
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #0x12
	movs r7, #0
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	subs r4, r0, #5
_0805E050:
	lsls r1, r7, #5
	subs r0, r1, r4
	strh r0, [r6, #0xa]
	subs r0, r5, #5
	subs r1, r1, r0
	movs r0, #0x20
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0805E0B4
	adds r0, r6, #0
	adds r0, #0x29
	ldrb r0, [r0]
	asrs r0, r7
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _0805E0A8
	lsrs r0, r7, #1
	movs r1, #0xd
	subs r1, r1, r0
	strh r1, [r6, #0x12]
	adds r0, r7, #0
	ands r0, r2
	cmp r0, #0
	beq _0805E098
	ldr r0, _0805E094 @ =gUnknown_08688698
	b _0805E09A
	.align 2, 0
_0805E088: .4byte gCurTask
_0805E08C: .4byte 0x00000221
_0805E090: .4byte 0xFFFFFDDF
_0805E094: .4byte gUnknown_08688698
_0805E098:
	ldr r0, _0805E0A4 @ =gUnknown_08688688
_0805E09A:
	adds r1, r6, #0
	bl sub_8052F78
	b _0805E0B4
	.align 2, 0
_0805E0A4: .4byte gUnknown_08688688
_0805E0A8:
	movs r0, #0xb
	strh r0, [r6, #0x12]
	ldr r0, _0805E0C0 @ =gUnknown_0868869C
	adds r1, r6, #0
	bl sub_8052F78
_0805E0B4:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #6
	bls _0805E050
	b _0805E1D2
	.align 2, 0
_0805E0C0: .4byte gUnknown_0868869C
_0805E0C4:
	cmp r1, #0x86
	bls _0805E128
	movs r7, #0
	ldr r4, _0805E0F4 @ =0x03000029
	adds r5, r3, r4
	movs r4, #1
_0805E0D0:
	lsls r0, r7, #5
	adds r0, #5
	strh r0, [r6, #0xa]
	ldrb r0, [r5]
	asrs r0, r7
	ands r0, r4
	cmp r0, #0
	beq _0805E10C
	lsrs r0, r7, #1
	movs r1, #0xd
	subs r1, r1, r0
	strh r1, [r6, #0x12]
	adds r0, r7, #0
	ands r0, r4
	cmp r0, #0
	beq _0805E0FC
	ldr r0, _0805E0F8 @ =gUnknown_08688698
	b _0805E0FE
	.align 2, 0
_0805E0F4: .4byte 0x03000029
_0805E0F8: .4byte gUnknown_08688698
_0805E0FC:
	ldr r0, _0805E108 @ =gUnknown_08688688
_0805E0FE:
	adds r1, r6, #0
	bl sub_8052F78
	b _0805E118
	.align 2, 0
_0805E108: .4byte gUnknown_08688688
_0805E10C:
	movs r0, #0xb
	strh r0, [r6, #0x12]
	ldr r0, _0805E124 @ =gUnknown_0868869C
	adds r1, r6, #0
	bl sub_8052F78
_0805E118:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #6
	bls _0805E0D0
	b _0805E1D2
	.align 2, 0
_0805E124: .4byte gUnknown_0868869C
_0805E128:
	cmp r1, #0x31
	bls _0805E1D2
	movs r7, #0
	subs r1, #0x31
	mov sb, r1
	ldr r0, _0805E1A4 @ =gSineTable
	mov r8, r0
_0805E136:
	mov r1, sb
	lsls r0, r1, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r7, #2
	adds r0, r0, r7
	cmp r5, r0
	blt _0805E1C8
	subs r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x32
	bls _0805E150
	movs r5, #0x32
_0805E150:
	movs r0, #0x80
	lsls r0, r0, #2
	add r0, r8
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r1, #0x50
	bl Div
	adds r4, r0, #0
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0x50
	bl Div
	lsls r1, r7, #5
	adds r4, #5
	adds r1, r1, r4
	subs r1, r1, r0
	strh r1, [r6, #0xa]
	adds r0, r6, #0
	adds r0, #0x29
	ldrb r0, [r0]
	asrs r0, r7
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _0805E1BC
	lsrs r0, r7, #1
	movs r1, #0xd
	subs r1, r1, r0
	strh r1, [r6, #0x12]
	adds r0, r7, #0
	ands r0, r2
	cmp r0, #0
	beq _0805E1AC
	ldr r0, _0805E1A8 @ =gUnknown_08688698
	b _0805E1AE
	.align 2, 0
_0805E1A4: .4byte gSineTable
_0805E1A8: .4byte gUnknown_08688698
_0805E1AC:
	ldr r0, _0805E1B8 @ =gUnknown_08688688
_0805E1AE:
	adds r1, r6, #0
	bl sub_8052F78
	b _0805E1C8
	.align 2, 0
_0805E1B8: .4byte gUnknown_08688688
_0805E1BC:
	movs r0, #0xb
	strh r0, [r6, #0x12]
	ldr r0, _0805E1E0 @ =gUnknown_0868869C
	adds r1, r6, #0
	bl sub_8052F78
_0805E1C8:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #6
	bls _0805E136
_0805E1D2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805E1E0: .4byte gUnknown_0868869C

    thumb_func_start TaskDestructor_805E1E4
TaskDestructor_805E1E4: @ 0x0805E1E4
    bx lr
    .align 2, 0

	thumb_func_start sub_805E1E8
sub_805E1E8: @ 0x0805E1E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	mov r7, sp
	adds r7, #0x2b
	movs r0, #8
	strb r0, [r7]
	add r4, sp, #0x2c
	movs r0, #0x3b
	strb r0, [r4]
	mov r6, sp
	adds r6, #0x2a
	movs r0, #0xd
	strb r0, [r6]
	ldr r5, _0805E3D8 @ =gUiGraphics
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldr r1, _0805E3DC @ =0x06010400
	mov sb, r1
	str r1, [sp, #0xc]
	movs r0, #0x20
	mov sl, r0
	str r0, [sp, #0x18]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805E3E0 @ =gUiGraphics + 0x4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	mov r0, sl
	str r0, [sp, #0x24]
	add r1, sp, #0x28
	mov r8, r1
	movs r0, #0xf
	strb r0, [r1]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805E3E4 @ =gUiGraphics + 0x8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805E3E8 @ =gUiGraphics + 0xC
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805E3EC @ =gUiGraphics + 0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805E3F0 @ =gUiGraphics + 0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805E3F4 @ =gUiGraphics + 0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r0, #7
	strb r0, [r7]
	movs r0, #0
	strb r0, [r4]
	movs r1, #0xd
	strb r1, [r6]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	str r0, [sp, #0x14]
	mov r0, sb
	str r0, [sp, #0xc]
	movs r0, #0xec
	lsls r0, r0, #5
	str r0, [sp, #0x18]
	ldr r1, _0805E3F8 @ =0x00000694
	adds r0, r5, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	mov r0, sl
	str r0, [sp, #0x24]
	movs r0, #0xe
	mov r1, r8
	strb r0, [r1]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805E3E4 @ =gUiGraphics + 0x8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805E3E8 @ =gUiGraphics + 0xC
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805E3EC @ =gUiGraphics + 0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805E3F0 @ =gUiGraphics + 0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805E3F4 @ =gUiGraphics + 0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r0, #0x2d
	strb r0, [r4]
	movs r0, #0
	strb r0, [r7]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805E3E0 @ =gUiGraphics + 0x4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	mov r0, sl
	str r0, [sp, #0x18]
	str r0, [sp, #0x24]
	movs r0, #0
	mov r1, r8
	strb r0, [r1]
	mov r1, sp
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0805E3FC @ =gUnknown_0868483C
	str r0, [sp, #0x10]
	movs r1, #0
	str r1, [sp, #0x1c]
	movs r0, #5
	strb r0, [r6]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805E3E4 @ =gUiGraphics + 0x8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805E3E8 @ =gUiGraphics + 0xC
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805E3EC @ =gUiGraphics + 0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805E3F0 @ =gUiGraphics + 0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805E3F4 @ =gUiGraphics + 0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	bl sub_80528AC
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805E3D8: .4byte gUiGraphics
_0805E3DC: .4byte 0x06010400
_0805E3E0: .4byte gUiGraphics + 0x4
_0805E3E4: .4byte gUiGraphics + 0x8
_0805E3E8: .4byte gUiGraphics + 0xC
_0805E3EC: .4byte gUiGraphics + 0x10
_0805E3F0: .4byte gUiGraphics + 0x14
_0805E3F4: .4byte gUiGraphics + 0x18
_0805E3F8: .4byte 0x00000694
_0805E3FC: .4byte gUnknown_0868483C

	thumb_func_start CreateStaffCredits
CreateStaffCredits: @ 0x0805E400
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r1, #0xc0
	lsls r1, r1, #5
	movs r0, #1
	bl TasksDestroyInPriorityRange
	ldr r0, _0805E5F8 @ =0x00001801
	ldr r1, _0805E5FC @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	bl sub_80535FC
	bl sub_8053674
	movs r1, #0x92
	lsls r1, r1, #5
	adds r0, r1, #0
	ldr r2, _0805E600 @ =gDispCnt
	strh r0, [r2]
	movs r4, #0
	ldr r0, _0805E604 @ =0x00001907
	ldr r1, _0805E608 @ =gBgCntRegs
	strh r0, [r1, #2]
	ldr r0, _0805E60C @ =gBgScrollRegs
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	strh r4, [r0, #8]
	strh r4, [r0, #0xa]
	ldr r0, _0805E610 @ =sub_805E888
	movs r2, #0xc4
	lsls r2, r2, #7
	str r4, [sp]
	movs r1, #0x80
	movs r3, #0
	bl TaskCreate
	mov r8, r0
	ldrh r5, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	mov sl, r2
	adds r2, r5, r2
	movs r7, #0x30
	str r7, [r2, #0x78]
	str r4, [r2, #0x7c]
	ldr r0, _0805E614 @ =0x06014000
	str r0, [r2, #4]
	movs r0, #0xb9
	lsls r0, r0, #2
	strh r0, [r2, #0xa]
	ldr r1, _0805E618 @ =0x03000020
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	strh r4, [r2, #0x16]
	strh r4, [r2, #0x18]
	movs r0, #0x90
	lsls r0, r0, #3
	mov sb, r0
	mov r1, sb
	strh r1, [r2, #0x1a]
	strh r4, [r2, #8]
	strh r4, [r2, #0x14]
	strh r4, [r2, #0x1c]
	ldr r0, _0805E61C @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _0805E620 @ =0x03000022
	adds r0, r5, r1
	movs r1, #0x10
	strb r1, [r0]
	ldr r1, _0805E624 @ =0x03000025
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	movs r6, #1
	rsbs r6, r6, #0
	str r6, [r2, #0x28]
	str r4, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	ldr r2, _0805E628 @ =0x03000030
	adds r0, r5, r2
	ldr r1, _0805E62C @ =0x000002E5
	strh r1, [r0, #0xa]
	adds r2, #0x20
	adds r1, r5, r2
	movs r2, #1
	strb r2, [r1]
	ldr r1, _0805E630 @ =0x06016000
	str r1, [r0, #4]
	movs r1, #0x78
	strh r1, [r0, #0x16]
	strh r4, [r0, #0x18]
	mov r1, sb
	strh r1, [r0, #0x1a]
	strh r4, [r0, #8]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0x1c]
	ldr r1, _0805E634 @ =0x03000051
	adds r2, r5, r1
	adds r1, r6, #0
	strb r1, [r2]
	ldr r2, _0805E638 @ =0x03000052
	adds r1, r5, r2
	movs r2, #0x10
	strb r2, [r1]
	ldr r1, _0805E63C @ =0x03000055
	adds r5, r5, r1
	movs r2, #0
	strb r2, [r5]
	str r6, [r0, #0x28]
	str r4, [r0, #0x10]
	bl UpdateSpriteAnimation
	ldr r0, _0805E640 @ =sub_805E758
	ldr r2, _0805E644 @ =0x00006120
	str r4, [sp]
	movs r1, #0x80
	movs r3, #0
	bl TaskCreate
	adds r6, r0, #0
	ldrh r1, [r6, #6]
	mov r0, sl
	adds r2, r1, r0
	str r7, [r2, #0x78]
	str r4, [r2, #0x7c]
	ldr r0, _0805E648 @ =0x0300006A
	adds r2, r1, r0
	ldr r0, _0805E64C @ =0x0000FFB0
	strh r0, [r2]
	ldr r2, _0805E650 @ =0x0300006C
	adds r0, r1, r2
	strh r4, [r0]
	ldr r0, _0805E654 @ =0x0300006E
	adds r2, r1, r0
	movs r0, #3
	strh r0, [r2]
	ldr r2, _0805E658 @ =0x03000068
	adds r0, r1, r2
	strh r4, [r0]
	ldr r0, _0805E65C @ =0x03000070
	adds r2, r1, r0
	movs r0, #7
	strh r0, [r2]
	ldr r2, _0805E660 @ =0x03000076
	adds r0, r1, r2
	movs r2, #1
	strb r2, [r0]
	ldr r0, _0805E664 @ =0x03000072
	adds r2, r1, r0
	movs r0, #0xe
	strh r0, [r2]
	ldr r2, _0805E668 @ =0x03000074
	adds r1, r1, r2
	movs r0, #5
	strh r0, [r1]
	ldr r0, _0805E66C @ =sub_805E698
	movs r5, #0xc0
	lsls r5, r5, #7
	ldr r1, _0805E670 @ =0x0805E9B1
	str r1, [sp]
	movs r1, #0x18
	adds r2, r5, #0
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	add r0, sl
	str r7, [r0, #0x14]
	mov r1, r8
	str r1, [r0, #0xc]
	str r6, [r0, #0x10]
	strh r4, [r0]
	strh r4, [r0, #2]
	movs r3, #1
	strh r3, [r0, #4]
	strh r4, [r0, #6]
	movs r1, #0x80
	strh r1, [r0, #8]
	movs r1, #8
	strb r1, [r0, #0xa]
	str r4, [sp, #4]
	ldr r2, _0805E674 @ =0x040000D4
	add r0, sp, #4
	str r0, [r2]
	ldr r0, _0805E608 @ =gBgCntRegs
	ldrh r1, [r0, #2]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0805E678 @ =0x85000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0805E67C @ =sa2__gUnknown_03004D80
	strb r3, [r0, #1]
	ldr r1, _0805E680 @ =sa2__gUnknown_03002280
	movs r2, #0
	strb r2, [r1, #4]
	strb r2, [r1, #5]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #6]
	movs r0, #0x14
	strb r0, [r1, #7]
	ldr r1, _0805E600 @ =gDispCnt
	ldrh r0, [r1]
	orrs r5, r0
	strh r5, [r1]
	ldr r1, _0805E684 @ =gWinRegs
	movs r2, #0xf0
	strh r2, [r1]
	movs r0, #0x24
	strh r0, [r1, #4]
	strh r2, [r1, #2]
	ldr r0, _0805E688 @ =0x000084A0
	strh r0, [r1, #6]
	ldr r0, _0805E68C @ =0x00003F3F
	strh r0, [r1, #8]
	movs r0, #0x1f
	strh r0, [r1, #0xa]
	ldr r0, _0805E690 @ =gBldRegs
	ldr r1, _0805E694 @ =0x00001FDF
	strh r1, [r0]
	movs r2, #0x10
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	bl sub_805E1E8
	movs r0, #0x28
	bl m4aSongNumStart
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805E5F8: .4byte 0x00001801
_0805E5FC: .4byte 0x0000FFFF
_0805E600: .4byte gDispCnt
_0805E604: .4byte 0x00001907
_0805E608: .4byte gBgCntRegs
_0805E60C: .4byte gBgScrollRegs
_0805E610: .4byte sub_805E888
_0805E614: .4byte 0x06014000
_0805E618: .4byte 0x03000020
_0805E61C: .4byte 0x03000021
_0805E620: .4byte 0x03000022
_0805E624: .4byte 0x03000025
_0805E628: .4byte 0x03000030
_0805E62C: .4byte 0x000002E5
_0805E630: .4byte 0x06016000
_0805E634: .4byte 0x03000051
_0805E638: .4byte 0x03000052
_0805E63C: .4byte 0x03000055
_0805E640: .4byte sub_805E758
_0805E644: .4byte 0x00006120
_0805E648: .4byte 0x0300006A
_0805E64C: .4byte 0x0000FFB0
_0805E650: .4byte 0x0300006C
_0805E654: .4byte 0x0300006E
_0805E658: .4byte 0x03000068
_0805E65C: .4byte 0x03000070
_0805E660: .4byte 0x03000076
_0805E664: .4byte 0x03000072
_0805E668: .4byte 0x03000074
_0805E66C: .4byte sub_805E698
_0805E670: .4byte 0x0805E9B1
_0805E674: .4byte 0x040000D4
_0805E678: .4byte 0x85000010
_0805E67C: .4byte sa2__gUnknown_03004D80
_0805E680: .4byte sa2__gUnknown_03002280
_0805E684: .4byte gWinRegs
_0805E688: .4byte 0x000084A0
_0805E68C: .4byte 0x00003F3F
_0805E690: .4byte gBldRegs
_0805E694: .4byte 0x00001FDF

	thumb_func_start sub_805E698
sub_805E698: @ 0x0805E698
	push {r4, lr}
	ldr r0, _0805E6C0 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r0, [r4, #0x10]
	ldrh r0, [r0, #6]
	adds r2, r0, r1
	ldr r0, [r4, #0xc]
	ldrh r0, [r0, #6]
	adds r3, r0, r1
	ldr r1, [r4, #0x14]
	ldr r0, _0805E6C4 @ =0x0000208D
	cmp r1, r0
	bgt _0805E6C8
	str r1, [r2, #0x78]
	ldr r0, [r4, #0x14]
	b _0805E6CC
	.align 2, 0
_0805E6C0: .4byte gCurTask
_0805E6C4: .4byte 0x0000208D
_0805E6C8:
	ldr r0, _0805E6E8 @ =0x0000208E
	str r0, [r2, #0x78]
_0805E6CC:
	str r0, [r3, #0x78]
	ldr r0, [r4, #0x14]
	adds r0, #1
	str r0, [r4, #0x14]
	ldr r1, _0805E6EC @ =0x00002148
	cmp r0, r1
	ble _0805E6F0
	adds r0, r4, #0
	bl sub_805423C
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	b _0805E6F2
	.align 2, 0
_0805E6E8: .4byte 0x0000208E
_0805E6EC: .4byte 0x00002148
_0805E6F0:
	movs r2, #0
_0805E6F2:
	ldr r1, [r4, #0x14]
	ldr r0, _0805E734 @ =0x00002166
	cmp r1, r0
	ble _0805E750
	cmp r2, #0
	beq _0805E750
	ldr r2, _0805E738 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0805E73C @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _0805E740 @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	ldr r0, [r4, #0x10]
	bl TaskDestroy
	ldr r0, [r4, #0xc]
	bl TaskDestroy
	ldr r0, _0805E744 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	ldr r0, _0805E748 @ =gLoadedSaveGame
	ldrb r0, [r0, #0x1d]
	cmp r0, #0x7f
	beq _0805E74C
	bl sub_8069710
	b _0805E750
	.align 2, 0
_0805E734: .4byte 0x00002166
_0805E738: .4byte gDispCnt
_0805E73C: .4byte 0x00001FFF
_0805E740: .4byte gBldRegs
_0805E744: .4byte gCurTask
_0805E748: .4byte gLoadedSaveGame
_0805E74C:
	bl CreateSegaLogo
_0805E750:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_805E758
sub_805E758: @ 0x0805E758
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0805E7B0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r4, [r5, #0x78]
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	bne _0805E788
	ldr r0, _0805E7B4 @ =0x00143000
	ldr r1, _0805E7B8 @ =0x0000201C
	bl Div
	adds r0, #1
	muls r0, r4, r0
	str r0, [r5, #0x7c]
_0805E788:
	ldr r0, [r5, #0x7c]
	lsrs r1, r0, #8
	movs r0, #0xc
	rsbs r0, r0, #0
	adds r0, r0, r1
	mov sb, r0
	cmp r0, #0x8a
	bls _0805E7BC
	adds r0, r1, #0
	subs r0, #0x86
	lsrs r0, r0, #4
	mov r8, r0
	adds r0, r1, #0
	subs r0, #0x96
	movs r1, #0x10
	bl Mod
	adds r0, #8
	mov sl, r0
	b _0805E7C2
	.align 2, 0
_0805E7B0: .4byte gCurTask
_0805E7B4: .4byte 0x00143000
_0805E7B8: .4byte 0x0000201C
_0805E7BC:
	movs r1, #0
	mov r8, r1
	mov sl, r1
_0805E7C2:
	movs r7, #0x24
	movs r0, #0x9c
	lsls r0, r0, #1
	cmp r8, r0
	bhi _0805E7D2
	movs r2, #7
	str r2, [sp]
	b _0805E7DE
_0805E7D2:
	movs r0, #0x43
	mov r3, r8
	subs r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
_0805E7DE:
	movs r6, #0
	ldr r0, [sp]
	cmp r6, r0
	bhs _0805E86E
_0805E7E6:
	mov r1, r8
	adds r0, r1, r6
	lsls r1, r0, #5
	ldr r3, _0805E80C @ =sCreditsEntries
	adds r2, r1, r3
	ldrb r1, [r2]
	adds r3, r0, #0
	cmp r1, #0
	beq _0805E860
	mov r0, sb
	cmp r0, #0x8a
	bls _0805E810
	movs r0, #2
	ldrsb r0, [r2, r0]
	adds r0, r0, r7
	mov r1, sl
	subs r0, r0, r1
	b _0805E81C
	.align 2, 0
_0805E80C: .4byte sCreditsEntries
_0805E810:
	movs r0, #2
	ldrsb r0, [r2, r0]
	adds r0, #0x8a
	mov r2, sb
	subs r0, r0, r2
	adds r0, r0, r7
_0805E81C:
	adds r1, r5, #0
	adds r1, #0x6c
	strh r0, [r1]
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0x8a
	bgt _0805E86E
	lsls r0, r3, #5
	ldr r3, _0805E880 @ =sCreditsEntries @ Length of Entry String
	adds r4, r0, r3
	ldrb r3, [r4]
	lsls r2, r3, #2
	movs r1, #0x78
	subs r1, r1, r2
	adds r2, r5, #0
	adds r2, #0x6a
	strh r1, [r2]
	adds r1, r5, #0
	adds r1, #0x6e
	strh r3, [r1]
	lsls r2, r6, #4
	subs r1, #6
	strh r2, [r1]
	ldrb r1, [r4, #1]
	adds r1, #0xe
	adds r2, r5, #0
	adds r2, #0x72
	strh r1, [r2]
	ldr r1, _0805E884 @ =sCreditsEntries+0x3 @ Entry String
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x60
	bl sub_8053370
_0805E860:
	adds r7, #0x10
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r2, [sp]
	cmp r6, r2
	blo _0805E7E6
_0805E86E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805E880: .4byte sCreditsEntries
_0805E884: .4byte sCreditsEntries+0x3

	thumb_func_start sub_805E888
sub_805E888: @ 0x0805E888
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0805E954 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0x30
	adds r0, r0, r1
	mov sb, r0
	ldr r5, [r4, #0x78]
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	bne _0805E8BC
	ldr r0, _0805E958 @ =0x00143000
	ldr r1, _0805E95C @ =0x0000201C
	bl Div
	adds r0, #1
	muls r0, r5, r0
	str r0, [r4, #0x7c]
_0805E8BC:
	ldr r0, [r4, #0x7c]
	lsrs r2, r0, #8
	adds r0, r2, #0
	subs r0, #0xc
	cmp r0, #0x9a
	bls _0805E9A2
	subs r0, #0x8a
	lsrs r6, r0, #4
	subs r0, #0x10
	movs r1, #0x10
	bl Mod
	adds r0, #4
	mov sl, r0
	movs r5, #0xff
	movs r3, #0
	ldr r1, _0805E960 @ =gUnknown_086886A0
	mov ip, r1
	mov r7, ip
_0805E8E2:
	movs r2, #0
_0805E8E4:
	lsls r0, r2, #2
	adds r0, r0, r7
	adds r1, r6, r3
	ldr r0, [r0]
	cmp r0, r1
	bne _0805E8F8
	adds r5, r2, #0
	mov r8, r3
	movs r3, #0xa
	movs r2, #5
_0805E8F8:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _0805E8E4
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #9
	bls _0805E8E2
	mov r2, ip
	ldr r0, [r2, #0xc]
	subs r0, #3
	cmp r6, r0
	blo _0805E91C
	movs r5, #3
	movs r0, #0
	mov r8, r0
_0805E91C:
	cmp r5, #0xff
	beq _0805E9A2
	movs r0, #0x18
	mov r1, sl
	subs r0, r0, r1
	mov r2, r8
	lsls r1, r2, #4
	adds r0, r0, r1
	strh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9a
	bgt _0805E9A2
	movs r2, #0x78
	strh r2, [r4, #0x16]
	cmp r5, #0
	beq _0805E996
	cmp r5, #1
	beq _0805E946
	cmp r5, #2
	bne _0805E964
_0805E946:
	movs r0, #0xb9
	lsls r0, r0, #2
	strh r0, [r4, #0xa]
	adds r0, r4, #0
	adds r0, #0x20
	strb r5, [r0]
	b _0805E996
	.align 2, 0
_0805E954: .4byte gCurTask
_0805E958: .4byte 0x00143000
_0805E95C: .4byte 0x0000201C
_0805E960: .4byte gUnknown_086886A0
_0805E964:
	movs r0, #0xb9
	lsls r0, r0, #2
	strh r0, [r4, #0xa]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #3
	strb r0, [r1]
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0x4f
	bgt _0805E97E
	movs r0, #0x50
	strh r0, [r4, #0x18]
_0805E97E:
	mov r0, sb
	strh r2, [r0, #0x16]
	ldrh r0, [r4, #0x18]
	adds r0, #0x28
	mov r1, sb
	strh r0, [r1, #0x18]
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, sb
	bl DisplaySprite
_0805E996:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0805E9A2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

    thumb_func_start sub_805E9B0
sub_805E9B0:
    bx lr
    .align 2, 0

	thumb_func_start sub_805E9B4
sub_805E9B4: @ 0x0805E9B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	bl sub_8053674
	add r4, sp, #0x2c
	movs r5, #0
	movs r0, #0x3d
	strb r0, [r4]
	movs r0, #0x2b
	add r0, sp
	mov sl, r0
	movs r0, #1
	mov r1, sl
	strb r0, [r1]
	ldr r7, _0805EADC @ =gUiGraphics
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r1, #0x80
	lsls r1, r1, #4
	str r1, [sp, #0x18]
	movs r0, #0x20
	mov r8, r0
	str r0, [sp, #0x24]
	add r0, sp, #0x28
	mov sb, r0
	strb r5, [r0]
	mov r0, sp
	adds r0, #0x29
	strb r5, [r0]
	ldr r0, _0805EAE0 @ =gUnknown_0868403C
	str r0, [sp, #0x10]
	str r1, [sp, #0x1c]
	mov r6, sp
	adds r6, #0x2a
	movs r0, #0x15
	strb r0, [r6]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	bl sub_80528AC
	strb r5, [r4]
	mov r1, sl
	strb r5, [r1]
	ldr r0, [r7]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [sp, #0x14]
	ldr r0, [r7, #4]
	str r0, [sp, #0x20]
	ldr r0, _0805EAE4 @ =0x06013480
	str r0, [sp, #0xc]
	movs r0, #0xa0
	lsls r0, r0, #2
	str r0, [sp, #0x18]
	mov r0, r8
	str r0, [sp, #0x24]
	movs r0, #0xf
	mov r1, sb
	strb r0, [r1]
	movs r0, #0xd
	strb r0, [r6]
	ldr r0, [r7, #8]
	str r0, [sp, #4]
	mov r1, sp
	ldr r0, [r7, #0xc]
	strb r0, [r1, #8]
	ldr r0, [r7, #0x10]
	strb r0, [r1, #9]
	ldr r0, [r7, #0x14]
	strb r0, [r1, #0xa]
	ldr r0, [r7, #0x18]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	ldr r0, [sp, #0xc]
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805EADC: .4byte gUiGraphics
_0805EAE0: .4byte gUnknown_0868403C
_0805EAE4: .4byte 0x06013480

	thumb_func_start CreateSoundTest
CreateSoundTest: @ 0x0805EAE8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r1, #0
	ldr r5, _0805EEDC @ =gKeysFirstRepeatIntervals
	movs r4, #0x14
	ldr r3, _0805EEE0 @ =gKeysContinuedRepeatIntervals
	movs r2, #8
_0805EAFE:
	adds r0, r1, r5
	strb r4, [r0]
	adds r0, r1, r3
	strb r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #9
	bls _0805EAFE
	bl sub_80535FC
	ldr r1, _0805EEE4 @ =gDispCnt
	movs r2, #0x8a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0805EEE8 @ =gBgCntRegs
	movs r6, #0
	movs r5, #0
	ldr r0, _0805EEEC @ =0x00001E07
	strh r0, [r1]
	ldr r0, _0805EEF0 @ =gBgScrollRegs
	strh r5, [r0]
	strh r5, [r0, #2]
	ldr r0, _0805EEF4 @ =sub_805F288
	str r5, [sp]
	movs r1, #0x30
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r1, r0
	mov sb, r1
	str r5, [r1, #0x24]
	ldr r2, _0805EEF8 @ =0x03000028
	adds r1, r0, r2
	strb r6, [r1]
	adds r2, #1
	adds r1, r0, r2
	strb r6, [r1]
	adds r2, #1
	adds r1, r0, r2
	strb r6, [r1]
	adds r2, #1
	adds r1, r0, r2
	strb r6, [r1]
	ldr r1, _0805EEFC @ =0x0300002C
	adds r0, r0, r1
	strb r6, [r0]
	mov r2, sb
	strh r5, [r2]
	movs r0, #1
	strh r0, [r2, #2]
	movs r0, #2
	strh r0, [r2, #4]
	strh r5, [r2, #6]
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r2, #8]
	movs r0, #1
	strb r0, [r2, #0xa]
	ldr r0, _0805EF00 @ =sub_805F950
	str r5, [sp]
	adds r1, #0x14
	ldr r2, _0805EF04 @ =0x00002020
	movs r3, #0
	bl TaskCreate
	adds r3, r0, #0
	ldrh r1, [r3, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r7, r1, r2
	ldr r2, _0805EF08 @ =0x03000108
	adds r0, r1, r2
	str r5, [r0]
	adds r2, #4
	adds r0, r1, r2
	strb r6, [r0]
	adds r2, #4
	adds r0, r1, r2
	strb r6, [r0]
	subs r2, #3
	adds r0, r1, r2
	strb r6, [r0]
	ldr r0, _0805EF0C @ =0x0300010E
	adds r2, r1, r0
	movs r0, #0x3c
	strh r0, [r2]
	mov r2, sb
	str r3, [r2, #0x10]
	ldr r0, _0805EF10 @ =0x06010020
	str r0, [r7, #4]
	ldr r0, _0805EF14 @ =0x00000357
	strh r0, [r7, #0xa]
	ldr r2, _0805EF18 @ =0x03000020
	adds r0, r1, r2
	strb r6, [r0]
	strh r5, [r7, #8]
	movs r0, #0xb4
	strh r0, [r7, #0x16]
	movs r0, #0x78
	strh r0, [r7, #0x18]
	strh r5, [r7, #0x1a]
	strh r5, [r7, #0x1c]
	ldr r0, _0805EF1C @ =0x03000021
	adds r2, r1, r0
	movs r0, #0xff
	strb r0, [r2]
	ldr r2, _0805EF20 @ =0x03000022
	adds r0, r1, r2
	movs r2, #0x10
	strb r2, [r0]
	ldr r0, _0805EF24 @ =0x03000025
	adds r1, r1, r0
	strb r6, [r1]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r7, #0x28]
	movs r2, #0x80
	lsls r2, r2, #6
	str r2, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r0, _0805EF28 @ =sub_805FAD4
	str r5, [sp]
	movs r1, #0x8a
	lsls r1, r1, #1
	ldr r2, _0805EF04 @ =0x00002020
	movs r3, #0
	bl TaskCreate
	adds r3, r0, #0
	ldrh r4, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	ldr r1, _0805EF08 @ =0x03000108
	adds r0, r4, r1
	str r5, [r0]
	ldr r2, _0805EF2C @ =0x0300010C
	adds r0, r4, r2
	strb r6, [r0]
	adds r1, #5
	adds r0, r4, r1
	strb r6, [r0]
	adds r2, #2
	adds r0, r4, r2
	strh r5, [r0]
	adds r1, #3
	adds r0, r4, r1
	strb r6, [r0]
	mov r2, sb
	str r3, [r2, #0x18]
	ldr r0, _0805EF30 @ =0x03000030
	adds r2, r4, r0
	ldr r1, _0805EF34 @ =0x06010C80
	str r1, [r7, #4]
	movs r0, #0xdb
	lsls r0, r0, #2
	strh r0, [r7, #0xa]
	ldr r1, _0805EF18 @ =0x03000020
	adds r0, r4, r1
	strb r6, [r0]
	strh r5, [r7, #8]
	movs r0, #0x4c
	mov sl, r0
	mov r1, sl
	strh r1, [r7, #0x16]
	movs r0, #0x5c
	strh r0, [r7, #0x18]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r7, #0x1a]
	strh r5, [r7, #0x1c]
	ldr r0, _0805EF1C @ =0x03000021
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _0805EF20 @ =0x03000022
	adds r0, r4, r1
	movs r1, #0x10
	strb r1, [r0]
	ldr r1, _0805EF24 @ =0x03000025
	adds r0, r4, r1
	strb r6, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	ldr r0, _0805EF38 @ =0x00003067
	str r0, [r7, #0x10]
	movs r1, #0xc8
	strh r1, [r2]
	ldr r0, _0805EF3C @ =0x00000101
	mov r8, r0
	mov r1, r8
	strh r1, [r2, #2]
	strh r1, [r2, #4]
	mov r0, sl
	strh r0, [r2, #6]
	movs r1, #0x5c
	strh r1, [r2, #8]
	adds r0, r7, #0
	adds r1, r2, #0
	bl TransformSprite
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r2, _0805EF40 @ =0x0300003C
	adds r7, r4, r2
	ldr r0, _0805EF44 @ =0x0300006C
	adds r2, r4, r0
	ldr r1, _0805EF34 @ =0x06010C80
	str r1, [r7, #4]
	movs r0, #0xdb
	lsls r0, r0, #2
	strh r0, [r7, #0xa]
	ldr r1, _0805EF48 @ =0x0300005C
	adds r0, r4, r1
	strb r6, [r0]
	strh r5, [r7, #8]
	mov r0, sl
	strh r0, [r7, #0x16]
	movs r1, #0x5c
	strh r1, [r7, #0x18]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	strh r5, [r7, #0x1c]
	ldr r0, _0805EF4C @ =0x0300005D
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _0805EF50 @ =0x0300005E
	adds r0, r4, r1
	movs r1, #0x10
	strb r1, [r0]
	ldr r1, _0805EF54 @ =0x03000061
	adds r0, r4, r1
	strb r6, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	ldr r0, _0805EF58 @ =0x00003068
	str r0, [r7, #0x10]
	movs r1, #0xc8
	strh r1, [r2]
	mov r0, r8
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	mov r1, sl
	strh r1, [r2, #6]
	movs r0, #0x5c
	strh r0, [r2, #8]
	adds r0, r7, #0
	adds r1, r2, #0
	bl TransformSprite
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r1, _0805EF5C @ =0x03000078
	adds r7, r4, r1
	ldr r0, _0805EF60 @ =0x030000A8
	adds r2, r4, r0
	ldr r1, _0805EF34 @ =0x06010C80
	str r1, [r7, #4]
	movs r0, #0xdb
	lsls r0, r0, #2
	strh r0, [r7, #0xa]
	ldr r1, _0805EF64 @ =0x03000098
	adds r0, r4, r1
	strb r6, [r0]
	strh r5, [r7, #8]
	mov r0, sl
	strh r0, [r7, #0x16]
	movs r1, #0x5c
	strh r1, [r7, #0x18]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	strh r5, [r7, #0x1c]
	ldr r0, _0805EF68 @ =0x03000099
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _0805EF6C @ =0x0300009A
	adds r0, r4, r1
	movs r1, #0x10
	strb r1, [r0]
	ldr r1, _0805EF70 @ =0x0300009D
	adds r0, r4, r1
	strb r6, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	ldr r0, _0805EF74 @ =0x00003069
	str r0, [r7, #0x10]
	movs r1, #0xc8
	strh r1, [r2]
	mov r0, r8
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	mov r1, sl
	strh r1, [r2, #6]
	movs r0, #0x5c
	strh r0, [r2, #8]
	adds r0, r7, #0
	adds r1, r2, #0
	bl TransformSprite
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r1, _0805EF78 @ =0x030000B4
	adds r7, r4, r1
	ldr r0, _0805EF7C @ =0x030000E4
	adds r2, r4, r0
	ldr r1, _0805EF34 @ =0x06010C80
	str r1, [r7, #4]
	movs r0, #0xdb
	lsls r0, r0, #2
	strh r0, [r7, #0xa]
	ldr r1, _0805EF80 @ =0x030000D4
	adds r0, r4, r1
	strb r6, [r0]
	strh r5, [r7, #8]
	mov r0, sl
	strh r0, [r7, #0x16]
	movs r1, #0x5c
	strh r1, [r7, #0x18]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	strh r5, [r7, #0x1c]
	ldr r0, _0805EF84 @ =0x030000D5
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _0805EF88 @ =0x030000D6
	adds r0, r4, r1
	movs r1, #0x10
	strb r1, [r0]
	ldr r0, _0805EF8C @ =0x030000D9
	adds r4, r4, r0
	strb r6, [r4]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r7, #0x28]
	ldr r0, _0805EF90 @ =0x0000307B
	str r0, [r7, #0x10]
	movs r0, #0xc8
	strh r0, [r2]
	mov r1, r8
	strh r1, [r2, #2]
	strh r1, [r2, #4]
	mov r0, sl
	strh r0, [r2, #6]
	movs r1, #0x5c
	strh r1, [r2, #8]
	adds r0, r7, #0
	adds r1, r2, #0
	bl TransformSprite
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, _0805EF94 @ =sub_805FEAC
	str r5, [sp]
	movs r1, #0x8a
	lsls r1, r1, #1
	ldr r2, _0805EF04 @ =0x00002020
	movs r3, #0
	bl TaskCreate
	adds r3, r0, #0
	ldrh r1, [r3, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r7, r1, r2
	ldr r2, _0805EF08 @ =0x03000108
	adds r0, r1, r2
	str r5, [r0]
	adds r2, #4
	adds r0, r1, r2
	strb r6, [r0]
	adds r2, #1
	adds r0, r1, r2
	strb r6, [r0]
	adds r2, #1
	adds r0, r1, r2
	strh r5, [r0]
	adds r2, #2
	adds r0, r1, r2
	strb r6, [r0]
	mov r0, sb
	str r3, [r0, #0x20]
	ldr r0, _0805EF98 @ =0x06011C80
	str r0, [r7, #4]
	ldr r4, _0805EF9C @ =0x00000366
	strh r4, [r7, #0xa]
	subs r2, #0xf0
	adds r0, r1, r2
	movs r2, #2
	strb r2, [r0]
	strh r5, [r7, #8]
	movs r0, #0x64
	strh r0, [r7, #0x16]
	movs r0, #0x5d
	strh r0, [r7, #0x18]
	strh r5, [r7, #0x1a]
	strh r5, [r7, #0x1c]
	ldr r0, _0805EF1C @ =0x03000021
	adds r2, r1, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r2]
	ldr r2, _0805EF20 @ =0x03000022
	adds r0, r1, r2
	movs r2, #0x10
	strb r2, [r0]
	ldr r0, _0805EF24 @ =0x03000025
	adds r1, r1, r0
	strb r6, [r1]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r7, #0x28]
	str r5, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, _0805EFA0 @ =sub_805FDE4
	str r5, [sp]
	movs r1, #0x8a
	lsls r1, r1, #1
	ldr r2, _0805EF04 @ =0x00002020
	movs r3, #0
	bl TaskCreate
	adds r3, r0, #0
	ldrh r1, [r3, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r7, r1, r2
	ldr r2, _0805EF08 @ =0x03000108
	adds r0, r1, r2
	str r5, [r0]
	adds r2, #4
	adds r0, r1, r2
	strb r5, [r0]
	adds r2, #1
	adds r0, r1, r2
	strb r6, [r0]
	adds r2, #1
	adds r0, r1, r2
	strh r5, [r0]
	adds r2, #2
	adds r0, r1, r2
	strb r6, [r0]
	mov r0, sb
	str r3, [r0, #0x14]
	ldr r0, _0805EFA4 @ =0x06012040
	str r0, [r7, #4]
	strh r4, [r7, #0xa]
	subs r2, #0xf0
	adds r0, r1, r2
	strb r6, [r0]
	strh r5, [r7, #8]
	movs r0, #0x62
	b _0805EFA8
	.align 2, 0
_0805EEDC: .4byte gKeysFirstRepeatIntervals
_0805EEE0: .4byte gKeysContinuedRepeatIntervals
_0805EEE4: .4byte gDispCnt
_0805EEE8: .4byte gBgCntRegs
_0805EEEC: .4byte 0x00001E07
_0805EEF0: .4byte gBgScrollRegs
_0805EEF4: .4byte sub_805F288
_0805EEF8: .4byte 0x03000028
_0805EEFC: .4byte 0x0300002C
_0805EF00: .4byte sub_805F950
_0805EF04: .4byte 0x00002020
_0805EF08: .4byte 0x03000108
_0805EF0C: .4byte 0x0300010E
_0805EF10: .4byte 0x06010020
_0805EF14: .4byte 0x00000357
_0805EF18: .4byte 0x03000020
_0805EF1C: .4byte 0x03000021
_0805EF20: .4byte 0x03000022
_0805EF24: .4byte 0x03000025
_0805EF28: .4byte sub_805FAD4
_0805EF2C: .4byte 0x0300010C
_0805EF30: .4byte 0x03000030
_0805EF34: .4byte 0x06010C80
_0805EF38: .4byte 0x00003067
_0805EF3C: .4byte 0x00000101
_0805EF40: .4byte 0x0300003C
_0805EF44: .4byte 0x0300006C
_0805EF48: .4byte 0x0300005C
_0805EF4C: .4byte 0x0300005D
_0805EF50: .4byte 0x0300005E
_0805EF54: .4byte 0x03000061
_0805EF58: .4byte 0x00003068
_0805EF5C: .4byte 0x03000078
_0805EF60: .4byte 0x030000A8
_0805EF64: .4byte 0x03000098
_0805EF68: .4byte 0x03000099
_0805EF6C: .4byte 0x0300009A
_0805EF70: .4byte 0x0300009D
_0805EF74: .4byte 0x00003069
_0805EF78: .4byte 0x030000B4
_0805EF7C: .4byte 0x030000E4
_0805EF80: .4byte 0x030000D4
_0805EF84: .4byte 0x030000D5
_0805EF88: .4byte 0x030000D6
_0805EF8C: .4byte 0x030000D9
_0805EF90: .4byte 0x0000307B
_0805EF94: .4byte sub_805FEAC
_0805EF98: .4byte 0x06011C80
_0805EF9C: .4byte 0x00000366
_0805EFA0: .4byte sub_805FDE4
_0805EFA4: .4byte 0x06012040
_0805EFA8:
	strh r0, [r7, #0x16]
	movs r0, #0x88
	mov sl, r0
	mov r2, sl
	strh r2, [r7, #0x18]
	adds r0, #0x78
	strh r0, [r7, #0x1a]
	strh r5, [r7, #0x1c]
	ldr r0, _0805F1F4 @ =0x03000021
	adds r2, r1, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r2]
	ldr r2, _0805F1F8 @ =0x03000022
	adds r0, r1, r2
	movs r2, #0x10
	strb r2, [r0]
	ldr r0, _0805F1FC @ =0x03000025
	adds r1, r1, r0
	strb r6, [r1]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r7, #0x28]
	movs r2, #0x80
	lsls r2, r2, #6
	str r2, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r0, _0805F200 @ =sub_805FC88
	movs r2, #0x81
	lsls r2, r2, #6
	str r5, [sp]
	movs r1, #0x8a
	lsls r1, r1, #1
	movs r3, #0
	bl TaskCreate
	adds r3, r0, #0
	ldrh r1, [r3, #6]
	ldr r2, _0805F204 @ =0x03000108
	adds r0, r1, r2
	str r5, [r0]
	adds r2, #4
	adds r0, r1, r2
	strb r6, [r0]
	adds r2, #1
	adds r0, r1, r2
	strb r6, [r0]
	adds r2, #1
	adds r0, r1, r2
	strh r5, [r0]
	adds r2, #2
	adds r0, r1, r2
	strb r6, [r0]
	mov r0, sb
	str r3, [r0, #0xc]
	subs r2, #0x16
	adds r0, r1, r2
	strh r5, [r0]
	ldr r0, _0805F208 @ =0x030000FC
	adds r2, r1, r0
	movs r0, #0x52
	strh r0, [r2]
	ldr r2, _0805F20C @ =0x030000FE
	adds r0, r1, r2
	movs r2, #1
	strh r2, [r0]
	ldr r2, _0805F210 @ =0x03000100
	adds r0, r1, r2
	strh r5, [r0]
	ldr r0, _0805F214 @ =0x03000102
	adds r2, r1, r0
	movs r0, #0xf
	strh r0, [r2]
	ldr r2, _0805F218 @ =0x03000106
	adds r0, r1, r2
	movs r2, #1
	strb r2, [r0]
	ldr r0, _0805F21C @ =0x030000F8
	adds r1, r1, r0
	movs r0, #0x40
	strh r0, [r1]
	ldr r0, _0805F220 @ =sub_805FE48
	str r5, [sp]
	movs r1, #0x8a
	lsls r1, r1, #1
	ldr r2, _0805F224 @ =0x00002020
	movs r3, #0
	bl TaskCreate
	adds r3, r0, #0
	ldrh r4, [r3, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r4, r1
	ldr r2, _0805F204 @ =0x03000108
	adds r0, r4, r2
	str r5, [r0]
	ldr r1, _0805F228 @ =0x0300010C
	adds r0, r4, r1
	strb r6, [r0]
	adds r2, #5
	adds r0, r4, r2
	strb r6, [r0]
	adds r1, #2
	adds r0, r4, r1
	strh r5, [r0]
	adds r2, #3
	adds r0, r4, r2
	strb r6, [r0]
	mov r0, sb
	str r3, [r0, #0x1c]
	ldr r0, _0805F22C @ =0x06012600
	str r0, [r7, #4]
	ldr r0, _0805F230 @ =0x0000036A
	strh r0, [r7, #0xa]
	subs r1, #0xee
	adds r0, r4, r1
	strb r6, [r0]
	strh r5, [r7, #8]
	strh r5, [r7, #0x16]
	strh r5, [r7, #0x18]
	movs r2, #0xa0
	lsls r2, r2, #1
	mov r8, r2
	mov r0, r8
	strh r0, [r7, #0x1a]
	strh r5, [r7, #0x1c]
	ldr r2, _0805F1F4 @ =0x03000021
	adds r1, r4, r2
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _0805F1F8 @ =0x03000022
	adds r0, r4, r1
	movs r2, #0x10
	strb r2, [r0]
	adds r1, #3
	adds r0, r4, r1
	strb r6, [r0]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r7, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r1, _0805F234 @ =0x0300003C
	adds r7, r4, r1
	ldr r0, _0805F238 @ =0x06013200
	str r0, [r7, #4]
	ldr r0, _0805F23C @ =0x00000369
	strh r0, [r7, #0xa]
	ldr r2, _0805F240 @ =0x0300005C
	adds r0, r4, r2
	strb r6, [r0]
	strh r5, [r7, #8]
	movs r0, #0x1a
	strh r0, [r7, #0x16]
	mov r0, sl
	strh r0, [r7, #0x18]
	mov r1, r8
	strh r1, [r7, #0x1a]
	strh r5, [r7, #0x1c]
	adds r2, #1
	adds r1, r4, r2
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _0805F244 @ =0x0300005E
	adds r0, r4, r1
	movs r2, #0x10
	strb r2, [r0]
	adds r1, #3
	adds r0, r4, r1
	strb r6, [r0]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r7, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r1, _0805F248 @ =0x03000078
	adds r7, r4, r1
	ldr r0, _0805F24C @ =0x06011CC0
	str r0, [r7, #4]
	ldr r0, _0805F250 @ =0x00000367
	strh r0, [r7, #0xa]
	ldr r2, _0805F254 @ =0x03000098
	adds r0, r4, r2
	strb r6, [r0]
	strh r5, [r7, #8]
	movs r0, #0x11
	strh r0, [r7, #0x16]
	movs r0, #0x18
	strh r0, [r7, #0x18]
	movs r0, #0x80
	strh r0, [r7, #0x1a]
	strh r5, [r7, #0x1c]
	ldr r0, _0805F258 @ =0x03000099
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _0805F25C @ =0x0300009A
	adds r0, r4, r1
	movs r2, #0x10
	strb r2, [r0]
	adds r1, #3
	adds r0, r4, r1
	strb r6, [r0]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r7, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r1, _0805F260 @ =0x030000B4
	adds r7, r4, r1
	ldr r0, _0805F264 @ =0x06012380
	str r0, [r7, #4]
	ldr r0, _0805F268 @ =0x0000036B
	strh r0, [r7, #0xa]
	ldr r2, _0805F26C @ =0x030000D4
	adds r0, r4, r2
	strb r6, [r0]
	strh r5, [r7, #8]
	movs r0, #0xb4
	strh r0, [r7, #0x16]
	movs r0, #0x90
	strh r0, [r7, #0x18]
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r7, #0x1a]
	strh r5, [r7, #0x1c]
	adds r2, #1
	adds r1, r4, r2
	subs r0, #0x91
	strb r0, [r1]
	ldr r1, _0805F270 @ =0x030000D6
	adds r0, r4, r1
	movs r2, #0x10
	strb r2, [r0]
	ldr r0, _0805F274 @ =0x030000D9
	adds r4, r4, r0
	strb r6, [r4]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r7, #0x28]
	movs r2, #0x80
	lsls r2, r2, #6
	str r2, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r0, _0805F278 @ =gMPlayInfo_BGM
	movs r1, #1
	bl m4aMPlayFadeOut
	ldr r0, _0805F27C @ =gMPlayInfo_SE1
	movs r1, #1
	bl m4aMPlayFadeOut
	ldr r0, _0805F280 @ =gMPlayInfo_SE2
	movs r1, #1
	bl m4aMPlayFadeOut
	ldr r0, _0805F284 @ =gMPlayInfo_SE3
	movs r1, #1
	bl m4aMPlayFadeOut
	mov r0, sb
	bl sub_80543A4
	bl sub_805E9B4
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805F1F4: .4byte 0x03000021
_0805F1F8: .4byte 0x03000022
_0805F1FC: .4byte 0x03000025
_0805F200: .4byte sub_805FC88
_0805F204: .4byte 0x03000108
_0805F208: .4byte 0x030000FC
_0805F20C: .4byte 0x030000FE
_0805F210: .4byte 0x03000100
_0805F214: .4byte 0x03000102
_0805F218: .4byte 0x03000106
_0805F21C: .4byte 0x030000F8
_0805F220: .4byte sub_805FE48
_0805F224: .4byte 0x00002020
_0805F228: .4byte 0x0300010C
_0805F22C: .4byte 0x06012600
_0805F230: .4byte 0x0000036A
_0805F234: .4byte 0x0300003C
_0805F238: .4byte 0x06013200
_0805F23C: .4byte 0x00000369
_0805F240: .4byte 0x0300005C
_0805F244: .4byte 0x0300005E
_0805F248: .4byte 0x03000078
_0805F24C: .4byte 0x06011CC0
_0805F250: .4byte 0x00000367
_0805F254: .4byte 0x03000098
_0805F258: .4byte 0x03000099
_0805F25C: .4byte 0x0300009A
_0805F260: .4byte 0x030000B4
_0805F264: .4byte 0x06012380
_0805F268: .4byte 0x0000036B
_0805F26C: .4byte 0x030000D4
_0805F270: .4byte 0x030000D6
_0805F274: .4byte 0x030000D9
_0805F278: .4byte gMPlayInfo_BGM
_0805F27C: .4byte gMPlayInfo_SE1
_0805F280: .4byte gMPlayInfo_SE2
_0805F284: .4byte gMPlayInfo_SE3

@ Sound test / Soundtest
	thumb_func_start sub_805F288
sub_805F288: @ 0x0805F288
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r4, _0805F314 @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	ldr r2, [r6, #0xc]
	ldrh r0, [r2, #6]
	adds r0, r0, r1
	str r0, [sp]
	ldr r0, [r6, #0x10]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [r6, #0x14]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #8]
	ldr r0, [r6, #0x18]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #0xc]
	ldr r0, [r6, #0x1c]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #0x10]
	ldr r0, [r6, #0x20]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #0x14]
	ldr r7, [r6, #0x24]
	adds r7, #1
	movs r1, #4
	ldrsh r0, [r6, r1]
	cmp r0, #1
	bne _0805F320
	movs r3, #6
	ldrsh r1, [r6, r3]
	ldr r0, _0805F318 @ =0x00001FFF
	cmp r1, r0
	ble _0805F320
	adds r0, r2, #0
	bl TaskDestroy
	ldr r0, [r6, #0x10]
	bl TaskDestroy
	ldr r0, [r6, #0x14]
	bl TaskDestroy
	ldr r0, [r6, #0x18]
	bl TaskDestroy
	ldr r0, [r6, #0x1c]
	bl TaskDestroy
	ldr r0, [r6, #0x20]
	bl TaskDestroy
	ldr r1, [r4]
	ldr r0, _0805F31C @ =sub_805FDB0
	str r0, [r1, #8]
	b _0805F93A
	.align 2, 0
_0805F314: .4byte gCurTask
_0805F318: .4byte 0x00001FFF
_0805F31C: .4byte sub_805FDB0
_0805F320:
	ldr r2, _0805F360 @ =gBgScrollRegs
	ldrh r0, [r2]
	adds r0, #1
	ldrh r1, [r2, #2]
	adds r1, #1
	movs r3, #0xff
	ands r0, r3
	strh r0, [r2]
	ands r1, r3
	strh r1, [r2, #2]
	adds r1, r6, #0
	adds r1, #0x28
	ldrb r5, [r1]
	ldr r0, _0805F364 @ =gRepeatedKeys
	ldrh r2, [r0]
	movs r0, #0x20
	ands r0, r2
	mov r8, r1
	cmp r0, #0
	beq _0805F39A
	cmp r5, #0
	bne _0805F370
	ldr r0, _0805F368 @ =gLoadedSaveGame
	ldr r4, _0805F36C @ =0x00000424
	adds r0, r0, r4
	ldrb r0, [r0]
	movs r5, #0x26
	cmp r0, #0
	beq _0805F376
	movs r5, #0x29
	b _0805F376
	.align 2, 0
_0805F360: .4byte gBgScrollRegs
_0805F364: .4byte gRepeatedKeys
_0805F368: .4byte gLoadedSaveGame
_0805F36C: .4byte 0x00000424
_0805F370:
	subs r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0805F376:
	adds r1, r6, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [sp]
	movs r2, #0x88
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r3, [sp]
	movs r4, #0x87
	lsls r4, r4, #1
	adds r1, r3, r4
	movs r0, #8
	strh r0, [r1]
	b _0805F3E4
_0805F39A:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _0805F3E4
	ldr r0, _0805F3B4 @ =gLoadedSaveGame
	ldr r1, _0805F3B8 @ =0x00000424
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805F3BC
	adds r0, r5, #1
	movs r1, #0x2a
	b _0805F3C0
	.align 2, 0
_0805F3B4: .4byte gLoadedSaveGame
_0805F3B8: .4byte 0x00000424
_0805F3BC:
	adds r0, r5, #1
	movs r1, #0x27
_0805F3C0:
	bl Mod
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r6, #0
	adds r0, #0x2b
	movs r2, #0
	movs r1, #1
	strb r1, [r0]
	ldr r3, [sp]
	movs r4, #0x88
	lsls r4, r4, #1
	adds r0, r3, r4
	strb r1, [r0]
	movs r1, #0x87
	lsls r1, r1, #1
	adds r0, r3, r1
	strh r2, [r0]
_0805F3E4:
	ldr r2, [sp]
	movs r4, #0x88
	lsls r4, r4, #1
	adds r3, r2, r4
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	beq _0805F42A
	cmp r0, #0
	ble _0805F412
	movs r0, #0x87
	lsls r0, r0, #1
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #8
	bne _0805F42A
	movs r0, #0
	strb r0, [r3]
	b _0805F42A
_0805F412:
	ldr r1, [sp]
	movs r4, #0x87
	lsls r4, r4, #1
	adds r2, r1, r4
	ldrh r0, [r2]
	adds r1, r0, #0
	cmp r1, #0
	beq _0805F428
	subs r0, #1
	strh r0, [r2]
	b _0805F42A
_0805F428:
	strb r1, [r3]
_0805F42A:
	movs r0, #0x86
	lsls r0, r0, #1
	ldr r2, [sp]
	adds r1, r2, r0
	strb r5, [r1]
	ldr r3, [sp, #4]
	adds r1, r3, r0
	strb r5, [r1]
	ldr r4, [sp, #8]
	adds r1, r4, r0
	strb r5, [r1]
	ldr r2, [sp, #0xc]
	adds r1, r2, r0
	strb r5, [r1]
	ldr r3, [sp, #0x10]
	adds r1, r3, r0
	strb r5, [r1]
	ldr r4, [sp, #0x14]
	adds r0, r4, r0
	strb r5, [r0]
	mov r0, r8
	strb r5, [r0]
	cmp r7, #2
	bne _0805F472
	ldr r0, _0805F558 @ =gMPlayInfo_BGM
	bl m4aMPlayContinue
	ldr r0, _0805F55C @ =gMPlayInfo_SE1
	bl m4aMPlayContinue
	ldr r0, _0805F560 @ =gMPlayInfo_SE2
	bl m4aMPlayContinue
	ldr r0, _0805F564 @ =gMPlayInfo_SE3
	bl m4aMPlayContinue
_0805F472:
	adds r0, r6, #0
	bl sub_805423C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805F4D2
	ldr r0, _0805F568 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805F4D2
	cmp r7, #0x78
	bhi _0805F4D2
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0805F4D2
	movs r7, #0x79
	ldr r0, _0805F56C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	ldrh r2, [r0, #6]
	adds r0, r2, r1
	ldr r4, _0805F570 @ =0x0300010D
	adds r3, r2, r4
	movs r1, #2
	strb r1, [r3]
	ldr r1, _0805F574 @ =0x0300010E
	adds r3, r2, r1
	movs r4, #0
	movs r1, #0x78
	strh r1, [r3]
	ldr r1, _0805F578 @ =0x03000021
	adds r3, r2, r1
	movs r1, #0xff
	strb r1, [r3]
	ldr r1, _0805F57C @ =0x00000357
	strh r1, [r0, #0xa]
	ldr r3, _0805F580 @ =0x03000020
	adds r2, r2, r3
	strb r4, [r2]
	bl UpdateSpriteAnimation
_0805F4D2:
	cmp r7, #1
	bls _0805F588
	ldr r0, _0805F568 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805F588
	movs r4, #4
	ldrsh r0, [r6, r4]
	cmp r0, #1
	beq _0805F588
	cmp r7, #0x78
	bls _0805F588
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0805F588
	ldr r0, _0805F558 @ =gMPlayInfo_BGM
	movs r1, #1
	bl m4aMPlayFadeOut
	ldr r0, _0805F55C @ =gMPlayInfo_SE1
	movs r1, #1
	bl m4aMPlayFadeOut
	ldr r0, _0805F560 @ =gMPlayInfo_SE2
	movs r1, #1
	bl m4aMPlayFadeOut
	ldr r0, _0805F564 @ =gMPlayInfo_SE3
	movs r1, #1
	bl m4aMPlayFadeOut
	ldr r1, _0805F584 @ =sSoundTestSongIds
	lsls r0, r5, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl m4aSongNumStart
	ldr r0, _0805F56C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r0, r0, r5
	ldr r0, [r0, #0x10]
	ldrh r1, [r0, #6]
	ldr r0, _0805F570 @ =0x0300010D
	adds r2, r1, r0
	movs r0, #2
	strb r0, [r2]
	ldr r2, _0805F574 @ =0x0300010E
	adds r1, r1, r2
	movs r0, #0x78
	strh r0, [r1]
	adds r3, r6, #0
	adds r3, #0x2a
	str r3, [sp, #0x18]
	movs r4, #0x29
	adds r4, r4, r6
	mov sl, r4
	movs r5, #0x2c
	adds r5, r5, r6
	mov sb, r5
	b _0805F738
	.align 2, 0
_0805F558: .4byte gMPlayInfo_BGM
_0805F55C: .4byte gMPlayInfo_SE1
_0805F560: .4byte gMPlayInfo_SE2
_0805F564: .4byte gMPlayInfo_SE3
_0805F568: .4byte gPressedKeys
_0805F56C: .4byte gCurTask
_0805F570: .4byte 0x0300010D
_0805F574: .4byte 0x0300010E
_0805F578: .4byte 0x03000021
_0805F57C: .4byte 0x00000357
_0805F580: .4byte 0x03000020
_0805F584: .4byte sSoundTestSongIds
_0805F588:
	movs r4, #0
	adds r0, r6, #0
	adds r0, #0x2a
	str r0, [sp, #0x18]
	movs r1, #0x29
	adds r1, r1, r6
	mov sl, r1
	movs r2, #0x2c
	adds r2, r2, r6
	mov sb, r2
	ldr r3, _0805F5C0 @ =0x0000FFFF
	mov ip, r3
	adds r2, r0, #0
	movs r5, #3
	mov r8, r5
	movs r3, #0x78
_0805F5A8:
	cmp r4, #0
	bne _0805F610
	ldr r1, _0805F5C4 @ =gMPlayInfo_BGM
	ldr r0, [r1, #4]
	mov r5, ip
	ands r0, r5
	cmp r0, #0
	beq _0805F5C8
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	b _0805F72A
	.align 2, 0
_0805F5C0: .4byte 0x0000FFFF
_0805F5C4: .4byte gMPlayInfo_BGM
_0805F5C8:
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805F5FC
	cmp r7, #0x64
	bls _0805F5FC
	movs r1, #4
	ldrsh r0, [r6, r1]
	cmp r0, #1
	beq _0805F5FC
	ldr r5, _0805F604 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	ldrh r1, [r0, #6]
	ldr r5, _0805F608 @ =0x0300010D
	adds r5, r1, r5
	mov r0, r8
	strb r0, [r5]
	ldr r5, _0805F60C @ =0x0300010E
	adds r1, r1, r5
	strh r3, [r1]
_0805F5FC:
	ldrb r1, [r2]
	movs r0, #0xfe
	b _0805F728
	.align 2, 0
_0805F604: .4byte gCurTask
_0805F608: .4byte 0x0300010D
_0805F60C: .4byte 0x0300010E
_0805F610:
	cmp r4, #1
	bne _0805F674
	ldr r1, _0805F628 @ =gMPlayInfo_SE1
	ldr r0, [r1, #4]
	mov r5, ip
	ands r0, r5
	cmp r0, #0
	beq _0805F62C
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	b _0805F72A
	.align 2, 0
_0805F628: .4byte gMPlayInfo_SE1
_0805F62C:
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0805F660
	cmp r7, #0x64
	bls _0805F660
	movs r1, #4
	ldrsh r0, [r6, r1]
	cmp r0, #1
	beq _0805F660
	ldr r5, _0805F668 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	ldrh r1, [r0, #6]
	ldr r5, _0805F66C @ =0x0300010D
	adds r5, r1, r5
	mov r0, r8
	strb r0, [r5]
	ldr r5, _0805F670 @ =0x0300010E
	adds r1, r1, r5
	strh r3, [r1]
_0805F660:
	ldrb r1, [r2]
	movs r0, #0xfd
	b _0805F728
	.align 2, 0
_0805F668: .4byte gCurTask
_0805F66C: .4byte 0x0300010D
_0805F670: .4byte 0x0300010E
_0805F674:
	cmp r4, #2
	bne _0805F6D8
	ldr r1, _0805F68C @ =gMPlayInfo_SE2
	ldr r0, [r1, #4]
	mov r5, ip
	ands r0, r5
	cmp r0, #0
	beq _0805F690
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	b _0805F72A
	.align 2, 0
_0805F68C: .4byte gMPlayInfo_SE2
_0805F690:
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0805F6C4
	cmp r7, #0x64
	bls _0805F6C4
	movs r1, #4
	ldrsh r0, [r6, r1]
	cmp r0, #1
	beq _0805F6C4
	ldr r5, _0805F6CC @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	ldrh r1, [r0, #6]
	ldr r5, _0805F6D0 @ =0x0300010D
	adds r5, r1, r5
	mov r0, r8
	strb r0, [r5]
	ldr r5, _0805F6D4 @ =0x0300010E
	adds r1, r1, r5
	strh r3, [r1]
_0805F6C4:
	ldrb r1, [r2]
	movs r0, #0xfb
	b _0805F728
	.align 2, 0
_0805F6CC: .4byte gCurTask
_0805F6D0: .4byte 0x0300010D
_0805F6D4: .4byte 0x0300010E
_0805F6D8:
	ldr r1, _0805F6EC @ =gMPlayInfo_SE3
	ldr r0, [r1, #4]
	mov r5, ip
	ands r0, r5
	cmp r0, #0
	beq _0805F6F0
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	b _0805F72A
	.align 2, 0
_0805F6EC: .4byte gMPlayInfo_SE3
_0805F6F0:
	ldrb r1, [r2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0805F724
	cmp r7, #0x64
	bls _0805F724
	movs r1, #4
	ldrsh r0, [r6, r1]
	cmp r0, #1
	beq _0805F724
	ldr r5, _0805F774 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	ldrh r1, [r0, #6]
	ldr r5, _0805F778 @ =0x0300010D
	adds r5, r1, r5
	mov r0, r8
	strb r0, [r5]
	ldr r5, _0805F77C @ =0x0300010E
	adds r1, r1, r5
	strh r3, [r1]
_0805F724:
	ldrb r1, [r2]
	movs r0, #0xf7
_0805F728:
	ands r0, r1
_0805F72A:
	strb r0, [r2]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bhi _0805F738
	b _0805F5A8
_0805F738:
	ldr r1, [sp, #0x18]
	ldrb r0, [r1]
	cmp r0, #0
	beq _0805F780
	movs r2, #4
	ldrsh r0, [r6, r2]
	cmp r0, #1
	beq _0805F780
	cmp r7, #0x78
	bls _0805F786
	movs r2, #2
	ldr r0, _0805F774 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r0, r0, r3
	ldr r0, [r0, #0x10]
	ldrh r0, [r0, #6]
	ldr r4, _0805F778 @ =0x0300010D
	adds r1, r0, r4
	strb r2, [r1]
	ldr r5, _0805F77C @ =0x0300010E
	adds r0, r0, r5
	movs r1, #0x78
	strh r1, [r0]
	movs r0, #1
	mov r1, sl
	strb r0, [r1]
	b _0805F786
	.align 2, 0
_0805F774: .4byte gCurTask
_0805F778: .4byte 0x0300010D
_0805F77C: .4byte 0x0300010E
_0805F780:
	movs r0, #0
	mov r2, sl
	strb r0, [r2]
_0805F786:
	ldr r0, _0805F86C @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0805F794
	b _0805F8D0
_0805F794:
	movs r3, #4
	ldrsh r0, [r6, r3]
	cmp r0, #1
	beq _0805F826
	mov r4, sl
	ldrb r0, [r4]
	cmp r0, #0
	bne _0805F826
	mov r5, sb
	ldrb r0, [r5]
	cmp r0, #0
	bne _0805F826
	cmp r7, #0x78
	bls _0805F826
	movs r5, #1
	adds r4, r5, #0
	ands r4, r1
	cmp r4, #0
	bne _0805F826
	movs r0, #0x6b
	bl m4aSongNumStart
	str r4, [r6, #0x24]
	movs r4, #0
	strh r5, [r6, #4]
	ldrh r1, [r6, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	subs r0, r0, r1
	strh r0, [r6, #6]
	movs r0, #0xc0
	strh r0, [r6, #8]
	ldr r3, _0805F870 @ =gCurTask
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r0, r0, r5
	ldr r0, [r0, #0x10]
	ldrh r0, [r0, #6]
	ldr r2, _0805F874 @ =0x0300010D
	adds r1, r0, r2
	strb r4, [r1]
	ldr r5, _0805F878 @ =0x0300010E
	adds r0, r0, r5
	movs r2, #0x78
	strh r2, [r0]
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	ldrh r0, [r0, #6]
	subs r5, #1
	adds r1, r0, r5
	strb r4, [r1]
	ldr r1, _0805F878 @ =0x0300010E
	adds r0, r0, r1
	strh r2, [r0]
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r0, r0, r3
	ldr r0, [r0, #0x10]
	ldrh r0, [r0, #6]
	adds r1, r0, r5
	strb r4, [r1]
	ldr r4, _0805F878 @ =0x0300010E
	adds r0, r0, r4
	strh r2, [r0]
_0805F826:
	ldr r0, _0805F86C @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0805F8D0
	movs r5, #4
	ldrsh r0, [r6, r5]
	cmp r0, #1
	beq _0805F8D0
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0
	beq _0805F8D0
	mov r2, sb
	ldrb r0, [r2]
	cmp r0, #0
	bne _0805F8D8
	movs r4, #0
	movs r3, #1
	mov r8, r3
	movs r5, #0xa
_0805F852:
	cmp r4, #0
	bne _0805F880
	ldr r1, [sp, #0x18]
	ldrb r0, [r1]
	mov r2, r8
	ands r0, r2
	cmp r0, #0
	beq _0805F8BE
	mov r3, sb
	strb r5, [r3]
	ldr r0, _0805F87C @ =gMPlayInfo_BGM
	b _0805F896
	.align 2, 0
_0805F86C: .4byte gPressedKeys
_0805F870: .4byte gCurTask
_0805F874: .4byte 0x0300010D
_0805F878: .4byte 0x0300010E
_0805F87C: .4byte gMPlayInfo_BGM
_0805F880:
	cmp r4, #1
	bne _0805F8A4
	ldr r1, [sp, #0x18]
	ldrb r0, [r1]
	asrs r0, r0, #1
	ands r0, r4
	cmp r0, #0
	beq _0805F8BE
	mov r2, sb
	strb r5, [r2]
	ldr r0, _0805F8A0 @ =gMPlayInfo_SE1
_0805F896:
	movs r1, #1
	bl m4aMPlayFadeOut
	b _0805F8BE
	.align 2, 0
_0805F8A0: .4byte gMPlayInfo_SE1
_0805F8A4:
	ldr r3, [sp, #0x18]
	ldrb r0, [r3]
	asrs r0, r4
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _0805F8BE
	mov r2, sb
	strb r5, [r2]
	ldr r0, _0805F8CC @ =gMPlayInfo_SE3
	movs r1, #1
	bl m4aMPlayFadeOut
_0805F8BE:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0805F852
	b _0805F8E0
	.align 2, 0
_0805F8CC: .4byte gMPlayInfo_SE3
_0805F8D0:
	mov r3, sb
	ldrb r0, [r3]
	cmp r0, #0
	beq _0805F8E0
_0805F8D8:
	mov r4, sb
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
_0805F8E0:
	mov r5, sl
	ldrb r2, [r5]
	ldr r1, _0805F94C @ =0x0000010D
	ldr r3, [sp]
	adds r0, r3, r1
	strb r2, [r0]
	ldrb r2, [r5]
	ldr r4, [sp, #8]
	adds r0, r4, r1
	strb r2, [r0]
	ldrb r2, [r5]
	ldr r5, [sp, #0xc]
	adds r0, r5, r1
	strb r2, [r0]
	mov r0, sl
	ldrb r2, [r0]
	ldr r3, [sp, #0x10]
	adds r0, r3, r1
	strb r2, [r0]
	mov r4, sl
	ldrb r0, [r4]
	ldr r5, [sp, #0x14]
	adds r1, r5, r1
	strb r0, [r1]
	movs r0, #0x84
	lsls r0, r0, #1
	ldr r2, [sp]
	adds r1, r2, r0
	str r7, [r1]
	ldr r3, [sp, #4]
	adds r1, r3, r0
	str r7, [r1]
	ldr r4, [sp, #8]
	adds r1, r4, r0
	str r7, [r1]
	ldr r5, [sp, #0xc]
	adds r1, r5, r0
	str r7, [r1]
	ldr r2, [sp, #0x10]
	adds r1, r2, r0
	str r7, [r1]
	ldr r3, [sp, #0x14]
	adds r0, r3, r0
	str r7, [r0]
	str r7, [r6, #0x24]
_0805F93A:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805F94C: .4byte 0x0000010D

	thumb_func_start sub_805F950
sub_805F950: @ 0x0805F950
	push {r4, r5, r6, r7, lr}
	ldr r0, _0805F9A0 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldr r1, _0805F9A4 @ =0x03000108
	adds r0, r5, r1
	ldr r6, [r0]
	ldr r2, _0805F9A8 @ =0x0300010D
	adds r3, r5, r2
	ldrb r0, [r3]
	cmp r0, #0
	beq _0805F972
	cmp r6, #0x77
	bhi _0805F9B8
_0805F972:
	movs r7, #0
	movs r0, #0xb4
	strh r0, [r4, #0x16]
	movs r0, #0x78
	strh r0, [r4, #0x18]
	ldr r0, _0805F9AC @ =0x00000355
	strh r0, [r4, #0xa]
	ldr r0, _0805F9B0 @ =0x03000020
	adds r2, r5, r0
	strb r7, [r2]
	cmp r6, #0x77
	beq _0805F98C
	b _0805FAA8
_0805F98C:
	adds r0, #1
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #1
	strb r0, [r3]
	ldr r0, _0805F9B4 @ =0x00000356
	strh r0, [r4, #0xa]
	strb r7, [r2]
	b _0805FAA8
	.align 2, 0
_0805F9A0: .4byte gCurTask
_0805F9A4: .4byte 0x03000108
_0805F9A8: .4byte 0x0300010D
_0805F9AC: .4byte 0x00000355
_0805F9B0: .4byte 0x03000020
_0805F9B4: .4byte 0x00000356
_0805F9B8:
	cmp r0, #1
	bne _0805F9DC
	movs r1, #0
	movs r0, #0xb4
	strh r0, [r4, #0x16]
	movs r0, #0x78
	strh r0, [r4, #0x18]
	ldr r0, _0805F9D4 @ =0x00000356
_0805F9C8:
	strh r0, [r4, #0xa]
	ldr r2, _0805F9D8 @ =0x03000020
	adds r0, r5, r2
	strb r1, [r0]
	b _0805FAA8
	.align 2, 0
_0805F9D4: .4byte 0x00000356
_0805F9D8: .4byte 0x03000020
_0805F9DC:
	cmp r0, #2
	bne _0805FA6C
	adds r0, r6, #0
	movs r1, #0xfa
	bl Mod
	cmp r0, #0x77
	bgt _0805FA00
	movs r1, #0
	movs r0, #0xa4
	strh r0, [r4, #0x16]
	movs r0, #0x78
	strh r0, [r4, #0x18]
	ldr r0, _0805F9FC @ =0x00000357
	b _0805F9C8
	.align 2, 0
_0805F9FC: .4byte 0x00000357
_0805FA00:
	adds r0, r6, #0
	movs r1, #0xfa
	bl Mod
	cmp r0, #0x7c
	ble _0805FA40
	adds r0, r6, #0
	movs r1, #0xfa
	bl Mod
	cmp r0, #0xf4
	bgt _0805FA40
	movs r1, #0
	movs r0, #0xc4
	strh r0, [r4, #0x16]
	movs r0, #0x78
	strh r0, [r4, #0x18]
	ldr r0, _0805FA38 @ =0x00000357
	strh r0, [r4, #0xa]
	ldr r2, _0805FA3C @ =0x03000020
	adds r0, r5, r2
	strb r1, [r0]
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _0805FAAE
	.align 2, 0
_0805FA38: .4byte 0x00000357
_0805FA3C: .4byte 0x03000020
_0805FA40:
	movs r0, #0xb4
	strh r0, [r4, #0x16]
	movs r0, #0x78
	strh r0, [r4, #0x18]
	ldr r0, _0805FA60 @ =0x00000357
	strh r0, [r4, #0xa]
	ldr r0, _0805FA64 @ =0x03000020
	adds r1, r5, r0
	movs r0, #1
	strb r0, [r1]
	ldr r2, _0805FA68 @ =0x0300010E
	adds r1, r5, r2
	movs r0, #5
	strh r0, [r1]
	b _0805FAB0
	.align 2, 0
_0805FA60: .4byte 0x00000357
_0805FA64: .4byte 0x03000020
_0805FA68: .4byte 0x0300010E
_0805FA6C:
	cmp r0, #3
	bne _0805FAB0
	movs r6, #0
	movs r0, #0xb4
	strh r0, [r4, #0x16]
	movs r0, #0x78
	strh r0, [r4, #0x18]
	movs r0, #0xd6
	lsls r0, r0, #2
	strh r0, [r4, #0xa]
	ldr r0, _0805FAC4 @ =0x03000020
	adds r2, r5, r0
	strb r6, [r2]
	adds r0, #0xee
	adds r1, r5, r0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0805FAA8
	ldr r0, _0805FAC8 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #1
	strb r0, [r3]
	ldr r0, _0805FACC @ =0x00000356
	strh r0, [r4, #0xa]
	strb r6, [r2]
_0805FAA8:
	ldr r0, [r4, #0x10]
	ldr r1, _0805FAD0 @ =0xFFFFFBFF
	ands r0, r1
_0805FAAE:
	str r0, [r4, #0x10]
_0805FAB0:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805FAC4: .4byte 0x03000020
_0805FAC8: .4byte 0x03000021
_0805FACC: .4byte 0x00000356
_0805FAD0: .4byte 0xFFFFFBFF

	thumb_func_start sub_805FAD4
sub_805FAD4: @ 0x0805FAD4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0805FB0C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	mov sl, r7
	adds r0, #0x30
	adds r3, r1, r0
	ldr r2, _0805FB10 @ =0x0300010D
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805FB18
	adds r2, #1
	adds r0, r1, r2
	ldrh r1, [r0]
	adds r1, #0x10
	ldr r2, _0805FB14 @ =0x000003FF
	ands r1, r2
	strh r1, [r0]
	b _0805FB52
	.align 2, 0
_0805FB0C: .4byte gCurTask
_0805FB10: .4byte 0x0300010D
_0805FB14: .4byte 0x000003FF
_0805FB18:
	ldr r0, _0805FB38 @ =0x0300010E
	adds r4, r1, r0
	ldrh r1, [r4]
	adds r2, r1, #0
	cmp r2, #4
	beq _0805FB52
	ldr r0, _0805FB3C @ =0x000001FF
	cmp r2, r0
	bhi _0805FB40
	adds r0, r1, #0
	adds r0, #0x10
	strh r0, [r4]
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x12
	b _0805FB4A
	.align 2, 0
_0805FB38: .4byte 0x0300010E
_0805FB3C: .4byte 0x000001FF
_0805FB40:
	adds r0, r1, #0
	adds r0, #0x10
	strh r0, [r4]
	lsls r0, r0, #0x10
	ldr r1, _0805FC80 @ =0x03FF0000
_0805FB4A:
	cmp r0, r1
	bls _0805FB52
	movs r0, #4
	strh r0, [r4]
_0805FB52:
	movs r0, #0
	strh r0, [r3]
	ldr r1, _0805FC84 @ =gSineTable
	mov r8, r1
	movs r2, #0x87
	lsls r2, r2, #1
	add r2, sl
	mov sb, r2
	ldrh r0, [r2]
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	adds r0, r0, r1
	strh r0, [r3, #2]
	mov r2, sb
	ldrh r0, [r2]
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r0, r0, r1
	strh r0, [r3, #4]
	movs r6, #0x4c
	strh r6, [r3, #6]
	strh r6, [r7, #0x16]
	movs r5, #0x5c
	strh r5, [r3, #8]
	strh r5, [r7, #0x18]
	adds r0, r7, #0
	adds r1, r3, #0
	bl TransformSprite
	adds r0, r7, #0
	bl DisplaySprite
	mov r7, sl
	adds r7, #0x3c
	mov r3, sl
	adds r3, #0x6c
	movs r4, #0x80
	lsls r4, r4, #1
	strh r4, [r3]
	mov r1, sb
	ldrh r0, [r1]
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r0, r0, r4
	strh r0, [r3, #2]
	ldrh r0, [r1]
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r0, r0, r4
	strh r0, [r3, #4]
	strh r6, [r3, #6]
	strh r6, [r7, #0x16]
	strh r5, [r3, #8]
	strh r5, [r7, #0x18]
	adds r0, r7, #0
	adds r1, r3, #0
	bl TransformSprite
	adds r0, r7, #0
	bl DisplaySprite
	adds r7, #0x3c
	mov r3, sl
	adds r3, #0xa8
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r3]
	mov r2, sb
	ldrh r0, [r2]
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r0, r0, r4
	strh r0, [r3, #2]
	ldrh r0, [r2]
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r0, r0, r4
	strh r0, [r3, #4]
	strh r6, [r3, #6]
	strh r6, [r7, #0x16]
	strh r5, [r3, #8]
	strh r5, [r7, #0x18]
	adds r0, r7, #0
	adds r1, r3, #0
	bl TransformSprite
	adds r0, r7, #0
	bl DisplaySprite
	adds r7, #0x3c
	mov r3, sl
	adds r3, #0xe4
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r3]
	mov r1, sb
	ldrh r0, [r1]
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r0, r0, r4
	strh r0, [r3, #2]
	ldrh r0, [r1]
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r0, r0, r4
	strh r0, [r3, #4]
	strh r6, [r3, #6]
	strh r6, [r7, #0x16]
	strh r5, [r3, #8]
	strh r5, [r7, #0x18]
	adds r0, r7, #0
	adds r1, r3, #0
	bl TransformSprite
	adds r0, r7, #0
	bl DisplaySprite
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805FC80: .4byte 0x03FF0000
_0805FC84: .4byte gSineTable

	thumb_func_start sub_805FC88
sub_805FC88: @ 0x0805FC88
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _0805FCDC @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	ldr r1, _0805FCE0 @ =0x0300010C
	adds r0, r4, r1
	ldrb r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	movs r0, #0
	mov r8, r0
	ldr r0, _0805FCE4 @ =0x030000FC
	adds r1, r4, r0
	movs r0, #0x52
	strh r0, [r1]
	cmp r5, #0x63
	bls _0805FCF0
	adds r0, r5, #0
	movs r1, #0x64
	bl Div
	adds r0, #0x20
	mov r1, sp
	strb r0, [r1]
	ldr r0, _0805FCE8 @ =0x030000FA
	adds r1, r4, r0
	movs r0, #0x40
	strh r0, [r1]
	ldr r0, _0805FCEC @ =0x030000F0
	adds r1, r4, r0
	mov r0, sp
	bl sub_805321C
	b _0805FCFC
	.align 2, 0
_0805FCDC: .4byte gCurTask
_0805FCE0: .4byte 0x0300010C
_0805FCE4: .4byte 0x030000FC
_0805FCE8: .4byte 0x030000FA
_0805FCEC: .4byte 0x030000F0
_0805FCF0:
	movs r1, #0xa
	mov r8, r1
	cmp r5, #9
	bls _0805FCFC
	movs r0, #5
	mov r8, r0
_0805FCFC:
	adds r6, r7, #0
	adds r6, #0xfa
	adds r7, #0xf0
	cmp r5, #9
	bls _0805FD2A
	mov r4, sp
	adds r0, r5, #0
	movs r1, #0x64
	bl Mod
	movs r1, #0xa
	bl Div
	adds r0, #0x20
	strb r0, [r4]
	movs r0, #0x4a
	mov r1, r8
	subs r0, r0, r1
	strh r0, [r6]
	mov r0, sp
	adds r1, r7, #0
	bl sub_805321C
_0805FD2A:
	mov r4, sp
	adds r0, r5, #0
	movs r1, #0xa
	bl Mod
	adds r0, #0x20
	strb r0, [r4]
	movs r0, #0x54
	mov r1, r8
	subs r0, r0, r1
	strh r0, [r6]
	mov r0, sp
	adds r1, r7, #0
	bl sub_805321C
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_805FD54
sub_805FD54: @ 0x0805FD54
	push {r4, lr}
	ldr r0, _0805FD98 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldr r1, [r1, #0x10]
	ldrh r2, [r1, #6]
	adds r0, r2, r0
	ldr r1, _0805FD9C @ =0x0300010D
	adds r3, r2, r1
	movs r1, #2
	strb r1, [r3]
	ldr r1, _0805FDA0 @ =0x0300010E
	adds r3, r2, r1
	movs r4, #0
	movs r1, #0x78
	strh r1, [r3]
	ldr r1, _0805FDA4 @ =0x03000021
	adds r3, r2, r1
	movs r1, #0xff
	strb r1, [r3]
	ldr r1, _0805FDA8 @ =0x00000357
	strh r1, [r0, #0xa]
	ldr r1, _0805FDAC @ =0x03000020
	adds r2, r2, r1
	strb r4, [r2]
	bl UpdateSpriteAnimation
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805FD98: .4byte gCurTask
_0805FD9C: .4byte 0x0300010D
_0805FDA0: .4byte 0x0300010E
_0805FDA4: .4byte 0x03000021
_0805FDA8: .4byte 0x00000357
_0805FDAC: .4byte 0x03000020

	thumb_func_start sub_805FDB0
sub_805FDB0: @ 0x0805FDB0
	push {lr}
	ldr r2, _0805FDD4 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0805FDD8 @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _0805FDDC @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	ldr r0, _0805FDE0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl CreateOptionsMenu
	pop {r0}
	bx r0
	.align 2, 0
_0805FDD4: .4byte gDispCnt
_0805FDD8: .4byte 0x00001FFF
_0805FDDC: .4byte gBldRegs
_0805FDE0: .4byte gCurTask

	thumb_func_start sub_805FDE4
sub_805FDE4: @ 0x0805FDE4
	push {r4, lr}
	ldr r0, _0805FE18 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	ldr r1, _0805FE1C @ =0x03000108
	adds r0, r2, r1
	ldr r1, [r0]
	ldr r3, _0805FE20 @ =0x0300010D
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805FE28
	cmp r1, #0x18
	bls _0805FE28
	ldr r0, _0805FE24 @ =0x03000021
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	subs r3, #0xed
	adds r1, r2, r3
	movs r0, #0
	b _0805FE34
	.align 2, 0
_0805FE18: .4byte gCurTask
_0805FE1C: .4byte 0x03000108
_0805FE20: .4byte 0x0300010D
_0805FE24: .4byte 0x03000021
_0805FE28:
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	subs r1, #1
	movs r0, #1
_0805FE34:
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_805FE48
sub_805FE48: @ 0x0805FE48
	push {r4, r5, lr}
	ldr r0, _0805FE98 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	bl DisplaySprite
	ldr r0, _0805FE9C @ =0x0300003C
	adds r5, r4, r0
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0805FEA0 @ =0x03000078
	adds r5, r4, r0
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0805FEA4 @ =0x030000B4
	adds r5, r4, r0
	ldr r0, [r5, #0x10]
	ldr r1, _0805FEA8 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805FE98: .4byte gCurTask
_0805FE9C: .4byte 0x0300003C
_0805FEA0: .4byte 0x03000078
_0805FEA4: .4byte 0x030000B4
_0805FEA8: .4byte 0xFFFFFBFF

	thumb_func_start sub_805FEAC
sub_805FEAC: @ 0x0805FEAC
	push {r4, r5, lr}
	ldr r0, _0805FEFC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r0, r4
	ldr r1, _0805FF00 @ =0x03000108
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r4, #0x10]
	ldr r2, _0805FF04 @ =0xFFFFFBFF
	ands r0, r2
	str r0, [r4, #0x10]
	ldr r2, _0805FF08 @ =gUnknown_0868B0CC
	lsrs r1, r1, #3
	movs r0, #7
	ands r1, r0
	adds r1, r1, r2
	ldrb r5, [r1]
	adds r0, r5, #0
	adds r0, #0x66
	strh r0, [r4, #0x16]
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #0x10]
	movs r0, #0x34
	subs r0, r0, r5
	strh r0, [r4, #0x16]
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805FEFC: .4byte gCurTask
_0805FF00: .4byte 0x03000108
_0805FF04: .4byte 0xFFFFFBFF
_0805FF08: .4byte gUnknown_0868B0CC

	thumb_func_start sub_805FF0C
sub_805FF0C: @ 0x0805FF0C
	ldr r1, _0805FF2C @ =gCurTask
	ldr r1, [r1]
	ldrh r1, [r1, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r1, r1, r2
	ldr r1, [r1, #0x10]
	ldrh r1, [r1, #6]
	ldr r3, _0805FF30 @ =0x0300010D
	adds r2, r1, r3
	strb r0, [r2]
	ldr r0, _0805FF34 @ =0x0300010E
	adds r1, r1, r0
	movs r0, #0x78
	strh r0, [r1]
	bx lr
	.align 2, 0
_0805FF2C: .4byte gCurTask
_0805FF30: .4byte 0x0300010D
_0805FF34: .4byte 0x0300010E

	thumb_func_start sub_805FF38
sub_805FF38: @ 0x0805FF38
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #4]
	lsls r0, r2, #0x18
	lsrs r4, r0, #0x18
	lsls r0, r3, #0x18
	lsrs r5, r0, #0x18
	lsls r0, r4, #4
	adds r0, r0, r6
	movs r1, #0xc
	ldrsb r1, [r0, r1]
	lsls r0, r5, #4
	adds r0, r0, r6
	ldrb r0, [r0, #0xc]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r1, r1, #0xf
	lsrs r1, r1, #0x10
	mov r8, r1
	cmp r4, r5
	bhs _08060044
	lsls r7, r1, #0x10
	asrs r0, r7, #0x10
	mov sb, r0
_0805FF84:
	mov r1, sl
	cmp r1, #0
	bne _0805FFD8
	lsls r0, r4, #4
	adds r0, r0, r6
	ldrb r0, [r0, #0xc]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r2, r5, #4
	mov r1, r8
	lsls r3, r1, #0x10
	cmp r0, sb
	bge _0805FFB4
	asrs r1, r7, #0x10
_0805FFA0:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r0, r4, #4
	adds r0, r0, r6
	ldrb r0, [r0, #0xc]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r1
	blt _0805FFA0
_0805FFB4:
	adds r0, r2, r6
	ldrb r0, [r0, #0xc]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	asrs r1, r3, #0x10
	cmp r0, r1
	ble _08060024
_0805FFC2:
	subs r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r0, r5, #4
	adds r0, r0, r6
	ldrb r0, [r0, #0xc]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r1
	bgt _0805FFC2
	b _08060024
_0805FFD8:
	lsls r0, r4, #4
	adds r0, r0, r6
	ldrb r0, [r0, #0xc]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r2, r5, #4
	mov r1, r8
	lsls r3, r1, #0x10
	cmp r0, sb
	ble _08060002
	asrs r1, r7, #0x10
_0805FFEE:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r0, r4, #4
	adds r0, r0, r6
	ldrb r0, [r0, #0xc]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r1
	bgt _0805FFEE
_08060002:
	adds r0, r2, r6
	ldrb r0, [r0, #0xc]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	asrs r1, r3, #0x10
	cmp r0, r1
	bge _08060024
_08060010:
	subs r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r0, r5, #4
	adds r0, r0, r6
	ldrb r0, [r0, #0xc]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r1
	blt _08060010
_08060024:
	cmp r4, r5
	bhs _08060044
	lsls r0, r4, #4
	adds r0, r6, r0
	lsls r1, r5, #4
	adds r1, r6, r1
	bl sub_8060088
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	subs r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r4, r5
	blo _0805FF84
_08060044:
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r2, r4
	bge _0806005E
	adds r0, r6, #0
	mov r1, sl
	adds r3, r4, #0
	bl sub_805FF38
_0806005E:
	ldr r1, [sp, #4]
	lsls r0, r1, #0x10
	asrs r3, r0, #0x10
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r3, r5
	ble _08060078
	adds r0, r6, #0
	mov r1, sl
	adds r2, r5, #0
	bl sub_805FF38
_08060078:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8060088
sub_8060088: @ 0x08060088
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r3, r0, #0
	adds r4, r1, #0
	ldr r0, [r3]
	str r0, [sp]
	mov r1, sp
	ldrb r0, [r3, #0xc]
	strb r0, [r1, #0xc]
	ldrb r0, [r3, #0xd]
	strb r0, [r1, #0xd]
	ldrb r0, [r3, #0xe]
	strb r0, [r1, #0xe]
	movs r2, #0
	add r0, sp, #4
	mov r8, r0
	mov r6, r8
	adds r7, r3, #4
	adds r5, r7, #0
_080600B2:
	adds r1, r6, r2
	adds r0, r5, r2
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _080600B2
	ldr r0, [r4]
	str r0, [r3]
	ldrb r0, [r4, #0xc]
	strb r0, [r3, #0xc]
	ldrb r0, [r4, #0xd]
	strb r0, [r3, #0xd]
	ldrb r0, [r4, #0xe]
	strb r0, [r3, #0xe]
	movs r2, #0
	adds r0, r4, #4
	mov ip, r0
	ldr r6, [sp]
	adds r5, r7, #0
	mov r3, ip
_080600E0:
	adds r1, r5, r2
	adds r0, r3, r2
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _080600E0
	str r6, [r4]
	mov r0, sp
	ldrb r0, [r0, #0xc]
	strb r0, [r4, #0xc]
	mov r0, sp
	ldrb r0, [r0, #0xd]
	strb r0, [r4, #0xd]
	mov r0, sp
	ldrb r0, [r0, #0xe]
	strb r0, [r4, #0xe]
	movs r2, #0
	mov r4, ip
	mov r3, r8
_0806010C:
	adds r1, r4, r2
	adds r0, r3, r2
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _0806010C
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_806012C
sub_806012C: @ 0x0806012C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	ldr r4, _0806026C @ =gLoadedSaveGame
	bl sub_8053674
	ldrb r1, [r4, #0x19]
	cmp r1, #0
	beq _08060146
	b _08060298
_08060146:
	add r4, sp, #0x2c
	movs r0, #0x80
	rsbs r0, r0, #0
	strb r0, [r4]
	movs r2, #0x2b
	add r2, sp
	mov r8, r2
	strb r1, [r2]
	ldr r0, _08060270 @ =gUnknown_0868B8F4
	str r0, [sp, #0x14]
	movs r0, #0xf8
	lsls r0, r0, #3
	str r0, [sp, #0x18]
	ldr r0, _08060274 @ =gUnknown_0868B8D4
	str r0, [sp, #0x20]
	movs r0, #0x20
	str r0, [sp, #0x24]
	ldr r0, _08060278 @ =gUnknown_0868C0B4
	str r0, [sp, #0x10]
	movs r0, #0xa0
	lsls r0, r0, #3
	str r0, [sp, #0x1c]
	add r6, sp, #0x28
	strb r1, [r6]
	mov r7, sp
	adds r7, #0x29
	strb r1, [r7]
	mov r5, sp
	adds r5, #0x2a
	movs r1, #0x15
	strb r1, [r5]
	ldr r3, _0806027C @ =gUiGraphics
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _08060280 @ =gUiGraphics + 0x8
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08060284 @ =gUiGraphics + 0xC
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08060288 @ =gUiGraphics + 0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0x14
	adds r1, r1, r3
	mov sl, r1
	add r0, sl
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r3, #0x18
	mov sb, r3
	add r0, sb
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r2, #0x80
	rsbs r2, r2, #0
	strb r2, [r4]
	movs r1, #1
	mov r0, r8
	strb r1, [r0]
	ldr r0, _0806028C @ =gUnknown_0868D434
	str r0, [sp, #0x14]
	movs r0, #0xc4
	lsls r0, r0, #3
	str r0, [sp, #0x18]
	ldr r0, _08060290 @ =gUnknown_0868D414
	str r0, [sp, #0x20]
	movs r2, #0x20
	str r2, [sp, #0x24]
	ldr r0, _08060294 @ =gUnknown_0868DA54
	str r0, [sp, #0x10]
	movs r0, #0xb0
	lsls r0, r0, #3
	str r0, [sp, #0x1c]
	strb r1, [r6]
	strb r1, [r7]
	movs r0, #0x15
	strb r0, [r5]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08060280 @ =gUiGraphics + 0x8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08060284 @ =gUiGraphics + 0xC
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08060288 @ =gUiGraphics + 0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	bl sub_80528AC
	b _080603BC
	.align 2, 0
_0806026C: .4byte gLoadedSaveGame
_08060270: .4byte gUnknown_0868B8F4
_08060274: .4byte gUnknown_0868B8D4
_08060278: .4byte gUnknown_0868C0B4
_0806027C: .4byte gUiGraphics
_08060280: .4byte gUiGraphics + 0x8
_08060284: .4byte gUiGraphics + 0xC
_08060288: .4byte gUiGraphics + 0x10
_0806028C: .4byte gUnknown_0868D434
_08060290: .4byte gUnknown_0868D414
_08060294: .4byte gUnknown_0868DA54
_08060298:
	add r4, sp, #0x2c
	movs r1, #0
	movs r2, #0x80
	rsbs r2, r2, #0
	strb r2, [r4]
	movs r0, #0x2b
	add r0, sp
	mov r8, r0
	strb r1, [r0]
	ldr r0, _080604C0 @ =gUnknown_0868C5D4
	str r0, [sp, #0x14]
	movs r0, #0x94
	lsls r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, _080604C4 @ =gUnknown_0868C5B4
	str r0, [sp, #0x20]
	movs r2, #0x20
	str r2, [sp, #0x24]
	ldr r0, _080604C8 @ =gUnknown_0868CF14
	str r0, [sp, #0x10]
	movs r0, #0xa0
	lsls r0, r0, #3
	str r0, [sp, #0x1c]
	add r6, sp, #0x28
	strb r1, [r6]
	mov r7, sp
	adds r7, #0x29
	strb r1, [r7]
	mov r5, sp
	adds r5, #0x2a
	movs r0, #0x15
	strb r0, [r5]
	ldr r3, _080604CC @ =gUiGraphics
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080604D0 @ =gUiGraphics + 0x8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080604D4 @ =gUiGraphics + 0xC
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080604D8 @ =gUiGraphics + 0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0x14
	adds r1, r1, r3
	mov sl, r1
	add r0, sl
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r3, #0x18
	mov sb, r3
	add r0, sb
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r2, #0x80
	rsbs r2, r2, #0
	strb r2, [r4]
	movs r1, #1
	mov r0, r8
	strb r1, [r0]
	ldr r0, _080604DC @ =gUnknown_0868DFF4
	str r0, [sp, #0x14]
	movs r0, #0xc0
	lsls r0, r0, #3
	str r0, [sp, #0x18]
	ldr r0, _080604E0 @ =gUnknown_0868DFD4
	str r0, [sp, #0x20]
	movs r2, #0x20
	str r2, [sp, #0x24]
	ldr r0, _080604E4 @ =gUnknown_0868E5F4
	str r0, [sp, #0x10]
	movs r0, #0xb0
	lsls r0, r0, #3
	str r0, [sp, #0x1c]
	strb r1, [r6]
	strb r1, [r7]
	movs r0, #0x15
	strb r0, [r5]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080604D0 @ =gUiGraphics + 0x8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080604D4 @ =gUiGraphics + 0xC
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080604D8 @ =gUiGraphics + 0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	bl sub_80528AC
_080603BC:
	adds r7, r4, #0
	mov sb, r8
	mov sl, r6
	movs r0, #0
	strb r0, [r7]
	movs r5, #2
	mov r2, sb
	strb r5, [r2]
	ldr r0, _080604CC @ =gUiGraphics
	mov r8, r0
	ldr r0, [r0]
	str r0, [sp, #0x14]
	mov r1, r8
	ldr r0, [r1, #4]
	str r0, [sp, #0x20]
	ldr r6, _080604E8 @ =0x06010000
	str r6, [sp, #0xc]
	movs r0, #0xdc
	lsls r0, r0, #5
	str r0, [sp, #0x18]
	movs r4, #0x20
	str r4, [sp, #0x24]
	mov r2, sl
	strb r5, [r2]
	movs r0, #0xd
	movs r1, #0x2a
	add r1, sp
	strb r0, [r1]
	mov r2, r8
	ldr r0, [r2, #8]
	str r0, [sp, #4]
	mov r1, sp
	ldr r0, [r2, #0xc]
	strb r0, [r1, #8]
	ldr r0, [r2, #0x10]
	strb r0, [r1, #9]
	ldr r0, [r2, #0x14]
	strb r0, [r1, #0xa]
	ldr r0, [r2, #0x18]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r0, #0x3c
	strb r0, [r7]
	movs r0, #3
	mov r1, sb
	strb r0, [r1]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	mov r1, r8
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	str r6, [sp, #0xc]
	str r4, [sp, #0x18]
	str r4, [sp, #0x24]
	mov r2, sl
	strb r5, [r2]
	movs r0, #0xc
	movs r1, #0x2a
	add r1, sp
	strb r0, [r1]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	mov r1, r8
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	mov r1, r8
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	mov r1, r8
	adds r1, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	mov r1, r8
	adds r1, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r7]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	mov r1, r8
	adds r1, #0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	bl sub_80528AC
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080604C0: .4byte gUnknown_0868C5D4
_080604C4: .4byte gUnknown_0868C5B4
_080604C8: .4byte gUnknown_0868CF14
_080604CC: .4byte gUiGraphics
_080604D0: .4byte gUiGraphics + 0x8
_080604D4: .4byte gUiGraphics + 0xC
_080604D8: .4byte gUiGraphics + 0x10
_080604DC: .4byte gUnknown_0868DFF4
_080604E0: .4byte gUnknown_0868DFD4
_080604E4: .4byte gUnknown_0868E5F4
_080604E8: .4byte 0x06010000

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
	movs r0, #0xa
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
	ldr r0, _080606B4 @ =sub_806070C
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _080606B8 @ =0x08060C85
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
	ldr r0, _080606BC @ =sub_8060874
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
	ldr r0, _08060704 @ =gUnknown_030054E0
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
	bl sub_8060088
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
	movs r0, #0xa
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
_080606B4: .4byte sub_806070C
_080606B8: .4byte 0x08060C85
_080606BC: .4byte sub_8060874
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
_08060704: .4byte gUnknown_030054E0
_08060708: .4byte 0x80000050

	thumb_func_start sub_806070C
sub_806070C: @ 0x0806070C
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

	thumb_func_start sub_8060874
sub_8060874: @ 0x08060874
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

    thumb_func_start sub_8060C84
sub_8060C84: @ 0x08060C84
    bx lr
    .align 2, 0

	thumb_func_start sub_8060C88
sub_8060C88: @ 0x08060C88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	bl sub_8053674
	add r6, sp, #0x2c
	movs r4, #0
	movs r0, #0x80
	mov sb, r0
	mov r1, sb
	strb r1, [r6]
	mov r5, sp
	adds r5, #0x2b
	movs r1, #1
	strb r1, [r5]
	ldr r0, _08060D90 @ =gUnknown_086972F4
	str r0, [sp, #0x14]
	movs r0, #0xc8
	lsls r0, r0, #5
	str r0, [sp, #0x18]
	ldr r0, _08060D94 @ =gUnknown_08698BF4
	str r0, [sp, #0x10]
	movs r2, #0xa0
	lsls r2, r2, #3
	mov sl, r2
	str r2, [sp, #0x1c]
	mov r7, sp
	adds r7, #0x29
	strb r1, [r7]
	movs r0, #0x2a
	add r0, sp
	mov r8, r0
	movs r0, #0x11
	mov r1, r8
	strb r0, [r1]
	str r4, [sp, #4]
	mov r0, sp
	strb r4, [r0, #8]
	strb r4, [r0, #9]
	strb r4, [r0, #0xa]
	strb r4, [r0, #0xb]
	bl sub_80528AC
	mov r2, sb
	strb r2, [r6]
	strb r4, [r5]
	ldr r0, _08060D98 @ =gUnknown_086958F4
	str r0, [sp, #0x14]
	movs r0, #0x9c
	lsls r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, _08060D9C @ =gUnknown_086956F4
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x24]
	ldr r0, _08060DA0 @ =gUnknown_086962B4
	str r0, [sp, #0x10]
	mov r0, sl
	str r0, [sp, #0x1c]
	add r1, sp, #0x28
	mov sb, r1
	strb r4, [r1]
	strb r4, [r7]
	movs r0, #0x15
	mov r2, r8
	strb r0, [r2]
	mov r0, sp
	bl sub_80528AC
	movs r2, #0x20
	strb r2, [r6]
	movs r1, #2
	strb r1, [r5]
	ldr r3, _08060DA4 @ =gUiGraphics
	movs r4, #0xe0
	lsls r4, r4, #2
	adds r0, r3, r4
	ldr r0, [r0]
	str r0, [sp, #0x14]
	adds r4, #4
	adds r0, r3, r4
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0xb0
	lsls r0, r0, #3
	str r0, [sp, #0x18]
	str r2, [sp, #0x24]
	mov r0, sb
	strb r1, [r0]
	ldr r0, _08060DA8 @ =0x06010020
	str r0, [sp, #0xc]
	movs r0, #0xd
	mov r1, r8
	strb r0, [r1]
	movs r2, #0xe2
	lsls r2, r2, #2
	adds r0, r3, r2
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r1, sp
	adds r4, #8
	adds r0, r3, r4
	ldr r0, [r0]
	strb r0, [r1, #8]
	adds r2, #8
	adds r0, r3, r2
	ldr r0, [r0]
	strb r0, [r1, #9]
	adds r4, #8
	adds r0, r3, r4
	ldr r0, [r0]
	strb r0, [r1, #0xa]
	adds r2, #8
	adds r0, r3, r2
	ldr r0, [r0]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08060D90: .4byte gUnknown_086972F4
_08060D94: .4byte gUnknown_08698BF4
_08060D98: .4byte gUnknown_086958F4
_08060D9C: .4byte gUnknown_086956F4
_08060DA0: .4byte gUnknown_086962B4
_08060DA4: .4byte gUiGraphics
_08060DA8: .4byte 0x06010020

	thumb_func_start sub_8060DAC
sub_8060DAC: @ 0x08060DAC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	lsls r6, r6, #0x18
	lsrs r0, r6, #0x18
	str r0, [sp, #4]
	bl sub_80535FC
	ldr r1, _08061094 @ =gDispCnt
	movs r2, #0x9a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0xa
	bl m4aSongNumStart
	ldr r1, _08061098 @ =gBgCntRegs
	movs r3, #0
	mov r8, r3
	movs r5, #0
	ldr r0, _0806109C @ =0x00001D83
	strh r0, [r1]
	ldr r0, _080610A0 @ =0x00001886
	strh r0, [r1, #2]
	ldr r0, _080610A4 @ =gBgScrollRegs
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	bl sub_8060C88
	ldr r0, _080610A8 @ =sub_8061144
	ldr r1, _080610AC @ =sub_806182C
	str r1, [sp]
	movs r1, #0xe4
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r7, #0xc0
	lsls r7, r7, #0x12
	adds r7, r7, r4
	mov sb, r7
	ldr r1, _080610B0 @ =0x030000D4
	adds r0, r4, r1
	str r5, [r0]
	ldr r2, _080610B4 @ =0x030000DE
	adds r0, r4, r2
	movs r3, #8
	strb r3, [r0]
	ldr r7, _080610B8 @ =0x030000D8
	adds r0, r4, r7
	str r5, [r0]
	mov r0, sb
	strh r5, [r0]
	movs r1, #1
	mov sl, r1
	mov r2, sl
	strh r2, [r0, #2]
	movs r3, #2
	strh r3, [r0, #4]
	strh r5, [r0, #6]
	movs r0, #0x80
	lsls r0, r0, #1
	mov r7, sb
	strh r0, [r7, #8]
	movs r0, #8
	strb r0, [r7, #0xa]
	ldr r1, _080610BC @ =0x030000DC
	adds r0, r4, r1
	mov r2, r8
	strb r2, [r0]
	ldr r3, _080610C0 @ =0x030000DD
	adds r0, r4, r3
	strb r2, [r0]
	ldr r7, _080610C4 @ =0x030000DF
	adds r0, r4, r7
	strb r2, [r0]
	adds r1, #4
	adds r0, r4, r1
	mov r2, sp
	ldrb r2, [r2, #4]
	strb r2, [r0]
	subs r7, #0xd3
	adds r3, r4, r7
	ldr r0, _080610C8 @ =0x06010C80
	str r0, [r3, #4]
	ldr r1, _080610CC @ =gUnknown_0868B0D4
	lsrs r6, r6, #0x19
	lsls r6, r6, #2
	adds r0, r6, r1
	ldrh r0, [r0]
	strh r0, [r3, #0xa]
	adds r1, #2
	adds r6, r6, r1
	ldrh r1, [r6]
	ldr r2, _080610D0 @ =0x0300002C
	adds r0, r4, r2
	strb r1, [r0]
	strh r5, [r3, #8]
	movs r0, #0x11
	strh r0, [r3, #0x16]
	movs r0, #0x18
	strh r0, [r3, #0x18]
	strh r5, [r3, #0x1a]
	strh r5, [r3, #0x1c]
	adds r7, #0x21
	adds r1, r4, r7
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _080610D4 @ =0x0300002E
	adds r0, r4, r1
	movs r2, #0x10
	strb r2, [r0]
	adds r7, #4
	adds r0, r4, r7
	mov r1, r8
	strb r1, [r0]
	movs r6, #1
	rsbs r6, r6, #0
	str r6, [r3, #0x28]
	movs r2, #0x80
	lsls r2, r2, #6
	str r2, [r3, #0x10]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	adds r7, #0xb
	adds r3, r4, r7
	ldr r0, _080610D8 @ =0x06011900
	str r0, [r3, #4]
	ldr r2, _080610DC @ =gUnknown_0868B0EC
	ldr r0, [sp, #4]
	mov r1, sl
	ands r0, r1
	lsls r0, r0, #2
	adds r1, r0, r2
	ldrh r1, [r1]
	strh r1, [r3, #0xa]
	adds r2, #2
	adds r0, r0, r2
	ldrh r1, [r0]
	ldr r2, _080610E0 @ =0x0300005C
	adds r0, r4, r2
	strb r1, [r0]
	strh r5, [r3, #8]
	movs r0, #0x55
	strh r0, [r3, #0x16]
	movs r0, #0x1b
	strh r0, [r3, #0x18]
	strh r5, [r3, #0x1a]
	strh r5, [r3, #0x1c]
	adds r7, #0x21
	adds r1, r4, r7
	adds r0, r6, #0
	strb r0, [r1]
	ldr r1, _080610E4 @ =0x0300005E
	adds r0, r4, r1
	movs r2, #0x10
	strb r2, [r0]
	adds r7, #4
	adds r0, r4, r7
	mov r1, r8
	strb r1, [r0]
	str r6, [r3, #0x28]
	movs r2, #0x80
	lsls r2, r2, #6
	str r2, [r3, #0x10]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	adds r7, #0xb
	adds r3, r4, r7
	ldr r0, _080610E8 @ =0x06012580
	str r0, [r3, #4]
	movs r0, #0xdd
	lsls r0, r0, #2
	strh r0, [r3, #0xa]
	ldr r1, _080610EC @ =0x0300008C
	adds r0, r4, r1
	movs r2, #2
	strb r2, [r0]
	strh r5, [r3, #8]
	movs r0, #0x15
	strh r0, [r3, #0x16]
	movs r0, #0x51
	strh r0, [r3, #0x18]
	strh r5, [r3, #0x1a]
	strh r5, [r3, #0x1c]
	adds r7, #0x21
	adds r1, r4, r7
	adds r0, r6, #0
	strb r0, [r1]
	ldr r1, _080610F0 @ =0x0300008E
	adds r0, r4, r1
	movs r2, #0x10
	strb r2, [r0]
	adds r7, #4
	adds r0, r4, r7
	mov r1, r8
	strb r1, [r0]
	str r6, [r3, #0x28]
	movs r2, #0x80
	lsls r2, r2, #6
	str r2, [r3, #0x10]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	adds r7, #0xb
	adds r3, r4, r7
	ldr r0, _080610F4 @ =0x06013200
	str r0, [r3, #4]
	ldr r0, _080610F8 @ =0x00000359
	strh r0, [r3, #0xa]
	ldr r1, _080610FC @ =0x030000BC
	adds r0, r4, r1
	mov r2, r8
	strb r2, [r0]
	strh r5, [r3, #8]
	movs r7, #0x14
	strh r7, [r3, #0x16]
	movs r0, #0x50
	strh r0, [r3, #0x18]
	strh r5, [r3, #0x1a]
	strh r5, [r3, #0x1c]
	ldr r0, _08061100 @ =0x030000BD
	adds r1, r4, r0
	adds r0, r6, #0
	strb r0, [r1]
	ldr r1, _08061104 @ =0x030000BE
	adds r0, r4, r1
	movs r2, #0x10
	strb r2, [r0]
	ldr r7, _08061108 @ =0x030000C1
	adds r0, r4, r7
	mov r1, r8
	strb r1, [r0]
	str r6, [r3, #0x28]
	movs r2, #0x80
	lsls r2, r2, #6
	str r2, [r3, #0x10]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	ldr r0, _0806110C @ =sub_8061480
	ldr r2, _08061110 @ =0x00002030
	str r5, [sp]
	movs r1, #0x58
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #6]
	subs r7, #0xc1
	adds r3, r1, r7
	str r5, [r3, #0x4c]
	strh r5, [r3, #0x3a]
	strh r5, [r3, #0x3c]
	strh r5, [r3, #0x3e]
	ldr r0, _08061114 @ =0x03000040
	movs r7, #2
	strh r7, [r0, r1]
	adds r0, #2
	strh r7, [r0, r1]
	adds r0, #4
	movs r7, #1
	strb r7, [r0, r1]
	strh r5, [r3, #0x38]
	str r5, [r3, #0x48]
	ldr r3, _08061118 @ =0x03000050
	adds r0, r1, r3
	mov r7, r8
	strb r7, [r0]
	adds r3, #2
	adds r0, r1, r3
	strb r7, [r0]
	adds r3, #1
	adds r0, r1, r3
	strb r7, [r0]
	ldr r0, _0806111C @ =0x03000054
	adds r1, r1, r0
	mov r3, sp
	ldrb r3, [r3, #4]
	strb r3, [r1]
	ldr r7, _08061120 @ =0x030000CC
	adds r0, r4, r7
	str r2, [r0]
	ldr r0, _08061124 @ =sub_8061830
	movs r2, #0x82
	lsls r2, r2, #6
	str r5, [sp]
	movs r1, #0x58
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	str r5, [r3, #0x4c]
	str r5, [r3, #0x48]
	subs r7, #0x7c
	mov r0, r8
	strb r0, [r7, r1]
	adds r7, #2
	strb r0, [r7, r1]
	ldr r0, _08061128 @ =0x03000053
	mov r7, r8
	strb r7, [r0, r1]
	adds r0, #1
	mov r7, sp
	ldrb r7, [r7, #4]
	strb r7, [r0, r1]
	adds r0, #0x7c
	adds r4, r4, r0
	str r2, [r4]
	ldr r0, _0806112C @ =0x060108E0
	str r0, [r3, #4]
	ldr r0, _08061130 @ =0x00000371
	strh r0, [r3, #0xa]
	ldr r2, _08061134 @ =0x03000020
	adds r0, r1, r2
	movs r7, #8
	strb r7, [r0]
	strh r5, [r3, #8]
	movs r0, #0x14
	strh r0, [r3, #0x16]
	movs r0, #0x3d
	strh r0, [r3, #0x18]
	strh r5, [r3, #0x1a]
	strh r5, [r3, #0x1c]
	ldr r7, _08061138 @ =0x03000021
	adds r2, r1, r7
	adds r0, r6, #0
	strb r0, [r2]
	ldr r2, _0806113C @ =0x03000022
	adds r0, r1, r2
	movs r7, #0x10
	strb r7, [r0]
	ldr r0, _08061140 @ =0x03000025
	adds r1, r1, r0
	mov r2, r8
	strb r2, [r1]
	str r6, [r3, #0x28]
	movs r7, #0x80
	lsls r7, r7, #6
	str r7, [r3, #0x10]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	mov r0, sb
	bl sub_805423C
	movs r0, #0xa
	bl m4aSongNumStartOrContinue
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08061094: .4byte gDispCnt
_08061098: .4byte gBgCntRegs
_0806109C: .4byte 0x00001D83
_080610A0: .4byte 0x00001886
_080610A4: .4byte gBgScrollRegs
_080610A8: .4byte sub_8061144
_080610AC: .4byte sub_806182C
_080610B0: .4byte 0x030000D4
_080610B4: .4byte 0x030000DE
_080610B8: .4byte 0x030000D8
_080610BC: .4byte 0x030000DC
_080610C0: .4byte 0x030000DD
_080610C4: .4byte 0x030000DF
_080610C8: .4byte 0x06010C80
_080610CC: .4byte gUnknown_0868B0D4
_080610D0: .4byte 0x0300002C
_080610D4: .4byte 0x0300002E
_080610D8: .4byte 0x06011900
_080610DC: .4byte gUnknown_0868B0EC
_080610E0: .4byte 0x0300005C
_080610E4: .4byte 0x0300005E
_080610E8: .4byte 0x06012580
_080610EC: .4byte 0x0300008C
_080610F0: .4byte 0x0300008E
_080610F4: .4byte 0x06013200
_080610F8: .4byte 0x00000359
_080610FC: .4byte 0x030000BC
_08061100: .4byte 0x030000BD
_08061104: .4byte 0x030000BE
_08061108: .4byte 0x030000C1
_0806110C: .4byte sub_8061480
_08061110: .4byte 0x00002030
_08061114: .4byte 0x03000040
_08061118: .4byte 0x03000050
_0806111C: .4byte 0x03000054
_08061120: .4byte 0x030000CC
_08061124: .4byte sub_8061830
_08061128: .4byte 0x03000053
_0806112C: .4byte 0x060108E0
_08061130: .4byte 0x00000371
_08061134: .4byte 0x03000020
_08061138: .4byte 0x03000021
_0806113C: .4byte 0x03000022
_08061140: .4byte 0x03000025

	thumb_func_start sub_8061144
sub_8061144: @ 0x08061144
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r7, #0
	movs r0, #0
	str r0, [sp]
	ldr r0, _080611E0 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r4, r1
	ldr r2, _080611E4 @ =0x030000CC
	adds r0, r4, r2
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov r8, r0
	ldr r3, _080611E8 @ =0x030000D0
	adds r0, r4, r3
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sl, r0
	ldr r0, _080611EC @ =0x030000D8
	adds r2, r4, r0
	ldr r1, [r2]
	adds r3, #4
	adds r0, r4, r3
	ldr r3, [r0]
	mov sb, r3
	movs r3, #1
	add sb, r3
	mov r3, sb
	str r3, [r0]
	mov r0, r8
	str r3, [r0, #0x48]
	mov r0, sl
	str r3, [r0, #0x48]
	str r1, [r2]
	mov r2, r8
	str r1, [r2, #0x4c]
	str r1, [r0, #0x4c]
	ldr r3, _080611F0 @ =0x030000DE
	adds r5, r4, r3
	ldrh r0, [r5]
	cmp r0, #0
	bne _0806126C
	ldr r0, _080611F4 @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08061200
	movs r0, #0x6c
	bl m4aSongNumStart
	movs r0, #2
	strb r0, [r5]
	ldr r0, _080611F8 @ =0x030000DC
	adds r2, r4, r0
	ldrb r1, [r2]
	ldr r3, _080611FC @ =0x030000DD
	adds r0, r4, r3
	strb r1, [r0]
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r2]
	movs r0, #0x6c
	bl m4aSongNumStart
	b _0806122E
	.align 2, 0
_080611E0: .4byte gCurTask
_080611E4: .4byte 0x030000CC
_080611E8: .4byte 0x030000D0
_080611EC: .4byte 0x030000D8
_080611F0: .4byte 0x030000DE
_080611F4: .4byte gRepeatedKeys
_080611F8: .4byte 0x030000DC
_080611FC: .4byte 0x030000DD
_08061200:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0806122E
	movs r0, #0x6c
	bl m4aSongNumStart
	movs r0, #2
	strb r0, [r5]
	ldr r0, _08061260 @ =0x030000DC
	adds r2, r4, r0
	ldrb r1, [r2]
	ldr r3, _08061264 @ =0x030000DD
	adds r0, r4, r3
	strb r1, [r0]
	ldrb r0, [r2]
	subs r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r2]
	movs r0, #0x6c
	bl m4aSongNumStart
_0806122E:
	ldr r0, _08061268 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	adds r4, r6, #0
	adds r4, #0xdf
	cmp r0, #0
	beq _0806127A
	movs r0, #0x6b
	bl m4aSongNumStart
	movs r0, #1
	strb r0, [r4]
	strh r0, [r6, #4]
	ldrh r1, [r6, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	subs r0, r0, r1
	strh r0, [r6, #6]
	movs r0, #0x6b
	bl m4aSongNumStart
	b _0806127A
	.align 2, 0
_08061260: .4byte 0x030000DC
_08061264: .4byte 0x030000DD
_08061268: .4byte gPressedKeys
_0806126C:
	ldrb r0, [r5]
	ldr r3, _0806131C @ =0x030000DF
	adds r4, r4, r3
	cmp r0, #0
	beq _0806127A
	subs r0, #1
	strb r0, [r5]
_0806127A:
	adds r0, r6, #0
	bl sub_805423C
	adds r2, r6, #0
	adds r2, #0xde
	ldrb r0, [r2]
	mov r1, r8
	adds r1, #0x52
	movs r5, #0
	strb r0, [r1]
	ldrb r0, [r2]
	mov r1, sl
	adds r1, #0x52
	strb r0, [r1]
	adds r3, r6, #0
	adds r3, #0xdd
	ldrb r0, [r3]
	mov r1, r8
	adds r1, #0x51
	strb r0, [r1]
	subs r2, #2
	ldrb r1, [r2]
	mov r0, r8
	adds r0, #0x50
	strb r1, [r0]
	ldrb r0, [r3]
	mov r1, sl
	adds r1, #0x51
	strb r0, [r1]
	ldrb r1, [r2]
	mov r0, sl
	adds r0, #0x50
	strb r1, [r0]
	ldrb r0, [r4]
	cmp r0, #0
	beq _08061334
	movs r0, #6
	ldrsh r1, [r6, r0]
	movs r0, #0xc0
	lsls r0, r0, #5
	cmp r1, r0
	ble _08061334
	movs r1, #4
	ldrsh r0, [r6, r1]
	cmp r0, #1
	bne _08061334
	ldr r2, _08061320 @ =gFlags
	ldr r0, [r2]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	movs r0, #0xa
	bl m4aSongNumStop
	ldr r2, _08061324 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08061328 @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0806132C @ =gBldRegs
	strh r5, [r0]
	strh r5, [r0, #4]
	adds r0, r6, #0
	adds r0, #0xcc
	ldr r0, [r0]
	bl TaskDestroy
	adds r0, r6, #0
	adds r0, #0xd0
	ldr r0, [r0]
	bl TaskDestroy
	ldr r0, _08061330 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	movs r0, #1
	bl sub_8061948
	b _080613A8
	.align 2, 0
_0806131C: .4byte 0x030000DF
_08061320: .4byte gFlags
_08061324: .4byte gDispCnt
_08061328: .4byte 0x00001FFF
_0806132C: .4byte gBldRegs
_08061330: .4byte gCurTask
_08061334:
	movs r0, #0xff
	mov r3, sb
	ands r3, r0
	ldr r1, _080613B8 @ =gFlags
	ldr r0, [r1]
	movs r2, #4
	orrs r0, r2
	str r0, [r1]
	ldr r1, _080613BC @ =sa2__gUnknown_03002878
	ldr r0, _080613C0 @ =0x04000010
	str r0, [r1]
	ldr r0, _080613C4 @ =sa2__gUnknown_03002A80
	strb r2, [r0]
	ldr r0, _080613C8 @ =gBgOffsetsHBlank
	lsls r1, r7, #2
	ldr r0, [r0]
	adds r2, r0, r1
	cmp r7, #0xa0
	bhs _080613A4
_0806135A:
	movs r1, #0
	ldr r6, [sp]
	lsls r5, r6, #0x18
	lsls r4, r3, #0x10
	cmp r7, #0xa0
	bhs _0806138C
	adds r3, #0
	ldr r6, _080613CC @ =0x000001FF
	adds r0, r6, #0
	ands r3, r0
_0806136E:
	strh r3, [r2]
	adds r2, #2
	movs r0, #0
	strh r0, [r2]
	adds r2, #2
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x17
	bhi _0806138C
	cmp r7, #0xa0
	blo _0806136E
_0806138C:
	asrs r1, r5, #0x18
	asrs r0, r4, #0x10
	adds r0, r0, r1
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	rsbs r1, r1, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp]
	cmp r7, #0xa0
	blo _0806135A
_080613A4:
	bl sub_80613D0
_080613A8:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080613B8: .4byte gFlags
_080613BC: .4byte sa2__gUnknown_03002878
_080613C0: .4byte 0x04000010
_080613C4: .4byte sa2__gUnknown_03002A80
_080613C8: .4byte gBgOffsetsHBlank
_080613CC: .4byte 0x000001FF

	thumb_func_start sub_80613D0
sub_80613D0: @ 0x080613D0
	push {r4, r5, lr}
	ldr r0, _08061460 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	ldr r0, _08061464 @ =0x0300000C
	adds r5, r4, r0
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _08061468 @ =0x0300003C
	adds r5, r4, r0
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0806146C @ =0x0300006C
	adds r5, r4, r0
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _08061470 @ =0x0300009C
	adds r5, r4, r0
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	ldr r0, _08061474 @ =0x030000D4
	adds r4, r4, r0
	ldr r0, [r4]
	movs r1, #0xa
	bl Div
	lsls r0, r0, #0x18
	ldr r1, [r5, #0x10]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	str r1, [r5, #0x10]
	ldr r2, _08061478 @ =gUnknown_0868B0F4
	movs r1, #0xe0
	lsls r1, r1, #0x13
	ands r1, r0
	lsrs r1, r1, #0x18
	adds r1, r1, r2
	ldrb r4, [r1]
	adds r0, r4, #0
	adds r0, #0xf
	strh r0, [r5, #0x16]
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #0x10]
	ldr r1, _0806147C @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r5, #0x10]
	movs r0, #0xe1
	subs r0, r0, r4
	strh r0, [r5, #0x16]
	adds r0, r5, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08061460: .4byte gCurTask
_08061464: .4byte 0x0300000C
_08061468: .4byte 0x0300003C
_0806146C: .4byte 0x0300006C
_08061470: .4byte 0x0300009C
_08061474: .4byte 0x030000D4
_08061478: .4byte gUnknown_0868B0F4
_0806147C: .4byte 0xFFFFFBFF

	thumb_func_start sub_8061480
sub_8061480: @ 0x08061480
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	ldr r0, _080614AC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r0, [sp, #0x38]
	ldr r2, _080614B0 @ =0x03000052
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #1
	bhi _080614B8
	ldr r3, _080614B4 @ =0x03000050
	adds r0, r1, r3
	b _080614BC
	.align 2, 0
_080614AC: .4byte gCurTask
_080614B0: .4byte 0x03000052
_080614B4: .4byte 0x03000050
_080614B8:
	ldr r2, _08061554 @ =0x03000051
	adds r0, r1, r2
_080614BC:
	ldrb r0, [r0]
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x38]
	adds r0, #0x52
	ldrb r1, [r0]
	cmp r1, #1
	beq _080614CC
	b _08061706
_080614CC:
	str r1, [sp, #0x48]
	bl sub_8053674
	ldr r0, [sp, #0x38]
	adds r0, #0x50
	ldrb r7, [r0]
	ldr r1, [sp, #0x48]
	cmp r7, #0
	bne _0806156C
	add r6, sp, #0x2c
	movs r5, #0x80
	strb r5, [r6]
	mov r4, sp
	adds r4, #0x2b
	strb r1, [r4]
	ldr r0, _08061558 @ =gUnknown_086972F4
	str r0, [sp, #0x14]
	movs r0, #0xc8
	lsls r0, r0, #5
	str r0, [sp, #0x18]
	ldr r0, _0806155C @ =gUnknown_08698BF4
	str r0, [sp, #0x10]
	movs r3, #0xa0
	lsls r3, r3, #3
	mov r8, r3
	str r3, [sp, #0x1c]
	movs r0, #0x29
	add r0, sp
	mov sb, r0
	strb r1, [r0]
	movs r1, #0x2a
	add r1, sp
	mov sl, r1
	movs r0, #0x11
	strb r0, [r1]
	str r7, [sp, #4]
	mov r0, sp
	strb r7, [r0, #8]
	strb r7, [r0, #9]
	strb r7, [r0, #0xa]
	strb r7, [r0, #0xb]
	bl sub_80528AC
	strb r5, [r6]
	strb r7, [r4]
	ldr r0, _08061560 @ =gUnknown_086958F4
	str r0, [sp, #0x14]
	movs r0, #0x9c
	lsls r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, _08061564 @ =gUnknown_086956F4
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x24]
	ldr r0, _08061568 @ =gUnknown_086962B4
	str r0, [sp, #0x10]
	mov r2, r8
	str r2, [sp, #0x1c]
	add r0, sp, #0x28
	strb r7, [r0]
	mov r3, sb
	strb r7, [r3]
	movs r0, #0x15
	mov r1, sl
	strb r0, [r1]
	b _08061670
	.align 2, 0
_08061554: .4byte 0x03000051
_08061558: .4byte gUnknown_086972F4
_0806155C: .4byte gUnknown_08698BF4
_08061560: .4byte gUnknown_086958F4
_08061564: .4byte gUnknown_086956F4
_08061568: .4byte gUnknown_086962B4
_0806156C:
	cmp r7, #1
	bne _080615F8
	add r2, sp, #0x2c
	mov r8, r2
	movs r4, #0
	movs r6, #0x80
	strb r6, [r2]
	mov r5, sp
	adds r5, #0x2b
	strb r1, [r5]
	ldr r0, _080615E4 @ =gUnknown_0869A9B4
	str r0, [sp, #0x14]
	movs r0, #0xe2
	lsls r0, r0, #5
	str r0, [sp, #0x18]
	ldr r0, _080615E8 @ =gUnknown_0869C5F4
	str r0, [sp, #0x10]
	movs r3, #0xa0
	lsls r3, r3, #3
	mov sb, r3
	str r3, [sp, #0x1c]
	movs r0, #0x29
	add r0, sp
	mov sl, r0
	strb r1, [r0]
	mov r7, sp
	adds r7, #0x2a
	movs r0, #0x11
	strb r0, [r7]
	str r4, [sp, #4]
	mov r0, sp
	strb r4, [r0, #8]
	strb r4, [r0, #9]
	strb r4, [r0, #0xa]
	strb r4, [r0, #0xb]
	bl sub_80528AC
	mov r1, r8
	strb r6, [r1]
	strb r4, [r5]
	ldr r0, _080615EC @ =gUnknown_086992F4
	str r0, [sp, #0x14]
	movs r0, #0xd0
	lsls r0, r0, #3
	str r0, [sp, #0x18]
	ldr r0, _080615F0 @ =gUnknown_086990F4
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x24]
	ldr r0, _080615F4 @ =gUnknown_08699974
	str r0, [sp, #0x10]
	mov r2, sb
	str r2, [sp, #0x1c]
	add r0, sp, #0x28
	strb r4, [r0]
	mov r3, sl
	strb r4, [r3]
	b _0806166C
	.align 2, 0
_080615E4: .4byte gUnknown_0869A9B4
_080615E8: .4byte gUnknown_0869C5F4
_080615EC: .4byte gUnknown_086992F4
_080615F0: .4byte gUnknown_086990F4
_080615F4: .4byte gUnknown_08699974
_080615F8:
	cmp r7, #2
	bne _0806168C
	add r0, sp, #0x2c
	mov r8, r0
	movs r4, #0
	movs r6, #0x80
	strb r6, [r0]
	mov r5, sp
	adds r5, #0x2b
	strb r1, [r5]
	ldr r0, _08061678 @ =gUnknown_08690574
	str r0, [sp, #0x14]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [sp, #0x18]
	ldr r0, _0806167C @ =gUnknown_08691D74
	str r0, [sp, #0x10]
	movs r2, #0xa0
	lsls r2, r2, #3
	mov sb, r2
	str r2, [sp, #0x1c]
	movs r3, #0x29
	add r3, sp
	mov sl, r3
	strb r1, [r3]
	mov r7, sp
	adds r7, #0x2a
	movs r0, #0x11
	strb r0, [r7]
	str r4, [sp, #4]
	mov r0, sp
	strb r4, [r0, #8]
	strb r4, [r0, #9]
	strb r4, [r0, #0xa]
	strb r4, [r0, #0xb]
	bl sub_80528AC
	mov r0, r8
	strb r6, [r0]
	strb r4, [r5]
	ldr r0, _08061680 @ =gUnknown_0868ED74
	str r0, [sp, #0x14]
	movs r0, #0xf8
	lsls r0, r0, #3
	str r0, [sp, #0x18]
	ldr r0, _08061684 @ =gUnknown_0868EB74
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x24]
	ldr r0, _08061688 @ =gUnknown_0868F534
	str r0, [sp, #0x10]
	mov r1, sb
	str r1, [sp, #0x1c]
	add r0, sp, #0x28
	strb r4, [r0]
	mov r2, sl
	strb r4, [r2]
_0806166C:
	movs r0, #0x15
	strb r0, [r7]
_08061670:
	mov r0, sp
	bl sub_80528AC
	b _08061706
	.align 2, 0
_08061678: .4byte gUnknown_08690574
_0806167C: .4byte gUnknown_08691D74
_08061680: .4byte gUnknown_0868ED74
_08061684: .4byte gUnknown_0868EB74
_08061688: .4byte gUnknown_0868F534
_0806168C:
	add r3, sp, #0x2c
	mov r8, r3
	movs r4, #0
	movs r6, #0x80
	strb r6, [r3]
	mov r5, sp
	adds r5, #0x2b
	strb r1, [r5]
	ldr r0, _08061780 @ =gUnknown_08693974
	str r0, [sp, #0x14]
	movs r0, #0xc4
	lsls r0, r0, #5
	str r0, [sp, #0x18]
	ldr r0, _08061784 @ =gUnknown_086951F4
	str r0, [sp, #0x10]
	movs r0, #0xa0
	lsls r0, r0, #3
	mov sb, r0
	str r0, [sp, #0x1c]
	movs r2, #0x29
	add r2, sp
	mov sl, r2
	strb r1, [r2]
	mov r7, sp
	adds r7, #0x2a
	movs r0, #0x11
	strb r0, [r7]
	str r4, [sp, #4]
	mov r0, sp
	strb r4, [r0, #8]
	strb r4, [r0, #9]
	strb r4, [r0, #0xa]
	strb r4, [r0, #0xb]
	bl sub_80528AC
	mov r3, r8
	strb r6, [r3]
	strb r4, [r5]
	ldr r0, _08061788 @ =gUnknown_08692474
	str r0, [sp, #0x14]
	movs r0, #0x98
	lsls r0, r0, #3
	str r0, [sp, #0x18]
	ldr r0, _0806178C @ =gUnknown_08692274
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x24]
	ldr r0, _08061790 @ =gUnknown_08692934
	str r0, [sp, #0x10]
	mov r0, sb
	str r0, [sp, #0x1c]
	add r0, sp, #0x28
	strb r4, [r0]
	mov r1, sl
	strb r4, [r1]
	movs r0, #0x15
	strb r0, [r7]
	mov r0, sp
	bl sub_80528AC
_08061706:
	movs r7, #0
	add r6, sp, #0x30
	ldr r2, [sp, #0x38]
	adds r2, #0x30
	mov sb, r2
	ldr r3, [sp, #0x38]
	adds r3, #0x54
	str r3, [sp, #0x40]
	ldr r0, _08061794 @ =gLoadedSaveGame
	adds r0, #0x20
	str r0, [sp, #0x44]
	mov r8, r6
	ldr r1, _08061798 @ =gUnknown_0865F06C
	mov sl, r1
_08061722:
	movs r0, #1
	ldr r2, [sp, #0x38]
	strh r0, [r2, #0x3e]
	adds r0, r7, #0
	adds r0, #0x21
	mov r3, r8
	strb r0, [r3]
	movs r0, #0x2c
	strh r0, [r2, #0x3a]
	lsls r4, r7, #4
	adds r4, #0x5c
	strh r4, [r2, #0x3c]
	mov r0, r8
	mov r1, sb
	bl sub_805321C
	movs r0, #7
	ldr r1, [sp, #0x38]
	strh r0, [r1, #0x3e]
	movs r0, #0x54
	strh r0, [r1, #0x3a]
	strh r4, [r1, #0x3c]
	ldr r2, [sp, #0x40]
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r0, r0, r7
	lsls r0, r0, #2
	movs r1, #0xd8
	ldr r3, [sp, #0x3c]
	muls r1, r3, r1
	adds r0, r0, r1
	ldr r1, [sp, #0x44]
	adds r0, r1, r0
	ldr r5, [r0]
	ldr r0, _0806179C @ =0x00008C9F
	cmp r5, r0
	bls _080617A0
	movs r1, #0x29
	strb r1, [r6, #6]
	strb r1, [r6, #5]
	strb r1, [r6, #3]
	movs r0, #0x25
	strb r0, [r6, #2]
	strb r1, [r6]
	b _080617F6
	.align 2, 0
_08061780: .4byte gUnknown_08693974
_08061784: .4byte gUnknown_086951F4
_08061788: .4byte gUnknown_08692474
_0806178C: .4byte gUnknown_08692274
_08061790: .4byte gUnknown_08692934
_08061794: .4byte gLoadedSaveGame
_08061798: .4byte gUnknown_0865F06C
_0806179C: .4byte 0x00008C9F
_080617A0:
	adds r0, r5, #0
	movs r1, #0x3c
	bl Div
	adds r4, r0, #0
	movs r1, #0x3c
	bl Div
	ldr r2, _08061820 @ =sZoneTimeSecondsTable
	lsls r0, r0, #1
	adds r1, r0, r2
	movs r3, #0
	ldrsh r1, [r1, r3]
	subs r4, r4, r1
	lsls r4, r4, #1
	adds r2, r4, r2
	movs r1, #0
	ldrsh r2, [r2, r1]
	subs r2, r5, r2
	ldr r1, _08061824 @ =sZoneTimeMinutesTable
	adds r1, r0, r1
	ldrh r1, [r1]
	subs r2, r2, r1
	lsls r2, r2, #1
	ldr r3, _08061828 @ =gUnknown_0865EFF4
	adds r1, r2, #1
	adds r1, r1, r3
	ldrb r1, [r1]
	strb r1, [r6, #6]
	adds r2, r2, r3
	ldrb r1, [r2]
	strb r1, [r6, #5]
	adds r1, r4, #1
	add r1, sl
	ldrb r1, [r1]
	strb r1, [r6, #3]
	add r4, sl
	ldrb r1, [r4]
	strb r1, [r6, #2]
	adds r0, #1
	add r0, sl
	ldrb r0, [r0]
	strb r0, [r6]
_080617F6:
	movs r0, #0x2a
	mov r2, r8
	strb r0, [r2, #1]
	strb r0, [r2, #4]
	mov r0, r8
	mov r1, sb
	bl sub_805321C
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #2
	bls _08061722
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08061820: .4byte sZoneTimeSecondsTable
_08061824: .4byte sZoneTimeMinutesTable
_08061828: .4byte gUnknown_0865EFF4

	thumb_func_start sub_806182C
sub_806182C: @ 0x0806182C
	bx lr
	.align 2, 0

	thumb_func_start sub_8061830
sub_8061830: @ 0x08061830
	push {r4, lr}
	ldr r0, _0806184C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, _08061850 @ =0x03000052
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #1
	bhi _08061854
	subs r2, #2
	b _08061856
	.align 2, 0
_0806184C: .4byte gCurTask
_08061850: .4byte 0x03000052
_08061854:
	ldr r2, _0806188C @ =0x03000051
_08061856:
	adds r0, r1, r2
	ldrb r0, [r0]
	ldr r1, _08061890 @ =gUnknown_0868B0FC
	lsls r2, r0, #2
	adds r0, r2, r1
	ldrh r0, [r0]
	strh r0, [r4, #0xa]
	adds r1, #2
	adds r2, r2, r1
	ldrh r1, [r2]
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806188C: .4byte 0x03000051
_08061890: .4byte gUnknown_0868B0FC

	thumb_func_start sub_8061894
sub_8061894: @ 0x08061894
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0x30
	bl sub_8053674
	add r0, sp, #0x2c
	mov r8, r0
	movs r4, #0
	movs r6, #0x80
	strb r6, [r0]
	mov r5, sp
	adds r5, #0x2b
	movs r1, #1
	strb r1, [r5]
	ldr r0, _08061934 @ =gUnknown_086A17F4
	str r0, [sp, #0x14]
	movs r0, #0xe0
	lsls r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, _08061938 @ =gUnknown_086A2534
	str r0, [sp, #0x10]
	movs r0, #0xa0
	lsls r0, r0, #3
	str r0, [sp, #0x1c]
	movs r0, #0x29
	add r0, sp
	mov sb, r0
	strb r1, [r0]
	movs r1, #0x2a
	add r1, sp
	mov sl, r1
	movs r0, #0x11
	strb r0, [r1]
	str r4, [sp, #4]
	mov r0, sp
	strb r4, [r0, #8]
	strb r4, [r0, #9]
	strb r4, [r0, #0xa]
	strb r4, [r0, #0xb]
	bl sub_80528AC
	mov r0, r8
	strb r6, [r0]
	strb r4, [r5]
	ldr r0, _0806193C @ =gUnknown_086A2C34
	str r0, [sp, #0x14]
	movs r0, #0x8c
	lsls r0, r0, #5
	str r0, [sp, #0x18]
	ldr r0, _08061940 @ =gUnknown_086A2A34
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x24]
	ldr r0, _08061944 @ =gUnknown_086A3DB4
	str r0, [sp, #0x10]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [sp, #0x1c]
	add r0, sp, #0x28
	strb r4, [r0]
	mov r1, sb
	strb r4, [r1]
	movs r0, #0x15
	mov r1, sl
	strb r0, [r1]
	mov r0, sp
	bl sub_80528AC
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08061934: .4byte gUnknown_086A17F4
_08061938: .4byte gUnknown_086A2534
_0806193C: .4byte gUnknown_086A2C34
_08061940: .4byte gUnknown_086A2A34
_08061944: .4byte gUnknown_086A3DB4

	thumb_func_start sub_8061948
sub_8061948: @ 0x08061948
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x34]
	ldr r1, _08061980 @ =gMultiplayerMissingHeartbeats
	movs r0, #0
	strb r0, [r1, #3]
	strb r0, [r1, #2]
	strb r0, [r1, #1]
	strb r0, [r1]
	movs r0, #4
	bl m4aSongNumStart
	bl sub_80535FC
	bl sub_8053674
	ldr r0, [sp, #0x34]
	cmp r0, #1
	bne _08061984
	movs r1, #0xd
	str r1, [sp, #0x3c]
	b _08061A20
	.align 2, 0
_08061980: .4byte gMultiplayerMissingHeartbeats
_08061984:
	ldr r0, _080619A0 @ =gGameMode
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #1
	bls _080619AC
	ldr r0, _080619A4 @ =gUnknown_03005140
	ldrb r0, [r0]
	adds r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x3c]
	ldr r2, _080619A8 @ =gSelectedCharacter
	b _080619C4
	.align 2, 0
_080619A0: .4byte gGameMode
_080619A4: .4byte gUnknown_03005140
_080619A8: .4byte gSelectedCharacter
_080619AC:
	ldr r1, _080619E4 @ =gLoadedSaveGame
	ldr r2, _080619E8 @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	adds r1, #8
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x3c]
_080619C4:
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne _080619FC
	ldr r2, [sp, #0x3c]
	cmp r2, #0
	bne _080619D6
	movs r4, #1
	str r4, [sp, #0x3c]
_080619D6:
	ldr r0, [sp, #0x3c]
	cmp r0, #0xf
	bls _080619EC
	movs r1, #0xf
	str r1, [sp, #0x3c]
	b _08061A10
	.align 2, 0
_080619E4: .4byte gLoadedSaveGame
_080619E8: .4byte gSelectedCharacter
_080619EC:
	ldr r0, _080619F8 @ =gLoadedSaveGame
	ldrh r0, [r0, #8]
	cmp r0, #0xd
	bne _08061A10
	b _08061A0C
	.align 2, 0
_080619F8: .4byte gLoadedSaveGame
_080619FC:
	ldr r4, [sp, #0x3c]
	cmp r4, #0
	bne _08061A06
	movs r0, #1
	str r0, [sp, #0x3c]
_08061A06:
	ldr r1, [sp, #0x3c]
	cmp r1, #0xe
	bls _08061A10
_08061A0C:
	movs r2, #0xe
	str r2, [sp, #0x3c]
_08061A10:
	ldrb r0, [r3]
	cmp r0, #0
	beq _08061A20
	ldr r3, [sp, #0x3c]
	cmp r3, #0xd
	bls _08061A20
	movs r4, #0xd
	str r4, [sp, #0x3c]
_08061A20:
	ldr r1, _08061DE8 @ =gDispCnt
	movs r2, #0x9a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08061DEC @ =gBgCntRegs
	movs r6, #0
	movs r5, #0
	ldr r0, _08061DF0 @ =0x00001D83
	strh r0, [r1]
	ldr r0, _08061DF4 @ =0x00001886
	strh r0, [r1, #2]
	ldr r0, _08061DF8 @ =gBgScrollRegs
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	bl sub_8061894
	ldr r0, _08061DFC @ =sub_8061E84
	ldr r1, _08061E00 @ =0x08062ED9
	str r1, [sp]
	movs r1, #0x5c
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0x38]
	ldrh r4, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r7, r4, r3
	str r5, [r7, #0x4c]
	ldr r1, _08061E04 @ =0x03000057
	adds r0, r4, r1
	strb r6, [r0]
	ldr r2, _08061E08 @ =0x03000050
	adds r0, r4, r2
	movs r1, #0x14
	strh r1, [r0]
	adds r3, #0x52
	adds r0, r4, r3
	strh r1, [r0]
	ldr r1, _08061E0C @ =0x03000054
	adds r0, r4, r1
	strb r6, [r0]
	adds r2, #5
	adds r0, r4, r2
	movs r1, #1
	strb r1, [r0]
	adds r3, #6
	adds r3, r4, r3
	str r3, [sp, #0x40]
	add r0, sp, #0x3c
	ldrb r0, [r0]
	strb r0, [r3]
	adds r2, #4
	adds r0, r4, r2
	add r3, sp, #0x34
	ldrb r3, [r3]
	strb r3, [r0]
	strh r5, [r7]
	movs r2, #1
	strh r1, [r7, #2]
	movs r0, #2
	strh r0, [r7, #4]
	strh r5, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r7, #8]
	strb r2, [r7, #0xa]
	ldr r0, _08061E10 @ =sub_8062E18
	str r5, [sp]
	movs r1, #0x54
	ldr r2, _08061E14 @ =0x00002030
	movs r3, #0
	bl TaskCreate
	mov sb, r0
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov sl, r0
	str r5, [r0, #0x48]
	ldr r2, _08061E18 @ =0x0300004C
	adds r0, r1, r2
	strh r5, [r0]
	ldr r3, _08061E1C @ =0x0300004E
	adds r0, r1, r3
	strb r6, [r0]
	adds r2, #3
	adds r0, r1, r2
	strb r6, [r0]
	adds r3, #3
	adds r0, r1, r3
	add r2, sp, #0x3c
	ldrb r2, [r2]
	strb r2, [r0]
	mov r3, sl
	ldr r0, _08061E20 @ =0x06016400
	str r0, [r3, #4]
	ldr r0, _08061E24 @ =0x000002E9
	strh r0, [r3, #0xa]
	ldr r2, _08061E28 @ =0x03000020
	adds r0, r1, r2
	strb r6, [r0]
	strh r5, [r3, #0x1a]
	strh r5, [r3, #8]
	strh r5, [r3, #0x14]
	strh r5, [r3, #0x1c]
	ldr r0, _08061E2C @ =0x03000021
	adds r2, r1, r0
	movs r0, #0xff
	strb r0, [r2]
	ldr r2, _08061E30 @ =0x03000022
	adds r0, r1, r2
	movs r2, #0x10
	mov r8, r2
	mov r2, r8
	strb r2, [r0]
	ldr r0, _08061E34 @ =0x03000025
	adds r1, r1, r0
	strb r6, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x28]
	str r5, [r3, #0x10]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	mov r1, sb
	str r1, [r7, #0x18]
	ldr r2, _08061E38 @ =0x0300001C
	adds r3, r4, r2
	movs r0, #0x78
	strh r0, [r3, #0x16]
	movs r0, #0x50
	strh r0, [r3, #0x18]
	mov r1, sl
	ldr r0, [r1, #4]
	adds r0, #0xc0
	str r0, [r3, #4]
	movs r0, #0x80
	strh r0, [r3, #0x1a]
	strh r5, [r3, #8]
	ldr r0, _08061E3C @ =0x00000389
	strh r0, [r3, #0xa]
	adds r2, #0x20
	adds r0, r4, r2
	strb r6, [r0]
	strh r5, [r3, #0x14]
	strh r5, [r3, #0x1c]
	ldr r0, _08061E40 @ =0x0300003D
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08061E44 @ =0x0300003E
	adds r0, r4, r1
	mov r2, r8
	strb r2, [r0]
	ldr r0, _08061E48 @ =0x03000041
	adds r4, r4, r0
	strb r6, [r4]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r3, #0x10]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	ldr r0, _08061E4C @ =sub_8062A80
	movs r1, #0xb7
	lsls r1, r1, #2
	str r5, [sp]
	ldr r2, _08061E14 @ =0x00002030
	movs r3, #0
	bl TaskCreate
	mov r8, r0
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r2, r0
	mov sb, r2
	ldr r3, _08061E50 @ =0x030002D0
	adds r1, r0, r3
	str r5, [r1]
	ldr r4, _08061E54 @ =0x030002D4
	adds r1, r0, r4
	strh r5, [r1]
	ldr r2, _08061E58 @ =0x030002D6
	adds r1, r0, r2
	strb r6, [r1]
	adds r3, #7
	adds r1, r0, r3
	strb r6, [r1]
	adds r4, #6
	adds r1, r0, r4
	add r2, sp, #0x3c
	ldrb r2, [r2]
	strb r2, [r1]
	adds r3, #2
	adds r1, r0, r3
	strb r6, [r1]
	adds r4, #1
	adds r0, r0, r4
	add r1, sp, #0x34
	ldrb r1, [r1]
	strb r1, [r0]
	movs r4, #0
	ldr r2, [sp, #0x40]
	ldrb r2, [r2]
	cmp r4, r2
	bhs _08061C40
	ldr r6, _08061E5C @ =gUnknown_0868B10C
	movs r3, #8
	adds r3, r3, r6
	mov sl, r3
_08061BD8:
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r0, r1, #4
	mov r2, sb
	adds r3, r2, r0
	lsls r1, r1, #2
	adds r0, r1, r6
	ldr r0, [r0]
	str r0, [r3, #4]
	adds r0, r6, #4
	adds r0, r1, r0
	ldr r0, [r0]
	strh r0, [r3, #0xa]
	add r1, sl
	ldr r1, [r1]
	adds r0, r3, #0
	adds r0, #0x20
	strb r1, [r0]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r3, #0x1a]
	strh r5, [r3, #8]
	strh r5, [r3, #0x14]
	strh r5, [r3, #0x1c]
	adds r1, r3, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x25
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r3, #0x10]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r4, r0
	blo _08061BD8
_08061C40:
	ldr r5, _08061E60 @ =sub_8062C28
	cmp r4, #0xe
	bhi _08061C5E
	movs r1, #0
_08061C48:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	mov r2, sb
	adds r3, r2, r0
	str r1, [r3, #4]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xe
	bls _08061C48
_08061C5E:
	mov r3, r8
	str r3, [r7, #0x10]
	movs r1, #0xb7
	lsls r1, r1, #2
	ldr r2, _08061E14 @ =0x00002030
	movs r4, #0
	str r4, [sp]
	adds r0, r5, #0
	movs r3, #0
	bl TaskCreate
	mov r8, r0
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	ldr r2, _08061E50 @ =0x030002D0
	adds r1, r0, r2
	str r4, [r1]
	ldr r3, _08061E54 @ =0x030002D4
	adds r1, r0, r3
	movs r2, #0
	strh r4, [r1]
	ldr r4, _08061E58 @ =0x030002D6
	adds r1, r0, r4
	strb r2, [r1]
	adds r3, #3
	adds r1, r0, r3
	strb r2, [r1]
	adds r4, #4
	adds r0, r0, r4
	add r1, sp, #0x3c
	ldrb r1, [r1]
	strb r1, [r0]
	movs r4, #0
	ldr r2, _08061E64 @ =gUnknown_0868B1C0
	movs r5, #0
	movs r3, #8
	adds r3, r3, r2
	mov sl, r3
_08061CAE:
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r0, r1, #4
	adds r3, r6, r0
	lsls r1, r1, #2
	adds r0, r1, r2
	ldr r0, [r0]
	str r0, [r3, #4]
	adds r0, r2, #4
	adds r0, r1, r0
	ldr r0, [r0]
	strh r0, [r3, #0xa]
	add r1, sl
	ldr r1, [r1]
	adds r0, r3, #0
	adds r0, #0x20
	strb r1, [r0]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r3, #0x1a]
	strh r5, [r3, #8]
	strh r5, [r3, #0x14]
	strh r5, [r3, #0x1c]
	adds r1, r3, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x25
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r3, #0x10]
	adds r0, r3, #0
	str r2, [sp, #0x44]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r2, [sp, #0x44]
	cmp r4, #7
	bls _08061CAE
	cmp r4, #0xe
	bhi _08061D2C
	movs r1, #0
_08061D18:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r3, r6, r0
	str r1, [r3, #4]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xe
	bls _08061D18
_08061D2C:
	mov r2, r8
	str r2, [r7, #0x14]
	ldr r3, [sp, #0x34]
	cmp r3, #1
	bne _08061DD0
	ldr r1, _08061DF8 @ =gBgScrollRegs
	movs r3, #0
	movs r0, #0x14
	strh r0, [r1, #2]
	ldr r1, _08061DEC @ =gBgCntRegs
	ldr r0, _08061E68 @ =0x00009D83
	strh r0, [r1]
	movs r2, #0x3f
	str r2, [r7, #0x4c]
	movs r0, #0xb4
	lsls r0, r0, #2
	mov r4, sb
	adds r1, r4, r0
	str r2, [r1]
	adds r0, r6, r0
	str r2, [r0]
	ldr r0, _08061E6C @ =sub_8062140
	ldr r1, [sp, #0x38]
	str r0, [r1, #8]
	ldr r1, [r7, #0x10]
	ldr r0, _08061E70 @ =sub_8062B38
	str r0, [r1, #8]
	ldr r1, [r7, #0x14]
	ldr r0, _08061E74 @ =sub_8062CB4
	str r0, [r1, #8]
	add r1, sp, #0x30
	movs r0, #0x3e
	strb r0, [r1]
	mov r0, sp
	adds r0, #0x2f
	strb r3, [r0]
	ldr r2, _08061E78 @ =gUiGraphics
	movs r3, #0xd9
	lsls r3, r3, #3
	adds r0, r2, r3
	ldr r0, [r0]
	str r0, [sp, #0x18]
	ldr r4, _08061E7C @ =0x000006CC
	adds r0, r2, r4
	ldr r0, [r0]
	str r0, [sp, #0x24]
	movs r0, #0x20
	str r0, [sp, #0x1c]
	str r0, [sp, #0x28]
	add r1, sp, #0x2c
	movs r0, #3
	strb r0, [r1]
	ldr r0, _08061E80 @ =0x06010020
	str r0, [sp, #0x10]
	adds r1, #2
	movs r0, #0xc
	strb r0, [r1]
	movs r1, #0xda
	lsls r1, r1, #3
	adds r0, r2, r1
	ldr r0, [r0]
	str r0, [sp, #8]
	add r1, sp, #4
	adds r3, #0xc
	adds r0, r2, r3
	ldr r0, [r0]
	strb r0, [r1, #8]
	adds r4, #0xc
	adds r0, r2, r4
	ldr r0, [r0]
	strb r0, [r1, #9]
	adds r3, #8
	adds r0, r2, r3
	ldr r0, [r0]
	strb r0, [r1, #0xa]
	adds r4, #8
	adds r2, r2, r4
	ldr r0, [r2]
	strb r0, [r1, #0xb]
	adds r0, r1, #0
	bl sub_80528AC
_08061DD0:
	adds r0, r7, #0
	bl sub_805423C
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08061DE6:
	.byte 0x4D, 0xE0
_08061DE8: .4byte gDispCnt
_08061DEC: .4byte gBgCntRegs
_08061DF0: .4byte 0x00001D83
_08061DF4: .4byte 0x00001886
_08061DF8: .4byte gBgScrollRegs
_08061DFC: .4byte sub_8061E84
_08061E00: .4byte 0x08062ED9
_08061E04: .4byte 0x03000057
_08061E08: .4byte 0x03000050
_08061E0C: .4byte 0x03000054
_08061E10: .4byte sub_8062E18
_08061E14: .4byte 0x00002030
_08061E18: .4byte 0x0300004C
_08061E1C: .4byte 0x0300004E
_08061E20: .4byte 0x06016400
_08061E24: .4byte 0x000002E9
_08061E28: .4byte 0x03000020
_08061E2C: .4byte 0x03000021
_08061E30: .4byte 0x03000022
_08061E34: .4byte 0x03000025
_08061E38: .4byte 0x0300001C
_08061E3C: .4byte 0x00000389
_08061E40: .4byte 0x0300003D
_08061E44: .4byte 0x0300003E
_08061E48: .4byte 0x03000041
_08061E4C: .4byte sub_8062A80
_08061E50: .4byte 0x030002D0
_08061E54: .4byte 0x030002D4
_08061E58: .4byte 0x030002D6
_08061E5C: .4byte gUnknown_0868B10C
_08061E60: .4byte sub_8062C28
_08061E64: .4byte gUnknown_0868B1C0
_08061E68: .4byte 0x00009D83
_08061E6C: .4byte sub_8062140
_08061E70: .4byte sub_8062B38
_08061E74: .4byte sub_8062CB4
_08061E78: .4byte gUiGraphics
_08061E7C: .4byte 0x000006CC
_08061E80: .4byte 0x06010020

	thumb_func_start sub_8061E84
sub_8061E84: @ 0x08061E84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	movs r5, #0
	ldr r0, _08061EE0 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r2, r1
	mov sl, r0
	ldr r0, [r0, #0x10]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #0x30]
	mov r3, sl
	ldr r0, [r3, #0x14]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #0x34]
	ldr r0, [r3, #0x18]
	ldrh r0, [r0, #6]
	adds r6, r0, r1
	ldr r7, [r3, #0x4c]
	mov r8, r7
	adds r1, #0x58
	adds r0, r2, r1
	ldrb r0, [r0]
	movs r3, #1
	add r8, r3
	mov r7, r8
	cmp r7, #0x3f
	bne _08061EE4
	cmp r0, #1
	bne _08061EE4
	subs r1, #6
	adds r0, r2, r1
	strh r5, [r0]
	adds r3, r1, #0
	adds r3, r3, r2
	mov sb, r3
	b _08061EEE
	.align 2, 0
_08061EE0: .4byte gCurTask
_08061EE4:
	mov r1, sl
	adds r1, #0x52
	movs r0, #0x14
	strh r0, [r1]
	mov sb, r1
_08061EEE:
	mov r4, sl
	adds r4, #0x50
	movs r0, #0x14
	strh r0, [r4]
	mov r7, r8
	cmp r7, #0xa
	bhi _08061F64
	add r1, sp, #0x2c
	movs r0, #0x3e
	strb r0, [r1]
	subs r1, #1
	movs r0, #0
	strb r0, [r1]
	ldr r2, _080620FC @ =gUiGraphics
	movs r1, #0xd9
	lsls r1, r1, #3
	adds r0, r2, r1
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldr r3, _08062100 @ =0x000006CC
	adds r0, r2, r3
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0x20
	str r0, [sp, #0x18]
	str r0, [sp, #0x24]
	add r1, sp, #0x28
	movs r0, #3
	strb r0, [r1]
	ldr r0, _08062104 @ =0x06010020
	str r0, [sp, #0xc]
	adds r1, #2
	movs r0, #0xc
	strb r0, [r1]
	movs r7, #0xda
	lsls r7, r7, #3
	adds r0, r2, r7
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r1, sp
	adds r3, #8
	adds r0, r2, r3
	ldr r0, [r0]
	strb r0, [r1, #8]
	adds r7, #8
	adds r0, r2, r7
	ldr r0, [r0]
	strb r0, [r1, #9]
	adds r3, #8
	adds r0, r2, r3
	ldr r0, [r0]
	strb r0, [r1, #0xa]
	adds r7, #8
	adds r2, r2, r7
	ldr r0, [r2]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
_08061F64:
	mov r0, r8
	mov r1, sl
	str r0, [r1, #0x4c]
	movs r0, #0xb4
	lsls r0, r0, #2
	ldr r2, [sp, #0x30]
	adds r1, r2, r0
	mov r3, r8
	str r3, [r1]
	ldr r7, [sp, #0x34]
	adds r0, r7, r0
	str r3, [r0]
	str r3, [r6, #0x48]
	mov r3, sl
	adds r3, #0x55
	ldrb r2, [r3]
	ldr r0, _08062108 @ =0x000002D7
	ldr r7, [sp, #0x30]
	adds r1, r7, r0
	strb r2, [r1]
	ldrb r1, [r3]
	ldr r2, [sp, #0x34]
	adds r0, r2, r0
	strb r1, [r0]
	ldrb r0, [r3]
	adds r3, r6, #0
	adds r3, #0x4f
	strb r0, [r3]
	mov r3, sb
	movs r7, #0
	ldrsh r0, [r3, r7]
	ldrh r1, [r4]
	subs r0, r0, r1
	lsls r0, r0, #1
	movs r1, #0xa
	bl Div
	ldrh r1, [r4]
	adds r1, r1, r0
	strh r1, [r4]
	movs r0, #0xb5
	lsls r0, r0, #2
	ldr r3, [sp, #0x30]
	adds r2, r3, r0
	strh r1, [r2]
	ldrh r1, [r4]
	ldr r7, [sp, #0x34]
	adds r0, r7, r0
	strh r1, [r0]
	ldrh r1, [r4]
	adds r0, r6, #0
	adds r0, #0x4c
	strh r1, [r0]
	mov r0, sl
	adds r0, #0x57
	ldrb r1, [r0]
	ldr r2, _0806210C @ =0x000002D9
	adds r0, r3, r2
	strb r1, [r0]
	mov r0, sl
	bl sub_805423C
	ldr r1, _08062110 @ =gFlags
	ldr r0, [r1]
	movs r2, #4
	orrs r0, r2
	str r0, [r1]
	ldr r1, _08062114 @ =sa2__gUnknown_03002878
	ldr r0, _08062118 @ =0x04000010
	str r0, [r1]
	ldr r0, _0806211C @ =sa2__gUnknown_03002A80
	strb r2, [r0]
	ldr r0, _08062120 @ =gBgOffsetsHBlank
	ldr r1, [r0]
	movs r2, #0
	movs r4, #0
	movs r3, #0x14
_08061FFE:
	strh r4, [r1]
	adds r1, #2
	strh r3, [r1]
	adds r1, #2
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r2, #0xb
	bls _08061FFE
	movs r2, #0
	cmp r5, #0x9f
	bhi _080620A4
	movs r0, #0x40
	mov r3, r8
	subs r3, r0, r3
	str r3, [sp, #0x38]
_08062024:
	movs r3, #0
	adds r6, r2, #1
	mov sb, r6
	lsls r7, r2, #1
	str r7, [sp, #0x3c]
	ldr r0, [sp, #0x38]
	cmp r3, r0
	bhs _08062068
	cmp r5, #0x9f
	bhi _08062068
	movs r6, #0
	mov ip, r6
	ldr r0, _08062124 @ =0x000001FF
	adds r7, r0, #0
	movs r0, #0x40
	mov r6, r8
	subs r4, r0, r6
_08062046:
	mov r0, ip
	strh r0, [r1]
	adds r1, #2
	rsbs r0, r5, #0
	ands r0, r7
	strh r0, [r1]
	adds r1, #2
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r4
	bhs _08062068
	cmp r5, #0x9f
	bls _08062046
_08062068:
	ldr r3, [sp, #0x3c]
	adds r0, r3, r2
	lsls r0, r0, #3
	subs r0, r0, r5
	adds r0, #0x20
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r2, #0
	cmp r5, #0x9f
	bhi _0806209A
	movs r4, #0
_0806207E:
	strh r4, [r1]
	adds r1, #2
	strh r3, [r1]
	adds r1, #2
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x17
	bhi _0806209A
	cmp r5, #0x9f
	bls _0806207E
_0806209A:
	mov r6, sb
	lsls r0, r6, #0x18
	lsrs r2, r0, #0x18
	cmp r5, #0x9f
	bls _08062024
_080620A4:
	mov r7, r8
	cmp r7, #0x3f
	beq _080620B6
	ldr r0, _08062128 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080620EC
_080620B6:
	ldr r1, _0806212C @ =gBgScrollRegs
	movs r0, #0x14
	strh r0, [r1, #2]
	movs r2, #0x3f
	mov r0, sl
	str r2, [r0, #0x4c]
	movs r0, #0xb4
	lsls r0, r0, #2
	ldr r3, [sp, #0x30]
	adds r1, r3, r0
	str r2, [r1]
	ldr r6, [sp, #0x34]
	adds r0, r6, r0
	str r2, [r0]
	ldr r1, _08062130 @ =gBgCntRegs
	ldr r0, _08062134 @ =0x00009D83
	strh r0, [r1]
	ldr r2, _08062110 @ =gFlags
	ldr r0, [r2]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	ldr r0, _08062138 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806213C @ =sub_8062140
	str r0, [r1, #8]
_080620EC:
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080620FC: .4byte gUiGraphics
_08062100: .4byte 0x000006CC
_08062104: .4byte 0x06010020
_08062108: .4byte 0x000002D7
_0806210C: .4byte 0x000002D9
_08062110: .4byte gFlags
_08062114: .4byte sa2__gUnknown_03002878
_08062118: .4byte 0x04000010
_0806211C: .4byte sa2__gUnknown_03002A80
_08062120: .4byte gBgOffsetsHBlank
_08062124: .4byte 0x000001FF
_08062128: .4byte gPressedKeys
_0806212C: .4byte gBgScrollRegs
_08062130: .4byte gBgCntRegs
_08062134: .4byte 0x00009D83
_08062138: .4byte gCurTask
_0806213C: .4byte sub_8062140

	thumb_func_start sub_8062140
sub_8062140: @ 0x08062140
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _080621CC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r0, r1
	ldr r0, [r7, #0x10]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sl, r0
	ldr r0, [r7, #0x14]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp]
	ldr r0, [r7, #0x18]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #4]
	ldr r0, _080621D0 @ =gGameMode
	ldrb r1, [r0]
	mov sb, r0
	cmp r1, #1
	bls _08062244
	movs r5, #0
	ldr r2, _080621D4 @ =gMultiplayerConnections
	ldrb r1, [r2]
	movs r0, #1
	ands r1, r0
	mov r8, r2
	ldr r2, _080621D8 @ =gMultiSioStatusFlags
	cmp r1, #0
	beq _08062210
	movs r6, #1
	ldr r3, _080621DC @ =gMultiplayerMissingHeartbeats
_08062190:
	adds r0, r6, #0
	lsls r0, r5
	ldr r4, [r2]
	ands r4, r0
	cmp r4, #0
	bne _080621F8
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _080621FC
	movs r0, #0
	ldr r1, _080621E0 @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _080621E4 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080621E8 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080621EC @ =sa2__gUnknown_03005390
	strb r4, [r0]
	ldr r1, _080621F0 @ =gVramGraphicsCopyCursor
	ldr r0, _080621F4 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl MultiPakCommunicationError
	b _08062514
	.align 2, 0
_080621CC: .4byte gCurTask
_080621D0: .4byte gGameMode
_080621D4: .4byte gMultiplayerConnections
_080621D8: .4byte gMultiSioStatusFlags
_080621DC: .4byte gMultiplayerMissingHeartbeats
_080621E0: .4byte 0x0000FFFF
_080621E4: .4byte gBackgroundsCopyQueueCursor
_080621E8: .4byte gBackgroundsCopyQueueIndex
_080621EC: .4byte sa2__gUnknown_03005390
_080621F0: .4byte gVramGraphicsCopyCursor
_080621F4: .4byte gVramGraphicsCopyQueueIndex
_080621F8:
	movs r0, #0
	strb r0, [r3]
_080621FC:
	adds r3, #1
	adds r5, #1
	cmp r5, #3
	bhi _08062210
	mov r1, r8
	ldrb r0, [r1]
	asrs r0, r5
	ands r0, r6
	cmp r0, #0
	bne _08062190
_08062210:
	mov r2, sb
	ldrb r0, [r2]
	cmp r0, #1
	bls _08062244
	ldr r2, _08062298 @ =gMultiSioRecv
	ldr r0, _0806229C @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08062244
	ldrh r0, [r2]
	cmp r0, #0x4f
	bls _08062234
	ldrb r0, [r2, #2]
	adds r1, r7, #0
	adds r1, #0x55
	strb r0, [r1]
_08062234:
	adds r4, r7, #0
	adds r4, #0x1c
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08062244:
	ldr r3, [r7, #0x4c]
	mov r8, r3
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r0, [r0]
	mov sb, r0
	movs r4, #1
	add r8, r4
	ldr r0, _0806229C @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r2, #0x80
	ands r0, r2
	cmp r0, #0
	bne _0806226C
	ldr r0, _080622A0 @ =gGameMode
	ldrb r0, [r0]
	adds r6, r7, #0
	adds r6, #0x55
	cmp r0, #1
	bhi _080622C2
_0806226C:
	adds r6, r7, #0
	adds r6, #0x55
	mov r0, sb
	cmp r0, #1
	bls _080622C2
	ldr r0, _080622A4 @ =gRepeatedKeys
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080622A8
	ldrb r1, [r6]
	mov r0, sb
	subs r0, #1
	cmp r1, r0
	bge _080622C2
	movs r0, #0x6c
	bl m4aSongNumStart
	ldrb r0, [r6]
	adds r0, #1
	b _080622C0
	.align 2, 0
_08062298: .4byte gMultiSioRecv
_0806229C: .4byte gMultiSioStatusFlags
_080622A0: .4byte gGameMode
_080622A4: .4byte gRepeatedKeys
_080622A8:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080622C2
	ldrb r0, [r6]
	cmp r0, #1
	bls _080622C2
	movs r0, #0x6c
	bl m4aSongNumStart
	ldrb r0, [r6]
	subs r0, #1
_080622C0:
	strb r0, [r6]
_080622C2:
	ldrb r5, [r6]
	adds r4, r7, #0
	adds r4, #0x52
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r1, #0x18
	bl Div
	adds r0, #5
	adds r3, r4, #0
	cmp r5, r0
	ble _0806235A
	ldr r0, _08062334 @ =gSelectedCharacter
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08062322
	ldr r0, _08062338 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xb
	ble _08062322
	ldr r1, _0806233C @ =gLoadedSaveGame
	ldrb r0, [r1, #0x1d]
	cmp r0, #0x7f
	bne _08062322
	ldrh r2, [r1, #8]
	cmp r2, #0xc
	bls _08062322
	ldrh r0, [r1, #0xa]
	cmp r0, #0xc
	bls _08062322
	ldrh r0, [r1, #0xc]
	cmp r0, #0xc
	bls _08062322
	ldrh r0, [r1, #0xe]
	cmp r0, #0xc
	bls _08062322
	cmp r2, #0xf
	bne _08062344
	ldr r0, _08062340 @ =gUnknown_03005124
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xc
	bne _08062344
_08062322:
	mov r2, sb
	cmp r2, #0xd
	bls _08062344
	ldrb r0, [r6]
	cmp r0, #0xd
	bne _08062344
	adds r1, r0, #0
	subs r1, #5
	b _08062382
	.align 2, 0
_08062334: .4byte gSelectedCharacter
_08062338: .4byte gCurrentLevel
_0806233C: .4byte gLoadedSaveGame
_08062340: .4byte gUnknown_03005124
_08062344:
	ldrb r0, [r6]
	subs r0, #5
	movs r1, #0x1e
	ands r0, r1
	adds r0, #1
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	subs r1, #8
	strh r1, [r3]
	b _0806238C
_0806235A:
	ldrb r4, [r6]
	movs r1, #0
	ldrsh r0, [r3, r1]
	movs r1, #0x18
	str r3, [sp, #8]
	bl Div
	ldr r3, [sp, #8]
	cmp r4, r0
	bgt _0806238C
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	subs r0, #8
	cmp r0, #0x10
	ble _0806238A
	lsrs r1, r1, #1
	lsls r1, r1, #1
	subs r1, #1
_08062382:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	subs r0, #8
_0806238A:
	strh r0, [r3]
_0806238C:
	mov r2, r8
	str r2, [r7, #0x4c]
	movs r0, #0xb4
	lsls r0, r0, #2
	mov r4, sl
	adds r1, r4, r0
	str r2, [r1]
	ldr r1, [sp]
	adds r0, r1, r0
	str r2, [r0]
	ldr r4, [sp, #4]
	str r2, [r4, #0x48]
	ldrb r2, [r6]
	ldr r0, _08062470 @ =0x000002D7
	mov r4, sl
	adds r1, r4, r0
	strb r2, [r1]
	ldrb r1, [r6]
	ldr r2, [sp]
	adds r0, r2, r0
	strb r1, [r0]
	ldrb r0, [r6]
	ldr r1, [sp, #4]
	adds r1, #0x4f
	strb r0, [r1]
	movs r4, #0
	ldrsh r0, [r3, r4]
	adds r4, r7, #0
	adds r4, #0x50
	ldrh r1, [r4]
	subs r0, r0, r1
	lsls r0, r0, #1
	movs r1, #0xa
	bl Div
	ldrh r1, [r4]
	adds r1, r1, r0
	strh r1, [r4]
	movs r0, #0xb5
	lsls r0, r0, #2
	mov r3, sl
	adds r2, r3, r0
	strh r1, [r2]
	ldrh r1, [r4]
	ldr r2, [sp]
	adds r0, r2, r0
	strh r1, [r0]
	ldrh r1, [r4]
	ldr r0, [sp, #4]
	adds r0, #0x4c
	strh r1, [r0]
	adds r5, r7, #0
	adds r5, #0x57
	ldrb r1, [r5]
	ldr r0, _08062474 @ =0x000002D9
	add r0, sl
	strb r1, [r0]
	adds r0, r7, #0
	bl sub_805423C
	ldr r3, _08062478 @ =gGameMode
	ldrb r0, [r3]
	mov sb, r4
	cmp r0, #1
	bls _08062418
	ldr r2, _0806247C @ =gMultiSioSend
	movs r0, #0x50
	strh r0, [r2]
	ldrb r0, [r6]
	strb r0, [r2, #2]
_08062418:
	movs r4, #6
	ldrsh r1, [r7, r4]
	movs r0, #0xc0
	lsls r0, r0, #5
	cmp r1, r0
	ble _0806250C
	movs r0, #4
	ldrsh r1, [r7, r0]
	cmp r1, #2
	bne _0806250C
	ldrb r3, [r3]
	cmp r3, #1
	bhi _080624C0
	ldr r0, _08062480 @ =gPressedKeys
	ldrh r2, [r0]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r2
	cmp r0, #0
	beq _0806248C
	cmp r3, #1
	beq _0806244A
	movs r0, #4
	bl m4aSongNumStop
_0806244A:
	mov r1, r8
	cmp r1, #0x40
	bls _0806250C
	movs r0, #1
	strb r0, [r5]
	ldr r0, _08062484 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08062488 @ =sub_8062540
	str r0, [r1, #8]
	movs r0, #0x6a
	bl m4aSongNumStart
	strh r4, [r7, #4]
	ldrh r1, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	b _08062508
	.align 2, 0
_08062470: .4byte 0x000002D7
_08062474: .4byte 0x000002D9
_08062478: .4byte gGameMode
_0806247C: .4byte gMultiSioSend
_08062480: .4byte gPressedKeys
_08062484: .4byte gCurTask
_08062488: .4byte sub_8062540
_0806248C:
	ands r1, r2
	lsls r0, r1, #0x10
	cmp r0, #0
	beq _0806250C
	movs r0, #4
	bl m4aSongNumStop
	movs r0, #2
	strb r0, [r5]
	ldr r0, _080624B8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080624BC @ =sub_8062540
	str r0, [r1, #8]
	movs r0, #0x6b
	bl m4aSongNumStart
	strh r4, [r7, #4]
	ldrh r1, [r7, #6]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r3, #0
	b _08062508
	.align 2, 0
_080624B8: .4byte gCurTask
_080624BC: .4byte sub_8062540
_080624C0:
	ldr r0, _08062524 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080624DE
	ldr r0, _08062528 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080624DE
	ldr r2, _0806252C @ =gMultiSioSend
	movs r0, #0x51
	strh r0, [r2]
_080624DE:
	ldr r2, _08062530 @ =gMultiSioRecv
	ldrh r0, [r2]
	cmp r0, #0x51
	bne _0806250C
	movs r4, #1
	strb r4, [r5]
	ldr r0, _08062534 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08062538 @ =sub_8062540
	str r0, [r1, #8]
	movs r0, #0x6a
	bl m4aSongNumStart
	movs r0, #4
	bl m4aSongNumStop
	strh r4, [r7, #4]
	ldrh r1, [r7, #6]
	movs r4, #0x80
	lsls r4, r4, #6
	adds r0, r4, #0
_08062508:
	subs r0, r0, r1
	strh r0, [r7, #6]
_0806250C:
	ldr r1, _0806253C @ =gBgScrollRegs
	mov r2, sb
	ldrh r0, [r2]
	strh r0, [r1, #2]
_08062514:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08062524: .4byte gMultiSioStatusFlags
_08062528: .4byte gPressedKeys
_0806252C: .4byte gMultiSioSend
_08062530: .4byte gMultiSioRecv
_08062534: .4byte gCurTask
_08062538: .4byte sub_8062540
_0806253C: .4byte gBgScrollRegs

	thumb_func_start sub_8062540
sub_8062540: @ 0x08062540
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080625C8 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	ldr r0, [r6, #0x10]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov r8, r0
	ldr r0, [r6, #0x14]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sb, r0
	ldr r0, [r6, #0x18]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sl, r0
	ldr r0, _080625CC @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0806262E
	movs r3, #0
	ldr r0, _080625D0 @ =gMultiplayerConnections
	ldrb r1, [r0]
	movs r2, #1
	ands r1, r2
	adds r7, r0, #0
	cmp r1, #0
	beq _0806260A
	movs r5, #1
	ldr r2, _080625D4 @ =gMultiplayerMissingHeartbeats
_0806258A:
	ldr r1, _080625D8 @ =gMultiSioStatusFlags
	adds r0, r5, #0
	lsls r0, r3
	ldr r4, [r1]
	ands r4, r0
	cmp r4, #0
	bne _080625F4
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _080625F8
	movs r0, #0
	ldr r1, _080625DC @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _080625E0 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080625E4 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080625E8 @ =sa2__gUnknown_03005390
	strb r4, [r0]
	ldr r1, _080625EC @ =gVramGraphicsCopyCursor
	ldr r0, _080625F0 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl MultiPakCommunicationError
	b _08062884
	.align 2, 0
_080625C8: .4byte gCurTask
_080625CC: .4byte gGameMode
_080625D0: .4byte gMultiplayerConnections
_080625D4: .4byte gMultiplayerMissingHeartbeats
_080625D8: .4byte gMultiSioStatusFlags
_080625DC: .4byte 0x0000FFFF
_080625E0: .4byte gBackgroundsCopyQueueCursor
_080625E4: .4byte gBackgroundsCopyQueueIndex
_080625E8: .4byte sa2__gUnknown_03005390
_080625EC: .4byte gVramGraphicsCopyCursor
_080625F0: .4byte gVramGraphicsCopyQueueIndex
_080625F4:
	movs r0, #0
	strb r0, [r2]
_080625F8:
	adds r2, #1
	adds r3, #1
	cmp r3, #3
	bhi _0806260A
	ldrb r0, [r7]
	asrs r0, r3
	ands r0, r5
	cmp r0, #0
	bne _0806258A
_0806260A:
	ldr r0, _08062718 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0806262E
	ldr r2, _0806271C @ =gMultiSioRecv
	ldr r0, _08062720 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0806262E
	ldrh r0, [r2]
	cmp r0, #0x4f
	bls _0806262E
	ldrb r0, [r2, #2]
	adds r1, r6, #0
	adds r1, #0x55
	strb r0, [r1]
_0806262E:
	ldr r2, [r6, #0x4c]
	adds r0, r6, #0
	adds r0, #0x58
	adds r2, #1
	ldrb r0, [r0]
	adds r3, r6, #0
	adds r3, #0x52
	cmp r0, #1
	bne _08062644
	movs r0, #0
	strh r0, [r3]
_08062644:
	str r2, [r6, #0x4c]
	movs r0, #0xb4
	lsls r0, r0, #2
	mov r4, r8
	adds r1, r4, r0
	str r2, [r1]
	add r0, sb
	str r2, [r0]
	mov r0, sl
	str r2, [r0, #0x48]
	adds r5, r6, #0
	adds r5, #0x55
	ldrb r2, [r5]
	ldr r0, _08062724 @ =0x000002D7
	adds r1, r4, r0
	strb r2, [r1]
	ldrb r1, [r5]
	add r0, sb
	strb r1, [r0]
	ldrb r0, [r5]
	mov r1, sl
	adds r1, #0x4f
	strb r0, [r1]
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r4, r6, #0
	adds r4, #0x50
	ldrh r1, [r4]
	subs r0, r0, r1
	lsls r0, r0, #1
	movs r1, #0xa
	bl Div
	ldrh r2, [r4]
	adds r2, r2, r0
	movs r7, #0
	strh r2, [r4]
	movs r0, #0xb5
	lsls r0, r0, #2
	mov r3, r8
	adds r1, r3, r0
	strh r2, [r1]
	ldrh r1, [r4]
	add r0, sb
	strh r1, [r0]
	ldrh r1, [r4]
	mov r0, sl
	adds r0, #0x4c
	strh r1, [r0]
	movs r0, #0x57
	adds r0, r0, r6
	mov sb, r0
	ldrb r1, [r0]
	ldr r0, _08062728 @ =0x000002D9
	add r0, r8
	strb r1, [r0]
	adds r0, r6, #0
	bl sub_805423C
	movs r3, #6
	ldrsh r1, [r6, r3]
	movs r0, #0xc0
	lsls r0, r0, #5
	cmp r1, r0
	bgt _080626C8
	b _08062860
_080626C8:
	movs r1, #4
	ldrsh r0, [r6, r1]
	cmp r0, #1
	beq _080626D2
	b _08062860
_080626D2:
	ldr r0, _08062718 @ =gGameMode
	ldrb r3, [r0]
	adds r2, r0, #0
	cmp r3, #1
	bls _080626DE
	b _0806284C
_080626DE:
	ldr r2, _0806272C @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08062730 @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08062734 @ =gBldRegs
	movs r4, #0
	strh r4, [r0]
	strh r4, [r0, #4]
	ldr r1, _08062738 @ =gBgCntRegs
	ldr r0, _0806273C @ =0x00009D03
	strh r0, [r1]
	ldr r0, _08062740 @ =0x00001806
	strh r0, [r1, #2]
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, #1
	beq _08062704
	b _08062814
_08062704:
	cmp r3, #1
	bne _08062768
	ldrb r1, [r5]
	cmp r1, #0
	bne _0806274C
	ldr r0, _08062744 @ =gCurrentLevel
	strb r7, [r0]
	ldr r0, _08062748 @ =gUnknown_03005124
	strb r7, [r0]
	b _0806275A
	.align 2, 0
_08062718: .4byte gGameMode
_0806271C: .4byte gMultiSioRecv
_08062720: .4byte gMultiSioStatusFlags
_08062724: .4byte 0x000002D7
_08062728: .4byte 0x000002D9
_0806272C: .4byte gDispCnt
_08062730: .4byte 0x00001FFF
_08062734: .4byte gBldRegs
_08062738: .4byte gBgCntRegs
_0806273C: .4byte 0x00009D03
_08062740: .4byte 0x00001806
_08062744: .4byte gCurrentLevel
_08062748: .4byte gUnknown_03005124
_0806274C:
	cmp r1, #0x12
	bhi _0806275A
	ldr r0, _08062760 @ =gCurrentLevel
	subs r1, #1
	strb r1, [r0]
	ldr r0, _08062764 @ =gUnknown_03005124
	strb r1, [r0]
_0806275A:
	bl sub_806B81C
	b _080627EA
	.align 2, 0
_08062760: .4byte gCurrentLevel
_08062764: .4byte gUnknown_03005124
_08062768:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r0, [r0]
	cmp r0, #1
	bne _08062780
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_8060DAC
	b _080627EA
_08062780:
	ldr r3, _080627C8 @ =sa2__gUnknown_03004D80
	strb r7, [r3]
	ldr r0, _080627CC @ =sa2__gUnknown_03002280
	strb r7, [r0]
	strb r7, [r0, #1]
	movs r1, #0xff
	strb r1, [r0, #2]
	movs r2, #0x20
	strb r2, [r0, #3]
	strb r7, [r3, #1]
	strb r7, [r0, #4]
	strb r7, [r0, #5]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #6]
	strb r2, [r0, #7]
	strb r7, [r3, #2]
	strb r7, [r0, #8]
	strb r7, [r0, #9]
	strb r1, [r0, #0xa]
	strb r2, [r0, #0xb]
	strb r7, [r3, #3]
	strb r7, [r0, #0xc]
	strb r7, [r0, #0xd]
	strb r1, [r0, #0xe]
	strb r2, [r0, #0xf]
	ldrb r1, [r5]
	cmp r1, #0
	bne _080627D8
	ldr r0, _080627D0 @ =gCurrentLevel
	strb r7, [r0]
	ldr r0, _080627D4 @ =gUnknown_03005124
	strb r7, [r0]
	bl ApplyGameStageSettings
	b _080627EA
	.align 2, 0
_080627C8: .4byte sa2__gUnknown_03004D80
_080627CC: .4byte sa2__gUnknown_03002280
_080627D0: .4byte gCurrentLevel
_080627D4: .4byte gUnknown_03005124
_080627D8:
	cmp r1, #0x12
	bhi _080627EA
	ldr r0, _08062808 @ =gCurrentLevel
	subs r1, #1
	strb r1, [r0]
	ldr r0, _0806280C @ =gUnknown_03005124
	strb r1, [r0]
	bl ApplyGameStageSettings
_080627EA:
	ldr r0, [r6, #0x18]
	bl TaskDestroy
	ldr r0, [r6, #0x14]
	bl TaskDestroy
	ldr r0, [r6, #0x10]
	bl TaskDestroy
	ldr r0, _08062810 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08062884
	.align 2, 0
_08062808: .4byte gCurrentLevel
_0806280C: .4byte gUnknown_03005124
_08062810: .4byte gCurTask
_08062814:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r4, [r0]
	ldr r0, [r6, #0x18]
	bl TaskDestroy
	ldr r0, [r6, #0x14]
	bl TaskDestroy
	ldr r0, [r6, #0x10]
	bl TaskDestroy
	ldr r0, _08062840 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	cmp r4, #1
	bne _08062844
	bl CreateTimeAttackMenu
	b _08062884
	.align 2, 0
_08062840: .4byte gCurTask
_08062844:
	movs r0, #0
	bl CreateCharacterSelectionScreen
	b _08062884
_0806284C:
	ldr r0, _08062858 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806285C @ =sub_80628A4
	str r0, [r1, #8]
	b _08062868
	.align 2, 0
_08062858: .4byte gCurTask
_0806285C: .4byte sub_80628A4
_08062860:
	ldr r1, _08062894 @ =gBgScrollRegs
	ldrh r0, [r4]
	strh r0, [r1, #2]
	ldr r2, _08062898 @ =gGameMode
_08062868:
	ldrb r0, [r2]
	cmp r0, #1
	bls _08062884
	ldr r0, _0806289C @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08062884
	ldr r2, _080628A0 @ =gMultiSioSend
	movs r0, #0x51
	strh r0, [r2]
	ldrb r0, [r5]
	strb r0, [r2, #2]
_08062884:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08062894: .4byte gBgScrollRegs
_08062898: .4byte gGameMode
_0806289C: .4byte gMultiSioStatusFlags
_080628A0: .4byte gMultiSioSend

	thumb_func_start sub_80628A4
sub_80628A4: @ 0x080628A4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _08062918 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov ip, r1
	ldr r0, _0806291C @ =gGameMode
	ldrb r0, [r0]
	mov sb, r2
	ldr r6, _08062920 @ =gMultiSioStatusFlags
	cmp r0, #1
	bls _0806295A
	movs r5, #0
	ldr r2, _08062924 @ =gMultiplayerConnections
	ldrb r1, [r2]
	movs r0, #1
	ands r1, r0
	adds r7, r2, #0
	cmp r1, #0
	beq _0806295A
	movs r2, #1
	ldr r3, _08062928 @ =gMultiplayerMissingHeartbeats
_080628DA:
	adds r0, r2, #0
	lsls r0, r5
	ldr r4, [r6]
	ands r4, r0
	cmp r4, #0
	bne _08062944
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _08062948
	movs r0, #0
	ldr r1, _0806292C @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _08062930 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08062934 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _08062938 @ =sa2__gUnknown_03005390
	strb r4, [r0]
	ldr r1, _0806293C @ =gVramGraphicsCopyCursor
	ldr r0, _08062940 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl MultiPakCommunicationError
	b _080629DA
	.align 2, 0
_08062918: .4byte gCurTask
_0806291C: .4byte gGameMode
_08062920: .4byte gMultiSioStatusFlags
_08062924: .4byte gMultiplayerConnections
_08062928: .4byte gMultiplayerMissingHeartbeats
_0806292C: .4byte 0x0000FFFF
_08062930: .4byte gBackgroundsCopyQueueCursor
_08062934: .4byte gBackgroundsCopyQueueIndex
_08062938: .4byte sa2__gUnknown_03005390
_0806293C: .4byte gVramGraphicsCopyCursor
_08062940: .4byte gVramGraphicsCopyQueueIndex
_08062944:
	movs r0, #0
	strb r0, [r3]
_08062948:
	adds r3, #1
	adds r5, #1
	cmp r5, #3
	bhi _0806295A
	ldrb r0, [r7]
	asrs r0, r5
	ands r0, r2
	cmp r0, #0
	bne _080628DA
_0806295A:
	ldr r4, _080629C0 @ =gMultiSioRecv
	ldrh r0, [r4]
	mov r8, r4
	cmp r0, #0x52
	bne _0806296C
	mov r0, sb
	ldr r1, [r0]
	ldr r0, _080629C4 @ =sub_80629E8
	str r0, [r1, #8]
_0806296C:
	ldr r1, [r6]
	movs r0, #0x80
	ands r1, r0
	ldr r2, _080629C8 @ =gMultiSioSend
	mov r5, ip
	adds r5, #0x55
	cmp r1, #0
	beq _080629D0
	movs r3, #1
	ldr r1, _080629CC @ =gMultiplayerConnections
	ldrb r0, [r1]
	asrs r0, r0, #1
	ands r0, r3
	adds r7, r1, #0
	cmp r0, #0
	beq _08062992
	ldrh r0, [r4, #0x14]
	cmp r0, #0x51
	bne _080629B4
_08062992:
	adds r3, #1
	cmp r3, #3
	bhi _080629B4
	ldrb r0, [r7]
	asrs r0, r3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08062992
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	mov r1, r8
	adds r4, r0, r1
	ldrh r0, [r4]
	cmp r0, #0x51
	beq _08062992
_080629B4:
	cmp r3, #4
	bne _080629D0
	adds r4, r2, #0
	movs r0, #0x52
	b _080629D4
	.align 2, 0
_080629C0: .4byte gMultiSioRecv
_080629C4: .4byte sub_80629E8
_080629C8: .4byte gMultiSioSend
_080629CC: .4byte gMultiplayerConnections
_080629D0:
	adds r4, r2, #0
	movs r0, #0x51
_080629D4:
	strh r0, [r4]
	ldrb r0, [r5]
	strb r0, [r4, #2]
_080629DA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80629E8
sub_80629E8: @ 0x080629E8
	push {r4, lr}
	ldr r0, _08062A24 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	ldr r2, _08062A28 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08062A2C @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _08062A30 @ =gBldRegs
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	ldr r0, _08062A34 @ =0x03000055
	adds r3, r3, r0
	ldrb r0, [r3]
	adds r1, r0, #0
	cmp r1, #0
	bne _08062A40
	ldr r0, _08062A38 @ =gCurrentLevel
	strb r2, [r0]
	ldr r0, _08062A3C @ =gUnknown_03005124
	strb r2, [r0]
	bl ApplyGameStageSettings
	b _08062A52
	.align 2, 0
_08062A24: .4byte gCurTask
_08062A28: .4byte gDispCnt
_08062A2C: .4byte 0x00001FFF
_08062A30: .4byte gBldRegs
_08062A34: .4byte 0x03000055
_08062A38: .4byte gCurrentLevel
_08062A3C: .4byte gUnknown_03005124
_08062A40:
	cmp r1, #0x12
	bhi _08062A52
	ldr r0, _08062A74 @ =gCurrentLevel
	subs r1, #1
	strb r1, [r0]
	ldr r0, _08062A78 @ =gUnknown_03005124
	strb r1, [r0]
	bl ApplyGameStageSettings
_08062A52:
	ldr r0, [r4, #0x18]
	bl TaskDestroy
	ldr r0, [r4, #0x14]
	bl TaskDestroy
	ldr r0, [r4, #0x10]
	bl TaskDestroy
	ldr r0, _08062A7C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08062A74: .4byte gCurrentLevel
_08062A78: .4byte gUnknown_03005124
_08062A7C: .4byte gCurTask

	thumb_func_start sub_8062A80
sub_8062A80: @ 0x08062A80
	push {r4, r5, r6, lr}
	ldr r0, _08062A98 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	movs r5, #1
	ldr r1, _08062A9C @ =0x030002DA
	adds r0, r0, r1
	b _08062B0C
	.align 2, 0
_08062A98: .4byte gCurTask
_08062A9C: .4byte 0x030002DA
_08062AA0:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #4
	adds r4, r6, r0
	ldr r2, _08062AC0 @ =0x000002D7
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r5, r0
	bne _08062AC4
	adds r1, r4, #0
	adds r1, #0x25
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x4c
	b _08062ACE
	.align 2, 0
_08062AC0: .4byte 0x000002D7
_08062AC4:
	adds r1, r4, #0
	adds r1, #0x25
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x48
_08062ACE:
	strh r0, [r4, #0x16]
	subs r0, r5, #1
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	movs r2, #0xb4
	lsls r2, r2, #2
	adds r0, r6, r2
	ldr r2, [r0]
	movs r0, #0x40
	subs r0, r0, r2
	muls r0, r5, r0
	adds r1, r1, r0
	adds r1, #0x10
	strh r1, [r4, #0x18]
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r1, _08062B2C @ =0x000002DA
	adds r0, r6, r1
_08062B0C:
	ldrb r0, [r0]
	cmp r5, r0
	blo _08062AA0
	movs r2, #0xb4
	lsls r2, r2, #2
	adds r0, r6, r2
	ldr r0, [r0]
	cmp r0, #0x3f
	bne _08062B26
	ldr r0, _08062B30 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08062B34 @ =sub_8062B38
	str r0, [r1, #8]
_08062B26:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08062B2C: .4byte 0x000002DA
_08062B30: .4byte gCurTask
_08062B34: .4byte sub_8062B38

	thumb_func_start sub_8062B38
sub_8062B38: @ 0x08062B38
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08062BB8 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	ldr r2, _08062BBC @ =0x030002DB
	adds r1, r0, r2
	ldrb r1, [r1]
	mov r8, r1
	ldr r3, _08062BC0 @ =0x030002D4
	adds r0, r0, r3
	ldrh r0, [r0]
	movs r1, #0x18
	bl Div
	subs r0, #1
	lsls r0, r0, #0x18
	movs r7, #0
	lsrs r5, r0, #0x18
_08062B66:
	cmp r5, #0
	beq _08062C0E
	ldr r1, _08062BC4 @ =0x000002DA
	adds r0, r6, r1
	ldrb r0, [r0]
	subs r0, #1
	cmp r5, r0
	bgt _08062C0E
	lsls r1, r5, #1
	adds r0, r1, r5
	lsls r0, r0, #4
	adds r4, r6, r0
	adds r2, r1, #0
	mov r3, r8
	cmp r3, #1
	bne _08062B90
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r4, #0x10]
_08062B90:
	ldr r1, _08062BC8 @ =0x000002D7
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r5, r0
	bne _08062BE4
	ldr r3, _08062BCC @ =0x000002D9
	adds r0, r6, r3
	ldrb r1, [r0]
	cmp r1, #1
	bne _08062BD6
	subs r3, #9
	adds r0, r6, r3
	ldr r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _08062BD0
	adds r0, r4, #0
	adds r0, #0x25
	strb r1, [r0]
	b _08062BDE
	.align 2, 0
_08062BB8: .4byte gCurTask
_08062BBC: .4byte 0x030002DB
_08062BC0: .4byte 0x030002D4
_08062BC4: .4byte 0x000002DA
_08062BC8: .4byte 0x000002D7
_08062BCC: .4byte 0x000002D9
_08062BD0:
	adds r1, r4, #0
	adds r1, #0x25
	b _08062BDC
_08062BD6:
	adds r1, r4, #0
	adds r1, #0x25
	movs r0, #1
_08062BDC:
	strb r0, [r1]
_08062BDE:
	movs r0, #0x4c
	strh r0, [r4, #0x16]
	b _08062BF0
_08062BE4:
	movs r1, #0
	movs r0, #0x48
	strh r0, [r4, #0x16]
	adds r0, r4, #0
	adds r0, #0x25
	strb r1, [r0]
_08062BF0:
	adds r1, r2, r5
	lsls r1, r1, #3
	movs r2, #0xb5
	lsls r2, r2, #2
	adds r0, r6, r2
	ldrh r0, [r0]
	subs r0, #0xc
	subs r1, r1, r0
	strh r1, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08062C0E:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r7, #7
	bls _08062B66
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8062C28
sub_8062C28: @ 0x08062C28
	push {r4, r5, r6, lr}
	ldr r0, _08062CA8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r5, #1
_08062C38:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #4
	subs r0, #0x30
	adds r4, r6, r0
	adds r1, r4, #0
	adds r1, #0x25
	movs r0, #0
	strb r0, [r1]
	movs r0, #0xd4
	strh r0, [r4, #0x16]
	subs r1, r5, #1
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #4
	movs r2, #0xb4
	lsls r2, r2, #2
	adds r0, r6, r2
	ldr r2, [r0]
	movs r0, #0x40
	subs r0, r0, r2
	lsls r0, r0, #1
	muls r0, r5, r0
	adds r1, r1, r0
	adds r1, #0x21
	strh r1, [r4, #0x18]
	ldr r1, _08062CAC @ =0x000002DA
	adds r0, r6, r1
	ldrb r0, [r0]
	adds r3, #1
	cmp r0, r3
	ble _08062C84
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08062C84:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #5
	bls _08062C38
	movs r2, #0xb4
	lsls r2, r2, #2
	adds r0, r6, r2
	ldr r0, [r0]
	cmp r0, #0x3f
	bne _08062CA2
	ldr r0, _08062CA8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08062CB0 @ =sub_8062CB4
	str r0, [r1, #8]
_08062CA2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08062CA8: .4byte gCurTask
_08062CAC: .4byte 0x000002DA
_08062CB0: .4byte sub_8062CB4

	thumb_func_start sub_8062CB4
sub_8062CB4: @ 0x08062CB4
	push {r4, r5, r6, r7, lr}
	ldr r0, _08062D2C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r0, _08062D30 @ =0x030002D4
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0x2f
	bls _08062D70
	movs r1, #0x30
	bl Div
	subs r0, #1
	lsls r0, r0, #0x18
	movs r7, #1
	lsrs r5, r0, #0x18
_08062CDA:
	cmp r5, #7
	bhi _08062D58
	lsls r3, r5, #1
	adds r1, r3, r5
	lsls r1, r1, #4
	adds r4, r6, r1
	movs r2, #0
	movs r0, #0xd4
	strh r0, [r4, #0x16]
	adds r0, r4, #0
	adds r0, #0x25
	strb r2, [r0]
	movs r2, #0xb5
	lsls r2, r2, #2
	adds r0, r6, r2
	ldrh r0, [r0]
	subs r0, #0x37
	subs r0, r1, r0
	strh r0, [r4, #0x18]
	cmp r5, #6
	bne _08062D08
	subs r0, #0xc
	strh r0, [r4, #0x18]
_08062D08:
	cmp r5, #7
	bne _08062D12
	ldrh r0, [r4, #0x18]
	subs r0, #0x24
	strh r0, [r4, #0x18]
_08062D12:
	ldr r1, _08062D34 @ =0x000002DA
	adds r0, r6, r1
	ldrb r1, [r0]
	adds r0, r3, #1
	cmp r1, r0
	ble _08062D38
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	b _08062D58
	.align 2, 0
_08062D2C: .4byte gCurTask
_08062D30: .4byte 0x030002D4
_08062D34: .4byte 0x000002DA
_08062D38:
	cmp r5, #7
	bne _08062D58
	ldr r0, _08062D6C @ =gSelectedCharacter
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08062D58
	cmp r1, #0xf
	bne _08062D58
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08062D58:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r7, #6
	bls _08062CDA
	b _08062E0C
	.align 2, 0
_08062D6C: .4byte gSelectedCharacter
_08062D70:
	ldrh r0, [r1]
	movs r1, #0x30
	bl Div
	lsls r0, r0, #0x18
	movs r7, #1
	lsrs r5, r0, #0x18
_08062D7E:
	cmp r5, #7
	bhi _08062DFC
	lsls r3, r5, #1
	adds r1, r3, r5
	lsls r1, r1, #4
	adds r4, r6, r1
	movs r2, #0
	movs r0, #0xd4
	strh r0, [r4, #0x16]
	adds r0, r4, #0
	adds r0, #0x25
	strb r2, [r0]
	movs r2, #0xb5
	lsls r2, r2, #2
	adds r0, r6, r2
	ldrh r0, [r0]
	subs r0, #0x37
	subs r0, r1, r0
	strh r0, [r4, #0x18]
	cmp r5, #6
	bne _08062DAC
	subs r0, #0xc
	strh r0, [r4, #0x18]
_08062DAC:
	cmp r5, #7
	bne _08062DE4
	ldrh r0, [r4, #0x18]
	subs r0, #0x24
	strh r0, [r4, #0x18]
	ldr r0, _08062DDC @ =gSelectedCharacter
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08062DFC
	ldr r1, _08062DE0 @ =0x000002DA
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0xf
	bhi _08062DFC
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	b _08062DFC
	.align 2, 0
_08062DDC: .4byte gSelectedCharacter
_08062DE0: .4byte 0x000002DA
_08062DE4:
	ldr r2, _08062E14 @ =0x000002DA
	adds r0, r6, r2
	ldrb r1, [r0]
	adds r0, r3, #1
	cmp r1, r0
	ble _08062DFC
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08062DFC:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r7, #5
	bls _08062D7E
_08062E0C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08062E14: .4byte 0x000002DA

	thumb_func_start sub_8062E18
sub_8062E18: @ 0x08062E18
	push {r4, r5, r6, r7, lr}
	ldr r0, _08062E84 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r6, r4, #0
	adds r0, #0x4c
	adds r7, r5, r0
	ldrh r3, [r7]
	cmp r3, #0x14
	beq _08062E94
	ldr r0, [r4, #0x10]
	ldr r1, _08062E88 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #0x10]
	movs r6, #0x30
	strh r6, [r4, #0x16]
	movs r0, #0x18
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, _08062E8C @ =0x03000051
	adds r1, r5, r0
	ldrb r0, [r1]
	cmp r0, #6
	bls _08062ECA
	ldr r0, _08062E90 @ =gUnknown_0868B220
	ldrb r1, [r1]
	subs r1, #1
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r7]
	ldrh r1, [r1]
	cmp r0, r1
	bhs _08062ECA
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #0x10]
	strh r6, [r4, #0x16]
	movs r0, #0x88
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl DisplaySprite
	b _08062ECA
	.align 2, 0
_08062E84: .4byte gCurTask
_08062E88: .4byte 0xFFFFF7FF
_08062E8C: .4byte 0x03000051
_08062E90: .4byte gUnknown_0868B220
_08062E94:
	ldr r0, _08062ED0 @ =0x03000051
	adds r2, r5, r0
	ldrb r0, [r2]
	cmp r0, #7
	bls _08062ECA
	ldr r1, _08062ED4 @ =gUnknown_0868B220
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r3, r0
	bhs _08062ECA
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r6, #0x10]
	movs r0, #0x30
	strh r0, [r6, #0x16]
	movs r0, #0x88
	strh r0, [r6, #0x18]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_08062ECA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08062ED0: .4byte 0x03000051
_08062ED4: .4byte gUnknown_0868B220

    thumb_func_start sub_8062ED8
sub_8062ED8: @ 0x08062ED8
    bx lr
    .align 2, 0

	thumb_func_start sub_8062EDC
sub_8062EDC: @ 0x08062EDC
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0x30
	bl sub_8053674
	add r0, sp, #0x2c
	mov r8, r0
	movs r4, #0
	movs r6, #0x80
	strb r6, [r0]
	mov r5, sp
	adds r5, #0x2b
	movs r1, #1
	strb r1, [r5]
	ldr r0, _08062F7C @ =gUnknown_086A17F4
	str r0, [sp, #0x14]
	movs r0, #0xe0
	lsls r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, _08062F80 @ =gUnknown_086A2534
	str r0, [sp, #0x10]
	movs r0, #0xa0
	lsls r0, r0, #3
	str r0, [sp, #0x1c]
	movs r0, #0x29
	add r0, sp
	mov sb, r0
	strb r1, [r0]
	movs r1, #0x2a
	add r1, sp
	mov sl, r1
	movs r0, #0x11
	strb r0, [r1]
	str r4, [sp, #4]
	mov r0, sp
	strb r4, [r0, #8]
	strb r4, [r0, #9]
	strb r4, [r0, #0xa]
	strb r4, [r0, #0xb]
	bl sub_80528AC
	mov r0, r8
	strb r6, [r0]
	strb r4, [r5]
	ldr r0, _08062F84 @ =gUnknown_086A4FB4
	str r0, [sp, #0x14]
	movs r0, #0xe6
	lsls r0, r0, #5
	str r0, [sp, #0x18]
	ldr r0, _08062F88 @ =gUnknown_086A4DB4
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x24]
	ldr r0, _08062F8C @ =gUnknown_086A5834
	str r0, [sp, #0x10]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [sp, #0x1c]
	add r0, sp, #0x28
	strb r4, [r0]
	mov r1, sb
	strb r4, [r1]
	movs r0, #0x15
	mov r1, sl
	strb r0, [r1]
	mov r0, sp
	bl sub_80528AC
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08062F7C: .4byte gUnknown_086A17F4
_08062F80: .4byte gUnknown_086A2534
_08062F84: .4byte gUnknown_086A4FB4
_08062F88: .4byte gUnknown_086A4DB4
_08062F8C: .4byte gUnknown_086A5834

	thumb_func_start sub_8062F90
sub_8062F90: @ 0x08062F90
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _08063188 @ =gMultiplayerMissingHeartbeats
	movs r4, #0
	strb r4, [r0, #3]
	strb r4, [r0, #2]
	strb r4, [r0, #1]
	strb r4, [r0]
	movs r0, #4
	bl m4aSongNumStart
	movs r0, #4
	mov sb, r0
	bl sub_80535FC
	ldr r1, _0806318C @ =gDispCnt
	movs r2, #0x9a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08063190 @ =gBgCntRegs
	movs r5, #0
	ldr r0, _08063194 @ =0x00001D83
	strh r0, [r1]
	ldr r0, _08063198 @ =0x00001886
	strh r0, [r1, #2]
	ldr r0, _0806319C @ =gBgScrollRegs
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	bl sub_8062EDC
	ldr r0, _080631A0 @ =sub_80631E8
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _080631A4 @ =0x08063911
	str r1, [sp]
	movs r1, #0x5c
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r6, #0xc0
	lsls r6, r6, #0x12
	adds r7, r1, r6
	str r4, [r7, #0x4c]
	ldr r3, _080631A8 @ =0x03000057
	adds r0, r1, r3
	strb r5, [r0]
	ldr r2, _080631AC @ =0x03000050
	adds r0, r1, r2
	movs r2, #0x14
	strh r2, [r0]
	subs r3, #5
	adds r0, r1, r3
	strh r2, [r0]
	ldr r2, _080631B0 @ =0x03000054
	adds r0, r1, r2
	strb r5, [r0]
	adds r3, #3
	adds r0, r1, r3
	strb r5, [r0]
	ldr r0, _080631B4 @ =0x03000058
	adds r1, r1, r0
	mov r2, sb
	strb r2, [r1]
	strh r4, [r7]
	movs r1, #1
	movs r0, #1
	strh r0, [r7, #2]
	movs r0, #2
	strh r0, [r7, #4]
	strh r4, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r7, #8]
	strb r1, [r7, #0xa]
	ldr r0, _080631B8 @ =0x08063915
	ldr r3, _080631BC @ =0x00002030
	mov r8, r3
	str r4, [sp]
	movs r1, #0x54
	mov r2, r8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r0, [r2, #6]
	adds r1, r0, r6
	str r4, [r1, #0x48]
	ldr r3, _080631C0 @ =0x0300004C
	adds r1, r0, r3
	strh r4, [r1]
	adds r3, #2
	adds r1, r0, r3
	strb r5, [r1]
	adds r3, #3
	adds r1, r0, r3
	mov r3, sb
	strb r3, [r1]
	ldr r1, _080631C4 @ =0x0300004F
	adds r0, r0, r1
	strb r5, [r0]
	str r2, [r7, #0xc]
	ldr r0, _080631C8 @ =sub_8063824
	movs r1, #0xb7
	lsls r1, r1, #2
	str r4, [sp]
	mov r2, r8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r0, [r2, #6]
	adds r6, r0, r6
	str r6, [sp, #4]
	ldr r3, _080631CC @ =0x030002D0
	adds r1, r0, r3
	str r4, [r1]
	ldr r6, _080631D0 @ =0x030002D4
	adds r1, r0, r6
	strh r4, [r1]
	adds r3, #6
	adds r1, r0, r3
	strb r5, [r1]
	ldr r4, _080631D4 @ =0x030002D7
	adds r1, r0, r4
	strb r5, [r1]
	adds r6, #6
	adds r1, r0, r6
	mov r3, sb
	strb r3, [r1]
	adds r4, #2
	adds r0, r0, r4
	strb r5, [r0]
	movs r4, #0
	ldr r6, _080631D8 @ =gUnknown_0868B240
	mov r8, r6
	movs r5, #0
_080630B0:
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r0, r1, #4
	ldr r6, [sp, #4]
	adds r3, r6, r0
	lsls r1, r1, #2
	mov r6, r8
	adds r0, r1, r6
	ldr r0, [r0]
	str r0, [r3, #4]
	mov r0, r8
	adds r0, #4
	adds r0, r1, r0
	ldr r0, [r0]
	strh r0, [r3, #0xa]
	ldr r0, _080631DC @ =gUnknown_0868B248
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r3, #0
	adds r0, #0x20
	strb r1, [r0]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r3, #0x1a]
	strh r5, [r3, #8]
	strh r5, [r3, #0x14]
	strh r5, [r3, #0x1c]
	adds r1, r3, #0
	adds r1, #0x21
	movs r6, #1
	rsbs r6, r6, #0
	mov sl, r6
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x22
	movs r1, #0x10
	mov sb, r1
	mov r6, sb
	strb r6, [r0]
	adds r0, #3
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x28]
	movs r6, #0x80
	lsls r6, r6, #6
	str r6, [r3, #0x10]
	adds r0, r3, #0
	str r2, [sp, #8]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r2, [sp, #8]
	cmp r4, #4
	bls _080630B0
	str r2, [r7, #0x10]
	adds r3, r7, #0
	adds r3, #0x1c
	movs r2, #0
	movs r1, #0
	movs r0, #0x78
	strh r0, [r3, #0x16]
	movs r0, #0x50
	strh r0, [r3, #0x18]
	ldr r0, _080631E0 @ =0x06010F00
	str r0, [r3, #4]
	movs r0, #0x80
	strh r0, [r3, #0x1a]
	strh r1, [r3, #8]
	ldr r0, _080631E4 @ =0x00000389
	strh r0, [r3, #0xa]
	adds r0, r7, #0
	adds r0, #0x3c
	strb r2, [r0]
	strh r1, [r3, #0x14]
	strh r1, [r3, #0x1c]
	adds r1, r7, #0
	adds r1, #0x3d
	ldrb r0, [r1]
	mov r4, sl
	orrs r0, r4
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x3e
	mov r1, sb
	strb r1, [r0]
	adds r0, #3
	strb r2, [r0]
	str r6, [r3, #0x10]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl sub_805423C
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063188: .4byte gMultiplayerMissingHeartbeats
_0806318C: .4byte gDispCnt
_08063190: .4byte gBgCntRegs
_08063194: .4byte 0x00001D83
_08063198: .4byte 0x00001886
_0806319C: .4byte gBgScrollRegs
_080631A0: .4byte sub_80631E8
_080631A4: .4byte 0x08063911
_080631A8: .4byte 0x03000057
_080631AC: .4byte 0x03000050
_080631B0: .4byte 0x03000054
_080631B4: .4byte 0x03000058
_080631B8: .4byte 0x08063915
_080631BC: .4byte 0x00002030
_080631C0: .4byte 0x0300004C
_080631C4: .4byte 0x0300004F
_080631C8: .4byte sub_8063824
_080631CC: .4byte 0x030002D0
_080631D0: .4byte 0x030002D4
_080631D4: .4byte 0x030002D7
_080631D8: .4byte gUnknown_0868B240
_080631DC: .4byte gUnknown_0868B248
_080631E0: .4byte 0x06010F00
_080631E4: .4byte 0x00000389

	thumb_func_start sub_80631E8
sub_80631E8: @ 0x080631E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08063288 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r5, r1
	ldr r0, [r6, #0xc]
	ldrh r2, [r0, #6]
	adds r1, r2, r1
	ldr r0, [r6, #0x10]
	ldrh r3, [r0, #6]
	ldr r4, [r6, #0x4c]
	adds r4, #1
	str r4, [r6, #0x4c]
	str r4, [r1, #0x48]
	ldr r1, _0806328C @ =0x030002D0
	adds r1, r1, r3
	mov sl, r1
	str r4, [r1]
	ldr r7, _08063290 @ =0x03000055
	adds r1, r5, r7
	ldrb r0, [r1]
	subs r7, #6
	adds r2, r2, r7
	movs r7, #0
	mov r8, r7
	strb r0, [r2]
	ldrb r1, [r1]
	ldr r2, _08063294 @ =0x030002D7
	adds r0, r3, r2
	strb r1, [r0]
	ldr r7, _08063298 @ =0x03000057
	adds r5, r5, r7
	ldrb r0, [r5]
	ldr r1, _0806329C @ =0x030002D9
	adds r3, r3, r1
	strb r0, [r3]
	adds r0, r6, #0
	bl sub_805423C
	cmp r4, #0x40
	beq _08063254
	ldr r0, _080632A0 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08063278
_08063254:
	movs r0, #0x40
	str r0, [r6, #0x4c]
	mov r2, sl
	str r0, [r2]
	ldr r2, _080632A4 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _080632A8 @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _080632AC @ =gBldRegs
	mov r7, r8
	strh r7, [r0]
	mov r1, r8
	strh r1, [r0, #4]
	mov r2, sb
	ldr r1, [r2]
	ldr r0, _080632B0 @ =sub_80632B4
	str r0, [r1, #8]
_08063278:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063288: .4byte gCurTask
_0806328C: .4byte 0x030002D0
_08063290: .4byte 0x03000055
_08063294: .4byte 0x030002D7
_08063298: .4byte 0x03000057
_0806329C: .4byte 0x030002D9
_080632A0: .4byte gPressedKeys
_080632A4: .4byte gDispCnt
_080632A8: .4byte 0x00001FFF
_080632AC: .4byte gBldRegs
_080632B0: .4byte sub_80632B4

	thumb_func_start sub_80632B4
sub_80632B4: @ 0x080632B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08063338 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r0, r1
	ldr r0, [r7, #0xc]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sl, r0
	ldr r0, [r7, #0x10]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sb, r0
	ldr r0, _0806333C @ =gGameMode
	ldrb r0, [r0]
	ldr r1, _08063340 @ =gMultiSioStatusFlags
	mov r8, r1
	cmp r0, #1
	bls _0806337A
	movs r5, #0
	ldr r2, _08063344 @ =gMultiplayerConnections
	ldrb r1, [r2]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0806337A
	movs r6, #1
	ldr r3, _08063348 @ =gMultiplayerMissingHeartbeats
_080632F8:
	adds r0, r6, #0
	lsls r0, r5
	mov r1, r8
	ldr r4, [r1]
	ands r4, r0
	cmp r4, #0
	bne _08063364
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _08063368
	movs r0, #0
	ldr r1, _0806334C @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _08063350 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08063354 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _08063358 @ =sa2__gUnknown_03005390
	strb r4, [r0]
	ldr r1, _0806335C @ =gVramGraphicsCopyCursor
	ldr r0, _08063360 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl MultiPakCommunicationError
	b _080634BC
	.align 2, 0
_08063338: .4byte gCurTask
_0806333C: .4byte gGameMode
_08063340: .4byte gMultiSioStatusFlags
_08063344: .4byte gMultiplayerConnections
_08063348: .4byte gMultiplayerMissingHeartbeats
_0806334C: .4byte 0x0000FFFF
_08063350: .4byte gBackgroundsCopyQueueCursor
_08063354: .4byte gBackgroundsCopyQueueIndex
_08063358: .4byte sa2__gUnknown_03005390
_0806335C: .4byte gVramGraphicsCopyCursor
_08063360: .4byte gVramGraphicsCopyQueueIndex
_08063364:
	movs r0, #0
	strb r0, [r3]
_08063368:
	adds r3, #1
	adds r5, #1
	cmp r5, #3
	bhi _0806337A
	ldrb r0, [r2]
	asrs r0, r5
	ands r0, r6
	cmp r0, #0
	bne _080632F8
_0806337A:
	ldr r2, _080633DC @ =gMultiSioRecv
	ldr r0, _080633E0 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	adds r5, r7, #0
	adds r5, #0x55
	cmp r0, #0
	bne _080633A6
	ldrh r0, [r2]
	cmp r0, #0x4f
	bls _08063396
	ldrb r0, [r2, #2]
	strb r0, [r5]
_08063396:
	adds r4, r7, #0
	adds r4, #0x1c
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080633A6:
	ldr r2, [r7, #0x4c]
	mov r8, r2
	movs r0, #1
	add r8, r0
	ldr r0, _080633E0 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r2, #0x80
	ands r0, r2
	cmp r0, #0
	beq _080633FA
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #1
	bls _080633FA
	ldr r0, _080633E4 @ =gRepeatedKeys
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080633E8
	ldrb r0, [r5]
	cmp r0, #2
	bhi _080633FA
	adds r0, #1
	b _080633F8
	.align 2, 0
_080633DC: .4byte gMultiSioRecv
_080633E0: .4byte gMultiSioStatusFlags
_080633E4: .4byte gRepeatedKeys
_080633E8:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080633FA
	ldrb r0, [r5]
	cmp r0, #0
	beq _080633FA
	subs r0, #1
_080633F8:
	strb r0, [r5]
_080633FA:
	ldrb r4, [r5]
	adds r6, r7, #0
	adds r6, #0x52
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r1, #0x18
	bl Div
	adds r0, #5
	cmp r4, r0
	ble _08063416
	ldrb r1, [r5]
	subs r1, #5
	b _08063428
_08063416:
	ldrb r4, [r5]
	movs r2, #0
	ldrsh r0, [r6, r2]
	movs r1, #0x18
	bl Div
	cmp r4, r0
	bgt _08063432
	ldrb r1, [r5]
_08063428:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	subs r0, #8
	strh r0, [r6]
_08063432:
	mov r0, r8
	str r0, [r7, #0x4c]
	mov r1, sl
	str r0, [r1, #0x48]
	movs r0, #0xb4
	lsls r0, r0, #2
	add r0, sb
	mov r2, r8
	str r2, [r0]
	ldrb r1, [r5]
	mov r0, sl
	adds r0, #0x4f
	strb r1, [r0]
	ldrb r1, [r5]
	ldr r0, _080634CC @ =0x000002D7
	add r0, sb
	strb r1, [r0]
	adds r4, r7, #0
	adds r4, #0x57
	ldrb r1, [r4]
	ldr r0, _080634D0 @ =0x000002D9
	add r0, sb
	strb r1, [r0]
	adds r0, r7, #0
	bl sub_805423C
	ldr r2, _080634D4 @ =gMultiSioSend
	movs r0, #0x50
	strh r0, [r2]
	ldrb r0, [r5]
	strb r0, [r2, #2]
	ldr r0, _080634D8 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	adds r3, r4, #0
	cmp r0, #0
	beq _0806348E
	ldr r0, _080634DC @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806348E
	movs r0, #0x51
	strh r0, [r2]
_0806348E:
	ldr r2, _080634E0 @ =gMultiSioRecv
	ldrh r0, [r2]
	cmp r0, #0x51
	bne _080634BC
	movs r4, #1
	strb r4, [r3]
	ldr r0, _080634E4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080634E8 @ =sub_80634EC
	str r0, [r1, #8]
	movs r0, #0x6a
	bl m4aSongNumStart
	movs r0, #3
	bl m4aSongNumStop
	strh r4, [r7, #4]
	ldrh r1, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	subs r0, r0, r1
	strh r0, [r7, #6]
_080634BC:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080634CC: .4byte 0x000002D7
_080634D0: .4byte 0x000002D9
_080634D4: .4byte gMultiSioSend
_080634D8: .4byte gMultiSioStatusFlags
_080634DC: .4byte gPressedKeys
_080634E0: .4byte gMultiSioRecv
_080634E4: .4byte gCurTask
_080634E8: .4byte sub_80634EC

	thumb_func_start sub_80634EC
sub_80634EC: @ 0x080634EC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0806356C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	ldr r0, [r6, #0xc]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sb, r0
	ldr r0, [r6, #0x10]
	ldrh r0, [r0, #6]
	adds r7, r0, r1
	ldr r0, _08063570 @ =gGameMode
	ldrb r0, [r0]
	ldr r1, _08063574 @ =gMultiSioStatusFlags
	mov ip, r1
	cmp r0, #1
	bls _080635B0
	movs r5, #0
	ldr r2, _08063578 @ =gMultiplayerConnections
	ldrb r1, [r2]
	movs r0, #1
	ands r1, r0
	mov r8, r2
	cmp r1, #0
	beq _080635B0
	movs r2, #1
	ldr r3, _0806357C @ =gMultiplayerMissingHeartbeats
_0806352E:
	adds r0, r2, #0
	lsls r0, r5
	mov r1, ip
	ldr r4, [r1]
	ands r4, r0
	cmp r4, #0
	bne _08063598
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _0806359C
	movs r0, #0
	ldr r1, _08063580 @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _08063584 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08063588 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0806358C @ =sa2__gUnknown_03005390
	strb r4, [r0]
	ldr r1, _08063590 @ =gVramGraphicsCopyCursor
	ldr r0, _08063594 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl MultiPakCommunicationError
	b _0806361C
	.align 2, 0
_0806356C: .4byte gCurTask
_08063570: .4byte gGameMode
_08063574: .4byte gMultiSioStatusFlags
_08063578: .4byte gMultiplayerConnections
_0806357C: .4byte gMultiplayerMissingHeartbeats
_08063580: .4byte 0x0000FFFF
_08063584: .4byte gBackgroundsCopyQueueCursor
_08063588: .4byte gBackgroundsCopyQueueIndex
_0806358C: .4byte sa2__gUnknown_03005390
_08063590: .4byte gVramGraphicsCopyCursor
_08063594: .4byte gVramGraphicsCopyQueueIndex
_08063598:
	movs r0, #0
	strb r0, [r3]
_0806359C:
	adds r3, #1
	adds r5, #1
	cmp r5, #3
	bhi _080635B0
	mov r1, r8
	ldrb r0, [r1]
	asrs r0, r5
	ands r0, r2
	cmp r0, #0
	bne _0806352E
_080635B0:
	ldr r3, _08063628 @ =gMultiSioRecv
	mov r2, ip
	ldr r0, [r2]
	movs r1, #0x80
	ands r0, r1
	adds r2, r6, #0
	adds r2, #0x55
	cmp r0, #0
	bne _080635CC
	ldrh r0, [r3]
	cmp r0, #0x4f
	bls _080635CC
	ldrb r0, [r3, #2]
	strb r0, [r2]
_080635CC:
	ldr r0, [r6, #0x4c]
	adds r0, #1
	str r0, [r6, #0x4c]
	mov r3, sb
	str r0, [r3, #0x48]
	movs r3, #0xb4
	lsls r3, r3, #2
	adds r1, r7, r3
	str r0, [r1]
	ldrb r1, [r2]
	mov r0, sb
	adds r0, #0x4f
	strb r1, [r0]
	ldrb r1, [r2]
	ldr r2, _0806362C @ =0x000002D7
	adds r0, r7, r2
	strb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x57
	ldrb r1, [r0]
	adds r3, #9
	adds r0, r7, r3
	strb r1, [r0]
	adds r0, r6, #0
	bl sub_805423C
	movs r0, #6
	ldrsh r1, [r6, r0]
	movs r0, #0xc0
	lsls r0, r0, #5
	cmp r1, r0
	ble _0806361C
	movs r1, #4
	ldrsh r0, [r6, r1]
	cmp r0, #1
	bne _0806361C
	ldr r0, _08063630 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08063634 @ =sub_8063638
	str r0, [r1, #8]
_0806361C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063628: .4byte gMultiSioRecv
_0806362C: .4byte 0x000002D7
_08063630: .4byte gCurTask
_08063634: .4byte sub_8063638

	thumb_func_start sub_8063638
sub_8063638: @ 0x08063638
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _080636AC @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov ip, r1
	ldr r0, _080636B0 @ =gGameMode
	ldrb r0, [r0]
	mov sb, r2
	ldr r7, _080636B4 @ =gMultiSioStatusFlags
	cmp r0, #1
	bls _080636EE
	movs r5, #0
	ldr r2, _080636B8 @ =gMultiplayerConnections
	ldrb r1, [r2]
	movs r0, #1
	ands r1, r0
	adds r6, r2, #0
	cmp r1, #0
	beq _080636EE
	movs r2, #1
	ldr r3, _080636BC @ =gMultiplayerMissingHeartbeats
_0806366E:
	adds r0, r2, #0
	lsls r0, r5
	ldr r4, [r7]
	ands r4, r0
	cmp r4, #0
	bne _080636D8
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _080636DC
	movs r0, #0
	ldr r1, _080636C0 @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _080636C4 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080636C8 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080636CC @ =sa2__gUnknown_03005390
	strb r4, [r0]
	ldr r1, _080636D0 @ =gVramGraphicsCopyCursor
	ldr r0, _080636D4 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl MultiPakCommunicationError
	b _08063818
	.align 2, 0
_080636AC: .4byte gCurTask
_080636B0: .4byte gGameMode
_080636B4: .4byte gMultiSioStatusFlags
_080636B8: .4byte gMultiplayerConnections
_080636BC: .4byte gMultiplayerMissingHeartbeats
_080636C0: .4byte 0x0000FFFF
_080636C4: .4byte gBackgroundsCopyQueueCursor
_080636C8: .4byte gBackgroundsCopyQueueIndex
_080636CC: .4byte sa2__gUnknown_03005390
_080636D0: .4byte gVramGraphicsCopyCursor
_080636D4: .4byte gVramGraphicsCopyQueueIndex
_080636D8:
	movs r0, #0
	strb r0, [r3]
_080636DC:
	adds r3, #1
	adds r5, #1
	cmp r5, #3
	bhi _080636EE
	ldrb r0, [r6]
	asrs r0, r5
	ands r0, r2
	cmp r0, #0
	bne _0806366E
_080636EE:
	ldr r4, _080637BC @ =gMultiSioRecv
	ldrh r0, [r4]
	adds r5, r4, #0
	ldr r1, _080637C0 @ =gMultiSioSend
	mov r8, r1
	movs r1, #0x55
	add ip, r1
	cmp r0, #0x52
	bne _0806371A
	mov r0, sb
	ldr r1, [r0]
	ldr r0, _080637C4 @ =sub_80638B0
	str r0, [r1, #8]
	movs r3, #0
	adds r1, r4, #3
	ldr r2, _080637C8 @ =gUnknown_03004FF0
_0806370E:
	adds r0, r1, r3
	ldrb r0, [r0]
	stm r2!, {r0}
	adds r3, #1
	cmp r3, #2
	bls _0806370E
_0806371A:
	ldr r0, [r7]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806380C
	movs r3, #1
	ldr r1, _080637CC @ =gMultiplayerConnections
	ldrb r0, [r1]
	asrs r0, r0, #1
	ands r0, r3
	adds r6, r1, #0
	cmp r0, #0
	beq _0806373A
	ldrh r0, [r5, #0x14]
	cmp r0, #0x51
	bne _0806375A
_0806373A:
	adds r3, #1
	cmp r3, #3
	bhi _0806375A
	ldrb r0, [r6]
	asrs r0, r3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0806373A
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r4, r0, r5
	ldrh r0, [r4]
	cmp r0, #0x51
	beq _0806373A
_0806375A:
	cmp r3, #4
	bne _0806380C
	mov r4, r8
	movs r0, #0x52
	strh r0, [r4]
	mov r1, ip
	ldrb r0, [r1]
	strb r0, [r4, #2]
	ldr r2, _080637D0 @ =gPseudoRandom
	ldr r0, [r2]
	ldr r1, _080637D4 @ =0x00196225
	mov ip, r1
	mov r1, ip
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r7, _080637D8 @ =0x3C6EF35F
	adds r0, r0, r7
	str r0, [r2]
	adds r3, r0, #0
	movs r1, #7
	ands r0, r1
	strb r0, [r4, #3]
	lsrs r3, r3, #8
	ldrb r1, [r4, #3]
	movs r0, #7
	ands r0, r3
	adds r6, r2, #0
	cmp r1, r0
	bne _080637AE
	adds r5, r6, #0
	movs r2, #7
_08063798:
	ldr r0, [r5]
	mov r1, ip
	muls r1, r0, r1
	adds r0, r1, #0
	adds r0, r0, r7
	str r0, [r5]
	adds r3, r0, #0
	ldrb r1, [r4, #3]
	ands r0, r2
	cmp r1, r0
	beq _08063798
_080637AE:
	movs r0, #7
	adds r1, r3, #0
	ands r1, r0
	strb r1, [r4, #4]
	lsrs r3, r3, #8
	b _080637EA
	.align 2, 0
_080637BC: .4byte gMultiSioRecv
_080637C0: .4byte gMultiSioSend
_080637C4: .4byte sub_80638B0
_080637C8: .4byte gUnknown_03004FF0
_080637CC: .4byte gMultiplayerConnections
_080637D0: .4byte gPseudoRandom
_080637D4: .4byte 0x00196225
_080637D8: .4byte 0x3C6EF35F
_080637DC:
	ldr r1, [r6]
	ldr r0, _08063804 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08063808 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r6]
	adds r3, r0, #0
_080637EA:
	ldrb r0, [r4, #3]
	movs r1, #7
	ands r1, r3
	cmp r0, r1
	beq _080637DC
	ldrb r0, [r4, #4]
	cmp r0, r1
	beq _080637DC
	movs r0, #7
	ands r3, r0
	strb r3, [r4, #5]
	b _08063818
	.align 2, 0
_08063804: .4byte 0x00196225
_08063808: .4byte 0x3C6EF35F
_0806380C:
	mov r4, r8
	movs r0, #0x51
	strh r0, [r4]
	mov r1, ip
	ldrb r0, [r1]
	strb r0, [r4, #2]
_08063818:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8063824
sub_8063824: @ 0x08063824
	push {r4, r5, r6, r7, lr}
	ldr r0, _08063868 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	movs r6, #0
	movs r7, #0
_08063836:
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #4
	adds r4, r5, r0
	ldr r1, _0806386C @ =0x000002D7
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r6, r0
	bne _08063884
	adds r1, #2
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08063876
	subs r1, #9
	adds r0, r5, r1
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08063870
	adds r0, r4, #0
	adds r0, #0x25
	strb r1, [r0]
	b _0806387E
	.align 2, 0
_08063868: .4byte gCurTask
_0806386C: .4byte 0x000002D7
_08063870:
	adds r1, r4, #0
	adds r1, #0x25
	b _0806387C
_08063876:
	adds r1, r4, #0
	adds r1, #0x25
	movs r0, #1
_0806387C:
	strb r0, [r1]
_0806387E:
	movs r0, #0x68
	strh r0, [r4, #0x16]
	b _0806388E
_08063884:
	movs r0, #0x64
	strh r0, [r4, #0x16]
	adds r0, r4, #0
	adds r0, #0x25
	strb r7, [r0]
_0806388E:
	lsls r0, r6, #5
	adds r0, #0x18
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _08063836
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80638B0
sub_80638B0: @ 0x080638B0
	push {r4, r5, lr}
	ldr r5, _080638F8 @ =gCurTask
	ldr r0, [r5]
	ldrh r2, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r2, r4
	ldr r3, _080638FC @ =gDispCnt
	ldrh r1, [r3]
	ldr r0, _08063900 @ =0x00001FFF
	ands r0, r1
	strh r0, [r3]
	ldr r1, _08063904 @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	ldr r0, _08063908 @ =0x03000055
	adds r2, r2, r0
	ldrb r0, [r2]
	ldr r1, _0806390C @ =gCurrentLevel
	adds r0, #0xe
	strb r0, [r1]
	bl ApplyGameStageSettings
	ldr r0, [r4, #0xc]
	bl TaskDestroy
	ldr r0, [r4, #0x10]
	bl TaskDestroy
	ldr r0, [r5]
	bl TaskDestroy
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080638F8: .4byte gCurTask
_080638FC: .4byte gDispCnt
_08063900: .4byte 0x00001FFF
_08063904: .4byte gBldRegs
_08063908: .4byte 0x03000055
_0806390C: .4byte gCurrentLevel
    .align 2, 0

    thumb_func_start sub_8063910
sub_8063910:
    bx lr
    .align 2, 0

    thumb_func_start sub_8063914
sub_8063914:
    bx lr
    .align 2, 0

	thumb_func_start sub_8063918
sub_8063918: @ 0x08063918
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r1, _08063B08 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08063B0C @ =gBackgroundsCopyQueueCursor
	ldr r0, _08063B10 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08063B14 @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08063B18 @ =gVramGraphicsCopyCursor
	ldr r0, _08063B1C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl sub_80535FC
	bl sub_8053674
	ldr r1, _08063B20 @ =gDispCnt
	movs r2, #0x82
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08063B24 @ =gBgCntRegs
	movs r5, #0
	movs r4, #0
	ldr r0, _08063B28 @ =0x00009D86
	strh r0, [r1]
	ldr r0, _08063B2C @ =0x00001B8B
	strh r0, [r1, #2]
	ldr r0, _08063B30 @ =0x00009880
	strh r0, [r1, #4]
	ldr r0, _08063B34 @ =gBgScrollRegs
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	strh r4, [r0, #8]
	strh r4, [r0, #0xa]
	ldr r0, _08063B38 @ =sub_8065814
	ldr r2, _08063B3C @ =0x00002120
	str r4, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	mov sl, r0
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r2, r0
	strh r4, [r6, #0x30]
	ldr r0, _08063B40 @ =0xFFFFDC00
	mov sb, r0
	str r4, [r6, #0x34]
	str r0, [r6, #0x38]
	str r0, [r6, #0x3c]
	movs r0, #0x90
	lsls r0, r0, #2
	str r0, [r6, #0x40]
	ldr r0, _08063B44 @ =0x06010020
	str r0, [r6, #4]
	ldr r0, _08063B48 @ =0x00000306
	strh r0, [r6, #0xa]
	ldr r1, _08063B4C @ =0x03000020
	adds r0, r2, r1
	strb r5, [r0]
	movs r0, #0x78
	strh r0, [r6, #0x16]
	ldr r0, _08063B50 @ =0x0000FFDC
	strh r0, [r6, #0x18]
	movs r0, #0xc0
	strh r0, [r6, #0x1a]
	strh r4, [r6, #8]
	strh r4, [r6, #0x14]
	strh r4, [r6, #0x1c]
	ldr r4, _08063B54 @ =0x03000021
	adds r1, r2, r4
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08063B58 @ =0x03000022
	adds r1, r2, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08063B5C @ =0x03000025
	adds r2, r2, r1
	strb r5, [r2]
	subs r0, #0x11
	str r0, [r6, #0x28]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r6, #0x10]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	movs r7, #0
	movs r2, #0
	mov r8, r2
_080639EA:
	lsls r4, r7, #1
	movs r5, #0xd0
	lsls r5, r5, #7
	adds r0, r5, #0
	adds r2, r4, #0
	orrs r2, r0
	mov r0, r8
	str r0, [sp]
	ldr r0, _08063B60 @ =sub_8065058
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r5, r1
	adds r4, r4, r7
	lsls r4, r4, #1
	movs r0, #0x2f
	subs r0, r0, r4
	strh r0, [r6, #0x30]
	ldr r2, _08063B64 @ =0x03000032
	adds r0, r5, r2
	strb r7, [r0]
	ldrh r0, [r6, #0x30]
	str r0, [r6, #0x34]
	mov r4, sb
	str r4, [r6, #0x38]
	str r4, [r6, #0x3c]
	movs r0, #0x90
	lsls r0, r0, #2
	str r0, [r6, #0x40]
	lsls r1, r7, #7
	ldr r2, _08063B68 @ =0x060103E0
	adds r0, r1, r2
	str r0, [r6, #4]
	ldr r0, _08063B6C @ =0x00000307
	strh r0, [r6, #0xa]
	ldr r4, _08063B4C @ =0x03000020
	adds r0, r5, r4
	mov r2, r8
	strb r2, [r0]
	ldr r0, _08063B70 @ =gSineTable
	adds r1, r1, r0
	movs r4, #0
	ldrsh r0, [r1, r4]
	ldr r1, _08063B74 @ =0x0000028A
	bl Div
	adds r0, #0x78
	strh r0, [r6, #0x16]
	ldr r0, _08063B50 @ =0x0000FFDC
	strh r0, [r6, #0x18]
	mov r0, r8
	strh r0, [r6, #0x1a]
	strh r0, [r6, #8]
	strh r0, [r6, #0x14]
	strh r0, [r6, #0x1c]
	ldr r2, _08063B54 @ =0x03000021
	adds r1, r5, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r4, _08063B58 @ =0x03000022
	adds r1, r5, r4
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _08063B5C @ =0x03000025
	adds r5, r5, r0
	mov r1, r8
	strb r1, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x28]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r6, #0x10]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #7
	bls _080639EA
	ldr r0, _08063B78 @ =sub_80640C8
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08063B7C @ =sub_8065810
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r3, r0
	ldr r2, _08063B80 @ =0x0300004C
	adds r1, r3, r2
	movs r2, #0
	strh r2, [r1]
	adds r4, #0x2c
	adds r1, r3, r4
	movs r4, #1
	strb r4, [r1]
	mov r5, sl
	str r5, [r0, #0xc]
	str r2, [r0, #0x10]
	str r2, [r0, #0x14]
	str r2, [r0, #0x18]
	str r2, [r0, #0x1c]
	str r2, [r0, #0x20]
	str r2, [r0, #0x24]
	ldr r5, _08063B84 @ =0x03000050
	adds r1, r3, r5
	strh r2, [r1]
	ldr r1, _08063B88 @ =0x03000052
	adds r3, r3, r1
	strh r2, [r3]
	strh r2, [r0]
	movs r3, #1
	strh r4, [r0, #2]
	movs r1, #2
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	movs r1, #0x80
	strh r1, [r0, #8]
	strb r3, [r0, #0xa]
	bl sub_805423C
	movs r0, #1
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
_08063B08: .4byte 0x0000FFFF
_08063B0C: .4byte gBackgroundsCopyQueueCursor
_08063B10: .4byte gBackgroundsCopyQueueIndex
_08063B14: .4byte sa2__gUnknown_03005390
_08063B18: .4byte gVramGraphicsCopyCursor
_08063B1C: .4byte gVramGraphicsCopyQueueIndex
_08063B20: .4byte gDispCnt
_08063B24: .4byte gBgCntRegs
_08063B28: .4byte 0x00009D86
_08063B2C: .4byte 0x00001B8B
_08063B30: .4byte 0x00009880
_08063B34: .4byte gBgScrollRegs
_08063B38: .4byte sub_8065814
_08063B3C: .4byte 0x00002120
_08063B40: .4byte 0xFFFFDC00
_08063B44: .4byte 0x06010020
_08063B48: .4byte 0x00000306
_08063B4C: .4byte 0x03000020
_08063B50: .4byte 0x0000FFDC
_08063B54: .4byte 0x03000021
_08063B58: .4byte 0x03000022
_08063B5C: .4byte 0x03000025
_08063B60: .4byte sub_8065058
_08063B64: .4byte 0x03000032
_08063B68: .4byte 0x060103E0
_08063B6C: .4byte 0x00000307
_08063B70: .4byte gSineTable
_08063B74: .4byte 0x0000028A
_08063B78: .4byte sub_80640C8
_08063B7C: .4byte sub_8065810
_08063B80: .4byte 0x0300004C
_08063B84: .4byte 0x03000050
_08063B88: .4byte 0x03000052

	thumb_func_start sub_8063B8C
sub_8063B8C: @ 0x08063B8C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	bl sub_8053674
	add r5, sp, #0x2c
	movs r0, #0x80
	rsbs r0, r0, #0
	strb r0, [r5]
	mov r7, sp
	adds r7, #0x2b
	movs r1, #0
	strb r1, [r7]
	ldr r0, _08063C34 @ =gUnknown_086B1CB4
	str r0, [sp, #0x14]
	movs r0, #0xa8
	lsls r0, r0, #3
	str r0, [sp, #0x18]
	ldr r0, _08063C38 @ =gUnknown_086B1AB4
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x24]
	ldr r0, _08063C3C @ =gUnknown_086B21F4
	str r0, [sp, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	mov sl, r1
	str r1, [sp, #0x1c]
	add r0, sp, #0x28
	mov sb, r0
	movs r1, #0
	strb r1, [r0]
	movs r0, #0x29
	add r0, sp
	mov r8, r0
	movs r4, #1
	strb r4, [r0]
	mov r6, sp
	adds r6, #0x2a
	movs r0, #0x15
	strb r0, [r6]
	mov r0, sp
	bl sub_80528AC
	movs r1, #0x80
	rsbs r1, r1, #0
	strb r1, [r5]
	strb r4, [r7]
	ldr r0, _08063C40 @ =gUnknown_086B2BF4
	str r0, [sp, #0x14]
	movs r0, #0xf0
	lsls r0, r0, #5
	str r0, [sp, #0x18]
	ldr r0, _08063C44 @ =gUnknown_086B29F4
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x24]
	ldr r0, _08063C48 @ =gUnknown_086B49F4
	str r0, [sp, #0x10]
	mov r1, sl
	str r1, [sp, #0x1c]
	movs r1, #0
	mov r0, sb
	strb r1, [r0]
	mov r0, r8
	strb r1, [r0]
	movs r0, #0x11
	strb r0, [r6]
	mov r0, sp
	bl sub_80528AC
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063C34: .4byte gUnknown_086B1CB4
_08063C38: .4byte gUnknown_086B1AB4
_08063C3C: .4byte gUnknown_086B21F4
_08063C40: .4byte gUnknown_086B2BF4
_08063C44: .4byte gUnknown_086B29F4
_08063C48: .4byte gUnknown_086B49F4

	thumb_func_start sub_8063C4C
sub_8063C4C: @ 0x08063C4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	bl sub_8053674
	add r5, sp, #0x2c
	movs r0, #0x80
	rsbs r0, r0, #0
	strb r0, [r5]
	mov r7, sp
	adds r7, #0x2b
	movs r1, #0
	strb r1, [r7]
	ldr r0, _08063CF4 @ =gUnknown_086B1CB4
	str r0, [sp, #0x14]
	movs r0, #0xa8
	lsls r0, r0, #3
	str r0, [sp, #0x18]
	ldr r0, _08063CF8 @ =gUnknown_086B1AD4
	str r0, [sp, #0x20]
	movs r0, #0x20
	str r0, [sp, #0x24]
	ldr r0, _08063CFC @ =gUnknown_086B21F4
	str r0, [sp, #0x10]
	movs r0, #0x80
	lsls r0, r0, #4
	mov sl, r0
	str r0, [sp, #0x1c]
	add r1, sp, #0x28
	mov sb, r1
	movs r0, #0
	strb r0, [r1]
	movs r1, #0x29
	add r1, sp
	mov r8, r1
	movs r4, #1
	strb r4, [r1]
	mov r6, sp
	adds r6, #0x2a
	movs r0, #0x14
	strb r0, [r6]
	mov r0, sp
	bl sub_80528AC
	movs r0, #0x80
	rsbs r0, r0, #0
	strb r0, [r5]
	strb r4, [r7]
	ldr r0, _08063D00 @ =gUnknown_086B53F4
	str r0, [sp, #0x14]
	movs r0, #0xdc
	lsls r0, r0, #5
	str r0, [sp, #0x18]
	ldr r0, _08063D04 @ =gUnknown_086B51F4
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x24]
	ldr r0, _08063D08 @ =gUnknown_086B6F74
	str r0, [sp, #0x10]
	mov r1, sl
	str r1, [sp, #0x1c]
	movs r1, #0
	mov r0, sb
	strb r1, [r0]
	mov r0, r8
	strb r1, [r0]
	movs r0, #0x11
	strb r0, [r6]
	mov r0, sp
	bl sub_80528AC
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063CF4: .4byte gUnknown_086B1CB4
_08063CF8: .4byte gUnknown_086B1AD4
_08063CFC: .4byte gUnknown_086B21F4
_08063D00: .4byte gUnknown_086B53F4
_08063D04: .4byte gUnknown_086B51F4
_08063D08: .4byte gUnknown_086B6F74

	thumb_func_start sub_8063D0C
sub_8063D0C: @ 0x08063D0C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	bl sub_8053674
	add r5, sp, #0x2c
	movs r0, #0x80
	rsbs r0, r0, #0
	strb r0, [r5]
	mov r7, sp
	adds r7, #0x2b
	movs r1, #0
	strb r1, [r7]
	ldr r0, _08063DB4 @ =gUnknown_086B1CB4
	str r0, [sp, #0x14]
	movs r0, #0xa8
	lsls r0, r0, #3
	str r0, [sp, #0x18]
	ldr r0, _08063DB8 @ =gUnknown_086B1AF4
	str r0, [sp, #0x20]
	movs r0, #0x20
	str r0, [sp, #0x24]
	ldr r0, _08063DBC @ =gUnknown_086B21F4
	str r0, [sp, #0x10]
	movs r0, #0x80
	lsls r0, r0, #4
	mov sl, r0
	str r0, [sp, #0x1c]
	add r1, sp, #0x28
	mov sb, r1
	movs r0, #0
	strb r0, [r1]
	movs r1, #0x29
	add r1, sp
	mov r8, r1
	movs r4, #1
	strb r4, [r1]
	mov r6, sp
	adds r6, #0x2a
	movs r0, #0x14
	strb r0, [r6]
	mov r0, sp
	bl sub_80528AC
	movs r0, #0x80
	rsbs r0, r0, #0
	strb r0, [r5]
	strb r4, [r7]
	ldr r0, _08063DC0 @ =gUnknown_086B7974
	str r0, [sp, #0x14]
	movs r0, #0xc4
	lsls r0, r0, #5
	str r0, [sp, #0x18]
	ldr r0, _08063DC4 @ =gUnknown_086B7774
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x24]
	ldr r0, _08063DC8 @ =gUnknown_086B91F4
	str r0, [sp, #0x10]
	mov r1, sl
	str r1, [sp, #0x1c]
	movs r1, #0
	mov r0, sb
	strb r1, [r0]
	mov r0, r8
	strb r1, [r0]
	movs r0, #0x11
	strb r0, [r6]
	mov r0, sp
	bl sub_80528AC
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063DB4: .4byte gUnknown_086B1CB4
_08063DB8: .4byte gUnknown_086B1AF4
_08063DBC: .4byte gUnknown_086B21F4
_08063DC0: .4byte gUnknown_086B7974
_08063DC4: .4byte gUnknown_086B7774
_08063DC8: .4byte gUnknown_086B91F4

	thumb_func_start sub_8063DCC
sub_8063DCC: @ 0x08063DCC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	bl sub_8053674
	add r5, sp, #0x2c
	movs r0, #0x80
	rsbs r0, r0, #0
	strb r0, [r5]
	mov r7, sp
	adds r7, #0x2b
	movs r1, #0
	strb r1, [r7]
	ldr r0, _08063E74 @ =gUnknown_086B1CB4
	str r0, [sp, #0x14]
	movs r0, #0xa8
	lsls r0, r0, #3
	str r0, [sp, #0x18]
	ldr r0, _08063E78 @ =gUnknown_086B1B14
	str r0, [sp, #0x20]
	movs r0, #0x20
	str r0, [sp, #0x24]
	ldr r0, _08063E7C @ =gUnknown_086B21F4
	str r0, [sp, #0x10]
	movs r0, #0x80
	lsls r0, r0, #4
	mov sl, r0
	str r0, [sp, #0x1c]
	add r1, sp, #0x28
	mov sb, r1
	movs r0, #0
	strb r0, [r1]
	movs r1, #0x29
	add r1, sp
	mov r8, r1
	movs r4, #1
	strb r4, [r1]
	mov r6, sp
	adds r6, #0x2a
	movs r0, #0x14
	strb r0, [r6]
	mov r0, sp
	bl sub_80528AC
	movs r0, #0x80
	rsbs r0, r0, #0
	strb r0, [r5]
	strb r4, [r7]
	ldr r0, _08063E80 @ =gUnknown_086B9BF4
	str r0, [sp, #0x14]
	movs r0, #0xc2
	lsls r0, r0, #5
	str r0, [sp, #0x18]
	ldr r0, _08063E84 @ =gUnknown_086B99F4
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x24]
	ldr r0, _08063E88 @ =gUnknown_086BB434
	str r0, [sp, #0x10]
	mov r1, sl
	str r1, [sp, #0x1c]
	movs r1, #0
	mov r0, sb
	strb r1, [r0]
	mov r0, r8
	strb r1, [r0]
	movs r0, #0x11
	strb r0, [r6]
	mov r0, sp
	bl sub_80528AC
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063E74: .4byte gUnknown_086B1CB4
_08063E78: .4byte gUnknown_086B1B14
_08063E7C: .4byte gUnknown_086B21F4
_08063E80: .4byte gUnknown_086B9BF4
_08063E84: .4byte gUnknown_086B99F4
_08063E88: .4byte gUnknown_086BB434

	thumb_func_start sub_8063E8C
sub_8063E8C: @ 0x08063E8C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x34
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _08063F80
	movs r7, #0
	movs r0, #0
	mov r8, r0
_08063EA2:
	lsls r5, r7, #1
	ldr r1, _08063F4C @ =0x00006801
	adds r0, r1, #0
	adds r2, r5, #0
	orrs r2, r0
	mov r0, r8
	str r0, [sp]
	ldr r0, _08063F50 @ =sub_806515C
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r6, r1
	adds r5, r5, r7
	lsls r5, r5, #1
	strh r5, [r4, #0x30]
	ldr r2, _08063F54 @ =0x03000032
	adds r0, r6, r2
	strb r7, [r0]
	ldr r1, _08063F58 @ =0xFFFFDC00
	ldrh r0, [r4, #0x30]
	str r0, [r4, #0x34]
	str r1, [r4, #0x38]
	str r1, [r4, #0x3c]
	movs r0, #0x90
	lsls r0, r0, #2
	str r0, [r4, #0x40]
	lsls r2, r7, #7
	ldr r1, _08063F5C @ =0x06010BE0
	adds r0, r2, r1
	str r0, [r4, #4]
	ldr r0, _08063F60 @ =0x00000307
	strh r0, [r4, #0xa]
	ldr r0, _08063F64 @ =0x03000020
	adds r1, r6, r0
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08063F68 @ =gSineTable
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	ldr r1, _08063F6C @ =0x0000028A
	bl Div
	adds r0, #0x78
	strh r0, [r4, #0x16]
	ldr r0, _08063F70 @ =0x0000FFDC
	strh r0, [r4, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x1a]
	mov r2, r8
	strh r2, [r4, #8]
	strh r2, [r4, #0x14]
	strh r2, [r4, #0x1c]
	ldr r0, _08063F74 @ =0x03000021
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r2, _08063F78 @ =0x03000022
	adds r1, r6, r2
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _08063F7C @ =0x03000025
	adds r6, r6, r0
	mov r1, r8
	strb r1, [r6]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #7
	bls _08063EA2
	b _080640B2
	.align 2, 0
_08063F4C: .4byte 0x00006801
_08063F50: .4byte sub_806515C
_08063F54: .4byte 0x03000032
_08063F58: .4byte 0xFFFFDC00
_08063F5C: .4byte 0x06010BE0
_08063F60: .4byte 0x00000307
_08063F64: .4byte 0x03000020
_08063F68: .4byte gSineTable
_08063F6C: .4byte 0x0000028A
_08063F70: .4byte 0x0000FFDC
_08063F74: .4byte 0x03000021
_08063F78: .4byte 0x03000022
_08063F7C: .4byte 0x03000025
_08063F80:
	cmp r3, #1
	bne _08063FD8
	ldr r1, _08063FC8 @ =gDispCnt
	movs r2, #0x92
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	add r1, sp, #0x30
	movs r2, #0
	movs r0, #0x80
	strb r0, [r1]
	mov r0, sp
	adds r0, #0x2f
	strb r2, [r0]
	ldr r0, _08063FCC @ =gUnknown_086A5F34
	str r0, [sp, #0x18]
	movs r0, #0xbc
	lsls r0, r0, #6
	str r0, [sp, #0x1c]
	ldr r0, _08063FD0 @ =gUnknown_086A5D34
	str r0, [sp, #0x24]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x28]
	ldr r0, _08063FD4 @ =gUnknown_086A8E34
	str r0, [sp, #0x14]
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [sp, #0x20]
	add r0, sp, #0x2c
	strb r2, [r0]
	adds r0, #1
	strb r3, [r0]
	subs r1, #2
	movs r0, #0x15
	b _0806405E
	.align 2, 0
_08063FC8: .4byte gDispCnt
_08063FCC: .4byte gUnknown_086A5F34
_08063FD0: .4byte gUnknown_086A5D34
_08063FD4: .4byte gUnknown_086A8E34
_08063FD8:
	cmp r3, #2
	bne _08064020
	ldr r1, _08064014 @ =gDispCnt
	movs r2, #0x9a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	add r1, sp, #0x30
	movs r2, #0
	movs r0, #0x80
	strb r0, [r1]
	subs r1, #1
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08064018 @ =gUnknown_086A9834
	str r0, [sp, #0x18]
	movs r0, #0xa1
	lsls r0, r0, #6
	str r0, [sp, #0x1c]
	ldr r0, _0806401C @ =gUnknown_086AC074
	str r0, [sp, #0x14]
	movs r0, #0x8c
	lsls r0, r0, #4
	str r0, [sp, #0x20]
	add r0, sp, #0x2c
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	subs r1, #1
	b _0806405C
	.align 2, 0
_08064014: .4byte gDispCnt
_08064018: .4byte gUnknown_086A9834
_0806401C: .4byte gUnknown_086AC074
_08064020:
	cmp r3, #3
	bne _08064074
	ldr r1, _08064068 @ =gDispCnt
	movs r2, #0xba
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	add r1, sp, #0x30
	movs r2, #0
	movs r0, #0x80
	strb r0, [r1]
	mov r0, sp
	adds r0, #0x2f
	strb r2, [r0]
	ldr r0, _0806406C @ =gUnknown_086AFFB4
	str r0, [sp, #0x18]
	movs r0, #0xa2
	lsls r0, r0, #5
	str r0, [sp, #0x1c]
	ldr r0, _08064070 @ =gUnknown_086B13F4
	str r0, [sp, #0x14]
	movs r0, #0xd8
	lsls r0, r0, #3
	str r0, [sp, #0x20]
	add r0, sp, #0x2c
	strb r2, [r0]
	subs r1, #3
	movs r0, #2
	strb r0, [r1]
	adds r1, #1
_0806405C:
	movs r0, #0x11
_0806405E:
	strb r0, [r1]
	add r0, sp, #4
	bl sub_80528AC
	b _080640B2
	.align 2, 0
_08064068: .4byte gDispCnt
_0806406C: .4byte gUnknown_086AFFB4
_08064070: .4byte gUnknown_086B13F4
_08064074:
	movs r0, #0x9b
	lsls r0, r0, #1
	cmp r3, r0
	bne _080640B2
	add r1, sp, #0x30
	movs r2, #0
	movs r0, #0x80
	strb r0, [r1]
	subs r1, #1
	movs r0, #1
	strb r0, [r1]
	ldr r0, _080640C0 @ =gUnknown_086ACB34
	str r0, [sp, #0x18]
	movs r0, #0xa1
	lsls r0, r0, #6
	str r0, [sp, #0x1c]
	ldr r0, _080640C4 @ =gUnknown_086AF4F4
	str r0, [sp, #0x14]
	movs r0, #0x8c
	lsls r0, r0, #4
	str r0, [sp, #0x20]
	add r0, sp, #0x2c
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	subs r1, #1
	movs r0, #0x11
	strb r0, [r1]
	add r0, sp, #4
	bl sub_80528AC
_080640B2:
	add sp, #0x34
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080640C0: .4byte gUnknown_086ACB34
_080640C4: .4byte gUnknown_086AF4F4

	thumb_func_start sub_80640C8
sub_80640C8: @ 0x080640C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08064104 @ =gCurTask
	ldr r4, [r0]
	ldrh r3, [r4, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r3, r1
	str r0, [sp]
	ldr r0, [r0, #0xc]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	adds r1, #0x4c
	adds r2, r3, r1
	ldrh r1, [r2]
	strh r1, [r0, #0x30]
	ldr r0, _08064108 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _08064110
	ldr r0, _0806410C @ =sub_8064FF8
	str r0, [r4, #8]
	b _08064232
	.align 2, 0
_08064104: .4byte gCurTask
_08064108: .4byte gPressedKeys
_0806410C: .4byte sub_8064FF8
_08064110:
	movs r1, #0
	ldrsh r0, [r2, r1]
	mov sb, r2
	cmp r0, #0x97
	ble _080641AC
	subs r0, #0x98
	lsls r0, r0, #0xf
	lsrs r7, r0, #0x10
	cmp r7, #0x28
	bls _08064126
	movs r7, #0x28
_08064126:
	movs r2, #0
	mov sl, r2
	ldr r0, _08064204 @ =0x0300004C
	adds r0, r0, r3
	mov sb, r0
_08064130:
	ldr r0, _08064208 @ =gUnknown_086A5D34
	mov r1, sl
	lsls r1, r1, #1
	mov r8, r1
	add r0, r8
	ldrh r6, [r0]
	movs r1, #0x1f
	ands r1, r6
	movs r2, #0xf8
	lsls r2, r2, #2
	adds r0, r2, #0
	adds r4, r6, #0
	ands r4, r0
	lsrs r4, r4, #5
	movs r3, #0xf8
	lsls r3, r3, #7
	adds r0, r3, #0
	ands r6, r0
	lsrs r6, r6, #0xa
	adds r0, r1, #0
	muls r0, r7, r0
	movs r1, #0x28
	bl Div
	adds r5, r0, #0
	movs r0, #0x1f
	ands r5, r0
	adds r0, r4, #0
	muls r0, r7, r0
	movs r1, #0x28
	bl Div
	adds r4, r0, #0
	movs r1, #0x1f
	ands r4, r1
	adds r0, r6, #0
	muls r0, r7, r0
	movs r1, #0x28
	bl Div
	movs r2, #0x1f
	ands r0, r2
	ldr r1, _0806420C @ =gBgPalette
	add r8, r1
	lsls r4, r4, #5
	orrs r5, r4
	lsls r0, r0, #0xa
	orrs r5, r0
	mov r3, r8
	strh r5, [r3]
	ldr r2, _08064210 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #0x1f
	bls _08064130
_080641AC:
	mov r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r2, _08064214 @ =gBgScrollRegs
	cmp r0, #0xb5
	ble _080641DA
	ldrh r0, [r2, #2]
	adds r0, #2
	strh r0, [r2, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x64
	ble _080641CA
	movs r0, #0x64
	strh r0, [r2, #2]
_080641CA:
	ldrh r1, [r2, #2]
	movs r3, #2
	ldrsh r0, [r2, r3]
	cmp r0, #0x50
	ble _080641DA
	adds r0, r1, #0
	subs r0, #0x50
	strh r0, [r2, #0xa]
_080641DA:
	ldrh r0, [r2, #6]
	adds r0, #0xa
	strh r0, [r2, #6]
	mov r1, sb
	ldrh r0, [r1]
	bl sub_8063E8C
	mov r2, sb
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r0, _08064218 @ =0x0000013F
	cmp r1, r0
	ble _08064224
	movs r0, #0
	strh r0, [r2]
	ldr r0, _0806421C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08064220 @ =sub_8064244
	str r0, [r1, #8]
	b _0806422A
	.align 2, 0
_08064204: .4byte 0x0300004C
_08064208: .4byte gUnknown_086A5D34
_0806420C: .4byte gBgPalette
_08064210: .4byte gFlags
_08064214: .4byte gBgScrollRegs
_08064218: .4byte 0x0000013F
_0806421C: .4byte gCurTask
_08064220: .4byte sub_8064244
_08064224:
	ldr r0, [sp]
	bl sub_805423C
_0806422A:
	mov r1, sb
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_08064232:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8064244
sub_8064244: @ 0x08064244
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08064280 @ =gCurTask
	ldr r1, [r0]
	ldrh r0, [r1, #6]
	mov sb, r0
	movs r2, #0xc0
	lsls r2, r2, #0x12
	mov sl, r2
	mov r6, sb
	add r6, sl
	ldr r3, _08064284 @ =0x0300004C
	add r3, sb
	mov r8, r3
	movs r7, #0
	ldrsh r4, [r3, r7]
	ldr r0, _08064288 @ =gPressedKeys
	ldrh r0, [r0]
	movs r5, #0xb
	ands r5, r0
	cmp r5, #0
	beq _08064290
	ldr r0, _0806428C @ =sub_8064FF8
	str r0, [r1, #8]
	b _080645D2
	.align 2, 0
_08064280: .4byte gCurTask
_08064284: .4byte 0x0300004C
_08064288: .4byte gPressedKeys
_0806428C: .4byte sub_8064FF8
_08064290:
	cmp r4, #0x5f
	bhi _080642A6
	movs r0, #0xd0
	lsls r0, r0, #7
	lsrs r1, r4, #2
	ldr r2, _08064360 @ =0x00006802
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl TasksDestroyInPriorityRange
_080642A6:
	cmp r4, #0x3c
	bne _080642C2
	strh r5, [r6]
	movs r1, #1
	movs r0, #1
	strh r0, [r6, #2]
	strh r0, [r6, #4]
	strh r5, [r6, #6]
	movs r0, #0x40
	strh r0, [r6, #8]
	strb r1, [r6, #0xa]
	adds r0, r6, #0
	bl sub_80543A4
_080642C2:
	ldr r7, _08064364 @ =gBgScrollRegs
	ldrh r0, [r7, #6]
	adds r0, #0xa
	strh r0, [r7, #6]
	mov r3, r8
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, _08064368 @ =0x000001F9
	cmp r1, r0
	bgt _080642DE
	b _080644C0
_080642DE:
	ldr r0, [r6, #0xc]
	bl TaskDestroy
	str r5, [r6, #0xc]
	strh r5, [r7, #4]
	strh r5, [r7, #6]
	ldr r1, _0806436C @ =0x03000050
	add r1, sb
	movs r0, #0x80
	lsls r0, r0, #7
	strh r0, [r1]
	ldr r0, _08064370 @ =0x03000052
	add r0, sb
	strh r5, [r0]
	mov r7, r8
	strh r5, [r7]
	ldr r0, [r6, #0x10]
	bl TaskDestroy
	str r5, [r6, #0x10]
	ldr r0, [r6, #0x14]
	bl TaskDestroy
	str r5, [r6, #0x14]
	ldr r1, _08064374 @ =gDispCnt
	ldr r0, _08064378 @ =gBldRegs
	strh r5, [r0]
	strh r5, [r0, #4]
	movs r2, #0x9a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0806437C @ =gBgCntRegs
	ldr r0, _08064380 @ =0x00001D86
	strh r0, [r1]
	ldr r0, _08064384 @ =0x00001883
	strh r0, [r1, #2]
	ldr r0, _08064388 @ =sub_8065258
	ldr r2, _0806438C @ =0x00002210
	str r5, [sp]
	movs r1, #0xc8
	movs r3, #0
	bl TaskCreate
	str r0, [r6, #0x18]
	ldrh r0, [r0, #6]
	mov r3, sl
	adds r7, r0, r3
	ldr r1, _08064390 @ =0x030000B4
	adds r0, r0, r1
	strh r5, [r0]
	movs r4, #0
	movs r6, #0
	movs r5, #0
	ldr r2, _08064394 @ =0x00000301
	mov r8, r2
_0806434E:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r3, r7, r0
	cmp r4, #0
	beq _0806439C
	ldr r0, _08064398 @ =0x06014000
	b _0806439E
	.align 2, 0
_08064360: .4byte 0x00006802
_08064364: .4byte gBgScrollRegs
_08064368: .4byte 0x000001F9
_0806436C: .4byte 0x03000050
_08064370: .4byte 0x03000052
_08064374: .4byte gDispCnt
_08064378: .4byte gBldRegs
_0806437C: .4byte gBgCntRegs
_08064380: .4byte 0x00001D86
_08064384: .4byte 0x00001883
_08064388: .4byte sub_8065258
_0806438C: .4byte 0x00002210
_08064390: .4byte 0x030000B4
_08064394: .4byte 0x00000301
_08064398: .4byte 0x06014000
_0806439C:
	ldr r0, _08064494 @ =0x06011440
_0806439E:
	str r0, [r3, #4]
	mov r0, r8
	strh r0, [r3, #0xa]
	adds r0, r3, #0
	adds r0, #0x20
	strb r6, [r0]
	movs r0, #0xb4
	strh r0, [r3, #0x16]
	movs r0, #0x82
	strh r0, [r3, #0x18]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r3, #0x1a]
	strh r5, [r3, #8]
	strh r5, [r3, #0x14]
	strh r5, [r3, #0x1c]
	adds r1, r3, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x25
	strb r6, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x28]
	movs r0, #0x80
	str r0, [r3, #0x10]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0806434E
	movs r4, #0
	movs r5, #0
	movs r1, #0x8c
	lsls r1, r1, #1
	mov sb, r1
	ldr r6, _08064498 @ =gUnknown_0868B28C
	adds r2, r6, #4
	mov r8, r2
_080643FC:
	str r5, [sp]
	ldr r0, _0806449C @ =sub_806562C
	movs r1, #0x44
	ldr r2, _080644A0 @ =0x00006820
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r7, #0xc0
	lsls r7, r7, #0x12
	adds r3, r2, r7
	strh r5, [r3, #0x30]
	ldr r1, _080644A4 @ =0x03000032
	adds r0, r2, r1
	strb r5, [r0]
	str r4, [r3, #0x34]
	ldr r0, _080644A8 @ =gUnknown_0868B27C
	movs r7, #0
	ldrsh r0, [r0, r7]
	add r0, sb
	str r0, [r3, #0x3c]
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r0, r6, #0
	adds r0, #8
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [r3, #4]
	adds r0, r1, r6
	ldr r0, [r0]
	strh r0, [r3, #0xa]
	add r1, r8
	ldr r1, [r1]
	ldr r7, _080644AC @ =0x03000020
	adds r0, r2, r7
	strb r1, [r0]
	mov r0, sb
	strh r0, [r3, #0x16]
	movs r0, #0x46
	strh r0, [r3, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r3, #0x1a]
	strh r5, [r3, #8]
	strh r5, [r3, #0x14]
	strh r5, [r3, #0x1c]
	adds r7, #1
	adds r1, r2, r7
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _080644B0 @ =0x03000022
	adds r1, r2, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _080644B4 @ =0x03000025
	adds r2, r2, r1
	strb r5, [r2]
	subs r0, #0x11
	str r0, [r3, #0x28]
	movs r0, #0x80
	str r0, [r3, #0x10]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #5
	bls _080643FC
	ldr r0, _080644B8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080644BC @ =sub_80645E4
	str r0, [r1, #8]
	b _080645D2
	.align 2, 0
_08064494: .4byte 0x06011440
_08064498: .4byte gUnknown_0868B28C
_0806449C: .4byte sub_806562C
_080644A0: .4byte 0x00006820
_080644A4: .4byte 0x03000032
_080644A8: .4byte gUnknown_0868B27C
_080644AC: .4byte 0x03000020
_080644B0: .4byte 0x03000022
_080644B4: .4byte 0x03000025
_080644B8: .4byte gCurTask
_080644BC: .4byte sub_80645E4
_080644C0:
	cmp r1, #0xe0
	bgt _080644C6
	b _080645C4
_080644C6:
	cmp r1, #0xe1
	bne _0806454C
	bl CreateSpotlightBeamTask
	str r0, [r6, #0x10]
	ldrh r0, [r0, #6]
	mov r2, sl
	adds r7, r0, r2
	movs r3, #0x78
	mov sb, r3
	mov r0, sb
	strh r0, [r7, #6]
	movs r1, #0xfa
	mov r8, r1
	mov r2, r8
	strh r2, [r7, #8]
	strh r5, [r7]
	strh r5, [r7, #2]
	strh r5, [r7, #4]
	movs r0, #2
	strb r0, [r7, #0xa]
	movs r4, #6
	strb r4, [r7, #0xb]
	bl CreateSpotlightBeamTask
	str r0, [r6, #0x14]
	ldrh r0, [r0, #6]
	mov r3, sl
	adds r7, r0, r3
	mov r0, sb
	strh r0, [r7, #6]
	mov r1, r8
	strh r1, [r7, #8]
	strh r5, [r7]
	strh r5, [r7, #2]
	strh r5, [r7, #4]
	movs r0, #3
	strb r0, [r7, #0xa]
	strb r4, [r7, #0xb]
	ldr r2, _08064538 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0xc0
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0806453C @ =gWinRegs
	ldr r0, _08064540 @ =0x00001F1F
	strh r0, [r1, #8]
	movs r0, #0x3f
	strh r0, [r1, #0xa]
	ldr r1, _08064544 @ =gBldRegs
	ldr r0, _08064548 @ =0x00003FDF
	strh r0, [r1]
	movs r0, #8
	strh r0, [r1, #4]
	b _080645D2
	.align 2, 0
_08064538: .4byte gDispCnt
_0806453C: .4byte gWinRegs
_08064540: .4byte 0x00001F1F
_08064544: .4byte gBldRegs
_08064548: .4byte 0x00003FDF
_0806454C:
	mov r7, r8
	movs r1, #0
	ldrsh r0, [r7, r1]
	adds r4, r0, #0
	subs r4, #0xe1
	ldr r0, [r6, #0x10]
	ldrh r0, [r0, #6]
	mov r2, sl
	adds r7, r0, r2
	adds r0, r4, #0
	movs r1, #0x19
	bl Mod
	movs r1, #0x18
	subs r1, r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	strh r0, [r7]
	cmp r4, #0x3f
	bhi _08064588
	adds r0, r4, #0
	movs r1, #6
	bl Mod
	cmp r0, #0
	bne _08064588
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
_08064588:
	ldr r0, [r6, #0x14]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r0, r4, #0
	movs r1, #0x19
	bl Mod
	movs r1, #0x18
	subs r1, r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	movs r3, #0xdc
	lsls r3, r3, #2
	adds r0, r0, r3
	strh r0, [r7]
	cmp r4, #0x3f
	bhi _080645D2
	adds r0, r4, #0
	movs r1, #6
	bl Mod
	cmp r0, #0
	bne _080645D2
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	b _080645D2
_080645C4:
	adds r0, r4, #0
	subs r0, #0x1e
	cmp r0, #0x59
	bhi _080645D2
	adds r0, r6, #0
	bl sub_805423C
_080645D2:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80645E4
sub_80645E4: @ 0x080645E4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _08064640 @ =gCurTask
	ldr r7, [r0]
	ldrh r1, [r7, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x18]
	ldrh r0, [r0, #6]
	ldr r2, _08064644 @ =0x0300004C
	adds r6, r1, r2
	ldrh r2, [r6]
	ldr r3, _08064648 @ =0x030000B4
	adds r0, r0, r3
	strh r2, [r0]
	ldr r0, _0806464C @ =0x03000050
	adds r2, r1, r0
	ldrh r0, [r2]
	subs r0, #0x20
	strh r0, [r2]
	subs r3, #0x62
	adds r1, r1, r3
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	ldr r3, _08064650 @ =gBgScrollRegs
	ldrh r0, [r2]
	lsrs r0, r0, #8
	strh r0, [r3]
	ldrh r0, [r1]
	lsrs r0, r0, #8
	strh r0, [r3, #2]
	ldr r0, _08064654 @ =gPressedKeys
	ldrh r0, [r0]
	movs r5, #0xb
	ands r5, r0
	cmp r5, #0
	beq _0806465C
	ldr r0, _08064658 @ =sub_8064FF8
	str r0, [r7, #8]
	b _080648C4
	.align 2, 0
_08064640: .4byte gCurTask
_08064644: .4byte 0x0300004C
_08064648: .4byte 0x030000B4
_0806464C: .4byte 0x03000050
_08064650: .4byte gBgScrollRegs
_08064654: .4byte gPressedKeys
_08064658: .4byte sub_8064FF8
_0806465C:
	movs r0, #0
	ldrsh r1, [r6, r0]
	cmp r1, #0x1d
	bhi _08064680
	cmp r1, #1
	bne _0806466C
	bl sub_8063B8C
_0806466C:
	strh r5, [r4]
	movs r0, #1
	movs r1, #1
	strh r1, [r4, #2]
	movs r1, #2
	strh r1, [r4, #4]
	strh r5, [r4, #6]
	strh r5, [r4, #8]
	strb r0, [r4, #0xa]
	b _08064698
_08064680:
	cmp r1, #0x29
	bhi _080646A0
	strh r5, [r4]
	movs r1, #1
	movs r0, #1
	strh r0, [r4, #2]
	movs r0, #8
	strh r0, [r4, #4]
	strh r5, [r4, #6]
	adds r0, #0xf8
	strh r0, [r4, #8]
	strb r1, [r4, #0xa]
_08064698:
	adds r0, r4, #0
	bl sub_80543A4
	b _080646BC
_080646A0:
	cmp r1, #0x65
	bls _080646A8
	cmp r1, #0xf1
	bhi _080646B0
_080646A8:
	adds r0, r4, #0
	bl sub_805423C
	b _080646BC
_080646B0:
	ldr r0, _08064748 @ =0x00000169
	cmp r1, r0
	bhi _080646BC
	adds r0, r4, #0
	bl sub_805423C
_080646BC:
	adds r5, r4, #0
	adds r5, #0x4c
	ldrh r0, [r5]
	adds r0, #1
	movs r6, #0
	strh r0, [r5]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, _0806474C @ =0x0000019D
	cmp r1, r0
	bgt _080646D4
	b _080648A4
_080646D4:
	ldr r0, _08064750 @ =0x00006820
	ldr r1, _08064754 @ =0x00006821
	bl TasksDestroyInPriorityRange
	ldr r0, [r4, #0x18]
	bl TaskDestroy
	str r6, [r4, #0x18]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xe0
	lsls r0, r0, #8
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xc0
	lsls r0, r0, #7
	strh r0, [r1]
	strh r6, [r5]
	strh r6, [r4]
	movs r1, #1
	movs r0, #1
	strh r0, [r4, #2]
	movs r0, #2
	strh r0, [r4, #4]
	strh r6, [r4, #6]
	strh r6, [r4, #8]
	strb r1, [r4, #0xa]
	adds r0, r4, #0
	bl sub_80543A4
	ldr r0, _08064758 @ =sub_8065328
	movs r2, #0x8a
	lsls r2, r2, #6
	str r6, [sp]
	movs r1, #0xc8
	movs r3, #0
	bl TaskCreate
	str r0, [r4, #0x1c]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r0, r1
	adds r1, #0xb4
	adds r0, r0, r1
	strh r6, [r0]
	movs r5, #0
	movs r2, #0
	mov r8, r2
_08064736:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #4
	adds r4, r7, r0
	cmp r5, #2
	bne _08064760
	ldr r0, _0806475C @ =0x06013280
	b _0806476E
	.align 2, 0
_08064748: .4byte 0x00000169
_0806474C: .4byte 0x0000019D
_08064750: .4byte 0x00006820
_08064754: .4byte 0x00006821
_08064758: .4byte sub_8065328
_0806475C: .4byte 0x06013280
_08064760:
	cmp r5, #1
	bne _0806476C
	ldr r0, _08064768 @ =0x06011980
	b _0806476E
	.align 2, 0
_08064768: .4byte 0x06011980
_0806476C:
	ldr r0, _08064874 @ =0x06010400
_0806476E:
	str r0, [r4, #4]
	ldr r0, _08064878 @ =0x00000301
	strh r0, [r4, #0xa]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x30
	strh r0, [r4, #0x16]
	movs r0, #0x6c
	strh r0, [r4, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x1a]
	strh r6, [r4, #8]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x25
	mov r3, r8
	strb r3, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	movs r0, #0x80
	str r0, [r4, #0x10]
	cmp r5, #0
	bne _080647BE
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080647BE:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08064736
	movs r5, #0
	movs r6, #0
	movs r0, #0x8c
	lsls r0, r0, #1
	mov r8, r0
	ldr r7, _0806487C @ =gUnknown_0868B2D4
	adds r1, r7, #4
	mov sb, r1
_080647D8:
	str r6, [sp]
	ldr r0, _08064880 @ =sub_80656A4
	movs r1, #0x44
	ldr r2, _08064884 @ =0x00006820
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r4, r2, r3
	strh r6, [r4, #0x30]
	ldr r1, _08064888 @ =0x03000032
	adds r0, r2, r1
	strb r6, [r0]
	str r5, [r4, #0x34]
	ldr r0, _0806488C @ =gUnknown_0868B280
	movs r3, #0
	ldrsh r0, [r0, r3]
	add r0, r8
	str r0, [r4, #0x3c]
	lsls r1, r5, #1
	adds r1, r1, r5
	lsls r1, r1, #2
	adds r0, r7, #0
	adds r0, #8
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [r4, #4]
	adds r0, r1, r7
	ldr r0, [r0]
	strh r0, [r4, #0xa]
	add r1, sb
	ldr r1, [r1]
	ldr r3, _08064890 @ =0x03000020
	adds r0, r2, r3
	strb r1, [r0]
	mov r0, r8
	strh r0, [r4, #0x16]
	movs r0, #0x46
	strh r0, [r4, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x1a]
	strh r6, [r4, #8]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	adds r3, #1
	adds r1, r2, r3
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08064894 @ =0x03000022
	adds r1, r2, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08064898 @ =0x03000025
	adds r2, r2, r1
	strb r6, [r2]
	subs r0, #0x11
	str r0, [r4, #0x28]
	movs r0, #0x80
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #5
	bls _080647D8
	ldr r0, _0806489C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080648A0 @ =sub_80648D4
	str r0, [r1, #8]
	b _080648C4
	.align 2, 0
_08064874: .4byte 0x06010400
_08064878: .4byte 0x00000301
_0806487C: .4byte gUnknown_0868B2D4
_08064880: .4byte sub_80656A4
_08064884: .4byte 0x00006820
_08064888: .4byte 0x03000032
_0806488C: .4byte gUnknown_0868B280
_08064890: .4byte 0x03000020
_08064894: .4byte 0x03000022
_08064898: .4byte 0x03000025
_0806489C: .4byte gCurTask
_080648A0: .4byte sub_80648D4
_080648A4:
	movs r0, #0xb0
	lsls r0, r0, #1
	cmp r1, r0
	ble _080648C4
	adds r0, #1
	cmp r1, r0
	bne _080648BE
	movs r0, #4
	strh r0, [r4, #4]
	strh r6, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #8]
_080648BE:
	adds r0, r4, #0
	bl sub_805423C
_080648C4:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80648D4
sub_80648D4: @ 0x080648D4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _08064930 @ =gCurTask
	ldr r6, [r0]
	ldrh r1, [r6, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x1c]
	ldrh r0, [r0, #6]
	ldr r2, _08064934 @ =0x0300004C
	adds r5, r1, r2
	ldrh r2, [r5]
	ldr r3, _08064938 @ =0x030000B4
	adds r0, r0, r3
	strh r2, [r0]
	ldr r0, _0806493C @ =0x03000050
	adds r2, r1, r0
	ldrh r0, [r2]
	adds r0, #0x20
	strh r0, [r2]
	subs r3, #0x62
	adds r1, r1, r3
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	ldr r3, _08064940 @ =gBgScrollRegs
	ldrh r0, [r2]
	lsrs r0, r0, #8
	strh r0, [r3]
	ldrh r0, [r1]
	lsrs r0, r0, #8
	strh r0, [r3, #2]
	ldr r0, _08064944 @ =gPressedKeys
	ldrh r0, [r0]
	movs r2, #0xb
	ands r2, r0
	cmp r2, #0
	beq _0806494C
	ldr r0, _08064948 @ =sub_8064FF8
	str r0, [r6, #8]
	b _08064BA4
	.align 2, 0
_08064930: .4byte gCurTask
_08064934: .4byte 0x0300004C
_08064938: .4byte 0x030000B4
_0806493C: .4byte 0x03000050
_08064940: .4byte gBgScrollRegs
_08064944: .4byte gPressedKeys
_08064948: .4byte sub_8064FF8
_0806494C:
	movs r0, #0
	ldrsh r1, [r5, r0]
	cmp r1, #0x1d
	bhi _0806495E
	cmp r1, #1
	bne _08064976
	bl sub_8063C4C
	b _08064976
_0806495E:
	cmp r1, #0x29
	bhi _0806497E
	strh r2, [r4]
	movs r1, #1
	movs r0, #1
	strh r0, [r4, #2]
	movs r0, #8
	strh r0, [r4, #4]
	strh r2, [r4, #6]
	adds r0, #0xf8
	strh r0, [r4, #8]
	strb r1, [r4, #0xa]
_08064976:
	adds r0, r4, #0
	bl sub_80543A4
	b _0806499A
_0806497E:
	cmp r1, #0x65
	bls _08064986
	cmp r1, #0xf1
	bhi _0806498E
_08064986:
	adds r0, r4, #0
	bl sub_805423C
	b _0806499A
_0806498E:
	ldr r0, _08064A24 @ =0x00000169
	cmp r1, r0
	bhi _0806499A
	adds r0, r4, #0
	bl sub_805423C
_0806499A:
	adds r5, r4, #0
	adds r5, #0x4c
	ldrh r0, [r5]
	adds r0, #1
	movs r6, #0
	strh r0, [r5]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, _08064A28 @ =0x0000019D
	cmp r1, r0
	bgt _080649B2
	b _08064B84
_080649B2:
	ldr r0, _08064A2C @ =0x00006820
	ldr r1, _08064A30 @ =0x00006821
	bl TasksDestroyInPriorityRange
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xe0
	lsls r0, r0, #8
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1]
	ldr r0, [r4, #0x1c]
	bl TaskDestroy
	str r6, [r4, #0x1c]
	strh r6, [r5]
	strh r6, [r4]
	movs r1, #1
	movs r0, #1
	strh r0, [r4, #2]
	movs r0, #2
	strh r0, [r4, #4]
	strh r6, [r4, #6]
	strh r6, [r4, #8]
	strb r1, [r4, #0xa]
	adds r0, r4, #0
	bl sub_80543A4
	ldr r0, _08064A34 @ =sub_8065444
	ldr r2, _08064A38 @ =0x00002230
	str r6, [sp]
	movs r1, #0xc8
	movs r3, #0
	bl TaskCreate
	str r0, [r4, #0x20]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r0, r1
	adds r1, #0xb4
	adds r0, r0, r1
	strh r6, [r0]
	movs r5, #0
	movs r2, #0
	mov r8, r2
_08064A12:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #4
	adds r4, r7, r0
	cmp r5, #2
	bne _08064A40
	ldr r0, _08064A3C @ =0x06013280
	b _08064A4E
	.align 2, 0
_08064A24: .4byte 0x00000169
_08064A28: .4byte 0x0000019D
_08064A2C: .4byte 0x00006820
_08064A30: .4byte 0x00006821
_08064A34: .4byte sub_8065444
_08064A38: .4byte 0x00002230
_08064A3C: .4byte 0x06013280
_08064A40:
	cmp r5, #1
	bne _08064A4C
	ldr r0, _08064A48 @ =0x06011980
	b _08064A4E
	.align 2, 0
_08064A48: .4byte 0x06011980
_08064A4C:
	ldr r0, _08064B50 @ =0x06010080
_08064A4E:
	str r0, [r4, #4]
	ldr r0, _08064B54 @ =0x00000301
	strh r0, [r4, #0xa]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	movs r0, #0x30
	strh r0, [r4, #0x16]
	movs r0, #0x82
	strh r0, [r4, #0x18]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x1a]
	strh r6, [r4, #8]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x25
	mov r3, r8
	strb r3, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	movs r0, #0x80
	str r0, [r4, #0x10]
	cmp r5, #0
	bne _08064A9E
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08064A9E:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08064A12
	movs r5, #0
	movs r6, #0
	movs r0, #0x8c
	lsls r0, r0, #1
	mov r8, r0
	ldr r7, _08064B58 @ =gUnknown_0868B31C
	adds r1, r7, #4
	mov sb, r1
_08064AB8:
	str r6, [sp]
	ldr r0, _08064B5C @ =sub_806571C
	movs r1, #0x44
	ldr r2, _08064B60 @ =0x00006820
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r4, r2, r3
	strh r6, [r4, #0x30]
	ldr r1, _08064B64 @ =0x03000032
	adds r0, r2, r1
	strb r6, [r0]
	str r5, [r4, #0x34]
	ldr r0, _08064B68 @ =gUnknown_0868B284
	movs r3, #0
	ldrsh r0, [r0, r3]
	add r0, r8
	str r0, [r4, #0x3c]
	lsls r1, r5, #1
	adds r1, r1, r5
	lsls r1, r1, #2
	adds r0, r7, #0
	adds r0, #8
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [r4, #4]
	adds r0, r1, r7
	ldr r0, [r0]
	strh r0, [r4, #0xa]
	add r1, sb
	ldr r1, [r1]
	ldr r3, _08064B6C @ =0x03000020
	adds r0, r2, r3
	strb r1, [r0]
	mov r0, r8
	strh r0, [r4, #0x16]
	movs r0, #0x46
	strh r0, [r4, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x1a]
	strh r6, [r4, #8]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	adds r3, #1
	adds r1, r2, r3
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08064B70 @ =0x03000022
	adds r1, r2, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08064B74 @ =0x03000025
	adds r2, r2, r1
	strb r6, [r2]
	subs r0, #0x11
	str r0, [r4, #0x28]
	ldr r0, _08064B78 @ =0x00040080
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #8
	bls _08064AB8
	ldr r0, _08064B7C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08064B80 @ =sub_8064BB4
	str r0, [r1, #8]
	b _08064BA4
	.align 2, 0
_08064B50: .4byte 0x06010080
_08064B54: .4byte 0x00000301
_08064B58: .4byte gUnknown_0868B31C
_08064B5C: .4byte sub_806571C
_08064B60: .4byte 0x00006820
_08064B64: .4byte 0x03000032
_08064B68: .4byte gUnknown_0868B284
_08064B6C: .4byte 0x03000020
_08064B70: .4byte 0x03000022
_08064B74: .4byte 0x03000025
_08064B78: .4byte 0x00040080
_08064B7C: .4byte gCurTask
_08064B80: .4byte sub_8064BB4
_08064B84:
	movs r0, #0xb0
	lsls r0, r0, #1
	cmp r1, r0
	ble _08064BA4
	adds r0, #1
	cmp r1, r0
	bne _08064B9E
	movs r0, #4
	strh r0, [r4, #4]
	strh r6, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #8]
_08064B9E:
	adds r0, r4, #0
	bl sub_805423C
_08064BA4:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8064BB4
sub_8064BB4: @ 0x08064BB4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _08064C08 @ =gCurTask
	ldr r6, [r0]
	ldrh r1, [r6, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x20]
	ldrh r0, [r0, #6]
	ldr r2, _08064C0C @ =0x0300004C
	adds r5, r1, r2
	ldrh r2, [r5]
	ldr r3, _08064C10 @ =0x030000B4
	adds r0, r0, r3
	strh r2, [r0]
	ldr r0, _08064C14 @ =0x03000050
	adds r2, r1, r0
	subs r3, #0x62
	adds r1, r1, r3
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	ldr r3, _08064C18 @ =gBgScrollRegs
	ldrh r0, [r2]
	lsrs r0, r0, #8
	strh r0, [r3]
	ldrh r0, [r1]
	lsrs r0, r0, #8
	strh r0, [r3, #2]
	ldr r0, _08064C1C @ =gPressedKeys
	ldrh r0, [r0]
	movs r2, #0xb
	ands r2, r0
	cmp r2, #0
	beq _08064C24
	ldr r0, _08064C20 @ =sub_8064FF8
	str r0, [r6, #8]
	b _08064E74
	.align 2, 0
_08064C08: .4byte gCurTask
_08064C0C: .4byte 0x0300004C
_08064C10: .4byte 0x030000B4
_08064C14: .4byte 0x03000050
_08064C18: .4byte gBgScrollRegs
_08064C1C: .4byte gPressedKeys
_08064C20: .4byte sub_8064FF8
_08064C24:
	movs r0, #0
	ldrsh r1, [r5, r0]
	cmp r1, #0x1d
	bhi _08064C36
	cmp r1, #1
	bne _08064C4E
	bl sub_8063D0C
	b _08064C4E
_08064C36:
	cmp r1, #0x29
	bhi _08064C56
	strh r2, [r4]
	movs r1, #1
	movs r0, #1
	strh r0, [r4, #2]
	movs r0, #8
	strh r0, [r4, #4]
	strh r2, [r4, #6]
	adds r0, #0xf8
	strh r0, [r4, #8]
	strb r1, [r4, #0xa]
_08064C4E:
	adds r0, r4, #0
	bl sub_80543A4
	b _08064C72
_08064C56:
	cmp r1, #0x65
	bls _08064C5E
	cmp r1, #0xf1
	bhi _08064C66
_08064C5E:
	adds r0, r4, #0
	bl sub_805423C
	b _08064C72
_08064C66:
	ldr r0, _08064D00 @ =0x00000169
	cmp r1, r0
	bhi _08064C72
	adds r0, r4, #0
	bl sub_805423C
_08064C72:
	adds r5, r4, #0
	adds r5, #0x4c
	ldrh r0, [r5]
	adds r0, #1
	movs r6, #0
	strh r0, [r5]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, _08064D04 @ =0x0000019D
	cmp r1, r0
	bgt _08064C8A
	b _08064E54
_08064C8A:
	ldr r0, _08064D08 @ =0x00006820
	ldr r1, _08064D0C @ =0x00006821
	bl TasksDestroyInPriorityRange
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	lsls r0, r0, #6
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xa0
	lsls r0, r0, #7
	strh r0, [r1]
	ldr r0, [r4, #0x20]
	bl TaskDestroy
	str r6, [r4, #0x20]
	strh r6, [r5]
	strh r6, [r4]
	movs r1, #1
	movs r0, #1
	strh r0, [r4, #2]
	movs r0, #2
	strh r0, [r4, #4]
	strh r6, [r4, #6]
	strh r6, [r4, #8]
	strb r1, [r4, #0xa]
	adds r0, r4, #0
	bl sub_80543A4
	ldr r0, _08064D10 @ =sub_8065538
	ldr r2, _08064D14 @ =0x00002230
	str r6, [sp]
	movs r1, #0xc8
	movs r3, #0
	bl TaskCreate
	str r0, [r4, #0x24]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r0, r1
	adds r1, #0xb4
	adds r0, r0, r1
	strh r6, [r0]
	movs r5, #0
	movs r2, #0
	mov sb, r2
	ldr r3, _08064D18 @ =0x00000301
	mov r8, r3
_08064CEE:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #4
	adds r4, r7, r0
	cmp r5, #0
	beq _08064D20
	ldr r0, _08064D1C @ =0x06016400
	b _08064D22
	.align 2, 0
_08064D00: .4byte 0x00000169
_08064D04: .4byte 0x0000019D
_08064D08: .4byte 0x00006820
_08064D0C: .4byte 0x00006821
_08064D10: .4byte sub_8065538
_08064D14: .4byte 0x00002230
_08064D18: .4byte 0x00000301
_08064D1C: .4byte 0x06016400
_08064D20:
	ldr r0, _08064E24 @ =0x06011440
_08064D22:
	str r0, [r4, #4]
	mov r0, r8
	strh r0, [r4, #0xa]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #3
	strb r0, [r1]
	movs r0, #0xb4
	strh r0, [r4, #0x16]
	movs r0, #0x6c
	strh r0, [r4, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x1a]
	strh r6, [r4, #8]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x25
	mov r1, sb
	strb r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	movs r0, #0x80
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	cmp r5, #0
	bne _08064D72
	adds r0, r4, #0
	bl DisplaySprite
_08064D72:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08064CEE
	movs r5, #0
	movs r6, #0
	movs r2, #0x8c
	lsls r2, r2, #1
	mov r8, r2
	ldr r7, _08064E28 @ =gUnknown_0868B388
	adds r3, r7, #4
	mov sb, r3
_08064D8C:
	str r6, [sp]
	ldr r0, _08064E2C @ =sub_8065794
	movs r1, #0x44
	ldr r2, _08064E30 @ =0x00006820
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	strh r6, [r4, #0x30]
	ldr r1, _08064E34 @ =0x03000032
	adds r0, r2, r1
	strb r6, [r0]
	str r5, [r4, #0x34]
	ldr r0, _08064E38 @ =gUnknown_0868B288
	movs r3, #0
	ldrsh r0, [r0, r3]
	add r0, r8
	str r0, [r4, #0x3c]
	lsls r1, r5, #1
	adds r1, r1, r5
	lsls r1, r1, #2
	adds r0, r7, #0
	adds r0, #8
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [r4, #4]
	adds r0, r1, r7
	ldr r0, [r0]
	strh r0, [r4, #0xa]
	add r1, sb
	ldr r1, [r1]
	ldr r3, _08064E3C @ =0x03000020
	adds r0, r2, r3
	strb r1, [r0]
	mov r0, r8
	strh r0, [r4, #0x16]
	movs r0, #0x46
	strh r0, [r4, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x1a]
	strh r6, [r4, #8]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	adds r3, #1
	adds r1, r2, r3
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08064E40 @ =0x03000022
	adds r1, r2, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08064E44 @ =0x03000025
	adds r2, r2, r1
	strb r6, [r2]
	subs r0, #0x11
	str r0, [r4, #0x28]
	ldr r0, _08064E48 @ =0x00040080
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08064D8C
	ldr r0, _08064E4C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08064E50 @ =sub_8064E84
	str r0, [r1, #8]
	b _08064E74
	.align 2, 0
_08064E24: .4byte 0x06011440
_08064E28: .4byte gUnknown_0868B388
_08064E2C: .4byte sub_8065794
_08064E30: .4byte 0x00006820
_08064E34: .4byte 0x03000032
_08064E38: .4byte gUnknown_0868B288
_08064E3C: .4byte 0x03000020
_08064E40: .4byte 0x03000022
_08064E44: .4byte 0x03000025
_08064E48: .4byte 0x00040080
_08064E4C: .4byte gCurTask
_08064E50: .4byte sub_8064E84
_08064E54:
	movs r0, #0xb0
	lsls r0, r0, #1
	cmp r1, r0
	ble _08064E74
	adds r0, #1
	cmp r1, r0
	bne _08064E6E
	movs r0, #4
	strh r0, [r4, #4]
	strh r6, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #8]
_08064E6E:
	adds r0, r4, #0
	bl sub_805423C
_08064E74:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8064E84
sub_8064E84: @ 0x08064E84
	push {r4, r5, r6, lr}
	ldr r0, _08064ED8 @ =gCurTask
	ldr r6, [r0]
	ldrh r1, [r6, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x24]
	ldrh r0, [r0, #6]
	ldr r2, _08064EDC @ =0x0300004C
	adds r5, r1, r2
	ldrh r2, [r5]
	ldr r3, _08064EE0 @ =0x030000B4
	adds r0, r0, r3
	strh r2, [r0]
	ldr r0, _08064EE4 @ =0x03000050
	adds r2, r1, r0
	ldrh r0, [r2]
	subs r0, #0x20
	strh r0, [r2]
	subs r3, #0x62
	adds r1, r1, r3
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	ldr r3, _08064EE8 @ =gBgScrollRegs
	ldrh r0, [r2]
	lsrs r0, r0, #8
	strh r0, [r3]
	ldrh r0, [r1]
	lsrs r0, r0, #8
	strh r0, [r3, #2]
	ldr r0, _08064EEC @ =gPressedKeys
	ldrh r0, [r0]
	movs r2, #0xb
	ands r2, r0
	cmp r2, #0
	beq _08064EF4
	ldr r0, _08064EF0 @ =sub_8064FF8
	str r0, [r6, #8]
	b _08064F9A
	.align 2, 0
_08064ED8: .4byte gCurTask
_08064EDC: .4byte 0x0300004C
_08064EE0: .4byte 0x030000B4
_08064EE4: .4byte 0x03000050
_08064EE8: .4byte gBgScrollRegs
_08064EEC: .4byte gPressedKeys
_08064EF0: .4byte sub_8064FF8
_08064EF4:
	movs r0, #0
	ldrsh r1, [r5, r0]
	cmp r1, #0x1d
	bhi _08064F06
	cmp r1, #1
	bne _08064F1E
	bl sub_8063DCC
	b _08064F1E
_08064F06:
	cmp r1, #0x29
	bhi _08064F26
	strh r2, [r4]
	movs r1, #1
	movs r0, #1
	strh r0, [r4, #2]
	movs r0, #8
	strh r0, [r4, #4]
	strh r2, [r4, #6]
	adds r0, #0xf8
	strh r0, [r4, #8]
	strb r1, [r4, #0xa]
_08064F1E:
	adds r0, r4, #0
	bl sub_80543A4
	b _08064F42
_08064F26:
	cmp r1, #0x65
	bls _08064F2E
	cmp r1, #0xf1
	bhi _08064F36
_08064F2E:
	adds r0, r4, #0
	bl sub_805423C
	b _08064F42
_08064F36:
	ldr r0, _08064F68 @ =0x00000169
	cmp r1, r0
	bhi _08064F42
	adds r0, r4, #0
	bl sub_805423C
_08064F42:
	adds r0, r4, #0
	adds r0, #0x4c
	ldrh r1, [r0]
	adds r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, _08064F6C @ =0x0000019D
	cmp r1, r0
	ble _08064F78
	ldr r0, _08064F70 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08064F74 @ =sub_8064FA0
	str r0, [r1, #8]
	adds r0, r4, #0
	bl sub_805423C
	b _08064F9A
	.align 2, 0
_08064F68: .4byte 0x00000169
_08064F6C: .4byte 0x0000019D
_08064F70: .4byte gCurTask
_08064F74: .4byte sub_8064FA0
_08064F78:
	movs r0, #0xb0
	lsls r0, r0, #1
	cmp r1, r0
	ble _08064F9A
	adds r0, #1
	cmp r1, r0
	bne _08064F94
	movs r0, #4
	strh r0, [r4, #4]
	movs r0, #0
	strh r0, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #8]
_08064F94:
	adds r0, r4, #0
	bl sub_805423C
_08064F9A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8064FA0
sub_8064FA0: @ 0x08064FA0
	push {lr}
	ldr r1, _08064FDC @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08064FE0 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08064FE4 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08064FE8 @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08064FEC @ =gVramGraphicsCopyCursor
	ldr r0, _08064FF0 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08064FF4 @ =gBgScrollRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	strh r0, [r1, #0xa]
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	bl CreateTitleScreen
	pop {r0}
	bx r0
	.align 2, 0
_08064FDC: .4byte 0x0000FFFF
_08064FE0: .4byte gBackgroundsCopyQueueCursor
_08064FE4: .4byte gBackgroundsCopyQueueIndex
_08064FE8: .4byte sa2__gUnknown_03005390
_08064FEC: .4byte gVramGraphicsCopyCursor
_08064FF0: .4byte gVramGraphicsCopyQueueIndex
_08064FF4: .4byte gBgScrollRegs

	thumb_func_start sub_8064FF8
sub_8064FF8: @ 0x08064FF8
	push {lr}
	ldr r1, _0806503C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08065040 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08065044 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08065048 @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0806504C @ =gVramGraphicsCopyCursor
	ldr r0, _08065050 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #1
	bl m4aSongNumStop
	ldr r1, _08065054 @ =gBgScrollRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	strh r0, [r1, #0xa]
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	movs r0, #1
	bl CreateTitleScreen
	pop {r0}
	bx r0
	.align 2, 0
_0806503C: .4byte 0x0000FFFF
_08065040: .4byte gBackgroundsCopyQueueCursor
_08065044: .4byte gBackgroundsCopyQueueIndex
_08065048: .4byte sa2__gUnknown_03005390
_0806504C: .4byte gVramGraphicsCopyCursor
_08065050: .4byte gVramGraphicsCopyQueueIndex
_08065054: .4byte gBgScrollRegs

	thumb_func_start sub_8065058
sub_8065058: @ 0x08065058
	push {r4, r5, r6, r7, lr}
	ldr r0, _08065130 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r5, r6, #0
	ldrh r0, [r6, #0x30]
	adds r0, #1
	strh r0, [r6, #0x30]
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r2, r0, #0x10
	ldr r1, _08065134 @ =0xFFA60000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	cmp r0, #0x8f
	bls _08065086
	ldr r0, [r6, #0x3c]
	ldr r1, [r6, #0x40]
	adds r0, r0, r1
	str r0, [r6, #0x3c]
_08065086:
	cmp r2, #0x59
	bgt _08065098
	ldr r0, [r6, #0x40]
	subs r0, #6
	str r0, [r6, #0x40]
	cmp r0, #0
	bge _08065098
	movs r0, #0
	str r0, [r6, #0x40]
_08065098:
	lsls r0, r3, #0x10
	asrs r7, r0, #0x10
	cmp r7, #0xe9
	bne _080650A6
	movs r0, #0xa0
	lsls r0, r0, #1
	str r0, [r5, #0x40]
_080650A6:
	ldr r0, [r5, #0x3c]
	movs r1, #0xb4
	lsls r1, r1, #8
	cmp r0, r1
	ble _080650B2
	str r1, [r5, #0x3c]
_080650B2:
	ldr r0, [r5, #0x34]
	cmp r0, #0
	bne _080650C8
	adds r1, r6, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0x2f
	str r0, [r5, #0x34]
	ldr r0, [r5, #0x3c]
	str r0, [r5, #0x38]
_080650C8:
	ldr r4, _08065138 @ =gSineTable
	ldr r0, [r5, #0x34]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	movs r0, #0x80
	lsls r0, r0, #1
	subs r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0x18
	bl Div
	ldr r1, [r5, #0x38]
	subs r1, r1, r0
	str r1, [r5, #0x38]
	ldr r1, [r5, #0x34]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	lsls r1, r7, #5
	adds r0, r0, r1
	ldr r1, _0806513C @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _08065140 @ =0x0000028A
	bl Div
	adds r0, #0x78
	strh r0, [r6, #0x16]
	ldr r0, [r5, #0x38]
	asrs r0, r0, #8
	strh r0, [r6, #0x18]
	ldr r0, [r5, #0x34]
	subs r0, #1
	str r0, [r5, #0x34]
	adds r0, r5, #0
	adds r0, #0x32
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08065144
	movs r0, #0
	b _08065148
	.align 2, 0
_08065130: .4byte gCurTask
_08065134: .4byte 0xFFA60000
_08065138: .4byte gSineTable
_0806513C: .4byte 0x000003FF
_08065140: .4byte 0x0000028A
_08065144:
	movs r0, #0xc0
	lsls r0, r0, #1
_08065148:
	strh r0, [r6, #0x1a]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_806515C
sub_806515C: @ 0x0806515C
	push {r4, r5, r6, r7, lr}
	ldr r0, _0806522C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r5, r6, #0
	ldrh r0, [r6, #0x30]
	adds r0, #1
	strh r0, [r6, #0x30]
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r2, r0, #0x10
	ldr r1, _08065230 @ =0xFFA60000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	cmp r0, #0x8f
	bls _0806518A
	ldr r0, [r6, #0x3c]
	ldr r1, [r6, #0x40]
	adds r0, r0, r1
	str r0, [r6, #0x3c]
_0806518A:
	cmp r2, #0x59
	bgt _0806519C
	ldr r0, [r6, #0x40]
	subs r0, #6
	str r0, [r6, #0x40]
	cmp r0, #0
	bge _0806519C
	movs r0, #0
	str r0, [r6, #0x40]
_0806519C:
	lsls r0, r3, #0x10
	asrs r7, r0, #0x10
	cmp r7, #0xe9
	bne _080651AA
	movs r0, #0xa0
	lsls r0, r0, #1
	str r0, [r5, #0x40]
_080651AA:
	ldr r0, [r5, #0x3c]
	movs r1, #0xd4
	lsls r1, r1, #8
	cmp r0, r1
	ble _080651B6
	str r1, [r5, #0x3c]
_080651B6:
	ldr r0, [r5, #0x34]
	cmp r0, #0
	bne _080651CC
	adds r1, r6, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0x2f
	str r0, [r5, #0x34]
	ldr r0, [r5, #0x3c]
	str r0, [r5, #0x38]
_080651CC:
	ldr r4, _08065234 @ =gSineTable
	ldr r1, [r5, #0x34]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0x18
	bl Div
	ldr r1, [r5, #0x38]
	subs r1, r1, r0
	str r1, [r5, #0x38]
	ldr r1, [r5, #0x34]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	lsls r1, r7, #5
	adds r0, r0, r1
	ldr r1, _08065238 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _0806523C @ =0x0000028A
	bl Div
	movs r1, #0x78
	subs r1, r1, r0
	strh r1, [r6, #0x16]
	ldr r0, [r5, #0x38]
	asrs r0, r0, #8
	strh r0, [r6, #0x18]
	ldr r0, [r5, #0x34]
	subs r0, #1
	str r0, [r5, #0x34]
	adds r0, r5, #0
	adds r0, #0x32
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08065240
	movs r0, #0
	b _08065244
	.align 2, 0
_0806522C: .4byte gCurTask
_08065230: .4byte 0xFFA60000
_08065234: .4byte gSineTable
_08065238: .4byte 0x000003FF
_0806523C: .4byte 0x0000028A
_08065240:
	movs r0, #0xc0
	lsls r0, r0, #1
_08065244:
	strh r0, [r6, #0x1a]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8065258
sub_8065258: @ 0x08065258
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080652CC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov sl, r0
	ldr r0, _080652D0 @ =0x030000B4
	adds r1, r1, r0
	movs r7, #0
	movs r2, #0
	ldrsh r5, [r1, r2]
	ldr r0, _080652D4 @ =gUnknown_0868B3B8
	mov r8, r0
	movs r1, #2
	add r1, r8
	mov sb, r1
_08065284:
	lsls r6, r7, #1
	adds r0, r6, r7
	lsls r0, r0, #4
	mov r2, sl
	adds r4, r2, r0
	cmp r5, #0x1e
	bne _080652B4
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	lsls r1, r7, #3
	mov r2, r8
	adds r0, r1, r2
	ldrh r0, [r0]
	strh r0, [r4, #0xa]
	add r1, sb
	ldrh r1, [r1]
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
_080652B4:
	cmp r5, #0
	ble _0806530E
	ldr r0, _080652D8 @ =0x00000161
	cmp r5, r0
	ble _080652DC
	movs r0, #0
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	b _08065308
	.align 2, 0
_080652CC: .4byte gCurTask
_080652D0: .4byte 0x030000B4
_080652D4: .4byte gUnknown_0868B3B8
_080652D8: .4byte 0x00000161
_080652DC:
	cmp r5, #0xbd
	ble _08065308
	cmp r5, #0xbe
	bne _08065302
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, r6, #1
	lsls r1, r1, #2
	mov r2, r8
	adds r0, r1, r2
	ldrh r0, [r0]
	strh r0, [r4, #0xa]
	add r1, sb
	ldrh r1, [r1]
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
_08065302:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
_08065308:
	adds r0, r4, #0
	bl DisplaySprite
_0806530E:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #1
	blo _08065284
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8065328
sub_8065328: @ 0x08065328
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08065374 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r0, r1
	str r1, [sp]
	ldr r1, _08065378 @ =0x030000B4
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r6, #0
	lsls r0, r0, #0x10
	mov sb, r0
	mov r2, sb
	asrs r2, r2, #0x10
	mov r8, r2
	ldr r0, _0806537C @ =gUnknown_0868B3C0
	mov sl, r0
_08065358:
	lsls r1, r6, #1
	adds r0, r1, r6
	lsls r0, r0, #4
	ldr r2, [sp]
	adds r5, r2, r0
	adds r7, r1, #0
	mov r0, r8
	cmp r0, #0x1e
	bne _080653B8
	cmp r6, #2
	bne _08065384
	ldr r0, _08065380 @ =0x06013280
	b _08065392
	.align 2, 0
_08065374: .4byte gCurTask
_08065378: .4byte 0x030000B4
_0806537C: .4byte gUnknown_0868B3C0
_08065380: .4byte 0x06013280
_08065384:
	cmp r6, #1
	bne _08065390
	ldr r0, _0806538C @ =0x06011980
	b _08065392
	.align 2, 0
_0806538C: .4byte 0x06011980
_08065390:
	ldr r0, _080653DC @ =0x06010080
_08065392:
	str r0, [r5, #4]
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	lsls r1, r6, #3
	mov r2, sl
	adds r0, r1, r2
	ldrh r0, [r0]
	strh r0, [r5, #0xa]
	ldr r0, _080653E0 @ =gUnknown_0868B3C2
	adds r1, r1, r0
	ldrh r1, [r1]
	adds r0, r5, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
_080653B8:
	mov r1, sb
	asrs r4, r1, #0x10
	cmp r4, #0
	blt _08065426
	cmp r4, #0x1d
	bgt _080653CA
	adds r0, r5, #0
	bl UpdateSpriteAnimation
_080653CA:
	ldr r0, _080653E4 @ =0x00000161
	cmp r4, r0
	ble _080653E8
	movs r0, #0
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	b _08065416
	.align 2, 0
_080653DC: .4byte 0x06010080
_080653E0: .4byte gUnknown_0868B3C2
_080653E4: .4byte 0x00000161
_080653E8:
	cmp r4, #0xbd
	ble _08065416
	cmp r4, #0xbe
	bne _08065410
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, r7, #1
	lsls r1, r1, #2
	mov r2, sl
	adds r0, r1, r2
	ldrh r0, [r0]
	strh r0, [r5, #0xa]
	ldr r0, _08065440 @ =gUnknown_0868B3C2
	adds r1, r1, r0
	ldrh r1, [r1]
	adds r0, r5, #0
	adds r0, #0x20
	strb r1, [r0]
_08065410:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
_08065416:
	mov r1, r8
	cmp r1, #0x1d
	bgt _08065420
	cmp r6, #0
	bne _08065426
_08065420:
	adds r0, r5, #0
	bl DisplaySprite
_08065426:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	blo _08065358
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08065440: .4byte gUnknown_0868B3C2

	thumb_func_start sub_8065444
sub_8065444: @ 0x08065444
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08065480 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r1, r0
	mov sl, r1
	ldr r1, _08065484 @ =0x030000B4
	adds r0, r0, r1
	ldrh r0, [r0]
	mov sb, r0
	movs r5, #0
	ldr r7, _08065488 @ =gUnknown_0868B3C8
	adds r2, r7, #2
	mov r8, r2
_0806546C:
	lsls r1, r5, #1
	adds r0, r1, r5
	lsls r0, r0, #4
	mov r2, sl
	adds r4, r2, r0
	adds r3, r1, #0
	cmp r5, #2
	bne _08065490
	ldr r0, _0806548C @ =0x06013280
	b _0806549E
	.align 2, 0
_08065480: .4byte gCurTask
_08065484: .4byte 0x030000B4
_08065488: .4byte gUnknown_0868B3C8
_0806548C: .4byte 0x06013280
_08065490:
	cmp r5, #1
	bne _0806549C
	ldr r0, _08065498 @ =0x06011980
	b _0806549E
	.align 2, 0
_08065498: .4byte 0x06011980
_0806549C:
	ldr r0, _080654DC @ =0x06010080
_0806549E:
	str r0, [r4, #4]
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r6, r0, #0
	cmp r2, #0x1e
	bne _080654C6
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	lsls r1, r5, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	strh r0, [r4, #0xa]
	add r1, r8
	ldrh r1, [r1]
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
_080654C6:
	cmp r2, #0
	blt _0806551E
	ldr r0, _080654E0 @ =0x00000161
	cmp r2, r0
	ble _080654E4
	movs r0, #0
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	b _08065508
	.align 2, 0
_080654DC: .4byte 0x06010080
_080654E0: .4byte 0x00000161
_080654E4:
	cmp r2, #0xea
	ble _08065508
	cmp r2, #0xeb
	bne _08065508
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, r3, #1
	lsls r1, r1, #2
	adds r0, r1, r7
	ldrh r0, [r0]
	strh r0, [r4, #0xa]
	add r1, r8
	ldrh r1, [r1]
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
_08065508:
	asrs r0, r6, #0x10
	cmp r0, #0x1d
	bgt _08065512
	cmp r5, #0
	bne _0806551E
_08065512:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0806551E:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	blo _0806546C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8065538
sub_8065538: @ 0x08065538
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _080655D0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r0, [sp]
	ldr r2, _080655D4 @ =0x030000B4
	adds r0, r1, r2
	ldrh r0, [r0]
	lsls r2, r0, #0x10
	movs r0, #0xcd
	lsls r0, r0, #0x11
	cmp r2, r0
	bgt _0806561C
	movs r7, #0
	str r2, [sp, #4]
	ldr r0, _080655D4 @ =0x030000B4
	adds r0, r1, r0
	str r0, [sp, #8]
	ldr r1, _080655D8 @ =0x00000161
	mov sl, r1
	ldr r2, _080655DC @ =gUnknown_0868B3D0
	mov r8, r2
	movs r0, #2
	add r0, r8
	mov sb, r0
_0806557A:
	lsls r6, r7, #1
	adds r0, r6, r7
	lsls r0, r0, #4
	ldr r1, [sp]
	adds r4, r1, r0
	ldr r2, [sp, #8]
	ldrh r0, [r2]
	cmp r0, sl
	bne _08065590
	movs r0, #0
	str r0, [r4, #0x10]
_08065590:
	ldr r0, [sp, #4]
	asrs r5, r0, #0x10
	cmp r5, #0x1e
	bne _080655BA
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	lsls r1, r7, #3
	mov r2, r8
	adds r0, r1, r2
	ldrh r0, [r0]
	strh r0, [r4, #0xa]
	add r1, sb
	ldrh r1, [r1]
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
_080655BA:
	cmp r5, #0
	blt _08065612
	cmp r5, sl
	ble _080655E0
	movs r0, #0
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	b _0806560C
	.align 2, 0
_080655D0: .4byte gCurTask
_080655D4: .4byte 0x030000B4
_080655D8: .4byte 0x00000161
_080655DC: .4byte gUnknown_0868B3D0
_080655E0:
	cmp r5, #0xa4
	ble _0806560C
	cmp r5, #0xa5
	bne _08065606
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, r6, #1
	lsls r1, r1, #2
	mov r2, r8
	adds r0, r1, r2
	ldrh r0, [r0]
	strh r0, [r4, #0xa]
	add r1, sb
	ldrh r1, [r1]
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
_08065606:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
_0806560C:
	adds r0, r4, #0
	bl DisplaySprite
_08065612:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #1
	blo _0806557A
_0806561C:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_806562C
sub_806562C: @ 0x0806562C
	push {r4, r5, lr}
	ldr r0, _08065698 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r4, r3, #0
	ldrh r0, [r3, #0x30]
	adds r0, #1
	strh r0, [r3, #0x30]
	lsls r1, r0, #0x10
	lsrs r2, r1, #0x10
	adds r0, r1, #0
	ldr r1, _0806569C @ =0x01610000
	cmp r0, r1
	bne _08065652
	movs r0, #0
	str r0, [r3, #0x10]
_08065652:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x5a
	ble _08065690
	subs r0, #0x5a
	ldr r2, [r3, #0x34]
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _08065690
	ldr r0, [r3, #0x3c]
	subs r0, #0x10
	str r0, [r3, #0x3c]
	ldr r2, _080656A0 @ =gUnknown_0868B27C
	movs r5, #0
	ldrsh r1, [r2, r5]
	cmp r0, r1
	bge _0806567C
	str r1, [r3, #0x3c]
_0806567C:
	ldr r0, [r4, #0x3c]
	strh r0, [r4, #0x16]
	ldrh r0, [r2, #2]
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08065690:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08065698: .4byte gCurTask
_0806569C: .4byte 0x01610000
_080656A0: .4byte gUnknown_0868B27C

	thumb_func_start sub_80656A4
sub_80656A4: @ 0x080656A4
	push {r4, r5, lr}
	ldr r0, _08065710 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r4, r3, #0
	ldrh r0, [r3, #0x30]
	adds r0, #1
	strh r0, [r3, #0x30]
	lsls r1, r0, #0x10
	lsrs r2, r1, #0x10
	adds r0, r1, #0
	ldr r1, _08065714 @ =0x01610000
	cmp r0, r1
	bne _080656CA
	movs r0, #0
	str r0, [r3, #0x10]
_080656CA:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x5a
	ble _08065708
	subs r0, #0x5a
	ldr r2, [r3, #0x34]
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _08065708
	ldr r0, [r3, #0x3c]
	subs r0, #0x10
	str r0, [r3, #0x3c]
	ldr r2, _08065718 @ =gUnknown_0868B280
	movs r5, #0
	ldrsh r1, [r2, r5]
	cmp r0, r1
	bge _080656F4
	str r1, [r3, #0x3c]
_080656F4:
	ldr r0, [r4, #0x3c]
	strh r0, [r4, #0x16]
	ldrh r0, [r2, #2]
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08065708:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08065710: .4byte gCurTask
_08065714: .4byte 0x01610000
_08065718: .4byte gUnknown_0868B280

	thumb_func_start sub_806571C
sub_806571C: @ 0x0806571C
	push {r4, r5, lr}
	ldr r0, _08065788 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r4, r3, #0
	ldrh r0, [r3, #0x30]
	adds r0, #1
	strh r0, [r3, #0x30]
	lsls r1, r0, #0x10
	lsrs r2, r1, #0x10
	adds r0, r1, #0
	ldr r1, _0806578C @ =0x01610000
	cmp r0, r1
	bne _08065742
	movs r0, #0
	str r0, [r3, #0x10]
_08065742:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x5a
	ble _08065780
	subs r0, #0x5a
	ldr r2, [r3, #0x34]
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _08065780
	ldr r0, [r3, #0x3c]
	subs r0, #0x10
	str r0, [r3, #0x3c]
	ldr r2, _08065790 @ =gUnknown_0868B284
	movs r5, #0
	ldrsh r1, [r2, r5]
	cmp r0, r1
	bge _0806576C
	str r1, [r3, #0x3c]
_0806576C:
	ldr r0, [r4, #0x3c]
	strh r0, [r4, #0x16]
	ldrh r0, [r2, #2]
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08065780:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08065788: .4byte gCurTask
_0806578C: .4byte 0x01610000
_08065790: .4byte gUnknown_0868B284

	thumb_func_start sub_8065794
sub_8065794: @ 0x08065794
	push {r4, r5, lr}
	ldr r0, _08065804 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r4, r3, #0
	ldrh r0, [r3, #0x30]
	adds r1, r0, #1
	strh r1, [r3, #0x30]
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	movs r0, #0xcd
	lsls r0, r0, #1
	cmp r2, r0
	bgt _080657FE
	lsls r1, r1, #0x10
	ldr r0, _08065808 @ =0x01610000
	cmp r1, r0
	bne _080657C2
	movs r0, #0
	str r0, [r3, #0x10]
_080657C2:
	cmp r2, #0x5a
	ble _080657FE
	adds r0, r2, #0
	subs r0, #0x5a
	ldr r2, [r3, #0x34]
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _080657FE
	ldr r0, [r3, #0x3c]
	subs r0, #0x10
	str r0, [r3, #0x3c]
	ldr r2, _0806580C @ =gUnknown_0868B288
	movs r5, #0
	ldrsh r1, [r2, r5]
	cmp r0, r1
	bge _080657EA
	str r1, [r3, #0x3c]
_080657EA:
	ldr r0, [r4, #0x3c]
	strh r0, [r4, #0x16]
	ldrh r0, [r2, #2]
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080657FE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08065804: .4byte gCurTask
_08065808: .4byte 0x01610000
_0806580C: .4byte gUnknown_0868B288

	thumb_func_start sub_8065810
sub_8065810: @ 0x08065810
	bx lr
	.align 2, 0

	thumb_func_start sub_8065814
sub_8065814: @ 0x08065814
	push {r4, r5, lr}
	ldr r0, _08065880 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r2, r4, #0
	ldrh r5, [r4, #0x30]
	movs r0, #0x30
	ldrsh r3, [r4, r0]
	adds r0, r3, #0
	subs r0, #0x5a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x8f
	bls _0806583E
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x3c]
_0806583E:
	cmp r3, #0x59
	bgt _08065850
	ldr r0, [r4, #0x40]
	subs r0, #6
	str r0, [r4, #0x40]
	cmp r0, #0
	bge _08065850
	movs r0, #0
	str r0, [r4, #0x40]
_08065850:
	cmp r5, #0xe9
	bne _0806585A
	movs r0, #0xa0
	lsls r0, r0, #1
	str r0, [r2, #0x40]
_0806585A:
	ldr r0, [r2, #0x3c]
	movs r1, #0xb4
	lsls r1, r1, #8
	cmp r0, r1
	ble _08065866
	str r1, [r2, #0x3c]
_08065866:
	ldr r0, [r2, #0x3c]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08065880: .4byte gCurTask

	thumb_func_start CreateCongratulationsAnimation
CreateCongratulationsAnimation: @ 0x08065884
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x6c
	ldr r1, _08065C70 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08065C74 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08065C78 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08065C7C @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08065C80 @ =gVramGraphicsCopyCursor
	ldr r0, _08065C84 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl m4aMPlayAllStop
	bl m4aSoundVSyncOff
	ldr r0, _08065C88 @ =gFlags
	mov sl, r0
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r1, r0
	ldr r2, _08065C8C @ =0x04000200
	mov r8, r2
	ldrh r0, [r2]
	str r0, [sp, #0x54]
	ldr r6, _08065C90 @ =0x04000208
	ldrh r0, [r6]
	adds r7, r0, #0
	ldr r5, _08065C94 @ =0x04000004
	ldrh r3, [r5]
	mov sb, r3
	movs r0, #0
	strh r0, [r2]
	ldrh r0, [r2]
	movs r2, #0
	strh r2, [r6]
	ldrh r0, [r6]
	strh r2, [r5]
	ldrh r0, [r5]
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	mov r3, sl
	str r1, [r3]
	ldr r1, _08065C98 @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r4, _08065C9C @ =0x0000C5FF
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r3, _08065CA0 @ =0x00007FFF
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
	ldr r0, _08065CA4 @ =0x040000D4
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
	add r0, sp, #0x54
	ldrh r1, [r0]
	mov r0, r8
	strh r1, [r0]
	ldrh r0, [r0]
	strh r7, [r6]
	ldrh r0, [r6]
	mov r1, sb
	strh r1, [r5]
	ldrh r0, [r5]
	bl m4aSoundVSyncOn
	mov r2, sl
	ldr r0, [r2]
	ldr r1, _08065CA8 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r2]
	bl sub_80535FC
	bl sub_8053674
	ldr r1, _08065CAC @ =gDispCnt
	movs r3, #0x8a
	lsls r3, r3, #5
	adds r0, r3, #0
	strh r0, [r1]
	ldr r1, _08065CB0 @ =gBgCntRegs
	movs r4, #0
	ldr r0, _08065CB4 @ =0x00009D86
	strh r0, [r1]
	ldr r0, _08065CB8 @ =0x00001B8B
	strh r0, [r1, #2]
	ldr r0, _08065CBC @ =0x00009880
	strh r0, [r1, #4]
	ldr r0, _08065CC0 @ =gBgScrollRegs
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	strh r4, [r0, #8]
	strh r4, [r0, #0xa]
	ldr r0, _08065CC4 @ =sub_8066DD0
	str r4, [sp]
	movs r1, #0xb2
	lsls r1, r1, #1
	ldr r2, _08065CC8 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0x44]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r2, r0
	ldr r0, _08065CCC @ =0x06010020
	str r0, [r7, #4]
	ldr r1, _08065CD0 @ =gUnknown_0868B3D8
	ldr r3, _08065CD4 @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r3, _08065CD8 @ =0x03000020
	adds r0, r2, r3
	strb r1, [r0]
	movs r0, #0x78
	strh r0, [r7, #0x16]
	movs r1, #0x50
	strh r1, [r7, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	adds r3, #1
	adds r1, r2, r3
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08065CDC @ =0x03000022
	adds r0, r2, r1
	movs r3, #0x10
	strb r3, [r0]
	ldr r0, _08065CE0 @ =0x03000025
	adds r2, r2, r0
	movs r1, #0
	strb r1, [r2]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r7, #0x28]
	movs r3, #0x80
	lsls r3, r3, #5
	str r3, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	strh r4, [r7, #0x3c]
	movs r5, #0xf0
	lsls r5, r5, #3
	str r5, [r7, #0x44]
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r7, #0x40]
	str r4, [r7, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r7, #0x48]
	ldr r0, _08065CE4 @ =sub_8066E58
	str r4, [sp]
	movs r1, #0xb2
	lsls r1, r1, #1
	ldr r2, _08065CC8 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0x4c]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r2, r1
	ldr r0, _08065CE8 @ =0x06017D00
	str r0, [r7, #4]
	ldr r1, _08065CEC @ =gUnknown_0868B3F8
	ldr r3, _08065CD4 @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r3, _08065CD8 @ =0x03000020
	adds r0, r2, r3
	strb r1, [r0]
	movs r0, #0x96
	lsls r0, r0, #1
	mov sl, r0
	mov r1, sl
	strh r1, [r7, #0x16]
	movs r3, #0x6c
	mov sb, r3
	mov r0, sb
	strh r0, [r7, #0x18]
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	ldr r3, _08065CF0 @ =0x03000021
	adds r1, r2, r3
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08065CDC @ =0x03000022
	adds r0, r2, r1
	movs r3, #0x10
	strb r3, [r0]
	ldr r0, _08065CE0 @ =0x03000025
	adds r2, r2, r0
	movs r1, #0
	strb r1, [r2]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r7, #0x28]
	movs r3, #0x80
	lsls r3, r3, #5
	str r3, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	strh r4, [r7, #0x3c]
	str r5, [r7, #0x44]
	movs r0, #0x96
	lsls r0, r0, #9
	mov r8, r0
	str r0, [r7, #0x40]
	str r4, [r7, #0x4c]
	movs r6, #0xd8
	lsls r6, r6, #7
	str r6, [r7, #0x48]
	ldr r0, _08065CF4 @ =sub_8066F14
	str r4, [sp]
	movs r1, #0xb2
	lsls r1, r1, #1
	ldr r2, _08065CC8 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0x48]
	ldrh r1, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r7, r1, r2
	ldr r0, _08065CF8 @ =0x06010BA0
	str r0, [r7, #4]
	movs r0, #0xb8
	lsls r0, r0, #2
	strh r0, [r7, #0xa]
	ldr r3, _08065CD8 @ =0x03000020
	adds r0, r1, r3
	movs r2, #0
	strb r2, [r0]
	mov r3, sl
	strh r3, [r7, #0x16]
	mov r0, sb
	strh r0, [r7, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	ldr r3, _08065CF0 @ =0x03000021
	adds r2, r1, r3
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r2]
	ldr r2, _08065CDC @ =0x03000022
	adds r0, r1, r2
	movs r3, #0x10
	strb r3, [r0]
	ldr r0, _08065CE0 @ =0x03000025
	adds r1, r1, r0
	movs r2, #0
	strb r2, [r1]
	movs r3, #1
	rsbs r3, r3, #0
	str r3, [r7, #0x28]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	strh r4, [r7, #0x3c]
	str r5, [r7, #0x44]
	mov r1, r8
	str r1, [r7, #0x40]
	str r4, [r7, #0x4c]
	str r6, [r7, #0x48]
	ldr r0, _08065CFC @ =sub_8066A5C
	str r4, [sp]
	movs r1, #0xb2
	lsls r1, r1, #1
	ldr r2, _08065CC8 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0x40]
	ldrh r5, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r7, r5, r2
	ldr r0, _08065D00 @ =0x06010940
	str r0, [r7, #4]
	movs r0, #0xc5
	lsls r0, r0, #2
	strh r0, [r7, #0xa]
	ldr r3, _08065CD8 @ =0x03000020
	adds r0, r5, r3
	movs r1, #0
	strb r1, [r0]
	movs r0, #0xf8
	strh r0, [r7, #0x16]
	movs r2, #0x50
	strh r2, [r7, #0x18]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	adds r3, #1
	adds r1, r5, r3
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08065CDC @ =0x03000022
	adds r0, r5, r1
	movs r2, #0x10
	strb r2, [r0]
	adds r3, #4
	adds r0, r5, r3
	movs r1, #0
	strb r1, [r0]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r7, #0x28]
	movs r3, #0x80
	lsls r3, r3, #5
	str r3, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	strh r4, [r7, #0x3c]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r7, #0x44]
	movs r0, #0xf8
	lsls r0, r0, #8
	str r0, [r7, #0x40]
	str r4, [r7, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r7, #0x48]
	ldr r1, _08065D04 @ =0x0300015C
	adds r5, r5, r1
	movs r2, #0
	strb r2, [r5]
	ldr r0, _08065D08 @ =sub_8067020
	str r4, [sp]
	movs r1, #0xb2
	lsls r1, r1, #1
	ldr r2, _08065CC8 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0x50]
	ldrh r2, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r7, r2, r3
	strh r4, [r7, #0x3c]
	str r4, [r7, #0x4c]
	str r4, [r7, #0x48]
	str r4, [r7, #0x44]
	str r4, [r7, #0x40]
	ldr r0, _08065D0C @ =0x06014020
	str r0, [r7, #4]
	ldr r1, _08065D10 @ =gUnknown_0868B3E8
	ldr r3, _08065CD4 @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r3, _08065CD8 @ =0x03000020
	adds r0, r2, r3
	strb r1, [r0]
	movs r0, #0x78
	strh r0, [r7, #0x16]
	movs r1, #0x50
	strh r1, [r7, #0x18]
	movs r0, #0xc0
	strh r0, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	adds r3, #1
	adds r1, r2, r3
	subs r0, #0xc1
	strb r0, [r1]
	ldr r1, _08065CDC @ =0x03000022
	adds r0, r2, r1
	movs r3, #0x10
	strb r3, [r0]
	ldr r0, _08065CE0 @ =0x03000025
	adds r2, r2, r0
	movs r1, #0
	strb r1, [r2]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r7, #0x28]
	movs r3, #0x80
	lsls r3, r3, #5
	str r3, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r0, _08065D14 @ =sub_8066C78
	str r4, [sp]
	movs r1, #0xb2
	lsls r1, r1, #1
	ldr r2, _08065CC8 @ =0x00002120
	movs r3, #0
	b _08065D18
	.align 2, 0
_08065C70: .4byte 0x0000FFFF
_08065C74: .4byte gBackgroundsCopyQueueCursor
_08065C78: .4byte gBackgroundsCopyQueueIndex
_08065C7C: .4byte sa2__gUnknown_03005390
_08065C80: .4byte gVramGraphicsCopyCursor
_08065C84: .4byte gVramGraphicsCopyQueueIndex
_08065C88: .4byte gFlags
_08065C8C: .4byte 0x04000200
_08065C90: .4byte 0x04000208
_08065C94: .4byte 0x04000004
_08065C98: .4byte 0x040000B0
_08065C9C: .4byte 0x0000C5FF
_08065CA0: .4byte 0x00007FFF
_08065CA4: .4byte 0x040000D4
_08065CA8: .4byte 0xFFFF7FFF
_08065CAC: .4byte gDispCnt
_08065CB0: .4byte gBgCntRegs
_08065CB4: .4byte 0x00009D86
_08065CB8: .4byte 0x00001B8B
_08065CBC: .4byte 0x00009880
_08065CC0: .4byte gBgScrollRegs
_08065CC4: .4byte sub_8066DD0
_08065CC8: .4byte 0x00002120
_08065CCC: .4byte 0x06010020
_08065CD0: .4byte gUnknown_0868B3D8
_08065CD4: .4byte gSelectedCharacter
_08065CD8: .4byte 0x03000020
_08065CDC: .4byte 0x03000022
_08065CE0: .4byte 0x03000025
_08065CE4: .4byte sub_8066E58
_08065CE8: .4byte 0x06017D00
_08065CEC: .4byte gUnknown_0868B3F8
_08065CF0: .4byte 0x03000021
_08065CF4: .4byte sub_8066F14
_08065CF8: .4byte 0x06010BA0
_08065CFC: .4byte sub_8066A5C
_08065D00: .4byte 0x06010940
_08065D04: .4byte 0x0300015C
_08065D08: .4byte sub_8067020
_08065D0C: .4byte 0x06014020
_08065D10: .4byte gUnknown_0868B3E8
_08065D14: .4byte sub_8066C78
_08065D18:
	bl TaskCreate
	mov sl, r0
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r2, r0
	strh r4, [r7, #0x3c]
	movs r0, #0xf
	str r0, [r7, #0x4c]
	str r4, [r7, #0x48]
	str r4, [r7, #0x44]
	str r4, [r7, #0x40]
	ldr r0, _08065DE8 @ =0x060109C0
	str r0, [r7, #4]
	movs r0, #0xc2
	lsls r0, r0, #2
	strh r0, [r7, #0xa]
	ldr r1, _08065DEC @ =0x03000020
	adds r0, r2, r1
	movs r3, #0
	strb r3, [r0]
	movs r0, #0x78
	strh r0, [r7, #0x16]
	movs r1, #0x50
	strh r1, [r7, #0x18]
	strh r4, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	ldr r3, _08065DF0 @ =0x03000021
	adds r1, r2, r3
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08065DF4 @ =0x03000022
	adds r0, r2, r1
	movs r3, #0x10
	strb r3, [r0]
	ldr r0, _08065DF8 @ =0x03000025
	adds r2, r2, r0
	movs r1, #0
	strb r1, [r2]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r7, #0x28]
	movs r3, #0x80
	lsls r3, r3, #5
	str r3, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r5, #0
	add r6, sp, #0x10
	mov r7, sp
	adds r7, #0x3c
	str r7, [sp, #0x68]
	mov r0, sp
	adds r0, #0x3b
	str r0, [sp, #0x64]
	mov r1, sp
	adds r1, #0x38
	str r1, [sp, #0x58]
	mov r2, sp
	adds r2, #0x39
	str r2, [sp, #0x5c]
	mov r3, sp
	adds r3, #0x3a
	str r3, [sp, #0x60]
	ldr r7, _08065DFC @ =0x00000311
	mov r8, r7
_08065DA6:
	str r4, [sp]
	ldr r0, _08065E00 @ =sub_8066DC8
	movs r1, #0xb2
	lsls r1, r1, #1
	ldr r2, _08065E04 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	lsls r1, r5, #2
	add r1, sp
	adds r1, #4
	str r0, [r1]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	strh r4, [r7, #0x3c]
	movs r0, #0xf
	str r0, [r7, #0x4c]
	str r4, [r7, #0x48]
	str r5, [r7, #0x44]
	str r4, [r7, #0x40]
	cmp r5, #0
	bne _08065E0C
	ldr r0, _08065E08 @ =0x06011AA0
	str r0, [r7, #4]
	mov r2, r8
	strh r2, [r7, #0xa]
	ldr r3, _08065DEC @ =0x03000020
	adds r0, r1, r3
	strb r4, [r0]
	b _08065E38
	.align 2, 0
_08065DE8: .4byte 0x060109C0
_08065DEC: .4byte 0x03000020
_08065DF0: .4byte 0x03000021
_08065DF4: .4byte 0x03000022
_08065DF8: .4byte 0x03000025
_08065DFC: .4byte 0x00000311
_08065E00: .4byte sub_8066DC8
_08065E04: .4byte 0x00002120
_08065E08: .4byte 0x06011AA0
_08065E0C:
	cmp r5, #1
	bne _08065E28
	ldr r0, _08065E20 @ =0x06012340
	str r0, [r7, #4]
	mov r0, r8
	strh r0, [r7, #0xa]
	ldr r2, _08065E24 @ =0x03000020
	adds r0, r1, r2
	strb r5, [r0]
	b _08065E38
	.align 2, 0
_08065E20: .4byte 0x06012340
_08065E24: .4byte 0x03000020
_08065E28:
	ldr r0, _08065F34 @ =0x06012820
	str r0, [r7, #4]
	mov r3, r8
	strh r3, [r7, #0xa]
	ldr r0, _08065F38 @ =0x03000020
	adds r1, r1, r0
	movs r0, #2
	strb r0, [r1]
_08065E38:
	movs r0, #0xb4
	strh r0, [r7, #0x16]
	movs r0, #0x50
	strh r0, [r7, #0x18]
	strh r4, [r7, #0x1a]
	strh r4, [r7, #8]
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
	strb r4, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	movs r1, #0x80
	lsls r1, r1, #5
	mov sb, r1
	str r1, [r7, #0x10]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08065DA6
	ldr r0, _08065F3C @ =sub_8065F5C
	movs r2, #0x84
	lsls r2, r2, #6
	movs r4, #0
	str r4, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r3, _08065F40 @ =0x03000040
	adds r1, r2, r3
	movs r5, #0
	strh r4, [r1]
	ldr r7, _08065F44 @ =0x03000042
	adds r1, r2, r7
	movs r3, #1
	strb r3, [r1]
	ldr r1, [sp, #0x50]
	str r1, [r0, #0xc]
	ldr r1, [sp, #4]
	str r1, [r0, #0x24]
	ldr r1, [sp, #8]
	str r1, [r0, #0x28]
	ldr r1, [sp, #0xc]
	str r1, [r0, #0x2c]
	ldr r7, [sp, #0x44]
	str r7, [r0, #0x18]
	mov r1, sl
	str r1, [r0, #0x10]
	ldr r7, [sp, #0x40]
	str r7, [r0, #0x14]
	ldr r1, [sp, #0x48]
	str r1, [r0, #0x1c]
	ldr r7, [sp, #0x4c]
	str r7, [r0, #0x20]
	ldr r7, _08065F48 @ =0x03000044
	adds r1, r2, r7
	strh r4, [r1]
	ldr r1, _08065F4C @ =0x03000046
	adds r2, r2, r1
	strh r4, [r2]
	strh r4, [r0]
	movs r2, #1
	strh r3, [r0, #2]
	movs r1, #8
	strh r1, [r0, #4]
	strh r4, [r0, #6]
	movs r4, #0x80
	strh r4, [r0, #8]
	strb r2, [r0, #0xa]
	bl sub_80543A4
	ldr r2, [sp, #0x68]
	strb r4, [r2]
	ldr r3, [sp, #0x64]
	strb r5, [r3]
	ldr r0, _08065F50 @ =gUnknown_086BBE34
	str r0, [r6, #0x14]
	movs r0, #0xa6
	lsls r0, r0, #6
	str r0, [r6, #0x18]
	ldr r0, _08065F54 @ =gUnknown_086BBC34
	str r0, [r6, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r6, #0x24]
	ldr r0, _08065F58 @ =gUnknown_086BE7B4
	str r0, [r6, #0x10]
	mov r7, sb
	str r7, [r6, #0x1c]
	ldr r0, [sp, #0x58]
	strb r5, [r0]
	ldr r1, [sp, #0x5c]
	strb r5, [r1]
	movs r0, #0x15
	ldr r2, [sp, #0x60]
	strb r0, [r2]
	adds r0, r6, #0
	bl sub_80528AC
	movs r0, #0x26
	bl m4aSongNumStart
	add sp, #0x6c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08065F34: .4byte 0x06012820
_08065F38: .4byte 0x03000020
_08065F3C: .4byte sub_8065F5C
_08065F40: .4byte 0x03000040
_08065F44: .4byte 0x03000042
_08065F48: .4byte 0x03000044
_08065F4C: .4byte 0x03000046
_08065F50: .4byte gUnknown_086BBE34
_08065F54: .4byte gUnknown_086BBC34
_08065F58: .4byte gUnknown_086BE7B4

	thumb_func_start sub_8065F5C
sub_8065F5C: @ 0x08065F5C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r0, _08066008 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r4, r1
	ldr r0, [r5, #0xc]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x18]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x1c]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x20]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sl, r0
	adds r1, #0x40
	adds r0, r4, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r7, r0, #1
	adds r0, r5, #0
	bl sub_805423C
	cmp r7, #0xb4
	beq _08065FAA
	b _0806610A
_08065FAA:
	movs r6, #0
	ldr r0, _0806600C @ =0x03000030
	adds r0, r0, r4
	mov sb, r0
	movs r4, #0
	movs r1, #0xc8
	lsls r1, r1, #8
	mov r8, r1
_08065FBA:
	str r4, [sp]
	ldr r0, _08066010 @ =sub_806844C
	movs r1, #0x64
	ldr r2, _08066014 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	lsls r2, r6, #2
	mov r1, sp
	adds r1, r1, r2
	adds r1, #4
	str r0, [r1]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r3, r0
	str r4, [r1, #0x3c]
	cmp r6, #0
	bne _08066028
	mov r0, r8
	str r0, [r1, #0x54]
	movs r0, #0xf0
	lsls r0, r0, #6
	str r0, [r1, #0x44]
	movs r0, #0x80
	str r0, [r1, #0x48]
	ldr r0, _08066018 @ =0xFFFFFC40
	str r0, [r1, #0x58]
	ldr r0, _0806601C @ =0x06012E80
	str r0, [r1, #4]
	ldr r0, _08066020 @ =0x00000316
	strh r0, [r1, #0xa]
	ldr r0, _08066024 @ =0x03000020
	adds r3, r3, r0
	strb r4, [r3]
	movs r0, #0x98
	lsls r0, r0, #3
	b _080660C0
	.align 2, 0
_08066008: .4byte gCurTask
_0806600C: .4byte 0x03000030
_08066010: .4byte sub_806844C
_08066014: .4byte 0x00002120
_08066018: .4byte 0xFFFFFC40
_0806601C: .4byte 0x06012E80
_08066020: .4byte 0x00000316
_08066024: .4byte 0x03000020
_08066028:
	cmp r6, #1
	bne _08066060
	mov r0, r8
	str r0, [r1, #0x54]
	str r4, [r1, #0x44]
	movs r0, #0x40
	str r0, [r1, #0x48]
	ldr r0, _08066050 @ =0xFFFFFC00
	str r0, [r1, #0x58]
	ldr r0, _08066054 @ =0x06012FC0
	str r0, [r1, #4]
	ldr r0, _08066058 @ =0x00000317
	strh r0, [r1, #0xa]
	ldr r0, _0806605C @ =0x03000020
	adds r3, r3, r0
	strb r4, [r3]
	movs r0, #0x90
	lsls r0, r0, #3
	b _080660C0
	.align 2, 0
_08066050: .4byte 0xFFFFFC00
_08066054: .4byte 0x06012FC0
_08066058: .4byte 0x00000317
_0806605C: .4byte 0x03000020
_08066060:
	cmp r6, #2
	bne _0806609C
	mov r0, r8
	str r0, [r1, #0x54]
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r1, #0x44]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r1, #0x48]
	ldr r0, _08066090 @ =0xFFFFFC80
	str r0, [r1, #0x58]
	ldr r0, _08066094 @ =0x06013260
	str r0, [r1, #4]
	movs r0, #0xc6
	lsls r0, r0, #2
	strh r0, [r1, #0xa]
	ldr r0, _08066098 @ =0x03000020
	adds r3, r3, r0
	strb r4, [r3]
	movs r0, #0x88
	lsls r0, r0, #3
	b _080660C0
	.align 2, 0
_08066090: .4byte 0xFFFFFC80
_08066094: .4byte 0x06013260
_08066098: .4byte 0x03000020
_0806609C:
	mov r0, r8
	str r0, [r1, #0x54]
	movs r0, #0xb4
	lsls r0, r0, #8
	str r0, [r1, #0x44]
	movs r0, #0xc0
	str r0, [r1, #0x48]
	ldr r0, _0806617C @ =0xFFFFFB80
	str r0, [r1, #0x58]
	ldr r0, _08066180 @ =0x06013620
	str r0, [r1, #4]
	ldr r0, _08066184 @ =0x00000319
	strh r0, [r1, #0xa]
	ldr r0, _08066188 @ =0x03000020
	adds r3, r3, r0
	strb r4, [r3]
	movs r0, #0x80
	lsls r0, r0, #3
_080660C0:
	strh r0, [r1, #0x1a]
	movs r0, #0xb4
	strh r0, [r1, #0x16]
	movs r0, #0x50
	strh r0, [r1, #0x18]
	strh r4, [r1, #8]
	strh r4, [r1, #0x14]
	strh r4, [r1, #0x1c]
	adds r3, r1, #0
	adds r3, #0x21
	movs r0, #0xff
	strb r0, [r3]
	adds r3, #1
	movs r0, #0x10
	strb r0, [r3]
	adds r0, r1, #0
	adds r0, #0x25
	strb r4, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1, #0x28]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r1, #0x10]
	mov r0, sb
	adds r1, r0, r2
	mov r0, sp
	adds r0, r0, r2
	adds r0, #4
	ldr r0, [r0]
	str r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bhi _0806610A
	b _08065FBA
_0806610A:
	movs r0, #0xb4
	lsls r0, r0, #1
	cmp r7, r0
	bne _08066124
	ldr r0, [r5, #0x30]
	ldr r1, _0806618C @ =sub_80684B4
	str r1, [r0, #8]
	ldr r0, [r5, #0x34]
	str r1, [r0, #8]
	ldr r0, [r5, #0x38]
	str r1, [r0, #8]
	ldr r0, [r5, #0x3c]
	str r1, [r0, #8]
_08066124:
	movs r0, #0xc8
	lsls r0, r0, #1
	cmp r7, r0
	bls _08066154
	movs r7, #0
	ldr r0, [r5, #0x10]
	bl TaskDestroy
	ldr r1, [r5, #0x20]
	ldr r0, _08066190 @ =sub_8066E5C
	str r0, [r1, #8]
	ldr r1, [r5, #0x1c]
	ldr r0, _08066194 @ =sub_8066F30
	str r0, [r1, #8]
	ldr r1, [r5, #0x18]
	ldr r0, _08066198 @ =sub_8066628
	str r0, [r1, #8]
	ldr r1, [r5, #0xc]
	ldr r0, _0806619C @ =sub_8067050
	str r0, [r1, #8]
	ldr r0, _080661A0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080661A4 @ =sub_80661A8
	str r0, [r1, #8]
_08066154:
	adds r0, r5, #0
	adds r0, #0x40
	strh r7, [r0]
	ldr r1, [sp, #0x14]
	strh r7, [r1, #0x3c]
	ldr r0, [sp, #0x18]
	strh r7, [r0, #0x3c]
	ldr r1, [sp, #0x1c]
	strh r7, [r1, #0x3c]
	mov r0, sl
	strh r7, [r0, #0x3c]
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806617C: .4byte 0xFFFFFB80
_08066180: .4byte 0x06013620
_08066184: .4byte 0x00000319
_08066188: .4byte 0x03000020
_0806618C: .4byte sub_80684B4
_08066190: .4byte sub_8066E5C
_08066194: .4byte sub_8066F30
_08066198: .4byte sub_8066628
_0806619C: .4byte sub_8067050
_080661A0: .4byte gCurTask
_080661A4: .4byte sub_80661A8

	thumb_func_start sub_80661A8
sub_80661A8: @ 0x080661A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r1, _080662A4 @ =gCurTask
	ldr r0, [r1]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r2, r1
	ldr r0, [r6, #0x18]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp]
	ldr r0, [r6, #0x1c]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [r6, #0x20]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #8]
	ldr r3, _080662A8 @ =0x03000040
	adds r3, r3, r2
	mov sb, r3
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r5, r0, #1
	cmp r5, #0xd0
	bne _0806625E
	ldr r2, [r6, #0x30]
	ldrh r0, [r2, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r7, r0, r3
	ldr r0, _080662AC @ =0xFFFFE200
	mov r8, r0
	str r0, [r7, #0x44]
	ldr r1, _080662B0 @ =0xFFFF8800
	mov ip, r1
	str r1, [r7, #0x54]
	movs r0, #0x80
	str r0, [r7, #0x48]
	movs r2, #0
	str r2, [r7, #0x58]
	ldr r3, [r6, #0x34]
	mov sl, r3
	ldrh r0, [r3, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r0, r1
	ldr r3, _080662B4 @ =0xFFFFC400
	str r3, [r7, #0x44]
	ldr r1, _080662B8 @ =0xFFFFA600
	str r1, [r7, #0x54]
	movs r0, #0xa0
	lsls r0, r0, #1
	str r0, [r7, #0x48]
	str r2, [r7, #0x58]
	ldr r4, [r6, #0x38]
	ldrh r7, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r7, r0
	str r1, [r7, #0x44]
	str r3, [r7, #0x54]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r7, #0x48]
	str r2, [r7, #0x58]
	ldr r1, [r6, #0x3c]
	ldrh r0, [r1, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r7, r0, r3
	mov r0, ip
	str r0, [r7, #0x44]
	mov r3, r8
	str r3, [r7, #0x54]
	movs r0, #0xc0
	str r0, [r7, #0x48]
	str r2, [r7, #0x58]
	ldr r0, _080662BC @ =sub_80683D8
	ldr r2, [r6, #0x30]
	str r0, [r2, #8]
	mov r3, sl
	str r0, [r3, #8]
	str r0, [r4, #8]
	str r0, [r1, #8]
_0806625E:
	movs r0, #0x8c
	lsls r0, r0, #1
	cmp r5, r0
	bls _08066282
	movs r5, #0
	ldr r1, [r6, #0x20]
	ldr r0, _080662C0 @ =sub_8066EBC
	str r0, [r1, #8]
	ldr r1, [r6, #0x1c]
	ldr r0, _080662C4 @ =sub_8066F90
	str r0, [r1, #8]
	ldr r1, [r6, #0x18]
	ldr r0, _080662C8 @ =sub_8066DF4
	str r0, [r1, #8]
	ldr r0, _080662A4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080662CC @ =sub_80662D0
	str r0, [r1, #8]
_08066282:
	mov r1, sb
	strh r5, [r1]
	ldr r2, [sp]
	strh r5, [r2, #0x3c]
	ldr r3, [sp, #4]
	strh r5, [r3, #0x3c]
	ldr r0, [sp, #8]
	strh r5, [r0, #0x3c]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080662A4: .4byte gCurTask
_080662A8: .4byte 0x03000040
_080662AC: .4byte 0xFFFFE200
_080662B0: .4byte 0xFFFF8800
_080662B4: .4byte 0xFFFFC400
_080662B8: .4byte 0xFFFFA600
_080662BC: .4byte sub_80683D8
_080662C0: .4byte sub_8066EBC
_080662C4: .4byte sub_8066F90
_080662C8: .4byte sub_8066DF4
_080662CC: .4byte sub_80662D0

	thumb_func_start sub_80662D0
sub_80662D0: @ 0x080662D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08066350 @ =gCurTask
	ldr r0, [r0]
	mov ip, r0
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r3, r2, r1
	ldr r7, [r3, #0x18]
	ldrh r0, [r7, #6]
	adds r0, r0, r1
	mov sl, r0
	ldr r6, [r3, #0x1c]
	ldrh r0, [r6, #6]
	adds r0, r0, r1
	mov sb, r0
	ldr r4, [r3, #0x20]
	ldrh r0, [r4, #6]
	adds r0, r0, r1
	mov r8, r0
	ldr r0, _08066354 @ =0x03000040
	adds r5, r2, r0
	movs r1, #0
	ldrsh r0, [r5, r1]
	adds r2, r0, #1
	cmp r2, #0x10
	bls _08066334
	movs r2, #0
	ldr r0, [r3, #0x30]
	ldr r1, _08066358 @ =sub_8068360
	str r1, [r0, #8]
	ldr r0, [r3, #0x34]
	str r1, [r0, #8]
	ldr r0, [r3, #0x38]
	str r1, [r0, #8]
	ldr r0, [r3, #0x3c]
	str r1, [r0, #8]
	ldr r0, _0806635C @ =sub_80669A0
	str r0, [r4, #8]
	ldr r0, _08066360 @ =sub_8066FDC
	str r0, [r6, #8]
	ldr r0, _08066364 @ =sub_80666E0
	str r0, [r7, #8]
	ldr r0, _08066368 @ =sub_806636C
	mov r1, ip
	str r0, [r1, #8]
_08066334:
	strh r2, [r5]
	mov r0, sl
	strh r2, [r0, #0x3c]
	mov r1, sb
	strh r2, [r1, #0x3c]
	mov r0, r8
	strh r2, [r0, #0x3c]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08066350: .4byte gCurTask
_08066354: .4byte 0x03000040
_08066358: .4byte sub_8068360
_0806635C: .4byte sub_80669A0
_08066360: .4byte sub_8066FDC
_08066364: .4byte sub_80666E0
_08066368: .4byte sub_806636C

	thumb_func_start sub_806636C
sub_806636C: @ 0x0806636C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080663D8 @ =gCurTask
	ldr r6, [r0]
	ldrh r2, [r6, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r2, r1
	ldr r0, [r4, #0x18]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov r8, r0
	ldr r0, [r4, #0x1c]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov ip, r0
	ldr r0, [r4, #0x20]
	ldrh r5, [r0, #6]
	adds r7, r5, r1
	ldr r0, _080663DC @ =0x03000040
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r3, r0, #1
	movs r0, #0xc8
	lsls r0, r0, #1
	cmp r3, r0
	bls _080663B2
	movs r3, #0
	ldr r0, [r4, #0x14]
	ldr r1, _080663E0 @ =sub_8066ACC
	str r1, [r0, #8]
	ldr r0, _080663E4 @ =sub_80663EC
	str r0, [r6, #8]
_080663B2:
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r3, r0
	bne _080663C2
	ldr r0, _080663E8 @ =0x03000050
	adds r1, r5, r0
	movs r0, #1
	strh r0, [r1]
_080663C2:
	strh r3, [r2]
	mov r1, r8
	strh r3, [r1, #0x3c]
	mov r0, ip
	strh r3, [r0, #0x3c]
	strh r3, [r7, #0x3c]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080663D8: .4byte gCurTask
_080663DC: .4byte 0x03000040
_080663E0: .4byte sub_8066ACC
_080663E4: .4byte sub_80663EC
_080663E8: .4byte 0x03000050

	thumb_func_start sub_80663EC
sub_80663EC: @ 0x080663EC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08066464 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r2, r1
	ldr r0, [r4, #0x18]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov r8, r0
	ldr r5, [r4, #0x14]
	ldrh r0, [r5, #6]
	adds r0, r0, r1
	mov ip, r0
	ldr r0, [r4, #0x1c]
	ldrh r0, [r0, #6]
	adds r7, r0, r1
	ldr r0, [r4, #0x20]
	ldrh r0, [r0, #6]
	adds r6, r0, r1
	adds r1, #0x40
	adds r2, r2, r1
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r3, r0, #1
	cmp r3, #0x3c
	bne _08066430
	ldr r0, _08066468 @ =sub_8066BA4
	str r0, [r5, #8]
_08066430:
	cmp r3, #0xc8
	bls _08066444
	movs r3, #0
	ldr r1, [r4, #0xc]
	ldr r0, _0806646C @ =sub_8067054
	str r0, [r1, #8]
	mov r0, sb
	ldr r1, [r0]
	ldr r0, _08066470 @ =sub_8066478
	str r0, [r1, #8]
_08066444:
	strh r3, [r2]
	ldr r1, _08066474 @ =0x000003FF
	adds r0, r3, r1
	mov r1, r8
	strh r0, [r1, #0x3c]
	mov r0, ip
	strh r3, [r0, #0x3c]
	strh r3, [r7, #0x3c]
	strh r3, [r6, #0x3c]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08066464: .4byte gCurTask
_08066468: .4byte sub_8066BA4
_0806646C: .4byte sub_8067054
_08066470: .4byte sub_8066478
_08066474: .4byte 0x000003FF

	thumb_func_start sub_8066478
sub_8066478: @ 0x08066478
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08066504 @ =gCurTask
	ldr r7, [r0]
	ldrh r2, [r7, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r2, r1
	ldr r6, [r4, #0x18]
	ldrh r0, [r6, #6]
	adds r0, r0, r1
	mov sl, r0
	ldr r0, [r4, #0x14]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sb, r0
	ldr r0, [r4, #0x1c]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov r8, r0
	ldr r0, [r4, #0x20]
	ldrh r5, [r0, #6]
	adds r1, r1, r5
	mov ip, r1
	ldr r0, _08066508 @ =0x03000040
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r3, r0, #1
	cmp r3, #0xf0
	bls _080664DA
	movs r3, #0
	ldr r0, [r4, #0x24]
	ldr r1, _0806650C @ =sub_8066D64
	str r1, [r0, #8]
	ldr r0, [r4, #0x28]
	str r1, [r0, #8]
	ldr r0, [r4, #0x2c]
	str r1, [r0, #8]
	ldr r0, _08066510 @ =sub_8066768
	str r0, [r6, #8]
	ldr r1, [r4, #0xc]
	ldr r0, _08066514 @ =sub_8067084
	str r0, [r1, #8]
	ldr r0, _08066518 @ =sub_8066520
	str r0, [r7, #8]
_080664DA:
	cmp r3, #1
	bne _080664E4
	ldr r1, _0806651C @ =0x03000050
	adds r0, r5, r1
	strh r3, [r0]
_080664E4:
	strh r3, [r2]
	mov r0, sl
	strh r3, [r0, #0x3c]
	mov r1, sb
	strh r3, [r1, #0x3c]
	mov r0, r8
	strh r3, [r0, #0x3c]
	mov r1, ip
	strh r3, [r1, #0x3c]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08066504: .4byte gCurTask
_08066508: .4byte 0x03000040
_0806650C: .4byte sub_8066D64
_08066510: .4byte sub_8066768
_08066514: .4byte sub_8067084
_08066518: .4byte sub_8066520
_0806651C: .4byte 0x03000050

	thumb_func_start sub_8066520
sub_8066520: @ 0x08066520
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _080665AC @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r2, r1
	ldr r0, [r4, #0xc]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sl, r0
	ldr r0, [r4, #0x24]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp]
	ldr r0, [r4, #0x28]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [r4, #0x2c]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #8]
	ldr r0, [r4, #0x18]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sb, r0
	ldr r0, [r4, #0x14]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov r8, r0
	ldr r0, [r4, #0x1c]
	ldrh r0, [r0, #6]
	adds r7, r0, r1
	ldr r0, [r4, #0x20]
	ldrh r0, [r0, #6]
	adds r6, r0, r1
	ldr r0, _080665B0 @ =0x03000040
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r5, r0, #1
	movs r0, #0xaf
	lsls r0, r0, #2
	cmp r5, r0
	bls _080665CC
	ldr r1, _080665B4 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080665B8 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080665BC @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080665C0 @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080665C4 @ =gVramGraphicsCopyCursor
	ldr r0, _080665C8 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl CreateStaffCredits
	b _08066614
	.align 2, 0
_080665AC: .4byte gCurTask
_080665B0: .4byte 0x03000040
_080665B4: .4byte 0x0000FFFF
_080665B8: .4byte gBackgroundsCopyQueueCursor
_080665BC: .4byte gBackgroundsCopyQueueIndex
_080665C0: .4byte sa2__gUnknown_03005390
_080665C4: .4byte gVramGraphicsCopyCursor
_080665C8: .4byte gVramGraphicsCopyQueueIndex
_080665CC:
	ldr r0, _08066624 @ =0x0000029D
	cmp r5, r0
	bls _080665F2
	adds r0, #1
	cmp r5, r0
	bne _080665EC
	movs r1, #0
	strh r1, [r4]
	movs r2, #1
	movs r0, #1
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r1, [r4, #6]
	movs r0, #0xc0
	strh r0, [r4, #8]
	strb r2, [r4, #0xa]
_080665EC:
	adds r0, r4, #0
	bl sub_805423C
_080665F2:
	adds r0, r4, #0
	adds r0, #0x40
	strh r5, [r0]
	mov r0, sl
	strh r5, [r0, #0x3c]
	ldr r0, [sp]
	strh r5, [r0, #0x3c]
	ldr r0, [sp, #4]
	strh r5, [r0, #0x3c]
	ldr r0, [sp, #8]
	strh r5, [r0, #0x3c]
	mov r1, sb
	strh r5, [r1, #0x3c]
	mov r0, r8
	strh r5, [r0, #0x3c]
	strh r5, [r7, #0x3c]
	strh r5, [r6, #0x3c]
_08066614:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08066624: .4byte 0x0000029D

	thumb_func_start sub_8066628
sub_8066628: @ 0x08066628
	push {r4, r5, r6, lr}
	ldr r0, _08066644 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
	adds r4, r5, #0
	ldrh r6, [r5, #0x3c]
	cmp r6, #0xf
	bne _0806664C
	ldr r1, _08066648 @ =gUnknown_0868B418
	b _0806665E
	.align 2, 0
_08066644: .4byte gCurTask
_08066648: .4byte gUnknown_0868B418
_0806664C:
	cmp r6, #0x14
	bne _08066658
	ldr r1, _08066654 @ =gUnknown_0868B428
	b _0806665E
	.align 2, 0
_08066654: .4byte gUnknown_0868B428
_08066658:
	cmp r6, #0x1e
	bne _08066686
	ldr r1, _080666C8 @ =gUnknown_0868B438
_0806665E:
	ldr r2, _080666CC @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5, #0xa]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r2, _080666D0 @ =0x03000020
	adds r0, r3, r2
	strb r1, [r0]
	ldr r0, _080666D4 @ =0x03000021
	adds r1, r3, r0
	movs r0, #0xff
	strb r0, [r1]
_08066686:
	cmp r6, #0x14
	bls _080666B6
	ldr r0, [r4, #0x48]
	ldr r1, _080666D8 @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r4, #0x48]
	ldr r1, _080666DC @ =0xFFFFC000
	cmp r0, r1
	bge _0806669A
	str r1, [r4, #0x48]
_0806669A:
	ldr r0, [r4, #0x48]
	asrs r0, r0, #8
	strh r0, [r5, #0x18]
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x44]
	subs r0, r0, r1
	str r0, [r4, #0x40]
	cmp r0, #0
	bge _080666B0
	movs r0, #0
	str r0, [r4, #0x40]
_080666B0:
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	strh r0, [r5, #0x16]
_080666B6:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080666C8: .4byte gUnknown_0868B438
_080666CC: .4byte gSelectedCharacter
_080666D0: .4byte 0x03000020
_080666D4: .4byte 0x03000021
_080666D8: .4byte 0xFFFFF800
_080666DC: .4byte 0xFFFFC000

	thumb_func_start sub_80666E0
sub_80666E0: @ 0x080666E0
	push {r4, r5, r6, lr}
	ldr r0, _08066750 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r5, r0
	adds r6, r3, #0
	ldrh r4, [r3, #0x3c]
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r4, r0
	bne _08066724
	ldr r1, _08066754 @ =gUnknown_0868B448
	ldr r2, _08066758 @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0xa]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r2, _0806675C @ =0x03000020
	adds r0, r5, r2
	strb r1, [r0]
	ldr r0, _08066760 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_08066724:
	ldr r1, _08066764 @ =gSineTable
	movs r0, #0xff
	ands r4, r0
	lsls r0, r4, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	ldr r0, [r6, #0x48]
	adds r0, r0, r1
	str r0, [r6, #0x48]
	asrs r0, r0, #8
	strh r0, [r6, #0x18]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08066750: .4byte gCurTask
_08066754: .4byte gUnknown_0868B448
_08066758: .4byte gSelectedCharacter
_0806675C: .4byte 0x03000020
_08066760: .4byte 0x03000021
_08066764: .4byte gSineTable

	thumb_func_start sub_8066768
sub_8066768: @ 0x08066768
	push {r4, r5, r6, r7, lr}
	ldr r0, _080667B0 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
	adds r6, r5, #0
	adds r0, #0x30
	adds r4, r3, r0
	ldrh r7, [r5, #0x3c]
	cmp r7, #1
	bne _080667C4
	ldr r1, _080667B4 @ =gUnknown_0868B458
	ldr r2, _080667B8 @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5, #0xa]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r2, _080667BC @ =0x03000020
	adds r0, r3, r2
	strb r1, [r0]
	ldr r0, _080667C0 @ =0x03000021
	adds r1, r3, r0
	movs r0, #0xff
	strb r0, [r1]
	b _080667F6
	.align 2, 0
_080667B0: .4byte gCurTask
_080667B4: .4byte gUnknown_0868B458
_080667B8: .4byte gSelectedCharacter
_080667BC: .4byte 0x03000020
_080667C0: .4byte 0x03000021
_080667C4:
	cmp r7, #0xf0
	bne _080667F6
	ldr r1, _08066850 @ =gUnknown_0868B468
	ldr r2, _08066854 @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5, #0xa]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r2, _08066858 @ =0x03000020
	adds r0, r3, r2
	strb r1, [r0]
	ldr r0, _0806685C @ =0x03000021
	adds r1, r3, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08066860 @ =0xFFFFFC00
	str r0, [r5, #0x4c]
_080667F6:
	ldr r0, _08066864 @ =0x0000012B
	cmp r7, r0
	bls _0806686C
	adds r0, #1
	cmp r7, r0
	bne _08066846
	ldr r1, _08066868 @ =gUnknown_0868B478
	ldr r2, _08066854 @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r3, #0
	strh r0, [r5, #0xa]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	strh r3, [r4]
	movs r0, #0xe0
	lsls r0, r0, #3
	movs r1, #0xa
	bl Div
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	ldrh r0, [r5, #0x16]
	strh r0, [r4, #6]
	ldrh r0, [r5, #0x18]
	strh r0, [r4, #8]
_08066846:
	ldr r1, [r6, #0x4c]
	adds r1, #0x1e
	str r1, [r6, #0x4c]
	b _0806687C
	.align 2, 0
_08066850: .4byte gUnknown_0868B468
_08066854: .4byte gSelectedCharacter
_08066858: .4byte 0x03000020
_0806685C: .4byte 0x03000021
_08066860: .4byte 0xFFFFFC00
_08066864: .4byte 0x0000012B
_08066868: .4byte gUnknown_0868B478
_0806686C:
	ldr r1, _080668C0 @ =gSineTable
	movs r0, #0xff
	ands r0, r7
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
_0806687C:
	ldr r0, [r6, #0x48]
	adds r0, r0, r1
	str r0, [r6, #0x48]
	ldr r0, [r6, #0x48]
	asrs r0, r0, #8
	strh r0, [r5, #0x18]
	ldr r0, _080668C4 @ =0x0000012B
	cmp r7, r0
	bhi _08066890
	b _08066980
_08066890:
	adds r0, #1
	cmp r7, r0
	bne _080668D0
	ldr r3, _080668C8 @ =gUnknown_0868B488
	ldr r2, _080668CC @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldrh r0, [r4, #6]
	subs r0, r0, r1
	strh r0, [r4, #6]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldrh r0, [r5, #0x18]
	subs r0, r0, r1
	b _0806693E
	.align 2, 0
_080668C0: .4byte gSineTable
_080668C4: .4byte 0x0000012B
_080668C8: .4byte gUnknown_0868B488
_080668CC: .4byte gSelectedCharacter
_080668D0:
	ldr r0, _08066910 @ =0x0000012D
	cmp r7, r0
	bne _08066920
	ldr r2, _08066914 @ =gUnknown_0868B488
	ldr r3, _08066918 @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #1
	adds r2, #8
	adds r0, r0, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldr r0, _0806691C @ =gSineTable
	adds r0, #0x58
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldrh r0, [r4, #6]
	adds r1, r1, r0
	strh r1, [r4, #6]
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r5, #0x18]
	adds r0, r0, r1
	b _0806693E
	.align 2, 0
_08066910: .4byte 0x0000012D
_08066914: .4byte gUnknown_0868B488
_08066918: .4byte gSelectedCharacter
_0806691C: .4byte gSineTable
_08066920:
	ldr r2, _08066974 @ =gSineTable
	ldr r0, _08066978 @ =0xFFFFFED4
	adds r1, r7, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	ldrh r1, [r4, #6]
	adds r0, r0, r1
	strh r0, [r4, #6]
	ldrh r0, [r5, #0x18]
_0806693E:
	strh r0, [r4, #8]
	ldrh r0, [r4, #2]
	adds r0, #4
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #1
	cmp r0, r1
	ble _08066954
	strh r1, [r4, #2]
_08066954:
	ldrh r0, [r4, #4]
	adds r0, #4
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	ble _08066964
	strh r1, [r4, #4]
_08066964:
	ldr r0, _0806697C @ =0x00001061
	str r0, [r5, #0x10]
	adds r0, r5, #0
	adds r1, r4, #0
	bl TransformSprite
	b _08066986
	.align 2, 0
_08066974: .4byte gSineTable
_08066978: .4byte 0xFFFFFED4
_0806697C: .4byte 0x00001061
_08066980:
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r5, #0x10]
_08066986:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	movs r0, #0xb4
	lsls r0, r0, #1
	cmp r7, r0
	bhi _0806699A
	adds r0, r5, #0
	bl DisplaySprite
_0806699A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80669A0
sub_80669A0: @ 0x080669A0
	push {r4, r5, r6, r7, lr}
	ldr r0, _080669CC @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	mov ip, r5
	ldrh r6, [r5, #0x3c]
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r6, r0
	bne _080669D8
	ldr r0, _080669D0 @ =0x03000050
	adds r7, r4, r0
	movs r1, #0
	ldrsh r0, [r7, r1]
	cmp r0, #0
	beq _08066A16
	ldr r1, _080669D4 @ =gUnknown_0868B408
	b _080669EA
	.align 2, 0
_080669CC: .4byte gCurTask
_080669D0: .4byte 0x03000050
_080669D4: .4byte gUnknown_0868B408
_080669D8:
	cmp r6, #1
	bne _08066A16
	ldr r1, _08066A44 @ =0x03000050
	adds r7, r4, r1
	movs r2, #0
	ldrsh r0, [r7, r2]
	cmp r0, #0
	beq _08066A16
	ldr r1, _08066A48 @ =gUnknown_0868B3F8
_080669EA:
	ldr r2, _08066A4C @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r3, #0
	strh r0, [r5, #0xa]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r2, _08066A50 @ =0x03000020
	adds r0, r4, r2
	strb r1, [r0]
	ldr r0, _08066A54 @ =0x03000021
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	strh r3, [r7]
_08066A16:
	ldr r1, _08066A58 @ =gSineTable
	movs r0, #0xff
	ands r6, r0
	lsls r0, r6, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	mov r2, ip
	ldr r0, [r2, #0x48]
	adds r0, r0, r1
	str r0, [r2, #0x48]
	asrs r0, r0, #8
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08066A44: .4byte 0x03000050
_08066A48: .4byte gUnknown_0868B3F8
_08066A4C: .4byte gSelectedCharacter
_08066A50: .4byte 0x03000020
_08066A54: .4byte 0x03000021
_08066A58: .4byte gSineTable

	thumb_func_start sub_8066A5C
sub_8066A5C: @ 0x08066A5C
	push {r4, r5, lr}
	ldr r0, _08066AB8 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r5, r0
	ldrh r1, [r0, #0x3c]
	ldr r0, _08066ABC @ =0x0300015C
	adds r4, r5, r0
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x3f
	ble _08066A82
	movs r0, #0
	strb r0, [r4]
_08066A82:
	adds r0, r1, #0
	movs r1, #0x40
	bl Mod
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #1
	ldr r2, _08066AC0 @ =0x03000050
	adds r3, r5, r2
	adds r3, r3, r1
	ldr r1, _08066AC4 @ =gSineTable
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrh r2, [r0]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x1a
	strh r2, [r3]
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #1
	ldr r3, _08066AC8 @ =0x030000D6
	adds r0, r5, r3
	adds r0, r0, r1
	strh r2, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08066AB8: .4byte gCurTask
_08066ABC: .4byte 0x0300015C
_08066AC0: .4byte 0x03000050
_08066AC4: .4byte gSineTable
_08066AC8: .4byte 0x030000D6

	thumb_func_start sub_8066ACC
sub_8066ACC: @ 0x08066ACC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08066B8C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	mov sl, r6
	ldrh r7, [r6, #0x3c]
	ldr r0, _08066B90 @ =0x0300015C
	adds r5, r4, r0
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x3f
	ble _08066AFC
	movs r0, #0
	strb r0, [r5]
_08066AFC:
	adds r0, r7, #0
	movs r1, #0x40
	bl Mod
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #1
	ldr r3, _08066B94 @ =0x03000050
	adds r2, r4, r3
	adds r2, r2, r1
	ldr r1, _08066B98 @ =gSineTable
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x1a
	strh r1, [r2]
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #1
	ldr r2, _08066B9C @ =0x030000D6
	adds r4, r4, r2
	adds r0, r4, r0
	strh r1, [r0]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	movs r5, #0
	mov r8, r4
	ldr r4, _08066BA0 @ =gUnknown_0868B498
	adds r3, r4, #1
	mov sb, r3
_08066B3C:
	lsls r2, r5, #1
	adds r0, r2, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #0xf8
	subs r0, r0, r7
	strh r0, [r6, #0x16]
	movs r1, #0xae
	lsls r1, r1, #1
	add r1, sl
	lsls r0, r5, #3
	ldrb r1, [r1]
	adds r0, r0, r1
	movs r1, #0x3f
	ands r0, r1
	add r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	adds r0, #0x50
	adds r1, r1, r0
	strh r1, [r6, #0x18]
	adds r0, r6, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _08066B3C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08066B8C: .4byte gCurTask
_08066B90: .4byte 0x0300015C
_08066B94: .4byte 0x03000050
_08066B98: .4byte gSineTable
_08066B9C: .4byte 0x030000D6
_08066BA0: .4byte gUnknown_0868B498

	thumb_func_start sub_8066BA4
sub_8066BA4: @ 0x08066BA4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08066C60 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	mov sb, r6
	ldrh r1, [r6, #0x3c]
	ldr r0, _08066C64 @ =0x0300015C
	adds r5, r4, r0
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x3f
	ble _08066BD2
	movs r0, #0
	strb r0, [r5]
_08066BD2:
	adds r0, r1, #0
	movs r1, #0x40
	bl Mod
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #1
	ldr r3, _08066C68 @ =0x03000050
	adds r2, r4, r3
	adds r2, r2, r1
	ldr r1, _08066C6C @ =gSineTable
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x1a
	strh r1, [r2]
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #1
	ldr r2, _08066C70 @ =0x030000D6
	adds r4, r4, r2
	adds r0, r4, r0
	strh r1, [r0]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	movs r5, #0
	adds r7, r4, #0
	ldr r4, _08066C74 @ =gUnknown_0868B498
	adds r3, r4, #1
	mov r8, r3
_08066C12:
	lsls r2, r5, #1
	adds r0, r2, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #0xbc
	strh r0, [r6, #0x16]
	movs r1, #0xae
	lsls r1, r1, #1
	add r1, sb
	lsls r0, r5, #3
	ldrb r1, [r1]
	adds r0, r0, r1
	movs r1, #0x3f
	ands r0, r1
	add r2, r8
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r0, r0, #1
	adds r0, r7, r0
	ldrh r0, [r0]
	adds r0, #0x50
	adds r1, r1, r0
	strh r1, [r6, #0x18]
	adds r0, r6, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _08066C12
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08066C60: .4byte gCurTask
_08066C64: .4byte 0x0300015C
_08066C68: .4byte 0x03000050
_08066C6C: .4byte gSineTable
_08066C70: .4byte 0x030000D6
_08066C74: .4byte gUnknown_0868B498

	thumb_func_start sub_8066C78
sub_8066C78: @ 0x08066C78
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08066CDC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r7, r6, #0
	ldrh r0, [r6, #0x3c]
	adds r0, #1
	strh r0, [r6, #0x3c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, _08066CE0 @ =0x03000021
	adds r1, r1, r0
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	movs r1, #0
	mov r8, r1
	ldr r0, _08066CE4 @ =gPseudoRandom
	mov sb, r0
	ldr r1, _08066CE8 @ =0x3C6EF35F
	mov sl, r1
_08066CB8:
	ldr r0, [sp]
	add r0, r8
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08066CEC
	mov r0, r8
	lsls r2, r0, #1
	adds r3, r7, #0
	adds r3, #0xd6
	adds r1, r3, r2
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	adds r4, r2, #0
	adds r2, r7, #0
	adds r2, #0x50
	b _08066D2E
	.align 2, 0
_08066CDC: .4byte gCurTask
_08066CE0: .4byte 0x03000021
_08066CE4: .4byte gPseudoRandom
_08066CE8: .4byte 0x3C6EF35F
_08066CEC:
	mov r1, sb
	ldr r0, [r1]
	ldr r1, _08066D60 @ =0x00196225
	muls r0, r1, r0
	add r0, sl
	mov r1, sb
	str r0, [r1]
	movs r1, #0x28
	bl Mod
	mov r1, r8
	lsls r4, r1, #1
	adds r5, r7, #0
	adds r5, #0xd6
	adds r1, r5, r4
	adds r0, #0x8c
	strh r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	ldr r1, _08066D60 @ =0x00196225
	muls r0, r1, r0
	add r0, sl
	mov r1, sb
	str r0, [r1]
	movs r1, #0xdc
	bl Mod
	adds r2, r7, #0
	adds r2, #0x50
	adds r1, r2, r4
	adds r0, #0x14
	strh r0, [r1]
	adds r3, r5, #0
_08066D2E:
	adds r0, r2, r4
	ldrh r0, [r0]
	strh r0, [r6, #0x16]
	adds r0, r3, r4
	ldrh r0, [r0]
	strh r0, [r6, #0x18]
	adds r0, r6, #0
	bl DisplaySprite
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #0xe
	bls _08066CB8
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08066D60: .4byte 0x00196225

	thumb_func_start sub_8066D64
sub_8066D64: @ 0x08066D64
	push {r4, r5, lr}
	ldr r0, _08066DBC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r5, r3, #0
	ldrh r2, [r3, #0x3c]
	ldr r0, _08066DC0 @ =gUnknown_0868B4BE
	ldr r1, [r3, #0x44]
	lsls r4, r1, #1
	adds r0, r4, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r2, r0
	bls _08066DB6
	subs r2, r2, r0
	lsls r1, r2, #1
	adds r1, r1, r2
	movs r0, #0x78
	strh r0, [r3, #0x16]
	movs r0, #0xb4
	subs r0, r0, r1
	strh r0, [r3, #0x18]
	ldr r1, _08066DC4 @ =gUnknown_0868B4B8
	adds r1, r4, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r1, [r1, r4]
	cmp r0, r1
	bge _08066DAA
	strh r2, [r3, #0x18]
_08066DAA:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_08066DB6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08066DBC: .4byte gCurTask
_08066DC0: .4byte gUnknown_0868B4BE
_08066DC4: .4byte gUnknown_0868B4B8

	thumb_func_start sub_8066DC8
sub_8066DC8: @ 0x08066DC8
	bx lr
	.align 2, 0

	thumb_func_start sub_8066DCC
sub_8066DCC: @ 0x08066DCC
	bx lr
	.align 2, 0

	thumb_func_start sub_8066DD0
sub_8066DD0: @ 0x08066DD0
	push {r4, lr}
	ldr r0, _08066DF0 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08066DF0: .4byte gCurTask

	thumb_func_start sub_8066DF4
sub_8066DF4: @ 0x08066DF4
	push {r4, lr}
	ldr r0, _08066E30 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x44]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	asrs r0, r0, #8
	subs r0, #0x14
	strh r0, [r4, #0x16]
	ldr r0, [r4, #0x48]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r4, #0x48]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08066E30: .4byte gCurTask

	thumb_func_start sub_8066E34
sub_8066E34: @ 0x08066E34
	push {r4, lr}
	ldr r0, _08066E54 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08066E54: .4byte gCurTask

	thumb_func_start sub_8066E58
sub_8066E58: @ 0x08066E58
	bx lr
	.align 2, 0

	thumb_func_start sub_8066E5C
sub_8066E5C: @ 0x08066E5C
	push {r4, lr}
	ldr r0, _08066EB0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r2, [r4, #0x3c]
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x44]
	subs r0, r0, r1
	str r0, [r4, #0x40]
	cmp r0, #0
	bge _08066E7C
	movs r0, #0
	str r0, [r4, #0x40]
_08066E7C:
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	cmp r2, #0x14
	bls _08066E9C
	ldr r0, [r4, #0x48]
	ldr r1, _08066EB4 @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r4, #0x48]
	ldr r1, _08066EB8 @ =0xFFFFE200
	cmp r0, r1
	bge _08066E96
	str r1, [r4, #0x48]
_08066E96:
	ldr r0, [r4, #0x48]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
_08066E9C:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08066EB0: .4byte gCurTask
_08066EB4: .4byte 0xFFFFF800
_08066EB8: .4byte 0xFFFFE200

	thumb_func_start sub_8066EBC
sub_8066EBC: @ 0x08066EBC
	push {r4, lr}
	ldr r0, _08066F0C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	adds r4, r2, #0
	ldr r0, [r2, #0x40]
	ldr r1, [r2, #0x44]
	adds r0, r0, r1
	str r0, [r2, #0x40]
	cmp r0, #0
	bge _08066EDC
	movs r0, #0
	str r0, [r2, #0x40]
_08066EDC:
	ldr r0, [r2, #0x40]
	asrs r0, r0, #8
	strh r0, [r2, #0x16]
	ldr r0, [r2, #0x48]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r2, #0x48]
	ldr r1, _08066F10 @ =0xFFFFE200
	cmp r0, r1
	bge _08066EF4
	str r1, [r2, #0x48]
_08066EF4:
	ldr r0, [r4, #0x48]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08066F0C: .4byte gCurTask
_08066F10: .4byte 0xFFFFE200

	thumb_func_start sub_8066F14
sub_8066F14: @ 0x08066F14
	push {lr}
	ldr r0, _08066F2C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	bl UpdateSpriteAnimation
	pop {r0}
	bx r0
	.align 2, 0
_08066F2C: .4byte gCurTask

	thumb_func_start sub_8066F30
sub_8066F30: @ 0x08066F30
	push {r4, lr}
	ldr r0, _08066F84 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r2, [r4, #0x3c]
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x44]
	subs r0, r0, r1
	str r0, [r4, #0x40]
	cmp r0, #0
	bge _08066F50
	movs r0, #0
	str r0, [r4, #0x40]
_08066F50:
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	cmp r2, #0x14
	bls _08066F70
	ldr r0, [r4, #0x48]
	ldr r1, _08066F88 @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r4, #0x48]
	ldr r1, _08066F8C @ =0xFFFFE200
	cmp r0, r1
	bge _08066F6A
	str r1, [r4, #0x48]
_08066F6A:
	ldr r0, [r4, #0x48]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
_08066F70:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08066F84: .4byte gCurTask
_08066F88: .4byte 0xFFFFF800
_08066F8C: .4byte 0xFFFFE200

	thumb_func_start sub_8066F90
sub_8066F90: @ 0x08066F90
	push {r4, lr}
	ldr r0, _08066FD8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	adds r4, r2, #0
	ldr r0, [r2, #0x40]
	ldr r1, [r2, #0x44]
	adds r0, r0, r1
	str r0, [r2, #0x40]
	cmp r0, #0
	bge _08066FB0
	movs r0, #0
	str r0, [r2, #0x40]
_08066FB0:
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	ldr r0, [r4, #0x48]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r4, #0x48]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08066FD8: .4byte gCurTask

	thumb_func_start sub_8066FDC
sub_8066FDC: @ 0x08066FDC
	push {r4, lr}
	ldr r0, _08067018 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldrh r0, [r4, #0x3c]
	ldr r2, _0806701C @ =gSineTable
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	ldr r0, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x48]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08067018: .4byte gCurTask
_0806701C: .4byte gSineTable

	thumb_func_start sub_8067020
sub_8067020: @ 0x08067020
	push {lr}
	ldr r0, _08067048 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldrh r0, [r0, #0x3c]
	movs r1, #2
	bl Mod
	cmp r0, #0
	bne _08067042
	ldr r1, _0806704C @ =gBgScrollRegs
	ldrh r0, [r1, #2]
	adds r0, #1
	strh r0, [r1, #2]
_08067042:
	pop {r0}
	bx r0
	.align 2, 0
_08067048: .4byte gCurTask
_0806704C: .4byte gBgScrollRegs

	thumb_func_start sub_8067050
sub_8067050: @ 0x08067050
	bx lr
	.align 2, 0

	thumb_func_start sub_8067054
sub_8067054: @ 0x08067054
	push {r4, lr}
	ldr r0, _0806707C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r0, r4
	ldr r1, _08067080 @ =0x03000021
	adds r0, r0, r1
	movs r1, #0xff
	strb r1, [r0]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806707C: .4byte gCurTask
_08067080: .4byte 0x03000021

	thumb_func_start sub_8067084
sub_8067084: @ 0x08067084
	push {r4, r5, lr}
	ldr r0, _080670E0 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r4, r0
	adds r5, r3, #0
	ldrh r1, [r3, #0x3c]
	ldr r0, _080670E4 @ =0x00000167
	cmp r1, r0
	bls _080670D8
	adds r0, #1
	cmp r1, r0
	bne _080670CC
	ldr r1, _080670E8 @ =gUnknown_0868B4A8
	ldr r2, _080670EC @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0xa]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r2, _080670F0 @ =0x03000020
	adds r0, r4, r2
	strb r1, [r0]
	ldr r0, _080670F4 @ =0x03000021
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
_080670CC:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_080670D8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080670E0: .4byte gCurTask
_080670E4: .4byte 0x00000167
_080670E8: .4byte gUnknown_0868B4A8
_080670EC: .4byte gSelectedCharacter
_080670F0: .4byte 0x03000020
_080670F4: .4byte 0x03000021

	thumb_func_start CreateExtraStageResults
CreateExtraStageResults: @ 0x080670F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x74
	ldr r1, _08067470 @ =gLoadedSaveGame
	movs r5, #0
	movs r0, #0xf
	strh r0, [r1, #8]
	ldr r0, _08067474 @ =0x00000424
	adds r1, r1, r0
	movs r2, #1
	strb r2, [r1]
	bl m4aMPlayAllStop
	bl m4aSoundVSyncOff
	ldr r7, _08067478 @ =gFlags
	ldr r1, [r7]
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r1, r0
	ldr r3, _0806747C @ =0x04000200
	ldrh r0, [r3]
	str r0, [sp, #0x50]
	ldr r4, _08067480 @ =0x04000208
	mov r8, r4
	ldrh r0, [r4]
	str r0, [sp, #0x54]
	ldr r0, _08067484 @ =0x04000004
	ldrh r0, [r0]
	add r2, sp, #0x5c
	strh r0, [r2]
	adds r3, r0, #0
	str r3, [sp, #0x58]
	subs r4, #8
	strh r5, [r4]
	ldrh r0, [r4]
	mov r0, r8
	strh r5, [r0]
	ldrh r0, [r0]
	ldr r2, _08067484 @ =0x04000004
	strh r5, [r2]
	ldrh r0, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r7]
	ldr r1, _08067488 @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r4, _0806748C @ =0x0000C5FF
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r3, _08067490 @ =0x00007FFF
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
	ldr r0, _08067494 @ =0x040000D4
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
	add r3, sp, #0x50
	ldrh r4, [r3]
	ldr r3, _0806747C @ =0x04000200
	strh r4, [r3]
	ldrh r0, [r3]
	add r4, sp, #0x54
	ldrh r0, [r4]
	mov r4, r8
	strh r0, [r4]
	ldrh r0, [r4]
	add r0, sp, #0x58
	ldrh r1, [r0]
	ldr r0, _08067484 @ =0x04000004
	strh r1, [r0]
	ldrh r0, [r0]
	bl m4aSoundVSyncOn
	ldr r0, [r7]
	ldr r1, _08067498 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r7]
	ldr r1, _0806749C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080674A0 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080674A4 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080674A8 @ =sa2__gUnknown_03005390
	movs r1, #0
	strb r1, [r0]
	ldr r1, _080674AC @ =gVramGraphicsCopyCursor
	ldr r0, _080674B0 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl sub_80535FC
	bl sub_8053674
	ldr r1, _080674B4 @ =gDispCnt
	movs r2, #0xba
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _080674B8 @ =gBgCntRegs
	ldr r0, _080674BC @ =0x00008583
	strh r0, [r1]
	ldr r0, _080674C0 @ =0x00009E86
	strh r0, [r1, #2]
	ldr r0, _080674C4 @ =0x00009B89
	strh r0, [r1, #4]
	ldr r0, _080674C8 @ =gBgScrollRegs
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	strh r5, [r0, #0xa]
	ldr r0, _080674CC @ =sub_8068628
	str r5, [sp]
	movs r1, #0x64
	ldr r2, _080674D0 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0x44]
	ldrh r2, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	mov r8, r3
	adds r4, r2, #0
	add r4, r8
	mov ip, r4
	str r5, [r4, #0x3c]
	movs r3, #0xa0
	lsls r3, r3, #8
	str r3, [r4, #0x44]
	ldr r1, _080674D4 @ =0xFFFFE000
	str r1, [r4, #0x54]
	ldr r0, _080674D8 @ =0x06012560
	str r0, [r4, #4]
	movs r0, #0xb7
	lsls r0, r0, #2
	strh r0, [r4, #0xa]
	ldr r4, _080674DC @ =0x03000020
	adds r0, r2, r4
	movs r4, #0
	strb r4, [r0]
	mov r0, ip
	strh r3, [r0, #0x16]
	strh r1, [r0, #0x18]
	movs r1, #0xc0
	strh r1, [r0, #0x1a]
	strh r5, [r0, #8]
	strh r5, [r0, #0x14]
	strh r5, [r0, #0x1c]
	ldr r3, _080674E0 @ =0x03000021
	adds r1, r2, r3
	movs r0, #0xff
	strb r0, [r1]
	ldr r4, _080674E4 @ =0x03000022
	adds r0, r2, r4
	movs r7, #0x10
	strb r7, [r0]
	ldr r0, _080674E8 @ =0x03000025
	adds r2, r2, r0
	movs r1, #0
	strb r1, [r2]
	movs r2, #1
	rsbs r2, r2, #0
	mov r3, ip
	str r2, [r3, #0x28]
	movs r4, #0x80
	lsls r4, r4, #5
	str r4, [r3, #0x10]
	ldr r0, _080674EC @ =sub_8068620
	str r5, [sp]
	movs r1, #0x64
	ldr r2, _080674D0 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0x4c]
	ldrh r2, [r0, #6]
	adds r0, r2, #0
	add r0, r8
	mov ip, r0
	str r5, [r0, #0x3c]
	movs r1, #0xf0
	lsls r1, r1, #7
	mov sb, r1
	str r1, [r0, #0x44]
	movs r3, #0xb4
	lsls r3, r3, #7
	mov sl, r3
	str r3, [r0, #0x54]
	ldr r0, _080674F0 @ =0x06010440
	mov r4, ip
	str r0, [r4, #4]
	ldr r0, _080674F4 @ =0x00000325
	strh r0, [r4, #0xa]
	ldr r1, _080674DC @ =0x03000020
	adds r0, r2, r1
	movs r3, #1
	strb r3, [r0]
	movs r0, #0x78
	strh r0, [r4, #0x16]
	movs r4, #0x50
	mov r1, ip
	strh r4, [r1, #0x18]
	movs r3, #0xc0
	strh r3, [r1, #0x1a]
	strh r5, [r1, #8]
	strh r5, [r1, #0x14]
	strh r5, [r1, #0x1c]
	ldr r0, _080674E0 @ =0x03000021
	adds r1, r2, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _080674E4 @ =0x03000022
	adds r0, r2, r1
	strb r7, [r0]
	ldr r3, _080674E8 @ =0x03000025
	adds r2, r2, r3
	movs r0, #0
	strb r0, [r2]
	movs r1, #1
	rsbs r1, r1, #0
	mov r2, ip
	str r1, [r2, #0x28]
	str r5, [r2, #0x10]
	ldr r0, _080674F8 @ =sub_8068624
	str r5, [sp]
	movs r1, #0x64
	ldr r2, _080674D0 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0x48]
	ldrh r1, [r0, #6]
	adds r3, r1, #0
	add r3, r8
	mov ip, r3
	str r5, [r3, #0x3c]
	mov r0, sb
	str r0, [r3, #0x44]
	mov r2, sl
	str r2, [r3, #0x54]
	ldr r0, _080674FC @ =0x06010560
	str r0, [r3, #4]
	movs r0, #0xb8
	lsls r0, r0, #2
	strh r0, [r3, #0xa]
	ldr r3, _080674DC @ =0x03000020
	adds r0, r1, r3
	movs r2, #0
	strb r2, [r0]
	movs r0, #0x78
	mov r3, ip
	strh r0, [r3, #0x16]
	strh r4, [r3, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r3, #0x1a]
	strh r5, [r3, #8]
	strh r5, [r3, #0x14]
	strh r5, [r3, #0x1c]
	ldr r3, _080674E0 @ =0x03000021
	adds r2, r1, r3
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r2]
	ldr r2, _080674E4 @ =0x03000022
	adds r0, r1, r2
	strb r7, [r0]
	adds r3, #4
	adds r1, r1, r3
	movs r0, #0
	strb r0, [r1]
	movs r1, #1
	rsbs r1, r1, #0
	mov r2, ip
	str r1, [r2, #0x28]
	movs r3, #0x80
	lsls r3, r3, #5
	str r3, [r2, #0x10]
	ldr r0, _08067500 @ =sub_806806C
	str r5, [sp]
	movs r1, #0x64
	ldr r2, _080674D0 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	mov sb, r0
	ldrh r2, [r0, #6]
	adds r0, r2, #0
	add r0, r8
	mov ip, r0
	str r5, [r0, #0x3c]
	movs r0, #0x69
	mov r1, ip
	str r0, [r1, #0x44]
	movs r0, #0x11
	str r0, [r1, #0x54]
	movs r0, #0x2f
	str r0, [r1, #0x48]
	movs r1, #0x5f
	mov r3, ip
	str r1, [r3, #0x58]
	movs r0, #0xd5
	str r0, [r3, #0x4c]
	movs r0, #0x45
	str r0, [r3, #0x5c]
	movs r0, #0xa8
	str r0, [r3, #0x50]
	str r1, [r3, #0x60]
	ldr r0, _08067504 @ =0x06010020
	str r0, [r3, #4]
	ldr r0, _08067508 @ =0x000002DB
	strh r0, [r3, #0xa]
	ldr r1, _080674DC @ =0x03000020
	adds r0, r2, r1
	movs r3, #0
	strb r3, [r0]
	movs r1, #0x78
	mov r0, ip
	strh r1, [r0, #0x16]
	strh r4, [r0, #0x18]
	movs r0, #0xf0
	lsls r0, r0, #2
	mov r3, ip
	strh r0, [r3, #0x1a]
	strh r5, [r3, #8]
	strh r5, [r3, #0x14]
	strh r5, [r3, #0x1c]
	ldr r4, _080674E0 @ =0x03000021
	adds r1, r2, r4
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _080674E4 @ =0x03000022
	adds r0, r2, r1
	strb r7, [r0]
	ldr r3, _080674E8 @ =0x03000025
	adds r2, r2, r3
	movs r4, #0
	strb r4, [r2]
	movs r0, #1
	rsbs r0, r0, #0
	mov r1, ip
	str r0, [r1, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r1, #0x10]
	add r7, sp, #0x14
	mov r2, sp
	adds r2, #0x40
	str r2, [sp, #0x70]
	mov r3, sp
	adds r3, #0x3f
	str r3, [sp, #0x6c]
	mov r4, sp
	adds r4, #0x3c
	str r4, [sp, #0x60]
	mov r0, sp
	adds r0, #0x3d
	str r0, [sp, #0x64]
	mov r1, sp
	adds r1, #0x3e
	str r1, [sp, #0x68]
	movs r4, #0
_08067430:
	str r4, [sp]
	ldr r0, _0806750C @ =sub_8068448
	movs r1, #0x64
	ldr r2, _080674D0 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	lsls r1, r5, #2
	add r1, sp
	adds r1, #4
	str r0, [r1]
	ldrh r1, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r2, r1
	mov ip, r2
	str r4, [r2, #0x3c]
	cmp r5, #0
	bne _08067518
	movs r0, #0xc8
	lsls r0, r0, #6
	str r0, [r2, #0x54]
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r2, #0x44]
	movs r0, #0x80
	str r0, [r2, #0x48]
	str r5, [r2, #0x58]
	ldr r0, _08067510 @ =0x06016060
	str r0, [r2, #4]
	ldr r0, _08067514 @ =0x00000316
	b _0806757E
	.align 2, 0
_08067470: .4byte gLoadedSaveGame
_08067474: .4byte 0x00000424
_08067478: .4byte gFlags
_0806747C: .4byte 0x04000200
_08067480: .4byte 0x04000208
_08067484: .4byte 0x04000004
_08067488: .4byte 0x040000B0
_0806748C: .4byte 0x0000C5FF
_08067490: .4byte 0x00007FFF
_08067494: .4byte 0x040000D4
_08067498: .4byte 0xFFFF7FFF
_0806749C: .4byte 0x0000FFFF
_080674A0: .4byte gBackgroundsCopyQueueCursor
_080674A4: .4byte gBackgroundsCopyQueueIndex
_080674A8: .4byte sa2__gUnknown_03005390
_080674AC: .4byte gVramGraphicsCopyCursor
_080674B0: .4byte gVramGraphicsCopyQueueIndex
_080674B4: .4byte gDispCnt
_080674B8: .4byte gBgCntRegs
_080674BC: .4byte 0x00008583
_080674C0: .4byte 0x00009E86
_080674C4: .4byte 0x00009B89
_080674C8: .4byte gBgScrollRegs
_080674CC: .4byte sub_8068628
_080674D0: .4byte 0x00002120
_080674D4: .4byte 0xFFFFE000
_080674D8: .4byte 0x06012560
_080674DC: .4byte 0x03000020
_080674E0: .4byte 0x03000021
_080674E4: .4byte 0x03000022
_080674E8: .4byte 0x03000025
_080674EC: .4byte sub_8068620
_080674F0: .4byte 0x06010440
_080674F4: .4byte 0x00000325
_080674F8: .4byte sub_8068624
_080674FC: .4byte 0x06010560
_08067500: .4byte sub_806806C
_08067504: .4byte 0x06010020
_08067508: .4byte 0x000002DB
_0806750C: .4byte sub_8068448
_08067510: .4byte 0x06016060
_08067514: .4byte 0x00000316
_08067518:
	cmp r5, #1
	bne _08067540
	movs r0, #0xc8
	lsls r0, r0, #7
	mov r2, ip
	str r0, [r2, #0x54]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r2, #0x44]
	movs r0, #0x40
	str r0, [r2, #0x48]
	str r4, [r2, #0x58]
	ldr r0, _08067538 @ =0x060161A0
	str r0, [r2, #4]
	ldr r0, _0806753C @ =0x00000317
	b _0806757E
	.align 2, 0
_08067538: .4byte 0x060161A0
_0806753C: .4byte 0x00000317
_08067540:
	cmp r5, #2
	bne _08067564
	movs r0, #0xf0
	lsls r0, r0, #7
	mov r2, ip
	str r0, [r2, #0x54]
	str r0, [r2, #0x44]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r2, #0x48]
	str r4, [r2, #0x58]
	ldr r0, _08067560 @ =0x06016440
	str r0, [r2, #4]
	movs r0, #0xc6
	lsls r0, r0, #2
	b _0806757E
	.align 2, 0
_08067560: .4byte 0x06016440
_08067564:
	movs r0, #0xa0
	lsls r0, r0, #5
	mov r2, ip
	str r0, [r2, #0x54]
	movs r0, #0xa0
	lsls r0, r0, #8
	str r0, [r2, #0x44]
	movs r0, #0xc0
	str r0, [r2, #0x48]
	str r4, [r2, #0x58]
	ldr r0, _08067608 @ =0x060170A0
	str r0, [r2, #4]
	ldr r0, _0806760C @ =0x00000319
_0806757E:
	strh r0, [r2, #0xa]
	ldr r3, _08067610 @ =0x03000020
	adds r0, r1, r3
	strb r4, [r0]
	movs r0, #0xb4
	mov r1, ip
	strh r0, [r1, #0x16]
	movs r0, #0x50
	strh r0, [r1, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1, #0x1a]
	strh r4, [r1, #8]
	strh r4, [r1, #0x14]
	strh r4, [r1, #0x1c]
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x25
	strb r4, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	mov r2, ip
	str r0, [r2, #0x28]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r2, #0x10]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bhi _080675C8
	b _08067430
_080675C8:
	ldr r0, _08067614 @ =sub_8067F38
	ldr r2, _08067618 @ =0x00002120
	movs r4, #0
	str r4, [sp]
	movs r1, #0x64
	movs r3, #0
	bl TaskCreate
	adds r5, r0, #0
	ldrh r2, [r5, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r2
	mov ip, r0
	str r4, [r0, #0x3c]
	str r4, [r0, #0x54]
	str r4, [r0, #0x44]
	str r4, [r0, #0x58]
	str r4, [r0, #0x48]
	str r4, [r0, #0x5c]
	str r4, [r0, #0x4c]
	ldr r0, _0806761C @ =0x060100A0
	mov r3, ip
	str r0, [r3, #4]
	ldr r0, _08067620 @ =gLoadedSaveGame
	ldrb r0, [r0, #0x19]
	cmp r0, #0
	beq _08067628
	movs r0, #0
	ldr r1, _08067624 @ =0x0000030F
	b _0806762E
	.align 2, 0
_08067608: .4byte 0x060170A0
_0806760C: .4byte 0x00000319
_08067610: .4byte 0x03000020
_08067614: .4byte sub_8067F38
_08067618: .4byte 0x00002120
_0806761C: .4byte 0x060100A0
_08067620: .4byte gLoadedSaveGame
_08067624: .4byte 0x0000030F
_08067628:
	movs r0, #0
	ldr r1, _0806778C @ =0x00000312
	mov r3, ip
_0806762E:
	strh r1, [r3, #0xa]
	ldr r4, _08067790 @ =0x03000020
	adds r1, r2, r4
	strb r0, [r1]
	movs r4, #0
	movs r0, #0x78
	mov r1, ip
	strh r0, [r1, #0x16]
	movs r0, #0x50
	strh r0, [r1, #0x18]
	strh r4, [r1, #0x1a]
	strh r4, [r1, #8]
	strh r4, [r1, #0x14]
	strh r4, [r1, #0x1c]
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x25
	movs r2, #0
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	mov r3, ip
	str r0, [r3, #0x28]
	movs r0, #0x80
	mov r8, r0
	str r0, [r3, #0x10]
	ldr r0, _08067794 @ =sub_8067824
	movs r2, #0x84
	lsls r2, r2, #6
	str r4, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	str r4, [r0, #0x38]
	movs r1, #0x3c
	str r1, [r0, #0x3c]
	ldr r1, _08067798 @ =0x03000040
	adds r2, r2, r1
	movs r3, #1
	strb r3, [r2]
	str r5, [r0, #0xc]
	ldr r2, [sp, #0x44]
	str r2, [r0, #0x14]
	mov r1, sb
	str r1, [r0, #0x10]
	ldr r2, [sp, #0x48]
	str r2, [r0, #0x18]
	ldr r1, [sp, #0x4c]
	str r1, [r0, #0x1c]
	ldr r1, [sp, #4]
	str r1, [r0, #0x20]
	ldr r1, [sp, #8]
	str r1, [r0, #0x24]
	ldr r1, [sp, #0xc]
	str r1, [r0, #0x28]
	ldr r1, [sp, #0x10]
	str r1, [r0, #0x2c]
	str r4, [r0, #0x44]
	str r4, [r0, #0x48]
	strh r4, [r0]
	strh r3, [r0, #2]
	movs r1, #8
	strh r1, [r0, #4]
	strh r4, [r0, #6]
	mov r2, r8
	strh r2, [r0, #8]
	strb r3, [r0, #0xa]
	bl sub_80543A4
	mov r0, r8
	ldr r4, [sp, #0x70]
	strb r0, [r4]
	movs r6, #2
	ldr r1, [sp, #0x6c]
	strb r6, [r1]
	ldr r0, _0806779C @ =gUnknown_086C5D74
	str r0, [r7, #0x14]
	movs r0, #0xf6
	lsls r0, r0, #5
	str r0, [r7, #0x18]
	ldr r0, _080677A0 @ =gUnknown_086C5B74
	str r0, [r7, #0x20]
	movs r2, #0x80
	lsls r2, r2, #2
	str r2, [r7, #0x24]
	ldr r0, _080677A4 @ =gUnknown_086C7C34
	str r0, [r7, #0x10]
	movs r5, #0xa0
	lsls r5, r5, #4
	str r5, [r7, #0x1c]
	movs r4, #0
	ldr r3, [sp, #0x60]
	strb r4, [r3]
	ldr r0, [sp, #0x64]
	strb r4, [r0]
	movs r4, #0x15
	ldr r1, [sp, #0x68]
	strb r4, [r1]
	adds r0, r7, #0
	bl sub_80528AC
	mov r3, r8
	ldr r2, [sp, #0x70]
	strb r3, [r2]
	movs r1, #0
	ldr r0, [sp, #0x6c]
	strb r1, [r0]
	ldr r0, _080677A8 @ =gUnknown_086BF9B4
	str r0, [r7, #0x14]
	ldr r0, _080677AC @ =0x000057C0
	str r0, [r7, #0x18]
	ldr r0, _080677B0 @ =gUnknown_086BF7B4
	str r0, [r7, #0x20]
	movs r2, #0x80
	lsls r2, r2, #2
	str r2, [r7, #0x24]
	ldr r0, _080677B4 @ =gUnknown_086C5174
	str r0, [r7, #0x10]
	str r5, [r7, #0x1c]
	ldr r3, [sp, #0x60]
	strb r1, [r3]
	ldr r0, [sp, #0x64]
	strb r6, [r0]
	ldr r1, [sp, #0x68]
	strb r4, [r1]
	adds r0, r7, #0
	bl sub_80528AC
	mov r3, r8
	ldr r2, [sp, #0x70]
	strb r3, [r2]
	movs r1, #1
	ldr r0, [sp, #0x6c]
	strb r1, [r0]
	ldr r0, _080677B8 @ =gUnknown_086C8834
	str r0, [r7, #0x14]
	movs r0, #0xd5
	lsls r0, r0, #6
	str r0, [r7, #0x18]
	ldr r0, _080677BC @ =gUnknown_086C8634
	str r0, [r7, #0x20]
	movs r2, #0x80
	lsls r2, r2, #2
	str r2, [r7, #0x24]
	ldr r0, _080677C0 @ =gUnknown_086CBD74
	str r0, [r7, #0x10]
	str r5, [r7, #0x1c]
	movs r0, #0
	ldr r3, [sp, #0x60]
	strb r0, [r3]
	ldr r2, [sp, #0x64]
	strb r1, [r2]
	ldr r3, [sp, #0x68]
	strb r4, [r3]
	adds r0, r7, #0
	bl sub_80528AC
	add sp, #0x74
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806778C: .4byte 0x00000312
_08067790: .4byte 0x03000020
_08067794: .4byte sub_8067824
_08067798: .4byte 0x03000040
_0806779C: .4byte gUnknown_086C5D74
_080677A0: .4byte gUnknown_086C5B74
_080677A4: .4byte gUnknown_086C7C34
_080677A8: .4byte gUnknown_086BF9B4
_080677AC: .4byte 0x000057C0
_080677B0: .4byte gUnknown_086BF7B4
_080677B4: .4byte gUnknown_086C5174
_080677B8: .4byte gUnknown_086C8834
_080677BC: .4byte gUnknown_086C8634
_080677C0: .4byte gUnknown_086CBD74

	thumb_func_start sub_80677C4
sub_80677C4: @ 0x080677C4
	push {lr}
	sub sp, #0x30
	cmp r0, #1
	bne _08067810
	bl sub_8053674
	add r1, sp, #0x2c
	movs r2, #0
	movs r0, #0x80
	strb r0, [r1]
	mov r0, sp
	adds r0, #0x2b
	strb r2, [r0]
	ldr r0, _08067818 @ =gUnknown_086BBE34
	str r0, [sp, #0x14]
	movs r0, #0xa6
	lsls r0, r0, #6
	str r0, [sp, #0x18]
	ldr r0, _0806781C @ =gUnknown_086BBC34
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x24]
	ldr r0, _08067820 @ =gUnknown_086BE7B4
	str r0, [sp, #0x10]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [sp, #0x1c]
	add r0, sp, #0x28
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	subs r1, #2
	movs r0, #0x15
	strb r0, [r1]
	mov r0, sp
	bl sub_80528AC
_08067810:
	add sp, #0x30
	pop {r0}
	bx r0
	.align 2, 0
_08067818: .4byte gUnknown_086BBE34
_0806781C: .4byte gUnknown_086BBC34
_08067820: .4byte gUnknown_086BE7B4

	thumb_func_start sub_8067824
sub_8067824: @ 0x08067824
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0806785C @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r2, r1
	ldr r0, [r5, #0xc]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov r8, r0
	ldr r0, [r5, #0x10]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sb, r0
	ldr r0, [r5, #0x38]
	adds r6, r0, #1
	adds r4, r5, #0
	cmp r6, #0x19
	bne _08067860
	bl sub_8053674
	bl sub_80538BC
	b _08067872
	.align 2, 0
_0806785C: .4byte gCurTask
_08067860:
	cmp r6, #0x1e
	bne _08067872
	ldr r0, _080678B8 @ =gRingCount
	ldrh r0, [r0]
	ldr r1, _080678BC @ =gCourseTime
	ldr r1, [r1]
	bl CreateStageResults
	str r0, [r4, #0x3c]
_08067872:
	ldr r0, [r5, #0x3c]
	cmp r6, r0
	bne _0806787E
	movs r0, #0x27
	bl m4aSongNumStart
_0806787E:
	movs r7, #0x80
	lsls r7, r7, #6
	adds r0, r7, #0
	movs r1, #0x80
	bl Div
	ldr r1, [r5, #0x3c]
	movs r2, #0x87
	lsls r2, r2, #2
	adds r1, r1, r2
	adds r0, r0, r1
	cmp r0, r6
	bhs _080678CC
	movs r6, #0
	str r6, [r5, #0x38]
	mov r0, r8
	str r6, [r0, #0x3c]
	ldr r0, [r5, #0x10]
	bl TaskDestroy
	ldr r1, [r5, #0xc]
	ldr r0, _080678C0 @ =sub_806853C
	str r0, [r1, #8]
	ldr r0, _080678C4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080678C8 @ =sub_8067928
	str r0, [r1, #8]
	b _0806791C
	.align 2, 0
_080678B8: .4byte gRingCount
_080678BC: .4byte gCourseTime
_080678C0: .4byte sub_806853C
_080678C4: .4byte gCurTask
_080678C8: .4byte sub_8067928
_080678CC:
	adds r0, r7, #0
	movs r1, #0x80
	bl Div
	adds r4, r0, #0
	adds r0, r7, #0
	movs r1, #0x80
	bl Div
	ldr r1, [r5, #0x3c]
	movs r2, #0x87
	lsls r2, r2, #2
	adds r1, r1, r2
	adds r4, r4, r1
	subs r4, r4, r0
	cmp r4, r6
	bne _08067902
	movs r1, #0
	strh r1, [r5]
	movs r2, #1
	movs r0, #1
	strh r0, [r5, #2]
	strh r0, [r5, #4]
	strh r1, [r5, #6]
	movs r0, #0x80
	strh r0, [r5, #8]
	strb r2, [r5, #0xa]
_08067902:
	adds r0, r5, #0
	bl sub_805423C
	str r6, [r5, #0x38]
	mov r0, r8
	str r6, [r0, #0x3c]
	mov r1, sb
	str r6, [r1, #0x3c]
	ldr r0, [r5, #0x3c]
	mov r2, r8
	str r0, [r2, #0x40]
	ldr r0, [r5, #0x3c]
	str r0, [r1, #0x40]
_0806791C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8067928
sub_8067928: @ 0x08067928
	push {r4, r5, r6, r7, lr}
	ldr r7, _080679BC @ =gCurTask
	ldr r0, [r7]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r0, [r4, #0xc]
	ldrh r0, [r0, #6]
	adds r6, r0, r1
	ldr r0, [r4, #0x38]
	adds r5, r0, #1
	movs r0, #0x80
	lsls r0, r0, #6
	movs r1, #0x80
	bl Div
	movs r1, #0x96
	lsls r1, r1, #2
	adds r0, r0, r1
	cmp r0, r5
	bhs _080679B2
	ldr r1, _080679C0 @ =gDispCnt
	movs r2, #0x8a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _080679C4 @ =gBgCntRegs
	movs r2, #0
	ldr r0, _080679C8 @ =0x00009B83
	strh r0, [r1]
	strh r2, [r4]
	movs r1, #1
	movs r0, #1
	strh r0, [r4, #2]
	movs r0, #2
	strh r0, [r4, #4]
	strh r2, [r4, #6]
	movs r0, #0x80
	strh r0, [r4, #8]
	strb r1, [r4, #0xa]
	adds r0, r4, #0
	bl sub_805423C
	movs r5, #0
	ldr r0, [r4, #0x20]
	ldr r1, _080679CC @ =sub_8068360
	str r1, [r0, #8]
	ldr r0, [r4, #0x24]
	str r1, [r0, #8]
	ldr r0, [r4, #0x28]
	str r1, [r0, #8]
	ldr r0, [r4, #0x2c]
	str r1, [r0, #8]
	ldr r1, [r4, #0x14]
	ldr r0, _080679D0 @ =sub_806862C
	str r0, [r1, #8]
	ldr r1, [r4, #0x18]
	ldr r0, _080679D4 @ =sub_8068214
	str r0, [r1, #8]
	ldr r1, [r4, #0x1c]
	ldr r0, _080679D8 @ =sub_8068148
	str r0, [r1, #8]
	ldr r1, [r4, #0xc]
	ldr r0, _080679DC @ =sub_806856C
	str r0, [r1, #8]
	ldr r1, [r7]
	ldr r0, _080679E0 @ =sub_80679E4
	str r0, [r1, #8]
_080679B2:
	str r5, [r4, #0x38]
	str r5, [r6, #0x3c]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080679BC: .4byte gCurTask
_080679C0: .4byte gDispCnt
_080679C4: .4byte gBgCntRegs
_080679C8: .4byte 0x00009B83
_080679CC: .4byte sub_8068360
_080679D0: .4byte sub_806862C
_080679D4: .4byte sub_8068214
_080679D8: .4byte sub_8068148
_080679DC: .4byte sub_806856C
_080679E0: .4byte sub_80679E4

	thumb_func_start sub_80679E4
sub_80679E4: @ 0x080679E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r1, _08067AA8 @ =gCurTask
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r0, [r4, #0xc]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sb, r0
	ldr r0, [r4, #0x1c]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp]
	ldr r0, [r4, #0x14]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sl, r0
	ldr r0, [r4, #0x38]
	adds r5, r0, #1
	adds r0, r5, #0
	bl sub_80677C4
	movs r7, #0
	movs r0, #0
	mov r8, r0
	movs r0, #0x94
	lsls r0, r0, #1
	ldr r1, _08067AAC @ =gBgScrollRegs
	strh r0, [r1, #2]
	ldr r6, _08067AB0 @ =0x00000336
	cmp r5, r6
	bls _08067AC4
	movs r5, #0
	str r5, [r4, #0x38]
	mov r0, sb
	str r5, [r0, #0x3c]
	ldr r0, [r4, #0x20]
	bl TaskDestroy
	ldr r0, [r4, #0x24]
	bl TaskDestroy
	ldr r0, [r4, #0x28]
	bl TaskDestroy
	ldr r0, [r4, #0x2c]
	bl TaskDestroy
	ldr r0, [r4, #0x1c]
	bl TaskDestroy
	ldr r0, [r4, #0x14]
	bl TaskDestroy
	ldr r0, [r4, #0x18]
	bl TaskDestroy
	ldr r1, [r4, #0xc]
	ldr r0, _08067AB4 @ =sub_8068570
	str r0, [r1, #8]
	ldr r0, _08067AA8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08067AB8 @ =sub_8067B14
	str r0, [r1, #8]
	ldr r0, _08067ABC @ =sa2__gUnknown_03004D80
	strb r7, [r0]
	ldr r1, _08067AC0 @ =sa2__gUnknown_03002280
	strb r7, [r1]
	strb r7, [r1, #1]
	movs r0, #0xff
	strb r0, [r1, #2]
	movs r0, #0x14
	strb r0, [r1, #3]
	ldr r1, _08067AAC @ =gBgScrollRegs
	strh r5, [r1, #2]
	strh r5, [r4]
	movs r1, #1
	movs r0, #1
	strh r0, [r4, #2]
	movs r0, #2
	strh r0, [r4, #4]
	strh r5, [r4, #6]
	movs r0, #0x80
	strh r0, [r4, #8]
	strb r1, [r4, #0xa]
	b _08067B02
	.align 2, 0
_08067AA8: .4byte gCurTask
_08067AAC: .4byte gBgScrollRegs
_08067AB0: .4byte 0x00000336
_08067AB4: .4byte sub_8068570
_08067AB8: .4byte sub_8067B14
_08067ABC: .4byte sa2__gUnknown_03004D80
_08067AC0: .4byte sa2__gUnknown_03002280
_08067AC4:
	movs r0, #0x80
	lsls r0, r0, #6
	movs r1, #0x80
	bl Div
	subs r0, r6, r0
	cmp r0, r5
	bne _08067AEA
	mov r0, r8
	strh r0, [r4]
	movs r1, #1
	movs r0, #1
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	mov r0, r8
	strh r0, [r4, #6]
	movs r0, #0x80
	strh r0, [r4, #8]
	strb r1, [r4, #0xa]
_08067AEA:
	adds r0, r4, #0
	bl sub_805423C
	str r5, [r4, #0x38]
	mov r1, sb
	str r5, [r1, #0x3c]
	ldr r0, [sp]
	str r5, [r0, #0x3c]
	ldr r1, [sp, #4]
	str r5, [r1, #0x3c]
	mov r0, sl
	str r5, [r0, #0x3c]
_08067B02:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8067B14
sub_8067B14: @ 0x08067B14
	push {r4, r5, r6, r7, lr}
	ldr r3, _08067B5C @ =gCurTask
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r2, [r4, #0xc]
	ldrh r0, [r2, #6]
	adds r7, r0, r1
	ldr r0, [r4, #0x38]
	adds r5, r0, #1
	movs r6, #0xc8
	lsls r6, r6, #1
	cmp r5, r6
	bls _08067B68
	movs r5, #0
	str r5, [r4, #0x38]
	str r5, [r7, #0x3c]
	strh r5, [r4]
	movs r1, #1
	movs r0, #1
	strh r0, [r4, #2]
	movs r0, #2
	strh r0, [r4, #4]
	strh r5, [r4, #6]
	movs r0, #0x80
	strh r0, [r4, #8]
	strb r1, [r4, #0xa]
	ldr r0, _08067B60 @ =sub_80685C8
	str r0, [r2, #8]
	ldr r1, [r3]
	ldr r0, _08067B64 @ =sub_8067B9C
	str r0, [r1, #8]
	b _08067B96
	.align 2, 0
_08067B5C: .4byte gCurTask
_08067B60: .4byte sub_80685C8
_08067B64: .4byte sub_8067B9C
_08067B68:
	movs r0, #0x80
	lsls r0, r0, #6
	movs r1, #0x80
	bl Div
	subs r0, r6, r0
	cmp r0, r5
	bne _08067B8C
	movs r1, #0
	strh r1, [r4]
	movs r2, #1
	movs r0, #1
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r1, [r4, #6]
	movs r0, #0x80
	strh r0, [r4, #8]
	strb r2, [r4, #0xa]
_08067B8C:
	adds r0, r4, #0
	bl sub_805423C
	str r5, [r4, #0x38]
	str r5, [r7, #0x3c]
_08067B96:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8067B9C
sub_8067B9C: @ 0x08067B9C
	push {r4, r5, r6, r7, lr}
	ldr r3, _08067BE4 @ =gCurTask
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r2, [r4, #0xc]
	ldrh r0, [r2, #6]
	adds r7, r0, r1
	ldr r0, [r4, #0x38]
	adds r5, r0, #1
	movs r6, #0xc8
	lsls r6, r6, #1
	cmp r5, r6
	bls _08067BF0
	movs r5, #0
	str r5, [r4, #0x38]
	str r5, [r7, #0x3c]
	strh r5, [r4]
	movs r1, #1
	movs r0, #1
	strh r0, [r4, #2]
	movs r0, #2
	strh r0, [r4, #4]
	strh r5, [r4, #6]
	movs r0, #0x80
	strh r0, [r4, #8]
	strb r1, [r4, #0xa]
	ldr r0, _08067BE8 @ =sub_8067F9C
	str r0, [r2, #8]
	ldr r1, [r3]
	ldr r0, _08067BEC @ =sub_8067C24
	str r0, [r1, #8]
	b _08067C1E
	.align 2, 0
_08067BE4: .4byte gCurTask
_08067BE8: .4byte sub_8067F9C
_08067BEC: .4byte sub_8067C24
_08067BF0:
	movs r0, #0x80
	lsls r0, r0, #6
	movs r1, #0x80
	bl Div
	subs r0, r6, r0
	cmp r0, r5
	bne _08067C14
	movs r1, #0
	strh r1, [r4]
	movs r2, #1
	movs r0, #1
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r1, [r4, #6]
	movs r0, #0x80
	strh r0, [r4, #8]
	strb r2, [r4, #0xa]
_08067C14:
	adds r0, r4, #0
	bl sub_805423C
	str r5, [r4, #0x38]
	str r5, [r7, #0x3c]
_08067C1E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8067C24
sub_8067C24: @ 0x08067C24
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _08067CAC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	mov sb, r0
	ldr r0, [r0, #0xc]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #0x14]
	mov r1, sb
	ldr r0, [r1, #0x38]
	adds r2, r0, #1
	str r2, [sp, #0x10]
	subs r0, #0xb3
	cmp r0, #0x80
	bhi _08067D28
	lsrs r7, r0, #4
	movs r0, #2
	mov r8, r0
	movs r1, #0x1f
	mov ip, r1
	movs r2, #0xf8
	lsls r2, r2, #7
	mov sl, r2
_08067C64:
	mov r0, r8
	lsls r2, r0, #1
	ldr r1, _08067CB0 @ =gUiPaletteSoundTestBox3
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r3, #0x1f
	ands r3, r1
	movs r0, #0xf8
	lsls r0, r0, #2
	ands r0, r1
	lsrs r5, r0, #5
	mov r0, sl
	ands r0, r1
	lsrs r4, r0, #0xa
	ldr r0, _08067CB4 @ =gUiPaletteSoundTestBox4
	adds r2, r2, r0
	ldrh r1, [r2]
	movs r2, #0x1f
	ands r2, r1
	movs r0, #0xf8
	lsls r0, r0, #2
	ands r0, r1
	lsrs r6, r0, #5
	mov r0, sl
	ands r0, r1
	lsrs r1, r0, #0xa
	cmp r3, r2
	bls _08067CB8
	subs r0, r3, r2
	muls r0, r7, r0
	lsrs r0, r0, #3
	subs r3, r3, r0
	mov r2, ip
	ands r3, r2
	b _08067CC4
	.align 2, 0
_08067CAC: .4byte gCurTask
_08067CB0: .4byte gUiPaletteSoundTestBox3
_08067CB4: .4byte gUiPaletteSoundTestBox4
_08067CB8:
	subs r0, r2, r3
	muls r0, r7, r0
	lsrs r0, r0, #3
	adds r3, r3, r0
	mov r0, ip
	ands r3, r0
_08067CC4:
	cmp r5, r6
	bls _08067CD2
	subs r0, r5, r6
	muls r0, r7, r0
	lsrs r0, r0, #3
	subs r0, r5, r0
	b _08067CDA
_08067CD2:
	subs r0, r6, r5
	muls r0, r7, r0
	lsrs r0, r0, #3
	adds r0, r5, r0
_08067CDA:
	mov r2, ip
	ands r0, r2
	lsls r5, r0, #5
	cmp r4, r1
	bls _08067CF2
	subs r0, r4, r1
	muls r0, r7, r0
	lsrs r0, r0, #3
	subs r0, r4, r0
	mov r1, ip
	ands r0, r1
	b _08067CFE
_08067CF2:
	subs r0, r1, r4
	muls r0, r7, r0
	lsrs r0, r0, #3
	adds r0, r4, r0
	mov r2, ip
	ands r0, r2
_08067CFE:
	lsls r4, r0, #0xa
	orrs r3, r5
	orrs r4, r3
	mov r0, r8
	adds r0, #0xe0
	lsls r0, r0, #1
	ldr r1, _08067D88 @ =gObjPalette
	adds r0, r0, r1
	strh r4, [r0]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #0xf
	bls _08067C64
	ldr r2, _08067D8C @ =gFlags
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
_08067D28:
	movs r0, #0xc8
	lsls r0, r0, #1
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bhi _08067D34
	b _08067E32
_08067D34:
	movs r2, #0
	str r2, [sp, #0x10]
	mov r8, r2
	mov r7, sb
	adds r7, #0x2c
	movs r4, #0
	ldr r6, _08067D90 @ =0x00000311
_08067D42:
	str r4, [sp]
	ldr r0, _08067D94 @ =sub_8066D64
	movs r1, #0xb2
	lsls r1, r1, #1
	ldr r2, _08067D98 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	mov r1, r8
	lsls r2, r1, #2
	mov r1, sp
	adds r1, r1, r2
	adds r1, #4
	str r0, [r1]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	strh r4, [r3, #0x3c]
	movs r0, #0xf
	str r0, [r3, #0x4c]
	str r4, [r3, #0x48]
	mov r0, r8
	str r0, [r3, #0x44]
	str r4, [r3, #0x40]
	adds r5, r2, #0
	cmp r0, #0
	bne _08067DA4
	ldr r0, _08067D9C @ =0x06016060
	str r0, [r3, #4]
	strh r6, [r3, #0xa]
	ldr r2, _08067DA0 @ =0x03000020
	adds r0, r1, r2
	strb r4, [r0]
	b _08067DD2
	.align 2, 0
_08067D88: .4byte gObjPalette
_08067D8C: .4byte gFlags
_08067D90: .4byte 0x00000311
_08067D94: .4byte sub_8066D64
_08067D98: .4byte 0x00002120
_08067D9C: .4byte 0x06016060
_08067DA0: .4byte 0x03000020
_08067DA4:
	mov r0, r8
	cmp r0, #1
	bne _08067DC4
	ldr r0, _08067DBC @ =0x06016920
	str r0, [r3, #4]
	strh r6, [r3, #0xa]
	ldr r2, _08067DC0 @ =0x03000020
	adds r0, r1, r2
	mov r1, r8
	strb r1, [r0]
	b _08067DD2
	.align 2, 0
_08067DBC: .4byte 0x06016920
_08067DC0: .4byte 0x03000020
_08067DC4:
	ldr r0, _08067E54 @ =0x06016E20
	str r0, [r3, #4]
	strh r6, [r3, #0xa]
	ldr r2, _08067E58 @ =0x03000020
	adds r1, r1, r2
	movs r0, #2
	strb r0, [r1]
_08067DD2:
	movs r0, #0xb4
	strh r0, [r3, #0x16]
	movs r0, #0x50
	strh r0, [r3, #0x18]
	strh r4, [r3, #0x1a]
	strh r4, [r3, #8]
	strh r4, [r3, #0x14]
	strh r4, [r3, #0x1c]
	adds r1, r3, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x25
	strb r4, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x28]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r3, #0x10]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	adds r1, r7, r5
	mov r0, sp
	adds r0, r0, r5
	adds r0, #4
	ldr r0, [r0]
	str r0, [r1]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #2
	bls _08067D42
	mov r0, sb
	ldr r1, [r0, #0xc]
	ldr r0, _08067E5C @ =sub_8068004
	str r0, [r1, #8]
	ldr r0, _08067E60 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08067E64 @ =sub_8067E68
	str r0, [r1, #8]
_08067E32:
	mov r0, sb
	bl sub_805423C
	ldr r1, [sp, #0x10]
	mov r2, sb
	str r1, [r2, #0x38]
	ldr r0, [sp, #0x14]
	str r1, [r0, #0x3c]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08067E54: .4byte 0x06016E20
_08067E58: .4byte 0x03000020
_08067E5C: .4byte sub_8068004
_08067E60: .4byte gCurTask
_08067E64: .4byte sub_8067E68

	thumb_func_start sub_8067E68
sub_8067E68: @ 0x08067E68
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	ldr r0, _08067ECC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r0, [r4, #0xc]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov r8, r0
	ldr r0, [r4, #0x2c]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp]
	ldr r0, [r4, #0x30]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [r4, #0x34]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #8]
	ldr r7, [r4, #0x38]
	adds r5, r7, #1
	movs r6, #0xc8
	lsls r6, r6, #1
	cmp r5, r6
	bls _08067EE8
	ldr r1, _08067ED0 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08067ED4 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08067ED8 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08067EDC @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08067EE0 @ =gVramGraphicsCopyCursor
	ldr r0, _08067EE4 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl CreateStaffCredits
	b _08067F28
	.align 2, 0
_08067ECC: .4byte gCurTask
_08067ED0: .4byte 0x0000FFFF
_08067ED4: .4byte gBackgroundsCopyQueueCursor
_08067ED8: .4byte gBackgroundsCopyQueueIndex
_08067EDC: .4byte sa2__gUnknown_03005390
_08067EE0: .4byte gVramGraphicsCopyCursor
_08067EE4: .4byte gVramGraphicsCopyQueueIndex
_08067EE8:
	movs r0, #0x80
	lsls r0, r0, #6
	movs r1, #0x80
	bl Div
	subs r0, r6, r0
	cmp r0, r5
	bne _08067F0C
	movs r1, #0
	strh r1, [r4]
	movs r2, #1
	movs r0, #1
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r1, [r4, #6]
	movs r0, #0x80
	strh r0, [r4, #8]
	strb r2, [r4, #0xa]
_08067F0C:
	adds r0, r4, #0
	bl sub_805423C
	str r5, [r4, #0x38]
	mov r0, r8
	str r5, [r0, #0x3c]
	ldr r0, [sp]
	ldr r2, _08067F34 @ =0x0000014B
	adds r1, r7, r2
	strh r1, [r0, #0x3c]
	ldr r0, [sp, #4]
	strh r1, [r0, #0x3c]
	ldr r0, [sp, #8]
	strh r1, [r0, #0x3c]
_08067F28:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08067F34: .4byte 0x0000014B

	thumb_func_start sub_8067F38
sub_8067F38: @ 0x08067F38
	ldr r0, _08067F94 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	ldr r1, [r2, #0x3c]
	ldr r0, [r2, #0x40]
	adds r0, #0x3c
	cmp r0, r1
	bhi _08067F92
	ldr r0, [r2, #0x54]
	adds r0, #0x55
	str r0, [r2, #0x54]
	ldr r1, _08067F98 @ =gBgScrollRegs
	asrs r0, r0, #8
	strh r0, [r1, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x47
	ble _08067F66
	movs r0, #0x47
	strh r0, [r1, #2]
_08067F66:
	ldr r0, [r2, #0x58]
	adds r0, #0x60
	str r0, [r2, #0x58]
	asrs r0, r0, #8
	strh r0, [r1, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x50
	ble _08067F7C
	movs r0, #0x50
	strh r0, [r1, #6]
_08067F7C:
	ldr r0, [r2, #0x5c]
	adds r0, #0xc0
	str r0, [r2, #0x5c]
	asrs r0, r0, #8
	strh r0, [r1, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa0
	ble _08067F92
	movs r0, #0xa0
	strh r0, [r1, #0xa]
_08067F92:
	bx lr
	.align 2, 0
_08067F94: .4byte gCurTask
_08067F98: .4byte gBgScrollRegs

	thumb_func_start sub_8067F9C
sub_8067F9C: @ 0x08067F9C
	push {r4, lr}
	ldr r0, _08067FF0 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	bne _08067FDC
	ldr r0, _08067FF4 @ =0x03000021
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08067FF8 @ =0x060126E0
	str r0, [r4, #4]
	movs r1, #0
	ldr r0, _08067FFC @ =0x000002DE
	strh r0, [r4, #0xa]
	ldr r3, _08068000 @ =0x03000020
	adds r0, r2, r3
	strb r1, [r0]
	movs r0, #0x78
	strh r0, [r4, #0x16]
	movs r0, #0x50
	strh r0, [r4, #0x18]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
_08067FDC:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08067FF0: .4byte gCurTask
_08067FF4: .4byte 0x03000021
_08067FF8: .4byte 0x060126E0
_08067FFC: .4byte 0x000002DE
_08068000: .4byte 0x03000020

	thumb_func_start sub_8068004
sub_8068004: @ 0x08068004
	push {r4, lr}
	ldr r0, _08068058 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	bne _08068044
	ldr r0, _0806805C @ =0x03000021
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08068060 @ =0x060126E0
	str r0, [r4, #4]
	ldr r0, _08068064 @ =0x000002DE
	strh r0, [r4, #0xa]
	ldr r0, _08068068 @ =0x03000020
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x78
	strh r0, [r4, #0x16]
	movs r0, #0x50
	strh r0, [r4, #0x18]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
_08068044:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068058: .4byte gCurTask
_0806805C: .4byte 0x03000021
_08068060: .4byte 0x060126E0
_08068064: .4byte 0x000002DE
_08068068: .4byte 0x03000020

	thumb_func_start sub_806806C
sub_806806C: @ 0x0806806C
	push {r4, r5, r6, r7, lr}
	ldr r0, _080680DC @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r6, r0
	ldr r4, [r7, #0x3c]
	ldr r0, [r7, #0x40]
	cmp r4, r0
	bls _0806812C
	subs r0, r4, r0
	movs r1, #0x10
	bl Div
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, [r7, #0x40]
	subs r0, r4, r0
	movs r1, #0x10
	bl Mod
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r5, #0
	beq _080680A4
	cmp r5, #2
	bne _080680E8
_080680A4:
	cmp r5, #2
	bne _080680AA
	movs r5, #3
_080680AA:
	adds r4, r7, #0
	cmp r0, #0
	bne _080680B8
	ldr r0, _080680E0 @ =0x03000021
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
_080680B8:
	lsls r1, r5, #2
	ldr r2, _080680E4 @ =0x03000044
	adds r0, r6, r2
	adds r0, r0, r1
	ldr r0, [r0]
	strh r0, [r4, #0x16]
	adds r2, #0x10
	adds r0, r6, r2
	adds r0, r0, r1
	ldr r0, [r0]
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	b _0806812C
	.align 2, 0
_080680DC: .4byte gCurTask
_080680E0: .4byte 0x03000021
_080680E4: .4byte 0x03000044
_080680E8:
	cmp r5, #1
	bne _0806812C
	adds r4, r7, #0
	cmp r0, #0
	bne _080680FA
	ldr r0, _08068134 @ =0x03000021
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
_080680FA:
	ldr r1, _08068138 @ =0x03000048
	adds r0, r6, r1
	ldr r0, [r0]
	strh r0, [r4, #0x16]
	ldr r2, _0806813C @ =0x03000058
	adds r0, r6, r2
	ldr r0, [r0]
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r1, _08068140 @ =0x0300004C
	adds r0, r6, r1
	ldr r0, [r0]
	strh r0, [r4, #0x16]
	ldr r2, _08068144 @ =0x0300005C
	adds r0, r6, r2
	ldr r0, [r0]
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl DisplaySprite
_0806812C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08068134: .4byte 0x03000021
_08068138: .4byte 0x03000048
_0806813C: .4byte 0x03000058
_08068140: .4byte 0x0300004C
_08068144: .4byte 0x0300005C

	thumb_func_start sub_8068148
sub_8068148: @ 0x08068148
	push {r4, r5, r6, lr}
	ldr r0, _0806816C @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	adds r5, r4, #0
	ldr r2, [r4, #0x3c]
	cmp r2, #0x78
	bne _08068174
	movs r1, #0
	movs r0, #0xbf
	strh r0, [r4, #0xa]
	ldr r6, _08068170 @ =0x03000020
	adds r0, r3, r6
	strb r1, [r0]
	b _08068188
	.align 2, 0
_0806816C: .4byte gCurTask
_08068170: .4byte 0x03000020
_08068174:
	movs r0, #0xf0
	lsls r0, r0, #1
	cmp r2, r0
	bne _08068190
	movs r0, #0xbf
	strh r0, [r4, #0xa]
	ldr r6, _080681B0 @ =0x03000020
	adds r1, r3, r6
	movs r0, #1
	strb r0, [r1]
_08068188:
	ldr r0, _080681B4 @ =0x03000021
	adds r1, r3, r0
	movs r0, #0xff
	strb r0, [r1]
_08068190:
	ldr r0, _080681B8 @ =0x00000257
	cmp r2, r0
	bhi _080681C0
	movs r0, #0xff
	ands r2, r0
	ldr r1, _080681BC @ =gSineTable
	lsls r0, r2, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x19
	ldr r0, [r5, #0x54]
	adds r0, r0, r1
	str r0, [r5, #0x54]
	b _080681F6
	.align 2, 0
_080681B0: .4byte 0x03000020
_080681B4: .4byte 0x03000021
_080681B8: .4byte 0x00000257
_080681BC: .4byte gSineTable
_080681C0:
	ldr r0, _080681E4 @ =0x00000296
	cmp r2, r0
	bhi _080681F0
	ldr r1, _080681E8 @ =gSineTable
	ldr r3, _080681EC @ =0xFFFFFDA8
	adds r0, r2, r3
	lsls r0, r0, #3
	adds r0, r0, r1
	movs r6, #0
	ldrsh r0, [r0, r6]
	movs r1, #0x1a
	bl Div
	ldr r1, [r5, #0x54]
	adds r1, r1, r0
	str r1, [r5, #0x54]
	b _080681F6
	.align 2, 0
_080681E4: .4byte 0x00000296
_080681E8: .4byte gSineTable
_080681EC: .4byte 0xFFFFFDA8
_080681F0:
	movs r0, #0x8c
	lsls r0, r0, #8
	str r0, [r5, #0x44]
_080681F6:
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	ldr r0, [r5, #0x54]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8068214
sub_8068214: @ 0x08068214
	push {r4, r5, r6, r7, lr}
	ldr r0, _08068244 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	adds r6, r4, #0
	adds r0, #0x30
	adds r7, r2, r0
	ldr r5, [r4, #0x3c]
	ldr r0, _08068248 @ =0x00000257
	cmp r5, r0
	bhi _08068250
	movs r0, #0xff
	ands r5, r0
	ldr r1, _0806824C @ =gSineTable
	lsls r0, r5, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x19
	b _0806826A
	.align 2, 0
_08068244: .4byte gCurTask
_08068248: .4byte 0x00000257
_0806824C: .4byte gSineTable
_08068250:
	ldr r0, _08068288 @ =0x00000296
	cmp r5, r0
	bhi _08068294
	ldr r1, _0806828C @ =gSineTable
	ldr r2, _08068290 @ =0xFFFFFDA8
	adds r0, r5, r2
	lsls r0, r0, #3
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r1, #0x1a
	bl Div
_0806826A:
	ldr r1, [r4, #0x54]
	adds r1, r1, r0
	str r1, [r4, #0x54]
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	asrs r1, r1, #8
	strh r1, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	b _08068348
	.align 2, 0
_08068288: .4byte 0x00000296
_0806828C: .4byte gSineTable
_08068290: .4byte 0xFFFFFDA8
_08068294:
	ldr r1, _080682C8 @ =0x000002BB
	cmp r5, r1
	bhi _080682DC
	movs r0, #0xb4
	lsls r0, r0, #8
	str r0, [r4, #0x44]
	str r0, [r4, #0x54]
	cmp r5, r1
	bne _08068348
	movs r1, #0
	ldr r0, _080682CC @ =0x000002DF
	strh r0, [r4, #0xa]
	ldr r3, _080682D0 @ =0x03000020
	adds r0, r2, r3
	strb r1, [r0]
	ldr r0, _080682D4 @ =0x03000021
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _080682D8 @ =0x0000106B
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	b _08068348
	.align 2, 0
_080682C8: .4byte 0x000002BB
_080682CC: .4byte 0x000002DF
_080682D0: .4byte 0x03000020
_080682D4: .4byte 0x03000021
_080682D8: .4byte 0x0000106B
_080682DC:
	ldr r1, _08068350 @ =gSineTable
	ldr r0, _08068354 @ =0x000003BB
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r0, r0, r1
	movs r1, #0
	ldrsh r4, [r0, r1]
	adds r0, r4, #0
	movs r1, #0x24
	bl Div
	ldr r1, [r6, #0x54]
	adds r1, r1, r0
	str r1, [r6, #0x54]
	adds r0, r4, #0
	movs r1, #0x12
	bl Div
	ldr r1, [r6, #0x44]
	adds r1, r1, r0
	str r1, [r6, #0x44]
	ldr r3, _08068358 @ =0xFFFFFD44
	adds r2, r5, r3
	lsls r1, r2, #1
	ldr r3, _0806835C @ =0x000003FF
	adds r0, r3, #0
	bics r0, r1
	strh r0, [r7]
	adds r1, r1, r2
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r0, r2, #0
	subs r0, r0, r1
	strh r0, [r7, #2]
	strh r0, [r7, #4]
	ldr r0, [r6, #0x44]
	asrs r0, r0, #8
	strh r0, [r7, #6]
	ldr r0, [r6, #0x54]
	asrs r0, r0, #8
	strh r0, [r7, #8]
	ldr r0, [r6, #0x44]
	asrs r0, r0, #8
	strh r0, [r6, #0x16]
	ldr r0, [r6, #0x54]
	asrs r0, r0, #8
	strh r0, [r6, #0x18]
	adds r0, r6, #0
	adds r1, r7, #0
	bl TransformSprite
	adds r0, r6, #0
	bl DisplaySprite
_08068348:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08068350: .4byte gSineTable
_08068354: .4byte 0x000003BB
_08068358: .4byte 0xFFFFFD44
_0806835C: .4byte 0x000003FF

	thumb_func_start sub_8068360
sub_8068360: @ 0x08068360
	push {r4, lr}
	ldr r0, _080683CC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	adds r4, r2, #0
	ldr r0, [r2, #0x44]
	ldr r1, [r2, #0x48]
	adds r0, r0, r1
	str r0, [r2, #0x44]
	movs r3, #0x88
	lsls r3, r3, #9
	cmp r0, r3
	ble _08068384
	ldr r0, _080683D0 @ =0xFFFF8800
	str r0, [r2, #0x44]
_08068384:
	ldr r1, [r2, #0x44]
	ldr r0, _080683D0 @ =0xFFFF8800
	cmp r1, r0
	bge _0806838E
	str r3, [r2, #0x44]
_0806838E:
	ldr r0, [r2, #0x54]
	ldr r1, [r2, #0x58]
	adds r0, r0, r1
	str r0, [r2, #0x54]
	movs r3, #0xac
	lsls r3, r3, #8
	cmp r0, r3
	ble _080683A2
	ldr r0, _080683D4 @ =0xFFFFF000
	str r0, [r2, #0x54]
_080683A2:
	ldr r1, [r2, #0x54]
	ldr r0, _080683D4 @ =0xFFFFF000
	cmp r1, r0
	bge _080683AC
	str r3, [r2, #0x54]
_080683AC:
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	ldr r0, [r4, #0x54]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080683CC: .4byte gCurTask
_080683D0: .4byte 0xFFFF8800
_080683D4: .4byte 0xFFFFF000

	thumb_func_start sub_80683D8
sub_80683D8: @ 0x080683D8
	push {r4, lr}
	ldr r0, _08068440 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r4, r3, #0
	ldr r1, [r3, #0x44]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r1, r1, r2
	ldr r0, [r3, #0x54]
	adds r0, r0, r2
	str r0, [r3, #0x54]
	ldr r0, [r3, #0x48]
	adds r1, r1, r0
	str r1, [r3, #0x44]
	movs r0, #0x88
	lsls r0, r0, #9
	cmp r1, r0
	ble _0806840A
	ldr r2, _08068444 @ =0xFFFED400
	adds r0, r1, r2
	str r0, [r3, #0x44]
_0806840A:
	ldr r0, [r3, #0x54]
	ldr r1, [r3, #0x58]
	adds r1, r0, r1
	str r1, [r3, #0x54]
	movs r0, #0xac
	lsls r0, r0, #8
	cmp r1, r0
	ble _08068420
	ldr r2, _08068444 @ =0xFFFED400
	adds r0, r1, r2
	str r0, [r3, #0x54]
_08068420:
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	ldr r0, [r4, #0x54]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068440: .4byte gCurTask
_08068444: .4byte 0xFFFED400

	thumb_func_start sub_8068448
sub_8068448: @ 0x08068448
	bx lr
	.align 2, 0

	thumb_func_start sub_806844C
sub_806844C: @ 0x0806844C
	push {r4, lr}
	ldr r0, _080684A8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r2, r4, #0
	ldr r0, [r4, #0x54]
	ldr r1, [r4, #0x58]
	adds r0, r0, r1
	str r0, [r4, #0x54]
	ldr r1, _080684AC @ =0xFFFFF000
	cmp r0, r1
	bge _0806848A
	movs r0, #0xac
	lsls r0, r0, #8
	str r0, [r4, #0x54]
	ldr r1, [r4, #0x48]
	movs r0, #0xc8
	muls r1, r0, r1
	ldr r0, [r4, #0x44]
	adds r1, r0, r1
	str r1, [r4, #0x44]
	movs r0, #0x88
	lsls r0, r0, #9
	cmp r1, r0
	ble _0806848A
	ldr r3, _080684B0 @ =0xFFFED400
	adds r0, r1, r3
	str r0, [r4, #0x44]
_0806848A:
	ldr r0, [r2, #0x44]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	ldr r0, [r2, #0x54]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080684A8: .4byte gCurTask
_080684AC: .4byte 0xFFFFF000
_080684B0: .4byte 0xFFFED400

	thumb_func_start sub_80684B4
sub_80684B4: @ 0x080684B4
	push {r4, lr}
	ldr r0, _080684EC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, [r4, #0x54]
	ldr r0, _080684F0 @ =0xFFFFF000
	cmp r2, r0
	blt _080684E6
	ldr r1, [r4, #0x58]
	adds r1, r2, r1
	str r1, [r4, #0x54]
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	asrs r1, r1, #8
	strh r1, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080684E6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080684EC: .4byte gCurTask
_080684F0: .4byte 0xFFFFF000

	thumb_func_start sub_80684F4
sub_80684F4: @ 0x080684F4
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, _08068514 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	cmp r2, #0x19
	bne _08068518
	bl sub_8053674
	bl sub_80538BC
	b _0806852A
	.align 2, 0
_08068514: .4byte gCurTask
_08068518:
	cmp r2, #0x1e
	bne _0806852A
	ldr r0, _08068530 @ =gRingCount
	ldrh r0, [r0]
	ldr r1, _08068534 @ =gCourseTime
	ldr r1, [r1]
	bl CreateStageResults
	str r0, [r4, #0x3c]
_0806852A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068530: .4byte gRingCount
_08068534: .4byte gCourseTime

	thumb_func_start sub_8068538
sub_8068538: @ 0x08068538
	bx lr
	.align 2, 0

	thumb_func_start sub_806853C
sub_806853C: @ 0x0806853C
	push {r4, lr}
	ldr r0, _08068564 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r1, [r4, #0x3c]
	ldr r0, _08068568 @ =0x00000257
	cmp r1, r0
	bhi _0806855E
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0806855E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068564: .4byte gCurTask
_08068568: .4byte 0x00000257

	thumb_func_start sub_806856C
sub_806856C: @ 0x0806856C
	bx lr
	.align 2, 0

	thumb_func_start sub_8068570
sub_8068570: @ 0x08068570
	push {r4, r5, lr}
	ldr r0, _080685B8 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	ldr r3, [r4, #0x3c]
	cmp r3, #0
	bne _080685A6
	adds r0, #0x21
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _080685BC @ =0x060126E0
	str r0, [r4, #4]
	movs r1, #0
	ldr r0, _080685C0 @ =0x000002DD
	strh r0, [r4, #0xa]
	ldr r5, _080685C4 @ =0x03000020
	adds r0, r2, r5
	strb r1, [r0]
	movs r0, #0x78
	strh r0, [r4, #0x16]
	movs r0, #0x50
	strh r0, [r4, #0x18]
	str r3, [r4, #0x10]
_080685A6:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080685B8: .4byte gCurTask
_080685BC: .4byte 0x060126E0
_080685C0: .4byte 0x000002DD
_080685C4: .4byte 0x03000020

	thumb_func_start sub_80685C8
sub_80685C8: @ 0x080685C8
	push {r4, lr}
	ldr r0, _08068610 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	ldr r3, [r4, #0x3c]
	cmp r3, #0
	bne _080685FE
	adds r0, #0x21
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08068614 @ =0x060126E0
	str r0, [r4, #4]
	ldr r0, _08068618 @ =0x000002DD
	strh r0, [r4, #0xa]
	ldr r0, _0806861C @ =0x03000020
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x78
	strh r0, [r4, #0x16]
	movs r0, #0x50
	strh r0, [r4, #0x18]
	str r3, [r4, #0x10]
_080685FE:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068610: .4byte gCurTask
_08068614: .4byte 0x060126E0
_08068618: .4byte 0x000002DD
_0806861C: .4byte 0x03000020

	thumb_func_start sub_8068620
sub_8068620: @ 0x08068620
	bx lr
	.align 2, 0

	thumb_func_start sub_8068624
sub_8068624: @ 0x08068624
	bx lr
	.align 2, 0

	thumb_func_start sub_8068628
sub_8068628: @ 0x08068628
	bx lr
	.align 2, 0

	thumb_func_start sub_806862C
sub_806862C: @ 0x0806862C
	push {r4, lr}
	ldr r0, _08068680 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	adds r4, r1, #0
	ldr r0, [r1, #0x3c]
	cmp r0, #0xb4
	bls _08068678
	ldr r0, [r1, #0x44]
	subs r0, #0x60
	str r0, [r1, #0x44]
	ldr r2, _08068684 @ =0xFFFFC000
	cmp r0, r2
	bge _08068650
	str r2, [r1, #0x44]
_08068650:
	ldr r0, [r1, #0x54]
	adds r0, #0x30
	str r0, [r1, #0x54]
	movs r2, #0x80
	lsls r2, r2, #6
	cmp r0, r2
	ble _08068660
	str r2, [r1, #0x54]
_08068660:
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	ldr r0, [r4, #0x54]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08068678:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068680: .4byte gCurTask
_08068684: .4byte 0xFFFFC000

	thumb_func_start CreateSpecialStageIntro
CreateSpecialStageIntro: @ 0x08068688
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r1, _0806887C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08068880 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08068884 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08068888 @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0806888C @ =gVramGraphicsCopyCursor
	ldr r0, _08068890 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl sub_80535FC
	bl sub_8053674
	ldr r1, _08068894 @ =gDispCnt
	movs r2, #0x8a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08068898 @ =gBgCntRegs
	movs r4, #0
	ldr r0, _0806889C @ =0x00009D86
	strh r0, [r1]
	ldr r1, _080688A0 @ =gBgScrollRegs
	strh r4, [r1]
	movs r0, #0x94
	lsls r0, r0, #1
	strh r0, [r1, #2]
	ldr r0, _080688A4 @ =sub_8068C98
	ldr r6, _080688A8 @ =0x00002120
	str r4, [sp]
	movs r1, #0xc4
	adds r2, r6, #0
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #8]
	ldrh r2, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r7, r2, r5
	ldr r0, _080688AC @ =0x06010020
	str r0, [r7, #4]
	ldr r1, _080688B0 @ =gUnknown_0868B584
	ldr r3, _080688B4 @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r3, _080688B8 @ =0x03000020
	adds r0, r2, r3
	strb r1, [r0]
	movs r0, #0x78
	strh r0, [r7, #0x16]
	movs r0, #0xb4
	strh r0, [r7, #0x18]
	adds r0, #0xcc
	strh r0, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	ldr r0, _080688BC @ =0x03000021
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	adds r3, #2
	adds r1, r2, r3
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _080688C0 @ =0x03000025
	adds r2, r2, r0
	movs r0, #1
	strb r0, [r2]
	subs r0, #2
	str r0, [r7, #0x28]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	str r4, [r7, #0x30]
	ldr r0, _080688C4 @ =0xFFFFFF00
	str r0, [r7, #0x3c]
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r7, #0x40]
	ldr r0, _080688C8 @ =0xFFFFFC30
	str r0, [r7, #0x34]
	movs r0, #0xb4
	lsls r0, r0, #8
	str r0, [r7, #0x38]
	ldr r0, _080688CC @ =sub_8068BB0
	str r4, [sp]
	movs r1, #0xc4
	adds r2, r6, #0
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #4]
	ldrh r0, [r0, #6]
	adds r7, r0, r5
	mov r8, r7
	str r4, [r7, #0x30]
	movs r0, #0xf
	str r0, [r7, #0x34]
	str r4, [r7, #0x38]
	str r4, [r7, #0x3c]
	str r4, [r7, #0x40]
	movs r5, #0
	ldr r6, _080688D0 @ =gPseudoRandom
	ldr r1, _080688D4 @ =0x00196225
	mov sl, r1
	ldr r2, _080688D8 @ =0x3C6EF35F
	mov sb, r2
_08068794:
	ldr r0, [r6]
	mov r3, sl
	muls r3, r0, r3
	adds r0, r3, #0
	add r0, sb
	str r0, [r6]
	movs r1, #0x28
	bl Mod
	lsls r4, r5, #2
	mov r1, r8
	adds r1, #0x84
	adds r1, r1, r4
	subs r0, #0x14
	str r0, [r1]
	ldr r0, [r6]
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	add r0, sb
	str r0, [r6]
	movs r1, #0xdc
	bl Mod
	mov r1, r8
	adds r1, #0x44
	adds r1, r1, r4
	adds r0, #0x14
	str r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xf
	bls _08068794
	ldr r0, _080688DC @ =0x06010820
	str r0, [r7, #4]
	movs r1, #0
	movs r4, #0
	movs r0, #0xc2
	lsls r0, r0, #2
	strh r0, [r7, #0xa]
	adds r0, r7, #0
	adds r0, #0x20
	strb r1, [r0]
	movs r0, #0x78
	strh r0, [r7, #0x16]
	movs r0, #0x50
	strh r0, [r7, #0x18]
	strh r4, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	adds r2, r7, #0
	adds r2, #0x21
	movs r0, #0xff
	strb r0, [r2]
	adds r2, #1
	movs r0, #0x10
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x25
	strb r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r0, _080688E0 @ =sub_8068948
	movs r2, #0x84
	lsls r2, r2, #6
	str r4, [sp]
	movs r1, #0x20
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	strh r4, [r0, #0x18]
	movs r1, #1
	strb r1, [r0, #0x1a]
	ldr r2, [sp, #8]
	str r2, [r0, #0x10]
	ldr r3, [sp, #4]
	str r3, [r0, #0xc]
	strh r4, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0]
	movs r2, #1
	strh r1, [r0, #2]
	movs r1, #2
	strh r1, [r0, #4]
	strh r4, [r0, #6]
	movs r1, #0xa8
	lsls r1, r1, #1
	strh r1, [r0, #8]
	strb r2, [r0, #0xa]
	bl sub_80543A4
	movs r0, #0x29
	bl m4aSongNumStart
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806887C: .4byte 0x0000FFFF
_08068880: .4byte gBackgroundsCopyQueueCursor
_08068884: .4byte gBackgroundsCopyQueueIndex
_08068888: .4byte sa2__gUnknown_03005390
_0806888C: .4byte gVramGraphicsCopyCursor
_08068890: .4byte gVramGraphicsCopyQueueIndex
_08068894: .4byte gDispCnt
_08068898: .4byte gBgCntRegs
_0806889C: .4byte 0x00009D86
_080688A0: .4byte gBgScrollRegs
_080688A4: .4byte sub_8068C98
_080688A8: .4byte 0x00002120
_080688AC: .4byte 0x06010020
_080688B0: .4byte gUnknown_0868B584
_080688B4: .4byte gSelectedCharacter
_080688B8: .4byte 0x03000020
_080688BC: .4byte 0x03000021
_080688C0: .4byte 0x03000025
_080688C4: .4byte 0xFFFFFF00
_080688C8: .4byte 0xFFFFFC30
_080688CC: .4byte sub_8068BB0
_080688D0: .4byte gPseudoRandom
_080688D4: .4byte 0x00196225
_080688D8: .4byte 0x3C6EF35F
_080688DC: .4byte 0x06010820
_080688E0: .4byte sub_8068948

	thumb_func_start sub_80688E4
sub_80688E4: @ 0x080688E4
	push {r4, lr}
	sub sp, #0x30
	adds r4, r0, #0
	bl sub_8053674
	cmp r4, #1
	bne _08068932
	add r1, sp, #0x2c
	movs r2, #0
	movs r0, #0x80
	strb r0, [r1]
	mov r0, sp
	adds r0, #0x2b
	strb r2, [r0]
	ldr r0, _0806893C @ =gUnknown_086BBE34
	str r0, [sp, #0x14]
	movs r0, #0xa6
	lsls r0, r0, #6
	str r0, [sp, #0x18]
	ldr r0, _08068940 @ =gUnknown_086BBC34
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x24]
	ldr r0, _08068944 @ =gUnknown_086BE7B4
	str r0, [sp, #0x10]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [sp, #0x1c]
	add r0, sp, #0x28
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	subs r1, #2
	movs r0, #0x15
	strb r0, [r1]
	mov r0, sp
	bl sub_80528AC
_08068932:
	add sp, #0x30
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806893C: .4byte gUnknown_086BBE34
_08068940: .4byte gUnknown_086BBC34
_08068944: .4byte gUnknown_086BE7B4

	thumb_func_start sub_8068948
sub_8068948: @ 0x08068948
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _08068A0C @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	ldr r0, [r6, #0x10]
	ldrh r0, [r0, #6]
	adds r7, r0, r1
	movs r1, #0x18
	ldrsh r0, [r6, r1]
	adds r5, r0, #1
	adds r0, r6, #0
	bl sub_805423C
	adds r0, r5, #0
	bl sub_80688E4
	cmp r5, #0x5a
	bls _08068A38
	movs r5, #0
	movs r4, #0
	strh r5, [r6, #0x18]
	str r5, [r7, #0x30]
	ldr r0, _08068A10 @ =gBgScrollRegs
	strh r5, [r0, #2]
	strh r5, [r6]
	movs r1, #1
	movs r0, #1
	strh r0, [r6, #2]
	movs r0, #2
	strh r0, [r6, #4]
	strh r5, [r6, #6]
	movs r0, #0xa8
	lsls r0, r0, #1
	strh r0, [r6, #8]
	strb r1, [r6, #0xa]
	ldr r0, _08068A14 @ =sub_8068CD4
	ldr r2, _08068A18 @ =0x00002120
	str r5, [sp]
	movs r1, #0xc4
	movs r3, #0
	bl TaskCreate
	str r0, [r6, #0x14]
	ldrh r2, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r0, r2, r3
	ldr r1, _08068A1C @ =0x06010C80
	str r1, [r0, #4]
	ldr r1, _08068A20 @ =0x0000032B
	strh r1, [r0, #0xa]
	adds r3, #0x20
	adds r1, r2, r3
	strb r4, [r1]
	movs r1, #0x78
	strh r1, [r0, #0x16]
	strh r1, [r0, #0x18]
	strh r5, [r0, #0x1a]
	strh r5, [r0, #8]
	strh r5, [r0, #0x14]
	strh r5, [r0, #0x1c]
	ldr r1, _08068A24 @ =0x03000021
	adds r3, r2, r1
	movs r1, #0xff
	strb r1, [r3]
	ldr r1, _08068A28 @ =0x03000022
	adds r3, r2, r1
	movs r1, #0x10
	strb r1, [r3]
	ldr r3, _08068A2C @ =0x03000025
	adds r2, r2, r3
	strb r4, [r2]
	subs r1, #0x11
	str r1, [r0, #0x28]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #0x10]
	bl UpdateSpriteAnimation
	ldr r0, [r6, #0xc]
	bl TaskDestroy
	ldr r1, [r6, #0x10]
	ldr r0, _08068A30 @ =sub_8068B10
	str r0, [r1, #8]
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _08068A34 @ =sub_8068A78
	str r0, [r1, #8]
	b _08068A6A
	.align 2, 0
_08068A0C: .4byte gCurTask
_08068A10: .4byte gBgScrollRegs
_08068A14: .4byte sub_8068CD4
_08068A18: .4byte 0x00002120
_08068A1C: .4byte 0x06010C80
_08068A20: .4byte 0x0000032B
_08068A24: .4byte 0x03000021
_08068A28: .4byte 0x03000022
_08068A2C: .4byte 0x03000025
_08068A30: .4byte sub_8068B10
_08068A34: .4byte sub_8068A78
_08068A38:
	movs r0, #0x80
	lsls r0, r0, #6
	movs r4, #0xa8
	lsls r4, r4, #1
	adds r1, r4, #0
	bl Div
	movs r1, #0x5a
	subs r1, r1, r0
	cmp r1, r5
	bne _08068A60
	movs r0, #0
	strh r0, [r6]
	movs r2, #1
	movs r1, #1
	strh r1, [r6, #2]
	strh r1, [r6, #4]
	strh r0, [r6, #6]
	strh r4, [r6, #8]
	strb r2, [r6, #0xa]
_08068A60:
	adds r0, r6, #0
	bl sub_805423C
	strh r5, [r6, #0x18]
	str r5, [r7, #0x30]
_08068A6A:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8068A78
sub_8068A78: @ 0x08068A78
	push {r4, r5, r6, r7, lr}
	ldr r0, _08068ABC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r0, [r4, #0x10]
	ldrh r0, [r0, #6]
	adds r7, r0, r1
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r5, r0, #1
	cmp r5, #0x96
	bls _08068AD8
	ldr r1, _08068AC0 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08068AC4 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08068AC8 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08068ACC @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08068AD0 @ =gVramGraphicsCopyCursor
	ldr r0, _08068AD4 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl CreateSpecialStage
	b _08068B0A
	.align 2, 0
_08068ABC: .4byte gCurTask
_08068AC0: .4byte 0x0000FFFF
_08068AC4: .4byte gBackgroundsCopyQueueCursor
_08068AC8: .4byte gBackgroundsCopyQueueIndex
_08068ACC: .4byte sa2__gUnknown_03005390
_08068AD0: .4byte gVramGraphicsCopyCursor
_08068AD4: .4byte gVramGraphicsCopyQueueIndex
_08068AD8:
	movs r0, #0x80
	lsls r0, r0, #6
	movs r6, #0xa8
	lsls r6, r6, #1
	adds r1, r6, #0
	bl Div
	movs r1, #0x96
	subs r1, r1, r0
	cmp r1, r5
	bne _08068B00
	movs r0, #0
	strh r0, [r4]
	movs r2, #1
	movs r1, #1
	strh r1, [r4, #2]
	strh r1, [r4, #4]
	strh r0, [r4, #6]
	strh r6, [r4, #8]
	strb r2, [r4, #0xa]
_08068B00:
	adds r0, r4, #0
	bl sub_805423C
	strh r5, [r4, #0x18]
	str r5, [r7, #0x30]
_08068B0A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8068B10
sub_8068B10: @ 0x08068B10
	push {r4, r5, r6, lr}
	ldr r0, _08068B98 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r5, r0
	adds r4, r3, #0
	ldr r6, [r3, #0x30]
	cmp r6, #0
	bne _08068B64
	ldr r1, _08068B9C @ =gUnknown_0868B594
	ldr r2, _08068BA0 @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0xa]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r2, _08068BA4 @ =0x03000020
	adds r0, r5, r2
	strb r1, [r0]
	ldr r0, _08068BA8 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r3, #0x34]
	ldr r1, _08068BAC @ =0xFFFFFB00
	adds r0, r0, r1
	str r0, [r3, #0x34]
	movs r0, #0xb4
	lsls r0, r0, #8
	str r0, [r3, #0x38]
	movs r0, #0x96
	lsls r0, r0, #8
	str r0, [r3, #0x40]
_08068B64:
	cmp r6, #0x28
	bls _08068B90
	ldr r2, [r4, #0x40]
	ldr r0, [r4, #0x3c]
	adds r2, r2, r0
	str r2, [r4, #0x40]
	ldr r0, [r4, #0x34]
	adds r0, #0x40
	str r0, [r4, #0x34]
	ldr r1, [r4, #0x38]
	adds r1, r1, r0
	str r1, [r4, #0x38]
	asrs r2, r2, #8
	strh r2, [r4, #0x16]
	asrs r1, r1, #8
	strh r1, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08068B90:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08068B98: .4byte gCurTask
_08068B9C: .4byte gUnknown_0868B594
_08068BA0: .4byte gSelectedCharacter
_08068BA4: .4byte 0x03000020
_08068BA8: .4byte 0x03000021
_08068BAC: .4byte 0xFFFFFB00

	thumb_func_start sub_8068BB0
sub_8068BB0: @ 0x08068BB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08068C10 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r7, r6, #0
	ldr r0, [r6, #0x30]
	adds r0, #1
	str r0, [r6, #0x30]
	str r0, [sp]
	ldr r0, _08068C14 @ =0x03000021
	adds r1, r1, r0
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	movs r1, #0
	mov r8, r1
	ldr r0, _08068C18 @ =gPseudoRandom
	mov sb, r0
	ldr r1, _08068C1C @ =0x3C6EF35F
	mov sl, r1
_08068BEC:
	ldr r0, [sp]
	add r0, r8
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08068C20
	mov r0, r8
	lsls r2, r0, #2
	adds r3, r7, #0
	adds r3, #0x84
	adds r1, r3, r2
	ldr r0, [r1]
	adds r0, #0x10
	str r0, [r1]
	adds r4, r2, #0
	adds r2, r7, #0
	adds r2, #0x44
	b _08068C62
	.align 2, 0
_08068C10: .4byte gCurTask
_08068C14: .4byte 0x03000021
_08068C18: .4byte gPseudoRandom
_08068C1C: .4byte 0x3C6EF35F
_08068C20:
	mov r1, sb
	ldr r0, [r1]
	ldr r1, _08068C94 @ =0x00196225
	muls r0, r1, r0
	add r0, sl
	mov r1, sb
	str r0, [r1]
	movs r1, #0x28
	bl Mod
	mov r1, r8
	lsls r4, r1, #2
	adds r5, r7, #0
	adds r5, #0x84
	adds r1, r5, r4
	subs r0, #0x14
	str r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	ldr r1, _08068C94 @ =0x00196225
	muls r0, r1, r0
	add r0, sl
	mov r1, sb
	str r0, [r1]
	movs r1, #0xdc
	bl Mod
	adds r2, r7, #0
	adds r2, #0x44
	adds r1, r2, r4
	adds r0, #0x14
	str r0, [r1]
	adds r3, r5, #0
_08068C62:
	adds r0, r2, r4
	ldr r0, [r0]
	strh r0, [r6, #0x16]
	adds r0, r3, r4
	ldr r0, [r0]
	strh r0, [r6, #0x18]
	adds r0, r6, #0
	bl DisplaySprite
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #0xf
	bls _08068BEC
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08068C94: .4byte 0x00196225

	thumb_func_start sub_8068C98
sub_8068C98: @ 0x08068C98
	push {r4, lr}
	ldr r0, _08068CCC @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r1, [r4, #0x38]
	ldr r0, _08068CD0 @ =0xFFFFFC30
	adds r1, r1, r0
	str r1, [r4, #0x38]
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	asrs r1, r1, #8
	strh r1, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068CCC: .4byte gCurTask
_08068CD0: .4byte 0xFFFFFC30

	thumb_func_start sub_8068CD4
sub_8068CD4: @ 0x08068CD4
	push {r4, lr}
	ldr r0, _08068D08 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x30]
	adds r0, #1
	str r0, [r4, #0x30]
	movs r1, #0x1e
	bl Div
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _08068D02
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08068D02:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068D08: .4byte gCurTask

	thumb_func_start sub_8068D0C
sub_8068D0C: @ 0x08068D0C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x5c
	bl sub_80535FC
	bl sub_8053674
	ldr r1, _08068F34 @ =gDispCnt
	movs r2, #0x8a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08068F38 @ =gBgCntRegs
	movs r4, #0
	ldr r0, _08068F3C @ =0x00009D86
	strh r0, [r1]
	ldr r1, _08068F40 @ =gBgScrollRegs
	strh r4, [r1]
	movs r0, #0x94
	lsls r0, r0, #1
	strh r0, [r1, #2]
	ldr r0, _08068F44 @ =sub_806954C
	str r4, [sp]
	movs r1, #0x44
	ldr r2, _08068F48 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0x44]
	ldrh r2, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r7, r2, r3
	ldr r0, _08068F4C @ =0x06010020
	str r0, [r7, #4]
	ldr r1, _08068F50 @ =gUnknown_0868B5A4
	ldr r5, _08068F54 @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r3, #0x20
	adds r0, r2, r3
	strb r1, [r0]
	movs r0, #0x78
	strh r0, [r7, #0x16]
	movs r0, #0xb4
	strh r0, [r7, #0x18]
	adds r0, #0xcc
	strh r0, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	ldr r0, _08068F58 @ =0x03000021
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08068F5C @ =0x03000022
	adds r0, r2, r1
	movs r3, #0x10
	strb r3, [r0]
	ldr r0, _08068F60 @ =0x03000025
	adds r2, r2, r0
	movs r1, #0
	strb r1, [r2]
	movs r2, #1
	rsbs r2, r2, #0
	mov r8, r2
	str r2, [r7, #0x28]
	movs r6, #0x80
	lsls r6, r6, #5
	str r6, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	str r4, [r7, #0x30]
	str r4, [r7, #0x3c]
	movs r0, #0xaa
	lsls r0, r0, #8
	str r0, [r7, #0x40]
	movs r0, #0x94
	lsls r0, r0, #3
	str r0, [r7, #0x34]
	ldr r0, _08068F64 @ =0xFFFFE000
	str r0, [r7, #0x38]
	str r4, [sp]
	ldr r0, _08068F68 @ =sub_806959C
	movs r1, #0x44
	ldr r2, _08068F48 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0x48]
	ldrh r2, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r7, r2, r3
	ldr r0, _08068F6C @ =0x06010820
	str r0, [r7, #4]
	ldr r1, _08068F70 @ =gUnknown_0868B5B4
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r3, #0x20
	adds r0, r2, r3
	strb r1, [r0]
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r7, #0x16]
	movs r0, #0x64
	strh r0, [r7, #0x18]
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	adds r3, #1
	adds r1, r2, r3
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08068F5C @ =0x03000022
	adds r0, r2, r1
	movs r3, #0x10
	strb r3, [r0]
	ldr r0, _08068F60 @ =0x03000025
	adds r2, r2, r0
	movs r1, #0
	strb r1, [r2]
	mov r2, r8
	str r2, [r7, #0x28]
	str r6, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	str r4, [r7, #0x30]
	ldr r3, _08068F74 @ =0xFFFFFF00
	mov sb, r3
	str r3, [r7, #0x3c]
	movs r0, #0xaf
	lsls r0, r0, #9
	mov sl, r0
	str r0, [r7, #0x40]
	str r4, [r7, #0x34]
	movs r5, #0xc8
	lsls r5, r5, #7
	str r5, [r7, #0x38]
	str r4, [sp]
	ldr r0, _08068F68 @ =sub_806959C
	movs r1, #0x44
	ldr r2, _08068F48 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0x4c]
	ldrh r1, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r7, r1, r2
	ldr r0, _08068F78 @ =0x060112A0
	str r0, [r7, #4]
	movs r0, #0xb8
	lsls r0, r0, #2
	strh r0, [r7, #0xa]
	ldr r3, _08068F7C @ =0x03000020
	adds r0, r1, r3
	movs r2, #0
	strb r2, [r0]
	movs r0, #0xaf
	lsls r0, r0, #1
	strh r0, [r7, #0x16]
	movs r3, #0x64
	strh r3, [r7, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	ldr r0, _08068F58 @ =0x03000021
	adds r2, r1, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r2]
	ldr r2, _08068F5C @ =0x03000022
	adds r0, r1, r2
	movs r3, #0x10
	strb r3, [r0]
	ldr r0, _08068F60 @ =0x03000025
	adds r1, r1, r0
	movs r2, #0
	strb r2, [r1]
	mov r3, r8
	str r3, [r7, #0x28]
	str r6, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	str r4, [r7, #0x30]
	mov r0, sb
	str r0, [r7, #0x3c]
	mov r1, sl
	str r1, [r7, #0x40]
	str r4, [r7, #0x34]
	str r5, [r7, #0x38]
	movs r5, #0
	add r6, sp, #0x14
	add r2, sp, #0x40
	mov sl, r2
	movs r3, #0x3f
	add r3, sp
	mov sb, r3
	mov r0, sp
	adds r0, #0x3c
	str r0, [sp, #0x50]
	mov r1, sp
	adds r1, #0x3d
	str r1, [sp, #0x54]
	mov r2, sp
	adds r2, #0x3e
	str r2, [sp, #0x58]
_08068EF0:
	str r4, [sp]
	ldr r0, _08068F80 @ =sub_8068360
	movs r1, #0x64
	ldr r2, _08068F48 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	lsls r1, r5, #2
	add r1, sp
	adds r1, #4
	str r0, [r1]
	ldrh r1, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r7, r1, r3
	str r4, [r7, #0x3c]
	cmp r5, #0
	bne _08068F8C
	movs r0, #0xc8
	lsls r0, r0, #6
	str r0, [r7, #0x54]
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r7, #0x44]
	movs r0, #0x80
	str r0, [r7, #0x48]
	str r5, [r7, #0x58]
	ldr r0, _08068F84 @ =0x06016040
	str r0, [r7, #4]
	ldr r0, _08068F88 @ =0x00000316
	strh r0, [r7, #0xa]
	ldr r2, _08068F7C @ =0x03000020
	adds r0, r1, r2
	b _08069000
	.align 2, 0
_08068F34: .4byte gDispCnt
_08068F38: .4byte gBgCntRegs
_08068F3C: .4byte 0x00009D86
_08068F40: .4byte gBgScrollRegs
_08068F44: .4byte sub_806954C
_08068F48: .4byte 0x00002120
_08068F4C: .4byte 0x06010020
_08068F50: .4byte gUnknown_0868B5A4
_08068F54: .4byte gSelectedCharacter
_08068F58: .4byte 0x03000021
_08068F5C: .4byte 0x03000022
_08068F60: .4byte 0x03000025
_08068F64: .4byte 0xFFFFE000
_08068F68: .4byte sub_806959C
_08068F6C: .4byte 0x06010820
_08068F70: .4byte gUnknown_0868B5B4
_08068F74: .4byte 0xFFFFFF00
_08068F78: .4byte 0x060112A0
_08068F7C: .4byte 0x03000020
_08068F80: .4byte sub_8068360
_08068F84: .4byte 0x06016040
_08068F88: .4byte 0x00000316
_08068F8C:
	cmp r5, #1
	bne _08068FB4
	movs r0, #0xc8
	lsls r0, r0, #7
	str r0, [r7, #0x54]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r7, #0x44]
	movs r0, #0x40
	str r0, [r7, #0x48]
	str r4, [r7, #0x58]
	ldr r0, _08068FAC @ =0x06016180
	str r0, [r7, #4]
	ldr r0, _08068FB0 @ =0x00000317
	b _08068FFA
	.align 2, 0
_08068FAC: .4byte 0x06016180
_08068FB0: .4byte 0x00000317
_08068FB4:
	cmp r5, #2
	bne _08068FE0
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r7, #0x54]
	str r0, [r7, #0x44]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r7, #0x48]
	str r4, [r7, #0x58]
	ldr r0, _08068FD8 @ =0x06016420
	str r0, [r7, #4]
	movs r0, #0xc6
	lsls r0, r0, #2
	strh r0, [r7, #0xa]
	ldr r2, _08068FDC @ =0x03000020
	adds r0, r1, r2
	b _08069000
	.align 2, 0
_08068FD8: .4byte 0x06016420
_08068FDC: .4byte 0x03000020
_08068FE0:
	movs r0, #0xa0
	lsls r0, r0, #5
	str r0, [r7, #0x54]
	movs r0, #0xa0
	lsls r0, r0, #8
	str r0, [r7, #0x44]
	movs r0, #0x90
	lsls r0, r0, #1
	str r0, [r7, #0x48]
	str r4, [r7, #0x58]
	ldr r0, _080690E0 @ =0x06017080
	str r0, [r7, #4]
	ldr r0, _080690E4 @ =0x00000319
_08068FFA:
	strh r0, [r7, #0xa]
	ldr r3, _080690E8 @ =0x03000020
	adds r0, r1, r3
_08069000:
	strb r4, [r0]
	movs r0, #0xb4
	strh r0, [r7, #0x16]
	movs r0, #0x50
	strh r0, [r7, #0x18]
	movs r0, #0xd8
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	strh r4, [r7, #8]
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
	strb r4, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	movs r0, #0x80
	lsls r0, r0, #5
	mov r8, r0
	str r0, [r7, #0x10]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bhi _08069044
	b _08068EF0
_08069044:
	ldr r0, _080690EC @ =sub_80694E8
	movs r2, #0x84
	lsls r2, r2, #6
	movs r4, #0
	str r4, [sp]
	movs r1, #0x28
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	movs r5, #0
	strh r4, [r0, #0x1c]
	movs r3, #1
	strb r3, [r0, #0x1e]
	ldr r2, [sp, #0x44]
	str r2, [r0, #0xc]
	ldr r2, [sp, #0x48]
	str r2, [r0, #0x18]
	ldr r2, [sp, #0x4c]
	str r2, [r0, #0x14]
	ldr r2, _080690F0 @ =0x03000024
	adds r1, r1, r2
	strb r5, [r1]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0]
	movs r2, #1
	strh r3, [r0, #2]
	movs r1, #8
	strh r1, [r0, #4]
	strh r4, [r0, #6]
	movs r1, #0x94
	lsls r1, r1, #1
	strh r1, [r0, #8]
	strb r2, [r0, #0xa]
	bl sub_805423C
	movs r0, #0x80
	mov r3, sl
	strb r0, [r3]
	mov r0, sb
	strb r5, [r0]
	ldr r0, _080690F4 @ =gUnknown_086BBE34
	str r0, [r6, #0x14]
	movs r0, #0xa6
	lsls r0, r0, #6
	str r0, [r6, #0x18]
	ldr r0, _080690F8 @ =gUnknown_086BBC34
	str r0, [r6, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r6, #0x24]
	ldr r0, _080690FC @ =gUnknown_086BE7B4
	str r0, [r6, #0x10]
	mov r1, r8
	str r1, [r6, #0x1c]
	ldr r2, [sp, #0x50]
	strb r5, [r2]
	ldr r3, [sp, #0x54]
	strb r5, [r3]
	movs r0, #0x15
	ldr r1, [sp, #0x58]
	strb r0, [r1]
	adds r0, r6, #0
	bl sub_80528AC
	add sp, #0x5c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080690E0: .4byte 0x06017080
_080690E4: .4byte 0x00000319
_080690E8: .4byte 0x03000020
_080690EC: .4byte sub_80694E8
_080690F0: .4byte 0x03000024
_080690F4: .4byte gUnknown_086BBE34
_080690F8: .4byte gUnknown_086BBC34
_080690FC: .4byte gUnknown_086BE7B4

	thumb_func_start sub_8069100
sub_8069100: @ 0x08069100
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0806927C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	ldr r0, [r6, #0xc]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sl, r0
	ldr r0, [r6, #0x18]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [r6, #0x14]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #8]
	movs r1, #0x1c
	ldrsh r0, [r6, r1]
	adds r0, #1
	mov sb, r0
	cmp r0, #1
	beq _0806913E
	b _080692C0
_0806913E:
	ldr r0, _08069280 @ =sub_8069634
	ldr r7, _08069284 @ =0x00002120
	movs r2, #0
	str r2, [sp]
	movs r1, #0x44
	adds r2, r7, #0
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r4, r1, r3
	ldr r0, _08069288 @ =0x06013820
	str r0, [r4, #4]
	ldr r0, _0806928C @ =0x000002FD
	strh r0, [r4, #0xa]
	ldr r2, _08069290 @ =0x03000020
	adds r0, r1, r2
	movs r3, #0
	strb r3, [r0]
	movs r0, #0x78
	strh r0, [r4, #0x16]
	movs r2, #0xb4
	strh r2, [r4, #0x18]
	movs r3, #0
	strh r3, [r4, #0x1a]
	strh r3, [r4, #8]
	strh r3, [r4, #0x14]
	strh r3, [r4, #0x1c]
	ldr r0, _08069294 @ =0x03000021
	adds r2, r1, r0
	movs r0, #0xff
	strb r0, [r2]
	ldr r2, _08069298 @ =0x03000022
	adds r0, r1, r2
	movs r3, #0x10
	strb r3, [r0]
	ldr r0, _0806929C @ =0x03000025
	adds r1, r1, r0
	movs r2, #0
	strb r2, [r1]
	movs r3, #1
	rsbs r3, r3, #0
	str r3, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	movs r1, #0
	str r1, [r4, #0x30]
	ldr r2, _080692A0 @ =0xFFFFFF00
	str r2, [r4, #0x3c]
	mov r3, sl
	ldr r0, [r3, #0x40]
	ldr r1, _080692A4 @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r4, #0x40]
	movs r2, #0
	str r2, [r4, #0x34]
	ldr r0, [r3, #0x38]
	movs r3, #0xa0
	lsls r3, r3, #4
	adds r0, r0, r3
	str r0, [r4, #0x38]
	ldr r0, _080692A8 @ =sub_806959C
	str r2, [sp]
	movs r1, #0x44
	adds r2, r7, #0
	movs r3, #0
	bl TaskCreate
	str r0, [r6, #0x10]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r2, r0
	ldr r0, _080692AC @ =0x06010AA0
	str r0, [r7, #4]
	ldr r3, _080692B0 @ =gUnknown_0868B5C4
	ldr r5, _080692B4 @ =gSelectedCharacter
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #2
	ldr r0, _080692B8 @ =gUnknown_08487134
	mov r8, r0
	ldr r4, _080692BC @ =gCurrentLevel
	movs r0, #0
	ldrsb r0, [r4, r0]
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r0, [r1]
	strh r0, [r7, #0xa]
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #2
	movs r0, #0
	ldrsb r0, [r4, r0]
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r3, #2
	adds r1, r1, r3
	ldrh r1, [r1]
	ldr r3, _08069290 @ =0x03000020
	adds r0, r2, r3
	strb r1, [r0]
	movs r0, #0x78
	strh r0, [r7, #0x16]
	movs r1, #0xb4
	strh r1, [r7, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r7, #0x1a]
	movs r3, #0
	strh r3, [r7, #8]
	strh r3, [r7, #0x14]
	strh r3, [r7, #0x1c]
	ldr r0, _08069294 @ =0x03000021
	adds r1, r2, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08069298 @ =0x03000022
	adds r0, r2, r1
	movs r3, #0x10
	strb r3, [r0]
	ldr r0, _0806929C @ =0x03000025
	adds r2, r2, r0
	movs r1, #0
	strb r1, [r2]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r7, #0x28]
	movs r3, #0x80
	lsls r3, r3, #5
	str r3, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r0, #0
	str r0, [r7, #0x30]
	ldr r1, _080692A0 @ =0xFFFFFF00
	str r1, [r7, #0x3c]
	mov r2, sl
	ldr r0, [r2, #0x40]
	str r0, [r7, #0x40]
	movs r3, #0
	str r3, [r7, #0x34]
	ldr r0, [r2, #0x38]
	str r0, [r7, #0x38]
	b _080692CA
	.align 2, 0
_0806927C: .4byte gCurTask
_08069280: .4byte sub_8069634
_08069284: .4byte 0x00002120
_08069288: .4byte 0x06013820
_0806928C: .4byte 0x000002FD
_08069290: .4byte 0x03000020
_08069294: .4byte 0x03000021
_08069298: .4byte 0x03000022
_0806929C: .4byte 0x03000025
_080692A0: .4byte 0xFFFFFF00
_080692A4: .4byte 0xFFFFF800
_080692A8: .4byte sub_806959C
_080692AC: .4byte 0x06010AA0
_080692B0: .4byte gUnknown_0868B5C4
_080692B4: .4byte gSelectedCharacter
_080692B8: .4byte gUnknown_08487134
_080692BC: .4byte gCurrentLevel
_080692C0:
	ldr r0, [r6, #0x10]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r0, r1
_080692CA:
	mov r2, sb
	cmp r2, #7
	bls _080692F6
	ldr r3, [sp, #8]
	ldr r2, [r3, #0x38]
	ldr r0, _08069364 @ =0x000063FF
	cmp r2, r0
	ble _080692F6
	ldr r1, _08069368 @ =0xFFFFFF00
	adds r0, r2, r1
	str r0, [r3, #0x38]
	ldr r2, [sp, #4]
	ldr r0, [r2, #0x38]
	adds r0, r0, r1
	str r0, [r2, #0x38]
	mov r3, sl
	ldr r0, [r3, #0x38]
	adds r0, r0, r1
	str r0, [r3, #0x38]
	ldr r0, [r7, #0x38]
	adds r0, r0, r1
	str r0, [r7, #0x38]
_080692F6:
	mov r0, sb
	cmp r0, #1
	bne _08069320
	ldr r1, [sp, #8]
	ldr r0, [r1, #0x38]
	movs r1, #0xa0
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r2, [sp, #8]
	str r0, [r2, #0x38]
	ldr r3, [sp, #4]
	ldr r0, [r3, #0x38]
	adds r0, r0, r1
	str r0, [r3, #0x38]
	mov r2, sl
	ldr r0, [r2, #0x38]
	adds r0, r0, r1
	str r0, [r2, #0x38]
	ldr r0, [r7, #0x38]
	adds r0, r0, r1
	str r0, [r7, #0x38]
_08069320:
	adds r0, r6, #0
	bl sub_805423C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08069388
	movs r3, #4
	ldrsh r0, [r6, r3]
	cmp r0, #4
	bne _08069388
	adds r1, r6, #0
	adds r1, #0x24
	ldrb r0, [r1]
	cmp r0, #0xa
	bls _08069384
	ldr r1, _0806936C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08069370 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08069374 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08069378 @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0806937C @ =gVramGraphicsCopyCursor
	ldr r0, _08069380 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #1
	bl sub_805D048
	b _080693BE
	.align 2, 0
_08069364: .4byte 0x000063FF
_08069368: .4byte 0xFFFFFF00
_0806936C: .4byte 0x0000FFFF
_08069370: .4byte gBackgroundsCopyQueueCursor
_08069374: .4byte gBackgroundsCopyQueueIndex
_08069378: .4byte sa2__gUnknown_03005390
_0806937C: .4byte gVramGraphicsCopyCursor
_08069380: .4byte gVramGraphicsCopyQueueIndex
_08069384:
	adds r0, #1
	strb r0, [r1]
_08069388:
	movs r0, #0x80
	lsls r0, r0, #6
	movs r4, #0x94
	lsls r4, r4, #1
	adds r1, r4, #0
	bl Div
	movs r1, #0x96
	lsls r1, r1, #1
	subs r1, r1, r0
	cmp r1, sb
	bne _080693B4
	movs r1, #0
	strh r1, [r6]
	movs r2, #1
	movs r0, #1
	strh r0, [r6, #2]
	movs r0, #4
	strh r0, [r6, #4]
	strh r1, [r6, #6]
	strh r4, [r6, #8]
	strb r2, [r6, #0xa]
_080693B4:
	mov r0, sb
	strh r0, [r6, #0x1c]
	mov r1, sb
	mov r2, sl
	str r1, [r2, #0x30]
_080693BE:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80693D0
sub_80693D0: @ 0x080693D0
	push {r4, r5, lr}
	ldr r0, _08069448 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r4, r0
	adds r5, r3, #0
	ldr r0, [r3, #0x30]
	cmp r0, #0
	bne _0806941A
	ldr r1, _0806944C @ =gUnknown_0868B634
	ldr r2, _08069450 @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0xa]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r2, _08069454 @ =0x03000020
	adds r0, r4, r2
	strb r1, [r0]
	ldr r0, _08069458 @ =0x03000021
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r3, #0x38]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r3, #0x38]
_0806941A:
	ldr r0, [r3, #0x40]
	ldr r2, _0806945C @ =0xFFFFFF00
	adds r0, r0, r2
	str r0, [r3, #0x40]
	ldr r1, _08069460 @ =0xFFFF9C00
	cmp r0, r1
	bge _0806942A
	str r1, [r3, #0x40]
_0806942A:
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	strh r0, [r5, #0x16]
	ldr r0, [r5, #0x38]
	asrs r0, r0, #8
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08069448: .4byte gCurTask
_0806944C: .4byte gUnknown_0868B634
_08069450: .4byte gSelectedCharacter
_08069454: .4byte 0x03000020
_08069458: .4byte 0x03000021
_0806945C: .4byte 0xFFFFFF00
_08069460: .4byte 0xFFFF9C00

	thumb_func_start sub_8069464
sub_8069464: @ 0x08069464
	push {r4, r5, lr}
	ldr r0, _080694D4 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r5, r0
	adds r4, r3, #0
	ldr r0, [r3, #0x30]
	cmp r0, #0
	bne _080694AA
	ldr r1, _080694D8 @ =gUnknown_0868B644
	ldr r2, _080694DC @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0xa]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r2, _080694E0 @ =0x03000020
	adds r0, r5, r2
	strb r1, [r0]
	ldr r0, _080694E4 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0xb4
	lsls r0, r0, #8
	str r0, [r3, #0x38]
_080694AA:
	ldr r2, [r4, #0x40]
	ldr r0, [r4, #0x3c]
	adds r2, r2, r0
	str r2, [r4, #0x40]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x34]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	asrs r2, r2, #8
	strh r2, [r4, #0x16]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080694D4: .4byte gCurTask
_080694D8: .4byte gUnknown_0868B644
_080694DC: .4byte gSelectedCharacter
_080694E0: .4byte 0x03000020
_080694E4: .4byte 0x03000021

	thumb_func_start sub_80694E8
sub_80694E8: @ 0x080694E8
	push {r4, r5, r6, r7, lr}
	ldr r7, _08069530 @ =gCurTask
	ldr r0, [r7]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r0, r1
	ldr r0, [r5, #0xc]
	ldrh r0, [r0, #6]
	adds r6, r0, r1
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	adds r4, r0, #1
	adds r0, r5, #0
	bl sub_805423C
	cmp r4, #0x8c
	bne _08069512
	ldr r1, [r5, #0xc]
	ldr r0, _08069534 @ =sub_8069550
	str r0, [r1, #8]
_08069512:
	cmp r4, #0xa1
	bls _08069540
	movs r0, #0x2d
	bl m4aSongNumStart
	movs r4, #0
	strh r4, [r5, #0x1c]
	str r4, [r6, #0x30]
	ldr r1, [r5, #0xc]
	ldr r0, _08069538 @ =sub_80693D0
	str r0, [r1, #8]
	ldr r1, [r7]
	ldr r0, _0806953C @ =sub_8069100
	str r0, [r1, #8]
	b _08069544
	.align 2, 0
_08069530: .4byte gCurTask
_08069534: .4byte sub_8069550
_08069538: .4byte sub_80693D0
_0806953C: .4byte sub_8069100
_08069540:
	strh r4, [r5, #0x1c]
	str r4, [r6, #0x30]
_08069544:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_806954C
sub_806954C: @ 0x0806954C
	bx lr
	.align 2, 0

	thumb_func_start sub_8069550
sub_8069550: @ 0x08069550
	push {r4, lr}
	ldr r0, _08069594 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	adds r4, r1, #0
	ldr r0, [r1, #0x38]
	movs r2, #0x94
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r1, #0x38]
	movs r2, #0xa0
	lsls r2, r2, #7
	cmp r0, r2
	ble _08069574
	str r2, [r1, #0x38]
_08069574:
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	ldr r0, [r4, #0x38]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08069594: .4byte gCurTask

	thumb_func_start sub_8069598
sub_8069598: @ 0x08069598
	bx lr
	.align 2, 0

	thumb_func_start sub_806959C
sub_806959C: @ 0x0806959C
	push {r4, lr}
	ldr r0, _080695DC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	adds r4, r1, #0
	ldr r0, [r1, #0x40]
	ldr r2, _080695E0 @ =0xFFFFFF00
	adds r0, r0, r2
	str r0, [r1, #0x40]
	ldr r2, _080695E4 @ =0xFFFF9C00
	cmp r0, r2
	bge _080695BC
	str r2, [r1, #0x40]
_080695BC:
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	ldr r0, [r4, #0x38]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080695DC: .4byte gCurTask
_080695E0: .4byte 0xFFFFFF00
_080695E4: .4byte 0xFFFF9C00

	thumb_func_start sub_80695E8
sub_80695E8: @ 0x080695E8
	push {r4, lr}
	ldr r0, _08069628 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	adds r4, r1, #0
	ldr r0, [r1, #0x40]
	ldr r2, _0806962C @ =0xFFFFFF00
	adds r0, r0, r2
	str r0, [r1, #0x40]
	ldr r2, _08069630 @ =0xFFFF9C00
	cmp r0, r2
	bge _08069608
	str r2, [r1, #0x40]
_08069608:
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	ldr r0, [r4, #0x38]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08069628: .4byte gCurTask
_0806962C: .4byte 0xFFFFFF00
_08069630: .4byte 0xFFFF9C00

	thumb_func_start sub_8069634
sub_8069634: @ 0x08069634
	push {r4, r5, lr}
	ldr r5, _08069660 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	ldr r0, [r4, #0x38]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _08069664
	ldr r0, [r5]
	bl TaskDestroy
	b _08069682
	.align 2, 0
_08069660: .4byte gCurTask
_08069664:
	ldr r0, [r4, #0x10]
	ldr r1, _08069688 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl DisplaySprite
_08069682:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08069688: .4byte 0xFFFFFBFF

	thumb_func_start sub_806968C
sub_806968C: @ 0x0806968C
	push {r4, lr}
	sub sp, #0x30
	bl sub_8053674
	add r2, sp, #0x2c
	movs r4, #0
	movs r0, #0x80
	strb r0, [r2]
	mov r0, sp
	adds r0, #0x2b
	strb r4, [r0]
	movs r1, #0x2b
	strb r1, [r2]
	ldr r2, _080696FC @ =gUiGraphics
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	ldr r0, [r2]
	str r0, [sp, #0x14]
	movs r1, #0x20
	str r1, [sp, #0x18]
	ldr r0, _08069700 @ =gUnknown_086CC774
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	ldr r0, _08069704 @ =gUnknown_086CC834
	str r0, [sp, #0x10]
	movs r0, #0xa0
	lsls r0, r0, #3
	str r0, [sp, #0x1c]
	add r0, sp, #0x28
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	mov r1, sp
	adds r1, #0x2a
	movs r0, #5
	strb r0, [r1]
	mov r0, sp
	bl sub_80528AC
	ldr r1, _08069708 @ =sa2__gUnknown_03004D80
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0806970C @ =sa2__gUnknown_03002280
	strb r4, [r1]
	strb r4, [r1, #1]
	movs r0, #0xff
	strb r0, [r1, #2]
	movs r0, #0x14
	strb r0, [r1, #3]
	add sp, #0x30
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080696FC: .4byte gUiGraphics
_08069700: .4byte gUnknown_086CC774
_08069704: .4byte gUnknown_086CC834
_08069708: .4byte sa2__gUnknown_03004D80
_0806970C: .4byte sa2__gUnknown_03002280

	thumb_func_start sub_8069710
sub_8069710: @ 0x08069710
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	bl sub_80535FC
	ldr r1, _08069890 @ =gDispCnt
	movs r2, #0x8a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08069894 @ =gBgCntRegs
	movs r5, #0
	ldr r0, _08069898 @ =0x00001D03
	strh r0, [r1]
	ldr r0, _0806989C @ =gBgScrollRegs
	strh r5, [r0]
	strh r5, [r0, #2]
	bl sub_806968C
	ldr r0, _080698A0 @ =sub_80698F4
	str r5, [sp]
	movs r1, #0xa0
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldr r3, _080698A4 @ =0x03000090
	adds r6, r4, r3
	ldr r1, _080698A8 @ =0x06010000
	str r1, [r0, #4]
	ldr r2, _080698AC @ =gUnknown_0868B654
	ldr r3, _080698B0 @ =gLoadedSaveGame
	ldrb r1, [r3, #0x19]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0xa]
	ldr r2, _080698B4 @ =gUnknown_0868B658
	ldrb r1, [r3, #0x19]
	adds r1, r1, r2
	ldrb r2, [r1]
	ldr r3, _080698B8 @ =0x03000020
	adds r1, r4, r3
	strb r2, [r1]
	movs r1, #0x78
	strh r1, [r0, #0x16]
	strh r1, [r0, #0x18]
	strh r5, [r0, #8]
	strh r5, [r0, #0x14]
	strh r5, [r0, #0x1c]
	ldr r1, _080698BC @ =0x03000021
	adds r2, r4, r1
	movs r1, #0xff
	strb r1, [r2]
	ldr r2, _080698C0 @ =0x03000022
	adds r1, r4, r2
	movs r3, #0x10
	strb r3, [r1]
	adds r2, #3
	adds r1, r4, r2
	movs r3, #0
	strb r3, [r1]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0, #0x28]
	movs r2, #0x90
	lsls r2, r2, #3
	mov r8, r2
	mov r3, r8
	strh r3, [r0, #0x1a]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r0, #0x10]
	bl UpdateSpriteAnimation
	ldr r3, _080698C4 @ =0x03000030
	adds r2, r4, r3
	ldr r0, _080698C8 @ =0x06012000
	str r0, [r2, #4]
	ldr r7, _080698CC @ =0x000002E3
	strh r7, [r2, #0xa]
	ldr r1, _080698D0 @ =0x03000050
	adds r0, r4, r1
	movs r3, #0
	strb r3, [r0]
	movs r0, #0x88
	mov sb, r0
	mov r1, sb
	strh r1, [r2, #0x16]
	movs r3, #0x5a
	mov sl, r3
	mov r0, sl
	strh r0, [r2, #0x18]
	strh r5, [r2, #8]
	strh r5, [r2, #0x14]
	strh r5, [r2, #0x1c]
	ldr r3, _080698D4 @ =0x03000051
	adds r1, r4, r3
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _080698D8 @ =0x03000052
	adds r0, r4, r1
	movs r3, #0x10
	strb r3, [r0]
	adds r1, #3
	adds r0, r4, r1
	movs r3, #0
	strb r3, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2, #0x28]
	mov r1, r8
	strh r1, [r2, #0x1a]
	movs r3, #0x80
	lsls r3, r3, #6
	str r3, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	ldr r0, _080698DC @ =0x03000060
	adds r2, r4, r0
	ldr r0, _080698E0 @ =0x06014000
	str r0, [r2, #4]
	strh r7, [r2, #0xa]
	ldr r1, _080698E4 @ =0x03000080
	adds r0, r4, r1
	movs r7, #1
	strb r7, [r0]
	mov r3, sb
	strh r3, [r2, #0x16]
	mov r0, sl
	strh r0, [r2, #0x18]
	strh r5, [r2, #8]
	strh r5, [r2, #0x14]
	strh r5, [r2, #0x1c]
	ldr r3, _080698E8 @ =0x03000081
	adds r1, r4, r3
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _080698EC @ =0x03000082
	adds r0, r4, r1
	movs r3, #0x10
	strb r3, [r0]
	adds r1, #3
	adds r0, r4, r1
	movs r3, #0
	strb r3, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2, #0x28]
	mov r1, r8
	strh r1, [r2, #0x1a]
	movs r3, #0x80
	lsls r3, r3, #6
	str r3, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	ldr r0, _080698F0 @ =0x0300009C
	adds r4, r4, r0
	str r5, [r4]
	strh r5, [r6]
	strh r7, [r6, #2]
	movs r0, #2
	strh r0, [r6, #4]
	strh r5, [r6, #6]
	adds r0, #0xfe
	strh r0, [r6, #8]
	movs r0, #8
	strb r0, [r6, #0xa]
	adds r0, r6, #0
	bl sub_805423C
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08069890: .4byte gDispCnt
_08069894: .4byte gBgCntRegs
_08069898: .4byte 0x00001D03
_0806989C: .4byte gBgScrollRegs
_080698A0: .4byte sub_80698F4
_080698A4: .4byte 0x03000090
_080698A8: .4byte 0x06010000
_080698AC: .4byte gUnknown_0868B654
_080698B0: .4byte gLoadedSaveGame
_080698B4: .4byte gUnknown_0868B658
_080698B8: .4byte 0x03000020
_080698BC: .4byte 0x03000021
_080698C0: .4byte 0x03000022
_080698C4: .4byte 0x03000030
_080698C8: .4byte 0x06012000
_080698CC: .4byte 0x000002E3
_080698D0: .4byte 0x03000050
_080698D4: .4byte 0x03000051
_080698D8: .4byte 0x03000052
_080698DC: .4byte 0x03000060
_080698E0: .4byte 0x06014000
_080698E4: .4byte 0x03000080
_080698E8: .4byte 0x03000081
_080698EC: .4byte 0x03000082
_080698F0: .4byte 0x0300009C

	thumb_func_start sub_80698F4
sub_80698F4: @ 0x080698F4
	push {lr}
	ldr r0, _08069930 @ =gCurTask
	ldr r3, [r0]
	ldrh r0, [r3, #6]
	ldr r1, _08069934 @ =0x03000090
	adds r2, r0, r1
	adds r1, #0xc
	adds r0, r0, r1
	ldr r1, [r0]
	adds r1, #1
	str r1, [r0]
	movs r0, #0xc8
	lsls r0, r0, #1
	cmp r1, r0
	bls _08069944
	ldr r2, _08069938 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0806993C @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _08069940 @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	adds r0, r3, #0
	bl TaskDestroy
	bl CreateSegaLogo
	b _0806995E
	.align 2, 0
_08069930: .4byte gCurTask
_08069934: .4byte 0x03000090
_08069938: .4byte gDispCnt
_0806993C: .4byte 0x00001FFF
_08069940: .4byte gBldRegs
_08069944:
	movs r0, #0xaa
	lsls r0, r0, #1
	cmp r1, r0
	bne _08069954
	movs r0, #0
	strh r0, [r2, #6]
	movs r0, #1
	strh r0, [r2, #4]
_08069954:
	adds r0, r2, #0
	bl sub_805423C
	bl sub_8069964
_0806995E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8069964
sub_8069964: @ 0x08069964
	push {r4, r5, lr}
	ldr r0, _08069990 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	movs r4, #0
_08069974:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, r5, r0
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _08069974
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08069990: .4byte gCurTask

	thumb_func_start sub_8069994
sub_8069994: @ 0x08069994
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	adds r6, r0, #0
	bl sub_8053674
	add r4, sp, #0x2c
	movs r0, #0x20
	strb r0, [r4]
	movs r1, #0x2b
	add r1, sp
	mov r8, r1
	movs r0, #0xf
	strb r0, [r1]
	ldr r7, _08069B10 @ =gUiGraphics
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08069B14 @ =gUiGraphics + 0x4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0xb0
	lsls r0, r0, #3
	str r0, [sp, #0x18]
	movs r0, #0x20
	str r0, [sp, #0x24]
	add r1, sp, #0x28
	mov sb, r1
	movs r0, #6
	strb r0, [r1]
	str r6, [sp, #0xc]
	mov r6, sp
	adds r6, #0x2a
	movs r0, #0xd
	strb r0, [r6]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08069B18 @ =gUiGraphics + 0x8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08069B1C @ =gUiGraphics + 0xC
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0x10
	adds r1, r1, r7
	mov sl, r1
	add r0, sl
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r5, r7, #0
	adds r5, #0x14
	adds r0, r0, r5
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08069B20 @ =gUiGraphics + 0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r0, #0x10
	strb r0, [r4]
	mov r1, r8
	strb r0, [r1]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08069B14 @ =gUiGraphics + 0x4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x18]
	movs r0, #0x20
	str r0, [sp, #0x24]
	movs r0, #0xc
	mov r1, sb
	strb r0, [r1]
	ldr r0, _08069B24 @ =0x06011000
	str r0, [sp, #0xc]
	movs r0, #0xd
	strb r0, [r6]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08069B18 @ =gUiGraphics + 0x8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08069B1C @ =gUiGraphics + 0xC
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08069B20 @ =gUiGraphics + 0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r0, #0x22
	strb r0, [r4]
	movs r0, #2
	mov r1, r8
	strb r0, [r1]
	ldr r0, _08069B28 @ =gCurrentLevel
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	adds r3, r4, #0
	cmp r0, #0
	beq _08069B2C
	ldrb r0, [r3]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r7
	ldr r0, [r1]
	movs r1, #0xa0
	lsls r1, r1, #4
	adds r0, r0, r1
	b _08069B38
	.align 2, 0
_08069B10: .4byte gUiGraphics
_08069B14: .4byte gUiGraphics + 0x4
_08069B18: .4byte gUiGraphics + 0x8
_08069B1C: .4byte gUiGraphics + 0xC
_08069B20: .4byte gUiGraphics + 0x18
_08069B24: .4byte 0x06011000
_08069B28: .4byte gCurrentLevel
_08069B2C:
	ldrb r0, [r3]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r7
	ldr r0, [r1]
_08069B38:
	str r0, [sp, #0x14]
	ldr r7, _08069C7C @ =gUiGraphics
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08069C80 @ =gUiGraphics + 0x4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0x20
	str r0, [sp, #0x24]
	movs r0, #0xb
	add r1, sp, #0x28
	strb r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, _08069C84 @ =0x06011800
	str r0, [sp, #0xc]
	movs r0, #0xd
	movs r1, #0x2a
	add r1, sp
	strb r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	movs r1, #8
	adds r1, r1, r7
	mov sb, r1
	add r0, sb
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0xc
	adds r1, r1, r7
	mov r8, r1
	add r0, r8
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r6, r7, #0
	adds r6, #0x10
	adds r0, r0, r6
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08069C88 @ =gUiGraphics + 0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r4, r7, #0
	adds r4, #0x18
	adds r0, r0, r4
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	str r3, [sp, #0x30]
	bl sub_80528AC
	ldr r0, _08069C8C @ =gSelectedCharacter
	ldrb r0, [r0]
	adds r0, #0xb
	ldr r3, [sp, #0x30]
	strb r0, [r3]
	movs r0, #2
	movs r1, #0x2b
	add r1, sp
	strb r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08069C80 @ =gUiGraphics + 0x4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0xc0
	lsls r0, r0, #3
	str r0, [sp, #0x18]
	movs r0, #0xc
	str r0, [sp, #0x24]
	movs r0, #0xb
	add r1, sp, #0x28
	strb r0, [r1]
	ldr r0, _08069C90 @ =0x06011200
	str r0, [sp, #0xc]
	movs r0, #0xd
	movs r1, #0x2a
	add r1, sp
	strb r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08069C88 @ =gUiGraphics + 0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	bl sub_80528AC
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08069C7C: .4byte gUiGraphics
_08069C80: .4byte gUiGraphics + 0x4
_08069C84: .4byte 0x06011800
_08069C88: .4byte gUiGraphics + 0x14
_08069C8C: .4byte gSelectedCharacter
_08069C90: .4byte 0x06011200

	thumb_func_start sub_8069C94
sub_8069C94: @ 0x08069C94
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #4]
	bl sub_80535FC
	movs r0, #0x2c
	bl VramMalloc
	adds r7, r0, #0
	bl sub_8069994
	ldr r0, _08069CF8 @ =sub_8069E50
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08069CFC @ =sub_806A124
	str r1, [sp]
	movs r1, #0xd0
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #8]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r5
	mov sl, r0
	ldr r0, _08069D00 @ =0x030000A8
	adds r6, r5, r0
	ldr r0, [sp, #4]
	bl sub_8012EA4
	adds r4, r0, #0
	ldr r1, _08069D04 @ =0x030000C4
	adds r0, r5, r1
	str r4, [r0]
	cmp r4, #0
	beq _08069D10
	ldr r0, _08069D08 @ =0x00000131
	bl m4aSongNumStart
	ldr r0, _08069D0C @ =0x030000CC
	adds r1, r5, r0
	movs r0, #1
	strb r0, [r1]
	b _08069D1E
	.align 2, 0
_08069CF8: .4byte sub_8069E50
_08069CFC: .4byte sub_806A124
_08069D00: .4byte 0x030000A8
_08069D04: .4byte 0x030000C4
_08069D08: .4byte 0x00000131
_08069D0C: .4byte 0x030000CC
_08069D10:
	movs r0, #0x99
	lsls r0, r0, #1
	bl m4aSongNumStart
	ldr r1, _08069E48 @ =0x030000CC
	adds r0, r5, r1
	strb r4, [r0]
_08069D1E:
	ldr r1, _08069E4C @ =gMusicManagerState
	movs r0, #0xff
	strb r0, [r1]
	mov r0, sl
	adds r0, #0xbc
	movs r5, #0
	str r5, [r0]
	adds r0, #4
	str r5, [r0]
	adds r0, #8
	str r7, [r0]
	movs r0, #0x18
	bl VramMalloc
	mov r1, sl
	str r0, [r1, #4]
	movs r7, #0
	movs r0, #0xdd
	lsls r0, r0, #2
	mov sb, r0
	mov r0, sb
	strh r0, [r1, #0xa]
	adds r1, #0x20
	movs r0, #4
	strb r0, [r1]
	movs r0, #0x78
	mov r1, sl
	strh r0, [r1, #0x16]
	strh r0, [r1, #0x18]
	strh r5, [r1, #8]
	strh r5, [r1, #0x14]
	strh r5, [r1, #0x1c]
	adds r1, #0x21
	subs r0, #0x79
	strb r0, [r1]
	mov r0, sl
	adds r0, #0x22
	movs r1, #0x10
	strb r1, [r0]
	adds r0, #3
	strb r7, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	mov r1, sl
	str r0, [r1, #0x28]
	strh r5, [r1, #0x1a]
	str r5, [r1, #0x10]
	mov r0, sl
	bl UpdateSpriteAnimation
	mov r4, sl
	adds r4, #0x30
	movs r0, #8
	bl VramMalloc
	str r0, [r4, #4]
	mov r0, sb
	strh r0, [r4, #0xa]
	mov r1, sl
	adds r1, #0x50
	movs r0, #3
	strb r0, [r1]
	movs r0, #0x28
	strh r0, [r4, #0x16]
	movs r0, #0x58
	strh r0, [r4, #0x18]
	strh r5, [r4, #8]
	strh r5, [r4, #0x14]
	strh r5, [r4, #0x1c]
	adds r1, #1
	subs r0, #0x59
	strb r0, [r1]
	mov r0, sl
	adds r0, #0x52
	movs r1, #0x10
	strb r1, [r0]
	adds r0, #3
	strb r7, [r0]
	mov r0, r8
	str r0, [r4, #0x28]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	mov r7, sl
	adds r7, #0x60
	movs r3, #0xf0
	strh r3, [r7, #0xa]
	movs r2, #0x8c
	strh r2, [r7, #0xc]
	movs r0, #8
	strh r0, [r7, #0xe]
	movs r4, #0x10
	strh r4, [r7, #0x10]
	movs r0, #0xc
	strh r0, [r7, #0x12]
	movs r1, #1
	strb r1, [r7, #0x16]
	movs r0, #0x18
	strh r0, [r7, #8]
	adds r7, #0x18
	strh r3, [r7, #0xa]
	strh r2, [r7, #0xc]
	movs r0, #9
	strh r0, [r7, #0xe]
	movs r0, #2
	strh r0, [r7, #0x10]
	movs r0, #0xb
	strh r0, [r7, #0x12]
	strb r1, [r7, #0x16]
	strh r5, [r7, #8]
	adds r7, #0x18
	movs r0, #0x50
	strh r0, [r7, #0xa]
	strh r0, [r7, #0xc]
	movs r0, #7
	strh r0, [r7, #0xe]
	movs r0, #0xf
	strh r0, [r7, #0x10]
	movs r0, #6
	strh r0, [r7, #0x12]
	strb r1, [r7, #0x16]
	strh r5, [r7, #8]
	strh r5, [r6]
	strh r1, [r6, #2]
	strh r1, [r6, #4]
	strh r5, [r6, #6]
	adds r0, #0xfa
	strh r0, [r6, #8]
	strb r4, [r6, #0xa]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	bl sub_806A02C
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08069E48: .4byte 0x030000CC
_08069E4C: .4byte gMusicManagerState

	thumb_func_start sub_8069E50
sub_8069E50: @ 0x08069E50
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r2, _08069E80 @ =gCurTask
	ldr r0, [r2]
	ldrh r0, [r0, #6]
	ldr r1, _08069E84 @ =0x030000A8
	adds r4, r0, r1
	ldr r3, _08069E88 @ =0x030000BC
	adds r1, r0, r3
	ldr r3, [r1]
	adds r3, #1
	str r3, [r1]
	ldr r1, _08069E8C @ =0x030000CC
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r6, r2, #0
	cmp r0, #0
	beq _08069E90
	movs r0, #0x96
	lsls r0, r0, #2
	movs r1, #0x87
	lsls r1, r1, #2
	b _08069E98
	.align 2, 0
_08069E80: .4byte gCurTask
_08069E84: .4byte 0x030000A8
_08069E88: .4byte 0x030000BC
_08069E8C: .4byte 0x030000CC
_08069E90:
	movs r0, #0xa5
	lsls r0, r0, #1
	movs r1, #0x87
	lsls r1, r1, #1
_08069E98:
	cmp r3, r0
	bls _08069EC8
	ldr r2, _08069EBC @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08069EC0 @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _08069EC4 @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	ldr r0, [r6]
	bl TaskDestroy
	bl sub_803D724
	b _08069EDE
	.align 2, 0
_08069EBC: .4byte gDispCnt
_08069EC0: .4byte 0x00001FFF
_08069EC4: .4byte gBldRegs
_08069EC8:
	cmp r3, r1
	bls _08069ED4
	adds r0, r4, #0
	bl sub_805423C
	movs r5, #1
_08069ED4:
	bl sub_8069FDC
	adds r0, r5, #0
	bl sub_8069EE4
_08069EDE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8069EE4
sub_8069EE4: @ 0x08069EE4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r7, r0, #0
	ldr r1, _08069F38 @ =gUnknown_0868B65C
	mov r0, sp
	movs r2, #0x19
	bl memcpy
	ldr r0, _08069F3C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	ldr r1, _08069F40 @ =0x030000BC
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0x3c
	bls _08069F5A
	adds r1, #8
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08069F1A
	adds r0, r6, #0
	bl DisplaySprite
_08069F1A:
	ldr r1, _08069F44 @ =0x03000030
	adds r0, r4, r1
	bl DisplaySprite
	ldr r0, _08069F48 @ =0x03000090
	adds r5, r4, r0
	cmp r7, #0
	beq _08069F50
	ldr r1, _08069F4C @ =0x030000B4
	adds r0, r4, r1
	adds r1, r5, #0
	bl sub_8052F78
	b _08069F5A
	.align 2, 0
_08069F38: .4byte gUnknown_0868B65C
_08069F3C: .4byte gCurTask
_08069F40: .4byte 0x030000BC
_08069F44: .4byte 0x03000030
_08069F48: .4byte 0x03000090
_08069F4C: .4byte 0x030000B4
_08069F50:
	ldr r1, _08069F70 @ =0x030000B4
	adds r0, r4, r1
	adds r1, r5, #0
	bl sub_80530CC
_08069F5A:
	adds r5, r6, #0
	adds r5, #0x60
	ldrh r4, [r5, #0xc]
	cmp r7, #0
	beq _08069F78
	ldr r0, _08069F74 @ =gUnknown_0868B678
	adds r1, r5, #0
	bl sub_8052F78
	b _08069F80
	.align 2, 0
_08069F70: .4byte 0x030000B4
_08069F74: .4byte gUnknown_0868B678
_08069F78:
	ldr r0, _08069FC4 @ =gUnknown_0868B678
	adds r1, r5, #0
	bl sub_80530CC
_08069F80:
	adds r5, r6, #0
	adds r5, #0x78
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r0, #2
	strh r0, [r5, #0xc]
	ldrh r2, [r5, #0xa]
	subs r0, r2, #2
	strh r0, [r5, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x1f
	rsbs r1, r1, #0
	adds r4, r6, #0
	adds r4, #0xc0
	cmp r0, r1
	bge _08069FB4
	adds r0, r2, #0
	adds r0, #0x1e
	strh r0, [r5, #0xa]
	ldr r0, [r4]
	adds r0, #1
	movs r1, #8
	bl Mod
	str r0, [r4]
_08069FB4:
	cmp r7, #0
	beq _08069FC8
	ldr r0, [r4]
	add r0, sp
	adds r1, r5, #0
	bl sub_8052F78
	b _08069FD2
	.align 2, 0
_08069FC4: .4byte gUnknown_0868B678
_08069FC8:
	ldr r0, [r4]
	add r0, sp
	adds r1, r5, #0
	bl sub_80530CC
_08069FD2:
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8069FDC
sub_8069FDC: @ 0x08069FDC
	ldr r0, _0806A008 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _0806A00C @ =0x03000060
	adds r2, r0, r1
	adds r1, #0x5c
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r1, #0
	subs r0, #0x1f
	cmp r0, #8
	bhi _0806A010
	ldrh r0, [r2, #0xc]
	subs r0, #0xc
	strh r0, [r2, #0xc]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x13
	bgt _0806A028
	movs r0, #0x14
	strh r0, [r2, #0xc]
	b _0806A028
	.align 2, 0
_0806A008: .4byte gCurTask
_0806A00C: .4byte 0x03000060
_0806A010:
	cmp r1, #0x14
	bhi _0806A028
	cmp r1, #0xa
	bls _0806A028
	ldrh r0, [r2, #0xa]
	subs r0, #0x18
	strh r0, [r2, #0xa]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0806A028
	movs r0, #0
	strh r0, [r2, #0xa]
_0806A028:
	bx lr
	.align 2, 0

	thumb_func_start sub_806A02C
sub_806A02C: @ 0x0806A02C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldrh r6, [r1, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r6
	mov r8, r0
	ldr r0, _0806A068 @ =0x00008C9F
	cmp r4, r0
	bls _0806A080
	ldr r1, _0806A06C @ =0x030000BA
	adds r0, r6, r1
	movs r1, #0x29
	strb r1, [r0]
	ldr r2, _0806A070 @ =0x030000B9
	adds r0, r6, r2
	strb r1, [r0]
	ldr r3, _0806A074 @ =0x030000B7
	adds r0, r6, r3
	strb r1, [r0]
	ldr r4, _0806A078 @ =0x030000B6
	adds r2, r6, r4
	movs r0, #0x25
	strb r0, [r2]
	ldr r7, _0806A07C @ =0x030000B4
	adds r0, r6, r7
	b _0806A0EA
	.align 2, 0
_0806A068: .4byte 0x00008C9F
_0806A06C: .4byte 0x030000BA
_0806A070: .4byte 0x030000B9
_0806A074: .4byte 0x030000B7
_0806A078: .4byte 0x030000B6
_0806A07C: .4byte 0x030000B4
_0806A080:
	adds r0, r4, #0
	movs r1, #0x3c
	bl Div
	adds r5, r0, #0
	movs r1, #0x3c
	bl Div
	ldr r2, _0806A104 @ =sZoneTimeSecondsTable
	lsls r0, r0, #1
	adds r1, r0, r2
	movs r3, #0
	ldrsh r1, [r1, r3]
	subs r5, r5, r1
	lsls r5, r5, #1
	adds r2, r5, r2
	movs r7, #0
	ldrsh r2, [r2, r7]
	subs r2, r4, r2
	ldr r1, _0806A108 @ =sZoneTimeMinutesTable
	adds r1, r0, r1
	ldrh r1, [r1]
	subs r2, r2, r1
	lsls r2, r2, #1
	ldr r4, _0806A10C @ =gUnknown_0865EFF4
	adds r1, r2, #1
	adds r1, r1, r4
	ldrb r3, [r1]
	ldr r7, _0806A110 @ =0x030000BA
	adds r1, r6, r7
	strb r3, [r1]
	adds r2, r2, r4
	ldrb r2, [r2]
	ldr r3, _0806A114 @ =0x030000B9
	adds r1, r6, r3
	strb r2, [r1]
	ldr r3, _0806A118 @ =gUnknown_0865F06C
	adds r1, r5, #1
	adds r1, r1, r3
	ldrb r2, [r1]
	ldr r4, _0806A11C @ =0x030000B7
	adds r1, r6, r4
	strb r2, [r1]
	adds r1, r5, r3
	ldrb r2, [r1]
	subs r7, #4
	adds r1, r6, r7
	strb r2, [r1]
	adds r0, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	ldr r2, _0806A120 @ =0x030000B4
	adds r0, r6, r2
_0806A0EA:
	strb r1, [r0]
	mov r0, r8
	adds r0, #0xb5
	movs r1, #0x2a
	strb r1, [r0]
	adds r0, #3
	strb r1, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806A104: .4byte sZoneTimeSecondsTable
_0806A108: .4byte sZoneTimeMinutesTable
_0806A10C: .4byte gUnknown_0865EFF4
_0806A110: .4byte 0x030000BA
_0806A114: .4byte 0x030000B9
_0806A118: .4byte gUnknown_0865F06C
_0806A11C: .4byte 0x030000B7
_0806A120: .4byte 0x030000B4

	thumb_func_start sub_806A124
sub_806A124: @ 0x0806A124
	push {r4, r5, lr}
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	ldr r0, [r4, #4]
	bl VramFree
	ldr r0, [r4, #0x34]
	bl VramFree
	ldr r0, _0806A14C @ =0x030000C8
	adds r5, r5, r0
	ldr r0, [r5]
	bl VramFree
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806A14C: .4byte 0x030000C8

	thumb_func_start sub_806A150
sub_806A150: @ 0x0806A150
	push {lr}
	sub sp, #0x30
	add r1, sp, #0x2c
	movs r2, #0
	movs r0, #0x80
	strb r0, [r1]
	mov r0, sp
	adds r0, #0x2b
	strb r2, [r0]
	ldr r0, _0806A198 @ =gUnknown_086CE4F4
	str r0, [sp, #0x14]
	movs r1, #0xa0
	lsls r1, r1, #3
	str r1, [sp, #0x18]
	ldr r0, _0806A19C @ =gUnknown_086CE7F4
	str r0, [sp, #0x10]
	str r1, [sp, #0x1c]
	ldr r0, _0806A1A0 @ =gUnknown_086CE2F4
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x24]
	add r0, sp, #0x28
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	mov r1, sp
	adds r1, #0x2a
	movs r0, #0x15
	strb r0, [r1]
	mov r0, sp
	bl sub_80528AC
	add sp, #0x30
	pop {r0}
	bx r0
	.align 2, 0
_0806A198: .4byte gUnknown_086CE4F4
_0806A19C: .4byte gUnknown_086CE7F4
_0806A1A0: .4byte gUnknown_086CE2F4

	thumb_func_start CreateTimeAttackRetryMenu
CreateTimeAttackRetryMenu: @ 0x0806A1A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r0, #0x9b
	bl m4aSongNumStart
	movs r5, #0
	ldr r4, _0806A3AC @ =gKeysFirstRepeatIntervals
	movs r3, #0x14
	ldr r2, _0806A3B0 @ =gKeysContinuedRepeatIntervals
	movs r1, #8
_0806A1C0:
	adds r0, r5, r4
	strb r3, [r0]
	adds r0, r5, r2
	strb r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #9
	bls _0806A1C0
	bl sub_80535FC
	ldr r1, _0806A3B4 @ =gDispCnt
	movs r2, #0x8a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0806A3B8 @ =gBgCntRegs
	movs r5, #0
	movs r4, #0
	ldr r0, _0806A3BC @ =0x00001E83
	strh r0, [r1]
	bl sub_8053674
	ldr r0, _0806A3C0 @ =gBgScrollRegs
	strh r4, [r0]
	strh r4, [r0, #2]
	ldr r0, _0806A3C4 @ =sub_806A400
	movs r1, #0x9c
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r3, _0806A3C8 @ =TaskDestructor_806A698
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r0, r1
	ldr r3, _0806A3CC @ =0x03000120
	adds r3, r3, r0
	mov r8, r3
	ldr r2, _0806A3D0 @ =0x03000134
	adds r1, r0, r2
	strb r5, [r1]
	ldr r3, _0806A3D4 @ =0x03000130
	adds r1, r0, r3
	str r4, [r1]
	ldr r1, _0806A3D8 @ =0x0300012C
	adds r0, r0, r1
	str r4, [r0]
	movs r5, #0
	mov sl, r5
_0806A22C:
	lsls r4, r5, #1
	adds r0, r4, r5
	lsls r0, r0, #4
	adds r6, r7, r0
	ldr r0, _0806A3DC @ =gUnknown_0868B69C
	adds r0, r5, r0
	ldrb r0, [r0]
	bl VramMalloc
	str r0, [r6, #4]
	ldr r2, _0806A3E0 @ =gLoadedSaveGame
	ldrb r0, [r2, #0x19]
	lsls r0, r0, #1
	lsls r1, r5, #2
	adds r0, r0, r1
	ldr r3, _0806A3E4 @ =gUnknown_0868B684
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r6, #0xa]
	ldr r1, _0806A3E8 @ =gUnknown_0868B694
	ldrb r0, [r2, #0x19]
	adds r0, r0, r4
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x20
	strb r1, [r0]
	movs r0, #0x2f
	strh r0, [r6, #0x16]
	lsls r0, r5, #4
	adds r0, #0x21
	strh r0, [r6, #0x18]
	mov r0, sl
	strh r0, [r6, #8]
	strh r0, [r6, #0x14]
	strh r0, [r6, #0x1c]
	adds r1, r6, #0
	adds r1, #0x21
	movs r3, #1
	rsbs r3, r3, #0
	mov r2, sp
	strb r3, [r2, #4]
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x22
	movs r1, #0x10
	strb r1, [r0]
	adds r0, #3
	movs r2, #0
	strb r2, [r0]
	str r3, [r6, #0x28]
	movs r3, #0x90
	lsls r3, r3, #3
	strh r3, [r6, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #6
	mov sb, r0
	str r0, [r6, #0x10]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _0806A22C
	adds r6, r7, #0
	adds r6, #0xc0
	movs r0, #4
	bl VramMalloc
	str r0, [r6, #4]
	movs r5, #0
	movs r4, #0
	ldr r0, _0806A3EC @ =0x00000359
	strh r0, [r6, #0xa]
	adds r0, r7, #0
	adds r0, #0xe0
	strb r5, [r0]
	movs r0, #0x21
	strh r0, [r6, #0x16]
	movs r0, #0x19
	strh r0, [r6, #0x18]
	strh r4, [r6, #8]
	strh r4, [r6, #0x14]
	strh r4, [r6, #0x1c]
	adds r1, r7, #0
	adds r1, #0xe1
	ldrb r0, [r1]
	mov r2, sp
	ldrb r2, [r2, #4]
	orrs r0, r2
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0xe2
	movs r3, #0x10
	strb r3, [r0]
	adds r0, #3
	strb r5, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x28]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r6, #0x1a]
	mov r2, sb
	str r2, [r6, #0x10]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r6, #0x30
	movs r0, #0x40
	bl VramMalloc
	str r0, [r6, #4]
	ldr r2, _0806A3F0 @ =gUnknown_0868B6A0
	ldr r3, _0806A3F4 @ =gSelectedCharacter
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r6, #0xa]
	ldr r2, _0806A3F8 @ =gUnknown_0868B6B8
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r1, [r0]
	movs r3, #0x88
	lsls r3, r3, #1
	adds r0, r7, r3
	strb r1, [r0]
	movs r0, #0x78
	strh r0, [r6, #0x16]
	movs r0, #0x82
	strh r0, [r6, #0x18]
	strh r4, [r6, #8]
	strh r4, [r6, #0x14]
	strh r4, [r6, #0x1c]
	adds r0, #0x8f
	adds r1, r7, r0
	ldrb r0, [r1]
	mov r2, sp
	ldrb r2, [r2, #4]
	orrs r0, r2
	strb r0, [r1]
	adds r3, #2
	adds r0, r7, r3
	movs r1, #0x10
	strb r1, [r0]
	ldr r2, _0806A3FC @ =0x00000115
	adds r0, r7, r2
	strb r5, [r0]
	movs r3, #1
	rsbs r3, r3, #0
	str r3, [r6, #0x28]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r6, #0x1a]
	movs r0, #0x90
	lsls r0, r0, #6
	str r0, [r6, #0x10]
	mov r1, r8
	strh r4, [r1]
	movs r0, #1
	strh r0, [r1, #2]
	movs r0, #2
	strh r0, [r1, #4]
	strh r4, [r1, #6]
	adds r0, #0xfe
	strh r0, [r1, #8]
	movs r2, #0x10
	strb r2, [r1, #0xa]
	mov r0, r8
	bl sub_805423C
	bl sub_806A150
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806A3AC: .4byte gKeysFirstRepeatIntervals
_0806A3B0: .4byte gKeysContinuedRepeatIntervals
_0806A3B4: .4byte gDispCnt
_0806A3B8: .4byte gBgCntRegs
_0806A3BC: .4byte 0x00001E83
_0806A3C0: .4byte gBgScrollRegs
_0806A3C4: .4byte sub_806A400
_0806A3C8: .4byte TaskDestructor_806A698
_0806A3CC: .4byte 0x03000120
_0806A3D0: .4byte 0x03000134
_0806A3D4: .4byte 0x03000130
_0806A3D8: .4byte 0x0300012C
_0806A3DC: .4byte gUnknown_0868B69C
_0806A3E0: .4byte gLoadedSaveGame
_0806A3E4: .4byte gUnknown_0868B684
_0806A3E8: .4byte gUnknown_0868B694
_0806A3EC: .4byte 0x00000359
_0806A3F0: .4byte gUnknown_0868B6A0
_0806A3F4: .4byte gSelectedCharacter
_0806A3F8: .4byte gUnknown_0868B6B8
_0806A3FC: .4byte 0x00000115

	thumb_func_start sub_806A400
sub_806A400: @ 0x0806A400
	push {r4, r5, r6, r7, lr}
	ldr r0, _0806A440 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r0, _0806A444 @ =0x03000120
	adds r6, r4, r0
	adds r0, r6, #0
	bl sub_805423C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806A4E0
	ldr r0, _0806A448 @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806A454
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r2, _0806A44C @ =0x03000134
	adds r1, r4, r2
	ldrb r0, [r1]
	cmp r0, #2
	bhi _0806A450
	adds r0, #1
	b _0806A476
	.align 2, 0
_0806A440: .4byte gCurTask
_0806A444: .4byte 0x03000120
_0806A448: .4byte gRepeatedKeys
_0806A44C: .4byte 0x03000134
_0806A450:
	movs r0, #0
	b _0806A476
_0806A454:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806A478
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r0, _0806A470 @ =0x03000134
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0806A474
	subs r0, #1
	b _0806A476
	.align 2, 0
_0806A470: .4byte 0x03000134
_0806A474:
	movs r0, #3
_0806A476:
	strb r0, [r1]
_0806A478:
	ldr r0, _0806A4EC @ =gPressedKeys
	ldrh r1, [r0]
	movs r7, #1
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _0806A4E0
	movs r0, #0x6a
	bl m4aSongNumStart
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #3
	beq _0806A4D2
	adds r4, r5, #0
	adds r4, #0xf0
	ldr r2, _0806A4F0 @ =gUnknown_0868B6A0
	ldr r3, _0806A4F4 @ =gSelectedCharacter
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r4, #0xa]
	ldr r1, _0806A4F8 @ =gUnknown_0868B6B8
	movs r2, #0
	ldrsb r2, [r3, r2]
	lsls r0, r2, #1
	adds r0, r0, r2
	adds r1, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x88
	lsls r2, r2, #1
	adds r0, r5, r2
	strb r1, [r0]
	ldr r0, _0806A4FC @ =0x00000111
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_0806A4D2:
	movs r0, #0
	strh r7, [r6, #4]
	strh r0, [r6, #6]
	ldr r0, _0806A500 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806A504 @ =sub_806A508
	str r0, [r1, #8]
_0806A4E0:
	bl sub_806A5BC
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806A4EC: .4byte gPressedKeys
_0806A4F0: .4byte gUnknown_0868B6A0
_0806A4F4: .4byte gSelectedCharacter
_0806A4F8: .4byte gUnknown_0868B6B8
_0806A4FC: .4byte 0x00000111
_0806A500: .4byte gCurTask
_0806A504: .4byte sub_806A508

	thumb_func_start sub_806A508
sub_806A508: @ 0x0806A508
	push {r4, r5, lr}
	ldr r0, _0806A544 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	ldr r0, _0806A548 @ =0x03000120
	adds r4, r2, r0
	ldr r1, _0806A54C @ =0x0300012C
	adds r3, r2, r1
	ldr r1, [r3]
	ldr r0, _0806A550 @ =0x00009FFF
	cmp r1, r0
	bgt _0806A558
	ldr r1, _0806A554 @ =0x03000134
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #3
	beq _0806A558
	subs r1, #4
	adds r0, r2, r1
	ldr r1, [r0]
	adds r1, #0x20
	str r1, [r0]
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	b _0806A5B0
	.align 2, 0
_0806A544: .4byte gCurTask
_0806A548: .4byte 0x03000120
_0806A54C: .4byte 0x0300012C
_0806A550: .4byte 0x00009FFF
_0806A554: .4byte 0x03000134
_0806A558:
	adds r0, r4, #0
	bl sub_805423C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806A5B0
	ldr r2, _0806A59C @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0806A5A0 @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _0806A5A4 @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r4, [r0]
	movs r0, #0x9b
	bl m4aSongNumStop
	ldr r0, _0806A5A8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	ldr r0, _0806A5AC @ =gUnknown_0868B6C4
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r0, [r4]
	bl _call_via_r0
	b _0806A5B4
	.align 2, 0
_0806A59C: .4byte gDispCnt
_0806A5A0: .4byte 0x00001FFF
_0806A5A4: .4byte gBldRegs
_0806A5A8: .4byte gCurTask
_0806A5AC: .4byte gUnknown_0868B6C4
_0806A5B0:
	bl sub_806A5BC
_0806A5B4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_806A5BC
sub_806A5BC: @ 0x0806A5BC
	push {r4, r5, r6, lr}
	ldr r0, _0806A658 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r4, #0
_0806A5CC:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r5, r6, r0
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0806A5CC
	adds r5, r6, #0
	adds r5, #0xc0
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	adds r0, #0x19
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl DisplaySprite
	adds r5, #0x30
	movs r2, #0x96
	lsls r2, r2, #1
	adds r0, r6, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r0, #0x78
	strh r0, [r5, #0x16]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _0806A64C
	ldr r2, _0806A65C @ =gUnknown_0868B6A0
	ldr r3, _0806A660 @ =gSelectedCharacter
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r5, #0xa]
	ldr r1, _0806A664 @ =gUnknown_0868B6B8
	movs r2, #0
	ldrsb r2, [r3, r2]
	lsls r0, r2, #1
	adds r0, r0, r2
	adds r1, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x88
	lsls r2, r2, #1
	adds r0, r6, r2
	strb r1, [r0]
	ldr r0, _0806A668 @ =0x00000111
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
_0806A64C:
	adds r0, r5, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806A658: .4byte gCurTask
_0806A65C: .4byte gUnknown_0868B6A0
_0806A660: .4byte gSelectedCharacter
_0806A664: .4byte gUnknown_0868B6B8
_0806A668: .4byte 0x00000111

	thumb_func_start sub_806A66C
sub_806A66C: @ 0x0806A66C
	push {lr}
	ldr r0, _0806A67C @ =gSelectedCharacter
	ldrb r0, [r0]
	bl CreateCharacterSelectionScreen
	pop {r0}
	bx r0
	.align 2, 0
_0806A67C: .4byte gSelectedCharacter

	thumb_func_start sub_806A680
sub_806A680: @ 0x0806A680
	push {lr}
	movs r0, #0
	bl sub_8061948
	pop {r0}
	bx r0

	thumb_func_start sub_806A68C
sub_806A68C: @ 0x0806A68C
	push {lr}
	movs r0, #1
	bl CreateTitleScreen
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_806A698
TaskDestructor_806A698: @ 0x0806A698
	push {r4, r5, r6, lr}
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r4, #0
	adds r0, #4
	adds r5, r1, r0
_0806A6A8:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, r5, r0
	ldr r0, [r0]
	bl VramFree
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0806A6A8
	adds r0, r6, #0
	adds r0, #0xc4
	ldr r0, [r0]
	bl VramFree
	adds r0, r6, #0
	adds r0, #0xf4
	ldr r0, [r0]
	bl VramFree
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
