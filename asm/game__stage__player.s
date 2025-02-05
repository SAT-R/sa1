.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sa2__sub_80213C0
sa2__sub_80213C0: @ 0x0804202C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r1, #0
	adds r5, r2, #0
	adds r0, r5, #0
	adds r0, #0x3c
	movs r4, #0
	ldrsb r4, [r0, r4]
	cmp r4, #0
	bne _080420B0
	cmp r7, #0xd
	bne _0804205C
	ldr r0, _08042054 @ =sub_8049898
	movs r2, #0xc0
	lsls r2, r2, #6
	ldr r1, _08042058 @ =TaskDestructor_Player
	str r1, [sp]
	movs r1, #0x8c
	b _08042068
	.align 2, 0
_08042054: .4byte sub_8049898
_08042058: .4byte TaskDestructor_Player
_0804205C:
	ldr r0, _080420A4 @ =Task_PlayerMain
	movs r2, #0xc0
	lsls r2, r2, #6
	ldr r1, _080420A8 @ =TaskDestructor_Player
	str r1, [sp]
	movs r1, #8
_08042068:
	movs r3, #0
	bl TaskCreate
	str r0, [r5, #0x60]
	ldr r0, [r5, #0x60]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	movs r0, #0
	strb r4, [r1]
	str r0, [r1, #4]
	adds r0, r5, #0
	bl InitializePlayer
	bl CreateBrakingDustEffectRelatedTask
	bl InitPlayerHitRingsScatter
	ldr r6, _080420AC @ =gInputRecorder
	ldrb r4, [r6, #8]
	cmp r4, #1
	beq _0804209A
	cmp r4, #2
	bne _080420D6
_0804209A:
	bl InputRecorderLoadTape
	strb r4, [r6, #8]
	b _080420D6
	.align 2, 0
_080420A4: .4byte Task_PlayerMain
_080420A8: .4byte TaskDestructor_Player
_080420AC: .4byte gInputRecorder
_080420B0:
	ldr r0, _080420F8 @ =sub_8045B38
	ldr r2, _080420FC @ =0x00003001
	ldr r1, _08042100 @ =TaskDestructor_Player
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	str r0, [r5, #0x60]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	movs r0, #0
	strb r4, [r1]
	str r0, [r1, #4]
	adds r0, r5, #0
	bl InitializePlayer
_080420D6:
	ldr r1, [r5, #0x64]
	adds r0, r5, #0
	bl AllocateCharacterStageGfx
	ldr r1, [r5, #0x68]
	adds r0, r5, #0
	bl AllocateCharacterMidAirGfx
	cmp r7, #0xd
	bne _080420F0
	adds r0, r5, #0
	bl sub_804A1B8
_080420F0:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080420F8: .4byte sub_8045B38
_080420FC: .4byte 0x00003001
_08042100: .4byte TaskDestructor_Player

	thumb_func_start AllocateCharacterStageGfx
AllocateCharacterStageGfx: @ 0x08042104
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r0, #0x3c
	movs r7, #0
	ldrsb r7, [r0, r7]
	adds r4, r6, #0
	adds r4, #0xc
	cmp r7, #0
	bne _08042120
	ldr r0, _0804211C @ =0x06010000
	b _08042126
	.align 2, 0
_0804211C: .4byte 0x06010000
_08042120:
	movs r0, #0x40
	bl VramMalloc
_08042126:
	str r0, [r4, #4]
	movs r2, #0
	movs r3, #0
	strh r3, [r4, #8]
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	strh r0, [r4, #0xa]
	adds r0, r5, #0
	adds r0, #0x44
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r5]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	strh r3, [r4, #0x1c]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x25
	strb r2, [r0]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r4, #0x10]
	ldr r0, _080421A8 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _08042180
	movs r0, #0xc0
	lsls r0, r0, #0xc
	orrs r0, r1
	str r0, [r4, #0x10]
_08042180:
	ldr r0, [r4, #0x10]
	movs r1, #0x20
	orrs r0, r1
	orrs r0, r7
	str r0, [r4, #0x10]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x30]
	strh r3, [r6]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #2]
	strh r0, [r6, #4]
	strh r3, [r6, #6]
	strh r3, [r6, #8]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080421A8: .4byte gGameMode

	thumb_func_start AllocateCharacterMidAirGfx
AllocateCharacterMidAirGfx: @ 0x080421AC
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, #0x59
	movs r7, #0
	ldrsb r7, [r0, r7]
	cmp r7, #1
	bne _08042212
	movs r0, #0x10
	bl VramMalloc
	str r0, [r5, #4]
	movs r2, #0
	movs r1, #0
	strh r1, [r5, #8]
	movs r0, #0x6b
	strh r0, [r5, #0xa]
	adds r0, r4, #0
	adds r0, #0x2c
	strb r7, [r0]
	adds r3, r4, #0
	adds r3, #0x2d
	movs r0, #0xff
	strb r0, [r3]
	ldr r0, [r6]
	asrs r0, r0, #8
	strh r0, [r5, #0x16]
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	strh r0, [r5, #0x18]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	strh r1, [r5, #0x1c]
	adds r3, #1
	movs r0, #0x10
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x31
	strb r2, [r0]
	ldr r0, _08042218 @ =0x00002024
	str r0, [r5, #0x10]
	strh r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r1, [r4, #6]
	strh r1, [r4, #8]
_08042212:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08042218: .4byte 0x00002024

	thumb_func_start SetStageSpawnPos
SetStageSpawnPos: @ 0x0804221C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r1, #0
	str r2, [sp]
	mov ip, r3
	mov r1, ip
	adds r1, #0x3c
	mov r2, sp
	ldrb r2, [r2]
	strb r2, [r1]
	adds r1, #0x1d
	strb r0, [r1]
	ldr r0, _08042260 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	bhi _08042268
	ldr r1, _08042264 @ =gSpawnPositions
	lsls r2, r4, #2
	adds r0, r2, r1
	ldrh r3, [r0]
	mov r0, ip
	adds r0, #0x48
	strh r3, [r0]
	adds r1, #2
	adds r2, r2, r1
	ldrh r0, [r2]
	mov r3, ip
	adds r3, #0x4a
	strh r0, [r3]
	b _080423D6
	.align 2, 0
_08042260: .4byte gGameMode
_08042264: .4byte gSpawnPositions
_08042268:
	cmp r0, #4
	bne _080422A0
	ldr r0, _08042298 @ =0x04000128
	ldr r1, [r0]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	ldr r2, _0804229C @ =gSpawnPositions_Modes_4_and_5
	lsls r1, r1, #2
	adds r0, r4, #0
	subs r0, #0xe
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r0, r1, r2
	ldrh r3, [r0]
	mov r0, ip
	adds r0, #0x48
	strh r3, [r0]
	adds r2, #2
	adds r1, r1, r2
	ldrh r0, [r1]
	mov r3, ip
	adds r3, #0x4a
	strh r0, [r3]
	b _080423D6
	.align 2, 0
_08042298: .4byte 0x04000128
_0804229C: .4byte gSpawnPositions_Modes_4_and_5
_080422A0:
	cmp r0, #5
	bne _08042360
	ldr r3, _080422DC @ =0x04000128
	ldr r0, [r3]
	lsls r0, r0, #0x1a
	lsrs r6, r0, #0x1e
	cmp r4, #0x10
	bne _080422E4
	ldr r2, _080422E0 @ =gSpawnPositions_Modes_4_and_5
	ldr r0, [r3]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r0, r0, #2
	adds r0, #0x20
	adds r0, r0, r2
	ldrh r1, [r0]
	mov r0, ip
	adds r0, #0x48
	strh r1, [r0]
	ldr r0, [r3]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r0, r0, #2
	adds r0, #0x20
	adds r2, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	mov r1, ip
	adds r1, #0x4a
	b _080423D4
	.align 2, 0
_080422DC: .4byte 0x04000128
_080422E0: .4byte gSpawnPositions_Modes_4_and_5
_080422E4:
	ldr r0, _08042358 @ =gMultiplayerConnections
	ldrb r1, [r0]
	movs r2, #0x10
	lsls r2, r6
	ands r2, r1
	adds r0, r6, #4
	asrs r2, r0
	movs r5, #0
	movs r3, #0
	movs r0, #0x48
	add r0, ip
	mov sl, r0
	mov r0, ip
	adds r0, #0x4a
	str r0, [sp, #4]
	subs r4, #0xe
	mov sb, r4
	mov r4, ip
	adds r4, #0x6c
	cmp r5, r6
	bhs _0804232A
	adds r7, r1, #0
	movs r1, #0x10
	mov r8, r1
_08042314:
	mov r0, r8
	lsls r0, r3
	ands r0, r7
	adds r1, r3, #4
	asrs r0, r1
	cmp r0, r2
	bne _08042324
	adds r5, #1
_08042324:
	adds r3, #1
	cmp r3, r6
	blo _08042314
_0804232A:
	cmp r2, #0
	bne _08042330
	rsbs r5, r5, #0
_08042330:
	lsls r1, r2, #2
	mov r2, sb
	lsls r0, r2, #4
	adds r1, r1, r0
	ldr r3, _0804235C @ =gSpawnPositions_Modes_4_and_5
	adds r2, r1, r3
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #3
	ldrh r2, [r2]
	adds r0, r0, r2
	mov r2, sl
	strh r0, [r2]
	adds r0, r3, #0
	adds r0, #2
	adds r1, r1, r0
	ldrh r0, [r1]
	ldr r3, [sp, #4]
	strh r0, [r3]
	b _080423DA
	.align 2, 0
_08042358: .4byte gMultiplayerConnections
_0804235C: .4byte gSpawnPositions_Modes_4_and_5
_08042360:
	ldr r0, _08042378 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _0804239C
	cmp r0, #1
	bgt _0804237C
	cmp r0, #0
	beq _08042386
	b _080423D6
	.align 2, 0
_08042378: .4byte 0x04000128
_0804237C:
	cmp r0, #2
	beq _080423B4
	cmp r0, #3
	beq _080423C6
	b _080423D6
_08042386:
	mov r0, ip
	adds r0, #0x48
	movs r1, #0xe8
	strh r1, [r0]
	mov r1, ip
	adds r1, #0x4a
	ldr r0, _08042398 @ =0x0000033D
	b _080423D4
	.align 2, 0
_08042398: .4byte 0x0000033D
_0804239C:
	mov r0, ip
	adds r0, #0x48
	ldr r1, _080423AC @ =0x00000631
	strh r1, [r0]
	mov r1, ip
	adds r1, #0x4a
	ldr r0, _080423B0 @ =0x0000039E
	b _080423D4
	.align 2, 0
_080423AC: .4byte 0x00000631
_080423B0: .4byte 0x0000039E
_080423B4:
	mov r0, ip
	adds r0, #0x48
	movs r1, #0xe8
	strh r1, [r0]
	mov r1, ip
	adds r1, #0x4a
	movs r0, #0xae
	lsls r0, r0, #1
	b _080423D4
_080423C6:
	mov r0, ip
	adds r0, #0x48
	ldr r1, _080423F4 @ =0x00000631
	strh r1, [r0]
	mov r1, ip
	adds r1, #0x4a
	ldr r0, _080423F8 @ =0x00000117
_080423D4:
	strh r0, [r1]
_080423D6:
	mov r4, ip
	adds r4, #0x6c
_080423DA:
	movs r0, #0
	strb r0, [r4]
	mov r1, ip
	str r0, [r1, #0x4c]
	ldr r2, [sp]
	cmp r2, #0
	bne _08042404
	ldr r0, _080423FC @ =sa2__gUnknown_03005AF0
	str r0, [r1, #0x64]
	ldr r0, _08042400 @ =gPartner + 0xE0
	str r0, [r1, #0x68]
	b _0804240E
	.align 2, 0
_080423F4: .4byte 0x00000631
_080423F8: .4byte 0x00000117
_080423FC: .4byte sa2__gUnknown_03005AF0
_08042400: .4byte gPartner + 0xE0
_08042404:
	ldr r0, _08042420 @ =gUnknown_03005C30
	mov r3, ip
	str r0, [r3, #0x64]
	ldr r0, _08042424 @ =gPartner + 0x90
	str r0, [r3, #0x68]
_0804240E:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08042420: .4byte gUnknown_03005C30
_08042424: .4byte gPartner + 0x90

	thumb_func_start InitializePlayer
InitializePlayer: @ 0x08042428
	mov ip, r0
	adds r0, #0x48
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	mov r2, ip
	str r0, [r2]
	mov r0, ip
	adds r0, #0x4a
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	str r0, [r2, #4]
	ldr r0, _08042540 @ =gUnknown_030060E0
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	orrs r1, r0
	movs r3, #0
	movs r2, #0
	mov r0, ip
	strh r1, [r0, #0x38]
	strh r1, [r0, #0x3a]
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	strh r2, [r0, #0xc]
	movs r0, #0x80
	lsls r0, r0, #0xe
	mov r1, ip
	str r0, [r1, #0x10]
	strb r3, [r1, #0x14]
	movs r0, #6
	strb r0, [r1, #0xe]
	movs r0, #0xe
	strb r0, [r1, #0xf]
	movs r0, #0x78
	strb r0, [r1, #0x15]
	strh r2, [r1, #0x16]
	strb r3, [r1, #0x19]
	strb r3, [r1, #0x18]
	adds r1, #0x27
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x90
	lsls r0, r0, #3
	mov r1, ip
	str r0, [r1, #0x2c]
	movs r0, #8
	str r0, [r1, #0x30]
	movs r0, #0x60
	str r0, [r1, #0x34]
	mov r0, ip
	adds r0, #0x40
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	adds r1, #0x42
	ldr r0, _08042544 @ =0x0000FFFF
	strh r0, [r1]
	adds r1, #2
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	mov r0, ip
	strh r2, [r0, #0x1c]
	strh r2, [r0, #0x1e]
	strh r2, [r0, #0x20]
	strh r2, [r0, #0x22]
	str r2, [r0, #0x28]
	adds r0, #0x26
	strb r3, [r0]
	mov r1, ip
	strh r2, [r1, #0x1a]
	adds r1, #0x46
	movs r0, #0xb4
	lsls r0, r0, #1
	strh r0, [r1]
	mov r0, ip
	adds r0, #0x52
	strh r2, [r0]
	subs r0, #2
	strh r2, [r0]
	adds r0, #6
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	adds r0, #4
	strb r3, [r0]
	subs r0, #0x1b
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	mov r1, ip
	adds r1, #0x5a
	movs r0, #0x1e
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x3c
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xa
	strb r0, [r1]
	mov r2, ip
	adds r2, #0x6d
	movs r1, #3
	movs r3, #0
_08042502:
	stm r2!, {r3}
	adds r0, r1, #0
	subs r1, #1
	cmp r0, #0
	bne _08042502
	mov r1, ip
	adds r1, #0x6d
	movs r0, #0x7f
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x3c
	movs r2, #0
	ldrsb r2, [r0, r2]
	cmp r2, #0
	bne _08042562
	ldr r0, _08042548 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bhi _08042562
	ldr r3, _0804254C @ =gCourseTime
	ldr r1, [r3]
	ldr r0, _08042550 @ =0x00008C9F
	cmp r1, r0
	bls _08042558
	ldr r0, _08042554 @ =gCheckpointTime
	str r2, [r0]
	str r2, [r3]
	mov r0, ip
	str r2, [r0, #0x4c]
	b _08042562
	.align 2, 0
_08042540: .4byte gUnknown_030060E0
_08042544: .4byte 0x0000FFFF
_08042548: .4byte gGameMode
_0804254C: .4byte gCourseTime
_08042550: .4byte 0x00008C9F
_08042554: .4byte gCheckpointTime
_08042558:
	ldr r1, _08042578 @ =gCheckpointTime
	mov r2, ip
	ldr r0, [r2, #0x4c]
	str r0, [r1]
	str r0, [r3]
_08042562:
	mov r0, ip
	adds r0, #0x59
	movs r2, #0
	ldrsb r2, [r0, r2]
	cmp r2, #1
	beq _08042596
	cmp r2, #1
	bgt _0804257C
	cmp r2, #0
	beq _08042586
	b _080425C2
	.align 2, 0
_08042578: .4byte gCheckpointTime
_0804257C:
	cmp r2, #2
	beq _080425A8
	cmp r2, #3
	beq _080425BA
	b _080425C2
_08042586:
	mov r0, ip
	adds r0, #0x80
	strb r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	b _080425C2
_08042596:
	mov r0, ip
	adds r0, #0x80
	movs r1, #0
	strb r1, [r0]
	adds r0, #4
	str r1, [r0]
	subs r0, #3
	strb r1, [r0]
	b _080425C2
_080425A8:
	mov r0, ip
	adds r0, #0x80
	movs r1, #0
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	b _080425C2
_080425BA:
	mov r1, ip
	adds r1, #0x80
	movs r0, #0
	strb r0, [r1]
_080425C2:
	bx lr

@ In SA2 there is Player_TransitionCancelFlyingAndBoost here.

	thumb_func_start sa2__sub_802195C
sa2__sub_802195C: @ 0x080425C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r4, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	cmp r6, #0
	bne _080425DC
	add r6, sp, #8
_080425DC:
	cmp r7, #0
	bne _080425E2
	add r7, sp, #0xc
_080425E2:
	ldr r0, [r4]
	asrs r0, r0, #8
	subs r0, #2
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	subs r3, r0, r1
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	movs r1, #0xf
	ldrsb r1, [r4, r1]
	subs r1, r0, r1
	movs r0, #0x27
	adds r0, r0, r4
	mov r8, r0
	ldrb r2, [r0]
	movs r5, #0xa
	ldrsh r0, [r4, r5]
	ldr r5, _08042678 @ =0x000002FF
	cmp r0, r5
	bgt _0804260E
	movs r0, #0x80
	orrs r2, r0
_0804260E:
	movs r0, #9
	add r0, sp
	mov sb, r0
	str r0, [sp]
	ldr r5, _0804267C @ =sa2__sub_801ED24
	mov sl, r5
	str r5, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sa2__sub_801E4E4
	adds r5, r0, #0
	ldr r0, [r4]
	asrs r0, r0, #8
	subs r0, #2
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	subs r0, r0, r1
	mov ip, r0
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	movs r1, #0xf
	ldrsb r1, [r4, r1]
	adds r1, r0, r1
	mov r0, r8
	ldrb r2, [r0]
	movs r3, #0xa
	ldrsh r0, [r4, r3]
	ldr r3, _08042678 @ =0x000002FF
	cmp r0, r3
	bgt _08042652
	movs r0, #0x80
	orrs r2, r0
_08042652:
	mov r4, sp
	adds r4, #0xa
	str r4, [sp]
	mov r0, sl
	str r0, [sp, #4]
	mov r0, ip
	movs r3, #8
	rsbs r3, r3, #0
	bl sa2__sub_801E4E4
	adds r1, r0, #0
	cmp r5, r1
	bge _08042680
	adds r2, r5, #0
	mov r3, sb
	ldrb r0, [r3]
	strb r0, [r6]
	str r1, [r7]
	b _08042688
	.align 2, 0
_08042678: .4byte 0x000002FF
_0804267C: .4byte sa2__sub_801ED24
_08042680:
	adds r2, r1, #0
	ldrb r0, [r4]
	strb r0, [r6]
	str r5, [r7]
_08042688:
	adds r0, r2, #0
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sa2__sub_8021A34
sa2__sub_8021A34: @ 0x0804269C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r4, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	cmp r6, #0
	bne _080426B4
	add r6, sp, #8
_080426B4:
	cmp r7, #0
	bne _080426BA
	add r7, sp, #0xc
_080426BA:
	ldr r0, [r4]
	asrs r0, r0, #8
	adds r0, #2
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	adds r3, r0, r1
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	movs r1, #0xf
	ldrsb r1, [r4, r1]
	subs r1, r0, r1
	movs r0, #0x27
	adds r0, r0, r4
	mov r8, r0
	ldrb r2, [r0]
	movs r5, #0xa
	ldrsh r0, [r4, r5]
	ldr r5, _0804274C @ =0x000002FF
	cmp r0, r5
	bgt _080426E6
	movs r0, #0x80
	orrs r2, r0
_080426E6:
	movs r0, #9
	add r0, sp
	mov sb, r0
	str r0, [sp]
	ldr r5, _08042750 @ =sa2__sub_801ED24
	mov sl, r5
	str r5, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	bl sa2__sub_801E4E4
	adds r5, r0, #0
	ldr r0, [r4]
	asrs r0, r0, #8
	adds r0, #2
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	adds r0, r0, r1
	mov ip, r0
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	movs r1, #0xf
	ldrsb r1, [r4, r1]
	adds r1, r0, r1
	mov r0, r8
	ldrb r2, [r0]
	movs r3, #0xa
	ldrsh r0, [r4, r3]
	ldr r3, _0804274C @ =0x000002FF
	cmp r0, r3
	bgt _08042728
	movs r0, #0x80
	orrs r2, r0
_08042728:
	mov r4, sp
	adds r4, #0xa
	str r4, [sp]
	mov r0, sl
	str r0, [sp, #4]
	mov r0, ip
	movs r3, #8
	bl sa2__sub_801E4E4
	adds r1, r0, #0
	cmp r5, r1
	bge _08042754
	adds r2, r5, #0
	mov r3, sb
	ldrb r0, [r3]
	strb r0, [r6]
	str r1, [r7]
	b _0804275C
	.align 2, 0
_0804274C: .4byte 0x000002FF
_08042750: .4byte sa2__sub_801ED24
_08042754:
	adds r2, r1, #0
	ldrb r0, [r4]
	strb r0, [r6]
	str r5, [r7]
_0804275C:
	adds r0, r2, #0
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sa2__sub_8021B08
sa2__sub_8021B08: @ 0x08042770
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r4, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	cmp r6, #0
	bne _08042788
	add r6, sp, #8
_08042788:
	cmp r7, #0
	bne _0804278E
	add r7, sp, #0xc
_0804278E:
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	movs r1, #0xf
	ldrsb r1, [r4, r1]
	subs r3, r0, r1
	ldr r0, [r4]
	asrs r0, r0, #8
	subs r0, #2
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	subs r1, r0, r1
	movs r0, #0x27
	adds r0, r0, r4
	mov r8, r0
	ldrb r2, [r0]
	movs r5, #0xa
	ldrsh r0, [r4, r5]
	ldr r5, _08042824 @ =0x000002FF
	cmp r0, r5
	bgt _080427BA
	movs r0, #0x80
	orrs r2, r0
_080427BA:
	movs r0, #9
	add r0, sp
	mov sb, r0
	str r0, [sp]
	ldr r5, _08042828 @ =sa2__sub_801EE64
	mov sl, r5
	str r5, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sa2__sub_801E4E4
	adds r5, r0, #0
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	movs r1, #0xf
	ldrsb r1, [r4, r1]
	subs r0, r0, r1
	mov ip, r0
	ldr r0, [r4]
	asrs r0, r0, #8
	adds r0, #2
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	adds r1, r0, r1
	mov r0, r8
	ldrb r2, [r0]
	movs r3, #0xa
	ldrsh r0, [r4, r3]
	ldr r3, _08042824 @ =0x000002FF
	cmp r0, r3
	bgt _080427FE
	movs r0, #0x80
	orrs r2, r0
_080427FE:
	mov r4, sp
	adds r4, #0xa
	str r4, [sp]
	mov r0, sl
	str r0, [sp, #4]
	mov r0, ip
	movs r3, #8
	rsbs r3, r3, #0
	bl sa2__sub_801E4E4
	adds r1, r0, #0
	cmp r5, r1
	bge _0804282C
	adds r2, r5, #0
	mov r3, sb
	ldrb r0, [r3]
	strb r0, [r6]
	str r1, [r7]
	b _08042834
	.align 2, 0
_08042824: .4byte 0x000002FF
_08042828: .4byte sa2__sub_801EE64
_0804282C:
	adds r2, r1, #0
	ldrb r0, [r4]
	strb r0, [r6]
	str r5, [r7]
_08042834:
	adds r0, r2, #0
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sa2__sub_8021BE0
sa2__sub_8021BE0: @ 0x08042848
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0804288C
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r1, r0
	cmp r1, #0
	bne _0804286A
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #4
	strb r0, [r1]
_0804286A:
	ldr r1, [r4, #0x10]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08042884
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #0xe
	bl sa2__sub_8023B5C
_08042884:
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
_0804288C:
	ldr r0, [r4, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0xe0
	ands r0, r1
	ldr r1, _080428F4 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x3d
	movs r6, #0
	strb r6, [r0]
	adds r0, #1
	strb r6, [r0]
	adds r0, #1
	strb r6, [r0]
	ldr r0, [r4, #0x10]
	ldr r1, _080428F8 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r4, #0x10]
	adds r5, r4, #0
	adds r5, #0x59
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #1
	bne _080428C8
	movs r0, #0x78
	bl m4aSongNumStop
_080428C8:
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #3
	bne _080428D8
	ldr r0, [r4, #0x10]
	ldr r1, _080428FC @ =0xF9FFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
_080428D8:
	adds r0, r4, #0
	adds r0, #0x58
	strb r6, [r0]
	adds r0, r4, #0
	bl Player_804726C
	ldr r0, [r4, #0x10]
	movs r1, #0x13
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080428F4: .4byte 0xFFFFFBFF
_080428F8: .4byte 0xFFFF7FFF
_080428FC: .4byte 0xF9FFFFFF

	thumb_func_start sa2__sub_8021C4C
sa2__sub_8021C4C: @ 0x08042900
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	adds r4, r0, #0
	adds r0, #0x27
	ldrb r5, [r0]
	ldr r0, [r4]
	asrs r0, r0, #8
	subs r0, #3
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	subs r7, r0, r1
	ldr r0, [r4, #4]
	asrs r1, r0, #8
	adds r2, r5, #0
	movs r3, #0xa
	ldrsh r0, [r4, r3]
	ldr r3, _080429AC @ =0x000002FF
	mov sb, r3
	cmp r0, sb
	bgt _08042932
	movs r2, #0x80
	orrs r2, r5
_08042932:
	movs r3, #8
	rsbs r3, r3, #0
	movs r6, #0
	str r6, [sp]
	ldr r0, _080429B0 @ =sa2__sub_801ED24
	mov r8, r0
	str r0, [sp, #4]
	adds r0, r7, #0
	bl sa2__sub_801E4E4
	adds r2, r0, #0
	cmp r2, #0
	bgt _08042956
	lsls r1, r2, #8
	ldr r0, [r4]
	subs r0, r0, r1
	str r0, [r4]
	strh r6, [r4, #8]
_08042956:
	ldr r0, [r4]
	asrs r0, r0, #8
	adds r0, #3
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	adds r3, r0, r1
	ldr r0, [r4, #4]
	asrs r1, r0, #8
	adds r2, r5, #0
	movs r5, #0xa
	ldrsh r0, [r4, r5]
	cmp r0, sb
	bgt _08042974
	movs r0, #0x80
	orrs r2, r0
_08042974:
	str r6, [sp]
	mov r0, r8
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	bl sa2__sub_801E4E4
	adds r2, r0, #0
	cmp r2, #0
	bgt _08042992
	lsls r1, r2, #8
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	strh r6, [r4, #8]
_08042992:
	add r2, sp, #0xc
	ldr r0, _080429B4 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080429B8
	adds r0, r4, #0
	add r1, sp, #8
	bl sa2__sub_8029AC0
	b _080429C0
	.align 2, 0
_080429AC: .4byte 0x000002FF
_080429B0: .4byte sa2__sub_801ED24
_080429B4: .4byte gStageFlags
_080429B8:
	adds r0, r4, #0
	add r1, sp, #8
	bl sa2__sub_8029B0C
_080429C0:
	adds r2, r0, #0
	cmp r2, #0
	bge _08042A5A
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x18
	adds r1, #6
	rsbs r1, r1, #0
	cmp r2, r1
	bge _080429DA
	ldr r0, [sp, #0xc]
	cmp r0, r1
	blt _08042A5A
_080429DA:
	add r0, sp, #8
	ldrb r0, [r0]
	strb r0, [r4, #0x14]
	ldr r0, _08042A20 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080429EE
	rsbs r2, r2, #0
_080429EE:
	lsls r1, r2, #8
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sa2__sub_8021BE0
	add r0, sp, #8
	ldrb r2, [r0]
	adds r0, r2, #0
	adds r0, #0x20
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08042A24
	movs r0, #0
	strh r0, [r4, #8]
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	movs r1, #0xbd
	lsls r1, r1, #4
	cmp r0, r1
	ble _08042A3E
	strh r1, [r4, #0xa]
	b _08042A3E
	.align 2, 0
_08042A20: .4byte gStageFlags
_08042A24:
	adds r1, r2, #0
	adds r1, #0x10
	movs r0, #0x20
	ands r1, r0
	cmp r1, #0
	bne _08042A36
	strh r1, [r4, #0xa]
	ldrh r0, [r4, #8]
	b _08042A58
_08042A36:
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r4, #0xa]
_08042A3E:
	movs r3, #0xa
	ldrsh r1, [r4, r3]
	cmp r1, #0
	bge _08042A48
	rsbs r1, r1, #0
_08042A48:
	strh r1, [r4, #0xc]
	add r0, sp, #8
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _08042A5A
	rsbs r0, r1, #0
_08042A58:
	strh r0, [r4, #0xc]
_08042A5A:
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sa2__sub_8021DB8
sa2__sub_8021DB8: @ 0x08042A68
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	adds r4, r0, #0
	adds r0, #0x27
	ldrb r5, [r0]
	ldr r0, [r4]
	asrs r0, r0, #8
	subs r0, #3
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	subs r7, r0, r1
	ldr r0, [r4, #4]
	asrs r1, r0, #8
	adds r2, r5, #0
	movs r3, #0xa
	ldrsh r0, [r4, r3]
	ldr r3, _08042B14 @ =0x000002FF
	mov sb, r3
	cmp r0, sb
	bgt _08042A9A
	movs r2, #0x80
	orrs r2, r5
_08042A9A:
	movs r3, #8
	rsbs r3, r3, #0
	movs r6, #0
	str r6, [sp]
	ldr r0, _08042B18 @ =sa2__sub_801ED24
	mov r8, r0
	str r0, [sp, #4]
	adds r0, r7, #0
	bl sa2__sub_801E4E4
	adds r2, r0, #0
	cmp r2, #0
	bgt _08042ABE
	lsls r1, r2, #8
	ldr r0, [r4]
	subs r0, r0, r1
	str r0, [r4]
	strh r6, [r4, #8]
_08042ABE:
	ldr r0, [r4]
	asrs r0, r0, #8
	adds r0, #3
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	adds r3, r0, r1
	ldr r0, [r4, #4]
	asrs r1, r0, #8
	adds r2, r5, #0
	movs r5, #0xa
	ldrsh r0, [r4, r5]
	cmp r0, sb
	bgt _08042ADC
	movs r0, #0x80
	orrs r2, r0
_08042ADC:
	str r6, [sp]
	mov r0, r8
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	bl sa2__sub_801E4E4
	adds r2, r0, #0
	cmp r2, #0
	bgt _08042AFA
	lsls r1, r2, #8
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	strh r6, [r4, #8]
_08042AFA:
	add r2, sp, #0xc
	ldr r0, _08042B1C @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08042B20
	adds r0, r4, #0
	add r1, sp, #8
	bl sa2__sub_8029B0C
	b _08042B28
	.align 2, 0
_08042B14: .4byte 0x000002FF
_08042B18: .4byte sa2__sub_801ED24
_08042B1C: .4byte gStageFlags
_08042B20:
	adds r0, r4, #0
	add r1, sp, #8
	bl sa2__sub_8029AC0
_08042B28:
	adds r2, r0, #0
	cmp r2, #0
	bgt _08042B80
	ldr r0, _08042B78 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08042B3C
	rsbs r2, r2, #0
_08042B3C:
	lsls r1, r2, #8
	ldr r0, [r4, #4]
	subs r0, r0, r1
	str r0, [r4, #4]
	add r0, sp, #8
	ldrb r2, [r0]
	adds r0, r2, #0
	adds r0, #0x20
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08042B7C
	add r0, sp, #8
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, #0x40
	cmp r0, #0
	ble _08042B7C
	strb r2, [r4, #0x14]
	adds r0, r4, #0
	bl sa2__sub_8021BE0
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _08042B74
	rsbs r0, r0, #0
_08042B74:
	strh r0, [r4, #0xc]
	b _08042B80
	.align 2, 0
_08042B78: .4byte gStageFlags
_08042B7C:
	movs r0, #0
	strh r0, [r4, #0xa]
_08042B80:
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sa2__sub_8021EE4
sa2__sub_8021EE4: @ 0x08042B90
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r0, #0x27
	ldrb r4, [r0]
	ldr r0, _08042BE0 @ =gStageFlags
	ldrh r1, [r0]
	movs r3, #0x80
	adds r0, r3, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	bne _08042BEC
	ldr r0, [r5]
	asrs r0, r0, #8
	subs r0, #3
	movs r1, #0xe
	ldrsb r1, [r5, r1]
	subs r0, r0, r1
	mov ip, r0
	ldr r0, [r5, #4]
	asrs r7, r0, #8
	adds r2, r4, #0
	movs r0, #0xa
	ldrsh r1, [r5, r0]
	ldr r0, _08042BE4 @ =0x000002FF
	cmp r1, r0
	bgt _08042BCE
	adds r2, r3, #0
	orrs r2, r4
_08042BCE:
	movs r3, #8
	rsbs r3, r3, #0
	str r6, [sp]
	ldr r0, _08042BE8 @ =sa2__sub_801ED24
	str r0, [sp, #4]
	mov r0, ip
	adds r1, r7, #0
	b _08042C0A
	.align 2, 0
_08042BE0: .4byte gStageFlags
_08042BE4: .4byte 0x000002FF
_08042BE8: .4byte sa2__sub_801ED24
_08042BEC:
	ldr r0, [r5]
	asrs r0, r0, #8
	subs r0, #3
	movs r1, #0xe
	ldrsb r1, [r5, r1]
	subs r0, r0, r1
	ldr r1, [r5, #4]
	asrs r1, r1, #8
	movs r3, #8
	rsbs r3, r3, #0
	movs r2, #0
	str r2, [sp]
	ldr r2, _08042C40 @ =sa2__sub_801ED24
	str r2, [sp, #4]
	adds r2, r4, #0
_08042C0A:
	bl sa2__sub_801E4E4
	adds r2, r0, #0
	cmp r2, #0
	bgt _08042C24
	lsls r1, r2, #8
	ldr r0, [r5]
	subs r0, r0, r1
	str r0, [r5]
	movs r0, #0
	strh r0, [r5, #8]
	ldrh r0, [r5, #0xa]
	strh r0, [r5, #0xc]
_08042C24:
	ldr r0, _08042C44 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	add r4, sp, #0xc
	cmp r0, #0
	beq _08042C48
	adds r0, r5, #0
	add r1, sp, #8
	adds r2, r4, #0
	bl sa2__sub_8029B0C
	b _08042C52
	.align 2, 0
_08042C40: .4byte sa2__sub_801ED24
_08042C44: .4byte gStageFlags
_08042C48:
	adds r0, r5, #0
	add r1, sp, #8
	adds r2, r4, #0
	bl sa2__sub_8029AC0
_08042C52:
	adds r2, r0, #0
	cmp r2, #0
	bgt _08042C80
	ldr r0, _08042C7C @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08042C66
	rsbs r2, r2, #0
_08042C66:
	lsls r0, r2, #8
	ldr r1, [r5, #4]
	subs r1, r1, r0
	str r1, [r5, #4]
	movs r1, #0xa
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _08042CDE
	movs r0, #0
	strh r0, [r5, #0xa]
	b _08042CDE
	.align 2, 0
_08042C7C: .4byte gStageFlags
_08042C80:
	movs r1, #0xa
	ldrsh r0, [r5, r1]
	cmp r0, #0
	blt _08042CDE
	ldr r0, _08042CA0 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08042CA4
	adds r0, r5, #0
	add r1, sp, #8
	adds r2, r4, #0
	bl sa2__sub_8029AC0
	b _08042CAE
	.align 2, 0
_08042CA0: .4byte gStageFlags
_08042CA4:
	adds r0, r5, #0
	add r1, sp, #8
	adds r2, r4, #0
	bl sa2__sub_8029B0C
_08042CAE:
	adds r2, r0, #0
	cmp r2, #0
	bgt _08042CDE
	ldr r0, _08042CE8 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08042CC2
	rsbs r2, r2, #0
_08042CC2:
	lsls r1, r2, #8
	ldr r0, [r5, #4]
	adds r0, r0, r1
	str r0, [r5, #4]
	add r0, sp, #8
	ldrb r0, [r0]
	movs r4, #0
	strb r0, [r5, #0x14]
	adds r0, r5, #0
	bl sa2__sub_8021BE0
	strh r4, [r5, #0xa]
	ldrh r0, [r5, #8]
	strh r0, [r5, #0xc]
_08042CDE:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08042CE8: .4byte gStageFlags

	thumb_func_start sa2__sub_802203C
sa2__sub_802203C: @ 0x08042CEC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r0, #0x27
	ldrb r3, [r0]
	ldr r0, _08042D34 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	mov ip, r0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _08042D40
	ldr r0, [r5]
	asrs r0, r0, #8
	adds r0, #3
	movs r1, #0xe
	ldrsb r1, [r5, r1]
	adds r7, r0, r1
	ldr r0, [r5, #4]
	asrs r6, r0, #8
	adds r2, r3, #0
	movs r0, #0xa
	ldrsh r1, [r5, r0]
	ldr r0, _08042D38 @ =0x000002FF
	cmp r1, r0
	bgt _08042D28
	mov r2, ip
	orrs r2, r3
_08042D28:
	str r4, [sp]
	ldr r0, _08042D3C @ =sa2__sub_801ED24
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r1, r6, #0
	b _08042D5A
	.align 2, 0
_08042D34: .4byte gStageFlags
_08042D38: .4byte 0x000002FF
_08042D3C: .4byte sa2__sub_801ED24
_08042D40:
	ldr r0, [r5]
	asrs r0, r0, #8
	adds r0, #3
	movs r1, #0xe
	ldrsb r1, [r5, r1]
	adds r0, r0, r1
	ldr r1, [r5, #4]
	asrs r1, r1, #8
	movs r2, #0
	str r2, [sp]
	ldr r2, _08042D90 @ =sa2__sub_801ED24
	str r2, [sp, #4]
	adds r2, r3, #0
_08042D5A:
	movs r3, #8
	bl sa2__sub_801E4E4
	adds r2, r0, #0
	cmp r2, #0
	bgt _08042D76
	lsls r1, r2, #8
	ldr r0, [r5]
	adds r0, r0, r1
	str r0, [r5]
	movs r0, #0
	strh r0, [r5, #8]
	ldrh r0, [r5, #0xa]
	strh r0, [r5, #0xc]
_08042D76:
	ldr r0, _08042D94 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	add r4, sp, #0xc
	cmp r0, #0
	beq _08042D98
	adds r0, r5, #0
	add r1, sp, #8
	adds r2, r4, #0
	bl sa2__sub_8029B0C
	b _08042DA2
	.align 2, 0
_08042D90: .4byte sa2__sub_801ED24
_08042D94: .4byte gStageFlags
_08042D98:
	adds r0, r5, #0
	add r1, sp, #8
	adds r2, r4, #0
	bl sa2__sub_8029AC0
_08042DA2:
	adds r2, r0, #0
	cmp r2, #0
	bgt _08042DD0
	ldr r0, _08042DCC @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08042DB6
	rsbs r2, r2, #0
_08042DB6:
	lsls r0, r2, #8
	ldr r1, [r5, #4]
	subs r1, r1, r0
	str r1, [r5, #4]
	movs r1, #0xa
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _08042E2E
	movs r0, #0
	strh r0, [r5, #0xa]
	b _08042E2E
	.align 2, 0
_08042DCC: .4byte gStageFlags
_08042DD0:
	movs r1, #0xa
	ldrsh r0, [r5, r1]
	cmp r0, #0
	blt _08042E2E
	ldr r0, _08042DF0 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08042DF4
	adds r0, r5, #0
	add r1, sp, #8
	adds r2, r4, #0
	bl sa2__sub_8029AC0
	b _08042DFE
	.align 2, 0
_08042DF0: .4byte gStageFlags
_08042DF4:
	adds r0, r5, #0
	add r1, sp, #8
	adds r2, r4, #0
	bl sa2__sub_8029B0C
_08042DFE:
	adds r2, r0, #0
	cmp r2, #0
	bgt _08042E2E
	ldr r0, _08042E38 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08042E12
	rsbs r2, r2, #0
_08042E12:
	lsls r1, r2, #8
	ldr r0, [r5, #4]
	adds r0, r0, r1
	str r0, [r5, #4]
	add r0, sp, #8
	ldrb r0, [r0]
	movs r4, #0
	strb r0, [r5, #0x14]
	adds r0, r5, #0
	bl sa2__sub_8021BE0
	strh r4, [r5, #0xa]
	ldrh r0, [r5, #8]
	strh r0, [r5, #0xc]
_08042E2E:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08042E38: .4byte gStageFlags

	thumb_func_start sa2__sub_8022190
sa2__sub_8022190: @ 0x08042E3C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r3, [r4, #0xa]
	adds r5, r3, #0
	ldr r0, _08042E90 @ =gStageFlags
	ldrh r1, [r0]
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	asrs r0, r0, #0x1f
	ands r0, r2
	movs r1, #8
	ldrsh r2, [r4, r1]
	cmp r2, #0
	bne _08042E64
	cmp r3, #0
	beq _08042E72
_08042E64:
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
_08042E72:
	subs r0, #0x20
	movs r2, #0x40
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _08042EAE
	cmp r0, #1
	bgt _08042E94
	cmp r0, #0
	beq _08042E9E
	b _08042EBC
	.align 2, 0
_08042E90: .4byte gStageFlags
_08042E94:
	cmp r0, #2
	beq _08042EA6
	cmp r0, #3
	beq _08042EB6
	b _08042EBC
_08042E9E:
	adds r0, r4, #0
	bl sa2__sub_8021C4C
	b _08042EBC
_08042EA6:
	adds r0, r4, #0
	bl sa2__sub_8021DB8
	b _08042EBC
_08042EAE:
	adds r0, r4, #0
	bl sa2__sub_8021EE4
	b _08042EBC
_08042EB6:
	adds r0, r4, #0
	bl sa2__sub_802203C
_08042EBC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

@ More functions here in SA2!

	thumb_func_start sa2__sub_8022318
sa2__sub_8022318: @ 0x08042EC4
	push {r4, lr}
	adds r3, r0, #0
	ldr r1, [r3, #0x10]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08042EE0
	movs r0, #6
	strb r0, [r3, #0xe]
	movs r0, #0xe
	strb r0, [r3, #0xf]
	adds r2, r3, #0
	adds r2, #0x40
	b _08042F22
_08042EE0:
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r3, #0x10]
	adds r2, r3, #0
	adds r2, #0x40
	movs r0, #0
	strb r0, [r2]
	movs r0, #0xf
	ldrsb r0, [r3, r0]
	adds r4, r0, #0
	subs r4, #0xe
	ldr r0, _08042F64 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08042F06
	rsbs r4, r4, #0
_08042F06:
	ldrb r0, [r3, #0x14]
	adds r0, #0x40
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08042F12
	rsbs r4, r4, #0
_08042F12:
	movs r0, #6
	strb r0, [r3, #0xe]
	movs r0, #0xe
	strb r0, [r3, #0xf]
	lsls r1, r4, #8
	ldr r0, [r3, #4]
	adds r0, r0, r1
	str r0, [r3, #4]
_08042F22:
	ldr r0, [r3, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x1e
	ands r0, r1
	adds r1, #0x10
	ands r0, r1
	subs r1, #0xf0
	ands r0, r1
	str r0, [r3, #0x10]
	adds r0, r3, #0
	adds r0, #0x58
	movs r4, #0
	strb r4, [r0]
	ldr r0, [r3, #0x10]
	ldr r1, _08042F68 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r3, #0x10]
	movs r0, #0x78
	strb r0, [r3, #0x15]
	adds r0, r3, #0
	adds r0, #0x3d
	strb r4, [r0]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0x3d
	ble _08042F5C
	strb r4, [r2]
_08042F5C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08042F64: .4byte gStageFlags
_08042F68: .4byte 0xFFFF7FFF

	thumb_func_start sa2__sub_80223BC
sa2__sub_80223BC: @ 0x08042F6C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	adds r4, r0, #0
	adds r0, #0x27
	ldrb r5, [r0]
	ldr r0, [r4]
	asrs r0, r0, #8
	subs r0, #3
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	subs r6, r0, r1
	ldr r0, [r4, #4]
	asrs r1, r0, #8
	adds r2, r5, #0
	movs r3, #0xa
	ldrsh r0, [r4, r3]
	ldr r3, _08043030 @ =0x000002FF
	mov sb, r3
	cmp r0, sb
	bgt _08042F9E
	movs r2, #0x80
	orrs r2, r5
_08042F9E:
	movs r3, #8
	rsbs r3, r3, #0
	movs r7, #0
	str r7, [sp]
	ldr r0, _08043034 @ =sa2__sub_801ED24
	mov r8, r0
	str r0, [sp, #4]
	adds r0, r6, #0
	bl sa2__sub_801E4E4
	adds r2, r0, #0
	cmp r2, #0
	bgt _08042FCE
	lsls r1, r2, #8
	ldr r0, [r4]
	subs r0, r0, r1
	str r0, [r4]
	strh r7, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x80
	ldrb r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2]
_08042FCE:
	ldr r0, [r4]
	asrs r0, r0, #8
	adds r0, #3
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	adds r3, r0, r1
	ldr r0, [r4, #4]
	asrs r1, r0, #8
	adds r2, r5, #0
	movs r5, #0xa
	ldrsh r0, [r4, r5]
	cmp r0, sb
	bgt _08042FEC
	movs r0, #0x80
	orrs r2, r0
_08042FEC:
	str r7, [sp]
	mov r0, r8
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	bl sa2__sub_801E4E4
	adds r2, r0, #0
	cmp r2, #0
	bgt _08043016
	lsls r1, r2, #8
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	strh r7, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x80
	ldrb r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2]
_08043016:
	add r2, sp, #0xc
	ldr r0, _08043038 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804303C
	adds r0, r4, #0
	add r1, sp, #8
	bl sa2__sub_8029AC0
	b _08043044
	.align 2, 0
_08043030: .4byte 0x000002FF
_08043034: .4byte sa2__sub_801ED24
_08043038: .4byte gStageFlags
_0804303C:
	adds r0, r4, #0
	add r1, sp, #8
	bl sa2__sub_8029B0C
_08043044:
	adds r2, r0, #0
	cmp r2, #0
	bgt _08043076
	ldr r0, _08043084 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08043058
	rsbs r2, r2, #0
_08043058:
	lsls r1, r2, #8
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
	add r0, sp, #8
	ldrb r0, [r0]
	movs r1, #0
	strb r0, [r4, #0x14]
	strh r1, [r4, #0xa]
	adds r2, r4, #0
	adds r2, #0x80
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
_08043076:
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08043084: .4byte gStageFlags

	thumb_func_start sa2__sub_80224DC
sa2__sub_80224DC: @ 0x08043088
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	adds r4, r0, #0
	adds r0, #0x27
	ldrb r5, [r0]
	ldr r0, [r4]
	asrs r0, r0, #8
	subs r0, #3
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	subs r6, r0, r1
	ldr r0, [r4, #4]
	asrs r1, r0, #8
	adds r2, r5, #0
	movs r3, #0xa
	ldrsh r0, [r4, r3]
	ldr r3, _0804314C @ =0x000002FF
	mov sb, r3
	cmp r0, sb
	bgt _080430BA
	movs r2, #0x80
	orrs r2, r5
_080430BA:
	movs r3, #8
	rsbs r3, r3, #0
	movs r7, #0
	str r7, [sp]
	ldr r0, _08043150 @ =sa2__sub_801ED24
	mov r8, r0
	str r0, [sp, #4]
	adds r0, r6, #0
	bl sa2__sub_801E4E4
	adds r2, r0, #0
	cmp r2, #0
	bgt _080430EA
	lsls r1, r2, #8
	ldr r0, [r4]
	subs r0, r0, r1
	str r0, [r4]
	strh r7, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x80
	ldrb r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2]
_080430EA:
	ldr r0, [r4]
	asrs r0, r0, #8
	adds r0, #3
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	adds r3, r0, r1
	ldr r0, [r4, #4]
	asrs r1, r0, #8
	adds r2, r5, #0
	movs r5, #0xa
	ldrsh r0, [r4, r5]
	cmp r0, sb
	bgt _08043108
	movs r0, #0x80
	orrs r2, r0
_08043108:
	str r7, [sp]
	mov r0, r8
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	bl sa2__sub_801E4E4
	adds r2, r0, #0
	cmp r2, #0
	bgt _08043132
	lsls r1, r2, #8
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	strh r7, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x80
	ldrb r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2]
_08043132:
	add r2, sp, #0xc
	ldr r0, _08043154 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08043158
	adds r0, r4, #0
	add r1, sp, #8
	bl sa2__sub_8029B0C
	b _08043160
	.align 2, 0
_0804314C: .4byte 0x000002FF
_08043150: .4byte sa2__sub_801ED24
_08043154: .4byte gStageFlags
_08043158:
	adds r0, r4, #0
	add r1, sp, #8
	bl sa2__sub_8029AC0
_08043160:
	adds r2, r0, #0
	cmp r2, #0
	bgt _08043180
	ldr r0, _08043190 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08043174
	rsbs r2, r2, #0
_08043174:
	lsls r0, r2, #8
	ldr r1, [r4, #4]
	subs r1, r1, r0
	str r1, [r4, #4]
	movs r0, #0
	strh r0, [r4, #0xa]
_08043180:
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08043190: .4byte gStageFlags

	thumb_func_start sa2__sub_80225E8
sa2__sub_80225E8: @ 0x08043194
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x27
	ldr r0, [r4]
	asrs r0, r0, #8
	subs r0, #2
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	subs r6, r0, r1
	ldr r0, [r4, #4]
	asrs r5, r0, #8
	ldrb r2, [r2]
	movs r0, #0xa
	ldrsh r1, [r4, r0]
	ldr r0, _08043208 @ =0x000002FF
	cmp r1, r0
	bgt _080431BE
	movs r0, #0x80
	orrs r2, r0
_080431BE:
	movs r3, #8
	rsbs r3, r3, #0
	movs r7, #0
	str r7, [sp]
	ldr r0, _0804320C @ =sa2__sub_801ED24
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sa2__sub_801E4E4
	adds r2, r0, #0
	cmp r2, #0
	bgt _080431EE
	lsls r1, r2, #8
	ldr r0, [r4]
	subs r0, r0, r1
	str r0, [r4]
	strh r7, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x80
	ldrb r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2]
_080431EE:
	ldr r0, _08043210 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	add r5, sp, #0xc
	cmp r0, #0
	beq _08043214
	adds r0, r4, #0
	add r1, sp, #8
	adds r2, r5, #0
	bl sa2__sub_8029B0C
	b _0804321E
	.align 2, 0
_08043208: .4byte 0x000002FF
_0804320C: .4byte sa2__sub_801ED24
_08043210: .4byte gStageFlags
_08043214:
	adds r0, r4, #0
	add r1, sp, #8
	adds r2, r5, #0
	bl sa2__sub_8029AC0
_0804321E:
	adds r2, r0, #0
	cmp r2, #0
	bgt _0804324C
	ldr r0, _08043248 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08043232
	rsbs r2, r2, #0
_08043232:
	lsls r0, r2, #8
	ldr r1, [r4, #4]
	subs r1, r1, r0
	str r1, [r4, #4]
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _080432AC
	movs r0, #0
	strh r0, [r4, #0xa]
	b _080432AC
	.align 2, 0
_08043248: .4byte gStageFlags
_0804324C:
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _080432AC
	ldr r0, _0804326C @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08043270
	adds r0, r4, #0
	add r1, sp, #8
	adds r2, r5, #0
	bl sa2__sub_8029AC0
	b _0804327A
	.align 2, 0
_0804326C: .4byte gStageFlags
_08043270:
	adds r0, r4, #0
	add r1, sp, #8
	adds r2, r5, #0
	bl sa2__sub_8029B0C
_0804327A:
	adds r2, r0, #0
	cmp r2, #0
	bgt _080432AC
	ldr r0, _080432B4 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804328E
	rsbs r2, r2, #0
_0804328E:
	lsls r1, r2, #8
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
	add r0, sp, #8
	ldrb r0, [r0]
	movs r1, #0
	strb r0, [r4, #0x14]
	strh r1, [r4, #0xa]
	adds r2, r4, #0
	adds r2, #0x80
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
_080432AC:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080432B4: .4byte gStageFlags

	thumb_func_start sa2__sub_8022710
sa2__sub_8022710: @ 0x080432B8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x27
	ldr r0, [r4]
	asrs r0, r0, #8
	adds r0, #2
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	adds r5, r0, r1
	ldr r0, [r4, #4]
	asrs r3, r0, #8
	ldrb r2, [r2]
	movs r0, #0xa
	ldrsh r1, [r4, r0]
	ldr r0, _0804332C @ =0x000002FF
	cmp r1, r0
	bgt _080432E2
	movs r0, #0x80
	orrs r2, r0
_080432E2:
	movs r6, #0
	str r6, [sp]
	ldr r0, _08043330 @ =sa2__sub_801ED24
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r3, #0
	movs r3, #8
	bl sa2__sub_801E4E4
	adds r2, r0, #0
	cmp r2, #0
	bgt _08043310
	lsls r1, r2, #8
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	strh r6, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x80
	ldrb r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2]
_08043310:
	ldr r0, _08043334 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	add r5, sp, #0xc
	cmp r0, #0
	beq _08043338
	adds r0, r4, #0
	add r1, sp, #8
	adds r2, r5, #0
	bl sa2__sub_8029B0C
	b _08043342
	.align 2, 0
_0804332C: .4byte 0x000002FF
_08043330: .4byte sa2__sub_801ED24
_08043334: .4byte gStageFlags
_08043338:
	adds r0, r4, #0
	add r1, sp, #8
	adds r2, r5, #0
	bl sa2__sub_8029AC0
_08043342:
	adds r2, r0, #0
	cmp r2, #0
	bgt _08043370
	ldr r0, _0804336C @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08043356
	rsbs r2, r2, #0
_08043356:
	lsls r0, r2, #8
	ldr r1, [r4, #4]
	subs r1, r1, r0
	str r1, [r4, #4]
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _080433D0
	movs r0, #0
	strh r0, [r4, #0xa]
	b _080433D0
	.align 2, 0
_0804336C: .4byte gStageFlags
_08043370:
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _080433D0
	ldr r0, _08043390 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08043394
	adds r0, r4, #0
	add r1, sp, #8
	adds r2, r5, #0
	bl sa2__sub_8029AC0
	b _0804339E
	.align 2, 0
_08043390: .4byte gStageFlags
_08043394:
	adds r0, r4, #0
	add r1, sp, #8
	adds r2, r5, #0
	bl sa2__sub_8029B0C
_0804339E:
	adds r2, r0, #0
	cmp r2, #0
	bgt _080433D0
	ldr r0, _080433D8 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080433B2
	rsbs r2, r2, #0
_080433B2:
	lsls r1, r2, #8
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
	add r0, sp, #8
	ldrb r0, [r0]
	movs r1, #0
	strb r0, [r4, #0x14]
	strh r1, [r4, #0xa]
	adds r2, r4, #0
	adds r2, #0x80
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
_080433D0:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080433D8: .4byte gStageFlags

	thumb_func_start sa2__sub_8022838
sa2__sub_8022838: @ 0x080433DC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r2, [r4, #8]
	ldrh r5, [r4, #0xa]
	movs r3, #0
	ldr r0, [r4, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08043402
	adds r2, r4, #0
	adds r2, #0x80
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	strb r3, [r4, #0x19]
	strb r3, [r4, #0x18]
	b _08043458
_08043402:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x18
	adds r0, r3, #0
	subs r0, #0x20
	movs r2, #0x40
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _0804344A
	cmp r0, #1
	bgt _08043430
	cmp r0, #0
	beq _0804343A
	b _08043458
_08043430:
	cmp r0, #2
	beq _08043442
	cmp r0, #3
	beq _08043452
	b _08043458
_0804343A:
	adds r0, r4, #0
	bl sa2__sub_80223BC
	b _08043458
_08043442:
	adds r0, r4, #0
	bl sa2__sub_80224DC
	b _08043458
_0804344A:
	adds r0, r4, #0
	bl sa2__sub_80225E8
	b _08043458
_08043452:
	adds r0, r4, #0
	bl sa2__sub_8022710
_08043458:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sa2__sub_80228C0
sa2__sub_80228C0: @ 0x08043460
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	ldr r4, [r7]
	ldr r0, [r7, #4]
	mov sb, r0
	ldrb r6, [r7, #0x14]
	adds r0, r7, #0
	adds r0, #0x27
	ldrb r0, [r0]
	mov r8, r0
	mov r2, sb
	asrs r5, r2, #8
	movs r0, #0xf
	ldrsb r0, [r7, r0]
	adds r0, r5, r0
	asrs r4, r4, #8
	subs r1, r4, #2
	movs r2, #0xe
	ldrsb r2, [r7, r2]
	subs r1, r1, r2
	adds r2, r7, #0
	adds r2, #0x18
	str r2, [sp]
	ldr r3, _080434F0 @ =sa2__sub_801EE64
	str r3, [sp, #4]
	mov r2, r8
	movs r3, #8
	bl sa2__sub_801E4E4
	mov sl, r0
	movs r0, #0xf
	ldrsb r0, [r7, r0]
	adds r5, r5, r0
	adds r4, #2
	movs r0, #0xe
	ldrsb r0, [r7, r0]
	adds r4, r4, r0
	adds r0, r7, #0
	adds r0, #0x19
	str r0, [sp]
	ldr r0, _080434F0 @ =sa2__sub_801EE64
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, r8
	movs r3, #8
	bl sa2__sub_801E4E4
	adds r1, r0, #0
	adds r2, r1, #0
	cmp r1, sl
	ble _080434D4
	mov r2, sl
_080434D4:
	cmp r2, #0
	beq _0804352A
	cmp r2, #0
	bge _080434F4
	movs r0, #0xb
	rsbs r0, r0, #0
	cmp r2, r0
	blt _08043562
_080434E4:
	lsls r0, r2, #8
	add sb, r0
	cmp sl, r1
	blt _0804352E
	b _08043532
	.align 2, 0
_080434F0: .4byte sa2__sub_801EE64
_080434F4:
	movs r3, #8
	ldrsh r0, [r7, r3]
	cmp r0, #0
	bge _080434FE
	rsbs r0, r0, #0
_080434FE:
	asrs r0, r0, #8
	adds r0, #3
	cmp r0, #0xb
	ble _08043508
	movs r0, #0xb
_08043508:
	cmp r2, r0
	ble _080434E4
	ldr r1, [r7, #0x10]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0804351E
	lsls r0, r2, #8
	add sb, r0
	b _08043536
_0804351E:
	movs r0, #2
	orrs r1, r0
	subs r0, #0x23
	ands r1, r0
	str r1, [r7, #0x10]
	b _08043562
_0804352A:
	cmp sl, r1
	bge _08043532
_0804352E:
	ldrb r0, [r7, #0x18]
	b _08043534
_08043532:
	ldrb r0, [r7, #0x19]
_08043534:
	adds r6, r0, #0
_08043536:
	mov r0, sb
	str r0, [r7, #4]
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	bne _08043562
	strb r6, [r7, #0x14]
	ldr r0, _08043574 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08043562
	ldrb r6, [r7, #0x14]
	adds r0, r6, #0
	adds r0, #0x40
	lsls r0, r0, #0x18
	rsbs r0, r0, #0
	lsrs r6, r0, #0x18
	adds r0, r6, #0
	subs r0, #0x40
	strb r0, [r7, #0x14]
_08043562:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08043574: .4byte gStageFlags

	thumb_func_start sa2__sub_80229EC
sa2__sub_80229EC: @ 0x08043578
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	ldr r4, [r7]
	ldr r0, [r7, #4]
	mov sl, r0
	adds r0, r7, #0
	adds r0, #0x27
	ldrb r0, [r0]
	mov sb, r0
	mov r1, sl
	asrs r5, r1, #8
	movs r0, #0xf
	ldrsb r0, [r7, r0]
	subs r0, r5, r0
	asrs r4, r4, #8
	adds r1, r4, #2
	movs r2, #0xe
	ldrsb r2, [r7, r2]
	adds r1, r1, r2
	adds r2, r7, #0
	adds r2, #0x18
	str r2, [sp]
	ldr r2, _08043610 @ =sa2__sub_801EE64
	mov r8, r2
	str r2, [sp, #4]
	mov r2, sb
	movs r3, #8
	rsbs r3, r3, #0
	bl sa2__sub_801E4E4
	adds r6, r0, #0
	movs r0, #0xf
	ldrsb r0, [r7, r0]
	subs r5, r5, r0
	subs r4, #2
	movs r0, #0xe
	ldrsb r0, [r7, r0]
	subs r4, r4, r0
	adds r0, r7, #0
	adds r0, #0x19
	str r0, [sp]
	mov r3, r8
	str r3, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, sb
	movs r3, #8
	rsbs r3, r3, #0
	bl sa2__sub_801E4E4
	adds r2, r0, #0
	adds r1, r2, #0
	cmp r2, r6
	ble _080435F0
	adds r1, r6, #0
_080435F0:
	cmp r1, #0
	beq _0804363A
	cmp r1, #0
	bge _08043614
	movs r0, #0xb
	rsbs r0, r0, #0
	cmp r1, r0
	blt _08043672
_08043600:
	lsls r0, r1, #8
	mov r1, sl
	subs r1, r1, r0
	mov sl, r1
	cmp r6, r2
	blt _0804363E
	b _08043642
	.align 2, 0
_08043610: .4byte sa2__sub_801EE64
_08043614:
	movs r3, #8
	ldrsh r0, [r7, r3]
	cmp r0, #0
	bge _0804361E
	rsbs r0, r0, #0
_0804361E:
	asrs r0, r0, #8
	adds r0, #3
	cmp r0, #0xb
	ble _08043628
	movs r0, #0xb
_08043628:
	cmp r1, r0
	ble _08043600
	ldr r0, [r7, #0x10]
	movs r1, #2
	orrs r0, r1
	subs r1, #0x23
	ands r0, r1
	str r0, [r7, #0x10]
	b _08043672
_0804363A:
	cmp r6, r2
	bge _08043642
_0804363E:
	ldrb r0, [r7, #0x18]
	b _08043644
_08043642:
	ldrb r0, [r7, #0x19]
_08043644:
	adds r1, r0, #0
	mov r2, sl
	str r2, [r7, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08043672
	strb r1, [r7, #0x14]
	ldr r0, _08043684 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08043672
	ldrb r1, [r7, #0x14]
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #0x18
	rsbs r0, r0, #0
	lsrs r1, r0, #0x18
	adds r0, r1, #0
	subs r0, #0x40
	strb r0, [r7, #0x14]
_08043672:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08043684: .4byte gStageFlags

	thumb_func_start sa2__sub_8022B18
sa2__sub_8022B18: @ 0x08043688
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	ldr r0, [r7]
	mov sl, r0
	ldr r4, [r7, #4]
	adds r0, r7, #0
	adds r0, #0x27
	ldrb r0, [r0]
	mov sb, r0
	mov r1, sl
	asrs r5, r1, #8
	movs r0, #0xf
	ldrsb r0, [r7, r0]
	subs r0, r5, r0
	asrs r4, r4, #8
	subs r1, r4, #2
	movs r2, #0xe
	ldrsb r2, [r7, r2]
	subs r1, r1, r2
	adds r2, r7, #0
	adds r2, #0x18
	str r2, [sp]
	ldr r2, _08043720 @ =sa2__sub_801ED24
	mov r8, r2
	str r2, [sp, #4]
	mov r2, sb
	movs r3, #8
	rsbs r3, r3, #0
	bl sa2__sub_801E4E4
	adds r6, r0, #0
	movs r0, #0xf
	ldrsb r0, [r7, r0]
	subs r5, r5, r0
	adds r4, #2
	movs r0, #0xe
	ldrsb r0, [r7, r0]
	adds r4, r4, r0
	adds r0, r7, #0
	adds r0, #0x19
	str r0, [sp]
	mov r3, r8
	str r3, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, sb
	movs r3, #8
	rsbs r3, r3, #0
	bl sa2__sub_801E4E4
	adds r2, r0, #0
	adds r1, r2, #0
	cmp r2, r6
	ble _08043700
	adds r1, r6, #0
_08043700:
	cmp r1, #0
	beq _0804374A
	cmp r1, #0
	bge _08043724
	movs r0, #0xb
	rsbs r0, r0, #0
	cmp r1, r0
	blt _08043782
_08043710:
	lsls r0, r1, #8
	mov r1, sl
	subs r1, r1, r0
	mov sl, r1
	cmp r6, r2
	blt _0804374E
	b _08043752
	.align 2, 0
_08043720: .4byte sa2__sub_801ED24
_08043724:
	movs r3, #0xa
	ldrsh r0, [r7, r3]
	cmp r0, #0
	bge _0804372E
	rsbs r0, r0, #0
_0804372E:
	asrs r0, r0, #8
	adds r0, #3
	cmp r0, #0xb
	ble _08043738
	movs r0, #0xb
_08043738:
	cmp r1, r0
	ble _08043710
	ldr r0, [r7, #0x10]
	movs r1, #2
	orrs r0, r1
	subs r1, #0x23
	ands r0, r1
	str r0, [r7, #0x10]
	b _08043782
_0804374A:
	cmp r6, r2
	bge _08043752
_0804374E:
	ldrb r0, [r7, #0x18]
	b _08043754
_08043752:
	ldrb r0, [r7, #0x19]
_08043754:
	adds r1, r0, #0
	mov r2, sl
	str r2, [r7]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08043782
	strb r1, [r7, #0x14]
	ldr r0, _08043794 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08043782
	ldrb r1, [r7, #0x14]
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #0x18
	rsbs r0, r0, #0
	lsrs r1, r0, #0x18
	adds r0, r1, #0
	subs r0, #0x40
	strb r0, [r7, #0x14]
_08043782:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08043794: .4byte gStageFlags

	thumb_func_start sa2__sub_8022C44
sa2__sub_8022C44: @ 0x08043798
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	ldr r0, [r7]
	mov sb, r0
	ldr r4, [r7, #4]
	adds r0, r7, #0
	adds r0, #0x27
	ldrb r0, [r0]
	mov r8, r0
	mov r2, sb
	asrs r5, r2, #8
	movs r0, #0xf
	ldrsb r0, [r7, r0]
	adds r0, r5, r0
	asrs r4, r4, #8
	adds r1, r4, #2
	movs r2, #0xe
	ldrsb r2, [r7, r2]
	adds r1, r1, r2
	adds r2, r7, #0
	adds r2, #0x18
	str r2, [sp]
	ldr r3, _08043828 @ =sa2__sub_801ED24
	mov sl, r3
	str r3, [sp, #4]
	mov r2, r8
	movs r3, #8
	bl sa2__sub_801E4E4
	adds r6, r0, #0
	movs r0, #0xf
	ldrsb r0, [r7, r0]
	adds r5, r5, r0
	subs r4, #2
	movs r0, #0xe
	ldrsb r0, [r7, r0]
	subs r4, r4, r0
	adds r0, r7, #0
	adds r0, #0x19
	str r0, [sp]
	mov r0, sl
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, r8
	movs r3, #8
	bl sa2__sub_801E4E4
	adds r2, r0, #0
	adds r1, r2, #0
	cmp r2, r6
	ble _0804380C
	adds r1, r6, #0
_0804380C:
	cmp r1, #0
	beq _08043852
	cmp r1, #0
	bge _0804382C
	movs r0, #0xb
	rsbs r0, r0, #0
	cmp r1, r0
	blt _0804388A
_0804381C:
	lsls r0, r1, #8
	add sb, r0
	cmp r6, r2
	blt _08043856
	b _0804385A
	.align 2, 0
_08043828: .4byte sa2__sub_801ED24
_0804382C:
	movs r3, #0xa
	ldrsh r0, [r7, r3]
	cmp r0, #0
	bge _08043836
	rsbs r0, r0, #0
_08043836:
	asrs r0, r0, #8
	adds r0, #3
	cmp r0, #0xb
	ble _08043840
	movs r0, #0xb
_08043840:
	cmp r1, r0
	ble _0804381C
	ldr r0, [r7, #0x10]
	movs r1, #2
	orrs r0, r1
	subs r1, #0x23
	ands r0, r1
	str r0, [r7, #0x10]
	b _0804388A
_08043852:
	cmp r6, r2
	bge _0804385A
_08043856:
	ldrb r0, [r7, #0x18]
	b _0804385C
_0804385A:
	ldrb r0, [r7, #0x19]
_0804385C:
	adds r1, r0, #0
	mov r0, sb
	str r0, [r7]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0804388A
	strb r1, [r7, #0x14]
	ldr r0, _0804389C @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804388A
	ldrb r1, [r7, #0x14]
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #0x18
	rsbs r0, r0, #0
	lsrs r1, r0, #0x18
	adds r0, r1, #0
	subs r0, #0x40
	strb r0, [r7, #0x14]
_0804388A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804389C: .4byte gStageFlags

	thumb_func_start sa2__sub_8022D6C
sa2__sub_8022D6C: @ 0x080438A0
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080438B6
	movs r0, #0
	strb r0, [r2, #0x19]
	strb r0, [r2, #0x18]
	b _0804396A
_080438B6:
	ldr r0, _080438E4 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08043910
	movs r0, #0x14
	ldrsb r0, [r2, r0]
	adds r0, #0x40
	lsls r0, r0, #0x18
	rsbs r0, r0, #0
	asrs r0, r0, #0x18
	subs r0, #0x40
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r0, #0
	adds r1, #0x20
	cmp r1, #0
	ble _080438E8
	cmp r0, #0
	bgt _080438F0
	lsls r0, r1, #0x18
	b _080438F4
	.align 2, 0
_080438E4: .4byte gStageFlags
_080438E8:
	cmp r0, #0
	ble _080438F0
	lsls r0, r1, #0x18
	b _080438F4
_080438F0:
	adds r0, #0x1f
	lsls r0, r0, #0x18
_080438F4:
	lsrs r0, r0, #0x18
	lsrs r0, r0, #6
	cmp r0, #1
	beq _0804395C
	cmp r0, #1
	ble _0804393C
	cmp r0, #2
	beq _08043954
	cmp r0, #3
	bne _0804396A
	adds r0, r2, #0
	bl sa2__sub_8022C44
	b _0804396A
_08043910:
	movs r0, #0x14
	ldrsb r0, [r2, r0]
	adds r1, r0, #0
	adds r1, #0x20
	cmp r1, #0
	ble _08043924
	cmp r0, #0
	bgt _0804392C
	lsls r0, r1, #0x18
	b _08043930
_08043924:
	cmp r0, #0
	ble _0804392C
	lsls r0, r1, #0x18
	b _08043930
_0804392C:
	adds r0, #0x1f
	lsls r0, r0, #0x18
_08043930:
	lsrs r0, r0, #0x18
	lsrs r0, r0, #6
	cmp r0, #1
	beq _0804395C
	cmp r0, #1
	bgt _08043942
_0804393C:
	cmp r0, #0
	beq _0804394C
	b _0804396A
_08043942:
	cmp r0, #2
	beq _08043954
	cmp r0, #3
	beq _08043964
	b _0804396A
_0804394C:
	adds r0, r2, #0
	bl sa2__sub_80228C0
	b _0804396A
_08043954:
	adds r0, r2, #0
	bl sa2__sub_80229EC
	b _0804396A
_0804395C:
	adds r0, r2, #0
	bl sa2__sub_8022B18
	b _0804396A
_08043964:
	adds r0, r2, #0
	bl sa2__sub_8022C44
_0804396A:
	pop {r0}
	bx r0
	.align 2, 0

@ TODO: Not in SA2?
	thumb_func_start sub_8043970
sub_8043970: @ 0x08043970
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	movs r0, #0xc
	ldrsh r5, [r4, r0]
	ldr r1, [r4, #0x2c]
	mov r8, r1
	ldr r6, [r4, #0x30]
	ldr r0, [r4, #0x34]
	cmp r5, #0
	bgt _080439EC
	ldr r1, [r4, #0x10]
	movs r7, #1
	adds r0, r1, #0
	ands r0, r7
	cmp r0, #0
	bne _080439B4
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x16
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0xe
	bl sa2__sub_8023B5C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
_080439B4:
	ldr r0, [r4, #0x10]
	orrs r0, r7
	str r0, [r4, #0x10]
	subs r5, r5, r6
	mov r1, r8
	rsbs r0, r1, #0
	cmp r5, r0
	bge _080439CC
	adds r5, r5, r6
	cmp r5, r0
	ble _080439CC
	adds r5, r0, #0
_080439CC:
	strh r5, [r4, #0xc]
	ldr r0, [r4, #0x10]
	ldr r1, _080439E8 @ =0x00808000
	ands r0, r1
	cmp r0, #0
	bne _08043A1C
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0x16
	beq _08043A1C
	movs r0, #4
	b _08043A0A
	.align 2, 0
_080439E8: .4byte 0x00808000
_080439EC:
	subs r5, r5, r0
	cmp r5, #0
	bge _080439F6
	movs r5, #0x60
	rsbs r5, r5, #0
_080439F6:
	strh r5, [r4, #0xc]
	ldr r0, _08043A28 @ =0x000002FF
	cmp r5, r0
	ble _08043A1C
	movs r0, #0x73
	bl m4aSongNumStart
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #9
_08043A0A:
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0xe
	bl sa2__sub_8023B5C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
_08043A1C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08043A28: .4byte 0x000002FF

@ TODO: Not in SA2?
	thumb_func_start sub_8043A2C
sub_8043A2C: @ 0x08043A2C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0xc
	ldrsh r5, [r4, r0]
	ldr r6, [r4, #0x2c]
	ldr r7, [r4, #0x30]
	ldr r0, [r4, #0x34]
	cmp r5, #0
	blt _08043AA0
	ldr r1, [r4, #0x10]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08043A68
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x16
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0xe
	bl sa2__sub_8023B5C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
_08043A68:
	ldr r0, [r4, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	adds r5, r5, r7
	cmp r5, r6
	ble _08043A80
	subs r5, r5, r7
	cmp r5, r6
	bge _08043A80
	adds r5, r6, #0
_08043A80:
	strh r5, [r4, #0xc]
	ldr r0, [r4, #0x10]
	ldr r1, _08043A9C @ =0x00808000
	ands r0, r1
	cmp r0, #0
	bne _08043ACE
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0x16
	beq _08043ACE
	movs r0, #4
	b _08043ABC
	.align 2, 0
_08043A9C: .4byte 0x00808000
_08043AA0:
	adds r5, r5, r0
	cmp r5, #0
	ble _08043AA8
	movs r5, #0x60
_08043AA8:
	strh r5, [r4, #0xc]
	ldr r0, _08043AD4 @ =0xFFFFFD00
	cmp r5, r0
	bgt _08043ACE
	movs r0, #0x73
	bl m4aSongNumStart
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #9
_08043ABC:
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0xe
	bl sa2__sub_8023B5C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
_08043ACE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08043AD4: .4byte 0xFFFFFD00

	thumb_func_start sa2__sub_8022F58
sa2__sub_8022F58: @ 0x08043AD8
	push {r4, r5, r6, lr}
	sub sp, #0x14
	adds r3, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r6, #0
	strb r0, [r3, #0x19]
	strb r0, [r3, #0x18]
	adds r0, #0x20
	movs r1, #0xc0
	ands r0, r1
	asrs r4, r0, #6
	cmp r4, #1
	beq _08043B22
	cmp r4, #1
	bgt _08043AFE
	cmp r4, #0
	beq _08043B08
	b _08043B98
_08043AFE:
	cmp r4, #2
	beq _08043B58
	cmp r4, #3
	beq _08043B66
	b _08043B98
_08043B08:
	mov r4, sp
	add r2, sp, #4
	adds r0, r3, #0
	mov r1, sp
	bl sa2__sub_8029BB8
_08043B14:
	adds r3, r0, #0
	ldrb r2, [r4]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _08043B7E
	b _08043B82
_08043B22:
	mov r5, sp
	add r2, sp, #8
	adds r0, r3, #0
	mov r1, sp
	bl sa2__sub_802195C
	adds r3, r0, #0
	ldrb r2, [r5]
	ands r4, r2
	cmp r4, #0
	beq _08043B3C
	strb r6, [r5]
	b _08043B96
_08043B3C:
	ldr r0, _08043B54 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08043B96
	movs r0, #0x80
	rsbs r0, r0, #0
	subs r0, r0, r2
	strb r0, [r5]
	b _08043B96
	.align 2, 0
_08043B54: .4byte gStageFlags
_08043B58:
	mov r4, sp
	add r2, sp, #0xc
	adds r0, r3, #0
	mov r1, sp
	bl sa2__sub_8021B08
	b _08043B14
_08043B66:
	mov r4, sp
	add r2, sp, #0x10
	adds r0, r3, #0
	mov r1, sp
	bl sa2__sub_8021A34
	adds r3, r0, #0
	ldrb r2, [r4]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08043B82
_08043B7E:
	strb r6, [r4]
	b _08043B96
_08043B82:
	ldr r0, _08043BA4 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08043B96
	movs r0, #0x80
	rsbs r0, r0, #0
	subs r0, r0, r2
	strb r0, [r4]
_08043B96:
	adds r6, r3, #0
_08043B98:
	adds r0, r6, #0
	add sp, #0x14
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08043BA4: .4byte gStageFlags

	thumb_func_start sa2__sub_802302C
sa2__sub_802302C: @ 0x08043BA8
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r0, [r4]
	asrs r6, r0, #8
	ldr r0, [r4, #4]
	asrs r5, r0, #8
	strb r2, [r4, #0x19]
	lsls r0, r2, #0x18
	asrs r1, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r4, #0x18]
	adds r0, r2, #0
	adds r0, #0x20
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08043BD4
	cmp r1, #0
	bgt _08043BD8
	b _08043BDE
_08043BD4:
	cmp r1, #0
	bgt _08043BDE
_08043BD8:
	adds r0, r2, #0
	adds r0, #0x1f
	lsls r0, r0, #0x18
_08043BDE:
	lsrs r2, r0, #0x18
	lsrs r3, r2, #6
	cmp r3, #1
	beq _08043C40
	cmp r3, #1
	bgt _08043BF0
	cmp r3, #0
	beq _08043BFA
	b _08043C8C
_08043BF0:
	cmp r3, #2
	beq _08043C18
	cmp r3, #3
	beq _08043C68
	b _08043C8C
_08043BFA:
	adds r0, r5, #2
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x27
	ldrb r2, [r1]
	str r3, [sp]
	ldr r1, _08043C14 @ =sa2__sub_801EE64
	str r1, [sp, #4]
	adds r1, r6, #0
	b _08043C80
	.align 2, 0
_08043C14: .4byte sa2__sub_801EE64
_08043C18:
	subs r0, r5, #2
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x27
	ldrb r2, [r1]
	movs r3, #8
	rsbs r3, r3, #0
	movs r1, #0
	str r1, [sp]
	ldr r1, _08043C3C @ =sa2__sub_801EE64
	str r1, [sp, #4]
	adds r1, r6, #0
	bl sa2__sub_801E4E4
	b _08043C8E
	.align 2, 0
_08043C3C: .4byte sa2__sub_801EE64
_08043C40:
	subs r0, r6, #2
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x27
	ldrb r2, [r1]
	movs r3, #8
	rsbs r3, r3, #0
	movs r1, #0
	str r1, [sp]
	ldr r1, _08043C64 @ =sa2__sub_801ED24
	str r1, [sp, #4]
	adds r1, r5, #0
	bl sa2__sub_801E4E4
	b _08043C8E
	.align 2, 0
_08043C64: .4byte sa2__sub_801ED24
_08043C68:
	adds r0, r6, #2
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x27
	ldrb r2, [r1]
	movs r1, #0
	str r1, [sp]
	ldr r1, _08043C88 @ =sa2__sub_801ED24
	str r1, [sp, #4]
	adds r1, r5, #0
_08043C80:
	movs r3, #8
	bl sa2__sub_801E4E4
	b _08043C8E
	.align 2, 0
_08043C88: .4byte sa2__sub_801ED24
_08043C8C:
	movs r0, #0
_08043C8E:
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sa2__sub_8023128
sa2__sub_8023128: @ 0x08043C98
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0xc
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _08043D3A
	movs r1, #0x40
	cmp r0, #0
	blt _08043CAC
	movs r1, #0xc0
_08043CAC:
	ldrb r0, [r5, #0x14]
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r4, #0
	adds r1, r5, #0
	bl sa2__sub_802302C
	lsls r2, r0, #8
	cmp r2, #0
	bgt _08043D3A
	adds r0, r4, #0
	adds r0, #0x20
	movs r1, #0xc0
	ands r0, r1
	asrs r1, r0, #6
	cmp r1, #1
	beq _08043CEE
	cmp r1, #1
	bgt _08043CDA
	cmp r1, #0
	beq _08043CE4
	b _08043D2E
_08043CDA:
	cmp r1, #2
	beq _08043CF4
	cmp r1, #3
	beq _08043D06
	b _08043D2E
_08043CE4:
	ldr r0, [r5, #4]
	adds r0, r0, r2
	str r0, [r5, #4]
	strh r1, [r5, #0xa]
	b _08043D2E
_08043CEE:
	ldr r0, [r5]
	subs r0, r0, r2
	b _08043D0A
_08043CF4:
	ldr r0, [r5, #4]
	subs r0, r0, r2
	str r0, [r5, #4]
	movs r0, #0
	strh r0, [r5, #0xa]
	ldr r0, [r5, #0x10]
	orrs r0, r1
	str r0, [r5, #0x10]
	b _08043D2E
_08043D06:
	ldr r0, [r5]
	adds r0, r0, r2
_08043D0A:
	str r0, [r5]
	movs r4, #0
	strh r4, [r5, #8]
	ldr r0, [r5, #0x10]
	movs r1, #0x20
	orrs r0, r1
	subs r1, #0x25
	ands r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0
	movs r1, #0xe
	bl sa2__sub_8023B5C
	movs r0, #6
	strb r0, [r5, #0xe]
	movs r0, #0xe
	strb r0, [r5, #0xf]
	strh r4, [r5, #0xc]
_08043D2E:
	adds r0, r5, #0
	adds r0, #0x3e
	movs r1, #0
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
_08043D3A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sa2__sub_80231C0
sa2__sub_80231C0: @ 0x08043D40
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0xc
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _08043DD4
	movs r1, #0x40
	cmp r0, #0
	blt _08043D54
	movs r1, #0xc0
_08043D54:
	ldrb r0, [r5, #0x14]
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r4, #0
	adds r1, r5, #0
	bl sa2__sub_802302C
	lsls r2, r0, #8
	cmp r2, #0
	bgt _08043DD4
	adds r0, r4, #0
	adds r0, #0x20
	movs r1, #0xc0
	ands r0, r1
	asrs r1, r0, #6
	cmp r1, #1
	beq _08043D96
	cmp r1, #1
	bgt _08043D82
	cmp r1, #0
	beq _08043D8C
	b _08043DD4
_08043D82:
	cmp r1, #2
	beq _08043D9C
	cmp r1, #3
	beq _08043DAE
	b _08043DD4
_08043D8C:
	ldr r0, [r5, #4]
	adds r0, r0, r2
	str r0, [r5, #4]
	strh r1, [r5, #0xa]
	b _08043DD4
_08043D96:
	ldr r0, [r5]
	subs r0, r0, r2
	b _08043DB2
_08043D9C:
	ldr r0, [r5, #4]
	subs r0, r0, r2
	str r0, [r5, #4]
	movs r0, #0
	strh r0, [r5, #0xa]
	ldr r0, [r5, #0x10]
	orrs r0, r1
	str r0, [r5, #0x10]
	b _08043DD4
_08043DAE:
	ldr r0, [r5]
	adds r0, r0, r2
_08043DB2:
	str r0, [r5]
	movs r4, #0
	strh r4, [r5, #8]
	ldr r0, [r5, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0
	movs r1, #0xe
	bl sa2__sub_8023B5C
	movs r0, #6
	strb r0, [r5, #0xe]
	movs r0, #0xe
	strb r0, [r5, #0xf]
	strh r4, [r5, #0xc]
_08043DD4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8043DDC
sub_8043DDC: @ 0x08043DDC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08043E32
	ldrh r0, [r4, #0x38]
	movs r1, #0x30
	ands r1, r0
	cmp r1, #0x10
	beq _08043E14
	cmp r1, #0x20
	bne _08043E32
	movs r2, #0xc
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bgt _08043E08
	ldr r0, [r4, #0x10]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0x10]
	b _08043E32
_08043E08:
	subs r0, #0x18
	cmp r0, #0
	bge _08043E30
	movs r0, #0x60
	rsbs r0, r0, #0
	b _08043E30
_08043E14:
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _08043E28
	ldr r0, [r4, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _08043E32
_08043E28:
	adds r0, #0x18
	cmp r0, #0
	ble _08043E30
	movs r0, #0x60
_08043E30:
	strh r0, [r4, #0xc]
_08043E32:
	ldr r0, [r4, #0x30]
	asrs r0, r0, #1
	movs r2, #0xc
	ldrsh r1, [r4, r2]
	cmp r1, #0
	bge _08043E46
	adds r1, r1, r0
	cmp r1, #0
	ble _08043E52
	b _08043E50
_08043E46:
	cmp r1, #0
	ble _08043E54
	subs r1, r1, r0
	cmp r1, #0
	bge _08043E52
_08043E50:
	movs r1, #0
_08043E52:
	strh r1, [r4, #0xc]
_08043E54:
	cmp r1, #0
	bne _08043EAE
	ldr r2, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r2
	cmp r0, #0
	bne _08043E98
	movs r0, #5
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r4, #0x10]
	ldrh r1, [r4, #0x38]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08043E7E
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #2
	b _08043E84
_08043E7E:
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #4
_08043E84:
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0xe
	bl sa2__sub_8023B5C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
	b _08043EAE
_08043E98:
	movs r1, #0xc0
	lsls r1, r1, #2
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	beq _08043EA6
	rsbs r1, r1, #0
_08043EA6:
	strh r1, [r4, #0xc]
	movs r0, #0x6d
	bl m4aSongNumStart
_08043EAE:
	adds r0, r4, #0
	bl Player_80470AC
	adds r0, r4, #0
	bl sa2__sub_8023128
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start Player_8043EC0
Player_8043EC0: @ 0x08043EC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	ldr r5, _08043FD0 @ =gCamera
	ldr r7, [r4]
	ldr r6, [r4, #4]
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov sb, r5
	cmp r0, #0
	bne _08043F9C
	ldr r1, _08043FD4 @ =gUnknown_084ADF78
	ldr r2, _08043FD8 @ =gCurrentLevel
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	mov sl, r0
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov ip, r1
	mov r8, r2
	cmp r0, #0
	blt _08043F3E
	lsls r0, r0, #8
	cmp r7, r0
	blt _08043F3E
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _08043F3E
	ldrh r1, [r5, #0x26]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08043F3E
	ldr r0, _08043FDC @ =gUnknown_084ADFC0
	add r0, sl
	movs r2, #0
	ldrsh r3, [r0, r2]
	lsls r2, r3, #8
	adds r7, r7, r2
	ldr r0, _08043FE0 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08043F32
	ldr r1, _08043FE4 @ =gPartner
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
_08043F32:
	ldrh r0, [r5]
	adds r0, r0, r3
	strh r0, [r5]
	ldrh r0, [r5, #0x10]
	adds r0, r0, r3
	strh r0, [r5, #0x10]
_08043F3E:
	mov r3, r8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r2, r0, #2
	mov r0, ip
	adds r0, #2
	adds r0, r2, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	blt _08043F9C
	lsls r0, r0, #8
	cmp r6, r0
	blt _08043F9C
	movs r3, #6
	ldrsh r0, [r5, r3]
	cmp r0, #0
	beq _08043F9C
	ldrh r1, [r5, #0x26]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08043F9C
	ldr r0, _08043FDC @ =gUnknown_084ADFC0
	adds r0, #2
	adds r0, r2, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r3, r0, #8
	lsls r2, r0, #0x10
	adds r6, r6, r2
	ldr r0, _08043FE0 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08043F90
	ldr r1, _08043FE4 @ =gPartner
	ldr r0, [r1, #4]
	adds r0, r0, r2
	str r0, [r1, #4]
_08043F90:
	ldrh r0, [r5, #2]
	adds r0, r0, r3
	strh r0, [r5, #2]
	ldrh r0, [r5, #0x12]
	adds r0, r0, r3
	strh r0, [r5, #0x12]
_08043F9C:
	ldr r1, [r4, #0x10]
	ldr r0, _08043FE8 @ =0x80000080
	ands r0, r1
	mov ip, r1
	cmp r0, #0x80
	beq _08044096
	mov r8, sb
	ldr r3, [r4, #4]
	cmp r1, #0
	blt _08044042
	ldr r2, _08043FEC @ =gStageFlags
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	mov sl, r2
	cmp r0, #0
	bne _08043FF0
	mov r2, r8
	movs r1, #0x16
	ldrsh r0, [r2, r1]
	lsls r0, r0, #8
	subs r0, #1
	cmp r3, r0
	blt _08043FFE
	b _08044004
	.align 2, 0
_08043FD0: .4byte gCamera
_08043FD4: .4byte gUnknown_084ADF78
_08043FD8: .4byte gCurrentLevel
_08043FDC: .4byte gUnknown_084ADFC0
_08043FE0: .4byte gNumSingleplayerCharacters
_08043FE4: .4byte gPartner
_08043FE8: .4byte 0x80000080
_08043FEC: .4byte gStageFlags
_08043FF0:
	mov r2, sb
	movs r1, #0x14
	ldrsh r0, [r2, r1]
	lsls r0, r0, #8
	movs r1, #1
	cmp r3, r0
	ble _08044000
_08043FFE:
	movs r1, #0
_08044000:
	cmp r1, #0
	beq _08044042
_08044004:
	movs r0, #0x80
	mov r2, ip
	orrs r0, r2
	str r0, [r4, #0x10]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0804401C
	ldr r0, _08044018 @ =0x0000FD60
	b _0804401E
	.align 2, 0
_08044018: .4byte 0x0000FD60
_0804401C:
	ldr r0, _08044038 @ =0x0000FB20
_0804401E:
	strh r0, [r4, #0xa]
	mov r3, sl
	ldrh r1, [r3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0804403C
	movs r1, #0x16
	ldrsh r0, [r5, r1]
	lsls r0, r0, #8
	subs r6, r0, #1
	b _08044042
	.align 2, 0
_08044038: .4byte 0x0000FB20
_0804403C:
	movs r2, #0x14
	ldrsh r0, [r5, r2]
	lsls r6, r0, #8
_08044042:
	adds r2, r7, #0
	adds r3, r6, #0
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	lsls r0, r0, #8
	cmp r7, r0
	blt _08044060
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	lsls r0, r0, #8
	subs r1, r0, #1
	adds r0, r7, #0
	cmp r0, r1
	ble _08044060
	adds r0, r1, #0
_08044060:
	adds r7, r0, #0
	movs r1, #0x14
	ldrsh r0, [r5, r1]
	lsls r0, r0, #8
	cmp r6, r0
	blt _0804407C
	movs r1, #0x16
	ldrsh r0, [r5, r1]
	lsls r0, r0, #8
	subs r1, r0, #1
	adds r0, r6, #0
	cmp r0, r1
	ble _0804407C
	adds r0, r1, #0
_0804407C:
	adds r6, r0, #0
	cmp r7, r2
	beq _08044088
	movs r0, #0
	strh r0, [r4, #8]
	strh r0, [r4, #0xc]
_08044088:
	cmp r6, r3
	beq _08044092
	movs r0, #0
	strh r0, [r4, #0xa]
	strh r0, [r4, #0xc]
_08044092:
	str r7, [r4]
	str r6, [r4, #4]
_08044096:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80440A4
sub_80440A4: @ 0x080440A4
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r2, [r6, #0x10]
	movs r5, #0x80
	lsls r5, r5, #3
	adds r0, r2, #0
	ands r0, r5
	cmp r0, #0
	bne _08044100
	adds r2, r6, #0
	adds r2, #0x40
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #2
	bne _080440CE
	ldr r0, _080440D4 @ =gUnknown_030060E0
	ldrh r1, [r6, #0x3a]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _080440D8
_080440CE:
	movs r0, #0
	b _08044232
	.align 2, 0
_080440D4: .4byte gUnknown_030060E0
_080440D8:
	movs r4, #6
	strb r4, [r2]
	movs r0, #0x6d
	bl m4aSongNumStart
	bl CreateSpindashDustEffect
	ldr r0, [r6, #0x10]
	orrs r0, r5
	str r0, [r6, #0x10]
	movs r0, #0
	strh r0, [r6, #0x16]
	adds r0, r6, #0
	movs r1, #9
	bl sa2__sub_8023B5C
	strb r4, [r6, #0xe]
	movs r0, #9
	strb r0, [r6, #0xf]
	b _08044224
_08044100:
	ldrh r1, [r6, #0x38]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08044178
	ldr r0, _08044120 @ =0xFFFFFBFF
	ands r0, r2
	str r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _08044128
	ldr r1, _08044124 @ =gUnknown_084AE188
	b _0804412A
	.align 2, 0
_08044120: .4byte 0xFFFFFBFF
_08044124: .4byte gUnknown_084AE188
_08044128:
	ldr r1, _08044170 @ =gUnknown_084AE19A
_0804412A:
	ldrh r0, [r6, #0x16]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r2, [r0, r1]
	adds r0, r6, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0804414C
	ldr r1, _08044174 @ =gCamera
	movs r0, #0xa
	strh r0, [r1, #0x1c]
_0804414C:
	ldr r1, [r6, #0x10]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08044158
	rsbs r2, r2, #0
_08044158:
	strh r2, [r6, #0xc]
	movs r0, #4
	orrs r1, r0
	str r1, [r6, #0x10]
	movs r0, #0x6e
	bl m4aSongNumStart
	adds r1, r6, #0
	adds r1, #0x40
	movs r0, #5
	strb r0, [r1]
	b _08044218
	.align 2, 0
_08044170: .4byte gUnknown_084AE19A
_08044174: .4byte gCamera
_08044178:
	ldrh r5, [r6, #0x16]
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08044190
	asrs r0, r0, #0x15
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r0, #0
	bgt _08044190
	movs r5, #0
_08044190:
	adds r7, r6, #0
	adds r7, #0x40
	movs r0, #0
	ldrsb r0, [r7, r0]
	cmp r0, #7
	beq _080441A0
	movs r0, #6
	strb r0, [r7]
_080441A0:
	ldr r0, _08044238 @ =gUnknown_030060E0
	ldrh r1, [r6, #0x3a]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _08044216
	movs r0, #0x6d
	bl m4aSongNumStart
	ldr r2, _0804423C @ =gMPlayTable
	ldr r0, _08044240 @ =gSongTable
	movs r1, #0xdb
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r4, [r0]
	adds r0, r4, #0
	bl m4aMPlayImmInit
	ldr r1, _08044244 @ =0x0000FFFF
	lsls r5, r5, #0x10
	ldr r2, _08044248 @ =0xFF800000
	ands r2, r5
	asrs r2, r2, #0x10
	adds r0, r4, #0
	bl m4aMPlayPitchControl
	ldr r0, _0804424C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _080441FC
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080441F8
	cmp r0, #2
	bne _080441FC
_080441F8:
	movs r0, #7
	strb r0, [r7]
_080441FC:
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r5, r1
	lsrs r5, r0, #0x10
	adds r2, r5, #0
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #4
	cmp r0, r1
	bge _08044214
	adds r2, r1, #0
_08044214:
	adds r5, r2, #0
_08044216:
	strh r5, [r6, #0x16]
_08044218:
	adds r0, r6, #0
	bl Player_804726C
	adds r0, r6, #0
	bl Player_8047280
_08044224:
	adds r0, r6, #0
	bl Player_8043EC0
	adds r0, r6, #0
	bl sa2__sub_8022D6C
	movs r0, #1
_08044232:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08044238: .4byte gUnknown_030060E0
_0804423C: .4byte gMPlayTable
_08044240: .4byte gSongTable
_08044244: .4byte 0x0000FFFF
_08044248: .4byte 0xFF800000
_0804424C: .4byte gGameMode

	thumb_func_start sub_8044250
sub_8044250: @ 0x08044250
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0x14]
	movs r5, #0
	ldr r0, _0804429C @ =gUnknown_030060E0
	ldrh r1, [r4, #0x3a]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _08044296
	ldr r0, _080442A0 @ =gStageFlags
	ldrh r1, [r0]
	movs r6, #0x80
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08044284
	adds r0, r2, #0
	adds r0, #0x40
	lsls r0, r0, #0x18
	rsbs r0, r0, #0
	lsrs r2, r0, #0x18
	adds r0, r2, #0
	subs r0, #0x40
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_08044284:
	adds r0, r2, #0
	adds r0, #0x80
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r4, #0
	bl sa2__sub_8022F58
	cmp r0, #3
	bgt _080442A4
_08044296:
	movs r0, #0
	b _0804442C
	.align 2, 0
_0804429C: .4byte gUnknown_030060E0
_080442A0: .4byte gStageFlags
_080442A4:
	ldr r0, [r4, #0x10]
	movs r2, #2
	orrs r0, r2
	ldr r1, _080442D4 @ =0xFEFFFFDF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	ldr r1, _080442D8 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x59
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r7, r0, #0
	ldr r3, _080442DC @ =gSineTable
	cmp r1, #0
	blt _080443BA
	cmp r1, #2
	ble _080442E0
	cmp r1, #3
	beq _080442E8
	b _080443BA
	.align 2, 0
_080442D4: .4byte 0xFEFFFFDF
_080442D8: .4byte 0xFFFFF7FF
_080442DC: .4byte gSineTable
_080442E0:
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #5
	b _080442F8
_080442E8:
	ldrh r1, [r4, #0x38]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _0804430E
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x55
_080442F8:
	strb r0, [r1]
	ldr r1, [r4, #0x10]
	movs r0, #0x40
	ands r1, r0
	movs r5, #0x9c
	lsls r5, r5, #3
	cmp r1, #0
	beq _080443BA
	movs r5, #0xa8
	lsls r5, r5, #2
	b _080443BA
_0804430E:
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x5b
	strb r0, [r1]
	ldr r0, [r4, #0x10]
	ldr r1, _08044340 @ =0xFDFFFFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x13
	orrs r0, r1
	ldr r1, _08044344 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x80
	strb r2, [r0]
	ldr r0, [r4, #0x10]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08044348
	movs r2, #0xa0
	lsls r2, r2, #2
	movs r5, #0xc0
	b _08044350
	.align 2, 0
_08044340: .4byte 0xFDFFFFFF
_08044344: .4byte 0xFFFFFEFF
_08044348:
	movs r2, #0x80
	lsls r2, r2, #3
	movs r5, #0xa0
	lsls r5, r5, #1
_08044350:
	ldr r0, [r4, #0x10]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0804438C
	ldr r1, _08044388 @ =gSineTable
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #3
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r2, r0
	rsbs r0, r0, #0
	asrs r0, r0, #8
	strh r0, [r4, #8]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r2, r0
	rsbs r0, r0, #0
	b _080443B4
	.align 2, 0
_08044388: .4byte gSineTable
_0804438C:
	ldr r1, _08044420 @ =gSineTable
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #3
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r2, r0
	asrs r0, r0, #8
	strh r0, [r4, #8]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r2, r0
_080443B4:
	asrs r0, r0, #8
	strh r0, [r4, #0xa]
	adds r3, r1, #0
_080443BA:
	ldrb r0, [r4, #0x14]
	subs r0, #0x40
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r0, r2, #3
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r5, r0
	asrs r0, r0, #8
	ldrh r1, [r4, #8]
	adds r0, r0, r1
	strh r0, [r4, #8]
	lsls r0, r2, #3
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r5, r0
	asrs r0, r0, #8
	ldrh r3, [r4, #0xa]
	adds r0, r0, r3
	strh r0, [r4, #0xa]
	movs r0, #0x74
	bl m4aSongNumStart
	movs r0, #0
	ldrsb r0, [r7, r0]
	cmp r0, #3
	beq _0804442A
	ldr r1, [r4, #0x10]
	movs r2, #4
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _08044424
	orrs r1, r2
	str r1, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #9
	bl sa2__sub_8023B5C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #9
	strb r0, [r4, #0xf]
	b _0804442A
	.align 2, 0
_08044420: .4byte gSineTable
_08044424:
	movs r0, #0x10
	orrs r1, r0
	str r1, [r4, #0x10]
_0804442A:
	movs r0, #1
_0804442C:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8044434
sub_8044434: @ 0x08044434
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0x14]
	ldr r0, _0804444C @ =gUnknown_030060E0
	ldrh r1, [r4, #0x3a]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _08044450
	movs r0, #0
	b _08044598
	.align 2, 0
_0804444C: .4byte gUnknown_030060E0
_08044450:
	ldr r0, _08044498 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804446E
	adds r0, r2, #0
	adds r0, #0x40
	lsls r0, r0, #0x18
	rsbs r0, r0, #0
	lsrs r2, r0, #0x18
	adds r0, r2, #0
	subs r0, #0x40
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_0804446E:
	adds r5, r4, #0
	adds r5, #0x27
	ldrb r0, [r5]
	movs r6, #1
	eors r0, r6
	strb r0, [r5]
	adds r0, r2, #0
	adds r0, #0x80
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r4, #0
	bl sa2__sub_8022F58
	cmp r0, #3
	bgt _0804449C
	ldrb r0, [r5]
	eors r0, r6
	strb r0, [r5]
	movs r0, #0
	b _08044598
	.align 2, 0
_08044498: .4byte gStageFlags
_0804449C:
	ldr r0, _080444B4 @ =gPlayer
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	bne _080444B8
	movs r0, #0x86
	bl m4aSongNumStop
	b _080444BE
	.align 2, 0
_080444B4: .4byte gPlayer
_080444B8:
	movs r0, #0x72
	bl m4aSongNumStop
_080444BE:
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	ldr r1, _080444F8 @ =0xFEFFFFDF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	ldr r1, _080444FC @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r1, _08044500 @ =gPlayer
	adds r1, #0x26
	ldrb r2, [r1]
	movs r0, #0x7f
	ands r0, r2
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x59
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r5, r0, #0
	cmp r1, #0
	blt _08044514
	cmp r1, #2
	ble _08044504
	cmp r1, #3
	beq _0804450C
	b _08044514
	.align 2, 0
_080444F8: .4byte 0xFEFFFFDF
_080444FC: .4byte 0xFFFFF7FF
_08044500: .4byte gPlayer
_08044504:
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #5
	b _08044512
_0804450C:
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x55
_08044512:
	strb r0, [r1]
_08044514:
	ldr r0, [r4, #0x10]
	movs r1, #0x40
	ands r0, r1
	movs r2, #0x9c
	lsls r2, r2, #3
	cmp r0, #0
	beq _08044526
	movs r2, #0xa8
	lsls r2, r2, #2
_08044526:
	ldrb r0, [r4, #0x14]
	subs r0, #0x40
	lsls r0, r0, #0x18
	ldr r1, _08044588 @ =gSineTable
	lsrs r0, r0, #0x15
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r2, r0
	asrs r0, r0, #8
	strh r0, [r4, #0xa]
	movs r0, #0x74
	bl m4aSongNumStart
	ldr r1, [r4, #0x64]
	ldr r0, [r1, #0x1c]
	ldr r3, _0804458C @ =0xFFFFCFFF
	ands r0, r3
	movs r2, #0x80
	lsls r2, r2, #6
	orrs r0, r2
	str r0, [r1, #0x1c]
	ldr r1, [r4, #0x68]
	ldr r0, [r1, #0x1c]
	ands r0, r3
	orrs r0, r2
	str r0, [r1, #0x1c]
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #3
	beq _08044596
	ldr r1, [r4, #0x10]
	movs r2, #4
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _08044590
	orrs r1, r2
	str r1, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #9
	bl sa2__sub_8023B5C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #9
	strb r0, [r4, #0xf]
	b _08044596
	.align 2, 0
_08044588: .4byte gSineTable
_0804458C: .4byte 0xFFFFCFFF
_08044590:
	movs r0, #0x10
	orrs r1, r0
	str r1, [r4, #0x10]
_08044596:
	movs r0, #1
_08044598:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Player_80445A0
Player_80445A0: @ 0x080445A0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x30]
	lsls r6, r0, #1
	ldr r7, [r4, #0x2c]
	adds r0, r4, #0
	adds r0, #0x40
	movs r5, #0
	ldrsb r5, [r0, r5]
	cmp r5, #0xf
	beq _0804466A
	ldr r1, [r4, #0x10]
	movs r0, #0x10
	mov ip, r0
	adds r0, r1, #0
	mov r2, ip
	ands r0, r2
	cmp r0, #0
	bne _08044634
	ldrh r2, [r4, #8]
	ldrh r3, [r4, #0x38]
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	beq _080445FE
	cmp r5, #0x17
	beq _080445DC
	movs r0, #1
	orrs r1, r0
	str r1, [r4, #0x10]
_080445DC:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	rsbs r1, r7, #0
	cmp r0, r1
	bge _08044632
	adds r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	ble _08044632
	lsls r0, r1, #0x10
	b _08044630
_080445FE:
	mov r0, ip
	ands r0, r3
	cmp r0, #0
	beq _08044632
	cmp r5, #0x17
	beq _08044612
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #0x10]
_08044612:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r7
	ble _08044632
	subs r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r7
	bge _08044632
	lsls r0, r7, #0x10
_08044630:
	lsrs r2, r0, #0x10
_08044632:
	strh r2, [r4, #8]
_08044634:
	ldrh r1, [r4, #0xa]
	ldr r0, _08044654 @ =0x0000BCFF
	cmp r1, r0
	bls _0804466A
	ldrh r1, [r4, #8]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	asrs r0, r0, #0x15
	cmp r0, #0
	bge _08044658
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	ble _08044668
	b _08044666
	.align 2, 0
_08044654: .4byte 0x0000BCFF
_08044658:
	cmp r0, #0
	ble _0804466A
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	bge _08044668
_08044666:
	movs r1, #0
_08044668:
	strh r1, [r4, #8]
_0804466A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start Player_8044670
Player_8044670: @ 0x08044670
	push {r4, lr}
	adds r3, r0, #0
	ldr r2, [r3, #0x10]
	movs r0, #0x40
	ands r0, r2
	ldr r4, _080446AC @ =0x0000FE80
	cmp r0, #0
	bne _08044684
	movs r4, #0xfd
	lsls r4, r4, #8
_08044684:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0804472E
	movs r0, #0xa
	ldrsh r1, [r3, r0]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _080446B4
	ldr r0, _080446B0 @ =gUnknown_030060E0
	ldrh r1, [r3, #0x38]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _08044744
	strh r4, [r3, #0xa]
	b _08044744
	.align 2, 0
_080446AC: .4byte 0x0000FE80
_080446B0: .4byte gUnknown_030060E0
_080446B4:
	ldr r0, _08044708 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _08044744
	adds r4, r3, #0
	adds r4, #0x3d
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _08044744
	ldr r0, _0804470C @ =gUnknown_030060E0
	ldrh r1, [r3, #0x3a]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _08044744
	adds r0, r3, #0
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xf
	beq _08044744
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r3, #0x10]
	movs r0, #1
	strb r0, [r4]
	adds r0, r3, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _0804471E
	cmp r0, #1
	bgt _08044710
	cmp r0, #0
	beq _08044716
	b _08044744
	.align 2, 0
_08044708: .4byte gGameMode
_0804470C: .4byte gUnknown_030060E0
_08044710:
	cmp r0, #2
	beq _08044726
	b _08044744
_08044716:
	adds r0, r3, #0
	bl sub_80478E0
	b _08044744
_0804471E:
	adds r0, r3, #0
	bl sub_8048024
	b _08044744
_08044726:
	adds r0, r3, #0
	bl sub_8048148
	b _08044744
_0804472E:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r2, r0
	cmp r2, #0
	bne _08044744
	movs r1, #0xa
	ldrsh r0, [r3, r1]
	ldr r1, _0804474C @ =0xFFFFF430
	cmp r0, r1
	bge _08044744
	strh r1, [r3, #0xa]
_08044744:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804474C: .4byte 0xFFFFF430

	thumb_func_start sub_8044750
sub_8044750: @ 0x08044750
	adds r1, r0, #0
	ldr r2, _08044798 @ =gCamera
	ldrb r0, [r1, #0x15]
	cmp r0, #0
	beq _08044764
	subs r0, #1
	strb r0, [r1, #0x15]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080447B2
_08044764:
	adds r0, r1, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080447D6
	ldr r0, _0804479C @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080447A0
	movs r1, #0x22
	ldrsh r0, [r2, r1]
	movs r3, #0xe
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	movs r1, #0x48
	rsbs r1, r1, #0
	cmp r0, r1
	ble _080447D6
	ldrh r0, [r2, #0x22]
	subs r0, #2
	b _080447D4
	.align 2, 0
_08044798: .4byte gCamera
_0804479C: .4byte gStageFlags
_080447A0:
	movs r1, #0x22
	ldrsh r0, [r2, r1]
	movs r3, #0xe
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	cmp r0, #0x47
	bgt _080447D6
	ldrh r0, [r2, #0x22]
	b _080447D2
_080447B2:
	adds r0, r1, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080447D6
	ldrh r0, [r2, #0x22]
	movs r3, #0x22
	ldrsh r1, [r2, r3]
	cmp r1, #0
	ble _080447CE
	subs r0, #2
	b _080447D4
_080447CE:
	cmp r1, #0
	bge _080447D6
_080447D2:
	adds r0, #2
_080447D4:
	strh r0, [r2, #0x22]
_080447D6:
	bx lr

	thumb_func_start sub_80447D8
sub_80447D8: @ 0x080447D8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, _0804482C @ =gCamera
	adds r6, r4, #0
	adds r6, #0x40
	movs r0, #2
	strb r0, [r6]
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08044868
	ldrb r0, [r4, #0x15]
	cmp r0, #0
	beq _080447FE
	subs r0, #1
	strb r0, [r4, #0x15]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804484C
_080447FE:
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080448CA
	ldr r0, _08044830 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08044834
	movs r2, #0x22
	ldrsh r0, [r5, r2]
	movs r3, #0xe
	ldrsh r1, [r5, r3]
	adds r0, r0, r1
	cmp r0, #0x3b
	bgt _080448CA
	ldrh r0, [r5, #0x22]
	b _080448C6
	.align 2, 0
_0804482C: .4byte gCamera
_08044830: .4byte gStageFlags
_08044834:
	movs r1, #0x22
	ldrsh r0, [r5, r1]
	movs r2, #0xe
	ldrsh r1, [r5, r2]
	adds r0, r0, r1
	movs r1, #0x3c
	rsbs r1, r1, #0
	cmp r0, r1
	ble _080448CA
	ldrh r0, [r5, #0x22]
	subs r0, #2
	b _080448C8
_0804484C:
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080448CA
	ldrh r0, [r5, #0x22]
	movs r3, #0x22
	ldrsh r1, [r5, r3]
	cmp r1, #0
	ble _080448C2
	subs r0, #2
	b _080448C8
_08044868:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	beq _080448CA
	movs r0, #0x6d
	bl m4aSongNumStart
	ldr r0, [r4, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #9
	bl sa2__sub_8023B5C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #9
	strb r0, [r4, #0xf]
	movs r0, #5
	strb r0, [r6]
	adds r1, r4, #0
	adds r1, #0x3c
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _080448CA
	movs r0, #0x78
	strb r0, [r4, #0x15]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _080448CA
	adds r2, r5, #0
	ldrh r0, [r2, #0x22]
	movs r3, #0x22
	ldrsh r1, [r2, r3]
	cmp r1, #0
	ble _080448C2
	subs r0, #2
	strh r0, [r2, #0x22]
	b _080448CA
_080448C2:
	cmp r1, #0
	bge _080448CA
_080448C6:
	adds r0, #2
_080448C8:
	strh r0, [r5, #0x22]
_080448CA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_80448D0
sub_80448D0: @ 0x080448D0
	push {r4, lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x40
	ldrb r0, [r3]
	subs r0, #0xc
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08044910
	adds r1, r2, #0
	adds r1, #0x3c
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _080449D0
	movs r0, #0x78
	strb r0, [r2, #0x15]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _080449D0
	ldr r2, _0804490C @ =gCamera
	ldrh r0, [r2, #0x22]
	movs r3, #0x22
	ldrsh r1, [r2, r3]
	cmp r1, #0
	bgt _080449B4
	b _080449C0
	.align 2, 0
_0804490C: .4byte gCamera
_08044910:
	ldrh r0, [r2, #0x38]
	movs r1, #0xc0
	ands r1, r0
	cmp r1, #0x40
	beq _0804497C
	cmp r1, #0x40
	bgt _08044924
	cmp r1, #0
	beq _0804492A
	b _080449D0
_08044924:
	cmp r1, #0x80
	beq _080449CA
	b _080449D0
_0804492A:
	adds r1, r2, #0
	adds r1, #0x3c
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08044960
	movs r0, #0x78
	strb r0, [r2, #0x15]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08044960
	ldr r3, _08044954 @ =gCamera
	ldrh r0, [r3, #0x22]
	movs r4, #0x22
	ldrsh r1, [r3, r4]
	cmp r1, #0
	ble _08044958
	subs r0, #2
	b _0804495E
	.align 2, 0
_08044954: .4byte gCamera
_08044958:
	cmp r1, #0
	bge _08044960
	adds r0, #2
_0804495E:
	strh r0, [r3, #0x22]
_08044960:
	adds r1, r2, #0
	adds r1, #0x40
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #2
	bne _08044972
	movs r0, #3
	strb r0, [r1]
	b _080449D0
_08044972:
	cmp r0, #0xa
	bne _080449D0
	movs r0, #0xb
	strb r0, [r1]
	b _080449D0
_0804497C:
	movs r1, #0xc
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bne _08044990
	movs r0, #0xa
	strb r0, [r3]
	adds r0, r2, #0
	bl sub_8044750
	b _080449D0
_08044990:
	adds r1, r2, #0
	adds r1, #0x3c
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _080449D0
	movs r0, #0x78
	strb r0, [r2, #0x15]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _080449D0
	ldr r2, _080449BC @ =gCamera
	ldrh r0, [r2, #0x22]
	movs r3, #0x22
	ldrsh r1, [r2, r3]
	cmp r1, #0
	ble _080449C0
_080449B4:
	subs r0, #2
	strh r0, [r2, #0x22]
	b _080449D0
	.align 2, 0
_080449BC: .4byte gCamera
_080449C0:
	cmp r1, #0
	bge _080449D0
	adds r0, #2
	strh r0, [r2, #0x22]
	b _080449D0
_080449CA:
	adds r0, r2, #0
	bl sub_80447D8
_080449D0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80449D8
sub_80449D8: @ 0x080449D8
	push {r4, r5, lr}
	adds r3, r0, #0
	ldrh r1, [r3, #0x38]
	movs r0, #0x90
	ands r0, r1
	ldr r4, _08044A68 @ =gSineTable
	cmp r0, #0
	beq _08044A0C
	ldrb r2, [r3, #0x14]
	adds r0, r2, #0
	adds r0, #0x60
	movs r1, #0xff
	ands r0, r1
	cmp r0, #0xbf
	bgt _08044A0C
	lsls r0, r2, #3
	adds r0, r0, r4
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r0, r1, #2
	adds r0, r0, r1
	asrs r0, r0, #5
	ldrh r1, [r3, #0xc]
	adds r0, r0, r1
	strh r0, [r3, #0xc]
_08044A0C:
	movs r5, #0xc
	ldrsh r2, [r3, r5]
	ldrh r1, [r3, #0x38]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08044A22
	subs r2, #8
	cmp r2, #0xc0
	bge _08044A22
	movs r2, #0xc0
_08044A22:
	subs r2, #8
	cmp r2, #0xc0
	bge _08044A2A
	movs r2, #0xc0
_08044A2A:
	strh r2, [r3, #0xc]
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #0x10
	strb r0, [r1]
	movs r0, #0xc
	ldrsh r2, [r3, r0]
	ldrb r1, [r3, #0x14]
	lsls r0, r1, #3
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r0, r5
	adds r0, r0, r4
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r2, r0
	asrs r0, r0, #8
	strh r0, [r3, #8]
	lsls r1, r1, #3
	adds r1, r1, r4
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r2, r0
	asrs r0, r0, #8
	strh r0, [r3, #0xa]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08044A68: .4byte gSineTable

	thumb_func_start sa2__sub_8023878
sa2__sub_8023878: @ 0x08044A6C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0x10]
	ldr r0, _08044B18 @ =0xFFFFEFFF
	ands r2, r0
	str r2, [r4, #0x10]
	ldr r0, _08044B1C @ =gWater
	movs r3, #2
	ldrsh r1, [r0, r3]
	adds r3, r0, #0
	cmp r1, #0
	bge _08044A86
	b _08044C78
_08044A86:
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	subs r0, #4
	movs r5, #2
	ldrsh r1, [r3, r5]
	cmp r0, r1
	bge _08044A96
	b _08044C78
_08044A96:
	movs r1, #0x40
	adds r0, r2, #0
	ands r0, r1
	adds r5, r4, #0
	adds r5, #0x5c
	cmp r0, #0
	bne _08044AFE
	orrs r2, r1
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r2, r0
	str r2, [r4, #0x10]
	ldrh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r4, #8]
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r4, #0xa]
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08044ADA
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #9
	beq _08044AFE
_08044ADA:
	adds r0, r4, #0
	adds r0, #0x5c
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r5, r0, #0
	cmp r1, #0
	bgt _08044AFE
	movs r0, #0xa
	strb r0, [r5]
	ldr r0, [r4]
	asrs r0, r0, #8
	movs r2, #2
	ldrsh r1, [r3, r2]
	bl CreateWaterfallSurfaceHitEffect
	movs r0, #0xbe
	bl m4aSongNumStart
_08044AFE:
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _08044B20
	movs r0, #0x90
	lsls r0, r0, #2
	str r0, [r4, #0x2c]
	movs r0, #4
	str r0, [r4, #0x30]
	movs r0, #0x30
	b _08044B2C
	.align 2, 0
_08044B18: .4byte 0xFFFFEFFF
_08044B1C: .4byte gWater
_08044B20:
	movs r0, #0xf0
	lsls r0, r0, #2
	str r0, [r4, #0x2c]
	movs r0, #0x12
	str r0, [r4, #0x30]
	movs r0, #0x60
_08044B2C:
	str r0, [r4, #0x34]
	adds r1, r4, #0
	adds r1, #0x5b
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	adds r7, r1, #0
	cmp r0, #0
	bgt _08044C14
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	subs r2, r1, #1
	strb r2, [r0]
	subs r1, #2
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r6, r0, #0
	cmp r1, #0xa
	bhi _08044BE6
	lsls r0, r1, #2
	ldr r1, _08044B60 @ =_08044B64
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08044B60: .4byte _08044B64
_08044B64: @ jump table
	.4byte _08044BDE @ case 0
	.4byte _08044BE6 @ case 1
	.4byte _08044BD4 @ case 2
	.4byte _08044BE6 @ case 3
	.4byte _08044BCA @ case 4
	.4byte _08044BE6 @ case 5
	.4byte _08044BC0 @ case 6
	.4byte _08044BE6 @ case 7
	.4byte _08044BB6 @ case 8
	.4byte _08044B90 @ case 9
	.4byte _08044BAC @ case 10
_08044B90:
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08044BE6
	ldr r1, _08044BA8 @ =gMusicManagerState
	movs r0, #0x10
	strb r0, [r1, #4]
	b _08044BE6
	.align 2, 0
_08044BA8: .4byte gMusicManagerState
_08044BAC:
	adds r0, r4, #0
	movs r1, #5
	bl SpawnDrowningCountdownNum
	b _08044BE6
_08044BB6:
	adds r0, r4, #0
	movs r1, #4
	bl SpawnDrowningCountdownNum
	b _08044BE6
_08044BC0:
	adds r0, r4, #0
	movs r1, #3
	bl SpawnDrowningCountdownNum
	b _08044BE6
_08044BCA:
	adds r0, r4, #0
	movs r1, #2
	bl SpawnDrowningCountdownNum
	b _08044BE6
_08044BD4:
	adds r0, r4, #0
	movs r1, #1
	bl SpawnDrowningCountdownNum
	b _08044BE6
_08044BDE:
	adds r0, r4, #0
	movs r1, #0
	bl SpawnDrowningCountdownNum
_08044BE6:
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bge _08044C10
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r4, #0x10]
	movs r0, #0
	strh r0, [r4, #0xa]
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r3, _08044C60 @ =0xFFFFF400
	adds r1, r1, r3
	movs r2, #0
	movs r3, #1
	bl SpawnAirBubbles
	adds r0, r4, #0
	bl SpawnBubblesAfterDrowning
_08044C10:
	movs r0, #0x3c
	strb r0, [r7]
_08044C14:
	ldr r0, _08044C64 @ =gStageTime
	ldr r0, [r0]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08044C22
	b _08044D24
_08044C22:
	ldr r2, _08044C68 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _08044C6C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08044C70 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0xc0
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08044D24
	ldr r0, [r4, #0x10]
	movs r1, #1
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #3
	cmp r0, #0
	beq _08044C4A
	ldr r1, _08044C74 @ =0xFFFFFC00
_08044C4A:
	ldr r0, [r4]
	adds r0, r0, r1
	ldr r1, [r4, #4]
	ldr r2, _08044C74 @ =0xFFFFFC00
	adds r1, r1, r2
	movs r2, #0
	movs r3, #0
	bl SpawnAirBubbles
	b _08044D24
	.align 2, 0
_08044C60: .4byte 0xFFFFF400
_08044C64: .4byte gStageTime
_08044C68: .4byte gPseudoRandom
_08044C6C: .4byte 0x00196225
_08044C70: .4byte 0x3C6EF35F
_08044C74: .4byte 0xFFFFFC00
_08044C78:
	ldr r1, [r4, #0x10]
	movs r0, #0x40
	ands r0, r1
	adds r5, r4, #0
	adds r5, #0x5c
	cmp r0, #0
	beq _08044CDA
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r1, r0
	str r1, [r4, #0x10]
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #1
	strh r0, [r4, #0xa]
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08044CB6
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #9
	beq _08044CDA
_08044CB6:
	adds r0, r4, #0
	adds r0, #0x5c
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r5, r0, #0
	cmp r1, #0
	bgt _08044CDA
	movs r0, #0xa
	strb r0, [r5]
	ldr r0, [r4]
	asrs r0, r0, #8
	movs r2, #2
	ldrsh r1, [r3, r2]
	bl CreateWaterfallSurfaceHitEffect
	movs r0, #0xbe
	bl m4aSongNumStart
_08044CDA:
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _08044CF4
	movs r0, #0x90
	lsls r0, r0, #3
	str r0, [r4, #0x2c]
	movs r0, #8
	str r0, [r4, #0x30]
	movs r0, #0x60
	b _08044D00
_08044CF4:
	movs r0, #0xf0
	lsls r0, r0, #3
	str r0, [r4, #0x2c]
	movs r0, #0x24
	str r0, [r4, #0x30]
	movs r0, #0xc0
_08044D00:
	str r0, [r4, #0x34]
	adds r1, r4, #0
	adds r1, #0x5b
	movs r0, #0x3c
	strb r0, [r1]
	subs r1, #1
	movs r0, #0x1e
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08044D24
	movs r0, #0x1b
	bl m4aSongNumStop
_08044D24:
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08044D44
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #1
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x30]
	lsls r0, r0, #1
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x34]
	lsls r0, r0, #1
	b _08044D5C
_08044D44:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08044D5E
	ldr r0, [r4, #0x2c]
	asrs r0, r0, #2
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x30]
	asrs r0, r0, #2
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x34]
	asrs r0, r0, #2
_08044D5C:
	str r0, [r4, #0x34]
_08044D5E:
	ldrb r1, [r5]
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	beq _08044D6C
	subs r0, r1, #1
	strb r0, [r5]
_08044D6C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8044D74
sub_8044D74: @ 0x08044D74
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x28]
	mov ip, r0
	ldr r1, _08044DB8 @ =gCamera
	ldrh r0, [r0, #0x16]
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	mov r3, ip
	adds r3, #0x2c
	movs r1, #0
	ldrsb r1, [r3, r1]
	adds r0, r0, r1
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	subs r0, r0, r1
	adds r0, #1
	lsls r0, r0, #8
	ldr r1, [r4]
	cmp r1, r0
	bge _08044DBC
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	beq _08044DBC
	ldr r0, [r4, #0x10]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08044DF8
	b _08044DEE
	.align 2, 0
_08044DB8: .4byte gCamera
_08044DBC:
	lsls r2, r2, #0x10
	asrs r0, r2, #0x10
	mov r3, ip
	adds r3, #0x2e
	movs r1, #0
	ldrsb r1, [r3, r1]
	adds r0, r0, r1
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	adds r0, r0, r1
	subs r0, #2
	lsls r0, r0, #8
	adds r5, r1, #0
	ldr r1, [r4]
	cmp r1, r0
	ble _08044E02
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	beq _08044E02
	ldr r0, [r4, #0x10]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08044DF8
_08044DEE:
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0xd
	strb r0, [r1]
	b _08044E42
_08044DF8:
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0xc
	strb r0, [r1]
	b _08044E42
_08044E02:
	asrs r2, r2, #0x10
	mov r0, ip
	adds r0, #0x2c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r2, r0
	subs r0, r0, r5
	adds r0, #2
	lsls r0, r0, #8
	cmp r1, r0
	blt _08044E2A
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r2, r0
	adds r0, r0, r5
	subs r0, #3
	lsls r0, r0, #8
	cmp r1, r0
	ble _08044E42
_08044E2A:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	adds r0, r1, #0
	subs r0, #0xc
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08044E42
	adds r0, r4, #0
	adds r0, #0x40
	strb r1, [r0]
_08044E42:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8044E48
sub_8044E48: @ 0x08044E48
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, [r5]
	asrs r0, r0, #8
	mov r8, r0
	ldr r0, [r5, #4]
	asrs r7, r0, #8
	movs r0, #0xf
	ldrsb r0, [r5, r0]
	adds r0, r7, r0
	movs r1, #0x27
	adds r1, r1, r5
	mov sb, r1
	ldrb r2, [r1]
	movs r3, #0
	mov sl, r3
	str r3, [sp]
	ldr r1, _08044EE0 @ =sa2__sub_801EE64
	str r1, [sp, #4]
	mov r1, r8
	movs r3, #8
	bl sa2__sub_801E4E4
	cmp r0, #8
	ble _08044F6A
	ldr r0, _08044EE4 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08044EE8
	movs r0, #0xf
	ldrsb r0, [r5, r0]
	subs r0, r7, r0
	mov r1, r8
	subs r1, #2
	movs r2, #0xe
	ldrsb r2, [r5, r2]
	subs r1, r1, r2
	mov r3, sb
	ldrb r2, [r3]
	movs r4, #8
	rsbs r4, r4, #0
	mov r3, sl
	str r3, [sp]
	ldr r3, _08044EE0 @ =sa2__sub_801EE64
	str r3, [sp, #4]
	adds r3, r4, #0
	bl sa2__sub_801E4E4
	adds r6, r0, #0
	movs r0, #0xf
	ldrsb r0, [r5, r0]
	subs r0, r7, r0
	mov r1, r8
	adds r1, #2
	movs r2, #0xe
	ldrsb r2, [r5, r2]
	adds r1, r1, r2
	mov r3, sb
	ldrb r2, [r3]
	mov r3, sl
	str r3, [sp]
	ldr r3, _08044EE0 @ =sa2__sub_801EE64
	str r3, [sp, #4]
	adds r3, r4, #0
	bl sa2__sub_801E4E4
	b _08044F2A
	.align 2, 0
_08044EE0: .4byte sa2__sub_801EE64
_08044EE4: .4byte gStageFlags
_08044EE8:
	movs r0, #0xf
	ldrsb r0, [r5, r0]
	adds r0, r7, r0
	mov r1, r8
	subs r1, #2
	movs r2, #0xe
	ldrsb r2, [r5, r2]
	subs r1, r1, r2
	mov r3, sb
	ldrb r2, [r3]
	str r4, [sp]
	ldr r3, _08044F44 @ =sa2__sub_801EE64
	str r3, [sp, #4]
	movs r3, #8
	bl sa2__sub_801E4E4
	adds r6, r0, #0
	movs r0, #0xf
	ldrsb r0, [r5, r0]
	adds r0, r7, r0
	mov r1, r8
	adds r1, #2
	movs r2, #0xe
	ldrsb r2, [r5, r2]
	adds r1, r1, r2
	mov r3, sb
	ldrb r2, [r3]
	str r4, [sp]
	ldr r3, _08044F44 @ =sa2__sub_801EE64
	str r3, [sp, #4]
	movs r3, #8
	bl sa2__sub_801E4E4
_08044F2A:
	cmp r6, #8
	ble _08044F48
	cmp r0, #0
	bne _08044F48
	ldr r0, [r5, #0x10]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08044F62
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0xd
	b _08044F68
	.align 2, 0
_08044F44: .4byte sa2__sub_801EE64
_08044F48:
	cmp r6, #0
	bne _08044F6A
	cmp r0, #8
	ble _08044F6A
	ldr r0, [r5, #0x10]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08044F62
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0xd
	b _08044F68
_08044F62:
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0xc
_08044F68:
	strb r0, [r1]
_08044F6A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8044F7C
sub_8044F7C: @ 0x08044F7C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _08044F8A
	b _08045100
_08044F8A:
	adds r0, r4, #0
	adds r0, #0x40
	ldrb r3, [r0]
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r6, r0, #0
	cmp r2, #0x40
	bne _08044F9C
	b _08045100
_08044F9C:
	cmp r2, #0x1b
	bne _08044FA2
	b _08045100
_08044FA2:
	ldrh r0, [r4, #0x38]
	movs r1, #0x30
	ands r1, r0
	cmp r1, #0x10
	beq _0804507A
	cmp r1, #0x10
	bgt _08044FB6
	cmp r1, #0
	beq _08044FBC
	b _08045080
_08044FB6:
	cmp r1, #0x20
	beq _08045072
	b _08045080
_08044FBC:
	movs r5, #0xc
	ldrsh r0, [r4, r5]
	cmp r0, #0
	beq _08044FF2
	adds r0, r3, #0
	subs r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08044FD8
	adds r5, r4, #0
	adds r5, #0x59
	cmp r2, #0
	bne _08045042
_08044FD8:
	movs r0, #4
	strb r0, [r6]
	adds r0, r4, #0
	movs r1, #0xe
	bl sa2__sub_8023B5C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
	adds r5, r4, #0
	adds r5, #0x59
	b _08045042
_08044FF2:
	ldr r1, [r4, #0x10]
	movs r3, #0x80
	lsls r3, r3, #0x10
	ands r3, r1
	adds r5, r4, #0
	adds r5, #0x59
	cmp r3, #0
	bne _08045042
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #3
	bne _08045014
	movs r0, #0x80
	lsls r0, r0, #2
	ands r1, r0
	cmp r1, #0
	bne _08045042
_08045014:
	cmp r2, #2
	bne _0804501E
	movs r0, #3
	strb r0, [r6]
	b _08045032
_0804501E:
	cmp r2, #0xa
	bne _08045028
	movs r0, #0xb
	strb r0, [r6]
	b _08045032
_08045028:
	cmp r2, #3
	beq _08045032
	cmp r2, #0xb
	beq _08045032
	strb r3, [r6]
_08045032:
	adds r0, r4, #0
	movs r1, #0xe
	bl sa2__sub_8023B5C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
_08045042:
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #3
	bne _080450B2
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #2
	bne _08045084
	movs r0, #0xc
	ldrsh r3, [r4, r0]
	cmp r3, #0
	ble _08045064
	ldr r0, [r4, #0x34]
	subs r3, r3, r0
	cmp r3, #0
	bge _0804506E
	b _0804506C
_08045064:
	ldr r0, [r4, #0x34]
	adds r3, r3, r0
	cmp r3, #0
	ble _0804506E
_0804506C:
	movs r3, #0
_0804506E:
	strh r3, [r4, #0xc]
	b _08045084
_08045072:
	adds r0, r4, #0
	bl sub_8043970
	b _08045080
_0804507A:
	adds r0, r4, #0
	bl sub_8043A2C
_08045080:
	adds r5, r4, #0
	adds r5, #0x59
_08045084:
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #3
	bne _080450B2
	ldr r1, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080450B2
	movs r5, #0xc
	ldrsh r3, [r4, r5]
	cmp r3, #0
	bne _08045100
	movs r3, #0xc0
	lsls r3, r3, #2
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080450AE
	rsbs r3, r3, #0
_080450AE:
	strh r3, [r4, #0xc]
	b _08045100
_080450B2:
	ldrb r0, [r4, #0x14]
	adds r0, #0x20
	movs r1, #0xc0
	ands r0, r1
	cmp r0, #0
	bne _08045100
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08045100
	ldr r0, [r4, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r1, r0
	cmp r1, #0
	bne _08045100
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #3
	beq _080450E8
	cmp r0, #0xb
	beq _080450E8
	strb r1, [r6]
_080450E8:
	ldr r0, [r4, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080450FA
	adds r0, r4, #0
	bl sub_8044D74
	b _08045100
_080450FA:
	adds r0, r4, #0
	bl sub_8044E48
_08045100:
	adds r0, r4, #0
	bl sub_80448D0
	ldrh r1, [r4, #0x38]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	bne _0804512E
	movs r5, #0xc
	ldrsh r3, [r4, r5]
	cmp r3, #0
	ble _08045120
	subs r3, #8
	cmp r3, #0
	bge _0804512C
	b _0804512A
_08045120:
	cmp r3, #0
	bge _0804512E
	adds r3, #8
	cmp r3, #0
	ble _0804512C
_0804512A:
	movs r3, #0
_0804512C:
	strh r3, [r4, #0xc]
_0804512E:
	movs r0, #0xc
	ldrsh r3, [r4, r0]
	ldr r2, _08045168 @ =gSineTable
	ldrb r1, [r4, #0x14]
	lsls r0, r1, #3
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r0, r5
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r3, r0
	asrs r0, r0, #8
	strh r0, [r4, #8]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r3, r0
	asrs r0, r0, #8
	strh r0, [r4, #0xa]
	adds r0, r4, #0
	bl sa2__sub_8023128
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08045168: .4byte gSineTable

	thumb_func_start sa2__sub_8023B5C
sa2__sub_8023B5C: @ 0x0804516C
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	movs r0, #0xf
	ldrsb r0, [r3, r0]
	cmp r0, r4
	beq _08045216
	ldrb r2, [r3, #0x14]
	ldr r0, _080451AC @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804519A
	adds r0, r2, #0
	adds r0, #0x40
	lsls r0, r0, #0x18
	rsbs r0, r0, #0
	lsrs r2, r0, #0x18
	adds r0, r2, #0
	subs r0, #0x40
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_0804519A:
	adds r0, r2, #0
	adds r0, #0x20
	cmp r0, #0
	ble _080451B4
	cmp r2, #0
	beq _080451B0
	subs r0, #1
	b _080451B8
	.align 2, 0
_080451AC: .4byte gStageFlags
_080451B0:
	movs r2, #0x20
	b _080451C0
_080451B4:
	cmp r2, #0
	beq _080451BE
_080451B8:
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	b _080451C0
_080451BE:
	movs r2, #0x1f
_080451C0:
	lsrs r0, r2, #6
	cmp r0, #1
	beq _080451FA
	cmp r0, #1
	bgt _080451D0
	cmp r0, #0
	beq _080451DA
	b _08045216
_080451D0:
	cmp r0, #2
	beq _080451EA
	cmp r0, #3
	beq _08045208
	b _08045216
_080451DA:
	movs r1, #0xf
	ldrsb r1, [r3, r1]
	subs r1, r4, r1
	lsls r1, r1, #8
	ldr r0, [r3, #4]
	subs r0, r0, r1
	str r0, [r3, #4]
	b _08045216
_080451EA:
	movs r1, #0xf
	ldrsb r1, [r3, r1]
	subs r1, r4, r1
	lsls r1, r1, #8
	ldr r0, [r3, #4]
	adds r0, r0, r1
	str r0, [r3, #4]
	b _08045216
_080451FA:
	movs r1, #0xf
	ldrsb r1, [r3, r1]
	subs r1, r4, r1
	lsls r1, r1, #8
	ldr r0, [r3]
	adds r0, r0, r1
	b _08045214
_08045208:
	movs r1, #0xf
	ldrsb r1, [r3, r1]
	subs r1, r4, r1
	lsls r1, r1, #8
	ldr r0, [r3]
	subs r0, r0, r1
_08045214:
	str r0, [r3]
_08045216:
	pop {r4}
	pop {r0}
	bx r0

@ As unused as in SA2
	thumb_func_start Player_Debug_TestRingScatter
Player_Debug_TestRingScatter: @ 0x0804521C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bge _080452FA
	movs r0, #0xc
	ldrsh r3, [r4, r0]
	ldr r2, _0804524C @ =gInput
	ldrh r1, [r2]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	beq _08045256
	adds r3, #0x20
	cmp r3, #0
	blt _08045250
	adds r0, r3, #0
	movs r1, #0x80
	lsls r1, r1, #5
	cmp r0, r1
	ble _08045252
	adds r0, r1, #0
	b _08045252
	.align 2, 0
_0804524C: .4byte gInput
_08045250:
	movs r0, #0
_08045252:
	adds r3, r0, #0
	b _08045258
_08045256:
	movs r3, #0
_08045258:
	strh r3, [r4, #0xc]
	ldrh r0, [r2]
	movs r1, #0x30
	ands r1, r0
	cmp r1, #0x10
	beq _0804526C
	cmp r1, #0x20
	bne _08045270
	rsbs r0, r3, #0
	b _08045272
_0804526C:
	strh r3, [r4, #8]
	b _08045274
_08045270:
	movs r0, #0
_08045272:
	strh r0, [r4, #8]
_08045274:
	ldrh r0, [r2]
	movs r1, #0xc0
	ands r1, r0
	cmp r1, #0x40
	beq _08045288
	cmp r1, #0x80
	beq _0804528E
	movs r0, #0
	strh r0, [r4, #0xa]
	b _08045290
_08045288:
	rsbs r0, r3, #0
	strh r0, [r4, #0xa]
	b _08045290
_0804528E:
	strh r3, [r4, #0xa]
_08045290:
	movs r0, #8
	ldrsh r1, [r4, r0]
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	ldr r2, _080452C8 @ =gStageFlags
	ldr r1, _080452CC @ =sa2__gUnknown_0300544C
	ldrh r0, [r2]
	ldrh r1, [r1]
	eors r0, r1
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080452B2
	ldrh r0, [r4, #0xa]
	rsbs r0, r0, #0
	strh r0, [r4, #0xa]
_080452B2:
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080452D0
	movs r0, #0xa
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #4]
	subs r0, r0, r1
	b _080452D8
	.align 2, 0
_080452C8: .4byte gStageFlags
_080452CC: .4byte sa2__gUnknown_0300544C
_080452D0:
	movs r0, #0xa
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #4]
	adds r0, r0, r1
_080452D8:
	str r0, [r4, #4]
	adds r0, r4, #0
	bl Player_8043EC0
	ldr r0, _08045300 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080452FA
	ldr r0, [r4]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	asrs r1, r1, #8
	movs r2, #1
	bl InitScatteringRings
_080452FA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08045300: .4byte gPressedKeys

	thumb_func_start Task_PlayerHandleDeath
Task_PlayerHandleDeath: @ 0x08045304
	push {r4, r5, r6, r7, lr}
	ldr r7, _08045350 @ =gCurTask
	ldr r2, [r7]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldr r6, [r1, #4]
	cmp r6, #0
	bne _0804540C
	ldr r0, _08045354 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bhi _08045378
	adds r0, r2, #0
	bl TaskDestroy
	ldr r0, _08045358 @ =gLoadedSaveGame
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	bne _08045368
	ldr r0, _0804535C @ =gCourseTime
	ldr r2, [r0]
	ldr r0, _08045360 @ =0x00008CA0
	cmp r2, r0
	bhi _08045348
	ldr r0, _08045364 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08045368
	cmp r2, #0
	bne _08045368
_08045348:
	bl sub_803D66C
	b _08045410
	.align 2, 0
_08045350: .4byte gCurTask
_08045354: .4byte gGameMode
_08045358: .4byte gLoadedSaveGame
_0804535C: .4byte gCourseTime
_08045360: .4byte 0x00008CA0
_08045364: .4byte gStageFlags
_08045368:
	ldr r1, _08045374 @ =gRingCount
	movs r0, #0
	strh r0, [r1]
	bl sub_803D590
	b _08045410
	.align 2, 0
_08045374: .4byte gRingCount
_08045378:
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08045386
	ldr r0, _080453E8 @ =gRingCount
	strh r6, [r0]
_08045386:
	ldr r4, _080453EC @ =gPlayer
	adds r0, r4, #0
	bl InitializePlayer
	ldr r5, _080453F0 @ =gCamera
	ldr r0, [r4]
	asrs r0, r0, #8
	ldrh r1, [r5, #0xc]
	adds r0, r0, r1
	subs r0, #0x78
	strh r0, [r5]
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	ldrh r1, [r5, #0xe]
	adds r0, r0, r1
	subs r0, #0x50
	strh r0, [r5, #2]
	ldr r0, _080453F4 @ =gMPlayInfo_BGM
	movs r1, #0x80
	lsls r1, r1, #1
	bl m4aMPlayTempoControl
	str r6, [r4, #0x10]
	ldr r2, _080453F8 @ =gStageFlags
	ldrh r1, [r2]
	ldr r0, _080453FC @ =0x0000FF7F
	ands r0, r1
	strh r0, [r2]
	ldr r1, [r4, #0x64]
	ldr r0, [r1, #0x1c]
	ldr r3, _08045400 @ =0xFFFFCFFF
	ands r0, r3
	movs r2, #0x80
	lsls r2, r2, #6
	orrs r0, r2
	str r0, [r1, #0x1c]
	ldr r1, [r4, #0x68]
	ldr r0, [r1, #0x1c]
	ands r0, r3
	orrs r0, r2
	str r0, [r1, #0x1c]
	ldrh r1, [r5, #0x26]
	ldr r0, _08045404 @ =0x0000FFFC
	ands r0, r1
	strh r0, [r5, #0x26]
	ldr r1, [r7]
	ldr r0, _08045408 @ =Task_PlayerMain
	str r0, [r1, #8]
	b _08045410
	.align 2, 0
_080453E8: .4byte gRingCount
_080453EC: .4byte gPlayer
_080453F0: .4byte gCamera
_080453F4: .4byte gMPlayInfo_BGM
_080453F8: .4byte gStageFlags
_080453FC: .4byte 0x0000FF7F
_08045400: .4byte 0xFFFFCFFF
_08045404: .4byte 0x0000FFFC
_08045408: .4byte Task_PlayerMain
_0804540C:
	subs r6, #1
	str r6, [r1, #4]
_08045410:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Task_PlayerDied
Task_PlayerDied: @ 0x08045418
	push {r4, r5, r6, r7, lr}
	ldr r4, _08045430 @ =gPlayer
	ldr r6, [r4, #0x64]
	ldr r7, [r4, #0x68]
	ldr r5, _08045434 @ =gCamera
	ldr r3, [r4, #4]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bge _0804543C
	ldr r2, _08045438 @ =gStageFlags
	b _08045494
	.align 2, 0
_08045430: .4byte gPlayer
_08045434: .4byte gCamera
_08045438: .4byte gStageFlags
_0804543C:
	ldr r2, _08045458 @ =gStageFlags
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08045460
	movs r1, #2
	ldrsh r0, [r5, r1]
	lsls r0, r0, #8
	ldr r1, _0804545C @ =0x0000EFFF
	adds r0, r0, r1
	cmp r3, r0
	blt _0804546E
	b _08045474
	.align 2, 0
_08045458: .4byte gStageFlags
_0804545C: .4byte 0x0000EFFF
_08045460:
	movs r1, #2
	ldrsh r0, [r5, r1]
	subs r0, #0x50
	lsls r0, r0, #8
	movs r1, #1
	cmp r3, r0
	ble _08045470
_0804546E:
	movs r1, #0
_08045470:
	cmp r1, #0
	beq _08045494
_08045474:
	ldr r0, _0804548C @ =gCurTask
	ldr r2, [r0]
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r1, #0x3c
	str r1, [r0, #4]
	ldr r0, _08045490 @ =Task_PlayerHandleDeath
	str r0, [r2, #8]
	b _08045504
	.align 2, 0
_0804548C: .4byte gCurTask
_08045490: .4byte Task_PlayerHandleDeath
_08045494:
	movs r0, #8
	ldrsh r1, [r4, r0]
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	ldr r1, _080454C8 @ =sa2__gUnknown_0300544C
	ldrh r0, [r2]
	ldrh r1, [r1]
	eors r0, r1
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080454B4
	ldrh r0, [r4, #0xa]
	rsbs r0, r0, #0
	strh r0, [r4, #0xa]
_080454B4:
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080454CC
	movs r0, #0xa
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #4]
	subs r0, r0, r1
	b _080454D4
	.align 2, 0
_080454C8: .4byte sa2__gUnknown_0300544C
_080454CC:
	movs r0, #0xa
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #4]
	adds r0, r0, r1
_080454D4:
	str r0, [r4, #4]
	ldr r0, [r4, #0x10]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080454E6
	ldrh r0, [r4, #0xa]
	adds r0, #0x2a
	b _080454EA
_080454E6:
	ldrh r0, [r4, #0xa]
	adds r0, #0xc
_080454EA:
	strh r0, [r4, #0xa]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_8046008
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_80462FC
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_8046AF4
_08045504:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Task_PlayerMain
Task_PlayerMain: @ 0x0804550C
	push {r4, r5, r6, r7, lr}
	ldr r7, _080455AC @ =gPlayer
	ldr r6, [r7, #0x10]
	movs r0, #0x80
	ands r0, r6
	cmp r0, #0
	beq _080455D0
	ldr r5, _080455B0 @ =gCamera
	ldr r0, _080455B4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080455B8 @ =Task_PlayerDied
	str r0, [r1, #8]
	adds r4, r7, #0
	adds r4, #0x40
	movs r2, #0
	movs r0, #1
	strb r0, [r4]
	movs r1, #0
	strh r2, [r7, #8]
	movs r0, #2
	strh r0, [r7, #0x1c]
	adds r3, r7, #0
	adds r3, #0x26
	strb r1, [r3]
	subs r0, #0x23
	ands r6, r0
	adds r0, #0x18
	ands r6, r0
	str r6, [r7, #0x10]
	str r2, [r7, #0x28]
	ldrh r0, [r5, #0x26]
	movs r1, #3
	orrs r0, r1
	strh r0, [r5, #0x26]
	ldr r0, _080455BC @ =gGameMode
	ldrb r0, [r0]
	adds r5, r3, #0
	cmp r0, #1
	bhi _08045564
	ldr r0, _080455C0 @ =gStageFlags
	ldrh r1, [r0]
	movs r2, #1
	orrs r1, r2
	strh r1, [r0]
_08045564:
	ldr r2, [r7, #0x64]
	ldr r0, [r2, #0x1c]
	ldr r1, _080455C4 @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r2, #0x1c]
	adds r0, r7, #0
	adds r0, #0x54
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r0, #0x1c
	bl m4aSongNumStop
	movs r0, #0x1b
	bl m4aSongNumStop
	movs r0, #0x78
	bl m4aSongNumStop
	adds r0, r7, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _080455C8
	movs r0, #0xc0
	bl m4aSongNumStart
	b _08045630
	.align 2, 0
_080455AC: .4byte gPlayer
_080455B0: .4byte gCamera
_080455B4: .4byte gCurTask
_080455B8: .4byte Task_PlayerDied
_080455BC: .4byte gGameMode
_080455C0: .4byte gStageFlags
_080455C4: .4byte 0xFFFFCFFF
_080455C8:
	movs r0, #0x77
	bl m4aSongNumStart
	b _08045630
_080455D0:
	adds r0, r7, #0
	bl sub_8045CFC
	adds r0, r7, #0
	bl sa2__sub_8023878
	ldr r1, [r7, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r1, r0
	adds r4, r7, #0
	adds r4, #0x40
	adds r5, r7, #0
	adds r5, #0x26
	cmp r1, #0
	bne _08045630
	adds r0, r7, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _0804561A
	cmp r0, #1
	bgt _08045608
	cmp r0, #0
	beq _08045612
	b _08045630
_08045608:
	cmp r0, #2
	beq _08045622
	cmp r0, #3
	beq _0804562A
	b _08045630
_08045612:
	adds r0, r7, #0
	bl Player_Sonic_80473AC
	b _08045630
_0804561A:
	adds r0, r7, #0
	bl Player_Tails_8047BA0
	b _08045630
_08045622:
	adds r0, r7, #0
	bl Player_Knuckles_8049000
	b _08045630
_0804562A:
	adds r0, r7, #0
	bl Player_Amy_80497AC
_08045630:
	ldr r1, [r7, #0x64]
	adds r0, r7, #0
	bl sub_8046008
	ldr r1, [r7, #0x64]
	adds r0, r7, #0
	bl sub_80462FC
	ldr r1, [r7, #0x68]
	adds r0, r7, #0
	bl sub_8046AF4
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0xf
	beq _0804565E
	ldrh r1, [r7, #0x1c]
	movs r2, #0x1c
	ldrsh r0, [r7, r2]
	cmp r0, #0
	ble _0804565E
	subs r0, r1, #1
	strh r0, [r7, #0x1c]
_0804565E:
	ldrb r1, [r5]
	cmp r1, #0
	beq _08045704
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0804568A
	ldrh r0, [r7, #0x20]
	subs r0, #1
	strh r0, [r7, #0x20]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0804568A
	ldr r0, _0804570C @ =gMPlayInfo_BGM
	movs r1, #0x80
	lsls r1, r1, #1
	bl m4aMPlayTempoControl
	ldrb r1, [r5]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r5]
_0804568A:
	ldrb r1, [r5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080456B2
	ldrh r0, [r7, #0x20]
	subs r0, #1
	strh r0, [r7, #0x20]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080456B2
	ldr r0, _0804570C @ =gMPlayInfo_BGM
	movs r1, #0x80
	lsls r1, r1, #1
	bl m4aMPlayTempoControl
	ldrb r1, [r5]
	movs r0, #0xef
	ands r0, r1
	strb r0, [r5]
_080456B2:
	ldrb r1, [r5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080456D6
	ldrh r0, [r7, #0x1e]
	subs r0, #1
	strh r0, [r7, #0x1e]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080456D6
	ldrb r1, [r5]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r5]
	movs r0, #0x1c
	bl m4aSongNumStop
_080456D6:
	ldrb r1, [r5]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08045704
	ldrh r0, [r7, #0x24]
	subs r0, #1
	strh r0, [r7, #0x24]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08045704
	ldrb r1, [r5]
	movs r0, #0xdf
	ands r0, r1
	strb r0, [r5]
	ldr r2, _08045710 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08045714 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _08045718 @ =gWinRegs
	movs r0, #0x3f
	strh r0, [r1, #0xa]
_08045704:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804570C: .4byte gMPlayInfo_BGM
_08045710: .4byte gDispCnt
_08045714: .4byte 0x00007FFF
_08045718: .4byte gWinRegs

	thumb_func_start sub_804571C
sub_804571C: @ 0x0804571C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r0, _08045768 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r2, _0804576C @ =gPlayer
	adds r0, r2, #0
	adds r0, #0x27
	ldrb r3, [r0]
	adds r5, r4, #0
	adds r5, #0x27
	strb r3, [r5]
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _08045754
	movs r0, #1
	eors r0, r3
	strb r0, [r5]
_08045754:
	ldr r0, [r4, #0x10]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08045770
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x39
	b _08045776
	.align 2, 0
_08045768: .4byte gStageFlags
_0804576C: .4byte gPlayer
_08045770:
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x35
_08045776:
	strb r0, [r1]
	adds r7, r1, #0
	ldr r0, [r4]
	asrs r0, r0, #8
	ldr r3, _08045810 @ =gCamera
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r5, _08045814 @ =0xFFFFFF00
	adds r1, r1, r5
	cmp r0, r1
	bge _08045790
	lsls r0, r1, #8
	str r0, [r4]
_08045790:
	ldr r0, [r4]
	asrs r0, r0, #8
	movs r2, #0
	ldrsh r1, [r3, r2]
	movs r2, #0xf8
	lsls r2, r2, #1
	adds r1, r1, r2
	cmp r0, r1
	ble _080457A6
	lsls r0, r1, #8
	str r0, [r4]
_080457A6:
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	movs r2, #2
	ldrsh r1, [r3, r2]
	adds r1, r1, r5
	cmp r0, r1
	bge _080457B8
	lsls r0, r1, #8
	str r0, [r4, #4]
_080457B8:
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	movs r2, #2
	ldrsh r1, [r3, r2]
	movs r2, #0xd0
	lsls r2, r2, #1
	adds r1, r1, r2
	cmp r0, r1
	ble _080457CE
	lsls r0, r1, #8
	str r0, [r4, #4]
_080457CE:
	ldr r0, [r4]
	asrs r5, r0, #8
	adds r1, r5, #0
	subs r1, #0x20
	ldr r0, [r6]
	asrs r3, r0, #8
	cmp r1, r3
	blt _080457E0
	b _080458F8
_080457E0:
	adds r0, r5, #0
	adds r0, #0x20
	cmp r0, r3
	bgt _080457EA
	b _080458F8
_080457EA:
	mov r0, r8
	cmp r0, #0
	bne _08045818
	ldr r0, [r4, #4]
	asrs r3, r0, #8
	adds r1, r3, #0
	subs r1, #0x20
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	adds r2, r0, #0
	subs r2, #0x30
	cmp r1, r2
	bge _080458F8
	adds r0, r3, #0
	adds r0, #0x20
	cmp r0, r2
	bgt _08045834
	b _080458F8
	.align 2, 0
_08045810: .4byte gCamera
_08045814: .4byte 0xFFFFFF00
_08045818:
	ldr r0, [r4, #4]
	asrs r3, r0, #8
	adds r1, r3, #0
	subs r1, #0x20
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	adds r2, r0, #0
	adds r2, #0x30
	cmp r1, r2
	bge _080458F8
	adds r0, r3, #0
	adds r0, #0x20
	cmp r0, r2
	ble _080458F8
_08045834:
	movs r0, #0
	adds r1, r4, #0
	bl sa2__sub_8022F58
	cmp r0, #0
	blt _080458F8
	ldr r0, [r4, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0xe0
	ands r0, r1
	ldr r1, _080458D0 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x3d
	movs r6, #0
	strb r6, [r0]
	adds r0, #1
	strb r6, [r0]
	adds r0, #1
	strb r6, [r0]
	ldr r0, [r4, #0x10]
	ldr r1, _080458D4 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r4, #0x10]
	adds r5, r4, #0
	adds r5, #0x59
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #1
	bne _0804587C
	movs r0, #0x78
	bl m4aSongNumStop
_0804587C:
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #3
	bne _0804588C
	ldr r0, [r4, #0x10]
	ldr r1, _080458D8 @ =0xF9FFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
_0804588C:
	strh r6, [r4, #0xc]
	strh r6, [r4, #8]
	strh r6, [r4, #0xa]
	movs r0, #0x38
	strb r0, [r7]
	ldr r0, [r4, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0xc
	ands r0, r1
	ldr r1, _080458DC @ =0xFFFFFDFF
	ands r0, r1
	ldr r1, _080458E0 @ =0xFFEFFFFF
	ands r0, r1
	ldr r1, _080458E4 @ =0xFF7FFFFF
	ands r0, r1
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _080458E8 @ =0xFFDFFFFF
	ands r0, r1
	ldr r1, _080458EC @ =0xFFBFFFFF
	ands r0, r1
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	str r6, [r4, #0x28]
	ldr r0, _080458F0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080458F4 @ =sub_8045B38
	str r0, [r1, #8]
	b _0804596C
	.align 2, 0
_080458D0: .4byte 0xFFFFFBFF
_080458D4: .4byte 0xFFFF7FFF
_080458D8: .4byte 0xF9FFFFFF
_080458DC: .4byte 0xFFFFFDFF
_080458E0: .4byte 0xFFEFFFFF
_080458E4: .4byte 0xFF7FFFFF
_080458E8: .4byte 0xFFDFFFFF
_080458EC: .4byte 0xFFBFFFFF
_080458F0: .4byte gCurTask
_080458F4: .4byte sub_8045B38
_080458F8:
	ldr r5, [r4]
	asrs r3, r5, #8
	ldr r0, _0804591C @ =gPlayer
	ldr r1, [r0]
	asrs r2, r1, #8
	adds r1, r3, #1
	adds r6, r0, #0
	cmp r1, r2
	bge _08045920
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r5, r1
	str r0, [r4]
	ldr r0, [r4, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _08045932
	.align 2, 0
_0804591C: .4byte gPlayer
_08045920:
	subs r0, r3, #1
	cmp r2, r0
	bge _08045934
	ldr r2, _0804594C @ =0xFFFFFE00
	adds r0, r5, r2
	str r0, [r4]
	ldr r0, [r4, #0x10]
	movs r1, #1
	orrs r0, r1
_08045932:
	str r0, [r4, #0x10]
_08045934:
	ldr r0, [r4, #4]
	asrs r3, r0, #8
	adds r1, r0, #0
	mov r0, r8
	cmp r0, #0
	bne _08045950
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	adds r2, r0, #0
	subs r2, #0x30
	b _08045958
	.align 2, 0
_0804594C: .4byte 0xFFFFFE00
_08045950:
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	adds r2, r0, #0
	adds r2, #0x30
_08045958:
	cmp r3, r2
	bge _08045962
	movs r2, #0x80
	lsls r2, r2, #1
	b _08045968
_08045962:
	cmp r2, r3
	bge _0804596C
	ldr r2, _08045978 @ =0xFFFFFF00
_08045968:
	adds r0, r1, r2
	str r0, [r4, #4]
_0804596C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08045978: .4byte 0xFFFFFF00

	thumb_func_start sub_804597C
sub_804597C: @ 0x0804597C
	push {r4, r5, r6, r7, lr}
	ldr r4, _08045994 @ =gPartner
	ldr r6, [r4, #0x64]
	ldr r7, [r4, #0x68]
	ldr r5, [r4, #4]
	ldr r0, [r4, #0x10]
	ldr r3, _08045998 @ =gCamera
	cmp r0, #0
	bge _080459A0
	ldr r2, _0804599C @ =gStageFlags
	b _08045A60
	.align 2, 0
_08045994: .4byte gPartner
_08045998: .4byte gCamera
_0804599C: .4byte gStageFlags
_080459A0:
	ldr r2, _080459BC @ =gStageFlags
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080459C4
	movs r1, #2
	ldrsh r0, [r3, r1]
	lsls r0, r0, #8
	ldr r1, _080459C0 @ =0x0000EFFF
	adds r0, r0, r1
	cmp r5, r0
	blt _080459D2
	b _080459D8
	.align 2, 0
_080459BC: .4byte gStageFlags
_080459C0: .4byte 0x0000EFFF
_080459C4:
	movs r1, #2
	ldrsh r0, [r3, r1]
	subs r0, #0x50
	lsls r0, r0, #8
	movs r1, #1
	cmp r5, r0
	ble _080459D4
_080459D2:
	movs r1, #0
_080459D4:
	cmp r1, #0
	beq _08045A60
_080459D8:
	movs r2, #0
	ldrsh r0, [r3, r2]
	ldr r1, _08045A1C @ =0xFFFFFF00
	adds r0, r0, r1
	lsls r0, r0, #8
	str r0, [r4]
	movs r2, #2
	ldrsh r0, [r3, r2]
	adds r0, r0, r1
	lsls r0, r0, #8
	str r0, [r4, #4]
	ldr r2, [r4, #0x64]
	ldr r0, [r2, #0x1c]
	ldr r1, _08045A20 @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r2, #0x1c]
	ldr r0, [r4, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x60
	ands r0, r1
	str r0, [r4, #0x10]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08045A24
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x39
	b _08045A2A
	.align 2, 0
_08045A1C: .4byte 0xFFFFFF00
_08045A20: .4byte 0xFFFFCFFF
_08045A24:
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x35
_08045A2A:
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x5b
	movs r0, #0x3c
	strb r0, [r1]
	subs r1, #1
	movs r0, #0x1e
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08045A4E
	movs r0, #0x1b
	bl m4aSongNumStop
_08045A4E:
	ldr r0, _08045A58 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08045A5C @ =sub_8045AD8
	str r0, [r1, #8]
	b _08045AD0
	.align 2, 0
_08045A58: .4byte gCurTask
_08045A5C: .4byte sub_8045AD8
_08045A60:
	movs r0, #8
	ldrsh r1, [r4, r0]
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	ldr r1, _08045A94 @ =sa2__gUnknown_0300544C
	ldrh r0, [r2]
	ldrh r1, [r1]
	eors r0, r1
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08045A80
	ldrh r0, [r4, #0xa]
	rsbs r0, r0, #0
	strh r0, [r4, #0xa]
_08045A80:
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08045A98
	movs r2, #0xa
	ldrsh r1, [r4, r2]
	ldr r0, [r4, #4]
	subs r0, r0, r1
	b _08045AA0
	.align 2, 0
_08045A94: .4byte sa2__gUnknown_0300544C
_08045A98:
	movs r0, #0xa
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #4]
	adds r0, r0, r1
_08045AA0:
	str r0, [r4, #4]
	ldr r0, [r4, #0x10]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08045AB2
	ldrh r0, [r4, #0xa]
	adds r0, #0x2a
	b _08045AB6
_08045AB2:
	ldrh r0, [r4, #0xa]
	adds r0, #0xc
_08045AB6:
	strh r0, [r4, #0xa]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_8046008
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_80462FC
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_8046AF4
_08045AD0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8045AD8
sub_8045AD8: @ 0x08045AD8
	push {r4, lr}
	ldr r4, _08045B34 @ =gPartner
	adds r0, r4, #0
	bl sa2__sub_8023878
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08045AF6
	adds r0, r4, #0
	bl sub_804571C
_08045AF6:
	ldr r1, [r4, #0x64]
	adds r0, r4, #0
	bl sub_8046008
	ldr r1, [r4, #0x64]
	adds r0, r4, #0
	bl sub_80462FC
	ldr r1, [r4, #0x68]
	adds r0, r4, #0
	bl sub_8046AF4
	adds r0, r4, #0
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xf
	beq _08045B2A
	ldrh r1, [r4, #0x1c]
	movs r2, #0x1c
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble _08045B2A
	subs r0, r1, #1
	strh r0, [r4, #0x1c]
_08045B2A:
	movs r0, #0x78
	strb r0, [r4, #0x15]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08045B34: .4byte gPartner

	thumb_func_start sub_8045B38
sub_8045B38: @ 0x08045B38
	push {r4, r5, r6, lr}
	ldr r5, _08045BB0 @ =gPartner
	ldr r3, [r5, #0x10]
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	beq _08045BC8
	ldr r0, _08045BB4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08045BB8 @ =sub_804597C
	str r0, [r1, #8]
	adds r4, r5, #0
	adds r4, #0x40
	movs r2, #0
	movs r0, #1
	strb r0, [r4]
	movs r1, #0
	strh r2, [r5, #8]
	movs r0, #2
	strh r0, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x26
	strb r1, [r0]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r3, r0
	adds r0, #0x18
	ands r3, r0
	str r3, [r5, #0x10]
	str r2, [r5, #0x28]
	ldr r2, [r5, #0x64]
	ldr r0, [r2, #0x1c]
	ldr r1, _08045BBC @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r2, #0x1c]
	adds r0, r5, #0
	adds r0, #0x54
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r0, #0x78
	bl m4aSongNumStop
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _08045BC0
	movs r0, #0xc0
	bl m4aSongNumStart
	b _08045CC4
	.align 2, 0
_08045BB0: .4byte gPartner
_08045BB4: .4byte gCurTask
_08045BB8: .4byte sub_804597C
_08045BBC: .4byte 0xFFFFCFFF
_08045BC0:
	movs r0, #0x77
	bl m4aSongNumStart
	b _08045CC4
_08045BC8:
	adds r0, r5, #0
	bl sub_8045DF0
	adds r0, r5, #0
	bl sa2__sub_8023878
	ldr r0, [r5]
	asrs r2, r0, #8
	ldr r4, _08045C28 @ =gCamera
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r3, _08045C2C @ =0xFFFFFF00
	adds r0, r1, r3
	cmp r2, r0
	blt _08045C08
	movs r6, #0xf8
	lsls r6, r6, #1
	adds r0, r1, r6
	cmp r2, r0
	bgt _08045C08
	ldr r0, [r5, #4]
	asrs r2, r0, #8
	movs r0, #2
	ldrsh r1, [r4, r0]
	adds r0, r1, r3
	cmp r2, r0
	blt _08045C08
	movs r3, #0xd0
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r2, r0
	ble _08045C74
_08045C08:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r5, #0
	adds r4, #0x40
	cmp r0, #1
	bne _08045C34
	ldr r0, [r5, #0x10]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08045C30
	movs r0, #0x39
	b _08045C32
	.align 2, 0
_08045C28: .4byte gCamera
_08045C2C: .4byte 0xFFFFFF00
_08045C30:
	movs r0, #0x35
_08045C32:
	strb r0, [r4]
_08045C34:
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	orrs r0, r1
	subs r1, #0xa1
	ands r0, r1
	str r0, [r5, #0x10]
	adds r1, r5, #0
	adds r1, #0x5b
	movs r0, #0x3c
	strb r0, [r1]
	subs r1, #1
	movs r0, #0x1e
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08045C62
	movs r0, #0x1b
	bl m4aSongNumStop
_08045C62:
	ldr r0, _08045C6C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08045C70 @ =sub_8045AD8
	str r0, [r1, #8]
	b _08045CC4
	.align 2, 0
_08045C6C: .4byte gCurTask
_08045C70: .4byte sub_8045AD8
_08045C74:
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	adds r4, r5, #0
	adds r4, #0x40
	cmp r0, #0
	bne _08045CC4
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08045CAE
	cmp r0, #1
	bgt _08045C9C
	cmp r0, #0
	beq _08045CA6
	b _08045CC4
_08045C9C:
	cmp r0, #2
	beq _08045CB6
	cmp r0, #3
	beq _08045CBE
	b _08045CC4
_08045CA6:  @ TODO: Could all these be called in any state?
	adds r0, r5, #0
	bl Player_Sonic_80473AC
	b _08045CC4
_08045CAE:
	adds r0, r5, #0
	bl Player_Tails_8047BA0
	b _08045CC4
_08045CB6:
	adds r0, r5, #0
	bl Player_Knuckles_8049000
	b _08045CC4
_08045CBE:
	adds r0, r5, #0
	bl Player_Amy_80497AC
_08045CC4:
	ldr r1, [r5, #0x64]
	adds r0, r5, #0
	bl sub_8046008
	ldr r1, [r5, #0x64]
	adds r0, r5, #0
	bl sub_80462FC
	ldr r1, [r5, #0x68]
	adds r0, r5, #0
	bl sub_8046AF4
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0xf
	beq _08045CF2
	ldrh r1, [r5, #0x1c]
	movs r6, #0x1c
	ldrsh r0, [r5, r6]
	cmp r0, #0
	ble _08045CF2
	subs r0, r1, #1
	strh r0, [r5, #0x1c]
_08045CF2:
	movs r0, #0x78
	strb r0, [r5, #0x15]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8045CFC
sub_8045CFC: @ 0x08045CFC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _08045D28 @ =gGameMode
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #1
	bls _08045D34
	ldr r0, _08045D2C @ =0x04000128
	ldr r1, [r0]
	lsls r1, r1, #0x1a
	ldr r0, _08045D30 @ =gCamera
	adds r0, #0x3a
	lsrs r1, r1, #0x1e
	ldrb r0, [r0]
	cmp r1, r0
	beq _08045D34
	movs r0, #0
	strh r0, [r4, #0x38]
	movs r6, #0
	bl sub_804D13C
	b _08045DBE
	.align 2, 0
_08045D28: .4byte gGameMode
_08045D2C: .4byte 0x04000128
_08045D30: .4byte gCamera
_08045D34:
	ldrh r6, [r4, #0x38]
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	ands r0, r1
	cmp r0, #0
	bne _08045DB8
	ldr r0, _08045DAC @ =gInput
	ldrh r3, [r0]
	strh r3, [r4, #0x38]
	ldrb r0, [r2]
	cmp r0, #1
	bls _08045DA2
	movs r0, #0x26
	adds r0, r0, r4
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08045DA2
	movs r0, #0xf0
	ands r0, r3
	lsrs r2, r0, #4
	ldr r0, _08045DB0 @ =gStageTime
	ldr r0, [r0]
	ldrh r5, [r4, #0x22]
	adds r1, r5, r0
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	bne _08045D76
	movs r1, #1
_08045D76:
	lsls r2, r1
	lsls r0, r2, #0x18
	lsrs r1, r0, #0x1c
	lsrs r0, r0, #0x18
	orrs r0, r1
	lsls r0, r0, #0x1c
	lsrs r2, r0, #0x18
	ldr r0, _08045DB4 @ =0x0000FF0F
	ands r0, r3
	orrs r0, r2
	strh r0, [r4, #0x38]
	subs r0, r5, #1
	strh r0, [r4, #0x22]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08045DA2
	mov r0, ip
	ldrb r1, [r0]
	movs r0, #0xbf
	ands r0, r1
	mov r1, ip
	strb r0, [r1]
_08045DA2:
	ldrh r0, [r4, #0x38]
	bl sub_804D13C
	b _08045DBE
	.align 2, 0
_08045DAC: .4byte gInput
_08045DB0: .4byte gStageTime
_08045DB4: .4byte 0x0000FF0F
_08045DB8:
	movs r0, #0
	bl sub_804D13C
_08045DBE:
	ldrh r1, [r4, #0x38]
	eors r6, r1
	ands r6, r1
	strh r6, [r4, #0x3a]
	movs r2, #0x30
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08045DD6
	ldr r0, _08045DEC @ =0x0000FF3F
	ands r0, r1
	strh r0, [r4, #0x38]
_08045DD6:
	ldrh r1, [r4, #0x3a]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08045DE6
	ldr r0, _08045DEC @ =0x0000FF3F
	ands r0, r1
	strh r0, [r4, #0x3a]
_08045DE6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08045DEC: .4byte 0x0000FF3F

	thumb_func_start sub_8045DF0
sub_8045DF0: @ 0x08045DF0
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	ldrh r4, [r0, #0x38]
	adds r6, r4, #0
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	ands r0, r1
	cmp r0, #0
	bne _08045EEE
	ldr r0, _08045E3C @ =gUnknown_030060F0
	ldrh r4, [r0, #0x28]
	mov r1, ip
	ldrb r0, [r1, #0x14]
	adds r0, #0x20
	movs r1, #0xc0
	ands r0, r1
	cmp r0, #0
	bne _08045EEE
	mov r2, ip
	ldr r3, [r2]
	movs r0, #0x80
	lsls r0, r0, #5
	adds r1, r3, r0
	ldr r0, _08045E40 @ =gPlayer
	ldr r2, [r0]
	adds r7, r0, #0
	cmp r1, r2
	bge _08045E48
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	bne _08045E74
	movs r0, #0x10
	orrs r4, r0
	lsls r1, r4, #0x10
	ldr r0, _08045E44 @ =0xFFDF0000
	b _08045E60
	.align 2, 0
_08045E3C: .4byte gUnknown_030060F0
_08045E40: .4byte gPlayer
_08045E44: .4byte 0xFFDF0000
_08045E48:
	ldr r1, _08045E68 @ =0xFFFFF000
	adds r0, r3, r1
	cmp r0, r2
	ble _08045E70
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	bne _08045E74
	movs r0, #0x20
	orrs r4, r0
	lsls r1, r4, #0x10
	ldr r0, _08045E6C @ =0xFFEF0000
_08045E60:
	ands r0, r1
	lsrs r4, r0, #0x10
	b _08045E74
	.align 2, 0
_08045E68: .4byte 0xFFFFF000
_08045E6C: .4byte 0xFFEF0000
_08045E70:
	ldr r0, _08045ED0 @ =0x0000FFCF
	ands r4, r0
_08045E74:
	movs r0, #0x30
	ands r0, r4
	cmp r0, #0
	bne _08045EEE
	mov r2, ip
	movs r3, #0xc
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bne _08045EEE
	ldr r1, [r2, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08045EEE
	mov r0, ip
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08045EEE
	mov r3, ip
	adds r3, #0x40
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #4
	beq _08045EAE
	cmp r0, #0
	bne _08045EEE
_08045EAE:
	ldr r0, _08045ED4 @ =0x00808608
	ands r0, r1
	cmp r0, #0
	bne _08045EEE
	ldr r0, [r7, #0x10]
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _08045ED8
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _08045EEE
	orrs r1, r2
	mov r0, ip
	str r1, [r0, #0x10]
	b _08045EEA
	.align 2, 0
_08045ED0: .4byte 0x0000FFCF
_08045ED4: .4byte 0x00808608
_08045ED8:
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08045EEE
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	mov r2, ip
	str r1, [r2, #0x10]
_08045EEA:
	movs r0, #8
	strb r0, [r3]
_08045EEE:
	adds r5, r4, #0
	bics r5, r6
	mov r3, ip
	ldr r1, [r3, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r0, r1
	cmp r0, #0
	bne _08045FDA
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08045F0E
	cmp r0, #2
	beq _08045F50
	b _08045FDA
_08045F0E:
	ldr r0, _08045F2C @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08045F38
	mov r6, ip
	ldr r0, [r6, #4]
	ldr r1, _08045F30 @ =0xFFFFB000
	adds r0, r0, r1
	ldr r1, _08045F34 @ =gPlayer
	ldr r1, [r1, #4]
	cmp r0, r1
	bgt _08045FC6
	b _08045FDA
	.align 2, 0
_08045F2C: .4byte gStageFlags
_08045F30: .4byte 0xFFFFB000
_08045F34: .4byte gPlayer
_08045F38:
	mov r2, ip
	ldr r0, [r2, #4]
	movs r3, #0xa0
	lsls r3, r3, #7
	adds r0, r0, r3
	ldr r1, _08045F4C @ =gPlayer
	ldr r1, [r1, #4]
	cmp r0, r1
	bge _08045FDA
	b _08045FC6
	.align 2, 0
_08045F4C: .4byte gPlayer
_08045F50:
	ldr r2, _08045F70 @ =gStageFlags
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08045F7C
	ldr r1, _08045F74 @ =gPlayer
	ldr r0, [r1, #4]
	ldr r6, _08045F78 @ =0xFFFFF000
	adds r0, r0, r6
	adds r7, r1, #0
	mov r1, ip
	ldr r3, [r1, #4]
	cmp r3, r0
	bgt _08045F90
	b _08045FDA
	.align 2, 0
_08045F70: .4byte gStageFlags
_08045F74: .4byte gPlayer
_08045F78: .4byte 0xFFFFF000
_08045F7C:
	ldr r1, _08045FBC @ =gPlayer
	ldr r0, [r1, #4]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r0, r3
	adds r7, r1, #0
	mov r6, ip
	ldr r3, [r6, #4]
	cmp r3, r0
	bge _08045FDA
_08045F90:
	mov r0, ip
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08045FA8
	mov r1, ip
	movs r6, #0xa
	ldrsh r0, [r1, r6]
	cmp r0, #0
	ble _08045FD4
_08045FA8:
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08045FC0
	ldr r0, [r7, #4]
	cmp r3, r0
	bgt _08045FC6
	b _08045FDA
	.align 2, 0
_08045FBC: .4byte gPlayer
_08045FC0:
	ldr r0, [r7, #4]
	cmp r3, r0
	bge _08045FDA
_08045FC6:
	ldr r0, _08045FD0 @ =gUnknown_030060E0
	ldrh r0, [r0]
	orrs r5, r0
	b _08045FDA
	.align 2, 0
_08045FD0: .4byte gUnknown_030060E0
_08045FD4:
	ldr r0, _08046000 @ =gUnknown_030060E0
	ldrh r0, [r0]
	orrs r4, r0
_08045FDA:
	movs r1, #0x30
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08045FE8
	ldr r0, _08046004 @ =0x0000FF3F
	ands r4, r0
_08045FE8:
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08045FF4
	ldr r0, _08046004 @ =0x0000FF3F
	ands r5, r0
_08045FF4:
	mov r0, ip
	strh r4, [r0, #0x38]
	strh r5, [r0, #0x3a]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08046000: .4byte gUnknown_030060E0
_08046004: .4byte 0x0000FF3F

	thumb_func_start sub_8046008
sub_8046008: @ 0x08046008
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r6, #0
	adds r5, #0xc
	ldr r0, [r4, #0x10]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08046034
	adds r1, r4, #0
	adds r1, #0x3e
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xe
	strb r0, [r1]
_08046034:
	ldr r7, _080460C4 @ =gUnknown_084AE010
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r3, [r0]
	adds r0, r4, #0
	adds r0, #0x42
	strh r3, [r0]
	movs r2, #0
	ldrsb r2, [r1, r2]
	mov sb, r1
	mov r8, r0
	cmp r2, #0x2a
	bgt _0804606C
	ldr r0, _080460C8 @ =gPlayerCharacterIdleAnims
	adds r1, #0x19
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, r3, r0
	mov r1, r8
	strh r0, [r1]
_0804606C:
	mov r2, sb
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r1, r7, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r2, r4, #0
	adds r2, #0x44
	strh r0, [r2]
	adds r1, r6, #0
	adds r1, #0x2e
	movs r0, #0x10
	strb r0, [r1]
	movs r3, #0xc
	ldrsh r0, [r4, r3]
	adds r6, r2, #0
	cmp r0, #0
	bne _0804609C
	ldrh r1, [r4, #0x38]
	movs r0, #0xf3
	ands r0, r1
	cmp r0, #0
	beq _080460A6
_0804609C:
	adds r1, r4, #0
	adds r1, #0x46
	movs r0, #0xb4
	lsls r0, r0, #1
	strh r0, [r1]
_080460A6:
	mov r7, sb
	movs r0, #0
	ldrsb r0, [r7, r0]
	cmp r0, #0x10
	bne _080460B2
	b _08046204
_080460B2:
	cmp r0, #0x10
	bgt _080460D2
	cmp r0, #4
	beq _0804611C
	cmp r0, #4
	bgt _080460CC
	cmp r0, #0
	beq _080460E6
	b _08046236
	.align 2, 0
_080460C4: .4byte gUnknown_084AE010
_080460C8: .4byte gPlayerCharacterIdleAnims
_080460CC:
	cmp r0, #9
	beq _08046198
	b _08046236
_080460D2:
	cmp r0, #0x1a
	bgt _080460E0
	cmp r0, #0x18
	bge _0804615C
	cmp r0, #0x15
	beq _08046180
	b _08046236
_080460E0:
	cmp r0, #0x55
	beq _08046180
	b _08046236
_080460E6:
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r0, [r1]
	movs r3, #0
	ldrsh r2, [r1, r3]
	cmp r2, #0
	beq _080460FA
	subs r0, #1
	strh r0, [r1]
	b _08046236
_080460FA:
	ldr r0, _08046118 @ =gPlayerCharacterIdleAnims
	adds r1, r4, #0
	adds r1, #0x59
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #1
	mov r7, r8
	strh r0, [r7]
	strh r2, [r6]
	b _08046236
	.align 2, 0
_08046118: .4byte gPlayerCharacterIdleAnims
_0804611C:
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	adds r1, r0, #0
	cmp r0, #0
	bge _08046128
	rsbs r1, r0, #0
_08046128:
	ldr r0, _08046154 @ =0x0000047F
	cmp r1, r0
	ble _0804615C
	ldr r1, _08046158 @ =gPlayerCharacterIdleAnims
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #5
	movs r1, #0
	mov r2, r8
	strh r0, [r2]
	strh r1, [r6]
	adds r1, r5, #0
	adds r1, #0x22
	movs r0, #0x10
	strb r0, [r1]
	b _08046236
	.align 2, 0
_08046154: .4byte 0x0000047F
_08046158: .4byte gPlayerCharacterIdleAnims
_0804615C:
	movs r3, #0xc
	ldrsh r0, [r4, r3]
	adds r1, r0, #0
	cmp r0, #0
	bge _08046168
	rsbs r1, r0, #0
_08046168:
	asrs r0, r1, #4
	cmp r0, #7
	ble _08046176
	cmp r0, #0x10
	ble _08046178
	movs r0, #0x10
	b _08046178
_08046176:
	movs r0, #8
_08046178:
	adds r1, r5, #0
	adds r1, #0x22
	strb r0, [r1]
	b _08046236
_08046180:
	movs r7, #0xa
	ldrsh r1, [r4, r7]
	ldr r0, _08046194 @ =0xFFFFFE80
	cmp r1, r0
	blt _08046236
	movs r0, #0x12
	mov r1, sb
	strb r0, [r1]
	b _08046236
	.align 2, 0
_08046194: .4byte 0xFFFFFE80
_08046198:
	movs r2, #0xc
	ldrsh r1, [r4, r2]
	cmp r1, #0
	bge _080461A2
	rsbs r1, r1, #0
_080461A2:
	ldr r0, _080461F4 @ =0x0000017F
	cmp r1, r0
	bgt _080461C4
	ldr r1, _080461F8 @ =gPlayerCharacterIdleAnims
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #7
	movs r1, #0
	mov r3, r8
	strh r0, [r3]
	strh r1, [r6]
_080461C4:
	ldr r0, _080461FC @ =gStageTime
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08046236
	movs r2, #0xf
	ldrsb r2, [r4, r2]
	ldr r0, _08046200 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080461E2
	rsbs r2, r2, #0
_080461E2:
	ldr r0, [r4]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	asrs r1, r1, #8
	adds r1, r1, r2
	bl CreateBrakingDustEffect
	b _08046236
	.align 2, 0
_080461F4: .4byte 0x0000017F
_080461F8: .4byte gPlayerCharacterIdleAnims
_080461FC: .4byte gStageTime
_08046200: .4byte gStageFlags
_08046204:
	ldrb r0, [r4, #0x14]
	adds r0, #0x20
	movs r1, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _08046236
	ldr r1, _08046260 @ =gPlayerCharacterIdleAnims
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #0x2c
	mov r7, r8
	strh r0, [r7]
	movs r0, #1
	strh r0, [r6]
	ldr r0, [r4, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
_08046236:
	ldr r2, [r4, #0x10]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _0804624C
	adds r3, r5, #0
	adds r3, #0x22
	ldrb r0, [r3]
	lsrs r1, r0, #1
	subs r0, r0, r1
	strb r0, [r3]
_0804624C:
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	bne _08046264
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _0804626A
	.align 2, 0
_08046260: .4byte gPlayerCharacterIdleAnims
_08046264:
	ldr r0, [r5, #0x10]
	ldr r1, _08046284 @ =0xFFFFFBFF
	ands r0, r1
_0804626A:
	str r0, [r5, #0x10]
	ldr r0, _08046288 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804628C
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _08046292
	.align 2, 0
_08046284: .4byte 0xFFFFFBFF
_08046288: .4byte gStageFlags
_0804628C:
	ldr r0, [r5, #0x10]
	ldr r1, _080462F4 @ =0xFFFFF7FF
	ands r0, r1
_08046292:
	str r0, [r5, #0x10]
	ldr r3, _080462F8 @ =gGameMode
	ldrb r0, [r3]
	cmp r0, #1
	bls _080462A4
	adds r1, r4, #0
	adds r1, #0x6c
	movs r0, #0
	strb r0, [r1]
_080462A4:
	mov r0, r8
	ldrh r2, [r0]
	ldrh r0, [r5, #0xa]
	adds r1, r5, #0
	adds r1, #0x20
	cmp r0, r2
	bne _080462BA
	ldrb r0, [r1]
	ldrh r7, [r6]
	cmp r0, r7
	beq _080462DE
_080462BA:
	strh r2, [r5, #0xa]
	ldrh r0, [r6]
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	str r0, [r5, #0x30]
	ldrb r0, [r3]
	cmp r0, #1
	bls _080462DE
	adds r1, r4, #0
	adds r1, #0x6c
	movs r0, #1
	strb r0, [r1]
_080462DE:
	mov r0, sb
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x41
	strb r1, [r0]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080462F4: .4byte 0xFFFFF7FF
_080462F8: .4byte gGameMode

	thumb_func_start sub_80462FC
sub_80462FC: @ 0x080462FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r4, r0, #0
	mov sl, r1
	movs r0, #0xc
	add r0, sl
	mov r8, r0
	mov sb, sl
	ldr r0, _080463BC @ =gCamera
	ldrh r2, [r0]
	ldrh r1, [r0, #2]
	movs r3, #0
	mov r0, sb
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _0804632E
	mov r5, r8
	ldrh r0, [r5, #0x1e]
	cmp r0, #0xff
	bne _08046330
_0804632E:
	movs r3, #1
_08046330:
	str r3, [sp]
	lsls r2, r2, #0x10
	str r2, [sp, #8]
	lsls r1, r1, #0x10
	str r1, [sp, #0xc]
	adds r5, r4, #0
	adds r5, #0x40
_0804633E:
	ldr r2, [r4]
	asrs r2, r2, #8
	ldr r1, [sp, #8]
	asrs r0, r1, #0x10
	subs r2, r2, r0
	mov r3, r8
	strh r2, [r3, #0x16]
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	ldr r3, [sp, #0xc]
	asrs r1, r3, #0x10
	subs r0, r0, r1
	mov r1, r8
	strh r0, [r1, #0x18]
	mov r3, sb
	strh r2, [r3, #6]
	strh r0, [r3, #8]
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #4
	beq _08046376
	cmp r0, #0x17
	beq _08046376
	cmp r0, #0x20
	beq _08046386
	cmp r0, #0x28
	beq _08046376
	b _08046474
_08046376:
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0x20
	beq _08046386
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	mov r5, sb
	strh r0, [r5]
_08046386:
	mov r0, r8
	ldr r1, [r0, #0x10]
	ldr r0, _080463C0 @ =0xFFFFF3FF
	ands r1, r0
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r1, r0
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	movs r2, #0x20
	orrs r0, r2
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	orrs r1, r0
	mov r2, r8
	str r1, [r2, #0x10]
	ldr r0, [r4, #0x10]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080463C4
	movs r0, #0xff
	lsls r0, r0, #8
	mov r3, sb
	strh r0, [r3, #2]
	b _080463CC
	.align 2, 0
_080463BC: .4byte gCamera
_080463C0: .4byte 0xFFFFF3FF
_080463C4:
	movs r0, #0x80
	lsls r0, r0, #1
	mov r5, sb
	strh r0, [r5, #2]
_080463CC:
	ldr r2, _08046418 @ =gStageFlags
	ldrh r1, [r2]
	movs r3, #0x80
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080463E2
	mov r1, sb
	ldrh r0, [r1, #2]
	rsbs r0, r0, #0
	strh r0, [r1, #2]
_080463E2:
	mov r5, sb
	movs r1, #2
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _080463F2
	ldrh r0, [r5, #6]
	subs r0, #1
	strh r0, [r5, #6]
_080463F2:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08046424
	movs r0, #0x80
	lsls r0, r0, #1
	mov r2, sb
	strh r0, [r2, #4]
	ldrh r1, [r2]
	adds r1, r1, r0
	ldr r3, _0804641C @ =0xFFFFFF00
	adds r0, r3, #0
	subs r0, r0, r1
	ldr r1, _08046420 @ =0x000003FF
	ands r0, r1
	strh r0, [r2]
	b _0804642C
	.align 2, 0
_08046418: .4byte gStageFlags
_0804641C: .4byte 0xFFFFFF00
_08046420: .4byte 0x000003FF
_08046424:
	movs r0, #0x80
	lsls r0, r0, #1
	mov r5, sb
	strh r0, [r5, #4]
_0804642C:
	mov r0, sb
	movs r2, #2
	ldrsh r1, [r0, r2]
	adds r0, r4, #0
	adds r0, #0x54
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r1, r0, r1
	asrs r1, r1, #8
	mov r5, sb
	movs r0, #4
	ldrsh r2, [r5, r0]
	adds r0, r4, #0
	adds r0, #0x56
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r2, r0
	asrs r0, r0, #8
	strh r1, [r5, #2]
	strh r0, [r5, #4]
	mov r0, r8
	bl UpdateSpriteAnimation
	ldr r0, _08046470 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _08046464
	b _0804688E
_08046464:
	mov r0, r8
	mov r1, sb
	bl TransformSprite
	b _0804684E
	.align 2, 0
_08046470: .4byte gGameMode
_08046474:
	movs r0, #0
	mov r1, sb
	strh r0, [r1]
	mov r3, r8
	ldr r2, [r3, #0x10]
	subs r0, #0x40
	ands r2, r0
	str r2, [r3, #0x10]
	ldr r0, [r4, #0x10]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08046498
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r2, r0
	str r2, [r3, #0x10]
	b _080464A8
_08046498:
	ldr r0, _080464C4 @ =0xFFFFFBFF
	ands r2, r0
	mov r0, r8
	str r2, [r0, #0x10]
	ldrh r0, [r0, #0x16]
	adds r0, #1
	mov r1, r8
	strh r0, [r1, #0x16]
_080464A8:
	ldr r0, _080464C8 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080464CC
	mov r2, r8
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r2, #0x10]
	b _080464D6
	.align 2, 0
_080464C4: .4byte 0xFFFFFBFF
_080464C8: .4byte gStageFlags
_080464CC:
	mov r3, r8
	ldr r0, [r3, #0x10]
	ldr r1, _080464F8 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r3, #0x10]
_080464D6:
	mov r0, r8
	bl UpdateSpriteAnimation
	adds r1, r0, #0
	cmp r1, #0
	beq _080464E4
	b _0804684E
_080464E4:
	ldrb r0, [r5]
	str r0, [sp, #4]
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #7
	bne _080464FC
	movs r0, #6
_080464F2:
	strb r0, [r5]
	b _08046836
	.align 2, 0
_080464F8: .4byte 0xFFFFF7FF
_080464FC:
	cmp r0, #3
	bne _0804650C
	movs r2, #0xc
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _0804650A
	b _0804681C
_0804650A:
	b _08046510
_0804650C:
	cmp r0, #0xb
	bne _08046514
_08046510:
	strb r1, [r5]
	b _08046836
_08046514:
	cmp r0, #0x16
	bne _0804651A
	b _0804681C
_0804651A:
	cmp r0, #0x11
	beq _08046522
	cmp r0, #0x12
	bne _08046526
_08046522:
	movs r0, #0x13
	b _080464F2
_08046526:
	cmp r0, #0x1b
	bne _0804652C
	b _0804681C
_0804652C:
	cmp r0, #0x4a
	bne _08046594
	ldr r0, [r4, #0x10]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08046548
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	adds r1, #3
	lsls r1, r1, #8
	ldr r0, [r4]
	subs r0, r0, r1
	b _08046554
_08046548:
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	adds r1, #3
	lsls r1, r1, #8
	ldr r0, [r4]
	adds r0, r0, r1
_08046554:
	str r0, [r4]
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r2, #0xe
	strb r2, [r4, #0xf]
	ldr r0, _08046574 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08046578
	lsls r1, r2, #8
	ldr r0, [r4, #4]
	adds r0, r0, r1
	b _0804657E
	.align 2, 0
_08046574: .4byte gStageFlags
_08046578:
	ldr r0, [r4, #4]
	ldr r3, _08046590 @ =0xFFFFF200
	adds r0, r0, r3
_0804657E:
	str r0, [r4, #4]
	movs r0, #0x4b
	strb r0, [r5]
	adds r1, r4, #0
	adds r1, #0x3e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08046836
	.align 2, 0
_08046590: .4byte 0xFFFFF200
_08046594:
	cmp r0, #0x4b
	bne _0804659C
	strb r1, [r4, #0x14]
	b _0804673E
_0804659C:
	cmp r0, #0x2d
	beq _080465A4
	cmp r0, #0x30
	bne _08046608
_080465A4:
	ldr r0, [r4, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0xe0
	ands r0, r1
	ldr r1, _080465FC @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	ldr r0, [r4, #0x10]
	ldr r1, _08046600 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r4, #0x10]
	adds r6, r4, #0
	adds r6, #0x59
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #1
	bne _080465E0
	movs r0, #0x78
	bl m4aSongNumStop
_080465E0:
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #3
	bne _080465F0
	ldr r0, [r4, #0x10]
	ldr r1, _08046604 @ =0xF9FFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
_080465F0:
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _080465FA
	b _0804681C
_080465FA:
	b _080464F2
	.align 2, 0
_080465FC: .4byte 0xFFFFFBFF
_08046600: .4byte 0xFFFF7FFF
_08046604: .4byte 0xF9FFFFFF
_08046608:
	ldrb r0, [r5]
	movs r1, #0
	ldrsb r1, [r5, r1]
	cmp r1, #0x2e
	bne _08046704
	adds r2, r4, #0
	adds r2, #0x3f
	movs r7, #0
	ldrsb r7, [r2, r7]
	adds r3, r2, #0
	cmp r7, #1
	bne _0804664E
	ldr r0, [r4, #0x10]
	ands r0, r7
	cmp r0, #0
	beq _0804662E
	movs r0, #0xfc
	lsls r0, r0, #8
	b _08046632
_0804662E:
	movs r0, #0x80
	lsls r0, r0, #3
_08046632:
	strh r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x3e
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0
	strb r0, [r2]
	strb r1, [r3]
	movs r0, #0x2f
	strb r0, [r5]
	movs r0, #0x6f
	bl m4aSongNumStart
	b _08046836
_0804664E:
	cmp r7, #2
	bne _080466F0
	ldr r0, [r4, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0xe0
	ands r0, r1
	ldr r1, _080466DC @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	strb r0, [r2]
	ldr r0, [r4, #0x10]
	ldr r1, _080466E0 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r4, #0x10]
	adds r6, r4, #0
	adds r6, #0x59
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #1
	bne _0804668C
	movs r0, #0x78
	bl m4aSongNumStop
_0804668C:
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #3
	bne _0804669C
	ldr r0, [r4, #0x10]
	ldr r1, _080466E4 @ =0xF9FFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
_0804669C:
	ldrh r0, [r4, #8]
	rsbs r0, r0, #0
	strh r0, [r4, #8]
	ldr r0, _080466E8 @ =0x0000FB20
	strh r0, [r4, #0xa]
	ldr r0, [r4, #0x10]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080466B4
	ldr r0, _080466EC @ =0x0000FD60
	strh r0, [r4, #0xa]
_080466B4:
	ldr r0, [r4, #0x10]
	orrs r0, r7
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #9
	bl sa2__sub_8023B5C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #9
	strb r0, [r4, #0xf]
	movs r0, #0x31
	strb r0, [r5]
	movs r0, #0x74
	bl m4aSongNumStart
	b _08046836
	.align 2, 0
_080466DC: .4byte 0xFFFFFBFF
_080466E0: .4byte 0xFFFF7FFF
_080466E4: .4byte 0xF9FFFFFF
_080466E8: .4byte 0x0000FB20
_080466EC: .4byte 0x0000FD60
_080466F0:
	adds r1, r4, #0
	adds r1, #0x3e
	movs r0, #0
	strb r0, [r1]
	strb r0, [r2]
	strb r0, [r5]
	adds r1, #0x1a
	strb r0, [r1]
	strh r0, [r4, #0xc]
	b _08046836
_08046704:
	cmp r1, #0x36
	bne _0804670C
	movs r0, #0x35
	b _080464F2
_0804670C:
	cmp r1, #0x3a
	bne _08046714
	movs r0, #0x39
	b _080464F2
_08046714:
	cmp r1, #0x3c
	bne _0804673A
	adds r1, r4, #0
	adds r1, #0x3e
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	movs r2, #0xc
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _0804672E
	movs r0, #4
_0804672E:
	strb r0, [r5]
	adds r1, r4, #0
	adds r1, #0x58
	movs r0, #0
	strb r0, [r1]
	b _08046836
_0804673A:
	cmp r1, #0x40
	bne _08046746
_0804673E:
	adds r0, r4, #0
	bl sa2__sub_8021BE0
	b _08046836
_08046746:
	cmp r1, #0x46
	bne _0804674E
	movs r0, #0x47
	b _080464F2
_0804674E:
	subs r0, #0x4c
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080467B8
	adds r3, r4, #0
	adds r3, #0x3f
	movs r1, #0
	ldrsb r1, [r3, r1]
	cmp r1, #0
	beq _080467A6
	adds r2, r4, #0
	adds r2, #0x3e
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0
	strb r0, [r2]
	strb r1, [r3]
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0x4d
	bne _08046782
	movs r0, #0x7f
	bl m4aSongNumStart
	b _08046788
_08046782:
	movs r0, #0x7e
	bl m4aSongNumStart
_08046788:
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	movs r2, #0xc0
	lsls r2, r2, #2
	ldr r0, [r4, #0x10]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0804679E
	rsbs r2, r2, #0
_0804679E:
	ldrh r0, [r4, #0xc]
	adds r0, r0, r2
	strh r0, [r4, #0xc]
	b _08046836
_080467A6:
	adds r0, r4, #0
	adds r0, #0x3e
	strb r1, [r0]
	strb r1, [r3]
	strb r1, [r5]
	adds r0, #0x1a
	strb r1, [r0]
	strh r1, [r4, #0xc]
	b _08046836
_080467B8:
	cmp r1, #0x57
	bne _08046806
	adds r2, r4, #0
	adds r2, #0x3f
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #0
	bne _080467D8
	adds r0, r4, #0
	adds r0, #0x3e
	strb r1, [r0]
	movs r3, #0xc
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bne _0804681C
	b _080464F2
_080467D8:
	movs r0, #0
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x3e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0x58
	strb r0, [r5]
	movs r2, #0xc0
	lsls r2, r2, #2
	ldr r0, [r4, #0x10]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080467FA
	rsbs r2, r2, #0
_080467FA:
	ldrh r0, [r4, #0xc]
	adds r0, r0, r2
	strh r0, [r4, #0xc]
	bl CreateAmyAttackHeartEffect
	b _08046836
_08046806:
	cmp r1, #0x58
	bne _08046820
	adds r1, r4, #0
	adds r1, #0x3e
	movs r0, #0
	strb r0, [r1]
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0804681C
	b _080464F2
_0804681C:
	movs r0, #4
	b _080464F2
_08046820:
	cmp r1, #0x5d
	bne _08046836
	adds r0, r4, #0
	adds r0, #0x3e
	movs r1, #0
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	strb r1, [r5]
	adds r0, #0x19
	strb r1, [r0]
_08046836:
	movs r1, #0
	ldrsb r1, [r5, r1]
	ldr r2, [sp, #4]
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	beq _0804684E
	adds r0, r4, #0
	mov r1, sl
	bl sub_8046008
	b _0804633E
_0804684E:
	ldr r0, _080468E4 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0804688E
	ldr r1, [r4, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0804687E
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r1, r0
	cmp r1, #0
	bne _08046884
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	cmp r0, #0
	beq _0804687E
	ldr r0, _080468E8 @ =gStageTime
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08046884
_0804687E:
	mov r0, r8
	bl DisplaySprite
_08046884:
	ldr r0, _080468E4 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0804688E
	b _08046AD6
_0804688E:
	ldr r5, _080468EC @ =gMultiSioSend
	ldr r2, _080468F0 @ =gMultiplayerPlayerTasks
	ldr r0, _080468F4 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r5]
	ldr r0, [r4]
	adds r1, r4, #0
	adds r1, #0x50
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r5, #2]
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	strh r0, [r5, #4]
	mov r0, r8
	ldrh r3, [r0, #0xa]
	strh r3, [r5, #6]
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	strb r0, [r5, #0xa]
	ldr r0, _080468E4 @ =gGameMode
	ldrb r0, [r0]
	mov ip, r2
	cmp r0, #6
	bne _080468FC
	ldr r0, _080468F8 @ =gRingCount
	ldrh r0, [r0]
	lsls r0, r0, #8
	b _08046910
	.align 2, 0
_080468E4: .4byte gGameMode
_080468E8: .4byte gStageTime
_080468EC: .4byte gMultiSioSend
_080468F0: .4byte gMultiplayerPlayerTasks
_080468F4: .4byte 0x04000128
_080468F8: .4byte gRingCount
_080468FC:
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08046914
	ldr r0, [r7, #0x5c]
	movs r1, #0xe0
	lsls r1, r1, #0xb
	ands r0, r1
	lsrs r0, r0, #4
_08046910:
	orrs r0, r3
	strh r0, [r5, #6]
_08046914:
	mov r1, r8
	adds r1, #0x20
	ldrb r0, [r4, #0xf]
	lsls r0, r0, #3
	ldrb r1, [r1]
	orrs r0, r1
	strb r0, [r5, #0xb]
	mov r0, r8
	adds r0, #0x22
	ldrb r0, [r0]
	strb r0, [r5, #0xc]
	mov r1, sb
	ldrh r0, [r1]
	lsrs r0, r0, #2
	strb r0, [r5, #0xd]
	mov r2, r8
	ldr r0, [r2, #0x10]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08046946
	ldrh r1, [r5, #8]
	movs r0, #1
	orrs r0, r1
	b _0804694C
_08046946:
	ldrh r1, [r5, #8]
	ldr r0, _08046964 @ =0x0000FFFE
	ands r0, r1
_0804694C:
	strh r0, [r5, #8]
	ldr r1, [r4, #0x10]
	movs r0, #1
	ands r0, r1
	adds r2, r1, #0
	cmp r0, #0
	bne _08046968
	ldrh r1, [r5, #8]
	movs r0, #2
	orrs r0, r1
	b _0804696E
	.align 2, 0
_08046964: .4byte 0x0000FFFE
_08046968:
	ldrh r1, [r5, #8]
	ldr r0, _08046984 @ =0x0000FFFD
	ands r0, r1
_0804696E:
	strh r0, [r5, #8]
	ldr r0, _08046988 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804698C
	ldrh r1, [r5, #8]
	movs r0, #8
	orrs r0, r1
	b _08046992
	.align 2, 0
_08046984: .4byte 0x0000FFFD
_08046988: .4byte gStageFlags
_0804698C:
	ldrh r1, [r5, #8]
	ldr r0, _080469B8 @ =0x0000FFF7
	ands r0, r1
_08046992:
	strh r0, [r5, #8]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _080469AE
	ldr r0, [r7, #0x5c]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080469AE
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	cmp r0, #0
	beq _080469BC
_080469AE:
	ldrh r1, [r5, #8]
	movs r0, #4
	orrs r0, r1
	b _080469C2
	.align 2, 0
_080469B8: .4byte 0x0000FFF7
_080469BC:
	ldrh r1, [r5, #8]
	ldr r0, _080469DC @ =0x0000FFFB
	ands r0, r1
_080469C2:
	strh r0, [r5, #8]
	ldr r0, [r7, #0x5c]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080469E0
	ldrh r1, [r5, #8]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	orrs r0, r1
	b _080469E6
	.align 2, 0
_080469DC: .4byte 0x0000FFFB
_080469E0:
	ldrh r1, [r5, #8]
	ldr r0, _080469FC @ =0x0000FEFF
	ands r0, r1
_080469E6:
	strh r0, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r0, r2
	cmp r0, #0
	beq _08046A00
	ldrh r1, [r5, #8]
	movs r0, #0x40
	orrs r0, r1
	b _08046A06
	.align 2, 0
_080469FC: .4byte 0x0000FEFF
_08046A00:
	ldrh r1, [r5, #8]
	ldr r0, _08046A34 @ =0x0000FFBF
	ands r0, r1
_08046A06:
	strh r0, [r5, #8]
	ldrh r0, [r5, #8]
	ldr r2, _08046A38 @ =0x0000FFCF
	ands r2, r0
	strh r2, [r5, #8]
	ldr r3, _08046A3C @ =gPlayer
	ldr r0, [r3, #0x64]
	ldr r0, [r0, #0x1c]
	movs r1, #0xc0
	lsls r1, r1, #6
	ands r0, r1
	lsrs r1, r0, #8
	orrs r1, r2
	strh r1, [r5, #8]
	adds r0, r4, #0
	adds r0, #0x27
	ldrb r0, [r0]
	cmp r0, #0
	beq _08046A40
	movs r0, #0x80
	orrs r1, r0
	b _08046A44
	.align 2, 0
_08046A34: .4byte 0x0000FFBF
_08046A38: .4byte 0x0000FFCF
_08046A3C: .4byte gPlayer
_08046A40:
	ldr r0, _08046A58 @ =0x0000FF7F
	ands r1, r0
_08046A44:
	strh r1, [r5, #8]
	ldr r0, [sp]
	cmp r0, #0
	beq _08046A5C
	ldrh r1, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	orrs r0, r1
	b _08046A62
	.align 2, 0
_08046A58: .4byte 0x0000FF7F
_08046A5C:
	ldrh r1, [r5, #8]
	ldr r0, _08046AE8 @ =0x0000F7FF
	ands r0, r1
_08046A62:
	strh r0, [r5, #8]
	ldr r6, _08046AEC @ =0x04000128
	ldr r0, [r6]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r2, r7, #0
	adds r2, #0x64
	strb r0, [r2]
	ldr r0, [r3, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08046AC6
	movs r4, #0
	ldr r0, [r6]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #0
	beq _08046AA6
	mov r1, ip
	ldr r0, [r1]
	cmp r0, #0
	beq _08046AC6
_08046A90:
	lsls r0, r4, #2
	add r0, ip
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldr r0, [r3, #0x28]
	cmp r0, r1
	bne _08046AA6
	strb r4, [r2]
_08046AA6:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bhi _08046AC6
	ldr r0, _08046AEC @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, r4
	beq _08046AA6
	lsls r0, r4, #2
	add r0, ip
	ldr r0, [r0]
	cmp r0, #0
	bne _08046A90
_08046AC6:
	ldrh r0, [r5, #8]
	ldr r1, _08046AF0 @ =0x0000F9FF
	ands r1, r0
	strh r1, [r5, #8]
	ldrb r0, [r2]
	lsls r0, r0, #9
	orrs r0, r1
	strh r0, [r5, #8]
_08046AD6:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08046AE8: .4byte 0x0000F7FF
_08046AEC: .4byte 0x04000128
_08046AF0: .4byte 0x0000F9FF

	thumb_func_start sub_8046AF4
sub_8046AF4: @ 0x08046AF4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r6, #0xc
	adds r4, r1, #0
	ldr r0, _08046B2C @ =gCamera
	ldrh r3, [r0]
	ldrh r7, [r0, #2]
	ldr r0, _08046B30 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _08046B3C
	ldr r0, _08046B34 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08046B38 @ =gMultiSioRecv
	adds r1, r1, r0
	ldrh r2, [r1, #2]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r2, r2, r0
	strh r2, [r4, #6]
	ldrh r1, [r1, #4]
	b _08046B4C
	.align 2, 0
_08046B2C: .4byte gCamera
_08046B30: .4byte gGameMode
_08046B34: .4byte 0x04000128
_08046B38: .4byte gMultiSioRecv
_08046B3C:
	ldr r1, [r5]
	asrs r1, r1, #8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r4, #6]
	ldr r1, [r5, #4]
	asrs r1, r1, #8
_08046B4C:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r4, #8]
	adds r1, r6, #0
	adds r1, #0x22
	movs r0, #0x10
	strb r0, [r1]
	ldr r2, [r5, #0x10]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _08046B6A
	movs r0, #8
	strb r0, [r1]
_08046B6A:
	adds r0, r5, #0
	adds r0, #0x59
	movs r3, #0
	ldrsb r3, [r0, r3]
	cmp r3, #1
	beq _08046B78
	b _08046CAE
_08046B78:
	movs r1, #8
	ldrsh r0, [r5, r1]
	movs r7, #0xa
	ldrsh r1, [r5, r7]
	cmp r0, #0
	bne _08046B88
	cmp r1, #0
	beq _08046B98
_08046B88:
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	adds r0, #0x40
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	b _08046BA4
_08046B98:
	ands r2, r3
	movs r0, #0x40
	cmp r2, #0
	beq _08046BA2
	movs r0, #0xc0
_08046BA2:
	adds r1, r0, #0
_08046BA4:
	adds r0, r5, #0
	adds r0, #0x81
	strb r1, [r0]
	subs r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #5
	bne _08046CAE
	lsls r0, r1, #2
	strh r0, [r4]
	ldr r0, [r6, #0x10]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r2, _08046BEC @ =sa2__gUnknown_030054B8
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	movs r0, #0x20
	orrs r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r6, #0x10]
	orrs r0, r1
	str r0, [r6, #0x10]
	ldr r0, [r5, #0x10]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08046BF0
	movs r0, #0xff
	lsls r0, r0, #8
	b _08046BF4
	.align 2, 0
_08046BEC: .4byte sa2__gUnknown_030054B8
_08046BF0:
	movs r0, #0x80
	lsls r0, r0, #1
_08046BF4:
	strh r0, [r4, #2]
	ldr r2, _08046C3C @ =gStageFlags
	ldrh r1, [r2]
	movs r3, #0x80
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08046C0A
	ldrh r0, [r4, #2]
	rsbs r0, r0, #0
	strh r0, [r4, #2]
_08046C0A:
	movs r1, #2
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _08046C18
	ldrh r0, [r4, #6]
	subs r0, #1
	strh r0, [r4, #6]
_08046C18:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08046C48
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #4]
	ldrh r1, [r4]
	adds r1, r1, r0
	ldr r2, _08046C40 @ =0xFFFFFF00
	adds r0, r2, #0
	subs r0, r0, r1
	ldr r1, _08046C44 @ =0x000003FF
	ands r0, r1
	strh r0, [r4]
	b _08046C4E
	.align 2, 0
_08046C3C: .4byte gStageFlags
_08046C40: .4byte 0xFFFFFF00
_08046C44: .4byte 0x000003FF
_08046C48:
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #4]
_08046C4E:
	movs r3, #2
	ldrsh r1, [r4, r3]
	adds r0, r5, #0
	adds r0, #0x54
	movs r7, #0
	ldrsh r0, [r0, r7]
	muls r1, r0, r1
	asrs r1, r1, #8
	movs r0, #4
	ldrsh r2, [r4, r0]
	adds r0, r5, #0
	adds r0, #0x56
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r2, r0
	asrs r0, r0, #8
	strh r1, [r4, #2]
	strh r0, [r4, #4]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	adds r1, r4, #0
	bl TransformSprite
	ldr r1, [r5, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08046CA8
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r1, r0
	cmp r1, #0
	bne _08046CAE
	movs r7, #0x1c
	ldrsh r0, [r5, r7]
	cmp r0, #0
	beq _08046CA8
	ldr r0, _08046CB4 @ =gStageTime
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08046CAE
_08046CA8:
	adds r0, r6, #0
	bl DisplaySprite
_08046CAE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08046CB4: .4byte gStageTime

	thumb_func_start CallSetStageSpawnPos
CallSetStageSpawnPos: @ 0x08046CB8
	push {lr}
	bl SetStageSpawnPos
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8046CC4
sub_8046CC4: @ 0x08046CC4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x60]
	bl TaskDestroy
	movs r0, #0
	str r0, [r4, #0x60]
	adds r4, #0x3c
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _08046CE4
	bl DestroyBrakingDustEffectRelatedTask
	bl DestroyRingsScatterTask
_08046CE4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Player_TransitionCancelFlyingAndBoost
Player_TransitionCancelFlyingAndBoost: @ 0x08046CEC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0xe0
	ands r0, r1
	ldr r1, _08046D44 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	ldr r0, [r4, #0x10]
	ldr r1, _08046D48 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r4, #0x10]
	adds r5, r4, #0
	adds r5, #0x59
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #1
	bne _08046D2C
	movs r0, #0x78
	bl m4aSongNumStop
_08046D2C:
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #3
	bne _08046D3C
	ldr r0, [r4, #0x10]
	ldr r1, _08046D4C @ =0xF9FFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
_08046D3C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08046D44: .4byte 0xFFFFFBFF
_08046D48: .4byte 0xFFFF7FFF
_08046D4C: .4byte 0xF9FFFFFF

	thumb_func_start sub_8046D50
sub_8046D50: @ 0x08046D50
	push {r4, lr}
	sub sp, #8
	adds r4, r1, #0
	cmp r4, #0
	bne _08046D5C
	mov r4, sp
_08046D5C:
	cmp r2, #0
	bne _08046D62
	add r2, sp, #4
_08046D62:
	adds r1, r4, #0
	bl sa2__sub_802195C
	adds r3, r0, #0
	ldrb r2, [r4]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08046D78
	movs r0, #0
	b _08046D8A
_08046D78:
	ldr r0, _08046D98 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08046D8C
	movs r0, #0x80
	rsbs r0, r0, #0
	subs r0, r0, r2
_08046D8A:
	strb r0, [r4]
_08046D8C:
	adds r0, r3, #0
	add sp, #8
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08046D98: .4byte gStageFlags

	thumb_func_start sub_8046D9C
sub_8046D9C: @ 0x08046D9C
	push {r4, lr}
	sub sp, #8
	adds r4, r1, #0
	cmp r4, #0
	bne _08046DA8
	mov r4, sp
_08046DA8:
	cmp r2, #0
	bne _08046DAE
	add r2, sp, #4
_08046DAE:
	adds r1, r4, #0
	bl sa2__sub_8021A34
	adds r3, r0, #0
	ldrb r2, [r4]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08046DC4
	movs r0, #0
	b _08046DD6
_08046DC4:
	ldr r0, _08046DE4 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08046DD8
	movs r0, #0x80
	rsbs r0, r0, #0
	subs r0, r0, r2
_08046DD6:
	strb r0, [r4]
_08046DD8:
	adds r0, r3, #0
	add sp, #8
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08046DE4: .4byte gStageFlags

	thumb_func_start sa2__sub_8029AC0
sa2__sub_8029AC0: @ 0x08046DE8
	push {r4, lr}
	sub sp, #8
	adds r4, r1, #0
	cmp r4, #0
	bne _08046DF4
	mov r4, sp
_08046DF4:
	cmp r2, #0
	bne _08046DFA
	add r2, sp, #4
_08046DFA:
	adds r1, r4, #0
	bl sa2__sub_8021B08
	adds r3, r0, #0
	ldrb r2, [r4]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08046E10
	movs r0, #0
	b _08046E22
_08046E10:
	ldr r0, _08046E30 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08046E24
	movs r0, #0x80
	rsbs r0, r0, #0
	subs r0, r0, r2
_08046E22:
	strb r0, [r4]
_08046E24:
	adds r0, r3, #0
	add sp, #8
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08046E30: .4byte gStageFlags

	thumb_func_start sa2__sub_8029B0C
sa2__sub_8029B0C: @ 0x08046E34
	push {r4, lr}
	sub sp, #8
	adds r4, r1, #0
	cmp r4, #0
	bne _08046E40
	mov r4, sp
_08046E40:
	cmp r2, #0
	bne _08046E46
	add r2, sp, #4
_08046E46:
	adds r1, r4, #0
	bl sa2__sub_8029BB8
	adds r3, r0, #0
	ldrb r2, [r4]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08046E5C
	movs r0, #0
	b _08046E6E
_08046E5C:
	ldr r0, _08046E7C @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08046E70
	movs r0, #0x80
	rsbs r0, r0, #0
	subs r0, r0, r2
_08046E6E:
	strb r0, [r4]
_08046E70:
	adds r0, r3, #0
	add sp, #8
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08046E7C: .4byte gStageFlags

	thumb_func_start sub_8046E80
sub_8046E80: @ 0x08046E80
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	ldr r0, _08046E9C @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08046EA0
	adds r0, r3, #0
	adds r1, r4, #0
	bl sa2__sub_8029B0C
	b _08046EA8
	.align 2, 0
_08046E9C: .4byte gStageFlags
_08046EA0:
	adds r0, r3, #0
	adds r1, r4, #0
	bl sa2__sub_8029AC0
_08046EA8:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8046EB0
sub_8046EB0: @ 0x08046EB0
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	ldr r0, _08046ECC @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08046ED0
	adds r0, r3, #0
	adds r1, r4, #0
	bl sa2__sub_8029AC0
	b _08046ED8
	.align 2, 0
_08046ECC: .4byte gStageFlags
_08046ED0:
	adds r0, r3, #0
	adds r1, r4, #0
	bl sa2__sub_8029B0C
_08046ED8:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sa2__sub_8029BB8
sa2__sub_8029BB8: @ 0x08046EE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r4, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	cmp r6, #0
	bne _08046EF8
	add r6, sp, #8
_08046EF8:
	cmp r7, #0
	bne _08046EFE
	add r7, sp, #0xc
_08046EFE:
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	movs r1, #0xf
	ldrsb r1, [r4, r1]
	adds r3, r0, r1
	ldr r0, [r4]
	asrs r0, r0, #8
	subs r0, #2
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	subs r1, r0, r1
	movs r0, #0x27
	adds r0, r0, r4
	mov r8, r0
	ldrb r2, [r0]
	movs r5, #0xa
	ldrsh r0, [r4, r5]
	cmp r0, #0
	bge _08046F28
	movs r0, #0x80
	orrs r2, r0
_08046F28:
	movs r0, #9
	add r0, sp
	mov sb, r0
	str r0, [sp]
	ldr r5, _08046F8C @ =sa2__sub_801EE64
	mov sl, r5
	str r5, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	bl sa2__sub_801E4E4
	adds r5, r0, #0
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	movs r1, #0xf
	ldrsb r1, [r4, r1]
	adds r0, r0, r1
	mov ip, r0
	ldr r0, [r4]
	asrs r0, r0, #8
	adds r0, #2
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	adds r1, r0, r1
	mov r0, r8
	ldrb r2, [r0]
	movs r3, #0xa
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge _08046F68
	movs r0, #0x80
	orrs r2, r0
_08046F68:
	mov r4, sp
	adds r4, #0xa
	str r4, [sp]
	mov r0, sl
	str r0, [sp, #4]
	mov r0, ip
	movs r3, #8
	bl sa2__sub_801E4E4
	adds r1, r0, #0
	cmp r5, r1
	bge _08046F90
	adds r2, r5, #0
	mov r3, sb
	ldrb r0, [r3]
	strb r0, [r6]
	str r1, [r7]
	b _08046F98
	.align 2, 0
_08046F8C: .4byte sa2__sub_801EE64
_08046F90:
	adds r2, r1, #0
	ldrb r0, [r4]
	strb r0, [r6]
	str r5, [r7]
_08046F98:
	adds r0, r2, #0
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Player_8046FAC
Player_8046FAC: @ 0x08046FAC
	push {r4, lr}
	adds r2, r0, #0
	ldrb r3, [r2, #0x14]
	adds r0, r3, #0
	adds r0, #0x60
	movs r1, #0xff
	ands r0, r1
	cmp r0, #0xbf
	bgt _08046FDE
	ldr r1, _08046FE4 @ =gSineTable
	lsls r0, r3, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r0, r1, #1
	adds r0, r0, r1
	asrs r3, r0, #5
	ldrh r1, [r2, #0xc]
	movs r4, #0xc
	ldrsh r0, [r2, r4]
	cmp r0, #0
	beq _08046FDE
	adds r0, r1, r3
	strh r0, [r2, #0xc]
_08046FDE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08046FE4: .4byte gSineTable

	thumb_func_start sub_8046FE8
sub_8046FE8: @ 0x08046FE8
	adds r3, r0, #0
	ldrb r2, [r3, #0x14]
	adds r0, r2, #0
	adds r0, #0x60
	movs r1, #0xff
	ands r0, r1
	cmp r0, #0xbf
	bgt _08047010
	ldr r1, _08047014 @ =gSineTable
	lsls r0, r2, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r0, r1, #2
	adds r0, r0, r1
	asrs r0, r0, #5
	ldrh r1, [r3, #0xc]
	adds r0, r0, r1
	strh r0, [r3, #0xc]
_08047010:
	bx lr
	.align 2, 0
_08047014: .4byte gSineTable

	thumb_func_start sub_8047018
sub_8047018: @ 0x08047018
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xc
	ldrsh r2, [r4, r0]
	ldrb r3, [r4, #0x14]
	adds r0, r3, #0
	adds r0, #0x60
	movs r1, #0xff
	ands r0, r1
	cmp r0, #0xbf
	bgt _0804705E
	cmp r2, #0
	beq _0804705E
	ldr r1, _08047050 @ =gSineTable
	lsls r0, r3, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	asrs r1, r0, #8
	cmp r2, #0
	ble _08047054
	cmp r1, #0
	bgt _0804705A
	b _08047058
	.align 2, 0
_08047050: .4byte gSineTable
_08047054:
	cmp r1, #0
	blt _0804705A
_08047058:
	asrs r1, r0, #0xa
_0804705A:
	adds r2, r2, r1
	strh r2, [r4, #0xc]
_0804705E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8047064
sub_8047064: @ 0x08047064
	adds r2, r0, #0
	movs r1, #0xc
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bgt _08047078
	ldr r0, [r2, #0x10]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x10]
	b _08047084
_08047078:
	subs r0, #0x18
	cmp r0, #0
	bge _08047082
	movs r0, #0x60
	rsbs r0, r0, #0
_08047082:
	strh r0, [r2, #0xc]
_08047084:
	bx lr
	.align 2, 0

@ Unused / Inline ?
	thumb_func_start Player_8047088
Player_8047088: @ 0x08047088
	adds r2, r0, #0
	movs r1, #0xc
	ldrsh r0, [r2, r1]
	cmp r0, #0
	blt _0804709E
	ldr r0, [r2, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x10]
	b _080470A8
_0804709E:
	adds r0, #0x18
	cmp r0, #0
	ble _080470A6
	movs r0, #0x60
_080470A6:
	strh r0, [r2, #0xc]
_080470A8:
	bx lr
	.align 2, 0

	thumb_func_start Player_80470AC
Player_80470AC: @ 0x080470AC
	push {r4, r5, lr}
	movs r1, #0xc
	ldrsh r4, [r0, r1]
	ldr r3, _080470E4 @ =gSineTable
	ldrb r2, [r0, #0x14]
	lsls r1, r2, #3
	movs r5, #0x80
	lsls r5, r5, #2
	adds r1, r1, r5
	adds r1, r1, r3
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	muls r1, r4, r1
	asrs r1, r1, #8
	strh r1, [r0, #8]
	lsls r2, r2, #3
	adds r2, r2, r3
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	muls r1, r4, r1
	asrs r1, r1, #8
	strh r1, [r0, #0xa]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080470E4: .4byte gSineTable

@ Player_Walk?
@ Input:
    @ R0 = Player
	thumb_func_start Player_80470E8
Player_80470E8: @ 0x080470E8
	adds r2, r0, #0
	movs r0, #8
	ldrsh r1, [r2, r0]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldr r3, _08047120 @ =gStageFlags
	ldr r1, _08047124 @ =sa2__gUnknown_0300544C
	ldrh r0, [r3]
	ldrh r1, [r1]
	eors r0, r1
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804710C
	ldrh r0, [r2, #0xa]
	rsbs r0, r0, #0
	strh r0, [r2, #0xa]
_0804710C:
	ldrh r1, [r3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08047128
	movs r0, #0xa
	ldrsh r1, [r2, r0]
	ldr r0, [r2, #4]
	subs r0, r0, r1
	b _08047130
	.align 2, 0
_08047120: .4byte gStageFlags
_08047124: .4byte sa2__gUnknown_0300544C
_08047128:
	movs r0, #0xa
	ldrsh r1, [r2, r0]
	ldr r0, [r2, #4]
	adds r0, r0, r1
_08047130:
	str r0, [r2, #4]
	bx lr

	thumb_func_start Player_8047134
Player_8047134: @ 0x08047134
	adds r2, r0, #0
	ldr r0, [r2, #0x10]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08047146
	ldrh r0, [r2, #0xa]
	adds r0, #0x2a
	b _0804714A
_08047146:
	ldrh r0, [r2, #0xa]
	adds r0, #0xc
_0804714A:
	strh r0, [r2, #0xa]
	bx lr
	.align 2, 0

	thumb_func_start sub_8047150
sub_8047150: @ 0x08047150
	ldr r3, _08047178 @ =gCamera
	ldr r2, [r0, #4]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	blt _0804718A
	ldr r0, _0804717C @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08047180
	movs r1, #0x16
	ldrsh r0, [r3, r1]
	lsls r0, r0, #8
	subs r0, #1
	cmp r2, r0
	blt _0804718A
_08047172:
	movs r0, #1
	b _0804718C
	.align 2, 0
_08047178: .4byte gCamera
_0804717C: .4byte gStageFlags
_08047180:
	movs r1, #0x14
	ldrsh r0, [r3, r1]
	lsls r0, r0, #8
	cmp r2, r0
	ble _08047172
_0804718A:
	movs r0, #0
_0804718C:
	bx lr
	.align 2, 0

	thumb_func_start sub_8047190
sub_8047190: @ 0x08047190
	ldr r3, _080471B8 @ =gCamera
	ldr r2, [r0, #4]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	blt _080471D0
	ldr r0, _080471BC @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080471C4
	movs r1, #2
	ldrsh r0, [r3, r1]
	lsls r0, r0, #8
	ldr r1, _080471C0 @ =0x0000EFFF
	adds r0, r0, r1
	cmp r2, r0
	blt _080471D0
_080471B4:
	movs r0, #1
	b _080471D2
	.align 2, 0
_080471B8: .4byte gCamera
_080471BC: .4byte gStageFlags
_080471C0: .4byte 0x0000EFFF
_080471C4:
	movs r1, #2
	ldrsh r0, [r3, r1]
	subs r0, #0x50
	lsls r0, r0, #8
	cmp r2, r0
	ble _080471B4
_080471D0:
	movs r0, #0
_080471D2:
	bx lr

	thumb_func_start Player_80471D4
Player_80471D4: @ 0x080471D4
	push {r4, lr}
	adds r2, r0, #0
	ldr r3, [r2, #0x10]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r3
	cmp r0, #0
	bne _0804721A
	ldrh r0, [r2, #0x1a]
	movs r1, #0x1a
	ldrsh r4, [r2, r1]
	cmp r4, #0
	beq _080471F2
	subs r0, #1
	b _08047218
_080471F2:
	ldrb r0, [r2, #0x14]
	adds r0, #0x20
	movs r1, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _0804721A
	movs r0, #0xc
	ldrsh r1, [r2, r0]
	cmp r1, #0
	bge _08047208
	rsbs r1, r1, #0
_08047208:
	ldr r0, _08047220 @ =0x000001DF
	cmp r1, r0
	bgt _0804721A
	strh r4, [r2, #0xc]
	movs r0, #2
	orrs r3, r0
	str r3, [r2, #0x10]
	movs r0, #0x1e
_08047218:
	strh r0, [r2, #0x1a]
_0804721A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08047220: .4byte 0x000001DF

	thumb_func_start Player_8047224
Player_8047224: @ 0x08047224
	adds r2, r0, #0
	movs r1, #0x14
	ldrsb r1, [r2, r1]
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x17
	bne _08047250
	ldr r0, [r2, #0x10]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08047248
	ldrb r0, [r2, #0x14]
	subs r0, #4
	strb r0, [r2, #0x14]
	b _0804726A
_08047248:
	ldrb r0, [r2, #0x14]
	adds r0, #4
	strb r0, [r2, #0x14]
	b _0804726A
_08047250:
	cmp r1, #0
	bge _0804725C
	adds r1, #2
	cmp r1, #0
	ble _08047268
	b _08047266
_0804725C:
	cmp r1, #0
	ble _08047268
	subs r1, #2
	cmp r1, #0
	bge _08047268
_08047266:
	movs r1, #0
_08047268:
	strb r1, [r2, #0x14]
_0804726A:
	bx lr

	thumb_func_start Player_804726C
Player_804726C: @ 0x0804726C
	adds r1, r0, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0804727E
	movs r0, #0x78
	strb r0, [r1, #0x15]
_0804727E:
	bx lr

	thumb_func_start Player_8047280
Player_8047280: @ 0x08047280
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080472A8
	ldr r2, _0804729C @ =gCamera
	ldrh r0, [r2, #0x22]
	movs r3, #0x22
	ldrsh r1, [r2, r3]
	cmp r1, #0
	ble _080472A0
	subs r0, #2
	b _080472A6
	.align 2, 0
_0804729C: .4byte gCamera
_080472A0:
	cmp r1, #0
	bge _080472A8
	adds r0, #2
_080472A6:
	strh r0, [r2, #0x22]
_080472A8:
	bx lr
	.align 2, 0

	thumb_func_start sub_80472AC
sub_80472AC: @ 0x080472AC
	adds r0, #0x46
	movs r1, #0xb4
	lsls r1, r1, #1
	strh r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_80472B8
sub_80472B8: @ 0x080472B8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8044434
	cmp r0, #0
	bne _08047320
	adds r0, r4, #0
	bl sub_80449D8
	adds r0, r4, #0
	bl Player_8043EC0
	movs r0, #8
	ldrsh r1, [r4, r0]
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	ldr r2, _08047308 @ =gStageFlags
	ldr r1, _0804730C @ =sa2__gUnknown_0300544C
	ldrh r0, [r2]
	ldrh r1, [r1]
	eors r0, r1
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080472F2
	ldrh r0, [r4, #0xa]
	rsbs r0, r0, #0
	strh r0, [r4, #0xa]
_080472F2:
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08047310
	movs r0, #0xa
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #4]
	subs r0, r0, r1
	b _08047318
	.align 2, 0
_08047308: .4byte gStageFlags
_0804730C: .4byte sa2__gUnknown_0300544C
_08047310:
	movs r0, #0xa
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #4]
	adds r0, r0, r1
_08047318:
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sa2__sub_8022D6C
_08047320:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8047328
sub_8047328: @ 0x08047328
	push {lr}
	adds r1, r0, #0
	adds r2, r1, #0
	adds r2, #0x5b
	movs r0, #0x3c
	strb r0, [r2]
	subs r2, #1
	movs r0, #0x1e
	strb r0, [r2]
	adds r0, r1, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0804734E
	movs r0, #0x1b
	bl m4aSongNumStop
_0804734E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start TaskDestructor_Player
TaskDestructor_Player: @ 0x08047354
	push {r4, lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r4, _080473A4 @ =gPlayer
	cmp r0, #0
	beq _0804736C
	ldr r4, _080473A8 @ =gPartner
_0804736C:
	movs r0, #0
	str r0, [r4, #0x60]
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08047386
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0x10]
	bl VramFree
_08047386:
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _0804739C
	ldr r0, [r4, #0x68]
	ldr r0, [r0, #0x10]
	bl VramFree
_0804739C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080473A4: .4byte gPlayer
_080473A8: .4byte gPartner

	thumb_func_start Player_Sonic_80473AC
Player_Sonic_80473AC: @ 0x080473AC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x10]
	movs r0, #6
	ands r0, r1
	cmp r0, #2
	beq _08047444
	cmp r0, #2
	bhi _080473C4
	cmp r0, #0
	beq _080473CE
	b _080474FC
_080473C4:
	cmp r0, #4
	beq _0804747C
	cmp r0, #6
	beq _080474B8
	b _080474FC
_080473CE:
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r1, r0
	cmp r1, #0
	beq _080473E0
	adds r0, r4, #0
	bl sub_80472B8
	b _080474FC
_080473E0:
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08047428
	ldr r0, _08047424 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _08047402
	adds r0, r4, #0
	bl sub_8047668
	cmp r0, #0
	beq _08047402
	b _080474FC
_08047402:
	adds r0, r4, #0
	bl sub_80440A4
	cmp r0, #0
	bne _080474FC
	adds r0, r4, #0
	bl sub_8044250
	cmp r0, #0
	bne _080474FC
	adds r0, r4, #0
	bl Player_8046FAC
	adds r0, r4, #0
	bl sub_8044F7C
	b _0804749E
	.align 2, 0
_08047424: .4byte gGameMode
_08047428:
	adds r0, r4, #0
	bl Player_8046FAC
	ldr r0, _08047440 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _0804749E
	adds r0, r4, #0
	bl sub_8047668
	b _0804749E
	.align 2, 0
_08047440: .4byte gGameMode
_08047444:
	adds r0, r4, #0
	bl Player_804726C
	adds r0, r4, #0
	bl Player_8047280
	adds r0, r4, #0
	bl Player_8044670
	adds r0, r4, #0
	bl Player_80445A0
	adds r0, r4, #0
	bl Player_8043EC0
	adds r0, r4, #0
	bl Player_80470E8
	adds r0, r4, #0
	bl Player_8047134
	adds r0, r4, #0
	bl Player_8047224
	adds r0, r4, #0
	bl sa2__sub_8022190
	b _080474FC
_0804747C:
	adds r0, r4, #0
	bl Player_804726C
	adds r0, r4, #0
	bl Player_8047280
	adds r0, r4, #0
	bl sub_8044250
	cmp r0, #0
	bne _080474FC
	adds r0, r4, #0
	bl sub_8047018
	adds r0, r4, #0
	bl sub_8043DDC
_0804749E:
	adds r0, r4, #0
	bl Player_8043EC0
	adds r0, r4, #0
	bl Player_80470E8
	adds r0, r4, #0
	bl sa2__sub_8022D6C
	adds r0, r4, #0
	bl Player_80471D4
	b _080474FC
_080474B8:
	adds r0, r4, #0
	bl Player_804726C
	adds r0, r4, #0
	bl Player_8047280
	ldr r0, _08047504 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _080474D2
	adds r0, r4, #0
	bl sub_8047714
_080474D2:
	adds r0, r4, #0
	bl Player_8044670
	adds r0, r4, #0
	bl Player_80445A0
	adds r0, r4, #0
	bl Player_8043EC0
	adds r0, r4, #0
	bl Player_80470E8
	adds r0, r4, #0
	bl Player_8047134
	adds r0, r4, #0
	bl Player_8047224
	adds r0, r4, #0
	bl sa2__sub_8022190
_080474FC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08047504: .4byte gGameMode

	thumb_func_start sub_8047508
sub_8047508: @ 0x08047508
	push {lr}
	adds r2, r0, #0
	ldr r3, [r2, #0x10]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r3
	cmp r0, #0
	bne _08047568
	ldrb r0, [r2, #0x14]
	adds r0, #0x40
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08047568
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	bne _08047568
	ldr r0, _08047544 @ =gUnknown_030060E0
	ldrh r1, [r2, #0x3a]
	ldrh r0, [r0, #2]
	ands r0, r1
	cmp r0, #0
	beq _08047568
	movs r0, #1
	ands r3, r0
	cmp r3, #0
	beq _08047548
	movs r0, #0xfe
	lsls r0, r0, #8
	b _0804754C
	.align 2, 0
_08047544: .4byte gUnknown_030060E0
_08047548:
	movs r0, #0x80
	lsls r0, r0, #2
_0804754C:
	strh r0, [r2, #0xc]
	movs r0, #0
	strh r0, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x3e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r1, #2
	movs r0, #0x2d
	strb r0, [r1]
	movs r0, #0x6d
	bl m4aSongNumStart
_08047568:
	pop {r0}
	bx r0

	thumb_func_start sub_804756C
sub_804756C: @ 0x0804756C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _08047580
	subs r0, #8
	cmp r0, #0
	bge _0804758C
	b _0804758A
_08047580:
	cmp r0, #0
	bge _0804758E
	adds r0, #8
	cmp r0, #0
	ble _0804758C
_0804758A:
	movs r0, #0
_0804758C:
	strh r0, [r4, #0xc]
_0804758E:
	adds r0, r4, #0
	bl Player_80470AC
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bne _080475A6
	adds r0, r4, #0
	adds r0, #0x40
	strb r1, [r0]
	subs r0, #2
	strb r1, [r0]
_080475A6:
	ldr r0, _080475C4 @ =gUnknown_030060E0
	ldrh r1, [r4, #0x3a]
	ldrh r0, [r0, #2]
	ands r0, r1
	cmp r0, #0
	beq _080475EE
	ldr r0, [r4, #0x10]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080475C8
	movs r0, #0xfd
	lsls r0, r0, #8
	b _080475CC
	.align 2, 0
_080475C4: .4byte gUnknown_030060E0
_080475C8:
	movs r0, #0xc0
	lsls r0, r0, #2
_080475CC:
	strh r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x3e
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x3f
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x2e
	strb r0, [r1]
	movs r0, #0x79
	bl m4aSongNumStart
_080475EE:
	adds r0, r4, #0
	bl sa2__sub_80231C0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80475FC
sub_80475FC: @ 0x080475FC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _08047610
	subs r0, #8
	cmp r0, #0
	bge _0804761C
	b _0804761A
_08047610:
	cmp r0, #0
	bge _0804761E
	adds r0, #8
	cmp r0, #0
	ble _0804761C
_0804761A:
	movs r0, #0
_0804761C:
	strh r0, [r4, #0xc]
_0804761E:
	adds r0, r4, #0
	bl Player_80470AC
	adds r2, r4, #0
	adds r2, #0x3f
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne _08047656
	ldr r3, _08047664 @ =gUnknown_030060E0
	ldrh r1, [r4, #0x3a]
	ldrh r0, [r3, #2]
	ands r0, r1
	cmp r0, #0
	beq _08047640
	movs r0, #1
	strb r0, [r2]
_08047640:
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne _08047656
	ldrh r1, [r4, #0x3a]
	ldrh r0, [r3]
	ands r0, r1
	cmp r0, #0
	beq _08047656
	movs r0, #2
	strb r0, [r2]
_08047656:
	adds r0, r4, #0
	bl sa2__sub_80231C0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08047664: .4byte gUnknown_030060E0

	thumb_func_start sub_8047668
sub_8047668: @ 0x08047668
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	bhi _0804770A
	lsls r0, r0, #2
	ldr r1, _08047684 @ =_08047688
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08047684: .4byte _08047688
_08047688: @ jump table
	.4byte _0804769C @ case 0
	.4byte _080476A4 @ case 1
	.4byte _080476AC @ case 2
	.4byte _080476B4 @ case 3
	.4byte _080476FE @ case 4
_0804769C:
	adds r0, r4, #0
	bl sub_8047508
	b _080476FE
_080476A4:
	adds r0, r4, #0
	bl sub_804756C
	b _080476FE
_080476AC:
	adds r0, r4, #0
	bl sub_80475FC
	b _080476FE
_080476B4:
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _080476C4
	subs r0, #0x20
	cmp r0, #0
	bge _080476D0
	b _080476CE
_080476C4:
	cmp r0, #0
	bge _080476D2
	adds r0, #0x20
	cmp r0, #0
	ble _080476D0
_080476CE:
	movs r0, #0
_080476D0:
	strh r0, [r4, #0xc]
_080476D2:
	adds r0, r4, #0
	bl Player_80470AC
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	adds r5, r4, #0
	adds r5, #0x3e
	cmp r0, #0
	bne _080476F2
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x30
	strb r0, [r1]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
_080476F2:
	adds r0, r4, #0
	bl sa2__sub_80231C0
	movs r0, #0
	ldrsb r0, [r5, r0]
	b _0804770C
_080476FE:
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	b _0804770C
_0804770A:
	movs r0, #0
_0804770C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8047714
sub_8047714: @ 0x08047714
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x3d
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bne _0804776E
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0804776E
	movs r0, #0xa
	bl sub_804D060
	adds r5, r0, #0
	cmp r5, #0
	beq _0804776E
	movs r0, #2
	strb r0, [r6]
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x2c
	strb r0, [r1]
	movs r0, #0x70
	bl m4aSongNumStart
	cmp r5, #0
	ble _0804775C
	ldr r0, [r4, #0x2c]
	asrs r0, r0, #2
	ldrh r1, [r4, #8]
	adds r0, r0, r1
	b _08047768
_0804775C:
	cmp r5, #0
	bge _0804776A
	ldr r1, [r4, #0x2c]
	asrs r1, r1, #2
	ldrh r0, [r4, #8]
	subs r0, r0, r1
_08047768:
	strh r0, [r4, #8]
_0804776A:
	movs r0, #0
	strh r0, [r4, #0xa]
_0804776E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8047774
sub_8047774: @ 0x08047774
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080477D4
	ldr r0, _080477D0 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _08047796
	adds r0, r4, #0
	bl sub_8047668
	cmp r0, #0
	bne _08047800
_08047796:
	adds r0, r4, #0
	bl sub_80440A4
	cmp r0, #0
	bne _08047800
	adds r0, r4, #0
	bl sub_8044250
	cmp r0, #0
	bne _08047800
	adds r0, r4, #0
	bl Player_8046FAC
	adds r0, r4, #0
	bl sub_8044F7C
	adds r0, r4, #0
	bl Player_8043EC0
	adds r0, r4, #0
	bl Player_80470E8
	adds r0, r4, #0
	bl sa2__sub_8022D6C
	adds r0, r4, #0
	bl Player_80471D4
	b _08047800
	.align 2, 0
_080477D0: .4byte gGameMode
_080477D4:
	adds r0, r4, #0
	bl Player_8046FAC
	ldr r0, _08047808 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _080477E8
	adds r0, r4, #0
	bl sub_8047668
_080477E8:
	adds r0, r4, #0
	bl Player_8043EC0
	adds r0, r4, #0
	bl Player_80470E8
	adds r0, r4, #0
	bl sa2__sub_8022D6C
	adds r0, r4, #0
	bl Player_80471D4
_08047800:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08047808: .4byte gGameMode

	thumb_func_start sub_804780C
sub_804780C: @ 0x0804780C
	push {r4, lr}
	adds r4, r0, #0
	bl Player_804726C
	adds r0, r4, #0
	bl Player_8047280
	adds r0, r4, #0
	bl Player_8044670
	adds r0, r4, #0
	bl Player_80445A0
	adds r0, r4, #0
	bl Player_8043EC0
	adds r0, r4, #0
	bl Player_80470E8
	adds r0, r4, #0
	bl Player_8047134
	adds r0, r4, #0
	bl Player_8047224
	adds r0, r4, #0
	bl sa2__sub_8022190
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_804784C
sub_804784C: @ 0x0804784C
	push {r4, lr}
	adds r4, r0, #0
	bl Player_804726C
	adds r0, r4, #0
	bl Player_8047280
	adds r0, r4, #0
	bl sub_8044250
	cmp r0, #0
	bne _08047888
	adds r0, r4, #0
	bl sub_8047018
	adds r0, r4, #0
	bl sub_8043DDC
	adds r0, r4, #0
	bl Player_8043EC0
	adds r0, r4, #0
	bl Player_80470E8
	adds r0, r4, #0
	bl sa2__sub_8022D6C
	adds r0, r4, #0
	bl Player_80471D4
_08047888:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8047890
sub_8047890: @ 0x08047890
	push {r4, lr}
	adds r4, r0, #0
	bl Player_804726C
	adds r0, r4, #0
	bl Player_8047280
	ldr r0, _080478DC @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _080478AC
	adds r0, r4, #0
	bl sub_8047714
_080478AC:
	adds r0, r4, #0
	bl Player_8044670
	adds r0, r4, #0
	bl Player_80445A0
	adds r0, r4, #0
	bl Player_8043EC0
	adds r0, r4, #0
	bl Player_80470E8
	adds r0, r4, #0
	bl Player_8047134
	adds r0, r4, #0
	bl Player_8047224
	adds r0, r4, #0
	bl sa2__sub_8022190
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080478DC: .4byte gGameMode

	thumb_func_start sub_80478E0
sub_80478E0: @ 0x080478E0
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x2b
	strb r0, [r1]
	movs r0, #0x71
	bl m4aSongNumStart
	adds r0, r4, #0
	bl sub_804792C
	ldrh r0, [r0, #6]
	ldr r1, _08047914 @ =0x03000018
	adds r2, r0, r1
	ldr r0, [r4, #0x10]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08047918
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _0804791E
	.align 2, 0
_08047914: .4byte 0x03000018
_08047918:
	ldr r0, [r2, #0x10]
	ldr r1, _08047928 @ =0xFFFFFBFF
	ands r0, r1
_0804791E:
	str r0, [r2, #0x10]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08047928: .4byte 0xFFFFFBFF

	thumb_func_start sub_804792C
sub_804792C: @ 0x0804792C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r0, #0x3c
	movs r3, #0
	ldrsb r3, [r0, r3]
	ldr r0, _0804797C @ =Task_StageGoalBonusPoints
	str r0, [sp]
	ldr r0, _08047980 @ =TaskDestructor_MultiplayerSpriteTask
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0xa0
	bl CreateMultiplayerSpriteTask
	adds r6, r0, #0
	ldrh r4, [r6, #6]
	ldr r0, _08047984 @ =0x03000018
	adds r5, r4, r0
	movs r0, #0x10
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x32
	strh r0, [r5, #0xa]
	ldr r0, _08047988 @ =0x03000038
	adds r4, r4, r0
	movs r0, #1
	strb r0, [r4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	adds r0, r6, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0804797C: .4byte Task_StageGoalBonusPoints
_08047980: .4byte TaskDestructor_MultiplayerSpriteTask
_08047984: .4byte 0x03000018
_08047988: .4byte 0x03000038

    thumb_func_start sub_804798C
sub_804798C:
    bx lr
    .align 2 , 0

	thumb_func_start sub_8047990
sub_8047990: @ 0x08047990
	push {lr}
	adds r2, r0, #0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	bne _080479A6
	adds r1, r2, #0
	adds r1, #0x40
	movs r0, #0x37
	strb r0, [r1]
	b _080479F0
_080479A6:
	ldr r1, [r2, #0x10]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080479F8
	ldrh r3, [r2, #0x38]
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	beq _080479C2
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080479D2
_080479C2:
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0
	beq _080479DA
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080479DA
_080479D2:
	adds r1, r2, #0
	adds r1, #0x40
	movs r0, #0x3a
	b _080479E8
_080479DA:
	adds r1, r2, #0
	adds r1, #0x40
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0x36
	beq _080479EA
	movs r0, #0x39
_080479E8:
	strb r0, [r1]
_080479EA:
	adds r0, r2, #0
	bl RandomlySpawnAirBubbles
_080479F0:
	movs r0, #0x78
	bl m4aSongNumStop
	b _08047A38
_080479F8:
	ldrh r3, [r2, #0x38]
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	beq _08047A0A
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08047A1A
_08047A0A:
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0
	beq _08047A22
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08047A22
_08047A1A:
	adds r1, r2, #0
	adds r1, #0x40
	movs r0, #0x36
	b _08047A30
_08047A22:
	adds r1, r2, #0
	adds r1, #0x40
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0x36
	beq _08047A32
	movs r0, #0x35
_08047A30:
	strb r0, [r1]
_08047A32:
	movs r0, #0x78
	bl m4aSongNumStartOrChange
_08047A38:
	pop {r0}
	bx r0

	thumb_func_start sub_8047A3C
sub_8047A3C: @ 0x08047A3C
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, _08047A90 @ =gStageTime
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08047A5A
	adds r1, r2, #0
	adds r1, #0x84
	ldr r0, [r1]
	cmp r0, #0
	beq _08047A5A
	subs r0, #1
	str r0, [r1]
_08047A5A:
	adds r3, r2, #0
	adds r3, #0x3d
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #1
	beq _08047A94
	ldrh r4, [r2, #0xa]
	movs r0, #0xa
	ldrsh r1, [r2, r0]
	movs r0, #0xc0
	rsbs r0, r0, #0
	cmp r1, r0
	blt _08047A88
	adds r0, r4, #0
	subs r0, #0x18
	strh r0, [r2, #0xa]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x20
	bne _08047AD6
_08047A88:
	movs r0, #1
	strb r0, [r3]
	b _08047AD6
	.align 2, 0
_08047A90: .4byte gStageTime
_08047A94:
	ldr r0, _08047ACC @ =gUnknown_030060E0
	ldrh r1, [r2, #0x3a]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _08047ABA
	movs r0, #0xa
	ldrsh r1, [r2, r0]
	movs r0, #0xc0
	rsbs r0, r0, #0
	cmp r1, r0
	blt _08047ABA
	adds r0, r2, #0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	beq _08047ABA
	movs r0, #2
	strb r0, [r3]
_08047ABA:
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08047AD0
	ldrh r0, [r2, #0xa]
	adds r0, #0x10
	b _08047AD4
	.align 2, 0
_08047ACC: .4byte gUnknown_030060E0
_08047AD0:
	ldrh r0, [r2, #0xa]
	adds r0, #8
_08047AD4:
	strh r0, [r2, #0xa]
_08047AD6:
	ldr r0, _08047B00 @ =gCamera
	movs r1, #0x14
	ldrsh r0, [r0, r1]
	lsls r1, r0, #8
	ldr r0, [r2, #4]
	cmp r0, r1
	bge _08047AF2
	str r1, [r2, #4]
	movs r1, #0xa
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _08047AF2
	movs r0, #0
	strh r0, [r2, #0xa]
_08047AF2:
	adds r0, r2, #0
	bl sub_8047990
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08047B00: .4byte gCamera

	thumb_func_start sub_8047B04
sub_8047B04: @ 0x08047B04
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x3e
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _08047B1C
	cmp r0, #1
	beq _08047B60
	movs r0, #0
	b _08047B98
_08047B1C:
	ldr r1, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08047B8E
	ldrb r0, [r4, #0x14]
	adds r0, #0x40
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08047B8E
	movs r0, #0x20
	ands r1, r0
	cmp r1, #0
	bne _08047B8E
	ldr r0, _08047B5C @ =gUnknown_030060E0
	ldrh r1, [r4, #0x3a]
	ldrh r0, [r0, #2]
	ands r0, r1
	cmp r0, #0
	beq _08047B8E
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x3c
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_8048060
	b _08047B8E
	.align 2, 0
_08047B5C: .4byte gUnknown_030060E0
_08047B60:
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	cmp r1, #0
	ble _08047B74
	ldr r0, [r4, #0x34]
	asrs r0, r0, #1
	subs r1, r1, r0
	cmp r1, #0
	bge _08047B80
	b _08047B7E
_08047B74:
	ldr r0, [r4, #0x34]
	asrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	ble _08047B80
_08047B7E:
	movs r1, #0
_08047B80:
	strh r1, [r4, #0xc]
	adds r0, r4, #0
	bl Player_80470AC
	adds r0, r4, #0
	bl sa2__sub_80231C0
_08047B8E:
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
_08047B98:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Player_Tails_8047BA0
Player_Tails_8047BA0: @ 0x08047BA0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x10]
	movs r0, #6
	ands r1, r0
	cmp r1, #2
	beq _08047C2C
	cmp r1, #2
	bhi _08047BB8
	cmp r1, #0
	beq _08047BC4
	b _08047CFE
_08047BB8:
	cmp r1, #4
	beq _08047C8C
	cmp r1, #6
	bne _08047BC2
	b _08047CC8
_08047BC2:
	b _08047CFE
_08047BC4:
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08047C10
	ldr r0, _08047C0C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _08047BE6
	adds r0, r4, #0
	bl sub_8047B04
	cmp r0, #0
	beq _08047BE6
	b _08047CFE
_08047BE6:
	adds r0, r4, #0
	bl sub_80440A4
	cmp r0, #0
	beq _08047BF2
	b _08047CFE
_08047BF2:
	adds r0, r4, #0
	bl sub_8044250
	cmp r0, #0
	beq _08047BFE
	b _08047CFE
_08047BFE:
	adds r0, r4, #0
	bl Player_8046FAC
	adds r0, r4, #0
	bl sub_8044F7C
	b _08047CAE
	.align 2, 0
_08047C0C: .4byte gGameMode
_08047C10:
	adds r0, r4, #0
	bl Player_8046FAC
	ldr r0, _08047C28 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _08047CAE
	adds r0, r4, #0
	bl sub_8047B04
	b _08047CAE
	.align 2, 0
_08047C28: .4byte gGameMode
_08047C2C:
	adds r0, r4, #0
	bl Player_804726C
	adds r0, r4, #0
	bl Player_8047280
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08047C66
	adds r0, r4, #0
	bl Player_8044670
	adds r0, r4, #0
	bl Player_80445A0
	adds r0, r4, #0
	bl Player_8043EC0
	adds r0, r4, #0
	bl Player_80470E8
	adds r0, r4, #0
	bl Player_8047134
	b _08047C7E
_08047C66:
	adds r0, r4, #0
	bl sub_8047A3C
	adds r0, r4, #0
	bl Player_80445A0
	adds r0, r4, #0
	bl Player_8043EC0
	adds r0, r4, #0
	bl Player_80470E8
_08047C7E:
	adds r0, r4, #0
	bl Player_8047224
	adds r0, r4, #0
	bl sa2__sub_8022190
	b _08047CFE
_08047C8C:
	adds r0, r4, #0
	bl Player_804726C
	adds r0, r4, #0
	bl Player_8047280
	adds r0, r4, #0
	bl sub_8044250
	cmp r0, #0
	bne _08047CFE
	adds r0, r4, #0
	bl sub_8047018
	adds r0, r4, #0
	bl sub_8043DDC
_08047CAE:
	adds r0, r4, #0
	bl Player_8043EC0
	adds r0, r4, #0
	bl Player_80470E8
	adds r0, r4, #0
	bl sa2__sub_8022D6C
	adds r0, r4, #0
	bl Player_80471D4
	b _08047CFE
_08047CC8:
	adds r0, r4, #0
	bl Player_804726C
	adds r0, r4, #0
	bl Player_8047280
	adds r0, r4, #0
	bl Player_8044670
	adds r0, r4, #0
	bl Player_80445A0
	adds r0, r4, #0
	bl Player_8043EC0
	adds r0, r4, #0
	bl Player_80470E8
	adds r0, r4, #0
	bl Player_8047134
	adds r0, r4, #0
	bl Player_8047224
	adds r0, r4, #0
	bl sa2__sub_8022190
_08047CFE:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start Task_8047D04
Task_8047D04: @ 0x08047D04
	push {r4, r5, r6, r7, lr}
	ldr r2, _08047D30 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	ldrb r6, [r0, #0x16]
	ldr r0, _08047D34 @ =0x03000018
	adds r5, r1, r0
	adds r0, #0x30
	adds r4, r1, r0
	ldr r7, _08047D38 @ =gCamera
	ldr r0, _08047D3C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _08047D40
	adds r0, r3, #0
	bl TaskDestroy
	b _08047E0A
	.align 2, 0
_08047D30: .4byte gCurTask
_08047D34: .4byte 0x03000018
_08047D38: .4byte gCamera
_08047D3C: .4byte gGameMode
_08047D40:
	ldr r3, _08047D7C @ =gPlayer
	cmp r6, #0
	beq _08047D48
	ldr r3, _08047D80 @ =gPartner
_08047D48:
	adds r0, r3, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08047D72
	adds r0, r3, #0
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x20
	bne _08047D72
	adds r0, r3, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x7f
	bne _08047D84
_08047D72:
	ldr r0, [r2]
	bl TaskDestroy
	b _08047E0A
	.align 2, 0
_08047D7C: .4byte gPlayer
_08047D80: .4byte gPartner
_08047D84:
	ldr r0, [r3]
	asrs r0, r0, #8
	ldrh r1, [r7]
	adds r2, r3, #0
	adds r2, #0x50
	subs r0, r0, r1
	ldrh r2, [r2]
	adds r0, r0, r2
	strh r0, [r4, #6]
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	ldrh r1, [r7, #2]
	subs r0, r0, r1
	strh r0, [r4, #8]
	ldr r1, [r5, #0x10]
	ldr r0, _08047E10 @ =0xFFFFCFFF
	ands r1, r0
	str r1, [r5, #0x10]
	ldr r0, [r3, #0x68]
	ldr r0, [r0, #0x1c]
	movs r2, #0xc0
	lsls r2, r2, #6
	ands r0, r2
	orrs r1, r0
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #0x10]
	ldr r2, _08047E14 @ =sa2__gUnknown_030054B8
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	movs r0, #0x20
	orrs r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r5, #0x10]
	orrs r0, r1
	str r0, [r5, #0x10]
	adds r0, r3, #0
	adds r0, #0x81
	ldrb r0, [r0]
	lsls r0, r0, #2
	strh r0, [r4]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	adds r0, r3, #0
	adds r0, #0x54
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, #2
	movs r2, #0
	ldrsh r0, [r0, r2]
	strh r1, [r4, #2]
	strh r0, [r4, #4]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	adds r1, r4, #0
	bl TransformSprite
	adds r0, r5, #0
	bl DisplaySprite
_08047E0A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08047E10: .4byte 0xFFFFCFFF
_08047E14: .4byte sa2__gUnknown_030054B8

@ Called on entering the "Marble Track" in Casino Paradise,
@ which scales the player 2x.
	thumb_func_start sub_8047E18
sub_8047E18: @ 0x08047E18
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r0, #0x3c
	movs r3, #0
	ldrsb r3, [r0, r3]
	ldr r0, _08047E84 @ =Task_8047D04
	str r0, [sp]
	ldr r0, _08047E88 @ =TaskDestructor_MultiplayerSpriteTask
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0x60
	bl CreateMultiplayerSpriteTask
	mov r8, r0
	ldrh r4, [r0, #6]
	ldr r0, _08047E8C @ =0x03000018
	adds r5, r4, r0
	adds r0, #0x30
	adds r6, r4, r0
	movs r0, #0x40
	bl VramMalloc
	str r0, [r5, #4]
	movs r1, #0
	movs r0, #0x8a
	strh r0, [r5, #0xa]
	ldr r0, _08047E90 @ =0x03000038
	adds r4, r4, r0
	movs r0, #1
	strb r0, [r4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	strh r1, [r6]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #2]
	strh r0, [r6, #4]
	strh r1, [r6, #6]
	strh r1, [r6, #8]
	mov r0, r8
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08047E84: .4byte Task_8047D04
_08047E88: .4byte TaskDestructor_MultiplayerSpriteTask
_08047E8C: .4byte 0x03000018
_08047E90: .4byte 0x03000038

	thumb_func_start sub_8047E94
sub_8047E94: @ 0x08047E94
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08047EF4
	ldr r0, _08047EF0 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _08047EB6
	adds r0, r4, #0
	bl sub_8047B04
	cmp r0, #0
	bne _08047F20
_08047EB6:
	adds r0, r4, #0
	bl sub_80440A4
	cmp r0, #0
	bne _08047F20
	adds r0, r4, #0
	bl sub_8044250
	cmp r0, #0
	bne _08047F20
	adds r0, r4, #0
	bl Player_8046FAC
	adds r0, r4, #0
	bl sub_8044F7C
	adds r0, r4, #0
	bl Player_8043EC0
	adds r0, r4, #0
	bl Player_80470E8
	adds r0, r4, #0
	bl sa2__sub_8022D6C
	adds r0, r4, #0
	bl Player_80471D4
	b _08047F20
	.align 2, 0
_08047EF0: .4byte gGameMode
_08047EF4:
	adds r0, r4, #0
	bl Player_8046FAC
	ldr r0, _08047F28 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _08047F08
	adds r0, r4, #0
	bl sub_8047B04
_08047F08:
	adds r0, r4, #0
	bl Player_8043EC0
	adds r0, r4, #0
	bl Player_80470E8
	adds r0, r4, #0
	bl sa2__sub_8022D6C
	adds r0, r4, #0
	bl Player_80471D4
_08047F20:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08047F28: .4byte gGameMode

	thumb_func_start sub_8047F2C
sub_8047F2C: @ 0x08047F2C
	push {r4, lr}
	adds r4, r0, #0
	bl Player_804726C
	adds r0, r4, #0
	bl Player_8047280
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08047F74
	adds r0, r4, #0
	bl Player_8044670
	adds r0, r4, #0
	bl Player_80445A0
	adds r0, r4, #0
	bl Player_8043EC0
	adds r0, r4, #0
	bl Player_80470E8
	adds r0, r4, #0
	bl Player_8047134
	adds r0, r4, #0
	bl Player_8047224
	adds r0, r4, #0
	bl sa2__sub_8022190
	b _08047F98
_08047F74:
	adds r0, r4, #0
	bl sub_8047A3C
	adds r0, r4, #0
	bl Player_80445A0
	adds r0, r4, #0
	bl Player_8043EC0
	adds r0, r4, #0
	bl Player_80470E8
	adds r0, r4, #0
	bl Player_8047224
	adds r0, r4, #0
	bl sa2__sub_8022190
_08047F98:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8047FA0
sub_8047FA0: @ 0x08047FA0
	push {r4, lr}
	adds r4, r0, #0
	bl Player_804726C
	adds r0, r4, #0
	bl Player_8047280
	adds r0, r4, #0
	bl sub_8044250
	cmp r0, #0
	bne _08047FDC
	adds r0, r4, #0
	bl sub_8047018
	adds r0, r4, #0
	bl sub_8043DDC
	adds r0, r4, #0
	bl Player_8043EC0
	adds r0, r4, #0
	bl Player_80470E8
	adds r0, r4, #0
	bl sa2__sub_8022D6C
	adds r0, r4, #0
	bl Player_80471D4
_08047FDC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8047FE4
sub_8047FE4: @ 0x08047FE4
	push {r4, lr}
	adds r4, r0, #0
	bl Player_804726C
	adds r0, r4, #0
	bl Player_8047280
	adds r0, r4, #0
	bl Player_8044670
	adds r0, r4, #0
	bl Player_80445A0
	adds r0, r4, #0
	bl Player_8043EC0
	adds r0, r4, #0
	bl Player_80470E8
	adds r0, r4, #0
	bl Player_8047134
	adds r0, r4, #0
	bl Player_8047224
	adds r0, r4, #0
	bl sa2__sub_8022190
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8048024
sub_8048024: @ 0x08048024
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x10]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0804804A
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #0xe
	bl sa2__sub_8023B5C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
_0804804A:
	adds r1, r4, #0
	adds r1, #0x84
	movs r0, #0xf0
	str r0, [r1]
	adds r0, r4, #0
	bl sub_8047990
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8048060
sub_8048060: @ 0x08048060
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r0, #0x3c
	movs r3, #0
	ldrsb r3, [r0, r3]
	ldr r0, _080480B0 @ =Task_StageGoalBonusPoints
	str r0, [sp]
	ldr r0, _080480B4 @ =TaskDestructor_MultiplayerSpriteTask
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0xe0
	bl CreateMultiplayerSpriteTask
	adds r6, r0, #0
	ldrh r4, [r6, #6]
	ldr r0, _080480B8 @ =0x03000018
	adds r5, r4, r0
	movs r0, #0xf
	bl VramMalloc
	str r0, [r5, #4]
	movs r1, #0
	ldr r0, _080480BC @ =0x00000309
	strh r0, [r5, #0xa]
	ldr r0, _080480C0 @ =0x03000038
	adds r4, r4, r0
	strb r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	adds r0, r6, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080480B0: .4byte Task_StageGoalBonusPoints
_080480B4: .4byte TaskDestructor_MultiplayerSpriteTask
_080480B8: .4byte 0x03000018
_080480BC: .4byte 0x00000309
_080480C0: .4byte 0x03000038

	thumb_func_start sub_80480C4
sub_80480C4: @ 0x080480C4
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x10]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08048108
	ldrb r0, [r2, #0x14]
	adds r0, #0x40
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08048108
	movs r0, #0x20
	ands r1, r0
	cmp r1, #0
	bne _08048108
	ldr r0, _0804810C @ =gUnknown_030060E0
	ldrh r1, [r2, #0x3a]
	ldrh r0, [r0, #2]
	ands r0, r1
	cmp r0, #0
	beq _08048108
	adds r1, r2, #0
	adds r1, #0x3e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r1, #2
	movs r0, #0x3c
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_8048060
_08048108:
	pop {r0}
	bx r0
	.align 2, 0
_0804810C: .4byte gUnknown_030060E0

	thumb_func_start sub_8048110
sub_8048110: @ 0x08048110
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	cmp r1, #0
	ble _08048128
	ldr r0, [r4, #0x34]
	asrs r0, r0, #1
	subs r1, r1, r0
	cmp r1, #0
	bge _08048134
	b _08048132
_08048128:
	ldr r0, [r4, #0x34]
	asrs r0, r0, #1
	adds r1, r1, r0
	cmp r1, #0
	ble _08048134
_08048132:
	movs r1, #0
_08048134:
	strh r1, [r4, #0xc]
	adds r0, r4, #0
	bl Player_80470AC
	adds r0, r4, #0
	bl sa2__sub_80231C0
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8048148
sub_8048148: @ 0x08048148
	adds r2, r0, #0
	ldr r0, [r2, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x10]
	movs r0, #6
	strb r0, [r2, #0xe]
	strb r0, [r2, #0xf]
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r1, [r2, #0xa]
	adds r0, r0, r1
	strh r0, [r2, #0xa]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08048170
	movs r0, #0
	strh r0, [r2, #0xa]
_08048170:
	movs r3, #0xc0
	lsls r3, r3, #2
	strh r3, [r2, #0xc]
	ldr r1, [r2, #0x10]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08048184
	asrs r0, r3, #1
	strh r0, [r2, #0xc]
_08048184:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0804819C
	ldrh r0, [r2, #0xc]
	rsbs r0, r0, #0
	strh r0, [r2, #0xc]
	strh r0, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x81
	movs r0, #0x80
	b _080481A6
_0804819C:
	ldrh r0, [r2, #0xc]
	strh r0, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x81
	movs r0, #0
_080481A6:
	strb r0, [r1]
	movs r0, #0
	strb r0, [r2, #0x14]
	adds r1, r2, #0
	adds r1, #0x80
	movs r0, #2
	strb r0, [r1]
	bx lr
	.align 2, 0

	thumb_func_start sub_80481B8
sub_80481B8: @ 0x080481B8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x81
	ldrb r5, [r0]
	ldr r1, [r4, #0x10]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r1, r0
	adds r0, #0x1f
	ands r1, r0
	str r1, [r4, #0x10]
	lsls r0, r5, #0x18
	asrs r2, r0, #0x18
	movs r3, #0x7f
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	bne _0804820A
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _080481F4
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x51
	strb r0, [r1]
	adds r0, r4, #0
	bl RandomlySpawnAirBubbles
	b _080481FC
_080481F4:
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x3e
	strb r0, [r1]
_080481FC:
	cmp r5, #0x80
	bne _08048224
	ldr r0, [r4, #0x10]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0x10]
	b _08048224
_0804820A:
	cmp r2, #0
	bge _08048214
	rsbs r0, r2, #0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08048214:
	ldr r1, _0804822C @ =gUnknown_084AE1AC
	ands r5, r3
	lsrs r0, r5, #5
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x40
	strb r1, [r0]
_08048224:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804822C: .4byte gUnknown_084AE1AC

	thumb_func_start sub_8048230
sub_8048230: @ 0x08048230
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	bl sa2__sub_8022838
	adds r7, r5, #0
	adds r7, #0x80
	ldrb r1, [r7]
	movs r0, #2
	mov r8, r0
	ands r0, r1
	cmp r0, #0
	bne _080482D8
	movs r1, #8
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bgt _08048260
	ldr r0, [r5, #0x10]
	movs r1, #1
	orrs r0, r1
	b _08048268
_08048260:
	ldr r0, [r5, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_08048268:
	str r0, [r5, #0x10]
	ldrb r0, [r5, #0x14]
	adds r0, #0x20
	movs r2, #0x40
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080482C2
	adds r0, r5, #0
	adds r0, #0x81
	ldrb r0, [r0]
	adds r0, #0x40
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08048292
	ldr r0, [r5, #0x10]
	movs r1, #1
	orrs r0, r1
	b _0804829A
_08048292:
	ldr r0, [r5, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_0804829A:
	str r0, [r5, #0x10]
	movs r0, #0
	strh r0, [r5, #0xa]
	adds r0, r5, #0
	bl sa2__sub_8022318
	movs r1, #0xc
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _080482B8
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #4
	strb r0, [r1]
	b _080484BE
_080482B8:
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0
	strb r0, [r1]
	b _080484BE
_080482C2:
	adds r1, r5, #0
	adds r1, #0x3d
	movs r0, #3
	strb r0, [r1]
	adds r1, #3
	movs r0, #0x41
	strb r0, [r1]
	movs r0, #0x6f
	bl m4aSongNumStart
	b _080484BE
_080482D8:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080482E2
	b _0804846E
_080482E2:
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _080482F2
	b _0804844C
_080482F2:
	adds r1, r5, #0
	adds r1, #0x81
	ldrb r0, [r1]
	adds r0, #0x40
	lsls r0, r0, #0x18
	mov sb, r1
	cmp r0, #0
	bgt _080483B4
	ldr r0, [r5, #0x10]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0
	movs r1, #0
	add r2, sp, #8
	bl sub_8046D50
	adds r6, r0, #0
	ldr r0, [sp, #8]
	cmp r6, r0
	beq _0804831E
	b _0804844C
_0804831E:
	cmp r6, #0
	bne _08048324
	b _08048424
_08048324:
	ldr r0, _08048370 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _08048378
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	subs r0, #1
	movs r1, #0xf
	ldrsb r1, [r5, r1]
	subs r0, r0, r1
	ldr r1, [r5]
	asrs r1, r1, #8
	subs r1, #1
	movs r2, #0xe
	ldrsb r2, [r5, r2]
	subs r1, r1, r2
	adds r2, r5, #0
	adds r2, #0x27
	ldrb r2, [r2]
	movs r3, #8
	rsbs r3, r3, #0
	movs r4, #0
	str r4, [sp]
	ldr r4, _08048374 @ =sa2__sub_801EE64
	str r4, [sp, #4]
	bl sa2__sub_801E4E4
	cmp r0, #0
	bge _080483A6
	adds r0, r5, #0
	adds r0, #0x3d
	mov r1, r8
	strb r1, [r0]
	b _08048454
	.align 2, 0
_08048370: .4byte gStageFlags
_08048374: .4byte sa2__sub_801EE64
_08048378:
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	adds r0, #1
	movs r1, #0xf
	ldrsb r1, [r5, r1]
	adds r0, r0, r1
	ldr r1, [r5]
	asrs r1, r1, #8
	subs r1, #1
	movs r2, #0xe
	ldrsb r2, [r5, r2]
	subs r1, r1, r2
	adds r2, r5, #0
	adds r2, #0x27
	ldrb r2, [r2]
	str r3, [sp]
	ldr r3, _080483B0 @ =sa2__sub_801EE64
	str r3, [sp, #4]
	movs r3, #8
	bl sa2__sub_801E4E4
	cmp r0, #0
	blt _0804844C
_080483A6:
	lsls r1, r6, #8
	ldr r0, [r5]
	subs r0, r0, r1
	b _08048422
	.align 2, 0
_080483B0: .4byte sa2__sub_801EE64
_080483B4:
	ldr r0, [r5, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0
	movs r1, #0
	add r2, sp, #8
	bl sub_8046D9C
	adds r6, r0, #0
	ldr r0, [sp, #8]
	cmp r6, r0
	beq _080483DA
	adds r0, r5, #0
	adds r0, #0x3d
	mov r1, r8
	strb r1, [r0]
	b _08048454
_080483DA:
	cmp r6, #0
	beq _08048424
	ldr r0, _08048444 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _0804841C
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	adds r0, #1
	movs r1, #0xf
	ldrsb r1, [r5, r1]
	adds r0, r0, r1
	ldr r1, [r5]
	asrs r1, r1, #8
	adds r1, #1
	movs r2, #0xe
	ldrsb r2, [r5, r2]
	adds r1, r1, r2
	adds r2, r5, #0
	adds r2, #0x27
	ldrb r2, [r2]
	str r3, [sp]
	ldr r3, _08048448 @ =sa2__sub_801EE64
	str r3, [sp, #4]
	movs r3, #8
	bl sa2__sub_801E4E4
	cmp r0, #0
	blt _0804844C
_0804841C:
	lsls r1, r6, #8
	ldr r0, [r5]
	adds r0, r0, r1
_08048422:
	str r0, [r5]
_08048424:
	movs r0, #0
	strh r0, [r5, #0xc]
	strh r0, [r5, #8]
	strh r0, [r5, #0xa]
	adds r1, r5, #0
	adds r1, #0x3d
	movs r0, #4
	strb r0, [r1]
	movs r0, #3
	mov r1, sb
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0x46
	strb r0, [r1]
	b _080484BE
	.align 2, 0
_08048444: .4byte gStageFlags
_08048448: .4byte sa2__sub_801EE64
_0804844C:
	adds r0, r5, #0
	adds r0, #0x3d
	mov r2, r8
	strb r2, [r0]
_08048454:
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0x3f
	strb r0, [r1]
	movs r0, #6
	strb r0, [r5, #0xe]
	movs r0, #0xe
	strb r0, [r5, #0xf]
	ldrb r1, [r7]
	movs r0, #2
	orrs r0, r1
	strb r0, [r7]
	b _080484BE
_0804846E:
	ldr r0, _08048498 @ =gUnknown_030060E0
	ldrh r1, [r5, #0x38]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _080484B8
	adds r0, r5, #0
	adds r0, #0x3d
	mov r1, r8
	strb r1, [r0]
	adds r0, #3
	movs r1, #0x3f
	strb r1, [r0]
	movs r2, #8
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bgt _0804849C
	ldr r0, [r5, #0x10]
	movs r1, #1
	orrs r0, r1
	b _080484A4
	.align 2, 0
_08048498: .4byte gUnknown_030060E0
_0804849C:
	ldr r0, [r5, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080484A4:
	str r0, [r5, #0x10]
	ldrh r0, [r5, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r5, #8]
	movs r0, #6
	strb r0, [r5, #0xe]
	movs r0, #0xe
	strb r0, [r5, #0xf]
	b _080484BE
_080484B8:
	adds r0, r5, #0
	bl sub_80481B8
_080484BE:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80484CC
sub_80484CC: @ 0x080484CC
	push {r4, lr}
	adds r4, r0, #0
	bl Player_80445A0
	adds r0, r4, #0
	bl Player_8047134
	adds r0, r4, #0
	bl sa2__sub_8022838
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0804851E
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	strh r0, [r4, #0xa]
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sa2__sub_8022318
	ldrb r0, [r4, #0x14]
	adds r0, #0x20
	movs r1, #0xc0
	ands r0, r1
	cmp r0, #0
	bne _0804851E
	movs r0, #0xf
	strh r0, [r4, #0x1a]
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x40
	strb r0, [r1]
_0804851E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8048524
sub_8048524: @ 0x08048524
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _0804858C @ =gStageTime
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08048556
	movs r2, #0xf
	ldrsb r2, [r4, r2]
	ldr r0, _08048590 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08048548
	rsbs r2, r2, #0
_08048548:
	ldr r0, [r4]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	asrs r1, r1, #8
	adds r1, r1, r2
	bl CreateBrakingDustEffect
_08048556:
	adds r0, r4, #0
	bl sa2__sub_8022838
	add r2, sp, #4
	adds r0, r4, #0
	mov r1, sp
	bl sub_8046EB0
	adds r2, r0, #0
	cmp r2, #0xb
	bgt _08048594
	ldr r0, _08048590 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804857A
	rsbs r2, r2, #0
_0804857A:
	lsls r1, r2, #8
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
	mov r0, sp
	ldrb r0, [r0]
	strb r0, [r4, #0x14]
	b _080485C2
	.align 2, 0
_0804858C: .4byte gStageTime
_08048590: .4byte gStageFlags
_08048594:
	ldr r0, [r4, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _080485C2
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #2
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0xe
	bl sa2__sub_8023B5C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
	adds r2, r4, #0
	adds r2, #0x80
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
_080485C2:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80485CC
sub_80485CC: @ 0x080485CC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080485F4 @ =gUnknown_030060E0
	ldrh r1, [r4, #0x38]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _0804860C
	ldrh r1, [r4, #8]
	movs r2, #8
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bgt _080485F8
	adds r0, r1, #0
	adds r0, #0x18
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0804860C
	b _08048604
	.align 2, 0
_080485F4: .4byte gUnknown_030060E0
_080485F8:
	adds r0, r1, #0
	subs r0, #0x18
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0804860C
_08048604:
	adds r0, r4, #0
	bl sub_8048524
	b _08048644
_0804860C:
	movs r0, #0
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	strh r0, [r4, #0xa]
	movs r0, #0xf
	ldrsb r0, [r4, r0]
	adds r2, r0, #0
	subs r2, #0xe
	ldr r0, _0804864C @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804862A
	rsbs r2, r2, #0
_0804862A:
	lsls r1, r2, #8
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sa2__sub_8022318
	movs r0, #0xf
	strh r0, [r4, #0x1a]
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #3
	strb r0, [r1]
_08048644:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804864C: .4byte gStageFlags

	thumb_func_start sub_8048650
sub_8048650: @ 0x08048650
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, [r5, #0x10]
	movs r6, #1
	ands r0, r6
	cmp r0, #0
	beq _0804869C
	ldr r0, [r5]
	asrs r0, r0, #8
	subs r0, #2
	movs r1, #0xe
	ldrsb r1, [r5, r1]
	subs r0, r0, r1
	ldr r1, [r5, #4]
	asrs r1, r1, #8
	adds r2, r5, #0
	adds r2, #0x27
	ldrb r2, [r2]
	movs r3, #8
	rsbs r3, r3, #0
	add r4, sp, #8
	str r4, [sp]
	ldr r4, _08048698 @ =sa2__sub_801ED24
	str r4, [sp, #4]
	bl sa2__sub_801E4E4
	adds r2, r0, #0
	add r0, sp, #8
	ldrb r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080486CE
	movs r0, #0x40
	b _080486DA
	.align 2, 0
_08048698: .4byte sa2__sub_801ED24
_0804869C:
	ldr r0, [r5]
	asrs r0, r0, #8
	adds r0, #2
	movs r1, #0xe
	ldrsb r1, [r5, r1]
	adds r0, r0, r1
	ldr r1, [r5, #4]
	asrs r1, r1, #8
	adds r2, r5, #0
	adds r2, #0x27
	ldrb r2, [r2]
	add r3, sp, #8
	str r3, [sp]
	ldr r3, _080486D4 @ =sa2__sub_801ED24
	str r3, [sp, #4]
	movs r3, #8
	bl sa2__sub_801E4E4
	adds r2, r0, #0
	add r0, sp, #8
	ldrb r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080486D8
_080486CE:
	strb r1, [r5, #0x14]
	b _080486DC
	.align 2, 0
_080486D4: .4byte sa2__sub_801ED24
_080486D8:
	movs r0, #0xc0
_080486DA:
	strb r0, [r5, #0x14]
_080486DC:
	adds r0, r2, #0
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80486E8
sub_80486E8: @ 0x080486E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	adds r0, #0x82
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _08048704
	b _08048924
_08048704:
	ldr r1, [r4, #0x10]
	movs r0, #8
	ands r1, r0
	cmp r1, #0
	beq _08048710
	b _08048924
_08048710:
	strh r1, [r4, #0xc]
	strh r1, [r4, #8]
	strh r1, [r4, #0xa]
	adds r6, r4, #0
	adds r6, #0x40
	movs r0, #0
	ldrsb r0, [r6, r0]
	mov sl, r6
	cmp r0, #0x46
	beq _08048728
	movs r0, #0x47
	strb r0, [r6]
_08048728:
	ldrh r1, [r4, #0x38]
	movs r0, #0x40
	mov sb, r0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0
	beq _080487D2
	movs r0, #0xf
	ldrsb r0, [r4, r0]
	lsls r5, r0, #8
	ldr r7, _080487A8 @ =gStageFlags
	ldrh r1, [r7]
	movs r2, #0x80
	mov r8, r2
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _08048750
	rsbs r5, r5, #0
_08048750:
	ldr r0, [r4, #4]
	subs r0, r0, r5
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8048650
	adds r1, r0, #0
	ldr r0, [r4, #4]
	adds r2, r0, r5
	str r2, [r4, #4]
	cmp r1, #2
	ble _0804876A
	b _0804893A
_0804876A:
	cmp r1, #0
	bge _08048770
	b _080488CA
_08048770:
	movs r5, #0x90
	lsls r5, r5, #4
	ldrh r1, [r7]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _08048780
	rsbs r5, r5, #0
_08048780:
	subs r0, r2, r5
	str r0, [r4, #4]
	adds r0, r4, #0
	mov r1, sp
	movs r2, #0
	bl sa2__sub_8029AC0
	adds r1, r0, #0
	ldr r0, [r4, #4]
	adds r0, r0, r5
	str r0, [r4, #4]
	cmp r1, #0
	bge _080487AC
	movs r0, #0x48
	strb r0, [r6]
	lsls r1, r1, #8
	ldr r0, [r4, #4]
	subs r0, r0, r1
	str r0, [r4, #4]
	b _08048862
	.align 2, 0
_080487A8: .4byte gStageFlags
_080487AC:
	movs r0, #0x48
	strb r0, [r6]
	movs r2, #0xc0
	ldr r1, [r4, #0x10]
	adds r0, r1, #0
	mov r3, sb
	ands r0, r3
	cmp r0, #0
	beq _080487C0
	movs r2, #0x80
_080487C0:
	movs r0, #0x80
	lsls r0, r0, #6
	ands r1, r0
	cmp r1, #0
	beq _080487CC
	lsls r2, r2, #1
_080487CC:
	rsbs r0, r2, #0
	strh r0, [r4, #0xa]
	b _08048862
_080487D2:
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0804886A
	movs r0, #0xf
	ldrsb r0, [r4, r0]
	lsls r5, r0, #8
	ldr r0, _0804883C @ =gStageFlags
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080487F0
	rsbs r5, r5, #0
_080487F0:
	ldr r0, [r4, #4]
	adds r0, r0, r5
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8048650
	adds r1, r0, #0
	ldr r0, [r4, #4]
	subs r0, r0, r5
	str r0, [r4, #4]
	cmp r1, #0
	ble _0804880A
	b _08048924
_0804880A:
	adds r0, r4, #0
	mov r1, sp
	movs r2, #0
	bl sa2__sub_8029B0C
	adds r1, r0, #0
	cmp r1, #0
	bge _08048840
	lsls r1, r1, #8
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
	mov r0, sp
	ldrb r0, [r0]
	strb r0, [r4, #0x14]
	strh r7, [r4, #0xc]
	strh r7, [r4, #8]
	strh r7, [r4, #0xa]
	adds r0, r4, #0
	bl sa2__sub_8022318
	movs r0, #0x3f
	strb r0, [r6]
	b _08048970
	.align 2, 0
_0804883C: .4byte gStageFlags
_08048840:
	movs r0, #0x49
	strb r0, [r6]
	movs r2, #0xc0
	ldr r1, [r4, #0x10]
	adds r0, r1, #0
	mov r3, sb
	ands r0, r3
	cmp r0, #0
	beq _08048854
	movs r2, #0x80
_08048854:
	movs r0, #0x80
	lsls r0, r0, #6
	ands r1, r0
	cmp r1, #0
	beq _08048860
	lsls r2, r2, #1
_08048860:
	strh r2, [r4, #0xa]
_08048862:
	adds r0, r4, #0
	bl Player_8047280
	b _08048876
_0804886A:
	adds r0, r4, #0
	bl sub_8048650
	adds r1, r0, #0
	cmp r1, #0
	bgt _08048924
_08048876:
	movs r1, #1
	ldrh r0, [r4, #0x38]
	movs r5, #0xc0
	ands r5, r0
	cmp r5, #0
	bne _080488B2
	adds r0, r4, #0
	mov r1, sp
	movs r2, #0
	bl sa2__sub_8029B0C
	adds r1, r0, #0
	cmp r1, #0
	bge _080488B2
	lsls r1, r1, #8
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
	mov r0, sp
	ldrb r0, [r0]
	strb r0, [r4, #0x14]
	strh r5, [r4, #0xc]
	strh r5, [r4, #8]
	strh r5, [r4, #0xa]
	adds r0, r4, #0
	bl sa2__sub_8022318
	movs r0, #0x3f
	mov r1, sl
	b _0804896E
_080488B2:
	cmp r1, #0
	beq _080488CA
	adds r1, r4, #0
	adds r1, #0x81
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080488CA
	movs r0, #3
	strb r0, [r1]
_080488CA:
	ldr r0, _0804891C @ =gUnknown_030060E0
	ldrh r1, [r4, #0x3a]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _08048970
	ldr r0, _08048920 @ =0x0000FD60
	strh r0, [r4, #0xa]
	movs r2, #0xc0
	lsls r2, r2, #2
	strh r2, [r4, #8]
	ldr r0, [r4, #0x10]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #0x10]
	ands r0, r1
	cmp r0, #0
	beq _080488F2
	rsbs r0, r2, #0
	strh r0, [r4, #8]
_080488F2:
	ldr r0, [r4, #0x10]
	movs r1, #4
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	adds r1, #0xfe
	orrs r0, r1
	str r0, [r4, #0x10]
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #9
	strb r0, [r4, #0xf]
	movs r1, #0
	movs r0, #5
	mov r2, sl
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x3d
	strb r1, [r0]
	b _08048970
	.align 2, 0
_0804891C: .4byte gUnknown_030060E0
_08048920: .4byte 0x0000FD60
_08048924:
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #2
	strb r0, [r1]
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
	adds r1, #3
	movs r0, #0x3f
	b _0804896E
_0804893A:
	movs r0, #0x4a
	strb r0, [r6]
	ldrh r1, [r7]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _08048954
	movs r1, #0xf
	ldrsb r1, [r4, r1]
	lsls r1, r1, #8
	ldr r0, [r4, #4]
	adds r0, r0, r1
	b _0804895E
_08048954:
	movs r1, #0xf
	ldrsb r1, [r4, r1]
	lsls r1, r1, #8
	ldr r0, [r4, #4]
	subs r0, r0, r1
_0804895E:
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x3d
	movs r0, #0
	movs r1, #5
	strb r1, [r2]
	adds r1, r4, #0
	adds r1, #0x81
_0804896E:
	strb r0, [r1]
_08048970:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8048980
sub_8048980: @ 0x08048980
	push {r4, r5, lr}
	mov ip, r0
	movs r1, #0xc
	ldrsh r2, [r0, r1]
	cmp r2, #0
	bge _0804898E
	rsbs r2, r2, #0
_0804898E:
	mov r1, ip
	adds r1, #0x81
	ldrb r3, [r1]
	mov r0, ip
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r1, #0
	cmp r0, #1
	beq _080489A6
	b _08048AB8
_080489A6:
	ldr r0, _080489B4 @ =0x000002FF
	cmp r2, r0
	bgt _080489B8
	adds r2, #6
	mov r4, ip
	ldr r1, [r4, #0x10]
	b _080489D8
	.align 2, 0
_080489B4: .4byte 0x000002FF
_080489B8:
	ldr r0, _08048A10 @ =0x000011FF
	mov r4, ip
	ldr r1, [r4, #0x10]
	cmp r2, r0
	bgt _080489D8
	movs r0, #0x7f
	ands r0, r3
	cmp r0, #0
	bne _080489D8
	adds r2, #3
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	beq _080489D8
	adds r2, #6
_080489D8:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080489FC
	movs r4, #0xc0
	lsls r4, r4, #2
	cmp r2, r4
	ble _080489FC
	subs r2, #9
	movs r0, #0x80
	lsls r0, r0, #6
	ands r1, r0
	cmp r1, #0
	beq _080489F6
	subs r2, #3
_080489F6:
	cmp r2, r4
	bge _080489FC
	adds r2, r4, #0
_080489FC:
	ldrb r0, [r5]
	adds r0, #0x40
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08048A14
	rsbs r0, r2, #0
	mov r1, ip
	strh r0, [r1, #0xc]
	b _08048A18
	.align 2, 0
_08048A10: .4byte 0x000011FF
_08048A14:
	mov r4, ip
	strh r2, [r4, #0xc]
_08048A18:
	mov r0, ip
	ldrh r4, [r0, #0x38]
	movs r0, #0x20
	ands r0, r4
	cmp r0, #0
	beq _08048A42
	lsls r1, r3, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0x80
	beq _08048A78
	asrs r0, r1, #0x18
	cmp r0, #0
	bge _08048A38
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_08048A38:
	lsls r0, r3, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08048A76
_08048A42:
	movs r0, #0x10
	ands r0, r4
	cmp r0, #0
	beq _08048A66
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08048A78
	cmp r0, #0
	ble _08048A5C
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_08048A5C:
	lsls r0, r3, #0x18
	movs r3, #0x80
	lsls r3, r3, #0x12
	adds r0, r0, r3
	b _08048A76
_08048A66:
	lsls r0, r3, #0x18
	asrs r1, r0, #0x18
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _08048A78
	adds r0, r1, #2
	lsls r0, r0, #0x18
_08048A76:
	lsrs r3, r0, #0x18
_08048A78:
	strb r3, [r5]
	ldr r1, _08048AAC @ =gSineTable
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x15
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r0, r4
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r2, r0
	asrs r0, r0, #8
	mov r1, ip
	strh r0, [r1, #8]
	ldrh r1, [r1, #0xa]
	mov r2, ip
	movs r3, #0xa
	ldrsh r0, [r2, r3]
	cmp r0, #0x7f
	bgt _08048AB0
	adds r0, r1, #0
	adds r0, #0x18
	strh r0, [r2, #0xa]
	b _08048AB8
	.align 2, 0
_08048AAC: .4byte gSineTable
_08048AB0:
	adds r0, r1, #0
	subs r0, #0x18
	mov r4, ip
	strh r0, [r4, #0xa]
_08048AB8:
	ldr r2, _08048AC8 @ =gCamera
	ldrh r0, [r2, #0x22]
	movs r3, #0x22
	ldrsh r1, [r2, r3]
	cmp r1, #0
	ble _08048ACC
	subs r0, #2
	b _08048AD2
	.align 2, 0
_08048AC8: .4byte gCamera
_08048ACC:
	cmp r1, #0
	bge _08048AD4
	adds r0, #4
_08048AD2:
	strh r0, [r2, #0x22]
_08048AD4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8048ADC
sub_8048ADC: @ 0x08048ADC
	adds r2, r0, #0
	ldr r3, [r2, #0x10]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r3
	cmp r0, #0
	bne _08048B08
	ldrb r0, [r2, #0x14]
	adds r0, #0x40
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08048B08
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	bne _08048B08
	ldr r0, _08048B0C @ =gUnknown_030060E0
	ldrh r1, [r2, #0x3a]
	ldrh r0, [r0, #2]
	ands r0, r1
	cmp r0, #0
	bne _08048B10
_08048B08:
	movs r0, #0
	b _08048B36
	.align 2, 0
_08048B0C: .4byte gUnknown_030060E0
_08048B10:
	movs r1, #0xc0
	lsls r1, r1, #2
	movs r0, #1
	ands r3, r0
	cmp r3, #0
	beq _08048B1E
	rsbs r1, r1, #0
_08048B1E:
	ldrh r0, [r2, #0xc]
	adds r0, r0, r1
	strh r0, [r2, #0xc]
	adds r1, r2, #0
	adds r1, #0x3e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r1, #2
	movs r0, #0x4c
	strb r0, [r1]
	movs r0, #1
_08048B36:
	bx lr

	thumb_func_start sub_8048B38
sub_8048B38: @ 0x08048B38
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0x14]
	ldr r0, _08048B78 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08048B5C
	adds r0, r2, #0
	adds r0, #0x40
	lsls r0, r0, #0x18
	rsbs r0, r0, #0
	lsrs r2, r0, #0x18
	adds r0, r2, #0
	subs r0, #0x40
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_08048B5C:
	adds r0, r2, #0
	adds r0, #0x80
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r4, #0
	bl sa2__sub_8022F58
	cmp r0, #3
	bgt _08048B7C
	adds r0, r4, #0
	bl sa2__sub_8021BE0
	movs r0, #0
	b _08048C26
	.align 2, 0
_08048B78: .4byte gStageFlags
_08048B7C:
	ldr r1, [r4, #0x10]
	movs r0, #2
	orrs r1, r0
	ldr r0, _08048C2C @ =0xFEFFFFDF
	ands r1, r0
	ldr r0, _08048C30 @ =0xFFFFF7FF
	ands r1, r0
	str r1, [r4, #0x10]
	movs r0, #0x40
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #2
	cmp r0, #0
	beq _08048B9C
	movs r3, #0x80
	lsls r3, r3, #1
_08048B9C:
	ldrb r0, [r4, #0x14]
	subs r0, #0x40
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r5, _08048C34 @ =gSineTable
	lsls r0, r2, #2
	movs r6, #0x80
	lsls r6, r6, #1
	mov ip, r6
	add r0, ip
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r3, r0
	asrs r0, r0, #8
	ldrh r6, [r4, #8]
	adds r7, r0, r6
	strh r7, [r4, #8]
	lsls r0, r2, #3
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r3, r0
	asrs r0, r0, #8
	ldrh r3, [r4, #0xa]
	adds r6, r0, r3
	strh r6, [r4, #0xa]
	movs r0, #1
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #2
	cmp r1, #0
	beq _08048BE6
	ldr r3, _08048C38 @ =0xFFFFFE00
_08048BE6:
	adds r0, r2, #0
	adds r0, #0x40
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r0, r2, #2
	add r0, ip
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r3, r0
	asrs r0, r0, #8
	adds r0, r7, r0
	strh r0, [r4, #8]
	lsls r0, r2, #3
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r3, r0
	asrs r0, r0, #8
	adds r0, r6, r0
	strh r0, [r4, #0xa]
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x4f
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_8049284
	movs r0, #1
_08048C26:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08048C2C: .4byte 0xFEFFFFDF
_08048C30: .4byte 0xFFFFF7FF
_08048C34: .4byte gSineTable
_08048C38: .4byte 0xFFFFFE00

	thumb_func_start sub_8048C3C
sub_8048C3C: @ 0x08048C3C
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r3, #0
	adds r4, #0x3e
	movs r2, #0
	ldrsb r2, [r4, r2]
	cmp r2, #1
	beq _08048C6C
	cmp r2, #1
	bgt _08048C56
	cmp r2, #0
	beq _08048C60
	b _08048CA8
_08048C56:
	cmp r2, #2
	beq _08048C84
	cmp r2, #3
	beq _08048CA0
	b _08048CA8
_08048C60:
	adds r0, r3, #0
	bl sub_8048ADC
_08048C66:
	movs r0, #0
	ldrsb r0, [r4, r0]
	b _08048CAA
_08048C6C:
	ldr r0, _08048C80 @ =gUnknown_030060E0
	ldrh r1, [r3, #0x3a]
	ldrh r0, [r0, #2]
	ands r0, r1
	cmp r0, #0
	beq _08048C66
	adds r0, r3, #0
	adds r0, #0x3f
	strb r2, [r0]
	b _08048C66
	.align 2, 0
_08048C80: .4byte gUnknown_030060E0
_08048C84:
	ldr r0, _08048C9C @ =gUnknown_030060E0
	ldrh r1, [r3, #0x3a]
	ldrh r0, [r0, #2]
	ands r0, r1
	cmp r0, #0
	beq _08048C66
	adds r1, r3, #0
	adds r1, #0x3f
	movs r0, #1
	strb r0, [r1]
	b _08048C66
	.align 2, 0
_08048C9C: .4byte gUnknown_030060E0
_08048CA0:
	adds r0, r3, #0
	bl sub_8048B38
	b _08048C66
_08048CA8:
	movs r0, #0
_08048CAA:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_8048CB0
sub_8048CB0: @ 0x08048CB0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08048D10
	ldr r0, _08048D0C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _08048CD2
	adds r0, r4, #0
	bl sub_8048C3C
	cmp r0, #0
	bne _08048CF2
_08048CD2:
	adds r0, r4, #0
	bl sub_80440A4
	cmp r0, #0
	bne _08048D6E
	adds r0, r4, #0
	bl sub_8044250
	cmp r0, #0
	bne _08048D6E
	adds r0, r4, #0
	bl Player_8046FAC
	adds r0, r4, #0
	bl sub_8044F7C
_08048CF2:
	adds r0, r4, #0
	bl Player_8043EC0
	adds r0, r4, #0
	bl Player_80470E8
	adds r0, r4, #0
	bl sa2__sub_8022D6C
	adds r0, r4, #0
	bl Player_80471D4
	b _08048D6E
	.align 2, 0
_08048D0C: .4byte gGameMode
_08048D10:
	adds r0, r4, #0
	bl Player_8046FAC
	ldr r0, _08048D38 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _08048D56
	adds r0, r4, #0
	bl sub_8048C3C
	cmp r0, #3
	beq _08048D56
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _08048D3C
	subs r0, #0x60
	cmp r0, #0
	bge _08048D48
	b _08048D46
	.align 2, 0
_08048D38: .4byte gGameMode
_08048D3C:
	cmp r0, #0
	bge _08048D4A
	adds r0, #0x60
	cmp r0, #0
	ble _08048D48
_08048D46:
	movs r0, #0
_08048D48:
	strh r0, [r4, #0xc]
_08048D4A:
	adds r0, r4, #0
	bl Player_80470AC
	adds r0, r4, #0
	bl sa2__sub_80231C0
_08048D56:
	adds r0, r4, #0
	bl Player_8043EC0
	adds r0, r4, #0
	bl Player_80470E8
	adds r0, r4, #0
	bl sa2__sub_8022D6C
	adds r0, r4, #0
	bl Player_80471D4
_08048D6E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8048D74
sub_8048D74: @ 0x08048D74
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08048D98 @ =gWater
	ldrh r1, [r4, #0x38]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08048D9C
	adds r1, r4, #0
	adds r1, #0x40
	movs r2, #0
	movs r0, #0x12
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x3d
	strb r2, [r0]
	b _08048E2E
	.align 2, 0
_08048D98: .4byte gWater
_08048D9C:
	ldr r1, [r4, #0x10]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08048DBC
	ldrh r0, [r4, #0xa]
	subs r0, #0x18
	strh r0, [r4, #0xa]
	adds r3, r0, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _08048E08 @ =0xFFFFFF00
	cmp r0, r2
	bge _08048DBA
	adds r3, r2, #0
_08048DBA:
	strh r3, [r4, #0xa]
_08048DBC:
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	subs r0, #4
	movs r3, #2
	ldrsh r2, [r5, r3]
	cmp r0, r2
	bge _08048DEE
	adds r0, r2, #4
	lsls r0, r0, #8
	str r0, [r4, #4]
	movs r0, #0
	strh r0, [r4, #0xa]
	movs r0, #0x40
	orrs r0, r1
	str r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x5b
	movs r0, #0x3c
	strb r0, [r1]
	subs r1, #1
	movs r0, #0x1e
	strb r0, [r1]
	movs r0, #0x1b
	bl m4aSongNumStop
_08048DEE:
	ldrh r1, [r4, #0x38]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08048E0C
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x53
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_8044750
	b _08048E2E
	.align 2, 0
_08048E08: .4byte 0xFFFFFF00
_08048E0C:
	adds r0, r4, #0
	bl Player_804726C
	adds r0, r4, #0
	bl Player_8047280
	adds r5, r4, #0
	adds r5, #0x40
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0x52
	beq _08048E2A
	adds r0, r4, #0
	bl sub_80492E4
_08048E2A:
	movs r0, #0x52
	strb r0, [r5]
_08048E2E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8048E34
sub_8048E34: @ 0x08048E34
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x3d
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _08048EFC
	adds r0, r4, #0
	bl Player_804726C
	adds r0, r4, #0
	bl Player_8047280
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08048EA4
	adds r0, r4, #0
	bl Player_8044670
	ldr r1, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08048E9C
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _08048E9C
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _08048E9C
	movs r0, #9
	strb r0, [r5]
	ldr r0, [r4, #0x10]
	movs r1, #0x15
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x52
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_80492E4
_08048E9C:
	adds r0, r4, #0
	bl Player_80445A0
	b _08048EDC
_08048EA4:
	ldr r1, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08048EDC
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _08048EDC
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _08048EDC
	movs r0, #9
	strb r0, [r5]
	ldr r0, [r4, #0x10]
	movs r1, #0x15
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x52
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_80492E4
_08048EDC:
	adds r0, r4, #0
	bl Player_8043EC0
	adds r0, r4, #0
	bl Player_80470E8
	adds r0, r4, #0
	bl Player_8047134
	adds r0, r4, #0
	bl Player_8047224
	adds r0, r4, #0
	bl sa2__sub_8022190
	b _08048FFA
_08048EFC:
	cmp r0, #8
	bgt _08048FB8
	adds r0, r4, #0
	bl Player_804726C
	adds r0, r4, #0
	bl Player_8047280
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #2
	bne _08048F4C
	ldr r1, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08048F4C
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _08048F4C
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _08048F4C
	movs r0, #9
	strb r0, [r5]
	ldr r0, [r4, #0x10]
	movs r1, #0x15
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x52
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_80492E4
_08048F4C:
	adds r0, r4, #0
	bl sub_8048980
	adds r0, r4, #0
	bl Player_8043EC0
	adds r0, r4, #0
	bl Player_80470E8
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #6
	bhi _08048FFA
	lsls r0, r0, #2
	ldr r1, _08048F78 @ =_08048F7C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08048F78: .4byte _08048F7C
_08048F7C: @ jump table
	.4byte _08048FFA @ case 0
	.4byte _08048F98 @ case 1
	.4byte _08048FA0 @ case 2
	.4byte _08048FA8 @ case 3
	.4byte _08048FB0 @ case 4
	.4byte _08048FFA @ case 5
	.4byte _08048FFA @ case 6
_08048F98:
	adds r0, r4, #0
	bl sub_8048230
	b _08048FFA
_08048FA0:
	adds r0, r4, #0
	bl sub_80484CC
	b _08048FFA
_08048FA8:
	adds r0, r4, #0
	bl sub_80485CC
	b _08048FFA
_08048FB0:
	adds r0, r4, #0
	bl sub_80486E8
	b _08048FFA
_08048FB8:
	adds r0, r4, #0
	bl sub_8044250
	cmp r0, #0
	beq _08048FD0
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	movs r1, #0
	strh r0, [r4, #0xa]
	strb r1, [r5]
	b _08048FFA
_08048FD0:
	adds r0, r4, #0
	bl Player_80445A0
	adds r0, r4, #0
	bl Player_8043EC0
	adds r0, r4, #0
	bl Player_80470E8
	adds r0, r4, #0
	bl sub_8048D74
	adds r0, r4, #0
	bl Player_8047134
	adds r0, r4, #0
	bl Player_8047224
	adds r0, r4, #0
	bl sa2__sub_8022190
_08048FFA:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start Player_Knuckles_8049000
Player_Knuckles_8049000: @ 0x08049000
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x10]
	movs r0, #6
	ands r1, r0
	cmp r1, #2
	beq _0804902A
	cmp r1, #2
	bhi _08049018
	cmp r1, #0
	beq _08049022
	b _080490E0
_08049018:
	cmp r1, #4
	beq _08049032
	cmp r1, #6
	beq _0804906E
	b _080490E0
_08049022:
	adds r0, r4, #0
	bl sub_8048CB0
	b _080490E0
_0804902A:
	adds r0, r4, #0
	bl sub_8048E34
	b _080490E0
_08049032:
	adds r0, r4, #0
	bl Player_804726C
	adds r0, r4, #0
	bl Player_8047280
	adds r0, r4, #0
	bl sub_8044250
	cmp r0, #0
	bne _080490E0
	adds r0, r4, #0
	bl sub_8047018
	adds r0, r4, #0
	bl sub_8043DDC
	adds r0, r4, #0
	bl Player_8043EC0
	adds r0, r4, #0
	bl Player_80470E8
	adds r0, r4, #0
	bl sa2__sub_8022D6C
	adds r0, r4, #0
	bl Player_80471D4
	b _080490E0
_0804906E:
	adds r0, r4, #0
	bl Player_804726C
	adds r0, r4, #0
	bl Player_8047280
	adds r0, r4, #0
	bl Player_8044670
	ldr r1, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _080490BC
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _080490BC
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _080490BC
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #9
	strb r0, [r1]
	ldr r0, [r4, #0x10]
	movs r1, #0x15
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x52
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_80492E4
_080490BC:
	adds r0, r4, #0
	bl Player_80445A0
	adds r0, r4, #0
	bl Player_8043EC0
	adds r0, r4, #0
	bl Player_80470E8
	adds r0, r4, #0
	bl Player_8047134
	adds r0, r4, #0
	bl Player_8047224
	adds r0, r4, #0
	bl sa2__sub_8022190
_080490E0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80490E8
sub_80490E8: @ 0x080490E8
	push {r4, r5, r6, r7, lr}
	ldr r0, _08049128 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	ldrb r3, [r0, #0x16]
	ldr r0, _0804912C @ =0x03000018
	adds r4, r1, r0
	ldr r6, _08049130 @ =gCamera
	ldr r0, _08049134 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0804911E
	ldr r5, _08049138 @ =gPlayer
	cmp r3, #0
	beq _0804910E
	ldr r5, _0804913C @ =gPartner
_0804910E:
	ldr r7, _08049140 @ =gWater
	adds r0, r5, #0
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x52
	beq _08049144
_0804911E:
	adds r0, r2, #0
	bl TaskDestroy
	b _080491B8
	.align 2, 0
_08049128: .4byte gCurTask
_0804912C: .4byte 0x03000018
_08049130: .4byte gCamera
_08049134: .4byte gGameMode
_08049138: .4byte gPlayer
_0804913C: .4byte gPartner
_08049140: .4byte gWater
_08049144:
	ldr r0, [r5]
	asrs r0, r0, #8
	ldrh r1, [r6]
	adds r2, r5, #0
	adds r2, #0x50
	subs r0, r0, r1
	ldrh r2, [r2]
	adds r0, r0, r2
	strh r0, [r4, #0x16]
	ldr r1, [r5, #4]
	asrs r1, r1, #8
	ldrh r0, [r6, #2]
	adds r0, #4
	subs r1, r1, r0
	strh r1, [r4, #0x18]
	ldr r1, [r4, #0x10]
	ldr r0, _0804918C @ =0xFFFFCFFF
	ands r1, r0
	str r1, [r4, #0x10]
	ldr r0, [r5, #0x64]
	ldr r2, [r0, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #6
	ands r2, r0
	orrs r2, r1
	str r2, [r4, #0x10]
	ldr r0, [r5, #0x10]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08049190
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r2, r0
	b _08049194
	.align 2, 0
_0804918C: .4byte 0xFFFFCFFF
_08049190:
	ldr r0, _080491C0 @ =0xFFFFFBFF
	ands r2, r0
_08049194:
	str r2, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	movs r1, #2
	ldrsh r0, [r7, r1]
	cmp r0, #0
	blt _080491B8
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	subs r0, #6
	movs r2, #2
	ldrsh r1, [r7, r2]
	cmp r0, r1
	bge _080491B8
	adds r0, r4, #0
	bl DisplaySprite
_080491B8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080491C0: .4byte 0xFFFFFBFF

	thumb_func_start sub_80491C4
sub_80491C4: @ 0x080491C4
	push {r4, lr}
	adds r4, r0, #0
	bl Player_804726C
	adds r0, r4, #0
	bl Player_8047280
	adds r0, r4, #0
	bl sub_8044250
	cmp r0, #0
	bne _08049200
	adds r0, r4, #0
	bl sub_8047018
	adds r0, r4, #0
	bl sub_8043DDC
	adds r0, r4, #0
	bl Player_8043EC0
	adds r0, r4, #0
	bl Player_80470E8
	adds r0, r4, #0
	bl sa2__sub_8022D6C
	adds r0, r4, #0
	bl Player_80471D4
_08049200:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8049208
sub_8049208: @ 0x08049208
	push {r4, lr}
	adds r4, r0, #0
	bl Player_804726C
	adds r0, r4, #0
	bl Player_8047280
	adds r0, r4, #0
	bl Player_8044670
	ldr r1, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08049258
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _08049258
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _08049258
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #9
	strb r0, [r1]
	ldr r0, [r4, #0x10]
	movs r1, #0x15
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x52
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_80492E4
_08049258:
	adds r0, r4, #0
	bl Player_80445A0
	adds r0, r4, #0
	bl Player_8043EC0
	adds r0, r4, #0
	bl Player_80470E8
	adds r0, r4, #0
	bl Player_8047134
	adds r0, r4, #0
	bl Player_8047224
	adds r0, r4, #0
	bl sa2__sub_8022190
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8049284
sub_8049284: @ 0x08049284
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r0, #0x3c
	movs r3, #0
	ldrsb r3, [r0, r3]
	ldr r0, _080492D4 @ =Task_StageGoalBonusPoints
	str r0, [sp]
	ldr r0, _080492D8 @ =TaskDestructor_MultiplayerSpriteTask
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0xe0
	bl CreateMultiplayerSpriteTask
	adds r6, r0, #0
	ldrh r4, [r6, #6]
	ldr r0, _080492DC @ =0x03000018
	adds r5, r4, r0
	movs r0, #0x18
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0xfa
	strh r0, [r5, #0xa]
	ldr r0, _080492E0 @ =0x03000038
	adds r4, r4, r0
	movs r0, #3
	strb r0, [r4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	adds r0, r6, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080492D4: .4byte Task_StageGoalBonusPoints
_080492D8: .4byte TaskDestructor_MultiplayerSpriteTask
_080492DC: .4byte 0x03000018
_080492E0: .4byte 0x03000038

	thumb_func_start sub_80492E4
sub_80492E4: @ 0x080492E4
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r0, #0x3c
	movs r3, #0
	ldrsb r3, [r0, r3]
	ldr r0, _08049334 @ =sub_80490E8
	str r0, [sp]
	ldr r0, _08049338 @ =TaskDestructor_MultiplayerSpriteTask
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0x60
	bl CreateMultiplayerSpriteTask
	adds r6, r0, #0
	ldrh r4, [r6, #6]
	ldr r0, _0804933C @ =0x03000018
	adds r5, r4, r0
	movs r0, #8
	bl VramMalloc
	str r0, [r5, #4]
	movs r1, #0
	ldr r0, _08049340 @ =0x0000030E
	strh r0, [r5, #0xa]
	ldr r0, _08049344 @ =0x03000038
	adds r4, r4, r0
	strb r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	adds r0, r6, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08049334: .4byte sub_80490E8
_08049338: .4byte TaskDestructor_MultiplayerSpriteTask
_0804933C: .4byte 0x03000018
_08049340: .4byte 0x0000030E
_08049344: .4byte 0x03000038

	thumb_func_start sub_8049348
sub_8049348: @ 0x08049348
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x3d
	movs r0, #2
	strb r0, [r1]
	adds r1, #3
	movs r0, #0x3f
	strb r0, [r1]
	movs r0, #6
	strb r0, [r2, #0xe]
	movs r0, #0xe
	strb r0, [r2, #0xf]
	adds r2, #0x80
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	bx lr

    thumb_func_start sub_804936C
sub_804936C:
	bx lr
    .align 2 , 0

	thumb_func_start sub_8049370
sub_8049370: @ 0x08049370
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _080493C0 @ =gUnknown_030060E0
	ldrh r1, [r5, #0x3a]
	ldrh r0, [r0, #2]
	ands r0, r1
	cmp r0, #0
	beq _080493F4
	ldr r2, [r5, #0x10]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r2
	cmp r0, #0
	bne _080493F4
	ldrb r3, [r5, #0x14]
	ldrh r1, [r5, #0x38]
	movs r4, #0x80
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _080493C4
	adds r0, r3, #0
	adds r0, #0x40
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _080493F4
	movs r0, #0x20
	ands r2, r0
	cmp r2, #0
	bne _080493F4
	adds r1, r5, #0
	adds r1, #0x3e
	movs r0, #1
	strb r0, [r1]
	adds r1, #2
	movs r0, #0x57
	strb r0, [r1]
	bl CreateAmyAttackHeartEffect
	b _08049474
	.align 2, 0
_080493C0: .4byte gUnknown_030060E0
_080493C4:
	ldr r0, _080493F8 @ =gStageFlags
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080493E2
	adds r0, r3, #0
	adds r0, #0x40
	lsls r0, r0, #0x18
	rsbs r0, r0, #0
	lsrs r3, r0, #0x18
	adds r0, r3, #0
	subs r0, #0x40
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_080493E2:
	adds r0, r3, #0
	adds r0, #0x80
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r5, #0
	bl sa2__sub_8022F58
	cmp r0, #3
	bgt _080493FC
_080493F4:
	movs r0, #0
	b _08049476
	.align 2, 0
_080493F8: .4byte gStageFlags
_080493FC:
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0x56
	strb r0, [r1]
	ldr r4, [r5, #0x10]
	movs r0, #0x40
	ands r0, r4
	movs r6, #0xc0
	lsls r6, r6, #3
	cmp r0, #0
	beq _08049416
	movs r6, #0xd8
	lsls r6, r6, #2
_08049416:
	ldrb r0, [r5, #0x14]
	subs r0, #0x40
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r1, _0804947C @ =gSineTable
	lsls r0, r3, #2
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r6, r0
	asrs r0, r0, #8
	ldrh r7, [r5, #8]
	adds r0, r0, r7
	strh r0, [r5, #8]
	lsls r0, r3, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r6, r0
	asrs r0, r0, #8
	ldrh r1, [r5, #0xa]
	adds r0, r0, r1
	strh r0, [r5, #0xa]
	movs r0, #2
	orrs r4, r0
	ldr r0, _08049480 @ =0xFEFFFFDF
	ands r4, r0
	orrs r4, r2
	ldr r0, _08049484 @ =0xFFFFF7FF
	ands r4, r0
	str r4, [r5, #0x10]
	movs r0, #0x74
	bl m4aSongNumStart
	ldr r0, [r5, #0x10]
	ldr r1, _08049488 @ =0xFBFFFFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r5, #0x10]
_08049474:
	movs r0, #1
_08049476:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0804947C: .4byte gSineTable
_08049480: .4byte 0xFEFFFFDF
_08049484: .4byte 0xFFFFF7FF
_08049488: .4byte 0xFBFFFFFF

	thumb_func_start Player_804948C
Player_804948C: @ 0x0804948C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0x3e
	movs r6, #0
	ldrsb r6, [r2, r6]
	cmp r6, #0
	bne _080494E2
	ldr r0, _080494D0 @ =gUnknown_030060E0
	ldrh r1, [r5, #0x3a]
	ldrh r0, [r0, #2]
	ands r0, r1
	cmp r0, #0
	beq _080494E2
	adds r4, r5, #0
	adds r4, #0x40
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0xf
	beq _080494E2
	movs r0, #1
	strb r0, [r2]
	ldrh r1, [r5, #0x38]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080494D4
	movs r0, #0x83
	bl m4aSongNumStart
	movs r0, #0x5a
	strb r0, [r4]
	strh r6, [r5, #8]
	b _080494DE
	.align 2, 0
_080494D0: .4byte gUnknown_030060E0
_080494D4:
	movs r0, #0x82
	bl m4aSongNumStart
	movs r0, #0x59
	strb r0, [r4]
_080494DE:
	bl CreateAmyAttackHeartEffect
_080494E2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_80494E8
sub_80494E8: @ 0x080494E8
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x3e
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08049552
	ldr r0, _08049528 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _0804950A
	adds r0, r4, #0
	bl sub_8049370
	cmp r0, #0
	bne _080495EA
_0804950A:
	adds r0, r4, #0
	bl sub_8044250
	cmp r0, #0
	bne _080495EA
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0804952C
	adds r0, r4, #0
	bl Player_8046FAC
	b _08049532
	.align 2, 0
_08049528: .4byte gGameMode
_0804952C:
	adds r0, r4, #0
	bl sub_8047018
_08049532:
	adds r0, r4, #0
	bl sub_8044F7C
	adds r0, r4, #0
	bl Player_8043EC0
	adds r0, r4, #0
	bl Player_80470E8
	adds r0, r4, #0
	bl sa2__sub_8022D6C
	adds r0, r4, #0
	bl Player_80471D4
	b _080495EA
_08049552:
	ldr r0, _080495B0 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _0804959A
	movs r3, #0
	ldrsb r3, [r1, r3]
	cmp r3, #1
	bne _0804959A
	ldr r1, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0804959A
	ldrb r0, [r4, #0x14]
	adds r0, #0x40
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0804959A
	movs r0, #0x20
	ands r1, r0
	cmp r1, #0
	bne _0804959A
	adds r2, r4, #0
	adds r2, #0x3f
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne _0804959A
	ldr r0, _080495B4 @ =gUnknown_030060E0
	ldrh r1, [r4, #0x3a]
	ldrh r0, [r0, #2]
	ands r0, r1
	cmp r0, #0
	beq _0804959A
	strb r3, [r2]
_0804959A:
	adds r0, r4, #0
	bl Player_8046FAC
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _080495B8
	subs r0, #0x60
	cmp r0, #0
	bge _080495C4
	b _080495C2
	.align 2, 0
_080495B0: .4byte gGameMode
_080495B4: .4byte gUnknown_030060E0
_080495B8:
	cmp r0, #0
	bge _080495C6
	adds r0, #0x60
	cmp r0, #0
	ble _080495C4
_080495C2:
	movs r0, #0
_080495C4:
	strh r0, [r4, #0xc]
_080495C6:
	adds r0, r4, #0
	bl Player_80470AC
	adds r0, r4, #0
	bl sa2__sub_80231C0
	adds r0, r4, #0
	bl Player_8043EC0
	adds r0, r4, #0
	bl Player_80470E8
	adds r0, r4, #0
	bl sa2__sub_8022D6C
	adds r0, r4, #0
	bl Player_80471D4
_080495EA:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start Player_80495F0
Player_80495F0: @ 0x080495F0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	bl Player_804726C
	adds r0, r4, #0
	bl Player_8047280
	adds r0, r4, #0
	bl Player_8043EC0
	adds r0, r4, #0
	bl Player_80470E8
	adds r0, r4, #0
	bl Player_8047134
	adds r0, r4, #0
	bl Player_8047224
	adds r2, r4, #0
	adds r2, #0x3e
	movs r5, #0
	ldrsb r5, [r2, r5]
	cmp r5, #1
	beq _08049660
	cmp r5, #1
	bgt _0804962E
	cmp r5, #0
	beq _08049634
	b _080497A2
_0804962E:
	cmp r5, #2
	beq _080496C0
	b _080497A2
_08049634:
	ldr r0, _0804965C @ =gUnknown_030060E0
	ldrh r1, [r4, #0x3a]
	ldrh r0, [r0, #2]
	ands r0, r1
	cmp r0, #0
	beq _08049654
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0xf
	beq _08049654
	movs r0, #0x5c
	strb r0, [r1]
	movs r0, #1
	strb r0, [r2]
_08049654:
	adds r0, r4, #0
	bl sa2__sub_8022190
	b _080497A2
	.align 2, 0
_0804965C: .4byte gUnknown_030060E0
_08049660:
	adds r0, r4, #0
	bl sa2__sub_8022838
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08049676
	b _080497A2
_08049676:
	ldr r1, [r4, #0x10]
	movs r0, #0x40
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, #0
	beq _08049686
	subs r2, #0xc0
_08049686:
	ands r1, r5
	cmp r1, #0
	beq _0804969E
	movs r1, #8
	ldrsh r0, [r4, r1]
	rsbs r1, r0, #0
	adds r0, r2, #0
	cmp r0, r1
	bge _0804969A
	adds r0, r1, #0
_0804969A:
	rsbs r0, r0, #0
	b _080496AA
_0804969E:
	movs r0, #8
	ldrsh r1, [r4, r0]
	adds r0, r2, #0
	cmp r0, r1
	bge _080496AA
	adds r0, r1, #0
_080496AA:
	strh r0, [r4, #8]
	ldrh r0, [r4, #8]
	strh r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3e
	movs r0, #2
	strb r0, [r1]
	movs r0, #0x6f
	bl m4aSongNumStart
	b _080497A2
_080496C0:
	adds r0, r4, #0
	bl sa2__sub_8022838
	adds r1, r4, #0
	adds r1, #0x80
	ldrb r0, [r1]
	ands r5, r0
	adds r6, r1, #0
	cmp r5, #0
	bne _08049720
	ldrh r1, [r4, #8]
	movs r2, #8
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bgt _080496EC
	adds r0, r1, #0
	adds r0, #0x18
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _08049720
	b _080496F8
_080496EC:
	adds r0, r1, #0
	subs r0, #0x18
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _08049720
_080496F8:
	movs r0, #0
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	strh r0, [r4, #0xa]
	adds r0, r4, #0
	bl sa2__sub_8022318
	ldr r0, [r4, #0x10]
	ldr r1, _0804971C @ =0xFBFFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	movs r0, #0xf
	strh r0, [r4, #0x1a]
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x5d
	strb r0, [r1]
	b _080497A2
	.align 2, 0
_0804971C: .4byte 0xFBFFFFFF
_08049720:
	ldr r0, _08049780 @ =gStageTime
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0804974C
	movs r2, #0xf
	ldrsb r2, [r4, r2]
	ldr r0, _08049784 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804973E
	rsbs r2, r2, #0
_0804973E:
	ldr r0, [r4]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	asrs r1, r1, #8
	adds r1, r1, r2
	bl CreateBrakingDustEffect
_0804974C:
	adds r0, r4, #0
	bl sa2__sub_8022838
	adds r0, r4, #0
	mov r1, sp
	movs r2, #0
	bl sub_8046EB0
	adds r2, r0, #0
	cmp r2, #6
	bgt _08049788
	ldr r0, _08049784 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08049770
	rsbs r2, r2, #0
_08049770:
	lsls r1, r2, #8
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
	mov r0, sp
	ldrb r0, [r0]
	strb r0, [r4, #0x14]
	b _080497A2
	.align 2, 0
_08049780: .4byte gStageTime
_08049784: .4byte gStageFlags
_08049788:
	ldr r0, [r4, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _080497A2
	adds r1, r4, #0
	adds r1, #0x3e
	movs r0, #1
	strb r0, [r1]
	ldrb r1, [r6]
	movs r0, #2
	orrs r0, r1
	strb r0, [r6]
_080497A2:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Player_Amy_80497AC
Player_Amy_80497AC: @ 0x080497AC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080497C0
	cmp r0, #2
	beq _080497DA
	b _0804984E
_080497C0:
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r1, r0
	cmp r1, #0
	beq _080497D2
	adds r0, r4, #0
	bl sub_80472B8
	b _0804984E
_080497D2:
	adds r0, r4, #0
	bl sub_80494E8
	b _0804984E
_080497DA:
	movs r2, #0xc0
	lsls r2, r2, #0x13
	ands r2, r1
	movs r0, #0x80
	lsls r0, r0, #0x12
	cmp r2, r0
	beq _08049816
	cmp r2, r0
	bhi _080497F2
	cmp r2, #0
	beq _080497FC
	b _0804984E
_080497F2:
	movs r0, #0x80
	lsls r0, r0, #0x13
	cmp r2, r0
	beq _08049848
	b _0804984E
_080497FC:
	adds r0, r4, #0
	bl Player_804726C
	adds r0, r4, #0
	bl Player_8047280
	adds r0, r4, #0
	bl Player_804948C
	adds r0, r4, #0
	bl Player_8044670
	b _08049822
_08049816:
	adds r0, r4, #0
	bl Player_804726C
	adds r0, r4, #0
	bl Player_8047280
_08049822:
	adds r0, r4, #0
	bl Player_80445A0
	adds r0, r4, #0
	bl Player_8043EC0
	adds r0, r4, #0
	bl Player_80470E8
	adds r0, r4, #0
	bl Player_8047134
	adds r0, r4, #0
	bl Player_8047224
	adds r0, r4, #0
	bl sa2__sub_8022190
	b _0804984E
_08049848:
	adds r0, r4, #0
	bl Player_80495F0
_0804984E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8049854
sub_8049854: @ 0x08049854
	push {r4, lr}
	adds r4, r0, #0
	bl Player_804726C
	adds r0, r4, #0
	bl Player_8047280
	adds r0, r4, #0
	bl Player_804948C
	adds r0, r4, #0
	bl Player_8044670
	adds r0, r4, #0
	bl Player_80445A0
	adds r0, r4, #0
	bl Player_8043EC0
	adds r0, r4, #0
	bl Player_80470E8
	adds r0, r4, #0
	bl Player_8047134
	adds r0, r4, #0
	bl Player_8047224
	adds r0, r4, #0
	bl sa2__sub_8022190
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8049898
sub_8049898: @ 0x08049898
	push {r4, r5, r6, lr}
	ldr r6, _08049930 @ =gPlayer
	ldr r4, _08049934 @ =gCamera
	ldr r0, _08049938 @ =gRefCollision
	ldr r0, [r0]
	ldrh r0, [r0, #0x1e]
	subs r0, #0xc8
	movs r5, #0
	strh r0, [r4, #0x14]
	movs r0, #0xf0
	lsls r0, r0, #1
	strh r0, [r4, #0x1a]
	movs r0, #0x40
	strh r0, [r4, #0xc]
	strh r5, [r4, #0xe]
	adds r0, r6, #0
	bl Player_804A254
	ldr r1, [r6, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08049950
	ldr r0, _0804993C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08049940 @ =Task_PlayerDied
	str r0, [r1, #8]
	adds r1, r6, #0
	adds r1, #0x40
	movs r0, #1
	strb r0, [r1]
	strh r5, [r6, #8]
	movs r0, #2
	strh r0, [r6, #0x1c]
	subs r1, #0x1a
	movs r0, #0
	strb r0, [r1]
	ldrh r0, [r4, #0x26]
	movs r1, #3
	orrs r0, r1
	strh r0, [r4, #0x26]
	ldr r0, _08049944 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bhi _080498FC
	ldr r0, _08049948 @ =gStageFlags
	ldrh r1, [r0]
	movs r2, #1
	orrs r1, r2
	strh r1, [r0]
_080498FC:
	ldr r2, [r6, #0x64]
	ldr r0, [r2, #0x1c]
	ldr r1, _0804994C @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r2, #0x1c]
	adds r0, r6, #0
	adds r0, #0x54
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r0, #0x1c
	bl m4aSongNumStop
	movs r0, #0x1b
	bl m4aSongNumStop
	movs r0, #0x78
	bl m4aSongNumStop
	b _08049960
	.align 2, 0
_08049930: .4byte gPlayer
_08049934: .4byte gCamera
_08049938: .4byte gRefCollision
_0804993C: .4byte gCurTask
_08049940: .4byte Task_PlayerDied
_08049944: .4byte gGameMode
_08049948: .4byte gStageFlags
_0804994C: .4byte 0xFFFFCFFF
_08049950:
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r1, r0
	cmp r1, #0
	bne _08049960
	adds r0, r6, #0
	bl sub_8049D7C
_08049960:
	adds r0, r6, #0
	bl Player_804A20C
	ldr r0, [r6, #0x60]
	ldrh r2, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r2, r4
	ldr r3, [r4, #8]
	adds r3, #1
	movs r0, #0xf
	ands r3, r0
	lsls r5, r3, #2
	ldr r1, _080499A8 @ =0x0300000C
	adds r0, r2, r1
	adds r0, r0, r5
	ldr r1, [r6]
	str r1, [r0]
	ldr r0, _080499AC @ =0x0300004C
	adds r2, r2, r0
	adds r2, r2, r5
	ldr r0, [r6, #4]
	str r0, [r2]
	str r3, [r4, #8]
	adds r0, r6, #0
	bl Player_8049E3C
	ldrh r1, [r6, #0x1a]
	movs r2, #0x1a
	ldrsh r0, [r6, r2]
	cmp r0, #0
	beq _080499B0
	subs r0, r1, #1
	strh r0, [r6, #0x1a]
	b _080499BE
	.align 2, 0
_080499A8: .4byte 0x0300000C
_080499AC: .4byte 0x0300004C
_080499B0:
	ldrh r1, [r6, #0x1c]
	movs r2, #0x1c
	ldrsh r0, [r6, r2]
	cmp r0, #0
	ble _080499BE
	subs r0, r1, #1
	strh r0, [r6, #0x1c]
_080499BE:
	adds r0, r6, #0
	bl Player_80499CC
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Player_80499CC
Player_80499CC: @ 0x080499CC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _08049A28 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08049A22
	ldr r0, _08049A2C @ =gUnknown_030061F0
	ldr r0, [r0]
	ldr r0, [r0, #0x58]
	movs r6, #0x80
	ands r0, r6
	cmp r0, #0
	bne _08049A22
	ldrh r1, [r5, #0x20]
	adds r0, r1, #1
	strh r0, [r5, #0x20]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _08049A22
	adds r0, r1, #0
	subs r0, #0x3b
	strh r0, [r5, #0x20]
	ldr r4, _08049A30 @ =gRingCount
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xa
	bhi _08049A14
	movs r0, #0x8b
	bl m4aSongNumStart
_08049A14:
	ldrh r0, [r4]
	cmp r0, #0
	bne _08049A22
	strh r0, [r4]
	ldr r0, [r5, #0x10]
	orrs r0, r6
	str r0, [r5, #0x10]
_08049A22:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08049A28: .4byte gStageFlags
_08049A2C: .4byte gUnknown_030061F0
_08049A30: .4byte gRingCount

	thumb_func_start sub_8049A34
sub_8049A34: @ 0x08049A34
	push {r4, lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0x38]
	movs r3, #0x30
	ands r3, r0
	cmp r3, #0x10
	beq _08049A98
	cmp r3, #0x10
	bgt _08049A4C
	cmp r3, #0
	beq _08049A52
	b _08049AAC
_08049A4C:
	cmp r3, #0x20
	beq _08049A80
	b _08049AAC
_08049A52:
	ldrh r0, [r2, #0xc]
	movs r4, #0xc
	ldrsh r1, [r2, r4]
	cmp r1, #0
	beq _08049AAC
	cmp r1, #0
	ble _08049A6E
	subs r0, #0x60
	strh r0, [r2, #0xc]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08049AAC
	strh r3, [r2, #0xc]
	b _08049AAC
_08049A6E:
	cmp r1, #0
	bge _08049AAC
	adds r0, #0x60
	strh r0, [r2, #0xc]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08049AAC
	strh r3, [r2, #0xc]
	b _08049AAC
_08049A80:
	ldrh r0, [r2, #0xc]
	subs r0, #0x24
	strh r0, [r2, #0xc]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _08049A94 @ =0xFFFFFE00
	cmp r0, r1
	bge _08049AAC
	b _08049AAA
	.align 2, 0
_08049A94: .4byte 0xFFFFFE00
_08049A98:
	ldrh r0, [r2, #0xc]
	adds r0, #0x24
	strh r0, [r2, #0xc]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #2
	cmp r0, r1
	ble _08049AAC
_08049AAA:
	strh r1, [r2, #0xc]
_08049AAC:
	ldrh r0, [r2, #0xc]
	strh r0, [r2, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Player_8049AB8
Player_8049AB8: @ 0x08049AB8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08049B54
	adds r0, r4, #0
	bl sub_8049BAC
	cmp r0, #0
	bne _08049BA4
	ldr r0, _08049AFC @ =gUnknown_030060E0
	ldrh r1, [r4, #0x3a]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _08049B04
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	adds r1, #0xfe
	orrs r0, r1
	str r0, [r4, #0x10]
	ldr r1, _08049B00 @ =0xFFFFFBC0
	adds r0, r1, #0
	ldrh r1, [r4, #0xa]
	adds r0, r0, r1
	strh r0, [r4, #0xa]
	movs r0, #0x74
	bl m4aSongNumStart
	b _08049BA4
	.align 2, 0
_08049AFC: .4byte gUnknown_030060E0
_08049B00: .4byte 0xFFFFFBC0
_08049B04:
	adds r0, r4, #0
	bl sub_8049A34
	ldr r2, [r4]
	adds r3, r2, #0
	cmp r2, #0
	blt _08049B20
	adds r0, r2, #0
	movs r1, #0xf0
	lsls r1, r1, #9
	cmp r0, r1
	ble _08049B22
	adds r0, r1, #0
	b _08049B22
_08049B20:
	movs r0, #0
_08049B22:
	adds r2, r0, #0
	cmp r2, r3
	beq _08049B38
	ldr r1, [r4, #0x10]
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _08049B34
	strh r1, [r4, #0xc]
_08049B34:
	movs r0, #0
	strh r0, [r4, #8]
_08049B38:
	str r2, [r4]
	adds r0, r4, #0
	bl Player_80470E8
	adds r0, r4, #0
	bl Player_80470E8
	adds r0, r4, #0
	bl Player_804A0B8
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #2
	b _08049BA2
_08049B54:
	adds r0, r4, #0
	bl sub_804A2FC
	ldr r2, [r4]
	adds r3, r2, #0
	cmp r2, #0
	blt _08049B70
	adds r0, r2, #0
	movs r1, #0xf0
	lsls r1, r1, #9
	cmp r0, r1
	ble _08049B72
	adds r0, r1, #0
	b _08049B72
_08049B70:
	movs r0, #0
_08049B72:
	adds r2, r0, #0
	cmp r2, r3
	beq _08049B88
	ldr r1, [r4, #0x10]
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _08049B84
	strh r1, [r4, #0xc]
_08049B84:
	movs r0, #0
	strh r0, [r4, #8]
_08049B88:
	str r2, [r4]
	adds r0, r4, #0
	bl Player_80470E8
	adds r0, r4, #0
	bl Player_80470E8
	adds r0, r4, #0
	bl Player_804A0B8
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #3
_08049BA2:
	strb r0, [r1]
_08049BA4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8049BAC
sub_8049BAC: @ 0x08049BAC
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x3d
	ldrb r3, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08049BC8
	subs r0, r3, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08049C04
_08049BC8:
	ldr r0, _08049C00 @ =gUnknown_030060E0
	ldrh r1, [r2, #0x3a]
	ldrh r0, [r0, #2]
	ands r0, r1
	cmp r0, #0
	beq _08049C04
	adds r3, r2, #0
	adds r3, #0x3d
	movs r1, #0
	movs r0, #8
	strb r0, [r3]
	adds r3, #1
	movs r0, #1
	strb r0, [r3]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r2, #0xc]
	strh r1, [r2, #8]
	strh r1, [r2, #0xa]
	adds r0, r2, #0
	bl sub_804A854
	movs r0, #0x70
	bl m4aSongNumStart
	movs r0, #1
	b _08049C06
	.align 2, 0
_08049C00: .4byte gUnknown_030060E0
_08049C04:
	movs r0, #0
_08049C06:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Player_8049C0C
Player_8049C0C: @ 0x08049C0C
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x3e
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne _08049D0E
	adds r0, r4, #0
	bl sub_8049BAC
	cmp r0, #0
	beq _08049C28
	b _08049D74
_08049C28:
	ldr r0, _08049C78 @ =gUnknown_030060E0
	ldrh r1, [r4, #0x38]
	ldrh r0, [r0]
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	bne _08049C52
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08049C52
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	adds r2, r0, #0
	ldr r1, _08049C7C @ =0xFFFFFE80
	cmp r0, r1
	bge _08049C50
	adds r2, r1, #0
_08049C50:
	strh r2, [r4, #0xa]
_08049C52:
	movs r0, #0x30
	ands r0, r3
	cmp r0, #0x10
	beq _08049C84
	cmp r0, #0x20
	bne _08049C98
	ldrh r0, [r4, #8]
	subs r0, #0x48
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _08049C80 @ =0xFFFFFE00
	cmp r0, r1
	bge _08049C98
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r4, #8]
	b _08049C98
	.align 2, 0
_08049C78: .4byte gUnknown_030060E0
_08049C7C: .4byte 0xFFFFFE80
_08049C80: .4byte 0xFFFFFE00
_08049C84:
	ldrh r0, [r4, #8]
	adds r0, #0x48
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #2
	cmp r0, r1
	ble _08049C98
	strh r1, [r4, #8]
_08049C98:
	ldr r2, [r4]
	adds r3, r2, #0
	cmp r2, #0
	blt _08049CAE
	adds r0, r2, #0
	movs r1, #0xf0
	lsls r1, r1, #9
	cmp r0, r1
	ble _08049CB0
	adds r0, r1, #0
	b _08049CB0
_08049CAE:
	movs r0, #0
_08049CB0:
	adds r2, r0, #0
	cmp r2, r3
	beq _08049CC6
	ldr r1, [r4, #0x10]
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _08049CC2
	strh r1, [r4, #0xc]
_08049CC2:
	movs r0, #0
	strh r0, [r4, #8]
_08049CC6:
	str r2, [r4]
	adds r0, r4, #0
	bl Player_80470E8
	adds r0, r4, #0
	bl Player_80470E8
	ldrh r0, [r4, #0xa]
	adds r0, #0x20
	strh r0, [r4, #0xa]
	movs r0, #0x14
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _08049CEA
	adds r0, #2
	cmp r0, #0
	ble _08049CF6
	b _08049CF4
_08049CEA:
	cmp r0, #0
	ble _08049CF6
	subs r0, #2
	cmp r0, #0
	bge _08049CF6
_08049CF4:
	movs r0, #0
_08049CF6:
	strb r0, [r4, #0x14]
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _08049D06
	adds r0, r4, #0
	bl sub_8049FD0
_08049D06:
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #2
	b _08049D72
_08049D0E:
	ldrh r0, [r4, #0xc]
	adds r1, r0, #0
	subs r1, #0x40
	movs r3, #0
	strh r1, [r4, #0xc]
	lsls r0, r1, #0x10
	cmp r0, #0
	bgt _08049D28
	movs r0, #0
	strb r0, [r2]
	strh r3, [r4, #8]
	strh r3, [r4, #0xa]
	b _08049D2A
_08049D28:
	strh r1, [r4, #8]
_08049D2A:
	ldr r2, [r4]
	adds r3, r2, #0
	cmp r2, #0
	blt _08049D40
	adds r0, r2, #0
	movs r1, #0xf0
	lsls r1, r1, #9
	cmp r0, r1
	ble _08049D42
	adds r0, r1, #0
	b _08049D42
_08049D40:
	movs r0, #0
_08049D42:
	adds r2, r0, #0
	cmp r2, r3
	beq _08049D58
	ldr r1, [r4, #0x10]
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _08049D54
	strh r1, [r4, #0xc]
_08049D54:
	movs r0, #0
	strh r0, [r4, #8]
_08049D58:
	str r2, [r4]
	adds r0, r4, #0
	bl Player_80470E8
	adds r0, r4, #0
	bl Player_80470E8
	adds r0, r4, #0
	bl Player_804A0B8
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #3
_08049D72:
	strb r0, [r1]
_08049D74:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8049D7C
sub_8049D7C: @ 0x08049D7C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _08049DA2
	ldrb r0, [r5, #0x14]
	subs r0, #0xc
	strb r0, [r5, #0x14]
	adds r0, r5, #0
	bl Player_80470E8
	adds r0, r5, #0
	bl Player_80470E8
	adds r0, r5, #0
	bl Player_804A0B8
	b _08049E20
_08049DA2:
	ldr r0, [r5, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08049DB4
	adds r0, r5, #0
	bl Player_8049C0C
	b _08049DBA
_08049DB4:
	adds r0, r5, #0
	bl Player_8049AB8
_08049DBA:
	ldr r0, _08049E28 @ =gStageTime
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08049E20
	ldr r7, _08049E2C @ =gPseudoRandom
	ldr r0, [r7]
	ldr r6, _08049E30 @ =0x00196225
	muls r0, r6, r0
	ldr r3, _08049E34 @ =0x3C6EF35F
	adds r2, r0, r3
	str r2, [r7]
	movs r0, #0x80
	lsls r0, r0, #9
	mov ip, r0
	adds r0, r2, #0
	mov r1, ip
	ands r0, r1
	cmp r0, #0
	beq _08049E20
	muls r2, r6, r2
	adds r2, r2, r3
	movs r4, #0xf0
	lsls r4, r4, #0xc
	adds r1, r2, #0
	ands r1, r4
	lsrs r1, r1, #8
	ldr r0, [r5]
	adds r0, r0, r1
	adds r3, r2, #0
	muls r3, r6, r3
	ldr r2, _08049E34 @ =0x3C6EF35F
	adds r3, r3, r2
	adds r2, r3, #0
	ands r2, r4
	lsrs r2, r2, #8
	ldr r1, [r5, #4]
	adds r1, r1, r2
	ldr r2, _08049E38 @ =0xFFFFF800
	adds r1, r1, r2
	adds r2, r3, #0
	muls r2, r6, r2
	ldr r3, _08049E34 @ =0x3C6EF35F
	adds r2, r2, r3
	str r2, [r7]
	mov r3, ip
	ands r2, r3
	lsrs r2, r2, #0x10
	bl sub_804A498
_08049E20:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08049E28: .4byte gStageTime
_08049E2C: .4byte gPseudoRandom
_08049E30: .4byte 0x00196225
_08049E34: .4byte 0x3C6EF35F
_08049E38: .4byte 0xFFFFF800

	thumb_func_start Player_8049E3C
Player_8049E3C: @ 0x08049E3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	ldr r0, [r0, #0x64]
	adds r4, r0, #0
	adds r4, #0xc
	adds r5, r0, #0
	ldr r0, [r4, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	adds r1, #1
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	mov r0, r8
	ldr r1, [r0, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08049EA4
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r1, r0
	cmp r1, #0
	beq _08049E84
	b _08049FA6
_08049E84:
	mov r1, r8
	movs r2, #0x1a
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bne _08049EA4
	movs r3, #0x1c
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _08049EA4
	ldr r0, _08049FB8 @ =gStageTime
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08049EA4
	b _08049FA6
_08049EA4:
	mov r1, r8
	ldr r0, [r1, #0x60]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r7, r0
	ldr r0, [r0, #8]
	str r0, [sp]
	ldr r0, [r1]
	asrs r0, r0, #8
	ldr r2, _08049FBC @ =gCamera
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	strh r0, [r5, #6]
	mov r3, r8
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	strh r0, [r5, #8]
	mov r0, r8
	adds r0, #0x40
	movs r1, #0
	ldrsb r1, [r0, r1]
	str r0, [sp, #4]
	cmp r1, #4
	bne _08049F04
	ldr r0, [r4, #0x10]
	ldr r1, _08049FC0 @ =0xFFFFFBFF
	ands r0, r1
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #0x10]
	ldrb r0, [r3, #0x14]
	lsls r0, r0, #2
	strh r0, [r5]
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r5, #2]
	adds r0, r4, #0
	adds r1, r5, #0
	bl TransformSprite
_08049F04:
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, [r4, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x10]
	ldr r0, _08049FB8 @ =gStageTime
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08049F9E
	movs r6, #1
	ldr r0, _08049FC4 @ =0x0300000C
	adds r0, r0, r7
	mov sl, r0
	ldr r1, _08049FC8 @ =0x0300004C
	adds r1, r1, r7
	mov sb, r1
	ldr r7, [sp]
	subs r7, #2
_08049F32:
	movs r2, #0xf
	ands r2, r7
	lsls r2, r2, #2
	mov r3, sl
	adds r0, r3, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	lsls r1, r6, #3
	subs r0, r0, r1
	ldr r3, _08049FBC @ =gCamera
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	strh r0, [r5, #6]
	add r2, sb
	ldr r0, [r2]
	asrs r0, r0, #8
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	strh r0, [r5, #8]
	ldr r1, [sp, #4]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #4
	bne _08049F90
	ldr r0, [r4, #0x10]
	ldr r1, _08049FC0 @ =0xFFFFFBFF
	ands r0, r1
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	orrs r0, r6
	str r0, [r4, #0x10]
	mov r2, r8
	ldrb r0, [r2, #0x14]
	lsls r0, r0, #2
	strh r0, [r5]
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r5, #2]
	adds r0, r4, #0
	adds r1, r5, #0
	bl TransformSprite
_08049F90:
	adds r0, r4, #0
	bl DisplaySprite
	subs r7, #2
	adds r6, #1
	cmp r6, #3
	ble _08049F32
_08049F9E:
	ldr r0, [r4, #0x10]
	ldr r1, _08049FCC @ =0xFFF3FFFF
	ands r0, r1
	str r0, [r4, #0x10]
_08049FA6:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08049FB8: .4byte gStageTime
_08049FBC: .4byte gCamera
_08049FC0: .4byte 0xFFFFFBFF
_08049FC4: .4byte 0x0300000C
_08049FC8: .4byte 0x0300004C
_08049FCC: .4byte 0xFFF3FFFF

	thumb_func_start sub_8049FD0
sub_8049FD0: @ 0x08049FD0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r0, _0804A0A8 @ =gCamera
	movs r1, #0
	ldrsh r4, [r0, r1]
	ldr r0, _0804A0AC @ =gStageTime
	ldr r0, [r0]
	lsls r0, r0, #3
	adds r2, r4, r0
	adds r1, r2, #0
	subs r1, #0x48
	ldr r0, _0804A0B0 @ =0x00000A7F
	cmp r1, r0
	ble _0804A006
	adds r2, r1, #0
	movs r1, #0xa8
	lsls r1, r1, #4
	adds r0, r2, #0
	bl Mod
	adds r2, r0, #0
	adds r2, #0x48
_0804A006:
	subs r0, r4, r2
	lsls r0, r0, #8
	ldr r4, [r7]
	subs r4, r4, r0
	ldr r5, [r7, #4]
	adds r2, r7, #0
	adds r2, #0x3d
	str r2, [sp, #0xc]
	movs r0, #0
	ldrsb r0, [r2, r0]
	str r0, [sp, #8]
	adds r0, r7, #0
	adds r0, #0x27
	ldrb r0, [r0]
	mov r8, r0
	asrs r5, r5, #8
	movs r0, #0xf
	ldrsb r0, [r7, r0]
	adds r0, r5, r0
	asrs r4, r4, #8
	subs r1, r4, #2
	movs r2, #0xe
	ldrsb r2, [r7, r2]
	subs r1, r1, r2
	movs r2, #0
	mov sb, r2
	str r2, [sp]
	ldr r2, _0804A0B4 @ =sa2__sub_801EE64
	mov sl, r2
	str r2, [sp, #4]
	mov r2, r8
	movs r3, #8
	bl sa2__sub_801E4E4
	adds r6, r0, #0
	movs r0, #0xf
	ldrsb r0, [r7, r0]
	adds r5, r5, r0
	adds r4, #2
	movs r0, #0xe
	ldrsb r0, [r7, r0]
	adds r4, r4, r0
	mov r0, sb
	str r0, [sp]
	mov r1, sl
	str r1, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, r8
	movs r3, #8
	bl sa2__sub_801E4E4
	cmp r0, r6
	ble _0804A074
	adds r0, r6, #0
_0804A074:
	cmp r0, #0
	bge _0804A096
	lsls r0, r0, #8
	ldr r1, [r7, #4]
	adds r1, r1, r0
	str r1, [r7, #4]
	ldrh r0, [r7, #8]
	strh r0, [r7, #0xc]
	mov r2, sb
	strh r2, [r7, #0xa]
	adds r0, r7, #0
	bl sa2__sub_8021BE0
	mov r0, sp
	ldrb r1, [r0, #8]
	ldr r0, [sp, #0xc]
	strb r1, [r0]
_0804A096:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804A0A8: .4byte gCamera
_0804A0AC: .4byte gStageTime
_0804A0B0: .4byte 0x00000A7F
_0804A0B4: .4byte sa2__sub_801EE64

	thumb_func_start Player_804A0B8
Player_804A0B8: @ 0x0804A0B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	ldr r0, _0804A164 @ =gCamera
	movs r1, #0
	ldrsh r4, [r0, r1]
	ldr r0, _0804A168 @ =gStageTime
	ldr r0, [r0]
	lsls r0, r0, #3
	adds r2, r4, r0
	adds r1, r2, #0
	subs r1, #0x48
	ldr r0, _0804A16C @ =0x00000A7F
	cmp r1, r0
	ble _0804A0EE
	adds r2, r1, #0
	movs r1, #0xa8
	lsls r1, r1, #4
	adds r0, r2, #0
	bl Mod
	adds r2, r0, #0
	adds r2, #0x48
_0804A0EE:
	subs r0, r4, r2
	lsls r0, r0, #8
	ldr r4, [r7]
	subs r4, r4, r0
	ldr r6, [r7, #4]
	adds r0, r7, #0
	adds r0, #0x27
	ldrb r0, [r0]
	mov sb, r0
	asrs r5, r6, #8
	movs r0, #0xf
	ldrsb r0, [r7, r0]
	adds r0, r5, r0
	asrs r4, r4, #8
	subs r1, r4, #2
	movs r2, #0xe
	ldrsb r2, [r7, r2]
	subs r1, r1, r2
	movs r2, #0
	str r2, [sp]
	ldr r2, _0804A170 @ =sa2__sub_801EE64
	mov r8, r2
	str r2, [sp, #4]
	mov r2, sb
	movs r3, #8
	bl sa2__sub_801E4E4
	mov sl, r0
	movs r0, #0xf
	ldrsb r0, [r7, r0]
	adds r5, r5, r0
	adds r4, #2
	movs r0, #0xe
	ldrsb r0, [r7, r0]
	adds r4, r4, r0
	movs r0, #0
	str r0, [sp]
	mov r1, r8
	str r1, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, sb
	movs r3, #8
	bl sa2__sub_801E4E4
	adds r1, r0, #0
	cmp r1, sl
	ble _0804A150
	mov r1, sl
_0804A150:
	cmp r1, #0
	beq _0804A1A4
	cmp r1, #0
	bge _0804A174
	movs r0, #0xb
	rsbs r0, r0, #0
	cmp r1, r0
	blt _0804A1A6
	b _0804A1A0
	.align 2, 0
_0804A164: .4byte gCamera
_0804A168: .4byte gStageTime
_0804A16C: .4byte 0x00000A7F
_0804A170: .4byte sa2__sub_801EE64
_0804A174:
	movs r2, #8
	ldrsh r0, [r7, r2]
	cmp r0, #0
	bge _0804A17E
	rsbs r0, r0, #0
_0804A17E:
	asrs r0, r0, #8
	adds r0, #0xb
	cmp r0, #0xb
	ble _0804A188
	movs r0, #0xb
_0804A188:
	cmp r1, r0
	ble _0804A1A0
	ldr r1, [r7, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0x14
	ands r0, r1
	cmp r0, #0
	bne _0804A1A4
	movs r0, #2
	orrs r1, r0
	str r1, [r7, #0x10]
	b _0804A1A6
_0804A1A0:
	lsls r0, r1, #8
	adds r6, r6, r0
_0804A1A4:
	str r6, [r7, #4]
_0804A1A6:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

@ Called when Super Sonic is initialized
@ TODO: Find split point for Super Sonic module!
	thumb_func_start sub_804A1B8
sub_804A1B8: @ 0x0804A1B8
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x60]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	movs r1, #0
	str r1, [r0, #8]
	ldr r4, _0804A200 @ =gRingCount
	ldr r0, _0804A204 @ =0x0300000C
	adds r2, r2, r0
	movs r1, #0xf
_0804A1D2:
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r3, #4]
	str r0, [r2, #0x40]
	adds r2, #4
	subs r1, #1
	cmp r1, #0
	bge _0804A1D2
	movs r0, #0x32  @ EXTRA_BOSS__INITIAL_RING_COUNT (50)
	strh r0, [r4]
	ldr r2, [r3, #0x64]
	ldr r0, [r2, #0x1c]
	ldr r1, _0804A208 @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r2, #0x1c]
	bl sub_804A848
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804A200: .4byte gRingCount
_0804A204: .4byte 0x0300000C
_0804A208: .4byte 0xFFFFCFFF

	thumb_func_start Player_804A20C
Player_804A20C: @ 0x0804A20C
	push {r4, r5, lr}
	ldr r2, [r0, #0x64]
	adds r4, r2, #0
	adds r4, #0xc
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	ldr r1, _0804A250 @ =gUnknown_084AE1B0
	adds r1, r0, r1
	ldrh r3, [r1]
	ldrh r0, [r4, #0xa]
	cmp r0, r3
	bne _0804A236
	adds r0, r2, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	ldrb r5, [r1, #2]
	cmp r0, r5
	beq _0804A248
_0804A236:
	strh r3, [r4, #0xa]
	ldrb r1, [r1, #2]
	adds r0, r2, #0
	adds r0, #0x2c
	strb r1, [r0]
	adds r1, r2, #0
	adds r1, #0x2d
	movs r0, #0xff
	strb r0, [r1]
_0804A248:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804A250: .4byte gUnknown_084AE1B0

	thumb_func_start Player_804A254
Player_804A254: @ 0x0804A254
	adds r3, r0, #0
	ldrh r2, [r3, #0x38]
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	ands r0, r1
	cmp r0, #0
	bne _0804A26A
	ldr r0, _0804A274 @ =gInput
	ldrh r0, [r0]
	strh r0, [r3, #0x38]
_0804A26A:
	ldrh r0, [r3, #0x38]
	eors r2, r0
	ands r2, r0
	strh r2, [r3, #0x3a]
	bx lr
	.align 2, 0
_0804A274: .4byte gInput

	thumb_func_start sub_804A278
sub_804A278: @ 0x0804A278
	push {lr}
	adds r2, r0, #0
	ldr r0, _0804A2A8 @ =gUnknown_030060E0
	ldrh r1, [r2, #0x3a]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _0804A2B0
	ldr r0, [r2, #0x10]
	movs r1, #2
	orrs r0, r1
	adds r1, #0xfe
	orrs r0, r1
	str r0, [r2, #0x10]
	ldr r1, _0804A2AC @ =0xFFFFFBC0
	adds r0, r1, #0
	ldrh r1, [r2, #0xa]
	adds r0, r0, r1
	strh r0, [r2, #0xa]
	movs r0, #0x74
	bl m4aSongNumStart
	movs r0, #1
	b _0804A2B2
	.align 2, 0
_0804A2A8: .4byte gUnknown_030060E0
_0804A2AC: .4byte 0xFFFFFBC0
_0804A2B0:
	movs r0, #0
_0804A2B2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_804A2B8
sub_804A2B8: @ 0x0804A2B8
	adds r2, r0, #0
	ldrh r0, [r2, #0x38]
	movs r1, #0x30
	ands r1, r0
	cmp r1, #0x10
	beq _0804A2E4
	cmp r1, #0x20
	bne _0804A2F8
	ldrh r0, [r2, #8]
	subs r0, #0x48
	strh r0, [r2, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _0804A2E0 @ =0xFFFFFE00
	cmp r0, r1
	bge _0804A2F8
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r2, #8]
	b _0804A2F8
	.align 2, 0
_0804A2E0: .4byte 0xFFFFFE00
_0804A2E4:
	ldrh r0, [r2, #8]
	adds r0, #0x48
	strh r0, [r2, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #2
	cmp r0, r1
	ble _0804A2F8
	strh r1, [r2, #8]
_0804A2F8:
	bx lr
	.align 2, 0

	thumb_func_start sub_804A2FC
sub_804A2FC: @ 0x0804A2FC
	adds r2, r0, #0
	ldrh r0, [r2, #0xc]
	adds r1, r0, #0
	subs r1, #0x40
	movs r3, #0
	strh r1, [r2, #0xc]
	lsls r0, r1, #0x10
	cmp r0, #0
	bgt _0804A31C
	adds r1, r2, #0
	adds r1, #0x3e
	movs r0, #0
	strb r0, [r1]
	strh r3, [r2, #8]
	strh r3, [r2, #0xa]
	b _0804A31E
_0804A31C:
	strh r1, [r2, #8]
_0804A31E:
	bx lr

	thumb_func_start sub_804A320
sub_804A320: @ 0x0804A320
	adds r2, r0, #0
	ldr r0, _0804A34C @ =gUnknown_030060E0
	ldrh r1, [r2, #0x38]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _0804A34A
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0804A34A
	movs r1, #0xa
	ldrsh r0, [r2, r1]
	adds r3, r0, #0
	ldr r1, _0804A350 @ =0xFFFFFE80
	cmp r0, r1
	bge _0804A348
	adds r3, r1, #0
_0804A348:
	strh r3, [r2, #0xa]
_0804A34A:
	bx lr
	.align 2, 0
_0804A34C: .4byte gUnknown_030060E0
_0804A350: .4byte 0xFFFFFE80

	thumb_func_start sub_804A354
sub_804A354: @ 0x0804A354
	ldrh r1, [r0, #0xc]
	strh r1, [r0, #8]
	bx lr
	.align 2, 0

	thumb_func_start sub_804A35C
sub_804A35C: @ 0x0804A35C
	movs r1, #0x14
	ldrsb r1, [r0, r1]
	cmp r1, #0
	bge _0804A36C
	adds r1, #2
	cmp r1, #0
	ble _0804A378
	b _0804A376
_0804A36C:
	cmp r1, #0
	ble _0804A378
	subs r1, #2
	cmp r1, #0
	bge _0804A378
_0804A376:
	movs r1, #0
_0804A378:
	strb r1, [r0, #0x14]
	bx lr

	thumb_func_start sub_804A37C
sub_804A37C: @ 0x0804A37C
	push {r4, lr}
	adds r3, r0, #0
	ldr r2, [r3]
	adds r4, r2, #0
	cmp r2, #0
	blt _0804A396
	adds r0, r2, #0
	movs r1, #0xf0
	lsls r1, r1, #9
	cmp r0, r1
	ble _0804A398
	adds r0, r1, #0
	b _0804A398
_0804A396:
	movs r0, #0
_0804A398:
	adds r2, r0, #0
	cmp r2, r4
	beq _0804A3AE
	ldr r1, [r3, #0x10]
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _0804A3AA
	strh r1, [r3, #0xc]
_0804A3AA:
	movs r0, #0
	strh r0, [r3, #8]
_0804A3AE:
	str r2, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_804A3B8
sub_804A3B8: @ 0x0804A3B8
	ldrh r1, [r0, #0xa]
	adds r1, #0x20
	strh r1, [r0, #0xa]
	bx lr

	thumb_func_start sub_804A3C0
sub_804A3C0: @ 0x0804A3C0
	push {r4, r5, r6, lr}
	ldr r0, _0804A404 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r0, #0x18
	adds r4, r1, r0
	ldr r5, _0804A408 @ =gPlayer
	ldr r6, _0804A40C @ =gCamera
	ldr r0, [r5]
	str r0, [r3, #0x50]
	ldr r0, [r5, #4]
	str r0, [r3, #0x54]
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0804A3FA
	ldrb r0, [r3, #2]
	cmp r0, #0
	beq _0804A410
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0804A410
_0804A3FA:
	adds r0, r2, #0
	bl TaskDestroy
	b _0804A48E
	.align 2, 0
_0804A404: .4byte gCurTask
_0804A408: .4byte gPlayer
_0804A40C: .4byte gCamera
_0804A410:
	adds r0, r5, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0804A42A
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x14
	ands r0, r1
	cmp r0, #0
	beq _0804A43A
_0804A42A:
	movs r0, #1
	strb r0, [r3, #2]
	movs r1, #0xc8
	lsls r1, r1, #1
	strh r1, [r4, #0xa]
	adds r1, r4, #0
	adds r1, #0x20
	strb r0, [r1]
_0804A43A:
	ldr r2, [r3, #0x50]
	asrs r2, r2, #8
	movs r1, #0
	ldrsh r0, [r6, r1]
	subs r2, r2, r0
	ldr r0, [r3, #0x54]
	asrs r0, r0, #8
	movs r3, #2
	ldrsh r1, [r6, r3]
	subs r0, r0, r1
	strh r2, [r4, #0x16]
	strh r0, [r4, #0x18]
	ldr r0, _0804A46C @ =gStageTime
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0804A474
	ldr r0, [r4, #0x10]
	ldr r1, _0804A470 @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	b _0804A47E
	.align 2, 0
_0804A46C: .4byte gStageTime
_0804A470: .4byte 0xFFFFCFFF
_0804A474:
	ldr r0, [r4, #0x10]
	ldr r1, _0804A494 @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
_0804A47E:
	orrs r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0804A48E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804A494: .4byte 0xFFFFCFFF

	thumb_func_start sub_804A498
sub_804A498: @ 0x0804A498
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _0804A4C8 @ =gUnknown_03005C74
	ldr r0, [r1]
	cmp r0, #0
	ble _0804A522
	subs r0, #1
	str r0, [r1]
	cmp r2, #0
	beq _0804A4D8
	ldr r1, _0804A4CC @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	ldr r1, _0804A4D0 @ =0x00000307
	orrs r0, r1
	ldr r1, _0804A4D4 @ =0xFF00FFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	b _0804A4E6
	.align 2, 0
_0804A4C8: .4byte gUnknown_03005C74
_0804A4CC: .4byte 0xFFFF0000
_0804A4D0: .4byte 0x00000307
_0804A4D4: .4byte 0xFF00FFFF
_0804A4D8:
	ldr r1, _0804A52C @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	ldr r1, _0804A530 @ =0x00000307
	orrs r0, r1
	ldr r1, _0804A534 @ =0xFF00FFFF
	ands r0, r1
_0804A4E6:
	str r0, [sp]
	movs r0, #4
	bl VramMalloc
	str r0, [sp, #4]
	ldr r1, _0804A538 @ =sub_804A54C
	ldr r2, _0804A53C @ =sub_804A830
	mov r0, sp
	bl sub_804CEDC
	ldrh r1, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r1, r2
	str r4, [r2, #0x50]
	str r5, [r2, #0x54]
	ldr r0, _0804A540 @ =0x03000058
	adds r3, r1, r0
	movs r0, #0
	strh r0, [r3]
	ldr r0, _0804A544 @ =0x0300005C
	adds r1, r1, r0
	ldr r0, _0804A548 @ =0x0000FFC0
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2, #0x32]
	movs r0, #0xa0
	lsls r0, r0, #5
	str r0, [r2, #0x28]
_0804A522:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804A52C: .4byte 0xFFFF0000
_0804A530: .4byte 0x00000307
_0804A534: .4byte 0xFF00FFFF
_0804A538: .4byte sub_804A54C
_0804A53C: .4byte sub_804A830
_0804A540: .4byte 0x03000058
_0804A544: .4byte 0x0300005C
_0804A548: .4byte 0x0000FFC0

	thumb_func_start sub_804A54C
sub_804A54C: @ 0x0804A54C
	push {r4, r5, r6, r7, lr}
	ldr r0, _0804A594 @ =gCurTask
	ldr r0, [r0]
	mov ip, r0
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r6, r0
	adds r0, #0x18
	adds r4, r6, r0
	ldr r2, _0804A598 @ =gCamera
	ldr r0, [r5, #0x50]
	asrs r0, r0, #8
	movs r3, #0
	ldrsh r1, [r2, r3]
	subs r3, r0, r1
	ldr r0, [r5, #0x54]
	asrs r0, r0, #8
	movs r7, #2
	ldrsh r1, [r2, r7]
	subs r2, r0, r1
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0804A58C
	adds r1, r3, #0
	adds r1, #0x10
	ldr r0, _0804A59C @ =0x0000010F
	cmp r1, r0
	bls _0804A5A0
_0804A58C:
	mov r0, ip
	bl TaskDestroy
	b _0804A5CA
	.align 2, 0
_0804A594: .4byte gCurTask
_0804A598: .4byte gCamera
_0804A59C: .4byte 0x0000010F
_0804A5A0:
	strh r3, [r4, #0x16]
	strh r2, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, _0804A5D0 @ =0x03000058
	adds r1, r6, r0
	movs r3, #0
	ldrsh r2, [r1, r3]
	ldr r0, [r5, #0x50]
	adds r0, r0, r2
	str r0, [r5, #0x50]
	ldr r7, _0804A5D4 @ =0x0300005C
	adds r0, r6, r7
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
_0804A5CA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804A5D0: .4byte 0x03000058
_0804A5D4: .4byte 0x0300005C

	thumb_func_start sub_804A5D8
sub_804A5D8: @ 0x0804A5D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r0, [sp]
	ldr r1, _0804A708 @ =0xFFFF0000
	ands r0, r1
	ldr r2, _0804A70C @ =0x000002CF
	mov sb, r2
	orrs r0, r2
	ldr r1, _0804A710 @ =0xFF00FFFF
	mov sl, r1
	ands r0, r1
	str r0, [sp]
	movs r0, #0x10
	bl VramMalloc
	str r0, [sp, #4]
	mov r0, sp
	ldr r1, _0804A714 @ =sub_804A71C
	ldr r2, _0804A718 @ =sub_804CF88
	bl sub_804CEDC
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	mov r8, r2
	adds r1, r0, r2
	movs r5, #0
	strh r5, [r1]
	str r7, [r1, #0x50]
	str r6, [r1, #0x54]
	strh r5, [r1, #0x32]
	str r5, [r1, #0x28]
	movs r4, #0x80
	lsls r4, r4, #1
	strh r4, [r1, #0xe]
	strh r4, [r1, #0x10]
	ldr r0, [sp, #8]
	ldr r1, _0804A708 @ =0xFFFF0000
	ands r0, r1
	mov r2, sb
	orrs r0, r2
	mov r1, sl
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [sp, #8]
	movs r0, #0x10
	bl VramMalloc
	adds r1, r0, #0
	add r0, sp, #8
	str r1, [r0, #4]
	ldr r1, _0804A714 @ =sub_804A71C
	ldr r2, _0804A718 @ =sub_804CF88
	bl sub_804CEDC
	ldrh r0, [r0, #6]
	mov r2, r8
	adds r1, r0, r2
	movs r0, #1
	strh r0, [r1]
	str r7, [r1, #0x50]
	str r6, [r1, #0x54]
	strh r5, [r1, #0x32]
	strh r4, [r1, #0xe]
	strh r4, [r1, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r1, #0x28]
	ldr r0, [sp, #0x10]
	ldr r1, _0804A708 @ =0xFFFF0000
	ands r0, r1
	mov r2, sb
	orrs r0, r2
	mov r1, sl
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xa
	orrs r0, r1
	str r0, [sp, #0x10]
	movs r0, #0x10
	bl VramMalloc
	adds r1, r0, #0
	add r0, sp, #0x10
	str r1, [r0, #4]
	ldr r1, _0804A714 @ =sub_804A71C
	ldr r2, _0804A718 @ =sub_804CF88
	bl sub_804CEDC
	ldrh r0, [r0, #6]
	mov r2, r8
	adds r1, r0, r2
	movs r0, #2
	strh r0, [r1]
	str r7, [r1, #0x50]
	str r6, [r1, #0x54]
	strh r5, [r1, #0x32]
	strh r4, [r1, #0xe]
	strh r4, [r1, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r1, #0x28]
	ldr r0, [sp, #0x18]
	ldr r1, _0804A708 @ =0xFFFF0000
	ands r0, r1
	mov r2, sb
	orrs r0, r2
	mov r1, sl
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #0xa
	orrs r0, r1
	str r0, [sp, #0x18]
	movs r0, #0x10
	bl VramMalloc
	adds r1, r0, #0
	add r0, sp, #0x18
	str r1, [r0, #4]
	ldr r1, _0804A714 @ =sub_804A71C
	ldr r2, _0804A718 @ =sub_804CF88
	bl sub_804CEDC
	ldrh r0, [r0, #6]
	mov r2, r8
	adds r1, r0, r2
	movs r0, #3
	strh r0, [r1]
	str r7, [r1, #0x50]
	str r6, [r1, #0x54]
	strh r5, [r1, #0x32]
	strh r4, [r1, #0xe]
	strh r4, [r1, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r1, #0x28]
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804A708: .4byte 0xFFFF0000
_0804A70C: .4byte 0x000002CF
_0804A710: .4byte 0xFF00FFFF
_0804A714: .4byte sub_804A71C
_0804A718: .4byte sub_804CF88

	thumb_func_start sub_804A71C
sub_804A71C: @ 0x0804A71C
	push {r4, r5, r6, r7, lr}
	ldr r0, _0804A73C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0x18
	adds r6, r1, r0
	ldr r0, [r5, #4]
	cmp r0, #0xbf
	ble _0804A740
	adds r0, r2, #0
	bl TaskDestroy
	b _0804A824
	.align 2, 0
_0804A73C: .4byte gCurTask
_0804A740:
	cmp r0, #0x80
	bne _0804A758
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _0804A758
	ldr r0, _0804A784 @ =gUnknown_030061F0
	ldr r2, [r0]
	ldr r0, [r2, #0x58]
	ldr r1, _0804A788 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r2, #0x58]
_0804A758:
	ldr r0, [r5, #0x50]
	asrs r7, r0, #8
	ldr r0, [r5, #0x54]
	asrs r3, r0, #8
	ldr r0, [r5, #4]
	movs r1, #0x1f
	ands r0, r1
	lsls r1, r0, #0xb
	cmp r1, #0
	beq _0804A7CC
	ldr r0, _0804A78C @ =0x00003FFF
	cmp r1, r0
	bgt _0804A794
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r0, _0804A790 @ =gSineTable
	lsrs r1, r1, #5
	adds r1, r1, r0
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	b _0804A7D2
	.align 2, 0
_0804A784: .4byte gUnknown_030061F0
_0804A788: .4byte 0xFFBFFFFF
_0804A78C: .4byte 0x00003FFF
_0804A790: .4byte gSineTable
_0804A794:
	ldr r0, _0804A7BC @ =0x0000DFFF
	cmp r1, r0
	ble _0804A7CC
	ldr r2, _0804A7C0 @ =0xFFFF2000
	adds r0, r1, r2
	lsls r0, r0, #1
	ldr r2, _0804A7C4 @ =gSineTable
	asrs r0, r0, #6
	ldr r1, _0804A7C8 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r0, r1
	subs r0, r1, r0
	b _0804A7D2
	.align 2, 0
_0804A7BC: .4byte 0x0000DFFF
_0804A7C0: .4byte 0xFFFF2000
_0804A7C4: .4byte gSineTable
_0804A7C8: .4byte 0x000003FF
_0804A7CC:
	movs r0, #0x80
	lsls r0, r0, #1
	adds r2, r0, #0
_0804A7D2:
	cmp r2, #0
	bne _0804A7D8
	movs r2, #2
_0804A7D8:
	cmp r0, #0
	bne _0804A7DE
	movs r0, #2
_0804A7DE:
	adds r4, r5, #0
	adds r4, #0xc
	strh r7, [r4, #6]
	strh r3, [r4, #8]
	strh r2, [r4, #2]
	strh r0, [r4, #4]
	ldr r0, [r6, #0x10]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r2, _0804A82C @ =sa2__gUnknown_030054B8
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	movs r0, #0x60
	orrs r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r6, #0x10]
	orrs r0, r1
	str r0, [r6, #0x10]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	adds r1, r4, #0
	bl TransformSprite
	adds r0, r6, #0
	bl DisplaySprite
	ldr r0, [r5, #4]
	adds r0, #1
	str r0, [r5, #4]
_0804A824:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804A82C: .4byte sa2__gUnknown_030054B8

	thumb_func_start sub_804A830
sub_804A830: @ 0x0804A830
	push {lr}
	ldr r2, _0804A844 @ =gUnknown_03005C74
	ldr r1, [r2]
	adds r1, #1
	str r1, [r2]
	bl sub_804CF88
	pop {r0}
	bx r0
	.align 2, 0
_0804A844: .4byte gUnknown_03005C74

	thumb_func_start sub_804A848
sub_804A848: @ 0x0804A848
	ldr r1, _0804A850 @ =gUnknown_03005C74
	movs r0, #4
	str r0, [r1]
	bx lr
	.align 2, 0
_0804A850: .4byte gUnknown_03005C74

	thumb_func_start sub_804A854
sub_804A854: @ 0x0804A854
	push {lr}
	sub sp, #8
	ldr r1, _0804A898 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	movs r1, #0xc8
	lsls r1, r1, #1
	orrs r0, r1
	ldr r1, _0804A89C @ =0xFF00FFFF
	ands r0, r1
	str r0, [sp]
	movs r0, #0x28
	bl VramMalloc
	str r0, [sp, #4]
	ldr r1, _0804A8A0 @ =sub_804A3C0
	ldr r2, _0804A8A4 @ =sub_804CF88
	mov r0, sp
	bl sub_804CEDC
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1, #0x32]
	movs r0, #0xa0
	lsls r0, r0, #5
	str r0, [r1, #0x28]
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_0804A898: .4byte 0xFFFF0000
_0804A89C: .4byte 0xFF00FFFF
_0804A8A0: .4byte sub_804A3C0
_0804A8A4: .4byte sub_804CF88

	thumb_func_start sub_804A8A8
sub_804A8A8: @ 0x0804A8A8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r4, r0, #0
	adds r5, r1, #0
	mov r8, r2
	cmp r2, #1
	beq _0804A8F0
	cmp r2, #1
	bgt _0804A8C6
	cmp r2, #0
	beq _0804A8CE
	b _0804A928
_0804A8C6:
	mov r0, r8
	cmp r0, #2
	beq _0804A914
	b _0804A928
_0804A8CE:
	ldr r1, _0804A8E4 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	movs r1, #0xa9
	lsls r1, r1, #2
	orrs r0, r1
	ldr r1, _0804A8E8 @ =0xFF00FFFF
	ands r0, r1
	str r0, [sp]
	ldr r0, _0804A8EC @ =0x06012E80
	b _0804A926
	.align 2, 0
_0804A8E4: .4byte 0xFFFF0000
_0804A8E8: .4byte 0xFF00FFFF
_0804A8EC: .4byte 0x06012E80
_0804A8F0:
	ldr r1, _0804A904 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	ldr r1, _0804A908 @ =0x000002A5
	orrs r0, r1
	ldr r1, _0804A90C @ =0xFF00FFFF
	ands r0, r1
	str r0, [sp]
	ldr r0, _0804A910 @ =0x06013080
	b _0804A926
	.align 2, 0
_0804A904: .4byte 0xFFFF0000
_0804A908: .4byte 0x000002A5
_0804A90C: .4byte 0xFF00FFFF
_0804A910: .4byte 0x06013080
_0804A914:
	ldr r1, _0804A97C @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	ldr r1, _0804A980 @ =0x000002A6
	orrs r0, r1
	ldr r1, _0804A984 @ =0xFF00FFFF
	ands r0, r1
	str r0, [sp]
	ldr r0, _0804A988 @ =0x06013100
_0804A926:
	str r0, [sp, #4]
_0804A928:
	ldr r1, _0804A98C @ =sub_804AAC4
	mov r0, sp
	movs r2, #0
	bl sub_804CF1C
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r7
	mov ip, r0
	mov r1, r8
	strh r1, [r0]
	str r4, [r0, #0x50]
	str r5, [r0, #0x54]
	movs r0, #0x80
	lsls r0, r0, #0xa
	cmp r4, r0
	bne _0804A9A0
	ldr r3, _0804A990 @ =gPseudoRandom
	ldr r0, [r3]
	ldr r5, _0804A994 @ =0x00196225
	adds r2, r0, #0
	muls r2, r5, r2
	ldr r4, _0804A998 @ =0x3C6EF35F
	adds r2, r2, r4
	str r2, [r3]
	lsls r0, r2, #0xe
	lsrs r0, r0, #0x16
	rsbs r0, r0, #0
	ldr r6, _0804A99C @ =0x03000058
	adds r1, r7, r6
	strh r0, [r1]
	adds r0, r2, #0
	muls r0, r5, r0
	adds r0, r0, r4
	str r0, [r3]
	movs r1, #0xff
	lsls r1, r1, #8
	ands r0, r1
	lsrs r0, r0, #8
	b _0804A9D4
	.align 2, 0
_0804A97C: .4byte 0xFFFF0000
_0804A980: .4byte 0x000002A6
_0804A984: .4byte 0xFF00FFFF
_0804A988: .4byte 0x06013100
_0804A98C: .4byte sub_804AAC4
_0804A990: .4byte gPseudoRandom
_0804A994: .4byte 0x00196225
_0804A998: .4byte 0x3C6EF35F
_0804A99C: .4byte 0x03000058
_0804A9A0:
	ldr r3, _0804AAA4 @ =gPseudoRandom
	ldr r0, [r3]
	ldr r4, _0804AAA8 @ =0x00196225
	mov sb, r4
	mov r2, sb
	muls r2, r0, r2
	ldr r5, _0804AAAC @ =0x3C6EF35F
	adds r2, r2, r5
	str r2, [r3]
	ldr r4, _0804AAB0 @ =0x0003FF00
	adds r0, r2, #0
	ands r0, r4
	lsrs r0, r0, #8
	ldr r6, _0804AAB4 @ =0xFFFFFD00
	adds r0, r0, r6
	ldr r6, _0804AAB8 @ =0x03000058
	adds r1, r7, r6
	strh r0, [r1]
	mov r0, sb
	muls r0, r2, r0
	adds r0, r0, r5
	str r0, [r3]
	ands r0, r4
	lsrs r0, r0, #8
	rsbs r0, r0, #0
	subs r0, #0x80
_0804A9D4:
	ldr r2, _0804AABC @ =0x0300005A
	adds r1, r7, r2
	strh r0, [r1]
	adds r7, r3, #0
	mov r3, r8
	cmp r3, #2
	bne _0804A9FA
	mov r0, ip
	adds r0, #0x58
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x12
	strh r1, [r0]
	mov r1, ip
	adds r1, #0x5a
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r1]
_0804A9FA:
	mov r1, ip
	adds r1, #0x5e
	movs r0, #7
	strh r0, [r1]
	adds r4, r7, #0
	ldr r0, [r4]
	ldr r5, _0804AAA8 @ =0x00196225
	adds r1, r0, #0
	muls r1, r5, r1
	ldr r6, _0804AAAC @ =0x3C6EF35F
	adds r1, r1, r6
	str r1, [r4]
	lsrs r2, r1, #8
	mov r0, ip
	adds r0, #0x70
	strh r2, [r0]
	adds r0, r1, #0
	muls r0, r5, r0
	adds r2, r0, r6
	str r2, [r4]
	lsls r0, r2, #0xb
	lsrs r0, r0, #0x13
	ldr r1, _0804AAC0 @ =0xFFFFF000
	adds r0, r0, r1
	mov r1, ip
	adds r1, #0x72
	strh r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #2
	mov r3, ip
	strh r0, [r3, #0x32]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r3, #0x28]
	mov r0, r8
	cmp r0, #0
	bne _0804AA7C
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r1]
	muls r2, r5, r2
	adds r2, r2, r6
	str r2, [r4]
	movs r0, #0xe
	ldrsh r1, [r3, r0]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r2, #0
	ands r0, r3
	lsrs r0, r0, #8
	subs r1, r1, r0
	mov r0, ip
	strh r1, [r0, #0xe]
	adds r0, r2, #0
	muls r0, r5, r0
	adds r0, r0, r6
	str r0, [r4]
	mov r2, ip
	movs r4, #0x10
	ldrsh r1, [r2, r4]
	ands r0, r3
	lsrs r0, r0, #8
	subs r1, r1, r0
	strh r1, [r2, #0x10]
_0804AA7C:
	ldr r0, [r7]
	muls r0, r5, r0
	adds r0, r0, r6
	str r0, [r7]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0804AA96
	mov r6, ip
	ldrh r0, [r6, #0x10]
	rsbs r0, r0, #0
	strh r0, [r6, #0x10]
_0804AA96:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804AAA4: .4byte gPseudoRandom
_0804AAA8: .4byte 0x00196225
_0804AAAC: .4byte 0x3C6EF35F
_0804AAB0: .4byte 0x0003FF00
_0804AAB4: .4byte 0xFFFFFD00
_0804AAB8: .4byte 0x03000058
_0804AABC: .4byte 0x0300005A
_0804AAC0: .4byte 0xFFFFF000

	thumb_func_start sub_804AAC4
sub_804AAC4: @ 0x0804AAC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0804AB18 @ =gCurTask
	ldr r3, [r0]
	ldrh r0, [r3, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r0, r1
	adds r1, #0x18
	adds r6, r0, r1
	subs r1, #0xc
	adds r7, r0, r1
	ldr r0, _0804AB1C @ =gUnknown_030061F0
	ldr r0, [r0]
	mov sb, r0
	ldr r0, _0804AB20 @ =gPlayer
	mov ip, r0
	ldr r1, _0804AB24 @ =gCamera
	mov r8, r1
	ldr r4, [r5, #0x50]
	movs r0, #0x80
	lsls r0, r0, #6
	adds r1, r4, r0
	movs r0, #0x88
	lsls r0, r0, #0xa
	cmp r1, r0
	bhi _0804AB10
	ldr r2, [r5, #0x54]
	movs r0, #0x80
	lsls r0, r0, #6
	adds r1, r2, r0
	movs r0, #0xb0
	lsls r0, r0, #9
	cmp r1, r0
	bls _0804AB28
_0804AB10:
	adds r0, r3, #0
	bl TaskDestroy
	b _0804AC38
	.align 2, 0
_0804AB18: .4byte gCurTask
_0804AB1C: .4byte gUnknown_030061F0
_0804AB20: .4byte gPlayer
_0804AB24: .4byte gCamera
_0804AB28:
	asrs r4, r4, #8
	mov r1, r8
	movs r3, #0
	ldrsh r0, [r1, r3]
	subs r0, r4, r0
	mov sl, r0
	asrs r2, r2, #8
	movs r3, #2
	ldrsh r0, [r1, r3]
	subs r0, r2, r0
	mov r8, r0
	mov r0, ip
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0804AB8C
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	mov r3, ip
	bl sub_800C0E0
	cmp r0, #0
	beq _0804ABB2
	movs r0, #0
	ldrsh r1, [r5, r0]
	movs r0, #3
	subs r4, r0, r1
_0804AB68:
	ldr r0, [r5, #0x50]
	ldr r1, [r5, #0x54]
	movs r2, #2
	bl sub_804A8A8
	subs r4, #1
	cmp r4, #0
	bne _0804AB68
	movs r0, #0x7e
	bl m4aSongNumStart
	ldr r0, _0804AB88 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0804AC38
	.align 2, 0
_0804AB88: .4byte gCurTask
_0804AB8C:
	mov r1, ip
	movs r3, #0x1c
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bne _0804ABB2
	mov r1, sb
	ldr r0, [r1, #0x58]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0804ABB2
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	mov r3, ip
	bl sub_800BFEC
_0804ABB2:
	mov r3, sl
	strh r3, [r7, #6]
	mov r0, r8
	strh r0, [r7, #8]
	adds r4, r5, #0
	adds r4, #0x70
	ldrh r0, [r4]
	lsrs r0, r0, #6
	strh r0, [r7]
	ldr r0, [r6, #0x10]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r2, _0804AC48 @ =sa2__gUnknown_030054B8
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	movs r0, #0x20
	orrs r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r6, #0x10]
	orrs r0, r1
	str r0, [r6, #0x10]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	adds r1, r7, #0
	bl TransformSprite
	adds r0, r6, #0
	bl DisplaySprite
	adds r2, r5, #0
	adds r2, #0x58
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r0, [r5, #0x50]
	adds r0, r0, r1
	str r0, [r5, #0x50]
	adds r3, r5, #0
	adds r3, #0x5a
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, [r5, #0x54]
	adds r0, r0, r1
	str r0, [r5, #0x54]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrh r0, [r0]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	adds r0, r5, #0
	adds r0, #0x5e
	ldrh r0, [r0]
	ldrh r1, [r3]
	adds r0, r0, r1
	strh r0, [r3]
	adds r0, r5, #0
	adds r0, #0x72
	ldrh r0, [r0]
	ldrh r3, [r4]
	adds r0, r0, r3
	strh r0, [r4]
_0804AC38:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804AC48: .4byte sa2__gUnknown_030054B8

	thumb_func_start sub_804AC4C
sub_804AC4C: @ 0x0804AC4C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0804AC98 @ =gCurTask
	mov sb, r0
	ldr r7, [r0]
	ldrh r5, [r7, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldr r1, _0804AC9C @ =0x03000018
	adds r1, r1, r5
	mov r8, r1
	ldr r3, _0804ACA0 @ =gCamera
	ldr r2, [r4, #0x50]
	asrs r1, r2, #8
	movs r6, #0
	ldrsh r0, [r3, r6]
	subs r1, r1, r0
	mov ip, r1
	ldr r0, [r4, #0x54]
	asrs r0, r0, #8
	movs r6, #2
	ldrsh r1, [r3, r6]
	subs r3, r0, r1
	movs r0, #0x80
	lsls r0, r0, #6
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0xa
	cmp r2, r0
	bls _0804ACA4
	adds r0, r7, #0
	bl TaskDestroy
	b _0804ACEA
	.align 2, 0
_0804AC98: .4byte gCurTask
_0804AC9C: .4byte 0x03000018
_0804ACA0: .4byte gCamera
_0804ACA4:
	mov r0, r8
	mov r1, ip
	adds r2, r3, #0
	bl sub_804B32C
	adds r0, r4, #0
	bl sub_804CFA0
	ldr r0, [r4, #4]
	subs r0, #1
	str r0, [r4, #4]
	cmp r0, #0
	bgt _0804ACEA
	movs r2, #0
	ldr r0, _0804ACF8 @ =0x0000029E
	mov r1, r8
	strh r0, [r1, #0xa]
	ldr r6, _0804ACFC @ =0x03000038
	adds r1, r5, r6
	movs r0, #2
	strb r0, [r1]
	ldr r0, _0804AD00 @ =0x03000039
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _0804AD04 @ =0x03000058
	adds r0, r5, r1
	strh r2, [r0]
	adds r6, #0x22
	adds r0, r5, r6
	strh r2, [r0]
	mov r0, sb
	ldr r1, [r0]
	ldr r0, _0804AD08 @ =sub_804AD0C
	str r0, [r1, #8]
_0804ACEA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804ACF8: .4byte 0x0000029E
_0804ACFC: .4byte 0x03000038
_0804AD00: .4byte 0x03000039
_0804AD04: .4byte 0x03000058
_0804AD08: .4byte sub_804AD0C

	thumb_func_start sub_804AD0C
sub_804AD0C: @ 0x0804AD0C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0804AD5C @ =gCurTask
	ldr r6, [r0]
	ldrh r1, [r6, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0x18
	adds r5, r1, r0
	ldr r0, _0804AD60 @ =gUnknown_030061F0
	ldr r0, [r0]
	mov ip, r0
	ldr r1, _0804AD64 @ =gPlayer
	mov sb, r1
	ldr r3, _0804AD68 @ =gCamera
	ldr r2, [r4, #0x50]
	asrs r1, r2, #8
	movs r7, #0
	ldrsh r0, [r3, r7]
	subs r1, r1, r0
	mov r8, r1
	ldr r0, [r4, #0x54]
	asrs r0, r0, #8
	movs r7, #2
	ldrsh r1, [r3, r7]
	subs r7, r0, r1
	movs r0, #0x80
	lsls r0, r0, #6
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0xa
	cmp r2, r0
	bls _0804AD6C
	adds r0, r6, #0
	bl TaskDestroy
	b _0804ADFE
	.align 2, 0
_0804AD5C: .4byte gCurTask
_0804AD60: .4byte gUnknown_030061F0
_0804AD64: .4byte gPlayer
_0804AD68: .4byte gCamera
_0804AD6C:
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, ip
	mov r3, sb
	bl sub_804B1FC
	adds r1, r0, #0
	cmp r1, #0
	beq _0804AD92
	cmp r1, #0
	bgt _0804AD8C
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0804ADFE
	b _0804ADAA
_0804AD8C:
	cmp r1, #1
	beq _0804AD9E
	b _0804ADAA
_0804AD92:
	adds r0, r5, #0
	mov r1, r8
	adds r2, r7, #0
	bl sub_804B32C
	b _0804ADAA
_0804AD9E:
	adds r0, r5, #0
	mov r1, r8
	adds r2, r7, #0
	bl sub_804B32C
	b _0804ADFE
_0804ADAA:
	adds r0, r4, #0
	bl sub_804CFA0
	mov r1, sb
	ldr r0, [r1, #4]
	ldr r1, [r4, #0x54]
	subs r3, r0, r1
	ldr r0, _0804ADCC @ =0xFFFFF800
	cmp r3, r0
	bge _0804ADD0
	adds r1, r4, #0
	adds r1, #0x5a
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r1]
	b _0804ADFE
	.align 2, 0
_0804ADCC: .4byte 0xFFFFF800
_0804ADD0:
	movs r0, #0x80
	lsls r0, r0, #4
	cmp r3, r0
	ble _0804ADE4
	adds r1, r4, #0
	adds r1, #0x5a
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	b _0804ADFE
_0804ADE4:
	adds r1, r4, #0
	adds r1, #0x58
	movs r2, #0
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x5a
	strh r2, [r0]
	ldr r0, _0804AE0C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0804AE10 @ =sub_804B370
	str r0, [r1, #8]
_0804ADFE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804AE0C: .4byte gCurTask
_0804AE10: .4byte sub_804B370

	thumb_func_start sub_804AE14
sub_804AE14: @ 0x0804AE14
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0804AE58 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r7, r0
	ldr r1, _0804AE5C @ =0x03000018
	adds r1, r1, r7
	mov r8, r1
	ldr r4, _0804AE60 @ =gPlayer
	ldr r3, _0804AE64 @ =gCamera
	movs r0, #0x1c
	ldrsh r5, [r4, r0]
	cmp r5, #0
	beq _0804AE6C
	ldr r0, [r4, #0x10]
	ldr r1, _0804AE68 @ =0xF7FFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r6, #0x50]
	ldr r1, [r6, #0x54]
	bl sub_804AFCC
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	b _0804AEE0
	.align 2, 0
_0804AE58: .4byte gCurTask
_0804AE5C: .4byte 0x03000018
_0804AE60: .4byte gPlayer
_0804AE64: .4byte gCamera
_0804AE68: .4byte 0xF7FFFFFF
_0804AE6C:
	ldr r1, [r4]
	str r1, [r6, #0x50]
	ldr r2, [r4, #4]
	str r2, [r6, #0x54]
	asrs r1, r1, #8
	mov ip, r1
	movs r1, #0
	ldrsh r0, [r3, r1]
	mov r1, ip
	subs r1, r1, r0
	mov sl, r1
	asrs r2, r2, #8
	movs r1, #2
	ldrsh r0, [r3, r1]
	subs r2, r2, r0
	mov r0, r8
	mov r1, sl
	bl sub_804B32C
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0804AEE0
	movs r0, #0xf0
	str r0, [r6, #4]
	movs r0, #0
	strh r5, [r4, #0xc]
	strh r5, [r4, #8]
	strh r5, [r4, #0xa]
	adds r1, r4, #0
	adds r1, #0x3e
	strb r0, [r1]
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xd
	orrs r0, r1
	str r0, [r4, #0x10]
	ldr r0, _0804AEF0 @ =0x0000029E
	mov r1, r8
	strh r0, [r1, #0xa]
	ldr r0, _0804AEF4 @ =0x03000038
	adds r1, r7, r0
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0804AEF8 @ =0x03000039
	adds r1, r7, r0
	movs r0, #0xff
	strb r0, [r1]
	mov r0, sb
	ldr r1, [r0]
	ldr r0, _0804AEFC @ =sub_804AF00
	str r0, [r1, #8]
_0804AEE0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804AEF0: .4byte 0x0000029E
_0804AEF4: .4byte 0x03000038
_0804AEF8: .4byte 0x03000039
_0804AEFC: .4byte sub_804AF00

	thumb_func_start sub_804AF00
sub_804AF00: @ 0x0804AF00
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r6, _0804AF50 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0x18
	adds r7, r1, r0
	ldr r4, _0804AF54 @ =gPlayer
	ldr r1, _0804AF58 @ =gCamera
	mov r8, r1
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bne _0804AF2E
	ldr r2, [r5, #4]
	subs r0, r2, #1
	str r0, [r5, #4]
	cmp r0, #0
	bge _0804AF68
_0804AF2E:
	ldr r0, [r4, #0x10]
	ldr r1, _0804AF5C @ =0xF7FFFFFF
	ands r0, r1
	ldr r1, _0804AF60 @ =0xFFBFFFFF
	ands r0, r1
	ldr r1, _0804AF64 @ =0xFFEFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x50]
	ldr r1, [r5, #0x54]
	bl sub_804AFCC
	ldr r0, [r6]
	bl TaskDestroy
	b _0804AFC2
	.align 2, 0
_0804AF50: .4byte gCurTask
_0804AF54: .4byte gPlayer
_0804AF58: .4byte gCamera
_0804AF5C: .4byte 0xF7FFFFFF
_0804AF60: .4byte 0xFFBFFFFF
_0804AF64: .4byte 0xFFEFFFFF
_0804AF68:
	ldrh r1, [r4, #0x3a]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _0804AF78
	adds r0, r2, #0
	subs r0, #0x15
	str r0, [r5, #4]
_0804AF78:
	adds r0, r4, #0
	bl Player_804A0B8
	ldr r1, [r4]
	ldr r3, [r5, #0x68]
	adds r1, r1, r3
	str r1, [r5, #0x50]
	ldr r2, [r4, #4]
	str r2, [r5, #0x54]
	asrs r0, r3, #2
	subs r3, r3, r0
	str r3, [r5, #0x68]
	ldrh r4, [r4, #0x3a]
	movs r3, #0x10
	ands r3, r4
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r3, r3, #1
	movs r0, #0x20
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r3, r3, r0
	lsls r3, r3, #5
	str r3, [r5, #0x68]
	asrs r1, r1, #8
	mov r4, r8
	movs r3, #0
	ldrsh r0, [r4, r3]
	subs r1, r1, r0
	asrs r2, r2, #8
	movs r3, #2
	ldrsh r0, [r4, r3]
	subs r2, r2, r0
	adds r0, r7, #0
	bl sub_804B32C
_0804AFC2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_804AFCC
sub_804AFCC: @ 0x0804AFCC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r1, _0804B0A4 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	ldr r1, _0804B0A8 @ =0x0000029F
	orrs r0, r1
	ldr r1, _0804B0AC @ =0xFF00FFFF
	ands r0, r1
	str r0, [sp]
	ldr r0, _0804B0B0 @ =0x06012580
	str r0, [sp, #4]
	movs r7, #0
	ldr r6, _0804B0B4 @ =gPseudoRandom
	ldr r0, _0804B0B8 @ =0x00196225
	mov sb, r0
	ldr r1, _0804B0BC @ =0x3C6EF35F
	mov r8, r1
	movs r2, #0xfe
	lsls r2, r2, #7
	mov sl, r2
_0804B002:
	mov r0, sp
	ldr r1, _0804B0C0 @ =sub_804B0D8
	movs r2, #0
	bl sub_804CF1C
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	ldr r1, [sp, #8]
	str r1, [r4, #0x50]
	ldr r2, [sp, #0xc]
	str r2, [r4, #0x54]
	ldr r0, [r6]
	mov r1, sb
	muls r1, r0, r1
	add r1, r8
	str r1, [r6]
	adds r0, r1, #0
	mov r2, sl
	ands r0, r2
	lsrs r0, r0, #8
	adds r0, #0x80
	rsbs r0, r0, #0
	ldr r2, _0804B0C4 @ =0x03000058
	adds r5, r3, r2
	strh r0, [r5]
	mov r2, sb
	muls r2, r1, r2
	add r2, r8
	str r2, [r6]
	adds r0, r2, #0
	mov r1, sl
	ands r0, r1
	lsrs r0, r0, #8
	adds r0, #0x40
	ldr r1, _0804B0C8 @ =0x0300005A
	strh r0, [r1, r3]
	ldr r0, _0804B0CC @ =0x0300005E
	adds r1, r3, r0
	movs r0, #7
	strh r0, [r1]
	mov r0, sb
	muls r0, r2, r0
	add r0, r8
	str r0, [r6]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x15
	ldr r1, _0804B0D0 @ =0xFFFFFC00
	adds r0, r0, r1
	ldr r2, _0804B0D4 @ =0x03000072
	adds r3, r3, r2
	strh r0, [r3]
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq _0804B080
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r4, #0xe]
	ldrh r0, [r5]
	rsbs r0, r0, #0
	strh r0, [r5]
_0804B080:
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x32]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #0x28]
	adds r7, #1
	cmp r7, #1
	ble _0804B002
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B0A4: .4byte 0xFFFF0000
_0804B0A8: .4byte 0x0000029F
_0804B0AC: .4byte 0xFF00FFFF
_0804B0B0: .4byte 0x06012580
_0804B0B4: .4byte gPseudoRandom
_0804B0B8: .4byte 0x00196225
_0804B0BC: .4byte 0x3C6EF35F
_0804B0C0: .4byte sub_804B0D8
_0804B0C4: .4byte 0x03000058
_0804B0C8: .4byte 0x0300005A
_0804B0CC: .4byte 0x0300005E
_0804B0D0: .4byte 0xFFFFFC00
_0804B0D4: .4byte 0x03000072

	thumb_func_start sub_804B0D8
sub_804B0D8: @ 0x0804B0D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0804B13C @ =gCurTask
	ldr r0, [r0]
	mov sb, r0
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r6, r0
	adds r0, #0x18
	adds r5, r6, r0
	ldr r1, _0804B140 @ =0x0300000C
	adds r1, r1, r6
	mov r8, r1
	ldr r3, _0804B144 @ =gCamera
	ldr r1, [r7, #0x50]
	asrs r2, r1, #8
	movs r4, #0
	ldrsh r0, [r3, r4]
	subs r2, r2, r0
	mov ip, r2
	ldr r4, [r7, #0x54]
	asrs r0, r4, #8
	mov sl, r0
	movs r2, #2
	ldrsh r0, [r3, r2]
	mov r3, sl
	subs r2, r3, r0
	movs r0, #0x80
	lsls r0, r0, #6
	adds r1, r1, r0
	movs r0, #0x88
	lsls r0, r0, #0xa
	cmp r1, r0
	bhi _0804B132
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r4, r3
	movs r0, #0xb0
	lsls r0, r0, #9
	cmp r1, r0
	bls _0804B148
_0804B132:
	mov r0, sb
	bl TaskDestroy
	b _0804B1D0
	.align 2, 0
_0804B13C: .4byte gCurTask
_0804B140: .4byte 0x0300000C
_0804B144: .4byte gCamera
_0804B148:
	mov r0, ip
	mov r4, r8
	strh r0, [r4, #6]
	strh r2, [r4, #8]
	ldr r1, _0804B1E0 @ =0x03000070
	adds r4, r6, r1
	ldrh r0, [r4]
	lsrs r0, r0, #6
	mov r2, r8
	strh r0, [r2]
	ldr r0, [r5, #0x10]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	ldr r2, _0804B1E4 @ =sa2__gUnknown_030054B8
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	movs r0, #0x20
	orrs r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r5, #0x10]
	orrs r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	mov r1, r8
	bl TransformSprite
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0804B1E8 @ =0x03000058
	adds r3, r6, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r0, [r7, #0x50]
	adds r0, r0, r1
	str r0, [r7, #0x50]
	ldr r0, _0804B1EC @ =0x0300005A
	adds r2, r6, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, [r7, #0x54]
	adds r0, r0, r1
	str r0, [r7, #0x54]
	ldr r1, _0804B1F0 @ =0x0300005C
	adds r0, r6, r1
	ldrh r0, [r0]
	ldrh r1, [r3]
	adds r0, r0, r1
	strh r0, [r3]
	ldr r3, _0804B1F4 @ =0x0300005E
	adds r0, r6, r3
	ldrh r0, [r0]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r2, _0804B1F8 @ =0x03000072
	adds r0, r6, r2
	ldrh r0, [r0]
	ldrh r3, [r4]
	adds r0, r0, r3
	strh r0, [r4]
_0804B1D0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B1E0: .4byte 0x03000070
_0804B1E4: .4byte sa2__gUnknown_030054B8
_0804B1E8: .4byte 0x03000058
_0804B1EC: .4byte 0x0300005A
_0804B1F0: .4byte 0x0300005C
_0804B1F4: .4byte 0x0300005E
_0804B1F8: .4byte 0x03000072

	thumb_func_start sub_804B1FC
sub_804B1FC: @ 0x0804B1FC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	adds r5, r3, #0
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x14
	mov r8, r1
	ands r0, r1
	cmp r0, #0
	bne _0804B2B0
	ldr r1, [r4, #0x50]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r2, [r4, #0x54]
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_800C0E0
	cmp r0, #0
	beq _0804B2B0
	adds r0, r5, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0804B26C
	movs r0, #0x8a      @ SE_ITEM_BOX
	bl m4aSongNumStart
	ldr r0, [r4, #0x50]
	asrs r0, r0, #8
	ldr r1, [r4, #0x54]
	asrs r1, r1, #8
	movs r2, #8
	bl sub_8040C1C
	ldr r0, [r4, #0x50]
	ldr r1, [r4, #0x54]
	bl sub_804AFCC
	ldr r0, _0804B268 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	movs r0, #1
	rsbs r0, r0, #0
	b _0804B2B2
	.align 2, 0
_0804B268: .4byte gCurTask
_0804B26C:
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _0804B2B0
	ldr r0, [r7, #0x58]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0804B2B0
	ldr r0, _0804B2A4 @ =0x0000029E
	strh r0, [r6, #0xa]
	adds r1, r6, #0
	adds r1, #0x20
	movs r0, #3
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r5, #0x10]
	mov r1, r8
	orrs r0, r1
	str r0, [r5, #0x10]
	ldr r0, _0804B2A8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0804B2AC @ =sub_804AE14
	str r0, [r1, #8]
	movs r0, #1
	b _0804B2B2
	.align 2, 0
_0804B2A4: .4byte 0x0000029E
_0804B2A8: .4byte gCurTask
_0804B2AC: .4byte sub_804AE14
_0804B2B0:
	movs r0, #0
_0804B2B2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_804B2BC
sub_804B2BC: @ 0x0804B2BC
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _0804B314 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	ldr r1, _0804B318 @ =0x0000029E
	orrs r0, r1
	ldr r1, _0804B31C @ =0xFF00FFFF
	ands r0, r1
	str r0, [sp]
	movs r0, #8
	bl VramMalloc
	str r0, [sp, #4]
	ldr r1, _0804B320 @ =sub_804AC4C
	ldr r2, _0804B324 @ =sub_804CF88
	mov r0, sp
	bl sub_804CF1C
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	str r4, [r0, #0x50]
	str r5, [r0, #0x54]
	ldr r1, _0804B328 @ =0x03000058
	adds r2, r2, r1
	movs r1, #0xff
	lsls r1, r1, #8
	strh r1, [r2]
	movs r1, #0x30
	str r1, [r0, #4]
	movs r1, #0xc0
	lsls r1, r1, #2
	strh r1, [r0, #0x32]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #0x28]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804B314: .4byte 0xFFFF0000
_0804B318: .4byte 0x0000029E
_0804B31C: .4byte 0xFF00FFFF
_0804B320: .4byte sub_804AC4C
_0804B324: .4byte sub_804CF88
_0804B328: .4byte 0x03000058

	thumb_func_start sub_804B32C
sub_804B32C: @ 0x0804B32C
	push {r4, lr}
	adds r4, r0, #0
	strh r1, [r4, #0x16]
	strh r2, [r4, #0x18]
	bl UpdateSpriteAnimation
	ldr r0, [r4, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, [r4, #0x10]
	ldr r1, _0804B368 @ =0xFFF3FFFF
	ands r0, r1
	ldr r1, _0804B36C @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804B368: .4byte 0xFFF3FFFF
_0804B36C: .4byte 0xFFFFF7FF

	thumb_func_start sub_804B370
sub_804B370: @ 0x0804B370
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0804B3C0 @ =gCurTask
	ldr r6, [r0]
	ldrh r1, [r6, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0x18
	adds r4, r1, r0
	ldr r0, _0804B3C4 @ =gUnknown_030061F0
	ldr r0, [r0]
	mov ip, r0
	ldr r7, _0804B3C8 @ =gPlayer
	mov sb, r7
	ldr r3, _0804B3CC @ =gCamera
	ldr r2, [r5, #0x50]
	asrs r1, r2, #8
	movs r7, #0
	ldrsh r0, [r3, r7]
	subs r1, r1, r0
	mov r8, r1
	ldr r0, [r5, #0x54]
	asrs r0, r0, #8
	movs r7, #2
	ldrsh r1, [r3, r7]
	subs r7, r0, r1
	movs r0, #0x80
	lsls r0, r0, #6
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0xa
	cmp r2, r0
	bls _0804B3D0
	adds r0, r6, #0
	bl TaskDestroy
	b _0804B414
	.align 2, 0
_0804B3C0: .4byte gCurTask
_0804B3C4: .4byte gUnknown_030061F0
_0804B3C8: .4byte gPlayer
_0804B3CC: .4byte gCamera
_0804B3D0:
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, ip
	mov r3, sb
	bl sub_804B1FC
	adds r1, r0, #0
	cmp r1, #0
	beq _0804B3F6
	cmp r1, #0
	bgt _0804B3F0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0804B414
	b _0804B40E
_0804B3F0:
	cmp r1, #1
	beq _0804B402
	b _0804B40E
_0804B3F6:
	adds r0, r4, #0
	mov r1, r8
	adds r2, r7, #0
	bl sub_804B32C
	b _0804B40E
_0804B402:
	adds r0, r4, #0
	mov r1, r8
	adds r2, r7, #0
	bl sub_804B32C
	b _0804B414
_0804B40E:
	adds r0, r5, #0
	bl sub_804CFA0
_0804B414:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_804B420
sub_804B420: @ 0x0804B420
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0804B46C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0x18
	adds r5, r1, r0
	ldr r0, _0804B470 @ =gUnknown_030061F0
	ldr r0, [r0]
	mov sb, r0
	ldr r1, _0804B474 @ =gPlayer
	mov r8, r1
	ldr r6, _0804B478 @ =gCamera
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0804B464
	ldr r0, [r4, #0x50]
	movs r7, #0x80
	lsls r7, r7, #6
	adds r0, r0, r7
	movs r1, #0x88
	lsls r1, r1, #0xa
	cmp r0, r1
	bls _0804B47C
_0804B464:
	adds r0, r2, #0
	bl TaskDestroy
	b _0804B554
	.align 2, 0
_0804B46C: .4byte gCurTask
_0804B470: .4byte gUnknown_030061F0
_0804B474: .4byte gPlayer
_0804B478: .4byte gCamera
_0804B47C:
	movs r0, #0
	ldrsh r3, [r6, r0]
	ldr r0, _0804B564 @ =gStageTime
	ldr r0, [r0]
	lsls r0, r0, #3
	adds r3, r3, r0
	adds r1, r3, #0
	subs r1, #0x48
	ldr r0, _0804B568 @ =0x00000A7F
	cmp r1, r0
	ble _0804B4A2
	adds r3, r1, #0
	movs r1, #0xa8
	lsls r1, r1, #4
	adds r0, r3, #0
	bl Mod
	adds r3, r0, #0
	adds r3, #0x48
_0804B4A2:
	movs r1, #0
	ldrsh r2, [r6, r1]
	subs r2, r3, r2
	ldr r0, [r4, #0x54]
	asrs r0, r0, #8
	ldr r1, [r4, #0x50]
	asrs r1, r1, #8
	adds r1, r1, r2
	ldr r2, _0804B56C @ =sa2__sub_801EC3C
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F100
	lsls r0, r0, #8
	ldr r1, [r4, #0x54]
	adds r1, r1, r0
	str r1, [r4, #0x54]
	ldr r0, [r4, #0x50]
	asrs r3, r0, #8
	movs r2, #0
	ldrsh r0, [r6, r2]
	subs r0, r3, r0
	mov sl, r0
	asrs r2, r1, #8
	movs r7, #2
	ldrsh r0, [r6, r7]
	subs r6, r2, r0
	mov r0, r8
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0804B50E
	mov r1, r8
	movs r7, #0x1c
	ldrsh r0, [r1, r7]
	cmp r0, #0
	bne _0804B50E
	mov r1, sb
	ldr r0, [r1, #0x58]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0804B50E
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	mov r3, r8
	bl sub_800BFEC
_0804B50E:
	mov r2, sl
	strh r2, [r5, #0x16]
	strh r6, [r5, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	adds r2, r4, #0
	adds r2, #0x58
	movs r7, #0
	ldrsh r1, [r2, r7]
	ldr r0, [r4, #0x50]
	adds r0, r0, r1
	str r0, [r4, #0x50]
	adds r3, r4, #0
	adds r3, #0x5a
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, [r4, #0x54]
	adds r0, r0, r1
	str r0, [r4, #0x54]
	adds r0, r4, #0
	adds r0, #0x5c
	ldrh r0, [r0]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x5e
	ldrh r0, [r0]
	ldrh r2, [r3]
	adds r0, r0, r2
	strh r0, [r3]
_0804B554:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B564: .4byte gStageTime
_0804B568: .4byte 0x00000A7F
_0804B56C: .4byte sa2__sub_801EC3C

	thumb_func_start sub_804B570
sub_804B570: @ 0x0804B570
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _0804B5BC @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	movs r1, #0xa8
	lsls r1, r1, #2
	orrs r0, r1
	ldr r1, _0804B5C0 @ =0xFF00FFFF
	ands r0, r1
	str r0, [sp]
	movs r0, #0x18
	bl VramMalloc
	str r0, [sp, #4]
	ldr r1, _0804B5C4 @ =sub_804B420
	ldr r2, _0804B5C8 @ =sub_804CF88
	mov r0, sp
	bl sub_804CF1C
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	str r4, [r1, #0x50]
	str r5, [r1, #0x54]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1, #0x32]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r1, #0x28]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804B5BC: .4byte 0xFFFF0000
_0804B5C0: .4byte 0xFF00FFFF
_0804B5C4: .4byte sub_804B420
_0804B5C8: .4byte sub_804CF88

	thumb_func_start sub_804B5CC
sub_804B5CC: @ 0x0804B5CC
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r6, r0, #0
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0804B654 @ =sub_804B86C
	ldr r2, _0804B658 @ =0x00004001
	ldr r1, _0804B65C @ =sub_804BE68
	str r1, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	mov sb, r0
	ldrh r4, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r4, r5
	ldr r1, _0804B660 @ =0x03000030
	adds r0, r4, r1
	movs r1, #0
	mov r8, r1
	strb r6, [r0]
	movs r0, #0x24
	bl VramMalloc
	str r0, [r5, #4]
	movs r2, #0
	mov r0, r8
	strh r0, [r5, #8]
	ldr r0, _0804B664 @ =0x000002EE
	strh r0, [r5, #0xa]
	ldr r1, _0804B668 @ =0x03000020
	adds r0, r4, r1
	strb r2, [r0]
	ldr r0, _0804B66C @ =0x03000021
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5, #0x1a]
	mov r1, r8
	strh r1, [r5, #0x1c]
	ldr r0, _0804B670 @ =0x03000022
	adds r1, r4, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0804B674 @ =0x03000025
	adds r4, r4, r1
	strb r2, [r4]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	movs r0, #0xa8
	bl m4aSongNumStart
	mov r0, sb
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0804B654: .4byte sub_804B86C
_0804B658: .4byte 0x00004001
_0804B65C: .4byte sub_804BE68
_0804B660: .4byte 0x03000030
_0804B664: .4byte 0x000002EE
_0804B668: .4byte 0x03000020
_0804B66C: .4byte 0x03000021
_0804B670: .4byte 0x03000022
_0804B674: .4byte 0x03000025

	thumb_func_start sub_804B678
sub_804B678: @ 0x0804B678
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r6, r0, #0
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0804B6FC @ =sub_804BB98
	ldr r2, _0804B700 @ =0x00004001
	ldr r1, _0804B704 @ =sub_804BE68
	str r1, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	mov sb, r0
	ldrh r4, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r4, r5
	ldr r1, _0804B708 @ =0x03000030
	adds r0, r4, r1
	movs r1, #0
	mov r8, r1
	strb r6, [r0]
	movs r0, #0x24
	bl VramMalloc
	str r0, [r5, #4]
	movs r2, #0
	mov r0, r8
	strh r0, [r5, #8]
	movs r0, #0xbc
	lsls r0, r0, #2
	strh r0, [r5, #0xa]
	ldr r1, _0804B70C @ =0x03000020
	adds r0, r4, r1
	strb r2, [r0]
	ldr r0, _0804B710 @ =0x03000021
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5, #0x1a]
	mov r1, r8
	strh r1, [r5, #0x1c]
	ldr r0, _0804B714 @ =0x03000022
	adds r1, r4, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0804B718 @ =0x03000025
	adds r4, r4, r1
	strb r2, [r4]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	mov r0, sb
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0804B6FC: .4byte sub_804BB98
_0804B700: .4byte 0x00004001
_0804B704: .4byte sub_804BE68
_0804B708: .4byte 0x03000030
_0804B70C: .4byte 0x03000020
_0804B710: .4byte 0x03000021
_0804B714: .4byte 0x03000022
_0804B718: .4byte 0x03000025

	thumb_func_start sub_804B71C
sub_804B71C: @ 0x0804B71C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0804B7A4 @ =sub_804B994
	ldr r2, _0804B7A8 @ =0x00004001
	ldr r1, _0804B7AC @ =sub_804BE68
	str r1, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	adds r6, r0, #0
	ldrh r0, [r6, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	ldr r1, _0804B7B0 @ =0x03000030
	adds r0, r0, r1
	movs r1, #0
	mov r8, r1
	strb r4, [r0]
	ldrh r4, [r6, #6]
	adds r5, r4, r5
	movs r0, #0x24
	bl VramMalloc
	str r0, [r5, #4]
	movs r2, #0
	mov r0, r8
	strh r0, [r5, #8]
	ldr r0, _0804B7B4 @ =0x000002EF
	strh r0, [r5, #0xa]
	ldr r1, _0804B7B8 @ =0x03000020
	adds r0, r4, r1
	strb r2, [r0]
	ldr r0, _0804B7BC @ =0x03000021
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5, #0x1a]
	mov r1, r8
	strh r1, [r5, #0x1c]
	ldr r0, _0804B7C0 @ =0x03000022
	adds r1, r4, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0804B7C4 @ =0x03000025
	adds r4, r4, r1
	strb r2, [r4]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	movs r0, #0xa8
	bl m4aSongNumStart
	adds r0, r6, #0
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0804B7A4: .4byte sub_804B994
_0804B7A8: .4byte 0x00004001
_0804B7AC: .4byte sub_804BE68
_0804B7B0: .4byte 0x03000030
_0804B7B4: .4byte 0x000002EF
_0804B7B8: .4byte 0x03000020
_0804B7BC: .4byte 0x03000021
_0804B7C0: .4byte 0x03000022
_0804B7C4: .4byte 0x03000025

	thumb_func_start CreateItemTask_Confusion
CreateItemTask_Confusion: @ 0x0804B7C8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0804B848 @ =sub_804BD70
	ldr r2, _0804B84C @ =0x00004001
	ldr r1, _0804B850 @ =sub_804BE68
	str r1, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	adds r6, r0, #0
	ldrh r0, [r6, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	ldr r1, _0804B854 @ =0x03000030
	adds r0, r0, r1
	movs r1, #0
	mov r8, r1
	strb r4, [r0]
	ldrh r4, [r6, #6]
	adds r5, r4, r5
	movs r0, #8
	bl VramMalloc
	str r0, [r5, #4]
	movs r2, #0
	mov r0, r8
	strh r0, [r5, #8]
	ldr r0, _0804B858 @ =0x0000031A
	strh r0, [r5, #0xa]
	ldr r1, _0804B85C @ =0x03000020
	adds r0, r4, r1
	strb r2, [r0]
	ldr r0, _0804B860 @ =0x03000021
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5, #0x1a]
	mov r1, r8
	strh r1, [r5, #0x1c]
	ldr r0, _0804B864 @ =0x03000022
	adds r1, r4, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0804B868 @ =0x03000025
	adds r4, r4, r1
	strb r2, [r4]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	adds r0, r6, #0
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0804B848: .4byte sub_804BD70
_0804B84C: .4byte 0x00004001
_0804B850: .4byte sub_804BE68
_0804B854: .4byte 0x03000030
_0804B858: .4byte 0x0000031A
_0804B85C: .4byte 0x03000020
_0804B860: .4byte 0x03000021
_0804B864: .4byte 0x03000022
_0804B868: .4byte 0x03000025

	thumb_func_start sub_804B86C
sub_804B86C: @ 0x0804B86C
	push {r4, r5, r6, r7, lr}
	ldr r0, _0804B8D4 @ =gCurTask
	ldr r5, [r0]
	ldrh r1, [r5, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	ldr r2, _0804B8D8 @ =0x03000030
	adds r0, r1, r2
	ldrb r2, [r0]
	orrs r4, r1
	ldr r0, _0804B8DC @ =gCamera
	mov ip, r0
	ldr r0, _0804B8E0 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0804B8F4
	ldr r1, _0804B8E4 @ =gMultiplayerPlayerTasks
	lsls r2, r2, #0x18
	asrs r0, r2, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r3, r1
	adds r1, #0x57
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _0804B90E
	ldr r2, _0804B8E8 @ =0x03000050
	adds r0, r3, r2
	ldrh r0, [r0]
	mov r2, ip
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldr r1, _0804B8EC @ =0x03000052
	adds r0, r3, r1
	ldrh r0, [r0]
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	ldr r2, [r4, #0x10]
	ldr r0, _0804B8F0 @ =0xFFFFCFFF
	ands r2, r0
	str r2, [r4, #0x10]
	ldr r0, [r7, #0x10]
	b _0804B954
	.align 2, 0
_0804B8D4: .4byte gCurTask
_0804B8D8: .4byte 0x03000030
_0804B8DC: .4byte gCamera
_0804B8E0: .4byte gGameMode
_0804B8E4: .4byte gMultiplayerPlayerTasks
_0804B8E8: .4byte 0x03000050
_0804B8EC: .4byte 0x03000052
_0804B8F0: .4byte 0xFFFFCFFF
_0804B8F4:
	lsls r0, r2, #0x18
	ldr r3, _0804B918 @ =gPlayer
	adds r6, r0, #0
	cmp r6, #0
	beq _0804B900
	ldr r3, _0804B91C @ =gPartner
_0804B900:
	adds r0, r3, #0
	adds r0, #0x26
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0804B920
_0804B90E:
	adds r0, r5, #0
	bl TaskDestroy
	b _0804B98E
	.align 2, 0
_0804B918: .4byte gPlayer
_0804B91C: .4byte gPartner
_0804B920:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0804B98E
	ldr r0, [r3]
	asrs r0, r0, #8
	mov r2, ip
	ldrh r1, [r2]
	adds r2, r3, #0
	adds r2, #0x50
	subs r0, r0, r1
	ldrh r2, [r2]
	adds r0, r0, r2
	strh r0, [r4, #0x16]
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	mov r2, ip
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	ldr r2, [r4, #0x10]
	ldr r0, _0804B97C @ =0xFFFFCFFF
	ands r2, r0
	str r2, [r4, #0x10]
	ldr r0, [r3, #0x64]
	ldr r0, [r0, #0x1c]
_0804B954:
	movs r1, #0xc0
	lsls r1, r1, #6
	ands r0, r1
	orrs r2, r0
	str r2, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	asrs r2, r6, #0x18
	movs r3, #1
	ands r2, r3
	ldr r0, _0804B980 @ =gStageTime
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0804B984
	cmp r2, r3
	bne _0804B988
	b _0804B98E
	.align 2, 0
_0804B97C: .4byte 0xFFFFCFFF
_0804B980: .4byte gStageTime
_0804B984:
	cmp r2, #0
	beq _0804B98E
_0804B988:
	adds r0, r4, #0
	bl DisplaySprite
_0804B98E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_804B994
sub_804B994: @ 0x0804B994
	push {r4, r5, r6, r7, lr}
	ldr r0, _0804B9FC @ =gCurTask
	ldr r5, [r0]
	ldrh r1, [r5, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	ldr r2, _0804BA00 @ =0x03000030
	adds r0, r1, r2
	ldrb r2, [r0]
	orrs r4, r1
	ldr r0, _0804BA04 @ =gCamera
	mov ip, r0
	ldr r0, _0804BA08 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0804BA1C
	ldr r1, _0804BA0C @ =gMultiplayerPlayerTasks
	lsls r2, r2, #0x18
	asrs r0, r2, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r3, r1
	adds r1, #0x57
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _0804BA36
	ldr r2, _0804BA10 @ =0x03000050
	adds r0, r3, r2
	ldrh r0, [r0]
	mov r2, ip
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldr r1, _0804BA14 @ =0x03000052
	adds r0, r3, r1
	ldrh r0, [r0]
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	ldr r2, [r4, #0x10]
	ldr r0, _0804BA18 @ =0xFFFFCFFF
	ands r2, r0
	str r2, [r4, #0x10]
	ldr r0, [r7, #0x10]
	b _0804BA7C
	.align 2, 0
_0804B9FC: .4byte gCurTask
_0804BA00: .4byte 0x03000030
_0804BA04: .4byte gCamera
_0804BA08: .4byte gGameMode
_0804BA0C: .4byte gMultiplayerPlayerTasks
_0804BA10: .4byte 0x03000050
_0804BA14: .4byte 0x03000052
_0804BA18: .4byte 0xFFFFCFFF
_0804BA1C:
	lsls r0, r2, #0x18
	ldr r3, _0804BA40 @ =gPlayer
	adds r6, r0, #0
	cmp r6, #0
	beq _0804BA28
	ldr r3, _0804BA44 @ =gPartner
_0804BA28:
	adds r0, r3, #0
	adds r0, #0x26
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0804BA48
_0804BA36:
	adds r0, r5, #0
	bl TaskDestroy
	b _0804BAB6
	.align 2, 0
_0804BA40: .4byte gPlayer
_0804BA44: .4byte gPartner
_0804BA48:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0804BAB6
	ldr r0, [r3]
	asrs r0, r0, #8
	mov r2, ip
	ldrh r1, [r2]
	adds r2, r3, #0
	adds r2, #0x50
	subs r0, r0, r1
	ldrh r2, [r2]
	adds r0, r0, r2
	strh r0, [r4, #0x16]
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	mov r2, ip
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	ldr r2, [r4, #0x10]
	ldr r0, _0804BAA4 @ =0xFFFFCFFF
	ands r2, r0
	str r2, [r4, #0x10]
	ldr r0, [r3, #0x64]
	ldr r0, [r0, #0x1c]
_0804BA7C:
	movs r1, #0xc0
	lsls r1, r1, #6
	ands r0, r1
	orrs r2, r0
	str r2, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	asrs r2, r6, #0x18
	movs r3, #1
	ands r2, r3
	ldr r0, _0804BAA8 @ =gStageTime
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0804BAAC
	cmp r2, r3
	bne _0804BAB0
	b _0804BAB6
	.align 2, 0
_0804BAA4: .4byte 0xFFFFCFFF
_0804BAA8: .4byte gStageTime
_0804BAAC:
	cmp r2, #0
	beq _0804BAB6
_0804BAB0:
	adds r0, r4, #0
	bl DisplaySprite
_0804BAB6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_804BABC
sub_804BABC: @ 0x0804BABC
	push {r4, r5, r6, r7, lr}
	ldr r0, _0804BAEC @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r6, #0xc0
	lsls r6, r6, #0x12
	ldr r3, _0804BAF0 @ =0x03000030
	adds r0, r1, r3
	ldrb r3, [r0]
	adds r5, r3, #0
	adds r4, r6, #0
	orrs r4, r1
	ldr r7, _0804BAF4 @ =gCamera
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0804BAF8
	adds r0, r2, #0
	bl TaskDestroy
	b _0804BB84
	.align 2, 0
_0804BAEC: .4byte gCurTask
_0804BAF0: .4byte 0x03000030
_0804BAF4: .4byte gCamera
_0804BAF8:
	ldr r0, _0804BB20 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0804BB30
	ldr r1, _0804BB24 @ =gMultiplayerPlayerTasks
	lsls r0, r3, #0x18
	asrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	adds r2, r0, r6
	ldr r3, _0804BB28 @ =0x03000050
	adds r1, r0, r3
	ldrh r5, [r1]
	ldr r1, _0804BB2C @ =0x03000052
	adds r0, r0, r1
	ldrh r3, [r0]
	ldr r2, [r2, #0x10]
	b _0804BB54
	.align 2, 0
_0804BB20: .4byte gGameMode
_0804BB24: .4byte gMultiplayerPlayerTasks
_0804BB28: .4byte 0x03000050
_0804BB2C: .4byte 0x03000052
_0804BB30:
	lsls r0, r5, #0x18
	ldr r2, _0804BB8C @ =gPlayer
	cmp r0, #0
	beq _0804BB3A
	ldr r2, _0804BB90 @ =gPartner
_0804BB3A:
	ldr r0, [r2]
	adds r1, r2, #0
	adds r1, #0x50
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, [r2, #4]
	lsls r0, r0, #8
	lsrs r3, r0, #0x10
	ldr r0, [r2, #0x64]
	ldr r2, [r0, #0x1c]
_0804BB54:
	movs r0, #0xc0
	lsls r0, r0, #6
	ands r2, r0
	ldrh r1, [r7]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldrh r1, [r7, #2]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	ldr r0, [r4, #0x10]
	ldr r1, _0804BB94 @ =0xFFFFCFFF
	ands r0, r1
	orrs r0, r2
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0804BB84:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804BB8C: .4byte gPlayer
_0804BB90: .4byte gPartner
_0804BB94: .4byte 0xFFFFCFFF

	thumb_func_start sub_804BB98
sub_804BB98: @ 0x0804BB98
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	ldr r0, _0804BBF4 @ =gCurTask
	ldr r3, [r0]
	ldrh r1, [r3, #6]
	movs r6, #0xc0
	lsls r6, r6, #0x12
	ldr r2, _0804BBF8 @ =0x03000030
	adds r0, r1, r2
	ldrb r0, [r0]
	mov r8, r0
	orrs r6, r1
	ldr r5, _0804BBFC @ =gCamera
	ldr r0, _0804BC00 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0804BC10
	ldr r1, _0804BC04 @ =gMultiplayerPlayerTasks
	mov r2, r8
	lsls r0, r2, #0x18
	asrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	ldr r1, _0804BC08 @ =0x03000057
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804BC28
	ldr r3, _0804BC0C @ =0x03000050
	adds r0, r2, r3
	ldrh r1, [r0]
	adds r3, #2
	adds r0, r2, r3
	ldrh r3, [r0]
	ldr r2, [r4, #0x10]
	b _0804BC52
	.align 2, 0
_0804BBF4: .4byte gCurTask
_0804BBF8: .4byte 0x03000030
_0804BBFC: .4byte gCamera
_0804BC00: .4byte gGameMode
_0804BC04: .4byte gMultiplayerPlayerTasks
_0804BC08: .4byte 0x03000057
_0804BC0C: .4byte 0x03000050
_0804BC10:
	ldr r2, _0804BC30 @ =gPlayer
	mov r0, r8
	cmp r0, #0
	beq _0804BC1A
	ldr r2, _0804BC34 @ =gPartner
_0804BC1A:
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0804BC38
_0804BC28:
	adds r0, r3, #0
	bl TaskDestroy
	b _0804BD62
	.align 2, 0
_0804BC30: .4byte gPlayer
_0804BC34: .4byte gPartner
_0804BC38:
	ldr r0, [r2]
	adds r1, r2, #0
	adds r1, #0x50
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, [r2, #4]
	lsls r0, r0, #8
	lsrs r3, r0, #0x10
	ldr r0, [r2, #0x64]
	ldr r2, [r0, #0x1c]
_0804BC52:
	movs r0, #0xc0
	lsls r0, r0, #6
	ands r2, r0
	ldrh r0, [r5]
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
	subs r0, r7, r0
	strh r0, [r6, #0x16]
	ldrh r0, [r5, #2]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	mov ip, r1
	subs r0, r1, r0
	strh r0, [r6, #0x18]
	ldr r0, [r6, #0x10]
	ldr r1, _0804BD30 @ =0xFFFFCFFF
	ands r0, r1
	orrs r0, r2
	str r0, [r6, #0x10]
	ldr r1, _0804BD34 @ =gStageTime
	mov sb, r1
	ldr r0, [r1]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0804BD0E
	ldr r5, _0804BD38 @ =gPseudoRandom
	ldr r0, [r5]
	ldr r3, _0804BD3C @ =0x00196225
	adds r1, r0, #0
	muls r1, r3, r1
	ldr r2, _0804BD40 @ =0x3C6EF35F
	adds r1, r1, r2
	lsrs r4, r1, #8
	movs r0, #0xf
	ands r4, r0
	muls r1, r3, r1
	adds r1, r1, r2
	str r1, [r5]
	lsrs r1, r1, #8
	movs r0, #0xff
	ldr r2, _0804BD44 @ =gSineTable
	ands r1, r0
	lsls r0, r1, #3
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r4, r0
	asrs r0, r0, #8
	adds r0, r7, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	muls r1, r4, r1
	asrs r1, r1, #8
	add r1, ip
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, _0804BD48 @ =Task_StageGoalBonusPoints
	str r2, [sp]
	ldr r2, _0804BD4C @ =TaskDestructor_MultiplayerSpriteTask
	str r2, [sp, #4]
	movs r2, #0
	movs r3, #0
	bl CreateMultiplayerSpriteTask
	ldrh r4, [r0, #6]
	ldr r0, _0804BD50 @ =0x03000018
	adds r5, r4, r0
	movs r0, #9
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0xbc
	lsls r0, r0, #2
	strh r0, [r5, #0xa]
	ldr r1, _0804BD54 @ =0x03000038
	adds r4, r4, r1
	movs r0, #1
	strb r0, [r4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
_0804BD0E:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	movs r3, #1
	adds r2, r3, #0
	mov r0, r8
	bics r2, r0
	mov r1, sb
	ldr r0, [r1]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0804BD58
	cmp r2, r3
	bne _0804BD5C
	b _0804BD62
	.align 2, 0
_0804BD30: .4byte 0xFFFFCFFF
_0804BD34: .4byte gStageTime
_0804BD38: .4byte gPseudoRandom
_0804BD3C: .4byte 0x00196225
_0804BD40: .4byte 0x3C6EF35F
_0804BD44: .4byte gSineTable
_0804BD48: .4byte Task_StageGoalBonusPoints
_0804BD4C: .4byte TaskDestructor_MultiplayerSpriteTask
_0804BD50: .4byte 0x03000018
_0804BD54: .4byte 0x03000038
_0804BD58:
	cmp r2, #0
	beq _0804BD62
_0804BD5C:
	adds r0, r6, #0
	bl DisplaySprite
_0804BD62:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_804BD70
sub_804BD70: @ 0x0804BD70
	push {r4, r5, r6, r7, lr}
	ldr r0, _0804BDBC @ =gCurTask
	ldr r4, [r0]
	ldrh r1, [r4, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	ldr r2, _0804BDC0 @ =0x03000030
	adds r0, r1, r2
	ldrb r2, [r0]
	orrs r5, r1
	ldr r0, _0804BDC4 @ =gCamera
	mov ip, r0
	ldr r0, _0804BDC8 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0804BE5C
	ldr r1, _0804BDCC @ =gMultiplayerPlayerTasks
	lsls r2, r2, #0x18
	asrs r0, r2, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r3, r1
	adds r1, #0x57
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #0x50
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	bne _0804BDD0
	adds r0, r4, #0
	bl TaskDestroy
	b _0804BE62
	.align 2, 0
_0804BDBC: .4byte gCurTask
_0804BDC0: .4byte 0x03000030
_0804BDC4: .4byte gCamera
_0804BDC8: .4byte gGameMode
_0804BDCC: .4byte gMultiplayerPlayerTasks
_0804BDD0:
	ldr r2, _0804BE14 @ =0x03000050
	adds r0, r3, r2
	ldrh r0, [r0]
	mov r2, ip
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r5, #0x16]
	ldr r1, _0804BE18 @ =0x03000052
	adds r0, r3, r1
	ldrh r0, [r0]
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r5, #0x18]
	ldr r1, [r5, #0x10]
	ldr r0, _0804BE1C @ =0xFFFFCFFF
	ands r1, r0
	str r1, [r5, #0x10]
	ldr r2, [r6, #0x10]
	movs r0, #0xc0
	lsls r0, r0, #6
	ands r2, r0
	orrs r2, r1
	str r2, [r5, #0x10]
	ldr r0, _0804BE20 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804BE24
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r2, r0
	b _0804BE28
	.align 2, 0
_0804BE14: .4byte 0x03000050
_0804BE18: .4byte 0x03000052
_0804BE1C: .4byte 0xFFFFCFFF
_0804BE20: .4byte gStageFlags
_0804BE24:
	ldr r0, _0804BE48 @ =0xFFFFF7FF
	ands r2, r0
_0804BE28:
	str r2, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	asrs r2, r7, #0x18
	movs r3, #1
	ands r2, r3
	ldr r0, _0804BE4C @ =gStageTime
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0804BE50
	cmp r2, r3
	bne _0804BE54
	b _0804BE62
	.align 2, 0
_0804BE48: .4byte 0xFFFFF7FF
_0804BE4C: .4byte gStageTime
_0804BE50:
	cmp r2, #0
	beq _0804BE62
_0804BE54:
	adds r0, r5, #0
	bl DisplaySprite
	b _0804BE62
_0804BE5C:
	adds r0, r4, #0
	bl TaskDestroy
_0804BE62:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_804BE68
sub_804BE68: @ 0x0804BE68
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0
