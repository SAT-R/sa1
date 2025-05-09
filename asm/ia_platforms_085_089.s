.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable085
CreateEntity_Interactable085: @ 0x0808DE50
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r3, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0808DEC8 @ =sub_808DFE0
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _0808DECC @ =TaskDestructor_Interactable085
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r3, r0
	adds r0, #0xc
	adds r7, r3, r0
	movs r1, #0
	movs r6, #0
	mov r0, r8
	strh r0, [r2, #4]
	mov r0, sb
	strh r0, [r2, #6]
	str r5, [r2]
	ldrb r0, [r5]
	strb r0, [r2, #8]
	strb r4, [r2, #9]
	str r6, [r2, #0x40]
	str r6, [r2, #0x44]
	ldr r4, _0808DED0 @ =0x03000050
	adds r0, r3, r4
	strb r1, [r0]
	str r6, [r2, #0x4c]
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #6]
	cmp r0, r1
	bls _0808DEF0
	movs r0, #3
	ldrsb r0, [r5, r0]
	cmp r0, #0
	blt _0808DED4
	subs r4, #8
	adds r0, r3, r4
	movs r1, #4
	strh r1, [r0]
	strh r6, [r2, #0x3c]
	b _0808DEE0
	.align 2, 0
_0808DEC8: .4byte sub_808DFE0
_0808DECC: .4byte TaskDestructor_Interactable085
_0808DED0: .4byte 0x03000050
_0808DED4:
	ldr r4, _0808DEE8 @ =0x03000048
	adds r1, r3, r4
	movs r0, #4
	strh r0, [r1]
	movs r0, #0x80
	strh r0, [r2, #0x3c]
_0808DEE0:
	ldr r1, _0808DEEC @ =0x0300004A
	adds r0, r3, r1
	strh r6, [r0]
	b _0808DF26
	.align 2, 0
_0808DEE8: .4byte 0x03000048
_0808DEEC: .4byte 0x0300004A
_0808DEF0:
	movs r0, #4
	ldrsb r0, [r5, r0]
	cmp r0, #0
	blt _0808DF14
	ldr r4, _0808DF0C @ =0x03000048
	adds r0, r3, r4
	strh r6, [r0]
	ldr r0, _0808DF10 @ =0x0300004A
	adds r1, r3, r0
	movs r0, #4
	strh r0, [r1]
	strh r6, [r2, #0x3c]
	b _0808DF26
	.align 2, 0
_0808DF0C: .4byte 0x03000048
_0808DF10: .4byte 0x0300004A
_0808DF14:
	ldr r1, _0808DFD0 @ =0x03000048
	adds r0, r3, r1
	strh r6, [r0]
	ldr r4, _0808DFD4 @ =0x0300004A
	adds r1, r3, r4
	movs r0, #4
	strh r0, [r1]
	movs r0, #0x80
	strh r0, [r2, #0x3c]
_0808DF26:
	ldrb r0, [r5]
	lsls r0, r0, #3
	mov r2, r8
	lsls r1, r2, #8
	adds r0, r0, r1
	movs r4, #0
	mov r8, r4
	movs r6, #0
	strh r0, [r7, #0x16]
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	mov r2, sb
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r7, #0x18]
	movs r4, #2
	rsbs r4, r4, #0
	adds r0, r4, #0
	strb r0, [r5]
	ldr r4, _0808DFD8 @ =gUnknown_086CEDC0
	ldr r5, _0808DFDC @ =gCurrentLevel
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r1, r4, #4
	adds r0, r0, r1
	ldrh r0, [r0]
	bl VramMalloc
	str r0, [r7, #4]
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r4, #2
	adds r0, r0, r4
	ldrh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x20
	strb r1, [r0]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	strh r6, [r7, #8]
	strh r6, [r7, #0x14]
	strh r6, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x25
	mov r1, r8
	strb r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808DFD0: .4byte 0x03000048
_0808DFD4: .4byte 0x0300004A
_0808DFD8: .4byte gUnknown_086CEDC0
_0808DFDC: .4byte gCurrentLevel

	thumb_func_start sub_808DFE0
sub_808DFE0: @ 0x0808DFE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	movs r0, #0
	str r0, [sp, #0x18]
	ldr r0, _0808E04C @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r2
	mov r8, r0
	ldr r1, _0808E050 @ =0x0300000C
	adds r1, r2, r1
	str r1, [sp, #8]
	ldr r3, [r0]
	str r3, [sp, #0x14]
	ldrb r0, [r0, #8]
	lsls r0, r0, #3
	mov r5, r8
	ldrh r1, [r5, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	movs r5, #0
	ldr r7, _0808E054 @ =gPartner
	ldr r6, _0808E058 @ =gPlayer
	lsrs r0, r1, #0x10
	str r0, [sp, #0x10]
	asrs r1, r1, #0x10
	str r1, [sp, #0x1c]
	ldr r1, _0808E05C @ =0x03000050
	adds r1, r1, r2
	mov sb, r1
_0808E03A:
	cmp r5, #0
	beq _0808E060
	ldr r0, [r7, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0808E06E
	ldr r3, _0808E058 @ =gPlayer
	b _0808E1FA
	.align 2, 0
_0808E04C: .4byte gCurTask
_0808E050: .4byte 0x0300000C
_0808E054: .4byte gPartner
_0808E058: .4byte gPlayer
_0808E05C: .4byte 0x03000050
_0808E060:
	ldr r1, [r6, #0x10]
	movs r0, #8
	ands r1, r0
	ldr r3, _0808E080 @ =gPlayer
	cmp r1, #0
	bne _0808E06E
	b _0808E1FA
_0808E06E:
	cmp r5, #0
	beq _0808E084
	ldr r0, [r7, #0x28]
	ldr r2, [sp, #8]
	cmp r0, r2
	beq _0808E090
	ldr r3, _0808E080 @ =gPlayer
	b _0808E1FA
	.align 2, 0
_0808E080: .4byte gPlayer
_0808E084:
	ldr r0, [r6, #0x28]
	ldr r3, _0808E0B4 @ =gPlayer
	ldr r1, [sp, #8]
	cmp r0, r1
	beq _0808E090
	b _0808E1FA
_0808E090:
	mov r2, r8
	ldr r0, [r2, #0x44]
	asrs r0, r0, #8
	ldr r3, [sp, #0x1c]
	adds r0, r3, r0
	adds r3, r0, #0
	adds r3, #0x16
	ldr r1, [sp, #0xc]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	ldr r2, [sp, #0x10]
	lsls r2, r2, #0x10
	str r2, [sp, #0x24]
	str r0, [sp, #0x20]
	cmp r5, #0
	beq _0808E0BC
	ldr r0, _0808E0B8 @ =gPartner + 0x27
	b _0808E0BE
	.align 2, 0
_0808E0B4: .4byte gPlayer
_0808E0B8: .4byte gPartner + 0x27
_0808E0BC:
	ldr r0, _0808E11C @ =gPlayer + 0x27
_0808E0BE:
	ldrb r2, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r0, _0808E120 @ =sa2__sub_801EE64
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	bl sa2__sub_801F07C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	mov r2, r8
	ldr r1, [r2, #0x40]
	asrs r1, r1, #8
	ldr r3, [sp, #0x20]
	asrs r0, r3, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	ldr r1, [r2, #0x44]
	asrs r1, r1, #8
	ldr r2, [sp, #0x24]
	asrs r0, r2, #0x10
	adds r0, r0, r1
	subs r0, #4
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r3, _0808E124 @ =gPlayer
	cmp r5, #0
	beq _0808E0FE
	ldr r3, _0808E128 @ =gPartner
_0808E0FE:
	ldr r0, [sp, #8]
	adds r1, r4, #0
	bl Coll_Player_Entity_Intersection
	cmp r0, #0
	bne _0808E150
	cmp r5, #0
	beq _0808E12C
	ldr r0, [r7, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _0808E136
	.align 2, 0
_0808E11C: .4byte gPlayer + 0x27
_0808E120: .4byte sa2__sub_801EE64
_0808E124: .4byte gPlayer
_0808E128: .4byte gPartner
_0808E12C:
	ldr r0, [r6, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
_0808E136:
	cmp r5, #0
	beq _0808E140
	movs r0, #0
	str r0, [r7, #0x28]
	b _0808E142
_0808E140:
	str r5, [r6, #0x28]
_0808E142:
	movs r1, #1
	lsls r1, r5
	mov r3, sb
	ldrb r0, [r3]
	bics r0, r1
	strb r0, [r3]
	b _0808E280
_0808E150:
	movs r0, #1
	lsls r0, r5
	mov r2, sb
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	mov r3, sl
	lsls r0, r3, #0x18
	mov r4, r8
	adds r4, #0x50
	cmp r0, #0
	blt _0808E17A
	cmp r5, #0
	beq _0808E174
	ldr r0, [r7, #4]
	adds r0, #0xc0
	str r0, [r7, #4]
	b _0808E17A
_0808E174:
	ldr r0, [r6, #4]
	adds r0, #0xc0
	str r0, [r6, #4]
_0808E17A:
	cmp r5, #0
	beq _0808E182
	ldr r0, [r7, #4]
	b _0808E184
_0808E182:
	ldr r0, [r6, #4]
_0808E184:
	asrs r0, r0, #8
	adds r3, r0, #0
	adds r3, #0x10
	cmp r5, #0
	beq _0808E192
	ldr r0, [r7]
	b _0808E194
_0808E192:
	ldr r0, [r6]
_0808E194:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0808E1A4
	ldr r0, _0808E1A0 @ =gPartner + 0x27
	b _0808E1A6
	.align 2, 0
_0808E1A0: .4byte gPartner + 0x27
_0808E1A4:
	ldr r0, _0808E1D0 @ =gPlayer + 0x27
_0808E1A6:
	ldrb r2, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r0, _0808E1D4 @ =sa2__sub_801EE64
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	bl sa2__sub_801F07C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _0808E284
	lsls r1, r0, #8
	cmp r5, #0
	beq _0808E1D8
	ldr r0, [r7, #4]
	adds r0, r0, r1
	str r0, [r7, #4]
	b _0808E1DE
	.align 2, 0
_0808E1D0: .4byte gPlayer + 0x27
_0808E1D4: .4byte sa2__sub_801EE64
_0808E1D8:
	ldr r0, [r6, #4]
	adds r0, r0, r1
	str r0, [r6, #4]
_0808E1DE:
	cmp r5, #0
	beq _0808E1EE
	ldr r0, [r7, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _0808E284
_0808E1EE:
	ldr r0, [r6, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
	b _0808E284
_0808E1FA:
	ldr r2, [sp, #0xc]
	lsls r1, r2, #0x10
	asrs r4, r1, #0x10
	mov r2, r8
	ldr r0, [r2, #0x44]
	asrs r0, r0, #8
	ldr r2, [sp, #0x1c]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, [sp, #0x10]
	lsls r0, r0, #0x10
	str r0, [sp, #0x24]
	str r1, [sp, #0x20]
	cmp r5, #0
	beq _0808E21C
	ldr r3, _0808E234 @ =gPartner
_0808E21C:
	ldr r0, [sp, #8]
	adds r1, r4, #0
	bl sub_800B2BC
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	beq _0808E274
	cmp r5, #0
	beq _0808E238
	ldr r0, [r7, #0x10]
	b _0808E23A
	.align 2, 0
_0808E234: .4byte gPartner
_0808E238:
	ldr r0, [r6, #0x10]
_0808E23A:
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0808E260
	cmp r5, #0
	beq _0808E258
	ldr r0, [r7, #4]
	ldr r1, _0808E254 @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r7, #4]
	b _0808E260
	.align 2, 0
_0808E254: .4byte 0xFFFFFE00
_0808E258:
	ldr r0, [r6, #4]
	ldr r2, _0808E270 @ =0xFFFFFE00
	adds r0, r0, r2
	str r0, [r6, #4]
_0808E260:
	movs r0, #1
	lsls r0, r5
	mov r3, sb
	ldrb r1, [r3]
	orrs r0, r1
	strb r0, [r3]
	b _0808E280
	.align 2, 0
_0808E270: .4byte 0xFFFFFE00
_0808E274:
	movs r1, #1
	lsls r1, r5
	mov r2, sb
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
_0808E280:
	mov r4, r8
	adds r4, #0x50
_0808E284:
	cmp r5, #0
	bne _0808E28E
	ldr r3, _0808E2D8 @ =gPlayer + 0x27
	ldrb r3, [r3]
	str r3, [sp, #0x18]
_0808E28E:
	adds r5, #1
	ldr r0, _0808E2DC @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	bge _0808E29E
	b _0808E03A
_0808E29E:
	ldrb r0, [r4]
	cmp r0, #0
	beq _0808E2E4
	ldr r5, [sp, #0x24]
	asrs r0, r5, #0x10
	mov r2, r8
	ldr r1, [r2, #0x44]
	asrs r1, r1, #8
	adds r0, r0, r1
	adds r0, #0x16
	ldr r3, [sp, #0x20]
	asrs r1, r3, #0x10
	movs r2, #0
	str r2, [sp]
	ldr r2, _0808E2E0 @ =sa2__sub_801EE64
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	movs r3, #8
	bl sa2__sub_801F07C
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _0808E2F0
	mov r5, r8
	ldr r0, [r5, #0x44]
	adds r0, #0xc0
	str r0, [r5, #0x44]
	b _0808E2F0
	.align 2, 0
_0808E2D8: .4byte gPlayer + 0x27
_0808E2DC: .4byte gNumSingleplayerCharacters
_0808E2E0: .4byte sa2__sub_801EE64
_0808E2E4:
	mov r1, r8
	ldr r0, [r1, #0x44]
	cmp r0, #0
	beq _0808E2F0
	subs r0, #0xc0
	str r0, [r1, #0x44]
_0808E2F0:
	ldr r4, _0808E378 @ =gCamera
	ldrh r0, [r4]
	ldr r3, [sp, #0x20]
	asrs r2, r3, #0x10
	subs r0, r2, r0
	ldr r5, [sp, #8]
	strh r0, [r5, #0x16]
	ldrh r1, [r4, #2]
	ldr r0, [sp, #0x24]
	asrs r3, r0, #0x10
	subs r1, r3, r1
	mov r5, r8
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	adds r1, r1, r0
	ldr r0, [sp, #8]
	strh r1, [r0, #0x18]
	movs r5, #0
	ldrsh r1, [r4, r5]
	movs r5, #0xb8
	lsls r5, r5, #1
	adds r0, r1, r5
	cmp r2, r0
	bgt _0808E33E
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _0808E33E
	movs r0, #2
	ldrsh r1, [r4, r0]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r3, r0
	bgt _0808E33E
	adds r0, r1, #0
	subs r0, #0x80
	cmp r3, r0
	bge _0808E380
_0808E33E:
	ldr r3, [sp, #8]
	ldrh r0, [r3, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0808E364
	movs r5, #0x18
	ldrsh r0, [r3, r5]
	adds r0, #0x80
	cmp r0, #0
	blt _0808E364
	movs r0, #0x18
	ldrsh r1, [r3, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808E380
_0808E364:
	mov r1, r8
	ldrb r0, [r1, #8]
	ldr r2, [sp, #0x14]
	strb r0, [r2]
	ldr r0, _0808E37C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0808E386
	.align 2, 0
_0808E378: .4byte gCamera
_0808E37C: .4byte gCurTask
_0808E380:
	ldr r0, [sp, #8]
	bl DisplaySprite
_0808E386:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateEntity_Interactable089
CreateEntity_Interactable089: @ 0x0808E398
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
	ldr r0, _0808E410 @ =sub_808E4F4
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _0808E414 @ =TaskDestructor_Interactable085
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r3, r0
	adds r0, #0xc
	adds r6, r3, r0
	movs r5, #0
	mov r1, r8
	strh r1, [r2, #4]
	mov r0, sb
	strh r0, [r2, #6]
	str r7, [r2]
	ldrb r0, [r7]
	strb r0, [r2, #8]
	strb r4, [r2, #9]
	str r5, [r2, #0x40]
	str r5, [r2, #0x44]
	str r5, [r2, #0x4c]
	ldrb r0, [r7, #5]
	ldrb r1, [r7, #6]
	cmp r0, r1
	bls _0808E43C
	movs r0, #3
	ldrsb r0, [r7, r0]
	cmp r0, #0
	blt _0808E420
	ldr r1, _0808E418 @ =0x03000048
	adds r0, r3, r1
	movs r1, #4
	strh r1, [r0]
	strh r5, [r2, #0x3c]
	ldr r2, _0808E41C @ =0x0300004A
	adds r0, r3, r2
	strh r5, [r0]
	b _0808E472
	.align 2, 0
_0808E410: .4byte sub_808E4F4
_0808E414: .4byte TaskDestructor_Interactable085
_0808E418: .4byte 0x03000048
_0808E41C: .4byte 0x0300004A
_0808E420:
	ldr r0, _0808E434 @ =0x03000048
	adds r1, r3, r0
	movs r0, #4
	strh r0, [r1]
	movs r0, #0x80
	strh r0, [r2, #0x3c]
	ldr r1, _0808E438 @ =0x0300004A
	adds r0, r3, r1
	strh r5, [r0]
	b _0808E472
	.align 2, 0
_0808E434: .4byte 0x03000048
_0808E438: .4byte 0x0300004A
_0808E43C:
	movs r0, #4
	ldrsb r0, [r7, r0]
	cmp r0, #0
	blt _0808E460
	ldr r1, _0808E458 @ =0x03000048
	adds r0, r3, r1
	strh r5, [r0]
	ldr r0, _0808E45C @ =0x0300004A
	adds r1, r3, r0
	movs r0, #4
	strh r0, [r1]
	strh r5, [r2, #0x3c]
	b _0808E472
	.align 2, 0
_0808E458: .4byte 0x03000048
_0808E45C: .4byte 0x0300004A
_0808E460:
	ldr r1, _0808E4E8 @ =0x03000048
	adds r0, r3, r1
	strh r5, [r0]
	ldr r0, _0808E4EC @ =0x0300004A
	adds r1, r3, r0
	movs r0, #4
	strh r0, [r1]
	movs r0, #0x80
	strh r0, [r2, #0x3c]
_0808E472:
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
	movs r0, #0x12
	bl VramMalloc
	str r0, [r6, #4]
	ldr r0, _0808E4F0 @ =0x0000020B
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
_0808E4E8: .4byte 0x03000048
_0808E4EC: .4byte 0x0300004A
_0808E4F0: .4byte 0x0000020B

	thumb_func_start sub_808E4F4
sub_808E4F4: @ 0x0808E4F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	movs r0, #0
	str r0, [sp, #0xc]
	movs r1, #0
	str r1, [sp, #0x10]
	ldr r0, _0808E578 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r2, _0808E57C @ =0x0300000C
	adds r2, r2, r1
	mov sb, r2
	ldr r3, [r5]
	str r3, [sp, #8]
	ldrb r1, [r5, #8]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldrb r2, [r3, #1]
	lsls r2, r2, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldr r3, _0808E580 @ =gCamera
	ldrh r0, [r3]
	lsrs r4, r1, #0x10
	str r4, [sp]
	asrs r1, r1, #0x10
	subs r1, r1, r0
	mov r0, sb
	strh r1, [r0, #0x16]
	ldrh r1, [r3, #2]
	lsrs r3, r2, #0x10
	str r3, [sp, #4]
	asrs r2, r2, #0x10
	subs r1, r2, r1
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	subs r1, r1, r0
	mov r4, sb
	strh r1, [r4, #0x18]
	movs r6, #0
	ldr r7, _0808E584 @ =gPartner
	ldr r0, _0808E588 @ =gPlayer
	mov r8, r0
	str r2, [sp, #0x14]
_0808E564:
	cmp r6, #0
	beq _0808E58C
	ldr r1, [r7, #0x10]
	movs r0, #8
	ands r1, r0
	ldr r2, _0808E588 @ =gPlayer
	mov ip, r2
	cmp r1, #0
	bne _0808E59C
	b _0808E672
	.align 2, 0
_0808E578: .4byte gCurTask
_0808E57C: .4byte 0x0300000C
_0808E580: .4byte gCamera
_0808E584: .4byte gPartner
_0808E588: .4byte gPlayer
_0808E58C:
	mov r3, r8
	ldr r1, [r3, #0x10]
	movs r0, #8
	ands r1, r0
	ldr r4, _0808E5A8 @ =gPlayer
	mov ip, r4
	cmp r1, #0
	beq _0808E672
_0808E59C:
	cmp r6, #0
	beq _0808E5AC
	ldr r0, [r7, #0x28]
	cmp r0, sb
	beq _0808E5B4
	b _0808E672
	.align 2, 0
_0808E5A8: .4byte gPlayer
_0808E5AC:
	mov r1, ip
	ldr r0, [r1, #0x28]
	cmp r0, sb
	bne _0808E672
_0808E5B4:
	movs r2, #1
	str r2, [sp, #0xc]
	ldr r1, [r5, #0x40]
	asrs r1, r1, #8
	ldr r3, [sp]
	lsls r2, r3, #0x10
	asrs r0, r2, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	ldr r4, [sp, #0x14]
	subs r0, r4, r0
	subs r0, #4
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	mov r4, ip
	mov sl, r2
	ldr r0, [sp, #4]
	lsls r0, r0, #0x10
	str r0, [sp, #0x18]
	cmp r6, #0
	beq _0808E5E6
	ldr r4, _0808E604 @ =gPartner
_0808E5E6:
	mov r0, sb
	adds r2, r3, #0
	adds r3, r4, #0
	bl Coll_Player_Entity_Intersection
	cmp r0, #0
	bne _0808E618
	cmp r6, #0
	beq _0808E608
	ldr r0, [r7, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _0808E6A8
	.align 2, 0
_0808E604: .4byte gPartner
_0808E608:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, r8
	str r0, [r2, #0x10]
	b _0808E6A8
_0808E618:
	cmp r6, #0
	beq _0808E624
	ldr r0, [r7, #4]
	subs r0, #0xc0
	str r0, [r7, #4]
	b _0808E62C
_0808E624:
	mov r3, r8
	ldr r0, [r3, #4]
	subs r0, #0xc0
	str r0, [r3, #4]
_0808E62C:
	ldr r1, [r5, #0x44]
	asrs r1, r1, #8
	ldr r4, [sp, #8]
	ldrb r0, [r4, #6]
	lsls r0, r0, #3
	cmp r1, r0
	ble _0808E6A8
	cmp r6, #0
	beq _0808E64A
	ldr r0, [r7, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _0808E658
_0808E64A:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, r8
	str r0, [r2, #0x10]
_0808E658:
	cmp r6, #0
	beq _0808E666
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r7, #0x10]
	b _0808E6A8
_0808E666:
	mov r3, r8
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r3, #0x10]
	b _0808E6A8
_0808E672:
	ldr r4, [sp]
	lsls r1, r4, #0x10
	asrs r4, r1, #0x10
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	ldr r2, [sp, #0x14]
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	mov r3, ip
	mov sl, r1
	ldr r0, [sp, #4]
	lsls r0, r0, #0x10
	str r0, [sp, #0x18]
	cmp r6, #0
	beq _0808E694
	ldr r3, _0808E6C4 @ =gPartner
_0808E694:
	mov r0, sb
	adds r1, r4, #0
	bl sub_800B2BC
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	bne _0808E6A8
	movs r1, #1
	str r1, [sp, #0x10]
_0808E6A8:
	adds r6, #1
	ldr r0, _0808E6C8 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r6, r0
	bge _0808E6B8
	b _0808E564
_0808E6B8:
	ldr r2, [sp, #0xc]
	cmp r2, #0
	beq _0808E6CC
	ldr r0, [r5, #0x44]
	adds r0, #0xc0
	b _0808E6DA
	.align 2, 0
_0808E6C4: .4byte gPartner
_0808E6C8: .4byte gNumSingleplayerCharacters
_0808E6CC:
	ldr r3, [sp, #0x10]
	cmp r3, #0
	beq _0808E6DC
	ldr r0, [r5, #0x44]
	cmp r0, #0
	beq _0808E6DC
	subs r0, #0xc0
_0808E6DA:
	str r0, [r5, #0x44]
_0808E6DC:
	mov r4, sl
	asrs r1, r4, #0x10
	ldr r4, _0808E748 @ =gCamera
	movs r0, #0
	ldrsh r3, [r4, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r3, r2
	cmp r1, r0
	bgt _0808E712
	adds r0, r3, #0
	subs r0, #0x80
	cmp r1, r0
	blt _0808E712
	ldr r3, [sp, #0x18]
	asrs r2, r3, #0x10
	movs r0, #2
	ldrsh r1, [r4, r0]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r2, r0
	bgt _0808E712
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _0808E750
_0808E712:
	mov r4, sb
	ldrh r0, [r4, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0808E738
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0808E738
	movs r2, #0x18
	ldrsh r1, [r4, r2]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808E750
_0808E738:
	ldrb r0, [r5, #8]
	ldr r3, [sp, #8]
	strb r0, [r3]
	ldr r0, _0808E74C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0808E756
	.align 2, 0
_0808E748: .4byte gCamera
_0808E74C: .4byte gCurTask
_0808E750:
	mov r0, sb
	bl DisplaySprite
_0808E756:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start TaskDestructor_Interactable085
TaskDestructor_Interactable085: @ 0x0808E768
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0
