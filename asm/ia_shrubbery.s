.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start Task_ShrubberyMain
Task_ShrubberyMain: @ 0x08076524
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0807658C @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r2
	mov sb, r0
	ldr r0, _08076590 @ =0x0300000C
	adds r3, r2, r0
	mov r1, sb
	ldr r1, [r1]
	str r1, [sp]
	mov r4, sb
	ldrb r1, [r4, #8]
	lsls r1, r1, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r6, r1, r0
	ldr r7, [sp]
	ldrb r1, [r7, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r5, r1, r0
	ldr r1, _08076594 @ =gCamera
	ldrh r0, [r1]
	subs r0, r6, r0
	strh r0, [r3, #0x16]
	ldrh r0, [r1, #2]
	subs r0, r5, r0
	strh r0, [r3, #0x18]
	movs r4, #0
	ldr r0, _08076598 @ =gPartner
	mov r8, r0
	ldr r3, _0807659C @ =gPlayer
	ldr r1, _080765A0 @ =0x0300003C
	adds r1, r1, r2
	mov sl, r1
_0807657C:
	cmp r4, #0
	beq _080765A4
	mov r2, r8
	ldr r0, [r2]
	asrs r0, r0, #8
	cmp r6, r0
	ble _080765AE
	b _080766BE
	.align 2, 0
_0807658C: .4byte gCurTask
_08076590: .4byte 0x0300000C
_08076594: .4byte gCamera
_08076598: .4byte gPartner
_0807659C: .4byte gPlayer
_080765A0: .4byte 0x0300003C
_080765A4:
	ldr r0, [r3]
	asrs r0, r0, #8
	cmp r6, r0
	ble _080765AE
	b _080766BE
_080765AE:
	ldr r7, [sp]
	ldrb r0, [r7, #5]
	lsls r0, r0, #3
	adds r1, r6, r0
	cmp r4, #0
	beq _080765C6
	mov r2, r8
	ldr r0, [r2]
	asrs r0, r0, #8
	cmp r1, r0
	bge _080765CE
	b _080766BE
_080765C6:
	ldr r0, [r3]
	asrs r0, r0, #8
	cmp r1, r0
	blt _080766BE
_080765CE:
	cmp r4, #0
	beq _080765DE
	mov r7, r8
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r5, r0
	ble _080765E6
	b _080766BE
_080765DE:
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	cmp r5, r0
	bgt _080766BE
_080765E6:
	ldr r1, [sp]
	ldrb r0, [r1, #6]
	lsls r0, r0, #3
	adds r1, r5, r0
	cmp r4, #0
	beq _080765FE
	mov r2, r8
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08076606
	b _080766BE
_080765FE:
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	cmp r1, r0
	blt _080766BE
_08076606:
	cmp r4, #0
	beq _08076610
	mov r7, r8
	ldr r0, [r7, #0x10]
	b _08076612
_08076610:
	ldr r0, [r3, #0x10]
_08076612:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080766CA
	mov r0, sl
	ldrb r1, [r0]
	asrs r1, r4
	movs r0, #1
	ands r1, r0
	mov r2, sb
	adds r2, #0x3c
	str r2, [sp, #8]
	cmp r1, #0
	bne _080766B0
	ldr r7, _08076650 @ =gPseudoRandom
	ldr r1, [r7]
	ldr r0, _08076654 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08076658 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r7]
	movs r1, #0xf8
	lsls r1, r1, #5
	ands r0, r1
	lsrs r1, r0, #8
	cmp r4, #0
	beq _0807665C
	mov r2, r8
	ldr r0, [r2]
	b _0807665E
	.align 2, 0
_08076650: .4byte gPseudoRandom
_08076654: .4byte 0x00196225
_08076658: .4byte 0x3C6EF35F
_0807665C:
	ldr r0, [r3]
_0807665E:
	asrs r0, r0, #8
	adds r0, r0, r1
	subs r0, #0x10
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r7, _08076688 @ =gPseudoRandom
	ldr r1, [r7]
	ldr r0, _0807668C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08076690 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r7]
	movs r1, #0xf0
	lsls r1, r1, #4
	ands r0, r1
	lsrs r1, r0, #8
	cmp r4, #0
	beq _08076694
	mov r7, r8
	ldr r0, [r7, #4]
	b _08076696
	.align 2, 0
_08076688: .4byte gPseudoRandom
_0807668C: .4byte 0x00196225
_08076690: .4byte 0x3C6EF35F
_08076694:
	ldr r0, [r3, #4]
_08076696:
	asrs r0, r0, #8
	adds r0, r0, r1
	subs r0, #8
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, #0
	str r3, [sp, #4]
	bl CreateShrubberyParticles
	movs r0, #0xb2
	bl m4aSongNumStart
	ldr r3, [sp, #4]
_080766B0:
	movs r0, #1
	lsls r0, r4
	ldr r2, [sp, #8]
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	b _080766CA
_080766BE:
	movs r1, #1
	lsls r1, r4
	mov r7, sl
	ldrb r0, [r7]
	bics r0, r1
	strb r0, [r7]
_080766CA:
	adds r4, #1
	ldr r0, _08076724 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	bge _080766DA
	b _0807657C
_080766DA:
	ldr r1, _08076728 @ =gCamera
	movs r2, #0
	ldrsh r0, [r1, r2]
	subs r6, r6, r0
	movs r4, #2
	ldrsh r0, [r1, r4]
	subs r5, r5, r0
	adds r1, r6, #0
	adds r1, #0x80
	movs r0, #0xf8
	lsls r0, r0, #1
	cmp r1, r0
	bhi _08076704
	adds r0, r5, #0
	adds r0, #0x80
	cmp r0, #0
	blt _08076704
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r5, r0
	ble _08076714
_08076704:
	mov r7, sb
	ldrb r0, [r7, #8]
	ldr r1, [sp]
	strb r0, [r1]
	ldr r0, _0807672C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08076714:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08076724: .4byte gNumSingleplayerCharacters
_08076728: .4byte gCamera
_0807672C: .4byte gCurTask

	thumb_func_start CreateShrubberyParticles
CreateShrubberyParticles: @ 0x08076730
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #4
	mov r8, r0
	mov sb, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	ldr r0, _080767E8 @ =Task_ShrubberyParticles
	movs r2, #0xc0
	lsls r2, r2, #6
	ldr r1, _080767EC @ =TaskDestructor_ShrubberyParticles
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r4, r3
	ldr r0, _080767F0 @ =0x0300000C
	adds r5, r4, r0
	mov r1, r8
	lsls r2, r1, #0x10
	asrs r2, r2, #0x10
	lsls r0, r2, #2
	str r0, [r3, #0x40]
	ldr r1, _080767F4 @ =0x03000048
	adds r0, r4, r1
	movs r1, #0
	mov sl, r1
	movs r6, #0
	strh r6, [r0]
	movs r0, #1
	str r0, [r3, #0x44]
	ldr r0, _080767F8 @ =0x0300003C
	adds r1, r4, r0
	movs r0, #0x34
	strb r0, [r1]
	str r2, [r3, #0x4c]
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	str r0, [r3, #0x50]
	mov r0, r8
	strh r0, [r5, #0x16]
	strh r1, [r5, #0x18]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r5, #4]
	strh r6, [r5, #0x1a]
	strh r6, [r5, #8]
	ldr r0, _080767FC @ =0x000001D3
	strh r0, [r5, #0xa]
	ldr r1, _08076800 @ =0x0300002C
	adds r0, r4, r1
	mov r1, sl
	strb r1, [r0]
	strh r6, [r5, #0x14]
	strh r6, [r5, #0x1c]
	ldr r0, _08076804 @ =0x0300002D
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08076808 @ =0x0300002E
	adds r1, r4, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0807680C @ =0x03000031
	adds r4, r4, r1
	mov r0, sl
	strb r0, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	str r6, [r5, #0x10]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080767E8: .4byte Task_ShrubberyParticles
_080767EC: .4byte TaskDestructor_ShrubberyParticles
_080767F0: .4byte 0x0300000C
_080767F4: .4byte 0x03000048
_080767F8: .4byte 0x0300003C
_080767FC: .4byte 0x000001D3
_08076800: .4byte 0x0300002C
_08076804: .4byte 0x0300002D
_08076808: .4byte 0x0300002E
_0807680C: .4byte 0x03000031

	thumb_func_start Task_ShrubberyParticles
Task_ShrubberyParticles: @ 0x08076810
	push {r4, r5, r6, lr}
	ldr r6, _08076860 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r5, r2
	ldr r0, _08076864 @ =0x0300000C
	adds r4, r5, r0
	ldr r0, [r2, #0x4c]
	ldr r3, _08076868 @ =gCamera
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldr r2, [r2, #0x50]
	ldrh r1, [r3, #2]
	subs r2, r2, r1
	strh r2, [r4, #0x18]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	adds r3, r6, #0
	cmp r0, r1
	bhi _08076856
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08076856
	lsls r1, r2, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _0807686C
_08076856:
	ldr r0, [r3]
	bl TaskDestroy
	b _08076894
	.align 2, 0
_08076860: .4byte gCurTask
_08076864: .4byte 0x0300000C
_08076868: .4byte gCamera
_0807686C:
	ldr r0, _08076884 @ =0x0300003C
	adds r1, r5, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08076888
	ldr r0, [r6]
	bl TaskDestroy
	b _08076894
	.align 2, 0
_08076884: .4byte 0x0300003C
_08076888:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08076894:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateEntity_Shrubbery
CreateEntity_Shrubbery: @ 0x0807689C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08076920 @ =Task_ShrubberyMain
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r1, _08076924 @ =0x0300000C
	adds r1, r1, r2
	mov sb, r1
	movs r3, #0
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r7, r8
	str r7, [r0]
	ldrb r1, [r7]
	strb r1, [r0, #8]
	strb r6, [r0, #9]
	ldr r0, _08076928 @ =0x0300003C
	adds r2, r2, r0
	strb r3, [r2]
	ldrb r0, [r7]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	mov r1, sb
	strh r0, [r1, #0x16]
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r1, #0x18]
	movs r7, #2
	rsbs r7, r7, #0
	adds r0, r7, #0
	mov r1, r8
	strb r0, [r1]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08076920: .4byte Task_ShrubberyMain
_08076924: .4byte 0x0300000C
_08076928: .4byte 0x0300003C

	thumb_func_start TaskDestructor_ShrubberyParticles
TaskDestructor_ShrubberyParticles: @ 0x0807692C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0
