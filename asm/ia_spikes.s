.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 01
	thumb_func_start sub_8020D44
sub_8020D44: @ 0x08020D44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0     @ r7 = s
	adds r4, r1, #0     @ r4 = me
	mov r8, r2          @ r8 = spikes
	adds r5, r3, #0     @ r5 = p
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #8]
	ldrb r2, [r2, #8]
	lsls r2, r2, #3
	mov r1, r8
	ldrh r0, [r1, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r4, #1]
	lsls r1, r1, #3
	mov r3, r8
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _08020E14 @ =gCamera
	ldrh r0, [r3]
	lsrs r6, r2, #0x10
	mov sl, r6
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r7, #0x16]
	ldrh r0, [r3, #2]
	lsrs r3, r1, #0x10
	mov sb, r3
	asrs r6, r1, #0x10
	subs r0, r6, r0
	strh r0, [r7, #0x18]
	ldr r0, _08020E18 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _08020E48
	movs r0, #3
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _08020E48
	ldr r0, _08020E1C @ =sa2__gUnknown_030053E0
	ldrb r0, [r0]
	cmp r0, #0x1e
	bne _08020E48
	adds r0, r7, #0
	adds r1, r2, #0
	adds r2, r6, #0
	adds r3, r5, #0
	bl Coll_Player_Entity_Intersection
	movs r1, #0x80
	lsls r1, r1, #0xc
	cmp r0, r1
	bne _08020E48
	ldrb r4, [r5, #0xe]
	adds r4, #5
	rsbs r0, r4, #0
	add r1, sp, #4
	strb r0, [r1]
	ldrb r3, [r5, #0xf]
	movs r0, #1
	subs r0, r0, r3
	mov r2, sp
	adds r2, #5
	strb r0, [r2]
	mov r0, sp
	adds r0, #6
	strb r4, [r0]
	subs r3, #1
	adds r0, #1
	strb r3, [r0]
	mov r0, sp
	movs r2, #4
	bl memcpy
	ldr r0, _08020E20 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08020E24
	adds r0, r7, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r6, r0
	mov r1, sp
	ldrb r1, [r1, #3]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	b _08020E3A
	.align 2, 0
_08020E14: .4byte gCamera
_08020E18: .4byte gGameMode
_08020E1C: .4byte sa2__gUnknown_030053E0
_08020E20: .4byte gStageFlags
_08020E24:
	adds r0, r7, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r6, r0
	mov r1, sp
	ldrb r1, [r1, #3]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
_08020E3A:
	lsls r0, r0, #8
	str r0, [r5, #4]
	adds r0, r5, #0
	bl Coll_DamagePlayer
	cmp r0, #0
	bne _08020E7A
_08020E48:
	mov r6, sl
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	mov r0, sb
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	adds r3, r5, #0
	bl sub_80096B0
	ldr r1, [sp, #8]
	lsls r2, r1, #2
	mov r1, r8
	adds r1, #0x3c
	adds r1, r1, r2
	str r0, [r1]
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	beq _08020E84
	adds r0, r5, #0
	bl Coll_DamagePlayer
	cmp r0, #0
	beq _08020E84
_08020E7A:
	movs r0, #0xab
	bl m4aSongNumStart
	movs r0, #1
	b _08020E86
_08020E84:
	movs r0, #0
_08020E86:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.endif

	thumb_func_start sub_8020E98
sub_8020E98: @ 0x08020E98
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r4, r2, #0
	adds r6, r3, #0
	adds r0, r6, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r8, r0
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
	ldr r3, _08020F1C @ =gCamera
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r7, r2, #0x10
	subs r0, r7, r0
	strh r0, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	subs r0, r2, r0
	strh r0, [r5, #0x18]
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08020F20
	adds r0, r5, #0
	adds r1, r7, #0
	adds r3, r6, #0
	bl sub_80096B0
	mov r1, r8
	lsls r2, r1, #2
	adds r1, r4, #0
	adds r1, #0x3c
	adds r1, r1, r2
	str r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r1, r0
	cmp r1, #0
	beq _08020F20
	adds r0, r6, #0
	bl Coll_DamagePlayer
	cmp r0, #0
	beq _08020F20
	movs r0, #0xab
	bl m4aSongNumStart
	movs r0, #1
	b _08020F22
	.align 2, 0
_08020F1C: .4byte gCamera
_08020F20:
	movs r0, #0
_08020F22:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8020F2C
sub_8020F2C: @ 0x08020F2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	adds r7, r2, #0
	adds r5, r3, #0
	ldr r0, _08020FD0 @ =gStageTime
	ldr r4, [r0]
	movs r0, #0x7f
	ands r4, r0
	str r4, [sp, #0xc]
	movs r0, #0x3c
	adds r0, r0, r5
	mov ip, r0
	movs r2, #0
	ldrsb r2, [r0, r2]
	mov sl, r2
	ldrb r2, [r7, #8]
	lsls r2, r2, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _08020FD4 @ =gCamera
	ldrh r0, [r3]
	mov sb, r0
	lsrs r0, r2, #0x10
	str r0, [sp, #8]
	asrs r2, r2, #0x10
	mov r8, r2
	mov r0, sb
	subs r2, r2, r0
	strh r2, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsrs r2, r1, #0x10
	asrs r1, r1, #0x10
	mov sb, r1
	subs r0, r1, r0
	strh r0, [r6, #0x18]
	cmp r4, #0x3b
	bhi _08020FD8
	ldr r1, [r5, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08020FAC
	ldr r0, [r5, #0x28]
	cmp r0, r6
	bne _08020FAC
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r5, #0x10]
_08020FAC:
	mov r2, sl
	lsls r1, r2, #2
	adds r0, r7, #0
	adds r0, #0x3c
	adds r2, r0, r1
	ldr r0, [r2]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08020FCC
	ldr r0, [r5, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r5, #0x10]
	movs r0, #0
	str r0, [r2]
_08020FCC:
	movs r0, #0
	b _080211F8
	.align 2, 0
_08020FD0: .4byte gStageTime
_08020FD4: .4byte gCamera
_08020FD8:
	cmp r4, #0x3d
	bhi _08021026
	ldr r1, [r5, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08020FF8
	ldr r0, [r5, #0x28]
	cmp r0, r6
	bne _08020FF8
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r5, #0x10]
_08020FF8:
	mov r4, sl
	lsls r1, r4, #2
	adds r0, r7, #0
	adds r0, #0x3c
	adds r2, r0, r1
	ldr r0, [r2]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08021018
	ldr r0, [r5, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r5, #0x10]
	movs r0, #0
	str r0, [r2]
_08021018:
	movs r0, #0
	movs r1, #0xe3
	lsls r1, r1, #1
	strh r1, [r6, #0xa]
	adds r1, r6, #0
	adds r1, #0x20
	b _0802119C
_08021026:
	cmp r4, #0x3f
	bhi _0802104C
	ldr r1, [r5, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08021046
	ldr r0, [r5, #0x28]
	cmp r0, r6
	bne _08021046
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r5, #0x10]
_08021046:
	mov r0, sl
	lsls r1, r0, #2
	b _08021174
_0802104C:
	cmp r4, #0x7b
	bls _08021052
	b _0802114E
_08021052:
	adds r3, r6, #0
	adds r3, #0x20
	ldrb r0, [r3]
	mov r4, ip
	ldrb r1, [r4]
	cmp r0, #2
	bne _0802106C
	cmp r1, #0
	beq _08021116
	ldr r4, [sp, #0x30]
	ldr r0, [r4]
	cmp r0, #0
	beq _08021116
_0802106C:
	cmp r1, #0
	bne _08021076
	movs r0, #1
	ldr r1, [sp, #0x30]
	str r0, [r1]
_08021076:
	movs r0, #0xe3
	lsls r0, r0, #1
	strh r0, [r6, #0xa]
	movs r0, #2
	strb r0, [r3]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	mov r1, r8
	mov r2, sb
	adds r3, r5, #0
	bl Coll_Player_Entity_Intersection
	movs r1, #0x80
	lsls r1, r1, #0xc
	cmp r0, r1
	bne _08021108
	ldrb r4, [r5, #0xe]
	adds r4, #5
	rsbs r0, r4, #0
	add r1, sp, #4
	strb r0, [r1]
	ldrb r3, [r5, #0xf]
	movs r0, #1
	subs r0, r0, r3
	mov r2, sp
	adds r2, #5
	strb r0, [r2]
	mov r0, sp
	adds r0, #6
	strb r4, [r0]
	subs r3, #1
	adds r0, #1
	strb r3, [r0]
	mov r0, sp
	movs r2, #4
	bl memcpy
	ldr r0, _080210E8 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080210EC
	adds r0, r6, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, sb
	mov r1, sp
	ldrb r1, [r1, #3]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	b _08021102
	.align 2, 0
_080210E8: .4byte gStageFlags
_080210EC:
	adds r0, r6, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, sb
	mov r1, sp
	ldrb r1, [r1, #3]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
_08021102:
	lsls r0, r0, #8
	str r0, [r5, #4]
	b _0802113C
_08021108:
	adds r0, r6, #0
	mov r1, r8
	mov r2, sb
	adds r3, r5, #0
	bl sub_80096B0
	b _08021134
_08021116:
	ldr r4, [sp, #8]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	adds r3, r5, #0
	bl sub_80096B0
	mov r1, sl
	lsls r2, r1, #2
	adds r1, r7, #0
	adds r1, #0x3c
	adds r1, r1, r2
	str r0, [r1]
_08021134:
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	beq _080211F6
_0802113C:
	adds r0, r5, #0
	bl Coll_DamagePlayer
	cmp r0, #0
	beq _080211F6
	movs r0, #0xab
	bl m4aSongNumStart
	b _080211F6
_0802114E:
	ldr r2, [sp, #0xc]
	cmp r2, #0x7d
	bhi _080211A6
	ldr r1, [r5, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08021170
	ldr r0, [r5, #0x28]
	cmp r0, r6
	bne _08021170
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r5, #0x10]
_08021170:
	mov r4, sl
	lsls r1, r4, #2
_08021174:
	adds r0, r7, #0
	adds r0, #0x3c
	adds r2, r0, r1
	ldr r0, [r2]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08021190
	ldr r0, [r5, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r5, #0x10]
	movs r0, #0
	str r0, [r2]
_08021190:
	movs r0, #0xe3
	lsls r0, r0, #1
	strh r0, [r6, #0xa]
	adds r1, r6, #0
	adds r1, #0x20
	movs r0, #1
_0802119C:
	strb r0, [r1]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	b _080211F6
_080211A6:
	ldr r1, [r5, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080211C2
	ldr r0, [r5, #0x28]
	cmp r0, r6
	bne _080211C2
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r5, #0x10]
_080211C2:
	mov r0, sl
	lsls r1, r0, #2
	adds r0, r7, #0
	adds r0, #0x3c
	adds r2, r0, r1
	ldr r0, [r2]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080211E2
	ldr r0, [r5, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r5, #0x10]
	movs r0, #0
	str r0, [r2]
_080211E2:
	movs r0, #0
	movs r1, #0xe3
	lsls r1, r1, #1
	strh r1, [r6, #0xa]
	adds r1, r6, #0
	adds r1, #0x20
	strb r0, [r1]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
_080211F6:
	movs r0, #1
_080211F8:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8021208
sub_8021208: @ 0x08021208
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	adds r7, r2, #0
	adds r5, r3, #0
	ldr r0, _080212AC @ =gStageTime
	ldr r4, [r0]
	movs r0, #0x7f
	ands r4, r0
	str r4, [sp, #0xc]
	movs r0, #0x3c
	adds r0, r0, r5
	mov ip, r0
	movs r2, #0
	ldrsb r2, [r0, r2]
	mov sb, r2
	ldrb r2, [r7, #8]
	lsls r2, r2, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _080212B0 @ =gCamera
	ldrh r0, [r3]
	mov r8, r0
	lsrs r0, r2, #0x10
	str r0, [sp, #8]
	asrs r2, r2, #0x10
	mov sl, r2
	mov r0, r8
	subs r2, r2, r0
	strh r2, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsrs r2, r1, #0x10
	asrs r1, r1, #0x10
	mov r8, r1
	subs r0, r1, r0
	strh r0, [r6, #0x18]
	cmp r4, #0x3b
	bhi _080212B4
	ldr r1, [r5, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08021288
	ldr r0, [r5, #0x28]
	cmp r0, r6
	bne _08021288
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r5, #0x10]
_08021288:
	mov r2, sb
	lsls r1, r2, #2
	adds r0, r7, #0
	adds r0, #0x3c
	adds r2, r0, r1
	ldr r0, [r2]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080212A8
	ldr r0, [r5, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r5, #0x10]
	movs r0, #0
	str r0, [r2]
_080212A8:
	movs r0, #0
	b _080214C8
	.align 2, 0
_080212AC: .4byte gStageTime
_080212B0: .4byte gCamera
_080212B4:
	cmp r4, #0x3d
	bhi _08021302
	ldr r1, [r5, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080212D4
	ldr r0, [r5, #0x28]
	cmp r0, r6
	bne _080212D4
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r5, #0x10]
_080212D4:
	mov r4, sb
	lsls r1, r4, #2
	adds r0, r7, #0
	adds r0, #0x3c
	adds r2, r0, r1
	ldr r0, [r2]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080212F4
	ldr r0, [r5, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r5, #0x10]
	movs r0, #0
	str r0, [r2]
_080212F4:
	movs r0, #0
	movs r1, #0xe3
	lsls r1, r1, #1
	strh r1, [r6, #0xa]
	adds r1, r6, #0
	adds r1, #0x20
	b _0802146C
_08021302:
	cmp r4, #0x3f
	bhi _08021328
	ldr r1, [r5, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08021322
	ldr r0, [r5, #0x28]
	cmp r0, r6
	bne _08021322
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r5, #0x10]
_08021322:
	mov r0, sb
	lsls r1, r0, #2
	b _08021444
_08021328:
	cmp r4, #0x7b
	bhi _0802141E
	adds r3, r6, #0
	adds r3, #0x20
	ldrb r0, [r3]
	mov r4, ip
	ldrb r1, [r4]
	cmp r0, #2
	bne _08021346
	cmp r1, #0
	beq _080213E4
	ldr r4, [sp, #0x30]
	ldr r0, [r4]
	cmp r0, #0
	beq _080213E4
_08021346:
	cmp r1, #0
	bne _08021350
	movs r0, #1
	ldr r1, [sp, #0x30]
	str r0, [r1]
_08021350:
	movs r0, #0xe3
	lsls r0, r0, #1
	strh r0, [r6, #0xa]
	movs r0, #2
	strb r0, [r3]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	mov r1, sl
	mov r2, r8
	adds r3, r5, #0
	bl Coll_Player_Entity_Intersection
	movs r1, #0x80
	lsls r1, r1, #0xc
	cmp r0, r1
	beq _08021376
	b _080214C6
_08021376:
	ldrb r4, [r5, #0xe]
	adds r4, #5
	rsbs r0, r4, #0
	add r1, sp, #4
	strb r0, [r1]
	ldrb r3, [r5, #0xf]
	movs r0, #1
	subs r0, r0, r3
	mov r2, sp
	adds r2, #5
	strb r0, [r2]
	mov r0, sp
	adds r0, #6
	strb r4, [r0]
	subs r3, #1
	adds r0, #1
	strb r3, [r0]
	mov r0, sp
	movs r2, #4
	bl memcpy
	ldr r0, _080213C4 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080213C8
	adds r0, r6, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, r8
	mov r1, sp
	ldrb r1, [r1, #1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	b _080213DE
	.align 2, 0
_080213C4: .4byte gStageFlags
_080213C8:
	adds r0, r6, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, r8
	mov r1, sp
	ldrb r1, [r1, #1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
_080213DE:
	lsls r0, r0, #8
	str r0, [r5, #4]
	b _0802140C
_080213E4:
	ldr r4, [sp, #8]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	adds r3, r5, #0
	bl sub_80096B0
	mov r1, sb
	lsls r2, r1, #2
	adds r1, r7, #0
	adds r1, #0x3c
	adds r1, r1, r2
	str r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r1, r0
	cmp r1, #0
	beq _080214C6
_0802140C:
	adds r0, r5, #0
	bl Coll_DamagePlayer
	cmp r0, #0
	beq _080214C6
	movs r0, #0xab
	bl m4aSongNumStart
	b _080214C6
_0802141E:
	ldr r2, [sp, #0xc]
	cmp r2, #0x7d
	bhi _08021476
	ldr r1, [r5, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08021440
	ldr r0, [r5, #0x28]
	cmp r0, r6
	bne _08021440
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r5, #0x10]
_08021440:
	mov r4, sb
	lsls r1, r4, #2
_08021444:
	adds r0, r7, #0
	adds r0, #0x3c
	adds r2, r0, r1
	ldr r0, [r2]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08021460
	ldr r0, [r5, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r5, #0x10]
	movs r0, #0
	str r0, [r2]
_08021460:
	movs r0, #0xe3
	lsls r0, r0, #1
	strh r0, [r6, #0xa]
	adds r1, r6, #0
	adds r1, #0x20
	movs r0, #1
_0802146C:
	strb r0, [r1]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	b _080214C6
_08021476:
	ldr r1, [r5, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08021492
	ldr r0, [r5, #0x28]
	cmp r0, r6
	bne _08021492
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r5, #0x10]
_08021492:
	mov r0, sb
	lsls r1, r0, #2
	adds r0, r7, #0
	adds r0, #0x3c
	adds r2, r0, r1
	ldr r0, [r2]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080214B2
	ldr r0, [r5, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r5, #0x10]
	movs r0, #0
	str r0, [r2]
_080214B2:
	movs r0, #0
	movs r1, #0xe3
	lsls r1, r1, #1
	strh r1, [r6, #0xa]
	adds r1, r6, #0
	adds r1, #0x20
	strb r0, [r1]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
_080214C6:
	movs r0, #1
_080214C8:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start TaskDestructor_Spikes
TaskDestructor_Spikes: @ 0x080214D8
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0
