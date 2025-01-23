.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Bowl
CreateEntity_Bowl: @ 0x08080730
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sl, r0
	adds r6, r1, #0
	mov r8, r2
	mov sb, r3
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r1, sb
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	ldr r0, _0808083C @ =Task_Bowl
	ldr r1, _08080840 @ =TaskDestructor_Bowl
	str r1, [sp]
	movs r1, #0x54
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r4, r1
	ldr r7, _08080844 @ =0x0300000C
	adds r2, r4, r7
	movs r3, #0
	movs r5, #0
	strh r6, [r1, #4]
	mov r0, r8
	strh r0, [r1, #6]
	mov r7, sl
	str r7, [r1]
	ldrb r0, [r7]
	strb r0, [r1, #8]
	mov r0, sb
	strb r0, [r1, #9]
	ldr r7, _08080848 @ =0x03000050
	adds r0, r4, r7
	strb r3, [r0]
	subs r7, #0x10
	adds r0, r4, r7
	strh r5, [r0]
	adds r7, #2
	adds r0, r4, r7
	strh r5, [r0]
	str r5, [r1, #0x48]
	str r5, [r1, #0x4c]
	strh r5, [r1, #0x3c]
	strh r5, [r1, #0x3e]
	ldr r1, _0808084C @ =0x03000051
	adds r0, r4, r1
	strb r3, [r0]
	mov r7, sl
	ldrb r0, [r7]
	lsls r0, r0, #3
	lsls r6, r6, #8
	adds r0, r0, r6
	strh r0, [r2, #0x16]
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	mov r1, r8
	lsls r1, r1, #8
	mov r8, r1
	add r0, r8
	strh r0, [r2, #0x18]
	movs r7, #2
	rsbs r7, r7, #0
	adds r0, r7, #0
	mov r1, sl
	strb r0, [r1]
	movs r0, #0x3c
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl VramMalloc
	ldr r2, [sp, #4]
	str r0, [r2, #4]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r2, #0x1a]
	strh r5, [r2, #8]
	ldr r1, _08080850 @ =gUnknown_086CED98
	ldr r0, _08080854 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xa]
	ldr r7, _08080858 @ =0x0300002C
	adds r0, r4, r7
	ldr r3, [sp, #8]
	strb r3, [r0]
	strh r5, [r2, #0x14]
	strh r5, [r2, #0x1c]
	ldr r0, _0808085C @ =0x0300002D
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	adds r7, #2
	adds r1, r4, r7
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _08080860 @ =0x03000031
	adds r4, r4, r0
	strb r3, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808083C: .4byte Task_Bowl
_08080840: .4byte TaskDestructor_Bowl
_08080844: .4byte 0x0300000C
_08080848: .4byte 0x03000050
_0808084C: .4byte 0x03000051
_08080850: .4byte gUnknown_086CED98
_08080854: .4byte gCurrentLevel
_08080858: .4byte 0x0300002C
_0808085C: .4byte 0x0300002D
_08080860: .4byte 0x03000031

	thumb_func_start Task_Bowl
Task_Bowl: @ 0x08080864
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r3, _08080920 @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0
	ldr r0, _08080924 @ =0x0300000C
	adds r0, r0, r1
	mov sl, r0
	mov r1, r8
	ldr r6, [r1]
	ldrb r2, [r1, #8]
	lsls r2, r2, #3
	ldrh r0, [r1, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r6, #1]
	lsls r1, r1, #3
	mov r4, r8
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r5, _08080928 @ =gCamera
	ldrh r0, [r5]
	lsrs r7, r2, #0x10
	str r7, [sp]
	asrs r2, r2, #0x10
	subs r0, r2, r0
	mov r4, sl
	strh r0, [r4, #0x16]
	ldrh r0, [r5, #2]
	lsrs r7, r1, #0x10
	str r7, [sp, #4]
	asrs r1, r1, #0x10
	subs r0, r1, r0
	strh r0, [r4, #0x18]
	movs r0, #0
	ldrsh r4, [r5, r0]
	movs r7, #0xb8
	lsls r7, r7, #1
	adds r0, r4, r7
	cmp r2, r0
	bgt _080808EA
	adds r0, r4, #0
	subs r0, #0x80
	cmp r2, r0
	blt _080808EA
	movs r0, #2
	ldrsh r2, [r5, r0]
	movs r4, #0x90
	lsls r4, r4, #1
	adds r0, r2, r4
	cmp r1, r0
	bgt _080808EA
	adds r0, r2, #0
	subs r0, #0x80
	cmp r1, r0
	bge _0808092C
_080808EA:
	mov r7, sl
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08080910
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08080910
	movs r2, #0x18
	ldrsh r1, [r7, r2]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808092C
_08080910:
	mov r4, r8
	ldrb r0, [r4, #8]
	strb r0, [r6]
	ldr r0, [r3]
	bl TaskDestroy
	b _08080B5E
	.align 2, 0
_08080920: .4byte gCurTask
_08080924: .4byte 0x0300000C
_08080928: .4byte gCamera
_0808092C:
	movs r4, #0
	ldr r5, _0808094C @ =gPartner
	ldr r6, _08080950 @ =gPlayer
	movs r7, #0
	str r7, [sp, #8]
_08080936:
	cmp r4, #0
	beq _08080954
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08080946
	b _08080B42
_08080946:
	ldr r3, _08080950 @ =gPlayer
	b _08080962
	.align 2, 0
_0808094C: .4byte gPartner
_08080950: .4byte gPlayer
_08080954:
	ldr r1, [r6, #0x10]
	movs r0, #0x80
	ands r1, r0
	ldr r3, _08080978 @ =gPlayer
	cmp r1, #0
	beq _08080962
	b _08080B42
_08080962:
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r7, r0, #0
	cmp r4, #0
	beq _0808097C
	ldr r0, [r5]
	asrs r0, r0, #8
	cmp r0, r1
	bgt _08080984
	b _08080988
	.align 2, 0
_08080978: .4byte gPlayer
_0808097C:
	ldr r0, [r3]
	asrs r0, r0, #8
	cmp r0, r1
	ble _08080988
_08080984:
	movs r1, #0xa
	b _0808098A
_08080988:
	ldr r1, _080809D8 @ =0x0000FFF6
_0808098A:
	asrs r0, r7, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r2, [sp, #4]
	lsls r0, r2, #0x10
	movs r2, #0xa0
	lsls r2, r2, #0xb
	adds r0, r0, r2
	asrs r2, r0, #0x10
	cmp r4, #0
	beq _080809A8
	ldr r3, _080809DC @ =gPartner
_080809A8:
	mov r0, sl
	bl sa2__sub_800DF38
	cmp r0, #0
	bne _080809B4
	b _08080B42
_080809B4:
	mov r2, r8
	adds r2, #0x51
	movs r0, #1
	lsls r0, r4
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	mov r0, r8
	adds r0, #0x40
	ldr r2, [sp, #8]
	adds r1, r0, r2
	cmp r4, #0
	beq _080809E0
	movs r2, #8
	ldrsh r0, [r5, r2]
	cmp r0, #0
	blt _080809E8
	b _080809F8
	.align 2, 0
_080809D8: .4byte 0x0000FFF6
_080809DC: .4byte gPartner
_080809E0:
	movs r2, #8
	ldrsh r0, [r6, r2]
	cmp r0, #0
	bge _080809F8
_080809E8:
	cmp r4, #0
	beq _080809F2
	ldrh r0, [r5, #8]
	rsbs r0, r0, #0
	b _08080A02
_080809F2:
	ldrh r0, [r6, #8]
	rsbs r0, r0, #0
	b _08080A02
_080809F8:
	cmp r4, #0
	beq _08080A00
	ldrh r0, [r5, #8]
	b _08080A02
_08080A00:
	ldrh r0, [r6, #8]
_08080A02:
	lsls r0, r0, #2
	strh r0, [r1]
	mov r0, r8
	adds r0, #0x3c
	ldr r1, [sp, #8]
	adds r0, r0, r1
	mov sb, r0
	asrs r1, r7, #0x10
	cmp r4, #0
	beq _08080A1A
	ldr r0, [r5]
	b _08080A1C
_08080A1A:
	ldr r0, [r6]
_08080A1C:
	asrs r0, r0, #8
	subs r0, r0, r1
	adds r0, #0x30
	lsls r0, r0, #9
	movs r1, #0x60
	bl Div
	cmp r0, #0
	bge _08080A5C
	asrs r1, r7, #0x10
	cmp r4, #0
	beq _08080A38
	ldr r0, [r5]
	b _08080A3A
_08080A38:
	ldr r0, [r6]
_08080A3A:
	asrs r0, r0, #8
	subs r0, r0, r1
	adds r0, #0x30
	lsls r0, r0, #9
	movs r1, #0x60
	bl Div
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r1, r2, #0
	subs r1, r1, r0
	ldr r7, _08080A58 @ =0x000003FF
	adds r0, r7, #0
	b _08080A80
	.align 2, 0
_08080A58: .4byte 0x000003FF
_08080A5C:
	asrs r1, r7, #0x10
	cmp r4, #0
	beq _08080A66
	ldr r0, [r5]
	b _08080A68
_08080A66:
	ldr r0, [r6]
_08080A68:
	asrs r0, r0, #8
	subs r0, r0, r1
	adds r0, #0x30
	lsls r0, r0, #9
	movs r1, #0x60
	bl Div
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r2, _08080AA8 @ =0x000003FF
	adds r1, r2, #0
_08080A80:
	ands r0, r1
	movs r2, #0
	mov r7, sb
	strh r0, [r7]
	lsls r1, r4, #2
	mov r0, r8
	adds r0, #0x48
	adds r0, r0, r1
	str r2, [r0]
	mov r0, r8
	adds r0, #0x50
	movs r1, #0
	strb r1, [r0]
	subs r0, #0xc
	strh r2, [r0]
	cmp r4, #0
	beq _08080AAC
	strh r2, [r5, #0x38]
	b _08080AAE
	.align 2, 0
_08080AA8: .4byte 0x000003FF
_08080AAC:
	strh r4, [r6, #0x38]
_08080AAE:
	ldr r3, _08080ABC @ =gPlayer
	cmp r4, #0
	beq _08080AC0
	movs r0, #0
	strh r0, [r5, #0x3a]
	b _08080AC2
	.align 2, 0
_08080ABC: .4byte gPlayer
_08080AC0:
	strh r4, [r3, #0x3a]
_08080AC2:
	adds r0, r3, #0
	cmp r4, #0
	beq _08080ACA
	ldr r0, _08080ADC @ =gPartner
_08080ACA:
	bl Player_TransitionCancelFlyingAndBoost
	cmp r4, #0
	beq _08080AE4
	movs r0, #5
	ldr r2, _08080AE0 @ =gUnknown_03005AF0
	strb r0, [r2]
	b _08080AEA
	.align 2, 0
_08080ADC: .4byte gPartner
_08080AE0: .4byte gUnknown_03005AF0
_08080AE4:
	movs r0, #5
	ldr r7, _08080AFC @ =gUnknown_03005A60
	strb r0, [r7]
_08080AEA:
	cmp r4, #0
	beq _08080B00
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r5, #0x10]
	b _08080B0A
	.align 2, 0
_08080AFC: .4byte gUnknown_03005A60
_08080B00:
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r6, #0x10]
_08080B0A:
	movs r0, #0xce
	bl m4aSongNumStart
	ldr r0, _08080B2C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08080B30 @ =Task_Bowl2
	str r0, [r1, #8]
	cmp r4, #0
	beq _08080B38
	ldr r1, _08080B34 @ =gUnknown_03005AD6
	ldrb r0, [r1]
	movs r1, #0x80
	orrs r0, r1
	ldr r2, _08080B34 @ =gUnknown_03005AD6
	strb r0, [r2]
	b _08080B42
	.align 2, 0
_08080B2C: .4byte gCurTask
_08080B30: .4byte Task_Bowl2
_08080B34: .4byte gUnknown_03005AD6
_08080B38:
	ldr r7, _08080B70 @ =gUnknown_03005A46
	ldrb r0, [r7]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r7]
_08080B42:
	ldr r0, [sp, #8]
	adds r0, #2
	str r0, [sp, #8]
	adds r4, #1
	ldr r0, _08080B74 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	bge _08080B58
	b _08080936
_08080B58:
	mov r0, sl
	bl DisplaySprite
_08080B5E:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08080B70: .4byte gUnknown_03005A46
_08080B74: .4byte gNumSingleplayerCharacters

	thumb_func_start Task_Bowl2
Task_Bowl2: @ 0x08080B78
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r0, _08080BE4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r0, #0xc
	adds r0, r1, r0
	str r0, [sp]
	ldr r1, [r7]
	str r1, [sp, #0xc]
	ldrb r2, [r7, #8]
	lsls r2, r2, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	ldrh r1, [r7, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	ldr r1, _08080BE8 @ =gCamera
	ldrh r0, [r1]
	lsrs r6, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	ldr r4, [sp]
	strh r2, [r4, #0x16]
	ldr r4, [r7, #0x48]
	ldr r3, [r7, #0x4c]
	cmp r4, r3
	bls _08080BEC
	ldrh r1, [r1, #2]
	ldr r0, [sp, #4]
	lsls r2, r0, #0x10
	asrs r0, r2, #0x10
	subs r0, r0, r1
	lsrs r1, r4, #0xd
	adds r0, r0, r1
	ldr r1, [sp]
	strh r0, [r1, #0x18]
	ldr r0, [r7, #0x48]
	b _08080C00
	.align 2, 0
_08080BE4: .4byte gCurTask
_08080BE8: .4byte gCamera
_08080BEC:
	ldrh r1, [r1, #2]
	ldr r4, [sp, #4]
	lsls r2, r4, #0x10
	asrs r0, r2, #0x10
	subs r0, r0, r1
	lsrs r1, r3, #0xd
	adds r0, r0, r1
	ldr r1, [sp]
	strh r0, [r1, #0x18]
	ldr r0, [r7, #0x4c]
_08080C00:
	lsrs r0, r0, #0xd
	str r0, [sp, #8]
	str r2, [sp, #0x10]
	movs r5, #0
	lsls r6, r6, #0x10
	mov sl, r6
	adds r2, r7, #0
	adds r2, #0x51
	str r2, [sp, #0x18]
	ldr r6, _08080C20 @ =gPartner
	ldr r4, _08080C24 @ =gPlayer
	mov r8, r4
_08080C18:
	cmp r5, #0
	beq _08080C28
	ldr r0, [r6, #0x10]
	b _08080C2C
	.align 2, 0
_08080C20: .4byte gPartner
_08080C24: .4byte gPlayer
_08080C28:
	mov r1, r8
	ldr r0, [r1, #0x10]
_08080C2C:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08080C36
	b _08080DF2
_08080C36:
	ldr r2, [sp, #0x18]
	ldrb r0, [r2]
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08080C46
	b _08080DF2
_08080C46:
	mov r4, sl
	asrs r1, r4, #0x10
	cmp r5, #0
	beq _08080C60
	ldr r0, [r6]
	asrs r0, r0, #8
	ldr r3, _08080C5C @ =gPlayer
	cmp r0, r1
	bgt _08080C6C
	b _08080C74
	.align 2, 0
_08080C5C: .4byte gPlayer
_08080C60:
	mov r2, r8
	ldr r0, [r2]
	asrs r0, r0, #8
	ldr r3, _08080C70 @ =gPlayer
	cmp r0, r1
	ble _08080C74
_08080C6C:
	movs r1, #0xa
	b _08080C76
	.align 2, 0
_08080C70: .4byte gPlayer
_08080C74:
	ldr r1, _08080CBC @ =0x0000FFF6
_08080C76:
	mov r4, sl
	asrs r0, r4, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, [sp, #4]
	adds r0, #0xd
	ldr r2, [sp, #8]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r5, #0
	beq _08080C96
	ldr r3, _08080CC0 @ =gPartner
_08080C96:
	ldr r0, [sp]
	bl sa2__sub_800DF38
	cmp r0, #0
	bne _08080CA2
	b _08080DF2
_08080CA2:
	adds r0, r7, #0
	adds r0, #0x40
	adds r4, r7, #0
	adds r4, #0x42
	ldrh r3, [r0]
	ldrh r1, [r4]
	adds r2, r0, #0
	cmp r3, r1
	bls _08080CC4
	strh r3, [r4]
	ldr r0, [r7, #0x48]
	str r0, [r7, #0x4c]
	b _08080CCA
	.align 2, 0
_08080CBC: .4byte 0x0000FFF6
_08080CC0: .4byte gPartner
_08080CC4:
	strh r1, [r2]
	ldr r0, [r7, #0x4c]
	str r0, [r7, #0x48]
_08080CCA:
	movs r0, #1
	lsls r0, r5
	ldr r4, [sp, #0x18]
	ldrb r1, [r4]
	orrs r0, r1
	strb r0, [r4]
	lsls r1, r5, #1
	adds r0, r7, #0
	adds r0, #0x3c
	adds r0, r0, r1
	mov sb, r0
	ldr r0, [r7, #0x48]
	lsrs r4, r0, #8
	mov r0, sl
	asrs r1, r0, #0x10
	cmp r5, #0
	beq _08080CF0
	ldr r0, [r6]
	b _08080CF4
_08080CF0:
	mov r2, r8
	ldr r0, [r2]
_08080CF4:
	asrs r0, r0, #8
	subs r0, r0, r1
	adds r0, #0x30
	lsls r0, r0, #9
	movs r1, #0x60
	bl Div
	cmp r0, #0
	bge _08080D34
	mov r0, sl
	asrs r1, r0, #0x10
	cmp r5, #0
	beq _08080D12
	ldr r0, [r6]
	b _08080D16
_08080D12:
	mov r2, r8
	ldr r0, [r2]
_08080D16:
	asrs r0, r0, #8
	subs r0, r0, r1
	adds r0, #0x30
	lsls r0, r0, #9
	movs r1, #0x60
	bl Div
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r1, r4, r2
	subs r1, r1, r0
	ldr r0, _08080D30 @ =0x000003FF
	b _08080D5C
	.align 2, 0
_08080D30: .4byte 0x000003FF
_08080D34:
	mov r0, sl
	asrs r1, r0, #0x10
	cmp r5, #0
	beq _08080D40
	ldr r0, [r6]
	b _08080D44
_08080D40:
	mov r2, r8
	ldr r0, [r2]
_08080D44:
	asrs r0, r0, #8
	subs r0, r0, r1
	adds r0, #0x30
	lsls r0, r0, #9
	movs r1, #0x60
	bl Div
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r1, r4, r2
	adds r0, r0, r1
	ldr r1, _08080D6C @ =0x000003FF
_08080D5C:
	ands r0, r1
	movs r1, #0
	mov r4, sb
	strh r0, [r4]
	cmp r5, #0
	beq _08080D70
	strh r1, [r6, #0x38]
	b _08080D74
	.align 2, 0
_08080D6C: .4byte 0x000003FF
_08080D70:
	mov r0, r8
	strh r5, [r0, #0x38]
_08080D74:
	ldr r3, _08080D80 @ =gPlayer
	cmp r5, #0
	beq _08080D84
	movs r0, #0
	strh r0, [r6, #0x3a]
	b _08080D86
	.align 2, 0
_08080D80: .4byte gPlayer
_08080D84:
	strh r5, [r3, #0x3a]
_08080D86:
	adds r0, r3, #0
	cmp r5, #0
	beq _08080D8E
	ldr r0, _08080DA0 @ =gPartner
_08080D8E:
	bl Player_TransitionCancelFlyingAndBoost
	cmp r5, #0
	beq _08080DA8
	movs r0, #5
	ldr r1, _08080DA4 @ =gUnknown_03005AF0
	strb r0, [r1]
	b _08080DAE
	.align 2, 0
_08080DA0: .4byte gPartner
_08080DA4: .4byte gUnknown_03005AF0
_08080DA8:
	movs r0, #5
	ldr r2, _08080DC0 @ =gUnknown_03005A60
	strb r0, [r2]
_08080DAE:
	cmp r5, #0
	beq _08080DC4
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r6, #0x10]
	b _08080DD0
	.align 2, 0
_08080DC0: .4byte gUnknown_03005A60
_08080DC4:
	mov r4, r8
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r4, #0x10]
_08080DD0:
	cmp r5, #0
	beq _08080DE8
	ldr r0, _08080DE4 @ =gUnknown_03005AD6
	ldrb r1, [r0]
	movs r0, #0x80
	orrs r0, r1
	ldr r1, _08080DE4 @ =gUnknown_03005AD6
	strb r0, [r1]
	b _08080DF2
	.align 2, 0
_08080DE4: .4byte gUnknown_03005AD6
_08080DE8:
	ldr r2, _08080E4C @ =gUnknown_03005A46
	ldrb r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2]
_08080DF2:
	adds r5, #1
	ldr r0, _08080E50 @ =gNumSingleplayerCharacters
	movs r1, #0
	ldrsb r1, [r0, r1]
	cmp r5, r1
	bge _08080E00
	b _08080C18
_08080E00:
	movs r5, #0
	mov r8, r5
	ldr r4, _08080E54 @ =gPlayer
	mov sb, r4
_08080E08:
	ldr r1, [sp, #0x18]
	ldrb r0, [r1]
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08080ECC
	adds r4, r7, #0
	adds r4, #0x48
	mov r2, r8
	adds r0, r4, r2
	ldr r2, [r0]
	lsls r1, r5, #1
	adds r0, r7, #0
	adds r0, #0x3c
	adds r0, r0, r1
	lsrs r2, r2, #8
	ldrh r0, [r0]
	adds r2, r2, r0
	adds r3, r7, #0
	adds r3, #0x50
	ldrb r1, [r3]
	movs r0, #0xf
	ands r0, r1
	lsls r0, r0, #6
	adds r2, r2, r0
	ldr r0, _08080E58 @ =0x000003FF
	ands r2, r0
	adds r6, r4, #0
	cmp r5, #0
	beq _08080E60
	ldr r4, _08080E5C @ =gPartner
	ldr r0, [r4, #0x10]
	b _08080E64
	.align 2, 0
_08080E4C: .4byte gUnknown_03005A46
_08080E50: .4byte gNumSingleplayerCharacters
_08080E54: .4byte gPlayer
_08080E58: .4byte 0x000003FF
_08080E5C: .4byte gPartner
_08080E60:
	mov r1, sb
	ldr r0, [r1, #0x10]
_08080E64:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08080ECC
	ldr r1, _08080E98 @ =gSineTable
	lsls r0, r2, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r1, [r3]
	lsls r1, r1, #2
	adds r1, #0x32
	bl Div
	mov r4, sl
	asrs r1, r4, #8
	adds r1, r1, r0
	cmp r5, #0
	beq _08080EA0
	ldr r0, _08080E9C @ =gPartner
	str r1, [r0]
	b _08080EA4
	.align 2, 0
_08080E98: .4byte gSineTable
_08080E9C: .4byte gPartner
_08080EA0:
	mov r2, sb
	str r1, [r2]
_08080EA4:
	ldr r4, [sp, #0x10]
	asrs r1, r4, #8
	ldr r0, _08080EC0 @ =0xFFFFEF00
	adds r1, r1, r0
	mov r2, r8
	adds r0, r6, r2
	ldr r0, [r0]
	lsrs r0, r0, #5
	adds r0, r1, r0
	cmp r5, #0
	beq _08080EC8
	ldr r4, _08080EC4 @ =gPartner
	str r0, [r4, #4]
	b _08080ECC
	.align 2, 0
_08080EC0: .4byte 0xFFFFEF00
_08080EC4: .4byte gPartner
_08080EC8:
	mov r1, sb
	str r0, [r1, #4]
_08080ECC:
	movs r2, #4
	add r8, r2
	adds r5, #1
	ldr r4, _08080F0C @ =gNumSingleplayerCharacters
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r5, r0
	blt _08080E08
	movs r5, #0
	mov r8, r5
	mov sb, r5
_08080EE2:
	ldr r1, [sp, #0x18]
	ldrb r0, [r1]
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08080FB0
	adds r1, r7, #0
	adds r1, #0x48
	mov r2, sb
	adds r0, r1, r2
	ldr r2, [r0]
	ldr r0, _08080F10 @ =0x000D8107
	adds r6, r1, #0
	cmp r2, r0
	bls _08080F60
	cmp r5, #0
	beq _08080F18
	ldr r0, _08080F14 @ =gPartner
	b _08080F1A
	.align 2, 0
_08080F0C: .4byte gNumSingleplayerCharacters
_08080F10: .4byte 0x000D8107
_08080F14: .4byte gPartner
_08080F18:
	ldr r0, _08080F48 @ =gPlayer
_08080F1A:
	ldr r1, [r0, #0x10]
	movs r0, #0x80
	ands r1, r0
	adds r2, r7, #0
	adds r2, #0x40
	cmp r1, #0
	bne _08080F6E
	adds r1, r7, #0
	adds r1, #0x40
	mov r4, r8
	adds r0, r1, r4
	ldrh r0, [r0]
	lsrs r0, r0, #2
	ldr r2, _08080F4C @ =0xFFFFF830
	adds r0, r0, r2
	lsls r3, r0, #1
	adds r2, r1, #0
	cmp r5, #0
	beq _08080F54
	ldr r0, _08080F50 @ =gPartner
	strh r3, [r0, #0xa]
	b _08080F6E
	.align 2, 0
_08080F48: .4byte gPlayer
_08080F4C: .4byte 0xFFFFF830
_08080F50: .4byte gPartner
_08080F54:
	ldr r0, _08080F5C @ =gPlayer
	strh r3, [r0, #0xa]
	b _08080F6E
	.align 2, 0
_08080F5C: .4byte gPlayer
_08080F60:
	adds r2, r7, #0
	adds r2, #0x40
	mov r4, r8
	adds r1, r2, r4
	ldrh r0, [r1]
	adds r0, #0x40
	strh r0, [r1]
_08080F6E:
	mov r0, r8
	adds r4, r2, r0
	ldrh r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #0x18
	lsrs r1, r2, #0x10
	cmp r0, r1
	bls _08080F80
	strh r1, [r4]
_08080F80:
	ldrh r1, [r4]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	movs r1, #0xa0
	lsls r1, r1, #8
	bl Div
	ldr r1, [sp]
	adds r1, #0x22
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bls _08080FA4
	movs r0, #0x10
	strb r0, [r1]
_08080FA4:
	mov r0, sb
	adds r2, r6, r0
	ldrh r1, [r4]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
_08080FB0:
	movs r1, #2
	add r8, r1
	movs r2, #4
	add sb, r2
	adds r5, #1
	ldr r4, _08081030 @ =gNumSingleplayerCharacters
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r5, r0
	blt _08080EE2
	mov r0, sl
	asrs r2, r0, #0x10
	ldr r3, _08081034 @ =gCamera
	movs r4, #0
	ldrsh r1, [r3, r4]
	movs r4, #0xb8
	lsls r4, r4, #1
	adds r0, r1, r4
	cmp r2, r0
	bgt _08080FF8
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _08080FF8
	ldr r0, [sp, #0x10]
	asrs r1, r0, #0x10
	movs r2, #2
	ldrsh r3, [r3, r2]
	subs r4, #0x50
	adds r0, r3, r4
	cmp r1, r0
	bgt _08080FF8
	adds r0, r3, #0
	subs r0, #0x80
	cmp r1, r0
	bge _0808103C
_08080FF8:
	ldr r1, [sp]
	ldrh r0, [r1, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08081020
	ldr r2, [sp]
	movs r4, #0x18
	ldrsh r0, [r2, r4]
	adds r0, #0x80
	cmp r0, #0
	blt _08081020
	movs r0, #0x18
	ldrsh r1, [r2, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808103C
_08081020:
	ldrb r0, [r7, #8]
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	ldr r0, _08081038 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0808126E
	.align 2, 0
_08081030: .4byte gNumSingleplayerCharacters
_08081034: .4byte gCamera
_08081038: .4byte gCurTask
_0808103C:
	movs r4, #0
	adds r2, r7, #0
	adds r2, #0x44
	str r2, [sp, #0x14]
	ldr r0, [sp, #0x18]
	mov r8, r0
	ldr r6, _08081088 @ =gPartner
	movs r1, #0x80
	mov sb, r1
	ldr r5, _0808108C @ =gPlayer
	movs r2, #0x26
	adds r2, r2, r5
	mov ip, r2
_08081056:
	mov r1, r8
	ldrb r0, [r1]
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08081066
	b _080811CA
_08081066:
	lsls r1, r4, #2
	adds r0, r7, #0
	adds r0, #0x48
	adds r2, r0, r1
	ldr r1, [r2]
	ldr r0, _08081090 @ =0x000D8107
	cmp r1, r0
	bhi _08081078
	b _080811CA
_08081078:
	adds r0, #1
	str r0, [r2]
	cmp r4, #0
	beq _08081094
	ldr r0, [r6, #0x10]
	mov r2, sb
	ands r0, r2
	b _0808109A
	.align 2, 0
_08081088: .4byte gPartner
_0808108C: .4byte gPlayer
_08081090: .4byte 0x000D8107
_08081094:
	ldr r0, [r5, #0x10]
	mov r1, sb
	ands r0, r1
_0808109A:
	adds r3, r7, #0
	adds r3, #0x50
	cmp r0, #0
	bne _080810DE
	adds r0, r7, #0
	adds r0, #0x50
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #0xf
	bhi _080810C4
	ldrb r1, [r3]
	movs r0, #0xb4
	muls r1, r0, r1
	cmp r4, #0
	beq _080810C0
	ldr r0, [r6, #4]
	adds r0, r0, r1
	str r0, [r6, #4]
	b _080810DE
_080810C0:
	ldr r0, [r5, #4]
	b _080810DA
_080810C4:
	cmp r4, #0
	beq _080810D4
	ldr r0, [r6, #4]
	movs r2, #0xb4
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r6, #4]
	b _080810DE
_080810D4:
	ldr r0, [r5, #4]
	movs r1, #0xb4
	lsls r1, r1, #4
_080810DA:
	adds r0, r0, r1
	str r0, [r5, #4]
_080810DE:
	cmp r4, #0
	bne _080810E8
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
_080810E8:
	ldrb r0, [r3]
	cmp r0, #0x40
	bls _080811CA
	cmp r4, #0
	beq _080810FA
	ldr r0, [r6, #0x10]
	mov r2, sb
	ands r0, r2
	b _08081100
_080810FA:
	ldr r0, [r5, #0x10]
	mov r1, sb
	ands r0, r1
_08081100:
	cmp r0, #0
	bne _0808119A
	cmp r4, #0
	beq _08081118
	ldr r0, [r6, #0x10]
	ldr r1, _08081114 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	b _08081120
	.align 2, 0
_08081114: .4byte 0xFFBFFFFF
_08081118:
	ldr r0, [r5, #0x10]
	ldr r1, _08081130 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
_08081120:
	cmp r4, #0
	beq _08081134
	ldr r0, [r6, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r6, #0x10]
	b _0808113C
	.align 2, 0
_08081130: .4byte 0xFFBFFFFF
_08081134:
	ldr r0, [r5, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #0x10]
_0808113C:
	cmp r4, #0
	beq _0808114A
	ldr r0, [r6, #0x10]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r6, #0x10]
	b _08081152
_0808114A:
	ldr r0, [r5, #0x10]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5, #0x10]
_08081152:
	cmp r4, #0
	beq _08081160
	ldr r0, [r6, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r6, #0x10]
	b _08081168
_08081160:
	ldr r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0x10]
_08081168:
	cmp r4, #0
	beq _08081172
	movs r0, #0
	strh r0, [r6, #8]
	b _08081174
_08081172:
	strh r4, [r5, #8]
_08081174:
	cmp r4, #0
	beq _0808117E
	movs r0, #0
	strh r0, [r6, #0xc]
	b _08081180
_0808117E:
	strh r4, [r5, #0xc]
_08081180:
	mov r2, sl
	asrs r0, r2, #8
	cmp r4, #0
	beq _0808118C
	str r0, [r6]
	b _0808118E
_0808118C:
	str r0, [r5]
_0808118E:
	movs r1, #1
	lsls r1, r4
	mov r2, r8
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
_0808119A:
	ldr r0, _080811B4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080811B8 @ =Task_Bowl3
	str r0, [r1, #8]
	cmp r4, #0
	beq _080811C0
	ldr r0, _080811BC @ =gUnknown_03005AD6
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	ldr r1, _080811BC @ =gUnknown_03005AD6
	strb r0, [r1]
	b _080811CA
	.align 2, 0
_080811B4: .4byte gCurTask
_080811B8: .4byte Task_Bowl3
_080811BC: .4byte gUnknown_03005AD6
_080811C0:
	mov r2, ip
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
_080811CA:
	adds r4, #1
	ldr r1, _08081200 @ =gNumSingleplayerCharacters
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r4, r0
	bge _080811D8
	b _08081056
_080811D8:
	ldr r1, [sp, #0x14]
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf0
	bls _080811EC
	movs r0, #0xf0
	strh r0, [r1]
_080811EC:
	ldr r2, [sp, #0x14]
	ldrh r0, [r2]
	cmp r0, #0x38
	bne _08081230
	movs r4, #0
	movs r5, #0x80
_080811F8:
	cmp r4, #0
	beq _08081208
	ldr r0, _08081204 @ =gPartner
	b _0808120A
	.align 2, 0
_08081200: .4byte gNumSingleplayerCharacters
_08081204: .4byte gPartner
_08081208:
	ldr r0, _08081228 @ =gPlayer
_0808120A:
	ldr r0, [r0, #0x10]
	ands r0, r5
	cmp r0, #0
	bne _08081218
	movs r0, #0xcf
	bl m4aSongNumStart
_08081218:
	adds r4, #1
	ldr r0, _0808122C @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _080811F8
	b _08081262
	.align 2, 0
_08081228: .4byte gPlayer
_0808122C: .4byte gNumSingleplayerCharacters
_08081230:
	cmp r0, #0x70
	bne _08081262
	movs r4, #0
	movs r5, #0x80
_08081238:
	cmp r4, #0
	beq _08081244
	ldr r0, _08081240 @ =gPartner
	b _08081246
	.align 2, 0
_08081240: .4byte gPartner
_08081244:
	ldr r0, _08081280 @ =gPlayer
_08081246:
	ldr r0, [r0, #0x10]
	ands r0, r5
	cmp r0, #0
	bne _08081254
	movs r0, #0xd0
	bl m4aSongNumStart
_08081254:
	adds r4, #1
	ldr r0, _08081284 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _08081238
_08081262:
	ldr r0, [sp]
	bl UpdateSpriteAnimation
	ldr r0, [sp]
	bl DisplaySprite
_0808126E:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08081280: .4byte gPlayer
_08081284: .4byte gNumSingleplayerCharacters

	thumb_func_start Task_Bowl3
Task_Bowl3: @ 0x08081288
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08081330 @ =gCurTask
	mov ip, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r4, _08081334 @ =0x0300000C
	adds r7, r1, r4
	ldr r3, [r6]
	ldrb r1, [r6, #8]
	lsls r1, r1, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r3, #1]
	lsls r2, r2, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r5, _08081338 @ =gCamera
	ldrh r0, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r1, r0
	strh r0, [r7, #0x16]
	ldrh r0, [r5, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r2, r0
	adds r0, #0x6c
	strh r0, [r7, #0x18]
	movs r0, #0
	ldrsh r4, [r5, r0]
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r0, r0, r4
	mov r8, r0
	cmp r1, r8
	bgt _080812FC
	adds r0, r4, #0
	subs r0, #0x80
	cmp r1, r0
	blt _080812FC
	movs r4, #2
	ldrsh r1, [r5, r4]
	movs r4, #0x90
	lsls r4, r4, #1
	adds r0, r1, r4
	cmp r2, r0
	bgt _080812FC
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _0808133C
_080812FC:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08081320
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08081320
	movs r4, #0x18
	ldrsh r1, [r7, r4]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808133C
_08081320:
	ldrb r0, [r6, #8]
	strb r0, [r3]
	mov r1, ip
	ldr r0, [r1]
	bl TaskDestroy
	b _080813C8
	.align 2, 0
_08081330: .4byte gCurTask
_08081334: .4byte 0x0300000C
_08081338: .4byte gCamera
_0808133C:
	adds r1, r6, #0
	adds r1, #0x44
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf0
	bls _08081352
	movs r0, #0xf0
	strh r0, [r1]
_08081352:
	ldrh r0, [r1]
	cmp r0, #0x38
	bne _08081390
	movs r4, #0
	movs r5, #0x80
_0808135C:
	cmp r4, #0
	beq _08081368
	ldr r0, _08081364 @ =gPartner
	b _0808136A
	.align 2, 0
_08081364: .4byte gPartner
_08081368:
	ldr r0, _08081388 @ =gPlayer
_0808136A:
	ldr r0, [r0, #0x10]
	ands r0, r5
	cmp r0, #0
	bne _08081378
	movs r0, #0xcf
	bl m4aSongNumStart
_08081378:
	adds r4, #1
	ldr r0, _0808138C @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _0808135C
	b _080813C2
	.align 2, 0
_08081388: .4byte gPlayer
_0808138C: .4byte gNumSingleplayerCharacters
_08081390:
	cmp r0, #0x70
	bne _080813C2
	movs r4, #0
	movs r5, #0x80
_08081398:
	cmp r4, #0
	beq _080813A4
	ldr r0, _080813A0 @ =gPartner
	b _080813A6
	.align 2, 0
_080813A0: .4byte gPartner
_080813A4:
	ldr r0, _080813D4 @ =gPlayer
_080813A6:
	ldr r0, [r0, #0x10]
	ands r0, r5
	cmp r0, #0
	bne _080813B4
	movs r0, #0xd0
	bl m4aSongNumStart
_080813B4:
	adds r4, #1
	ldr r0, _080813D8 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _08081398
_080813C2:
	adds r0, r7, #0
	bl DisplaySprite
_080813C8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080813D4: .4byte gPlayer
_080813D8: .4byte gNumSingleplayerCharacters

	thumb_func_start TaskDestructor_Bowl
TaskDestructor_Bowl: @ 0x080813DC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0
