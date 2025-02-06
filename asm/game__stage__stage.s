.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_803D66C
sub_803D66C: @ 0x0803D66C
	push {lr}
	ldr r2, _0803D6A4 @ =gStageFlags
	ldrh r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0803D6A8 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bne _0803D6C4
	ldr r1, _0803D6AC @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0803D6B0 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0803D6B4 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0803D6B8 @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0803D6BC @ =gVramGraphicsCopyCursor
	ldr r0, _0803D6C0 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl CreateTimeAttackLobbyScreen
	b _0803D720
	.align 2, 0
_0803D6A4: .4byte gStageFlags
_0803D6A8: .4byte gGameMode
_0803D6AC: .4byte 0x0000FFFF
_0803D6B0: .4byte gBackgroundsCopyQueueCursor
_0803D6B4: .4byte gBackgroundsCopyQueueIndex
_0803D6B8: .4byte sa2__gUnknown_03005390
_0803D6BC: .4byte gVramGraphicsCopyCursor
_0803D6C0: .4byte gVramGraphicsCopyQueueIndex
_0803D6C4:
	ldr r1, _0803D6EC @ =gNumLives
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803D71C
	ldr r1, _0803D6F0 @ =sa2__gUnknown_0300543C
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	ble _0803D6F4
	subs r0, r2, #1
	strb r0, [r1]
	movs r0, #1
	bl CreateGameOverScreen
	b _0803D720
	.align 2, 0
_0803D6EC: .4byte gNumLives
_0803D6F0: .4byte sa2__gUnknown_0300543C
_0803D6F4:
	ldr r0, _0803D714 @ =gLoadedSaveGame
	movs r1, #0x84
	lsls r1, r1, #3
	adds r2, r0, r1
	ldr r0, _0803D718 @ =gLevelScore
	ldr r0, [r0]
	ldr r1, [r2]
	cmp r0, r1
	bhs _0803D708
	adds r0, r1, #0
_0803D708:
	str r0, [r2]
	movs r0, #2
	bl CreateGameOverScreen
	b _0803D720
	.align 2, 0
_0803D714: .4byte gLoadedSaveGame
_0803D718: .4byte gLevelScore
_0803D71C:
	bl sub_805B9E8
_0803D720:
	pop {r0}
	bx r0

	thumb_func_start sub_803D724
sub_803D724: @ 0x0803D724
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _0803D830 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0803D834 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0803D838 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0803D83C @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0803D840 @ =gVramGraphicsCopyCursor
	ldr r0, _0803D844 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl m4aMPlayAllStop
	bl m4aSoundVSyncOff
	ldr r0, _0803D848 @ =gFlags
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r1, r0
	ldr r2, _0803D84C @ =0x04000200
	mov r8, r2
	ldrh r0, [r2]
	mov sl, r0
	ldr r6, _0803D850 @ =0x04000208
	ldrh r0, [r6]
	adds r7, r0, #0
	ldr r5, _0803D854 @ =0x04000004
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
	ldr r0, _0803D848 @ =gFlags
	str r1, [r0]
	ldr r1, _0803D858 @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r4, _0803D85C @ =0x0000C5FF
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r3, _0803D860 @ =0x00007FFF
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
	ldr r0, _0803D864 @ =0x040000D4
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
	ldr r1, _0803D848 @ =gFlags
	ldr r0, [r1]
	ldr r1, _0803D868 @ =0xFFFF7FFF
	ands r0, r1
	ldr r2, _0803D848 @ =gFlags
	str r0, [r2]
	ldr r0, _0803D86C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	beq _0803D874
	ldr r1, _0803D870 @ =gCurrentLevel
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x11
	bgt _0803D878
	bl GameStageStart
	b _0803D878
	.align 2, 0
