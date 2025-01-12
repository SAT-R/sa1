.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_BumperHexagon
CreateEntity_BumperHexagon: @ 0x080789C4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r7, r0, #0
	adds r4, r3, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08078A3C @ =Task_BumperHexagon
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08078A40 @ =TaskDestructor_BumperHexagon
	str r1, [sp]
	movs r1, #0x50
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r3, r0
	adds r0, #0xc
	adds r6, r3, r0
	movs r1, #0
	movs r5, #0
	mov r0, r8
	strh r0, [r2, #4]
	mov r0, sb
	strh r0, [r2, #6]
	str r7, [r2]
	ldrb r0, [r7]
	strb r0, [r2, #8]
	strb r4, [r2, #9]
	str r5, [r2, #0x40]
	str r5, [r2, #0x44]
	ldr r4, _08078A44 @ =0x0300004C
	adds r0, r3, r4
	strh r5, [r0]
	adds r4, #2
	adds r0, r3, r4
	strb r1, [r0]
	movs r0, #3
	ldrsb r0, [r7, r0]
	cmp r0, #0
	blt _08078A4C
	ldr r1, _08078A48 @ =0x03000048
	adds r0, r3, r1
	movs r1, #4
	strh r1, [r0]
	strh r5, [r2, #0x3c]
	subs r4, #4
	adds r0, r3, r4
	b _08078A5C
	.align 2, 0
_08078A3C: .4byte Task_BumperHexagon
_08078A40: .4byte TaskDestructor_BumperHexagon
_08078A44: .4byte 0x0300004C
_08078A48: .4byte 0x03000048
_08078A4C:
	ldr r0, _08078AE8 @ =0x03000048
	adds r1, r3, r0
	movs r0, #4
	strh r0, [r1]
	movs r0, #0x80
	strh r0, [r2, #0x3c]
	ldr r1, _08078AEC @ =0x0300004A
	adds r0, r3, r1
_08078A5C:
	strh r5, [r0]
	ldr r1, [r7, #4]
	ldr r0, _08078AF0 @ =0x00FFFF00
	ands r1, r0
	cmp r1, #0
	bne _08078A6E
	adds r0, r2, #0
	adds r0, #0x48
	strh r1, [r0]
_08078A6E:
	ldrb r0, [r7]
	lsls r0, r0, #3
	mov r2, r8
	lsls r1, r2, #8
	adds r0, r0, r1
	movs r5, #0
	movs r4, #0
	strh r0, [r6, #0x16]
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	mov r2, sb
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r6, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	movs r0, #0x1e
	bl VramMalloc
	str r0, [r6, #4]
	movs r0, #0xf2
	lsls r0, r0, #1
	strh r0, [r6, #0xa]
	adds r0, r6, #0
	adds r0, #0x20
	strb r5, [r0]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r6, #0x1a]
	strh r4, [r6, #8]
	strh r4, [r6, #0x14]
	strh r4, [r6, #0x1c]
	adds r1, r6, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x25
	strb r5, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r6, #0x10]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08078AE8: .4byte 0x03000048
_08078AEC: .4byte 0x0300004A
_08078AF0: .4byte 0x00FFFF00

	thumb_func_start Task_BumperHexagon
Task_BumperHexagon: @ 0x08078AF4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08078C04 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r2, _08078C08 @ =0x0300000C
	adds r7, r1, r2
	ldr r0, [r6]
	mov sb, r0
	adds r2, #0x3c
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _08078B4C
	mov r0, sb
	ldrb r2, [r0, #5]
	lsls r2, r2, #0xb
	ldr r4, _08078C0C @ =gSineTable
	movs r0, #0
	ldrsh r3, [r1, r0]
	ldr r0, _08078C10 @ =gStageTime
	ldrh r1, [r6, #0x3c]
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	muls r0, r3, r0
	ldr r1, _08078C14 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	str r0, [r6, #0x40]
_08078B4C:
	ldrb r1, [r6, #8]
	lsls r1, r1, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r2, sb
	ldrb r3, [r2, #1]
	lsls r3, r3, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r3, r3, r0
	ldr r0, _08078C18 @ =gCamera
	mov r8, r0
	ldrh r2, [r0]
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	subs r2, r4, r2
	ldr r0, [r6, #0x40]
	asrs r0, r0, #8
	adds r2, r2, r0
	strh r2, [r7, #0x16]
	mov r2, r8
	ldrh r1, [r2, #2]
	lsls r3, r3, #0x10
	asrs r5, r3, #0x10
	subs r1, r5, r1
	ldr r0, [r6, #0x44]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r7, #0x18]
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8078DA4
	cmp r0, #0
	beq _08078BA0
	mov r0, sl
	ldr r1, [r0]
	ldr r0, _08078C1C @ =Task_BumperHexagon2
	str r0, [r1, #8]
_08078BA0:
	mov r2, r8
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r4, r0
	bgt _08078BD0
	adds r0, r1, #0
	subs r0, #0x80
	cmp r4, r0
	blt _08078BD0
	mov r0, r8
	movs r1, #2
	ldrsh r2, [r0, r1]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp r5, r0
	bgt _08078BD0
	adds r0, r2, #0
	subs r0, #0x80
	cmp r5, r0
	bge _08078C20
_08078BD0:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08078BF4
	movs r2, #0x18
	ldrsh r0, [r7, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _08078BF4
	movs r0, #0x18
	ldrsh r1, [r7, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08078C20
_08078BF4:
	ldrb r0, [r6, #8]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _08078C04 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08078C26
	.align 2, 0
_08078C04: .4byte gCurTask
_08078C08: .4byte 0x0300000C
_08078C0C: .4byte gSineTable
_08078C10: .4byte gStageTime
_08078C14: .4byte 0x000003FF
_08078C18: .4byte gCamera
_08078C1C: .4byte Task_BumperHexagon2
_08078C20:
	adds r0, r7, #0
	bl DisplaySprite
_08078C26:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start Task_BumperHexagon2
Task_BumperHexagon2: @ 0x08078C34
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r1, _08078D74 @ =gCurTask
	ldr r0, [r1]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	adds r0, #0xc
	adds r7, r2, r0
	ldr r3, [r5]
	mov sb, r3
	adds r0, #0x42
	adds r0, r0, r2
	mov r8, r0
	ldrb r0, [r0]
	adds r0, #1
	mov r3, r8
	strb r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bls _08078C6C
	ldr r1, [r1]
	ldr r0, _08078D78 @ =Task_BumperHexagon
	str r0, [r1, #8]
_08078C6C:
	ldr r0, _08078D7C @ =0x03000048
	adds r1, r2, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _08078CA2
	mov r3, sb
	ldrb r2, [r3, #5]
	lsls r2, r2, #0xb
	ldr r4, _08078D80 @ =gSineTable
	adds r3, r0, #0
	ldr r0, _08078D84 @ =gStageTime
	ldrh r1, [r5, #0x3c]
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	muls r0, r3, r0
	ldr r1, _08078D88 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	str r0, [r5, #0x40]
_08078CA2:
	ldrb r2, [r5, #8]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	mov r3, sb
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r4, r2, #0x10
	lsls r1, r1, #0x10
	asrs r6, r1, #0x10
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r4, #0
	adds r3, r6, #0
	bl sub_8078DA4
	ldr r3, _08078D8C @ =gCamera
	ldrh r1, [r3]
	subs r1, r4, r1
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r1, r1, r0
	mov ip, r1
	ldr r2, _08078D80 @ =gSineTable
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, r0, #8
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	mov r1, ip
	subs r0, r1, r0
	strh r0, [r7, #0x16]
	ldrh r1, [r3, #2]
	subs r1, r6, r1
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	adds r1, r1, r0
	mov ip, r1
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, r0, #8
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	mov r2, ip
	adds r1, r2, r0
	strh r1, [r7, #0x18]
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r4, r0
	bgt _08078D40
	adds r0, r1, #0
	subs r0, #0x80
	cmp r4, r0
	blt _08078D40
	movs r0, #2
	ldrsh r1, [r3, r0]
	subs r2, #0x50
	adds r0, r1, r2
	cmp r6, r0
	bgt _08078D40
	adds r0, r1, #0
	subs r0, #0x80
	cmp r6, r0
	bge _08078D90
_08078D40:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08078D64
	movs r3, #0x18
	ldrsh r0, [r7, r3]
	adds r0, #0x80
	cmp r0, #0
	blt _08078D64
	movs r0, #0x18
	ldrsh r1, [r7, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08078D90
_08078D64:
	ldrb r0, [r5, #8]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _08078D74 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08078D96
	.align 2, 0
_08078D74: .4byte gCurTask
_08078D78: .4byte Task_BumperHexagon
_08078D7C: .4byte 0x03000048
_08078D80: .4byte gSineTable
_08078D84: .4byte gStageTime
_08078D88: .4byte 0x000003FF
_08078D8C: .4byte gCamera
_08078D90:
	adds r0, r7, #0
	bl DisplaySprite
_08078D96:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8078DA4
sub_8078DA4: @ 0x08078DA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	mov sl, r3
	movs r0, #0
	mov sb, r0
	movs r5, #0
	ldr r4, _08078DCC @ =gPartner
	ldr r6, _08078DD0 @ =gPlayer
_08078DC2:
	cmp r5, #0
	beq _08078DD4
	ldr r1, [r4]
	mov r8, r1
	b _08078DD8
	.align 2, 0
_08078DCC: .4byte gPartner
_08078DD0: .4byte gPlayer
_08078DD4:
	ldr r2, [r6]
	mov r8, r2
_08078DD8:
	ldr r0, [r7, #0x40]
	asrs r0, r0, #8
	ldr r3, [sp, #4]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, [r7, #0x44]
	asrs r0, r0, #8
	add r0, sl
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r3, _08078E18 @ =gPlayer
	cmp r5, #0
	beq _08078DF6
	ldr r3, _08078E1C @ =gPartner
_08078DF6:
	ldr r0, [sp]
	bl sa2__sub_800DF38
	cmp r0, #0
	bne _08078E02
	b _080790D6
_08078E02:
	cmp r5, #0
	beq _08078E20
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08078E14
	b _080790D6
_08078E14:
	b _08078E2E
	.align 2, 0
_08078E18: .4byte gPlayer
_08078E1C: .4byte gPartner
_08078E20:
	ldr r1, [r6, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r1, r0
	cmp r1, #0
	beq _08078E2E
	b _080790D6
_08078E2E:
	cmp r5, #0
	beq _08078E40
	ldr r1, _08078E3C @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r1, r0]
	b _08078E4A
	.align 2, 0
_08078E3C: .4byte gUnknown_03005B09
_08078E40:
	ldr r0, _08078E60 @ =gPlayer
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
_08078E4A:
	cmp r0, #1
	beq _08078E76
	cmp r5, #0
	beq _08078E68
	ldr r2, _08078E64 @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #2
	beq _08078E76
	b _08078ECA
	.align 2, 0
_08078E60: .4byte gPlayer
_08078E64: .4byte gUnknown_03005B09
_08078E68:
	ldr r0, _08078E88 @ =gPlayer
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08078ECA
_08078E76:
	cmp r5, #0
	beq _08078E90
	ldr r3, _08078E8C @ =gUnknown_03005AED
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bne _08078E9E
	b _08078ECA
	.align 2, 0
_08078E88: .4byte gPlayer
_08078E8C: .4byte gUnknown_03005AED
_08078E90:
	ldr r0, _08078EB8 @ =gPlayer
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08078ECA
_08078E9E:
	ldr r0, _08078EB8 @ =gPlayer
	cmp r5, #0
	beq _08078EA6
	ldr r0, _08078EBC @ =gPartner
_08078EA6:
	bl sub_8046CEC
	cmp r5, #0
	beq _08078EC4
	movs r0, #5
	ldr r1, _08078EC0 @ =gUnknown_03005AF0
	strb r0, [r1]
	b _08078ECA
	.align 2, 0
_08078EB8: .4byte gPlayer
_08078EBC: .4byte gPartner
_08078EC0: .4byte gUnknown_03005AF0
_08078EC4:
	movs r0, #5
	ldr r2, _08078EDC @ =gUnknown_03005A60
	strb r0, [r2]
_08078ECA:
	cmp r5, #0
	beq _08078EE0
	ldr r0, [r4, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _08078EEA
	.align 2, 0
_08078EDC: .4byte gUnknown_03005A60
_08078EE0:
	ldr r0, [r6, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
_08078EEA:
	cmp r5, #0
	beq _08078EF8
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
	b _08078F00
_08078EF8:
	ldr r0, [r6, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r6, #0x10]
_08078F00:
	cmp r5, #0
	beq _08078F14
	ldr r0, [r4, #0x10]
	ldr r1, _08078F10 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #0x10]
	b _08078F1C
	.align 2, 0
_08078F10: .4byte 0xFFFFFEFF
_08078F14:
	ldr r0, [r6, #0x10]
	ldr r1, _08078F2C @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r6, #0x10]
_08078F1C:
	cmp r5, #0
	beq _08078F30
	ldr r0, [r4, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #0x10]
	b _08078F38
	.align 2, 0
_08078F2C: .4byte 0xFFFFFEFF
_08078F30:
	ldr r0, [r6, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r6, #0x10]
_08078F38:
	cmp r5, #0
	beq _08078F48
	ldr r0, [r4, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _08078F52
_08078F48:
	ldr r0, [r6, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
_08078F52:
	ldr r1, _08078F78 @ =gPlayer
	cmp r5, #0
	beq _08078F5A
	ldr r1, _08078F7C @ =gPartner
_08078F5A:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _08078F78 @ =gPlayer
	cmp r5, #0
	beq _08078F66
	ldr r1, _08078F7C @ =gPartner
_08078F66:
	movs r0, #9
	strb r0, [r1, #0xf]
	ldr r0, [r7, #0x44]
	asrs r1, r0, #8
	cmp r5, #0
	beq _08078F80
	ldr r0, [r4, #4]
	b _08078F84
	.align 2, 0
_08078F78: .4byte gPlayer
_08078F7C: .4byte gPartner
_08078F80:
	ldr r2, _08078F9C @ =gPlayer
	ldr r0, [r2, #4]
_08078F84:
	asrs r0, r0, #8
	mov r3, sl
	subs r0, r0, r3
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, [r7, #0x40]
	asrs r1, r0, #8
	cmp r5, #0
	beq _08078FA0
	ldr r0, [r4]
	b _08078FA4
	.align 2, 0
_08078F9C: .4byte gPlayer
_08078FA0:
	ldr r3, _08078FD0 @ =gPlayer
	ldr r0, [r3]
_08078FA4:
	asrs r0, r0, #8
	ldr r3, [sp, #4]
	subs r0, r0, r3
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, #0
	bl sa2__sub_8004418
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r1, r2, #0
	subs r1, #0x40
	movs r0, #0xe0
	lsls r0, r0, #2
	cmp r1, r0
	bls _08078FE4
	cmp r5, #0
	beq _08078FD8
	ldr r0, _08078FD4 @ =0x00000666
	strh r0, [r4, #8]
	b _080790C4
	.align 2, 0
_08078FD0: .4byte gPlayer
_08078FD4: .4byte 0x00000666
_08078FD8:
	ldr r0, _08078FE0 @ =0x00000666
	strh r0, [r6, #8]
	b _080790C4
	.align 2, 0
_08078FE0: .4byte 0x00000666
_08078FE4:
	ldr r1, _08078FF8 @ =0xFFFFFE3F
	adds r0, r2, r1
	cmp r0, #0x88
	bhi _0807900C
	cmp r5, #0
	beq _08079000
	ldr r0, _08078FFC @ =0x0000F99A
	strh r0, [r4, #8]
	b _080790C4
	.align 2, 0
_08078FF8: .4byte 0xFFFFFE3F
_08078FFC: .4byte 0x0000F99A
_08079000:
	ldr r0, _08079008 @ =0x0000F99A
	strh r0, [r6, #8]
	b _080790C4
	.align 2, 0
_08079008: .4byte 0x0000F99A
_0807900C:
	ldr r0, _08079024 @ =0x00000249
	cmp r2, r0
	bls _08079070
	adds r0, #0xb7
	cmp r2, r0
	bls _08079040
	cmp r5, #0
	beq _0807902C
	ldr r2, _08079028 @ =0x00000297
	strh r2, [r4, #8]
	b _08079030
	.align 2, 0
_08079024: .4byte 0x00000249
_08079028: .4byte 0x00000297
_0807902C:
	ldr r3, _08079038 @ =0x00000297
	strh r3, [r6, #8]
_08079030:
	cmp r5, #0
	bne _08079058
	ldr r0, _0807903C @ =0x0000FA27
	b _080790C2
	.align 2, 0
_08079038: .4byte 0x00000297
_0807903C: .4byte 0x0000FA27
_08079040:
	cmp r5, #0
	beq _08079050
	ldr r0, _0807904C @ =0x0000FD69
	strh r0, [r4, #8]
	b _08079054
	.align 2, 0
_0807904C: .4byte 0x0000FD69
_08079050:
	ldr r0, _08079060 @ =0x0000FD69
	strh r0, [r6, #8]
_08079054:
	cmp r5, #0
	beq _08079068
_08079058:
	ldr r0, _08079064 @ =0x0000FA27
	strh r0, [r4, #0xa]
	b _080790C4
	.align 2, 0
_08079060: .4byte 0x0000FD69
_08079064: .4byte 0x0000FA27
_08079068:
	ldr r0, _0807906C @ =0x0000FA27
	b _080790C2
	.align 2, 0
_0807906C: .4byte 0x0000FA27
_08079070:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	bls _08079098
	cmp r5, #0
	beq _08079088
	ldr r0, _08079084 @ =0x0000FD69
	strh r0, [r4, #8]
	b _0807908C
	.align 2, 0
_08079084: .4byte 0x0000FD69
_08079088:
	ldr r0, _08079094 @ =0x0000FD69
	strh r0, [r6, #8]
_0807908C:
	cmp r5, #0
	bne _080790B0
	b _080790C0
	.align 2, 0
_08079094: .4byte 0x0000FD69
_08079098:
	cmp r5, #0
	beq _080790A8
	ldr r0, _080790A4 @ =0x00000297
	strh r0, [r4, #8]
	b _080790AC
	.align 2, 0
_080790A4: .4byte 0x00000297
_080790A8:
	ldr r1, _080790B8 @ =0x00000297
	strh r1, [r6, #8]
_080790AC:
	cmp r5, #0
	beq _080790C0
_080790B0:
	ldr r0, _080790BC @ =0x000005D9
	strh r0, [r4, #0xa]
	b _080790C4
	.align 2, 0
_080790B8: .4byte 0x00000297
_080790BC: .4byte 0x000005D9
_080790C0:
	ldr r0, _080790E0 @ =0x000005D9
_080790C2:
	strh r0, [r6, #0xa]
_080790C4:
	movs r0, #0xb7
	bl m4aSongNumStart
	adds r1, r7, #0
	adds r1, #0x4e
	movs r0, #0
	strb r0, [r1]
	movs r2, #1
	mov sb, r2
_080790D6:
	cmp r5, #0
	beq _080790E4
	mov r3, r8
	str r3, [r4]
	b _080790E8
	.align 2, 0
_080790E0: .4byte 0x000005D9
_080790E4:
	mov r0, r8
	str r0, [r6]
_080790E8:
	adds r5, #1
	ldr r0, _0807910C @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	bge _080790F8
	b _08078DC2
_080790F8:
	mov r0, sb
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0807910C: .4byte gNumSingleplayerCharacters

	thumb_func_start TaskDestructor_BumperHexagon
TaskDestructor_BumperHexagon: @ 0x08079110
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_BumperRound_LinearMov
CreateEntity_BumperRound_LinearMov: @ 0x08079124
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r3, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _080791A0 @ =Task_BumperRound_LinearMov
	movs r2, #0x80
	lsls r2, r2, #6
	movs r6, #0
	str r6, [sp]
	movs r1, #0x50
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	adds r0, #0xc
	adds r0, r0, r2
	mov ip, r0
	movs r1, #0
	strh r7, [r3, #4]
	mov r0, r8
	strh r0, [r3, #6]
	str r5, [r3]
	ldrb r0, [r5]
	strb r0, [r3, #8]
	strb r4, [r3, #9]
	str r6, [r3, #0x40]
	str r6, [r3, #0x44]
	ldr r4, _080791A4 @ =0x0300004E
	adds r0, r2, r4
	strb r1, [r0]
	ldr r1, _080791A8 @ =0x0300004C
	adds r0, r2, r1
	strh r6, [r0]
	ldrb r0, [r5, #5]
	ldrb r4, [r5, #6]
	cmp r0, r4
	bls _080791CC
	movs r0, #3
	ldrsb r0, [r5, r0]
	cmp r0, #0
	blt _080791B0
	subs r1, #4
	adds r0, r2, r1
	movs r1, #4
	strh r1, [r0]
	strh r6, [r3, #0x3c]
	ldr r4, _080791AC @ =0x0300004A
	adds r0, r2, r4
	strh r6, [r0]
	b _08079202
	.align 2, 0
_080791A0: .4byte Task_BumperRound_LinearMov
_080791A4: .4byte 0x0300004E
_080791A8: .4byte 0x0300004C
_080791AC: .4byte 0x0300004A
_080791B0:
	ldr r0, _080791C4 @ =0x03000048
	adds r1, r2, r0
	movs r0, #4
	strh r0, [r1]
	movs r0, #0x80
	strh r0, [r3, #0x3c]
	ldr r1, _080791C8 @ =0x0300004A
	adds r0, r2, r1
	strh r6, [r0]
	b _08079202
	.align 2, 0
_080791C4: .4byte 0x03000048
_080791C8: .4byte 0x0300004A
_080791CC:
	movs r0, #4
	ldrsb r0, [r5, r0]
	cmp r0, #0
	blt _080791F0
	ldr r4, _080791E8 @ =0x03000048
	adds r0, r2, r4
	strh r6, [r0]
	ldr r0, _080791EC @ =0x0300004A
	adds r1, r2, r0
	movs r0, #4
	strh r0, [r1]
	strh r6, [r3, #0x3c]
	b _08079202
	.align 2, 0
_080791E8: .4byte 0x03000048
_080791EC: .4byte 0x0300004A
_080791F0:
	ldr r1, _08079284 @ =0x03000048
	adds r0, r2, r1
	strh r6, [r0]
	ldr r4, _08079288 @ =0x0300004A
	adds r1, r2, r4
	movs r0, #4
	strh r0, [r1]
	movs r0, #0x80
	strh r0, [r3, #0x3c]
_08079202:
	ldr r1, [r5, #4]
	ldr r0, _0807928C @ =0x00FFFF00
	ands r1, r0
	cmp r1, #0
	bne _08079212
	adds r0, r3, #0
	adds r0, #0x48
	strh r1, [r0]
_08079212:
	ldrb r0, [r5]
	lsls r0, r0, #3
	lsls r1, r7, #8
	adds r0, r0, r1
	movs r3, #0
	movs r2, #0
	mov r1, ip
	strh r0, [r1, #0x16]
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	mov r4, r8
	lsls r1, r4, #8
	adds r0, r0, r1
	mov r1, ip
	strh r0, [r1, #0x18]
	movs r4, #2
	rsbs r4, r4, #0
	adds r0, r4, #0
	strb r0, [r5]
	ldr r0, _08079290 @ =0x06012E20
	str r0, [r1, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r1, #0x1a]
	strh r2, [r1, #8]
	ldr r0, _08079294 @ =0x000001E5
	strh r0, [r1, #0xa]
	mov r0, ip
	adds r0, #0x20
	strb r3, [r0]
	strh r2, [r1, #0x14]
	strh r2, [r1, #0x1c]
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x25
	strb r3, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	mov r1, ip
	str r0, [r1, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r1, #0x10]
	mov r0, ip
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08079284: .4byte 0x03000048
_08079288: .4byte 0x0300004A
_0807928C: .4byte 0x00FFFF00
_08079290: .4byte 0x06012E20
_08079294: .4byte 0x000001E5

	thumb_func_start Task_BumperRound_LinearMov
Task_BumperRound_LinearMov: @ 0x08079298
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080793E0 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	ldr r1, _080793E4 @ =0x0300000C
	adds r7, r5, r1
	ldr r2, [r6]
	mov sb, r2
	adds r0, #0x48
	adds r1, r5, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _080792F0
	mov r0, sb
	ldrb r2, [r0, #5]
	lsls r2, r2, #0xb
	ldr r4, _080793E8 @ =gSineTable
	movs r0, #0
	ldrsh r3, [r1, r0]
	ldr r0, _080793EC @ =gStageTime
	ldrh r1, [r6, #0x3c]
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	muls r0, r3, r0
	ldr r1, _080793F0 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	str r0, [r6, #0x40]
_080792F0:
	ldr r2, _080793F4 @ =0x0300004A
	adds r1, r5, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _08079328
	mov r0, sb
	ldrb r2, [r0, #6]
	lsls r2, r2, #0xb
	ldr r4, _080793E8 @ =gSineTable
	movs r0, #0
	ldrsh r3, [r1, r0]
	ldr r0, _080793EC @ =gStageTime
	ldrh r1, [r6, #0x3c]
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	muls r0, r3, r0
	ldr r1, _080793F0 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	str r0, [r6, #0x44]
_08079328:
	ldrb r1, [r6, #8]
	lsls r1, r1, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r2, sb
	ldrb r3, [r2, #1]
	lsls r3, r3, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r3, r3, r0
	ldr r0, _080793F8 @ =gCamera
	mov r8, r0
	ldrh r2, [r0]
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	subs r2, r4, r2
	ldr r0, [r6, #0x40]
	asrs r0, r0, #8
	adds r2, r2, r0
	strh r2, [r7, #0x16]
	mov r2, r8
	ldrh r1, [r2, #2]
	lsls r3, r3, #0x10
	asrs r5, r3, #0x10
	subs r1, r5, r1
	ldr r0, [r6, #0x44]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r7, #0x18]
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_80795C4
	cmp r0, #0
	beq _0807937C
	mov r0, sl
	ldr r1, [r0]
	ldr r0, _080793FC @ =sub_8079414
	str r0, [r1, #8]
_0807937C:
	mov r2, r8
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r4, r0
	bgt _080793AC
	adds r0, r1, #0
	subs r0, #0x80
	cmp r4, r0
	blt _080793AC
	mov r0, r8
	movs r1, #2
	ldrsh r2, [r0, r1]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp r5, r0
	bgt _080793AC
	adds r0, r2, #0
	subs r0, #0x80
	cmp r5, r0
	bge _08079400
_080793AC:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080793D0
	movs r2, #0x18
	ldrsh r0, [r7, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _080793D0
	movs r0, #0x18
	ldrsh r1, [r7, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08079400
_080793D0:
	ldrb r0, [r6, #8]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _080793E0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08079406
	.align 2, 0
_080793E0: .4byte gCurTask
_080793E4: .4byte 0x0300000C
_080793E8: .4byte gSineTable
_080793EC: .4byte gStageTime
_080793F0: .4byte 0x000003FF
_080793F4: .4byte 0x0300004A
_080793F8: .4byte gCamera
_080793FC: .4byte sub_8079414
_08079400:
	adds r0, r7, #0
	bl DisplaySprite
_08079406:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8079414
sub_8079414: @ 0x08079414
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r1, _08079590 @ =gCurTask
	ldr r0, [r1]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	adds r0, #0xc
	adds r7, r5, r0
	ldr r2, [r6]
	mov sb, r2
	adds r0, #0x42
	adds r0, r0, r5
	mov r8, r0
	ldrb r0, [r0]
	adds r0, #1
	mov r2, r8
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bls _0807944C
	ldr r1, [r1]
	ldr r0, _08079594 @ =Task_BumperRound_LinearMov
	str r0, [r1, #8]
_0807944C:
	ldr r0, _08079598 @ =0x03000048
	adds r1, r5, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _08079484
	mov r0, sb
	ldrb r2, [r0, #5]
	lsls r2, r2, #0xb
	ldr r4, _0807959C @ =gSineTable
	movs r0, #0
	ldrsh r3, [r1, r0]
	ldr r0, _080795A0 @ =gStageTime
	ldrh r1, [r6, #0x3c]
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	muls r0, r3, r0
	ldr r1, _080795A4 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	str r0, [r6, #0x40]
_08079484:
	ldr r2, _080795A8 @ =0x0300004A
	adds r1, r5, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _080794BC
	mov r0, sb
	ldrb r2, [r0, #6]
	lsls r2, r2, #0xb
	ldr r4, _0807959C @ =gSineTable
	movs r0, #0
	ldrsh r3, [r1, r0]
	ldr r0, _080795A0 @ =gStageTime
	ldrh r1, [r6, #0x3c]
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	muls r0, r3, r0
	ldr r1, _080795A4 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	str r0, [r6, #0x44]
_080794BC:
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	mov r0, sb
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r4, r2, #0x10
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_80795C4
	ldr r3, _080795AC @ =gCamera
	ldrh r1, [r3]
	subs r1, r4, r1
	ldr r0, [r6, #0x40]
	asrs r0, r0, #8
	adds r1, r1, r0
	mov ip, r1
	ldr r2, _0807959C @ =gSineTable
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, r0, #8
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	mov r1, ip
	subs r0, r1, r0
	strh r0, [r7, #0x16]
	ldrh r1, [r3, #2]
	subs r1, r5, r1
	ldr r0, [r6, #0x44]
	asrs r0, r0, #8
	adds r1, r1, r0
	mov ip, r1
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, r0, #8
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	mov r2, ip
	adds r1, r2, r0
	strh r1, [r7, #0x18]
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r4, r0
	bgt _0807955A
	adds r0, r1, #0
	subs r0, #0x80
	cmp r4, r0
	blt _0807955A
	movs r0, #2
	ldrsh r1, [r3, r0]
	subs r2, #0x50
	adds r0, r1, r2
	cmp r5, r0
	bgt _0807955A
	adds r0, r1, #0
	subs r0, #0x80
	cmp r5, r0
	bge _080795B0
_0807955A:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0807957E
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0807957E
	movs r2, #0x18
	ldrsh r1, [r7, r2]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _080795B0
_0807957E:
	ldrb r0, [r6, #8]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _08079590 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080795B6
	.align 2, 0
_08079590: .4byte gCurTask
_08079594: .4byte Task_BumperRound_LinearMov
_08079598: .4byte 0x03000048
_0807959C: .4byte gSineTable
_080795A0: .4byte gStageTime
_080795A4: .4byte 0x000003FF
_080795A8: .4byte 0x0300004A
_080795AC: .4byte gCamera
_080795B0:
	adds r0, r7, #0
	bl DisplaySprite
_080795B6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80795C4
sub_80795C4: @ 0x080795C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sl, r0
	str r1, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	movs r4, #0
	mov r8, r4
	ldr r7, _080795F0 @ =gPartner
	ldr r0, _080795F4 @ =gPlayer
	mov sb, r0
_080795E2:
	mov r1, r8
	cmp r1, #0
	beq _080795F8
	ldr r2, [r7]
	str r2, [sp, #0xc]
	b _080795FE
	.align 2, 0
_080795F0: .4byte gPartner
_080795F4: .4byte gPlayer
_080795F8:
	mov r3, sb
	ldr r3, [r3]
	str r3, [sp, #0xc]
_080795FE:
	ldr r5, _08079648 @ =gPlayer
	mov r1, sl
	ldr r0, [r1, #0x40]
	asrs r0, r0, #8
	ldr r2, [sp, #4]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	mov r3, sl
	ldr r0, [r3, #0x44]
	asrs r0, r0, #8
	ldr r2, [sp, #8]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r3, r5, #0
	mov r0, r8
	cmp r0, #0
	beq _08079626
	ldr r3, _0807964C @ =gPartner
_08079626:
	ldr r0, [sp]
	bl sa2__sub_800DF38
	cmp r0, #0
	bne _08079632
	b _080798F6
_08079632:
	mov r1, r8
	cmp r1, #0
	beq _08079650
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08079646
	b _080798F6
_08079646:
	b _08079660
	.align 2, 0
_08079648: .4byte gPlayer
_0807964C: .4byte gPartner
_08079650:
	mov r2, sb
	ldr r1, [r2, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r1, r0
	cmp r1, #0
	beq _08079660
	b _080798F6
_08079660:
	mov r3, r8
	cmp r3, #0
	beq _08079674
	ldr r1, _08079670 @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r1, r0]
	b _0807967E
	.align 2, 0
_08079670: .4byte gUnknown_03005B09
_08079674:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
_0807967E:
	cmp r0, #1
	beq _080796A6
	mov r2, r8
	cmp r2, #0
	beq _08079698
	ldr r3, _08079694 @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #2
	beq _080796A6
	b _080796FC
	.align 2, 0
_08079694: .4byte gUnknown_03005B09
_08079698:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _080796FC
_080796A6:
	mov r0, r8
	cmp r0, #0
	beq _080796BC
	ldr r1, _080796B8 @ =gUnknown_03005AED
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _080796CA
	b _080796FC
	.align 2, 0
_080796B8: .4byte gUnknown_03005AED
_080796BC:
	adds r0, r5, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080796FC
_080796CA:
	ldr r0, _080796E8 @ =gPlayer
	mov r2, r8
	cmp r2, #0
	beq _080796D4
	ldr r0, _080796EC @ =gPartner
_080796D4:
	bl sub_8046CEC
	mov r3, r8
	cmp r3, #0
	beq _080796F4
	movs r0, #5
	ldr r1, _080796F0 @ =gUnknown_03005AF0
	strb r0, [r1]
	b _080796FA
	.align 2, 0
_080796E8: .4byte gPlayer
_080796EC: .4byte gPartner
_080796F0: .4byte gUnknown_03005AF0
_080796F4:
	movs r0, #5
	ldr r2, _08079710 @ =gUnknown_03005A60
	strb r0, [r2]
_080796FA:
	ldr r5, _08079714 @ =gPlayer
_080796FC:
	mov r3, r8
	cmp r3, #0
	beq _08079718
	ldr r0, [r7, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _08079726
	.align 2, 0
_08079710: .4byte gUnknown_03005A60
_08079714: .4byte gPlayer
_08079718:
	mov r1, sb
	ldr r0, [r1, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, sb
	str r0, [r2, #0x10]
_08079726:
	mov r3, r8
	cmp r3, #0
	beq _08079736
	ldr r0, [r7, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r7, #0x10]
	b _08079742
_08079736:
	mov r1, sb
	ldr r0, [r1, #0x10]
	movs r1, #2
	orrs r0, r1
	mov r2, sb
	str r0, [r2, #0x10]
_08079742:
	mov r3, r8
	cmp r3, #0
	beq _08079758
	ldr r0, [r7, #0x10]
	ldr r1, _08079754 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r7, #0x10]
	b _08079764
	.align 2, 0
_08079754: .4byte 0xFFFFFEFF
_08079758:
	mov r1, sb
	ldr r0, [r1, #0x10]
	ldr r1, _08079774 @ =0xFFFFFEFF
	ands r0, r1
	mov r2, sb
	str r0, [r2, #0x10]
_08079764:
	mov r3, r8
	cmp r3, #0
	beq _08079778
	ldr r0, [r7, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r7, #0x10]
	b _08079784
	.align 2, 0
_08079774: .4byte 0xFFFFFEFF
_08079778:
	mov r1, sb
	ldr r0, [r1, #0x10]
	movs r1, #4
	orrs r0, r1
	mov r2, sb
	str r0, [r2, #0x10]
_08079784:
	mov r3, r8
	cmp r3, #0
	beq _08079796
	ldr r0, [r7, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _080797A4
_08079796:
	mov r1, sb
	ldr r0, [r1, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, sb
	str r0, [r2, #0x10]
_080797A4:
	adds r1, r5, #0
	mov r3, r8
	cmp r3, #0
	beq _080797AE
	ldr r1, _080797D8 @ =gPartner
_080797AE:
	movs r0, #6
	strb r0, [r1, #0xe]
	adds r1, r5, #0
	mov r0, r8
	cmp r0, #0
	beq _080797BC
	ldr r1, _080797D8 @ =gPartner
_080797BC:
	movs r0, #9
	strb r0, [r1, #0xf]
	mov r1, sl
	ldr r0, [r1, #0x44]
	asrs r1, r0, #8
	mov r2, r8
	cmp r2, #0
	beq _080797DC
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	ldr r3, [sp, #8]
	subs r0, r0, r3
	b _080797E4
	.align 2, 0
_080797D8: .4byte gPartner
_080797DC:
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	ldr r2, [sp, #8]
	subs r0, r0, r2
_080797E4:
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	mov r3, sl
	ldr r0, [r3, #0x40]
	asrs r1, r0, #8
	mov r0, r8
	cmp r0, #0
	beq _080797FA
	ldr r0, [r7]
	b _080797FC
_080797FA:
	ldr r0, [r5]
_080797FC:
	asrs r0, r0, #8
	ldr r3, [sp, #4]
	subs r0, r0, r3
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, #0
	bl sa2__sub_8004418
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, r1
	lsls r0, r0, #1
	ldr r2, _08079834 @ =gSineTable
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r1, #0xf
	bl Div
	mov r1, r8
	cmp r1, #0
	beq _08079838
	strh r0, [r7, #8]
	b _0807983C
	.align 2, 0
_08079834: .4byte gSineTable
_08079838:
	mov r2, sb
	strh r0, [r2, #8]
_0807983C:
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r4, r3
	lsls r0, r0, #1
	ldr r1, _0807985C @ =gSineTable
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r1, #0xf
	bl Div
	mov r3, r8
	cmp r3, #0
	beq _08079860
	strh r0, [r7, #0xc]
	b _08079864
	.align 2, 0
_0807985C: .4byte gSineTable
_08079860:
	mov r1, sb
	strh r0, [r1, #0xc]
_08079864:
	lsls r0, r4, #1
	ldr r2, _08079880 @ =gSineTable
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r1, #0xf
	bl Div
	mov r1, r8
	cmp r1, #0
	beq _08079884
	strh r0, [r7, #0xa]
	b _08079888
	.align 2, 0
_08079880: .4byte gSineTable
_08079884:
	mov r2, sb
	strh r0, [r2, #0xa]
_08079888:
	mov r3, r8
	cmp r3, #0
	beq _08079894
	movs r1, #8
	ldrsh r0, [r7, r1]
	b _0807989A
_08079894:
	mov r2, sb
	movs r3, #8
	ldrsh r0, [r2, r3]
_0807989A:
	cmp r0, #0
	bne _080798B0
	mov r0, r8
	cmp r0, #0
	beq _080798AA
	movs r0, #8
	strh r0, [r7, #8]
	b _080798B0
_080798AA:
	movs r0, #8
	mov r1, sb
	strh r0, [r1, #8]
_080798B0:
	ldr r1, _08079904 @ =gLevelScore
	ldr r6, [r1]
	adds r0, r6, #0
	adds r0, #0xa
	str r0, [r1]
	ldr r4, _08079908 @ =0x0000C350
	adds r1, r4, #0
	bl Div
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl Div
	cmp r5, r0
	beq _080798E6
	ldr r0, _0807990C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _080798E6
	ldr r1, _08079910 @ =gNumLives
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _08079914 @ =gMusicManagerState
	movs r0, #0x10
	strb r0, [r1, #3]
_080798E6:
	movs r0, #0xb7
	bl m4aSongNumStart
	mov r1, sl
	adds r1, #0x4e
	movs r0, #0
	strb r0, [r1]
	movs r4, #1
_080798F6:
	mov r2, r8
	cmp r2, #0
	beq _08079918
	ldr r3, [sp, #0xc]
	str r3, [r7]
	b _0807991E
	.align 2, 0
_08079904: .4byte gLevelScore
_08079908: .4byte 0x0000C350
_0807990C: .4byte gGameMode
_08079910: .4byte gNumLives
_08079914: .4byte gMusicManagerState
_08079918:
	ldr r0, [sp, #0xc]
	mov r1, sb
	str r0, [r1]
_0807991E:
	movs r2, #1
	add r8, r2
	ldr r0, _08079944 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r8, r0
	bge _08079930
	b _080795E2
_08079930:
	adds r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08079944: .4byte gNumSingleplayerCharacters

	thumb_func_start CreateEntity_BumperRound_CircularMov
CreateEntity_BumperRound_CircularMov: @ 0x08079948
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r3, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _080799E0 @ =Task_BumperRound_CircularMov
	movs r2, #0x80
	lsls r2, r2, #6
	movs r5, #0
	str r5, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	adds r0, #0xc
	adds r0, r0, r2
	mov ip, r0
	movs r1, #0
	mov r8, r1
	strh r7, [r3, #4]
	mov r0, sb
	strh r0, [r3, #6]
	str r6, [r3]
	ldrb r0, [r6]
	strb r0, [r3, #8]
	strb r4, [r3, #9]
	str r5, [r3, #0x40]
	str r5, [r3, #0x44]
	ldr r1, _080799E4 @ =0x03000048
	adds r0, r2, r1
	strh r5, [r0]
	ldr r4, _080799E8 @ =0x0300004A
	adds r0, r2, r4
	strh r5, [r0]
	ldrb r1, [r6, #3]
	movs r0, #7
	ands r0, r1
	lsls r0, r0, #8
	strh r0, [r3, #0x3c]
	ldrb r1, [r6, #4]
	adds r4, #6
	adds r0, r2, r4
	strb r1, [r0]
	ldr r1, _080799EC @ =0x03000051
	adds r0, r2, r1
	mov r4, r8
	strb r4, [r0]
	subs r1, #5
	adds r0, r2, r1
	strh r5, [r0]
	ldrb r4, [r6, #5]
	ldrb r1, [r6, #6]
	cmp r4, r1
	bls _080799F8
	ldr r1, _080799F0 @ =0x0300004F
	adds r0, r2, r1
	strb r4, [r0]
	ldr r4, _080799F4 @ =0x0300004E
	adds r1, r2, r4
	movs r0, #1
	strb r0, [r1]
	b _08079A06
	.align 2, 0
_080799E0: .4byte Task_BumperRound_CircularMov
_080799E4: .4byte 0x03000048
_080799E8: .4byte 0x0300004A
_080799EC: .4byte 0x03000051
_080799F0: .4byte 0x0300004F
_080799F4: .4byte 0x0300004E
_080799F8:
	ldr r4, _08079A88 @ =0x0300004F
	adds r0, r2, r4
	strb r1, [r0]
	ldr r1, _08079A8C @ =0x0300004E
	adds r0, r2, r1
	mov r4, r8
	strb r4, [r0]
_08079A06:
	movs r1, #3
	ldrsb r1, [r6, r1]
	cmp r1, #0
	bne _08079A14
	adds r0, r3, #0
	adds r0, #0x48
	strh r1, [r0]
_08079A14:
	ldrb r0, [r6]
	lsls r0, r0, #3
	lsls r1, r7, #8
	adds r0, r0, r1
	movs r3, #0
	movs r2, #0
	mov r1, ip
	strh r0, [r1, #0x16]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	mov r4, sb
	lsls r1, r4, #8
	adds r0, r0, r1
	mov r1, ip
	strh r0, [r1, #0x18]
	movs r4, #2
	rsbs r4, r4, #0
	adds r0, r4, #0
	strb r0, [r6]
	ldr r0, _08079A90 @ =0x06012E20
	str r0, [r1, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r1, #0x1a]
	strh r2, [r1, #8]
	ldr r0, _08079A94 @ =0x000001E5
	strh r0, [r1, #0xa]
	mov r0, ip
	adds r0, #0x20
	strb r3, [r0]
	strh r2, [r1, #0x14]
	strh r2, [r1, #0x1c]
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x25
	strb r3, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	mov r1, ip
	str r0, [r1, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r1, #0x10]
	mov r0, ip
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08079A88: .4byte 0x0300004F
_08079A8C: .4byte 0x0300004E
_08079A90: .4byte 0x06012E20
_08079A94: .4byte 0x000001E5

	thumb_func_start Task_BumperRound_CircularMov
Task_BumperRound_CircularMov: @ 0x08079A98
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08079AF4 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	adds r0, #0xc
	adds r7, r3, r0
	ldr r1, [r6]
	mov sb, r1
	ldr r2, _08079AF8 @ =0x0300004E
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08079B0C
	ldr r5, _08079AFC @ =gSineTable
	mov r8, r5
	ldrb r1, [r1, #4]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldr r0, _08079B00 @ =gStageTime
	ldr r4, [r0]
	adds r0, r1, #0
	muls r0, r4, r0
	ldrh r1, [r6, #0x3c]
	adds r0, r0, r1
	ldr r2, _08079B04 @ =0x000007FF
	ands r0, r2
	lsrs r0, r0, #1
	lsls r0, r0, #1
	add r0, r8
	movs r5, #0
	ldrsh r1, [r0, r5]
	ldr r0, _08079B08 @ =0x0300004F
	adds r3, r3, r0
	ldrb r0, [r3]
	muls r0, r1, r0
	str r0, [r6, #0x40]
	mov r1, sb
	movs r0, #4
	ldrsb r0, [r1, r0]
	b _08079B42
	.align 2, 0
_08079AF4: .4byte gCurTask
_08079AF8: .4byte 0x0300004E
_08079AFC: .4byte gSineTable
_08079B00: .4byte gStageTime
_08079B04: .4byte 0x000007FF
_08079B08: .4byte 0x0300004F
_08079B0C:
	ldr r5, _08079C18 @ =gSineTable
	mov r8, r5
	mov r1, sb
	movs r0, #4
	ldrsb r0, [r1, r0]
	rsbs r0, r0, #0
	ldr r1, _08079C1C @ =gStageTime
	ldr r4, [r1]
	muls r0, r4, r0
	ldrh r2, [r6, #0x3c]
	adds r0, r0, r2
	ldr r2, _08079C20 @ =0x000007FF
	ands r0, r2
	lsrs r0, r0, #1
	lsls r0, r0, #1
	add r0, r8
	movs r5, #0
	ldrsh r1, [r0, r5]
	ldr r0, _08079C24 @ =0x0300004F
	adds r3, r3, r0
	ldrb r0, [r3]
	muls r0, r1, r0
	str r0, [r6, #0x40]
	mov r1, sb
	movs r0, #4
	ldrsb r0, [r1, r0]
	rsbs r0, r0, #0
_08079B42:
	muls r0, r4, r0
	ldrh r5, [r6, #0x3c]
	adds r0, r0, r5
	ands r0, r2
	lsrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	add r0, r8
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldrb r0, [r3]
	muls r0, r1, r0
	str r0, [r6, #0x44]
	ldrb r1, [r6, #8]
	lsls r1, r1, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r5, sb
	ldrb r3, [r5, #1]
	lsls r3, r3, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r3, r3, r0
	ldr r0, _08079C28 @ =gCamera
	mov r8, r0
	ldrh r2, [r0]
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	subs r2, r4, r2
	ldr r0, [r6, #0x40]
	asrs r0, r0, #0xb
	adds r2, r2, r0
	strh r2, [r7, #0x16]
	mov r2, r8
	ldrh r1, [r2, #2]
	lsls r3, r3, #0x10
	asrs r5, r3, #0x10
	subs r1, r5, r1
	ldr r0, [r6, #0x44]
	asrs r0, r0, #0xb
	adds r1, r1, r0
	strh r1, [r7, #0x18]
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8079E78
	cmp r0, #0
	beq _08079BB4
	ldr r0, _08079C2C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08079C30 @ =sub_8079C64
	str r0, [r1, #8]
_08079BB4:
	mov r0, r8
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r4, r0
	bgt _08079BE4
	adds r0, r1, #0
	subs r0, #0x80
	cmp r4, r0
	blt _08079BE4
	mov r0, r8
	movs r1, #2
	ldrsh r2, [r0, r1]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp r5, r0
	bgt _08079BE4
	adds r0, r2, #0
	subs r0, #0x80
	cmp r5, r0
	bge _08079C34
_08079BE4:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08079C08
	movs r2, #0x18
	ldrsh r0, [r7, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _08079C08
	movs r5, #0x18
	ldrsh r1, [r7, r5]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08079C34
_08079C08:
	ldrb r0, [r6, #8]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _08079C2C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08079C52
	.align 2, 0
_08079C18: .4byte gSineTable
_08079C1C: .4byte gStageTime
_08079C20: .4byte 0x000007FF
_08079C24: .4byte 0x0300004F
_08079C28: .4byte gCamera
_08079C2C: .4byte gCurTask
_08079C30: .4byte sub_8079C64
_08079C34:
	ldr r1, _08079C60 @ =gSineTable
	adds r0, r6, #0
	adds r0, #0x4c
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	ldrh r2, [r7, #0x18]
	adds r0, r0, r2
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
_08079C52:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08079C60: .4byte gSineTable

	thumb_func_start sub_8079C64
sub_8079C64: @ 0x08079C64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _08079CDC @ =gCurTask
	ldr r0, [r2]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	adds r0, #0xc
	adds r7, r4, r0
	ldr r1, [r6]
	mov sb, r1
	ldr r3, _08079CE0 @ =0x03000051
	adds r1, r4, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bls _08079C9A
	ldr r1, [r2]
	ldr r0, _08079CE4 @ =Task_BumperRound_CircularMov
	str r0, [r1, #8]
_08079C9A:
	ldr r5, _08079CE8 @ =0x0300004E
	adds r0, r4, r5
	ldrb r0, [r0]
	cmp r0, #0
	beq _08079CFC
	ldr r2, _08079CEC @ =gSineTable
	mov r0, sb
	movs r1, #4
	ldrsb r1, [r0, r1]
	ldr r0, _08079CF0 @ =gStageTime
	ldr r0, [r0]
	mov r8, r0
	mov r0, r8
	muls r0, r1, r0
	ldrh r1, [r6, #0x3c]
	adds r0, r0, r1
	ldr r3, _08079CF4 @ =0x000007FF
	ands r0, r3
	lsrs r0, r0, #1
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r5, #0
	ldrsh r1, [r0, r5]
	ldr r0, _08079CF8 @ =0x0300004F
	adds r4, r4, r0
	ldrb r0, [r4]
	muls r0, r1, r0
	str r0, [r6, #0x40]
	mov r1, sb
	movs r0, #4
	ldrsb r0, [r1, r0]
	b _08079D36
	.align 2, 0
_08079CDC: .4byte gCurTask
_08079CE0: .4byte 0x03000051
_08079CE4: .4byte Task_BumperRound_CircularMov
_08079CE8: .4byte 0x0300004E
_08079CEC: .4byte gSineTable
_08079CF0: .4byte gStageTime
_08079CF4: .4byte 0x000007FF
_08079CF8: .4byte 0x0300004F
_08079CFC:
	ldr r2, _08079E30 @ =gSineTable
	mov r1, sb
	movs r0, #4
	ldrsb r0, [r1, r0]
	rsbs r0, r0, #0
	ldr r1, _08079E34 @ =gStageTime
	ldr r1, [r1]
	mov r8, r1
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	ldrh r5, [r6, #0x3c]
	adds r0, r0, r5
	ldr r3, _08079E38 @ =0x000007FF
	ands r0, r3
	lsrs r0, r0, #1
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r5, #0
	ldrsh r1, [r0, r5]
	ldr r0, _08079E3C @ =0x0300004F
	adds r4, r4, r0
	ldrb r0, [r4]
	muls r0, r1, r0
	str r0, [r6, #0x40]
	mov r1, sb
	movs r0, #4
	ldrsb r0, [r1, r0]
	rsbs r0, r0, #0
_08079D36:
	mov r5, r8
	muls r5, r0, r5
	adds r0, r5, #0
	ldrh r1, [r6, #0x3c]
	adds r0, r0, r1
	ands r0, r3
	lsrs r0, r0, #1
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r5, #0
	ldrsh r1, [r0, r5]
	ldrb r0, [r4]
	muls r0, r1, r0
	str r0, [r6, #0x44]
	mov sl, r2
	ldrb r1, [r6, #8]
	lsls r1, r1, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r0, sb
	ldrb r3, [r0, #1]
	lsls r3, r3, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r3, r3, r0
	ldr r2, _08079E40 @ =gCamera
	mov r8, r2
	ldrh r2, [r2]
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	subs r2, r5, r2
	ldr r0, [r6, #0x40]
	asrs r0, r0, #0xb
	adds r2, r2, r0
	movs r0, #0x51
	adds r0, r0, r6
	mov ip, r0
	ldrb r0, [r0]
	lsls r0, r0, #8
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	add r0, sl
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	subs r2, r2, r0
	strh r2, [r7, #0x16]
	mov r2, r8
	ldrh r1, [r2, #2]
	lsls r3, r3, #0x10
	asrs r4, r3, #0x10
	subs r1, r4, r1
	ldr r0, [r6, #0x44]
	asrs r0, r0, #0xb
	adds r1, r1, r0
	mov r3, ip
	ldrb r0, [r3]
	lsls r0, r0, #8
	add r0, sl
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	strh r1, [r7, #0x18]
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_8079E78
	mov r0, r8
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r3, #0xb8
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r5, r0
	bgt _08079DFC
	adds r0, r1, #0
	subs r0, #0x80
	cmp r5, r0
	blt _08079DFC
	mov r5, r8
	movs r0, #2
	ldrsh r2, [r5, r0]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp r4, r0
	bgt _08079DFC
	adds r0, r2, #0
	subs r0, #0x80
	cmp r4, r0
	bge _08079E48
_08079DFC:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08079E20
	movs r2, #0x18
	ldrsh r0, [r7, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _08079E20
	movs r3, #0x18
	ldrsh r1, [r7, r3]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08079E48
_08079E20:
	ldrb r0, [r6, #8]
	mov r5, sb
	strb r0, [r5]
	ldr r0, _08079E44 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08079E66
	.align 2, 0
_08079E30: .4byte gSineTable
_08079E34: .4byte gStageTime
_08079E38: .4byte 0x000007FF
_08079E3C: .4byte 0x0300004F
_08079E40: .4byte gCamera
_08079E44: .4byte gCurTask
_08079E48:
	ldr r1, _08079E74 @ =gSineTable
	adds r0, r6, #0
	adds r0, #0x4c
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	ldrh r1, [r7, #0x18]
	adds r0, r0, r1
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
_08079E66:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08079E74: .4byte gSineTable

	thumb_func_start sub_8079E78
sub_8079E78: @ 0x08079E78
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sl, r0
	str r1, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	movs r4, #0
	mov sb, r4
	ldr r7, _08079EAC @ =gPartner
	ldr r0, _08079EB0 @ =gPlayer
	mov r8, r0
_08079E96:
	mov r1, sb
	cmp r1, #0
	beq _08079EB4
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08079EA8
	b _0807A192
_08079EA8:
	ldr r5, _08079EB0 @ =gPlayer
	b _08079EC4
	.align 2, 0
_08079EAC: .4byte gPartner
_08079EB0: .4byte gPlayer
_08079EB4:
	mov r2, r8
	ldr r1, [r2, #0x10]
	movs r0, #0x80
	ands r1, r0
	ldr r5, _08079F04 @ =gPlayer
	cmp r1, #0
	beq _08079EC4
	b _0807A192
_08079EC4:
	mov r3, sl
	ldr r0, [r3, #0x40]
	asrs r0, r0, #0xb
	ldr r1, [sp, #4]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, [r3, #0x44]
	asrs r0, r0, #0xb
	ldr r2, [sp, #8]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r3, r5, #0
	mov r0, sb
	cmp r0, #0
	beq _08079EE8
	ldr r3, _08079F08 @ =gPartner
_08079EE8:
	ldr r0, [sp]
	bl sa2__sub_800DF38
	cmp r0, #0
	bne _08079EF4
	b _0807A192
_08079EF4:
	mov r1, sb
	cmp r1, #0
	beq _08079F10
	ldr r2, _08079F0C @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r2, r0]
	b _08079F16
	.align 2, 0
_08079F04: .4byte gPlayer
_08079F08: .4byte gPartner
_08079F0C: .4byte gUnknown_03005B09
_08079F10:
	ldr r3, _08079F2C @ =gUnknown_03005A79
	movs r0, #0
	ldrsb r0, [r3, r0]
_08079F16:
	cmp r0, #1
	beq _08079F3E
	mov r0, sb
	cmp r0, #0
	beq _08079F34
	ldr r1, _08079F30 @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #2
	beq _08079F3E
	b _08079F98
	.align 2, 0
_08079F2C: .4byte gUnknown_03005A79
_08079F30: .4byte gUnknown_03005B09
_08079F34:
	ldr r2, _08079F50 @ =gUnknown_03005A79
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #2
	bne _08079F98
_08079F3E:
	mov r3, sb
	cmp r3, #0
	beq _08079F58
	ldr r1, _08079F54 @ =gUnknown_03005AED
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08079F66
	b _08079F98
	.align 2, 0
_08079F50: .4byte gUnknown_03005A79
_08079F54: .4byte gUnknown_03005AED
_08079F58:
	adds r0, r5, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08079F98
_08079F66:
	ldr r0, _08079F84 @ =gPlayer
	mov r2, sb
	cmp r2, #0
	beq _08079F70
	ldr r0, _08079F88 @ =gPartner
_08079F70:
	bl sub_8046CEC
	mov r3, sb
	cmp r3, #0
	beq _08079F90
	movs r0, #5
	ldr r1, _08079F8C @ =gUnknown_03005AF0
	strb r0, [r1]
	b _08079F96
	.align 2, 0
_08079F84: .4byte gPlayer
_08079F88: .4byte gPartner
_08079F8C: .4byte gUnknown_03005AF0
_08079F90:
	movs r0, #5
	ldr r2, _08079FAC @ =gUnknown_03005A60
	strb r0, [r2]
_08079F96:
	ldr r5, _08079FB0 @ =gPlayer
_08079F98:
	mov r3, sb
	cmp r3, #0
	beq _08079FB4
	ldr r0, [r7, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _08079FC2
	.align 2, 0
_08079FAC: .4byte gUnknown_03005A60
_08079FB0: .4byte gPlayer
_08079FB4:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, r8
	str r0, [r2, #0x10]
_08079FC2:
	mov r3, sb
	cmp r3, #0
	beq _08079FD2
	ldr r0, [r7, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r7, #0x10]
	b _08079FDE
_08079FD2:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #2
	orrs r0, r1
	mov r2, r8
	str r0, [r2, #0x10]
_08079FDE:
	mov r3, sb
	cmp r3, #0
	beq _08079FF4
	ldr r0, [r7, #0x10]
	ldr r1, _08079FF0 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r7, #0x10]
	b _0807A000
	.align 2, 0
_08079FF0: .4byte 0xFFFFFEFF
_08079FF4:
	mov r1, r8
	ldr r0, [r1, #0x10]
	ldr r1, _0807A010 @ =0xFFFFFEFF
	ands r0, r1
	mov r2, r8
	str r0, [r2, #0x10]
_0807A000:
	mov r3, sb
	cmp r3, #0
	beq _0807A014
	ldr r0, [r7, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r7, #0x10]
	b _0807A020
	.align 2, 0
_0807A010: .4byte 0xFFFFFEFF
_0807A014:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #4
	orrs r0, r1
	mov r2, r8
	str r0, [r2, #0x10]
_0807A020:
	mov r3, sb
	cmp r3, #0
	beq _0807A032
	ldr r0, [r7, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _0807A040
_0807A032:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, r8
	str r0, [r2, #0x10]
_0807A040:
	adds r1, r5, #0
	mov r3, sb
	cmp r3, #0
	beq _0807A04A
	ldr r1, _0807A074 @ =gPartner
_0807A04A:
	movs r0, #6
	strb r0, [r1, #0xe]
	adds r1, r5, #0
	mov r0, sb
	cmp r0, #0
	beq _0807A058
	ldr r1, _0807A074 @ =gPartner
_0807A058:
	movs r0, #9
	strb r0, [r1, #0xf]
	mov r1, sl
	ldr r0, [r1, #0x44]
	asrs r1, r0, #8
	mov r2, sb
	cmp r2, #0
	beq _0807A078
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	ldr r3, [sp, #8]
	subs r0, r0, r3
	b _0807A080
	.align 2, 0
_0807A074: .4byte gPartner
_0807A078:
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	ldr r2, [sp, #8]
	subs r0, r0, r2
_0807A080:
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	mov r3, sl
	ldr r0, [r3, #0x40]
	asrs r1, r0, #8
	mov r0, sb
	cmp r0, #0
	beq _0807A096
	ldr r0, [r7]
	b _0807A098
_0807A096:
	ldr r0, [r5]
_0807A098:
	asrs r0, r0, #8
	ldr r3, [sp, #4]
	subs r0, r0, r3
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, #0
	bl sa2__sub_8004418
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, r1
	lsls r0, r0, #1
	ldr r2, _0807A0D0 @ =gSineTable
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r1, #0xf
	bl Div
	mov r1, sb
	cmp r1, #0
	beq _0807A0D4
	strh r0, [r7, #8]
	b _0807A0D8
	.align 2, 0
_0807A0D0: .4byte gSineTable
_0807A0D4:
	mov r2, r8
	strh r0, [r2, #8]
_0807A0D8:
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r4, r3
	lsls r0, r0, #1
	ldr r1, _0807A0F8 @ =gSineTable
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r1, #0xf
	bl Div
	mov r3, sb
	cmp r3, #0
	beq _0807A0FC
	strh r0, [r7, #0xc]
	b _0807A100
	.align 2, 0
_0807A0F8: .4byte gSineTable
_0807A0FC:
	mov r1, r8
	strh r0, [r1, #0xc]
_0807A100:
	lsls r0, r4, #1
	ldr r2, _0807A11C @ =gSineTable
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r1, #0xf
	bl Div
	mov r1, sb
	cmp r1, #0
	beq _0807A120
	strh r0, [r7, #0xa]
	b _0807A124
	.align 2, 0
_0807A11C: .4byte gSineTable
_0807A120:
	mov r2, r8
	strh r0, [r2, #0xa]
_0807A124:
	mov r3, sb
	cmp r3, #0
	beq _0807A130
	movs r1, #8
	ldrsh r0, [r7, r1]
	b _0807A136
_0807A130:
	mov r2, r8
	movs r3, #8
	ldrsh r0, [r2, r3]
_0807A136:
	cmp r0, #0
	bne _0807A14C
	mov r0, sb
	cmp r0, #0
	beq _0807A146
	movs r0, #8
	strh r0, [r7, #8]
	b _0807A14C
_0807A146:
	movs r0, #8
	mov r1, r8
	strh r0, [r1, #8]
_0807A14C:
	ldr r1, _0807A1B8 @ =gLevelScore
	ldr r6, [r1]
	adds r0, r6, #0
	adds r0, #0xa
	str r0, [r1]
	ldr r4, _0807A1BC @ =0x0000C350
	adds r1, r4, #0
	bl Div
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl Div
	cmp r5, r0
	beq _0807A182
	ldr r0, _0807A1C0 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _0807A182
	ldr r1, _0807A1C4 @ =gNumLives
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _0807A1C8 @ =gMusicManagerState
	movs r0, #0x10
	strb r0, [r1, #3]
_0807A182:
	movs r0, #0xb7
	bl m4aSongNumStart
	mov r1, sl
	adds r1, #0x51
	movs r0, #0
	strb r0, [r1]
	movs r4, #1
_0807A192:
	movs r2, #1
	add sb, r2
	ldr r0, _0807A1CC @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp sb, r0
	bge _0807A1A4
	b _08079E96
_0807A1A4:
	adds r0, r4, #0
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0807A1B8: .4byte gLevelScore
_0807A1BC: .4byte 0x0000C350
_0807A1C0: .4byte gGameMode
_0807A1C4: .4byte gNumLives
_0807A1C8: .4byte gMusicManagerState
_0807A1CC: .4byte gNumSingleplayerCharacters

	thumb_func_start CreateEntity_BumperTriHorizontal
CreateEntity_BumperTriHorizontal: @ 0x0807A1D0
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
	str r5, [sp, #4]
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r7, #0
	ldr r0, _0807A2D4 @ =Task_BumperTriHorizontal
	movs r1, #0x80
	lsls r1, r1, #6
	mov sl, r1
	movs r6, #0
	str r7, [sp]
	movs r1, #0x50
	mov r2, sl
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r5, _0807A2D8 @ =0x0300000C
	adds r7, r2, r5
	movs r3, #0
	strh r4, [r0, #4]
	mov r1, sp
	ldrh r1, [r1, #4]
	strh r1, [r0, #6]
	mov r5, sb
	str r5, [r0]
	ldrb r1, [r5]
	strb r1, [r0, #8]
	mov r1, r8
	strb r1, [r0, #9]
	str r6, [r0, #0x40]
	str r6, [r0, #0x44]
	ldr r5, _0807A2DC @ =0x0300004A
	adds r0, r2, r5
	strh r6, [r0]
	ldr r1, _0807A2E0 @ =0x03000048
	adds r0, r2, r1
	strh r6, [r0]
	adds r5, #2
	adds r0, r2, r5
	strb r3, [r0]
	ldr r0, _0807A2E4 @ =0x0300004D
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
	mov r1, sb
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r7, #0x16]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	ldr r1, [sp, #4]
	lsls r5, r1, #8
	adds r0, r0, r5
	strh r0, [r7, #0x18]
	movs r5, #2
	rsbs r5, r5, #0
	adds r0, r5, #0
	mov r1, sb
	strb r0, [r1]
	ldr r0, _0807A2E8 @ =0x06012B20
	str r0, [r7, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	strh r6, [r7, #8]
	movs r0, #0xee
	lsls r0, r0, #1
	strh r0, [r7, #0xa]
	ldr r5, _0807A2EC @ =0x0300002C
	adds r0, r2, r5
	strb r3, [r0]
	strh r6, [r7, #0x14]
	strh r6, [r7, #0x1c]
	ldr r0, _0807A2F0 @ =0x0300002D
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	adds r5, #2
	adds r1, r2, r5
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _0807A2F4 @ =0x03000031
	adds r2, r2, r0
	strb r3, [r2]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	mov r1, sl
	str r1, [r7, #0x10]
	mov r5, sb
	movs r0, #3
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _0807A2BE
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r0, r1
	str r0, [r7, #0x10]
_0807A2BE:
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
_0807A2D4: .4byte Task_BumperTriHorizontal
_0807A2D8: .4byte 0x0300000C
_0807A2DC: .4byte 0x0300004A
_0807A2E0: .4byte 0x03000048
_0807A2E4: .4byte 0x0300004D
_0807A2E8: .4byte 0x06012B20
_0807A2EC: .4byte 0x0300002C
_0807A2F0: .4byte 0x0300002D
_0807A2F4: .4byte 0x03000031

	thumb_func_start CreateEntity_BumperTriVertical
CreateEntity_BumperTriVertical: @ 0x0807A2F8
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
	str r5, [sp, #4]
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r7, #0
	ldr r0, _0807A3FC @ =Task_BumperTriVertical
	movs r1, #0x80
	lsls r1, r1, #6
	mov sl, r1
	movs r6, #0
	str r7, [sp]
	movs r1, #0x50
	mov r2, sl
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r5, _0807A400 @ =0x0300000C
	adds r7, r2, r5
	movs r3, #0
	strh r4, [r0, #4]
	mov r1, sp
	ldrh r1, [r1, #4]
	strh r1, [r0, #6]
	mov r5, sb
	str r5, [r0]
	ldrb r1, [r5]
	strb r1, [r0, #8]
	mov r1, r8
	strb r1, [r0, #9]
	str r6, [r0, #0x40]
	str r6, [r0, #0x44]
	ldr r5, _0807A404 @ =0x0300004A
	adds r0, r2, r5
	strh r6, [r0]
	ldr r1, _0807A408 @ =0x03000048
	adds r0, r2, r1
	strh r6, [r0]
	adds r5, #2
	adds r0, r2, r5
	strb r3, [r0]
	ldr r0, _0807A40C @ =0x0300004D
	adds r1, r2, r0
	movs r0, #2
	strb r0, [r1]
	mov r1, sb
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r7, #0x16]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	ldr r1, [sp, #4]
	lsls r5, r1, #8
	adds r0, r0, r5
	strh r0, [r7, #0x18]
	movs r5, #2
	rsbs r5, r5, #0
	adds r0, r5, #0
	mov r1, sb
	strb r0, [r1]
	ldr r0, _0807A410 @ =0x06012CA0
	str r0, [r7, #4]
	ldr r0, _0807A414 @ =0x000001DD
	strh r0, [r7, #0xa]
	ldr r5, _0807A418 @ =0x0300002C
	adds r0, r2, r5
	strb r3, [r0]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	strh r6, [r7, #8]
	strh r6, [r7, #0x14]
	strh r6, [r7, #0x1c]
	ldr r0, _0807A41C @ =0x0300002D
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	adds r5, #2
	adds r1, r2, r5
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _0807A420 @ =0x03000031
	adds r2, r2, r0
	strb r3, [r2]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	mov r1, sl
	str r1, [r7, #0x10]
	mov r5, sb
	movs r0, #3
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _0807A3E4
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r7, #0x10]
_0807A3E4:
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
_0807A3FC: .4byte Task_BumperTriVertical
_0807A400: .4byte 0x0300000C
_0807A404: .4byte 0x0300004A
_0807A408: .4byte 0x03000048
_0807A40C: .4byte 0x0300004D
_0807A410: .4byte 0x06012CA0
_0807A414: .4byte 0x000001DD
_0807A418: .4byte 0x0300002C
_0807A41C: .4byte 0x0300002D
_0807A420: .4byte 0x03000031

	thumb_func_start CreateEntity_BumperTriBig
CreateEntity_BumperTriBig: @ 0x0807A424
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
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
	movs r7, #0
	ldr r0, _0807A534 @ =Task_BumperTriBig
	movs r1, #0x80
	lsls r1, r1, #6
	mov sl, r1
	movs r1, #0
	mov sb, r1
	str r7, [sp]
	movs r1, #0x50
	mov r2, sl
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r1, _0807A538 @ =0x0300000C
	adds r7, r2, r1
	movs r3, #0
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	str r6, [r0]
	ldrb r1, [r6]
	strb r1, [r0, #8]
	mov r1, r8
	strb r1, [r0, #9]
	mov r1, sb
	str r1, [r0, #0x40]
	str r1, [r0, #0x44]
	ldr r1, _0807A53C @ =0x0300004A
	adds r0, r2, r1
	mov r1, sb
	strh r1, [r0]
	ldr r1, _0807A540 @ =0x03000048
	adds r0, r2, r1
	mov r1, sb
	strh r1, [r0]
	ldr r1, _0807A544 @ =0x0300004C
	adds r0, r2, r1
	strb r3, [r0]
	ldr r0, _0807A548 @ =0x0300004D
	adds r1, r2, r0
	movs r0, #4
	strb r0, [r1]
	ldrb r0, [r6]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r7, #0x16]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r7, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	ldr r0, _0807A54C @ =0x060126A0
	str r0, [r7, #4]
	ldr r0, _0807A550 @ =0x000001DB
	strh r0, [r7, #0xa]
	ldr r1, _0807A554 @ =0x0300002C
	adds r0, r2, r1
	strb r3, [r0]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	mov r0, sb
	strh r0, [r7, #8]
	strh r0, [r7, #0x14]
	strh r0, [r7, #0x1c]
	ldr r0, _0807A558 @ =0x0300002D
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0807A55C @ =0x0300002E
	adds r1, r2, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0807A560 @ =0x03000031
	adds r2, r2, r1
	strb r3, [r2]
	subs r0, #0x11
	str r0, [r7, #0x28]
	mov r0, sl
	str r0, [r7, #0x10]
	movs r0, #3
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bne _0807A50A
	movs r0, #0x80
	lsls r0, r0, #3
	mov r1, sl
	orrs r0, r1
	str r0, [r7, #0x10]
_0807A50A:
	movs r0, #4
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bne _0807A51C
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r7, #0x10]
_0807A51C:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807A534: .4byte Task_BumperTriBig
_0807A538: .4byte 0x0300000C
_0807A53C: .4byte 0x0300004A
_0807A540: .4byte 0x03000048
_0807A544: .4byte 0x0300004C
_0807A548: .4byte 0x0300004D
_0807A54C: .4byte 0x060126A0
_0807A550: .4byte 0x000001DB
_0807A554: .4byte 0x0300002C
_0807A558: .4byte 0x0300002D
_0807A55C: .4byte 0x0300002E
_0807A560: .4byte 0x03000031

	thumb_func_start Task_BumperTriHorizontal
Task_BumperTriHorizontal: @ 0x0807A564
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0807A63C @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, _0807A640 @ =0x0300000C
	adds r7, r1, r2
	ldr r0, [r4]
	mov sb, r0
	ldrb r1, [r4, #8]
	lsls r1, r1, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r2, sb
	ldrb r3, [r2, #1]
	lsls r3, r3, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r3, r3, r0
	ldr r0, _0807A644 @ =gCamera
	mov r8, r0
	ldrh r2, [r0]
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	subs r2, r5, r2
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	adds r2, r2, r0
	strh r2, [r7, #0x16]
	mov r2, r8
	ldrh r1, [r2, #2]
	lsls r3, r3, #0x10
	asrs r6, r3, #0x10
	subs r1, r6, r1
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r7, #0x18]
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_807AC7C
	cmp r0, #0
	beq _0807A5D8
	mov r0, sl
	ldr r1, [r0]
	ldr r0, _0807A648 @ =sub_807A660
	str r0, [r1, #8]
_0807A5D8:
	mov r2, r8
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r5, r0
	bgt _0807A608
	adds r0, r1, #0
	subs r0, #0x80
	cmp r5, r0
	blt _0807A608
	mov r0, r8
	movs r1, #2
	ldrsh r2, [r0, r1]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp r6, r0
	bgt _0807A608
	adds r0, r2, #0
	subs r0, #0x80
	cmp r6, r0
	bge _0807A64C
_0807A608:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0807A62C
	movs r2, #0x18
	ldrsh r0, [r7, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _0807A62C
	movs r0, #0x18
	ldrsh r1, [r7, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0807A64C
_0807A62C:
	ldrb r0, [r4, #8]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _0807A63C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0807A652
	.align 2, 0
_0807A63C: .4byte gCurTask
_0807A640: .4byte 0x0300000C
_0807A644: .4byte gCamera
_0807A648: .4byte sub_807A660
_0807A64C:
	adds r0, r7, #0
	bl DisplaySprite
_0807A652:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_807A660
sub_807A660: @ 0x0807A660
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _0807A6E4 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r0, #0xc
	adds r6, r1, r0
	ldr r4, [r7]
	mov sb, r4
	adds r0, #0x40
	adds r5, r1, r0
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bls _0807A694
	ldr r1, [r2]
	ldr r0, _0807A6E8 @ =Task_BumperTriHorizontal
	str r0, [r1, #8]
_0807A694:
	ldrb r0, [r7, #8]
	lsls r0, r0, #3
	ldrh r1, [r7, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	mov r1, sb
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	ldrh r1, [r7, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0807A6F4
	ldr r4, _0807A6EC @ =gCamera
	ldrh r0, [r4]
	lsls r3, r3, #0x10
	asrs r1, r3, #0x10
	subs r1, r1, r0
	ldr r2, _0807A6F0 @ =gSineTable
	ldrb r0, [r5]
	lsls r0, r0, #8
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r0, r5
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	b _0807A714
	.align 2, 0
_0807A6E4: .4byte gCurTask
_0807A6E8: .4byte Task_BumperTriHorizontal
_0807A6EC: .4byte gCamera
_0807A6F0: .4byte gSineTable
_0807A6F4:
	ldr r4, _0807A7A8 @ =gCamera
	ldrh r0, [r4]
	lsls r3, r3, #0x10
	asrs r1, r3, #0x10
	subs r1, r1, r0
	ldr r2, _0807A7AC @ =gSineTable
	ldrb r0, [r5]
	lsls r0, r0, #8
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r0, r5
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	subs r1, r1, r0
_0807A714:
	strh r1, [r6, #0x16]
	mov r8, r4
	mov r0, r8
	ldrh r1, [r0, #2]
	mov r4, ip
	lsls r0, r4, #0x10
	asrs r5, r0, #0x10
	subs r1, r5, r1
	adds r0, r7, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	lsls r0, r0, #8
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	strh r1, [r6, #0x18]
	asrs r4, r3, #0x10
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_807AC7C
	mov r0, r8
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r4, r0
	bgt _0807A774
	adds r0, r1, #0
	subs r0, #0x80
	cmp r4, r0
	blt _0807A774
	mov r0, r8
	movs r1, #2
	ldrsh r4, [r0, r1]
	subs r2, #0x50
	adds r0, r4, r2
	cmp r5, r0
	bgt _0807A774
	adds r0, r4, #0
	subs r0, #0x80
	cmp r5, r0
	bge _0807A7B4
_0807A774:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0807A798
	movs r4, #0x18
	ldrsh r0, [r6, r4]
	adds r0, #0x80
	cmp r0, #0
	blt _0807A798
	movs r5, #0x18
	ldrsh r1, [r6, r5]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0807A7B4
_0807A798:
	ldrb r0, [r7, #8]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _0807A7B0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0807A7BA
	.align 2, 0
_0807A7A8: .4byte gCamera
_0807A7AC: .4byte gSineTable
_0807A7B0: .4byte gCurTask
_0807A7B4:
	adds r0, r6, #0
	bl DisplaySprite
_0807A7BA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Task_BumperTriVertical
Task_BumperTriVertical: @ 0x0807A7C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0807A8A0 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, _0807A8A4 @ =0x0300000C
	adds r7, r1, r2
	ldr r0, [r4]
	mov sb, r0
	ldrb r1, [r4, #8]
	lsls r1, r1, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r2, sb
	ldrb r3, [r2, #1]
	lsls r3, r3, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r3, r3, r0
	ldr r0, _0807A8A8 @ =gCamera
	mov r8, r0
	ldrh r2, [r0]
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	subs r2, r5, r2
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	adds r2, r2, r0
	strh r2, [r7, #0x16]
	mov r2, r8
	ldrh r1, [r2, #2]
	lsls r3, r3, #0x10
	asrs r6, r3, #0x10
	subs r1, r6, r1
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r7, #0x18]
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_807B0A0
	cmp r0, #0
	beq _0807A83C
	mov r0, sl
	ldr r1, [r0]
	ldr r0, _0807A8AC @ =sub_807A8C4
	str r0, [r1, #8]
_0807A83C:
	mov r2, r8
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r5, r0
	bgt _0807A86C
	adds r0, r1, #0
	subs r0, #0x80
	cmp r5, r0
	blt _0807A86C
	mov r0, r8
	movs r1, #2
	ldrsh r2, [r0, r1]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp r6, r0
	bgt _0807A86C
	adds r0, r2, #0
	subs r0, #0x80
	cmp r6, r0
	bge _0807A8B0
_0807A86C:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0807A890
	movs r2, #0x18
	ldrsh r0, [r7, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _0807A890
	movs r0, #0x18
	ldrsh r1, [r7, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0807A8B0
_0807A890:
	ldrb r0, [r4, #8]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _0807A8A0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0807A8B6
	.align 2, 0
_0807A8A0: .4byte gCurTask
_0807A8A4: .4byte 0x0300000C
_0807A8A8: .4byte gCamera
_0807A8AC: .4byte sub_807A8C4
_0807A8B0:
	adds r0, r7, #0
	bl DisplaySprite
_0807A8B6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_807A8C4
sub_807A8C4: @ 0x0807A8C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _0807A954 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r4, [r7]
	mov sl, r4
	adds r0, #0x40
	adds r6, r1, r0
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bls _0807A8FA
	ldr r1, [r2]
	ldr r0, _0807A958 @ =Task_BumperTriVertical
	str r0, [r1, #8]
_0807A8FA:
	ldrb r1, [r7, #8]
	lsls r1, r1, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	mov r4, sl
	ldrb r3, [r4, #1]
	lsls r3, r3, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r3, r3, r0
	lsls r3, r3, #0x10
	lsrs r0, r1, #0x10
	mov sb, r0
	asrs r4, r1, #0x10
	lsrs r1, r3, #0x10
	mov r8, r1
	asrs r3, r3, #0x10
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_807B0A0
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0807A964
	ldr r3, _0807A95C @ =gCamera
	ldrh r1, [r3]
	subs r1, r4, r1
	ldr r2, _0807A960 @ =gSineTable
	ldrb r0, [r6]
	lsls r0, r0, #8
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r0, r4
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	b _0807A980
	.align 2, 0
_0807A954: .4byte gCurTask
_0807A958: .4byte Task_BumperTriVertical
_0807A95C: .4byte gCamera
_0807A960: .4byte gSineTable
_0807A964:
	ldr r3, _0807AA08 @ =gCamera
	ldrh r1, [r3]
	subs r1, r4, r1
	ldr r2, _0807AA0C @ =gSineTable
	ldrb r0, [r6]
	lsls r0, r0, #8
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r0, r6
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	subs r1, r1, r0
_0807A980:
	strh r1, [r5, #0x16]
	ldrh r1, [r3, #2]
	mov r4, r8
	lsls r0, r4, #0x10
	asrs r4, r0, #0x10
	subs r1, r4, r1
	adds r0, r7, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	lsls r0, r0, #8
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	strh r1, [r5, #0x18]
	mov r6, sb
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	movs r0, #0
	ldrsh r2, [r3, r0]
	movs r6, #0xb8
	lsls r6, r6, #1
	adds r0, r2, r6
	cmp r1, r0
	bgt _0807A9D2
	adds r0, r2, #0
	subs r0, #0x80
	cmp r1, r0
	blt _0807A9D2
	movs r0, #2
	ldrsh r3, [r3, r0]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r3, r1
	cmp r4, r0
	bgt _0807A9D2
	adds r0, r3, #0
	subs r0, #0x80
	cmp r4, r0
	bge _0807AA14
_0807A9D2:
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0807A9F6
	movs r4, #0x18
	ldrsh r0, [r5, r4]
	adds r0, #0x80
	cmp r0, #0
	blt _0807A9F6
	movs r6, #0x18
	ldrsh r1, [r5, r6]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0807AA14
_0807A9F6:
	ldrb r0, [r7, #8]
	mov r1, sl
	strb r0, [r1]
	ldr r0, _0807AA10 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0807AA1A
	.align 2, 0
_0807AA08: .4byte gCamera
_0807AA0C: .4byte gSineTable
_0807AA10: .4byte gCurTask
_0807AA14:
	adds r0, r5, #0
	bl DisplaySprite
_0807AA1A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start Task_BumperTriBig
Task_BumperTriBig: @ 0x0807AA28
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0807AAF0 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r2, _0807AAF4 @ =0x0300000C
	adds r6, r1, r2
	ldr r3, [r7]
	mov sb, r3
	ldrb r1, [r7, #8]
	lsls r1, r1, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r3, #1]
	lsls r2, r2, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r0, _0807AAF8 @ =gCamera
	mov r8, r0
	ldrh r0, [r0]
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	subs r0, r4, r0
	strh r0, [r6, #0x16]
	mov r1, r8
	ldrh r0, [r1, #2]
	lsls r2, r2, #0x10
	asrs r5, r2, #0x10
	subs r0, r5, r0
	strh r0, [r6, #0x18]
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_807B434
	cmp r0, #0
	beq _0807AA8E
	mov r2, sl
	ldr r1, [r2]
	ldr r0, _0807AAFC @ =sub_807AB14
	str r0, [r1, #8]
_0807AA8E:
	mov r3, r8
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r4, r0
	bgt _0807AABA
	adds r0, r1, #0
	subs r0, #0x80
	cmp r4, r0
	blt _0807AABA
	movs r0, #2
	ldrsh r1, [r3, r0]
	subs r2, #0x50
	adds r0, r1, r2
	cmp r5, r0
	bgt _0807AABA
	adds r0, r1, #0
	subs r0, #0x80
	cmp r5, r0
	bge _0807AB00
_0807AABA:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0807AADE
	movs r3, #0x18
	ldrsh r0, [r6, r3]
	adds r0, #0x80
	cmp r0, #0
	blt _0807AADE
	movs r0, #0x18
	ldrsh r1, [r6, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0807AB00
_0807AADE:
	ldrb r0, [r7, #8]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _0807AAF0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0807AB06
	.align 2, 0
_0807AAF0: .4byte gCurTask
_0807AAF4: .4byte 0x0300000C
_0807AAF8: .4byte gCamera
_0807AAFC: .4byte sub_807AB14
_0807AB00:
	adds r0, r6, #0
	bl DisplaySprite
_0807AB06:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_807AB14
sub_807AB14: @ 0x0807AB14
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _0807AB98 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r0, #0xc
	adds r6, r1, r0
	ldr r4, [r7]
	mov sb, r4
	adds r0, #0x40
	adds r5, r1, r0
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bls _0807AB48
	ldr r1, [r2]
	ldr r0, _0807AB9C @ =Task_BumperTriBig
	str r0, [r1, #8]
_0807AB48:
	ldrb r0, [r7, #8]
	lsls r0, r0, #3
	ldrh r1, [r7, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	mov r1, sb
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	ldrh r1, [r7, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0807ABA8
	ldr r4, _0807ABA0 @ =gCamera
	ldrh r0, [r4]
	lsls r3, r3, #0x10
	asrs r1, r3, #0x10
	subs r1, r1, r0
	ldr r2, _0807ABA4 @ =gSineTable
	ldrb r0, [r5]
	lsls r0, r0, #8
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r0, r5
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	b _0807ABC8
	.align 2, 0
_0807AB98: .4byte gCurTask
_0807AB9C: .4byte Task_BumperTriBig
_0807ABA0: .4byte gCamera
_0807ABA4: .4byte gSineTable
_0807ABA8:
	ldr r4, _0807AC5C @ =gCamera
	ldrh r0, [r4]
	lsls r3, r3, #0x10
	asrs r1, r3, #0x10
	subs r1, r1, r0
	ldr r2, _0807AC60 @ =gSineTable
	ldrb r0, [r5]
	lsls r0, r0, #8
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r0, r5
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	subs r1, r1, r0
_0807ABC8:
	strh r1, [r6, #0x16]
	mov r8, r4
	mov r0, r8
	ldrh r1, [r0, #2]
	mov r4, ip
	lsls r0, r4, #0x10
	asrs r5, r0, #0x10
	subs r1, r5, r1
	adds r0, r7, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	lsls r0, r0, #8
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	strh r1, [r6, #0x18]
	asrs r4, r3, #0x10
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_807B434
	mov r0, r8
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r4, r0
	bgt _0807AC28
	adds r0, r1, #0
	subs r0, #0x80
	cmp r4, r0
	blt _0807AC28
	mov r0, r8
	movs r1, #2
	ldrsh r4, [r0, r1]
	subs r2, #0x50
	adds r0, r4, r2
	cmp r5, r0
	bgt _0807AC28
	adds r0, r4, #0
	subs r0, #0x80
	cmp r5, r0
	bge _0807AC68
_0807AC28:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0807AC4C
	movs r4, #0x18
	ldrsh r0, [r6, r4]
	adds r0, #0x80
	cmp r0, #0
	blt _0807AC4C
	movs r5, #0x18
	ldrsh r1, [r6, r5]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0807AC68
_0807AC4C:
	ldrb r0, [r7, #8]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _0807AC64 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0807AC6E
	.align 2, 0
_0807AC5C: .4byte gCamera
_0807AC60: .4byte gSineTable
_0807AC64: .4byte gCurTask
_0807AC68:
	adds r0, r6, #0
	bl DisplaySprite
_0807AC6E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_807AC7C
sub_807AC7C: @ 0x0807AC7C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov r8, r0
	str r1, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	movs r1, #0
	str r1, [sp, #0x10]
	movs r6, #0
	ldr r4, _0807ACAC @ =gPartner
	ldr r5, _0807ACB0 @ =gPlayer
	ldr r2, _0807ACB4 @ =0x0000FA27
	mov sl, r2
_0807ACA2:
	cmp r6, #0
	beq _0807ACB8
	ldr r3, [r4]
	mov sb, r3
	b _0807ACBC
	.align 2, 0
_0807ACAC: .4byte gPartner
_0807ACB0: .4byte gPlayer
_0807ACB4: .4byte 0x0000FA27
_0807ACB8:
	ldr r0, [r5]
	mov sb, r0
_0807ACBC:
	cmp r6, #0
	beq _0807ACCA
	ldr r1, [r4, #0x10]
	movs r0, #0x80
	ands r1, r0
	adds r7, r6, #1
	b _0807ACD2
_0807ACCA:
	ldr r1, [r5, #0x10]
	movs r0, #0x80
	ands r1, r0
	movs r7, #1
_0807ACD2:
	cmp r1, #0
	beq _0807ACD8
	b _0807B066
_0807ACD8:
	ldr r0, _0807AD44 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _0807ACE6
	adds r7, r6, #1
	cmp r0, #5
	bne _0807AD30
_0807ACE6:
	movs r2, #0
	ldr r1, _0807AD48 @ =gMultiplayerPlayerTasks
	ldr r0, [r1]
	adds r7, r6, #1
	cmp r0, #0
	beq _0807AD30
	adds r3, r1, #0
_0807ACF4:
	ldr r0, _0807AD4C @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r2, r0
	beq _0807AD1C
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x5c]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0807AD1C
	movs r0, #1
	str r0, [sp, #0x10]
_0807AD1C:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bhi _0807AD30
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r0, [r0]
	cmp r0, #0
	bne _0807ACF4
_0807AD30:
	cmp r6, #0
	beq _0807AD50
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0807AD5C
	b _0807AD64
	.align 2, 0
_0807AD44: .4byte gGameMode
_0807AD48: .4byte gMultiplayerPlayerTasks
_0807AD4C: .4byte 0x04000128
_0807AD50:
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0807AD64
_0807AD5C:
	ldr r1, [sp, #0x10]
	cmp r1, #0
	bne _0807AD64
	b _0807B066
_0807AD64:
	mov r2, r8
	ldr r0, [r2, #0x40]
	asrs r0, r0, #8
	ldr r3, [sp, #4]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, [r2, #0x44]
	asrs r0, r0, #8
	ldr r2, [sp, #8]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r3, _0807ADA0 @ =gPlayer
	cmp r6, #0
	beq _0807AD86
	ldr r3, _0807ADA4 @ =gPartner
_0807AD86:
	ldr r0, [sp]
	bl sa2__sub_800DF38
	cmp r0, #0
	bne _0807AD92
	b _0807B066
_0807AD92:
	cmp r6, #0
	beq _0807ADAC
	ldr r3, _0807ADA8 @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r3, r0]
	b _0807ADB2
	.align 2, 0
_0807ADA0: .4byte gPlayer
_0807ADA4: .4byte gPartner
_0807ADA8: .4byte gUnknown_03005B09
_0807ADAC:
	ldr r1, _0807ADC8 @ =gUnknown_03005A79
	movs r0, #0
	ldrsb r0, [r1, r0]
_0807ADB2:
	ldr r3, _0807ADCC @ =gPlayer
	cmp r0, #1
	beq _0807ADDE
	cmp r6, #0
	beq _0807ADD4
	ldr r2, _0807ADD0 @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #2
	beq _0807ADDE
	b _0807AE34
	.align 2, 0
_0807ADC8: .4byte gUnknown_03005A79
_0807ADCC: .4byte gPlayer
_0807ADD0: .4byte gUnknown_03005B09
_0807ADD4:
	ldr r1, _0807ADF0 @ =gUnknown_03005A79
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #2
	bne _0807AE34
_0807ADDE:
	cmp r6, #0
	beq _0807ADF8
	ldr r2, _0807ADF4 @ =gUnknown_03005AED
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne _0807AE06
	b _0807AE34
	.align 2, 0
_0807ADF0: .4byte gUnknown_03005A79
_0807ADF4: .4byte gUnknown_03005AED
_0807ADF8:
	adds r0, r3, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0807AE34
_0807AE06:
	ldr r0, _0807AE20 @ =gPlayer
	cmp r6, #0
	beq _0807AE0E
	ldr r0, _0807AE24 @ =gPartner
_0807AE0E:
	bl sub_8046CEC
	cmp r6, #0
	beq _0807AE2C
	movs r0, #5
	ldr r3, _0807AE28 @ =gUnknown_03005AF0
	strb r0, [r3]
	b _0807AE32
	.align 2, 0
_0807AE20: .4byte gPlayer
_0807AE24: .4byte gPartner
_0807AE28: .4byte gUnknown_03005AF0
_0807AE2C:
	movs r0, #5
	ldr r1, _0807AE4C @ =gUnknown_03005A60
	strb r0, [r1]
_0807AE32:
	ldr r3, _0807AE50 @ =gPlayer
_0807AE34:
	ldr r0, _0807AE54 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _0807AE40
	cmp r0, #5
	bne _0807AE5C
_0807AE40:
	cmp r6, #0
	beq _0807AE58
	movs r0, #0x1e
	strh r0, [r4, #0x1c]
	b _0807AE5C
	.align 2, 0
_0807AE4C: .4byte gUnknown_03005A60
_0807AE50: .4byte gPlayer
_0807AE54: .4byte gGameMode
_0807AE58:
	movs r0, #0x1e
	strh r0, [r3, #0x1c]
_0807AE5C:
	cmp r6, #0
	beq _0807AE6C
	ldr r0, [r4, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807AE76
_0807AE6C:
	ldr r0, [r5, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_0807AE76:
	cmp r6, #0
	beq _0807AE84
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0807AE8C
_0807AE84:
	ldr r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0x10]
_0807AE8C:
	cmp r6, #0
	beq _0807AEA0
	ldr r0, [r4, #0x10]
	ldr r1, _0807AE9C @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807AEA8
	.align 2, 0
_0807AE9C: .4byte 0xFFFFFEFF
_0807AEA0:
	ldr r0, [r5, #0x10]
	ldr r1, _0807AEB8 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #0x10]
_0807AEA8:
	cmp r6, #0
	beq _0807AEBC
	ldr r0, [r4, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0807AEC4
	.align 2, 0
_0807AEB8: .4byte 0xFFFFFEFF
_0807AEBC:
	ldr r0, [r5, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #0x10]
_0807AEC4:
	cmp r6, #0
	beq _0807AED4
	ldr r0, [r4, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807AEDE
_0807AED4:
	ldr r0, [r5, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_0807AEDE:
	adds r1, r3, #0
	cmp r6, #0
	beq _0807AEE6
	ldr r1, _0807AF04 @ =gPartner
_0807AEE6:
	movs r0, #6
	strb r0, [r1, #0xe]
	adds r1, r3, #0
	cmp r6, #0
	beq _0807AEF2
	ldr r1, _0807AF04 @ =gPartner
_0807AEF2:
	movs r0, #9
	strb r0, [r1, #0xf]
	mov r2, r8
	ldr r0, [r2, #0x44]
	asrs r1, r0, #8
	cmp r6, #0
	beq _0807AF08
	ldr r0, [r4, #4]
	b _0807AF0A
	.align 2, 0
_0807AF04: .4byte gPartner
_0807AF08:
	ldr r0, [r3, #4]
_0807AF0A:
	asrs r0, r0, #8
	ldr r2, [sp, #8]
	subs r0, r0, r2
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	mov r1, r8
	ldr r0, [r1, #0x40]
	asrs r1, r0, #8
	cmp r6, #0
	beq _0807AF24
	ldr r0, [r4]
	b _0807AF26
_0807AF24:
	ldr r0, [r3]
_0807AF26:
	asrs r0, r0, #8
	ldr r3, [sp, #4]
	subs r0, r0, r3
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, #0
	bl sa2__sub_8004418
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r1, [sp]
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0807AFC4
	ldr r0, _0807AF5C @ =0x000001FF
	cmp r2, r0
	bls _0807AF6C
	cmp r6, #0
	beq _0807AF64
	ldr r0, _0807AF60 @ =0x0000F99A
	strh r0, [r4, #0xa]
	b _0807B054
	.align 2, 0
_0807AF5C: .4byte 0x000001FF
_0807AF60: .4byte 0x0000F99A
_0807AF64:
	ldr r0, _0807AF68 @ =0x0000F99A
	b _0807B052
	.align 2, 0
_0807AF68: .4byte 0x0000F99A
_0807AF6C:
	cmp r2, #0xff
	bhi _0807AF94
	cmp r6, #0
	beq _0807AF80
	ldr r2, _0807AF7C @ =0x00000297
	strh r2, [r4, #8]
	b _0807AF84
	.align 2, 0
_0807AF7C: .4byte 0x00000297
_0807AF80:
	ldr r3, _0807AF8C @ =0x00000297
	strh r3, [r5, #8]
_0807AF84:
	cmp r6, #0
	bne _0807AFAC
	ldr r0, _0807AF90 @ =0x000005D9
	b _0807B052
	.align 2, 0
_0807AF8C: .4byte 0x00000297
_0807AF90: .4byte 0x000005D9
_0807AF94:
	cmp r6, #0
	beq _0807AFA4
	ldr r0, _0807AFA0 @ =0x0000FD69
	strh r0, [r4, #8]
	b _0807AFA8
	.align 2, 0
_0807AFA0: .4byte 0x0000FD69
_0807AFA4:
	ldr r0, _0807AFB4 @ =0x0000FD69
	strh r0, [r5, #8]
_0807AFA8:
	cmp r6, #0
	beq _0807AFBC
_0807AFAC:
	ldr r0, _0807AFB8 @ =0x000005D9
	strh r0, [r4, #0xa]
	b _0807B054
	.align 2, 0
_0807AFB4: .4byte 0x0000FD69
_0807AFB8: .4byte 0x000005D9
_0807AFBC:
	ldr r0, _0807AFC0 @ =0x000005D9
	b _0807B052
	.align 2, 0
_0807AFC0: .4byte 0x000005D9
_0807AFC4:
	movs r0, #0xf7
	lsls r0, r0, #1
	cmp r2, r0
	bls _0807B014
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r2, r0
	bls _0807AFF6
	cmp r6, #0
	beq _0807AFDE
	subs r0, #0x69
	strh r0, [r4, #8]
	b _0807AFE2
_0807AFDE:
	ldr r1, _0807AFEC @ =0x00000297
	strh r1, [r5, #8]
_0807AFE2:
	cmp r6, #0
	beq _0807AFF0
	mov r2, sl
	strh r2, [r4, #0xa]
	b _0807B054
	.align 2, 0
_0807AFEC: .4byte 0x00000297
_0807AFF0:
	mov r3, sl
	strh r3, [r5, #0xa]
	b _0807B054
_0807AFF6:
	cmp r6, #0
	beq _0807B004
	ldr r0, _0807B000 @ =0x0000FD69
	strh r0, [r4, #8]
	b _0807B008
	.align 2, 0
_0807B000: .4byte 0x0000FD69
_0807B004:
	ldr r0, _0807B010 @ =0x0000FD69
	strh r0, [r5, #8]
_0807B008:
	cmp r6, #0
	bne _0807B030
	b _0807B03C
	.align 2, 0
_0807B010: .4byte 0x0000FD69
_0807B014:
	cmp r2, #0x14
	bhi _0807B042
	cmp r6, #0
	beq _0807B028
	ldr r2, _0807B024 @ =0x00000297
	strh r2, [r4, #8]
	b _0807B02C
	.align 2, 0
_0807B024: .4byte 0x00000297
_0807B028:
	ldr r3, _0807B038 @ =0x00000297
	strh r3, [r5, #8]
_0807B02C:
	cmp r6, #0
	beq _0807B03C
_0807B030:
	mov r0, sl
	strh r0, [r4, #0xa]
	b _0807B054
	.align 2, 0
_0807B038: .4byte 0x00000297
_0807B03C:
	mov r1, sl
	strh r1, [r5, #0xa]
	b _0807B054
_0807B042:
	cmp r6, #0
	beq _0807B050
	ldr r0, _0807B04C @ =0x00000666
	strh r0, [r4, #0xa]
	b _0807B054
	.align 2, 0
_0807B04C: .4byte 0x00000666
_0807B050:
	ldr r0, _0807B070 @ =0x00000666
_0807B052:
	strh r0, [r5, #0xa]
_0807B054:
	movs r0, #0xb8
	bl m4aSongNumStart
	mov r1, r8
	adds r1, #0x4c
	movs r0, #0
	strb r0, [r1]
	movs r2, #1
	str r2, [sp, #0xc]
_0807B066:
	cmp r6, #0
	beq _0807B074
	mov r3, sb
	str r3, [r4]
	b _0807B078
	.align 2, 0
_0807B070: .4byte 0x00000666
_0807B074:
	mov r0, sb
	str r0, [r5]
_0807B078:
	adds r6, r7, #0
	ldr r0, _0807B09C @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r6, r0
	bge _0807B088
	b _0807ACA2
_0807B088:
	ldr r0, [sp, #0xc]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0807B09C: .4byte gNumSingleplayerCharacters

	thumb_func_start sub_807B0A0
sub_807B0A0: @ 0x0807B0A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	mov sl, r3
	movs r0, #0
	mov sb, r0
	movs r5, #0
	ldr r4, _0807B0C8 @ =gPartner
	ldr r6, _0807B0CC @ =gPlayer
_0807B0BE:
	cmp r5, #0
	beq _0807B0D0
	ldr r1, [r4]
	mov r8, r1
	b _0807B0D4
	.align 2, 0
_0807B0C8: .4byte gPartner
_0807B0CC: .4byte gPlayer
_0807B0D0:
	ldr r2, [r6]
	mov r8, r2
_0807B0D4:
	cmp r5, #0
	beq _0807B0E6
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807B0E4
	b _0807B3FA
_0807B0E4:
	b _0807B0F2
_0807B0E6:
	ldr r1, [r6, #0x10]
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	beq _0807B0F2
	b _0807B3FA
_0807B0F2:
	ldr r0, [r7, #0x40]
	asrs r0, r0, #8
	ldr r3, [sp, #4]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, [r7, #0x44]
	asrs r0, r0, #8
	add r0, sl
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r3, _0807B130 @ =gPlayer
	cmp r5, #0
	beq _0807B110
	ldr r3, _0807B134 @ =gPartner
_0807B110:
	ldr r0, [sp]
	bl sa2__sub_800DF38
	cmp r0, #0
	bne _0807B11C
	b _0807B3FA
_0807B11C:
	cmp r5, #0
	beq _0807B138
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0807B12E
	b _0807B3FA
_0807B12E:
	b _0807B146
	.align 2, 0
_0807B130: .4byte gPlayer
_0807B134: .4byte gPartner
_0807B138:
	ldr r1, [r6, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r1, r0
	cmp r1, #0
	beq _0807B146
	b _0807B3FA
_0807B146:
	cmp r5, #0
	beq _0807B158
	ldr r1, _0807B154 @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r1, r0]
	b _0807B162
	.align 2, 0
_0807B154: .4byte gUnknown_03005B09
_0807B158:
	ldr r0, _0807B178 @ =gPlayer
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
_0807B162:
	cmp r0, #1
	beq _0807B18E
	cmp r5, #0
	beq _0807B180
	ldr r2, _0807B17C @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #2
	beq _0807B18E
	b _0807B1E2
	.align 2, 0
_0807B178: .4byte gPlayer
_0807B17C: .4byte gUnknown_03005B09
_0807B180:
	ldr r0, _0807B1A0 @ =gPlayer
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0807B1E2
_0807B18E:
	cmp r5, #0
	beq _0807B1A8
	ldr r3, _0807B1A4 @ =gUnknown_03005AED
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bne _0807B1B6
	b _0807B1E2
	.align 2, 0
_0807B1A0: .4byte gPlayer
_0807B1A4: .4byte gUnknown_03005AED
_0807B1A8:
	ldr r0, _0807B1D0 @ =gPlayer
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0807B1E2
_0807B1B6:
	ldr r0, _0807B1D0 @ =gPlayer
	cmp r5, #0
	beq _0807B1BE
	ldr r0, _0807B1D4 @ =gPartner
_0807B1BE:
	bl sub_8046CEC
	cmp r5, #0
	beq _0807B1DC
	movs r0, #5
	ldr r1, _0807B1D8 @ =gUnknown_03005AF0
	strb r0, [r1]
	b _0807B1E2
	.align 2, 0
_0807B1D0: .4byte gPlayer
_0807B1D4: .4byte gPartner
_0807B1D8: .4byte gUnknown_03005AF0
_0807B1DC:
	movs r0, #5
	ldr r2, _0807B1F4 @ =gUnknown_03005A60
	strb r0, [r2]
_0807B1E2:
	cmp r5, #0
	beq _0807B1F8
	ldr r0, [r4, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807B202
	.align 2, 0
_0807B1F4: .4byte gUnknown_03005A60
_0807B1F8:
	ldr r0, [r6, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
_0807B202:
	cmp r5, #0
	beq _0807B210
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0807B218
_0807B210:
	ldr r0, [r6, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r6, #0x10]
_0807B218:
	cmp r5, #0
	beq _0807B22C
	ldr r0, [r4, #0x10]
	ldr r1, _0807B228 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807B234
	.align 2, 0
_0807B228: .4byte 0xFFFFFEFF
_0807B22C:
	ldr r0, [r6, #0x10]
	ldr r1, _0807B244 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r6, #0x10]
_0807B234:
	cmp r5, #0
	beq _0807B248
	ldr r0, [r4, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0807B250
	.align 2, 0
_0807B244: .4byte 0xFFFFFEFF
_0807B248:
	ldr r0, [r6, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r6, #0x10]
_0807B250:
	cmp r5, #0
	beq _0807B260
	ldr r0, [r4, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807B26A
_0807B260:
	ldr r0, [r6, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
_0807B26A:
	ldr r1, _0807B290 @ =gPlayer
	cmp r5, #0
	beq _0807B272
	ldr r1, _0807B294 @ =gPartner
_0807B272:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _0807B290 @ =gPlayer
	cmp r5, #0
	beq _0807B27E
	ldr r1, _0807B294 @ =gPartner
_0807B27E:
	movs r0, #9
	strb r0, [r1, #0xf]
	ldr r0, [r7, #0x44]
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807B298
	ldr r0, [r4, #4]
	b _0807B29C
	.align 2, 0
_0807B290: .4byte gPlayer
_0807B294: .4byte gPartner
_0807B298:
	ldr r2, _0807B2B4 @ =gPlayer
	ldr r0, [r2, #4]
_0807B29C:
	asrs r0, r0, #8
	mov r3, sl
	subs r0, r0, r3
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, [r7, #0x40]
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807B2B8
	ldr r0, [r4]
	b _0807B2BC
	.align 2, 0
_0807B2B4: .4byte gPlayer
_0807B2B8:
	ldr r3, _0807B2F4 @ =gPlayer
	ldr r0, [r3]
_0807B2BC:
	asrs r0, r0, #8
	ldr r3, [sp, #4]
	subs r0, r0, r3
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, #0
	bl sa2__sub_8004418
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r1, [sp]
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0807B358
	adds r1, r2, #0
	subs r1, #0xfd
	ldr r0, _0807B2F8 @ =0x00000206
	cmp r1, r0
	bls _0807B30C
	cmp r5, #0
	beq _0807B300
	ldr r0, _0807B2FC @ =0x00000666
	strh r0, [r4, #8]
	b _0807B3E8
	.align 2, 0
_0807B2F4: .4byte gPlayer
_0807B2F8: .4byte 0x00000206
_0807B2FC: .4byte 0x00000666
_0807B300:
	ldr r0, _0807B308 @ =0x00000666
	strh r0, [r6, #8]
	b _0807B3E8
	.align 2, 0
_0807B308: .4byte 0x00000666
_0807B30C:
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r2, r0
	bls _0807B338
	cmp r5, #0
	beq _0807B324
	ldr r2, _0807B320 @ =0xFFFFFA27
	strh r2, [r4, #8]
	b _0807B328
	.align 2, 0
_0807B320: .4byte 0xFFFFFA27
_0807B324:
	ldr r3, _0807B330 @ =0xFFFFFA27
	strh r3, [r6, #8]
_0807B328:
	cmp r5, #0
	bne _0807B3A4
	ldr r0, _0807B334 @ =0x0000FD69
	b _0807B3E6
	.align 2, 0
_0807B330: .4byte 0xFFFFFA27
_0807B334: .4byte 0x0000FD69
_0807B338:
	cmp r5, #0
	beq _0807B348
	ldr r0, _0807B344 @ =0xFFFFFA27
	strh r0, [r4, #8]
	b _0807B34C
	.align 2, 0
_0807B344: .4byte 0xFFFFFA27
_0807B348:
	ldr r1, _0807B354 @ =0xFFFFFA27
	strh r1, [r6, #8]
_0807B34C:
	cmp r5, #0
	bne _0807B3D4
	b _0807B3E4
	.align 2, 0
_0807B354: .4byte 0xFFFFFA27
_0807B358:
	ldr r3, _0807B370 @ =0xFFFFFEFC
	adds r1, r2, r3
	movs r0, #0xfc
	lsls r0, r0, #1
	cmp r1, r0
	bhi _0807B384
	cmp r5, #0
	beq _0807B378
	ldr r0, _0807B374 @ =0x0000F99A
	strh r0, [r4, #8]
	b _0807B3E8
	.align 2, 0
_0807B370: .4byte 0xFFFFFEFC
_0807B374: .4byte 0x0000F99A
_0807B378:
	ldr r0, _0807B380 @ =0x0000F99A
	strh r0, [r6, #8]
	b _0807B3E8
	.align 2, 0
_0807B380: .4byte 0x0000F99A
_0807B384:
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r2, r0
	bls _0807B3BC
	cmp r5, #0
	beq _0807B39C
	ldr r0, _0807B398 @ =0x000005D9
	strh r0, [r4, #8]
	b _0807B3A0
	.align 2, 0
_0807B398: .4byte 0x000005D9
_0807B39C:
	ldr r0, _0807B3AC @ =0x000005D9
	strh r0, [r6, #8]
_0807B3A0:
	cmp r5, #0
	beq _0807B3B4
_0807B3A4:
	ldr r0, _0807B3B0 @ =0x0000FD69
	strh r0, [r4, #0xa]
	b _0807B3E8
	.align 2, 0
_0807B3AC: .4byte 0x000005D9
_0807B3B0: .4byte 0x0000FD69
_0807B3B4:
	ldr r0, _0807B3B8 @ =0x0000FD69
	b _0807B3E6
	.align 2, 0
_0807B3B8: .4byte 0x0000FD69
_0807B3BC:
	cmp r5, #0
	beq _0807B3CC
	ldr r0, _0807B3C8 @ =0x000005D9
	strh r0, [r4, #8]
	b _0807B3D0
	.align 2, 0
_0807B3C8: .4byte 0x000005D9
_0807B3CC:
	ldr r0, _0807B3DC @ =0x000005D9
	strh r0, [r6, #8]
_0807B3D0:
	cmp r5, #0
	beq _0807B3E4
_0807B3D4:
	ldr r0, _0807B3E0 @ =0x00000297
	strh r0, [r4, #0xa]
	b _0807B3E8
	.align 2, 0
_0807B3DC: .4byte 0x000005D9
_0807B3E0: .4byte 0x00000297
_0807B3E4:
	ldr r0, _0807B404 @ =0x00000297
_0807B3E6:
	strh r0, [r6, #0xa]
_0807B3E8:
	movs r0, #0xb8
	bl m4aSongNumStart
	adds r1, r7, #0
	adds r1, #0x4c
	movs r0, #0
	strb r0, [r1]
	movs r0, #1
	mov sb, r0
_0807B3FA:
	cmp r5, #0
	beq _0807B408
	mov r1, r8
	str r1, [r4]
	b _0807B40C
	.align 2, 0
_0807B404: .4byte 0x00000297
_0807B408:
	mov r2, r8
	str r2, [r6]
_0807B40C:
	adds r5, #1
	ldr r0, _0807B430 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	bge _0807B41C
	b _0807B0BE
_0807B41C:
	mov r0, sb
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0807B430: .4byte gNumSingleplayerCharacters

	thumb_func_start sub_807B434
sub_807B434: @ 0x0807B434
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	adds r7, r3, #0
	movs r0, #0
	mov sb, r0
	movs r1, #0
	str r1, [sp, #0xc]
	movs r6, #0
	ldr r4, _0807B468 @ =gPartner
	ldr r5, _0807B46C @ =gPlayer
	movs r2, #4
	mov sl, r2

sub_807B434_MainLoop: @ 0x0807B45A
	cmp r6, #0
	beq _0807B470
	ldr r0, [r4]
	mov r8, r0
	ldr r1, _0807B46C @ =gPlayer
	mov ip, r1
	b _0807B478
	.align 2, 0
_0807B468: .4byte gPartner
_0807B46C: .4byte gPlayer
_0807B470:
	ldr r2, [r5]
	mov r8, r2
	ldr r0, _0807B50C @ =gPlayer
	mov ip, r0
_0807B478:
	ldr r1, [sp, #8]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	lsls r0, r7, #0x10
	asrs r2, r0, #0x10
	mov r3, ip
	cmp r6, #0
	beq _0807B48A
	ldr r3, _0807B510 @ =gPartner
_0807B48A:
	ldr r0, [sp, #4]
	bl sa2__sub_800DF38
	adds r2, r6, #1
	str r2, [sp, #0x10]
	cmp r0, #0
	bne _0807B49C
	bl _0807BC64
_0807B49C:
	ldr r0, _0807B514 @ =gGameMode
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #3
	beq _0807B4AA
	cmp r1, #5
	bne _0807B4FA
_0807B4AA:
	movs r1, #0
	ldr r2, _0807B518 @ =gMultiplayerPlayerTasks
	ldr r0, [r2]
	mov ip, r0
	adds r0, r6, #1
	str r0, [sp, #0x10]
	mov r0, ip
	cmp r0, #0
	beq _0807B4FA
	mov ip, r2
_0807B4BE:
	ldr r0, _0807B51C @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r1, r0
	beq _0807B4E6
	lsls r0, r1, #2
	add r0, ip
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r0, r0, r2
	ldr r0, [r0, #0x5c]
	mov r2, sl
	ands r0, r2
	cmp r0, #0
	beq _0807B4E6
	movs r0, #1
	str r0, [sp, #0xc]
_0807B4E6:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bhi _0807B4FA
	lsls r0, r1, #2
	add r0, ip
	ldr r0, [r0]
	cmp r0, #0
	bne _0807B4BE
_0807B4FA:
	cmp r6, #0
	beq _0807B520
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0807B52C
	b _0807B534
	.align 2, 0
_0807B50C: .4byte gPlayer
_0807B510: .4byte gPartner
_0807B514: .4byte gGameMode
_0807B518: .4byte gMultiplayerPlayerTasks
_0807B51C: .4byte 0x04000128
_0807B520:
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0807B534
_0807B52C:
	ldr r1, [sp, #0xc]
	cmp r1, #0
	bne _0807B534
	b _0807BC64
_0807B534:
	ldr r2, [sp, #4]
	ldr r1, [r2, #0x10]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0807B544
	b _0807B8C2
_0807B544:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r1, r0
	cmp r1, #0
	bne _0807B550
	b _0807B70A
_0807B550:
	mov r1, r8
	asrs r0, r1, #8
	ldr r2, [sp, #8]
	subs r0, r2, r0
	movs r1, #0x41
	subs r1, r1, r0
	cmp r6, #0
	beq _0807B56C
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	subs r0, r0, r7
	cmp r0, r1
	blt _0807B578
	b _0807BC64
_0807B56C:
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	subs r0, r0, r7
	cmp r0, r1
	blt _0807B578
	b _0807BC64
_0807B578:
	cmp r6, #0
	beq _0807B584
	ldr r1, _0807B580 @ =gUnknown_03005B09
	b _0807B586
	.align 2, 0
_0807B580: .4byte gUnknown_03005B09
_0807B584:
	ldr r1, _0807B5A4 @ =gUnknown_03005A79
_0807B586:
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldr r2, _0807B5A8 @ =gPlayer
	mov ip, r2
	cmp r0, #1
	beq _0807B5BA
	cmp r6, #0
	beq _0807B5B0
	ldr r1, _0807B5AC @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #2
	beq _0807B5BA
	b _0807B618
	.align 2, 0
_0807B5A4: .4byte gUnknown_03005A79
_0807B5A8: .4byte gPlayer
_0807B5AC: .4byte gUnknown_03005B09
_0807B5B0:
	ldr r2, _0807B5CC @ =gUnknown_03005A79
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #2
	bne _0807B618
_0807B5BA:
	cmp r6, #0
	beq _0807B5D4
	ldr r1, _0807B5D0 @ =gUnknown_03005AED
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0807B5E2
	b _0807B618
	.align 2, 0
_0807B5CC: .4byte gUnknown_03005A79
_0807B5D0: .4byte gUnknown_03005AED
_0807B5D4:
	mov r0, ip
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0807B618
_0807B5E2:
	ldr r0, _0807B600 @ =gPlayer
	cmp r6, #0
	beq _0807B5EA
	ldr r0, _0807B604 @ =gPartner
_0807B5EA:
	bl sub_8046CEC
	cmp r6, #0
	beq _0807B60C
	movs r0, #5
	ldr r2, _0807B608 @ =gUnknown_03005AF0
	strb r0, [r2]
	ldr r0, _0807B600 @ =gPlayer
	mov ip, r0
	b _0807B616
	.align 2, 0
_0807B600: .4byte gPlayer
_0807B604: .4byte gPartner
_0807B608: .4byte gUnknown_03005AF0
_0807B60C:
	movs r0, #5
	ldr r1, _0807B62C @ =gUnknown_03005A60
	strb r0, [r1]
	ldr r2, _0807B630 @ =gPlayer
	mov ip, r2
_0807B616:
	ldr r3, _0807B634 @ =gGameMode
_0807B618:
	ldrb r0, [r3]
	cmp r0, #3
	beq _0807B622
	cmp r0, #5
	bne _0807B63E
_0807B622:
	cmp r6, #0
	beq _0807B638
	movs r0, #0x1e
	strh r0, [r4, #0x1c]
	b _0807B63E
	.align 2, 0
_0807B62C: .4byte gUnknown_03005A60
_0807B630: .4byte gPlayer
_0807B634: .4byte gGameMode
_0807B638:
	movs r0, #0x1e
	mov r1, ip
	strh r0, [r1, #0x1c]
_0807B63E:
	cmp r6, #0
	beq _0807B64E
	ldr r0, [r4, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807B658
_0807B64E:
	ldr r0, [r5, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_0807B658:
	cmp r6, #0
	beq _0807B666
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0807B66E
_0807B666:
	ldr r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0x10]
_0807B66E:
	cmp r6, #0
	beq _0807B680
	ldr r0, [r4, #0x10]
	ldr r1, _0807B67C @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807B688
	.align 2, 0
_0807B67C: .4byte 0xFFFFFEFF
_0807B680:
	ldr r0, [r5, #0x10]
	ldr r1, _0807B698 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #0x10]
_0807B688:
	cmp r6, #0
	beq _0807B69C
	ldr r0, [r4, #0x10]
	mov r2, sl
	orrs r0, r2
	str r0, [r4, #0x10]
	b _0807B6A4
	.align 2, 0
_0807B698: .4byte 0xFFFFFEFF
_0807B69C:
	ldr r0, [r5, #0x10]
	mov r1, sl
	orrs r0, r1
	str r0, [r5, #0x10]
_0807B6A4:
	cmp r6, #0
	beq _0807B6B4
	ldr r0, [r4, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807B6BE
_0807B6B4:
	ldr r0, [r5, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_0807B6BE:
	mov r1, ip
	cmp r6, #0
	beq _0807B6C6
	ldr r1, _0807B6E0 @ =gPartner
_0807B6C6:
	movs r0, #6
	strb r0, [r1, #0xe]
	mov r1, ip
	cmp r6, #0
	beq _0807B6D2
	ldr r1, _0807B6E0 @ =gPartner
_0807B6D2:
	movs r0, #9
	strb r0, [r1, #0xf]
	cmp r6, #0
	beq _0807B6E8
	ldr r2, _0807B6E4 @ =0xFFFFFB50
	strh r2, [r4, #8]
	b _0807B6EE
	.align 2, 0
_0807B6E0: .4byte gPartner
_0807B6E4: .4byte 0xFFFFFB50
_0807B6E8:
	ldr r1, _0807B6FC @ =0xFFFFFB50
	mov r0, ip
	strh r1, [r0, #8]
_0807B6EE:
	cmp r6, #0
	beq _0807B700
	movs r0, #0x96
	lsls r0, r0, #3
	strh r0, [r4, #0xa]
	b _0807BC52
	.align 2, 0
_0807B6FC: .4byte 0xFFFFFB50
_0807B700:
	movs r0, #0x96
	lsls r0, r0, #3
	mov r2, ip
	strh r0, [r2, #0xa]
	b _0807BC52
_0807B70A:
	mov r1, r8
	asrs r0, r1, #8
	ldr r2, [sp, #8]
	subs r0, r0, r2
	movs r1, #0x41
	subs r1, r1, r0
	cmp r6, #0
	beq _0807B726
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	subs r0, r0, r7
	cmp r0, r1
	blt _0807B732
	b _0807BC64
_0807B726:
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	subs r0, r0, r7
	cmp r0, r1
	blt _0807B732
	b _0807BC64
_0807B732:
	cmp r6, #0
	beq _0807B740
	ldr r1, _0807B73C @ =gUnknown_03005B09
	b _0807B742
	.align 2, 0
_0807B73C: .4byte gUnknown_03005B09
_0807B740:
	ldr r1, _0807B760 @ =gUnknown_03005A79
_0807B742:
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldr r2, _0807B764 @ =gPlayer
	mov ip, r2
	cmp r0, #1
	beq _0807B776
	cmp r6, #0
	beq _0807B76C
	ldr r1, _0807B768 @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #2
	beq _0807B776
	b _0807B7D4
	.align 2, 0
_0807B760: .4byte gUnknown_03005A79
_0807B764: .4byte gPlayer
_0807B768: .4byte gUnknown_03005B09
_0807B76C:
	ldr r2, _0807B788 @ =gUnknown_03005A79
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #2
	bne _0807B7D4
_0807B776:
	cmp r6, #0
	beq _0807B790
	ldr r1, _0807B78C @ =gUnknown_03005AED
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0807B79E
	b _0807B7D4
	.align 2, 0
_0807B788: .4byte gUnknown_03005A79
_0807B78C: .4byte gUnknown_03005AED
_0807B790:
	mov r0, ip
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0807B7D4
_0807B79E:
	ldr r0, _0807B7BC @ =gPlayer
	cmp r6, #0
	beq _0807B7A6
	ldr r0, _0807B7C0 @ =gPartner
_0807B7A6:
	bl sub_8046CEC
	cmp r6, #0
	beq _0807B7C8
	movs r0, #5
	ldr r2, _0807B7C4 @ =gUnknown_03005AF0
	strb r0, [r2]
	ldr r0, _0807B7BC @ =gPlayer
	mov ip, r0
	b _0807B7D2
	.align 2, 0
_0807B7BC: .4byte gPlayer
_0807B7C0: .4byte gPartner
_0807B7C4: .4byte gUnknown_03005AF0
_0807B7C8:
	movs r0, #5
	ldr r1, _0807B7E8 @ =gUnknown_03005A60
	strb r0, [r1]
	ldr r2, _0807B7EC @ =gPlayer
	mov ip, r2
_0807B7D2:
	ldr r3, _0807B7F0 @ =gGameMode
_0807B7D4:
	ldrb r0, [r3]
	cmp r0, #3
	beq _0807B7DE
	cmp r0, #5
	bne _0807B7FA
_0807B7DE:
	cmp r6, #0
	beq _0807B7F4
	movs r0, #0x1e
	strh r0, [r4, #0x1c]
	b _0807B7FA
	.align 2, 0
_0807B7E8: .4byte gUnknown_03005A60
_0807B7EC: .4byte gPlayer
_0807B7F0: .4byte gGameMode
_0807B7F4:
	movs r0, #0x1e
	mov r1, ip
	strh r0, [r1, #0x1c]
_0807B7FA:
	cmp r6, #0
	beq _0807B80A
	ldr r0, [r4, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807B814
_0807B80A:
	ldr r0, [r5, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_0807B814:
	cmp r6, #0
	beq _0807B822
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0807B82A
_0807B822:
	ldr r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0x10]
_0807B82A:
	cmp r6, #0
	beq _0807B83C
	ldr r0, [r4, #0x10]
	ldr r1, _0807B838 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807B844
	.align 2, 0
_0807B838: .4byte 0xFFFFFEFF
_0807B83C:
	ldr r0, [r5, #0x10]
	ldr r1, _0807B854 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #0x10]
_0807B844:
	cmp r6, #0
	beq _0807B858
	ldr r0, [r4, #0x10]
	mov r2, sl
	orrs r0, r2
	str r0, [r4, #0x10]
	b _0807B860
	.align 2, 0
_0807B854: .4byte 0xFFFFFEFF
_0807B858:
	ldr r0, [r5, #0x10]
	mov r1, sl
	orrs r0, r1
	str r0, [r5, #0x10]
_0807B860:
	cmp r6, #0
	beq _0807B870
	ldr r0, [r4, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807B87A
_0807B870:
	ldr r0, [r5, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_0807B87A:
	mov r1, ip
	cmp r6, #0
	beq _0807B882
	ldr r1, _0807B8A0 @ =gPartner
_0807B882:
	movs r0, #6
	strb r0, [r1, #0xe]
	mov r1, ip
	cmp r6, #0
	beq _0807B88E
	ldr r1, _0807B8A0 @ =gPartner
_0807B88E:
	movs r0, #9
	strb r0, [r1, #0xf]
	cmp r6, #0
	beq _0807B8A4
	movs r0, #0x96
	lsls r0, r0, #3
	strh r0, [r4, #8]
	b _0807B8AC
	.align 2, 0
_0807B8A0: .4byte gPartner
_0807B8A4:
	movs r0, #0x96
	lsls r0, r0, #3
	mov r2, ip
	strh r0, [r2, #8]
_0807B8AC:
	cmp r6, #0
	beq _0807B8B8
	movs r0, #0x96
	lsls r0, r0, #3
	strh r0, [r4, #0xa]
	b _0807BA82
_0807B8B8:
	movs r0, #0x96
	lsls r0, r0, #3
	mov r1, ip
	strh r0, [r1, #0xa]
	b _0807BA82
_0807B8C2:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r1, r0
	cmp r1, #0
	bne _0807B8CE
	b _0807BA9C
_0807B8CE:
	mov r1, r8
	asrs r0, r1, #8
	ldr r2, [sp, #8]
	subs r0, r2, r0
	adds r1, r0, #0
	subs r1, #0x3c
	cmp r6, #0
	beq _0807B8EA
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	subs r0, r0, r7
	cmp r0, r1
	bgt _0807B8F6
	b _0807BC64
_0807B8EA:
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	subs r0, r0, r7
	cmp r0, r1
	bgt _0807B8F6
	b _0807BC64
_0807B8F6:
	cmp r6, #0
	beq _0807B904
	ldr r1, _0807B900 @ =gUnknown_03005B09
	b _0807B906
	.align 2, 0
_0807B900: .4byte gUnknown_03005B09
_0807B904:
	ldr r1, _0807B924 @ =gUnknown_03005A79
_0807B906:
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldr r2, _0807B928 @ =gPlayer
	mov ip, r2
	cmp r0, #1
	beq _0807B93A
	cmp r6, #0
	beq _0807B930
	ldr r1, _0807B92C @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #2
	beq _0807B93A
	b _0807B998
	.align 2, 0
_0807B924: .4byte gUnknown_03005A79
_0807B928: .4byte gPlayer
_0807B92C: .4byte gUnknown_03005B09
_0807B930:
	ldr r2, _0807B94C @ =gUnknown_03005A79
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #2
	bne _0807B998
_0807B93A:
	cmp r6, #0
	beq _0807B954
	ldr r1, _0807B950 @ =gUnknown_03005AED
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0807B962
	b _0807B998
	.align 2, 0
_0807B94C: .4byte gUnknown_03005A79
_0807B950: .4byte gUnknown_03005AED
_0807B954:
	mov r0, ip
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0807B998
_0807B962:
	ldr r0, _0807B980 @ =gPlayer
	cmp r6, #0
	beq _0807B96A
	ldr r0, _0807B984 @ =gPartner
_0807B96A:
	bl sub_8046CEC
	cmp r6, #0
	beq _0807B98C
	movs r0, #5
	ldr r2, _0807B988 @ =gUnknown_03005AF0
	strb r0, [r2]
	ldr r0, _0807B980 @ =gPlayer
	mov ip, r0
	b _0807B996
	.align 2, 0
_0807B980: .4byte gPlayer
_0807B984: .4byte gPartner
_0807B988: .4byte gUnknown_03005AF0
_0807B98C:
	movs r0, #5
	ldr r1, _0807B9AC @ =gUnknown_03005A60
	strb r0, [r1]
	ldr r2, _0807B9B0 @ =gPlayer
	mov ip, r2
_0807B996:
	ldr r3, _0807B9B4 @ =gGameMode
_0807B998:
	ldrb r0, [r3]
	cmp r0, #3
	beq _0807B9A2
	cmp r0, #5
	bne _0807B9BE
_0807B9A2:
	cmp r6, #0
	beq _0807B9B8
	movs r0, #0x1e
	strh r0, [r4, #0x1c]
	b _0807B9BE
	.align 2, 0
_0807B9AC: .4byte gUnknown_03005A60
_0807B9B0: .4byte gPlayer
_0807B9B4: .4byte gGameMode
_0807B9B8:
	movs r0, #0x1e
	mov r1, ip
	strh r0, [r1, #0x1c]
_0807B9BE:
	cmp r6, #0
	beq _0807B9CE
	ldr r0, [r4, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807B9D8
_0807B9CE:
	ldr r0, [r5, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_0807B9D8:
	cmp r6, #0
	beq _0807B9E6
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0807B9EE
_0807B9E6:
	ldr r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0x10]
_0807B9EE:
	cmp r6, #0
	beq _0807BA00
	ldr r0, [r4, #0x10]
	ldr r1, _0807B9FC @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807BA08
	.align 2, 0
_0807B9FC: .4byte 0xFFFFFEFF
_0807BA00:
	ldr r0, [r5, #0x10]
	ldr r1, _0807BA18 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #0x10]
_0807BA08:
	cmp r6, #0
	beq _0807BA1C
	ldr r0, [r4, #0x10]
	mov r2, sl
	orrs r0, r2
	str r0, [r4, #0x10]
	b _0807BA24
	.align 2, 0
_0807BA18: .4byte 0xFFFFFEFF
_0807BA1C:
	ldr r0, [r5, #0x10]
	mov r1, sl
	orrs r0, r1
	str r0, [r5, #0x10]
_0807BA24:
	cmp r6, #0
	beq _0807BA34
	ldr r0, [r4, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807BA3E
_0807BA34:
	ldr r0, [r5, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_0807BA3E:
	mov r1, ip
	cmp r6, #0
	beq _0807BA46
	ldr r1, _0807BA60 @ =gPartner
_0807BA46:
	movs r0, #6
	strb r0, [r1, #0xe]
	mov r1, ip
	cmp r6, #0
	beq _0807BA52
	ldr r1, _0807BA60 @ =gPartner
_0807BA52:
	movs r0, #9
	strb r0, [r1, #0xf]
	cmp r6, #0
	beq _0807BA68
	ldr r2, _0807BA64 @ =0xFFFFFB50
	strh r2, [r4, #8]
	b _0807BA6E
	.align 2, 0
_0807BA60: .4byte gPartner
_0807BA64: .4byte 0xFFFFFB50
_0807BA68:
	ldr r1, _0807BA78 @ =0xFFFFFB50
	mov r0, ip
	strh r1, [r0, #8]
_0807BA6E:
	cmp r6, #0
	beq _0807BA7C
	ldr r2, _0807BA78 @ =0xFFFFFB50
	strh r2, [r4, #0xa]
	b _0807BA82
	.align 2, 0
_0807BA78: .4byte 0xFFFFFB50
_0807BA7C:
	ldr r1, _0807BA98 @ =0xFFFFFB50
	mov r0, ip
	strh r1, [r0, #0xa]
_0807BA82:
	movs r0, #0xb8
	bl m4aSongNumStart
	ldr r1, [sp]
	adds r1, #0x4c
	movs r0, #0
	strb r0, [r1]
	movs r2, #1
	mov sb, r2
	b _0807BC64
	.align 2, 0
_0807BA98: .4byte 0xFFFFFB50
_0807BA9C:
	mov r1, r8
	asrs r0, r1, #8
	ldr r2, [sp, #8]
	subs r0, r0, r2
	adds r1, r0, #0
	subs r1, #0x3c
	cmp r6, #0
	beq _0807BAB8
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	subs r0, r0, r7
	cmp r0, r1
	bgt _0807BAC4
	b _0807BC64
_0807BAB8:
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	subs r0, r0, r7
	cmp r0, r1
	bgt _0807BAC4
	b _0807BC64
_0807BAC4:
	cmp r6, #0
	beq _0807BAD0
	ldr r1, _0807BACC @ =gUnknown_03005B09
	b _0807BAD2
	.align 2, 0
_0807BACC: .4byte gUnknown_03005B09
_0807BAD0:
	ldr r1, _0807BAF0 @ =gUnknown_03005A79
_0807BAD2:
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldr r2, _0807BAF4 @ =gPlayer
	mov ip, r2
	cmp r0, #1
	beq _0807BB06
	cmp r6, #0
	beq _0807BAFC
	ldr r1, _0807BAF8 @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #2
	beq _0807BB06
	b _0807BB64
	.align 2, 0
_0807BAF0: .4byte gUnknown_03005A79
_0807BAF4: .4byte gPlayer
_0807BAF8: .4byte gUnknown_03005B09
_0807BAFC:
	ldr r2, _0807BB18 @ =gUnknown_03005A79
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #2
	bne _0807BB64
_0807BB06:
	cmp r6, #0
	beq _0807BB20
	ldr r1, _0807BB1C @ =gUnknown_03005AED
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0807BB2E
	b _0807BB64
	.align 2, 0
_0807BB18: .4byte gUnknown_03005A79
_0807BB1C: .4byte gUnknown_03005AED
_0807BB20:
	mov r0, ip
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0807BB64
_0807BB2E:
	ldr r0, _0807BB4C @ =gPlayer
	cmp r6, #0
	beq _0807BB36
	ldr r0, _0807BB50 @ =gPartner
_0807BB36:
	bl sub_8046CEC
	cmp r6, #0
	beq _0807BB58
	movs r0, #5
	ldr r2, _0807BB54 @ =gUnknown_03005AF0
	strb r0, [r2]
	ldr r0, _0807BB4C @ =gPlayer
	mov ip, r0
	b _0807BB62
	.align 2, 0
_0807BB4C: .4byte gPlayer
_0807BB50: .4byte gPartner
_0807BB54: .4byte gUnknown_03005AF0
_0807BB58:
	movs r0, #5
	ldr r1, _0807BB78 @ =gUnknown_03005A60
	strb r0, [r1]
	ldr r2, _0807BB7C @ =gPlayer
	mov ip, r2
_0807BB62:
	ldr r3, _0807BB80 @ =gGameMode
_0807BB64:
	ldrb r0, [r3]
	cmp r0, #3
	beq _0807BB6E
	cmp r0, #5
	bne _0807BB8A
_0807BB6E:
	cmp r6, #0
	beq _0807BB84
	movs r0, #0x1e
	strh r0, [r4, #0x1c]
	b _0807BB8A
	.align 2, 0
_0807BB78: .4byte gUnknown_03005A60
_0807BB7C: .4byte gPlayer
_0807BB80: .4byte gGameMode
_0807BB84:
	movs r0, #0x1e
	mov r1, ip
	strh r0, [r1, #0x1c]
_0807BB8A:
	cmp r6, #0
	beq _0807BB9A
	ldr r0, [r4, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807BBA4
_0807BB9A:
	ldr r0, [r5, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_0807BBA4:
	cmp r6, #0
	beq _0807BBB2
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0807BBBA
_0807BBB2:
	ldr r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0x10]
_0807BBBA:
	cmp r6, #0
	beq _0807BBCC
	ldr r0, [r4, #0x10]
	ldr r1, _0807BBC8 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807BBD4
	.align 2, 0
_0807BBC8: .4byte 0xFFFFFEFF
_0807BBCC:
	ldr r0, [r5, #0x10]
	ldr r1, _0807BBE4 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #0x10]
_0807BBD4:
	cmp r6, #0
	beq _0807BBE8
	ldr r0, [r4, #0x10]
	mov r2, sl
	orrs r0, r2
	str r0, [r4, #0x10]
	b _0807BBF0
	.align 2, 0
_0807BBE4: .4byte 0xFFFFFEFF
_0807BBE8:
	ldr r0, [r5, #0x10]
	mov r1, sl
	orrs r0, r1
	str r0, [r5, #0x10]
_0807BBF0:
	cmp r6, #0
	beq _0807BC00
	ldr r0, [r4, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807BC0A
_0807BC00:
	ldr r0, [r5, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_0807BC0A:
	mov r1, ip
	cmp r6, #0
	beq _0807BC12
	ldr r1, _0807BC30 @ =gPartner
_0807BC12:
	movs r0, #6
	strb r0, [r1, #0xe]
	mov r1, ip
	cmp r6, #0
	beq _0807BC1E
	ldr r1, _0807BC30 @ =gPartner
_0807BC1E:
	movs r0, #9
	strb r0, [r1, #0xf]
	cmp r6, #0
	beq _0807BC34
	movs r0, #0x96
	lsls r0, r0, #3
	strh r0, [r4, #8]
	b _0807BC3C
	.align 2, 0
_0807BC30: .4byte gPartner
_0807BC34:
	movs r0, #0x96
	lsls r0, r0, #3
	mov r2, ip
	strh r0, [r2, #8]
_0807BC3C:
	cmp r6, #0
	beq _0807BC4C
	ldr r0, _0807BC48 @ =0xFFFFFB50
	strh r0, [r4, #0xa]
	b _0807BC52
	.align 2, 0
_0807BC48: .4byte 0xFFFFFB50
_0807BC4C:
	ldr r2, _0807BC70 @ =0xFFFFFB50
	mov r1, ip
	strh r2, [r1, #0xa]
_0807BC52:
	movs r0, #0xb8
	bl m4aSongNumStart
	ldr r1, [sp]
	adds r1, #0x4c
	movs r0, #0
	strb r0, [r1]
	movs r0, #1
	mov sb, r0
_0807BC64:
	cmp r6, #0
	beq _0807BC74
	mov r1, r8
	str r1, [r4]
	b _0807BC78
	.align 2, 0
_0807BC70: .4byte 0xFFFFFB50
_0807BC74:
	mov r2, r8
	str r2, [r5]
_0807BC78:
	ldr r6, [sp, #0x10]
	ldr r0, _0807BC9C @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r6, r0
	bge _0807BC8A
	bl sub_807B434_MainLoop
_0807BC8A:
	mov r0, sb
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0807BC9C: .4byte gNumSingleplayerCharacters
