.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_8077FA4
sub_8077FA4: @ 0x08077FA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	adds r5, r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	movs r0, #0
	mov sl, r0
	mov sb, r0
	adds r0, r2, #0
	adds r0, #0xf
	lsls r0, r0, #8
	str r0, [sp, #8]
	ldr r1, _08078014 @ =gPlayer + 0x26
	mov r8, r1
	adds r0, r5, #0
	adds r0, #0x21
	str r0, [sp, #0xc]
_08077FD0:
	ldr r4, _08078018 @ =gPlayer
	mov r1, sb
	cmp r1, #0
	beq _08077FDA
	ldr r4, _0807801C @ =gPartner
_08077FDA:
	ldr r0, [sp]
	lsls r1, r0, #0x10
	ldr r0, [sp, #4]
	lsls r2, r0, #0x10
	adds r0, r5, #0
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	adds r3, r4, #0
	bl sa2__sub_800DF38
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r1, r0
	cmp r1, #0
	beq _0807808A
	ldr r2, [r4, #0x10]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	bne _0807808A
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	bne _08078024
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	ldr r0, _08078020 @ =0xFFFFFD00
	b _0807802A
	.align 2, 0
_08078014: .4byte gPlayer + 0x26
_08078018: .4byte gPlayer
_0807801C: .4byte gPartner
_08078020: .4byte 0xFFFFFD00
_08078024:
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	ldr r0, _080780AC @ =0xFFFFFAC0
_0807802A:
	cmp r1, r0
	bge _0807808A
	movs r6, #1
	ands r2, r6
	cmp r2, #0
	beq _0807808A
	adds r0, r4, #0
	bl Player_TransitionCancelFlyingAndBoost
	movs r0, #0xaf
	bl m4aSongNumStart
	ldr r1, [sp, #8]
	str r1, [r4]
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r4, #0x10]
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x80
	orrs r0, r1
	mov r1, r8
	strb r0, [r1]
	movs r0, #0xff
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	adds r0, #0xd6
	strh r0, [r5, #0xa]
	adds r0, r5, #0
	adds r0, #0x20
	strb r6, [r0]
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x3f
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x40
	ldrb r0, [r1]
	adds r2, r7, #0
	adds r2, #0x3e
	strb r0, [r2]
	movs r0, #0x1e
	strb r0, [r1]
	mov sl, r6
_0807808A:
	movs r0, #1
	add sb, r0
	ldr r0, _080780B0 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp sb, r0
	blt _08077FD0
	mov r0, sl
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080780AC: .4byte 0xFFFFFAC0
_080780B0: .4byte gNumSingleplayerCharacters

	thumb_func_start sub_80780B4
sub_80780B4: @ 0x080780B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov r8, r0
	adds r5, r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r6, #0
	adds r0, r2, #0
	subs r0, #0xf
	lsls r0, r0, #8
	str r0, [sp, #0xc]
	ldr r1, _080780E4 @ =gPlayer + 0x26
	mov sl, r1
	adds r2, r5, #0
	adds r2, #0x21
	str r2, [sp, #0x10]
	b _08078122
	.align 2, 0
_080780E4: .4byte gPlayer + 0x26
_080780E8:
	movs r3, #0xc
	ldrsh r1, [r4, r3]
	movs r0, #0xa8
	lsls r0, r0, #3
	cmp r1, r0
	ble _0807810E
	movs r7, #1
	ands r2, r7
	cmp r2, #0
	bne _0807810E
	adds r0, r4, #0
	bl Player_TransitionCancelFlyingAndBoost
	movs r0, #0xaf
	bl m4aSongNumStart
	ldr r0, [sp, #0xc]
	str r0, [r4]
	b _08078180
_0807810E:
	adds r6, #1
	ldr r0, _080781D8 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r6, r0
	bge _080781C4
	ldr r4, _080781DC @ =gPartner
	cmp r6, #0
	bne _08078130
_08078122:
	ldr r4, _080781E0 @ =gPlayer
	ldr r1, [sp]
	lsls r1, r1, #0x10
	str r1, [sp, #0x14]
	ldr r2, [sp, #4]
	lsls r2, r2, #0x10
	mov sb, r2
_08078130:
	adds r0, r5, #0
	ldr r3, [sp, #0x14]
	asrs r1, r3, #0x10
	mov r3, sb
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sa2__sub_800DF38
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r1, r0
	cmp r1, #0
	beq _0807810E
	ldr r2, [r4, #0x10]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	bne _0807810E
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	bne _080780E8
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r1, r0
	ble _0807810E
	movs r7, #1
	ands r2, r7
	cmp r2, #0
	bne _0807810E
	adds r0, r4, #0
	bl Player_TransitionCancelFlyingAndBoost
	movs r0, #0xaf
	bl m4aSongNumStart
	ldr r1, [sp, #0xc]
	str r1, [r4]
_08078180:
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r4, #0x10]
	mov r2, sl
	ldrb r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xff
	ldr r3, [sp, #0x10]
	strb r0, [r3]
	adds r0, #0xd6
	strh r0, [r5, #0xa]
	adds r0, r5, #0
	adds r0, #0x20
	strb r7, [r0]
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	mov r1, r8
	adds r1, #0x3f
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x40
	ldrb r1, [r2]
	mov r0, r8
	adds r0, #0x3e
	strb r1, [r0]
	movs r0, #0x1e
	strb r0, [r2]
	movs r0, #1
	str r0, [sp, #8]
_080781C4:
	ldr r0, [sp, #8]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080781D8: .4byte gNumSingleplayerCharacters
_080781DC: .4byte gPartner
_080781E0: .4byte gPlayer

	thumb_func_start sub_80781E4
sub_80781E4: @ 0x080781E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	adds r5, r1, #0
	adds r7, r2, #0
	mov r8, r3
	movs r0, #0
	str r0, [sp]
	movs r6, #0
	ldr r0, _08078214 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldr r1, _08078218 @ =gPlayer + 0x26
	mov sb, r1
	b _0807822C
	.align 2, 0
_08078214: .4byte gCurrentLevel
_08078218: .4byte gPlayer + 0x26
_0807821C:
	adds r6, #1
	ldr r0, _080782B8 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r6, r0
	blt _0807822C
	b _08078326
_0807822C:
	ldr r4, _080782BC @ =gPlayer
	cmp r6, #0
	beq _08078234
	ldr r4, _080782C0 @ =gPartner
_08078234:
	lsls r1, r7, #0x10
	mov r0, r8
	lsls r2, r0, #0x10
	adds r0, r5, #0
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	adds r3, r4, #0
	bl sa2__sub_800DF38
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r1, r0
	cmp r1, #0
	beq _0807821C
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0807826E
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0807821C
_0807826E:
	adds r0, r4, #0
	bl Player_TransitionCancelFlyingAndBoost
	movs r0, #0xaf
	bl m4aSongNumStart
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r4, #0x10]
	mov r0, sb
	ldrb r1, [r0]
	movs r0, #0x80
	orrs r0, r1
	mov r1, sb
	strb r0, [r1]
	mov r0, r8
	adds r0, #0x10
	lsls r0, r0, #8
	str r0, [r4, #4]
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080782C4
	adds r0, r7, #0
	subs r0, #8
	lsls r0, r0, #8
	str r0, [r4]
	ldr r0, [r4, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080782D2
	.align 2, 0
_080782B8: .4byte gNumSingleplayerCharacters
_080782BC: .4byte gPlayer
_080782C0: .4byte gPartner
_080782C4:
	adds r0, r7, #0
	adds r0, #8
	lsls r0, r0, #8
	str r0, [r4]
	ldr r0, [r4, #0x10]
	movs r1, #1
	orrs r0, r1
_080782D2:
	str r0, [r4, #0x10]
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _080782EE
	ldr r0, _080782F4 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xe
	bne _080782F8
_080782EE:
	movs r0, #0xea
	lsls r0, r0, #1
	b _080782FC
	.align 2, 0
_080782F4: .4byte gCurrentLevel
_080782F8:
	movs r0, #0xeb
	lsls r0, r0, #1
_080782FC:
	strh r0, [r5, #0xa]
	adds r0, r5, #0
	adds r0, #0x20
	movs r1, #1
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	mov r1, sl
	adds r1, #0x3f
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x40
	ldrb r1, [r2]
	mov r0, sl
	adds r0, #0x3e
	strb r1, [r0]
	movs r0, #0x1f
	strb r0, [r2]
	movs r0, #1
	str r0, [sp]
_08078326:
	ldr r0, [sp]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

@ Shared with WallPole
	thumb_func_start TaskDestructor_RedFlag
TaskDestructor_RedFlag: @ 0x08078338
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0
