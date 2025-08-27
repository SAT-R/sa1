.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ --- Start of EggSnake

	thumb_func_start sub_8031D88
sub_8031D88: @ 0x08031D88
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	ldr r0, _08031E14 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	adds r0, #0xc
	adds r6, r4, r0
	ldr r0, [r6, #0x10]
	ldr r1, _08031E18 @ =0xFFFFFE7F
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r1, _08031E1C @ =gPlayer
	mov ip, r1
	ldr r3, [r1, #0x10]
	movs r0, #0x80
	ands r3, r0
	cmp r3, #0
	bne _08031DD2
	ldr r2, _08031E20 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08031E24 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08031E28 @ =gWinRegs
	strh r3, [r0, #0xa]
	ldr r0, _08031E2C @ =gBldRegs
	strh r3, [r0]
	strh r3, [r0, #4]
_08031DD2:
	ldr r1, _08031E30 @ =0x0300009C
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08031EC2
	lsls r0, r7, #0x10
	asrs r7, r0, #0x10
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	mov r3, ip
	bl Coll_Player_Bosses_2_6
	mov r8, r0
	ldr r0, _08031E34 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08031E3C
	ldr r3, _08031E38 @ =gPartner
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl Coll_Player_Bosses_2_6
	b _08031E3E
	.align 2, 0
_08031E14: .4byte gCurTask
_08031E18: .4byte 0xFFFFFE7F
_08031E1C: .4byte gPlayer
_08031E20: .4byte gDispCnt
_08031E24: .4byte 0x00007FFF
_08031E28: .4byte gWinRegs
_08031E2C: .4byte gBldRegs
_08031E30: .4byte 0x0300009C
_08031E34: .4byte gNumSingleplayerCharacters
_08031E38: .4byte gPartner
_08031E3C:
	movs r0, #0
_08031E3E:
	adds r3, r5, #0
	adds r3, #0x44
	mov r1, r8
	cmp r1, #1
	beq _08031E4C
	cmp r0, #1
	bne _08031E90
_08031E4C:
	adds r1, r5, #0
	adds r1, #0x9a
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r1, #2
	movs r0, #0x20
	strb r0, [r1]
	adds r2, r6, #0
	adds r2, #0x20
	ldrb r1, [r2]
	cmp r1, #2
	bne _08031E6C
	adds r0, r5, #0
	adds r0, #0x64
	strb r1, [r0]
_08031E6C:
	ldrb r0, [r2]
	cmp r0, #3
	bne _08031E7A
	adds r1, r5, #0
	adds r1, #0x64
	movs r0, #5
	strb r0, [r1]
_08031E7A:
	ldr r0, [r3, #0x10]
	ldr r1, _08031E8C @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	movs r0, #0x8f
	bl m4aSongNumStart
	b _08031EC2
	.align 2, 0
_08031E8C: .4byte 0xFFFFBFFF
_08031E90:
	mov r1, r8
	cmp r1, #2
	beq _08031E9A
	cmp r0, #2
	bne _08031EC2
_08031E9A:
	adds r2, r6, #0
	adds r2, #0x20
	ldrb r0, [r2]
	cmp r0, #2
	bne _08031EAC
	adds r1, r5, #0
	adds r1, #0x64
	movs r0, #1
	strb r0, [r1]
_08031EAC:
	ldrb r0, [r2]
	cmp r0, #3
	bne _08031EBA
	adds r1, r5, #0
	adds r1, #0x64
	movs r0, #4
	strb r0, [r1]
_08031EBA:
	ldr r0, [r3, #0x10]
	ldr r1, _08031ECC @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
_08031EC2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031ECC: .4byte 0xFFFFBFFF

	thumb_func_start sub_8031ED0
sub_8031ED0: @ 0x08031ED0
	push {r4, r5, r6, lr}
	ldr r0, _08031F58 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	adds r1, #0xc
	adds r3, r0, r1
	ldr r6, _08031F5C @ =0x03000044
	adds r5, r0, r6
	adds r1, #0x90
	adds r2, r0, r1
	ldrb r1, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _08031F3A
	subs r1, #1
	strb r1, [r2]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x10
	ble _08031F3A
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _08031F3A
	ldr r0, _08031F60 @ =gPlayer
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08031F3A
	ldr r0, [r3, #0x10]
	adds r1, #0x80
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r2, _08031F64 @ =gDispCnt
	ldrh r0, [r2]
	movs r6, #0x80
	lsls r6, r6, #8
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08031F68 @ =gWinRegs
	ldr r0, _08031F6C @ =0x00003F1F
	strh r0, [r1, #0xa]
	ldr r1, _08031F70 @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
_08031F3A:
	adds r0, r3, #0
	bl DisplaySprite
	adds r0, r4, #0
	adds r0, #0xaa
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _08031F50
	adds r0, r5, #0
	bl DisplaySprite
_08031F50:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08031F58: .4byte gCurTask
_08031F5C: .4byte 0x03000044
_08031F60: .4byte gPlayer
_08031F64: .4byte gDispCnt
_08031F68: .4byte gWinRegs
_08031F6C: .4byte 0x00003F1F
_08031F70: .4byte gBldRegs

	thumb_func_start sub_8031F74
sub_8031F74: @ 0x08031F74
	ldr r0, _08031FB8 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	ldr r0, _08031FBC @ =0x03000044
	adds r1, r2, r0
	adds r0, #0x20
	adds r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq _08031FB6
	cmp r0, #3
	beq _08031FB6
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08031FB6
	ldr r0, _08031FC0 @ =0x0300002C
	adds r1, r2, r0
	ldrb r0, [r1]
	cmp r0, #2
	bne _08031FA6
	movs r0, #0
	strb r0, [r3]
_08031FA6:
	ldrb r0, [r1]
	cmp r0, #3
	bne _08031FAE
	strb r0, [r3]
_08031FAE:
	ldr r0, _08031FC4 @ =0x03000065
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
_08031FB6:
	bx lr
	.align 2, 0
_08031FB8: .4byte gCurTask
_08031FBC: .4byte 0x03000044
_08031FC0: .4byte 0x0300002C
_08031FC4: .4byte 0x03000065

	thumb_func_start CreateEntity_EggSnake
CreateEntity_EggSnake: @ 0x08031FC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x18
	lsrs r5, r3, #0x18
	ldr r0, _08031FF8 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _08031FFC
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	b _080321A8
	.align 2, 0
_08031FF8: .4byte gGameMode
_08031FFC:
	ldr r0, _08032090 @ =sub_80321C0
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08032094 @ =sub_8034208
	str r1, [sp]
	movs r1, #0xac
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r3
	mov sl, r0
	ldr r0, _08032098 @ =0x0300000C
	adds r7, r3, r0
	movs r4, #0
	movs r2, #0
	mov r0, r8
	mov r1, sl
	strh r0, [r1, #4]
	mov r0, sb
	strh r0, [r1, #6]
	str r6, [r1]
	ldrb r0, [r6]
	strb r0, [r1, #8]
	strb r5, [r1, #9]
	ldr r0, _0803209C @ =0x03000098
	adds r1, r3, r0
	movs r0, #0x78
	strh r0, [r1]
	ldr r1, _080320A0 @ =0x0300009C
	adds r0, r3, r1
	strb r4, [r0]
	adds r1, #0xd
	adds r0, r3, r1
	strb r4, [r0]
	subs r1, #1
	adds r0, r3, r1
	strb r4, [r0]
	movs r0, #0x80
	lsls r0, r0, #5
	mov r1, sl
	str r0, [r1, #0x78]
	str r2, [r1, #0x7c]
	ldr r1, _080320A4 @ =0x03000080
	adds r0, r3, r1
	str r2, [r0]
	adds r1, #4
	adds r0, r3, r1
	str r2, [r0]
	adds r1, #0x1c
	adds r0, r3, r1
	strh r2, [r0]
	ldr r0, _080320A8 @ =0x030000A2
	adds r1, r3, r0
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r1, _080320AC @ =0x030000A4
	adds r0, r3, r1
	strh r2, [r0]
	adds r1, #6
	adds r0, r3, r1
	strb r4, [r0]
	ldr r0, _080320B0 @ =gLoadedSaveGame
	ldrb r0, [r0, #0x18]
	cmp r0, #0
	beq _080320B8
	ldr r0, _080320B4 @ =0x0300009A
	adds r1, r3, r0
	movs r0, #2
	strb r0, [r1]
	b _080320BE
	.align 2, 0
_08032090: .4byte sub_80321C0
_08032094: .4byte sub_8034208
_08032098: .4byte 0x0300000C
_0803209C: .4byte 0x03000098
_080320A0: .4byte 0x0300009C
_080320A4: .4byte 0x03000080
_080320A8: .4byte 0x030000A2
_080320AC: .4byte 0x030000A4
_080320B0: .4byte gLoadedSaveGame
_080320B4: .4byte 0x0300009A
_080320B8:
	ldr r1, _080321B8 @ =0x0300009A
	adds r0, r3, r1
	strb r4, [r0]
_080320BE:
	ldrb r0, [r6]
	lsls r0, r0, #3
	mov r1, r8
	lsls r5, r1, #8
	adds r0, r0, r5
	strh r0, [r7, #0x16]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	mov r1, sb
	lsls r1, r1, #8
	mov sb, r1
	add r0, sb
	strh r0, [r7, #0x18]
	movs r0, #0x30
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0xb0
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	movs r0, #0
	strh r0, [r7, #8]
	ldr r0, _080321BC @ =0x00000296
	strh r0, [r7, #0xa]
	adds r0, r7, #0
	adds r0, #0x20
	movs r1, #3
	strb r1, [r0]
	movs r0, #0
	strh r0, [r7, #0x14]
	strh r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x22
	movs r1, #0x10
	strb r1, [r0]
	adds r0, #3
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	mov r8, r1
	str r1, [r7, #0x10]
	mov r4, sl
	adds r4, #0x44
	ldrb r0, [r6]
	lsls r0, r0, #3
	adds r0, r0, r5
	strh r0, [r4, #0x16]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	add r0, sb
	strh r0, [r4, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	movs r0, #8
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0xa8
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	movs r0, #0
	strh r0, [r4, #8]
	movs r0, #0xa5
	lsls r0, r0, #2
	strh r0, [r4, #0xa]
	mov r0, sl
	adds r0, #0x64
	movs r1, #3
	strb r1, [r0]
	movs r0, #0
	strh r0, [r4, #0x14]
	strh r0, [r4, #0x1c]
	mov r1, sl
	adds r1, #0x65
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	mov r0, sl
	adds r0, #0x66
	movs r1, #0x10
	strb r1, [r0]
	adds r0, #3
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	mov r1, r8
	str r1, [r4, #0x10]
	ldrh r1, [r7, #0x18]
	adds r0, r1, #0
	subs r0, #0x80
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, #0x20
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r3, [r7, #0x16]
	adds r2, r3, #0
	subs r2, #0x90
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r3, #0xb0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	bl sub_80171BC
_080321A8:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080321B8: .4byte 0x0300009A
_080321BC: .4byte 0x00000296

	thumb_func_start sub_80321C0
sub_80321C0: @ 0x080321C0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080322B8 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	adds r0, #0xc
	adds r0, r0, r2
	mov r8, r0
	ldr r1, _080322BC @ =0x03000044
	adds r6, r2, r1
	ldr r4, [r5]
	ldr r3, _080322C0 @ =0x03000098
	adds r0, r2, r3
	ldrh r0, [r0]
	cmp r0, #0x78
	bne _080321FC
	adds r1, #0x65
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080321FC
	bl sub_8033878
	bl sub_803330C
_080321FC:
	ldr r1, _080322C4 @ =gSineTable
	adds r0, r5, #0
	adds r0, #0xa0
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r2, [r0, r3]
	lsls r0, r2, #4
	subs r0, r0, r2
	asrs r2, r0, #0xb
	ldrb r1, [r5, #8]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r5, #0x78]
	asrs r0, r0, #8
	adds r1, r1, r0
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	adds r0, r2, #0
	adds r0, #0x90
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	bge _0803223A
	adds r2, #0x1f
_0803223A:
	ldr r0, _080322C8 @ =gUnknown_03005870
	asrs r2, r2, #5
	lsls r2, r2, #1
	adds r2, r2, r0
	ldrb r1, [r4, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r5, #0x7c]
	asrs r0, r0, #8
	adds r1, r1, r0
	movs r0, #0
	ldrsh r2, [r2, r0]
	adds r2, r2, r1
	ldr r7, _080322B8 @ =gCurTask
	ldr r0, [r7]
	ldrh r1, [r0, #6]
	ldr r3, _080322CC @ =0x0300000C
	adds r1, r1, r3
	ldr r4, _080322D0 @ =gCamera
	ldrh r0, [r4]
	mov sb, r0
	mov r3, ip
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	mov r3, sb
	subs r0, r0, r3
	strh r0, [r1, #0x16]
	ldrh r0, [r4, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r1, #0x18]
	mov r0, r8
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	ldr r0, [r7]
	ldrh r0, [r0, #6]
	ldr r1, _080322CC @ =0x0300000C
	adds r2, r0, r1
	ldr r3, _080322BC @ =0x03000044
	adds r0, r0, r3
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	bl sub_8031ED0
	adds r3, r5, #0
	adds r3, #0xa9
	ldrb r0, [r3]
	cmp r0, #1
	beq _08032300
	cmp r0, #1
	bgt _080322D4
	cmp r0, #0
	beq _080322DE
	b _0803235E
	.align 2, 0
_080322B8: .4byte gCurTask
_080322BC: .4byte 0x03000044
_080322C0: .4byte 0x03000098
_080322C4: .4byte gSineTable
_080322C8: .4byte gUnknown_03005870
_080322CC: .4byte 0x0300000C
_080322D0: .4byte gCamera
_080322D4:
	cmp r0, #2
	beq _0803231A
	cmp r0, #3
	beq _0803233E
	b _0803235E
_080322DE:
	adds r2, r5, #0
	adds r2, #0x98
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803235E
	ldr r1, _080322FC @ =gMusicManagerState
	movs r0, #0x13
	strb r0, [r1, #1]
	movs r0, #0x3c
	strh r0, [r2]
	b _08032336
	.align 2, 0
_080322FC: .4byte gMusicManagerState
_08032300:
	adds r1, r5, #0
	adds r1, #0x98
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803235E
	adds r1, r6, #0
	adds r1, #0x20
	movs r0, #4
	strb r0, [r1]
	b _08032336
_0803231A:
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0803235E
	adds r1, r6, #0
	adds r1, #0x20
	movs r0, #3
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x98
	movs r0, #0x3c
	strh r0, [r1]
_08032336:
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	b _0803235E
_0803233E:
	adds r1, r5, #0
	adds r1, #0x98
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803235E
	adds r1, #0x10
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0
	strb r0, [r3]
	ldr r1, [r7]
	ldr r0, _0803236C @ =sub_8032370
	str r0, [r1, #8]
_0803235E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803236C: .4byte sub_8032370

	thumb_func_start sub_8032370
sub_8032370: @ 0x08032370
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r1, _0803247C @ =gCurTask
	ldr r0, [r1]
	ldrh r6, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r6, r1
	ldr r2, _08032480 @ =0x0300000C
	adds r2, r2, r6
	mov r8, r2
	ldr r3, _08032484 @ =0x03000044
	adds r3, r3, r6
	mov sl, r3
	ldr r4, [r5]
	mov ip, r4
	ldr r0, [r5, #0x74]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp]
	ldr r0, _08032488 @ =0x030000A2
	adds r1, r6, r0
	ldr r2, _0803248C @ =0x030000A4
	adds r0, r6, r2
	ldrh r0, [r0]
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	ldr r4, _08032490 @ =0x030000A0
	adds r2, r6, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r1, [r2]
	subs r1, r1, r0
	ldr r0, _08032494 @ =0x000003FF
	ands r1, r0
	strh r1, [r2]
	ldr r1, _08032498 @ =gSineTable
	movs r3, #0
	ldrsh r0, [r2, r3]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r4, #0
	ldrsh r7, [r0, r4]
	lsls r0, r7, #4
	subs r0, r0, r7
	asrs r7, r0, #0xb
	ldrb r1, [r5, #8]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r5, #0x78]
	asrs r0, r0, #8
	adds r1, r1, r0
	adds r1, r1, r7
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	adds r0, r7, #0
	adds r0, #0x80
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	adds r1, r3, #0
	cmp r3, #0
	bge _080323FE
	adds r1, #0x1f
_080323FE:
	asrs r1, r1, #5
	lsls r0, r1, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #5
	subs r1, r3, r1
	ldr r3, _0803249C @ =gUnknown_03005870
	lsls r2, r4, #1
	adds r2, r2, r3
	adds r0, r4, #1
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r4, #0
	ldrsh r3, [r2, r4]
	subs r0, r0, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	muls r0, r1, r0
	cmp r0, #0
	bge _0803242A
	adds r0, #0x1f
_0803242A:
	asrs r2, r0, #5
	adds r2, r3, r2
	lsls r2, r2, #0x10
	mov r0, ip
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r5, #0x7c]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsrs r3, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, r2, r1
	ldr r1, _080324A0 @ =0x03000090
	adds r0, r6, r1
	strh r7, [r0]
	ldr r4, _080324A4 @ =0x03000092
	adds r0, r6, r4
	strh r3, [r0]
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov sb, r2
	adds r0, r4, #0
	mov r1, sb
	bl sub_8031D88
	ldr r2, _080324A8 @ =0x0300009A
	adds r0, r6, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _080324AC
	bl sub_80327C4
	b _080327B0
	.align 2, 0
_0803247C: .4byte gCurTask
_08032480: .4byte 0x0300000C
_08032484: .4byte 0x03000044
_08032488: .4byte 0x030000A2
_0803248C: .4byte 0x030000A4
_08032490: .4byte 0x030000A0
_08032494: .4byte 0x000003FF
_08032498: .4byte gSineTable
_0803249C: .4byte gUnknown_03005870
_080324A0: .4byte 0x03000090
_080324A4: .4byte 0x03000092
_080324A8: .4byte 0x0300009A
_080324AC:
	ldr r3, _08032510 @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	ldr r0, _08032514 @ =0x0300000C
	adds r1, r1, r0
	ldr r2, _08032518 @ =gCamera
	ldrh r0, [r2]
	subs r0, r4, r0
	strh r0, [r1, #0x16]
	ldrh r0, [r2, #2]
	mov r2, sb
	subs r0, r2, r0
	strh r0, [r1, #0x18]
	bl sub_8031F74
	mov r0, r8
	bl UpdateSpriteAnimation
	ldr r3, _0803251C @ =0x030000AA
	adds r0, r6, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _080324E0
	mov r0, sl
	bl UpdateSpriteAnimation
_080324E0:
	ldr r4, _08032510 @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	ldr r1, _08032514 @ =0x0300000C
	adds r2, r0, r1
	ldr r3, _08032520 @ =0x03000044
	adds r0, r0, r3
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	bl sub_8031ED0
	ldr r4, _08032524 @ =0x030000A9
	adds r0, r6, r4
	ldrb r0, [r0]
	cmp r0, #5
	bls _08032506
	b _080327B0
_08032506:
	lsls r0, r0, #2
	ldr r1, _08032528 @ =_0803252C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08032510: .4byte gCurTask
_08032514: .4byte 0x0300000C
_08032518: .4byte gCamera
_0803251C: .4byte 0x030000AA
_08032520: .4byte 0x03000044
_08032524: .4byte 0x030000A9
_08032528: .4byte _0803252C
_0803252C: @ jump table
	.4byte _08032544 @ case 0
	.4byte _080325CC @ case 1
	.4byte _08032670 @ case 2
	.4byte _080326CE @ case 3
	.4byte _0803274C @ case 4
	.4byte _08032790 @ case 5
_08032544:
	adds r6, r5, #0
	adds r6, #0xa2
	movs r0, #0
	ldrsh r1, [r6, r0]
	ldr r0, _080325C8 @ =0x000001FF
	cmp r1, r0
	bgt _08032560
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r6]
	adds r1, r5, #0
	adds r1, #0xa4
	strh r0, [r1]
_08032560:
	adds r0, r7, #0
	adds r0, #0x90
	cmp r0, #0
	bge _0803256A
	adds r0, #0x1f
_0803256A:
	asrs r0, r0, #5
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _08032576
	b _080327B0
_08032576:
	cmp r4, #8
	bne _0803257C
	b _080327B0
_0803257C:
	ldr r0, [sp]
	adds r0, #0x55
	ldrb r2, [r0]
	adds r0, r2, #0
	cmp r0, #0
	bne _0803258A
	b _080327B0
_0803258A:
	cmp r0, #8
	bne _08032590
	b _080327B0
_08032590:
	subs r0, r2, #2
	lsls r1, r4, #0x18
	lsls r0, r0, #0x18
	asrs r3, r1, #0x18
	cmp r1, r0
	bge _0803259E
	b _080327B0
_0803259E:
	adds r0, r2, #2
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r3, r0
	ble _080325AA
	b _080327B0
_080325AA:
	ldr r0, [sp]
	adds r0, #0x57
	ldrb r0, [r0]
	cmp r0, #0
	bne _080325B6
	b _080327B0
_080325B6:
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r6]
	adds r0, r5, #0
	adds r0, #0xa4
	strh r1, [r0]
	b _08032740
	.align 2, 0
_080325C8: .4byte 0x000001FF
_080325CC:
	mov r3, r8
	adds r3, #0x20
	ldrb r0, [r3]
	cmp r0, #1
	beq _080325FC
	ldr r0, [sp]
	adds r0, #0x5c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	blt _080325E4
	b _080327B0
_080325E4:
	movs r0, #1
	strb r0, [r3]
	mov r1, r8
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0xaa
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	b _080327B0
_080325FC:
	mov r2, r8
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0803260C
	b _080327B0
_0803260C:
	movs r2, #0
	movs r0, #2
	strb r0, [r3]
	mov r0, sl
	adds r0, #0x20
	strb r2, [r0]
	mov r1, r8
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0xaa
	strb r2, [r0]
	ldr r3, _0803265C @ =gUnknown_084ACF08
	ldr r2, _08032660 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _08032664 @ =0x00196225
	muls r0, r1, r0
	ldr r4, _08032668 @ =0x3C6EF35F
	adds r0, r0, r4
	str r0, [r2]
	ldr r1, _0803266C @ =gStageTime
	ldr r1, [r1]
	adds r0, r0, r1
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x98
	strh r1, [r0]
	adds r0, #2
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x9b
	strb r0, [r1]
	adds r1, #0xe
	b _08032744
	.align 2, 0
_0803265C: .4byte gUnknown_084ACF08
_08032660: .4byte gPseudoRandom
_08032664: .4byte 0x00196225
_08032668: .4byte 0x3C6EF35F
_0803266C: .4byte gStageTime
_08032670:
	adds r0, r5, #0
	adds r0, #0x9c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080326A0
	cmp r0, #0x10
	ble _08032684
	b _080327B0
_08032684:
	mov r1, r8
	adds r1, #0x20
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0xaa
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	subs r1, #1
	b _08032744
_080326A0:
	adds r1, r5, #0
	adds r1, #0x98
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080326B2
	b _080327B0
_080326B2:
	mov r1, r8
	adds r1, #0x20
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0xaa
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	subs r1, #1
	b _08032744
_080326CE:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080327B0
	mov r0, r8
	adds r0, #0x20
	movs r2, #0
	movs r1, #3
	strb r1, [r0]
	mov r0, sl
	adds r0, #0x20
	strb r1, [r0]
	mov r1, r8
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0xaa
	strb r2, [r0]
	adds r1, r5, #0
	adds r1, #0xa4
	movs r0, #0x40
	strh r0, [r1]
	ldr r1, _0803273C @ =gUnknown_084ACEE4
	adds r2, r5, #0
	adds r2, #0x9a
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0xa6
	strh r0, [r1]
	subs r1, #0xe
	movs r0, #0x78
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x9b
	movs r1, #0
	ldrsb r1, [r2, r1]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	bne _08032740
	adds r1, r5, #0
	adds r1, #0xa9
	ldrb r0, [r1]
	adds r0, #2
	strb r0, [r1]
	b _080327B0
	.align 2, 0
_0803273C: .4byte gUnknown_084ACEE4
_08032740:
	adds r1, r5, #0
	adds r1, #0xa9
_08032744:
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _080327B0
_0803274C:
	adds r2, r5, #0
	adds r2, #0xa2
	adds r0, r5, #0
	adds r0, #0xa6
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldrh r3, [r0]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	blt _0803276C
	movs r1, #0
	strh r3, [r2]
	adds r0, r5, #0
	adds r0, #0xa4
	strh r1, [r0]
_0803276C:
	adds r1, r5, #0
	adds r1, #0x98
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080327B0
	adds r1, #0xc
	ldr r0, _0803278C @ =0x0000FFC0
	strh r0, [r1]
	adds r1, #5
	movs r0, #0
	strb r0, [r1]
	b _080327B0
	.align 2, 0
_0803278C: .4byte 0x0000FFC0
_08032790:
	adds r3, r5, #0
	adds r3, #0xa2
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, _080327C0 @ =0x000001FF
	cmp r1, r0
	ble _080327B0
	movs r2, #0
	movs r1, #0
	adds r0, #1
	strh r0, [r3]
	adds r0, r5, #0
	adds r0, #0xa4
	strh r1, [r0]
	adds r0, #5
	strb r2, [r0]
_080327B0:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080327C0: .4byte 0x000001FF

	thumb_func_start sub_80327C4
sub_80327C4: @ 0x080327C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08032894 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r8, r0
	adds r2, r5, r0
	ldr r1, _08032898 @ =0x0300000C
	adds r1, r1, r5
	mov sl, r1
	ldr r6, [r2]
	ldr r4, _0803289C @ =0x03000090
	adds r0, r5, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	ldr r3, [r2, #0x78]
	adds r3, r3, r0
	str r3, [r2, #0x78]
	adds r4, #2
	adds r0, r5, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	ldr r4, [r2, #0x7c]
	adds r4, r4, r0
	str r4, [r2, #0x7c]
	ldrb r1, [r2, #8]
	lsls r1, r1, #3
	ldrh r0, [r2, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	asrs r3, r3, #8
	adds r1, r1, r3
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	ldrb r1, [r6, #1]
	lsls r1, r1, #3
	ldrh r0, [r2, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	asrs r4, r4, #8
	adds r1, r1, r4
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r2, _080328A0 @ =0x03000064
	adds r1, r5, r2
	movs r4, #0
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080328A4 @ =0x0300009E
	adds r5, r5, r0
	ldr r0, _080328A8 @ =0x0000FF80
	strh r0, [r5]
	movs r0, #0x90
	bl m4aSongNumStart
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	ldr r3, _080328AC @ =0x00000295
	str r4, [sp]
	movs r2, #4
	bl sub_80168F0
	ldrh r2, [r0, #6]
	mov r0, r8
	adds r3, r2, r0
	ldr r0, _080328B0 @ =0x03000046
	adds r1, r2, r0
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r1]
	ldr r1, _080328B4 @ =0x03000048
	adds r0, r2, r1
	strh r4, [r0]
	ldr r4, _080328B8 @ =0x03000042
	adds r0, r2, r4
	movs r4, #0x80
	lsls r4, r4, #1
	strh r4, [r0]
	mov r1, sl
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080328C0
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r3, #0x32]
	ldr r1, _080328BC @ =0x03000044
	adds r0, r2, r1
	strh r4, [r0]
	b _080328CA
	.align 2, 0
_08032894: .4byte gCurTask
_08032898: .4byte 0x0300000C
_0803289C: .4byte 0x03000090
_080328A0: .4byte 0x03000064
_080328A4: .4byte 0x0300009E
_080328A8: .4byte 0x0000FF80
_080328AC: .4byte 0x00000295
_080328B0: .4byte 0x03000046
_080328B4: .4byte 0x03000048
_080328B8: .4byte 0x03000042
_080328BC: .4byte 0x03000044
_080328C0:
	ldr r4, _08032930 @ =0x03000044
	adds r1, r2, r4
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r1]
_080328CA:
	adds r1, r3, #0
	adds r1, #0x40
	movs r4, #0
	movs r0, #0x3c
	strh r0, [r1]
	mov r0, sb
	lsls r6, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xd
	adds r0, r6, r1
	asrs r0, r0, #0x10
	lsls r5, r7, #0x10
	adds r1, r5, r1
	asrs r1, r1, #0x10
	ldr r3, _08032934 @ =0x00000295
	str r4, [sp]
	movs r2, #4
	bl sub_80168F0
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	adds r0, #0x46
	adds r1, r2, r0
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r1]
	ldr r1, _08032938 @ =0x03000048
	adds r0, r2, r1
	strh r4, [r0]
	ldr r4, _0803293C @ =0x03000042
	adds r1, r2, r4
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	mov r1, sl
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	adds r7, r5, #0
	cmp r0, #0
	beq _08032940
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r3, #0x32]
	adds r4, #2
	adds r0, r2, r4
	strh r1, [r0]
	b _0803294A
	.align 2, 0
_08032930: .4byte 0x03000044
_08032934: .4byte 0x00000295
_08032938: .4byte 0x03000048
_0803293C: .4byte 0x03000042
_08032940:
	ldr r0, _080329B0 @ =0x03000044
	adds r1, r2, r0
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r1]
_0803294A:
	adds r1, r3, #0
	adds r1, #0x40
	movs r4, #0
	movs r0, #0x3c
	strh r0, [r1]
	ldr r1, _080329B4 @ =0xFFF00000
	adds r0, r6, r1
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #0xd
	adds r1, r7, r2
	asrs r1, r1, #0x10
	ldr r3, _080329B8 @ =0x00000295
	str r4, [sp]
	movs r2, #4
	bl sub_80168F0
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	ldr r1, _080329BC @ =0x03000046
	adds r0, r2, r1
	movs r5, #0xfe
	lsls r5, r5, #8
	strh r5, [r0]
	adds r1, #2
	adds r0, r2, r1
	strh r4, [r0]
	ldr r4, _080329C0 @ =0x03000042
	adds r1, r2, r4
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r3, #0x10]
	mov r4, sl
	ldr r0, [r4, #0x10]
	ands r0, r1
	cmp r0, #0
	beq _080329C4
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r3, #0x32]
	ldr r1, _080329B0 @ =0x03000044
	adds r0, r2, r1
	strh r5, [r0]
	b _080329CE
	.align 2, 0
_080329B0: .4byte 0x03000044
_080329B4: .4byte 0xFFF00000
_080329B8: .4byte 0x00000295
_080329BC: .4byte 0x03000046
_080329C0: .4byte 0x03000042
_080329C4:
	ldr r4, _08032A34 @ =0x03000044
	adds r1, r2, r4
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
_080329CE:
	adds r1, r3, #0
	adds r1, #0x40
	movs r4, #0
	movs r0, #0x3c
	strh r0, [r1]
	ldr r1, _08032A38 @ =0xFFF00000
	adds r0, r6, r1
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #0xd
	adds r1, r7, r2
	asrs r1, r1, #0x10
	ldr r3, _08032A3C @ =0x00000295
	str r4, [sp]
	movs r2, #4
	bl sub_80168F0
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	adds r0, #0x46
	adds r1, r2, r0
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r1]
	ldr r1, _08032A40 @ =0x03000048
	adds r0, r2, r1
	strh r4, [r0]
	ldr r4, _08032A44 @ =0x03000042
	adds r1, r2, r4
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r3, #0x10]
	mov r4, sl
	ldr r0, [r4, #0x10]
	ands r0, r1
	cmp r0, #0
	beq _08032A4C
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r3, #0x32]
	ldr r0, _08032A34 @ =0x03000044
	adds r1, r2, r0
	ldr r0, _08032A48 @ =0x0000FF80
	b _08032A52
	.align 2, 0
_08032A34: .4byte 0x03000044
_08032A38: .4byte 0xFFF00000
_08032A3C: .4byte 0x00000295
_08032A40: .4byte 0x03000048
_08032A44: .4byte 0x03000042
_08032A48: .4byte 0x0000FF80
_08032A4C:
	ldr r4, _08032AD4 @ =0x03000044
	adds r1, r2, r4
	movs r0, #0x80
_08032A52:
	strh r0, [r1]
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #0x3c
	strh r0, [r1]
	ldr r1, _08032AD8 @ =gCamera
	ldrh r0, [r1]
	strh r0, [r1, #0x18]
	adds r0, #0xf0
	strh r0, [r1, #0x1a]
	ldrh r1, [r1, #0x16]
	adds r0, r1, #0
	subs r0, #0xa0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, #0xa0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_80174DC
	ldr r2, _08032ADC @ =gStageFlags
	ldrh r0, [r2]
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08032AE0 @ =gLevelScore
	ldr r6, [r1]
	movs r2, #0xfa
	lsls r2, r2, #2
	adds r0, r6, r2
	str r0, [r1]
	ldr r4, _08032AE4 @ =0x0000C350
	adds r1, r4, #0
	bl Div
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl Div
	cmp r5, r0
	beq _08032AB6
	ldr r0, _08032AE8 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _08032AB6
	ldr r1, _08032AEC @ =gNumLives
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08032AB6:
	bl sub_8032AF8
	ldr r0, _08032AF0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08032AF4 @ =sub_8032AF8
	str r0, [r1, #8]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032AD4: .4byte 0x03000044
_08032AD8: .4byte gCamera
_08032ADC: .4byte gStageFlags
_08032AE0: .4byte gLevelScore
_08032AE4: .4byte 0x0000C350
_08032AE8: .4byte gGameMode
_08032AEC: .4byte gNumLives
_08032AF0: .4byte gCurTask
_08032AF4: .4byte sub_8032AF8

	thumb_func_start sub_8032AF8
sub_8032AF8: @ 0x08032AF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r1, _08032B80 @ =gCurTask
	ldr r0, [r1]
	ldrh r6, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r3, r6, r2
	ldr r5, _08032B84 @ =0x0300000C
	adds r7, r6, r5
	ldr r0, _08032B88 @ =0x03000044
	adds r0, r6, r0
	str r0, [sp, #4]
	ldr r5, [r3]
	adds r2, #0x9e
	adds r1, r6, r2
	ldrh r0, [r1]
	adds r0, #5
	strh r0, [r1]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r4, [r3, #0x7c]
	adds r4, r4, r0
	str r4, [r3, #0x7c]
	ldrb r2, [r3, #8]
	lsls r2, r2, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r0, [r3, #0x78]
	asrs r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r5, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	asrs r4, r4, #8
	adds r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov sl, r2
	ldr r0, _08032B8C @ =sa2__sub_801EC3C
	str r0, [sp]
	mov r0, sb
	mov r1, sl
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F100
	cmp r0, #0
	bge _08032B98
	ldr r5, _08032B90 @ =0x03000098
	adds r1, r6, r5
	movs r0, #0x3c
	strh r0, [r1]
	ldr r0, _08032B80 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08032B94 @ =sub_8032D44
	str r0, [r1, #8]
	b _08032CE0
	.align 2, 0
_08032B80: .4byte gCurTask
_08032B84: .4byte 0x0300000C
_08032B88: .4byte 0x03000044
_08032B8C: .4byte sa2__sub_801EC3C
_08032B90: .4byte 0x03000098
_08032B94: .4byte sub_8032D44
_08032B98:
	ldr r0, [r7, #0x10]
	ldr r1, _08032CF0 @ =0xFFFFFE7F
	ands r0, r1
	str r0, [r7, #0x10]
	ldr r0, _08032CF4 @ =gPlayer
	ldr r3, [r0, #0x10]
	movs r0, #0x80
	ands r3, r0
	cmp r3, #0
	bne _08032BC0
	ldr r2, _08032CF8 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08032CFC @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08032D00 @ =gWinRegs
	strh r3, [r0, #0xa]
	ldr r0, _08032D04 @ =gBldRegs
	strh r3, [r0]
	strh r3, [r0, #4]
_08032BC0:
	ldr r2, _08032D08 @ =0x03000098
	adds r1, r6, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r4, #7
	ands r0, r4
	cmp r0, #0
	bne _08032CA0
	ldr r6, _08032D0C @ =gPseudoRandom
	ldr r0, [r6]
	ldr r5, _08032D10 @ =0x00196225
	muls r0, r5, r0
	ldr r1, _08032D14 @ =0x3C6EF35F
	mov r8, r1
	add r0, r8
	str r0, [r6]
	ands r4, r0
	ldr r0, _08032D18 @ =gUnknown_080BB434
	adds r0, r4, r0
	ldrb r0, [r0]
	bl VramMalloc
	adds r1, r0, #0
	movs r5, #0x80
	lsls r5, r5, #6
	ldr r2, _08032D1C @ =gUnknown_080BB41C
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, _08032D20 @ =gUnknown_080BB42C
	adds r4, r4, r0
	ldrb r3, [r4]
	ldr r0, _08032D24 @ =TaskDestructor_NutsAndBolts
	str r0, [sp]
	adds r0, r5, #0
	bl CreateNutsAndBoltsTask
	ldrh r1, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r3, r1, r2
	mov r2, sl
	lsls r0, r2, #8
	str r0, [r3, #0x30]
	mov r0, sb
	adds r0, #0x20
	lsls r0, r0, #8
	str r0, [r3, #0x34]
	str r5, [r3, #0x10]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r3, #0x1a]
	movs r0, #5
	strh r0, [r3, #0x3e]
	ldr r5, _08032D28 @ =0x03000040
	adds r1, r1, r5
	movs r0, #0x20
	strh r0, [r1]
	ldr r0, [r6]
	ldr r1, _08032D10 @ =0x00196225
	adds r4, r0, #0
	muls r4, r1, r4
	add r4, r8
	str r4, [r6]
	ldr r2, _08032D2C @ =gSineTable
	mov ip, r2
	ldr r1, _08032D30 @ =0x000001FF
	ands r1, r4
	lsls r0, r1, #1
	add r0, ip
	movs r5, #0
	ldrsh r2, [r0, r5]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #9
	rsbs r0, r0, #0
	asrs r0, r0, #0xe
	strh r0, [r3, #0x3a]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	add r1, ip
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #9
	rsbs r0, r0, #0
	asrs r0, r0, #0xe
	strh r0, [r3, #0x38]
	ldr r5, _08032D10 @ =0x00196225
	adds r1, r4, #0
	muls r1, r5, r1
	add r1, r8
	str r1, [r6]
	movs r0, #0x3f
	ands r0, r1
	add r0, sl
	subs r0, #0x20
	lsls r0, r0, #8
	movs r2, #0xfc
	lsls r2, r2, #0xe
	ands r1, r2
	asrs r1, r1, #0x10
	subs r1, #0x20
	mov r2, sb
	subs r1, r2, r1
	lsls r1, r1, #8
	bl sub_8017540
_08032CA0:
	ldr r1, _08032D34 @ =gCamera
	ldrh r0, [r1]
	mov r5, sl
	subs r0, r5, r0
	strh r0, [r7, #0x16]
	ldrh r0, [r1, #2]
	mov r1, sb
	subs r0, r1, r0
	strh r0, [r7, #0x18]
	ldr r2, _08032D38 @ =gCurTask
	ldr r0, [r2]
	ldrh r0, [r0, #6]
	ldr r5, _08032D3C @ =0x0300000C
	adds r2, r0, r5
	ldr r1, _08032D40 @ =0x03000044
	adds r0, r0, r1
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r0, [sp, #4]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, [sp, #4]
	bl DisplaySprite
_08032CE0:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032CF0: .4byte 0xFFFFFE7F
_08032CF4: .4byte gPlayer
_08032CF8: .4byte gDispCnt
_08032CFC: .4byte 0x00007FFF
_08032D00: .4byte gWinRegs
_08032D04: .4byte gBldRegs
_08032D08: .4byte 0x03000098
_08032D0C: .4byte gPseudoRandom
_08032D10: .4byte 0x00196225
_08032D14: .4byte 0x3C6EF35F
_08032D18: .4byte gUnknown_080BB434
_08032D1C: .4byte gUnknown_080BB41C
_08032D20: .4byte gUnknown_080BB42C
_08032D24: .4byte TaskDestructor_NutsAndBolts
_08032D28: .4byte 0x03000040
_08032D2C: .4byte gSineTable
_08032D30: .4byte 0x000001FF
_08032D34: .4byte gCamera
_08032D38: .4byte gCurTask
_08032D3C: .4byte 0x0300000C
_08032D40: .4byte 0x03000044

	thumb_func_start sub_8032D44
sub_8032D44: @ 0x08032D44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08032E94 @ =gCurTask
	ldr r0, [r0]
	mov ip, r0
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r7, r0
	ldr r1, _08032E98 @ =0x0300000C
	adds r5, r7, r1
	ldr r2, _08032E9C @ =0x03000044
	adds r2, r2, r7
	mov r8, r2
	ldr r3, [r4]
	adds r0, #0x98
	adds r1, r7, r0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _08032D7C
	b _08032EE0
_08032D7C:
	ldr r0, [r4, #0x74]
	ldrh r0, [r0, #6]
	ldr r1, _08032EA0 @ =0x03000058
	adds r0, r0, r1
	movs r1, #0xff
	strb r1, [r0]
	ldr r2, _08032EA4 @ =gPlayer
	ldr r0, [r2, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x10]
	ldr r1, _08032EA8 @ =gCamera
	movs r0, #0x94
	lsls r0, r0, #4
	strh r0, [r1, #0x16]
	ldr r1, _08032EAC @ =gMusicManagerState
	movs r0, #0x33
	strb r0, [r1, #1]
	ldrb r1, [r4, #8]
	lsls r1, r1, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0x78]
	asrs r0, r0, #8
	adds r1, r1, r0
	ldr r2, _08032EB0 @ =0x03000094
	adds r0, r7, r2
	strh r1, [r0]
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0x7c]
	asrs r0, r0, #8
	adds r1, r1, r0
	adds r2, #2
	adds r0, r7, r2
	strh r1, [r0]
	str r6, [r4, #0x78]
	str r6, [r4, #0x7c]
	ldr r1, _08032EB4 @ =0x03000080
	adds r0, r7, r1
	str r6, [r0]
	subs r2, #0x12
	adds r1, r7, r2
	movs r0, #0x80
	rsbs r0, r0, #0
	str r0, [r1]
	ldr r1, _08032EB8 @ =0x030000A9
	adds r0, r7, r1
	movs r2, #0
	strb r2, [r0]
	ldr r0, [r4, #0x10]
	bl VramFree
	ldr r0, [r4, #0x48]
	bl VramFree
	movs r0, #0x1e
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x98
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	strh r6, [r5, #8]
	ldr r0, _08032EBC @ =0x000002B5
	strh r0, [r5, #0xa]
	ldr r1, _08032EC0 @ =0x0300002C
	adds r0, r7, r1
	movs r2, #0
	strb r2, [r0]
	strh r6, [r5, #0x14]
	strh r6, [r5, #0x1c]
	ldr r0, _08032EC4 @ =0x0300002D
	adds r1, r7, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08032EC8 @ =0x0300002E
	adds r0, r7, r1
	movs r2, #0x10
	mov sl, r2
	mov r1, sl
	strb r1, [r0]
	ldr r2, _08032ECC @ =0x03000031
	adds r0, r7, r2
	movs r1, #0
	strb r1, [r0]
	movs r2, #1
	rsbs r2, r2, #0
	mov sb, r2
	str r2, [r5, #0x28]
	movs r4, #0x80
	lsls r4, r4, #6
	str r4, [r5, #0x10]
	movs r0, #0xc
	bl VramMalloc
	mov r1, r8
	str r0, [r1, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r1, #0x1a]
	strh r6, [r1, #8]
	ldr r0, _08032ED0 @ =0x000002B6
	strh r0, [r1, #0xa]
	ldr r2, _08032ED4 @ =0x03000064
	adds r1, r7, r2
	movs r0, #4
	strb r0, [r1]
	mov r0, r8
	strh r6, [r0, #0x14]
	strh r6, [r0, #0x1c]
	adds r2, #1
	adds r1, r7, r2
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08032ED8 @ =0x03000066
	adds r0, r7, r1
	mov r2, sl
	strb r2, [r0]
	adds r1, #3
	adds r0, r7, r1
	movs r2, #0
	strb r2, [r0]
	mov r0, sb
	mov r1, r8
	str r0, [r1, #0x28]
	str r4, [r1, #0x10]
	ldr r2, _08032E94 @ =gCurTask
	ldr r1, [r2]
	ldr r0, _08032EDC @ =sub_8032F58
	str r0, [r1, #8]
	b _08032F42
	.align 2, 0
_08032E94: .4byte gCurTask
_08032E98: .4byte 0x0300000C
_08032E9C: .4byte 0x03000044
_08032EA0: .4byte 0x03000058
_08032EA4: .4byte gPlayer
_08032EA8: .4byte gCamera
_08032EAC: .4byte gMusicManagerState
_08032EB0: .4byte 0x03000094
_08032EB4: .4byte 0x03000080
_08032EB8: .4byte 0x030000A9
_08032EBC: .4byte 0x000002B5
_08032EC0: .4byte 0x0300002C
_08032EC4: .4byte 0x0300002D
_08032EC8: .4byte 0x0300002E
_08032ECC: .4byte 0x03000031
_08032ED0: .4byte 0x000002B6
_08032ED4: .4byte 0x03000064
_08032ED8: .4byte 0x03000066
_08032EDC: .4byte sub_8032F58
_08032EE0:
	ldrb r2, [r4, #8]
	lsls r2, r2, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r0, [r4, #0x78]
	asrs r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0x7c]
	asrs r0, r0, #8
	adds r1, r1, r0
	ldr r3, _08032F50 @ =gCamera
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0x18]
	mov r1, ip
	ldrh r0, [r1, #6]
	ldr r1, _08032F54 @ =0x0300000C
	adds r2, r0, r1
	adds r1, #0x38
	adds r0, r0, r1
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	mov r0, r8
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	mov r0, r8
	bl DisplaySprite
_08032F42:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032F50: .4byte gCamera
_08032F54: .4byte 0x0300000C

	thumb_func_start sub_8032F58
sub_8032F58: @ 0x08032F58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08033024 @ =gCurTask
	mov sl, r0
	ldr r1, [r0]
	mov ip, r1
	ldrh r3, [r1, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	ldr r2, _08033028 @ =0x0300000C
	adds r5, r3, r2
	ldr r7, _0803302C @ =0x03000044
	adds r4, r3, r7
	adds r0, #0x80
	adds r1, r3, r0
	ldr r0, [r6, #0x78]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r6, #0x78]
	ldr r1, _08033030 @ =0x03000084
	adds r2, r3, r1
	ldr r1, [r6, #0x7c]
	ldr r2, [r2]
	adds r1, r1, r2
	str r1, [r6, #0x7c]
	adds r7, #0x50
	adds r2, r3, r7
	asrs r0, r0, #8
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r2, _08033034 @ =0x03000096
	adds r0, r3, r2
	asrs r1, r1, #8
	ldrh r0, [r0]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp]
	adds r7, #0x15
	adds r7, r7, r3
	mov sb, r7
	ldrb r0, [r7]
	cmp r0, #4
	bhi _08033010
	mov r0, ip
	ldrh r1, [r0, #6]
	subs r2, #0x8a
	adds r1, r1, r2
	ldr r3, _08033038 @ =gCamera
	ldrh r2, [r3]
	mov r7, r8
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	strh r0, [r1, #0x16]
	ldrh r2, [r3, #2]
	ldr r3, [sp]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	strh r0, [r1, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	mov r7, sl
	ldr r0, [r7]
	ldrh r0, [r0, #6]
	ldr r1, _08033028 @ =0x0300000C
	adds r2, r0, r1
	ldr r3, _0803302C @ =0x03000044
	adds r0, r0, r3
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r4, #0
	bl DisplaySprite
_08033010:
	mov r7, sb
	ldrb r0, [r7]
	cmp r0, #5
	bls _0803301A
	b _080332EA
_0803301A:
	lsls r0, r0, #2
	ldr r1, _0803303C @ =_08033040
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08033024: .4byte gCurTask
_08033028: .4byte 0x0300000C
_0803302C: .4byte 0x03000044
_08033030: .4byte 0x03000084
_08033034: .4byte 0x03000096
_08033038: .4byte gCamera
_0803303C: .4byte _08033040
_08033040: @ jump table
	.4byte _08033058 @ case 0
	.4byte _08033108 @ case 1
	.4byte _08033142 @ case 2
	.4byte _080331A0 @ case 3
	.4byte _080331F6 @ case 4
	.4byte _0803328C @ case 5
_08033058:
	ldr r0, _08033090 @ =gPlayer
	ldr r2, [r0, #0x10]
	movs r1, #0xa
	ands r1, r2
	adds r3, r0, #0
	cmp r1, #0
	bne _080330B2
	movs r7, #0x80
	lsls r7, r7, #0xe
	adds r0, r2, #0
	ands r0, r7
	cmp r0, #0
	bne _080330B0
	strh r1, [r3, #8]
	strh r1, [r3, #0xa]
	strh r1, [r3, #0xc]
	orrs r2, r7
	str r2, [r3, #0x10]
	strh r1, [r3, #0x38]
	mov r0, r8
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r3]
	asrs r0, r0, #8
	cmp r1, r0
	ble _08033094
	movs r0, #0x10
	b _08033096
	.align 2, 0
_08033090: .4byte gPlayer
_08033094:
	movs r0, #0x20
_08033096:
	strh r0, [r3, #0x38]
	ldr r1, _080330AC @ =gCamera
	movs r0, #0
	strh r0, [r1, #4]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r7, [r1]
	adds r0, r0, r7
	strh r0, [r1, #0x1a]
	b _080330B2
	.align 2, 0
_080330AC: .4byte gCamera
_080330B0:
	strh r1, [r3, #0x38]
_080330B2:
	ldr r0, [r6, #0x7c]
	ldr r2, _08033104 @ =0xFFFFA600
	adds r1, r6, #0
	adds r1, #0x84
	cmp r0, r2
	bge _080330C4
	str r2, [r6, #0x7c]
	movs r0, #0
	str r0, [r1]
_080330C4:
	ldr r0, [r1]
	cmp r0, #0
	beq _080330CC
	b _080332EA
_080330CC:
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	ands r0, r1
	cmp r0, #0
	bne _080330DA
	b _080332EA
_080330DA:
	mov r0, r8
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r3]
	asrs r0, r0, #8
	cmp r1, r0
	ble _08033172
	adds r1, r6, #0
	adds r1, #0xa9
	ldrb r0, [r1]
	adds r0, #2
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #7
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	b _080332EA
	.align 2, 0
_08033104: .4byte 0xFFFFA600
_08033108:
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _08033116
	b _080332EA
_08033116:
	adds r1, r6, #0
	adds r1, #0xa9
	ldrb r0, [r1]
	adds r0, #1
	movs r2, #0
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x20
	strb r2, [r0]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #7
	strb r0, [r1]
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x10]
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0803318C
_08033142:
	ldr r1, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	bne _08033150
	b _080332EA
_08033150:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r1, r0
	cmp r1, #0
	beq _08033172
	adds r1, r6, #0
	adds r1, #0xa9
	ldrb r0, [r1]
	adds r0, #2
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #6
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	b _080331E8
_08033172:
	adds r1, r6, #0
	adds r1, #0xa9
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #9
	strb r0, [r1]
_0803318C:
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	b _080332EA
_080331A0:
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080331AE
	b _080332EA
_080331AE:
	adds r2, r6, #0
	adds r2, #0xa9
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #6
	strb r0, [r1]
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x10]
	orrs r0, r1
	str r0, [r4, #0x10]
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #1
	rsbs r0, r0, #0
_080331E8:
	strb r0, [r1]
	adds r1, r6, #0
	adds r1, #0x80
	movs r0, #0xa0
	lsls r0, r0, #2
	str r0, [r1]
	b _080332EA
_080331F6:
	ldr r5, _08033278 @ =gPlayer
	ldr r0, [r5]
	asrs r0, r0, #8
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r7, r1, #0x10
	adds r1, r7, #0
	subs r1, #0x60
	cmp r0, r1
	bge _0803320E
	movs r0, #0x10
	strh r0, [r5, #0x38]
_0803320E:
	ldr r0, [r5]
	asrs r0, r0, #8
	bl __floatsisf
	adds r4, r0, #0
	ldr r3, _0803327C @ =gCamera
	mov r8, r3
	movs r1, #0
	ldrsh r0, [r3, r1]
	bl __floatsisf
	ldr r2, _08033280 @ =0x43B40000
	mov sb, r2
	mov r1, sb
	bl __addsf3
	adds r1, r0, #0
	adds r0, r4, #0
	bl __gtsf2
	cmp r0, #0
	ble _08033244
	movs r0, #0
	strh r0, [r5, #8]
	strh r0, [r5, #0xa]
	strh r0, [r5, #0xc]
	strh r0, [r5, #0x38]
_08033244:
	mov r3, r8
	movs r1, #0
	ldrsh r0, [r3, r1]
	subs r0, r7, r0
	bl __floatsisf
	mov r1, sb
	bl __gtsf2
	cmp r0, #0
	ble _080332EA
	adds r1, r6, #0
	adds r1, #0xa9
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	subs r1, #0x11
	movs r0, #0xb4
	strh r0, [r1]
	ldr r0, _08033284 @ =gRingCount
	ldrh r0, [r0]
	ldr r1, _08033288 @ =gCourseTime
	ldr r1, [r1]
	bl CreateStageResults
	b _080332EA
	.align 2, 0
_08033278: .4byte gPlayer
_0803327C: .4byte gCamera
_08033280: .4byte 0x43B40000
_08033284: .4byte gRingCount
_08033288: .4byte gCourseTime
_0803328C:
	ldr r5, _080332FC @ =gPlayer
	ldr r1, [r5]
	asrs r1, r1, #8
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, #0x60
	cmp r1, r0
	bge _080332A2
	movs r0, #0x10
	strh r0, [r5, #0x38]
_080332A2:
	ldr r0, [r5]
	asrs r0, r0, #8
	bl __floatsisf
	adds r4, r0, #0
	ldr r0, _08033300 @ =gCamera
	movs r3, #0
	ldrsh r0, [r0, r3]
	bl __floatsisf
	ldr r1, _08033304 @ =0x43B40000
	bl __addsf3
	adds r1, r0, #0
	adds r0, r4, #0
	bl __gtsf2
	cmp r0, #0
	ble _080332D2
	movs r0, #0
	strh r0, [r5, #8]
	strh r0, [r5, #0xa]
	strh r0, [r5, #0xc]
	strh r0, [r5, #0x38]
_080332D2:
	adds r1, r6, #0
	adds r1, #0x98
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080332EA
	ldr r0, _08033308 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080332EA:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080332FC: .4byte gPlayer
_08033300: .4byte gCamera
_08033304: .4byte 0x43B40000
_08033308: .4byte gCurTask

	thumb_func_start sub_803330C
sub_803330C: @ 0x0803330C
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #8
	movs r4, #0xc0
	lsls r4, r4, #0x12
	ldr r0, _080333E8 @ =sub_8033480
	movs r2, #0x88
	lsls r2, r2, #6
	ldr r1, _080333EC @ =sub_8034224
	str r1, [sp]
	movs r1, #0x74
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	adds r4, r6, r4
	ldr r0, _080333F0 @ =0x03000060
	adds r1, r6, r0
	movs r3, #0
	movs r5, #0
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r1, _080333F4 @ =0x03000062
	adds r0, r6, r1
	strh r5, [r0]
	strh r5, [r4, #0x16]
	strh r5, [r4, #0x18]
	movs r0, #6
	str r3, [sp, #4]
	bl VramMalloc
	str r0, [r4, #4]
	movs r2, #0xa8
	lsls r2, r2, #3
	mov sl, r2
	mov r0, sl
	strh r0, [r4, #0x1a]
	strh r5, [r4, #8]
	ldr r2, _080333F8 @ =0x00000297
	strh r2, [r4, #0xa]
	ldr r1, _080333FC @ =0x03000020
	adds r0, r6, r1
	ldr r3, [sp, #4]
	strb r3, [r0]
	strh r5, [r4, #0x14]
	strh r5, [r4, #0x1c]
	ldr r0, _08033400 @ =0x03000021
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08033404 @ =0x03000022
	adds r0, r6, r1
	movs r1, #0x10
	mov sb, r1
	mov r1, sb
	strb r1, [r0]
	ldr r1, _08033408 @ =0x03000025
	adds r0, r6, r1
	strb r3, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	str r0, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	ldr r4, _0803340C @ =0x03000030
	adds r1, r6, r4
	strh r5, [r1, #0x16]
	strh r5, [r1, #0x18]
	str r0, [r1, #4]
	mov r0, sl
	strh r0, [r1, #0x1a]
	strh r5, [r1, #8]
	strh r2, [r1, #0xa]
	ldr r2, _08033410 @ =0x03000050
	adds r0, r6, r2
	strb r3, [r0]
	strh r5, [r1, #0x14]
	strh r5, [r1, #0x1c]
	adds r4, #0x21
	adds r2, r6, r4
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r2]
	ldr r2, _08033414 @ =0x03000052
	adds r0, r6, r2
	mov r4, sb
	strb r4, [r0]
	ldr r0, _08033418 @ =0x03000055
	adds r6, r6, r0
	strb r3, [r6]
	mov r2, r8
	str r2, [r1, #0x28]
	movs r0, #0xc2
	lsls r0, r0, #0xc
	str r0, [r1, #0x10]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080333E8: .4byte sub_8033480
_080333EC: .4byte sub_8034224
_080333F0: .4byte 0x03000060
_080333F4: .4byte 0x03000062
_080333F8: .4byte 0x00000297
_080333FC: .4byte 0x03000020
_08033400: .4byte 0x03000021
_08033404: .4byte 0x03000022
_08033408: .4byte 0x03000025
_0803340C: .4byte 0x03000030
_08033410: .4byte 0x03000050
_08033414: .4byte 0x03000052
_08033418: .4byte 0x03000055

	thumb_func_start sub_803341C
sub_803341C: @ 0x0803341C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08033478 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	mov r8, r1
	movs r1, #0xc0
	lsls r1, r1, #0x12
	mov r2, r8
	adds r4, r2, r1
	ldrh r0, [r0]
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	adds r1, #0xc
	adds r7, r0, r1
	ldrh r5, [r7, #0x16]
	ldrh r6, [r7, #0x18]
	strh r5, [r4, #0x16]
	strh r6, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r7, _0803347C @ =0x03000030
	add r7, r8
	strh r5, [r7, #0x16]
	strh r6, [r7, #0x18]
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033478: .4byte gCurTask
_0803347C: .4byte 0x03000030

	thumb_func_start sub_8033480
sub_8033480: @ 0x08033480
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080334B4 @ =gCurTask
	ldr r2, [r0]
	ldrh r4, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r3, r4, r1
	ldrh r0, [r2]
	adds r0, r0, r1
	ldrh r5, [r0, #6]
	ldr r0, _080334B8 @ =0x03000030
	adds r6, r4, r0
	adds r1, #0x9a
	adds r1, r1, r5
	mov r8, r1
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #7
	ble _080334BC
	adds r0, r2, #0
	bl TaskDestroy
	b _080335B4
	.align 2, 0
_080334B4: .4byte gCurTask
_080334B8: .4byte 0x03000030
_080334BC:
	ldr r1, _08033538 @ =0x030000A8
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080335B4
	ldr r0, _0803353C @ =0x03000060
	adds r7, r4, r0
	ldrh r0, [r7]
	mov ip, r0
	cmp r0, #0
	beq _0803355E
	subs r0, #1
	strh r0, [r7]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080335B4
	ldr r0, [r3, #0x10]
	ldr r1, _08033540 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r0, [r6, #0x10]
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r1, _08033544 @ =0x0300002C
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #2
	beq _08033508
	cmp r0, #3
	bne _08033558
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r0, [r6, #0x10]
	orrs r0, r1
	str r0, [r6, #0x10]
_08033508:
	ldr r0, _08033548 @ =0x03000021
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0803354C @ =0x03000051
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _08033550 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r0, [r6, #0x10]
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r3, _08033554 @ =0x03000062
	adds r1, r4, r3
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	bl sub_80335C0
	b _080335B4
	.align 2, 0
_08033538: .4byte 0x030000A8
_0803353C: .4byte 0x03000060
_08033540: .4byte 0xFFFFF7FF
_08033544: .4byte 0x0300002C
_08033548: .4byte 0x03000021
_0803354C: .4byte 0x03000051
_08033550: .4byte 0xFFFFBFFF
_08033554: .4byte 0x03000062
_08033558:
	movs r0, #1
	strh r0, [r7]
	b _080335B4
_0803355E:
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0803357A
	ldr r1, _0803358C @ =0x0300002C
	adds r0, r5, r1
	ldrb r0, [r0]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080335B0
_0803357A:
	ldr r3, _08033590 @ =0x03000062
	adds r2, r4, r3
	ldrh r0, [r2]
	cmp r0, #3
	beq _08033594
	movs r0, #0x3c
	strh r0, [r7]
	b _080335B4
	.align 2, 0
_0803358C: .4byte 0x0300002C
_08033590: .4byte 0x03000062
_08033594:
	ldr r0, _080335AC @ =gUnknown_084ACEF6
	mov r3, r8
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r7]
	mov r0, ip
	strh r0, [r2]
	b _080335B4
	.align 2, 0
_080335AC: .4byte gUnknown_084ACEF6
_080335B0:
	bl sub_803341C
_080335B4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80335C0
sub_80335C0: @ 0x080335C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08033700 @ =gCurTask
	mov r8, r0
	movs r4, #0xc0
	lsls r4, r4, #0x12
	ldr r0, _08033704 @ =sub_8033730
	movs r2, #0x8c
	lsls r2, r2, #6
	ldr r1, _08033708 @ =sub_8034224
	str r1, [sp]
	movs r1, #0x74
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	adds r5, r6, r4
	mov r1, r8
	ldr r0, [r1]
	ldrh r0, [r0]
	adds r0, r0, r4
	ldrh r2, [r0, #6]
	adds r4, r2, r4
	ldr r3, [r4]
	ldrb r1, [r4, #8]
	lsls r1, r1, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r7, _0803370C @ =0x03000070
	adds r7, r7, r6
	mov sb, r7
	movs r0, #0
	mov sl, r0
	movs r7, #0
	mov r8, r7
	mov r0, sb
	strh r1, [r0]
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _08033710 @ =0x03000072
	adds r4, r6, r3
	strh r1, [r4]
	ldr r7, _08033714 @ =0x03000090
	adds r0, r2, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, #0x10
	lsls r0, r0, #8
	str r0, [r5, #0x64]
	adds r3, #0x20
	adds r2, r2, r3
	movs r7, #0
	ldrsh r2, [r2, r7]
	lsls r2, r2, #8
	str r2, [r5, #0x68]
	ldr r1, _08033718 @ =gPlayer
	ldr r3, [r1]
	asrs r3, r3, #8
	mov ip, r3
	asrs r0, r0, #8
	mov r3, sb
	ldrh r3, [r3]
	adds r0, r0, r3
	mov r7, ip
	subs r3, r7, r0
	ldr r1, [r1, #4]
	asrs r1, r1, #8
	asrs r2, r2, #8
	ldrh r4, [r4]
	adds r2, r2, r4
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	lsrs r1, r1, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	lsls r3, r3, #0x10
	asrs r1, r3, #0x10
	lsrs r3, r3, #0x1f
	adds r1, r1, r3
	asrs r1, r1, #1
	bl sa2__sub_8004418
	ldr r3, _0803371C @ =gSineTable
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r0, r2
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r4, _08033720 @ =0x0300006C
	adds r2, r6, r4
	strh r1, [r2]
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r7, _08033724 @ =0x0300006E
	adds r1, r6, r7
	strh r0, [r1]
	mov r0, r8
	strh r0, [r5, #0x16]
	strh r0, [r5, #0x18]
	movs r0, #4
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x1a]
	mov r1, r8
	strh r1, [r5, #8]
	movs r0, #0xa6
	lsls r0, r0, #2
	strh r0, [r5, #0xa]
	ldr r2, _08033728 @ =0x03000020
	adds r0, r6, r2
	mov r3, sl
	strb r3, [r0]
	strh r1, [r5, #0x14]
	strh r1, [r5, #0x1c]
	subs r4, #0x4b
	adds r1, r6, r4
	movs r0, #0xff
	strb r0, [r1]
	subs r7, #0x4c
	adds r1, r6, r7
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _0803372C @ =0x03000025
	adds r6, r6, r0
	strb r3, [r6]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033700: .4byte gCurTask
_08033704: .4byte sub_8033730
_08033708: .4byte sub_8034224
_0803370C: .4byte 0x03000070
_08033710: .4byte 0x03000072
_08033714: .4byte 0x03000090
_08033718: .4byte gPlayer
_0803371C: .4byte gSineTable
_08033720: .4byte 0x0300006C
_08033724: .4byte 0x0300006E
_08033728: .4byte 0x03000020
_0803372C: .4byte 0x03000025

	thumb_func_start sub_8033730
sub_8033730: @ 0x08033730
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080337C0 @ =gCurTask
	ldr r5, [r0]
	ldrh r3, [r5, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	ldrh r0, [r5]
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	adds r6, r0, r1
	adds r4, r3, #0
	orrs r4, r1
	ldr r0, _080337C4 @ =0x0300006C
	adds r0, r0, r3
	mov r8, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, [r4, #0x64]
	adds r1, r1, r0
	str r1, [r4, #0x64]
	ldr r2, _080337C8 @ =0x0300006E
	adds r0, r3, r2
	movs r7, #0
	ldrsh r2, [r0, r7]
	ldr r0, [r4, #0x68]
	adds r0, r0, r2
	str r0, [r4, #0x68]
	ldr r7, _080337CC @ =0x03000070
	adds r2, r3, r7
	asrs r1, r1, #8
	ldrh r2, [r2]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	ldr r2, _080337D0 @ =0x03000072
	adds r3, r3, r2
	asrs r0, r0, #8
	ldrh r3, [r3]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	ldr r3, _080337D4 @ =gCamera
	ldrh r2, [r3]
	lsrs r7, r1, #0x10
	mov ip, r7
	asrs r1, r1, #0x10
	subs r2, r1, r2
	strh r2, [r4, #0x16]
	ldrh r1, [r3, #2]
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	adds r0, #0x20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xd0
	bls _080337EC
	mov r1, r8
	movs r7, #0
	ldrsh r0, [r1, r7]
	cmp r0, #0
	blt _080337D8
	lsls r1, r2, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _080337EC
	b _080337E4
	.align 2, 0
_080337C0: .4byte gCurTask
_080337C4: .4byte 0x0300006C
_080337C8: .4byte 0x0300006E
_080337CC: .4byte 0x03000070
_080337D0: .4byte 0x03000072
_080337D4: .4byte gCamera
_080337D8:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x20
	rsbs r1, r1, #0
	cmp r0, r1
	bge _080337EC
_080337E4:
	adds r0, r5, #0
	bl TaskDestroy
	b _0803386C
_080337EC:
	adds r0, r6, #0
	adds r0, #0x9a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	bgt _08033844
	mov r0, ip
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	bl Coll_Player_Projectile
	cmp r0, #0
	beq _08033860
	ldrh r3, [r6, #0x16]
	ldr r0, _08033840 @ =0x00000296
	cmp r3, r0
	bne _08033860
	adds r2, r6, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	cmp r0, #2
	bne _08033828
	adds r1, r6, #0
	adds r1, #0x64
	movs r0, #1
	strb r0, [r1]
_08033828:
	ldrh r0, [r6, #0x16]
	cmp r0, r3
	bne _08033860
	ldrb r0, [r2]
	cmp r0, #3
	bne _08033860
	adds r1, r6, #0
	adds r1, #0x64
	movs r0, #4
	strb r0, [r1]
	b _08033860
	.align 2, 0
_08033840: .4byte 0x00000296
_08033844:
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r0, r0, #8
	lsls r1, r3, #0x10
	asrs r1, r1, #8
	bl sub_8017540
	ldr r0, _0803385C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0803386C
	.align 2, 0
_0803385C: .4byte gCurTask
_08033860:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0803386C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8033878
sub_8033878: @ 0x08033878
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	ldr r0, _08033904 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r5, r5, r4
	ldr r0, _08033908 @ =sub_8033924
	movs r1, #0x80
	lsls r1, r1, #6
	mov sb, r1
	ldr r1, _0803390C @ =sub_8034238
	str r1, [sp]
	movs r1, #0x60
	mov r2, sb
	movs r3, #0
	bl TaskCreate
	str r0, [r5, #0x74]
	ldrh r5, [r0, #6]
	adds r4, r5, r4
	movs r0, #0
	mov r8, r0
	movs r6, #0
	strh r6, [r4, #0x16]
	strh r6, [r4, #0x18]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0xb8
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	strh r6, [r4, #8]
	ldr r0, _08033910 @ =0x00000293
	strh r0, [r4, #0xa]
	ldr r1, _08033914 @ =0x03000020
	adds r0, r5, r1
	mov r1, r8
	strb r1, [r0]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	ldr r0, _08033918 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0803391C @ =0x03000022
	adds r1, r5, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08033920 @ =0x03000025
	adds r5, r5, r1
	mov r0, r8
	strb r0, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	mov r1, sb
	str r1, [r4, #0x10]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08033904: .4byte gCurTask
_08033908: .4byte sub_8033924
_0803390C: .4byte sub_8034238
_08033910: .4byte 0x00000293
_08033914: .4byte 0x03000020
_08033918: .4byte 0x03000021
_0803391C: .4byte 0x03000022
_08033920: .4byte 0x03000025

	thumb_func_start sub_8033924
sub_8033924: @ 0x08033924
	push {r4, r5, lr}
	sub sp, #4
	ldr r5, _08033998 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r0, r4
	ldr r2, _0803399C @ =0x03000054
	adds r1, r0, r2
	movs r3, #0
	strb r3, [r1]
	adds r2, #3
	adds r1, r0, r2
	strb r3, [r1]
	subs r2, #2
	adds r1, r0, r2
	strb r3, [r1]
	adds r2, #1
	adds r1, r0, r2
	strb r3, [r1]
	ldr r1, _080339A0 @ =0x03000058
	adds r0, r0, r1
	strb r3, [r0]
	ldr r2, _080339A4 @ =gUnknown_03005860
	ldr r1, _080339A8 @ =gPlayer
	ldr r0, [r1]
	str r0, [r2]
	ldr r0, [r1, #4]
	str r0, [r2, #4]
	ldrh r0, [r1, #8]
	strh r0, [r2, #8]
	ldrh r0, [r1, #0xa]
	strh r0, [r2, #0xa]
	ldr r0, [r1, #0x10]
	str r0, [r2, #0xc]
	mov r0, sp
	strh r3, [r0]
	ldr r1, _080339AC @ =0x040000D4
	str r0, [r1]
	ldr r0, _080339B0 @ =gUnknown_03005870
	str r0, [r1, #4]
	ldr r0, _080339B4 @ =0x81000009
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r1, [r5]
	ldr r0, _080339B8 @ =sub_8033AA0
	str r0, [r1, #8]
	adds r0, r4, #0
	bl sub_80339BC
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08033998: .4byte gCurTask
_0803399C: .4byte 0x03000054
_080339A0: .4byte 0x03000058
_080339A4: .4byte gUnknown_03005860
_080339A8: .4byte gPlayer
_080339AC: .4byte 0x040000D4
_080339B0: .4byte gUnknown_03005870
_080339B4: .4byte 0x81000009
_080339B8: .4byte sub_8033AA0

	thumb_func_start sub_80339BC
sub_80339BC: @ 0x080339BC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov r8, r0
	ldr r0, _08033A84 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	adds r5, r0, r1
	ldr r0, [r5]
	mov sb, r0
	mov r4, r8
	movs r6, #0
	movs r7, #0
_080339E2:
	ldr r1, _08033A88 @ =0x00002001
	adds r2, r6, r1
	str r7, [sp]
	ldr r0, _08033A8C @ =sub_8034098
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	lsls r2, r6, #2
	mov r1, r8
	adds r1, #0x30
	adds r1, r1, r2
	str r0, [r1]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r3, r0
	ldrb r1, [r5, #8]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #0x30]
	mov r0, sb
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #0x32]
	lsls r0, r6, #0xd
	ldr r1, _08033A90 @ =0xFFFF9000
	adds r0, r0, r1
	str r0, [r2, #0x38]
	str r7, [r2, #0x3c]
	str r7, [r2, #0x40]
	str r7, [r2, #0x44]
	ldr r1, _08033A94 @ =0x03000048
	adds r0, r3, r1
	strh r7, [r0]
	adds r1, #0xa
	adds r0, r3, r1
	strb r6, [r0]
	ldr r0, [r4, #0x28]
	str r0, [r2, #0x28]
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r1, [r0]
	ldr r2, _08033A98 @ =0x0300002C
	adds r0, r3, r2
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x2d
	ldrb r1, [r0]
	adds r2, #1
	adds r0, r3, r2
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r1, [r0]
	adds r2, #1
	adds r0, r3, r2
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	ldr r1, _08033A9C @ =0x0300002F
	adds r3, r3, r1
	strb r0, [r3]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #8
	bls _080339E2
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033A84: .4byte gCurTask
_08033A88: .4byte 0x00002001
_08033A8C: .4byte sub_8034098
_08033A90: .4byte 0xFFFF9000
_08033A94: .4byte 0x03000048
_08033A98: .4byte 0x0300002C
_08033A9C: .4byte 0x0300002F

	thumb_func_start sub_8033AA0
sub_8033AA0: @ 0x08033AA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r0, #0
	mov sb, r0
	ldr r0, _08033B48 @ =gCurTask
	ldr r3, [r0]
	ldrh r2, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r2
	mov sl, r0
	movs r1, #0
	str r1, [sp]
	ldr r1, _08033B4C @ =0x040000D4
	ldr r0, _08033B50 @ =gUnknown_03005870
	str r0, [r1]
	ldr r0, _08033B54 @ =gUnknown_03005890
	str r0, [r1, #4]
	ldr r0, _08033B58 @ =0x80000009
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r4, _08033B5C @ =0x0300005E
	adds r1, r2, r4
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldr r5, _08033B60 @ =0x03000058
	adds r0, r2, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne _08033B7C
	movs r5, #0
	ldr r7, _08033B64 @ =0x03000030
	adds r6, r2, r7
	ldr r0, _08033B68 @ =0x03000054
	adds r0, r0, r2
	mov r8, r0
	ldr r7, _08033B6C @ =gCamera
_08033AF4:
	lsls r0, r5, #2
	adds r0, r6, r0
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r1, [r4, #0x38]
	asrs r1, r1, #8
	ldrh r2, [r4, #0x30]
	adds r1, r1, r2
	ldr r3, [r4, #0x3c]
	asrs r3, r3, #8
	ldrh r0, [r4, #0x32]
	adds r3, r3, r0
	ldr r2, _08033B50 @ =gUnknown_03005870
	lsls r0, r5, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r2, r2, r3
	ldrh r0, [r7]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r1, r0
	strh r0, [r4, #0x16]
	ldrh r0, [r7, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	ldr r3, _08033B70 @ =gPlayer
	bl Coll_Player_PlatformCrumbling
	cmp r0, #0
	bne _08033B74
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #8
	bls _08033AF4
	b _08033B94
	.align 2, 0
_08033B48: .4byte gCurTask
_08033B4C: .4byte 0x040000D4
_08033B50: .4byte gUnknown_03005870
_08033B54: .4byte gUnknown_03005890
_08033B58: .4byte 0x80000009
_08033B5C: .4byte 0x0300005E
_08033B60: .4byte 0x03000058
_08033B64: .4byte 0x03000030
_08033B68: .4byte 0x03000054
_08033B6C: .4byte gCamera
_08033B70: .4byte gPlayer
_08033B74:
	movs r1, #0xff
	str r1, [sp]
	mov sb, r5
	b _08033B94
_08033B7C:
	ldr r0, _08033BB4 @ =gPlayer
	ldr r0, [r0, #0x10]
	movs r1, #0xa
	ands r0, r1
	ldr r4, _08033BB8 @ =0x03000054
	adds r4, r4, r2
	mov r8, r4
	cmp r0, #0
	bne _08033B94
	adds r0, r3, #0
	bl TaskDestroy
_08033B94:
	ldr r5, [sp]
	cmp r5, #0
	bne _08033B9C
	b _08033E30
_08033B9C:
	mov r0, sl
	adds r0, #0x56
	mov r6, sb
	strb r6, [r0]
	mov r7, sb
	cmp r7, #0
	beq _08033BAE
	cmp r7, #8
	bne _08033BBC
_08033BAE:
	movs r6, #8
	b _08033BBE
	.align 2, 0
_08033BB4: .4byte gPlayer
_08033BB8: .4byte 0x03000054
_08033BBC:
	movs r6, #0x10
_08033BBE:
	ldr r1, _08033C38 @ =gUnknown_03005860
	ldr r0, [r1, #0xc]
	movs r2, #2
	ands r0, r2
	cmp r0, #0
	beq _08033C58
	adds r0, r1, #0
	movs r3, #0xa
	ldrsh r1, [r0, r3]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	ble _08033C58
	mov r4, r8
	strb r2, [r4]
	mov r0, sl
	adds r0, #0x55
	mov r5, sb
	strb r5, [r0]
	mov r1, sl
	adds r1, #0x57
	movs r0, #0xff
	strb r0, [r1]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	beq _08033BF8
	lsls r0, r0, #0x11
	lsrs r6, r0, #0x10
_08033BF8:
	mov r0, sl
	adds r0, #0x5a
	strh r6, [r0]
	movs r5, #0
	ldr r7, _08033C3C @ =gUnknown_03005890
	mov r8, r7
	mov r0, sb
	lsls r0, r0, #1
	str r0, [sp, #4]
	ldr r3, _08033C40 @ =gUnknown_03005870
	lsls r0, r6, #0x10
	asrs r4, r0, #0x10
_08033C10:
	cmp r5, sb
	bne _08033C44
	ldr r2, _08033C38 @ =gUnknown_03005860
	ldrh r1, [r2, #0xa]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	mov r0, sl
	adds r0, #0x5c
	strh r1, [r0]
	lsls r0, r5, #1
	adds r2, r0, r3
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r4
	ble _08033C4C
	strh r6, [r2]
	b _08033C4C
	.align 2, 0
_08033C38: .4byte gUnknown_03005860
_08033C3C: .4byte gUnknown_03005890
_08033C40: .4byte gUnknown_03005870
_08033C44:
	lsls r0, r5, #1
	adds r0, r0, r3
	movs r1, #0
	strh r1, [r0]
_08033C4C:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #8
	bls _08033C10
	b _08033DFC
_08033C58:
	mov r3, r8
	ldrb r0, [r3]
	cmp r0, #2
	bne _08033D2C
	ldr r2, _08033D24 @ =gUnknown_03005870
	mov r4, sb
	lsls r3, r4, #1
	adds r6, r3, r2
	mov r5, sl
	adds r5, #0x5c
	ldrh r0, [r5]
	ldrh r7, [r6]
	adds r0, r0, r7
	strh r0, [r6]
	mov r4, sl
	adds r4, #0x5a
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r4]
	mov ip, r1
	movs r7, #0
	ldrsh r1, [r4, r7]
	str r3, [sp, #4]
	cmp r0, r1
	blt _08033C9E
	mov r0, ip
	strh r0, [r6]
	ldrh r0, [r5]
	movs r1, #1
	subs r1, r1, r0
	strh r1, [r5]
	mov r1, sl
	adds r1, #0x57
	movs r0, #0
	strb r0, [r1]
_08033C9E:
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	lsrs r2, r1, #0x1f
	adds r1, r1, r2
	asrs r1, r1, #1
	cmn r0, r1
	bgt _08033CBA
	rsbs r0, r1, #0
	strh r0, [r6]
	movs r0, #1
	mov r3, r8
	strb r0, [r3]
_08033CBA:
	movs r5, #0
	ldr r4, _08033D28 @ =gUnknown_03005890
	mov r8, r4
	ldr r7, _08033D24 @ =gUnknown_03005870
	adds r4, r6, #0
_08033CC4:
	cmp r5, sb
	beq _08033CFA
	mov r6, sb
	subs r0, r6, r5
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _08033CDC
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_08033CDC:
	lsls r0, r1, #0x18
	asrs r1, r0, #0x18
	cmp r1, #2
	bgt _08033CFA
	movs r2, #0
	ldrsh r0, [r4, r2]
	muls r0, r1, r0
	movs r1, #3
	bl __divsi3
	ldrh r1, [r4]
	subs r1, r1, r0
	lsls r0, r5, #1
	adds r0, r0, r7
	strh r1, [r0]
_08033CFA:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #8
	bls _08033CC4
	ldr r3, _08033D24 @ =gUnknown_03005870
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r0, #8
	ble _08033D12
	movs r0, #8
	strh r0, [r3]
_08033D12:
	ldr r5, _08033D24 @ =gUnknown_03005870
	movs r6, #0x10
	ldrsh r0, [r5, r6]
	cmp r0, #8
	ble _08033DFC
	movs r0, #8
	strh r0, [r5, #0x10]
	b _08033DFC
	.align 2, 0
_08033D24: .4byte gUnknown_03005870
_08033D28: .4byte gUnknown_03005890
_08033D2C:
	movs r0, #1
	mov r7, r8
	strb r0, [r7]
	ldr r1, _08033D4C @ =gUnknown_03005870
	mov r0, sb
	lsls r2, r0, #1
	adds r4, r2, r1
	ldrh r3, [r4]
	movs r5, #0
	ldrsh r0, [r4, r5]
	str r2, [sp, #4]
	cmp r0, #0
	bge _08033D50
	adds r0, r3, #2
	b _08033D52
	.align 2, 0
_08033D4C: .4byte gUnknown_03005870
_08033D50:
	adds r0, r3, #1
_08033D52:
	strh r0, [r4]
	ldr r7, [sp, #4]
	ldr r0, _08033E24 @ =gUnknown_03005870
	adds r2, r7, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _08033D68
	strh r6, [r2]
_08033D68:
	movs r5, #0
	ldr r4, _08033E28 @ =gUnknown_03005890
	mov r8, r4
	ldr r6, _08033E24 @ =gUnknown_03005870
	adds r4, r2, #0
_08033D72:
	cmp r5, sb
	beq _08033DD6
	mov r7, sb
	subs r1, r7, r5
	lsls r1, r1, #0x18
	lsls r0, r7, #0x18
	lsrs r2, r0, #0x18
	lsrs r3, r1, #0x18
	asrs r0, r1, #0x18
	cmp r0, #0
	bge _08033D96
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r0, #8
	subs r0, r0, r7
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_08033D96:
	lsls r1, r2, #0x18
	movs r0, #0
	ldrsh r2, [r4, r0]
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	muls r0, r2, r0
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r1, r1, r2
	asrs r1, r1, #0x18
	bl __divsi3
	ldrh r1, [r4]
	subs r1, r1, r0
	lsls r0, r5, #1
	adds r2, r0, r6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r3, [r2]
	movs r7, #0
	ldrsh r0, [r2, r7]
	cmp r1, r0
	ble _08033DC8
	adds r0, r3, #1
	strh r0, [r2]
_08033DC8:
	ldrh r3, [r2]
	movs r7, #0
	ldrsh r0, [r2, r7]
	cmp r1, r0
	bge _08033DD6
	subs r0, r3, #1
	strh r0, [r2]
_08033DD6:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #8
	bls _08033D72
	ldr r1, _08033E24 @ =gUnknown_03005870
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #8
	ble _08033DEE
	movs r0, #8
	strh r0, [r1]
_08033DEE:
	ldr r3, _08033E24 @ =gUnknown_03005870
	movs r4, #0x10
	ldrsh r0, [r3, r4]
	cmp r0, #8
	ble _08033DFC
	movs r0, #8
	strh r0, [r3, #0x10]
_08033DFC:
	ldr r5, _08033E2C @ =gPlayer
	ldr r2, [r5, #4]
	movs r6, #0x80
	lsls r6, r6, #1
	adds r2, r2, r6
	ldr r7, [sp, #4]
	ldr r1, _08033E24 @ =gUnknown_03005870
	adds r0, r7, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r1, r7, #0
	add r1, r8
	movs r4, #0
	ldrsh r1, [r1, r4]
	subs r0, r0, r1
	lsls r0, r0, #8
	adds r2, r2, r0
	str r2, [r5, #4]
	b _08033FFA
	.align 2, 0
_08033E24: .4byte gUnknown_03005870
_08033E28: .4byte gUnknown_03005890
_08033E2C: .4byte gPlayer
_08033E30:
	mov r5, r8
	ldrb r0, [r5]
	cmp r0, #2
	bne _08033F1C
	ldr r2, _08033F18 @ =gUnknown_03005870
	mov r7, sl
	adds r7, #0x55
	ldrb r1, [r7]
	lsls r1, r1, #1
	adds r1, r1, r2
	mov r5, sl
	adds r5, #0x5c
	ldrh r0, [r5]
	ldrh r6, [r1]
	adds r0, r0, r6
	movs r3, #0
	mov sb, r3
	strh r0, [r1]
	ldrb r0, [r7]
	lsls r0, r0, #1
	adds r4, r0, r2
	mov r3, sl
	adds r3, #0x5a
	movs r6, #0
	ldrsh r1, [r4, r6]
	ldrh r0, [r3]
	mov ip, r0
	movs r6, #0
	ldrsh r0, [r3, r6]
	adds r2, r7, #0
	cmp r1, r0
	blt _08033E84
	mov r0, ip
	strh r0, [r4]
	ldrh r1, [r5]
	movs r0, #1
	subs r0, r0, r1
	strh r0, [r5]
	mov r0, sl
	adds r0, #0x57
	mov r1, sb
	strb r1, [r0]
_08033E84:
	ldrb r0, [r2]
	lsls r0, r0, #1
	ldr r2, _08033F18 @ =gUnknown_03005870
	adds r4, r0, r2
	movs r6, #0
	ldrsh r2, [r4, r6]
	movs r1, #0
	ldrsh r0, [r3, r1]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	cmn r2, r0
	bgt _08033EAE
	rsbs r0, r0, #0
	strh r0, [r4]
	mov r2, sp
	ldrh r2, [r2]
	strh r2, [r5]
	mov r4, sb
	mov r3, r8
	strb r4, [r3]
_08033EAE:
	movs r5, #0
	adds r6, r7, #0
	ldr r7, _08033F18 @ =gUnknown_03005870
_08033EB4:
	ldrb r0, [r6]
	cmp r5, r0
	beq _08033EF0
	subs r0, r0, r5
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _08033ECC
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_08033ECC:
	lsls r0, r1, #0x18
	asrs r1, r0, #0x18
	cmp r1, #2
	bgt _08033EF0
	ldrb r4, [r6]
	lsls r4, r4, #1
	adds r4, r4, r7
	movs r2, #0
	ldrsh r0, [r4, r2]
	muls r0, r1, r0
	movs r1, #3
	bl __divsi3
	ldrh r1, [r4]
	subs r1, r1, r0
	lsls r0, r5, #1
	adds r0, r0, r7
	strh r1, [r0]
_08033EF0:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #8
	bls _08033EB4
	ldr r3, _08033F18 @ =gUnknown_03005870
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r0, #8
	ble _08033F08
	movs r0, #8
	strh r0, [r3]
_08033F08:
	ldr r5, _08033F18 @ =gUnknown_03005870
	movs r6, #0x10
	ldrsh r0, [r5, r6]
	cmp r0, #8
	ble _08033FFA
	movs r0, #8
	strh r0, [r5, #0x10]
	b _08033FFA
	.align 2, 0
_08033F18: .4byte gUnknown_03005870
_08033F1C:
	mov r7, sp
	ldrb r0, [r7]
	mov r7, r8
	strb r0, [r7]
	ldr r1, _08034084 @ =gUnknown_03005870
	mov r2, sl
	adds r2, #0x56
	ldrb r0, [r2]
	lsls r0, r0, #1
	adds r3, r0, r1
	ldrh r4, [r3]
	movs r5, #0
	ldrsh r0, [r3, r5]
	adds r7, r2, #0
	cmp r0, #0
	ble _08033F40
	subs r0, r4, #1
	strh r0, [r3]
_08033F40:
	ldrb r0, [r7]
	lsls r0, r0, #1
	ldr r6, _08034084 @ =gUnknown_03005870
	adds r1, r0, r6
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _08033F6A
	adds r0, r2, #2
	strh r0, [r1]
	ldrb r0, [r7]
	lsls r0, r0, #1
	adds r1, r0, r6
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	ble _08033F6A
	mov r5, sp
	ldrh r5, [r5]
	strh r5, [r1]
_08033F6A:
	movs r5, #0
_08033F6C:
	ldrb r0, [r7]
	cmp r5, r0
	beq _08033FF0
	subs r0, r0, r5
	lsls r0, r0, #0x18
	ldrb r1, [r7]
	adds r4, r1, #0
	lsrs r3, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _08033F90
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r0, #8
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_08033F90:
	lsls r1, r1, #0x18
	ldr r6, _08034084 @ =gUnknown_03005870
	lsls r4, r4, #1
	adds r4, r4, r6
	movs r0, #0
	ldrsh r2, [r4, r0]
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	muls r0, r2, r0
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r1, r1, r2
	asrs r1, r1, #0x18
	bl __divsi3
	ldrh r1, [r4]
	subs r1, r1, r0
	lsls r0, r5, #1
	adds r2, r0, r6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r3, [r2]
	movs r4, #0
	ldrsh r0, [r2, r4]
	cmp r1, r0
	ble _08033FC8
	adds r0, r3, #1
	strh r0, [r2]
_08033FC8:
	ldrh r3, [r2]
	movs r4, #0
	ldrsh r0, [r2, r4]
	cmp r1, r0
	bge _08033FD6
	subs r0, r3, #1
	strh r0, [r2]
_08033FD6:
	movs r1, #0
	ldrsh r0, [r6, r1]
	cmp r0, #8
	ble _08033FE2
	movs r0, #8
	strh r0, [r6]
_08033FE2:
	ldr r2, _08034084 @ =gUnknown_03005870
	movs r3, #0x10
	ldrsh r0, [r2, r3]
	cmp r0, #8
	ble _08033FF0
	movs r0, #8
	strh r0, [r2, #0x10]
_08033FF0:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #8
	bls _08033F6C
_08033FFA:
	ldr r4, _08034088 @ =gPlayer
	ldr r0, [r4]
	ldr r5, _0803408C @ =gUnknown_03005860
	str r0, [r5]
	ldr r0, [r4, #4]
	str r0, [r5, #4]
	ldrh r0, [r4, #8]
	strh r0, [r5, #8]
	ldrh r0, [r4, #0xa]
	strh r0, [r5, #0xa]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0xc]
	ldr r6, _08034090 @ =gNumSingleplayerCharacters
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #2
	bne _08034072
	mov r0, sl
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0
	bne _08034072
	movs r5, #0
	mov r6, sl
	adds r6, #0x30
_0803402C:
	lsls r0, r5, #2
	adds r0, r6, r0
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r7, #0xc0
	lsls r7, r7, #0x12
	adds r4, r0, r7
	ldr r1, [r4, #0x38]
	asrs r1, r1, #8
	ldrh r0, [r4, #0x30]
	adds r1, r1, r0
	ldr r3, [r4, #0x3c]
	asrs r3, r3, #8
	ldrh r2, [r4, #0x32]
	adds r3, r3, r2
	ldr r2, _08034084 @ =gUnknown_03005870
	lsls r0, r5, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r2, r2, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	ldr r3, _08034094 @ =gPartner
	bl Coll_Player_PlatformCrumbling
	cmp r0, #0
	bne _08034072
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #8
	bls _0803402C
_08034072:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034084: .4byte gUnknown_03005870
_08034088: .4byte gPlayer
_0803408C: .4byte gUnknown_03005860
_08034090: .4byte gNumSingleplayerCharacters
_08034094: .4byte gPartner

	thumb_func_start sub_8034098
sub_8034098: @ 0x08034098
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08034108 @ =gCurTask
	ldr r5, [r0]
	ldrh r3, [r5, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r2, r3, r1
	ldrh r0, [r5]
	adds r0, r0, r1
	ldrh r4, [r0, #6]
	adds r6, r4, r1
	ldr r0, [r6, #0xc]
	str r0, [sp]
	ldr r0, [r2, #0x38]
	asrs r0, r0, #8
	ldrh r1, [r2, #0x30]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r1, [r2, #0x3c]
	asrs r1, r1, #8
	ldrh r2, [r2, #0x32]
	adds r1, r1, r2
	ldr r2, _0803410C @ =gUnknown_03005870
	ldr r0, _08034110 @ =0x03000052
	adds r3, r3, r0
	ldrb r3, [r3]
	mov r8, r3
	lsls r0, r3, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	ldr r1, _08034114 @ =gCamera
	mov sb, r1
	movs r2, #2
	ldrsh r0, [r1, r2]
	subs r0, r7, r0
	bl __floatsisf
	ldr r1, _08034118 @ =0xC3700000
	bl __ltsf2
	cmp r0, #0
	bge _0803411C
	adds r0, r5, #0
	bl TaskDestroy
	b _080341E2
	.align 2, 0
_08034108: .4byte gCurTask
_0803410C: .4byte gUnknown_03005870
_08034110: .4byte 0x03000052
_08034114: .4byte gCamera
_08034118: .4byte 0xC3700000
_0803411C:
	ldr r3, _08034168 @ =0x03000058
	adds r0, r4, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08034134
	ldr r5, _0803416C @ =0x0300005E
	adds r0, r4, r5
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080341E2
_08034134:
	ldr r0, _08034170 @ =0x03000023
	adds r2, r4, r0
	mov r1, r8
	cmp r1, #0
	beq _08034146
	adds r1, r2, #0
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _08034174
_08034146:
	movs r0, #0xff
	strb r0, [r2]
	mov r2, sb
	ldrh r1, [r2]
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r6, #0x16]
	ldrh r0, [r2, #2]
	subs r0, r7, r0
	strh r0, [r6, #0x18]
	adds r0, r6, #0
	bl DisplaySprite
	b _080341E2
	.align 2, 0
_08034168: .4byte 0x03000058
_0803416C: .4byte 0x0300005E
_08034170: .4byte 0x03000023
_08034174:
	ldrb r0, [r1]
	lsls r0, r0, #3
	ldr r1, _080341F4 @ =gOamBuffer2
	adds r5, r0, r1
	ldrh r1, [r6, #0x1a]
	movs r0, #0xf8
	lsls r0, r0, #3
	ands r0, r1
	lsrs r0, r0, #6
	bl OamMalloc
	adds r4, r0, #0
	ldr r0, _080341F8 @ =iwram_end
	ldr r0, [r0]
	cmp r0, r4
	beq _080341E2
	ldr r0, _080341FC @ =0x040000D4
	str r5, [r0]
	str r4, [r0, #4]
	ldr r1, _08034200 @ =0x80000003
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldrh r0, [r4, #2]
	movs r3, #0xfe
	lsls r3, r3, #8
	ands r3, r0
	strh r3, [r4, #2]
	ldrh r0, [r4]
	movs r2, #0xff
	lsls r2, r2, #8
	ands r2, r0
	strh r2, [r4]
	mov r5, sb
	ldrh r0, [r5, #2]
	subs r0, r7, r0
	ldr r5, [sp]
	ldrh r1, [r5, #0xa]
	subs r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	adds r2, r2, r0
	strh r2, [r4]
	mov r0, sb
	ldrh r1, [r0]
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	ldrh r1, [r5, #8]
	subs r0, r0, r1
	ldr r5, _08034204 @ =0x000001FF
	adds r1, r5, #0
	ands r0, r1
	adds r3, r3, r0
	strh r3, [r4, #2]
_080341E2:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080341F4: .4byte gOamBuffer2
_080341F8: .4byte iwram_end
_080341FC: .4byte 0x040000D4
_08034200: .4byte 0x80000003
_08034204: .4byte 0x000001FF

	thumb_func_start sub_8034208
sub_8034208: @ 0x08034208
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x10]
	bl VramFree
	ldr r0, [r4, #0x48]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8034224
sub_8034224: @ 0x08034224
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8034238
sub_8034238: @ 0x08034238
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_803424C
sub_803424C: @ 0x0803424C
	ldr r0, _08034264 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _08034268 @ =0x0300000C
	adds r2, r0, r1
	adds r1, #0x38
	adds r0, r0, r1
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	bx lr
	.align 2, 0
_08034264: .4byte gCurTask
_08034268: .4byte 0x0300000C

	thumb_func_start sub_803426C
sub_803426C: @ 0x0803426C
	push {r4, lr}
	ldr r2, _08034294 @ =gCurTask
	ldr r2, [r2]
	ldrh r2, [r2, #6]
	ldr r3, _08034298 @ =0x0300000C
	adds r2, r2, r3
	ldr r4, _0803429C @ =gCamera
	ldrh r3, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r3
	strh r0, [r2, #0x16]
	ldrh r0, [r4, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r2, #0x18]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08034294: .4byte gCurTask
_08034298: .4byte 0x0300000C
_0803429C: .4byte gCamera
