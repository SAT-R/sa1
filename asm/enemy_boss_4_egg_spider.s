.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ --- Start of EggSpider

.if 0
	thumb_func_start CreateIciclePlatform
CreateIciclePlatform: @ 0x08031998

.endif

	thumb_func_start sub_8031AB4
sub_8031AB4: @ 0x08031AB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r0, #0
	str r0, [sp, #4]
	ldr r3, _08031B08 @ =gCurTask
	ldr r0, [r3]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r2, r1
	ldrh r0, [r0]
	adds r0, r0, r1
	ldrh r5, [r0, #6]
	adds r1, r5, r1
	str r1, [sp]
	adds r4, r7, #0
	ldr r1, _08031B0C @ =0x03000046
	adds r2, r2, r1
	movs r6, #0
	ldrsh r1, [r2, r6]
	ldr r2, [r4, #0x50]
	asrs r0, r2, #8
	adds r1, r1, r0
	subs r1, #0x11
	ldr r0, _08031B10 @ =gWater
	movs r6, #2
	ldrsh r0, [r0, r6]
	cmp r1, r0
	bge _08031B14
	ldr r0, [r4, #0x54]
	ldr r1, [r4, #0x58]
	adds r0, r0, r1
	str r0, [r4, #0x54]
	adds r1, r2, r0
	str r1, [r4, #0x50]
	mov sl, r0
	b _08031B54
	.align 2, 0
_08031B08: .4byte gCurTask
_08031B0C: .4byte 0x03000046
_08031B10: .4byte gWater
_08031B14:
	movs r0, #1
	str r0, [sp, #4]
	ldr r1, _08031B2C @ =0x03000086
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _08031B30
	ldr r0, [r4, #0x54]
	ldr r1, [r4, #0x58]
	b _08031B3C
	.align 2, 0
_08031B2C: .4byte 0x03000086
_08031B30:
	ldr r1, [r4, #0x58]
	cmp r1, #0
	bge _08031B38
	adds r1, #7
_08031B38:
	asrs r1, r1, #3
	ldr r0, [r4, #0x54]
_08031B3C:
	adds r0, r0, r1
	str r0, [r4, #0x54]
	ldr r1, [r7, #0x54]
	adds r0, r1, #0
	cmp r1, #0
	bge _08031B4A
	adds r0, r1, #7
_08031B4A:
	asrs r2, r0, #3
	ldr r0, [r7, #0x50]
	adds r0, r0, r2
	str r0, [r7, #0x50]
	mov sl, r2
_08031B54:
	ldr r2, [r7, #0x50]
	movs r0, #0xd0
	lsls r0, r0, #8
	cmp r2, r0
	ble _08031B66
	ldr r0, [r3]
	bl TaskDestroy
	b _08031CA2
_08031B66:
	adds r1, r7, #0
	adds r1, #0x44
	ldr r0, [r7, #0x4c]
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	adds r1, r7, #0
	adds r1, #0x46
	asrs r0, r2, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r2, _08031C24 @ =gCamera
	ldrh r0, [r2]
	mov r3, sb
	lsls r1, r3, #0x10
	asrs r6, r1, #0x10
	subs r0, r6, r0
	strh r0, [r4, #0x16]
	ldrh r0, [r2, #2]
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r5, r1, #0x10
	subs r0, r5, r0
	strh r0, [r4, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	ldr r3, [sp]
	cmp r3, r0
	beq _08031BE4
	adds r0, r3, #0
	adds r0, #0x86
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	bgt _08031BE4
	ldr r3, _08031C28 @ =gPlayer
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_800BFEC
	ldr r0, _08031C2C @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08031BE4
	ldr r3, _08031C30 @ =gPartner
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_800BFEC
_08031BE4:
	ldr r6, [sp, #4]
	cmp r6, #0
	beq _08031BFE
	mov r0, sb
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	mov r3, r8
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	ldr r3, _08031C28 @ =gPlayer
	adds r0, r4, #0
	bl Coll_Player_PlatformCrumbling
_08031BFE:
	ldr r3, _08031C28 @ =gPlayer
	ldr r2, [r3, #0x10]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _08031C40
	ldr r0, [r3, #0x28]
	cmp r0, r4
	bne _08031C40
	ldr r1, [r7, #0x50]
	movs r0, #0xc4
	lsls r0, r0, #8
	cmp r1, r0
	ble _08031C34
	movs r0, #9
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r3, #0x10]
	b _08031C40
	.align 2, 0
_08031C24: .4byte gCamera
_08031C28: .4byte gPlayer
_08031C2C: .4byte gNumSingleplayerCharacters
_08031C30: .4byte gPartner
_08031C34:
	ldr r0, [r3, #4]
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r0, r6
	add r0, sl
	str r0, [r3, #4]
_08031C40:
	ldr r0, _08031C88 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08031C9C
	mov r0, sb
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	mov r3, r8
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	ldr r5, _08031C8C @ =gPartner
	adds r0, r4, #0
	adds r3, r5, #0
	bl Coll_Player_PlatformCrumbling
	ldr r3, [r5, #0x10]
	movs r0, #8
	ands r0, r3
	cmp r0, #0
	beq _08031C9C
	ldr r0, [r5, #0x28]
	cmp r0, r4
	bne _08031C9C
	ldr r1, [r7, #0x50]
	movs r0, #0xc4
	lsls r0, r0, #8
	cmp r1, r0
	ble _08031C90
	movs r0, #9
	rsbs r0, r0, #0
	ands r3, r0
	str r3, [r5, #0x10]
	b _08031C9C
	.align 2, 0
_08031C88: .4byte gNumSingleplayerCharacters
_08031C8C: .4byte gPartner
_08031C90:
	ldr r0, [r5, #4]
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r0, r6
	add r0, sl
	str r0, [r5, #4]
_08031C9C:
	adds r0, r4, #0
	bl DisplaySprite
_08031CA2:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start TaskDestructor_8031CB4
TaskDestructor_8031CB4: @ 0x08031CB4
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

@ inline same as sub_802EF24 in Boss 2 and sub_8030814 in Boss 3
	thumb_func_start sub_8031CD0
sub_8031CD0: @ 0x08031CD0
	ldr r0, _08031D00 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	ldr r0, _08031D04 @ =0x0300003C
	adds r1, r2, r0
	adds r0, #0x20
	adds r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq _08031CFC
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08031CFC
	movs r0, #0
	strb r0, [r3]
	ldr r0, _08031D08 @ =0x0300005D
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
_08031CFC:
	bx lr
	.align 2, 0
_08031D00: .4byte gCurTask
_08031D04: .4byte 0x0300003C
_08031D08: .4byte 0x0300005D

@ inline
	thumb_func_start sub_8031D0C
sub_8031D0C: @ 0x08031D0C
	push {r4, lr}
	ldr r0, _08031D48 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _08031D4C @ =0x0300000C
	adds r2, r0, r1
	adds r1, #0x30
	adds r3, r0, r1
	ldrh r0, [r2, #0x16]
	strh r0, [r3, #0x16]
	ldrh r4, [r2, #0x18]
	strh r4, [r3, #0x18]
	ldrh r1, [r2, #0xa]
	movs r0, #0x9d
	lsls r0, r0, #2
	cmp r1, r0
	bne _08031D42
	ldr r0, [r2, #0xc]
	ldr r1, _08031D50 @ =gUnknown_084ACED8
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	subs r0, r4, r0
	strh r0, [r3, #0x18]
_08031D42:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08031D48: .4byte gCurTask
_08031D4C: .4byte 0x0300000C
_08031D50: .4byte gUnknown_084ACED8

@ inline - same as sub_802EF60 in Boss 2 and sub_8030870 in Boss 3
	thumb_func_start sub_8031D54
sub_8031D54: @ 0x08031D54
	push {r4, lr}
	ldr r2, _08031D7C @ =gCurTask
	ldr r2, [r2]
	ldrh r2, [r2, #6]
	ldr r3, _08031D80 @ =0x0300000C
	adds r2, r2, r3
	ldr r4, _08031D84 @ =gCamera
	ldrh r3, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r3
	strh r0, [r2, #0x16]
	ldrh r0, [r4, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r2, #0x18]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08031D7C: .4byte gCurTask
_08031D80: .4byte 0x0300000C
_08031D84: .4byte gCamera
