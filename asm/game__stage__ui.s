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
	ldr r6, _080549E0 @ =gTrappedAnimalVariant
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
_080549E0: .4byte gTrappedAnimalVariant
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
	str r2, [sp, #0x34] @ sp34 = act = (gCurrentLevel % 2u)
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
