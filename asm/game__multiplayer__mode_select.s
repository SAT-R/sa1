.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_800FBF8
sub_800FBF8: @ 0x0800FBF8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r5, _0800FC80 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	bl MultiSioStop
	ldr r0, _0800FC84 @ =0x03000204
	adds r3, r4, r0
	ldrb r0, [r3]
	cmp r0, #9
	bne _0800FCAC
	movs r1, #0
	ldr r0, _0800FC88 @ =gIntrTable
	mov ip, r0
	ldr r0, _0800FC8C @ =gMultiSioEnabled
	mov r8, r0
	ldr r0, _0800FC90 @ =gMultiSioStatusFlags
	mov sb, r0
	ldr r6, _0800FC94 @ =gMultiplayerCharacters
	movs r2, #0
	ldr r5, _0800FC98 @ =gMPRingCollectWins
	ldr r4, _0800FC9C @ =sa2__gUnknown_030054B4
	ldr r3, _0800FCA0 @ =gMultiplayerMissingHeartbeats
_0800FC32:
	adds r0, r1, r6
	strb r2, [r0]
	adds r0, r1, r5
	strb r2, [r0]
	adds r0, r1, r4
	strb r1, [r0]
	adds r0, r1, r3
	strb r2, [r0]
	adds r1, #1
	cmp r1, #3
	bls _0800FC32
	movs r1, #0xf8
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	mov r1, ip
	str r0, [r1]
	movs r0, #1
	mov r1, r8
	strb r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	movs r1, #0xf0
	lsls r1, r1, #4
	ands r0, r1
	lsrs r0, r0, #8
	bl MultiSioInit
	bl MultiSioStart
	ldr r0, _0800FC80 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0800FCA4 @ =sub_8010048
	str r0, [r1, #8]
	ldr r1, _0800FCA8 @ =gDispCnt
	movs r0, #0x40
	strh r0, [r1]
	b _0800FCD6
	.align 2, 0
_0800FC80: .4byte gCurTask
_0800FC84: .4byte 0x03000204
_0800FC88: .4byte gIntrTable
_0800FC8C: .4byte gMultiSioEnabled
_0800FC90: .4byte gMultiSioStatusFlags
_0800FC94: .4byte gMultiplayerCharacters
_0800FC98: .4byte gMPRingCollectWins
_0800FC9C: .4byte sa2__gUnknown_030054B4
_0800FCA0: .4byte gMultiplayerMissingHeartbeats
_0800FCA4: .4byte sub_8010048
_0800FCA8: .4byte gDispCnt
_0800FCAC:
	ldr r0, _0800FCE4 @ =0x030001F0
	adds r2, r4, r0
	ldr r1, _0800FCE8 @ =gIntrTable
	ldr r0, [r1]
	str r0, [r2]
	ldr r0, _0800FCEC @ =Sio32MultiLoadIntr
	str r0, [r1]
	ldr r0, _0800FCF0 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	ldr r2, _0800FCF4 @ =gUnknown_080BB3F8
	ldrb r1, [r3]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl Sio32MultiLoadInit
	ldr r1, [r5]
	ldr r0, _0800FCF8 @ =sub_8010020
	str r0, [r1, #8]
_0800FCD6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800FCE4: .4byte 0x030001F0
_0800FCE8: .4byte gIntrTable
_0800FCEC: .4byte Sio32MultiLoadIntr
_0800FCF0: .4byte gMultiSioStatusFlags
_0800FCF4: .4byte gUnknown_080BB3F8
_0800FCF8: .4byte sub_8010020

	thumb_func_start sa2__sub_8081200
sa2__sub_8081200: @ 0x0800FCFC
	push {lr}
	ldr r3, _0800FD64 @ =gGameMode
	movs r2, #6
	ldr r0, _0800FD68 @ =gRingsScatterTask
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800FD6C @ =gDummyTask
	str r1, [r0]
	ldr r0, _0800FD70 @ =gGameStageTask
	str r1, [r0]
	ldr r0, _0800FD74 @ =gPlayer
	str r1, [r0, #0x60]
	ldr r0, _0800FD78 @ =gPartner
	str r1, [r0, #0x60]
	ldr r0, _0800FD7C @ =gCamera
	str r1, [r0, #0x30]
	ldr r0, _0800FD80 @ =sa2__gUnknown_0300543C
	strb r1, [r0]
	strb r2, [r3]
	ldr r0, _0800FD84 @ =gEntitiesManagerTask
	str r1, [r0]
	ldr r3, _0800FD88 @ =gMultiplayerPlayerTasks
	movs r2, #0
_0800FD2A:
	lsls r0, r1, #2
	adds r0, r0, r3
	str r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0800FD2A
	bl ApplyGameStageSettings
	ldr r2, _0800FD8C @ =gStageFlags
	ldrh r1, [r2]
	ldr r0, _0800FD90 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2]
	ldr r2, _0800FD74 @ =gPlayer
	ldr r0, [r2, #0x10]
	ldr r1, _0800FD94 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r2, #0x10]
	ldr r1, _0800FD98 @ =gPlayerControls
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	orrs r0, r1
	ldrh r1, [r2, #0x38]
	orrs r0, r1
	strh r0, [r2, #0x38]
	pop {r0}
	bx r0
	.align 2, 0
_0800FD64: .4byte gGameMode
_0800FD68: .4byte gRingsScatterTask
_0800FD6C: .4byte gDummyTask
_0800FD70: .4byte gGameStageTask
_0800FD74: .4byte gPlayer
_0800FD78: .4byte gPartner
_0800FD7C: .4byte gCamera
_0800FD80: .4byte sa2__gUnknown_0300543C
_0800FD84: .4byte gEntitiesManagerTask
_0800FD88: .4byte gMultiplayerPlayerTasks
_0800FD8C: .4byte gStageFlags
_0800FD90: .4byte 0x0000FFFE
_0800FD94: .4byte 0xFFDFFFFF
_0800FD98: .4byte gPlayerControls

	thumb_func_start sub_800FD9C
sub_800FD9C: @ 0x0800FD9C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov sb, r0
	movs r0, #0
	mov ip, r0
	ldr r1, _0800FDD4 @ =gLoadedSaveGame + 0x380
	mov sl, r1
	mov r5, sb
	adds r5, #4
	str r5, [sp, #0x10]
	mov r7, sl
	mov r8, r0
_0800FDBC:
	ldr r4, _0800FDD4 @ =gLoadedSaveGame + 0x380
	add r4, r8
	movs r6, #1
	movs r3, #0
	mov r2, sb
	ldrb r1, [r2, #4]
	ldrb r0, [r4]
	cmp r1, r0
	beq _0800FDD8
	movs r6, #0
	b _0800FE38
	.align 2, 0
_0800FDD4: .4byte gLoadedSaveGame + 0x380
_0800FDD8:
	adds r3, #1
	cmp r3, #0xb
	bhi _0800FDEC
	adds r0, r5, r3
	adds r1, r4, r3
	ldrb r2, [r0]
	ldrb r0, [r1]
	cmp r2, r0
	beq _0800FDD8
	movs r6, #0
_0800FDEC:
	cmp r6, #0
	beq _0800FE38
	mov r0, sp
	adds r1, r7, #0
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
	mov r2, ip
	cmp r2, #0
	beq _0800FE22
	ldr r4, _0800FE30 @ =gLoadedSaveGame
	movs r3, #0xe0
	lsls r3, r3, #2
_0800FE08:
	lsls r1, r2, #4
	adds r1, r1, r4
	subs r2, #1
	lsls r0, r2, #4
	adds r0, r0, r4
	adds r1, r1, r3
	adds r0, r0, r3
	ldm r0!, {r5, r6, r7}
	stm r1!, {r5, r6, r7}
	ldr r0, [r0]
	str r0, [r1]
	cmp r2, #0
	bne _0800FE08
_0800FE22:
	ldr r0, _0800FE34 @ =gLoadedSaveGame + 0x380
	mov r1, sp
	ldm r1!, {r2, r6, r7}
	stm r0!, {r2, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
	b _0800FE94
	.align 2, 0
_0800FE30: .4byte gLoadedSaveGame
_0800FE34: .4byte gLoadedSaveGame + 0x380
_0800FE38:
	adds r7, #0x10
	movs r3, #0x10
	add r8, r3
	movs r4, #1
	add ip, r4
	mov r6, ip
	cmp r6, #9
	bls _0800FDBC
	movs r2, #9
	ldr r4, _0800FEA4 @ =gLoadedSaveGame
	movs r3, #0xe0
	lsls r3, r3, #2
_0800FE50:
	lsls r1, r2, #4
	adds r1, r1, r4
	subs r2, #1
	lsls r0, r2, #4
	adds r0, r0, r4
	adds r1, r1, r3
	adds r0, r0, r3
	ldm r0!, {r5, r6, r7}
	stm r1!, {r5, r6, r7}
	ldr r0, [r0]
	str r0, [r1]
	cmp r2, #0
	bne _0800FE50
	ldr r5, [sp, #0x10]
	mov r4, sl
_0800FE6E:
	ldrb r0, [r5]
	strb r0, [r4]
	adds r5, #1
	adds r4, #1
	adds r2, #1
	cmp r2, #0xb
	bls _0800FE6E
	ldr r7, _0800FEA4 @ =gLoadedSaveGame
	movs r1, #0xe3
	lsls r1, r1, #2
	adds r0, r7, r1
	movs r1, #0
	strb r1, [r0]
	ldr r2, _0800FEA8 @ =0x0000038D
	adds r0, r7, r2
	strb r1, [r0]
	ldr r3, _0800FEAC @ =0x0000038E
	adds r0, r7, r3
	strb r1, [r0]
_0800FE94:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800FEA4: .4byte gLoadedSaveGame
_0800FEA8: .4byte 0x0000038D
_0800FEAC: .4byte 0x0000038E

	thumb_func_start ShowSinglePakResults
ShowSinglePakResults: @ 0x0800FEB0
	push {r4, r5, r6, lr}
	movs r1, #0
	ldr r6, _0800FEE4 @ =gMultiplayerCharacters
	movs r2, #0
	ldr r5, _0800FEE8 @ =gMPRingCollectWins
	ldr r4, _0800FEEC @ =sa2__gUnknown_030054B4
	ldr r3, _0800FEF0 @ =gMultiplayerMissingHeartbeats
_0800FEBE:
	adds r0, r1, r6
	strb r2, [r0]
	adds r0, r1, r5
	strb r2, [r0]
	adds r0, r1, r4
	strb r1, [r0]
	adds r0, r1, r3
	strb r2, [r0]
	adds r1, #1
	cmp r1, #3
	bls _0800FEBE
	bl MultiSioStart
	movs r0, #0
	bl CreateMultiplayerSinglePakResultsScreen
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800FEE4: .4byte gMultiplayerCharacters
_0800FEE8: .4byte gMPRingCollectWins
_0800FEEC: .4byte sa2__gUnknown_030054B4
_0800FEF0: .4byte gMultiplayerMissingHeartbeats

	thumb_func_start Task_MultiplayerModeSelectScreenInit
Task_MultiplayerModeSelectScreenInit: @ 0x0800FEF4
	push {lr}
	ldr r0, _0800FF28 @ =gCurTask
	ldr r1, [r0]
	ldrh r0, [r1, #6]
	ldr r3, _0800FF2C @ =0x03000208
	adds r2, r0, r3
	ldrh r0, [r2]
	subs r0, #0x80
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _0800FF14
	movs r0, #0
	strh r0, [r2]
	ldr r0, _0800FF30 @ =Task_800E648
	str r0, [r1, #8]
_0800FF14:
	ldr r1, _0800FF34 @ =gBldRegs
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	strh r0, [r1, #4]
	bl sub_800E798
	pop {r0}
	bx r0
	.align 2, 0
_0800FF28: .4byte gCurTask
_0800FF2C: .4byte 0x03000208
_0800FF30: .4byte Task_800E648
_0800FF34: .4byte gBldRegs

	thumb_func_start sub_800FF38
sub_800FF38: @ 0x0800FF38
	push {lr}
	ldr r1, _0800FF5C @ =gMultiplayerMissingHeartbeats
	movs r0, #0
	strb r0, [r1, #3]
	strb r0, [r1, #2]
	strb r0, [r1, #1]
	strb r0, [r1]
	bl sub_800FF94
	ldr r0, _0800FF60 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0800FF64 @ =Task_800F9BC
	str r0, [r1, #8]
	bl MultiSioStart
	pop {r0}
	bx r0
	.align 2, 0
_0800FF5C: .4byte gMultiplayerMissingHeartbeats
_0800FF60: .4byte gCurTask
_0800FF64: .4byte Task_800F9BC

	thumb_func_start sub_800FF68
sub_800FF68: @ 0x0800FF68
	push {lr}
	ldr r1, _0800FF88 @ =gMultiplayerMissingHeartbeats
	movs r0, #0
	strb r0, [r1, #3]
	strb r0, [r1, #2]
	strb r0, [r1, #1]
	strb r0, [r1]
	bl sub_800FF94
	ldr r0, _0800FF8C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0800FF90 @ =sub_800FFE0
	str r0, [r1, #8]
	pop {r0}
	bx r0
	.align 2, 0
_0800FF88: .4byte gMultiplayerMissingHeartbeats
_0800FF8C: .4byte gCurTask
_0800FF90: .4byte sub_800FFE0

	thumb_func_start sub_800FF94
sub_800FF94: @ 0x0800FF94
	push {r4, r5, lr}
	ldr r0, _0800FFC8 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	ldr r1, _0800FFCC @ =gIntrTable
	ldr r0, _0800FFD0 @ =gMultiSioIntrFuncBuf
	str r0, [r1]
	ldr r5, _0800FFD4 @ =gMultiSioStatusFlags
	ldr r0, [r5]
	movs r1, #0xf0
	lsls r1, r1, #4
	ands r0, r1
	lsrs r0, r0, #8
	bl MultiSioInit
	ldr r0, _0800FFD8 @ =0x03000202
	adds r1, r4, r0
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0800FFDC @ =0x03000205
	adds r4, r4, r1
	strb r0, [r4]
	str r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800FFC8: .4byte gCurTask
_0800FFCC: .4byte gIntrTable
_0800FFD0: .4byte gMultiSioIntrFuncBuf
_0800FFD4: .4byte gMultiSioStatusFlags
_0800FFD8: .4byte 0x03000202
_0800FFDC: .4byte 0x03000205

	thumb_func_start sub_800FFE0
sub_800FFE0: @ 0x0800FFE0
	push {lr}
	ldr r0, _08010010 @ =gMultiSioStatusFlags
	ldr r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08010006
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _0800FFFE
	ldr r1, _08010014 @ =gMultiSioSend
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
_0800FFFE:
	ldr r0, _08010018 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801001C @ =Task_800F9BC
	str r0, [r1, #8]
_08010006:
	bl Task_800F9BC
	pop {r0}
	bx r0
	.align 2, 0
_08010010: .4byte gMultiSioStatusFlags
_08010014: .4byte gMultiSioSend
_08010018: .4byte gCurTask
_0801001C: .4byte Task_800F9BC

	thumb_func_start sub_8010020
sub_8010020: @ 0x08010020
	push {lr}
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	mov r0, sp
	bl Sio32MultiLoadMain
	cmp r0, #0
	beq _0801003A
	ldr r0, _08010040 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08010044 @ =sub_800FF68
	str r0, [r1, #8]
_0801003A:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08010040: .4byte gCurTask
_08010044: .4byte sub_800FF68

	thumb_func_start sub_8010048
sub_8010048: @ 0x08010048
	push {lr}
	ldr r0, _0801005C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	movs r0, #0
	bl CreateMultiplayerSinglePakResultsScreen
	pop {r0}
	bx r0
	.align 2, 0
_0801005C: .4byte gCurTask

	thumb_func_start sub_8010060
sub_8010060: @ 0x08010060
	push {lr}
	ldr r0, _08010094 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08010090
	movs r0, #0x6b
	bl m4aSongNumStart
	ldr r0, _08010098 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801009C @ =Task_800E648
	str r0, [r1, #8]
	ldr r1, _080100A0 @ =sa2__gUnknown_03004D80
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080100A4 @ =sa2__gUnknown_03002280
	strb r0, [r1]
	strb r0, [r1, #1]
	movs r0, #0xff
	strb r0, [r1, #2]
	movs r0, #0x20
	strb r0, [r1, #3]
_08010090:
	pop {r0}
	bx r0
	.align 2, 0
_08010094: .4byte gPressedKeys
_08010098: .4byte gCurTask
_0801009C: .4byte Task_800E648
_080100A0: .4byte sa2__gUnknown_03004D80
_080100A4: .4byte sa2__gUnknown_03002280
@ --- End of end of game/multiboot/connection.c ---
