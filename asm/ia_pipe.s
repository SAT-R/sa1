.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_PipeEntrance
CreateEntity_PipeEntrance: @ 0x0809570C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #8]
	movs r0, #0
	mov r8, r0
	movs r1, #0
	mov sb, r1
	movs r6, #0
_08095736:
	ldrb r2, [r7, #6]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r3, #0
	orrs r2, r0
	ldr r0, _08095800 @ =TaskDestructor_PipeEntrance
	str r0, [sp]
	ldr r0, _08095804 @ =Task_PipeEntrance
	movs r1, #0x5c
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	ldr r1, _08095808 @ =0x0300000C
	adds r4, r2, r1
	mov r3, sp
	ldrh r3, [r3, #4]
	strh r3, [r5, #4]
	mov r0, sl
	strh r0, [r5, #6]
	str r7, [r5]
	ldrb r0, [r7]
	strb r0, [r5, #8]
	mov r1, sp
	ldrb r1, [r1, #8]
	strb r1, [r5, #9]
	ldr r3, _0809580C @ =0x0300003C
	adds r0, r2, r3
	mov r1, r8
	strb r1, [r0]
	adds r3, #2
	adds r1, r2, r3
	movs r0, #0x14
	strb r0, [r1]
	ldr r1, _08095810 @ =0x0300003F
	adds r0, r2, r1
	mov r3, sb
	strb r3, [r0]
	str r6, [r5, #0x40]
	str r6, [r5, #0x44]
	str r6, [r5, #0x50]
	str r6, [r5, #0x54]
	movs r0, #3
	ldrsb r0, [r7, r0]
	lsls r0, r0, #3
	str r0, [r5, #0x48]
	movs r0, #4
	ldrsb r0, [r7, r0]
	lsls r0, r0, #3
	str r0, [r5, #0x4c]
	adds r1, #0x19
	adds r0, r2, r1
	strb r3, [r0]
	ldrb r1, [r7, #6]
	ldr r3, _08095814 @ =0x0300003D
	adds r0, r2, r3
	strb r1, [r0]
	ldrb r0, [r7, #5]
	ldr r1, _08095818 @ =0x03000059
	adds r2, r2, r1
	strb r0, [r2]
	ldrb r0, [r7]
	lsls r0, r0, #3
	ldr r3, [sp, #4]
	lsls r1, r3, #8
	adds r0, r0, r1
	strh r0, [r4, #0x16]
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	mov r3, sl
	lsls r1, r3, #8
	adds r0, r0, r1
	strh r0, [r4, #0x18]
	ldrb r0, [r2]
	cmp r0, #1
	bhi _080958B4
	str r6, [r4, #0x10]
	ldr r0, _0809581C @ =gCurrentLevel
	ldrb r2, [r0]
	lsls r0, r2, #0x18
	asrs r1, r0, #0x18
	asrs r0, r0, #0x19
	cmp r0, #5
	beq _080957E8
	cmp r1, #0x11
	bne _08095854
_080957E8:
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08095840
	mov r0, r8
	cmp r0, #0
	bne _08095820
	movs r0, #0x4d
	bl VramMalloc
	str r0, [r4, #4]
	b _08095822
	.align 2, 0
_08095800: .4byte TaskDestructor_PipeEntrance
_08095804: .4byte Task_PipeEntrance
_08095808: .4byte 0x0300000C
_0809580C: .4byte 0x0300003C
_08095810: .4byte 0x0300003F
_08095814: .4byte 0x0300003D
_08095818: .4byte 0x03000059
_0809581C: .4byte gCurrentLevel
_08095820:
	str r6, [r4, #4]
_08095822:
	ldr r0, _0809583C @ =0x0000024F
	strh r0, [r4, #0xa]
	adds r0, r4, #0
	adds r0, #0x20
	mov r1, sb
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r0, [r0]
	cmp r0, #0
	bne _08095886
	b _0809587C
	.align 2, 0
_0809583C: .4byte 0x0000024F
_08095840:
	mov r3, r8
	cmp r3, #0
	bne _0809584C
	movs r0, #0x46
	bl VramMalloc
_0809584C:
	str r0, [r4, #4]
	movs r0, #0x92
	lsls r0, r0, #2
	b _08095868
_08095854:
	mov r3, r8
	cmp r3, #0
	bne _08095864
	movs r0, #0x46
	bl VramMalloc
	str r0, [r4, #4]
	b _08095866
_08095864:
	str r6, [r4, #4]
_08095866:
	ldr r0, _080958B0 @ =0x0000024D
_08095868:
	strh r0, [r4, #0xa]
	adds r0, r4, #0
	adds r0, #0x20
	mov r1, sb
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r0, [r0]
	cmp r0, #0
	beq _08095886
_0809587C:
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #0x10]
_08095886:
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r4, #0x1a]
	strh r6, [r4, #8]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x25
	mov r3, sb
	strb r3, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	b _08095966
	.align 2, 0
_080958B0: .4byte 0x0000024D
_080958B4:
	ldr r0, _080958E0 @ =gCurrentLevel
	ldrb r2, [r0]
	lsls r0, r2, #0x18
	asrs r1, r0, #0x18
	asrs r0, r0, #0x19
	cmp r0, #5
	beq _080958C6
	cmp r1, #0x11
	bne _08095908
_080958C6:
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _080958F0
	mov r0, r8
	cmp r0, #0
	bne _080958E4
	movs r0, #0x5b
	bl VramMalloc
	str r0, [r4, #4]
	b _080958E6
	.align 2, 0
_080958E0: .4byte gCurrentLevel
_080958E4:
	str r6, [r4, #4]
_080958E6:
	ldr r0, _080958EC @ =0x0000024E
	b _0809591E
	.align 2, 0
_080958EC: .4byte 0x0000024E
_080958F0:
	mov r3, r8
	cmp r3, #0
	bne _080958FC
	movs r0, #0x46
	bl VramMalloc
_080958FC:
	str r0, [r4, #4]
	ldr r0, _08095904 @ =0x0000024A
	b _0809591E
	.align 2, 0
_08095904: .4byte 0x0000024A
_08095908:
	mov r3, r8
	cmp r3, #0
	bne _08095918
	movs r0, #0x46
	bl VramMalloc
	str r0, [r4, #4]
	b _0809591A
_08095918:
	str r6, [r4, #4]
_0809591A:
	movs r0, #0x93
	lsls r0, r0, #2
_0809591E:
	strh r0, [r4, #0xa]
	adds r0, r4, #0
	adds r0, #0x20
	mov r1, sb
	strb r1, [r0]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r4, #0x1a]
	strh r6, [r4, #8]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x25
	mov r3, sb
	strb r3, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	str r6, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08095966
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r4, #0x10]
_08095966:
	mov r0, r8
	cmp r0, #0
	beq _08095976
	ldr r0, [r4, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x10]
_08095976:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	movs r1, #1
	add r8, r1
	ldr r0, _080959A8 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r8, r0
	bge _0809598E
	b _08095736
_0809598E:
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	strb r0, [r7]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080959A8: .4byte gNumSingleplayerCharacters

	thumb_func_start Task_PipeEntrance
Task_PipeEntrance: @ 0x080959AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r1, _08095A70 @ =gCurTask
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	add r0, r8
	mov sl, r0
	ldr r2, [r0]
	str r2, [sp, #0x14]
	ldr r3, _08095A74 @ =0x0300000C
	add r3, r8
	str r3, [sp, #0x18]
	ldr r0, _08095A78 @ =0x0300003C
	add r0, r8
	ldrb r0, [r0]
	ldr r5, _08095A7C @ =gPlayer
	cmp r0, #0
	beq _080959E0
	ldr r5, _08095A80 @ =gPartner
_080959E0:
	mov r0, sl
	ldrb r1, [r0, #8]
	lsls r1, r1, #3
	ldrh r0, [r0, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, [sp, #0x14]
	ldrb r2, [r3, #1]
	lsls r2, r2, #3
	mov r3, sl
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r4, _08095A84 @ =gCamera
	ldrh r3, [r4]
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
	subs r3, r7, r3
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldrh r0, [r4, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	strh r3, [r0, #0x16]
	ldrh r0, [r4, #2]
	subs r0, r2, r0
	ldr r1, [sp, #0x18]
	strh r0, [r1, #0x18]
	movs r3, #0
	str r3, [sp, #0x10]
	ldr r6, [r5, #0x10]
	movs r4, #0x80
	ands r6, r4
	cmp r6, #0
	beq _08095A34
	b _08095C8C
_08095A34:
	ldr r0, _08095A88 @ =0x03000059
	add r0, r8
	mov sb, r0
	ldrb r0, [r0]
	cmp r0, #1
	bls _08095A42
	b _08095B58
_08095A42:
	ldr r1, [r5]
	str r1, [sp]
	ldr r3, [r5, #4]
	str r3, [sp, #4]
	cmp r0, #0
	beq _08095A98
	ldr r0, _08095A8C @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xb
	bne _08095AA4
	ldr r0, _08095A90 @ =gStageFlags
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	movs r4, #0x80
	lsls r4, r4, #9
	cmp r0, #0
	beq _08095AB6
	ldr r4, _08095A94 @ =0x00100008
	b _08095AB6
	.align 2, 0
_08095A70: .4byte gCurTask
_08095A74: .4byte 0x0300000C
_08095A78: .4byte 0x0300003C
_08095A7C: .4byte gPlayer
_08095A80: .4byte gPartner
_08095A84: .4byte gCamera
_08095A88: .4byte 0x03000059
_08095A8C: .4byte gCurrentLevel
_08095A90: .4byte gStageFlags
_08095A94: .4byte 0x00100008
_08095A98:
	ldr r0, _08095AC8 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xb
	bne _08095AD4
_08095AA4:
	ldr r0, _08095ACC @ =gStageFlags
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	ldr r4, _08095AD0 @ =0x00100008
	cmp r0, #0
	beq _08095AB6
	movs r4, #0x80
	lsls r4, r4, #9
_08095AB6:
	ldr r0, [sp, #0x18]
	adds r1, r7, #0
	adds r3, r5, #0
	bl sub_80096B0
	ands r4, r0
	cmp r4, #0
	beq _08095AFA
	b _08095B02
	.align 2, 0
_08095AC8: .4byte gCurrentLevel
_08095ACC: .4byte gStageFlags
_08095AD0: .4byte 0x00100008
_08095AD4:
	ldr r0, _08095B50 @ =gStageFlags
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	movs r4, #0x80
	lsls r4, r4, #9
	cmp r0, #0
	beq _08095AE6
	ldr r4, _08095B54 @ =0x00100008
_08095AE6:
	ldr r0, [sp, #0x18]
	adds r1, r7, #0
	adds r3, r5, #0
	bl sub_80096B0
	ands r4, r0
	cmp r4, #0
	beq _08095AFA
	movs r0, #1
	str r0, [sp, #0x10]
_08095AFA:
	ldr r1, [sp, #0x10]
	cmp r1, #0
	bne _08095B02
	b _08095CA0
_08095B02:
	adds r0, r5, #0
	bl sub_8046CEC
	mov r1, sl
	adds r1, #0x3f
	movs r2, #0
	movs r0, #0x5a
	strb r0, [r1]
	ldr r0, [r5, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	adds r1, #6
	ands r0, r1
	subs r1, #0xfe
	ands r0, r1
	adds r1, #0xf0
	ands r0, r1
	subs r1, #0x10
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r5, #0x10]
	ldr r3, [sp]
	str r3, [r5]
	ldr r0, [sp, #4]
	str r0, [r5, #4]
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #5
	strb r0, [r1]
	movs r0, #0
	strh r2, [r5, #0xa]
	strh r2, [r5, #8]
	strh r2, [r5, #0xc]
	b _08095C54
	.align 2, 0
_08095B50: .4byte gStageFlags
_08095B54: .4byte 0x00100008
_08095B58:
	ldr r1, [r5]
	str r1, [sp]
	ldr r3, [r5, #4]
	str r3, [sp, #4]
	ldr r0, [sp, #0x18]
	adds r1, r7, #0
	adds r3, r5, #0
	bl sub_80096B0
	adds r1, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	bne _08095B78
	b _08095CA0
_08095B78:
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _08095BF4
	mov r0, sb
	ldrb r4, [r0]
	cmp r4, #2
	bne _08095BF4
	adds r0, r5, #0
	bl sub_8046CEC
	ldr r1, _08095BEC @ =0x0300003F
	add r1, r8
	movs r0, #0x5a
	strb r0, [r1]
	ldr r0, [r5, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	orrs r0, r4
	subs r1, #0xf8
	ands r0, r1
	adds r1, #0xf0
	ands r0, r1
	subs r1, #0x10
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r5, #0x10]
	ldr r1, [sp]
	str r1, [r5]
	ldr r2, [sp, #4]
	str r2, [r5, #4]
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #5
	strb r0, [r1]
	strh r6, [r5, #0xa]
	strh r6, [r5, #8]
	strh r6, [r5, #0xc]
	adds r1, #0x2d
	movs r0, #0
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #0xe
	bl sa2__sub_8023B5C
	movs r0, #6
	strb r0, [r5, #0xe]
	movs r0, #0xe
	strb r0, [r5, #0xf]
	ldr r3, _08095BF0 @ =gCurTask
	ldr r1, [r3]
	b _08095C6C
	.align 2, 0
_08095BEC: .4byte 0x0300003F
_08095BF0: .4byte gCurTask
_08095BF4:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r1
	cmp r0, #0
	beq _08095CA0
	mov r0, sl
	adds r0, #0x59
	ldrb r0, [r0]
	cmp r0, #3
	bne _08095CA0
	mov r1, sl
	adds r1, #0x3f
	movs r4, #0
	movs r0, #0x5a
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_8046CEC
	ldr r0, [r5, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	ldr r1, _08095C80 @ =0xFFFFFEFF
	ands r0, r1
	adds r1, #0xf0
	ands r0, r1
	subs r1, #0x10
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r5, #0x10]
	ldr r0, [sp]
	str r0, [r5]
	ldr r1, [sp, #4]
	str r1, [r5, #4]
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #5
	strb r0, [r1]
	movs r0, #0
	strh r4, [r5, #0xa]
	strh r4, [r5, #8]
	strh r4, [r5, #0xc]
_08095C54:
	adds r1, #0x2d
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #0xe
	bl sa2__sub_8023B5C
	movs r0, #6
	strb r0, [r5, #0xe]
	movs r0, #0xe
	strb r0, [r5, #0xf]
	ldr r0, _08095C84 @ =gCurTask
	ldr r1, [r0]
_08095C6C:
	ldr r0, _08095C88 @ =sub_8095D28
	str r0, [r1, #8]
	adds r2, r5, #0
	adds r2, #0x26
	ldrb r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2]
	b _08095CA0
	.align 2, 0
_08095C80: .4byte 0xFFFFFEFF
_08095C84: .4byte gCurTask
_08095C88: .4byte sub_8095D28
_08095C8C:
	adds r0, r5, #0
	bl sub_8046CEC
	ldr r0, [r5, #0x10]
	orrs r0, r4
	str r0, [r5, #0x10]
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #1
	strb r0, [r1]
_08095CA0:
	ldr r2, [sp, #8]
	lsls r0, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #0x10
	adds r0, r0, r3
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08095CC8
	ldr r1, [sp, #0xc]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	adds r0, #0x80
	cmp r0, #0
	blt _08095CC8
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08095D00
_08095CC8:
	mov r0, sl
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0
	beq _08095CDA
	ldr r0, [r5, #0x10]
	ldr r1, _08095CF8 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
_08095CDA:
	mov r0, sl
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _08095CEC
	mov r2, sl
	ldrb r0, [r2, #8]
	ldr r3, [sp, #0x14]
	strb r0, [r3]
_08095CEC:
	ldr r0, _08095CFC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08095D16
	.align 2, 0
_08095CF8: .4byte 0xFFBFFFFF
_08095CFC: .4byte gCurTask
_08095D00:
	ldr r0, [sp, #0x18]
	bl UpdateSpriteAnimation
	mov r0, sl
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _08095D16
	ldr r0, [sp, #0x18]
	bl DisplaySprite
_08095D16:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8095D28
sub_8095D28: @ 0x08095D28
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08095DB4 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	ldr r2, [r6]
	ldr r1, _08095DB8 @ =0x0300000C
	adds r7, r5, r1
	ldr r3, _08095DBC @ =0x0300003C
	adds r0, r5, r3
	ldrb r0, [r0]
	ldr r4, _08095DC0 @ =gPlayer
	cmp r0, #0
	beq _08095D52
	ldr r4, _08095DC4 @ =gPartner
_08095D52:
	ldrb r1, [r6, #8]
	lsls r1, r1, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldrb r2, [r2, #1]
	lsls r2, r2, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	mov sb, r2
	ldr r3, _08095DC8 @ =gCamera
	ldrh r0, [r3]
	lsrs r2, r1, #0x10
	mov ip, r2
	asrs r1, r1, #0x10
	subs r0, r1, r0
	strh r0, [r7, #0x16]
	ldrh r0, [r3, #2]
	mov r3, sb
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r7, #0x18]
	ldr r3, [r4, #0x10]
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	bne _08095E64
	ldr r3, _08095DCC @ =0x0300003F
	adds r0, r5, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08095E2C
	lsls r2, r2, #8
	ldr r0, [r4, #4]
	cmp r0, r2
	beq _08095DDC
	cmp r0, r2
	bge _08095DD0
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r4, #4]
	cmp r0, r2
	ble _08095DDC
	b _08095DDA
	.align 2, 0
_08095DB4: .4byte gCurTask
_08095DB8: .4byte 0x0300000C
_08095DBC: .4byte 0x0300003C
_08095DC0: .4byte gPlayer
_08095DC4: .4byte gPartner
_08095DC8: .4byte gCamera
_08095DCC: .4byte 0x0300003F
_08095DD0:
	ldr r3, _08095DFC @ =0xFFFFFE80
	adds r0, r0, r3
	str r0, [r4, #4]
	cmp r0, r2
	bge _08095DDC
_08095DDA:
	str r2, [r4, #4]
_08095DDC:
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r1, r0, #8
	ldr r0, [r4]
	cmp r0, r1
	beq _08095E0C
	cmp r0, r1
	bge _08095E00
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r4]
	cmp r0, r1
	ble _08095E0C
	b _08095E0A
	.align 2, 0
_08095DFC: .4byte 0xFFFFFE80
_08095E00:
	ldr r3, _08095E28 @ =0xFFFFFE80
	adds r0, r0, r3
	str r0, [r4]
	cmp r0, r1
	bge _08095E0C
_08095E0A:
	str r1, [r4]
_08095E0C:
	adds r1, r6, #0
	adds r1, #0x3f
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x2d
	bne _08095E4A
	movs r0, #0x6d
	bl m4aSongNumStart
	b _08095E4A
	.align 2, 0
_08095E28: .4byte 0xFFFFFE80
_08095E2C:
	str r1, [r6, #0x40]
	str r2, [r6, #0x44]
	ldr r0, _08095E5C @ =0x03000058
	adds r1, r5, r0
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r4, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	mov r2, r8
	ldr r1, [r2]
	ldr r0, _08095E60 @ =sub_8095E90
	str r0, [r1, #8]
_08095E4A:
	adds r0, r4, #0
	bl sub_8046CEC
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #5
	strb r0, [r1]
	b _08095E6A
	.align 2, 0
_08095E5C: .4byte 0x03000058
_08095E60: .4byte sub_8095E90
_08095E64:
	ldr r0, _08095E8C @ =0xFFBFFFFF
	ands r3, r0
	str r3, [r4, #0x10]
_08095E6A:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _08095E80
	adds r0, r7, #0
	bl DisplaySprite
_08095E80:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08095E8C: .4byte 0xFFBFFFFF

	thumb_func_start sub_8095E90
sub_8095E90: @ 0x08095E90
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r1, _08095FD4 @ =gCurTask
	ldr r0, [r1]
	mov ip, r0
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r4
	mov r8, r0
	ldr r2, [r0]
	mov sl, r2
	ldr r3, _08095FD8 @ =0x0300000C
	adds r3, r4, r3
	str r3, [sp]
	ldr r2, _08095FDC @ =0x0300003C
	adds r0, r4, r2
	ldrb r0, [r0]
	ldr r7, _08095FE0 @ =gPlayer
	cmp r0, #0
	beq _08095EC4
	ldr r7, _08095FE4 @ =gPartner
_08095EC4:
	mov r3, r8
	ldrb r2, [r3, #8]
	lsls r2, r2, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	mov r0, sl
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _08095FE8 @ =gCamera
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, [sp]
	strh r2, [r0, #0x16]
	ldrh r0, [r3, #2]
	subs r1, r1, r0
	ldr r2, [sp]
	strh r1, [r2, #0x18]
	ldr r3, _08095FEC @ =0x03000058
	adds r3, r3, r4
	mov sb, r3
	ldrb r0, [r3]
	cmp r0, #0
	bne _08095F10
	b _08096054
_08095F10:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08095F1C
	b _08096040
_08095F1C:
	adds r0, r7, #0
	adds r0, #0x6d
	str r0, [sp, #4]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, _08095FF0 @ =0x0300003D
	adds r1, r1, r4
	mov sl, r1
	ldrb r2, [r1]
	cmp r0, r2
	beq _08095F36
	b _08096038
_08095F36:
	ldr r3, _08095FF4 @ =0x0300003F
	adds r5, r4, r3
	ldrb r1, [r5]
	mov r2, r8
	ldr r0, [r2, #0x48]
	muls r0, r1, r0
	subs r3, #1
	adds r4, r4, r3
	ldrb r1, [r4]
	bl Div
	adds r6, r0, #0
	ldrb r1, [r5]
	mov r2, r8
	ldr r0, [r2, #0x4c]
	muls r0, r1, r0
	ldrb r1, [r4]
	bl Div
	mov r3, r8
	ldr r2, [r3, #0x40]
	adds r2, r2, r6
	lsls r2, r2, #8
	str r2, [r7]
	ldr r1, [r3, #0x44]
	adds r1, r1, r0
	lsls r1, r1, #8
	str r1, [r7, #4]
	ldr r0, [r3, #0x54]
	subs r1, r1, r0
	strh r1, [r7, #0xa]
	ldr r0, [r3, #0x50]
	subs r2, r2, r0
	strh r2, [r7, #0xc]
	strh r2, [r7, #8]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	ldr r2, [r7]
	asrs r2, r2, #8
	ldr r0, [r3, #0x40]
	ldr r1, [r3, #0x48]
	adds r0, r0, r1
	cmp r2, r0
	bne _08095FFC
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	ldr r1, [r3, #0x44]
	ldr r2, [r3, #0x4c]
	adds r1, r1, r2
	cmp r0, r1
	bne _08095FFC
	ldr r1, [sp, #4]
	movs r0, #0
	ldrsb r0, [r1, r0]
	mov r2, sl
	ldrb r2, [r2]
	cmp r0, r2
	bne _08095FC0
	ldr r0, [r7, #0x10]
	ldr r1, _08095FF8 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r7, #0x10]
	ldr r2, _08095FE0 @ =gPlayer
	adds r2, #0x26
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
_08095FC0:
	movs r0, #0
	mov r3, sb
	strb r0, [r3]
	adds r2, r7, #0
	adds r2, #0x26
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	b _0809602C
	.align 2, 0
_08095FD4: .4byte gCurTask
_08095FD8: .4byte 0x0300000C
_08095FDC: .4byte 0x0300003C
_08095FE0: .4byte gPlayer
_08095FE4: .4byte gPartner
_08095FE8: .4byte gCamera
_08095FEC: .4byte 0x03000058
_08095FF0: .4byte 0x0300003D
_08095FF4: .4byte 0x0300003F
_08095FF8: .4byte 0xFFBFFFFF
_08095FFC:
	adds r0, r7, #0
	bl sub_8046CEC
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r7, #0x10]
	adds r1, r7, #0
	adds r1, #0x40
	movs r0, #5
	strb r0, [r1]
	adds r0, r7, #0
	movs r1, #0xe
	bl sa2__sub_8023B5C
	movs r0, #6
	strb r0, [r7, #0xe]
	movs r0, #0xe
	strb r0, [r7, #0xf]
	mov r1, r8
	adds r1, #0x58
	movs r0, #1
	strb r0, [r1]
_0809602C:
	ldr r0, [r7]
	mov r1, r8
	str r0, [r1, #0x50]
	ldr r0, [r7, #4]
	str r0, [r1, #0x54]
	b _080960DC
_08096038:
	movs r3, #0
	mov r2, sb
	strb r3, [r2]
	b _080960DC
_08096040:
	movs r1, #0
	mov r0, sb
	strb r1, [r0]
	ldr r0, [r7, #0x10]
	ldr r1, _08096050 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r7, #0x10]
	b _080960DC
	.align 2, 0
_08096050: .4byte 0xFFBFFFFF
_08096054:
	ldr r0, _080960CC @ =Task_PipeEntrance
	mov r2, ip
	str r0, [r2, #8]
	lsls r0, r5, #0x10
	movs r3, #0x80
	lsls r3, r3, #0x10
	adds r0, r0, r3
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0809607E
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	adds r0, #0x80
	cmp r0, #0
	blt _0809607E
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _080960DC
_0809607E:
	mov r0, r8
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0
	beq _080960B0
	adds r0, r7, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r1, r8
	adds r1, #0x3d
	ldrb r1, [r1]
	cmp r0, r1
	bne _080960B0
	ldr r0, [r7, #0x10]
	ldr r1, _080960D0 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r7, #0x10]
	ldr r2, _080960D4 @ =gPlayer
	adds r2, #0x26
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
_080960B0:
	mov r0, r8
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080960C2
	mov r1, r8
	ldrb r0, [r1, #8]
	mov r2, sl
	strb r0, [r2]
_080960C2:
	ldr r3, _080960D8 @ =gCurTask
	ldr r0, [r3]
	bl TaskDestroy
	b _080960F2
	.align 2, 0
_080960CC: .4byte Task_PipeEntrance
_080960D0: .4byte 0xFFBFFFFF
_080960D4: .4byte gPlayer
_080960D8: .4byte gCurTask
_080960DC:
	ldr r0, [sp]
	bl UpdateSpriteAnimation
	mov r0, r8
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080960F2
	ldr r0, [sp]
	bl DisplaySprite
_080960F2:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start TaskDestructor_PipeEntrance
TaskDestructor_PipeEntrance: @ 0x08096104
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r0, r1
	ldr r2, _08096124 @ =0x0300003C
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0809611E
	ldr r0, [r1, #0x10]
	bl VramFree
_0809611E:
	pop {r0}
	bx r0
	.align 2, 0
_08096124: .4byte 0x0300003C

	thumb_func_start CreateEntity_PipeExit
CreateEntity_PipeExit: @ 0x08096128
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #8]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #0xc]
	movs r0, #0
	mov r8, r0
	movs r1, #0
	mov sl, r1
	movs r7, #0
	movs r2, #1
	mov sb, r2
_08096156:
	ldrb r2, [r6, #6]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r3, #0
	orrs r2, r0
	ldr r0, _0809620C @ =TaskDestructor_PipeExit
	str r0, [sp]
	ldr r0, _08096210 @ =Task_PipeExit
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	ldr r1, _08096214 @ =0x0300000C
	adds r4, r2, r1
	mov r3, sp
	ldrh r3, [r3, #4]
	strh r3, [r5, #4]
	mov r0, sp
	ldrh r0, [r0, #8]
	strh r0, [r5, #6]
	str r6, [r5]
	ldrb r0, [r6]
	strb r0, [r5, #8]
	mov r1, sp
	ldrb r1, [r1, #0xc]
	strb r1, [r5, #9]
	ldr r3, _08096218 @ =0x0300003C
	adds r0, r2, r3
	mov r1, r8
	strb r1, [r0]
	adds r3, #2
	adds r0, r2, r3
	mov r1, sl
	strb r1, [r0]
	ldrb r1, [r6, #6]
	subs r3, #1
	adds r0, r2, r3
	strb r1, [r0]
	ldrb r0, [r6, #5]
	ldr r1, _0809621C @ =0x0300003F
	adds r3, r2, r1
	strb r0, [r3]
	movs r0, #4
	ldrsb r0, [r6, r0]
	lsls r0, r0, #6
	adds r1, #1
	adds r2, r2, r1
	strh r0, [r2]
	ldrb r0, [r6]
	lsls r0, r0, #3
	ldr r2, [sp, #4]
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r4, #0x16]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	ldr r2, [sp, #8]
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r4, #0x18]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r4, #0x1a]
	ldrb r0, [r3]
	cmp r0, #1
	bhi _080962A8
	ldr r0, _08096220 @ =gCurrentLevel
	ldrb r2, [r0]
	lsls r0, r2, #0x18
	asrs r1, r0, #0x18
	asrs r0, r0, #0x19
	cmp r0, #5
	beq _080961F4
	cmp r1, #0x11
	bne _08096250
_080961F4:
	mov r0, sb
	ands r0, r2
	cmp r0, #0
	beq _08096230
	mov r3, r8
	cmp r3, #0
	bne _08096224
	movs r0, #0x4d
	bl VramMalloc
	str r0, [r4, #4]
	b _08096226
	.align 2, 0
_0809620C: .4byte TaskDestructor_PipeExit
_08096210: .4byte Task_PipeExit
_08096214: .4byte 0x0300000C
_08096218: .4byte 0x0300003C
_0809621C: .4byte 0x0300003F
_08096220: .4byte gCurrentLevel
_08096224:
	str r7, [r4, #4]
_08096226:
	ldr r0, _0809622C @ =0x0000024F
	b _08096264
	.align 2, 0
_0809622C: .4byte 0x0000024F
_08096230:
	mov r2, r8
	cmp r2, #0
	bne _0809623C
	movs r0, #0x46
	bl VramMalloc
_0809623C:
	str r0, [r4, #4]
	ldr r0, _0809624C @ =0x00000249
	strh r0, [r4, #0xa]
	adds r0, r4, #0
	adds r0, #0x20
	mov r3, sl
	strb r3, [r0]
	b _0809626E
	.align 2, 0
_0809624C: .4byte 0x00000249
_08096250:
	mov r0, r8
	cmp r0, #0
	bne _08096260
	movs r0, #0x46
	bl VramMalloc
	str r0, [r4, #4]
	b _08096262
_08096260:
	str r7, [r4, #4]
_08096262:
	ldr r0, _080962A4 @ =0x0000024D
_08096264:
	strh r0, [r4, #0xa]
	adds r0, r4, #0
	adds r0, #0x20
	mov r1, sb
	strb r1, [r0]
_0809626E:
	strh r7, [r4, #8]
	strh r7, [r4, #0x14]
	strh r7, [r4, #0x1c]
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x25
	mov r2, sl
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	str r7, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0
	beq _0809635C
	movs r0, #0x80
	lsls r0, r0, #4
	b _0809635A
	.align 2, 0
_080962A4: .4byte 0x0000024D
_080962A8:
	ldr r0, _080962D4 @ =gCurrentLevel
	ldrb r2, [r0]
	lsls r0, r2, #0x18
	asrs r1, r0, #0x18
	asrs r0, r0, #0x19
	cmp r0, #5
	beq _080962BA
	cmp r1, #0x11
	bne _08096304
_080962BA:
	mov r0, sb
	ands r0, r2
	cmp r0, #0
	beq _080962E4
	mov r3, r8
	cmp r3, #0
	bne _080962D8
	movs r0, #0x5b
	bl VramMalloc
	str r0, [r4, #4]
	b _080962DA
	.align 2, 0
_080962D4: .4byte gCurrentLevel
_080962D8:
	str r7, [r4, #4]
_080962DA:
	ldr r0, _080962E0 @ =0x0000024E
	b _0809631A
	.align 2, 0
_080962E0: .4byte 0x0000024E
_080962E4:
	mov r2, r8
	cmp r2, #0
	bne _080962F0
	movs r0, #0x46
	bl VramMalloc
_080962F0:
	str r0, [r4, #4]
	ldr r0, _08096300 @ =0x0000024B
	strh r0, [r4, #0xa]
	adds r0, r4, #0
	adds r0, #0x20
	mov r3, sl
	strb r3, [r0]
	b _08096324
	.align 2, 0
_08096300: .4byte 0x0000024B
_08096304:
	mov r0, r8
	cmp r0, #0
	bne _08096314
	movs r0, #0x46
	bl VramMalloc
	str r0, [r4, #4]
	b _08096316
_08096314:
	str r7, [r4, #4]
_08096316:
	movs r0, #0x93
	lsls r0, r0, #2
_0809631A:
	strh r0, [r4, #0xa]
	adds r0, r4, #0
	adds r0, #0x20
	mov r1, sb
	strb r1, [r0]
_08096324:
	strh r7, [r4, #8]
	strh r7, [r4, #0x14]
	strh r7, [r4, #0x1c]
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x25
	mov r2, sl
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	str r7, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x3f
	ldrb r1, [r0]
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _0809635C
	movs r0, #0x80
	lsls r0, r0, #3
_0809635A:
	str r0, [r4, #0x10]
_0809635C:
	mov r3, r8
	cmp r3, #0
	beq _0809636C
	ldr r0, [r4, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x10]
_0809636C:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	movs r0, #1
	add r8, r0
	ldr r0, _0809639C @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r8, r0
	bge _08096384
	b _08096156
_08096384:
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809639C: .4byte gNumSingleplayerCharacters

	thumb_func_start Task_PipeExit
Task_PipeExit: @ 0x080963A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r1, _080964B8 @ =gCurTask
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	add r0, r8
	str r0, [sp]
	ldr r2, [r0]
	str r2, [sp, #4]
	ldr r6, _080964BC @ =0x0300000C
	add r6, r8
	ldr r0, _080964C0 @ =0x0300003C
	add r0, r8
	ldrb r0, [r0]
	ldr r4, _080964C4 @ =gPlayer
	cmp r0, #0
	beq _080963D2
	ldr r4, _080964C8 @ =gPartner
_080963D2:
	ldr r3, [sp]
	ldrb r1, [r3, #8]
	lsls r1, r1, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [sp, #4]
	ldrb r2, [r0, #1]
	lsls r2, r2, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _080964CC @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov sl, r1
	subs r0, r1, r0
	strh r0, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r7, r2, #0x10
	subs r0, r7, r0
	strh r0, [r6, #0x18]
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	mov sb, r1
	adds r5, r0, #0
	ands r5, r1
	cmp r5, #0
	bne _080964EA
	movs r2, #0x80
	lsls r2, r2, #0xf
	ands r0, r2
	cmp r0, #0
	beq _080964DC
	movs r3, #0x6d
	adds r3, r3, r4
	mov sb, r3
	movs r1, #0
	ldrsb r1, [r3, r1]
	ldr r0, _080964D0 @ =0x0300003D
	add r0, r8
	ldrb r0, [r0]
	cmp r1, r0
	bge _08096500
	adds r0, r6, #0
	mov r1, sl
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_800CE34
	cmp r0, #0
	beq _08096500
	ldr r1, _080964D4 @ =0x0300003E
	add r1, r8
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_8046CEC
	ldr r0, [r4, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	adds r1, #6
	ands r0, r1
	subs r1, #0xfe
	ands r0, r1
	adds r1, #0xf0
	ands r0, r1
	subs r1, #0x10
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #5
	strb r0, [r1]
	lsls r0, r7, #8
	str r0, [r4, #4]
	mov r2, sl
	lsls r0, r2, #8
	str r0, [r4]
	strh r5, [r4, #0xa]
	strh r5, [r4, #8]
	strh r5, [r4, #0xc]
	strh r5, [r4, #0x38]
	strh r5, [r4, #0x3a]
	movs r0, #0x7f
	mov r3, sb
	strb r0, [r3]
	adds r0, r4, #0
	movs r1, #0xe
	bl sa2__sub_8023B5C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
	ldr r0, _080964B8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080964D8 @ =sub_809656C
	str r0, [r1, #8]
	adds r2, r4, #0
	adds r2, #0x26
	ldrb r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2]
	b _08096500
	.align 2, 0
_080964B8: .4byte gCurTask
_080964BC: .4byte 0x0300000C
_080964C0: .4byte 0x0300003C
_080964C4: .4byte gPlayer
_080964C8: .4byte gPartner
_080964CC: .4byte gCamera
_080964D0: .4byte 0x0300003D
_080964D4: .4byte 0x0300003E
_080964D8: .4byte sub_809656C
_080964DC:
	adds r0, r6, #0
	mov r1, sl
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_80096B0
	b _08096500
_080964EA:
	adds r0, r4, #0
	bl sub_8046CEC
	ldr r0, [r4, #0x10]
	mov r1, sb
	orrs r0, r1
	str r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #1
	strb r0, [r1]
_08096500:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08096524
	movs r2, #0x18
	ldrsh r0, [r6, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _08096524
	movs r3, #0x18
	ldrsh r1, [r6, r3]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08096544
_08096524:
	ldr r0, [sp]
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _08096536
	ldr r1, [sp]
	ldrb r0, [r1, #8]
	ldr r2, [sp, #4]
	strb r0, [r2]
_08096536:
	ldr r0, _08096540 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0809655A
	.align 2, 0
_08096540: .4byte gCurTask
_08096544:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	ldr r0, [sp]
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0809655A
	adds r0, r6, #0
	bl DisplaySprite
_0809655A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_809656C
sub_809656C: @ 0x0809656C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r1, _080965FC @ =gCurTask
	ldr r0, [r1]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r6, r0
	ldr r2, [r7]
	adds r0, #0xc
	adds r0, r0, r6
	mov r8, r0
	ldr r3, _08096600 @ =0x0300003C
	adds r0, r6, r3
	ldrb r0, [r0]
	ldr r4, _08096604 @ =gPlayer
	mov sb, r1
	cmp r0, #0
	beq _08096598
	ldr r4, _08096608 @ =gPartner
_08096598:
	ldrb r1, [r7, #8]
	lsls r1, r1, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldrb r2, [r2, #1]
	lsls r2, r2, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _0809660C @ =gCamera
	ldrh r0, [r3]
	lsrs r5, r1, #0x10
	mov ip, r5
	asrs r1, r1, #0x10
	subs r1, r1, r0
	mov r0, r8
	strh r1, [r0, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r2, r0
	mov r1, r8
	strh r0, [r1, #0x18]
	ldr r3, [r4, #0x10]
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	beq _080965D6
	b _080966F8
_080965D6:
	ldr r5, _08096610 @ =0x0300003E
	adds r0, r6, r5
	ldrb r5, [r0]
	cmp r5, #0
	beq _08096660
	lsls r2, r2, #8
	ldr r0, [r4, #4]
	cmp r0, r2
	beq _08096620
	cmp r0, r2
	bge _08096614
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r4, #4]
	cmp r0, r2
	ble _08096620
	b _0809661E
	.align 2, 0
_080965FC: .4byte gCurTask
_08096600: .4byte 0x0300003C
_08096604: .4byte gPlayer
_08096608: .4byte gPartner
_0809660C: .4byte gCamera
_08096610: .4byte 0x0300003E
_08096614:
	ldr r3, _08096640 @ =0xFFFFFE80
	adds r0, r0, r3
	str r0, [r4, #4]
	cmp r0, r2
	bge _08096620
_0809661E:
	str r2, [r4, #4]
_08096620:
	mov r5, ip
	lsls r0, r5, #0x10
	asrs r1, r0, #8
	ldr r0, [r4]
	cmp r0, r1
	beq _08096650
	cmp r0, r1
	bge _08096644
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r4]
	cmp r0, r1
	ble _08096650
	b _0809664E
	.align 2, 0
_08096640: .4byte 0xFFFFFE80
_08096644:
	ldr r3, _0809665C @ =0xFFFFFE80
	adds r0, r0, r3
	str r0, [r4]
	cmp r0, r1
	bge _08096650
_0809664E:
	str r1, [r4]
_08096650:
	adds r1, r7, #0
	adds r1, #0x3e
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	b _080966E2
	.align 2, 0
_0809665C: .4byte 0xFFFFFE80
_08096660:
	ldr r1, _0809667C @ =0x0300003F
	adds r0, r6, r1
	ldrb r2, [r0]
	cmp r2, #1
	bhi _08096698
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08096684
	ldr r2, _08096680 @ =0x03000040
	adds r0, r6, r2
	ldrh r0, [r0]
	rsbs r0, r0, #0
	b _0809668A
	.align 2, 0
_0809667C: .4byte 0x0300003F
_08096680: .4byte 0x03000040
_08096684:
	ldr r3, _08096694 @ =0x03000040
	adds r0, r6, r3
	ldrh r0, [r0]
_0809668A:
	strh r0, [r4, #0xa]
	strh r5, [r4, #8]
	strh r5, [r4, #0xc]
	b _080966D2
	.align 2, 0
_08096694: .4byte 0x03000040
_08096698:
	movs r0, #1
	adds r1, r0, #0
	ands r1, r2
	cmp r1, #0
	beq _080966BC
	orrs r3, r0
	str r3, [r4, #0x10]
	strh r5, [r4, #0xa]
	ldr r5, _080966B8 @ =0x03000040
	adds r0, r6, r5
	ldrh r1, [r0]
	rsbs r1, r1, #0
	strh r1, [r4, #8]
	ldrh r0, [r0]
	rsbs r0, r0, #0
	b _080966D0
	.align 2, 0
_080966B8: .4byte 0x03000040
_080966BC:
	movs r0, #2
	rsbs r0, r0, #0
	ands r3, r0
	str r3, [r4, #0x10]
	strh r1, [r4, #0xa]
	ldr r0, _0809671C @ =0x03000040
	adds r1, r6, r0
	ldrh r0, [r1]
	strh r0, [r4, #8]
	ldrh r0, [r1]
_080966D0:
	strh r0, [r4, #0xc]
_080966D2:
	adds r1, r7, #0
	adds r1, #0x3e
	movs r0, #0xf
	strb r0, [r1]
	mov r2, sb
	ldr r1, [r2]
	ldr r0, _08096720 @ =sub_8096724
	str r0, [r1, #8]
_080966E2:
	adds r0, r4, #0
	bl sub_8046CEC
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #5
	strb r0, [r1]
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
_080966F8:
	mov r0, r8
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0809670E
	mov r0, r8
	bl DisplaySprite
_0809670E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809671C: .4byte 0x03000040
_08096720: .4byte sub_8096724

	thumb_func_start sub_8096724
sub_8096724: @ 0x08096724
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _080967F8 @ =gCurTask
	ldr r0, [r1]
	mov sb, r0
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	ldr r2, [r6]
	mov sl, r2
	adds r0, #0xc
	adds r0, r0, r5
	mov r8, r0
	ldr r2, _080967FC @ =0x0300003C
	adds r0, r5, r2
	ldrb r0, [r0]
	ldr r4, _08096800 @ =gPlayer
	cmp r0, #0
	beq _08096754
	ldr r4, _08096804 @ =gPartner
_08096754:
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	mov r0, sl
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _08096808 @ =gCamera
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	lsls r0, r2, #0x10
	lsrs r7, r0, #0x10
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	mov r0, r8
	strh r2, [r0, #0x16]
	ldrh r0, [r3, #2]
	subs r1, r1, r0
	mov r2, r8
	strh r1, [r2, #0x18]
	ldr r0, _0809680C @ =0x0300003E
	adds r2, r5, r0
	ldrb r3, [r2]
	cmp r3, #0
	beq _0809681C
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0809686C
	subs r0, r3, #1
	strb r0, [r2]
	movs r0, #8
	ldrsh r1, [r4, r0]
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	movs r0, #0xa
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
	ldrb r0, [r2]
	cmp r0, #0
	bne _0809686C
	ldr r0, [r4, #0x10]
	ldr r1, _08096810 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r1, _08096814 @ =gUnknown_030060E0
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	orrs r0, r1
	ldrh r1, [r4, #0x38]
	orrs r0, r1
	strh r0, [r4, #0x38]
	adds r0, r4, #0
	adds r0, #0x6d
	movs r2, #0x7f
	strb r2, [r0]
	ldr r0, [r4, #0x10]
	ldr r1, _08096818 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x26
	ldrb r0, [r1]
	ands r2, r0
	strb r2, [r1]
	b _0809686C
	.align 2, 0
_080967F8: .4byte gCurTask
_080967FC: .4byte 0x0300003C
_08096800: .4byte gPlayer
_08096804: .4byte gPartner
_08096808: .4byte gCamera
_0809680C: .4byte 0x0300003E
_08096810: .4byte 0xFFDFFFFF
_08096814: .4byte gUnknown_030060E0
_08096818: .4byte 0xFFBFFFFF
_0809681C:
	ldr r0, _08096864 @ =Task_PipeExit
	mov r1, sb
	str r0, [r1, #8]
	lsls r0, r7, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x10
	adds r0, r0, r2
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08096848
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	adds r0, #0x80
	cmp r0, #0
	blt _08096848
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0809686C
_08096848:
	adds r0, r6, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _08096858
	ldrb r0, [r6, #8]
	mov r2, sl
	strb r0, [r2]
_08096858:
	ldr r1, _08096868 @ =gCurTask
	ldr r0, [r1]
	bl TaskDestroy
	b _08096882
	.align 2, 0
_08096864: .4byte Task_PipeExit
_08096868: .4byte gCurTask
_0809686C:
	mov r0, r8
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _08096882
	mov r0, r8
	bl DisplaySprite
_08096882:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_PipeExit
TaskDestructor_PipeExit: @ 0x08096890
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r0, r1
	ldr r2, _080968B0 @ =0x0300003C
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _080968AA
	ldr r0, [r1, #0x10]
	bl VramFree
_080968AA:
	pop {r0}
	bx r0
	.align 2, 0
_080968B0: .4byte 0x0300003C
