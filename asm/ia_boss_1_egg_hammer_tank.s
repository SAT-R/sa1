.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_EggHammerTank_Intro
CreateEntity_EggHammerTank_Intro: @ 0x080259F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #4]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	ldr r0, _08025A24 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _08025A28
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	b _08025B82
	.align 2, 0
_08025A24: .4byte gGameMode
_08025A28:
	ldr r0, _08025B94 @ =sub_8025BE0
	ldr r1, _08025B98 @ =TaskDestructor_EggHammerTank
	str r1, [sp]
	movs r1, #0xa0
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldr r3, _08025B9C @ =0x0300000C
	adds r7, r4, r3
	movs r5, #0
	movs r2, #0
	mov r1, sb
	strh r1, [r0, #4]
	mov r3, sp
	ldrh r3, [r3, #4]
	strh r3, [r0, #6]
	str r6, [r0]
	ldrb r1, [r6]
	strb r1, [r0, #8]
	mov r1, r8
	strb r1, [r0, #9]
	ldr r3, _08025BA0 @ =0x03000094
	adds r0, r4, r3
	strh r2, [r0]
	ldr r1, _08025BA4 @ =0x03000098
	adds r0, r4, r1
	strh r2, [r0]
	adds r3, #6
	adds r0, r4, r3
	strb r5, [r0]
	ldr r0, _08025BA8 @ =0x03000096
	adds r1, r4, r0
	ldr r0, _08025BAC @ =0x0000FFFC
	strh r0, [r1]
	ldr r1, _08025BB0 @ =0x0300009B
	adds r0, r4, r1
	strb r5, [r0]
	subs r3, #0xe
	adds r0, r4, r3
	str r2, [r0]
	adds r1, #1
	adds r0, r4, r1
	strb r5, [r0]
	ldrb r0, [r6]
	lsls r0, r0, #3
	mov r3, sb
	lsls r3, r3, #8
	mov r8, r3
	add r0, r8
	strh r0, [r7, #0x16]
	movs r0, #0x1e
	str r2, [sp, #8]
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0x98
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	ldr r2, [sp, #8]
	strh r2, [r7, #8]
	ldr r0, _08025BB4 @ =0x000002B5
	strh r0, [r7, #0xa]
	ldr r1, _08025BB8 @ =0x0300002C
	adds r0, r4, r1
	strb r5, [r0]
	strh r2, [r7, #0x14]
	strh r2, [r7, #0x1c]
	ldr r3, _08025BBC @ =0x0300002D
	adds r1, r4, r3
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08025BC0 @ =0x0300002E
	adds r0, r4, r1
	movs r3, #0x10
	mov sb, r3
	mov r1, sb
	strb r1, [r0]
	ldr r3, _08025BC4 @ =0x03000031
	adds r0, r4, r3
	strb r5, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	mov sl, r0
	str r0, [r7, #0x28]
	str r0, [r7, #0x30]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r7, #0x10]
	adds r3, #0x13
	adds r7, r4, r3
	ldrb r0, [r6]
	lsls r0, r0, #3
	add r0, r8
	strh r0, [r7, #0x16]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	ldr r3, [sp, #4]
	lsls r1, r3, #8
	adds r0, r0, r1
	strh r0, [r7, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	movs r0, #0xc
	str r2, [sp, #8]
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	ldr r2, [sp, #8]
	strh r2, [r7, #8]
	ldr r0, _08025BC8 @ =0x000002B6
	strh r0, [r7, #0xa]
	ldr r3, _08025BCC @ =0x03000064
	adds r0, r4, r3
	strb r5, [r0]
	strh r2, [r7, #0x14]
	strh r2, [r7, #0x1c]
	ldr r0, _08025BD0 @ =0x03000065
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08025BD4 @ =0x03000066
	adds r0, r4, r1
	mov r3, sb
	strb r3, [r0]
	ldr r0, _08025BD8 @ =0x03000069
	adds r4, r4, r0
	strb r5, [r4]
	mov r1, sl
	str r1, [r7, #0x28]
	movs r3, #0x80
	lsls r3, r3, #6
	str r3, [r7, #0x10]
	ldr r5, _08025BDC @ =gCamera
	ldrh r0, [r7, #0x16]
	subs r0, #0xf0
	strh r0, [r5, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08025B58
	strh r2, [r5, #0x18]
_08025B58:
	ldrh r0, [r7, #0x16]
	adds r0, #0x40
	strh r0, [r5, #0x1a]
	ldrh r0, [r7, #0x18]
	adds r4, r0, #0
	adds r4, #0x70
	lsls r4, r4, #0x10
	subs r0, #0x30
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsrs r6, r4, #0x10
	asrs r4, r4, #0x10
	adds r1, r4, #0
	bl sub_80174DC
	movs r1, #2
	ldrsh r0, [r5, r1]
	adds r0, #0xa0
	cmp r4, r0
	ble _08025B82
	strh r6, [r5, #0x16]
_08025B82:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025B94: .4byte sub_8025BE0
_08025B98: .4byte TaskDestructor_EggHammerTank
_08025B9C: .4byte 0x0300000C
_08025BA0: .4byte 0x03000094
_08025BA4: .4byte 0x03000098
_08025BA8: .4byte 0x03000096
_08025BAC: .4byte 0x0000FFFC
_08025BB0: .4byte 0x0300009B
_08025BB4: .4byte 0x000002B5
_08025BB8: .4byte 0x0300002C
_08025BBC: .4byte 0x0300002D
_08025BC0: .4byte 0x0300002E
_08025BC4: .4byte 0x03000031
_08025BC8: .4byte 0x000002B6
_08025BCC: .4byte 0x03000064
_08025BD0: .4byte 0x03000065
_08025BD4: .4byte 0x03000066
_08025BD8: .4byte 0x03000069
_08025BDC: .4byte gCamera

	thumb_func_start sub_8025BE0
sub_8025BE0: @ 0x08025BE0
	push {r4, r5, r6, r7, lr}
	ldr r0, _08025C54 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r0, r3
	ldr r1, _08025C58 @ =0x0300000C
	adds r4, r0, r1
	ldr r2, _08025C5C @ =0x03000044
	adds r6, r0, r2
	ldr r1, [r3]
	ldrb r2, [r3, #8]
	lsls r2, r2, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r5, _08025C60 @ =gCamera
	ldrh r0, [r5]
	lsrs r7, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r4, #0x16]
	ldrh r0, [r5, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r4, #0x18]
	strh r2, [r6, #0x16]
	ldrh r0, [r4, #0x18]
	strh r0, [r6, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r6, #0
	bl DisplaySprite
	movs r0, #0
	ldrsh r1, [r5, r0]
	movs r2, #0x1a
	ldrsh r0, [r5, r2]
	subs r0, #0xf0
	cmp r1, r0
	bge _08025C64
	ldrh r0, [r5]
	b _08025C68
	.align 2, 0
_08025C54: .4byte gCurTask
_08025C58: .4byte 0x0300000C
_08025C5C: .4byte 0x03000044
_08025C60: .4byte gCamera
_08025C64:
	ldrh r0, [r5, #0x1a]
	subs r0, #0xf0
_08025C68:
	strh r0, [r5, #0x18]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	ldr r1, _08025CAC @ =gCamera
	movs r2, #0
	ldrsh r1, [r1, r2]
	subs r0, r0, r1
	cmp r0, #0xb0
	bgt _08025CA6
	ldr r2, _08025CB0 @ =gPlayer
	movs r3, #0
	strh r3, [r2, #0xc]
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r2, #0x10]
	strh r3, [r2, #0x38]
	ldr r0, _08025CB4 @ =0x000002B6
	strh r0, [r6, #0xa]
	adds r1, r6, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08025CB8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08025CBC @ =sub_8025CC4
	str r0, [r1, #8]
	ldr r1, _08025CC0 @ =gMusicManagerState
	movs r0, #0x11
	strb r0, [r1, #1]
_08025CA6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025CAC: .4byte gCamera
_08025CB0: .4byte gPlayer
_08025CB4: .4byte 0x000002B6
_08025CB8: .4byte gCurTask
_08025CBC: .4byte sub_8025CC4
_08025CC0: .4byte gMusicManagerState

	thumb_func_start sub_8025CC4
sub_8025CC4: @ 0x08025CC4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08025D5C @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r7, r3
	ldr r1, _08025D60 @ =0x0300000C
	adds r5, r7, r1
	ldr r0, _08025D64 @ =0x03000044
	adds r6, r7, r0
	ldr r1, [r3]
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
	ldr r3, _08025D68 @ =gCamera
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0x18]
	strh r2, [r6, #0x16]
	ldrh r0, [r5, #0x18]
	strh r0, [r6, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r4, r0, #0
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r6, #0
	bl DisplaySprite
	cmp r4, #0
	bne _08025D50
	ldr r0, _08025D6C @ =0x000002B5
	strh r0, [r5, #0xa]
	ldr r0, _08025D70 @ =0x0300002C
	adds r1, r7, r0
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08025D74 @ =0x000002B6
	strh r0, [r6, #0xa]
	ldr r0, _08025D78 @ =0x03000064
	adds r1, r7, r0
	movs r0, #9
	strb r0, [r1]
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _08025D7C @ =sub_8025D80
	str r0, [r1, #8]
_08025D50:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025D5C: .4byte gCurTask
_08025D60: .4byte 0x0300000C
_08025D64: .4byte 0x03000044
_08025D68: .4byte gCamera
_08025D6C: .4byte 0x000002B5
_08025D70: .4byte 0x0300002C
_08025D74: .4byte 0x000002B6
_08025D78: .4byte 0x03000064
_08025D7C: .4byte sub_8025D80

	thumb_func_start sub_8025D80
sub_8025D80: @ 0x08025D80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08025E48 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r3, #0xc0
	lsls r3, r3, #0x12
	add r3, r8
	ldr r5, _08025E4C @ =0x0300000C
	add r5, r8
	ldr r6, _08025E50 @ =0x03000044
	add r6, r8
	ldr r2, [r3]
	ldrb r1, [r3, #8]
	lsls r1, r1, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r2, #1]
	lsls r2, r2, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _08025E54 @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	movs r0, #0
	mov sb, r0
	strh r1, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r7, r2, #0x10
	subs r0, r7, r0
	strh r0, [r5, #0x18]
	strh r1, [r6, #0x16]
	ldrh r0, [r5, #0x18]
	strh r0, [r6, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r4, r0, #0
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r6, #0
	bl DisplaySprite
	cmp r4, #0
	bne _08025E3A
	mov r2, sl
	ldr r1, [r2]
	ldr r0, _08025E58 @ =sub_8025E6C
	str r0, [r1, #8]
	ldr r0, _08025E5C @ =0x000002B5
	strh r0, [r5, #0xa]
	ldr r0, _08025E60 @ =0x0300002C
	add r0, r8
	mov r1, sb
	strb r1, [r0]
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5, #0x10]
	ldr r0, _08025E64 @ =0x000002B6
	strh r0, [r6, #0xa]
	ldr r0, _08025E68 @ =0x03000064
	add r0, r8
	mov r2, sb
	strb r2, [r0]
	ldr r0, [r6, #0x10]
	orrs r0, r1
	str r0, [r6, #0x10]
	adds r0, r7, #0
	subs r0, #0x30
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, #0
	adds r1, #0x70
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_80174DC
_08025E3A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025E48: .4byte gCurTask
_08025E4C: .4byte 0x0300000C
_08025E50: .4byte 0x03000044
_08025E54: .4byte gCamera
_08025E58: .4byte sub_8025E6C
_08025E5C: .4byte 0x000002B5
_08025E60: .4byte 0x0300002C
_08025E64: .4byte 0x000002B6
_08025E68: .4byte 0x03000064

	thumb_func_start sub_8025E6C
sub_8025E6C: @ 0x08025E6C
	push {r4, r5, r6, r7, lr}
	ldr r0, _08025EFC @ =gCurTask
	ldr r7, [r0]
	ldrh r0, [r7, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r0, r3
	ldr r1, _08025F00 @ =0x0300000C
	adds r5, r0, r1
	ldr r2, _08025F04 @ =0x03000044
	adds r6, r0, r2
	ldr r4, [r3]
	adds r1, #0x80
	adds r0, r0, r1
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r1, r2
	str r1, [r0]
	ldrb r2, [r3, #8]
	lsls r2, r2, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	asrs r1, r1, #8
	adds r2, r2, r1
	ldrb r1, [r4, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r4, _08025F08 @ =gCamera
	ldrh r0, [r4]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r5, #0x16]
	ldrh r0, [r4, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0x18]
	strh r2, [r6, #0x16]
	ldrh r0, [r5, #0x18]
	strh r0, [r6, #0x18]
	movs r0, #0x16
	ldrsh r1, [r5, r0]
	movs r0, #0x98
	lsls r0, r0, #1
	cmp r1, r0
	ble _08025F1C
	ldr r2, _08025F0C @ =gPlayer
	ldr r0, [r2, #0x10]
	ldr r1, _08025F10 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r2, #0x10]
	ldr r1, _08025F14 @ =gUnknown_030060E0
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	orrs r0, r1
	ldrh r1, [r2, #0x38]
	orrs r0, r1
	strh r0, [r2, #0x38]
	adds r0, r7, #0
	bl TaskDestroy
	ldr r0, _08025F18 @ =gRefCollision
	ldr r0, [r0]
	ldrh r0, [r0, #0x1c]
	strh r0, [r4, #0x1a]
	b _08025F34
	.align 2, 0
_08025EFC: .4byte gCurTask
_08025F00: .4byte 0x0300000C
_08025F04: .4byte 0x03000044
_08025F08: .4byte gCamera
_08025F0C: .4byte gPlayer
_08025F10: .4byte 0xFFDFFFFF
_08025F14: .4byte gUnknown_030060E0
_08025F18: .4byte gRefCollision
_08025F1C:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r6, #0
	bl DisplaySprite
_08025F34:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateEntity_EggHammerTank
CreateEntity_EggHammerTank: @ 0x08025F3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #4]
	lsls r3, r3, #0x18
	lsrs r7, r3, #0x18
	ldr r0, _08025F6C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _08025F70
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r5]
	b _080260EE
	.align 2, 0
_08025F6C: .4byte gGameMode
_08025F70:
	ldr r0, _08025FDC @ =Task_EggHammerTankMain
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08025FE0 @ =TaskDestructor_EggHammerTank
	str r1, [sp]
	movs r1, #0xa0
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r3
	mov sl, r0
	movs r4, #0
	movs r2, #0
	strh r6, [r0, #4]
	mov r0, sp
	ldrh r1, [r0, #4]
	mov r0, sl
	strh r1, [r0, #6]
	str r5, [r0]
	ldrb r0, [r5]
	mov r1, sl
	strb r0, [r1, #8]
	strb r7, [r1, #9]
	ldr r1, _08025FE4 @ =0x03000094
	adds r0, r3, r1
	strh r2, [r0]
	adds r1, #4
	adds r0, r3, r1
	strh r2, [r0]
	ldr r0, _08025FE8 @ =0x03000096
	adds r1, r3, r0
	ldr r0, _08025FEC @ =0x0000FFFC
	strh r0, [r1]
	ldr r1, _08025FF0 @ =0x0300009B
	adds r0, r3, r1
	strb r4, [r0]
	subs r1, #0xf
	adds r0, r3, r1
	str r2, [r0]
	adds r1, #0x10
	adds r0, r3, r1
	strb r4, [r0]
	ldr r0, _08025FF4 @ =gLoadedSaveGame
	ldrb r0, [r0, #0x18]
	cmp r0, #0
	beq _08025FFC
	ldr r0, _08025FF8 @ =0x0300009A
	adds r1, r3, r0
	movs r0, #2
	strb r0, [r1]
	b _08026002
	.align 2, 0
_08025FDC: .4byte Task_EggHammerTankMain
_08025FE0: .4byte TaskDestructor_EggHammerTank
_08025FE4: .4byte 0x03000094
_08025FE8: .4byte 0x03000096
_08025FEC: .4byte 0x0000FFFC
_08025FF0: .4byte 0x0300009B
_08025FF4: .4byte gLoadedSaveGame
_08025FF8: .4byte 0x0300009A
_08025FFC:
	ldr r1, _08026100 @ =0x0300009A
	adds r0, r3, r1
	strb r4, [r0]
_08026002:
	mov r7, sl
	adds r7, #0xc
	ldrb r0, [r5]
	lsls r0, r0, #3
	lsls r6, r6, #8
	mov r8, r6
	add r0, r8
	movs r4, #0
	strh r0, [r7, #0x16]
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	ldr r1, [sp, #4]
	lsls r6, r1, #8
	adds r0, r0, r6
	strh r0, [r7, #0x18]
	movs r0, #0x46
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0x98
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	strh r4, [r7, #8]
	ldr r0, _08026104 @ =0x0000025F
	strh r0, [r7, #0xa]
	mov r1, sl
	adds r1, #0x2c
	movs r0, #1
	strb r0, [r1]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	mov r0, sl
	adds r0, #0x2e
	movs r1, #0x10
	strb r1, [r0]
	adds r0, #3
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	mov sb, r0
	str r0, [r7, #0x28]
	str r0, [r7, #0x30]
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	adds r0, r0, r6
	strh r0, [r7, #0x18]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r7, #0x10]
	adds r7, #0x38
	ldrb r0, [r5]
	lsls r0, r0, #3
	add r0, r8
	strh r0, [r7, #0x16]
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	adds r0, r0, r6
	strh r0, [r7, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r5]
	movs r0, #8
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	strh r4, [r7, #8]
	ldr r0, _08026108 @ =0x00000262
	strh r0, [r7, #0xa]
	mov r0, sl
	adds r0, #0x64
	movs r1, #0
	strb r1, [r0]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	mov r1, sl
	adds r1, #0x65
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	mov r0, sl
	adds r0, #0x66
	movs r1, #0x10
	strb r1, [r0]
	adds r0, #3
	movs r1, #0
	strb r1, [r0]
	mov r0, sb
	str r0, [r7, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r7, #0x10]
	ldr r4, _0802610C @ =gCamera
	ldr r0, _08026110 @ =0x0000FFC8
	strh r0, [r4, #0xe]
	ldrh r0, [r7, #0x16]
	subs r0, #0x40
	strh r0, [r4, #0x1a]
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	bl __floatsisf
	ldr r1, _08026114 @ =0x43B40000
	bl __subsf3
	bl __fixsfsi
	strh r0, [r4, #0x18]
	ldr r0, _08026118 @ =gMusicManagerState
	movs r1, #0x10
	strb r1, [r0, #1]
_080260EE:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026100: .4byte 0x0300009A
_08026104: .4byte 0x0000025F
_08026108: .4byte 0x00000262
_0802610C: .4byte gCamera
_08026110: .4byte 0x0000FFC8
_08026114: .4byte 0x43B40000
_08026118: .4byte gMusicManagerState

	thumb_func_start Task_802611C
Task_802611C: @ 0x0802611C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0802619C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r4
	mov sb, r0
	ldr r0, _080261A0 @ =0x0300000C
	adds r6, r4, r0
	ldr r1, _080261A4 @ =0x03000044
	adds r7, r4, r1
	mov r2, sb
	ldr r2, [r2]
	mov r8, r2
	ldr r3, _080261A8 @ =0x03000094
	adds r1, r4, r3
	adds r0, #0x8a
	adds r5, r4, r0
	ldrh r0, [r5]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	ldr r3, _080261AC @ =0x00000237
	adds r0, r0, r3
	lsls r0, r0, #0x10
	ldr r1, _080261B0 @ =0x026E0000
	cmp r0, r1
	bls _08026182
	movs r0, #0x91
	bl m4aSongNumStart
	ldrh r0, [r5]
	rsbs r0, r0, #0
	strh r0, [r5]
	movs r0, #0x80
	lsls r0, r0, #4
	movs r2, #0x80
	lsls r2, r2, #1
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x80
	str r1, [sp]
	movs r1, #0x40
	bl CreateScreenShake
_08026182:
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080261B8
	ldr r5, _080261B4 @ =0x0300008C
	adds r1, r4, r5
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	b _080261C2
	.align 2, 0
_0802619C: .4byte gCurTask
_080261A0: .4byte 0x0300000C
_080261A4: .4byte 0x03000044
_080261A8: .4byte 0x03000094
_080261AC: .4byte 0x00000237
_080261B0: .4byte 0x026E0000
_080261B4: .4byte 0x0300008C
_080261B8:
	ldr r3, _08026260 @ =0x0300008C
	adds r1, r4, r3
	ldr r0, [r1]
	ldr r5, _08026264 @ =0xFFFFFF00
	adds r0, r0, r5
_080261C2:
	str r0, [r1]
	mov r0, sb
	ldrb r1, [r0, #8]
	lsls r1, r1, #3
	ldrh r0, [r0, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r0, sb
	adds r0, #0x8c
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	mov r1, r8
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	mov r2, sb
	ldrh r1, [r2, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, [r6, #0x10]
	ldr r1, _08026268 @ =0xFFFFFE7F
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r3, _0802626C @ =gPlayer
	mov r8, r3
	ldr r3, [r3, #0x10]
	movs r0, #0x80
	ands r3, r0
	cmp r3, #0
	bne _0802621A
	ldr r2, _08026270 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08026274 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08026278 @ =gWinRegs
	strh r3, [r0, #0xa]
	ldr r0, _0802627C @ =gBldRegs
	strh r3, [r0]
	strh r3, [r0, #4]
_0802621A:
	mov r0, sb
	adds r0, #0x9b
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov sl, r0
	lsls r5, r5, #0x10
	str r5, [sp, #4]
	lsls r4, r4, #0x10
	str r4, [sp, #8]
	cmp r1, #0
	bne _08026306
	asrs r4, r5, #0x10
	ldr r0, [sp, #8]
	asrs r5, r0, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	mov r3, r8
	bl sub_800BA5C
	mov r8, r0
	ldr r0, _08026280 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08026288
	ldr r3, _08026284 @ =gPartner
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_800BA5C
	b _0802628A
	.align 2, 0
_08026260: .4byte 0x0300008C
_08026264: .4byte 0xFFFFFF00
_08026268: .4byte 0xFFFFFE7F
_0802626C: .4byte gPlayer
_08026270: .4byte gDispCnt
_08026274: .4byte 0x00007FFF
_08026278: .4byte gWinRegs
_0802627C: .4byte gBldRegs
_08026280: .4byte gNumSingleplayerCharacters
_08026284: .4byte gPartner
_08026288:
	movs r0, #0
_0802628A:
	mov r1, r8
	cmp r1, #1
	beq _08026294
	cmp r0, #1
	bne _080262F4
_08026294:
	mov r2, sb
	adds r2, #0x9a
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	movs r0, #0x20
	mov r3, sl
	strb r0, [r3]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #7
	bne _080262C4
	movs r0, #0x40
	strb r0, [r3]
	ldr r0, _080262BC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080262C0 @ =sub_80264C8
	str r0, [r1, #8]
	b _080262E4
	.align 2, 0
_080262BC: .4byte gCurTask
_080262C0: .4byte sub_80264C8
_080262C4:
	cmp r0, #4
	ble _080262E4
	mov r1, sb
	adds r1, #0x96
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	ble _080262DC
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r0, #1
	b _080262E2
_080262DC:
	movs r0, #0
	ldrsb r0, [r2, r0]
	mvns r0, r0
_080262E2:
	strh r0, [r1]
_080262E4:
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	movs r0, #0x8f
	bl m4aSongNumStart
	b _08026306
_080262F4:
	mov r1, r8
	cmp r1, #2
	beq _080262FE
	cmp r0, #2
	bne _08026306
_080262FE:
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
_08026306:
	ldr r4, _0802633C @ =gCamera
	ldrh r1, [r4]
	ldr r2, [sp, #4]
	asrs r3, r2, #0x10
	subs r1, r3, r1
	strh r1, [r6, #0x16]
	ldrh r2, [r4, #2]
	ldr r5, [sp, #8]
	asrs r0, r5, #0x10
	subs r0, r0, r2
	strh r0, [r6, #0x18]
	strh r1, [r7, #0x16]
	ldrh r0, [r6, #0x18]
	strh r0, [r7, #0x18]
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	subs r0, #0x40
	cmp r3, r0
	bge _08026340
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r6, #0x10]
	ldr r0, [r7, #0x10]
	orrs r0, r1
	b _08026356
	.align 2, 0
_0802633C: .4byte gCamera
_08026340:
	movs r2, #0x1a
	ldrsh r0, [r4, r2]
	adds r0, #0x40
	cmp r3, r0
	ble _08026358
	ldr r0, [r6, #0x10]
	ldr r1, _080263C8 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, [r7, #0x10]
	ands r0, r1
_08026356:
	str r0, [r7, #0x10]
_08026358:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #2
	bne _08026374
	ldrh r0, [r7, #0x18]
	subs r0, #1
	strh r0, [r7, #0x18]
_08026374:
	mov r3, sl
	ldrb r1, [r3]
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	beq _080263F6
	subs r1, #1
	strb r1, [r3]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x10
	ble _080263E0
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _080263E8
	ldr r0, _080263CC @ =gPlayer
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080263E8
	ldr r0, [r6, #0x10]
	adds r1, #0x80
	orrs r0, r1
	str r0, [r6, #0x10]
	ldr r2, _080263D0 @ =gDispCnt
	ldrh r0, [r2]
	movs r5, #0x80
	lsls r5, r5, #8
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080263D4 @ =gWinRegs
	ldr r0, _080263D8 @ =0x00003F1F
	strh r0, [r1, #0xa]
	ldr r1, _080263DC @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	b _080263E8
	.align 2, 0
_080263C8: .4byte 0xFFFFFBFF
_080263CC: .4byte gPlayer
_080263D0: .4byte gDispCnt
_080263D4: .4byte gWinRegs
_080263D8: .4byte 0x00003F1F
_080263DC: .4byte gBldRegs
_080263E0:
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _08026402
_080263E8:
	adds r0, r6, #0
	bl DisplaySprite
	adds r0, r7, #0
	bl DisplaySprite
	b _08026402
_080263F6:
	adds r0, r6, #0
	bl DisplaySprite
	adds r0, r7, #0
	bl DisplaySprite
_08026402:
	ldr r3, [r6, #0x10]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r3, r0
	cmp r3, #0
	beq _08026464
	ldr r2, _08026444 @ =sa2__gUnknown_03001944
	mov r0, sb
	adds r0, #0x94
	ldrh r1, [r0]
	ldr r0, _08026448 @ =0x000003FF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0802644C @ =sa2__gUnknown_030017F0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _08026450 @ =sa2__gUnknown_03005394
	strh r1, [r0]
	ldr r0, _08026454 @ =sa2__gUnknown_03002A8C
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08026458 @ =sa2__gUnknown_03004D58
	strh r1, [r0]
	ldr r1, _0802645C @ =sa2__gUnknown_0300194C
	mov r3, sb
	ldrh r0, [r3, #0x22]
	strh r0, [r1]
	ldr r1, _08026460 @ =sa2__gUnknown_03002820
	ldrh r0, [r3, #0x24]
	b _08026494
	.align 2, 0
_08026444: .4byte sa2__gUnknown_03001944
_08026448: .4byte 0x000003FF
_0802644C: .4byte sa2__gUnknown_030017F0
_08026450: .4byte sa2__gUnknown_03005394
_08026454: .4byte sa2__gUnknown_03002A8C
_08026458: .4byte sa2__gUnknown_03004D58
_0802645C: .4byte sa2__gUnknown_0300194C
_08026460: .4byte sa2__gUnknown_03002820
_08026464:
	ldr r2, _080264A8 @ =sa2__gUnknown_03001944
	mov r0, sb
	adds r0, #0x94
	ldrh r1, [r0]
	ldr r0, _080264AC @ =0x000003FF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _080264B0 @ =sa2__gUnknown_030017F0
	movs r5, #0x80
	lsls r5, r5, #1
	adds r1, r5, #0
	strh r1, [r0]
	ldr r0, _080264B4 @ =sa2__gUnknown_03005394
	strh r1, [r0]
	ldr r0, _080264B8 @ =sa2__gUnknown_03002A8C
	strh r3, [r0]
	ldr r0, _080264BC @ =sa2__gUnknown_03004D58
	strh r3, [r0]
	ldr r1, _080264C0 @ =sa2__gUnknown_0300194C
	mov r2, sb
	ldrh r0, [r2, #0x22]
	strh r0, [r1]
	ldr r1, _080264C4 @ =sa2__gUnknown_03002820
	ldrh r0, [r2, #0x24]
_08026494:
	subs r0, #0x24
	strh r0, [r1]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080264A8: .4byte sa2__gUnknown_03001944
_080264AC: .4byte 0x000003FF
_080264B0: .4byte sa2__gUnknown_030017F0
_080264B4: .4byte sa2__gUnknown_03005394
_080264B8: .4byte sa2__gUnknown_03002A8C
_080264BC: .4byte sa2__gUnknown_03004D58
_080264C0: .4byte sa2__gUnknown_0300194C
_080264C4: .4byte sa2__gUnknown_03002820

	thumb_func_start sub_80264C8
sub_80264C8: @ 0x080264C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	movs r0, #0
	str r0, [sp, #8]
	movs r1, #0
	str r1, [sp, #0xc]
	ldr r0, _08026518 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r3
	mov r8, r0
	ldr r2, _0802651C @ =0x0300000C
	adds r7, r3, r2
	ldr r4, _08026520 @ =0x03000044
	adds r4, r3, r4
	str r4, [sp, #4]
	ldr r5, [r0]
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08026528
	ldr r6, _08026524 @ =0x0300009A
	adds r0, r3, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	subs r0, #2
	adds r2, #0x8a
	adds r1, r3, r2
	strh r0, [r1]
	b _08026544
	.align 2, 0
_08026518: .4byte gCurTask
_0802651C: .4byte 0x0300000C
_08026520: .4byte 0x03000044
_08026524: .4byte 0x0300009A
_08026528:
	ldr r4, _08026588 @ =0x0300009A
	adds r0, r3, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, #3
	lsls r0, r0, #1
	movs r6, #4
	rsbs r6, r6, #0
	adds r1, r6, #0
	subs r1, r1, r0
	ldr r2, _0802658C @ =0x03000096
	adds r0, r3, r2
	strh r1, [r0]
_08026544:
	mov r1, r8
	adds r1, #0x94
	mov r0, r8
	adds r0, #0x96
	ldrh r0, [r0]
	ldrh r3, [r1]
	adds r2, r0, r3
	strh r2, [r1]
	lsls r0, r2, #0x10
	asrs r3, r0, #0x10
	ldr r0, _08026590 @ =0xFFFFFD00
	str r1, [sp, #0x10]
	cmp r3, r0
	bge _08026598
	movs r4, #0x80
	lsls r4, r4, #3
	adds r0, r2, r4
	strh r0, [r1]
	mov r2, r8
	adds r2, #0x8c
	ldr r0, _08026594 @ =gSineTable
	movs r6, #0x9c
	lsls r6, r6, #2
	adds r0, r0, r6
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	ldr r0, [r2]
	subs r0, r0, r1
	str r0, [r2]
	mov sb, r2
	b _080265C4
	.align 2, 0
_08026588: .4byte 0x0300009A
_0802658C: .4byte 0x03000096
_08026590: .4byte 0xFFFFFD00
_08026594: .4byte gSineTable
_08026598:
	movs r0, #0x80
	lsls r0, r0, #1
	movs r4, #0x8c
	add r4, r8
	mov sb, r4
	cmp r3, r0
	ble _080265C4
	ldr r6, _08026634 @ =0xFFFFFC00
	adds r0, r2, r6
	ldr r1, [sp, #0x10]
	strh r0, [r1]
	ldr r0, _08026638 @ =gSineTable
	movs r2, #0x9c
	lsls r2, r2, #2
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
_080265C4:
	ldr r4, [sp, #0x10]
	movs r6, #0
	ldrsh r1, [r4, r6]
	ldr r0, _0802663C @ =0xFFFFFDC8
	cmp r1, r0
	bgt _08026644
	mov r1, r8
	adds r1, #0x9c
	ldrb r0, [r1]
	cmp r0, #0
	bne _080265FA
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x91
	bl m4aSongNumStart
	movs r0, #0x80
	lsls r0, r0, #4
	movs r2, #0x80
	lsls r2, r2, #1
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x80
	str r1, [sp]
	movs r1, #0x40
	bl CreateScreenShake
_080265FA:
	ldr r1, [sp, #0x10]
	ldrh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	subs r1, r1, r0
	ldr r3, _08026640 @ =0x000003FF
	adds r4, r3, #0
	ldr r3, _08026638 @ =gSineTable
	movs r6, #0x9c
	lsls r6, r6, #2
	adds r0, r3, r6
	movs r6, #0
	ldrsh r2, [r0, r6]
	ands r1, r4
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r1, r4
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r6, #0
	ldrsh r0, [r0, r6]
	subs r2, r2, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	asrs r0, r0, #9
	rsbs r0, r0, #0
	b _0802669C
	.align 2, 0
_08026634: .4byte 0xFFFFFC00
_08026638: .4byte gSineTable
_0802663C: .4byte 0xFFFFFDC8
_08026640: .4byte 0x000003FF
_08026644:
	cmp r1, #0x37
	ble _080266C4
	mov r1, r8
	adds r1, #0x9c
	ldrb r0, [r1]
	cmp r0, #0
	bne _08026672
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x91
	bl m4aSongNumStart
	movs r0, #0x80
	lsls r0, r0, #4
	movs r2, #0x80
	lsls r2, r2, #1
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x80
	str r1, [sp]
	movs r1, #0x40
	bl CreateScreenShake
_08026672:
	ldr r3, [sp, #0x10]
	ldrh r4, [r3]
	ldr r1, _080266BC @ =0x000003FF
	ldr r3, _080266C0 @ =gSineTable
	movs r6, #0x9c
	lsls r6, r6, #2
	adds r0, r3, r6
	movs r6, #0
	ldrsh r2, [r0, r6]
	ands r1, r4
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r1, r4
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r6, #0
	ldrsh r0, [r0, r6]
	subs r2, r2, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	asrs r0, r0, #9
_0802669C:
	str r0, [sp, #8]
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r0, #0
	ldrsh r1, [r1, r0]
	adds r3, #0x70
	movs r2, #0
	ldrsh r0, [r3, r2]
	subs r1, r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	asrs r0, r0, #9
	rsbs r0, r0, #0
	str r0, [sp, #0xc]
	b _080266F6
	.align 2, 0
_080266BC: .4byte 0x000003FF
_080266C0: .4byte gSineTable
_080266C4:
	mov r1, r8
	adds r1, #0x9c
	ldrb r0, [r1]
	cmp r0, #1
	bne _080266D2
	movs r0, #0
	strb r0, [r1]
_080266D2:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080266EC
	mov r3, sb
	ldr r0, [r3]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r0, r4
	str r0, [r3]
	b _080266F6
_080266EC:
	mov r6, sb
	ldr r0, [r6]
	ldr r1, _08026790 @ =0xFFFFFF00
	adds r0, r0, r1
	str r0, [r6]
_080266F6:
	mov r2, r8
	ldrb r1, [r2, #8]
	lsls r1, r1, #3
	ldrh r0, [r2, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r3, sb
	ldr r0, [r3]
	asrs r0, r0, #8
	adds r1, r1, r0
	ldr r4, [sp, #8]
	adds r1, r1, r4
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	ldrh r1, [r2, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	ldr r5, [sp, #0xc]
	adds r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, [r7, #0x10]
	ldr r1, _08026794 @ =0xFFFFFE7F
	ands r0, r1
	str r0, [r7, #0x10]
	ldr r3, _08026798 @ =gPlayer
	ldr r4, [r3, #0x10]
	movs r0, #0x80
	ands r4, r0
	cmp r4, #0
	bne _0802674C
	ldr r2, _0802679C @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _080267A0 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _080267A4 @ =gWinRegs
	strh r4, [r0, #0xa]
	ldr r0, _080267A8 @ =gBldRegs
	strh r4, [r0]
	strh r4, [r0, #4]
_0802674C:
	mov r0, r8
	adds r0, #0x9b
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov sl, r0
	lsls r6, r6, #0x10
	str r6, [sp, #0x14]
	lsls r5, r5, #0x10
	str r5, [sp, #0x18]
	cmp r1, #0
	beq _08026764
	b _08026A78
_08026764:
	asrs r4, r6, #0x10
	asrs r5, r5, #0x10
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_800BA5C
	adds r6, r0, #0
	ldr r0, _080267AC @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _080267B4
	ldr r3, _080267B0 @ =gPartner
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_800BA5C
	b _080267B6
	.align 2, 0
_08026790: .4byte 0xFFFFFF00
_08026794: .4byte 0xFFFFFE7F
_08026798: .4byte gPlayer
_0802679C: .4byte gDispCnt
_080267A0: .4byte 0x00007FFF
_080267A4: .4byte gWinRegs
_080267A8: .4byte gBldRegs
_080267AC: .4byte gNumSingleplayerCharacters
_080267B0: .4byte gPartner
_080267B4:
	movs r0, #0
_080267B6:
	cmp r6, #1
	beq _080267C0
	cmp r0, #1
	beq _080267C0
	b _08026A78
_080267C0:
	mov r1, r8
	adds r1, #0x9a
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0x20
	mov r6, sl
	strb r0, [r6]
	ldr r1, [sp, #4]
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	mov r1, r8
	adds r1, #0x9e
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r1]
	ldr r1, _080268BC @ =gLevelScore
	ldr r6, [r1]
	movs r2, #0xfa
	lsls r2, r2, #2
	adds r0, r6, r2
	str r0, [r1]
	ldr r4, _080268C0 @ =0x0000C350
	adds r1, r4, #0
	bl Div
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl Div
	cmp r5, r0
	beq _08026814
	ldr r0, _080268C4 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _08026814
	ldr r1, _080268C8 @ =gNumLives
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08026814:
	movs r0, #0x90
	bl m4aSongNumStart
	movs r1, #0
	ldr r3, [sp, #8]
	lsls r4, r3, #8
	mov r6, r8
	adds r6, #0x90
	ldr r0, [sp, #0xc]
	lsls r5, r0, #8
	movs r2, #0x98
	add r2, r8
	mov sl, r2
	movs r3, #0x20
	adds r3, r3, r7
	mov ip, r3
	mov r2, r8
	adds r2, #0x78
	ldr r3, _080268CC @ =sub_80271E4
_0802683A:
	lsls r0, r1, #2
	adds r0, r2, r0
	ldr r0, [r0]
	str r3, [r0, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #4
	bls _0802683A
	mov r0, r8
	ldr r1, [r0, #0x74]
	ldr r0, _080268D0 @ =sub_8027600
	str r0, [r1, #8]
	mov r1, sb
	ldr r0, [r1]
	adds r0, r0, r4
	str r0, [r1]
	str r5, [r6]
	movs r1, #0
	movs r4, #0
	mov r2, sl
	strh r4, [r2]
	movs r0, #0x99
	lsls r0, r0, #2
	strh r0, [r7, #0xa]
	mov r3, ip
	strb r1, [r3]
	ldr r5, [sp, #0x14]
	asrs r0, r5, #0x10
	ldr r6, [sp, #0x18]
	asrs r1, r6, #0x10
	ldr r3, _080268D4 @ =0x00000265
	str r4, [sp]
	movs r2, #0x10
	bl sub_80168F0
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	adds r0, #0x46
	adds r1, r2, r0
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r1]
	ldr r1, _080268D8 @ =0x03000048
	adds r0, r2, r1
	strh r4, [r0]
	ldr r5, _080268DC @ =0x03000042
	adds r0, r2, r5
	strh r4, [r0]
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080268E4
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r3, #0x32]
	ldr r6, _080268E0 @ =0x03000044
	adds r0, r2, r6
	strh r1, [r0]
	b _080268EE
	.align 2, 0
_080268BC: .4byte gLevelScore
_080268C0: .4byte 0x0000C350
_080268C4: .4byte gGameMode
_080268C8: .4byte gNumLives
_080268CC: .4byte sub_80271E4
_080268D0: .4byte sub_8027600
_080268D4: .4byte 0x00000265
_080268D8: .4byte 0x03000048
_080268DC: .4byte 0x03000042
_080268E0: .4byte 0x03000044
_080268E4:
	ldr r0, _08026944 @ =0x03000044
	adds r1, r2, r0
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r1]
_080268EE:
	adds r1, r3, #0
	adds r1, #0x40
	movs r4, #0
	movs r0, #0x3c
	strh r0, [r1]
	ldr r1, [sp, #0x14]
	asrs r0, r1, #0x10
	ldr r2, [sp, #0x18]
	asrs r1, r2, #0x10
	ldr r3, _08026948 @ =0x00000266
	str r4, [sp]
	movs r2, #0x10
	bl sub_80168F0
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	ldr r5, _0802694C @ =0x03000046
	adds r1, r2, r5
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r1]
	ldr r6, _08026950 @ =0x03000048
	adds r0, r2, r6
	strh r4, [r0]
	ldr r1, _08026954 @ =0x03000042
	adds r0, r2, r1
	strh r4, [r0]
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08026958
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r3, #0x32]
	ldr r4, _08026944 @ =0x03000044
	adds r0, r2, r4
	strh r1, [r0]
	b _08026962
	.align 2, 0
_08026944: .4byte 0x03000044
_08026948: .4byte 0x00000266
_0802694C: .4byte 0x03000046
_08026950: .4byte 0x03000048
_08026954: .4byte 0x03000042
_08026958:
	ldr r5, _080269BC @ =0x03000044
	adds r1, r2, r5
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r1]
_08026962:
	adds r1, r3, #0
	adds r1, #0x40
	movs r4, #0
	movs r0, #0x3c
	strh r0, [r1]
	ldr r6, [sp, #0x14]
	asrs r0, r6, #0x10
	ldr r2, [sp, #0x18]
	asrs r1, r2, #0x10
	ldr r3, _080269C0 @ =0x00000267
	str r4, [sp]
	movs r2, #0x10
	bl sub_80168F0
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	ldr r5, _080269C4 @ =0x03000046
	adds r1, r2, r5
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r1]
	ldr r6, _080269C8 @ =0x03000048
	adds r0, r2, r6
	strh r4, [r0]
	ldr r1, _080269CC @ =0x03000042
	adds r0, r2, r1
	strh r4, [r0]
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080269D0
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r3, #0x32]
	ldr r4, _080269BC @ =0x03000044
	adds r1, r2, r4
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r1]
	b _080269D6
	.align 2, 0
_080269BC: .4byte 0x03000044
_080269C0: .4byte 0x00000267
_080269C4: .4byte 0x03000046
_080269C8: .4byte 0x03000048
_080269CC: .4byte 0x03000042
_080269D0:
	ldr r5, _08026A30 @ =0x03000044
	adds r0, r2, r5
	strh r1, [r0]
_080269D6:
	adds r1, r3, #0
	adds r1, #0x40
	movs r4, #0
	movs r0, #0x3c
	strh r0, [r1]
	ldr r6, [sp, #0x14]
	asrs r0, r6, #0x10
	ldr r2, [sp, #0x18]
	asrs r1, r2, #0x10
	movs r3, #0x9a
	lsls r3, r3, #2
	str r4, [sp]
	movs r2, #0x10
	bl sub_80168F0
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	ldr r5, _08026A34 @ =0x03000046
	adds r1, r2, r5
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r1]
	ldr r6, _08026A38 @ =0x03000048
	adds r0, r2, r6
	strh r4, [r0]
	ldr r1, _08026A3C @ =0x03000042
	adds r0, r2, r1
	strh r4, [r0]
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08026A40
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r3, #0x32]
	ldr r4, _08026A30 @ =0x03000044
	adds r1, r2, r4
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r1]
	b _08026A46
	.align 2, 0
_08026A30: .4byte 0x03000044
_08026A34: .4byte 0x03000046
_08026A38: .4byte 0x03000048
_08026A3C: .4byte 0x03000042
_08026A40:
	ldr r5, _08026A68 @ =0x03000044
	adds r0, r2, r5
	strh r1, [r0]
_08026A46:
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #0x3c
	strh r0, [r1]
	ldr r1, _08026A6C @ =gCamera
	ldrh r0, [r1]
	strh r0, [r1, #0x18]
	adds r0, #0xf0
	strh r0, [r1, #0x1a]
	ldr r0, _08026A70 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08026A74 @ =sub_8026C44
	str r0, [r1, #8]
	bl _call_via_r0
	b _08026C12
	.align 2, 0
_08026A68: .4byte 0x03000044
_08026A6C: .4byte gCamera
_08026A70: .4byte gCurTask
_08026A74: .4byte sub_8026C44
_08026A78:
	ldr r4, _08026AB8 @ =gCamera
	ldrh r1, [r4]
	ldr r6, [sp, #0x14]
	asrs r3, r6, #0x10
	subs r1, r3, r1
	strh r1, [r7, #0x16]
	ldrh r2, [r4, #2]
	ldr r5, [sp, #0x18]
	asrs r0, r5, #0x10
	subs r0, r0, r2
	strh r0, [r7, #0x18]
	ldr r6, [sp, #4]
	strh r1, [r6, #0x16]
	ldrh r0, [r7, #0x18]
	strh r0, [r6, #0x18]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _08026AD6
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	subs r0, #0x40
	cmp r3, r0
	bge _08026ABC
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r7, #0x10]
	ldr r0, [r6, #0x10]
	orrs r0, r1
	str r0, [r6, #0x10]
	b _08026AD6
	.align 2, 0
_08026AB8: .4byte gCamera
_08026ABC:
	movs r2, #0x1a
	ldrsh r0, [r4, r2]
	adds r0, #0x40
	cmp r3, r0
	ble _08026AD6
	ldr r0, [r7, #0x10]
	ldr r1, _08026B48 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r7, #0x10]
	ldr r3, [sp, #4]
	ldr r0, [r3, #0x10]
	ands r0, r1
	str r0, [r3, #0x10]
_08026AD6:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r0, [sp, #4]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #2
	bne _08026AF4
	ldr r4, [sp, #4]
	ldrh r0, [r4, #0x18]
	subs r0, #1
	strh r0, [r4, #0x18]
_08026AF4:
	mov r5, sl
	ldrb r1, [r5]
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	beq _08026B76
	subs r1, #1
	strb r1, [r5]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x10
	ble _08026B60
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _08026B68
	ldr r0, _08026B4C @ =gPlayer
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08026B68
	ldr r0, [r7, #0x10]
	adds r1, #0x80
	orrs r0, r1
	str r0, [r7, #0x10]
	ldr r2, _08026B50 @ =gDispCnt
	ldrh r0, [r2]
	movs r6, #0x80
	lsls r6, r6, #8
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08026B54 @ =gWinRegs
	ldr r0, _08026B58 @ =0x00003F1F
	strh r0, [r1, #0xa]
	ldr r1, _08026B5C @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	b _08026B68
	.align 2, 0
_08026B48: .4byte 0xFFFFFBFF
_08026B4C: .4byte gPlayer
_08026B50: .4byte gDispCnt
_08026B54: .4byte gWinRegs
_08026B58: .4byte 0x00003F1F
_08026B5C: .4byte gBldRegs
_08026B60:
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _08026B82
_08026B68:
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, [sp, #4]
	bl DisplaySprite
	b _08026B82
_08026B76:
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, [sp, #4]
	bl DisplaySprite
_08026B82:
	ldr r3, [r7, #0x10]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r3, r0
	cmp r3, #0
	beq _08026BE0
	ldr r2, _08026BC0 @ =sa2__gUnknown_03001944
	ldr r0, [sp, #0x10]
	ldrh r1, [r0]
	ldr r0, _08026BC4 @ =0x000003FF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08026BC8 @ =sa2__gUnknown_030017F0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _08026BCC @ =sa2__gUnknown_03005394
	strh r1, [r0]
	ldr r0, _08026BD0 @ =sa2__gUnknown_03002A8C
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08026BD4 @ =sa2__gUnknown_03004D58
	strh r1, [r0]
	ldr r1, _08026BD8 @ =sa2__gUnknown_0300194C
	mov r3, r8
	ldrh r0, [r3, #0x22]
	strh r0, [r1]
	ldr r1, _08026BDC @ =sa2__gUnknown_03002820
	ldrh r0, [r3, #0x24]
	b _08026C0E
	.align 2, 0
_08026BC0: .4byte sa2__gUnknown_03001944
_08026BC4: .4byte 0x000003FF
_08026BC8: .4byte sa2__gUnknown_030017F0
_08026BCC: .4byte sa2__gUnknown_03005394
_08026BD0: .4byte sa2__gUnknown_03002A8C
_08026BD4: .4byte sa2__gUnknown_03004D58
_08026BD8: .4byte sa2__gUnknown_0300194C
_08026BDC: .4byte sa2__gUnknown_03002820
_08026BE0:
	ldr r2, _08026C24 @ =sa2__gUnknown_03001944
	ldr r4, [sp, #0x10]
	ldrh r1, [r4]
	ldr r0, _08026C28 @ =0x000003FF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08026C2C @ =sa2__gUnknown_030017F0
	movs r5, #0x80
	lsls r5, r5, #1
	adds r1, r5, #0
	strh r1, [r0]
	ldr r0, _08026C30 @ =sa2__gUnknown_03005394
	strh r1, [r0]
	ldr r0, _08026C34 @ =sa2__gUnknown_03002A8C
	strh r3, [r0]
	ldr r0, _08026C38 @ =sa2__gUnknown_03004D58
	strh r3, [r0]
	ldr r1, _08026C3C @ =sa2__gUnknown_0300194C
	mov r6, r8
	ldrh r0, [r6, #0x22]
	strh r0, [r1]
	ldr r1, _08026C40 @ =sa2__gUnknown_03002820
	ldrh r0, [r6, #0x24]
_08026C0E:
	subs r0, #0x24
	strh r0, [r1]
_08026C12:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026C24: .4byte sa2__gUnknown_03001944
_08026C28: .4byte 0x000003FF
_08026C2C: .4byte sa2__gUnknown_030017F0
_08026C30: .4byte sa2__gUnknown_03005394
_08026C34: .4byte sa2__gUnknown_03002A8C
_08026C38: .4byte sa2__gUnknown_03004D58
_08026C3C: .4byte sa2__gUnknown_0300194C
_08026C40: .4byte sa2__gUnknown_03002820

	thumb_func_start sub_8026C44
sub_8026C44: @ 0x08026C44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r1, _08026E6C @ =gCurTask
	ldr r0, [r1]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r2, r0
	ldr r3, _08026E70 @ =0x0300000C
	adds r3, r3, r2
	mov sl, r3
	adds r0, #0x44
	adds r0, r2, r0
	str r0, [sp, #4]
	ldr r4, [r7]
	ldr r1, _08026E74 @ =0x0300009E
	adds r6, r2, r1
	ldrh r0, [r6]
	adds r0, #0x28
	strh r0, [r6]
	ldr r3, _08026E78 @ =0x03000090
	adds r5, r2, r3
	movs r1, #0
	ldrsh r0, [r6, r1]
	ldr r3, [r5]
	adds r3, r3, r0
	str r3, [r5]
	ldrb r1, [r7, #8]
	lsls r1, r1, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, _08026E7C @ =0x0300008C
	adds r2, r2, r0
	ldr r0, [r2]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldrb r0, [r4, #1]
	lsls r0, r0, #3
	ldrh r2, [r7, #6]
	lsls r2, r2, #8
	adds r0, r0, r2
	asrs r3, r3, #8
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r8, r2
	asrs r0, r0, #0x10
	subs r0, #8
	lsrs r3, r1, #0x10
	mov sb, r3
	asrs r1, r1, #0x10
	ldr r2, _08026E80 @ =sa2__sub_801EC3C
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F100
	cmp r0, #0
	bge _08026CEE
	lsls r1, r0, #8
	ldr r0, [r5]
	adds r0, r0, r1
	str r0, [r5]
	ldrh r1, [r6]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x12
	subs r0, r0, r1
	strh r0, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _08026E84 @ =0xFFFFFF00
	cmp r0, r1
	ble _08026CEE
	movs r0, #0
	strh r0, [r6]
	ldr r0, _08026E6C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08026E88 @ =sub_8026ED0
	str r0, [r1, #8]
_08026CEE:
	mov r1, sl
	ldr r0, [r1, #0x10]
	ldr r1, _08026E8C @ =0xFFFFFE7F
	ands r0, r1
	mov r2, sl
	str r0, [r2, #0x10]
	ldr r0, _08026E90 @ =gPlayer
	ldr r3, [r0, #0x10]
	movs r0, #0x80
	ands r3, r0
	cmp r3, #0
	bne _08026D1A
	ldr r2, _08026E94 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08026E98 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08026E9C @ =gWinRegs
	strh r3, [r0, #0xa]
	ldr r0, _08026EA0 @ =gBldRegs
	strh r3, [r0]
	strh r3, [r0, #4]
_08026D1A:
	adds r1, r7, #0
	adds r1, #0x98
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r4, #7
	ands r0, r4
	mov r3, r8
	lsls r3, r3, #0x10
	str r3, [sp, #0xc]
	mov r7, sb
	lsls r7, r7, #0x10
	str r7, [sp, #8]
	cmp r0, #0
	bne _08026E12
	ldr r0, _08026EA4 @ =gPseudoRandom
	mov sb, r0
	ldr r0, [r0]
	ldr r1, _08026EA8 @ =0x00196225
	muls r0, r1, r0
	ldr r2, _08026EAC @ =0x3C6EF35F
	adds r0, r0, r2
	mov r3, sb
	str r0, [r3]
	ands r4, r0
	ldr r0, _08026EB0 @ =gUnknown_080BB434
	adds r0, r4, r0
	ldrb r0, [r0]
	bl VramMalloc
	adds r1, r0, #0
	movs r6, #0x80
	lsls r6, r6, #6
	ldr r2, _08026EB4 @ =gUnknown_080BB41C
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, _08026EB8 @ =gUnknown_080BB42C
	adds r4, r4, r0
	ldrb r3, [r4]
	ldr r0, _08026EBC @ =sub_80177EC
	str r0, [sp]
	adds r0, r6, #0
	bl sub_801769C
	ldrh r3, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r3, r5
	asrs r0, r7, #0x10
	lsls r1, r0, #8
	str r1, [r5, #0x30]
	ldr r7, [sp, #0xc]
	asrs r1, r7, #0x10
	adds r2, r1, #0
	subs r2, #0x20
	lsls r2, r2, #8
	str r2, [r5, #0x34]
	str r6, [r5, #0x10]
	movs r2, #0x88
	lsls r2, r2, #3
	strh r2, [r5, #0x1a]
	movs r2, #0x28
	strh r2, [r5, #0x3e]
	ldr r2, _08026EC0 @ =0x03000040
	adds r3, r3, r2
	movs r2, #0x20
	strh r2, [r3]
	mov r3, sb
	ldr r2, [r3]
	ldr r7, _08026EA8 @ =0x00196225
	adds r6, r2, #0
	muls r6, r7, r6
	ldr r2, _08026EAC @ =0x3C6EF35F
	adds r6, r6, r2
	str r6, [r3]
	ldr r3, _08026EC4 @ =gSineTable
	mov r8, r3
	ldr r3, _08026EC8 @ =0x000001FF
	ands r3, r6
	lsls r2, r3, #1
	add r2, r8
	movs r7, #0
	ldrsh r4, [r2, r7]
	lsls r2, r4, #1
	adds r2, r2, r4
	lsls r2, r2, #9
	rsbs r2, r2, #0
	asrs r2, r2, #0xe
	strh r2, [r5, #0x3a]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r3, r3, r2
	lsls r3, r3, #1
	add r3, r8
	movs r7, #0
	ldrsh r3, [r3, r7]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #9
	rsbs r2, r2, #0
	asrs r2, r2, #0xe
	strh r2, [r5, #0x38]
	ldr r2, _08026EA8 @ =0x00196225
	adds r3, r6, #0
	muls r3, r2, r3
	ldr r7, _08026EAC @ =0x3C6EF35F
	adds r3, r3, r7
	mov r2, sb
	str r3, [r2]
	movs r2, #0x3f
	ands r2, r3
	adds r0, r0, r2
	subs r0, #0x20
	lsls r0, r0, #8
	movs r2, #0xfc
	lsls r2, r2, #0xe
	ands r3, r2
	asrs r3, r3, #0x10
	adds r3, #0x20
	subs r1, r1, r3
	lsls r1, r1, #8
	bl sub_8017540
_08026E12:
	ldr r2, _08026ECC @ =gCamera
	ldrh r0, [r2]
	ldr r3, [sp, #8]
	asrs r1, r3, #0x10
	subs r1, r1, r0
	mov r7, sl
	strh r1, [r7, #0x16]
	ldrh r2, [r2, #2]
	ldr r3, [sp, #0xc]
	asrs r0, r3, #0x10
	subs r0, r0, r2
	strh r0, [r7, #0x18]
	ldr r7, [sp, #4]
	strh r1, [r7, #0x16]
	mov r1, sl
	ldrh r0, [r1, #0x18]
	strh r0, [r7, #0x18]
	mov r0, sl
	bl UpdateSpriteAnimation
	ldr r0, [sp, #4]
	bl UpdateSpriteAnimation
	mov r0, sl
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #2
	bne _08026E50
	ldrh r0, [r7, #0x18]
	subs r0, #1
	strh r0, [r7, #0x18]
_08026E50:
	mov r0, sl
	bl DisplaySprite
	ldr r0, [sp, #4]
	bl DisplaySprite
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026E6C: .4byte gCurTask
_08026E70: .4byte 0x0300000C
_08026E74: .4byte 0x0300009E
_08026E78: .4byte 0x03000090
_08026E7C: .4byte 0x0300008C
_08026E80: .4byte sa2__sub_801EC3C
_08026E84: .4byte 0xFFFFFF00
_08026E88: .4byte sub_8026ED0
_08026E8C: .4byte 0xFFFFFE7F
_08026E90: .4byte gPlayer
_08026E94: .4byte gDispCnt
_08026E98: .4byte 0x00007FFF
_08026E9C: .4byte gWinRegs
_08026EA0: .4byte gBldRegs
_08026EA4: .4byte gPseudoRandom
_08026EA8: .4byte 0x00196225
_08026EAC: .4byte 0x3C6EF35F
_08026EB0: .4byte gUnknown_080BB434
_08026EB4: .4byte gUnknown_080BB41C
_08026EB8: .4byte gUnknown_080BB42C
_08026EBC: .4byte sub_80177EC
_08026EC0: .4byte 0x03000040
_08026EC4: .4byte gSineTable
_08026EC8: .4byte 0x000001FF
_08026ECC: .4byte gCamera

	thumb_func_start sub_8026ED0
sub_8026ED0: @ 0x08026ED0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r6, _08026F70 @ =gCurTask
	ldr r0, [r6]
	ldrh r7, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r2, r7, r5
	ldr r0, _08026F74 @ =0x0300000C
	adds r0, r7, r0
	str r0, [sp, #4]
	ldr r1, _08026F78 @ =0x03000044
	adds r1, r1, r7
	mov sb, r1
	ldr r3, [r2]
	ldrb r1, [r2, #8]
	lsls r1, r1, #3
	ldrh r0, [r2, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r4, _08026F7C @ =0x0300008C
	adds r0, r7, r4
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	mov r0, sl
	str r0, [sp, #8]
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r2, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _08026F80 @ =0x03000090
	adds r0, r7, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	mov r3, r8
	str r3, [sp, #0xc]
	adds r4, #0xc
	adds r1, r7, r4
	ldrh r0, [r1]
	adds r2, r0, #1
	strh r2, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf0
	bls _08026F8C
	mov r0, sl
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	lsls r1, r3, #0x10
	asrs r5, r1, #0x10
	ldr r2, _08026F84 @ =0xFFE00000
	adds r1, r1, r2
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8015C5C
	adds r0, r4, #0
	adds r1, r5, #0
	bl CreateBossCapsule
	ldr r1, _08026F88 @ =gMusicManagerState
	movs r0, #0x30
	strb r0, [r1, #1]
	ldr r0, [r6]
	bl TaskDestroy
	b _080270BE
	.align 2, 0
_08026F70: .4byte gCurTask
_08026F74: .4byte 0x0300000C
_08026F78: .4byte 0x03000044
_08026F7C: .4byte 0x0300008C
_08026F80: .4byte 0x03000090
_08026F84: .4byte 0xFFE00000
_08026F88: .4byte gMusicManagerState
_08026F8C:
	movs r4, #7
	ands r2, r4
	cmp r2, #0
	bne _08027070
	ldr r3, _080270D0 @ =gPseudoRandom
	ldr r0, [r3]
	ldr r1, _080270D4 @ =0x00196225
	muls r0, r1, r0
	ldr r2, _080270D8 @ =0x3C6EF35F
	adds r0, r0, r2
	str r0, [r3]
	ands r4, r0
	ldr r0, _080270DC @ =gUnknown_080BB434
	adds r0, r4, r0
	ldrb r0, [r0]
	bl VramMalloc
	adds r1, r0, #0
	movs r6, #0x80
	lsls r6, r6, #6
	ldr r2, _080270E0 @ =gUnknown_080BB41C
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, _080270E4 @ =gUnknown_080BB42C
	adds r4, r4, r0
	ldrb r3, [r4]
	ldr r0, _080270E8 @ =sub_80177EC
	str r0, [sp]
	adds r0, r6, #0
	bl sub_801769C
	ldrh r3, [r0, #6]
	adds r5, r3, r5
	mov r4, sl
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #8
	str r1, [r5, #0x30]
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	adds r2, r1, #0
	subs r2, #0x20
	lsls r2, r2, #8
	str r2, [r5, #0x34]
	str r6, [r5, #0x10]
	movs r2, #0x88
	lsls r2, r2, #3
	strh r2, [r5, #0x1a]
	movs r2, #0x28
	strh r2, [r5, #0x3e]
	ldr r4, _080270EC @ =0x03000040
	adds r3, r3, r4
	movs r2, #0x20
	strh r2, [r3]
	ldr r3, _080270D0 @ =gPseudoRandom
	ldr r2, [r3]
	ldr r4, _080270D4 @ =0x00196225
	adds r6, r2, #0
	muls r6, r4, r6
	ldr r2, _080270D8 @ =0x3C6EF35F
	adds r6, r6, r2
	str r6, [r3]
	ldr r3, _080270F0 @ =gSineTable
	mov r8, r3
	ldr r3, _080270F4 @ =0x000001FF
	ands r3, r6
	lsls r2, r3, #1
	add r2, r8
	mov ip, r2
	movs r4, #0
	ldrsh r2, [r2, r4]
	mov ip, r2
	lsls r2, r2, #1
	add r2, ip
	lsls r2, r2, #9
	rsbs r2, r2, #0
	asrs r2, r2, #0xe
	strh r2, [r5, #0x3a]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r3, r3, r2
	lsls r3, r3, #1
	add r3, r8
	movs r4, #0
	ldrsh r3, [r3, r4]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #9
	rsbs r2, r2, #0
	asrs r2, r2, #0xe
	strh r2, [r5, #0x38]
	ldr r2, _080270D4 @ =0x00196225
	adds r3, r6, #0
	muls r3, r2, r3
	ldr r4, _080270D8 @ =0x3C6EF35F
	adds r3, r3, r4
	ldr r2, _080270D0 @ =gPseudoRandom
	str r3, [r2]
	movs r2, #0x3f
	ands r2, r3
	adds r0, r0, r2
	subs r0, #0x20
	lsls r0, r0, #8
	movs r2, #0xfc
	lsls r2, r2, #0xe
	ands r3, r2
	asrs r3, r3, #0x10
	adds r3, #0x20
	subs r1, r1, r3
	lsls r1, r1, #8
	bl sub_8017540
_08027070:
	ldr r2, _080270F8 @ =gCamera
	ldrh r0, [r2]
	ldr r3, [sp, #8]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	ldr r4, [sp, #4]
	strh r1, [r4, #0x16]
	ldrh r2, [r2, #2]
	ldr r3, [sp, #0xc]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	strh r0, [r4, #0x18]
	mov r4, sb
	strh r1, [r4, #0x16]
	ldr r1, [sp, #4]
	ldrh r0, [r1, #0x18]
	strh r0, [r4, #0x18]
	ldr r0, [sp, #4]
	bl UpdateSpriteAnimation
	mov r0, sb
	bl UpdateSpriteAnimation
	ldr r2, _080270FC @ =0x0300002C
	adds r0, r7, r2
	ldrb r0, [r0]
	cmp r0, #2
	bne _080270B2
	ldrh r0, [r4, #0x18]
	subs r0, #1
	strh r0, [r4, #0x18]
_080270B2:
	ldr r0, [sp, #4]
	bl DisplaySprite
	mov r0, sb
	bl DisplaySprite
_080270BE:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080270D0: .4byte gPseudoRandom
_080270D4: .4byte 0x00196225
_080270D8: .4byte 0x3C6EF35F
_080270DC: .4byte gUnknown_080BB434
_080270E0: .4byte gUnknown_080BB41C
_080270E4: .4byte gUnknown_080BB42C
_080270E8: .4byte sub_80177EC
_080270EC: .4byte 0x03000040
_080270F0: .4byte gSineTable
_080270F4: .4byte 0x000001FF
_080270F8: .4byte gCamera
_080270FC: .4byte 0x0300002C

	thumb_func_start CreateEHTArm
CreateEHTArm: @ 0x08027100
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #8
	mov r8, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _080271C0 @ =Task_EHTArm
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	mov r2, r8
	orrs r2, r1
	ldr r1, _080271C4 @ =TaskDestructor_EHTArm
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	mov sl, r0
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	ldr r0, _080271C8 @ =0x03000030
	adds r2, r5, r0
	ldr r1, _080271CC @ =0x03000050
	adds r0, r5, r1
	movs r6, #0
	mov r1, r8
	strb r1, [r0]
	movs r0, #0
	mov sb, r0
	strh r6, [r4, #0x16]
	strh r6, [r4, #0x18]
	movs r0, #4
	str r2, [sp, #4]
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	strh r6, [r4, #8]
	movs r0, #0x98
	lsls r0, r0, #2
	strh r0, [r4, #0xa]
	ldr r1, _080271D0 @ =0x03000020
	adds r0, r5, r1
	mov r1, sb
	strb r1, [r0]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	ldr r0, _080271D4 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _080271D8 @ =0x03000022
	adds r1, r5, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _080271DC @ =0x03000025
	adds r5, r5, r1
	mov r0, sb
	strb r0, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	ldr r0, _080271E0 @ =0x00002030
	str r0, [r4, #0x10]
	ldr r2, [sp, #4]
	strh r6, [r2]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	mov r1, r8
	lsls r1, r1, #4
	strh r1, [r2, #6]
	strh r6, [r2, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	mov r0, sl
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080271C0: .4byte Task_EHTArm
_080271C4: .4byte TaskDestructor_EHTArm
_080271C8: .4byte 0x03000030
_080271CC: .4byte 0x03000050
_080271D0: .4byte 0x03000020
_080271D4: .4byte 0x03000021
_080271D8: .4byte 0x03000022
_080271DC: .4byte 0x03000025
_080271E0: .4byte 0x00002030

	thumb_func_start sub_80271E4
sub_80271E4: @ 0x080271E4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08027268 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r7, r0
	adds r5, r6, #0
	ldr r2, _0802726C @ =0x03000030
	adds r1, r7, r2
	movs r0, #0
	strh r0, [r1]
	ldr r3, _08027270 @ =0x03000050
	adds r3, r3, r7
	mov ip, r3
	ldrb r4, [r3]
	ldr r2, _08027274 @ =gSineTable
	ldr r0, _08027278 @ =sa2__gUnknown_03001944
	ldrh r1, [r0]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r1, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #4
	adds r3, r4, #0
	muls r3, r0, r3
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #4
	adds r2, r4, #0
	muls r2, r0, r2
	ldr r1, _0802727C @ =sa2__gUnknown_0300194C
	ldr r4, _08027280 @ =gCamera
	ldrh r0, [r4]
	ldrh r1, [r1]
	adds r0, r0, r1
	asrs r3, r3, #0xe
	adds r3, r3, r0
	ldr r1, _08027284 @ =sa2__gUnknown_03002820
	ldrh r0, [r4, #2]
	ldrh r1, [r1]
	adds r0, r0, r1
	asrs r2, r2, #0xe
	adds r2, r2, r0
	strh r3, [r6, #0x3c]
	strh r2, [r6, #0x3e]
	mov r3, ip
	ldrb r1, [r3]
	movs r0, #1
	ands r0, r1
	mov r3, r8
	cmp r0, #0
	beq _0802728C
	ldr r0, _08027288 @ =0x0300004C
	adds r1, r7, r0
	movs r0, #0x80
	lsls r0, r0, #2
	b _08027294
	.align 2, 0
_08027268: .4byte gCurTask
_0802726C: .4byte 0x03000030
_08027270: .4byte 0x03000050
_08027274: .4byte gSineTable
_08027278: .4byte sa2__gUnknown_03001944
_0802727C: .4byte sa2__gUnknown_0300194C
_08027280: .4byte gCamera
_08027284: .4byte sa2__gUnknown_03002820
_08027288: .4byte 0x0300004C
_0802728C:
	ldr r2, _080272C8 @ =0x0300004C
	adds r1, r7, r2
	movs r0, #0xfe
	lsls r0, r0, #8
_08027294:
	strh r0, [r1]
	adds r2, r5, #0
	adds r2, #0x4e
	movs r1, #0
	movs r0, #0xfa
	lsls r0, r0, #8
	strh r0, [r2]
	str r1, [r5, #0x44]
	str r1, [r5, #0x48]
	adds r0, r5, #0
	adds r0, #0x40
	strh r1, [r0]
	ldr r0, [r6, #0x10]
	subs r1, #0x21
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r1, [r3]
	ldr r0, _080272CC @ =sub_80272D0
	str r0, [r1, #8]
	bl _call_via_r0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080272C8: .4byte 0x0300004C
_080272CC: .4byte sub_80272D0

	thumb_func_start sub_80272D0
sub_80272D0: @ 0x080272D0
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _080272FC @ =gCurTask
	ldr r6, [r0]
	ldrh r3, [r6, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
	adds r4, r5, #0
	adds r0, #0x40
	adds r2, r3, r0
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xb4
	bls _08027300
	adds r0, r6, #0
	bl TaskDestroy
	b _080273CC
	.align 2, 0
_080272FC: .4byte gCurTask
_08027300:
	ldr r1, _080273D4 @ =0x0300004E
	adds r6, r3, r1
	ldrh r0, [r6]
	adds r0, #0x28
	strh r0, [r6]
	ldr r2, _080273D8 @ =0x0300004C
	adds r0, r3, r2
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r5, #0x44]
	adds r2, r0, r1
	str r2, [r5, #0x44]
	movs r0, #0
	ldrsh r1, [r6, r0]
	ldr r0, [r5, #0x48]
	adds r1, r0, r1
	str r1, [r5, #0x48]
	movs r3, #0
	ldrsh r0, [r6, r3]
	cmp r0, #0
	ble _0802735C
	movs r3, #0x3e
	ldrsh r0, [r5, r3]
	asrs r1, r1, #8
	adds r0, r0, r1
	movs r3, #0x3c
	ldrsh r1, [r5, r3]
	asrs r2, r2, #8
	adds r1, r1, r2
	ldr r2, _080273DC @ =sa2__sub_801EC3C
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F100
	cmp r0, #0
	bge _0802735C
	lsls r1, r0, #8
	ldr r0, [r5, #0x48]
	adds r0, r0, r1
	str r0, [r5, #0x48]
	ldrh r1, [r6]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x12
	subs r0, r0, r1
	strh r0, [r6]
_0802735C:
	movs r0, #0x3c
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	adds r1, r1, r0
	ldr r0, _080273E0 @ =gCamera
	movs r3, #0
	ldrsh r2, [r0, r3]
	adds r0, r2, #0
	adds r0, #0xf0
	cmp r1, r0
	bgt _08027378
	cmp r1, r2
	bge _08027382
_08027378:
	adds r1, r4, #0
	adds r1, #0x4c
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_08027382:
	adds r0, r4, #0
	adds r0, #0x40
	ldrh r1, [r0]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080273A8
	movs r1, #0x3c
	ldrsh r0, [r4, r1]
	lsls r0, r0, #8
	ldr r1, [r4, #0x44]
	adds r0, r0, r1
	movs r2, #0x3e
	ldrsh r1, [r4, r2]
	lsls r1, r1, #8
	ldr r2, [r4, #0x48]
	adds r1, r1, r2
	bl sub_8017540
_080273A8:
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	ldrh r3, [r4, #0x3c]
	adds r0, r0, r3
	ldr r2, _080273E0 @ =gCamera
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r5, #0x16]
	ldr r0, [r4, #0x48]
	asrs r0, r0, #8
	ldrh r4, [r4, #0x3e]
	adds r0, r0, r4
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl DisplaySprite
_080273CC:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080273D4: .4byte 0x0300004E
_080273D8: .4byte 0x0300004C
_080273DC: .4byte sa2__sub_801EC3C
_080273E0: .4byte gCamera

	thumb_func_start CreateEHTHammer
CreateEHTHammer: @ 0x080273E4
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	ldr r0, _08027484 @ =Task_EHTHammer
	ldr r2, _08027488 @ =0x00002005
	ldr r1, _0802748C @ =TaskDestructor_EHTHammer
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	mov sb, r0
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	ldr r0, _08027490 @ =0x03000030
	adds r2, r5, r0
	movs r1, #0
	mov r8, r1
	movs r6, #0
	strh r6, [r4, #0x16]
	strh r6, [r4, #0x18]
	movs r0, #0x40
	str r2, [sp, #4]
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	strh r6, [r4, #8]
	ldr r0, _08027494 @ =0x00000261
	strh r0, [r4, #0xa]
	ldr r1, _08027498 @ =0x03000020
	adds r0, r5, r1
	mov r1, r8
	strb r1, [r0]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	ldr r0, _0802749C @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _080274A0 @ =0x03000022
	adds r1, r5, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _080274A4 @ =0x03000025
	adds r5, r5, r1
	mov r0, r8
	strb r0, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	ldr r0, _080274A8 @ =0x00002030
	str r0, [r4, #0x10]
	ldr r2, [sp, #4]
	strh r6, [r2]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	movs r0, #0x60
	strh r0, [r2, #6]
	strh r6, [r2, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	mov r0, sb
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08027484: .4byte Task_EHTHammer
_08027488: .4byte 0x00002005
_0802748C: .4byte TaskDestructor_EHTHammer
_08027490: .4byte 0x03000030
_08027494: .4byte 0x00000261
_08027498: .4byte 0x03000020
_0802749C: .4byte 0x03000021
_080274A0: .4byte 0x03000022
_080274A4: .4byte 0x03000025
_080274A8: .4byte 0x00002030

	thumb_func_start Task_EHTHammer
Task_EHTHammer: @ 0x080274AC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080274F4 @ =gCurTask
	ldr r2, [r0]
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r0, r1
	ldr r4, _080274F8 @ =0x03000030
	adds r3, r0, r4
	ldrh r0, [r2]
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	adds r5, r0, r1
	adds r1, #0x44
	adds r1, r1, r0
	mov r8, r1
	movs r1, #0
	strh r1, [r3]
	ldr r2, _080274FC @ =0x03000094
	adds r0, r0, r2
	ldrh r1, [r0]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	bge _08027504
	ldr r2, _08027500 @ =0xFFFFFE00
	adds r0, r2, #0
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	ble _0802750C
	strh r1, [r3]
	b _0802750C
	.align 2, 0
_080274F4: .4byte gCurTask
_080274F8: .4byte 0x03000030
_080274FC: .4byte 0x03000094
_08027500: .4byte 0xFFFFFE00
_08027504:
	cmp r0, #0
	ble _0802750C
	rsbs r0, r1, #0
	strh r0, [r3]
_0802750C:
	adds r0, r7, #0
	adds r1, r3, #0
	bl UnusedTransform
	ldr r3, _0802759C @ =gSineTable
	ldr r0, _080275A0 @ =sa2__gUnknown_03001944
	ldrh r2, [r0]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r2, r4
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r2, r2, #1
	adds r2, r2, r3
	movs r3, #0
	ldrsh r0, [r2, r3]
	lsls r2, r0, #1
	adds r2, r2, r0
	ldr r3, _080275A4 @ =sa2__gUnknown_0300194C
	ldr r4, _080275A8 @ =gCamera
	ldrh r0, [r4]
	ldrh r3, [r3]
	adds r0, r0, r3
	asrs r1, r1, #9
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldr r1, _080275AC @ =sa2__gUnknown_03002820
	ldrh r0, [r4, #2]
	ldrh r1, [r1]
	adds r0, r0, r1
	asrs r2, r2, #9
	adds r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r5, #0
	adds r0, #0x9b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080275E6
	lsls r0, r3, #0x10
	asrs r5, r0, #0x10
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	ldr r3, _080275B0 @ =gPlayer
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sa2__sub_800DF38
	adds r6, r0, #0
	ldr r0, _080275B4 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _080275BC
	ldr r3, _080275B8 @ =gPartner
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sa2__sub_800DF38
	adds r4, r0, #0
	b _080275BE
	.align 2, 0
_0802759C: .4byte gSineTable
_080275A0: .4byte sa2__gUnknown_03001944
_080275A4: .4byte sa2__gUnknown_0300194C
_080275A8: .4byte gCamera
_080275AC: .4byte sa2__gUnknown_03002820
_080275B0: .4byte gPlayer
_080275B4: .4byte gNumSingleplayerCharacters
_080275B8: .4byte gPartner
_080275BC:
	movs r4, #0
_080275BE:
	movs r5, #0x80
	lsls r5, r5, #0xc
	cmp r6, r5
	bne _080275D4
	ldr r0, _080275F8 @ =gPlayer
	bl sa2__sub_800CBA4
	mov r1, r8
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
_080275D4:
	cmp r4, r5
	bne _080275E6
	ldr r0, _080275FC @ =gPartner
	bl sa2__sub_800CBA4
	mov r1, r8
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
_080275E6:
	adds r0, r7, #0
	bl DisplaySprite
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080275F8: .4byte gPlayer
_080275FC: .4byte gPartner

	thumb_func_start sub_8027600
sub_8027600: @ 0x08027600
	push {r4, r5, lr}
	ldr r3, _08027640 @ =gCurTask
	ldr r2, [r3]
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	mov ip, r4
	ldr r5, _08027644 @ =0x03000030
	adds r4, r0, r5
	ldrh r0, [r2]
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	movs r1, #0
	strh r1, [r4]
	ldr r1, _08027648 @ =0x03000094
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r5, r3, #0
	cmp r0, #0
	bge _08027650
	ldr r3, _0802764C @ =0xFFFFFE00
	adds r0, r3, #0
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	ble _08027658
	strh r1, [r4]
	b _08027658
	.align 2, 0
_08027640: .4byte gCurTask
_08027644: .4byte 0x03000030
_08027648: .4byte 0x03000094
_0802764C: .4byte 0xFFFFFE00
_08027650:
	cmp r0, #0
	ble _08027658
	rsbs r0, r1, #0
	strh r0, [r4]
_08027658:
	ldr r1, _080276C0 @ =sa2__gUnknown_03001944
	ldrh r0, [r1]
	ldrh r2, [r4]
	adds r0, r0, r2
	strh r0, [r4]
	ldr r3, _080276C4 @ =gSineTable
	ldrh r2, [r1]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r2, r4
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r2, r2, #1
	adds r2, r2, r3
	movs r3, #0
	ldrsh r0, [r2, r3]
	lsls r2, r0, #1
	adds r2, r2, r0
	ldr r3, _080276C8 @ =sa2__gUnknown_0300194C
	ldr r4, _080276CC @ =gCamera
	ldrh r0, [r4]
	ldrh r3, [r3]
	adds r0, r0, r3
	asrs r1, r1, #9
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, _080276D0 @ =sa2__gUnknown_03002820
	ldrh r0, [r4, #2]
	ldrh r3, [r3]
	adds r0, r0, r3
	asrs r2, r2, #9
	adds r2, r2, r0
	mov r0, ip
	strh r1, [r0, #0x3c]
	strh r2, [r0, #0x3e]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0
	ldrsh r0, [r4, r2]
	adds r0, #0x78
	cmp r1, r0
	bge _080276D4
	mov r1, ip
	adds r1, #0x4c
	movs r0, #0x80
	lsls r0, r0, #2
	b _080276DC
	.align 2, 0
_080276C0: .4byte sa2__gUnknown_03001944
_080276C4: .4byte gSineTable
_080276C8: .4byte sa2__gUnknown_0300194C
_080276CC: .4byte gCamera
_080276D0: .4byte sa2__gUnknown_03002820
_080276D4:
	mov r1, ip
	adds r1, #0x4c
	movs r0, #0xfe
	lsls r0, r0, #8
_080276DC:
	strh r0, [r1]
	mov r2, ip
	adds r2, #0x4e
	movs r1, #0
	movs r0, #0xfa
	lsls r0, r0, #8
	strh r0, [r2]
	mov r3, ip
	str r1, [r3, #0x44]
	str r1, [r3, #0x48]
	mov r0, ip
	adds r0, #0x40
	strh r1, [r0]
	mov r1, ip
	adds r1, #0x42
	movs r0, #0x2a
	strh r0, [r1]
	ldr r1, [r5]
	ldr r0, _08027710 @ =sub_8027714
	str r0, [r1, #8]
	bl _call_via_r0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08027710: .4byte sub_8027714

	thumb_func_start sub_8027714
sub_8027714: @ 0x08027714
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _0802774C @ =gCurTask
	ldr r3, [r0]
	ldrh r7, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r7, r0
	adds r5, r4, #0
	adds r0, #0x30
	adds r0, r0, r7
	mov r8, r0
	ldr r1, _08027750 @ =0x03000040
	adds r2, r7, r1
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xb4
	bls _08027754
	adds r0, r3, #0
	bl TaskDestroy
	b _08027828
	.align 2, 0
_0802774C: .4byte gCurTask
_08027750: .4byte 0x03000040
_08027754:
	ldr r2, _08027834 @ =0x0300004E
	adds r6, r7, r2
	ldrh r0, [r6]
	adds r0, #0x28
	strh r0, [r6]
	ldr r3, _08027838 @ =0x0300004C
	adds r0, r7, r3
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r4, #0x44]
	adds r2, r0, r1
	str r2, [r4, #0x44]
	movs r3, #0
	ldrsh r1, [r6, r3]
	ldr r0, [r4, #0x48]
	adds r1, r0, r1
	str r1, [r4, #0x48]
	movs r3, #0
	ldrsh r0, [r6, r3]
	cmp r0, #0
	ble _080277BA
	movs r3, #0x3e
	ldrsh r0, [r4, r3]
	asrs r1, r1, #8
	adds r0, r0, r1
	movs r3, #0x3c
	ldrsh r1, [r4, r3]
	asrs r2, r2, #8
	adds r1, r1, r2
	ldr r2, _0802783C @ =sa2__sub_801EC3C
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F100
	cmp r0, #0
	bge _080277BA
	lsls r1, r0, #8
	ldr r0, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x48]
	ldrh r1, [r6]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x12
	subs r0, r0, r1
	strh r0, [r6]
	ldr r0, _08027840 @ =0x03000042
	adds r1, r7, r0
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080277BA:
	adds r0, r5, #0
	adds r0, #0x40
	ldrh r1, [r0]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080277E0
	movs r1, #0x3c
	ldrsh r0, [r5, r1]
	lsls r0, r0, #8
	ldr r1, [r5, #0x44]
	adds r0, r0, r1
	movs r2, #0x3e
	ldrsh r1, [r5, r2]
	lsls r1, r1, #8
	ldr r2, [r5, #0x48]
	adds r1, r1, r2
	bl sub_8017540
_080277E0:
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	ldrh r3, [r5, #0x3c]
	adds r0, r0, r3
	ldr r2, _08027844 @ =gCamera
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldr r0, [r5, #0x48]
	asrs r0, r0, #8
	ldrh r1, [r5, #0x3e]
	adds r0, r0, r1
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	mov r2, r8
	ldrh r2, [r2]
	adds r0, r0, r2
	ldr r3, _08027848 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	mov r1, r8
	strh r0, [r1]
	ldrh r0, [r4, #0x16]
	strh r0, [r1, #6]
	ldrh r0, [r4, #0x18]
	strh r0, [r1, #8]
	adds r0, r4, #0
	bl TransformSprite
	adds r0, r4, #0
	bl DisplaySprite
_08027828:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08027834: .4byte 0x0300004E
_08027838: .4byte 0x0300004C
_0802783C: .4byte sa2__sub_801EC3C
_08027840: .4byte 0x03000042
_08027844: .4byte gCamera
_08027848: .4byte 0x000003FF

	thumb_func_start sub_802784C
sub_802784C: @ 0x0802784C
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x10]
	bl VramFree
	ldr r0, [r4, #0x48]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start Task_EggHammerTankMain
Task_EggHammerTankMain: @ 0x08027868
	push {r4, r5, r6, lr}
	ldr r0, _080278BC @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	adds r0, #0x98
	adds r2, r3, r0
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x78
	bls _080278B6
	movs r4, #0
	ldr r0, _080278C0 @ =0x03000078
	adds r5, r3, r0
_0802788E:
	adds r0, r4, #0
	bl CreateEHTArm
	lsls r1, r4, #2
	adds r1, r5, r1
	str r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0802788E
	bl CreateEHTHammer
	str r0, [r6, #0x74]
	ldr r0, _080278BC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080278C4 @ =Task_802611C
	str r0, [r1, #8]
	bl _call_via_r0
_080278B6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080278BC: .4byte gCurTask
_080278C0: .4byte 0x03000078
_080278C4: .4byte Task_802611C

	thumb_func_start TaskDestructor_EggHammerTank
TaskDestructor_EggHammerTank: @ 0x080278C8
	push {r4, lr}
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _08027904 @ =gPlayer
	ldr r3, [r0, #0x10]
	movs r0, #0x80
	ands r3, r0
	cmp r3, #0
	bne _080278F2
	ldr r2, _08027908 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0802790C @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08027910 @ =gWinRegs
	strh r3, [r0, #0xa]
	ldr r0, _08027914 @ =gBldRegs
	strh r3, [r0]
	strh r3, [r0, #4]
_080278F2:
	ldr r0, [r4, #0x10]
	bl VramFree
	ldr r0, [r4, #0x48]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08027904: .4byte gPlayer
_08027908: .4byte gDispCnt
_0802790C: .4byte 0x00007FFF
_08027910: .4byte gWinRegs
_08027914: .4byte gBldRegs

	thumb_func_start Task_EHTArm
Task_EHTArm: @ 0x08027918
	push {r4, lr}
	ldr r0, _08027940 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r1, r4
	ldr r0, _08027944 @ =0x03000030
	adds r1, r1, r0
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	bl UnusedTransform
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08027940: .4byte gCurTask
_08027944: .4byte 0x03000030

	thumb_func_start TaskDestructor_EHTArm
TaskDestructor_EHTArm: @ 0x08027948
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_EHTHammer
TaskDestructor_EHTHammer: @ 0x0802795C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0
