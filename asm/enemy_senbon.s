.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Senbon
CreateEntity_Senbon: @ 0x080709A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sl, r3
	ldr r0, _08070A98 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	cmp r0, #1
	bne _080709D4
	ldr r0, _08070A9C @ =gLoadedSaveGame
	ldrb r0, [r0, #0x18]
	cmp r0, #0
	bne _08070A86
_080709D4:
	ldr r0, _08070AA0 @ =sub_8070ACC
	ldr r1, _08070AA4 @ =TaskDestructor_EntityShared
	str r1, [sp]
	movs r1, #0x4c
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldr r1, _08070AA8 @ =0x0300000C
	adds r5, r4, r1
	movs r6, #0
	mov r2, sb
	strh r2, [r0, #4]
	mov r1, r8
	strh r1, [r0, #6]
	str r7, [r0]
	ldrb r1, [r7]
	strb r1, [r0, #8]
	mov r2, sl
	strb r2, [r0, #9]
	ldr r1, _08070AAC @ =0x03000048
	adds r2, r4, r1
	ldr r1, _08070AB0 @ =0x0000FF60
	strh r1, [r2]
	str r6, [r0, #0x40]
	strh r6, [r0, #0x3c]
	ldr r2, _08070AB4 @ =0x03000044
	adds r0, r4, r2
	strh r6, [r0]
	ldr r1, _08070AB8 @ =0x03000046
	adds r0, r4, r1
	strh r6, [r0]
	ldrb r0, [r7]
	lsls r0, r0, #3
	mov r2, sb
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r5, #0x16]
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	mov r2, r8
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r5, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	strh r6, [r5, #8]
	ldr r0, _08070ABC @ =0x0000019B
	strh r0, [r5, #0xa]
	ldr r2, _08070AC0 @ =0x0300002C
	adds r0, r4, r2
	movs r1, #0
	strb r1, [r0]
	strh r6, [r5, #0x14]
	strh r6, [r5, #0x1c]
	adds r2, #1
	adds r1, r4, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08070AC4 @ =0x0300002E
	adds r1, r4, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08070AC8 @ =0x03000031
	adds r4, r4, r1
	movs r2, #0
	strb r2, [r4]
	subs r0, #0x11
	str r0, [r5, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
_08070A86:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08070A98: .4byte gCurrentLevel
_08070A9C: .4byte gLoadedSaveGame
_08070AA0: .4byte sub_8070ACC
_08070AA4: .4byte TaskDestructor_EntityShared
_08070AA8: .4byte 0x0300000C
_08070AAC: .4byte 0x03000048
_08070AB0: .4byte 0x0000FF60
_08070AB4: .4byte 0x03000044
_08070AB8: .4byte 0x03000046
_08070ABC: .4byte 0x0000019B
_08070AC0: .4byte 0x0300002C
_08070AC4: .4byte 0x0300002E
_08070AC8: .4byte 0x03000031

	thumb_func_start sub_8070ACC
sub_8070ACC: @ 0x08070ACC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _08070BA0 @ =gCurTask
	ldr r0, [r4]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	adds r0, #0xc
	adds r5, r3, r0
	ldr r1, [r6]
	mov r8, r1
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
	lsls r2, r2, #0x10
	asrs r7, r2, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov ip, r1
	ldr r2, _08070BA4 @ =0x03000048
	adds r3, r3, r2
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, [r6, #0x40]
	adds r0, r0, r1
	str r0, [r6, #0x40]
	asrs r0, r0, #8
	adds r0, r7, r0
	lsls r0, r0, #0x10
	ldrh r1, [r6, #0x3c]
	add r1, ip
	lsls r1, r1, #0x10
	ldr r3, _08070BA8 @ =gCamera
	ldrh r2, [r3]
	mov sb, r2
	lsrs r2, r0, #0x10
	mov sl, r2
	asrs r0, r0, #0x10
	mov r2, sb
	subs r0, r0, r2
	strh r0, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsrs r2, r1, #0x10
	mov sb, r2
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0x18]
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r7, r0
	bgt _08070B6C
	adds r0, r1, #0
	subs r0, #0x80
	cmp r7, r0
	blt _08070B6C
	movs r0, #2
	ldrsh r2, [r3, r0]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp ip, r0
	bgt _08070B6C
	adds r0, r2, #0
	subs r0, #0x80
	cmp ip, r0
	bge _08070BAC
_08070B6C:
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08070B90
	movs r2, #0x18
	ldrsh r0, [r5, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _08070B90
	movs r3, #0x18
	ldrsh r1, [r5, r3]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08070BAC
_08070B90:
	ldrb r0, [r6, #8]
	mov r1, r8
	strb r0, [r1]
	ldr r0, [r4]
	bl TaskDestroy
	b _08070C98
	.align 2, 0
_08070BA0: .4byte gCurTask
_08070BA4: .4byte 0x03000048
_08070BA8: .4byte gCamera
_08070BAC:
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	mov r3, sb
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sa2__sub_800C4FC
	cmp r0, #0
	beq _08070BD4
	ldr r0, _08070BD0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08070C98
	.align 2, 0
_08070BD0: .4byte gCurTask
_08070BD4:
	ldr r0, [r6, #0x40]
	asrs r2, r0, #8
	mov r0, r8
	movs r1, #3
	ldrsb r1, [r0, r1]
	adds r0, r1, #1
	lsls r0, r0, #3
	cmp r2, r0
	bgt _08070BFA
	adds r1, r6, #0
	adds r1, #0x48
	movs r0, #0xa0
	strh r0, [r1]
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5, #0x10]
	b _08070C8C
_08070BFA:
	mov r3, r8
	ldrb r0, [r3, #5]
	adds r0, r1, r0
	subs r0, #1
	lsls r0, r0, #3
	cmp r2, r0
	blt _08070C24
	adds r1, r6, #0
	adds r1, #0x48
	ldr r0, _08070C1C @ =0x0000FF60
	strh r0, [r1]
	ldr r0, [r5, #0x10]
	ldr r1, _08070C20 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r5, #0x10]
	b _08070C8C
	.align 2, 0
_08070C1C: .4byte 0x0000FF60
_08070C20: .4byte 0xFFFFFBFF
_08070C24:
	adds r1, r6, #0
	adds r1, #0x46
	ldrh r0, [r1]
	movs r3, #0
	ldrsh r2, [r1, r3]
	cmp r2, #0
	beq _08070C38
	subs r0, #1
	strh r0, [r1]
	b _08070C8C
_08070C38:
	ldr r1, [r5, #0x10]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r1, r0
	cmp r1, #0
	beq _08070C64
	ldr r0, _08070C60 @ =gPlayer
	ldr r0, [r0]
	asrs r1, r0, #8
	cmp r1, r4
	blt _08070C8C
	adds r0, r4, #0
	adds r0, #0x50
	cmp r0, r1
	blt _08070C8C
	adds r0, r6, #0
	adds r0, #0x44
	strh r2, [r0]
	b _08070C7C
	.align 2, 0
_08070C60: .4byte gPlayer
_08070C64:
	ldr r0, _08070CA8 @ =gPlayer
	ldr r0, [r0]
	asrs r2, r0, #8
	cmp r2, r4
	bgt _08070C8C
	adds r0, r4, #0
	subs r0, #0x50
	cmp r0, r2
	bgt _08070C8C
	adds r0, r6, #0
	adds r0, #0x44
	strh r1, [r0]
_08070C7C:
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08070CAC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08070CB0 @ =sub_8070CB4
	str r0, [r1, #8]
_08070C8C:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_08070C98:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08070CA8: .4byte gPlayer
_08070CAC: .4byte gCurTask
_08070CB0: .4byte sub_8070CB4

	thumb_func_start sub_8070CB4
sub_8070CB4: @ 0x08070CB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _08070D84 @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0
	ldr r0, _08070D88 @ =0x0300000C
	adds r5, r1, r0
	mov r1, r8
	ldr r1, [r1]
	mov ip, r1
	mov r4, r8
	ldrb r2, [r4, #8]
	lsls r2, r2, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r4, r2, #0x10
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
	mov r1, r8
	ldr r0, [r1, #0x40]
	asrs r0, r0, #8
	adds r0, r4, r0
	lsls r0, r0, #0x10
	ldrh r1, [r1, #0x3c]
	adds r1, r7, r1
	lsls r1, r1, #0x10
	ldr r6, _08070D8C @ =gCamera
	ldrh r2, [r6]
	mov sl, r2
	lsrs r2, r0, #0x10
	mov sb, r2
	asrs r0, r0, #0x10
	mov r2, sl
	subs r0, r0, r2
	strh r0, [r5, #0x16]
	ldrh r0, [r6, #2]
	lsrs r2, r1, #0x10
	mov sl, r2
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0x18]
	movs r0, #0
	ldrsh r1, [r6, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r4, r0
	bgt _08070D4E
	adds r0, r1, #0
	subs r0, #0x80
	cmp r4, r0
	blt _08070D4E
	movs r4, #2
	ldrsh r2, [r6, r4]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp r7, r0
	bgt _08070D4E
	adds r0, r2, #0
	subs r0, #0x80
	cmp r7, r0
	bge _08070D90
_08070D4E:
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08070D72
	movs r2, #0x18
	ldrsh r0, [r5, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _08070D72
	movs r4, #0x18
	ldrsh r1, [r5, r4]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08070D90
_08070D72:
	mov r1, r8
	ldrb r0, [r1, #8]
	mov r2, ip
	strb r0, [r2]
	ldr r0, [r3]
	bl TaskDestroy
	b _08070E74
	.align 2, 0
_08070D84: .4byte gCurTask
_08070D88: .4byte 0x0300000C
_08070D8C: .4byte gCamera
_08070D90:
	ldr r1, [r5, #0x28]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08070E40
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x2c
	movs r7, #0
	ldrsb r7, [r1, r7]
	adds r4, r0, r7
	ldr r2, _08070E84 @ =gPlayer
	ldr r1, [r2]
	asrs r1, r1, #8
	ldr r3, _08070E88 @ =gPlayerBodyPSI
	adds r0, r3, #0
	adds r0, #0x38
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov ip, r0
	add r1, ip
	adds r6, r3, #0
	cmp r4, r1
	bgt _08070DDC
	adds r0, r5, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r4, r0
	cmp r0, r1
	bge _08070DF0
	cmp r4, r1
	blt _08070E40
_08070DDC:
	adds r0, r6, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r3, ip
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r4
	blt _08070E40
_08070DF0:
	mov r4, sl
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r3, r5, #0
	adds r3, #0x2d
	movs r4, #0
	ldrsb r4, [r3, r4]
	adds r1, r0, r4
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	adds r3, r6, #0
	adds r3, #0x39
	movs r7, #0
	ldrsb r7, [r3, r7]
	adds r3, r0, r7
	cmp r1, r3
	bgt _08070E28
	adds r0, r5, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r3
	bge _08070E3A
	cmp r1, r3
	blt _08070E40
_08070E28:
	adds r0, r6, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r3, r0
	cmp r0, r1
	blt _08070E40
_08070E3A:
	adds r0, r2, #0
	bl sa2__sub_800CBA4
_08070E40:
	mov r1, r8
	adds r1, #0x44
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _08070E68
	adds r1, #2
	movs r0, #0x78
	strh r0, [r1]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08070E8C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08070E90 @ =sub_8070ACC
	str r0, [r1, #8]
_08070E68:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_08070E74:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08070E84: .4byte gPlayer
_08070E88: .4byte gPlayerBodyPSI
_08070E8C: .4byte gCurTask
_08070E90: .4byte sub_8070ACC
