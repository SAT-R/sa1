.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

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
