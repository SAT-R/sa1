.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_CraneClaw
CreateEntity_CraneClaw: @ 0x08089A30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	mov sb, r2
	mov sl, r3
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r1, sb
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	mov r0, sl
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	ldr r0, _08089BA4 @ =Task_CraneClawMain
	ldr r1, _08089BA8 @ =TaskDestructor_CraneClaw
	str r1, [sp]
	movs r1, #0xa4
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldr r1, _08089BAC @ =0x0300000C
	adds r5, r4, r1
	adds r1, #0x30
	adds r2, r4, r1
	adds r1, #0x30
	adds r7, r4, r1
	mov r1, r8
	strh r1, [r0, #4]
	mov r1, sb
	strh r1, [r0, #6]
	str r6, [r0]
	ldrb r1, [r6]
	strb r1, [r0, #8]
	mov r1, sl
	strb r1, [r0, #9]
	ldr r1, _08089BB0 @ =0x0300009C
	adds r0, r4, r1
	movs r1, #0
	strh r1, [r0]
	ldr r1, _08089BB4 @ =0x0300009E
	adds r0, r4, r1
	movs r1, #0
	strh r1, [r0]
	ldr r1, _08089BB8 @ =0x030000A0
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	movs r0, #0x1e
	str r2, [sp, #4]
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0xf9
	lsls r0, r0, #1
	mov sl, r0
	mov r1, sl
	strh r1, [r5, #0xa]
	ldr r1, _08089BBC @ =0x0300002C
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x1a]
	movs r0, #0
	strh r0, [r5, #8]
	strh r0, [r5, #0x14]
	strh r0, [r5, #0x1c]
	ldr r0, _08089BC0 @ =0x0300002D
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08089BC4 @ =0x0300002E
	adds r0, r4, r1
	movs r1, #0x10
	mov sb, r1
	mov r1, sb
	strb r1, [r0]
	ldr r1, _08089BC8 @ =0x03000031
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	str r0, [r5, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r5, #0x10]
	movs r0, #3
	bl VramMalloc
	ldr r2, [sp, #4]
	str r0, [r2, #4]
	mov r0, sl
	strh r0, [r2, #0xa]
	ldr r0, _08089BCC @ =0x0300005C
	adds r1, r4, r0
	movs r0, #3
	strb r0, [r1]
	movs r5, #0x88
	lsls r5, r5, #3
	strh r5, [r2, #0x1a]
	movs r1, #0
	strh r1, [r2, #8]
	strh r1, [r2, #0x14]
	strh r1, [r2, #0x1c]
	ldr r0, _08089BD0 @ =0x0300005D
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08089BD4 @ =0x0300005E
	adds r0, r4, r1
	mov r1, sb
	strb r1, [r0]
	ldr r1, _08089BD8 @ =0x03000061
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	mov r0, r8
	str r0, [r2, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r2, #0x10]
	movs r0, #1
	bl VramMalloc
	str r0, [r7, #4]
	ldr r0, _08089BDC @ =0x000001F7
	strh r0, [r7, #0xa]
	ldr r1, _08089BE0 @ =0x0300008C
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	strh r5, [r7, #0x1a]
	movs r0, #0
	strh r0, [r7, #8]
	strh r0, [r7, #0x14]
	strh r0, [r7, #0x1c]
	ldr r0, _08089BE4 @ =0x0300008D
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08089BE8 @ =0x0300008E
	adds r0, r4, r1
	mov r1, sb
	strb r1, [r0]
	ldr r0, _08089BEC @ =0x03000091
	adds r4, r4, r0
	movs r1, #0
	strb r1, [r4]
	mov r0, r8
	str r0, [r7, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r7, #0x10]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08089BA4: .4byte Task_CraneClawMain
_08089BA8: .4byte TaskDestructor_CraneClaw
_08089BAC: .4byte 0x0300000C
_08089BB0: .4byte 0x0300009C
_08089BB4: .4byte 0x0300009E
_08089BB8: .4byte 0x030000A0
_08089BBC: .4byte 0x0300002C
_08089BC0: .4byte 0x0300002D
_08089BC4: .4byte 0x0300002E
_08089BC8: .4byte 0x03000031
_08089BCC: .4byte 0x0300005C
_08089BD0: .4byte 0x0300005D
_08089BD4: .4byte 0x0300005E
_08089BD8: .4byte 0x03000061
_08089BDC: .4byte 0x000001F7
_08089BE0: .4byte 0x0300008C
_08089BE4: .4byte 0x0300008D
_08089BE8: .4byte 0x0300008E
_08089BEC: .4byte 0x03000091

	thumb_func_start Task_CraneClawMain
Task_CraneClawMain: @ 0x08089BF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	movs r0, #0
	mov r8, r0
	ldr r0, _08089C7C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r2, [r7]
	str r2, [sp, #4]
	ldr r3, _08089C80 @ =0x0300000C
	adds r6, r1, r3
	ldr r5, _08089C84 @ =0x0300003C
	adds r5, r5, r1
	mov sb, r5
	adds r0, #0x6c
	adds r0, r1, r0
	str r0, [sp, #8]
	ldrb r0, [r7, #8]
	lsls r0, r0, #3
	ldrh r1, [r7, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _08089C88 @ =gCamera
	ldrh r0, [r3]
	mov r2, sl
	lsls r4, r2, #0x10
	asrs r2, r4, #0x10
	subs r0, r2, r0
	strh r0, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsrs r5, r1, #0x10
	str r5, [sp]
	asrs r1, r1, #0x10
	subs r0, r1, r0
	adds r0, #0x30
	strh r0, [r6, #0x18]
	ldrh r0, [r3]
	subs r0, r2, r0
	mov r5, sb
	strh r0, [r5, #0x16]
	ldrh r0, [r3, #2]
	subs r0, r1, r0
	strh r0, [r5, #0x18]
	ldrh r0, [r3]
	subs r2, r2, r0
	ldr r0, [sp, #8]
	strh r2, [r0, #0x16]
	ldrh r0, [r3, #2]
	subs r1, r1, r0
	ldr r2, [sp, #8]
	strh r1, [r2, #0x18]
	str r4, [sp, #0xc]
	b _08089C9C
	.align 2, 0
_08089C7C: .4byte gCurTask
_08089C80: .4byte 0x0300000C
_08089C84: .4byte 0x0300003C
_08089C88: .4byte gCamera
_08089C8C:
	movs r3, #1
	add r8, r3
	ldr r0, _08089D70 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r8, r0
	bge _08089D06
_08089C9C:
	ldr r5, _08089D74 @ =gPlayer
	mov r0, r8
	cmp r0, #0
	beq _08089CA6
	ldr r5, _08089D78 @ =gPartner
_08089CA6:
	ldr r1, [sp]
	lsls r4, r1, #0x10
	movs r3, #0xc0
	lsls r3, r3, #0xe
	adds r2, r4, r3
	adds r0, r6, #0
	ldr r3, [sp, #0xc]
	asrs r1, r3, #0x10
	asrs r2, r2, #0x10
	adds r3, r5, #0
	bl sa2__sub_800DF38
	mov r1, sl
	lsls r1, r1, #0x10
	str r1, [sp, #0x10]
	cmp r0, #0
	beq _08089C8C
	adds r0, r7, #0
	adds r0, #0x9c
	movs r2, #0
	strh r2, [r0]
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r7, #0
	adds r0, #0xa0
	strb r1, [r0]
	adds r1, r6, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r5, #0x10]
	ldr r3, _08089D7C @ =gUnknown_03005A46
	ldrb r0, [r3]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _08089D80 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08089D84 @ =sub_8089DE0
	str r0, [r1, #8]
	movs r0, #0xb5
	bl m4aSongNumStart
_08089D06:
	ldr r5, [sp, #0x10]
	asrs r2, r5, #0x10
	ldr r3, _08089D88 @ =gCamera
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r5, #0xb8
	lsls r5, r5, #1
	adds r0, r1, r5
	cmp r2, r0
	bgt _08089D3A
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _08089D3A
	asrs r2, r4, #0x10
	movs r0, #2
	ldrsh r1, [r3, r0]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r2, r0
	bgt _08089D3A
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _08089D8C
_08089D3A:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08089D5E
	movs r5, #0x18
	ldrsh r0, [r6, r5]
	adds r0, #0x80
	cmp r0, #0
	blt _08089D5E
	movs r0, #0x18
	ldrsh r1, [r6, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08089D8C
_08089D5E:
	ldrb r0, [r7, #8]
	ldr r1, [sp, #4]
	strb r0, [r1]
	ldr r0, _08089D80 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08089DCA
	.align 2, 0
_08089D70: .4byte gNumSingleplayerCharacters
_08089D74: .4byte gPlayer
_08089D78: .4byte gPartner
_08089D7C: .4byte gUnknown_03005A46
_08089D80: .4byte gCurTask
_08089D84: .4byte sub_8089DE0
_08089D88: .4byte gCamera
_08089D8C:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, sb
	bl DisplaySprite
	ldr r0, _08089DDC @ =gCamera
	ldrh r1, [r0, #2]
	asrs r0, r4, #0x10
	subs r0, r0, r1
	adds r0, #0x18
	mov r2, sb
	strh r0, [r2, #0x18]
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, sb
	bl DisplaySprite
	ldr r0, [sp, #8]
	bl UpdateSpriteAnimation
	ldr r0, [sp, #8]
	bl DisplaySprite
_08089DCA:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08089DDC: .4byte gCamera

	thumb_func_start sub_8089DE0
sub_8089DE0: @ 0x08089DE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r1, _08089F38 @ =gCurTask
	ldr r0, [r1]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r5
	mov r8, r0
	ldr r2, [r0]
	str r2, [sp, #8]
	ldr r3, _08089F3C @ =0x0300000C
	adds r6, r5, r3
	ldr r4, _08089F40 @ =0x0300003C
	adds r7, r5, r4
	ldr r0, _08089F44 @ =0x0300006C
	adds r0, r0, r5
	mov sb, r0
	mov r1, r8
	ldrb r2, [r1, #8]
	lsls r2, r2, #3
	ldrh r0, [r1, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldr r3, [sp, #8]
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	mov r4, r8
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _08089F48 @ =gCamera
	ldrh r0, [r3]
	lsrs r4, r2, #0x10
	str r4, [sp]
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsrs r4, r1, #0x10
	str r4, [sp, #4]
	asrs r1, r1, #0x10
	subs r0, r1, r0
	adds r0, #0x30
	strh r0, [r6, #0x18]
	ldrh r0, [r3]
	subs r0, r2, r0
	strh r0, [r7, #0x16]
	ldrh r0, [r3, #2]
	subs r0, r1, r0
	strh r0, [r7, #0x18]
	ldrh r0, [r3]
	subs r0, r2, r0
	mov r4, sb
	strh r0, [r4, #0x16]
	ldrh r0, [r3, #2]
	subs r0, r1, r0
	strh r0, [r4, #0x18]
	ldr r4, _08089F4C @ =0x030000A0
	adds r0, r5, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r4, _08089F50 @ =gPlayer
	mov sl, r3
	cmp r0, #0
	beq _08089E74
	ldr r4, _08089F54 @ =gPartner
_08089E74:
	ldr r0, [r4, #0x10]
	movs r3, #0x80
	ands r0, r3
	cmp r0, #0
	bne _08089E8A
	lsls r0, r2, #8
	str r0, [r4]
	adds r0, r1, #0
	adds r0, #0x68
	lsls r0, r0, #8
	str r0, [r4, #4]
_08089E8A:
	ldr r0, _08089F58 @ =0x0300009C
	adds r1, r5, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bls _08089EC4
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #0x10]
	ands r0, r3
	cmp r0, #0
	bne _08089EBC
	strh r0, [r4, #8]
	strh r0, [r4, #0xc]
	strh r0, [r4, #0xa]
	adds r0, r4, #0
	bl Player_TransitionCancelFlyingAndBoost
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x26
	strb r0, [r1]
_08089EBC:
	ldr r2, _08089F38 @ =gCurTask
	ldr r1, [r2]
	ldr r0, _08089F5C @ =sub_8089FB4
	str r0, [r1, #8]
_08089EC4:
	ldr r3, [sp]
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	mov r4, sl
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r3, #0xb8
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r2, r0
	bgt _08089F00
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _08089F00
	ldr r4, [sp, #4]
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	mov r0, sl
	movs r2, #2
	ldrsh r3, [r0, r2]
	movs r4, #0x90
	lsls r4, r4, #1
	adds r0, r3, r4
	cmp r1, r0
	bgt _08089F00
	adds r0, r3, #0
	subs r0, #0x80
	cmp r1, r0
	bge _08089F60
_08089F00:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08089F24
	movs r1, #0x18
	ldrsh r0, [r6, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08089F24
	movs r2, #0x18
	ldrsh r1, [r6, r2]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08089F60
_08089F24:
	mov r3, r8
	ldrb r0, [r3, #8]
	ldr r4, [sp, #8]
	strb r0, [r4]
	ldr r0, _08089F38 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08089FA0
	.align 2, 0
_08089F38: .4byte gCurTask
_08089F3C: .4byte 0x0300000C
_08089F40: .4byte 0x0300003C
_08089F44: .4byte 0x0300006C
_08089F48: .4byte gCamera
_08089F4C: .4byte 0x030000A0
_08089F50: .4byte gPlayer
_08089F54: .4byte gPartner
_08089F58: .4byte 0x0300009C
_08089F5C: .4byte sub_8089FB4
_08089F60:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, _08089FB0 @ =gCamera
	ldrh r1, [r0, #2]
	ldr r2, [sp, #4]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	adds r0, #0x18
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, sb
	bl DisplaySprite
_08089FA0:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08089FB0: .4byte gCamera

	thumb_func_start sub_8089FB4
sub_8089FB4: @ 0x08089FB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r1, _0808A134 @ =gCurTask
	ldr r0, [r1]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r4
	mov sb, r0
	ldr r2, [r0]
	str r2, [sp, #0xc]
	ldr r3, _0808A138 @ =0x0300000C
	adds r6, r4, r3
	ldr r5, _0808A13C @ =0x0300003C
	adds r7, r4, r5
	ldr r0, _0808A140 @ =0x0300006C
	adds r0, r0, r4
	mov sl, r0
	mov r1, sb
	ldrb r0, [r1, #8]
	lsls r0, r0, #3
	ldrh r1, [r1, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	mov r2, sb
	ldrh r1, [r2, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	adds r3, #0x90
	adds r3, r3, r4
	mov r8, r3
	ldrh r0, [r3]
	movs r1, #0x1e
	subs r1, r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r1, #0x1e
	bl Div
	lsls r0, r0, #0x10
	ldr r3, _0808A144 @ =gCamera
	ldrh r1, [r3]
	ldr r5, [sp]
	lsls r2, r5, #0x10
	asrs r5, r2, #0x10
	subs r1, r5, r1
	strh r1, [r6, #0x16]
	ldrh r1, [r3, #2]
	mov ip, r1
	ldr r2, [sp, #4]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	mov r2, ip
	subs r2, r1, r2
	str r2, [sp, #0x10]
	lsrs r2, r0, #0x10
	str r2, [sp, #8]
	asrs r0, r0, #0x10
	mov ip, r0
	ldr r2, [sp, #0x10]
	add r2, ip
	strh r2, [r6, #0x18]
	ldrh r0, [r3]
	subs r0, r5, r0
	strh r0, [r7, #0x16]
	ldrh r0, [r3, #2]
	subs r0, r1, r0
	strh r0, [r7, #0x18]
	ldrh r0, [r3]
	subs r0, r5, r0
	mov r2, sl
	strh r0, [r2, #0x16]
	ldrh r0, [r3, #2]
	subs r0, r1, r0
	strh r0, [r2, #0x18]
	ldr r3, _0808A148 @ =0x030000A0
	adds r4, r4, r3
	movs r0, #0
	ldrsb r0, [r4, r0]
	ldr r4, _0808A14C @ =gPlayer
	cmp r0, #0
	beq _0808A074
	ldr r4, _0808A150 @ =gPartner
_0808A074:
	ldr r0, [r4, #0x10]
	movs r2, #0x80
	ands r0, r2
	cmp r0, #0
	bne _0808A08C
	lsls r0, r5, #8
	str r0, [r4]
	mov r5, ip
	adds r0, r1, r5
	adds r0, #0x38
	lsls r0, r0, #8
	str r0, [r4, #4]
_0808A08C:
	mov r1, r8
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1e
	bls _0808A0C4
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #0x10]
	ands r0, r2
	cmp r0, #0
	bne _0808A0BC
	strh r0, [r4, #8]
	strh r0, [r4, #0xc]
	strh r0, [r4, #0xa]
	adds r0, r4, #0
	bl Player_TransitionCancelFlyingAndBoost
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x26
	strb r0, [r1]
_0808A0BC:
	ldr r2, _0808A134 @ =gCurTask
	ldr r1, [r2]
	ldr r0, _0808A154 @ =sub_808A1B4
	str r0, [r1, #8]
_0808A0C4:
	ldr r3, [sp]
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	ldr r3, _0808A144 @ =gCamera
	movs r4, #0
	ldrsh r1, [r3, r4]
	movs r5, #0xb8
	lsls r5, r5, #1
	adds r0, r1, r5
	cmp r2, r0
	bgt _0808A0FC
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _0808A0FC
	ldr r1, [sp, #4]
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	movs r4, #2
	ldrsh r1, [r3, r4]
	subs r5, #0x50
	adds r0, r1, r5
	cmp r2, r0
	bgt _0808A0FC
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _0808A158
_0808A0FC:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0808A120
	movs r1, #0x18
	ldrsh r0, [r6, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0808A120
	movs r2, #0x18
	ldrsh r1, [r6, r2]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808A158
_0808A120:
	mov r3, sb
	ldrb r0, [r3, #8]
	ldr r4, [sp, #0xc]
	strb r0, [r4]
	ldr r0, _0808A134 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0808A19E
	.align 2, 0
_0808A134: .4byte gCurTask
_0808A138: .4byte 0x0300000C
_0808A13C: .4byte 0x0300003C
_0808A140: .4byte 0x0300006C
_0808A144: .4byte gCamera
_0808A148: .4byte 0x030000A0
_0808A14C: .4byte gPlayer
_0808A150: .4byte gPartner
_0808A154: .4byte sub_808A1B4
_0808A158:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, _0808A1B0 @ =gCamera
	ldrh r1, [r0, #2]
	ldr r5, [sp, #4]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	ldr r2, [sp, #8]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x11
	adds r0, r0, r1
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	mov r0, sl
	bl UpdateSpriteAnimation
	mov r0, sl
	bl DisplaySprite
_0808A19E:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808A1B0: .4byte gCamera

	thumb_func_start sub_808A1B4
sub_808A1B4: @ 0x0808A1B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r1, _0808A2B8 @ =gCurTask
	ldr r0, [r1]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r6
	mov sl, r0
	ldr r2, [r0]
	str r2, [sp, #8]
	ldr r3, _0808A2BC @ =0x0300000C
	adds r3, r3, r6
	mov r8, r3
	ldr r4, _0808A2C0 @ =0x0300006C
	adds r4, r6, r4
	str r4, [sp, #0xc]
	ldrb r1, [r0, #8]
	lsls r1, r1, #3
	ldrh r0, [r0, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldrb r2, [r2, #1]
	lsls r2, r2, #3
	mov r5, sl
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldr r0, _0808A2C4 @ =0x0300009C
	adds r0, r0, r6
	mov ip, r0
	ldrh r3, [r0]
	ldr r4, _0808A2C8 @ =gCamera
	ldrh r0, [r4]
	lsrs r5, r1, #0x10
	str r5, [sp]
	asrs r7, r1, #0x10
	subs r0, r7, r0
	lsls r3, r3, #0x11
	asrs r3, r3, #0x10
	adds r0, r3, r0
	movs r1, #0
	mov sb, r1
	mov r5, r8
	strh r0, [r5, #0x16]
	ldrh r0, [r4, #2]
	lsrs r1, r2, #0x10
	str r1, [sp, #4]
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r5, #0x18]
	ldrh r0, [r4]
	subs r0, r7, r0
	adds r0, r3, r0
	ldr r5, [sp, #0xc]
	strh r0, [r5, #0x16]
	ldrh r0, [r4, #2]
	subs r0, r2, r0
	strh r0, [r5, #0x18]
	ldr r1, _0808A2CC @ =0x030000A0
	adds r0, r6, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r5, _0808A2D0 @ =gPlayer
	cmp r0, #0
	beq _0808A248
	ldr r5, _0808A2D4 @ =gPartner
_0808A248:
	ldr r4, [r5, #0x10]
	movs r1, #0x80
	ands r1, r4
	cmp r1, #0
	bne _0808A260
	adds r0, r7, r3
	lsls r0, r0, #8
	str r0, [r5]
	adds r0, r2, #0
	adds r0, #0x38
	lsls r0, r0, #8
	str r0, [r5, #4]
_0808A260:
	ldr r2, [sp, #8]
	ldrb r0, [r2, #5]
	lsls r0, r0, #3
	cmp r3, r0
	ble _0808A2E8
	cmp r1, #0
	bne _0808A28A
	ldr r0, _0808A2D8 @ =0xFFBFFFFF
	ands r4, r0
	str r4, [r5, #0x10]
	mov r3, sb
	strh r3, [r5, #8]
	strh r3, [r5, #0xc]
	strh r3, [r5, #0xa]
	adds r0, r5, #0
	bl Player_TransitionCancelFlyingAndBoost
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0x12
	strb r0, [r1]
_0808A28A:
	ldr r4, _0808A2DC @ =0x0300009E
	adds r0, r6, r4
	mov r1, sb
	strh r1, [r0]
	ldr r2, _0808A2E0 @ =0x0300002C
	adds r1, r6, r2
	movs r0, #2
	strb r0, [r1]
	movs r0, #0xb5
	bl m4aSongNumStop
	ldr r3, _0808A2B8 @ =gCurTask
	ldr r1, [r3]
	ldr r0, _0808A2E4 @ =sub_808A394
	str r0, [r1, #8]
	adds r2, r5, #0
	adds r2, #0x26
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	b _0808A2F0
	.align 2, 0
_0808A2B8: .4byte gCurTask
_0808A2BC: .4byte 0x0300000C
_0808A2C0: .4byte 0x0300006C
_0808A2C4: .4byte 0x0300009C
_0808A2C8: .4byte gCamera
_0808A2CC: .4byte 0x030000A0
_0808A2D0: .4byte gPlayer
_0808A2D4: .4byte gPartner
_0808A2D8: .4byte 0xFFBFFFFF
_0808A2DC: .4byte 0x0300009E
_0808A2E0: .4byte 0x0300002C
_0808A2E4: .4byte sub_808A394
_0808A2E8:
	mov r4, ip
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
_0808A2F0:
	ldr r5, [sp]
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	ldr r3, _0808A364 @ =gCamera
	movs r0, #0
	ldrsh r2, [r3, r0]
	movs r4, #0xb8
	lsls r4, r4, #1
	adds r0, r2, r4
	cmp r1, r0
	bgt _0808A32A
	adds r0, r2, #0
	subs r0, #0x80
	cmp r1, r0
	blt _0808A32A
	ldr r5, [sp, #4]
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
	movs r0, #2
	ldrsh r1, [r3, r0]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r2, r0
	bgt _0808A32A
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _0808A36C
_0808A32A:
	mov r4, r8
	ldrh r0, [r4, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0808A350
	movs r5, #0x18
	ldrsh r0, [r4, r5]
	adds r0, #0x80
	cmp r0, #0
	blt _0808A350
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808A36C
_0808A350:
	mov r1, sl
	ldrb r0, [r1, #8]
	ldr r2, [sp, #8]
	strb r0, [r2]
	ldr r0, _0808A368 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0808A384
	.align 2, 0
_0808A364: .4byte gCamera
_0808A368: .4byte gCurTask
_0808A36C:
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, r8
	bl DisplaySprite
	ldr r0, [sp, #0xc]
	bl UpdateSpriteAnimation
	ldr r0, [sp, #0xc]
	bl DisplaySprite
_0808A384:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_808A394
sub_808A394: @ 0x0808A394
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0808A460 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r2, r0
	ldr r1, [r7]
	mov ip, r1
	adds r0, #0xc
	adds r5, r2, r0
	ldr r1, _0808A464 @ =0x0300006C
	adds r4, r2, r1
	ldrb r1, [r7, #8]
	lsls r1, r1, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r0, ip
	ldrb r3, [r0, #1]
	lsls r3, r3, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r3, r3, r0
	ldr r0, _0808A468 @ =0x0300009C
	adds r2, r2, r0
	ldrh r2, [r2]
	ldr r6, _0808A46C @ =gCamera
	ldrh r0, [r6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r1, r0
	lsls r2, r2, #0x11
	asrs r2, r2, #0x10
	adds r0, r2, r0
	strh r0, [r5, #0x16]
	ldrh r0, [r6, #2]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	subs r0, r3, r0
	strh r0, [r5, #0x18]
	ldrh r0, [r6]
	subs r0, r1, r0
	adds r2, r2, r0
	strh r2, [r4, #0x16]
	ldrh r0, [r6, #2]
	subs r0, r3, r0
	strh r0, [r4, #0x18]
	movs r0, #0
	ldrsh r2, [r6, r0]
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r0, r0, r2
	mov sb, r0
	cmp r1, sb
	bgt _0808A42A
	adds r0, r2, #0
	subs r0, #0x80
	cmp r1, r0
	blt _0808A42A
	movs r2, #2
	ldrsh r1, [r6, r2]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r3, r0
	bgt _0808A42A
	adds r0, r1, #0
	subs r0, #0x80
	cmp r3, r0
	bge _0808A470
_0808A42A:
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0808A44E
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0808A44E
	movs r2, #0x18
	ldrsh r1, [r5, r2]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808A470
_0808A44E:
	ldrb r0, [r7, #8]
	mov r1, ip
	strb r0, [r1]
	mov r2, r8
	ldr r0, [r2]
	bl TaskDestroy
	b _0808A4A2
	.align 2, 0
_0808A460: .4byte gCurTask
_0808A464: .4byte 0x0300006C
_0808A468: .4byte 0x0300009C
_0808A46C: .4byte gCamera
_0808A470:
	adds r1, r7, #0
	adds r1, #0x9e
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1e
	bls _0808A48A
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _0808A4B0 @ =sub_808A4B4
	str r0, [r1, #8]
_0808A48A:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0808A4A2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808A4B0: .4byte sub_808A4B4

	thumb_func_start sub_808A4B4
sub_808A4B4: @ 0x0808A4B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _0808A540 @ =gCurTask
	ldr r0, [r0]
	mov ip, r0
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	ldr r1, [r5]
	str r1, [sp]
	ldr r3, _0808A544 @ =0x0300000C
	adds r6, r2, r3
	ldr r7, _0808A548 @ =0x0300006C
	adds r7, r7, r2
	mov r8, r7
	ldrb r3, [r5, #8]
	lsls r3, r3, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r3, r3, r0
	lsls r3, r3, #0x10
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r0, _0808A54C @ =0x0300009C
	adds r0, r2, r0
	str r0, [sp, #4]
	ldrh r2, [r0]
	ldr r4, _0808A550 @ =gCamera
	ldrh r0, [r4]
	lsrs r7, r3, #0x10
	mov sb, r7
	asrs r3, r3, #0x10
	subs r0, r3, r0
	lsls r2, r2, #0x11
	asrs r2, r2, #0x10
	adds r0, r2, r0
	strh r0, [r6, #0x16]
	ldrh r0, [r4, #2]
	lsrs r7, r1, #0x10
	mov sl, r7
	asrs r1, r1, #0x10
	subs r0, r1, r0
	strh r0, [r6, #0x18]
	ldrh r0, [r4]
	subs r3, r3, r0
	adds r2, r2, r3
	mov r0, r8
	strh r2, [r0, #0x16]
	ldrh r0, [r4, #2]
	subs r1, r1, r0
	mov r2, r8
	strh r1, [r2, #0x18]
	ldr r3, [sp, #4]
	ldrh r0, [r3]
	ldr r2, _0808A540 @ =gCurTask
	cmp r0, #0
	bne _0808A558
	ldr r0, _0808A554 @ =sub_808A5F0
	mov r7, ip
	str r0, [r7, #8]
	b _0808A55E
	.align 2, 0
_0808A540: .4byte gCurTask
_0808A544: .4byte 0x0300000C
_0808A548: .4byte 0x0300006C
_0808A54C: .4byte 0x0300009C
_0808A550: .4byte gCamera
_0808A554: .4byte sub_808A5F0
_0808A558:
	subs r0, #1
	ldr r1, [sp, #4]
	strh r0, [r1]
_0808A55E:
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r3, r0, #0x10
	movs r7, #0
	ldrsh r1, [r4, r7]
	movs r7, #0xb8
	lsls r7, r7, #1
	adds r0, r1, r7
	cmp r3, r0
	bgt _0808A594
	adds r0, r1, #0
	subs r0, #0x80
	cmp r3, r0
	blt _0808A594
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	movs r3, #2
	ldrsh r4, [r4, r3]
	subs r7, #0x50
	adds r0, r4, r7
	cmp r1, r0
	bgt _0808A594
	adds r0, r4, #0
	subs r0, #0x80
	cmp r1, r0
	bge _0808A5C6
_0808A594:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0808A5B8
	movs r1, #0x18
	ldrsh r0, [r6, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0808A5B8
	movs r3, #0x18
	ldrsh r1, [r6, r3]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808A5C6
_0808A5B8:
	ldrb r0, [r5, #8]
	ldr r7, [sp]
	strb r0, [r7]
	ldr r0, [r2]
	bl TaskDestroy
	b _0808A5DE
_0808A5C6:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, r8
	bl DisplaySprite
_0808A5DE:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_808A5F0
sub_808A5F0: @ 0x0808A5F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r1, _0808A714 @ =gCurTask
	ldr r0, [r1]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r2
	mov sb, r0
	ldr r3, [r0]
	str r3, [sp, #8]
	ldr r5, _0808A718 @ =0x0300000C
	adds r6, r2, r5
	ldr r0, _0808A71C @ =0x0300003C
	adds r0, r0, r2
	mov r8, r0
	ldr r1, _0808A720 @ =0x0300006C
	adds r1, r1, r2
	mov sl, r1
	mov r3, sb
	ldrb r4, [r3, #8]
	lsls r4, r4, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r5, [sp, #8]
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	ldrh r1, [r3, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, _0808A724 @ =0x0300009C
	adds r7, r2, r0
	ldrh r0, [r7]
	movs r1, #0x1e
	subs r1, r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r1, #0x1e
	bl Div
	movs r1, #0x30
	subs r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _0808A728 @ =gCamera
	ldrh r0, [r3]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	subs r0, r4, r0
	strh r0, [r6, #0x16]
	ldrh r2, [r3, #2]
	ldr r5, [sp]
	lsls r0, r5, #0x10
	asrs r5, r0, #0x10
	subs r2, r5, r2
	lsrs r0, r1, #0x10
	str r0, [sp, #4]
	asrs r1, r1, #0x10
	adds r1, r1, r2
	strh r1, [r6, #0x18]
	ldrh r0, [r3]
	subs r0, r4, r0
	mov r1, r8
	strh r0, [r1, #0x16]
	ldrh r0, [r3, #2]
	subs r0, r5, r0
	strh r0, [r1, #0x18]
	ldrh r0, [r3]
	subs r0, r4, r0
	mov r2, sl
	strh r0, [r2, #0x16]
	ldrh r0, [r3, #2]
	subs r0, r5, r0
	strh r0, [r2, #0x18]
	ldrh r0, [r7]
	adds r0, #1
	strh r0, [r7]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1e
	bls _0808A6B2
	movs r0, #0
	strh r0, [r7]
	ldr r0, _0808A714 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808A72C @ =sub_808A78C
	str r0, [r1, #8]
_0808A6B2:
	movs r2, #0
	ldrsh r1, [r3, r2]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r4, r0
	bgt _0808A6DC
	adds r0, r1, #0
	subs r0, #0x80
	cmp r4, r0
	blt _0808A6DC
	movs r0, #2
	ldrsh r1, [r3, r0]
	subs r2, #0x50
	adds r0, r1, r2
	cmp r5, r0
	bgt _0808A6DC
	adds r0, r1, #0
	subs r0, #0x80
	cmp r5, r0
	bge _0808A730
_0808A6DC:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0808A700
	movs r3, #0x18
	ldrsh r0, [r6, r3]
	adds r0, #0x80
	cmp r0, #0
	blt _0808A700
	movs r5, #0x18
	ldrsh r1, [r6, r5]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808A730
_0808A700:
	mov r1, sb
	ldrb r0, [r1, #8]
	ldr r2, [sp, #8]
	strb r0, [r2]
	ldr r0, _0808A714 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0808A778
	.align 2, 0
_0808A714: .4byte gCurTask
_0808A718: .4byte 0x0300000C
_0808A71C: .4byte 0x0300003C
_0808A720: .4byte 0x0300006C
_0808A724: .4byte 0x0300009C
_0808A728: .4byte gCamera
_0808A72C: .4byte sub_808A78C
_0808A730:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, r8
	bl DisplaySprite
	ldr r0, _0808A788 @ =gCamera
	ldrh r1, [r0, #2]
	ldr r3, [sp]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	ldr r5, [sp, #4]
	lsls r1, r5, #0x10
	asrs r1, r1, #0x11
	adds r0, r0, r1
	mov r1, r8
	strh r0, [r1, #0x18]
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, r8
	bl DisplaySprite
	mov r0, sl
	bl UpdateSpriteAnimation
	mov r0, sl
	bl DisplaySprite
_0808A778:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808A788: .4byte gCamera

	thumb_func_start sub_808A78C
sub_808A78C: @ 0x0808A78C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0808A88C @ =gCurTask
	mov ip, r0
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r7, r0
	ldr r1, [r3]
	mov sl, r1
	ldr r2, _0808A890 @ =0x0300000C
	adds r6, r7, r2
	ldr r5, _0808A894 @ =0x0300003C
	adds r5, r5, r7
	mov r8, r5
	adds r0, #0x6c
	adds r0, r0, r7
	mov sb, r0
	ldrb r2, [r3, #8]
	lsls r2, r2, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r4, _0808A898 @ =gCamera
	ldrh r0, [r4]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r6, #0x16]
	ldrh r0, [r4, #2]
	lsrs r5, r1, #0x10
	str r5, [sp]
	asrs r5, r1, #0x10
	subs r0, r5, r0
	adds r0, #0x30
	strh r0, [r6, #0x18]
	ldrh r0, [r4]
	subs r0, r2, r0
	mov r1, r8
	strh r0, [r1, #0x16]
	ldrh r0, [r4, #2]
	subs r0, r5, r0
	strh r0, [r1, #0x18]
	ldrh r0, [r4]
	subs r0, r2, r0
	mov r1, sb
	strh r0, [r1, #0x16]
	ldrh r0, [r4, #2]
	subs r0, r5, r0
	strh r0, [r1, #0x18]
	ldr r0, _0808A89C @ =0x0300009C
	adds r1, r7, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bls _0808A82C
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0808A8A0 @ =0x030000A0
	adds r1, r7, r0
	movs r0, #0
	strb r0, [r1]
	mov r7, ip
	ldr r1, [r7]
	ldr r0, _0808A8A4 @ =Task_CraneClawMain
	str r0, [r1, #8]
_0808A82C:
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r7, #0xb8
	lsls r7, r7, #1
	adds r0, r1, r7
	cmp r2, r0
	bgt _0808A858
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _0808A858
	movs r0, #2
	ldrsh r1, [r4, r0]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r5, r0
	bgt _0808A858
	adds r0, r1, #0
	subs r0, #0x80
	cmp r5, r0
	bge _0808A8A8
_0808A858:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0808A87C
	movs r5, #0x18
	ldrsh r0, [r6, r5]
	adds r0, #0x80
	cmp r0, #0
	blt _0808A87C
	movs r7, #0x18
	ldrsh r1, [r6, r7]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808A8A8
_0808A87C:
	ldrb r0, [r3, #8]
	mov r1, sl
	strb r0, [r1]
	mov r2, ip
	ldr r0, [r2]
	bl TaskDestroy
	b _0808A8EA
	.align 2, 0
_0808A88C: .4byte gCurTask
_0808A890: .4byte 0x0300000C
_0808A894: .4byte 0x0300003C
_0808A898: .4byte gCamera
_0808A89C: .4byte 0x0300009C
_0808A8A0: .4byte 0x030000A0
_0808A8A4: .4byte Task_CraneClawMain
_0808A8A8:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, r8
	bl DisplaySprite
	ldr r0, _0808A8FC @ =gCamera
	ldrh r1, [r0, #2]
	ldr r5, [sp]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	adds r0, #0x18
	mov r7, r8
	strh r0, [r7, #0x18]
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, r8
	bl DisplaySprite
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, sb
	bl DisplaySprite
_0808A8EA:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808A8FC: .4byte gCamera

	thumb_func_start CreateEntity_Lift
CreateEntity_Lift: @ 0x0808A900
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	mov sb, r1
	mov sl, r2
	mov r0, sb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r1, sl
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #4]
	ldr r0, _0808AA24 @ =sub_808AA60
	ldr r1, _0808AA28 @ =TaskDestructor_808B254
	str r1, [sp]
	movs r1, #0xa4
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldr r2, _0808AA2C @ =0x0300000C
	adds r6, r4, r2
	ldr r1, _0808AA30 @ =0x0300003C
	adds r1, r1, r4
	mov r8, r1
	movs r5, #0
	mov r2, sb
	strh r2, [r0, #4]
	mov r1, sl
	strh r1, [r0, #6]
	str r7, [r0]
	ldrb r1, [r7]
	strb r1, [r0, #8]
	mov r2, sp
	ldrb r2, [r2, #4]
	strb r2, [r0, #9]
	ldr r1, _0808AA34 @ =0x0300009C
	adds r0, r4, r1
	strh r5, [r0]
	ldr r2, _0808AA38 @ =0x0300009E
	adds r0, r4, r2
	strh r5, [r0]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	movs r0, #9
	bl VramMalloc
	str r0, [r6, #4]
	ldr r7, _0808AA3C @ =0x00000221
	strh r7, [r6, #0xa]
	ldr r2, _0808AA40 @ =0x0300002C
	adds r1, r4, r2
	movs r0, #1
	strb r0, [r1]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r6, #0x1a]
	strh r5, [r6, #8]
	strh r5, [r6, #0x14]
	strh r5, [r6, #0x1c]
	ldr r0, _0808AA44 @ =0x0300002D
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _0808AA48 @ =0x0300002E
	adds r0, r4, r1
	movs r2, #0x10
	mov sl, r2
	mov r1, sl
	strb r1, [r0]
	ldr r2, _0808AA4C @ =0x03000031
	adds r0, r4, r2
	movs r1, #0
	strb r1, [r0]
	movs r2, #1
	rsbs r2, r2, #0
	mov sb, r2
	str r2, [r6, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r6, #0x10]
	movs r0, #4
	bl VramMalloc
	mov r1, r8
	str r0, [r1, #4]
	strh r7, [r1, #0xa]
	ldr r2, _0808AA50 @ =0x0300005C
	adds r0, r4, r2
	movs r1, #0
	strb r1, [r0]
	movs r0, #0x88
	lsls r0, r0, #3
	mov r2, r8
	strh r0, [r2, #0x1a]
	strh r5, [r2, #8]
	strh r5, [r2, #0x14]
	strh r5, [r2, #0x1c]
	ldr r0, _0808AA54 @ =0x0300005D
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _0808AA58 @ =0x0300005E
	adds r0, r4, r1
	mov r2, sl
	strb r2, [r0]
	ldr r0, _0808AA5C @ =0x03000061
	adds r4, r4, r0
	movs r1, #0
	strb r1, [r4]
	mov r2, sb
	mov r0, r8
	str r2, [r0, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r0, #0x10]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	mov r0, r8
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
_0808AA24: .4byte sub_808AA60
_0808AA28: .4byte TaskDestructor_808B254
_0808AA2C: .4byte 0x0300000C
_0808AA30: .4byte 0x0300003C
_0808AA34: .4byte 0x0300009C
_0808AA38: .4byte 0x0300009E
_0808AA3C: .4byte 0x00000221
_0808AA40: .4byte 0x0300002C
_0808AA44: .4byte 0x0300002D
_0808AA48: .4byte 0x0300002E
_0808AA4C: .4byte 0x03000031
_0808AA50: .4byte 0x0300005C
_0808AA54: .4byte 0x0300005D
_0808AA58: .4byte 0x0300005E
_0808AA5C: .4byte 0x03000061

	thumb_func_start sub_808AA60
sub_808AA60: @ 0x0808AA60
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	movs r0, #0
	mov sb, r0
	ldr r0, _0808AAE0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r2, [r7]
	str r2, [sp, #8]
	ldr r3, _0808AAE4 @ =0x0300000C
	adds r3, r3, r1
	mov r8, r3
	ldr r5, _0808AAE8 @ =0x0300003C
	adds r5, r5, r1
	mov sl, r5
	ldrb r0, [r7, #8]
	lsls r0, r0, #3
	ldrh r1, [r7, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _0808AAEC @ =gCamera
	ldrh r0, [r3]
	ldr r2, [sp]
	lsls r4, r2, #0x10
	asrs r2, r4, #0x10
	subs r0, r2, r0
	mov r5, r8
	strh r0, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsrs r5, r1, #0x10
	str r5, [sp, #4]
	asrs r1, r1, #0x10
	subs r0, r1, r0
	mov r5, r8
	strh r0, [r5, #0x18]
	ldrh r0, [r3]
	subs r2, r2, r0
	mov r0, sl
	strh r2, [r0, #0x16]
	ldrh r0, [r3, #2]
	subs r1, r1, r0
	subs r1, #0x10
	mov r2, sl
	strh r1, [r2, #0x18]
	movs r6, #0
	str r4, [sp, #0xc]
	b _0808AB00
	.align 2, 0
_0808AAE0: .4byte gCurTask
_0808AAE4: .4byte 0x0300000C
_0808AAE8: .4byte 0x0300003C
_0808AAEC: .4byte gCamera
_0808AAF0:
	movs r3, #1
	add sb, r3
	ldr r0, _0808ABDC @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp sb, r0
	bge _0808AB70
_0808AB00:
	ldr r5, _0808ABE0 @ =gPlayer
	mov r0, sb
	cmp r0, #0
	beq _0808AB0A
	ldr r5, _0808ABE4 @ =gPartner
_0808AB0A:
	ldr r1, [sp, #4]
	lsls r4, r1, #0x10
	mov r0, r8
	ldr r2, [sp, #0xc]
	asrs r1, r2, #0x10
	asrs r2, r4, #0x10
	adds r3, r5, #0
	bl sa2__sub_800DF38
	ldr r3, [sp]
	lsls r3, r3, #0x10
	str r3, [sp, #0x10]
	cmp r0, #0
	beq _0808AAF0
	adds r0, r7, #0
	adds r0, #0x9c
	strh r6, [r0]
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r7, #0
	adds r0, #0xa0
	strb r1, [r0]
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r5, #0x10]
	strh r6, [r5, #8]
	strh r6, [r5, #0xc]
	strh r6, [r5, #0xa]
	adds r0, r5, #0
	bl Player_TransitionCancelFlyingAndBoost
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0x26
	strb r0, [r1]
	movs r0, #0xb5
	bl m4aSongNumStart
	adds r2, r5, #0
	adds r2, #0x26
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0808ABE8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808ABEC @ =sub_808AC48
	str r0, [r1, #8]
_0808AB70:
	ldr r5, [sp, #0x10]
	asrs r2, r5, #0x10
	ldr r3, _0808ABF0 @ =gCamera
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r5, #0xb8
	lsls r5, r5, #1
	adds r0, r1, r5
	cmp r2, r0
	bgt _0808ABA4
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _0808ABA4
	asrs r2, r4, #0x10
	movs r0, #2
	ldrsh r1, [r3, r0]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r2, r0
	bgt _0808ABA4
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _0808ABF4
_0808ABA4:
	mov r5, r8
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0808ABCA
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0808ABCA
	movs r2, #0x18
	ldrsh r1, [r5, r2]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808ABF4
_0808ABCA:
	ldrb r0, [r7, #8]
	ldr r3, [sp, #8]
	strb r0, [r3]
	ldr r0, _0808ABE8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0808AC34
	.align 2, 0
_0808ABDC: .4byte gNumSingleplayerCharacters
_0808ABE0: .4byte gPlayer
_0808ABE4: .4byte gPartner
_0808ABE8: .4byte gCurTask
_0808ABEC: .4byte sub_808AC48
_0808ABF0: .4byte gCamera
_0808ABF4:
	mov r0, r8
	bl DisplaySprite
	mov r0, sl
	bl DisplaySprite
	ldr r5, _0808AC44 @ =gCamera
	ldrh r0, [r5, #2]
	asrs r4, r4, #0x10
	subs r0, r4, r0
	subs r0, #0x30
	mov r1, sl
	strh r0, [r1, #0x18]
	mov r0, sl
	bl DisplaySprite
	ldrh r0, [r5, #2]
	subs r0, r4, r0
	subs r0, #0x50
	mov r2, sl
	strh r0, [r2, #0x18]
	mov r0, sl
	bl DisplaySprite
	ldrh r0, [r5, #2]
	subs r4, r4, r0
	subs r4, #0x70
	mov r3, sl
	strh r4, [r3, #0x18]
	mov r0, sl
	bl DisplaySprite
_0808AC34:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808AC44: .4byte gCamera

	thumb_func_start sub_808AC48
sub_808AC48: @ 0x0808AC48
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _0808AD08 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r4
	mov r8, r0
	ldr r0, [r0]
	str r0, [sp, #4]
	ldr r1, _0808AD0C @ =0x0300000C
	adds r5, r4, r1
	ldr r2, _0808AD10 @ =0x0300003C
	adds r7, r4, r2
	mov r3, r8
	ldrb r0, [r3, #8]
	lsls r0, r0, #3
	ldrh r1, [r3, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r6, [sp, #4]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	ldrh r1, [r3, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r1, _0808AD14 @ =0x0300009C
	adds r0, r4, r1
	ldrh r1, [r0]
	movs r0, #0x40
	subs r0, r0, r1
	lsls r0, r0, #7
	movs r1, #0x40
	bl Div
	movs r2, #0x80
	subs r2, r2, r0
	lsls r2, r2, #0x10
	ldr r3, _0808AD18 @ =gCamera
	ldrh r0, [r3]
	mov r6, sl
	lsls r1, r6, #0x10
	asrs r6, r1, #0x10
	subs r0, r6, r0
	strh r0, [r5, #0x16]
	mov r0, sb
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldrh r0, [r3, #2]
	subs r0, r1, r0
	mov ip, r0
	lsrs r0, r2, #0x10
	str r0, [sp]
	asrs r2, r2, #0x10
	mov r0, ip
	subs r0, r0, r2
	strh r0, [r5, #0x18]
	ldrh r0, [r3]
	subs r0, r6, r0
	strh r0, [r7, #0x16]
	ldrh r0, [r3, #2]
	subs r1, r1, r0
	subs r1, r1, r2
	subs r1, #0x10
	strh r1, [r7, #0x18]
	ldr r1, _0808AD1C @ =0x030000A0
	adds r4, r4, r1
	movs r0, #0
	ldrsb r0, [r4, r0]
	ldr r2, _0808AD20 @ =gPlayer
	cmp r0, #0
	beq _0808ACF0
	ldr r2, _0808AD24 @ =gPartner
_0808ACF0:
	ldr r1, [r2, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0808AD46
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _0808AD28
	subs r0, r6, #3
	b _0808AD2C
	.align 2, 0
_0808AD08: .4byte gCurTask
_0808AD0C: .4byte 0x0300000C
_0808AD10: .4byte 0x0300003C
_0808AD14: .4byte 0x0300009C
_0808AD18: .4byte gCamera
_0808AD1C: .4byte 0x030000A0
_0808AD20: .4byte gPlayer
_0808AD24: .4byte gPartner
_0808AD28:
	adds r0, r6, #0
	adds r0, #8
_0808AD2C:
	lsls r0, r0, #8
	str r0, [r2]
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldr r4, [sp]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	adds r0, #0x1a
	lsls r0, r0, #8
	str r0, [r2, #4]
	b _0808AD58
_0808AD46:
	ldr r0, _0808ADEC @ =0xFFBFFFFF
	ands r1, r0
	str r1, [r2, #0x10]
	ldr r1, _0808ADF0 @ =gPlayer
	adds r1, #0x26
	ldrb r2, [r1]
	movs r0, #0x7f
	ands r0, r2
	strb r0, [r1]
_0808AD58:
	mov r1, r8
	adds r1, #0x9c
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x40
	bls _0808AD7C
	movs r0, #0
	strh r0, [r1]
	movs r0, #0xb5
	bl m4aSongNumStop
	ldr r0, _0808ADF4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808ADF8 @ =sub_808AE60
	str r0, [r1, #8]
_0808AD7C:
	mov r6, sl
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	ldr r3, _0808ADFC @ =gCamera
	movs r0, #0
	ldrsh r2, [r3, r0]
	movs r4, #0xb8
	lsls r4, r4, #1
	adds r0, r2, r4
	cmp r1, r0
	bgt _0808ADB6
	adds r0, r2, #0
	subs r0, #0x80
	cmp r1, r0
	blt _0808ADB6
	mov r6, sb
	lsls r0, r6, #0x10
	asrs r2, r0, #0x10
	movs r0, #2
	ldrsh r1, [r3, r0]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r2, r0
	bgt _0808ADB6
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _0808AE00
_0808ADB6:
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0808ADDA
	movs r4, #0x18
	ldrsh r0, [r5, r4]
	adds r0, #0x80
	cmp r0, #0
	blt _0808ADDA
	movs r6, #0x18
	ldrsh r1, [r5, r6]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808AE00
_0808ADDA:
	mov r1, r8
	ldrb r0, [r1, #8]
	ldr r2, [sp, #4]
	strb r0, [r2]
	ldr r0, _0808ADF4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0808AE4A
	.align 2, 0
_0808ADEC: .4byte 0xFFBFFFFF
_0808ADF0: .4byte gPlayer
_0808ADF4: .4byte gCurTask
_0808ADF8: .4byte sub_808AE60
_0808ADFC: .4byte gCamera
_0808AE00:
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r7, #0
	bl DisplaySprite
	ldr r6, _0808AE5C @ =gCamera
	ldrh r0, [r6, #2]
	mov r3, sb
	lsls r4, r3, #0x10
	asrs r4, r4, #0x10
	subs r0, r4, r0
	ldr r1, [sp]
	lsls r5, r1, #0x10
	asrs r5, r5, #0x10
	subs r0, r0, r5
	subs r0, #0x30
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
	ldrh r0, [r6, #2]
	subs r0, r4, r0
	subs r0, r0, r5
	subs r0, #0x50
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
	ldrh r0, [r6, #2]
	subs r4, r4, r0
	subs r4, r4, r5
	subs r4, #0x70
	strh r4, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
_0808AE4A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808AE5C: .4byte gCamera

	thumb_func_start sub_808AE60
sub_808AE60: @ 0x0808AE60
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0808AF28 @ =gCurTask
	mov ip, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r4, [r7]
	ldr r5, _0808AF2C @ =0x0300000C
	adds r3, r1, r5
	adds r0, #0x3c
	adds r0, r0, r1
	mov r8, r0
	ldrb r2, [r7, #8]
	lsls r2, r2, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r4, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r6, _0808AF30 @ =gCamera
	ldrh r0, [r6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r3, #0x16]
	ldrh r0, [r6, #2]
	lsrs r5, r1, #0x10
	mov sb, r5
	asrs r1, r1, #0x10
	subs r0, r1, r0
	subs r0, #0x80
	strh r0, [r3, #0x18]
	ldrh r0, [r6]
	subs r0, r2, r0
	mov r5, r8
	strh r0, [r5, #0x16]
	ldrh r0, [r6, #2]
	subs r0, r1, r0
	subs r0, #0x90
	strh r0, [r5, #0x18]
	movs r5, #0
	ldrsh r0, [r6, r5]
	mov sl, r0
	movs r0, #0xb8
	lsls r0, r0, #1
	add r0, sl
	cmp r2, r0
	bgt _0808AEF4
	mov r0, sl
	subs r0, #0x80
	cmp r2, r0
	blt _0808AEF4
	movs r0, #2
	ldrsh r2, [r6, r0]
	movs r5, #0x90
	lsls r5, r5, #1
	adds r0, r2, r5
	cmp r1, r0
	bgt _0808AEF4
	adds r0, r2, #0
	subs r0, #0x80
	cmp r1, r0
	bge _0808AF34
_0808AEF4:
	ldrh r0, [r3, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0808AF18
	movs r1, #0x18
	ldrsh r0, [r3, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0808AF18
	movs r5, #0x18
	ldrsh r1, [r3, r5]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808AF34
_0808AF18:
	ldrb r0, [r7, #8]
	strb r0, [r4]
	mov r1, ip
	ldr r0, [r1]
	bl TaskDestroy
	b _0808B046
	.align 2, 0
_0808AF28: .4byte gCurTask
_0808AF2C: .4byte 0x0300000C
_0808AF30: .4byte gCamera
_0808AF34:
	adds r0, r7, #0
	adds r0, #0xa0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r2, _0808AFAC @ =gPlayer
	adds r4, r2, #0
	cmp r0, #0
	beq _0808AF48
	ldr r4, _0808AFB0 @ =gPartner
_0808AF48:
	ldr r5, [r4, #0x10]
	movs r6, #0x80
	ands r6, r5
	cmp r6, #0
	bne _0808AFDA
	ldr r0, _0808AFB4 @ =gUnknown_030060E0
	ldrh r1, [r4, #0x3a]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _0808B002
	ldr r0, _0808AFB8 @ =0xFFBFFFFF
	ands r5, r0
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r5, r0
	str r5, [r4, #0x10]
	strh r6, [r4, #8]
	strh r6, [r4, #0xc]
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r4, #0xa]
	adds r0, r4, #0
	str r3, [sp]
	bl Player_TransitionCancelFlyingAndBoost
	adds r0, r7, #0
	adds r0, #0x9c
	strh r6, [r0]
	adds r1, r7, #0
	adds r1, #0x9e
	movs r0, #0x3c
	strh r0, [r1]
	ldr r0, _0808AFBC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808AFC0 @ =sub_808B064
	str r0, [r1, #8]
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r3, [sp]
	cmp r0, #3
	beq _0808AFC4
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #5
	b _0808AFCA
	.align 2, 0
_0808AFAC: .4byte gPlayer
_0808AFB0: .4byte gPartner
_0808AFB4: .4byte gUnknown_030060E0
_0808AFB8: .4byte 0xFFBFFFFF
_0808AFBC: .4byte gCurTask
_0808AFC0: .4byte sub_808B064
_0808AFC4:
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x55
_0808AFCA:
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x26
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	b _0808B002
_0808AFDA:
	ldr r0, _0808B058 @ =0xFFBFFFFF
	ands r5, r0
	str r5, [r4, #0x10]
	adds r2, #0x26
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	movs r1, #0
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x9c
	strh r1, [r0]
	adds r1, r7, #0
	adds r1, #0x9e
	movs r0, #0x3c
	strh r0, [r1]
	mov r5, ip
	ldr r1, [r5]
	ldr r0, _0808B05C @ =sub_808B064
	str r0, [r1, #8]
_0808B002:
	adds r0, r3, #0
	bl DisplaySprite
	mov r0, r8
	bl DisplaySprite
	ldr r5, _0808B060 @ =gCamera
	ldrh r0, [r5, #2]
	mov r1, sb
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	subs r0, r4, r0
	subs r0, #0xa0
	mov r1, r8
	strh r0, [r1, #0x18]
	mov r0, r8
	bl DisplaySprite
	ldrh r0, [r5, #2]
	subs r0, r4, r0
	subs r0, #0xb0
	mov r1, r8
	strh r0, [r1, #0x18]
	mov r0, r8
	bl DisplaySprite
	ldrh r0, [r5, #2]
	subs r4, r4, r0
	subs r4, #0xc0
	mov r5, r8
	strh r4, [r5, #0x18]
	mov r0, r8
	bl DisplaySprite
_0808B046:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808B058: .4byte 0xFFBFFFFF
_0808B05C: .4byte sub_808B064
_0808B060: .4byte gCamera

	thumb_func_start sub_808B064
sub_808B064: @ 0x0808B064
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r1, _0808B114 @ =gCurTask
	ldr r0, [r1]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r5
	mov sb, r0
	ldr r2, [r0]
	str r2, [sp, #8]
	ldr r3, _0808B118 @ =0x0300000C
	adds r3, r3, r5
	mov r8, r3
	ldr r0, _0808B11C @ =0x0300003C
	adds r7, r5, r0
	mov r1, sb
	ldrb r0, [r1, #8]
	lsls r0, r0, #3
	ldrh r1, [r1, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	mov r2, sb
	ldrh r1, [r2, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r3, _0808B120 @ =0x0300009C
	adds r6, r5, r3
	ldrh r1, [r6]
	movs r0, #0x1e
	subs r0, r0, r1
	lsls r0, r0, #7
	movs r1, #0x1e
	bl Div
	lsls r0, r0, #0x10
	ldr r4, _0808B124 @ =gCamera
	ldrh r1, [r4]
	ldr r2, [sp]
	lsls r3, r2, #0x10
	asrs r3, r3, #0x10
	str r3, [sp, #0xc]
	subs r1, r3, r1
	mov r3, r8
	strh r1, [r3, #0x16]
	ldrh r1, [r4, #2]
	mov ip, r1
	mov r2, sl
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	mov r3, ip
	subs r3, r1, r3
	lsrs r2, r0, #0x10
	str r2, [sp, #4]
	asrs r0, r0, #0x10
	subs r3, r3, r0
	mov r2, r8
	strh r3, [r2, #0x18]
	ldrh r2, [r4]
	ldr r3, [sp, #0xc]
	subs r2, r3, r2
	strh r2, [r7, #0x16]
	ldrh r2, [r4, #2]
	subs r1, r1, r2
	subs r1, r1, r0
	subs r1, #0x10
	strh r1, [r7, #0x18]
	ldr r0, _0808B128 @ =0x0300009E
	adds r1, r5, r0
	ldrh r0, [r1]
	adds r2, r0, #0
	cmp r2, #0
	beq _0808B12C
	subs r0, #1
	strh r0, [r1]
	b _0808B14C
	.align 2, 0
_0808B114: .4byte gCurTask
_0808B118: .4byte 0x0300000C
_0808B11C: .4byte 0x0300003C
_0808B120: .4byte 0x0300009C
_0808B124: .4byte gCamera
_0808B128: .4byte 0x0300009E
_0808B12C:
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1e
	bls _0808B14C
	strh r2, [r6]
	ldr r2, _0808B1C0 @ =0x030000A0
	adds r1, r5, r2
	movs r0, #0
	strb r0, [r1]
	ldr r3, _0808B1C4 @ =gCurTask
	ldr r1, [r3]
	ldr r0, _0808B1C8 @ =sub_808AA60
	str r0, [r1, #8]
_0808B14C:
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r3, r0, #0x10
	ldr r4, _0808B1CC @ =gCamera
	movs r2, #0
	ldrsh r1, [r4, r2]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r3, r0
	bgt _0808B186
	adds r0, r1, #0
	subs r0, #0x80
	cmp r3, r0
	blt _0808B186
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	movs r0, #2
	ldrsh r1, [r4, r0]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r2, r0
	bgt _0808B186
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _0808B1D0
_0808B186:
	mov r1, r8
	ldrh r0, [r1, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0808B1AE
	mov r2, r8
	movs r3, #0x18
	ldrsh r0, [r2, r3]
	adds r0, #0x80
	cmp r0, #0
	blt _0808B1AE
	movs r0, #0x18
	ldrsh r1, [r2, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808B1D0
_0808B1AE:
	mov r1, sb
	ldrb r0, [r1, #8]
	ldr r2, [sp, #8]
	strb r0, [r2]
	ldr r0, _0808B1C4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0808B21A
	.align 2, 0
_0808B1C0: .4byte 0x030000A0
_0808B1C4: .4byte gCurTask
_0808B1C8: .4byte sub_808AA60
_0808B1CC: .4byte gCamera
_0808B1D0:
	mov r0, r8
	bl DisplaySprite
	adds r0, r7, #0
	bl DisplaySprite
	ldr r6, _0808B22C @ =gCamera
	ldrh r0, [r6, #2]
	mov r3, sl
	lsls r4, r3, #0x10
	asrs r4, r4, #0x10
	subs r0, r4, r0
	ldr r1, [sp, #4]
	lsls r5, r1, #0x10
	asrs r5, r5, #0x10
	subs r0, r0, r5
	subs r0, #0x30
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
	ldrh r0, [r6, #2]
	subs r0, r4, r0
	subs r0, r0, r5
	subs r0, #0x50
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
	ldrh r0, [r6, #2]
	subs r4, r4, r0
	subs r4, r4, r5
	subs r4, #0x70
	strh r4, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
_0808B21A:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808B22C: .4byte gCamera

	thumb_func_start TaskDestructor_CraneClaw
TaskDestructor_CraneClaw: @ 0x0808B230
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x10]
	bl VramFree
	ldr r0, [r4, #0x40]
	bl VramFree
	ldr r0, [r4, #0x70]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start TaskDestructor_808B254
TaskDestructor_808B254: @ 0x0808B254
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x10]
	bl VramFree
	ldr r0, [r4, #0x40]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0
