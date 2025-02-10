.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ --- Start of src/game/multiplayer/indicators.c ---

	thumb_func_start CreateOpponentPositionIndicator
CreateOpponentPositionIndicator: @ 0x08015810
	push {r4, r5, lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _08015870 @ =sa2__Task_801951C
	ldr r2, _08015874 @ =0x00002001
	ldr r1, _08015878 @ =TaskDestructor_OpponentPositionIndicator
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	movs r1, #0
	strb r4, [r0]
	ldr r0, _0801587C @ =0x03000010
	adds r3, r2, r0
	subs r0, #0xc
	adds r5, r2, r0
	ldr r0, _08015880 @ =0x06012500
	str r0, [r3, #4]
	movs r0, #0x40
	strh r0, [r3, #0x1a]
	strh r1, [r3, #8]
	strh r1, [r3, #0x14]
	strh r1, [r3, #0x1c]
	ldr r0, _08015884 @ =0x03000031
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08015888 @ =0x03000032
	adds r1, r2, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _0801588C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _08015898
	ldr r0, _08015890 @ =gMultiplayerCharacters
	adds r0, r4, r0
	ldrb r1, [r0]
	ldr r4, _08015894 @ =0x03000035
	adds r0, r2, r4
	strb r1, [r0]
	b _0801589E
	.align 2, 0
_08015870: .4byte sa2__Task_801951C
_08015874: .4byte 0x00002001
_08015878: .4byte TaskDestructor_OpponentPositionIndicator
_0801587C: .4byte 0x03000010
_08015880: .4byte 0x06012500
_08015884: .4byte 0x03000031
_08015888: .4byte 0x03000032
_0801588C: .4byte gGameMode
_08015890: .4byte gMultiplayerCharacters
_08015894: .4byte 0x03000035
_08015898:
	ldr r1, _080158C8 @ =0x03000035
	adds r0, r2, r1
	strb r4, [r0]
_0801589E:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x28]
	ldr r0, _080158CC @ =0x00040060
	str r0, [r3, #0x10]
	movs r1, #0
	movs r2, #0
	ldr r0, _080158D0 @ =0x000002FF
	strh r0, [r3, #0xa]
	adds r0, r3, #0
	adds r0, #0x20
	strb r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #2]
	strh r0, [r5, #4]
	strh r2, [r5]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080158C8: .4byte 0x03000035
_080158CC: .4byte 0x00040060
_080158D0: .4byte 0x000002FF

	thumb_func_start sa2__Task_801951C
sa2__Task_801951C: @ 0x080158D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _0801596C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r0, r1, r3
	ldr r2, _08015970 @ =gMultiplayerPlayerTasks
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	adds r3, r4, r3
	ldr r0, _08015974 @ =0x03000010
	adds r0, r1, r0
	str r0, [sp]
	ldr r2, _08015978 @ =0x03000004
	adds r2, r2, r1
	mov sl, r2
	ldr r5, _0801597C @ =0x03000050
	adds r0, r4, r5
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r2, _08015980 @ =gCamera
	movs r5, #0
	ldrsh r0, [r2, r5]
	subs r1, r1, r0
	cmp r1, #0xf0
	bhi _08015932
	ldr r1, _08015984 @ =0x03000052
	adds r0, r4, r1
	movs r4, #0
	ldrsh r1, [r0, r4]
	movs r5, #2
	ldrsh r0, [r2, r5]
	subs r0, r1, r0
	cmp r0, #0
	blt _08015932
	cmp r0, #0xa0
	bgt _08015932
	b _08015C42
_08015932:
	adds r0, r3, #0
	adds r0, #0x50
	ldrh r0, [r0]
	subs r0, #0x78
	ldrh r1, [r2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r3, #0
	adds r0, #0x52
	ldrh r0, [r0]
	subs r0, #0x50
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r6, #0x10
	lsrs r1, r0, #0x10
	lsls r2, r5, #0x10
	lsrs r4, r2, #0x10
	ldr r7, [sp]
	adds r7, #0x22
	cmp r0, #0
	beq _080159D6
	cmp r2, #0
	beq _080159D6
	lsls r3, r4, #0x10
	b _080159BC
	.align 2, 0
_0801596C: .4byte gCurTask
_08015970: .4byte gMultiplayerPlayerTasks
_08015974: .4byte 0x03000010
_08015978: .4byte 0x03000004
_0801597C: .4byte 0x03000050
_08015980: .4byte gCamera
_08015984: .4byte 0x03000052
_08015988:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	lsrs r0, r0, #0x1f
	adds r2, r2, r0
	lsls r2, r2, #0xf
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1f
	adds r1, r1, r0
	lsls r1, r1, #0xf
	lsrs r4, r1, #0x10
	lsrs r1, r2, #0x10
	asrs r0, r2, #0x10
	cmp r0, #0
	bge _080159A8
	rsbs r0, r0, #0
_080159A8:
	cmp r0, #1
	ble _080159D6
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	adds r3, r0, #0
	cmp r2, #0
	bge _080159B8
	rsbs r2, r2, #0
_080159B8:
	cmp r2, #1
	ble _080159D6
_080159BC:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080159C6
	rsbs r0, r0, #0
_080159C6:
	cmp r0, #0x7f
	bgt _08015988
	asrs r0, r3, #0x10
	cmp r0, #0
	bge _080159D2
	rsbs r0, r0, #0
_080159D2:
	cmp r0, #0x7f
	bgt _08015988
_080159D6:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _080159E2
	rsbs r0, r1, #0
_080159E2:
	cmp r0, #1
	bgt _080159F6
	lsls r0, r4, #0x10
	movs r4, #0xc0
	lsls r4, r4, #2
	cmp r0, #0
	ble _08015A1A
	movs r4, #0x80
	lsls r4, r4, #1
	b _08015A1A
_080159F6:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r2, r0, #0
	cmp r0, #0
	bge _08015A02
	rsbs r2, r0, #0
_08015A02:
	cmp r2, #1
	bgt _08015A12
	movs r4, #0x80
	lsls r4, r4, #2
	cmp r1, #0
	ble _08015A1A
	movs r4, #0
	b _08015A1A
_08015A12:
	bl sa2__sub_8004418
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08015A1A:
	lsls r4, r4, #0x10
	asrs r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r2, _08015A50 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	mov r1, sl
	strh r0, [r1]
	lsls r3, r6, #0x10
	asrs r0, r3, #0x10
	adds r1, r0, #0
	muls r1, r0, r1
	lsls r2, r5, #0x10
	asrs r0, r2, #0x10
	adds r5, r0, #0
	muls r5, r0, r5
	adds r0, r5, #0
	adds r1, r1, r0
	ldr r0, _08015A54 @ =0x0000FFFF
	adds r5, r3, #0
	str r2, [sp, #4]
	cmp r1, r0
	bgt _08015A58
	movs r0, #0x18
	b _08015A5A
	.align 2, 0
_08015A50: .4byte 0x000003FF
_08015A54: .4byte 0x0000FFFF
_08015A58:
	movs r0, #0x10
_08015A5A:
	strb r0, [r7]
	movs r2, #0xc0
	lsls r2, r2, #0x13
	cmp r1, r2
	ble _08015A68
	movs r0, #0x40
	b _08015A96
_08015A68:
	ldr r0, _08015A7C @ =0x0000FFFF
	cmp r1, r0
	bgt _08015A80
	movs r0, #0xf0
	lsls r0, r0, #1
	mov r2, sl
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	b _08015A9C
	.align 2, 0
_08015A7C: .4byte 0x0000FFFF
_08015A80:
	subs r1, r2, r1
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #5
	ldr r1, _08015AA8 @ =0x000005FF
	bl Div
	adds r0, #0x40
_08015A96:
	mov r1, sl
	strh r0, [r1, #2]
	strh r0, [r1, #4]
_08015A9C:
	asrs r4, r4, #0x10
	cmp r4, #0
	bne _08015AAC
	movs r5, #0x50
_08015AA4:
	movs r0, #0xf0
	b _08015C0A
	.align 2, 0
_08015AA8: .4byte 0x000005FF
_08015AAC:
	movs r6, #0x80
	lsls r6, r6, #1
	cmp r4, r6
	bne _08015ABA
	movs r5, #0xa0
	movs r0, #0x78
	b _08015C0A
_08015ABA:
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r4, r0
	bne _08015AC6
	movs r5, #0x50
	b _08015C08
_08015AC6:
	movs r2, #0xc0
	lsls r2, r2, #2
	mov sb, r2
	cmp r4, sb
	bne _08015AD6
	movs r5, #0
	movs r0, #0x78
	b _08015C0A
_08015AD6:
	cmp r5, #0
	ble _08015B3C
	ldr r7, _08015B20 @ =gSineTable
	lsls r0, r4, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #8
	adds r1, r4, r6
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #4
	subs r1, r1, r0
	asrs r1, r1, #5
	adds r1, #0x50
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _08015B28
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	ble _08015AA4
	movs r5, #0xa0
	subs r1, r6, r4
	ldr r0, _08015B24 @ =0x000003FF
	ands r1, r0
	b _08015B8E
	.align 2, 0
_08015B20: .4byte gSineTable
_08015B24: .4byte 0x000003FF
_08015B28:
	lsls r0, r5, #0x10
	cmp r0, #0
	bge _08015AA4
	movs r5, #0
	subs r1, r6, r4
	ldr r0, _08015B38 @ =0x000003FF
	ands r1, r0
	b _08015BD8
	.align 2, 0
_08015B38: .4byte 0x000003FF
_08015B3C:
	ldr r7, _08015BBC @ =gSineTable
	ldr r2, _08015BC0 @ =0xFFFFFE00
	adds r1, r4, r2
	ldr r5, _08015BC4 @ =0x000003FF
	mov r8, r5
	ands r1, r5
	lsls r0, r1, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #8
	adds r1, r1, r6
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #4
	subs r1, r1, r0
	asrs r1, r1, #5
	movs r0, #0x50
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _08015BC8
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	ble _08015C08
	movs r5, #0xa0
	mov r2, sb
	subs r1, r2, r4
	mov r4, r8
	ands r1, r4
_08015B8E:
	lsls r0, r1, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #8
	adds r1, r1, r6
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	asrs r1, r1, #4
	adds r1, #0x78
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	b _08015C0A
	.align 2, 0
_08015BBC: .4byte gSineTable
_08015BC0: .4byte 0xFFFFFE00
_08015BC4: .4byte 0x000003FF
_08015BC8:
	lsls r0, r5, #0x10
	cmp r0, #0
	bge _08015C08
	movs r5, #0
	mov r0, sb
	subs r1, r0, r4
	mov r2, r8
	ands r1, r2
_08015BD8:
	lsls r0, r1, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #8
	adds r1, r1, r6
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	asrs r1, r1, #4
	movs r0, #0x78
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _08015C0A
_08015C08:
	movs r0, #0
_08015C0A:
	mov r4, sl
	strh r0, [r4, #6]
	strh r5, [r4, #8]
	ldr r5, [sp]
	ldr r0, [r5, #0x10]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	ldr r2, _08015C54 @ =sa2__gUnknown_030054B8
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r5, #0x10]
	orrs r0, r1
	str r0, [r5, #0x10]
	ldr r0, [sp]
	bl UpdateSpriteAnimation
	ldr r0, [sp]
	mov r1, sl
	bl TransformSprite
	ldr r0, [sp]
	bl DisplaySprite
_08015C42:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08015C54: .4byte sa2__gUnknown_030054B8

    thumb_func_start TaskDestructor_OpponentPositionIndicator
TaskDestructor_OpponentPositionIndicator:
	bx lr
    .align 2 , 0

@ --- End of src/game/multiplayer/indicators.c ---
