.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Waterfall
CreateEntity_Waterfall: @ 0x08075AF0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	ldr r0, _08075B10 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	cmp r0, #4
	bne _08075B18
	ldr r0, _08075B14 @ =Task_Waterfall1
	b _08075B1A
	.align 2, 0
_08075B10: .4byte gCurrentLevel
_08075B14: .4byte Task_Waterfall1
_08075B18:
	ldr r0, _08075BE0 @ =Task_Waterfall0
_08075B1A:
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08075BE4 @ =TaskDestructor_Waterfall
	str r1, [sp]
	movs r1, #0x3f
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r0, [r2, #6]
	ldr r1, _08075BE8 @ =0x03000034
	adds r0, r0, r1
	strh r4, [r0]
	ldrh r0, [r2, #6]
	adds r1, #2
	adds r0, r0, r1
	strh r5, [r0]
	ldrh r0, [r2, #6]
	adds r1, #2
	adds r0, r0, r1
	movs r6, #0
	strh r6, [r0]
	ldrh r0, [r2, #6]
	adds r1, #2
	adds r0, r0, r1
	strh r6, [r0]
	ldrh r0, [r2, #6]
	adds r0, r0, r1
	strh r6, [r0]
	ldrh r0, [r2, #6]
	adds r0, r0, r1
	strh r6, [r0]
	ldrh r0, [r2, #6]
	subs r1, #0x3a
	adds r0, r0, r1
	str r7, [r0]
	ldrh r4, [r2, #6]
	ldr r0, _08075BEC @ =0x03000004
	adds r5, r4, r0
	adds r1, #0x3d
	adds r0, r4, r1
	strb r6, [r0]
	ldrh r0, [r2, #6]
	adds r1, #1
	adds r0, r0, r1
	strb r6, [r0]
	ldrh r0, [r2, #6]
	ldr r2, _08075BF0 @ =0x0300003C
	adds r0, r0, r2
	ldrb r1, [r7]
	strb r1, [r0]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	movs r0, #0x12
	bl VramMalloc
	str r0, [r5, #4]
	movs r1, #0
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r5, #0x1a]
	strh r1, [r5, #8]
	ldr r2, _08075BF4 @ =gUnknown_086CED28
	ldr r0, _08075BF8 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r5, #0xa]
	ldr r2, _08075BFC @ =0x03000024
	adds r0, r4, r2
	strb r6, [r0]
	strh r1, [r5, #0x14]
	strh r1, [r5, #0x1c]
	ldr r0, _08075C00 @ =0x03000025
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	adds r2, #2
	adds r1, r4, r2
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _08075C04 @ =0x03000029
	adds r4, r4, r0
	strb r6, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08075BE0: .4byte Task_Waterfall0
_08075BE4: .4byte TaskDestructor_Waterfall
_08075BE8: .4byte 0x03000034
_08075BEC: .4byte 0x03000004
_08075BF0: .4byte 0x0300003C
_08075BF4: .4byte gUnknown_086CED28
_08075BF8: .4byte gCurrentLevel
_08075BFC: .4byte 0x03000024
_08075C00: .4byte 0x03000025
_08075C04: .4byte 0x03000029

	thumb_func_start Task_Waterfall0
Task_Waterfall0: @ 0x08075C08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _08075CC4 @ =gCurTask
	mov ip, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	ldr r0, [r0]
	mov sb, r0
	ldr r2, _08075CC8 @ =0x0300003C
	adds r0, r1, r2
	ldrb r0, [r0]
	mov sl, r0
	ldr r3, _08075CCC @ =0x03000034
	adds r0, r1, r3
	ldrh r2, [r0]
	ldr r4, _08075CD0 @ =0x03000036
	adds r0, r1, r4
	ldrh r3, [r0]
	ldr r0, _08075CD4 @ =0x03000004
	adds r0, r0, r1
	mov r8, r0
	adds r4, #7
	adds r0, r1, r4
	ldrb r0, [r0]
	str r0, [sp, #8]
	ldr r0, _08075CD8 @ =0x0300003E
	adds r1, r1, r0
	ldrb r1, [r1]
	str r1, [sp, #0xc]
	mov r4, sl
	lsls r1, r4, #3
	lsls r2, r2, #8
	adds r1, r1, r2
	mov r2, sb
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	lsls r3, r3, #8
	adds r0, r0, r3
	ldr r2, _08075CDC @ =gCamera
	ldrh r5, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r5
	ldrh r2, [r2, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	movs r3, #0x80
	lsls r3, r3, #0x10
	adds r1, r1, r3
	movs r0, #0xf8
	lsls r0, r0, #0x11
	mov r7, ip
	cmp r1, r0
	bhi _08075CA4
	ldr r1, [sp, #4]
	lsls r0, r1, #0x10
	asrs r3, r0, #0x10
	adds r0, r3, #0
	adds r0, #0x80
	cmp r0, #0
	blt _08075CA4
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r3, r0
	ble _08075D28
_08075CA4:
	movs r4, #0
	ldr r6, _08075CE0 @ =gPartner
	ldr r5, _08075CE4 @ =gPlayer
_08075CAA:
	ldr r0, [r7]
	ldrh r0, [r0, #6]
	adds r0, r4, r0
	ldr r2, _08075CE8 @ =0x0300003A
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #1
	bne _08075D02
	cmp r4, #0
	beq _08075CEC
	movs r3, #0xa
	ldrsh r0, [r6, r3]
	b _08075CF0
	.align 2, 0
_08075CC4: .4byte gCurTask
_08075CC8: .4byte 0x0300003C
_08075CCC: .4byte 0x03000034
_08075CD0: .4byte 0x03000036
_08075CD4: .4byte 0x03000004
_08075CD8: .4byte 0x0300003E
_08075CDC: .4byte gCamera
_08075CE0: .4byte gPartner
_08075CE4: .4byte gPlayer
_08075CE8: .4byte 0x0300003A
_08075CEC:
	movs r1, #0xa
	ldrsh r0, [r5, r1]
_08075CF0:
	movs r1, #2
	bl Div
	cmp r4, #0
	beq _08075CFE
	strh r0, [r6, #0xa]
	b _08075D00
_08075CFE:
	strh r0, [r5, #0xa]
_08075D00:
	ldr r7, _08075D20 @ =gCurTask
_08075D02:
	adds r4, #1
	ldr r0, _08075D24 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _08075CAA
	mov r3, sl
	mov r2, sb
	strb r3, [r2]
	ldr r0, [r7]
	bl TaskDestroy
	b _08075ED4
	.align 2, 0
_08075D20: .4byte gCurTask
_08075D24: .4byte gNumSingleplayerCharacters
_08075D28:
	adds r0, r4, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	adds r0, r3, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	movs r5, #0
	ldr r7, _08075D50 @ =gPartner
	ldr r6, _08075D54 @ =gPlayer
	movs r4, #0x80
	mov sl, r4
_08075D42:
	cmp r5, #0
	beq _08075D58
	ldr r0, [r7, #0x10]
	mov r1, sl
	ands r0, r1
	b _08075D5E
	.align 2, 0
_08075D50: .4byte gPartner
_08075D54: .4byte gPlayer
_08075D58:
	ldr r0, [r6, #0x10]
	mov r2, sl
	ands r0, r2
_08075D5E:
	cmp r0, #0
	beq _08075D64
	b _08075EA6
_08075D64:
	ldr r3, [sp]
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	adds r1, r0, #0
	cmp r5, #0
	beq _08075D7A
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08075D84
	b _08075E84
_08075D7A:
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08075D84
	b _08075E84
_08075D84:
	asrs r1, r1, #0x10
	mov r4, sb
	ldrb r0, [r4, #5]
	lsls r0, r0, #3
	adds r1, r1, r0
	cmp r5, #0
	beq _08075D9C
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08075DA4
	b _08075E84
_08075D9C:
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r1, r0
	blt _08075E84
_08075DA4:
	ldr r0, [sp, #4]
	lsls r3, r0, #0x10
	asrs r2, r3, #0x10
	mov r4, sb
	movs r1, #4
	ldrsb r1, [r4, r1]
	lsls r0, r1, #3
	adds r2, r2, r0
	adds r4, r3, #0
	adds r3, r1, #0
	cmp r5, #0
	beq _08075DC6
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08075DCE
	b _08075E84
_08075DC6:
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	cmp r2, r0
	bgt _08075E84
_08075DCE:
	asrs r1, r4, #0x10
	lsls r0, r3, #3
	adds r1, r1, r0
	mov r2, sb
	ldrb r0, [r2, #6]
	lsls r0, r0, #3
	adds r1, r1, r0
	cmp r5, #0
	beq _08075DEA
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08075DF2
	b _08075E84
_08075DEA:
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	cmp r1, r0
	blt _08075E84
_08075DF2:
	bl sub_80549FC
	cmp r0, #0
	bne _08075E22
	cmp r5, #0
	beq _08075E06
	ldr r0, [r7, #0x10]
	mov r3, sl
	ands r0, r3
	b _08075E0C
_08075E06:
	ldr r0, [r6, #0x10]
	mov r4, sl
	ands r0, r4
_08075E0C:
	cmp r0, #0
	bne _08075E22
	cmp r5, #0
	beq _08075E1C
	ldrh r0, [r7, #0xa]
	adds r0, #0x10
	strh r0, [r7, #0xa]
	b _08075E22
_08075E1C:
	ldrh r0, [r6, #0xa]
	adds r0, #0x10
	strh r0, [r6, #0xa]
_08075E22:
	ldr r0, _08075E34 @ =gCamera
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r5, #0
	beq _08075E38
	ldr r0, [r7]
	b _08075E3A
	.align 2, 0
_08075E34: .4byte gCamera
_08075E38:
	ldr r0, [r6]
_08075E3A:
	asrs r0, r0, #8
	subs r0, r0, r1
	mov r3, r8
	strh r0, [r3, #0x16]
	movs r4, #2
	ldrsh r1, [r2, r4]
	cmp r5, #0
	beq _08075E4E
	ldr r0, [r7, #4]
	b _08075E50
_08075E4E:
	ldr r0, [r6, #4]
_08075E50:
	asrs r0, r0, #8
	subs r0, r0, r1
	adds r0, #0xa
	mov r1, r8
	strh r0, [r1, #0x18]
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, r8
	bl DisplaySprite
	ldr r2, _08075E78 @ =gCurTask
	ldr r0, [r2]
	ldrh r0, [r0, #6]
	adds r0, r5, r0
	ldr r3, _08075E7C @ =0x0300003A
	adds r1, r0, r3
	ldr r4, _08075E80 @ =0x03000038
	adds r0, r0, r4
	b _08075EA2
	.align 2, 0
_08075E78: .4byte gCurTask
_08075E7C: .4byte 0x0300003A
_08075E80: .4byte 0x03000038
_08075E84:
	ldr r1, _08075EE4 @ =gCurTask
	ldr r0, [r1]
	ldrh r1, [r0, #6]
	adds r1, r5, r1
	ldr r2, _08075EE8 @ =0x03000038
	adds r1, r1, r2
	movs r0, #0
	strb r0, [r1]
	ldr r3, _08075EE4 @ =gCurTask
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	adds r0, r5, r0
	ldr r4, _08075EEC @ =0x0300003A
	adds r1, r0, r4
	adds r0, r0, r2
_08075EA2:
	ldrb r0, [r0]
	strb r0, [r1]
_08075EA6:
	adds r5, #1
	ldr r0, _08075EF0 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	bge _08075EB6
	b _08075D42
_08075EB6:
	ldr r1, _08075EE4 @ =gCurTask
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	ldr r2, _08075EF4 @ =0x0300003D
	adds r0, r0, r2
	mov r3, sp
	ldrb r3, [r3, #8]
	strb r3, [r0]
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	ldr r4, _08075EF8 @ =0x0300003E
	adds r0, r0, r4
	mov r1, sp
	ldrb r1, [r1, #0xc]
	strb r1, [r0]
_08075ED4:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08075EE4: .4byte gCurTask
_08075EE8: .4byte 0x03000038
_08075EEC: .4byte 0x0300003A
_08075EF0: .4byte gNumSingleplayerCharacters
_08075EF4: .4byte 0x0300003D
_08075EF8: .4byte 0x0300003E

	thumb_func_start Task_Waterfall1
Task_Waterfall1: @ 0x08075EFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _08075FB0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	ldr r0, [r0]
	mov sl, r0
	ldr r2, _08075FB4 @ =0x0300003C
	adds r0, r1, r2
	ldrb r7, [r0]
	ldr r3, _08075FB8 @ =0x03000034
	adds r0, r1, r3
	ldrh r2, [r0]
	ldr r4, _08075FBC @ =0x03000036
	adds r0, r1, r4
	ldrh r3, [r0]
	ldr r0, _08075FC0 @ =0x03000004
	adds r0, r1, r0
	str r0, [sp, #8]
	adds r4, #7
	adds r0, r1, r4
	ldrb r0, [r0]
	mov r8, r0
	ldr r0, _08075FC4 @ =0x0300003E
	adds r1, r1, r0
	ldrb r1, [r1]
	str r1, [sp, #0xc]
	lsls r1, r7, #3
	lsls r2, r2, #8
	adds r1, r1, r2
	mov r2, sl
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	lsls r3, r3, #8
	adds r0, r0, r3
	ldr r2, _08075FC8 @ =gCamera
	ldrh r5, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r5
	ldrh r2, [r2, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	movs r3, #0x80
	lsls r3, r3, #0x10
	adds r1, r1, r3
	movs r0, #0xf8
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _08075F90
	ldr r1, [sp, #4]
	lsls r0, r1, #0x10
	asrs r3, r0, #0x10
	adds r0, r3, #0
	adds r0, #0x80
	cmp r0, #0
	blt _08075F90
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r3, r0
	ble _08076024
_08075F90:
	movs r4, #0
	ldr r6, _08075FCC @ =gPartner
	ldr r5, _08075FD0 @ =gPlayer
_08075F96:
	ldr r0, _08075FB0 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r2, _08075FD4 @ =0x0300003A
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r0, #1
	bne _08075FEC
	cmp r4, #0
	beq _08075FD8
	movs r3, #0xa
	ldrsh r0, [r6, r3]
	b _08075FDC
	.align 2, 0
_08075FB0: .4byte gCurTask
_08075FB4: .4byte 0x0300003C
_08075FB8: .4byte 0x03000034
_08075FBC: .4byte 0x03000036
_08075FC0: .4byte 0x03000004
_08075FC4: .4byte 0x0300003E
_08075FC8: .4byte gCamera
_08075FCC: .4byte gPartner
_08075FD0: .4byte gPlayer
_08075FD4: .4byte 0x0300003A
_08075FD8:
	movs r1, #0xa
	ldrsh r0, [r5, r1]
_08075FDC:
	movs r1, #2
	bl Div
	cmp r4, #0
	beq _08075FEA
	strh r0, [r6, #0xa]
	b _08075FEC
_08075FEA:
	strh r0, [r5, #0xa]
_08075FEC:
	adds r4, #1
	ldr r0, _08076018 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _08075F96
	mov r2, r8
	cmp r2, #0
	beq _08076008
	ldr r0, _0807601C @ =gMPlayInfo_SE2
	movs r1, #4
	bl m4aMPlayFadeOut
_08076008:
	mov r3, sl
	strb r7, [r3]
	ldr r0, _08076020 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080764E4
	.align 2, 0
_08076018: .4byte gNumSingleplayerCharacters
_0807601C: .4byte gMPlayInfo_SE2
_08076020: .4byte gCurTask
_08076024:
	adds r0, r4, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	adds r0, r3, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	bl UpdateSpriteAnimation
	movs r5, #0
	ldr r4, _0807604C @ =gPartner
	ldr r7, _08076050 @ =gPlayer
	mov sb, r5
_08076042:
	cmp r5, #0
	beq _08076054
	ldr r0, [r4, #0x10]
	b _08076056
	.align 2, 0
_0807604C: .4byte gPartner
_08076050: .4byte gPlayer
_08076054:
	ldr r0, [r7, #0x10]
_08076056:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08076060
	b _080764B8
_08076060:
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r1, r0, #0
	cmp r5, #0
	beq _08076076
	ldr r0, [r4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08076080
	b _08076470
_08076076:
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08076080
	b _08076470
_08076080:
	asrs r1, r1, #0x10
	mov r2, sl
	ldrb r0, [r2, #5]
	lsls r0, r0, #3
	adds r1, r1, r0
	cmp r5, #0
	beq _08076098
	ldr r0, [r4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _080760A2
	b _08076470
_08076098:
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r1, r0
	bge _080760A2
	b _08076470
_080760A2:
	ldr r0, [sp, #4]
	lsls r3, r0, #0x10
	asrs r2, r3, #0x10
	mov r0, sl
	movs r1, #4
	ldrsb r1, [r0, r1]
	lsls r0, r1, #3
	adds r2, r2, r0
	adds r6, r1, #0
	cmp r5, #0
	beq _080760C2
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _080760CC
	b _08076470
_080760C2:
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _080760CC
	b _08076470
_080760CC:
	asrs r1, r3, #0x10
	lsls r0, r6, #3
	adds r1, r1, r0
	mov r2, sl
	ldrb r0, [r2, #6]
	lsls r0, r0, #3
	adds r1, r1, r0
	cmp r5, #0
	beq _080760E8
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _080760F2
	b _08076470
_080760E8:
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _080760F2
	b _08076470
_080760F2:
	cmp r5, #0
	beq _08076100
	movs r3, #0xa
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge _0807610A
	b _08076414
_08076100:
	movs r1, #0xa
	ldrsh r0, [r7, r1]
	cmp r0, #0
	bge _0807610A
	b _08076414
_0807610A:
	cmp r5, #0
	beq _08076112
	ldr r0, [r4, #0x10]
	b _08076114
_08076112:
	ldr r0, [r7, #0x10]
_08076114:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807611E
	b _08076414
_0807611E:
	mov r2, r8
	cmp r2, #0
	bne _0807612E
	movs r3, #1
	mov r8, r3
	movs r0, #0xc9
	bl m4aSongNumStart
_0807612E:
	ldr r0, _08076144 @ =gPlayerControls
	ldrh r1, [r0]
	adds r3, r0, #0
	cmp r5, #0
	beq _0807614C
	ldrh r0, [r4, #0x3a]
	ands r0, r1
	ldr r2, _08076148 @ =gPlayer
	cmp r0, #0
	bne _08076156
	b _080761DC
	.align 2, 0
_08076144: .4byte gPlayerControls
_08076148: .4byte gPlayer
_0807614C:
	ldrh r0, [r7, #0x3a]
	ands r0, r1
	ldr r2, _08076174 @ =gPlayer
	cmp r0, #0
	beq _080761DC
_08076156:
	adds r0, r2, #0
	cmp r5, #0
	beq _0807615E
	ldr r0, _08076178 @ =gPartner
_0807615E:
	bl Player_TransitionCancelFlyingAndBoost
	cmp r5, #0
	beq _08076180
	ldr r1, _0807617C @ =gPartner + 0x59
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #3
	bne _0807618A
	b _080761A8
	.align 2, 0
_08076174: .4byte gPlayer
_08076178: .4byte gPartner
_0807617C: .4byte gPartner + 0x59
_08076180:
	ldr r2, _08076194 @ =gPlayer + 0x59
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #3
	beq _080761A8
_0807618A:
	cmp r5, #0
	beq _0807619C
	movs r0, #5
	ldr r3, _08076198 @ =gPartner + 0x40
	b _080761BC
	.align 2, 0
_08076194: .4byte gPlayer + 0x59
_08076198: .4byte gPartner + 0x40
_0807619C:
	movs r0, #5
	ldr r1, _080761A4 @ =gPlayer + 0x40
	strb r0, [r1]
	b _080761BE
	.align 2, 0
_080761A4: .4byte gPlayer + 0x40
_080761A8:
	cmp r5, #0
	beq _080761B8
	movs r0, #0x55
	ldr r2, _080761B4 @ =gPartner + 0x40
	strb r0, [r2]
	b _080761BE
	.align 2, 0
_080761B4: .4byte gPartner + 0x40
_080761B8:
	movs r0, #0x55
	ldr r3, _080761D4 @ =gPlayer + 0x40
_080761BC:
	strb r0, [r3]
_080761BE:
	movs r0, #0x9c
	lsls r0, r0, #3
	movs r1, #2
	bl Div
	rsbs r0, r0, #0
	cmp r5, #0
	beq _080761D8
	strh r0, [r4, #0xa]
	b _08076414
	.align 2, 0
_080761D4: .4byte gPlayer + 0x40
_080761D8:
	strh r0, [r7, #0xa]
	b _08076414
_080761DC:
	cmp r5, #0
	beq _080761F0
	ldr r1, _080761EC @ =gPartner + 0x59
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #2
	beq _080761FC
	b _08076300
	.align 2, 0
_080761EC: .4byte gPartner + 0x59
_080761F0:
	ldr r1, _0807620C @ =gPlayer + 0x59
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #2
	beq _080761FC
	b _08076300
_080761FC:
	cmp r5, #0
	beq _08076214
	ldr r1, _08076210 @ =gPartner + 0x40
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0x3e
	beq _0807621E
	b _08076288
	.align 2, 0
_0807620C: .4byte gPlayer + 0x59
_08076210: .4byte gPartner + 0x40
_08076214:
	ldr r1, _08076228 @ =gPlayer + 0x40
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0x3e
	bne _08076288
_0807621E:
	cmp r5, #0
	beq _08076230
	movs r0, #4
	ldr r1, _0807622C @ =gPartner + 0x40
	b _08076234
	.align 2, 0
_08076228: .4byte gPlayer + 0x40
_0807622C: .4byte gPartner + 0x40
_08076230:
	movs r0, #4
	ldr r1, _08076240 @ =gPlayer + 0x40
_08076234:
	strb r0, [r1]
	cmp r5, #0
	beq _08076244
	mov r0, sb
	strh r0, [r4, #0xc]
	b _08076246
	.align 2, 0
_08076240: .4byte gPlayer + 0x40
_08076244:
	strh r5, [r2, #0xc]
_08076246:
	cmp r5, #0
	beq _08076250
	mov r1, sb
	strh r1, [r4, #8]
	b _08076252
_08076250:
	strh r5, [r2, #8]
_08076252:
	cmp r5, #0
	beq _08076262
	ldr r0, [r4, #0x10]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0807626C
	b _0807627C
_08076262:
	ldr r0, [r2, #0x10]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807627C
_0807626C:
	cmp r5, #0
	beq _08076276
	movs r0, #1
	str r0, [r4, #0x10]
	b _08076288
_08076276:
	movs r0, #1
	str r0, [r2, #0x10]
	b _08076288
_0807627C:
	cmp r5, #0
	beq _08076286
	mov r0, sb
	str r0, [r4, #0x10]
	b _08076288
_08076286:
	str r5, [r2, #0x10]
_08076288:
	cmp r5, #0
	beq _08076298
	ldr r0, [r4, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080762A2
	b _080762D0
_08076298:
	ldr r0, [r2, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080762D0
_080762A2:
	ldrh r1, [r3, #2]
	cmp r5, #0
	beq _080762B2
	ldrh r0, [r4, #0x3a]
	ands r0, r1
	cmp r0, #0
	bne _080762BA
	b _08076300
_080762B2:
	ldrh r0, [r2, #0x3a]
	ands r0, r1
	cmp r0, #0
	beq _08076300
_080762BA:
	cmp r5, #0
	beq _080762C4
	mov r1, sb
	strh r1, [r4, #0xc]
	b _080762C6
_080762C4:
	strh r5, [r2, #0xc]
_080762C6:
	cmp r5, #0
	beq _080762FE
	mov r3, sb
	strh r3, [r4, #8]
	b _08076300
_080762D0:
	ldrh r1, [r3]
	cmp r5, #0
	beq _080762E0
	ldrh r0, [r4, #0x3a]
	ands r0, r1
	cmp r0, #0
	bne _080762E8
	b _08076300
_080762E0:
	ldrh r0, [r2, #0x3a]
	ands r0, r1
	cmp r0, #0
	beq _08076300
_080762E8:
	cmp r5, #0
	beq _080762F2
	mov r0, sb
	strh r0, [r4, #0xc]
	b _080762F4
_080762F2:
	strh r5, [r2, #0xc]
_080762F4:
	cmp r5, #0
	beq _080762FE
	mov r1, sb
	strh r1, [r4, #8]
	b _08076300
_080762FE:
	strh r5, [r2, #8]
_08076300:
	adds r0, r2, #0
	cmp r5, #0
	beq _08076308
	ldr r0, _0807631C @ =gPartner
_08076308:
	bl Player_TransitionCancelFlyingAndBoost
	cmp r5, #0
	beq _08076320
	ldr r0, [r4, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807632A
	.align 2, 0
_0807631C: .4byte gPartner
_08076320:
	ldr r0, [r7, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
_0807632A:
	cmp r5, #0
	beq _0807633A
	ldr r0, [r4, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _08076344
_0807633A:
	ldr r0, [r7, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
_08076344:
	cmp r5, #0
	beq _08076354
	movs r0, #4
	ldr r2, _08076350 @ =gPartner + 0x40
	strb r0, [r2]
	b _0807635A
	.align 2, 0
_08076350: .4byte gPartner + 0x40
_08076354:
	movs r0, #4
	ldr r3, _08076368 @ =gPlayer + 0x40
	strb r0, [r3]
_0807635A:
	cmp r5, #0
	beq _0807636C
	ldr r0, [r4, #4]
	adds r0, #0xb0
	str r0, [r4, #4]
	b _08076372
	.align 2, 0
_08076368: .4byte gPlayer + 0x40
_0807636C:
	ldr r0, [r7, #4]
	adds r0, #0xb0
	str r0, [r7, #4]
_08076372:
	cmp r5, #0
	beq _08076380
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _08076388
	b _08076394
_08076380:
	movs r2, #0xa
	ldrsh r0, [r7, r2]
	cmp r0, #0
	ble _08076394
_08076388:
	cmp r5, #0
	beq _08076392
	mov r3, sb
	strh r3, [r4, #0xa]
	b _08076394
_08076392:
	strh r5, [r7, #0xa]
_08076394:
	cmp r5, #0
	beq _080763A4
	ldrh r0, [r4, #0x38]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080763AE
	b _080763C0
_080763A4:
	ldrh r0, [r7, #0x38]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080763C0
_080763AE:
	cmp r5, #0
	beq _080763BA
	ldrh r0, [r4, #0xc]
	adds r0, #4
	strh r0, [r4, #0xc]
	b _08076414
_080763BA:
	ldrh r0, [r7, #0xc]
	adds r0, #4
	b _08076412
_080763C0:
	cmp r5, #0
	beq _080763D0
	ldrh r0, [r4, #0x38]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080763DA
	b _080763EC
_080763D0:
	ldrh r0, [r7, #0x38]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080763EC
_080763DA:
	cmp r5, #0
	beq _080763E6
	ldrh r0, [r4, #0xc]
	subs r0, #4
	strh r0, [r4, #0xc]
	b _08076414
_080763E6:
	ldrh r0, [r7, #0xc]
	subs r0, #4
	b _08076412
_080763EC:
	cmp r5, #0
	beq _080763F6
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	b _080763FA
_080763F6:
	movs r2, #0xc
	ldrsh r0, [r7, r2]
_080763FA:
	movs r1, #0x14
	bl Div
	adds r1, r0, #0
	cmp r5, #0
	beq _0807640E
	ldrh r0, [r4, #0xc]
	subs r0, r0, r1
	strh r0, [r4, #0xc]
	b _08076414
_0807640E:
	ldrh r0, [r7, #0xc]
	subs r0, r0, r1
_08076412:
	strh r0, [r7, #0xc]
_08076414:
	ldr r0, _08076424 @ =gCamera
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r2, r0, #0
	cmp r5, #0
	beq _08076428
	ldr r0, [r4]
	b _0807642A
	.align 2, 0
_08076424: .4byte gCamera
_08076428:
	ldr r0, [r7]
_0807642A:
	asrs r0, r0, #8
	subs r0, r0, r1
	ldr r1, [sp, #8]
	strh r0, [r1, #0x16]
	movs r3, #2
	ldrsh r1, [r2, r3]
	cmp r5, #0
	beq _0807643E
	ldr r0, [r4, #4]
	b _08076440
_0807643E:
	ldr r0, [r7, #4]
_08076440:
	asrs r0, r0, #8
	subs r0, r0, r1
	adds r0, #0xa
	ldr r1, [sp, #8]
	strh r0, [r1, #0x18]
	ldr r0, [sp, #8]
	bl DisplaySprite
	ldr r0, _08076464 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	adds r0, r5, r0
	ldr r2, _08076468 @ =0x0300003A
	adds r1, r0, r2
	ldr r3, _0807646C @ =0x03000038
	adds r0, r0, r3
	b _080764B4
	.align 2, 0
_08076464: .4byte gCurTask
_08076468: .4byte 0x0300003A
_0807646C: .4byte 0x03000038
_08076470:
	mov r0, r8
	cmp r0, #1
	bne _08076488
	ldr r0, _08076484 @ =gMPlayInfo_SE2
	movs r1, #4
	bl m4aMPlayFadeOut
	movs r1, #0
	mov r8, r1
	b _08076498
	.align 2, 0
_08076484: .4byte gMPlayInfo_SE2
_08076488:
	mov r2, r8
	cmp r2, #0
	beq _08076498
	mov r0, r8
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_08076498:
	ldr r1, _080764F4 @ =gCurTask
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	adds r0, r5, r0
	ldr r2, _080764F8 @ =0x03000038
	adds r0, r0, r2
	mov r3, sb
	strb r3, [r0]
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	adds r0, r5, r0
	ldr r3, _080764FC @ =0x0300003A
	adds r1, r0, r3
	adds r0, r0, r2
_080764B4:
	ldrb r0, [r0]
	strb r0, [r1]
_080764B8:
	adds r5, #1
	ldr r0, _08076500 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	bge _080764C8
	b _08076042
_080764C8:
	ldr r1, _080764F4 @ =gCurTask
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	ldr r4, _08076504 @ =0x0300003D
	adds r0, r0, r4
	mov r2, r8
	strb r2, [r0]
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	ldr r3, _08076508 @ =0x0300003E
	adds r0, r0, r3
	mov r4, sp
	ldrb r4, [r4, #0xc]
	strb r4, [r0]
_080764E4:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080764F4: .4byte gCurTask
_080764F8: .4byte 0x03000038
_080764FC: .4byte 0x0300003A
_08076500: .4byte gNumSingleplayerCharacters
_08076504: .4byte 0x0300003D
_08076508: .4byte 0x0300003E

	thumb_func_start TaskDestructor_Waterfall
TaskDestructor_Waterfall: @ 0x0807650C
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _08076520 @ =0x03000004
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0
	.align 2, 0
_08076520: .4byte 0x03000004