_0803D830: .4byte 0x0000FFFF
_0803D834: .4byte gBackgroundsCopyQueueCursor
_0803D838: .4byte gBackgroundsCopyQueueIndex
_0803D83C: .4byte sa2__gUnknown_03005390
_0803D840: .4byte gVramGraphicsCopyCursor
_0803D844: .4byte gVramGraphicsCopyQueueIndex
_0803D848: .4byte gFlags
_0803D84C: .4byte 0x04000200
_0803D850: .4byte 0x04000208
_0803D854: .4byte 0x04000004
_0803D858: .4byte 0x040000B0
_0803D85C: .4byte 0x0000C5FF
_0803D860: .4byte 0x00007FFF
_0803D864: .4byte 0x040000D4
_0803D868: .4byte 0xFFFF7FFF
_0803D86C: .4byte gGameMode
_0803D870: .4byte gCurrentLevel
_0803D874:
	bl CreateTimeAttackLobbyScreen
_0803D878:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start StageInit_Zone3Act1
StageInit_Zone3Act1: @ 0x0803D888
	push {r4, r5, lr}
	movs r4, #0x80
	lsls r4, r4, #6
	movs r1, #0xcc
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803D928 @ =0x00000331
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803D92C @ =0x00000332
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r1, #0xce
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803D930 @ =0x00000339
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r5, _0803D934 @ =0x0000033B
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r1, #0xcf
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803D938 @ =0x0000034B
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r1, #0xd3
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803D93C @ =0x0000033A
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0x10
	bl m4aSongNumStart
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803D928: .4byte 0x00000331
_0803D92C: .4byte 0x00000332
_0803D930: .4byte 0x00000339
_0803D934: .4byte 0x0000033B
_0803D938: .4byte 0x0000034B
_0803D93C: .4byte 0x0000033A

	thumb_func_start StageInit_Zone3Act2
StageInit_Zone3Act2: @ 0x0803D940
	push {r4, r5, lr}
	movs r4, #0x80
	lsls r4, r4, #6
	movs r1, #0xcc
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803D9E0 @ =0x00000331
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803D9E4 @ =0x00000332
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r1, #0xce
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803D9E8 @ =0x00000339
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r5, _0803D9EC @ =0x0000033B
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r1, #0xcf
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803D9F0 @ =0x0000034B
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r1, #0xd3
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803D9F4 @ =0x0000033A
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0x11
	bl m4aSongNumStart
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803D9E0: .4byte 0x00000331
_0803D9E4: .4byte 0x00000332
_0803D9E8: .4byte 0x00000339
_0803D9EC: .4byte 0x0000033B
_0803D9F0: .4byte 0x0000034B
_0803D9F4: .4byte 0x0000033A

	thumb_func_start StageInit_Zone6Act1
