.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ --- Start of src/game/game_over.c ---

@ NOTE: Not sure whether this is part of game__stage__ui.s or game__game_over.s
@       It is only called in game_over, so it should be here?
@       But it also references gUiGraphics.
	thumb_func_start sub_8055C50
sub_8055C50: @ 0x08055C50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	mov sl, r0
	bl sub_8053674
	add r4, sp, #0x2c
	movs r0, #0x20
	mov r8, r0
	mov r1, r8
	strb r1, [r4]
	mov r5, sp
	adds r5, #0x2b
	movs r0, #4
	strb r0, [r5]
	ldr r7, _08055DBC @ =gUiGraphics
	movs r2, #0xe0
	lsls r2, r2, #2
	adds r0, r7, r2
	ldr r0, [r0]
	str r0, [sp, #0x14]
	movs r1, #0xe1
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r2, #0xa0
	lsls r2, r2, #3
	str r2, [sp, #0x18]
	mov r0, r8
	str r0, [sp, #0x24]
	add r1, sp, #0x28
	mov sb, r1
	movs r2, #6
	strb r2, [r1]
	mov r1, sl
	ldr r0, [r1, #4]
	str r0, [sp, #0xc]
	mov r6, sp
	adds r6, #0x2a
	movs r2, #0xd
	strb r2, [r6]
	movs r1, #0xe2
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r1, sp
	movs r2, #0xe3
	lsls r2, r2, #2
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #8]
	adds r2, #4
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #9]
	adds r2, #4
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #0xa]
	adds r2, #4
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r0, #0x21
	strb r0, [r4]
	movs r0, #5
	strb r0, [r5]
	movs r1, #0xe7
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	str r0, [sp, #0x14]
	movs r2, #0xe8
	lsls r2, r2, #2
	adds r0, r7, r2
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x18]
	mov r1, r8
	str r1, [sp, #0x24]
	movs r0, #6
	mov r2, sb
	strb r0, [r2]
	mov r1, sl
	ldr r0, [r1]
	str r0, [sp, #0xc]
	movs r2, #0xd
	strb r2, [r6]
	movs r1, #0xe9
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r1, sp
	movs r2, #0xea
	lsls r2, r2, #2
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #8]
	adds r2, #4
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #9]
	adds r2, #4
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #0xa]
	adds r2, #4
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r0, #0x2d
	strb r0, [r4]
	movs r0, #0xe
	strb r0, [r5]
	ldr r1, _08055DC0 @ =0x000004EC
	adds r0, r7, r1
	ldr r0, [r0]
	str r0, [sp, #0x14]
	movs r2, #0x9e
	lsls r2, r2, #3
	adds r0, r7, r2
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x18]
	mov r1, r8
	str r1, [sp, #0x24]
	movs r0, #6
	mov r2, sb
	strb r0, [r2]
	mov r1, sl
	ldr r0, [r1, #8]
	str r0, [sp, #0xc]
	movs r2, #0xd
	strb r2, [r6]
	ldr r1, _08055DC4 @ =0x000004F4
	adds r0, r7, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r1, sp
	movs r2, #0x9f
	lsls r2, r2, #3
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #8]
	adds r2, #4
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #9]
	ldr r2, _08055DC8 @ =gUiGraphics + ((45 * 0x1C) + 0x14)
	ldr r0, [r2]
	strb r0, [r1, #0xa]
	ldr r2, _08055DCC @ =0x00000504
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08055DBC: .4byte gUiGraphics
_08055DC0: .4byte 0x000004EC
_08055DC4: .4byte 0x000004F4
_08055DC8: .4byte gUiGraphics + ((45 * 0x1C) + 0x14)
_08055DCC: .4byte 0x00000504

	thumb_func_start CreateGameOverScreen
CreateGameOverScreen: @ 0x08055DD0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	movs r7, #0
	ldr r0, _08055E8C @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xa
	bne _08055DFC
	ldr r2, _08055E90 @ =gCamera
	ldrh r1, [r2, #0x26]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2, #0x26]
_08055DFC:
	ldr r0, _08055E94 @ =gBldRegs
	movs r1, #0
	mov r8, r1
	strh r7, [r0]
	strh r7, [r0, #4]
	ldr r0, _08055E98 @ =gWinRegs
	strh r7, [r0]
	strh r7, [r0, #4]
	strh r7, [r0, #2]
	strh r7, [r0, #6]
	ldr r0, _08055E9C @ =Task_GameOverScreenInit
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08055EA0 @ =TaskDestructor_GameOverScreen
	str r1, [sp]
	movs r1, #0x84
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r5
	mov sl, r0
	str r7, [r0, #0x78]
	str r6, [r0, #0x7c]
	ldr r3, _08055EA4 @ =0x03000080
	adds r0, r5, r3
	mov r1, r8
	strb r1, [r0]
	movs r0, #0x40
	bl VramMalloc
	mov r3, sl
	str r0, [r3, #4]
	strh r7, [r3, #8]
	movs r0, #0x80
	str r0, [r3, #0x10]
	adds r0, #0x80
	strh r0, [r3, #0x16]
	strh r7, [r3, #0x18]
	movs r4, #3
	strh r4, [r3, #0x1a]
	strh r7, [r3, #0x1c]
	ldr r0, _08055EA8 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r3, _08055EAC @ =0x03000022
	adds r1, r5, r3
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08055EB0 @ =0x03000025
	adds r0, r5, r1
	mov r3, r8
	strb r3, [r0]
	movs r0, #0x25      @ MUS_GAME_OVER
	bl m4aSongNumStart
	adds r0, r6, #0
	ands r0, r4
	cmp r0, #0
	beq _08055EBC
	ldr r0, _08055EB4 @ =0x000002CB
	mov r1, sl
	strh r0, [r1, #0xa]
	ldr r3, _08055EB8 @ =0x03000020
	adds r0, r5, r3
	mov r1, r8
	strb r1, [r0]
	b _08055ED2
	.align 2, 0
_08055E8C: .4byte gCurrentLevel
_08055E90: .4byte gCamera
_08055E94: .4byte gBldRegs
_08055E98: .4byte gWinRegs
_08055E9C: .4byte Task_GameOverScreenInit
_08055EA0: .4byte TaskDestructor_GameOverScreen
_08055EA4: .4byte 0x03000080
_08055EA8: .4byte 0x03000021
_08055EAC: .4byte 0x03000022
_08055EB0: .4byte 0x03000025
_08055EB4: .4byte 0x000002CB
_08055EB8: .4byte 0x03000020
_08055EBC:
	movs r0, #4
	ands r0, r6
	cmp r0, #0
	beq _08055ED2
	ldr r0, _08055F1C @ =0x000002CB
	mov r3, sl
	strh r0, [r3, #0xa]
	ldr r0, _08055F20 @ =0x03000020
	adds r1, r5, r0
	movs r0, #2
	strb r0, [r1]
_08055ED2:
	mov r4, sl
	adds r4, #0x3c
	movs r0, #0x40
	bl VramMalloc
	str r0, [r4, #4]
	movs r3, #0
	movs r1, #0
	strh r1, [r4, #8]
	movs r0, #0x80
	str r0, [r4, #0x10]
	movs r0, #0x14
	strh r0, [r4, #0x16]
	movs r0, #0x78
	strh r0, [r4, #0x18]
	movs r2, #3
	strh r2, [r4, #0x1a]
	strh r1, [r4, #0x1c]
	mov r1, sl
	adds r1, #0x5d
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	mov r0, sl
	adds r0, #0x61
	strb r3, [r0]
	adds r0, r6, #0
	ands r0, r2
	cmp r0, #0
	beq _08055F24
	ldr r0, _08055F1C @ =0x000002CB
	strh r0, [r4, #0xa]
	subs r1, #2
	movs r0, #1
	b _08055F36
	.align 2, 0
_08055F1C: .4byte 0x000002CB
_08055F20: .4byte 0x03000020
_08055F24:
	movs r0, #4
	ands r0, r6
	cmp r0, #0
	beq _08055F38
	ldr r0, _08055FF4 @ =0x000002CB
	strh r0, [r4, #0xa]
	mov r1, sl
	adds r1, #0x5c
	movs r0, #3
_08055F36:
	strb r0, [r1]
_08055F38:
	movs r4, #5
	ands r4, r6
	cmp r4, #0
	beq _08056008
	ldr r0, _08055FF8 @ =Task_8056F54
	movs r1, #0x80
	lsls r1, r1, #6
	mov sb, r1
	movs r6, #0
	str r6, [sp]
	movs r1, #0x20
	mov r2, sb
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	mov r8, r3
	add r5, r8
	str r6, [r5, #0x18]
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r5, #0xa]
	movs r0, #0x5a
	strh r0, [r5, #0xc]
	movs r0, #8
	strh r0, [r5, #0xe]
	movs r0, #0xe
	strh r0, [r5, #0x10]
	movs r0, #6
	strh r0, [r5, #0x12]
	movs r4, #1
	strb r4, [r5, #0x16]
	movs r0, #0xa
	strh r0, [r5, #8]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r5, #0x1c]
	ldr r0, _08055FFC @ =sub_8056CE0
	ldr r1, _08056000 @ =TaskDestructor_8056F30
	str r1, [sp]
	movs r1, #0x1c
	mov r2, sb
	movs r3, #0
	bl TaskCreate
	adds r7, r0, #0
	ldrh r0, [r7, #6]
	mov r1, r8
	adds r7, r0, r1
	str r6, [r7, #0x18]
	strh r6, [r7]
	movs r1, #1
	strh r4, [r7, #2]
	strh r4, [r7, #4]
	strh r6, [r7, #6]
	movs r0, #0x40
	strh r0, [r7, #8]
	strb r1, [r7, #0xa]
	ldr r0, _08056004 @ =Task_8056FA0
	str r6, [sp]
	movs r1, #0x34
	mov r2, sb
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	add r4, r8
	str r6, [r4, #0x24]
	movs r0, #9
	strh r0, [r4, #0x28]
	movs r0, #0x28
	bl VramMalloc
	str r0, [r4, #0x2c]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r4, #0x30]
	str r5, [r4, #0x1c]
	mov r3, sl
	str r3, [r4, #0x18]
	str r7, [r4, #0x20]
	ldr r1, [r5, #0x1c]
	str r1, [sp, #0xc]
	ldr r0, [r4, #0x30]
	str r0, [sp, #4]
	ldr r0, [r4, #0x2c]
	str r0, [sp, #8]
	str r1, [r7, #0x14]
	b _0805605C
	.align 2, 0
_08055FF4: .4byte 0x000002CB
_08055FF8: .4byte Task_8056F54
_08055FFC: .4byte sub_8056CE0
_08056000: .4byte TaskDestructor_8056F30
_08056004: .4byte Task_8056FA0
_08056008:
	movs r0, #2
	ands r0, r6
	cmp r0, #0
	beq _08056064
	ldr r0, _0805607C @ =sub_8056E24
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08056080 @ =TaskDestructor_8056F30
	str r1, [sp]
	movs r1, #0x1c
	movs r3, #0
	bl TaskCreate
	adds r7, r0, #0
	ldrh r1, [r7, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	str r4, [r7, #0x18]
	strh r4, [r7]
	movs r1, #1
	movs r0, #1
	strh r0, [r7, #2]
	strh r0, [r7, #4]
	strh r4, [r7, #6]
	movs r0, #0x60
	strh r0, [r7, #8]
	strb r1, [r7, #0xa]
	movs r0, #0x10
	bl VramMalloc
	str r0, [sp, #0xc]
	movs r0, #0x10
	bl VramMalloc
	str r0, [sp, #4]
	movs r0, #0x28
	bl VramMalloc
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	str r0, [r7, #0x14]
_0805605C:
	ldr r0, [sp, #4]
	str r0, [r7, #0xc]
	ldr r0, [sp, #8]
	str r0, [r7, #0x10]
_08056064:
	add r0, sp, #4
	bl sub_8055C50
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805607C: .4byte sub_8056E24
_08056080: .4byte TaskDestructor_8056F30

	thumb_func_start Task_GameOverScreenInit
Task_GameOverScreenInit: @ 0x08056084
	push {r4, r5, r6, r7, lr}
	ldr r0, _080560EC @ =gCurTask
	ldr r6, [r0]
	ldrh r5, [r6, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldr r1, [r4, #0x78]
	movs r0, #0
	mov ip, r0
	movs r2, #0x98
	lsls r2, r2, #1
	strh r2, [r4, #0x16]
	movs r3, #0x3c
	strh r3, [r4, #0x18]
	ldr r7, _080560F0 @ =0x03000052
	adds r0, r5, r7
	strh r2, [r0]
	ldr r2, _080560F4 @ =0x03000054
	adds r0, r5, r2
	strh r3, [r0]
	lsls r1, r1, #0x10
	movs r7, #0x80
	lsls r7, r7, #9
	adds r1, r1, r7
	asrs r0, r1, #0x10
	str r0, [r4, #0x78]
	adds r1, r0, #0
	cmp r1, #0x3b
	ble _080560CA
	mov r0, ip
	str r0, [r4, #0x10]
	str r0, [r4, #0x4c]
	ldr r0, _080560F8 @ =sub_8056100
	str r0, [r6, #8]
_080560CA:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r2, _080560FC @ =0x0300003C
	adds r4, r5, r2
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080560EC: .4byte gCurTask
_080560F0: .4byte 0x03000052
_080560F4: .4byte 0x03000054
_080560F8: .4byte sub_8056100
_080560FC: .4byte 0x0300003C

	thumb_func_start sub_8056100
sub_8056100: @ 0x08056100
	push {r4, r5, r6, r7, lr}
	ldr r0, _08056174 @ =gCurTask
	ldr r7, [r0]
	ldrh r6, [r7, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r6, r0
	ldr r0, [r5, #0x78]
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	ldr r1, _08056178 @ =0xFFC40000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	movs r1, #0xb8
	muls r0, r1, r0
	movs r1, #0x1e
	bl __divsi3
	movs r1, #0xf0
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, #0x40
	strh r1, [r5, #0x16]
	movs r2, #0x3c
	strh r2, [r5, #0x18]
	ldr r3, _0805617C @ =0x03000052
	adds r0, r6, r3
	strh r1, [r0]
	ldr r1, _08056180 @ =0x03000054
	adds r0, r6, r1
	strh r2, [r0]
	adds r4, #1
	lsls r4, r4, #0x10
	asrs r0, r4, #0x10
	str r0, [r5, #0x78]
	adds r4, r0, #0
	cmp r4, #0x59
	ble _08056152
	ldr r0, _08056184 @ =sub_805618C
	str r0, [r7, #8]
_08056152:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r3, _08056188 @ =0x0300003C
	adds r4, r6, r3
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08056174: .4byte gCurTask
_08056178: .4byte 0xFFC40000
_0805617C: .4byte 0x03000052
_08056180: .4byte 0x03000054
_08056184: .4byte sub_805618C
_08056188: .4byte 0x0300003C

	thumb_func_start sub_805618C
sub_805618C: @ 0x0805618C
	push {r4, r5, lr}
	ldr r0, _080561D4 @ =gCurTask
	ldr r3, [r0]
	ldrh r2, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r1, [r0, #0x78]
	adds r4, r0, #0
	ldr r0, _080561D8 @ =0x0300003C
	adds r5, r2, r0
	movs r2, #0x80
	strh r2, [r4, #0x16]
	movs r0, #0x3c
	strh r0, [r4, #0x18]
	strh r2, [r5, #0x16]
	strh r0, [r5, #0x18]
	lsls r1, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r1, r0
	asrs r0, r1, #0x10
	str r0, [r4, #0x78]
	adds r1, r0, #0
	cmp r1, #0x77
	ble _080561F4
	str r2, [r4, #0x10]
	str r2, [r5, #0x10]
	ldr r1, [r4, #0x7c]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080561E0
	ldr r0, _080561DC @ =sub_8056348
	b _080561F2
	.align 2, 0
_080561D4: .4byte gCurTask
_080561D8: .4byte 0x0300003C
_080561DC: .4byte sub_8056348
_080561E0:
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _080561F0
	ldr r0, _080561EC @ =sub_8056218
	b _080561F2
	.align 2, 0
_080561EC: .4byte sub_8056218
_080561F0:
	ldr r0, _08056214 @ =sub_80565C4
_080561F2:
	str r0, [r3, #8]
_080561F4:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08056214: .4byte sub_80565C4

	thumb_func_start sub_8056218
sub_8056218: @ 0x08056218
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _0805630C @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r1, [r0, #0x78]
	adds r6, r0, #0
	ldr r0, _08056310 @ =0x0300003C
	adds r0, r0, r2
	mov r8, r0
	lsls r1, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r1, r2
	asrs r0, r1, #0x10
	str r0, [r6, #0x78]
	lsrs r0, r1, #0x10
	str r0, [sp, #0xc]
	asrs r4, r1, #0x10
	cmp r4, #0xd8
	ble _080562F2
	ldr r2, _08056314 @ =sa2__gUnknown_030054B8
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	movs r3, #0xa0
	orrs r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r1, r8
	str r0, [r1, #0x10]
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	orrs r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [r6, #0x10]
	adds r1, r4, #0
	subs r1, #0xf8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0x20
	subs r0, r0, r1
	mov r1, sp
	movs r2, #0
	mov sl, r2
	mov r2, sl
	strh r2, [r1]
	mov r2, sp
	ldr r1, _08056318 @ =gSineTable
	lsls r0, r0, #0x10
	asrs r0, r0, #0xc
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r4, r0, #0x16
	strh r4, [r2, #2]
	adds r5, r4, #0
	cmp r5, #9
	bgt _080562AE
	mov r1, sp
	movs r0, #0xa
	strh r0, [r1, #2]
_080562AE:
	mov r0, sp
	strh r7, [r0, #4]
	mov r1, sp
	movs r0, #0x7f
	strh r0, [r1, #6]
	mov r0, sp
	movs r1, #0x3c
	mov sb, r1
	mov r2, sb
	strh r2, [r0, #8]
	adds r0, r6, #0
	mov r1, sp
	bl TransformSprite
	mov r0, sp
	mov r1, sl
	strh r1, [r0]
	strh r4, [r0, #2]
	cmp r5, #9
	bgt _080562DC
	mov r1, sp
	movs r0, #0xa
	strh r0, [r1, #2]
_080562DC:
	mov r0, sp
	strh r7, [r0, #4]
	mov r1, sp
	ldrh r0, [r0, #6]
	strh r0, [r1, #6]
	mov r0, sp
	mov r2, sb
	strh r2, [r0, #8]
	mov r0, r8
	bl TransformSprite
_080562F2:
	ldr r1, [sp, #0xc]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe8
	ble _08056320
	cmp r0, #0xf7
	ble _08056338
	ldr r0, _0805630C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0805631C @ =sub_8056AC8
	str r0, [r1, #8]
	b _08056338
	.align 2, 0
_0805630C: .4byte gCurTask
_08056310: .4byte 0x0300003C
_08056314: .4byte sa2__gUnknown_030054B8
_08056318: .4byte gSineTable
_0805631C: .4byte sub_8056AC8
_08056320:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, r8
	bl DisplaySprite
_08056338:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8056348
sub_8056348: @ 0x08056348
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r1, _08056468 @ =gCurTask
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	mov sl, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r3, sl
	adds r5, r3, r0
	ldr r0, [r5, #0x78]
	ldr r6, _0805646C @ =0x0300003C
	add r6, sl
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	str r1, [sp, #0xc]
	ldr r3, _08056470 @ =0xFF880000
	adds r0, r0, r3
	lsrs r0, r0, #8
	lsls r2, r0, #0xc
	ldr r7, _08056474 @ =sa2__gUnknown_030054B8
	ldrb r0, [r7]
	adds r1, r0, #1
	strb r1, [r7]
	movs r1, #0x20
	orrs r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r3, #0x80
	orrs r0, r3
	str r0, [r5, #0x10]
	mov r0, sp
	movs r1, #0
	strh r1, [r0]
	mov r1, sp
	ldr r0, _08056478 @ =gSineTable
	asrs r2, r2, #0x10
	adds r3, #0x80
	mov sb, r3
	add r2, sb
	lsls r2, r2, #1
	adds r2, r2, r0
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r4, r0, #0x16
	strh r4, [r1, #2]
	mov r8, r4
	cmp r4, #9
	bgt _080563B6
	movs r0, #0xa
	strh r0, [r1, #2]
_080563B6:
	mov r0, sp
	mov r1, sb
	strh r1, [r0, #4]
	mov r1, sp
	movs r0, #0x7f
	strh r0, [r1, #6]
	mov r0, sp
	movs r3, #0x3c
	strh r3, [r0, #8]
	adds r0, r5, #0
	bl TransformSprite
	ldrb r0, [r7]
	adds r1, r0, #1
	strb r1, [r7]
	movs r1, #0x20
	orrs r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r3, #0x80
	orrs r0, r3
	str r0, [r6, #0x10]
	mov r0, sp
	movs r1, #0
	strh r1, [r0]
	strh r4, [r0, #2]
	mov r3, r8
	cmp r3, #9
	bgt _080563F6
	mov r1, sp
	movs r0, #0xa
	strh r0, [r1, #2]
_080563F6:
	mov r0, sp
	mov r1, sb
	strh r1, [r0, #4]
	mov r1, sp
	ldrh r0, [r0, #6]
	strh r0, [r1, #6]
	mov r0, sp
	movs r3, #0x3c
	strh r3, [r0, #8]
	adds r0, r6, #0
	bl TransformSprite
	ldr r0, [sp, #0xc]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r5, #0x78]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x87
	ble _08056458
	ldr r2, _0805647C @ =0x000002CB
	strh r2, [r5, #0xa]
	ldr r1, _08056480 @ =0x03000020
	add r1, sl
	movs r0, #2
	strb r0, [r1]
	strh r2, [r6, #0xa]
	ldr r1, _08056484 @ =0x0300005C
	add r1, sl
	movs r0, #3
	strb r0, [r1]
	ldr r0, _08056468 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08056488 @ =sub_805648C
	str r0, [r1, #8]
_08056458:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08056468: .4byte gCurTask
_0805646C: .4byte 0x0300003C
_08056470: .4byte 0xFF880000
_08056474: .4byte sa2__gUnknown_030054B8
_08056478: .4byte gSineTable
_0805647C: .4byte 0x000002CB
_08056480: .4byte 0x03000020
_08056484: .4byte 0x0300005C
_08056488: .4byte sub_805648C

	thumb_func_start sub_805648C
sub_805648C: @ 0x0805648C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r1, _080565AC @ =gCurTask
	ldr r0, [r1]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r0, [r6, #0x78]
	ldr r2, _080565B0 @ =0x0300003C
	adds r7, r1, r2
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	str r4, [sp, #0xc]
	ldr r1, _080565B4 @ =0xFF780000
	adds r0, r0, r1
	lsrs r0, r0, #8
	lsls r2, r0, #0xc
	ldr r3, _080565B8 @ =sa2__gUnknown_030054B8
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	movs r4, #0x20
	orrs r0, r4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x80
	mov sl, r1
	orrs r0, r1
	str r0, [r6, #0x10]
	mov r0, sp
	movs r4, #0
	strh r4, [r0]
	adds r1, #0x80
	adds r0, r1, #0
	asrs r2, r2, #0x10
	subs r0, r0, r2
	mov r2, sp
	ldr r1, _080565BC @ =gSineTable
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #0x80
	lsls r4, r4, #1
	mov sb, r4
	add r0, sb
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r5, r0, #0x16
	strh r5, [r2, #2]
	mov r0, sp
	adds r4, r5, #1
	strh r4, [r0, #2]
	mov r8, r4
	cmp r4, #9
	bgt _0805650C
	mov r1, sp
	movs r0, #0xa
	strh r0, [r1, #2]
_0805650C:
	mov r0, sp
	mov r1, sb
	strh r1, [r0, #4]
	mov r1, sp
	movs r0, #0x7f
	strh r0, [r1, #6]
	mov r0, sp
	movs r2, #0x3c
	strh r2, [r0, #8]
	adds r0, r6, #0
	str r3, [sp, #0x10]
	bl TransformSprite
	ldr r3, [sp, #0x10]
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	movs r1, #0x20
	orrs r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r2, sl
	orrs r0, r2
	str r0, [r7, #0x10]
	mov r0, sp
	movs r1, #0
	strh r1, [r0]
	strh r5, [r0, #2]
	strh r4, [r0, #2]
	mov r2, r8
	cmp r2, #9
	bgt _08056552
	mov r1, sp
	movs r0, #0xa
	strh r0, [r1, #2]
_08056552:
	mov r0, sp
	mov r4, sb
	strh r4, [r0, #4]
	mov r1, sl
	strh r1, [r0, #6]
	movs r2, #0x3c
	strh r2, [r0, #8]
	adds r0, r7, #0
	mov r1, sp
	bl TransformSprite
	ldr r0, [sp, #0xc]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r6, #0x78]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x97
	ble _0805659C
	ldr r4, _080565AC @ =gCurTask
	ldr r1, [r4]
	ldr r0, _080565C0 @ =sub_80565C4
	str r0, [r1, #8]
_0805659C:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080565AC: .4byte gCurTask
_080565B0: .4byte 0x0300003C
_080565B4: .4byte 0xFF780000
_080565B8: .4byte sa2__gUnknown_030054B8
_080565BC: .4byte gSineTable
_080565C0: .4byte sub_80565C4

	thumb_func_start sub_80565C4
sub_80565C4: @ 0x080565C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _080566D4 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r1, [r0, #0x78]
	adds r5, r0, #0
	ldr r0, _080566D8 @ =0x0300003C
	adds r6, r2, r0
	movs r0, #0x80
	strh r0, [r5, #0x16]
	movs r2, #0x3c
	mov sb, r2
	mov r3, sb
	strh r3, [r5, #0x18]
	str r0, [r5, #0x10]
	strh r0, [r6, #0x16]
	strh r3, [r6, #0x18]
	str r0, [r6, #0x10]
	lsls r1, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r1, r0
	asrs r0, r1, #0x10
	str r0, [r5, #0x78]
	lsrs r2, r1, #0x10
	mov sl, r2
	adds r4, r0, #0
	movs r0, #0xb3
	lsls r0, r0, #3
	cmp r4, r0
	ble _080566AE
	ldr r2, _080566DC @ =sa2__gUnknown_030054B8
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	movs r3, #0xa0
	orrs r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [r6, #0x10]
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	orrs r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [r5, #0x10]
	ldr r3, _080566E0 @ =0xFFFFFA48
	adds r1, r4, r3
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0x20
	subs r0, r0, r1
	mov r1, sp
	movs r2, #0
	strh r2, [r1]
	mov r2, sp
	ldr r1, _080566E4 @ =gSineTable
	lsls r0, r0, #0x10
	asrs r0, r0, #0xc
	movs r3, #0x80
	lsls r3, r3, #1
	mov r8, r3
	add r0, r8
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r4, r0, #0x16
	strh r4, [r2, #2]
	adds r7, r4, #0
	cmp r7, #9
	bgt _0805666C
	mov r1, sp
	movs r0, #0xa
	strh r0, [r1, #2]
_0805666C:
	mov r0, sp
	mov r1, r8
	strh r1, [r0, #4]
	mov r1, sp
	movs r0, #0x7f
	strh r0, [r1, #6]
	mov r0, sp
	mov r2, sb
	strh r2, [r0, #8]
	adds r0, r5, #0
	bl TransformSprite
	mov r0, sp
	movs r3, #0
	strh r3, [r0]
	strh r4, [r0, #2]
	cmp r7, #9
	bgt _08056696
	mov r1, sp
	movs r0, #0xa
	strh r0, [r1, #2]
_08056696:
	mov r0, sp
	mov r1, r8
	strh r1, [r0, #4]
	mov r1, sp
	ldrh r0, [r0, #6]
	strh r0, [r1, #6]
	mov r0, sp
	mov r2, sb
	strh r2, [r0, #8]
	adds r0, r6, #0
	bl TransformSprite
_080566AE:
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	movs r0, #0xb5
	lsls r0, r0, #3
	cmp r1, r0
	ble _080566EC
	adds r0, #0xf
	cmp r1, r0
	ble _08056704
	bl m4aMPlayAllStop
	bl m4aSoundVSyncOff
	ldr r0, _080566D4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080566E8 @ =sub_8056AC8
	str r0, [r1, #8]
	b _08056704
	.align 2, 0
_080566D4: .4byte gCurTask
_080566D8: .4byte 0x0300003C
_080566DC: .4byte sa2__gUnknown_030054B8
_080566E0: .4byte 0xFFFFFA48
_080566E4: .4byte gSineTable
_080566E8: .4byte sub_8056AC8
_080566EC:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_08056704:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8056714
sub_8056714: @ 0x08056714
	push {r4, r5, r6, r7, lr}
	ldr r7, _08056760 @ =gCurTask
	ldr r0, [r7]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r4, #0x18]
	ldrh r0, [r4, #0xa]
	adds r0, #0xc
	movs r5, #0
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08056740
	strh r5, [r4, #0xa]
_08056740:
	ldr r0, _08056764 @ =gUnknown_086883F8
	adds r1, r4, #0
	bl sub_80530CC
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb5
	ble _0805675A
	ldr r1, [r7]
	ldr r0, _08056768 @ =Task_8056F80
	str r0, [r1, #8]
	strh r5, [r4, #0xa]
	str r5, [r4, #0x18]
_0805675A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08056760: .4byte gCurTask
_08056764: .4byte gUnknown_086883F8
_08056768: .4byte Task_8056F80

	thumb_func_start sub_805676C
sub_805676C: @ 0x0805676C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x1c
	ldr r0, _08056814 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldrh r7, [r6, #0x24]
	mov r1, sp
	movs r0, #0
	mov r8, r0
	movs r0, #0x5b
	strh r0, [r1, #0xc]
	movs r0, #6
	strh r0, [r1, #0x12]
	mov r0, sp
	mov r1, r8
	strh r1, [r0, #8]
	mov r1, sp
	movs r0, #4
	strh r0, [r1, #0x10]
	movs r2, #1
	movs r0, #1
	strh r0, [r1, #0xe]
	mov r0, sp
	strb r2, [r0, #0x16]
	lsls r4, r7, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0x78
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r0, #0x29
	subs r0, r0, r1
	add r5, sp, #0x18
	strb r0, [r5]
	adds r0, r4, #0
	movs r1, #0x78
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0x50
	ble _0805681C
	adds r0, r1, #0
	subs r0, #0x50
	mov r4, sp
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x74
	muls r0, r1, r0
	movs r1, #0x12
	bl __divsi3
	adds r0, #0x74
	strh r0, [r4, #0xa]
	ldrb r0, [r5]
	cmp r0, #0x1f
	bls _0805689E
	mov r0, sp
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	strh r1, [r0, #2]
	mov r3, r8
	strh r3, [r0, #4]
	mov r3, sp
	ldr r2, _08056818 @ =sa2__gUnknown_030054B8
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r3, #6]
	adds r0, r5, #0
	mov r1, sp
	bl sub_8052C84
	b _0805689E
	.align 2, 0
_08056814: .4byte gCurTask
_08056818: .4byte sa2__gUnknown_030054B8
_0805681C:
	cmp r1, #0x14
	ble _08056864
	subs r1, #0x14
	mov r2, sp
	lsls r1, r1, #0x10
	asrs r1, r1, #0xe
	ldr r3, _0805685C @ =0x000001F1
	adds r0, r3, #0
	subs r0, r0, r1
	strh r0, [r2]
	mov r1, sp
	strh r0, [r1, #2]
	mov r0, sp
	mov r1, r8
	strh r1, [r0, #4]
	mov r3, sp
	ldr r2, _08056860 @ =sa2__gUnknown_030054B8
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r3, #6]
	mov r1, sp
	movs r0, #0x68
	strh r0, [r1, #0xa]
	movs r0, #0x53
	strh r0, [r1, #0xc]
	adds r0, r5, #0
	bl sub_8052C84
	b _0805689E
	.align 2, 0
_0805685C: .4byte 0x000001F1
_08056860: .4byte sa2__gUnknown_030054B8
_08056864:
	mov r4, sp
	movs r0, #0x74
	muls r0, r1, r0
	movs r1, #0x14
	bl __divsi3
	strh r0, [r4, #0xa]
	ldrb r0, [r5]
	cmp r0, #0x1f
	bls _0805689E
	mov r0, sp
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	strh r1, [r0, #2]
	mov r3, r8
	strh r3, [r0, #4]
	mov r3, sp
	ldr r2, _08056918 @ =sa2__gUnknown_030054B8
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r3, #6]
	adds r0, r5, #0
	mov r1, sp
	bl sub_8052C84
_0805689E:
	lsls r0, r7, #0x10
	asrs r2, r0, #0x10
	ldr r0, _0805691C @ =0x000004AF
	cmp r2, r0
	ble _080568B0
	ldr r0, _08056920 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08056924 @ =Task_8056FD0
	str r0, [r1, #8]
_080568B0:
	ldr r5, _08056928 @ =gPressedKeys
	ldrh r1, [r5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080568F8
	adds r0, r2, #0
	movs r1, #0x78
	bl Div
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	asrs r2, r0, #0x10
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r1, r1, #0x13
	lsrs r7, r1, #0x10
	ldr r4, [r6, #0x1c]
	movs r3, #0x96
	lsls r3, r3, #3
	adds r0, r2, #0
	movs r1, #0xa
	subs r1, r1, r0
	lsls r2, r1, #4
	subs r2, r2, r1
	lsls r2, r2, #3
	subs r3, r3, r2
	str r3, [r4, #0x18]
	ldr r1, [r6, #0x20]
	ldr r0, _0805692C @ =0x00000566
	subs r0, r0, r2
	str r0, [r1, #0x18]
	ldr r1, [r6, #0x18]
	str r0, [r1, #0x78]
_080568F8:
	ldrh r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08056934
	ldr r0, _08056920 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08056930 @ =sub_8056970
	str r0, [r1, #8]
	movs r0, #0
	str r0, [r6, #0x24]
	ldr r1, [r6, #0x18]
	adds r1, #0x80
	movs r0, #1
	strb r0, [r1]
	b _08056940
	.align 2, 0
_08056918: .4byte sa2__gUnknown_030054B8
_0805691C: .4byte 0x000004AF
_08056920: .4byte gCurTask
_08056924: .4byte Task_8056FD0
_08056928: .4byte gPressedKeys
_0805692C: .4byte 0x00000566
_08056930: .4byte sub_8056970
_08056934:
	lsls r0, r7, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	asrs r0, r0, #0x10
	str r0, [r6, #0x24]
_08056940:
	ldr r0, [r6, #0x24]
	movs r1, #0x78
	bl Mod
	cmp r0, #0x3c
	bne _08056960
	ldr r4, _0805696C @ =gUnknown_086883E4
	ldr r0, [r6, #0x24]
	movs r1, #0x78
	bl Div
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	bl m4aSongNumStart
_08056960:
	add sp, #0x1c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805696C: .4byte gUnknown_086883E4

	thumb_func_start sub_8056970
sub_8056970: @ 0x08056970
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x1c
	ldr r0, _080569FC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldrh r0, [r6, #0x24]
	mov r8, r0
	mov r1, sp
	movs r7, #0
	movs r0, #0x54
	strh r0, [r1, #0xc]
	movs r0, #6
	strh r0, [r1, #0x12]
	mov r0, sp
	strh r7, [r0, #8]
	movs r0, #5
	strh r0, [r1, #0x10]
	movs r2, #1
	movs r0, #1
	strh r0, [r1, #0xe]
	mov r0, sp
	strb r2, [r0, #0x16]
	add r5, sp, #0x18
	movs r0, #0x20
	strb r0, [r5]
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0x50
	ble _08056A04
	adds r0, r1, #0
	subs r0, #0x50
	mov r4, sp
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x74
	muls r0, r1, r0
	movs r1, #0x12
	bl __divsi3
	adds r0, #0x74
	strh r0, [r4, #0xa]
	ldrb r0, [r5]
	cmp r0, #0x1f
	bls _08056A84
	mov r0, sp
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r7, [r0, #4]
	mov r3, sp
	ldr r2, _08056A00 @ =sa2__gUnknown_030054B8
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r3, #6]
	adds r0, r5, #0
	mov r1, sp
	bl sub_8052C84
	b _08056A84
	.align 2, 0
_080569FC: .4byte gCurTask
_08056A00: .4byte sa2__gUnknown_030054B8
_08056A04:
	cmp r1, #0x14
	ble _08056A4C
	subs r1, #0x14
	mov r2, sp
	lsls r1, r1, #0x10
	asrs r1, r1, #0xe
	ldr r3, _08056A44 @ =0x000001F1
	adds r0, r3, #0
	subs r0, r0, r1
	strh r0, [r2]
	mov r1, sp
	strh r0, [r1, #2]
	mov r0, sp
	strh r7, [r0, #4]
	mov r3, sp
	ldr r2, _08056A48 @ =sa2__gUnknown_030054B8
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r3, #6]
	mov r1, sp
	movs r0, #0x58
	strh r0, [r1, #0xa]
	movs r0, #0x44
	strh r0, [r1, #0xc]
	adds r0, r5, #0
	bl sub_8052C84
	b _08056A84
	.align 2, 0
_08056A44: .4byte 0x000001F1
_08056A48: .4byte sa2__gUnknown_030054B8
_08056A4C:
	mov r4, sp
	movs r0, #0x74
	muls r0, r1, r0
	movs r1, #0x14
	bl __divsi3
	strh r0, [r4, #0xa]
	ldrb r0, [r5]
	cmp r0, #0x1f
	bls _08056A84
	mov r0, sp
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r7, [r0, #4]
	mov r3, sp
	ldr r2, _08056AB8 @ =sa2__gUnknown_030054B8
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r3, #6]
	adds r0, r5, #0
	mov r1, sp
	bl sub_8052C84
_08056A84:
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0x77
	ble _08056AA2
	ldr r0, _08056ABC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08056AC0 @ =Task_8056FD0
	str r0, [r1, #8]
	ldr r1, [r6, #0x20]
	ldr r0, _08056AC4 @ =0x00000566
	str r0, [r1, #0x18]
	ldr r1, [r6, #0x18]
	adds r0, #0x52
	str r0, [r1, #0x78]
_08056AA2:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r6, #0x24]
	add sp, #0x1c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08056AB8: .4byte sa2__gUnknown_030054B8
_08056ABC: .4byte gCurTask
_08056AC0: .4byte Task_8056FD0
_08056AC4: .4byte 0x00000566

	thumb_func_start sub_8056AC8
sub_8056AC8: @ 0x08056AC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08056C14 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	str r0, [sp]
	ldr r2, _08056C18 @ =gMPlayTable
	ldr r0, _08056C1C @ =gSongTable
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r2, [r0]
	ldr r1, _08056C20 @ =gBldRegs
	movs r4, #0
	movs r0, #0xff
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	ldr r1, [r2, #4]
	ldr r7, _08056C24 @ =0x0000FFFF
	adds r0, r1, #0
	ands r0, r7
	cmp r0, #0
	beq _08056B10
	cmp r1, #0
	blt _08056B10
	b _08056C8E
_08056B10:
	bl m4aMPlayAllStop
	bl m4aSoundVSyncOff
	ldr r2, _08056C28 @ =gFlags
	ldr r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r1, r0
	ldr r0, _08056C2C @ =0x04000200
	mov r8, r0
	ldrh r0, [r0]
	str r0, [sp, #4]
	ldr r6, _08056C30 @ =0x04000208
	ldrh r0, [r6]
	mov sl, r0
	ldr r5, _08056C34 @ =0x04000004
	ldrh r2, [r5]
	mov sb, r2
	mov r0, r8
	strh r4, [r0]
	ldrh r0, [r0]
	strh r4, [r6]
	ldrh r0, [r6]
	strh r4, [r5]
	ldrh r0, [r5]
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	ldr r2, _08056C28 @ =gFlags
	str r1, [r2]
	ldr r1, _08056C38 @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r4, _08056C3C @ =0x0000C5FF
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r3, _08056C40 @ =0x00007FFF
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
	ldr r0, _08056C44 @ =0x040000D4
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
	mov r0, sp
	ldrh r1, [r0, #4]
	mov r0, r8
	strh r1, [r0]
	ldrh r0, [r0]
	mov r2, sl
	strh r2, [r6]
	ldrh r0, [r6]
	mov r0, sb
	strh r0, [r5]
	ldrh r0, [r5]
	bl m4aSoundVSyncOn
	ldr r1, _08056C28 @ =gFlags
	ldr r0, [r1]
	ldr r1, _08056C48 @ =0xFFFF7FFF
	ands r0, r1
	ldr r2, _08056C28 @ =gFlags
	str r0, [r2]
	ldr r2, _08056C4C @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08056C50 @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, [sp]
	ldr r2, _08056C54 @ =0x03000080
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08056C6C
	movs r0, #0
	adds r1, r7, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08056C58 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08056C5C @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _08056C60 @ =sa2__gUnknown_03005390
	movs r1, #0
	strb r1, [r0]
	ldr r1, _08056C64 @ =gVramGraphicsCopyCursor
	ldr r0, _08056C68 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl ApplyGameStageSettings
	b _08056C8E
	.align 2, 0
_08056C14: .4byte gCurTask
_08056C18: .4byte gMPlayTable
_08056C1C: .4byte gSongTable
_08056C20: .4byte gBldRegs
_08056C24: .4byte 0x0000FFFF
_08056C28: .4byte gFlags
_08056C2C: .4byte 0x04000200
_08056C30: .4byte 0x04000208
_08056C34: .4byte 0x04000004
_08056C38: .4byte 0x040000B0
_08056C3C: .4byte 0x0000C5FF
_08056C40: .4byte 0x00007FFF
_08056C44: .4byte 0x040000D4
_08056C48: .4byte 0xFFFF7FFF
_08056C4C: .4byte gDispCnt
_08056C50: .4byte 0x00001FFF
_08056C54: .4byte 0x03000080
_08056C58: .4byte gBackgroundsCopyQueueCursor
_08056C5C: .4byte gBackgroundsCopyQueueIndex
_08056C60: .4byte sa2__gUnknown_03005390
_08056C64: .4byte gVramGraphicsCopyCursor
_08056C68: .4byte gVramGraphicsCopyQueueIndex
_08056C6C:
	movs r0, #0
	adds r1, r7, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08056CA0 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08056CA4 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _08056CA8 @ =sa2__gUnknown_03005390
	movs r2, #0
	strb r2, [r0]
	ldr r1, _08056CAC @ =gVramGraphicsCopyCursor
	ldr r0, _08056CB0 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl CreateSegaLogo
_08056C8E:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08056CA0: .4byte gBackgroundsCopyQueueCursor
_08056CA4: .4byte gBackgroundsCopyQueueIndex
_08056CA8: .4byte sa2__gUnknown_03005390
_08056CAC: .4byte gVramGraphicsCopyCursor
_08056CB0: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start TaskDestructor_GameOverScreen
TaskDestructor_GameOverScreen: @ 0x08056CB4
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #4]
	bl VramFree
	ldr r0, [r4, #0x40]
	bl VramFree
	ldr r1, _08056CDC @ =gBldRegs
	movs r0, #0xff
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08056CDC: .4byte gBldRegs

	thumb_func_start sub_8056CE0
sub_8056CE0: @ 0x08056CE0
	push {r4, r5, lr}
	ldr r0, _08056D20 @ =gCurTask
	ldr r4, [r0]
	ldrh r2, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
	movs r1, #0x18
	ldrsh r0, [r2, r1]
	adds r0, #1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	str r1, [r2, #0x18]
	adds r0, r1, #0
	cmp r0, #0x77
	ble _08056D1A
	ldr r3, _08056D24 @ =gDispCnt
	ldrh r1, [r3]
	ldr r2, _08056D28 @ =0x00001FFF
	adds r0, r2, #0
	ands r0, r1
	movs r5, #0x80
	lsls r5, r5, #6
	adds r1, r5, #0
	orrs r0, r1
	ands r0, r2
	strh r0, [r3]
	ldr r0, _08056D2C @ =sub_8056D30
	str r0, [r4, #8]
_08056D1A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08056D20: .4byte gCurTask
_08056D24: .4byte gDispCnt
_08056D28: .4byte 0x00001FFF
_08056D2C: .4byte sub_8056D30

	thumb_func_start sub_8056D30
sub_8056D30: @ 0x08056D30
	push {r4, r5, r6, lr}
	ldr r6, _08056D74 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r5, r0
	ldrh r4, [r5, #0x18]
	adds r0, r5, #0
	bl sub_805423C
	ldr r2, _08056D78 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	lsls r4, r4, #0x10
	movs r0, #0x80
	lsls r0, r0, #9
	adds r4, r4, r0
	asrs r0, r4, #0x10
	str r0, [r5, #0x18]
	adds r4, r0, #0
	cmp r4, #0x87
	ble _08056D6C
	ldr r1, [r6]
	ldr r0, _08056D7C @ =sub_8056D80
	str r0, [r1, #8]
_08056D6C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08056D74: .4byte gCurTask
_08056D78: .4byte gDispCnt
_08056D7C: .4byte sub_8056D80

	thumb_func_start sub_8056D80
sub_8056D80: @ 0x08056D80
	push {r4, r5, r6, lr}
	ldr r6, _08056DC4 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r5, r0
	ldrh r4, [r5, #0x18]
	adds r0, r5, #0
	bl sub_805423C
	ldr r2, _08056DC8 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	lsls r4, r4, #0x10
	movs r0, #0x80
	lsls r0, r0, #9
	adds r4, r4, r0
	asrs r0, r4, #0x10
	str r0, [r5, #0x18]
	adds r4, r0, #0
	cmp r4, #0x97
	ble _08056DBC
	ldr r1, [r6]
	ldr r0, _08056DCC @ =sub_8056DD0
	str r0, [r1, #8]
_08056DBC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08056DC4: .4byte gCurTask
_08056DC8: .4byte gDispCnt
_08056DCC: .4byte sub_8056DD0

	thumb_func_start sub_8056DD0
sub_8056DD0: @ 0x08056DD0
	push {r4, r5, lr}
	ldr r5, _08056E14 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #0x18
	ldrsh r1, [r0, r2]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	str r1, [r0, #0x18]
	bl sub_80543A4
	ldr r2, _08056E18 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	lsls r4, r4, #0x10
	ldr r0, _08056E1C @ =0x05650000
	cmp r4, r0
	ble _08056E0C
	ldr r1, [r5]
	ldr r0, _08056E20 @ =sub_8056EC4
	str r0, [r1, #8]
_08056E0C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08056E14: .4byte gCurTask
_08056E18: .4byte gDispCnt
_08056E1C: .4byte 0x05650000
_08056E20: .4byte sub_8056EC4

	thumb_func_start sub_8056E24
sub_8056E24: @ 0x08056E24
	ldr r0, _08056E54 @ =gCurTask
	ldr r3, [r0]
	ldrh r2, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
	movs r1, #0x18
	ldrsh r0, [r2, r1]
	adds r0, #1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	str r1, [r2, #0x18]
	adds r0, r1, #0
	cmp r0, #0x77
	ble _08056E50
	ldr r2, _08056E58 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08056E5C @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08056E60 @ =sub_8056E64
	str r0, [r3, #8]
_08056E50:
	bx lr
	.align 2, 0
_08056E54: .4byte gCurTask
_08056E58: .4byte gDispCnt
_08056E5C: .4byte 0x00001FFF
_08056E60: .4byte sub_8056E64

	thumb_func_start sub_8056E64
sub_8056E64: @ 0x08056E64
	push {r4, r5, r6, r7, lr}
	ldr r7, _08056EB8 @ =gCurTask
	ldr r0, [r7]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r6, r0
	movs r0, #0x18
	ldrsh r4, [r6, r0]
	adds r0, r4, #0
	subs r0, #0x78
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xb
	movs r1, #0x60
	bl __divsi3
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	adds r0, r6, #0
	bl sub_805423C
	ldr r2, _08056EBC @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	adds r4, #1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	str r4, [r6, #0x18]
	cmp r5, #0x5f
	bls _08056EB0
	ldr r1, [r7]
	ldr r0, _08056EC0 @ =sub_8056F1C
	str r0, [r1, #8]
_08056EB0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08056EB8: .4byte gCurTask
_08056EBC: .4byte gDispCnt
_08056EC0: .4byte sub_8056F1C

	thumb_func_start sub_8056EC4
sub_8056EC4: @ 0x08056EC4
	push {r4, r5, lr}
	ldr r5, _08056F0C @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #0x18
	ldrsh r1, [r0, r2]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	str r1, [r0, #0x18]
	bl sub_805423C
	ldr r2, _08056F10 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, #0xe
	ldr r0, _08056F14 @ =0x000005C5
	cmp r4, r0
	ble _08056F04
	ldr r1, [r5]
	ldr r0, _08056F18 @ =sub_8056F1C
	str r0, [r1, #8]
_08056F04:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08056F0C: .4byte gCurTask
_08056F10: .4byte gDispCnt
_08056F14: .4byte 0x000005C5
_08056F18: .4byte sub_8056F1C

	thumb_func_start sub_8056F1C
sub_8056F1C: @ 0x08056F1C
	push {lr}
	ldr r0, _08056F2C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_08056F2C: .4byte gCurTask

	thumb_func_start TaskDestructor_8056F30
TaskDestructor_8056F30: @ 0x08056F30
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0xc]
	bl VramFree
	ldr r0, [r4, #0x14]
	bl VramFree
	ldr r0, [r4, #0x10]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Task_8056F54
Task_8056F54: @ 0x08056F54
	ldr r0, _08056F78 @ =gCurTask
	ldr r3, [r0]
	ldrh r2, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
	movs r1, #0x18
	ldrsh r0, [r2, r1]
	adds r0, #1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	str r1, [r2, #0x18]
	adds r0, r1, #0
	cmp r0, #0xa1
	ble _08056F76
	ldr r0, _08056F7C @ =sub_8056714
	str r0, [r3, #8]
_08056F76:
	bx lr
	.align 2, 0
_08056F78: .4byte gCurTask
_08056F7C: .4byte sub_8056714

	thumb_func_start Task_8056F80
Task_8056F80: @ 0x08056F80
	push {lr}
	ldr r0, _08056F98 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldr r0, _08056F9C @ =gUnknown_086883F8
	bl sub_80530CC
	pop {r0}
	bx r0
	.align 2, 0
_08056F98: .4byte gCurTask
_08056F9C: .4byte gUnknown_086883F8

	thumb_func_start Task_8056FA0
Task_8056FA0: @ 0x08056FA0
	ldr r0, _08056FC8 @ =gCurTask
	ldr r3, [r0]
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	movs r1, #0x24
	ldrsh r0, [r2, r1]
	adds r0, #1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	str r1, [r2, #0x24]
	adds r0, r1, #0
	cmp r0, #0xb5
	ble _08056FC6
	movs r0, #0
	str r0, [r2, #0x24]
	ldr r0, _08056FCC @ =sub_805676C
	str r0, [r3, #8]
_08056FC6:
	bx lr
	.align 2, 0
_08056FC8: .4byte gCurTask
_08056FCC: .4byte sub_805676C

	thumb_func_start Task_8056FD0
Task_8056FD0: @ 0x08056FD0
	push {lr}
	ldr r0, _08056FE0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_08056FE0: .4byte gCurTask

@ --- End of src/game/game_over.c ---
