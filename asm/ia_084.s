.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ Platform that falls and slides once the player steps on it
	thumb_func_start CreateEntity_SkatingStone
CreateEntity_SkatingStone: @ 0x0808C7B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
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
	mov sl, r6
	ldr r0, _0808C890 @ =Task_SkatingStoneMain
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _0808C894 @ =TaskDestructor_SkatingStone
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r3, r0
	ldr r1, _0808C898 @ =0x0300000C
	adds r7, r3, r1
	movs r2, #0
	mov sb, r2
	movs r2, #0
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r6, r8
	str r6, [r0]
	ldrb r1, [r6]
	strb r1, [r0, #8]
	mov r1, sl
	strb r1, [r0, #9]
	ldr r6, _0808C89C @ =0x0300009C
	adds r0, r3, r6
	str r2, [r0]
	ldr r1, _0808C8A0 @ =0x030000A0
	adds r0, r3, r1
	str r2, [r0]
	adds r6, #8
	adds r0, r3, r6
	str r2, [r0]
	adds r1, #8
	adds r0, r3, r1
	str r2, [r0]
	adds r6, #8
	adds r0, r3, r6
	str r2, [r0]
	adds r1, #8
	adds r0, r3, r1
	mov r2, sb
	strb r2, [r0]
	mov r6, r8
	ldrb r1, [r6, #3]
	ldr r2, _0808C8A4 @ =0x030000B1
	adds r0, r3, r2
	strb r1, [r0]
	ldr r6, _0808C8A8 @ =0x030000B2
	adds r0, r3, r6
	mov r1, sb
	strb r1, [r0]
	mov r2, r8
	ldrb r1, [r2, #4]
	adds r6, #1
	adds r0, r3, r6
	strb r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r7, #0x16]
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r7, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r2]
	ldr r0, _0808C8AC @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	cmp r0, #3
	bne _0808C8B8
	movs r0, #0x18
	str r3, [sp, #4]
	bl VramMalloc
	str r0, [r7, #4]
	ldr r0, _0808C8B0 @ =0x00000211
	strh r0, [r7, #0xa]
	ldr r3, [sp, #4]
	ldr r2, _0808C8B4 @ =0x0300002C
	adds r0, r3, r2
	mov r6, sb
	strb r6, [r0]
	b _0808C8D0
	.align 2, 0
_0808C890: .4byte Task_SkatingStoneMain
_0808C894: .4byte TaskDestructor_SkatingStone
_0808C898: .4byte 0x0300000C
_0808C89C: .4byte 0x0300009C
_0808C8A0: .4byte 0x030000A0
_0808C8A4: .4byte 0x030000B1
_0808C8A8: .4byte 0x030000B2
_0808C8AC: .4byte gCurrentLevel
_0808C8B0: .4byte 0x00000211
_0808C8B4: .4byte 0x0300002C
_0808C8B8:
	movs r0, #0x18
	str r3, [sp, #4]
	bl VramMalloc
	str r0, [r7, #4]
	ldr r0, _0808C918 @ =0x00000223
	strh r0, [r7, #0xa]
	ldr r3, [sp, #4]
	ldr r1, _0808C91C @ =0x0300002C
	adds r0, r3, r1
	mov r2, sb
	strb r2, [r0]
_0808C8D0:
	movs r2, #0
	movs r1, #0
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	strh r1, [r7, #8]
	strh r1, [r7, #0x14]
	strh r1, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x25
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x10]
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
_0808C918: .4byte 0x00000223
_0808C91C: .4byte 0x0300002C

	thumb_func_start Task_SkatingStoneMain
Task_SkatingStoneMain: @ 0x0808C920
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	movs r0, #0
	mov sl, r0
	ldr r0, _0808C98C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r2, _0808C990 @ =0x0300000C
	adds r2, r2, r1
	mov sb, r2
	ldr r4, [r6]
	str r4, [sp, #8]
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r4, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _0808C994 @ =gCamera
	ldrh r0, [r3]
	lsrs r4, r2, #0x10
	str r4, [sp]
	asrs r2, r2, #0x10
	subs r2, r2, r0
	mov r0, sb
	strh r2, [r0, #0x16]
	ldrh r0, [r3, #2]
	lsrs r2, r1, #0x10
	str r2, [sp, #4]
	asrs r1, r1, #0x10
	subs r1, r1, r0
	mov r4, sb
	strh r1, [r4, #0x18]
	movs r5, #0
	ldr r7, _0808C998 @ =gPartner
	ldr r0, _0808C99C @ =gPlayer
	mov r8, r0
_0808C984:
	cmp r5, #0
	beq _0808C9A0
	ldr r0, [r7, #0x10]
	b _0808C9A4
	.align 2, 0
_0808C98C: .4byte gCurTask
_0808C990: .4byte 0x0300000C
_0808C994: .4byte gCamera
_0808C998: .4byte gPartner
_0808C99C: .4byte gPlayer
_0808C9A0:
	mov r1, r8
	ldr r0, [r1, #0x10]
_0808C9A4:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808C9AE
	b _0808CBD0
_0808C9AE:
	bl sub_80549FC
	cmp r0, #0
	beq _0808CA7C
	ldr r2, [sp, #4]
	lsls r0, r2, #0x10
	asrs r1, r0, #8
	adds r4, r0, #0
	cmp r5, #0
	beq _0808C9CA
	ldr r0, [r7, #4]
	cmp r0, r1
	bgt _0808C9D2
	b _0808CA36
_0808C9CA:
	mov r2, r8
	ldr r0, [r2, #4]
	cmp r0, r1
	ble _0808CA36
_0808C9D2:
	cmp r5, #0
	beq _0808C9E8
	ldr r1, _0808C9E4 @ =gPartner + 0x40
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0x49
	bne _0808C9F4
	b _0808CBD0
	.align 2, 0
_0808C9E4: .4byte gPartner + 0x40
_0808C9E8:
	ldr r2, _0808CA24 @ =gPlayer + 0x40
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0x49
	bne _0808C9F4
	b _0808CBD0
_0808C9F4:
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	asrs r4, r4, #0x10
	ldr r3, _0808CA28 @ =gPlayer
	cmp r5, #0
	beq _0808CA04
	ldr r3, _0808CA2C @ =gPartner
_0808CA04:
	mov r0, sb
	adds r2, r4, #0
	bl sub_800B1D4
	movs r1, #0x80
	lsls r1, r1, #9
	ands r1, r0
	cmp r1, #0
	bne _0808CA18
	b _0808CBD0
_0808CA18:
	adds r0, r4, #6
	lsls r0, r0, #8
	cmp r5, #0
	beq _0808CA30
	str r0, [r7, #4]
	b _0808CBD0
	.align 2, 0
_0808CA24: .4byte gPlayer + 0x40
_0808CA28: .4byte gPlayer
_0808CA2C: .4byte gPartner
_0808CA30:
	mov r2, r8
	str r0, [r2, #4]
	b _0808CBD0
_0808CA36:
	cmp r5, #0
	beq _0808CA4C
	ldr r1, _0808CA48 @ =gPartner + 0x40
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0x48
	bne _0808CA58
	b _0808CBD0
	.align 2, 0
_0808CA48: .4byte gPartner + 0x40
_0808CA4C:
	ldr r2, _0808CA70 @ =gPlayer + 0x40
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0x48
	bne _0808CA58
	b _0808CBD0
_0808CA58:
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	asrs r2, r4, #0x10
	ldr r3, _0808CA74 @ =gPlayer
	cmp r5, #0
	beq _0808CA68
	ldr r3, _0808CA78 @ =gPartner
_0808CA68:
	mov r0, sb
	bl sub_800B1D4
	b _0808CBD0
	.align 2, 0
_0808CA70: .4byte gPlayer + 0x40
_0808CA74: .4byte gPlayer
_0808CA78: .4byte gPartner
_0808CA7C:
	ldr r2, [sp]
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	ldr r4, [sp, #4]
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	ldr r3, _0808CAB4 @ =gPlayer
	adds r4, r0, #0
	cmp r5, #0
	beq _0808CA92
	ldr r3, _0808CAB8 @ =gPartner
_0808CA92:
	mov r0, sb
	bl sub_800B1D4
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	bne _0808CAA2
	b _0808CBD0
_0808CAA2:
	cmp r5, #0
	beq _0808CABC
	ldr r0, [r7, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _0808CACA
	.align 2, 0
_0808CAB4: .4byte gPlayer
_0808CAB8: .4byte gPartner
_0808CABC:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, r8
	str r0, [r2, #0x10]
_0808CACA:
	cmp r5, #0
	beq _0808CAD8
	ldr r0, [r7, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r7, #0x10]
	b _0808CAE4
_0808CAD8:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #2
	orrs r0, r1
	mov r2, r8
	str r0, [r2, #0x10]
_0808CAE4:
	cmp r5, #0
	beq _0808CAF8
	ldr r0, [r7, #0x10]
	ldr r1, _0808CAF4 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r7, #0x10]
	b _0808CB04
	.align 2, 0
_0808CAF4: .4byte 0xFFFFFEFF
_0808CAF8:
	mov r1, r8
	ldr r0, [r1, #0x10]
	ldr r1, _0808CB14 @ =0xFFFFFEFF
	ands r0, r1
	mov r2, r8
	str r0, [r2, #0x10]
_0808CB04:
	cmp r5, #0
	beq _0808CB18
	ldr r0, [r7, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _0808CB26
	.align 2, 0
_0808CB14: .4byte 0xFFFFFEFF
_0808CB18:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, r8
	str r0, [r2, #0x10]
_0808CB26:
	cmp r5, #0
	beq _0808CB36
	ldr r0, [r7, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _0808CB44
_0808CB36:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, r8
	str r0, [r2, #0x10]
_0808CB44:
	ldr r0, _0808CB7C @ =gPlayer
	cmp r5, #0
	beq _0808CB4C
	ldr r0, _0808CB80 @ =gPartner
_0808CB4C:
	movs r1, #0xe
	bl sa2__sub_8023B5C
	ldr r1, _0808CB7C @ =gPlayer
	cmp r5, #0
	beq _0808CB5A
	ldr r1, _0808CB80 @ =gPartner
_0808CB5A:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r2, _0808CB7C @ =gPlayer
	adds r1, r2, #0
	cmp r5, #0
	beq _0808CB68
	ldr r1, _0808CB80 @ =gPartner
_0808CB68:
	movs r0, #0xe
	strb r0, [r1, #0xf]
	asrs r0, r4, #8
	ldr r4, _0808CB84 @ =0xFFFFD400
	adds r0, r0, r4
	cmp r5, #0
	beq _0808CB88
	str r0, [r7, #4]
	b _0808CB8A
	.align 2, 0
_0808CB7C: .4byte gPlayer
_0808CB80: .4byte gPartner
_0808CB84: .4byte 0xFFFFD400
_0808CB88:
	str r0, [r2, #4]
_0808CB8A:
	adds r3, r6, #0
	adds r3, #0xb2
	movs r1, #1
	lsls r1, r5
	ldrb r0, [r3]
	orrs r1, r0
	movs r2, #0
	strb r1, [r3]
	adds r0, r6, #0
	adds r0, #0xa0
	str r2, [r0]
	adds r0, #4
	str r2, [r0]
	adds r0, #4
	str r2, [r0]
	adds r0, #4
	str r2, [r0]
	movs r0, #1
	mov sl, r0
	ldr r0, _0808CC40 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0808CBEA
	bl CreateRoomEvent
	mov r1, sl
	strb r1, [r0]
	ldrh r1, [r6, #4]
	strb r1, [r0, #1]
	ldrh r1, [r6, #6]
	strb r1, [r0, #2]
	ldrb r1, [r6, #9]
	strb r1, [r0, #3]
	mov r2, sl
	strb r2, [r0, #4]
_0808CBD0:
	ldr r0, _0808CC40 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0808CBEA
	ldr r4, [sp, #8]
	movs r1, #0
	ldrsb r1, [r4, r1]
	movs r0, #3
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0808CBEA
	movs r0, #1
	mov sl, r0
_0808CBEA:
	adds r5, #1
	ldr r0, _0808CC44 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	bge _0808CBFA
	b _0808C984
_0808CBFA:
	mov r1, sl
	cmp r1, #0
	beq _0808CC08
	ldr r0, _0808CC48 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808CC4C @ =sub_808CC68
	str r0, [r1, #8]
_0808CC08:
	mov r2, sb
	ldrh r0, [r2, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0808CC2E
	movs r4, #0x18
	ldrsh r0, [r2, r4]
	adds r0, #0x80
	cmp r0, #0
	blt _0808CC2E
	movs r0, #0x18
	ldrsh r1, [r2, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808CC50
_0808CC2E:
	ldrb r0, [r6, #8]
	ldr r1, [sp, #8]
	strb r0, [r1]
	ldr r0, _0808CC48 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0808CC56
	.align 2, 0
_0808CC40: .4byte gGameMode
_0808CC44: .4byte gNumSingleplayerCharacters
_0808CC48: .4byte gCurTask
_0808CC4C: .4byte sub_808CC68
_0808CC50:
	mov r0, sb
	bl DisplaySprite
_0808CC56:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_808CC68
sub_808CC68: @ 0x0808CC68
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	movs r0, #0
	str r0, [sp, #0x14]
	ldr r0, _0808CD34 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov sl, r0
	ldr r2, _0808CD38 @ =0x0300000C
	adds r2, r1, r2
	str r2, [sp, #0xc]
	ldr r3, [r0]
	str r3, [sp, #0x10]
	ldrb r3, [r0, #8]
	lsls r3, r3, #3
	ldrh r0, [r0, #4]
	lsls r0, r0, #8
	adds r3, r3, r0
	lsls r3, r3, #0x10
	ldr r4, [sp, #0x10]
	ldrb r2, [r4, #1]
	lsls r2, r2, #3
	mov r7, sl
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldr r0, _0808CD3C @ =0x030000AC
	adds r4, r1, r0
	ldr r7, _0808CD40 @ =0x030000A4
	adds r1, r1, r7
	ldr r0, [r4]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r4]
	asrs r0, r0, #8
	lsrs r5, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r2, r0
	ldr r4, _0808CD44 @ =gCamera
	ldrh r1, [r4, #2]
	subs r0, r0, r1
	ldr r1, [sp, #0xc]
	strh r0, [r1, #0x18]
	lsrs r6, r3, #0x10
	asrs r3, r3, #0x10
	movs r7, #0
	ldrsh r1, [r4, r7]
	movs r7, #0xb8
	lsls r7, r7, #1
	adds r0, r1, r7
	cmp r3, r0
	bgt _0808CCFE
	adds r0, r1, #0
	subs r0, #0x80
	cmp r3, r0
	blt _0808CCFE
	movs r0, #2
	ldrsh r1, [r4, r0]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r2, r0
	bgt _0808CCFE
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _0808CD48
_0808CCFE:
	ldr r4, [sp, #0xc]
	ldrh r0, [r4, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0808CD24
	movs r7, #0x18
	ldrsh r0, [r4, r7]
	adds r0, #0x80
	cmp r0, #0
	blt _0808CD24
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808CD48
_0808CD24:
	movs r0, #0xc6
	bl m4aSongNumStop
	mov r1, sl
	ldrb r0, [r1, #8]
	ldr r2, [sp, #0x10]
	strb r0, [r2]
	b _0808D2F8
	.align 2, 0
_0808CD34: .4byte gCurTask
_0808CD38: .4byte 0x0300000C
_0808CD3C: .4byte 0x030000AC
_0808CD40: .4byte 0x030000A4
_0808CD44: .4byte gCamera
_0808CD48:
	movs r2, #0
	lsls r5, r5, #0x10
	str r5, [sp, #0x20]
	lsls r6, r6, #0x10
	str r6, [sp, #0x1c]
	mov r3, sl
	adds r3, #0xac
	str r3, [sp, #0x28]
	ldr r4, _0808CD84 @ =gNumSingleplayerCharacters
	mov ip, r4
	mov r7, sl
	adds r7, #0xb0
	str r7, [sp, #0x2c]
	mov r0, sl
	adds r0, #0xa8
	str r0, [sp, #0x24]
	ldr r4, _0808CD88 @ =gPartner
	movs r1, #0x80
	mov r8, r1
	ldr r3, _0808CD8C @ =gPlayer
	movs r7, #0x27
	adds r7, r7, r3
	mov sb, r7
	asrs r6, r5, #8
	ldr r7, _0808CD90 @ =0x00000404
	ldr r5, [sp, #0x28]
_0808CD7C:
	cmp r2, #0
	beq _0808CD94
	ldr r0, [r4, #0x10]
	b _0808CD96
	.align 2, 0
_0808CD84: .4byte gNumSingleplayerCharacters
_0808CD88: .4byte gPartner
_0808CD8C: .4byte gPlayer
_0808CD90: .4byte 0x00000404
_0808CD94:
	ldr r0, [r3, #0x10]
_0808CD96:
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	bne _0808CDF2
	cmp r2, #0
	bne _0808CDA8
	mov r0, sb
	ldrb r0, [r0]
	str r0, [sp, #0x14]
_0808CDA8:
	mov r0, sl
	adds r0, #0xb2
	ldrb r0, [r0]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0808CDF2
	cmp r2, #0
	beq _0808CDC0
	ldr r0, [r4, #0x10]
	b _0808CDC2
_0808CDC0:
	ldr r0, [r3, #0x10]
_0808CDC2:
	ands r0, r7
	cmp r0, #0
	bne _0808CDDC
	ldr r0, [r5]
	adds r0, r6, r0
	ldr r1, _0808CDD8 @ =0xFFFFD200
	adds r0, r0, r1
	cmp r2, #0
	bne _0808CDE8
	b _0808CDF0
	.align 2, 0
_0808CDD8: .4byte 0xFFFFD200
_0808CDDC:
	ldr r0, [r5]
	adds r0, r6, r0
	ldr r1, _0808CDEC @ =0xFFFFD600
	adds r0, r0, r1
	cmp r2, #0
	beq _0808CDF0
_0808CDE8:
	str r0, [r4, #4]
	b _0808CDF2
	.align 2, 0
_0808CDEC: .4byte 0xFFFFD600
_0808CDF0:
	str r0, [r3, #4]
_0808CDF2:
	adds r2, #1
	mov r1, ip
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	blt _0808CD7C
	ldr r2, [sp, #0x2c]
	ldrb r0, [r2]
	cmp r0, #0
	bne _0808CE08
	b _0808CF88
_0808CE08:
	ldr r3, [sp, #0x20]
	asrs r0, r3, #0x10
	ldr r4, [sp, #0x28]
	ldr r1, [r4]
	asrs r1, r1, #8
	adds r0, r0, r1
	ldr r7, [sp, #0x1c]
	asrs r1, r7, #0x10
	ldr r3, [sp, #0x24]
	ldr r2, [r3]
	asrs r2, r2, #8
	adds r1, r1, r2
	movs r4, #0
	str r4, [sp]
	ldr r7, _0808CE40 @ =sa2__sub_801EE64
	str r7, [sp, #4]
	ldr r2, [sp, #0x14]
	movs r3, #8
	bl sa2__sub_801F07C
	cmp r0, #0
	blt _0808CE44
	mov r1, sl
	adds r1, #0xa4
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	b _0808D15E
	.align 2, 0
_0808CE40: .4byte sa2__sub_801EE64
_0808CE44:
	mov r0, sl
	adds r0, #0xa4
	str r4, [r0]
	ldr r0, [sp, #0x2c]
	strb r4, [r0]
	mov r4, sl
	adds r4, #0xb1
	ldrb r0, [r4]
	cmp r0, #0
	beq _0808CE66
	movs r0, #0xc6
	bl m4aSongNumStart
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	b _0808D15E
_0808CE66:
	movs r5, #0
	ldr r6, _0808CE7C @ =gPartner
	ldr r7, _0808CE80 @ =gPlayer
	adds r3, r6, #0
	adds r3, #0x40
	adds r4, r7, #0
	adds r4, #0x40
_0808CE74:
	cmp r5, #0
	beq _0808CE84
	ldr r0, [r6, #0x10]
	b _0808CE86
	.align 2, 0
_0808CE7C: .4byte gPartner
_0808CE80: .4byte gPlayer
_0808CE84:
	ldr r0, [r7, #0x10]
_0808CE86:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0808CF72
	mov r2, sl
	adds r2, #0xb2
	ldrb r1, [r2]
	asrs r1, r5
	movs r0, #1
	ands r1, r0
	mov r8, r2
	cmp r1, #0
	beq _0808CF72
	cmp r5, #0
	beq _0808CEAC
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r6, #0xa]
	b _0808CEB2
_0808CEAC:
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r7, #0xa]
_0808CEB2:
	ldr r2, _0808CEC4 @ =gPlayer
	mov r0, sl
	adds r0, #0xa0
	ldr r1, [r0]
	mov sb, r0
	cmp r5, #0
	beq _0808CEC8
	strh r1, [r6, #8]
	b _0808CECA
	.align 2, 0
_0808CEC4: .4byte gPlayer
_0808CEC8:
	strh r1, [r2, #8]
_0808CECA:
	mov r1, sb
	ldr r0, [r1]
	cmp r5, #0
	beq _0808CED6
	strh r0, [r6, #0xc]
	b _0808CED8
_0808CED6:
	strh r0, [r2, #0xc]
_0808CED8:
	adds r0, r2, #0
	cmp r5, #0
	beq _0808CEE0
	ldr r0, _0808CEF8 @ =gPartner
_0808CEE0:
	str r3, [sp, #0x30]
	bl Player_TransitionCancelFlyingAndBoost
	ldr r3, [sp, #0x30]
	cmp r5, #0
	beq _0808CEFC
	ldr r0, [r6, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
	b _0808CF06
	.align 2, 0
_0808CEF8: .4byte gPartner
_0808CEFC:
	ldr r0, [r7, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
_0808CF06:
	cmp r5, #0
	beq _0808CF14
	ldr r0, [r6, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r6, #0x10]
	b _0808CF1C
_0808CF14:
	ldr r0, [r7, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r7, #0x10]
_0808CF1C:
	cmp r5, #0
	beq _0808CF26
	movs r0, #0
	str r0, [r6, #0x28]
	b _0808CF28
_0808CF26:
	str r5, [r7, #0x28]
_0808CF28:
	cmp r5, #0
	beq _0808CF3C
	ldr r2, _0808CF38 @ =gPartner + 0x59
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #3
	bne _0808CF46
	b _0808CF58
	.align 2, 0
_0808CF38: .4byte gPartner + 0x59
_0808CF3C:
	ldr r1, _0808CF50 @ =gPlayer + 0x59
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #3
	beq _0808CF58
_0808CF46:
	cmp r5, #0
	beq _0808CF54
	movs r0, #5
	strb r0, [r3]
	b _0808CF66
	.align 2, 0
_0808CF50: .4byte gPlayer + 0x59
_0808CF54:
	movs r0, #5
	b _0808CF64
_0808CF58:
	cmp r5, #0
	beq _0808CF62
	movs r0, #0x55
	strb r0, [r3]
	b _0808CF66
_0808CF62:
	movs r0, #0x55
_0808CF64:
	strb r0, [r4]
_0808CF66:
	movs r1, #1
	lsls r1, r5
	mov r2, r8
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
_0808CF72:
	adds r5, #1
	ldr r0, _0808CF84 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	bge _0808CF82
	b _0808CE74
_0808CF82:
	b _0808D2B2
	.align 2, 0
_0808CF84: .4byte gNumSingleplayerCharacters
_0808CF88:
	ldr r2, [sp, #0x20]
	asrs r0, r2, #0x10
	ldr r3, [sp, #0x28]
	ldr r1, [r3]
	asrs r1, r1, #8
	adds r0, r0, r1
	ldr r4, [sp, #0x1c]
	asrs r1, r4, #0x10
	ldr r7, [sp, #0x24]
	ldr r2, [r7]
	asrs r2, r2, #8
	adds r1, r1, r2
	add r2, sp, #8
	str r2, [sp]
	ldr r3, _0808CFEC @ =sa2__sub_801EE64
	str r3, [sp, #4]
	ldr r2, [sp, #0x14]
	movs r3, #8
	bl sa2__sub_801E4E4
	cmp r0, #5
	ble _0808D03E
	movs r0, #0xc6
	bl m4aSongNumStop
	ldr r0, _0808CFF0 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	cmp r0, #3
	beq _0808D006
	mov r6, sl
	adds r6, #0xa4
	ldr r5, [r6]
	mov r4, sl
	adds r4, #0xa0
	ldr r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	movs r1, #5
	bl Div
	mov sb, r4
	cmp r0, #0
	bge _0808CFF4
	ldr r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	b _0808D02C
	.align 2, 0
_0808CFEC: .4byte sa2__sub_801EE64
_0808CFF0: .4byte gCurrentLevel
_0808CFF4:
	mov r4, sb
	ldr r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
_0808CFFC:
	movs r1, #5
	bl Div
	subs r0, r5, r0
	b _0808D034
_0808D006:
	mov r6, sl
	adds r6, #0xa4
	ldr r5, [r6]
	mov r4, sl
	adds r4, #0xa0
	ldr r0, [r4]
	lsls r0, r0, #1
	movs r1, #5
	bl Div
	mov sb, r4
	cmp r0, #0
	bge _0808D026
	ldr r0, [r4]
	lsls r0, r0, #1
	b _0808CFFC
_0808D026:
	mov r7, sb
	ldr r0, [r7]
	lsls r0, r0, #1
_0808D02C:
	movs r1, #5
	bl Div
	adds r0, r5, r0
_0808D034:
	str r0, [r6]
	movs r0, #1
	ldr r1, [sp, #0x2c]
	strb r0, [r1]
	b _0808D15E
_0808D03E:
	movs r5, #0
	movs r2, #0xa0
	add r2, sl
	mov sb, r2
	mov r4, sl
	adds r4, #0xb3
	ldr r2, _0808D060 @ =gSineTable
	adds r0, #3
	str r0, [sp, #0x18]
	ldr r7, _0808D064 @ =gPartner
	ldr r6, _0808D068 @ =gPlayer
	mov r8, r2
_0808D056:
	cmp r5, #0
	beq _0808D06C
	ldr r0, [r7, #0x10]
	b _0808D06E
	.align 2, 0
_0808D060: .4byte gSineTable
_0808D064: .4byte gPartner
_0808D068: .4byte gPlayer
_0808D06C:
	ldr r0, [r6, #0x10]
_0808D06E:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0808D0F0
	mov r0, sl
	adds r0, #0xb2
	ldrb r0, [r0]
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0808D0F0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0808D0BE
	add r0, sp, #8
	ldrb r0, [r0]
	lsls r0, r0, #3
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _0808D0B4 @ =0x000017B6
	bl Div
	adds r1, r0, #0
	cmp r5, #0
	beq _0808D0B8
	ldr r0, [r7]
	adds r0, r0, r1
	str r0, [r7]
	b _0808D0EE
	.align 2, 0
_0808D0B4: .4byte 0x000017B6
_0808D0B8:
	ldr r0, [r6]
	adds r0, r0, r1
	b _0808D0EC
_0808D0BE:
	add r0, sp, #8
	ldrb r0, [r0]
	lsls r0, r0, #3
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	add r0, r8
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r1, _0808D0E4 @ =0x000017B6
	bl Div
	adds r1, r0, #0
	cmp r5, #0
	beq _0808D0E8
	ldr r0, [r7]
	subs r0, r0, r1
	str r0, [r7]
	b _0808D0EE
	.align 2, 0
_0808D0E4: .4byte 0x000017B6
_0808D0E8:
	ldr r0, [r6]
	subs r0, r0, r1
_0808D0EC:
	str r0, [r6]
_0808D0EE:
	ldr r2, _0808D128 @ =gSineTable
_0808D0F0:
	adds r5, #1
	ldr r0, _0808D12C @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	blt _0808D056
	ldrb r0, [r4]
	cmp r0, #0
	beq _0808D130
	add r0, sp, #8
	ldrb r0, [r0]
	lsls r0, r0, #3
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r0, r4
	adds r0, r0, r2
	movs r7, #0
	ldrsh r0, [r0, r7]
	movs r1, #0xb4
	lsls r1, r1, #3
	bl Div
	mov r2, sb
	ldr r1, [r2]
	subs r1, r1, r0
	str r1, [r2]
	b _0808D152
	.align 2, 0
_0808D128: .4byte gSineTable
_0808D12C: .4byte gNumSingleplayerCharacters
_0808D130:
	add r0, sp, #8
	ldrb r0, [r0]
	lsls r0, r0, #3
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r0, r0, r2
	movs r4, #0
	ldrsh r0, [r0, r4]
	movs r1, #0xb4
	lsls r1, r1, #3
	bl Div
	mov r7, sb
	ldr r1, [r7]
	adds r1, r1, r0
	str r1, [r7]
_0808D152:
	ldr r0, [sp, #0x18]
	lsls r1, r0, #8
	ldr r2, [sp, #0x28]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
_0808D15E:
	ldr r3, [sp, #0x1c]
	asrs r0, r3, #0x10
	ldr r4, [sp, #0x24]
	ldr r1, [r4]
	asrs r1, r1, #8
	adds r0, r0, r1
	adds r0, #0x12
	ldr r7, [sp, #0x20]
	asrs r1, r7, #0x10
	ldr r3, [sp, #0x28]
	ldr r2, [r3]
	asrs r2, r2, #8
	adds r1, r1, r2
	subs r1, #0x1e
	add r4, sp, #8
	str r4, [sp]
	ldr r2, _0808D1A8 @ =sa2__sub_801ED24
	str r2, [sp, #4]
	ldr r2, [sp, #0x14]
	movs r3, #8
	bl sa2__sub_801F07C
	cmp r0, #0
	blt _0808D190
	b _0808D314
_0808D190:
	movs r5, #0
	ldr r6, _0808D1AC @ =gPartner
	ldr r7, _0808D1B0 @ =gPlayer
	adds r3, r6, #0
	adds r3, #0x40
	adds r4, r7, #0
	adds r4, #0x40
_0808D19E:
	cmp r5, #0
	beq _0808D1B4
	ldr r0, [r6, #0x10]
	b _0808D1B6
	.align 2, 0
_0808D1A8: .4byte sa2__sub_801ED24
_0808D1AC: .4byte gPartner
_0808D1B0: .4byte gPlayer
_0808D1B4:
	ldr r0, [r7, #0x10]
_0808D1B6:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0808D2A2
	mov r2, sl
	adds r2, #0xb2
	ldrb r1, [r2]
	asrs r1, r5
	movs r0, #1
	ands r1, r0
	mov r8, r2
	cmp r1, #0
	beq _0808D2A2
	cmp r5, #0
	beq _0808D1DC
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r6, #0xa]
	b _0808D1E2
_0808D1DC:
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r7, #0xa]
_0808D1E2:
	ldr r2, _0808D1F4 @ =gPlayer
	mov r0, sl
	adds r0, #0xa0
	ldr r1, [r0]
	mov sb, r0
	cmp r5, #0
	beq _0808D1F8
	strh r1, [r6, #8]
	b _0808D1FA
	.align 2, 0
_0808D1F4: .4byte gPlayer
_0808D1F8:
	strh r1, [r2, #8]
_0808D1FA:
	mov r1, sb
	ldr r0, [r1]
	cmp r5, #0
	beq _0808D206
	strh r0, [r6, #0xc]
	b _0808D208
_0808D206:
	strh r0, [r2, #0xc]
_0808D208:
	adds r0, r2, #0
	cmp r5, #0
	beq _0808D210
	ldr r0, _0808D228 @ =gPartner
_0808D210:
	str r3, [sp, #0x30]
	bl Player_TransitionCancelFlyingAndBoost
	ldr r3, [sp, #0x30]
	cmp r5, #0
	beq _0808D22C
	ldr r0, [r6, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
	b _0808D236
	.align 2, 0
_0808D228: .4byte gPartner
_0808D22C:
	ldr r0, [r7, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
_0808D236:
	cmp r5, #0
	beq _0808D244
	ldr r0, [r6, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r6, #0x10]
	b _0808D24C
_0808D244:
	ldr r0, [r7, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r7, #0x10]
_0808D24C:
	cmp r5, #0
	beq _0808D256
	movs r0, #0
	str r0, [r6, #0x28]
	b _0808D258
_0808D256:
	str r5, [r7, #0x28]
_0808D258:
	cmp r5, #0
	beq _0808D26C
	ldr r2, _0808D268 @ =gPartner + 0x59
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #3
	bne _0808D276
	b _0808D288
	.align 2, 0
_0808D268: .4byte gPartner + 0x59
_0808D26C:
	ldr r1, _0808D280 @ =gPlayer + 0x59
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #3
	beq _0808D288
_0808D276:
	cmp r5, #0
	beq _0808D284
	movs r0, #5
	strb r0, [r3]
	b _0808D296
	.align 2, 0
_0808D280: .4byte gPlayer + 0x59
_0808D284:
	movs r0, #5
	b _0808D294
_0808D288:
	cmp r5, #0
	beq _0808D292
	movs r0, #0x55
	strb r0, [r3]
	b _0808D296
_0808D292:
	movs r0, #0x55
_0808D294:
	strb r0, [r4]
_0808D296:
	movs r1, #1
	lsls r1, r5
	mov r2, r8
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
_0808D2A2:
	adds r5, #1
	ldr r0, _0808D304 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	bge _0808D2B2
	b _0808D19E
_0808D2B2:
	movs r0, #0xc6
	bl m4aSongNumStop
	ldr r0, _0808D308 @ =sa2__gUnknown_0300194C
	ldr r3, [sp, #0xc]
	ldrh r2, [r3, #0x16]
	strh r2, [r0]
	ldr r0, _0808D30C @ =sa2__gUnknown_03002820
	ldrh r3, [r3, #0x18]
	strh r3, [r0]
	ldr r4, [sp, #0x24]
	ldr r1, [r4]
	asrs r1, r1, #8
	ldr r7, [sp, #0x1c]
	asrs r0, r7, #0x10
	adds r0, r0, r1
	subs r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x28]
	ldr r2, [r1]
	asrs r2, r2, #8
	ldr r4, [sp, #0x20]
	asrs r1, r4, #0x10
	adds r1, r1, r2
	adds r3, #0x14
	subs r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_808D9E4
	mov r7, sl
	ldrb r0, [r7, #8]
	ldr r1, [sp, #0x10]
	strb r0, [r1]
_0808D2F8:
	ldr r0, _0808D310 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0808D9C0
	.align 2, 0
_0808D304: .4byte gNumSingleplayerCharacters
_0808D308: .4byte sa2__gUnknown_0300194C
_0808D30C: .4byte sa2__gUnknown_03002820
_0808D310: .4byte gCurTask
_0808D314:
	movs r6, #0
	movs r2, #0xa0
	add r2, sl
	mov sb, r2
	ldr r5, _0808D328 @ =gPartner
	ldr r4, _0808D32C @ =gPlayer
_0808D320:
	cmp r6, #0
	beq _0808D330
	ldr r0, [r5, #0x10]
	b _0808D332
	.align 2, 0
_0808D328: .4byte gPartner
_0808D32C: .4byte gPlayer
_0808D330:
	ldr r0, [r4, #0x10]
_0808D332:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808D33C
	b _0808D984
_0808D33C:
	mov r1, sl
	adds r1, #0xb2
	ldrb r0, [r1]
	asrs r0, r6
	movs r3, #1
	ands r0, r3
	mov r8, r1
	cmp r0, #0
	bne _0808D350
	b _0808D84A
_0808D350:
	cmp r6, #0
	beq _0808D360
	ldr r0, [r5, #0x10]
	movs r7, #2
	ands r0, r7
	cmp r0, #0
	bne _0808D36A
	b _0808D378
_0808D360:
	ldr r0, [r4, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0808D378
_0808D36A:
	movs r1, #1
	lsls r1, r6
	mov r2, r8
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
	b _0808D984
_0808D378:
	cmp r6, #0
	beq _0808D388
	ldr r0, [r5, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _0808D392
_0808D388:
	ldr r0, [r4, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
_0808D392:
	cmp r6, #0
	beq _0808D3A4
	ldr r0, [r5, #0x10]
	ldr r1, _0808D3A0 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #0x10]
	b _0808D3AC
	.align 2, 0
_0808D3A0: .4byte 0xFFFFFEFF
_0808D3A4:
	ldr r0, [r4, #0x10]
	ldr r1, _0808D3BC @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #0x10]
_0808D3AC:
	cmp r6, #0
	beq _0808D3C0
	ldr r0, [r5, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _0808D3CA
	.align 2, 0
_0808D3BC: .4byte 0xFFFFFEFF
_0808D3C0:
	ldr r0, [r4, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
_0808D3CA:
	cmp r6, #0
	beq _0808D3D2
	ldr r0, [r5]
	b _0808D3D4
_0808D3D2:
	ldr r0, [r4]
_0808D3D4:
	asrs r3, r0, #8
	cmp r6, #0
	beq _0808D3DE
	ldr r0, [r5, #4]
	b _0808D3E0
_0808D3DE:
	ldr r0, [r4, #4]
_0808D3E0:
	asrs r1, r0, #8
	cmp r6, #0
	beq _0808D3F0
	ldr r7, _0808D3EC @ =gPartner + 0x27
	ldrb r2, [r7]
	b _0808D3F4
	.align 2, 0
_0808D3EC: .4byte gPartner + 0x27
_0808D3F0:
	ldr r0, _0808D41C @ =gPlayer + 0x27
	ldrb r2, [r0]
_0808D3F4:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0808D420 @ =sa2__sub_801ED24
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	bl sa2__sub_801F07C
	adds r7, r0, #0
	cmp r7, #0
	bge _0808D464
	cmp r6, #0
	beq _0808D424
	ldr r0, [r5, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _0808D42E
	.align 2, 0
_0808D41C: .4byte gPlayer + 0x27
_0808D420: .4byte sa2__sub_801ED24
_0808D424:
	ldr r0, [r4, #0x10]
	movs r2, #9
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r4, #0x10]
_0808D42E:
	cmp r6, #0
	beq _0808D43C
	ldr r0, [r5, #0x10]
	movs r3, #2
	orrs r0, r3
	str r0, [r5, #0x10]
	b _0808D444
_0808D43C:
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
_0808D444:
	movs r1, #1
	lsls r1, r6
	mov r2, r8
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
	lsls r1, r7, #8
	cmp r6, #0
	beq _0808D45E
	ldr r0, [r5]
	adds r0, r0, r1
	str r0, [r5]
	b _0808D464
_0808D45E:
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
_0808D464:
	cmp r6, #0
	beq _0808D46C
	ldr r0, [r5]
	b _0808D46E
_0808D46C:
	ldr r0, [r4]
_0808D46E:
	asrs r3, r0, #8
	cmp r6, #0
	beq _0808D478
	ldr r0, [r5, #4]
	b _0808D47A
_0808D478:
	ldr r0, [r4, #4]
_0808D47A:
	asrs r1, r0, #8
	cmp r6, #0
	beq _0808D48C
	ldr r7, _0808D488 @ =gPartner + 0x27
	ldrb r2, [r7]
	b _0808D490
	.align 2, 0
_0808D488: .4byte gPartner + 0x27
_0808D48C:
	ldr r0, _0808D4B8 @ =gPlayer + 0x27
	ldrb r2, [r0]
_0808D490:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0808D4BC @ =sa2__sub_801ED24
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sa2__sub_801F07C
	adds r7, r0, #0
	cmp r7, #0
	bge _0808D500
	cmp r6, #0
	beq _0808D4C0
	ldr r0, [r5, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _0808D4CA
	.align 2, 0
_0808D4B8: .4byte gPlayer + 0x27
_0808D4BC: .4byte sa2__sub_801ED24
_0808D4C0:
	ldr r0, [r4, #0x10]
	movs r2, #9
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r4, #0x10]
_0808D4CA:
	cmp r6, #0
	beq _0808D4D8
	ldr r0, [r5, #0x10]
	movs r3, #2
	orrs r0, r3
	str r0, [r5, #0x10]
	b _0808D4E0
_0808D4D8:
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
_0808D4E0:
	movs r1, #1
	lsls r1, r6
	mov r2, r8
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
	lsls r1, r7, #8
	cmp r6, #0
	beq _0808D4FA
	ldr r0, [r5]
	subs r0, r0, r1
	str r0, [r5]
	b _0808D500
_0808D4FA:
	ldr r0, [r4]
	subs r0, r0, r1
	str r0, [r4]
_0808D500:
	ldr r3, [sp, #0x24]
	ldr r1, [r3]
	asrs r1, r1, #8
	ldr r7, [sp, #0x1c]
	asrs r0, r7, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	ldr r0, [sp, #0x28]
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r2, [sp, #0x20]
	asrs r0, r2, #0x10
	adds r0, r0, r1
	subs r0, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r3, _0808D54C @ =gPlayer
	cmp r6, #0
	beq _0808D52A
	ldr r3, _0808D550 @ =gPartner
_0808D52A:
	ldr r0, [sp, #0xc]
	adds r1, r7, #0
	bl Coll_Player_Entity_Intersection
	cmp r0, #0
	bne _0808D538
	b _0808D7F6
_0808D538:
	mov r3, sb
	ldr r0, [r3]
	lsls r1, r0, #1
	cmp r6, #0
	beq _0808D554
	ldr r0, [r5]
	adds r0, r0, r1
	str r0, [r5]
	b _0808D55A
	.align 2, 0
_0808D54C: .4byte gPlayer
_0808D550: .4byte gPartner
_0808D554:
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
_0808D55A:
	mov r7, sb
	ldr r0, [r7]
	lsls r1, r0, #1
	cmp r6, #0
	beq _0808D568
	ldr r0, [r5]
	b _0808D56A
_0808D568:
	ldr r0, [r4]
_0808D56A:
	adds r0, r0, r1
	asrs r3, r0, #8
	cmp r6, #0
	beq _0808D576
	ldr r0, [r5, #4]
	b _0808D578
_0808D576:
	ldr r0, [r4, #4]
_0808D578:
	asrs r1, r0, #8
	cmp r6, #0
	beq _0808D588
	ldr r0, _0808D584 @ =gPartner + 0x27
	ldrb r2, [r0]
	b _0808D58C
	.align 2, 0
_0808D584: .4byte gPartner + 0x27
_0808D588:
	ldr r7, _0808D5C0 @ =gPlayer + 0x27
	ldrb r2, [r7]
_0808D58C:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0808D5C4 @ =sa2__sub_801ED24
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	bl sa2__sub_801E4E4
	adds r7, r0, #0
	cmp r7, #0
	bge _0808D67A
	ldr r0, _0808D5C8 @ =gPlayer
	cmp r6, #0
	beq _0808D5AA
	ldr r0, _0808D5CC @ =gPartner
_0808D5AA:
	bl Player_TransitionCancelFlyingAndBoost
	cmp r6, #0
	beq _0808D5D0
	ldr r0, [r5, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _0808D5DA
	.align 2, 0
_0808D5C0: .4byte gPlayer + 0x27
_0808D5C4: .4byte sa2__sub_801ED24
_0808D5C8: .4byte gPlayer
_0808D5CC: .4byte gPartner
_0808D5D0:
	ldr r0, [r4, #0x10]
	movs r2, #9
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r4, #0x10]
_0808D5DA:
	cmp r6, #0
	beq _0808D5E8
	ldr r0, [r5, #0x10]
	movs r3, #2
	orrs r0, r3
	str r0, [r5, #0x10]
	b _0808D5F0
_0808D5E8:
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
_0808D5F0:
	cmp r6, #0
	beq _0808D604
	ldr r2, _0808D600 @ =gPartner + 0x59
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #3
	bne _0808D60E
	b _0808D62C
	.align 2, 0
_0808D600: .4byte gPartner + 0x59
_0808D604:
	ldr r3, _0808D618 @ =gPlayer + 0x59
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #3
	beq _0808D62C
_0808D60E:
	cmp r6, #0
	beq _0808D620
	movs r0, #5
	ldr r1, _0808D61C @ =gPartner + 0x40
	b _0808D640
	.align 2, 0
_0808D618: .4byte gPlayer + 0x59
_0808D61C: .4byte gPartner + 0x40
_0808D620:
	movs r0, #5
	ldr r2, _0808D628 @ =gPlayer + 0x40
	strb r0, [r2]
	b _0808D642
	.align 2, 0
_0808D628: .4byte gPlayer + 0x40
_0808D62C:
	cmp r6, #0
	beq _0808D63C
	movs r0, #0x55
	ldr r3, _0808D638 @ =gPartner + 0x40
	strb r0, [r3]
	b _0808D642
	.align 2, 0
_0808D638: .4byte gPartner + 0x40
_0808D63C:
	movs r0, #0x55
	ldr r1, _0808D64C @ =gPlayer + 0x40
_0808D640:
	strb r0, [r1]
_0808D642:
	cmp r6, #0
	beq _0808D650
	movs r0, #0
	str r0, [r5, #0x28]
	b _0808D652
	.align 2, 0
_0808D64C: .4byte gPlayer + 0x40
_0808D650:
	str r6, [r4, #0x28]
_0808D652:
	movs r1, #1
	lsls r1, r6
	mov r2, r8
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
	lsls r1, r7, #8
	cmp r6, #0
	beq _0808D66C
	ldr r0, [r5]
	adds r0, r0, r1
	str r0, [r5]
	b _0808D672
_0808D66C:
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
_0808D672:
	cmp r6, #0
	beq _0808D678
	b _0808D796
_0808D678:
	b _0808D79C
_0808D67A:
	mov r3, sb
	ldr r0, [r3]
	lsls r1, r0, #1
	cmp r6, #0
	beq _0808D688
	ldr r0, [r5]
	b _0808D68A
_0808D688:
	ldr r0, [r4]
_0808D68A:
	adds r0, r0, r1
	asrs r3, r0, #8
	cmp r6, #0
	beq _0808D696
	ldr r0, [r5, #4]
	b _0808D698
_0808D696:
	ldr r0, [r4, #4]
_0808D698:
	asrs r1, r0, #8
	cmp r6, #0
	beq _0808D6A8
	ldr r7, _0808D6A4 @ =gPartner + 0x27
	ldrb r2, [r7]
	b _0808D6AC
	.align 2, 0
_0808D6A4: .4byte gPartner + 0x27
_0808D6A8:
	ldr r0, _0808D6E0 @ =gPlayer + 0x27
	ldrb r2, [r0]
_0808D6AC:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0808D6E4 @ =sa2__sub_801ED24
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sa2__sub_801E4E4
	adds r7, r0, #0
	cmp r7, #0
	bge _0808D79E
	ldr r0, _0808D6E8 @ =gPlayer
	cmp r6, #0
	beq _0808D6CC
	ldr r0, _0808D6EC @ =gPartner
_0808D6CC:
	bl Player_TransitionCancelFlyingAndBoost
	cmp r6, #0
	beq _0808D6F0
	ldr r0, [r5, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _0808D6FA
	.align 2, 0
_0808D6E0: .4byte gPlayer + 0x27
_0808D6E4: .4byte sa2__sub_801ED24
_0808D6E8: .4byte gPlayer
_0808D6EC: .4byte gPartner
_0808D6F0:
	ldr r0, [r4, #0x10]
	movs r2, #9
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r4, #0x10]
_0808D6FA:
	cmp r6, #0
	beq _0808D708
	ldr r0, [r5, #0x10]
	movs r3, #2
	orrs r0, r3
	str r0, [r5, #0x10]
	b _0808D710
_0808D708:
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
_0808D710:
	cmp r6, #0
	beq _0808D724
	ldr r2, _0808D720 @ =gPartner + 0x59
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #3
	bne _0808D72E
	b _0808D74C
	.align 2, 0
_0808D720: .4byte gPartner + 0x59
_0808D724:
	ldr r3, _0808D738 @ =gPlayer + 0x59
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #3
	beq _0808D74C
_0808D72E:
	cmp r6, #0
	beq _0808D740
	movs r0, #5
	ldr r1, _0808D73C @ =gPartner + 0x40
	b _0808D760
	.align 2, 0
_0808D738: .4byte gPlayer + 0x59
_0808D73C: .4byte gPartner + 0x40
_0808D740:
	movs r0, #5
	ldr r2, _0808D748 @ =gPlayer + 0x40
	strb r0, [r2]
	b _0808D762
	.align 2, 0
_0808D748: .4byte gPlayer + 0x40
_0808D74C:
	cmp r6, #0
	beq _0808D75C
	movs r0, #0x55
	ldr r3, _0808D758 @ =gPartner + 0x40
	strb r0, [r3]
	b _0808D762
	.align 2, 0
_0808D758: .4byte gPartner + 0x40
_0808D75C:
	movs r0, #0x55
	ldr r1, _0808D76C @ =gPlayer + 0x40
_0808D760:
	strb r0, [r1]
_0808D762:
	cmp r6, #0
	beq _0808D770
	movs r0, #0
	str r0, [r5, #0x28]
	b _0808D772
	.align 2, 0
_0808D76C: .4byte gPlayer + 0x40
_0808D770:
	str r6, [r4, #0x28]
_0808D772:
	movs r1, #1
	lsls r1, r6
	mov r2, r8
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
	lsls r1, r7, #8
	cmp r6, #0
	beq _0808D78C
	ldr r0, [r5]
	subs r0, r0, r1
	str r0, [r5]
	b _0808D792
_0808D78C:
	ldr r0, [r4]
	subs r0, r0, r1
	str r0, [r4]
_0808D792:
	cmp r6, #0
	beq _0808D79C
_0808D796:
	movs r0, #0
	strh r0, [r5, #8]
	b _0808D79E
_0808D79C:
	strh r6, [r4, #8]
_0808D79E:
	cmp r6, #0
	beq _0808D7A6
	ldr r0, [r5, #0x10]
	b _0808D7A8
_0808D7A6:
	ldr r0, [r4, #0x10]
_0808D7A8:
	ldr r1, _0808D7C0 @ =0x00000404
	ands r0, r1
	cmp r0, #0
	bne _0808D7D6
	ldr r0, _0808D7C4 @ =gCamera
	movs r3, #2
	ldrsh r1, [r0, r3]
	cmp r6, #0
	beq _0808D7C8
	ldr r0, [r5, #4]
	b _0808D7CA
	.align 2, 0
_0808D7C0: .4byte 0x00000404
_0808D7C4: .4byte gCamera
_0808D7C8:
	ldr r0, [r4, #4]
_0808D7CA:
	asrs r0, r0, #8
	subs r0, r0, r1
	adds r0, #0x2e
	ldr r7, [sp, #0xc]
	strh r0, [r7, #0x18]
	b _0808D984
_0808D7D6:
	ldr r0, _0808D7E4 @ =gCamera
	movs r2, #2
	ldrsh r1, [r0, r2]
	cmp r6, #0
	beq _0808D7E8
	ldr r0, [r5, #4]
	b _0808D7EA
	.align 2, 0
_0808D7E4: .4byte gCamera
_0808D7E8:
	ldr r0, [r4, #4]
_0808D7EA:
	asrs r0, r0, #8
	subs r0, r0, r1
	adds r0, #0x2a
	ldr r3, [sp, #0xc]
	strh r0, [r3, #0x18]
	b _0808D984
_0808D7F6:
	ldr r0, _0808D814 @ =gPlayer
	cmp r6, #0
	beq _0808D7FE
	ldr r0, _0808D818 @ =gPartner
_0808D7FE:
	bl Player_TransitionCancelFlyingAndBoost
	cmp r6, #0
	beq _0808D81C
	ldr r0, [r5, #0x10]
	movs r7, #9
	rsbs r7, r7, #0
	ands r0, r7
	str r0, [r5, #0x10]
	b _0808D826
	.align 2, 0
_0808D814: .4byte gPlayer
_0808D818: .4byte gPartner
_0808D81C:
	ldr r0, [r4, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
_0808D826:
	cmp r6, #0
	beq _0808D834
	ldr r0, [r5, #0x10]
	movs r2, #2
	orrs r0, r2
	str r0, [r5, #0x10]
	b _0808D83C
_0808D834:
	ldr r0, [r4, #0x10]
	movs r3, #2
	orrs r0, r3
	str r0, [r4, #0x10]
_0808D83C:
	movs r1, #1
	lsls r1, r6
	mov r7, r8
	ldrb r0, [r7]
	bics r0, r1
	strb r0, [r7]
	b _0808D984
_0808D84A:
	ldr r0, [sp, #0x24]
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r2, [sp, #0x1c]
	asrs r0, r2, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	ldr r3, [sp, #0x28]
	ldr r1, [r3]
	asrs r1, r1, #8
	ldr r2, [sp, #0x20]
	asrs r0, r2, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r3, _0808D894 @ =gPlayer
	cmp r6, #0
	beq _0808D872
	ldr r3, _0808D898 @ =gPartner
_0808D872:
	ldr r0, [sp, #0xc]
	adds r1, r7, #0
	bl sub_800B2BC
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	bne _0808D884
	b _0808D984
_0808D884:
	cmp r6, #0
	beq _0808D89C
	ldr r0, [r5, #4]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r5, #4]
	b _0808D8A6
	.align 2, 0
_0808D894: .4byte gPlayer
_0808D898: .4byte gPartner
_0808D89C:
	ldr r0, [r4, #4]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r0, r7
	str r0, [r4, #4]
_0808D8A6:
	movs r0, #1
	lsls r0, r6
	mov r2, r8
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0808D8CC @ =gPlayer
	cmp r6, #0
	beq _0808D8BA
	ldr r0, _0808D8D0 @ =gPartner
_0808D8BA:
	bl Player_TransitionCancelFlyingAndBoost
	cmp r6, #0
	beq _0808D8D4
	ldr r0, [r5, #0x10]
	movs r1, #8
	orrs r0, r1
	str r0, [r5, #0x10]
	b _0808D8DC
	.align 2, 0
_0808D8CC: .4byte gPlayer
_0808D8D0: .4byte gPartner
_0808D8D4:
	ldr r0, [r4, #0x10]
	movs r1, #8
	orrs r0, r1
	str r0, [r4, #0x10]
_0808D8DC:
	cmp r6, #0
	beq _0808D8EC
	ldr r0, [r5, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _0808D8F6
_0808D8EC:
	ldr r0, [r4, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
_0808D8F6:
	cmp r6, #0
	beq _0808D908
	ldr r0, [r5, #0x10]
	ldr r1, _0808D904 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #0x10]
	b _0808D910
	.align 2, 0
_0808D904: .4byte 0xFFFFFEFF
_0808D908:
	ldr r0, [r4, #0x10]
	ldr r1, _0808D920 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #0x10]
_0808D910:
	cmp r6, #0
	beq _0808D924
	ldr r0, [r5, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _0808D92E
	.align 2, 0
_0808D920: .4byte 0xFFFFFEFF
_0808D924:
	ldr r0, [r4, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
_0808D92E:
	cmp r6, #0
	beq _0808D93E
	ldr r0, [r5, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _0808D948
_0808D93E:
	ldr r0, [r4, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
_0808D948:
	cmp r6, #0
	beq _0808D958
	movs r0, #4
	ldr r3, _0808D954 @ =gPartner + 0x40
	strb r0, [r3]
	b _0808D95E
	.align 2, 0
_0808D954: .4byte gPartner + 0x40
_0808D958:
	movs r0, #4
	ldr r7, _0808D9D0 @ =gPlayer + 0x40
	strb r0, [r7]
_0808D95E:
	ldr r0, _0808D9D4 @ =gPlayer
	cmp r6, #0
	beq _0808D966
	ldr r0, _0808D9D8 @ =gPartner
_0808D966:
	movs r1, #0xe
	bl sa2__sub_8023B5C
	ldr r1, _0808D9D4 @ =gPlayer
	cmp r6, #0
	beq _0808D974
	ldr r1, _0808D9D8 @ =gPartner
_0808D974:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _0808D9D4 @ =gPlayer
	cmp r6, #0
	beq _0808D980
	ldr r1, _0808D9D8 @ =gPartner
_0808D980:
	movs r0, #0xe
	strb r0, [r1, #0xf]
_0808D984:
	adds r6, #1
	ldr r0, _0808D9DC @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r6, r0
	bge _0808D994
	b _0808D320
_0808D994:
	mov r0, sb
	ldr r1, [r0]
	lsls r1, r1, #1
	ldr r2, [sp, #0x24]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	asrs r0, r0, #8
	ldr r3, [sp, #0x1c]
	asrs r1, r3, #0x10
	adds r1, r1, r0
	ldr r0, _0808D9E0 @ =gCamera
	ldrh r0, [r0]
	subs r1, r1, r0
	ldr r4, [sp, #0xc]
	strh r1, [r4, #0x16]
	ldr r0, [sp, #0xc]
	bl UpdateSpriteAnimation
	ldr r0, [sp, #0xc]
	bl DisplaySprite
_0808D9C0:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808D9D0: .4byte gPlayer + 0x40
_0808D9D4: .4byte gPlayer
_0808D9D8: .4byte gPartner
_0808D9DC: .4byte gNumSingleplayerCharacters
_0808D9E0: .4byte gCamera

	thumb_func_start sub_808D9E4
sub_808D9E4: @ 0x0808D9E4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r0, _0808DA44 @ =sub_808DB9C
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _0808DA48 @ =TaskDestructors_808DE34
	str r1, [sp]
	movs r1, #0xf4
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	adds r0, #0xc0
	adds r5, r6, r0
	adds r0, #0x30
	adds r1, r6, r0
	movs r0, #0
	mov r8, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0808DA4C @ =0x030000F2
	adds r1, r6, r0
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r1]
	ldr r0, _0808DA50 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	cmp r0, #3
	bne _0808DA58
	movs r0, #1
	bl VramMalloc
	str r0, [r4, #4]
	ldr r0, _0808DA54 @ =0x0000022A
	b _0808DA62
	.align 2, 0
_0808DA44: .4byte sub_808DB9C
_0808DA48: .4byte TaskDestructors_808DE34
_0808DA4C: .4byte 0x030000F2
_0808DA50: .4byte gCurrentLevel
_0808DA54: .4byte 0x0000022A
_0808DA58:
	movs r0, #1
	bl VramMalloc
	str r0, [r4, #4]
	ldr r0, _0808DAF4 @ =0x00000225
_0808DA62:
	strh r0, [r4, #0xa]
	ldr r1, _0808DAF8 @ =0x03000020
	adds r0, r6, r1
	mov r1, r8
	strb r1, [r0]
	movs r6, #0
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x1a]
	strh r1, [r4, #8]
	strh r1, [r4, #0x14]
	strh r1, [r4, #0x1c]
	adds r2, r4, #0
	adds r2, #0x21
	movs r0, #0xff
	strb r0, [r2]
	adds r2, #1
	movs r0, #0x10
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x25
	strb r6, [r0]
	movs r0, #0x6c
	str r0, [r4, #0x10]
	strh r1, [r5]
	movs r0, #0xc0
	strh r0, [r5, #2]
	strh r0, [r5, #4]
	mov r0, sb
	strh r0, [r5, #6]
	strh r7, [r5, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r1, _0808DAFC @ =0x040000D4
	str r4, [r1]
	adds r4, #0x30
	str r4, [r1, #4]
	ldr r0, _0808DB00 @ =0x80000018
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	str r5, [r1]
	adds r5, #0xc
	str r5, [r1, #4]
	ldr r2, _0808DB04 @ =0x80000006
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0x6d
	str r0, [r4, #0x10]
	lsls r3, r7, #0x10
	asrs r0, r3, #0x10
	subs r0, #0x10
	strh r0, [r5, #8]
	adds r4, #0x30
	str r5, [r1]
	adds r5, #0xc
	str r5, [r1, #4]
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0808DB08 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	mov r8, r3
	cmp r0, #3
	bne _0808DB10
	movs r0, #0x40
	bl VramMalloc
	str r0, [r4, #4]
	ldr r0, _0808DB0C @ =0x00000229
	b _0808DB1C
	.align 2, 0
_0808DAF4: .4byte 0x00000225
_0808DAF8: .4byte 0x03000020
_0808DAFC: .4byte 0x040000D4
_0808DB00: .4byte 0x80000018
_0808DB04: .4byte 0x80000006
_0808DB08: .4byte gCurrentLevel
_0808DB0C: .4byte 0x00000229
_0808DB10:
	movs r0, #0x10
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0x89
	lsls r0, r0, #2
_0808DB1C:
	strh r0, [r4, #0xa]
	adds r0, r4, #0
	adds r0, #0x20
	strb r6, [r0]
	movs r2, #0
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x1a]
	strh r1, [r4, #8]
	strh r1, [r4, #0x14]
	strh r1, [r4, #0x1c]
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x25
	strb r2, [r0]
	movs r0, #0x6e
	str r0, [r4, #0x10]
	strh r7, [r5, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r0, _0808DB90 @ =0x040000D4
	str r4, [r0]
	adds r4, #0x30
	str r4, [r0, #4]
	ldr r1, _0808DB94 @ =0x80000018
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r5, [r0]
	adds r5, #0xc
	str r5, [r0, #4]
	ldr r1, _0808DB98 @ =0x80000006
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r0, #0x6f
	str r0, [r4, #0x10]
	mov r1, r8
	asrs r0, r1, #0x10
	subs r0, #0x10
	strh r0, [r5, #8]
	movs r0, #0x8f
	bl m4aSongNumStart
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808DB90: .4byte 0x040000D4
_0808DB94: .4byte 0x80000018
_0808DB98: .4byte 0x80000006

	thumb_func_start sub_808DB9C
sub_808DB9C: @ 0x0808DB9C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _0808DBD4 @ =gCurTask
	ldr r2, [r0]
	ldrh r4, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r4, r0
	adds r0, #0xf0
	adds r0, r4, r0
	str r0, [sp]
	ldrh r0, [r0]
	adds r1, r0, #1
	ldr r5, [sp]
	strh r1, [r5]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bls _0808DBD8
	adds r0, r2, #0
	bl TaskDestroy
	b _0808DDDC
	.align 2, 0
_0808DBD4: .4byte gCurTask
_0808DBD8:
	ldr r0, _0808DDEC @ =0x030000F2
	adds r0, r4, r0
	str r0, [sp, #4]
	ldrh r0, [r0]
	adds r0, #0x28
	ldr r1, [sp, #4]
	strh r0, [r1]
	ldr r2, _0808DDF0 @ =0x030000C0
	adds r7, r4, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r5, [r7, #8]
	adds r0, r0, r5
	strh r0, [r7, #8]
	ldrh r6, [r7, #6]
	ldrh r1, [r7, #8]
	mov r8, r1
	ldr r2, _0808DDF4 @ =gCamera
	mov sl, r2
	ldrh r2, [r2]
	subs r2, r6, r2
	strh r2, [r7, #6]
	mov r5, sl
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	strh r0, [r7, #8]
	ldr r1, [sp]
	ldrh r0, [r1]
	lsls r0, r0, #1
	subs r2, r2, r0
	strh r2, [r7, #6]
	ldrh r0, [r7, #2]
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #2
	cmp r0, r1
	ble _0808DC2A
	adds r5, r1, #0
_0808DC2A:
	strh r5, [r7, #2]
	strh r5, [r7, #4]
	ldrh r0, [r7]
	subs r0, #0x2a
	ldr r2, _0808DDF8 @ =0x000003FF
	ands r0, r2
	strh r0, [r7]
	ldr r0, [r3, #0x10]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r2, _0808DDFC @ =sa2__gUnknown_030054B8
	mov sb, r2
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r3, #0x10]
	orrs r0, r1
	str r0, [r3, #0x10]
	adds r0, r3, #0
	adds r1, r7, #0
	str r3, [sp, #8]
	bl sa2__sub_8004E14
	ldr r3, [sp, #8]
	adds r0, r3, #0
	bl DisplaySprite
	strh r6, [r7, #6]
	mov r0, r8
	strh r0, [r7, #8]
	ldr r1, _0808DE00 @ =0x03000030
	adds r3, r4, r1
	ldr r2, _0808DE04 @ =0x030000CC
	adds r7, r4, r2
	ldr r1, [sp, #4]
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r2, [r7, #8]
	adds r0, r0, r2
	strh r0, [r7, #8]
	ldrh r6, [r7, #6]
	ldrh r1, [r7, #8]
	mov r8, r1
	mov r1, sl
	ldrh r2, [r1]
	subs r2, r6, r2
	str r2, [sp, #0xc]
	strh r2, [r7, #6]
	ldrh r1, [r1, #2]
	mov ip, r1
	mov r2, ip
	subs r0, r0, r2
	strh r0, [r7, #8]
	ldr r1, [sp]
	ldrh r0, [r1]
	ldr r1, [sp, #0xc]
	adds r2, r1, r0
	strh r2, [r7, #6]
	strh r5, [r7, #2]
	strh r5, [r7, #4]
	ldrh r0, [r7]
	adds r0, #0x2a
	ldr r2, _0808DDF8 @ =0x000003FF
	ands r0, r2
	strh r0, [r7]
	ldr r0, [r3, #0x10]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #0x10]
	mov r2, sb
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r3, #0x10]
	orrs r0, r1
	str r0, [r3, #0x10]
	adds r0, r3, #0
	adds r1, r7, #0
	str r3, [sp, #8]
	bl sa2__sub_8004E14
	ldr r3, [sp, #8]
	adds r0, r3, #0
	bl DisplaySprite
	strh r6, [r7, #6]
	mov r0, r8
	strh r0, [r7, #8]
	ldr r1, _0808DE08 @ =0x03000060
	adds r3, r4, r1
	ldr r2, _0808DE0C @ =0x030000D8
	adds r7, r4, r2
	ldr r1, [sp, #4]
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r2, [r7, #8]
	adds r0, r0, r2
	strh r0, [r7, #8]
	ldrh r6, [r7, #6]
	ldrh r1, [r7, #8]
	mov r8, r1
	mov r1, sl
	ldrh r2, [r1]
	subs r2, r6, r2
	str r2, [sp, #0xc]
	strh r2, [r7, #6]
	ldrh r1, [r1, #2]
	mov ip, r1
	mov r2, ip
	subs r0, r0, r2
	strh r0, [r7, #8]
	ldr r1, [sp]
	ldrh r0, [r1]
	lsls r0, r0, #1
	ldr r1, [sp, #0xc]
	adds r2, r1, r0
	strh r2, [r7, #6]
	strh r5, [r7, #2]
	strh r5, [r7, #4]
	ldrh r0, [r7]
	adds r0, #0xe
	ldr r2, _0808DDF8 @ =0x000003FF
	ands r0, r2
	strh r0, [r7]
	ldr r0, [r3, #0x10]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #0x10]
	mov r2, sb
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r3, #0x10]
	orrs r0, r1
	str r0, [r3, #0x10]
	adds r0, r3, #0
	adds r1, r7, #0
	str r3, [sp, #8]
	bl sa2__sub_8004E14
	ldr r3, [sp, #8]
	adds r0, r3, #0
	bl DisplaySprite
	strh r6, [r7, #6]
	mov r0, r8
	strh r0, [r7, #8]
	ldr r1, _0808DE10 @ =0x03000090
	adds r3, r4, r1
	ldr r2, _0808DE14 @ =0x030000E4
	adds r7, r4, r2
	ldr r4, [sp, #4]
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r1, [r7, #8]
	adds r0, r0, r1
	strh r0, [r7, #8]
	ldrh r6, [r7, #6]
	ldrh r2, [r7, #8]
	mov r8, r2
	mov r4, sl
	ldrh r2, [r4]
	subs r2, r6, r2
	strh r2, [r7, #6]
	ldrh r1, [r4, #2]
	subs r0, r0, r1
	strh r0, [r7, #8]
	ldr r1, [sp]
	ldrh r0, [r1]
	subs r2, r2, r0
	strh r2, [r7, #6]
	strh r5, [r7, #2]
	strh r5, [r7, #4]
	ldrh r0, [r7]
	subs r0, #0xe
	ldr r2, _0808DDF8 @ =0x000003FF
	ands r0, r2
	strh r0, [r7]
	ldr r0, [r3, #0x10]
	movs r4, #0x20
	rsbs r4, r4, #0
	ands r0, r4
	str r0, [r3, #0x10]
	mov r5, sb
	ldrb r1, [r5]
	adds r0, r1, #1
	strb r0, [r5]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r3, #0x10]
	orrs r0, r1
	str r0, [r3, #0x10]
	adds r0, r3, #0
	adds r1, r7, #0
	str r3, [sp, #8]
	bl sa2__sub_8004E14
	ldr r3, [sp, #8]
	adds r0, r3, #0
	bl DisplaySprite
	strh r6, [r7, #6]
	mov r0, r8
	strh r0, [r7, #8]
_0808DDDC:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808DDEC: .4byte 0x030000F2
_0808DDF0: .4byte 0x030000C0
_0808DDF4: .4byte gCamera
_0808DDF8: .4byte 0x000003FF
_0808DDFC: .4byte sa2__gUnknown_030054B8
_0808DE00: .4byte 0x03000030
_0808DE04: .4byte 0x030000CC
_0808DE08: .4byte 0x03000060
_0808DE0C: .4byte 0x030000D8
_0808DE10: .4byte 0x03000090
_0808DE14: .4byte 0x030000E4

	thumb_func_start TaskDestructor_SkatingStone
TaskDestructor_SkatingStone: @ 0x0808DE18
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	movs r0, #0xc6
	bl m4aSongNumStop
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start TaskDestructors_808DE34
TaskDestructors_808DE34: @ 0x0808DE34
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #4]
	bl VramFree
	ldr r0, [r4, #0x64]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0
