.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_BreakableWall
CreateEntity_BreakableWall: @ 0x08027970
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	adds r4, r1, #0
	adds r5, r2, #0
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _08027A60 @ =Task_Interactable114
	ldr r1, _08027A64 @ =TaskDestructor_Interactable114
	str r1, [sp]
	movs r1, #0x44
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r6, r0
	ldr r1, _08027A68 @ =0x0300000C
	adds r7, r6, r1
	movs r3, #0
	mov sl, r3
	movs r2, #0
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, sb
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #8]
	mov r3, r8
	strb r3, [r0, #9]
	movs r3, #2
	rsbs r3, r3, #0
	adds r1, r3, #0
	mov r3, sb
	strb r1, [r3]
	strh r2, [r0, #0x3c]
	ldrb r0, [r3]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r7, #0x16]
	ldrb r0, [r3, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r7, #0x18]
	movs r0, #0x20
	str r2, [sp, #4]
	bl VramMalloc
	str r0, [r7, #4]
	ldr r1, _08027A6C @ =gUnknown_080BB544
	ldr r0, _08027A70 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
	ldr r1, _08027A74 @ =0x0300002C
	adds r0, r6, r1
	mov r3, sl
	strb r3, [r0]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r7, #0x1a]
	ldr r2, [sp, #4]
	strh r2, [r7, #8]
	strh r2, [r7, #0x14]
	strh r2, [r7, #0x1c]
	ldr r0, _08027A78 @ =0x0300002D
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r3, _08027A7C @ =0x0300002E
	adds r1, r6, r3
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _08027A80 @ =0x03000031
	adds r6, r6, r0
	mov r1, sl
	strb r1, [r6]
	movs r3, #0x80
	lsls r3, r3, #6
	str r3, [r7, #0x10]
	mov r1, sb
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08027A4A
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r3
	str r0, [r7, #0x10]
_08027A4A:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08027A60: .4byte Task_Interactable114
_08027A64: .4byte TaskDestructor_Interactable114
_08027A68: .4byte 0x0300000C
_08027A6C: .4byte gUnknown_080BB544
_08027A70: .4byte gCurrentLevel
_08027A74: .4byte 0x0300002C
_08027A78: .4byte 0x0300002D
_08027A7C: .4byte 0x0300002E
_08027A80: .4byte 0x03000031

	thumb_func_start Task_Interactable114
Task_Interactable114: @ 0x08027A84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _08027AD8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r0, r0, r1
	mov sb, r0
	ldr r1, [r6]
	str r1, [sp, #0xc]
	ldrb r0, [r6, #8]
	lsls r0, r0, #3
	ldrh r1, [r6, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	ldr r2, [sp, #0xc]
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	ldrh r1, [r6, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r5, #0
	ldr r4, _08027ADC @ =gUnknown_03005AB0
	mov r8, r4
	movs r0, #8
	mov sl, r0
	ldr r7, _08027AE0 @ =gPlayer
	b _08027AF4
	.align 2, 0
_08027AD8: .4byte gCurTask
_08027ADC: .4byte gUnknown_03005AB0
_08027AE0: .4byte gPlayer
_08027AE4:
	adds r5, #1
	ldr r0, _08027B1C @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	blt _08027AF4
	b _08027CE0
_08027AF4:
	ldr r0, _08027B20 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _08027BA4
	ldr r2, [sp, #0xc]
	movs r1, #0
	ldrsb r1, [r2, r1]
	movs r0, #3
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08027BA4
	cmp r5, #0
	beq _08027B24
	mov r4, r8
	ldr r0, [r4, #0x10]
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	bne _08027B2E
	b _08027B78
	.align 2, 0
_08027B1C: .4byte gUnknown_03005088
_08027B20: .4byte gGameMode
_08027B24:
	ldr r0, [r7, #0x10]
	mov r2, sl
	ands r0, r2
	cmp r0, #0
	beq _08027B78
_08027B2E:
	cmp r5, #0
	beq _08027B3C
	mov r4, r8
	ldr r0, [r4, #0x28]
	cmp r0, sb
	beq _08027B42
	b _08027B78
_08027B3C:
	ldr r0, [r7, #0x28]
	cmp r0, sb
	bne _08027B78
_08027B42:
	cmp r5, #0
	beq _08027B54
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r2, #9
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r1, #0x10]
	b _08027B5E
_08027B54:
	ldr r0, [r7, #0x10]
	movs r4, #9
	rsbs r4, r4, #0
	ands r0, r4
	str r0, [r7, #0x10]
_08027B5E:
	cmp r5, #0
	beq _08027B70
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #2
	orrs r0, r1
	mov r2, r8
	str r0, [r2, #0x10]
	b _08027B78
_08027B70:
	ldr r0, [r7, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r7, #0x10]
_08027B78:
	movs r0, #0
	strh r0, [r6, #0x3c]
	strh r0, [r6, #0x3e]
	ldr r0, _08027B9C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08027BA0 @ =sub_8027D88
	str r0, [r1, #8]
	movs r0, #0xad
	bl m4aSongNumStart
	ldr r4, [sp, #4]
	lsls r4, r4, #0x10
	str r4, [sp, #0x10]
	ldr r0, [sp, #8]
	lsls r0, r0, #0x10
	str r0, [sp, #0x14]
	b _08027AE4
	.align 2, 0
_08027B9C: .4byte gCurTask
_08027BA0: .4byte sub_8027D88
_08027BA4:
	ldr r2, [sp, #4]
	lsls r1, r2, #0x10
	asrs r3, r1, #0x10
	ldr r4, [sp, #8]
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	ldr r4, _08027BF0 @ =gPlayer
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	cmp r5, #0
	beq _08027BBC
	ldr r4, _08027BF4 @ =gUnknown_03005AB0
_08027BBC:
	movs r0, #1
	str r0, [sp]
	mov r0, sb
	adds r1, r3, #0
	adds r3, r4, #0
	bl sub_800AFDC
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _08027AE4
	movs r0, #0xad
	bl m4aSongNumStart
	ldr r0, _08027BF8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08027BFC @ =sub_8027D88
	str r0, [r1, #8]
	movs r0, #0
	strh r0, [r6, #0x3c]
	cmp r5, #0
	beq _08027C00
	mov r2, r8
	movs r4, #8
	ldrsh r0, [r2, r4]
	b _08027C04
	.align 2, 0
_08027BF0: .4byte gPlayer
_08027BF4: .4byte gUnknown_03005AB0
_08027BF8: .4byte gCurTask
_08027BFC: .4byte sub_8027D88
_08027C00:
	movs r1, #8
	ldrsh r0, [r7, r1]
_08027C04:
	lsrs r0, r0, #1
	strh r0, [r6, #0x3e]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08027C36
	ldr r2, [sp, #0x10]
	asrs r1, r2, #0x10
	cmp r5, #0
	beq _08027C22
	mov r4, r8
	ldr r0, [r4]
	asrs r0, r0, #8
	cmp r1, r0
	blt _08027C2A
	b _08027C30
_08027C22:
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08027C30
_08027C2A:
	movs r0, #0xff
	lsls r0, r0, #8
	b _08027C34
_08027C30:
	movs r0, #0x80
	lsls r0, r0, #1
_08027C34:
	strh r0, [r6, #0x3e]
_08027C36:
	cmp r5, #0
	beq _08027C48
	mov r1, r8
	ldr r0, [r1, #0x10]
	mov r2, sl
	ands r0, r2
	cmp r0, #0
	bne _08027C52
	b _08027C9A
_08027C48:
	ldr r0, [r7, #0x10]
	mov r4, sl
	ands r0, r4
	cmp r0, #0
	beq _08027C9A
_08027C52:
	cmp r5, #0
	beq _08027C60
	mov r1, r8
	ldr r0, [r1, #0x28]
	cmp r0, sb
	beq _08027C66
	b _08027C9A
_08027C60:
	ldr r0, [r7, #0x28]
	cmp r0, sb
	bne _08027C9A
_08027C66:
	cmp r5, #0
	beq _08027C78
	mov r2, r8
	ldr r0, [r2, #0x10]
	movs r4, #9
	rsbs r4, r4, #0
	ands r0, r4
	str r0, [r2, #0x10]
	b _08027C82
_08027C78:
	ldr r0, [r7, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
_08027C82:
	cmp r5, #0
	beq _08027C92
	mov r2, r8
	ldr r0, [r2, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x10]
	b _08027C9A
_08027C92:
	ldr r0, [r7, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r7, #0x10]
_08027C9A:
	ldr r0, _08027D5C @ =gUnknown_03005088
	movs r3, #0
	ldrsb r3, [r0, r3]
	cmp r3, #2
	bne _08027CC2
	ldr r2, _08027D60 @ =gUnknown_03005AB0
	ldr r1, [r2, #0x10]
	adds r0, r1, #0
	mov r4, sl
	ands r0, r4
	cmp r0, #0
	beq _08027CC2
	ldr r0, [r2, #0x28]
	cmp r0, sb
	bne _08027CC2
	movs r5, #9
	rsbs r5, r5, #0
	ands r1, r5
	orrs r1, r3
	str r1, [r2, #0x10]
_08027CC2:
	ldr r0, _08027D64 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _08027CE0
	bl sub_80182FC
	movs r2, #1
	strb r2, [r0]
	ldrh r1, [r6, #4]
	strb r1, [r0, #1]
	ldrh r1, [r6, #6]
	strb r1, [r0, #2]
	ldrb r1, [r6, #9]
	strb r1, [r0, #3]
	strb r2, [r0, #4]
_08027CE0:
	ldr r4, _08027D68 @ =gCamera
	ldrh r0, [r4]
	ldr r2, [sp, #0x10]
	asrs r1, r2, #0x10
	subs r0, r1, r0
	mov r5, sb
	strh r0, [r5, #0x16]
	ldrh r0, [r4, #2]
	ldr r2, [sp, #0x14]
	asrs r3, r2, #0x10
	subs r0, r3, r0
	strh r0, [r5, #0x18]
	movs r5, #0
	ldrsh r2, [r4, r5]
	movs r5, #0xb8
	lsls r5, r5, #1
	adds r0, r2, r5
	cmp r1, r0
	bgt _08027D24
	adds r0, r2, #0
	subs r0, #0x80
	cmp r1, r0
	blt _08027D24
	movs r0, #2
	ldrsh r1, [r4, r0]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r3, r0
	bgt _08027D24
	adds r0, r1, #0
	subs r0, #0x80
	cmp r3, r0
	bge _08027D70
_08027D24:
	mov r4, sb
	ldrh r0, [r4, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08027D4A
	movs r5, #0x18
	ldrsh r0, [r4, r5]
	adds r0, #0x80
	cmp r0, #0
	blt _08027D4A
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08027D70
_08027D4A:
	ldrb r0, [r6, #8]
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	ldr r0, _08027D6C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08027D76
	.align 2, 0
_08027D5C: .4byte gUnknown_03005088
_08027D60: .4byte gUnknown_03005AB0
_08027D64: .4byte gGameMode
_08027D68: .4byte gCamera
_08027D6C: .4byte gCurTask
_08027D70:
	mov r0, sb
	bl DisplaySprite
_08027D76:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8027D88
sub_8027D88: @ 0x08027D88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r4, _08027E18 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r7, r1, r0
	ldr r1, [r6]
	str r1, [sp]
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _08027E1C @ =gCamera
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	adds r0, #0xa0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r7, #0x16]
	ldrh r0, [r3, #2]
	subs r1, r1, r0
	strh r1, [r7, #0x18]
	ldrh r0, [r6, #0x3c]
	adds r0, #1
	strh r0, [r6, #0x3c]
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r3, #0xb8
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r2, r0
	bgt _08027DFA
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _08027E20
_08027DFA:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bls _08027E20
	ldrb r0, [r6, #8]
	ldr r1, [sp]
	strb r0, [r1]
	ldr r0, [r4]
	bl TaskDestroy
	b _08028002
	.align 2, 0
_08027E18: .4byte gCurTask
_08027E1C: .4byte gCamera
_08027E20:
	ldr r0, _08027E68 @ =gRefSpriteTables
	ldr r1, [r0]
	ldrh r0, [r7, #0xa]
	ldr r1, [r1, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r7, #0xc]
	ldrb r1, [r0, #1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, r2, r0
	str r2, [sp, #8]
	movs r2, #0
	str r2, [sp, #4]
_08027E40:
	movs r3, #0
	mov sl, r3
	ldr r4, [sp, #4]
	lsls r4, r4, #2
	str r4, [sp, #0x10]
_08027E4A:
	ldr r1, [r7, #0x10]
	adds r0, r1, #0
	movs r2, #0x80
	lsls r2, r2, #3
	ands r0, r2
	adds r2, r1, #0
	cmp r0, #0
	beq _08027E6C
	movs r0, #3
	mov r3, sl
	subs r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	b _08027E6E
	.align 2, 0
_08027E68: .4byte gRefSpriteTables
_08027E6C:
	mov sb, sl
_08027E6E:
	movs r4, #0x3e
	ldrsh r0, [r6, r4]
	ldrh r3, [r6, #0x3e]
	cmp r0, #0
	blt _08027E7C
	mov r1, sl
	b _08027E86
_08027E7C:
	movs r0, #3
	mov r1, sl
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_08027E86:
	ldr r0, [sp, #0x10]
	add r0, sb
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldrh r1, [r6, #0x3c]
	subs r1, r1, r0
	movs r0, #7
	ldr r4, [sp, #4]
	subs r0, r0, r4
	lsls r0, r0, #1
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	ble _08027F38
	movs r0, #0x2a
	muls r0, r1, r0
	ldr r4, _08027EEC @ =0xFFFFFE00
	adds r0, r0, r4
	muls r0, r1, r0
	lsls r0, r0, #8
	lsrs r5, r0, #0x10
	lsls r0, r3, #0x10
	movs r4, #0x3e
	ldrsh r0, [r6, r4]
	muls r0, r1, r0
	lsls r0, r0, #8
	lsrs r4, r0, #0x10
	lsls r0, r5, #0x10
	mov ip, r0
	ldr r1, [sp, #0xc]
	lsls r0, r1, #0x10
	cmp ip, r0
	ble _08027F3C
	lsls r0, r3, #0x10
	cmp r0, #0
	blt _08027EF8
	movs r3, #0x80
	lsls r3, r3, #3
	ands r2, r3
	cmp r2, #0
	beq _08027EF0
	mov r4, r8
	cmp r4, #3
	beq _08027EEA
	b _08027FE2
_08027EEA:
	b _08027F08
	.align 2, 0
_08027EEC: .4byte 0xFFFFFE00
_08027EF0:
	mov r3, r8
	cmp r3, #0
	bne _08027FE2
	b _08027F22
_08027EF8:
	movs r3, #0x80
	lsls r3, r3, #3
	ands r2, r3
	cmp r2, #0
	beq _08027F1C
	mov r4, r8
	cmp r4, #0
	bne _08027FE2
_08027F08:
	ldrb r0, [r6, #8]
	ldr r1, [sp]
	strb r0, [r1]
	ldr r2, _08027F18 @ =gCurTask
	ldr r0, [r2]
	bl TaskDestroy
	b _08028002
	.align 2, 0
_08027F18: .4byte gCurTask
_08027F1C:
	mov r3, r8
	cmp r3, #3
	bne _08027FE2
_08027F22:
	ldrb r0, [r6, #8]
	ldr r4, [sp]
	strb r0, [r4]
	ldr r1, _08027F34 @ =gCurTask
	ldr r0, [r1]
	bl TaskDestroy
	b _08028002
	.align 2, 0
_08027F34: .4byte gCurTask
_08027F38:
	movs r4, #0
	movs r5, #0
_08027F3C:
	ldrh r0, [r7, #0x1a]
	movs r2, #0xf8
	lsls r2, r2, #3
	adds r1, r2, #0
	ands r0, r1
	lsrs r0, r0, #6
	bl OamMalloc
	adds r3, r0, #0
	ldr r0, _08027F98 @ =iwram_end
	ldr r0, [r0]
	cmp r0, r3
	beq _08028002
	ldr r0, [sp, #4]
	lsls r1, r0, #3
	ldrh r2, [r7, #0x18]
	adds r1, r1, r2
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	movs r1, #0
	strh r0, [r3]
	ldr r0, [r7, #0x10]
	movs r2, #0x80
	lsls r2, r2, #3
	ands r0, r2
	cmp r0, #0
	beq _08027FA0
	mov r1, sb
	lsls r0, r1, #3
	ldrh r1, [r7, #0x16]
	subs r1, r1, r0
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, #8
	adds r1, r1, r0
	ldr r2, _08027F9C @ =0x000001FF
	adds r0, r2, #0
	ands r1, r0
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	orrs r1, r0
	b _08027FB4
	.align 2, 0
_08027F98: .4byte iwram_end
_08027F9C: .4byte 0x000001FF
_08027FA0:
	mov r1, sb
	lsls r0, r1, #3
	ldrh r2, [r7, #0x16]
	adds r0, r0, r2
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	ldr r4, _08028014 @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
_08027FB4:
	strh r1, [r3, #2]
	adds r0, r7, #0
	adds r0, #0x25
	ldrb r0, [r0]
	ldr r1, [sp, #8]
	ldrh r2, [r1, #4]
	adds r2, r2, r0
	ldr r4, _08028018 @ =0xFFFFF000
	adds r0, r4, #0
	ands r2, r0
	ldr r0, [r7, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #6
	ands r0, r1
	lsrs r0, r0, #2
	orrs r2, r0
	ldr r0, [r7, #4]
	ldr r1, _0802801C @ =0xF9FF0000
	adds r0, r0, r1
	lsrs r0, r0, #5
	add r0, r8
	orrs r2, r0
	strh r2, [r3, #4]
_08027FE2:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #3
	bhi _08027FF2
	b _08027E4A
_08027FF2:
	ldr r0, [sp, #4]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	cmp r0, #7
	bhi _08028002
	b _08027E40
_08028002:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028014: .4byte 0x000001FF
_08028018: .4byte 0xFFFFF000
_0802801C: .4byte 0xF9FF0000

	thumb_func_start TaskDestructor_Interactable114
TaskDestructor_Interactable114: @ 0x08028020
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0
