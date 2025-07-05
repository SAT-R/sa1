.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateTimeAttackLobbyScreen
CreateTimeAttackLobbyScreen: @ 0x0806A1A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r0, #0x9b
	bl m4aSongNumStart
	movs r5, #0
	ldr r4, _0806A3AC @ =gKeysFirstRepeatIntervals
	movs r3, #0x14
	ldr r2, _0806A3B0 @ =gKeysContinuedRepeatIntervals
	movs r1, #8
_0806A1C0:
	adds r0, r5, r4
	strb r3, [r0]
	adds r0, r5, r2
	strb r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #9
	bls _0806A1C0
	bl sub_80535FC
	ldr r1, _0806A3B4 @ =gDispCnt
	movs r2, #0x8a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0806A3B8 @ =gBgCntRegs
	movs r5, #0
	movs r4, #0
	ldr r0, _0806A3BC @ =0x00001E83
	strh r0, [r1]
	bl UiGfxStackInit
	ldr r0, _0806A3C0 @ =gBgScrollRegs
	strh r4, [r0]
	strh r4, [r0, #2]
	ldr r0, _0806A3C4 @ =sub_806A400
	movs r1, #0x9c
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r3, _0806A3C8 @ =TaskDestructor_806A698
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r0, r1
	ldr r3, _0806A3CC @ =0x03000120
	adds r3, r3, r0
	mov r8, r3
	ldr r2, _0806A3D0 @ =0x03000134
	adds r1, r0, r2
	strb r5, [r1]
	ldr r3, _0806A3D4 @ =0x03000130
	adds r1, r0, r3
	str r4, [r1]
	ldr r1, _0806A3D8 @ =0x0300012C
	adds r0, r0, r1
	str r4, [r0]
	movs r5, #0
	mov sl, r5
_0806A22C:
	lsls r4, r5, #1
	adds r0, r4, r5
	lsls r0, r0, #4
	adds r6, r7, r0
	ldr r0, _0806A3DC @ =gUnknown_0868B69C
	adds r0, r5, r0
	ldrb r0, [r0]
	bl VramMalloc
	str r0, [r6, #4]
	ldr r2, _0806A3E0 @ =gLoadedSaveGame
	ldrb r0, [r2, #0x19]
	lsls r0, r0, #1
	lsls r1, r5, #2
	adds r0, r0, r1
	ldr r3, _0806A3E4 @ =gUnknown_0868B684
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r6, #0xa]
	ldr r1, _0806A3E8 @ =gUnknown_0868B694
	ldrb r0, [r2, #0x19]
	adds r0, r0, r4
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x20
	strb r1, [r0]
	movs r0, #0x2f
	strh r0, [r6, #0x16]
	lsls r0, r5, #4
	adds r0, #0x21
	strh r0, [r6, #0x18]
	mov r0, sl
	strh r0, [r6, #8]
	strh r0, [r6, #0x14]
	strh r0, [r6, #0x1c]
	adds r1, r6, #0
	adds r1, #0x21
	movs r3, #1
	rsbs r3, r3, #0
	mov r2, sp
	strb r3, [r2, #4]
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x22
	movs r1, #0x10
	strb r1, [r0]
	adds r0, #3
	movs r2, #0
	strb r2, [r0]
	str r3, [r6, #0x28]
	movs r3, #0x90
	lsls r3, r3, #3
	strh r3, [r6, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #6
	mov sb, r0
	str r0, [r6, #0x10]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _0806A22C
	adds r6, r7, #0
	adds r6, #0xc0
	movs r0, #4
	bl VramMalloc
	str r0, [r6, #4]
	movs r5, #0
	movs r4, #0
	ldr r0, _0806A3EC @ =0x00000359
	strh r0, [r6, #0xa]
	adds r0, r7, #0
	adds r0, #0xe0
	strb r5, [r0]
	movs r0, #0x21
	strh r0, [r6, #0x16]
	movs r0, #0x19
	strh r0, [r6, #0x18]
	strh r4, [r6, #8]
	strh r4, [r6, #0x14]
	strh r4, [r6, #0x1c]
	adds r1, r7, #0
	adds r1, #0xe1
	ldrb r0, [r1]
	mov r2, sp
	ldrb r2, [r2, #4]
	orrs r0, r2
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0xe2
	movs r3, #0x10
	strb r3, [r0]
	adds r0, #3
	strb r5, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x28]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r6, #0x1a]
	mov r2, sb
	str r2, [r6, #0x10]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r6, #0x30
	movs r0, #0x40
	bl VramMalloc
	str r0, [r6, #4]
	ldr r2, _0806A3F0 @ =gUnknown_0868B6A0
	ldr r3, _0806A3F4 @ =gSelectedCharacter
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r6, #0xa]
	ldr r2, _0806A3F8 @ =gUnknown_0868B6B8
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r1, [r0]
	movs r3, #0x88
	lsls r3, r3, #1
	adds r0, r7, r3
	strb r1, [r0]
	movs r0, #0x78
	strh r0, [r6, #0x16]
	movs r0, #0x82
	strh r0, [r6, #0x18]
	strh r4, [r6, #8]
	strh r4, [r6, #0x14]
	strh r4, [r6, #0x1c]
	adds r0, #0x8f
	adds r1, r7, r0
	ldrb r0, [r1]
	mov r2, sp
	ldrb r2, [r2, #4]
	orrs r0, r2
	strb r0, [r1]
	adds r3, #2
	adds r0, r7, r3
	movs r1, #0x10
	strb r1, [r0]
	ldr r2, _0806A3FC @ =0x00000115
	adds r0, r7, r2
	strb r5, [r0]
	movs r3, #1
	rsbs r3, r3, #0
	str r3, [r6, #0x28]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r6, #0x1a]
	movs r0, #0x90
	lsls r0, r0, #6
	str r0, [r6, #0x10]
	mov r1, r8
	strh r4, [r1]
	movs r0, #1
	strh r0, [r1, #2]
	movs r0, #2
	strh r0, [r1, #4]
	strh r4, [r1, #6]
	adds r0, #0xfe
	strh r0, [r1, #8]
	movs r2, #0x10
	strb r2, [r1, #0xa]
	mov r0, r8
	bl sub_805423C
	bl sub_806A150
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806A3AC: .4byte gKeysFirstRepeatIntervals
_0806A3B0: .4byte gKeysContinuedRepeatIntervals
_0806A3B4: .4byte gDispCnt
_0806A3B8: .4byte gBgCntRegs
_0806A3BC: .4byte 0x00001E83
_0806A3C0: .4byte gBgScrollRegs
_0806A3C4: .4byte sub_806A400
_0806A3C8: .4byte TaskDestructor_806A698
_0806A3CC: .4byte 0x03000120
_0806A3D0: .4byte 0x03000134
_0806A3D4: .4byte 0x03000130
_0806A3D8: .4byte 0x0300012C
_0806A3DC: .4byte gUnknown_0868B69C
_0806A3E0: .4byte gLoadedSaveGame
_0806A3E4: .4byte gUnknown_0868B684
_0806A3E8: .4byte gUnknown_0868B694
_0806A3EC: .4byte 0x00000359
_0806A3F0: .4byte gUnknown_0868B6A0
_0806A3F4: .4byte gSelectedCharacter
_0806A3F8: .4byte gUnknown_0868B6B8
_0806A3FC: .4byte 0x00000115

	thumb_func_start sub_806A400
sub_806A400: @ 0x0806A400
	push {r4, r5, r6, r7, lr}
	ldr r0, _0806A440 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r0, _0806A444 @ =0x03000120
	adds r6, r4, r0
	adds r0, r6, #0
	bl sub_805423C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806A4E0
	ldr r0, _0806A448 @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806A454
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r2, _0806A44C @ =0x03000134
	adds r1, r4, r2
	ldrb r0, [r1]
	cmp r0, #2
	bhi _0806A450
	adds r0, #1
	b _0806A476
	.align 2, 0
_0806A440: .4byte gCurTask
_0806A444: .4byte 0x03000120
_0806A448: .4byte gRepeatedKeys
_0806A44C: .4byte 0x03000134
_0806A450:
	movs r0, #0
	b _0806A476
_0806A454:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806A478
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r0, _0806A470 @ =0x03000134
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0806A474
	subs r0, #1
	b _0806A476
	.align 2, 0
_0806A470: .4byte 0x03000134
_0806A474:
	movs r0, #3
_0806A476:
	strb r0, [r1]
_0806A478:
	ldr r0, _0806A4EC @ =gPressedKeys
	ldrh r1, [r0]
	movs r7, #1
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _0806A4E0
	movs r0, #0x6a
	bl m4aSongNumStart
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #3
	beq _0806A4D2
	adds r4, r5, #0
	adds r4, #0xf0
	ldr r2, _0806A4F0 @ =gUnknown_0868B6A0
	ldr r3, _0806A4F4 @ =gSelectedCharacter
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r4, #0xa]
	ldr r1, _0806A4F8 @ =gUnknown_0868B6B8
	movs r2, #0
	ldrsb r2, [r3, r2]
	lsls r0, r2, #1
	adds r0, r0, r2
	adds r1, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x88
	lsls r2, r2, #1
	adds r0, r5, r2
	strb r1, [r0]
	ldr r0, _0806A4FC @ =0x00000111
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_0806A4D2:
	movs r0, #0
	strh r7, [r6, #4]
	strh r0, [r6, #6]
	ldr r0, _0806A500 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806A504 @ =sub_806A508
	str r0, [r1, #8]
_0806A4E0:
	bl sub_806A5BC
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806A4EC: .4byte gPressedKeys
_0806A4F0: .4byte gUnknown_0868B6A0
_0806A4F4: .4byte gSelectedCharacter
_0806A4F8: .4byte gUnknown_0868B6B8
_0806A4FC: .4byte 0x00000111
_0806A500: .4byte gCurTask
_0806A504: .4byte sub_806A508

	thumb_func_start sub_806A508
sub_806A508: @ 0x0806A508
	push {r4, r5, lr}
	ldr r0, _0806A544 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	ldr r0, _0806A548 @ =0x03000120
	adds r4, r2, r0
	ldr r1, _0806A54C @ =0x0300012C
	adds r3, r2, r1
	ldr r1, [r3]
	ldr r0, _0806A550 @ =0x00009FFF
	cmp r1, r0
	bgt _0806A558
	ldr r1, _0806A554 @ =0x03000134
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #3
	beq _0806A558
	subs r1, #4
	adds r0, r2, r1
	ldr r1, [r0]
	adds r1, #0x20
	str r1, [r0]
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	b _0806A5B0
	.align 2, 0
_0806A544: .4byte gCurTask
_0806A548: .4byte 0x03000120
_0806A54C: .4byte 0x0300012C
_0806A550: .4byte 0x00009FFF
_0806A554: .4byte 0x03000134
_0806A558:
	adds r0, r4, #0
	bl sub_805423C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806A5B0
	ldr r2, _0806A59C @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0806A5A0 @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _0806A5A4 @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r4, [r0]
	movs r0, #0x9b
	bl m4aSongNumStop
	ldr r0, _0806A5A8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	ldr r0, _0806A5AC @ =gUnknown_0868B6C4
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r0, [r4]
	bl _call_via_r0
	b _0806A5B4
	.align 2, 0
_0806A59C: .4byte gDispCnt
_0806A5A0: .4byte 0x00001FFF
_0806A5A4: .4byte gBldRegs
_0806A5A8: .4byte gCurTask
_0806A5AC: .4byte gUnknown_0868B6C4
_0806A5B0:
	bl sub_806A5BC
_0806A5B4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_806A5BC
sub_806A5BC: @ 0x0806A5BC
	push {r4, r5, r6, lr}
	ldr r0, _0806A658 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r4, #0
_0806A5CC:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r5, r6, r0
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0806A5CC
	adds r5, r6, #0
	adds r5, #0xc0
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	adds r0, #0x19
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl DisplaySprite
	adds r5, #0x30
	movs r2, #0x96
	lsls r2, r2, #1
	adds r0, r6, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r0, #0x78
	strh r0, [r5, #0x16]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _0806A64C
	ldr r2, _0806A65C @ =gUnknown_0868B6A0
	ldr r3, _0806A660 @ =gSelectedCharacter
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r5, #0xa]
	ldr r1, _0806A664 @ =gUnknown_0868B6B8
	movs r2, #0
	ldrsb r2, [r3, r2]
	lsls r0, r2, #1
	adds r0, r0, r2
	adds r1, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x88
	lsls r2, r2, #1
	adds r0, r6, r2
	strb r1, [r0]
	ldr r0, _0806A668 @ =0x00000111
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
_0806A64C:
	adds r0, r5, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806A658: .4byte gCurTask
_0806A65C: .4byte gUnknown_0868B6A0
_0806A660: .4byte gSelectedCharacter
_0806A664: .4byte gUnknown_0868B6B8
_0806A668: .4byte 0x00000111

	thumb_func_start sub_806A66C
sub_806A66C: @ 0x0806A66C
	push {lr}
	ldr r0, _0806A67C @ =gSelectedCharacter
	ldrb r0, [r0]
	bl CreateCharacterSelectionScreen
	pop {r0}
	bx r0
	.align 2, 0
_0806A67C: .4byte gSelectedCharacter

	thumb_func_start sub_806A680
sub_806A680: @ 0x0806A680
	push {lr}
	movs r0, #0
	bl sub_8061948
	pop {r0}
	bx r0

	thumb_func_start sub_806A68C
sub_806A68C: @ 0x0806A68C
	push {lr}
	movs r0, #1
	bl CreateTitleScreen
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_806A698
TaskDestructor_806A698: @ 0x0806A698
	push {r4, r5, r6, lr}
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r4, #0
	adds r0, #4
	adds r5, r1, r0
_0806A6A8:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, r5, r0
	ldr r0, [r0]
	bl VramFree
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0806A6A8
	adds r0, r6, #0
	adds r0, #0xc4
	ldr r0, [r0]
	bl VramFree
	adds r0, r6, #0
	adds r0, #0xf4
	ldr r0, [r0]
	bl VramFree
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