StageInit_Zone6Act1: @ 0x0803D9F8
	push {r4, lr}
	movs r4, #0x80
	lsls r4, r4, #6
	ldr r1, _0803DAF8 @ =0x00000347
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DAFC @ =0x00000349
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DB00 @ =0x0000034A
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0x16
	bl m4aSongNumStart
	ldr r0, _0803DB04 @ =gBossIndex
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803DA72
	ldr r1, _0803DB08 @ =gCamera
	ldr r0, _0803DB0C @ =0x00000422
	strh r0, [r1, #0x18]
	ldrh r2, [r1, #0x26]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r1, #0x26]
	ldr r2, _0803DB10 @ =gBgCntRegs
	ldrh r1, [r2, #6]
	ldr r0, _0803DB14 @ =0x00003FFF
	ands r0, r1
	strh r0, [r2, #6]
	ldr r0, _0803DB18 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803DA72
	ldr r2, _0803DB1C @ =gStageFlags
	ldrh r0, [r2]
	movs r1, #4
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0803DB20 @ =gCourseTime
	ldr r0, _0803DB24 @ =0x00004650
	str r0, [r1]
_0803DA72:
	ldr r0, _0803DB04 @ =gBossIndex
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #1
	bls _0803DAB2
	ldr r1, _0803DB08 @ =gCamera
	movs r0, #0xae
	lsls r0, r0, #5
	strh r0, [r1, #0x16]
	ldrh r2, [r1, #0x26]
	movs r4, #0x80
	lsls r4, r4, #8
	adds r0, r4, #0
	orrs r0, r2
	strh r0, [r1, #0x26]
	ldr r2, _0803DB10 @ =gBgCntRegs
	ldrh r1, [r2, #6]
	ldr r0, _0803DB14 @ =0x00003FFF
	ands r0, r1
	strh r0, [r2, #6]
	ldr r0, _0803DB18 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803DAB2
	ldr r2, _0803DB1C @ =gStageFlags
	ldrh r0, [r2]
	movs r1, #4
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0803DB20 @ =gCourseTime
	ldr r0, _0803DB24 @ =0x00004650
	str r0, [r1]
_0803DAB2:
	ldrb r0, [r3]
	cmp r0, #2
	bls _0803DAF2
	ldr r2, _0803DB10 @ =gBgCntRegs
	ldrh r1, [r2, #6]
	ldr r0, _0803DB14 @ =0x00003FFF
	ands r0, r1
	strh r0, [r2, #6]
	ldr r2, _0803DB08 @ =gCamera
	ldrh r1, [r2, #0x26]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r3, #0
	orrs r0, r1
	ldr r1, _0803DB28 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2, #0x26]
	movs r0, #0xcc
	lsls r0, r0, #4
	strh r0, [r2, #0x16]
	ldr r0, _0803DB18 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803DAF2
	ldr r2, _0803DB1C @ =gStageFlags
	ldrh r0, [r2]
	movs r1, #4
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0803DB20 @ =gCourseTime
	ldr r0, _0803DB24 @ =0x00004650
	str r0, [r1]
_0803DAF2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803DAF8: .4byte 0x00000347
_0803DAFC: .4byte 0x00000349
_0803DB00: .4byte 0x0000034A
_0803DB04: .4byte gBossIndex
_0803DB08: .4byte gCamera
_0803DB0C: .4byte 0x00000422
_0803DB10: .4byte gBgCntRegs
_0803DB14: .4byte 0x00003FFF
_0803DB18: .4byte gGameMode
_0803DB1C: .4byte gStageFlags
_0803DB20: .4byte gCourseTime
_0803DB24: .4byte 0x00004650
_0803DB28: .4byte 0x00007FFF

	thumb_func_start StageInit_PinballChaoGarden
StageInit_PinballChaoGarden: @ 0x0803DB2C
	push {r4, r5, lr}
	movs r4, #0x80
	lsls r4, r4, #6
	movs r1, #0xcc
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DBC0 @ =0x00000331
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DBC4 @ =0x00000332
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r1, #0xce
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DBC8 @ =0x00000339
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r5, _0803DBCC @ =0x0000033B
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r1, #0xcf
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DBD0 @ =0x0000034B
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r1, #0xd3
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0x10
	bl m4aSongNumStart
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803DBC0: .4byte 0x00000331
_0803DBC4: .4byte 0x00000332
_0803DBC8: .4byte 0x00000339
_0803DBCC: .4byte 0x0000033B
_0803DBD0: .4byte 0x0000034B

	thumb_func_start ApplyGameStageSettings
ApplyGameStageSettings: @ 0x0803DBD4
	push {lr}
	ldr r0, _0803DC28 @ =gLevelScore
	movs r3, #0
	str r3, [r0]
	ldr r2, _0803DC2C @ =gNumLives
	movs r0, #3
	strb r0, [r2]
	ldr r1, _0803DC30 @ =gUnknown_03005020
	ldr r0, _0803DC34 @ =gCurrentLevel
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0803DC38 @ =gGameMode
	ldrb r1, [r0]
	cmp r1, #1
	bls _0803DBF6
	movs r0, #1
	strb r0, [r2]
_0803DBF6:
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _0803DC0E
	ldr r0, _0803DC3C @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	ldr r1, _0803DC40 @ =gLoadedSaveGame
	cmp r0, #0
	beq _0803DC18
_0803DC0E:
	ldr r0, _0803DC44 @ =gDifficultyLevel
	ldr r1, _0803DC40 @ =gLoadedSaveGame
	ldrb r2, [r1, #0x18]
	strb r2, [r0]
	strb r3, [r1, #0x18]
_0803DC18:
	ldrb r0, [r1, #0x1c]
	bl sub_804D02C
	bl GameStageStart
	pop {r0}
	bx r0
	.align 2, 0
_0803DC28: .4byte gLevelScore
_0803DC2C: .4byte gNumLives
_0803DC30: .4byte gUnknown_03005020
_0803DC34: .4byte gCurrentLevel
_0803DC38: .4byte gGameMode
_0803DC3C: .4byte gStageFlags
_0803DC40: .4byte gLoadedSaveGame
_0803DC44: .4byte gDifficultyLevel

	thumb_func_start sub_803DC48
sub_803DC48: @ 0x0803DC48
	push {r4, lr}
	ldr r4, _0803DC74 @ =gGameStageTask
	ldr r0, [r4]
	bl TaskDestroy
	movs r0, #0
	str r0, [r4]
	ldr r0, _0803DC78 @ =gPlayer
	bl sub_8046CC4
	ldr r0, _0803DC7C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0803DC6A
	ldr r0, _0803DC80 @ =gPartner
	bl sub_8046CC4
_0803DC6A:
	bl DestroyCameraMovementTask
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803DC74: .4byte gGameStageTask
_0803DC78: .4byte gPlayer
_0803DC7C: .4byte gGameMode
_0803DC80: .4byte gPartner

	thumb_func_start TaskDestructor_GameStage
TaskDestructor_GameStage: @ 0x0803DC84
	push {lr}
	ldr r0, _0803DCB8 @ =gGameMode
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _0803DCA0
	ldr r0, _0803DCBC @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0803DCA8
_0803DCA0:
	ldr r0, _0803DCC0 @ =gLoadedSaveGame
	ldr r1, _0803DCC4 @ =gDifficultyLevel
	ldrb r1, [r1]
	strb r1, [r0, #0x18]
_0803DCA8:
	ldr r1, _0803DCC8 @ =gGameStageTask
	movs r0, #0
	str r0, [r1]
	bl m4aMPlayAllStop
	pop {r0}
	bx r0
	.align 2, 0
_0803DCB8: .4byte gGameMode
_0803DCBC: .4byte gStageFlags
_0803DCC0: .4byte gLoadedSaveGame
_0803DCC4: .4byte gDifficultyLevel
_0803DCC8: .4byte gGameStageTask

	thumb_func_start StageInit_Zone1Act1
StageInit_Zone1Act1: @ 0x0803DCCC
	push {r4, lr}
	movs r4, #0x80
	lsls r4, r4, #6
	ldr r1, _0803DCF8 @ =0x0000032E
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DCFC @ =0x0000032F
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0xc
	bl m4aSongNumStart
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803DCF8: .4byte 0x0000032E
_0803DCFC: .4byte 0x0000032F

	thumb_func_start StageInit_Zone1Act2
StageInit_Zone1Act2: @ 0x0803DD00
	push {r4, r5, lr}
	movs r4, #0x80
	lsls r4, r4, #6
	ldr r1, _0803DD60 @ =0x0000032E
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DD64 @ =0x0000032F
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r5, #0xcd
	lsls r5, r5, #2
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	movs r3, #0
	bl CreatePaletteLoaderTask
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r0, _0803DD68 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0803DD52
	ldr r2, _0803DD6C @ =gCamera
	ldr r0, _0803DD70 @ =gRefCollision
	ldr r1, [r0]
	ldr r3, _0803DD74 @ =0xFFFFFD00
	adds r0, r3, #0
	ldrh r1, [r1, #0x1c]
	adds r0, r0, r1
	strh r0, [r2, #0x1a]
_0803DD52:
	movs r0, #0xd
	bl m4aSongNumStart
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803DD60: .4byte 0x0000032E
_0803DD64: .4byte 0x0000032F
_0803DD68: .4byte gGameMode
_0803DD6C: .4byte gCamera
_0803DD70: .4byte gRefCollision
_0803DD74: .4byte 0xFFFFFD00

	thumb_func_start StageInit_Zone2Act1
StageInit_Zone2Act1: @ 0x0803DD78
	push {r4, lr}
	movs r4, #0x80
	lsls r4, r4, #6
	ldr r1, _0803DDB0 @ =0x00000333
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DDB4 @ =0x0000034D
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DDB8 @ =0x00000351
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0xe
	bl m4aSongNumStart
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803DDB0: .4byte 0x00000333
_0803DDB4: .4byte 0x0000034D
_0803DDB8: .4byte 0x00000351

	thumb_func_start StageInit_Zone2Act2
StageInit_Zone2Act2: @ 0x0803DDBC
	push {r4, lr}
	movs r4, #0x80
	lsls r4, r4, #6
	ldr r1, _0803DDF4 @ =0x00000333
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DDF8 @ =0x0000034D
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DDFC @ =0x00000351
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0xf
	bl m4aSongNumStart
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803DDF4: .4byte 0x00000333
_0803DDF8: .4byte 0x0000034D
_0803DDFC: .4byte 0x00000351

	thumb_func_start StageInit_Zone4Act1
StageInit_Zone4Act1: @ 0x0803DE00
	push {r4, lr}
	movs r4, #0x80
	lsls r4, r4, #6
	ldr r1, _0803DE34 @ =0x00000336
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DE38 @ =0x00000335
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r0, _0803DE3C @ =0x0000060A
	ldr r1, _0803DE40 @ =0x7F207F20
	movs r2, #0
	bl CreateStageWaterTask
	movs r0, #0x12
	bl m4aSongNumStart
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803DE34: .4byte 0x00000336
_0803DE38: .4byte 0x00000335
_0803DE3C: .4byte 0x0000060A
_0803DE40: .4byte 0x7F207F20

	thumb_func_start StageInit_Zone4Act2
StageInit_Zone4Act2: @ 0x0803DE44
	push {r4, lr}
	movs r4, #0x80
	lsls r4, r4, #6
	ldr r1, _0803DE7C @ =0x00000336
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DE80 @ =0x00000335
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0xd0
	lsls r0, r0, #3
	ldr r1, _0803DE84 @ =0x7F207F20
	movs r2, #0
	bl CreateStageWaterTask
	movs r0, #0x13
	bl m4aSongNumStart
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803DE7C: .4byte 0x00000336
_0803DE80: .4byte 0x00000335
_0803DE84: .4byte 0x7F207F20

	thumb_func_start StageInit_Zone5Act1
StageInit_Zone5Act1: @ 0x0803DE88
	push {lr}
	movs r0, #0x80
	lsls r0, r0, #6
	ldr r1, _0803DEA4 @ =0x00000337
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0x14
	bl m4aSongNumStart
	pop {r0}
	bx r0
	.align 2, 0
_0803DEA4: .4byte 0x00000337

	thumb_func_start StageInit_Zone5Act2
StageInit_Zone5Act2: @ 0x0803DEA8
	push {lr}
	movs r0, #0x80
	lsls r0, r0, #6
	ldr r1, _0803DEC4 @ =0x00000337
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0x15
	bl m4aSongNumStart
	pop {r0}
	bx r0
	.align 2, 0
_0803DEC4: .4byte 0x00000337

	thumb_func_start StageInit_Zone6Act2
StageInit_Zone6Act2: @ 0x0803DEC8
	push {r4, lr}
	movs r4, #0x80
	lsls r4, r4, #6
	ldr r1, _0803DF3C @ =0x0000033D
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DF40 @ =0x0000033E
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DF44 @ =0x0000033F
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DF48 @ =0x00000352
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DF4C @ =0x00000353
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DF50 @ =0x0000034E
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DF54 @ =0x0000034F
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0x17
	bl m4aSongNumStart
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803DF3C: .4byte 0x0000033D
_0803DF40: .4byte 0x0000033E
_0803DF44: .4byte 0x0000033F
_0803DF48: .4byte 0x00000352
_0803DF4C: .4byte 0x00000353
_0803DF50: .4byte 0x0000034E
_0803DF54: .4byte 0x0000034F

	thumb_func_start StageInit_Zone7Act1
StageInit_Zone7Act1: @ 0x0803DF58
	push {lr}
	movs r0, #0x18
	bl m4aSongNumStart
	pop {r0}
	bx r0

	thumb_func_start StageInit_Zone7Act2
StageInit_Zone7Act2: @ 0x0803DF64
	push {lr}
	movs r0, #0x1a
	bl m4aSongNumStart
	pop {r0}
	bx r0

	thumb_func_start StageInit_ForestChaoGarden
StageInit_ForestChaoGarden: @ 0x0803DF70
	push {r4, r5, lr}
	movs r4, #0x80
	lsls r4, r4, #6
	ldr r1, _0803DFB8 @ =0x0000032E
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DFBC @ =0x0000032F
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r5, #0xcd
	lsls r5, r5, #2
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	movs r3, #0
	bl CreatePaletteLoaderTask
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0xc
	bl m4aSongNumStart
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803DFB8: .4byte 0x0000032E
_0803DFBC: .4byte 0x0000032F

	thumb_func_start StageInit_FactoryChaoGarden
StageInit_FactoryChaoGarden: @ 0x0803DFC0
	push {r4, lr}
	movs r4, #0x80
	lsls r4, r4, #6
	ldr r1, _0803DFF8 @ =0x00000333
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DFFC @ =0x0000034D
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803E000 @ =0x00000351
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0xe
	bl m4aSongNumStart
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803DFF8: .4byte 0x00000333
_0803DFFC: .4byte 0x0000034D
_0803E000: .4byte 0x00000351

	thumb_func_start StageInit_SpaceChaoGarden
StageInit_SpaceChaoGarden: @ 0x0803E004
	push {r4, lr}
	movs r4, #0x80
	lsls r4, r4, #6
	ldr r1, _0803E078 @ =0x0000033D
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803E07C @ =0x0000033E
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803E080 @ =0x0000033F
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803E084 @ =0x00000352
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803E088 @ =0x00000353
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803E08C @ =0x0000034E
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803E090 @ =0x0000034F
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0x17
	bl m4aSongNumStart
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803E078: .4byte 0x0000033D
_0803E07C: .4byte 0x0000033E
_0803E080: .4byte 0x0000033F
_0803E084: .4byte 0x00000352
_0803E088: .4byte 0x00000353
_0803E08C: .4byte 0x0000034E
_0803E090: .4byte 0x0000034F

@ Related to GAME_MODE_MULTI_PLAYER_COLLECT_RINGS
	thumb_func_start StageInit_MPCollectRings
StageInit_MPCollectRings: @ 0x0803E094
	push {r4, r5, lr}
	movs r4, #0x80
	lsls r4, r4, #6
	ldr r1, _0803E0DC @ =0x0000032E
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803E0E0 @ =0x0000032F
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r5, #0xcd
	lsls r5, r5, #2
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	movs r3, #0
	bl CreatePaletteLoaderTask
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0x35
	bl m4aSongNumStart
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803E0DC: .4byte 0x0000032E
_0803E0E0: .4byte 0x0000032F

@ --- End of stage.c ---
