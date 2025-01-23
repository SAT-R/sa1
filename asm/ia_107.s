.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable107
CreateEntity_Interactable107: @ 0x080949B8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08094A38 @ =Task_Interactable107
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	movs r3, #0
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	str r7, [r0]
	ldrb r1, [r7]
	strb r1, [r0, #8]
	strb r6, [r0, #9]
	ldr r1, _08094A3C @ =0x0300003C
	adds r0, r2, r1
	strb r3, [r0]
	ldrb r1, [r7, #3]
	ldr r3, _08094A40 @ =0x0300003D
	adds r0, r2, r3
	strb r1, [r0]
	movs r1, #0
	ldr r0, _08094A44 @ =0x0300003E
	adds r4, r2, r0
	movs r3, #0
	ldr r5, _08094A48 @ =gNumSingleplayerCharacters
	adds r0, #2
	adds r2, r2, r0
_08094A14:
	adds r0, r4, r1
	strb r3, [r0]
	strh r3, [r2]
	adds r2, #2
	adds r1, #1
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r1, r0
	blt _08094A14
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08094A38: .4byte Task_Interactable107
_08094A3C: .4byte 0x0300003C
_08094A40: .4byte 0x0300003D
_08094A44: .4byte 0x0300003E
_08094A48: .4byte gNumSingleplayerCharacters

	thumb_func_start Task_Interactable107
Task_Interactable107: @ 0x08094A4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	ldr r0, _08094AD0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov sl, r1
	ldr r0, [r1]
	str r0, [sp, #0x1c]
	ldrb r1, [r1, #8]
	lsls r1, r1, #3
	mov r2, sl
	ldrh r0, [r2, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, [sp, #0x1c]
	ldrb r2, [r3, #1]
	lsls r2, r2, #3
	mov r4, sl
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldr r3, _08094AD4 @ =gCamera
	ldrh r0, [r3]
	lsrs r4, r1, #0x10
	str r4, [sp]
	asrs r1, r1, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #8]
	ldrh r0, [r3, #2]
	lsrs r1, r2, #0x10
	str r1, [sp, #4]
	asrs r2, r2, #0x10
	subs r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0xc]
	movs r5, #0
	ldr r6, _08094AD8 @ =gPartner
	ldr r2, _08094ADC @ =gPlayer
	mov r8, r2
	movs r3, #0
	str r3, [sp, #0x24]
_08094AB6:
	movs r4, #0
	str r4, [sp, #0x10]
	movs r0, #0
	str r0, [sp, #0x14]
	cmp r5, #0
	beq _08094AE0
	ldr r1, [r6, #0x10]
	movs r0, #0x80
	ands r1, r0
	mov r2, sl
	adds r2, #0x3c
	str r2, [sp, #0x20]
	b _08094AEE
	.align 2, 0
_08094AD0: .4byte gCurTask
_08094AD4: .4byte gCamera
_08094AD8: .4byte gPartner
_08094ADC: .4byte gPlayer
_08094AE0:
	mov r3, r8
	ldr r1, [r3, #0x10]
	movs r0, #0x80
	ands r1, r0
	mov r4, sl
	adds r4, #0x3c
	str r4, [sp, #0x20]
_08094AEE:
	cmp r1, #0
	beq _08094AF4
	b _08094F54
_08094AF4:
	mov r2, sl
	adds r2, #0x3c
	ldrb r1, [r2]
	asrs r1, r5
	movs r0, #1
	ands r1, r0
	str r2, [sp, #0x20]
	cmp r1, #0
	bne _08094B08
	b _08094DF8
_08094B08:
	mov r0, sl
	adds r0, #0x3d
	ldrb r0, [r0]
	cmp r0, #0
	bne _08094B5E
	movs r0, #4
	str r0, [sp, #0x18]
	cmp r5, #0
	beq _08094B26
	ldrh r0, [r6, #0x3a]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08094B32
	b _08094B3A
_08094B26:
	mov r1, r8
	ldrh r0, [r1, #0x3a]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08094B3A
_08094B32:
	movs r2, #0x90
	lsls r2, r2, #4
	str r2, [sp, #0x10]
	b _08094C10
_08094B3A:
	cmp r5, #0
	beq _08094B4A
	ldrh r0, [r6, #0x3a]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08094B56
	b _08094C10
_08094B4A:
	mov r3, r8
	ldrh r0, [r3, #0x3a]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08094C10
_08094B56:
	movs r4, #0x90
	lsls r4, r4, #4
	str r4, [sp, #0x14]
	b _08094C10
_08094B5E:
	cmp r0, #1
	bne _08094BBA
	movs r0, #0
	str r0, [sp, #0x18]
	cmp r5, #0
	beq _08094B76
	ldrh r0, [r6, #0x3a]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08094B82
	b _08094B90
_08094B76:
	mov r1, r8
	ldrh r0, [r1, #0x3a]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08094B90
_08094B82:
	movs r2, #0xe0
	lsls r2, r2, #3
	str r2, [sp, #0x10]
	movs r3, #0x80
	lsls r3, r3, #4
	str r3, [sp, #0x14]
	b _08094C10
_08094B90:
	cmp r5, #0
	beq _08094BA0
	ldrh r0, [r6, #0x3a]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08094BAC
	b _08094C10
_08094BA0:
	mov r4, r8
	ldrh r0, [r4, #0x3a]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08094C10
_08094BAC:
	movs r0, #0xf7
	lsls r0, r0, #8
	str r0, [sp, #0x10]
	movs r1, #0xe0
	lsls r1, r1, #3
	str r1, [sp, #0x14]
	b _08094C10
_08094BBA:
	cmp r0, #2
	bne _08094BE6
	movs r2, #0
	str r2, [sp, #0x18]
	cmp r5, #0
	beq _08094BD2
	ldrh r0, [r6, #0x3a]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08094BDE
	b _08094C10
_08094BD2:
	mov r3, r8
	ldrh r0, [r3, #0x3a]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08094C10
_08094BDE:
	movs r4, #0x90
	lsls r4, r4, #4
	str r4, [sp, #0x10]
	b _08094C10
_08094BE6:
	cmp r0, #3
	bne _08094C10
	movs r0, #0
	str r0, [sp, #0x18]
	cmp r5, #0
	beq _08094BFE
	ldrh r0, [r6, #0x3a]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08094C0A
	b _08094C10
_08094BFE:
	mov r1, r8
	ldrh r0, [r1, #0x3a]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08094C10
_08094C0A:
	movs r2, #0x90
	lsls r2, r2, #4
	str r2, [sp, #0x14]
_08094C10:
	mov r0, sl
	adds r0, #0x40
	ldr r4, [sp, #0x24]
	adds r3, r0, r4
	ldrh r4, [r3]
	adds r1, r4, #4
	strh r1, [r3]
	lsls r1, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x13
	adds r7, r0, #0
	cmp r1, r2
	bls _08094C30
	ldr r1, _08094C60 @ =0xFFFFFC04
	adds r0, r4, r1
	strh r0, [r3]
_08094C30:
	ldr r2, _08094C64 @ =gSineTable
	ldrh r0, [r3]
	lsls r0, r0, #3
	ldr r1, _08094C68 @ =0x000003FF
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r4, #0
	ldrsh r0, [r0, r4]
	movs r1, #0x10
	bl Div
	ldr r1, [sp]
	lsls r2, r1, #0x10
	asrs r1, r2, #8
	adds r1, r1, r0
	mov sb, r2
	cmp r5, #0
	beq _08094C6C
	str r1, [r6]
	b _08094C70
	.align 2, 0
_08094C60: .4byte 0xFFFFFC04
_08094C64: .4byte gSineTable
_08094C68: .4byte 0x000003FF
_08094C6C:
	mov r2, r8
	str r1, [r2]
_08094C70:
	ldr r2, _08094CA4 @ =gSineTable
	ldr r3, [sp, #0x24]
	adds r0, r7, r3
	ldrh r0, [r0]
	lsls r0, r0, #3
	ldr r1, _08094CA8 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r4, #0
	ldrsh r0, [r0, r4]
	movs r1, #0x10
	bl Div
	ldr r1, [sp, #4]
	lsls r2, r1, #0x10
	asrs r1, r2, #0x10
	ldr r3, [sp, #0x18]
	subs r1, r1, r3
	lsls r1, r1, #8
	adds r1, r1, r0
	adds r4, r2, #0
	cmp r5, #0
	beq _08094CAC
	str r1, [r6, #4]
	b _08094CB0
	.align 2, 0
_08094CA4: .4byte gSineTable
_08094CA8: .4byte 0x000003FF
_08094CAC:
	mov r0, r8
	str r1, [r0, #4]
_08094CB0:
	ldr r0, _08094CC8 @ =gPlayer
	cmp r5, #0
	beq _08094CB8
	ldr r0, _08094CCC @ =gPartner
_08094CB8:
	bl Player_TransitionCancelFlyingAndBoost
	cmp r5, #0
	beq _08094CD4
	movs r0, #5
	ldr r1, _08094CD0 @ =gUnknown_03005AF0
	strb r0, [r1]
	b _08094CDA
	.align 2, 0
_08094CC8: .4byte gPlayer
_08094CCC: .4byte gPartner
_08094CD0: .4byte gUnknown_03005AF0
_08094CD4:
	movs r0, #5
	ldr r2, _08094D10 @ =gUnknown_03005A60
	strb r0, [r2]
_08094CDA:
	ldr r0, _08094D14 @ =gPlayer
	cmp r5, #0
	beq _08094CE2
	ldr r0, _08094D18 @ =gPartner
_08094CE2:
	movs r1, #0xe
	bl sa2__sub_8023B5C
	ldr r1, _08094D14 @ =gPlayer
	cmp r5, #0
	beq _08094CF0
	ldr r1, _08094D18 @ =gPartner
_08094CF0:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r7, _08094D14 @ =gPlayer
	adds r1, r7, #0
	cmp r5, #0
	beq _08094CFE
	ldr r1, _08094D18 @ =gPartner
_08094CFE:
	movs r0, #0xe
	strb r0, [r1, #0xf]
	cmp r5, #0
	beq _08094D1C
	ldr r0, [r6, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r6, #0x10]
	b _08094D26
	.align 2, 0
_08094D10: .4byte gUnknown_03005A60
_08094D14: .4byte gPlayer
_08094D18: .4byte gPartner
_08094D1C:
	mov r3, r8
	ldr r0, [r3, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #0x10]
_08094D26:
	cmp r5, #0
	beq _08094D34
	ldr r0, [r6, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r6, #0x10]
	b _08094D40
_08094D34:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #2
	orrs r0, r1
	mov r2, r8
	str r0, [r2, #0x10]
_08094D40:
	cmp r5, #0
	beq _08094D50
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r6, #0x10]
	b _08094D5C
_08094D50:
	mov r3, r8
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r3, #0x10]
_08094D5C:
	ldr r1, [sp, #0x10]
	lsls r0, r1, #0x10
	adds r2, r0, #0
	ldr r0, [sp, #0x14]
	lsls r3, r0, #0x10
	cmp r2, #0
	bne _08094D70
	cmp r3, #0
	bne _08094D70
	b _08094F54
_08094D70:
	mov r1, sb
	asrs r0, r1, #8
	cmp r5, #0
	beq _08094D7C
	str r0, [r6]
	b _08094D7E
_08094D7C:
	str r0, [r7]
_08094D7E:
	asrs r0, r4, #8
	cmp r5, #0
	beq _08094D88
	str r0, [r6, #4]
	b _08094D8A
_08094D88:
	str r0, [r7, #4]
_08094D8A:
	mov r0, sl
	adds r0, #0x3e
	adds r0, r0, r5
	movs r1, #0x14
	strb r1, [r0]
	movs r1, #1
	lsls r1, r5
	ldr r4, [sp, #0x20]
	ldrb r0, [r4]
	bics r0, r1
	strb r0, [r4]
	cmp r5, #0
	beq _08094DB4
	ldr r0, [r6, #0x10]
	ldr r1, _08094DB0 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	b _08094DC0
	.align 2, 0
_08094DB0: .4byte 0xFFBFFFFF
_08094DB4:
	mov r1, r8
	ldr r0, [r1, #0x10]
	ldr r1, _08094DCC @ =0xFFBFFFFF
	ands r0, r1
	mov r4, r8
	str r0, [r4, #0x10]
_08094DC0:
	cmp r5, #0
	beq _08094DD0
	movs r0, #0
	strb r0, [r6, #0x14]
	b _08094DD2
	.align 2, 0
_08094DCC: .4byte 0xFFBFFFFF
_08094DD0:
	strb r5, [r7, #0x14]
_08094DD2:
	asrs r0, r3, #0x10
	cmp r5, #0
	beq _08094DDC
	strh r0, [r6, #0xa]
	b _08094DDE
_08094DDC:
	strh r0, [r7, #0xa]
_08094DDE:
	asrs r0, r2, #0x10
	cmp r5, #0
	beq _08094DE8
	strh r0, [r6, #8]
	b _08094DEA
_08094DE8:
	strh r0, [r7, #8]
_08094DEA:
	asrs r0, r2, #0x10
	cmp r5, #0
	beq _08094DF4
	strh r0, [r6, #0xc]
	b _08094F54
_08094DF4:
	strh r0, [r7, #0xc]
	b _08094F54
_08094DF8:
	mov r0, sl
	adds r0, #0x3e
	adds r1, r0, r5
	ldrb r0, [r1]
	cmp r0, #0
	beq _08094E0A
	subs r0, #1
	strb r0, [r1]
	b _08094F54
_08094E0A:
	ldr r0, [sp]
	lsls r1, r0, #0x10
	asrs r0, r1, #0x10
	adds r2, r0, #0
	subs r2, #0xa
	mov sb, r1
	cmp r5, #0
	beq _08094E24
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08094E30
	b _08094F54
_08094E24:
	mov r1, r8
	ldr r0, [r1]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08094E30
	b _08094F54
_08094E30:
	mov r2, sb
	asrs r0, r2, #0x10
	adds r1, r0, #0
	adds r1, #0xa
	cmp r5, #0
	beq _08094E46
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08094E52
	b _08094F54
_08094E46:
	mov r3, r8
	ldr r0, [r3]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08094E52
	b _08094F54
_08094E52:
	ldr r4, [sp, #4]
	lsls r1, r4, #0x10
	asrs r0, r1, #0x10
	adds r2, r0, #0
	subs r2, #0xa
	adds r4, r1, #0
	cmp r5, #0
	beq _08094E6C
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08094E76
	b _08094F54
_08094E6C:
	mov r1, r8
	ldr r0, [r1, #4]
	asrs r0, r0, #8
	cmp r2, r0
	bgt _08094F54
_08094E76:
	asrs r0, r4, #0x10
	adds r1, r0, #0
	adds r1, #0xa
	cmp r5, #0
	beq _08094E8A
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08094E94
	b _08094F54
_08094E8A:
	mov r2, r8
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	cmp r1, r0
	blt _08094F54
_08094E94:
	cmp r5, #0
	beq _08094EA2
	ldr r0, [r6, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r6, #0x10]
	b _08094EAC
_08094EA2:
	mov r3, r8
	ldr r0, [r3, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #0x10]
_08094EAC:
	ldr r7, _08094EC0 @ =gPlayer
	cmp r5, #0
	beq _08094EC4
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r6, #0x10]
	b _08094ED2
	.align 2, 0
_08094EC0: .4byte gPlayer
_08094EC4:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	mov r2, r8
	str r0, [r2, #0x10]
_08094ED2:
	mov r0, sl
	adds r0, #0x40
	ldr r3, [sp, #0x24]
	adds r0, r0, r3
	movs r1, #0
	strh r1, [r0]
	mov r1, sb
	asrs r0, r1, #8
	cmp r5, #0
	beq _08094EEA
	str r0, [r6]
	b _08094EEC
_08094EEA:
	str r0, [r7]
_08094EEC:
	asrs r0, r4, #8
	cmp r5, #0
	beq _08094EF6
	str r0, [r6, #4]
	b _08094EF8
_08094EF6:
	str r0, [r7, #4]
_08094EF8:
	cmp r5, #0
	beq _08094F02
	movs r0, #0
	strh r0, [r6, #0xa]
	b _08094F04
_08094F02:
	strh r5, [r7, #0xa]
_08094F04:
	cmp r5, #0
	beq _08094F0E
	movs r0, #0
	strh r0, [r6, #8]
	b _08094F10
_08094F0E:
	strh r5, [r7, #8]
_08094F10:
	cmp r5, #0
	beq _08094F1A
	movs r0, #0
	strh r0, [r6, #0xc]
	b _08094F1C
_08094F1A:
	strh r5, [r7, #0xc]
_08094F1C:
	ldr r0, _08094FC0 @ =gPlayer
	cmp r5, #0
	beq _08094F24
	ldr r0, _08094FC4 @ =gPartner
_08094F24:
	movs r1, #0xe
	bl sa2__sub_8023B5C
	ldr r1, _08094FC0 @ =gPlayer
	cmp r5, #0
	beq _08094F32
	ldr r1, _08094FC4 @ =gPartner
_08094F32:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _08094FC0 @ =gPlayer
	cmp r5, #0
	beq _08094F3E
	ldr r1, _08094FC4 @ =gPartner
_08094F3E:
	movs r0, #0xe
	strb r0, [r1, #0xf]
	movs r0, #0xaa
	bl m4aSongNumStart
	movs r0, #1
	lsls r0, r5
	ldr r2, [sp, #0x20]
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
_08094F54:
	ldr r3, [sp, #0x24]
	adds r3, #2
	str r3, [sp, #0x24]
	adds r5, #1
	ldr r0, _08094FC8 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	bge _08094F6A
	b _08094AB6
_08094F6A:
	ldr r4, [sp, #0x20]
	ldrb r1, [r4]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08094FAE
	ldr r1, [sp, #8]
	lsls r0, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x10
	adds r0, r0, r2
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08094F9E
	ldr r3, [sp, #0xc]
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	adds r0, #0x80
	cmp r0, #0
	blt _08094F9E
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r2, r0
	ble _08094FAE
_08094F9E:
	mov r4, sl
	ldrb r0, [r4, #8]
	ldr r1, [sp, #0x1c]
	strb r0, [r1]
	ldr r0, _08094FCC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08094FAE:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08094FC0: .4byte gPlayer
_08094FC4: .4byte gPartner
_08094FC8: .4byte gNumSingleplayerCharacters
_08094FCC: .4byte gCurTask
