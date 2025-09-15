.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

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
