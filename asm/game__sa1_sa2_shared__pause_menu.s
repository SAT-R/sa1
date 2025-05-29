.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_PauseMenuUpdate
Task_PauseMenuUpdate: @ 0x0801A574
	push {r4, r5, r6, lr}
	ldr r6, _0801A5A8 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, _0801A5AC @ =gPressedKeys
	ldrh r2, [r0]
	movs r0, #8
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0801A5B8
	ldr r2, _0801A5B0 @ =gFlags
	ldr r0, [r2]
	ldr r1, _0801A5B4 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r2]
	bl m4aMPlayAllContinue
	ldr r0, [r6]
	bl TaskDestroy
	b _0801A6B2
	.align 2, 0
_0801A5A8: .4byte gCurTask
_0801A5AC: .4byte gPressedKeys
_0801A5B0: .4byte gFlags
_0801A5B4: .4byte 0xFFFFFBFF
_0801A5B8:
	ldr r0, _0801A5FC @ =gGameMode
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #1
	bne _0801A620
	ands r1, r2
	cmp r1, #0
	beq _0801A620
	ldr r2, _0801A600 @ =gFlags
	ldr r0, [r2]
	ldr r1, _0801A604 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r2]
	movs r0, #0x6a
	bl m4aSongNumStart
	ldr r1, _0801A608 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0801A60C @ =gBackgroundsCopyQueueCursor
	ldr r0, _0801A610 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0801A614 @ =sa2__gUnknown_03005390
	strb r4, [r0]
	ldr r1, _0801A618 @ =gVramGraphicsCopyCursor
	ldr r0, _0801A61C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl CreateTimeAttackLobbyScreen
	b _0801A6B2
	.align 2, 0
_0801A5FC: .4byte gGameMode
_0801A600: .4byte gFlags
_0801A604: .4byte 0xFFFFFBFF
_0801A608: .4byte 0x0000FFFF
_0801A60C: .4byte gBackgroundsCopyQueueCursor
_0801A610: .4byte gBackgroundsCopyQueueIndex
_0801A614: .4byte sa2__gUnknown_03005390
_0801A618: .4byte gVramGraphicsCopyCursor
_0801A61C: .4byte gVramGraphicsCopyQueueIndex
_0801A620:
	ldr r0, _0801A638 @ =gBldRegs
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _0801A63C
	ldr r0, [r5, #0x40]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x10]
	orrs r0, r1
	b _0801A648
	.align 2, 0
_0801A638: .4byte gBldRegs
_0801A63C:
	ldr r0, [r5, #0x40]
	ldr r1, _0801A684 @ =0xFFFFFE7F
	ands r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x10]
	ands r0, r1
_0801A648:
	str r0, [r5, #0x10]
	ldrb r0, [r3]
	adds r4, r5, #0
	adds r4, #0x30
	cmp r0, #1
	bne _0801A6A6
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r1]
	adds r0, #1
	movs r2, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3b
	bls _0801A6A6
	movs r0, #0
	strh r0, [r1]
	ldrh r0, [r5, #0x3a]
	ldr r1, _0801A688 @ =0x000002CE
	cmp r0, r1
	bne _0801A694
	ldr r0, _0801A68C @ =0x0000032A
	strh r0, [r5, #0x3a]
	ldr r0, _0801A690 @ =gLoadedSaveGame
	ldrb r1, [r0, #0x19]
	adds r0, r5, #0
	adds r0, #0x50
	strb r1, [r0]
	b _0801A69C
	.align 2, 0
_0801A684: .4byte 0xFFFFFE7F
_0801A688: .4byte 0x000002CE
_0801A68C: .4byte 0x0000032A
_0801A690: .4byte gLoadedSaveGame
_0801A694:
	strh r1, [r5, #0x3a]
	adds r0, r5, #0
	adds r0, #0x50
	strb r2, [r0]
_0801A69C:
	adds r4, r5, #0
	adds r4, #0x30
	adds r0, r4, #0
	bl UpdateSpriteAnimation
_0801A6A6:
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #0
	bl DisplaySprite
_0801A6B2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start Task_PauseMenuInit
Task_PauseMenuInit: @ 0x0801A6B8
	push {r4, r5, r6, r7, lr}
	movs r4, #0
	ldr r0, _0801A6F8 @ =gSongTable + 0x474
	ldrh r6, [r0]
	movs r5, #0
	ldr r7, _0801A6FC @ =gMPlayTable
_0801A6C4:
	cmp r4, r6
	beq _0801A6D0
	adds r0, r5, r7
	ldr r0, [r0]
	bl MPlayStop
_0801A6D0:
	adds r5, #0xc
	adds r4, #1
	cmp r4, #3
	bls _0801A6C4
	movs r0, #0x8e      @ SE_PAUSE
	bl m4aSongNumStart
	ldr r2, _0801A700 @ =gFlags
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r0, _0801A704 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801A708 @ =Task_PauseMenuUpdate
	str r0, [r1, #8]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801A6F8: .4byte gSongTable + 0x474
_0801A6FC: .4byte gMPlayTable
_0801A700: .4byte gFlags
_0801A704: .4byte gCurTask
_0801A708: .4byte Task_PauseMenuUpdate

	thumb_func_start TaskDestructor_PauseMenu
TaskDestructor_PauseMenu: @ 0x0801A70C
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x34]
	bl VramFree
	ldr r0, [r4, #4]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0
