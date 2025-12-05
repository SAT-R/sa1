.include "constants/constants.inc"

.syntax unified

.text
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	ldr r1, _08019E90 @ =gUnknown_080BB490
	add r0, sp, #4
	movs r2, #4
	bl memcpy
	add r5, sp, #8
	adds r0, r5, #0
	movs r1, #0
	movs r2, #4
	bl memset
	ldr r0, _08019E94 @ =sa2__Task_801A04C
	movs r2, #0x80
	lsls r2, r2, #6
	movs r4, #0
	str r4, [sp]
	movs r1, #4
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	strh r4, [r0]
	ldr r4, _08019E98 @ =gGameMode
	ldrb r0, [r4]
	mov sb, r5
	cmp r0, #6
	beq _08019E04
	ldr r0, _08019E9C @ =gMusicManagerState
	movs r1, #0xff
	strb r1, [r0]
	movs r0, #0x98
	lsls r0, r0, #1     @ SE_VS_MULTIPAK_ROUND_OVER
	bl m4aSongNumStart
_08019E04:
	ldrb r3, [r4]
	cmp r3, #4
	bne _08019EF4
	ldr r0, _08019EA0 @ =gMultiplayerCharRings
	ldr r0, [r0]
	str r0, [sp, #8]
	movs r6, #0
	movs r0, #3
	mov ip, r0
_08019E16:
	movs r4, #0
	cmp r4, ip
	bhs _08019E64
	mov r7, sb
	mov r8, ip
_08019E20:
	adds r3, r7, r4
	adds r5, r4, #1
	adds r2, r7, r5
	ldrb r0, [r3]
	ldrb r1, [r2]
	cmp r0, r1
	bhs _08019E5E
	eors r1, r0
	strb r1, [r3]
	ldrb r0, [r2]
	eors r0, r1
	strb r0, [r2]
	ldrb r1, [r3]
	eors r0, r1
	strb r0, [r3]
	mov r3, sp
	adds r3, r3, r4
	adds r3, #4
	mov r2, sp
	adds r2, r2, r5
	adds r2, #4
	ldrb r1, [r3]
	ldrb r0, [r2]
	eors r1, r0
	strb r1, [r3]
	ldrb r0, [r2]
	eors r0, r1
	strb r0, [r2]
	ldrb r1, [r3]
	eors r0, r1
	strb r0, [r3]
_08019E5E:
	adds r4, r5, #0
	cmp r4, r8
	blo _08019E20
_08019E64:
	movs r1, #1
	rsbs r1, r1, #0
	add ip, r1
	adds r6, #1
	cmp r6, #3
	bls _08019E16
	movs r6, #0
	mov r5, sb
	ldr r3, _08019EA4 @ =gMultiplayerRanks
	add r2, sp, #4
_08019E78:
	cmp r6, #0
	beq _08019EA8
	adds r0, r5, r6
	ldrb r0, [r0]
	ldrb r4, [r5]
	cmp r0, r4
	beq _08019EB0
	ldrb r0, [r2]
	adds r0, r0, r3
	movs r1, #1
	strb r1, [r0]
	b _08019EC2
	.align 2, 0
_08019E90: .4byte gUnknown_080BB490
_08019E94: .4byte sa2__Task_801A04C
_08019E98: .4byte gGameMode
_08019E9C: .4byte gMusicManagerState
_08019EA0: .4byte gMultiplayerCharRings
_08019EA4: .4byte gMultiplayerRanks
_08019EA8:
	ldrb r1, [r5, #1]
	ldrb r0, [r5]
	cmp r0, r1
	bne _08019EBA
_08019EB0:
	ldrb r0, [r2]
	adds r0, r0, r3
	movs r1, #4
	strb r1, [r0]
	b _08019EC2
_08019EBA:
	add r0, sp, #4
	ldrb r0, [r0]
	adds r0, r0, r3
	strb r6, [r0]
_08019EC2:
	adds r2, #1
	adds r6, #1
	cmp r6, #3
	bls _08019E78
	movs r6, #0
	ldr r4, _08019EEC @ =gMultiplayerPlayerTasks
_08019ECE:
	ldr r0, [r4]
	cmp r0, #0
	beq _08019EE2
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08019EF0 @ =gMultiplayerRanks
	adds r1, r6, r1
	ldrb r1, [r1]
	bl CreateMultiplayerFinishResult
_08019EE2:
	adds r4, #4
	adds r6, #1
	cmp r6, #3
	bls _08019ECE
	b _0801A0F6
	.align 2, 0
_08019EEC: .4byte gMultiplayerPlayerTasks
_08019EF0: .4byte gMultiplayerRanks
_08019EF4:
	cmp r3, #5
	beq _08019EFA
	b _0801A00C
_08019EFA:
	movs r6, #0
	ldr r0, _08019F90 @ =gMultiplayerPlayerTasks
	ldr r1, [r0]
	mov r8, r0
	cmp r1, #0
	beq _08019F36
	mov ip, sb
	ldr r0, _08019F94 @ =gMultiplayerConnections
	ldrb r3, [r0]
	mov r2, r8
	movs r5, #0x10
	ldr r4, _08019F98 @ =gMultiplayerCharRings
_08019F12:
	adds r1, r5, #0
	lsls r1, r6
	ands r1, r3
	adds r0, r6, #4
	asrs r1, r0
	add r1, ip
	adds r0, r6, r4
	ldrb r0, [r0]
	ldrb r7, [r1]
	adds r0, r0, r7
	strb r0, [r1]
	adds r2, #4
	adds r6, #1
	cmp r6, #3
	bhi _08019F36
	ldr r0, [r2]
	cmp r0, #0
	bne _08019F12
_08019F36:
	mov r3, sb
	ldrb r1, [r3]
	ldrb r2, [r3, #1]
	cmp r1, r2
	bhs _08019F6A
	eors r1, r2
	adds r0, r1, #0
	eors r0, r2
	strb r0, [r3, #1]
	eors r1, r0
	strb r1, [r3]
	add r3, sp, #4
	adds r0, r3, #0
	adds r2, r0, #0
	ldrb r1, [r0]
	ldrb r0, [r2, #1]
	eors r1, r0
	strb r1, [r3]
	adds r0, r2, #0
	ldrb r0, [r0, #1]
	eors r0, r1
	strb r0, [r2, #1]
	adds r1, r2, #0
	ldrb r1, [r1]
	eors r0, r1
	strb r0, [r2]
_08019F6A:
	mov r0, sb
	ldrb r1, [r0, #1]
	ldrb r0, [r0]
	cmp r0, r1
	bne _08019FA0
	movs r6, #0
	ldr r3, _08019F9C @ =gMultiplayerRanks
	movs r2, #4
	ldr r1, _08019F90 @ =gMultiplayerPlayerTasks
_08019F7C:
	ldr r0, [r1]
	cmp r0, #0
	beq _08019F86
	adds r0, r6, r3
	strb r2, [r0]
_08019F86:
	adds r1, #4
	adds r6, #1
	cmp r6, #3
	bls _08019F7C
	b _08019FE2
	.align 2, 0
_08019F90: .4byte gMultiplayerPlayerTasks
_08019F94: .4byte gMultiplayerConnections
_08019F98: .4byte gMultiplayerCharRings
_08019F9C: .4byte gMultiplayerRanks
_08019FA0:
	movs r6, #0
	ldr r2, _08019FC8 @ =gMultiplayerRanks
	ldr r3, _08019FCC @ =gMultiplayerPlayerTasks
	ldr r4, _08019FD0 @ =gMultiplayerConnections
_08019FA8:
	ldr r0, [r3]
	cmp r0, #0
	beq _08019FD8
	ldrb r1, [r4]
	movs r0, #0x10
	lsls r0, r6
	ands r1, r0
	adds r0, r6, #4
	asrs r1, r0
	add r0, sp, #4
	ldrb r0, [r0]
	cmp r1, r0
	bne _08019FD4
	movs r0, #0
	b _08019FD6
	.align 2, 0
_08019FC8: .4byte gMultiplayerRanks
_08019FCC: .4byte gMultiplayerPlayerTasks
_08019FD0: .4byte gMultiplayerConnections
_08019FD4:
	movs r0, #1
_08019FD6:
	strb r0, [r2]
_08019FD8:
	adds r2, #1
	adds r3, #4
	adds r6, #1
	cmp r6, #3
	bls _08019FA8
_08019FE2:
	movs r6, #0
	ldr r4, _0801A004 @ =gMultiplayerPlayerTasks
_08019FE6:
	ldr r0, [r4]
	cmp r0, #0
	beq _08019FFA
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0801A008 @ =gMultiplayerRanks
	adds r1, r6, r1
	ldrb r1, [r1]
	bl CreateMultiplayerFinishResult
_08019FFA:
	adds r4, #4
	adds r6, #1
	cmp r6, #3
	bls _08019FE6
	b _0801A0F6
	.align 2, 0
_0801A004: .4byte gMultiplayerPlayerTasks
_0801A008: .4byte gMultiplayerRanks
_0801A00C:
	cmp r3, #6
	beq _0801A0F6
	ldr r1, _0801A080 @ =gLoadedSaveGame
	movs r2, #0x85
	lsls r2, r2, #3
	adds r1, r1, r2
	ldr r0, _0801A084 @ =gRingCount
	movs r4, #0
	ldrsh r2, [r0, r4]
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
	ldr r0, _0801A088 @ =gCourseTime
	ldr r2, [r0]
	ldr r0, _0801A08C @ =0x00008CA0
	cmp r2, r0
	bhi _0801A03E
	ldr r0, _0801A090 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0801A0F6
	cmp r2, #0
	bne _0801A0F6
_0801A03E:
	movs r2, #0
	cmp r3, #3
	beq _0801A0AC
	cmp r3, #5
	beq _0801A0AC
	movs r4, #0
	ldr r0, _0801A094 @ =gMultiplayerPlayerTasks
	ldr r1, [r0]
	mov r8, r0
	cmp r1, #0
	beq _0801A078
	ldr r5, _0801A098 @ =gMultiplayerRanks
	movs r3, #1
	rsbs r3, r3, #0
	mov r1, r8
_0801A05C:
	adds r0, r4, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r3
	beq _0801A06A
	adds r2, #1
_0801A06A:
	adds r1, #4
	adds r4, #1
	cmp r4, #3
	bhi _0801A078
	ldr r0, [r1]
	cmp r0, #0
	bne _0801A05C
_0801A078:
	cmp r2, #0
	bne _0801A09C
	movs r5, #4
	b _0801A0B2
	.align 2, 0
_0801A080: .4byte gLoadedSaveGame
_0801A084: .4byte gRingCount
_0801A088: .4byte gCourseTime
_0801A08C: .4byte 0x00008CA0
_0801A090: .4byte gStageFlags
_0801A094: .4byte gMultiplayerPlayerTasks
_0801A098: .4byte gMultiplayerRanks
_0801A09C:
	subs r0, r4, #1
	cmp r2, r0
	bne _0801A0A8
	lsls r0, r2, #0x18
	lsrs r5, r0, #0x18
	b _0801A0B2
_0801A0A8:
	movs r5, #5
	b _0801A0B2
_0801A0AC:
	movs r5, #4
	ldr r7, _0801A104 @ =gMultiplayerPlayerTasks
	mov r8, r7
_0801A0B2:
	movs r4, #0
	mov r1, r8
	ldr r0, [r1]
	cmp r0, #0
	beq _0801A0F6
	movs r6, #1
	rsbs r6, r6, #0
_0801A0C0:
	ldr r0, _0801A108 @ =gMultiplayerRanks
	adds r0, r4, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r6
	beq _0801A0DA
	ldr r0, _0801A10C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _0801A0DA
	cmp r0, #5
	bne _0801A0E4
_0801A0DA:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	adds r1, r5, #0
	bl CreateMultiplayerFinishResult
_0801A0E4:
	adds r4, #1
	cmp r4, #3
	bhi _0801A0F6
	ldr r0, _0801A104 @ =gMultiplayerPlayerTasks
	lsls r1, r4, #2
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	bne _0801A0C0
_0801A0F6:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801A104: .4byte gMultiplayerPlayerTasks
_0801A108: .4byte gMultiplayerRanks
_0801A10C: .4byte gGameMode

.syntax divided
