.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

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
