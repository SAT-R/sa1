.include "constants/constants.inc"

.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0     @ r4 = p
	adds r6, r1, #0     @ r6 = p2
	adds r5, r6, #0
	adds r5, #0xc       @ r5 = s
	ldr r0, [r4, #0x10]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0      @ p->moveState & MOVESTATE_20
	beq _08046034
	adds r1, r4, #0
	adds r1, #0x3e
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xe
	strb r0, [r1]
_08046034:
	ldr r7, _080460C4 @ =sCharStateAnimInfo
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r3, [r0]
	adds r0, r4, #0
	adds r0, #0x42
	strh r3, [r0]
	movs r2, #0
	ldrsb r2, [r1, r2]
	mov sb, r1
	mov r8, r0
	cmp r2, #0x2a
	bgt _0804606C
	ldr r0, _080460C8 @ =gPlayerCharacterIdleAnims
	adds r1, #0x19
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, r3, r0
	mov r1, r8
	strh r0, [r1]
_0804606C:
	mov r2, sb
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r1, r7, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r2, r4, #0
	adds r2, #0x44
	strh r0, [r2]
	adds r1, r6, #0
	adds r1, #0x2e
	movs r0, #0x10
	strb r0, [r1]
	movs r3, #0xc
	ldrsh r0, [r4, r3]
	adds r6, r2, #0
	cmp r0, #0
	bne _0804609C
	ldrh r1, [r4, #0x38]
	movs r0, #0xf3
	ands r0, r1
	cmp r0, #0
	beq _080460A6
_0804609C:
	adds r1, r4, #0
	adds r1, #0x46
	movs r0, #0xb4
	lsls r0, r0, #1
	strh r0, [r1]
_080460A6:
	mov r7, sb
	movs r0, #0
	ldrsb r0, [r7, r0]
	cmp r0, #0x10
	bne _080460B2
	b _08046204_case_16
_080460B2:
	cmp r0, #0x10
	bgt _080460D2
	cmp r0, #4
	beq _0804611C_case_4
	cmp r0, #4
	bgt _080460CC
	cmp r0, #0
	beq _080460E6_case_0
	b _08046236_post_switch
	.align 2, 0
_080460C4: .4byte sCharStateAnimInfo
_080460C8: .4byte gPlayerCharacterIdleAnims
_080460CC:
	cmp r0, #9
	beq _08046198_case_9
	b _08046236_post_switch
_080460D2:
	cmp r0, #0x1a
	bgt _080460E0
	cmp r0, #0x18
	bge _0804615C
	cmp r0, #0x15
	beq _08046180_cases_21_85
	b _08046236_post_switch
_080460E0:
	cmp r0, #0x55
	beq _08046180_cases_21_85
	b _08046236_post_switch
_080460E6_case_0:
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r0, [r1]
	movs r3, #0
	ldrsh r2, [r1, r3]
	cmp r2, #0
	beq _080460FA
	subs r0, #1
	strh r0, [r1]
	b _08046236_post_switch
_080460FA:
	ldr r0, _08046118 @ =gPlayerCharacterIdleAnims
	adds r1, r4, #0
	adds r1, #0x59
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #1
	mov r7, r8
	strh r0, [r7]
	strh r2, [r6]
	b _08046236_post_switch
	.align 2, 0
_08046118: .4byte gPlayerCharacterIdleAnims
_0804611C_case_4:
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	adds r1, r0, #0
	cmp r0, #0
	bge _08046128
	rsbs r1, r0, #0
_08046128:
	ldr r0, _08046154 @ =0x0000047F
	cmp r1, r0
	ble _0804615C
	ldr r1, _08046158 @ =gPlayerCharacterIdleAnims
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #5
	movs r1, #0
	mov r2, r8
	strh r0, [r2]
	strh r1, [r6]
	adds r1, r5, #0
	adds r1, #0x22
	movs r0, #0x10
	strb r0, [r1]
	b _08046236_post_switch
	.align 2, 0
_08046154: .4byte 0x0000047F
_08046158: .4byte gPlayerCharacterIdleAnims
_0804615C:
	movs r3, #0xc
	ldrsh r0, [r4, r3]
	adds r1, r0, #0
	cmp r0, #0
	bge _08046168
	rsbs r1, r0, #0
_08046168:
	asrs r0, r1, #4
	cmp r0, #7
	ble _08046176
	cmp r0, #0x10
	ble _08046178
	movs r0, #0x10
	b _08046178
_08046176:
	movs r0, #8
_08046178:
	adds r1, r5, #0
	adds r1, #0x22
	strb r0, [r1]
	b _08046236_post_switch
_08046180_cases_21_85:
	movs r7, #0xa
	ldrsh r1, [r4, r7]
	ldr r0, _08046194 @ =0xFFFFFE80
	cmp r1, r0
	blt _08046236_post_switch
	movs r0, #0x12
	mov r1, sb
	strb r0, [r1]
	b _08046236_post_switch
	.align 2, 0
_08046194: .4byte 0xFFFFFE80
_08046198_case_9:
	movs r2, #0xc
	ldrsh r1, [r4, r2]
	cmp r1, #0
	bge _080461A2
	rsbs r1, r1, #0
_080461A2:
	ldr r0, _080461F4 @ =0x0000017F
	cmp r1, r0
	bgt _080461C4
	ldr r1, _080461F8 @ =gPlayerCharacterIdleAnims
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #7
	movs r1, #0
	mov r3, r8
	strh r0, [r3]
	strh r1, [r6]
_080461C4:
	ldr r0, _080461FC @ =gStageTime
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08046236_post_switch
	movs r2, #0xf
	ldrsb r2, [r4, r2]
	ldr r0, _08046200 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080461E2
	rsbs r2, r2, #0
_080461E2:
	ldr r0, [r4]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	asrs r1, r1, #8
	adds r1, r1, r2
	bl CreateBrakingDustEffect
	b _08046236_post_switch
	.align 2, 0
_080461F4: .4byte 0x0000017F
_080461F8: .4byte gPlayerCharacterIdleAnims
_080461FC: .4byte gStageTime
_08046200: .4byte gStageFlags
_08046204_case_16:
	ldrb r0, [r4, #0x14]
	adds r0, #0x20
	movs r1, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _08046236_post_switch
	ldr r1, _08046260 @ =gPlayerCharacterIdleAnims
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #0x2c
	mov r7, r8
	strh r0, [r7]
	movs r0, #1
	strh r0, [r6]
	ldr r0, [r4, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
_08046236_post_switch:
	ldr r2, [r4, #0x10]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _0804624C
	adds r3, r5, #0
	adds r3, #0x22
	ldrb r0, [r3]
	lsrs r1, r0, #1
	subs r0, r0, r1
	strb r0, [r3]
_0804624C:
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	bne _08046264
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _0804626A
	.align 2, 0
_08046260: .4byte gPlayerCharacterIdleAnims
_08046264:
	ldr r0, [r5, #0x10]
	ldr r1, _08046284 @ =0xFFFFFBFF
	ands r0, r1
_0804626A:
	str r0, [r5, #0x10]
	ldr r0, _08046288 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804628C
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _08046292
	.align 2, 0
_08046284: .4byte 0xFFFFFBFF
_08046288: .4byte gStageFlags
_0804628C:
	ldr r0, [r5, #0x10]
	ldr r1, _080462F4 @ =0xFFFFF7FF
	ands r0, r1
_08046292:
	str r0, [r5, #0x10]
	ldr r3, _080462F8 @ =gGameMode
	ldrb r0, [r3]
	cmp r0, #1
	bls _080462A4
	adds r1, r4, #0
	adds r1, #0x6c
	movs r0, #0
	strb r0, [r1]
_080462A4:
	mov r0, r8
	ldrh r2, [r0]
	ldrh r0, [r5, #0xa]
	adds r1, r5, #0
	adds r1, #0x20
	cmp r0, r2
	bne _080462BA
	ldrb r0, [r1]
	ldrh r7, [r6]
	cmp r0, r7
	beq _080462DE
_080462BA:
	strh r2, [r5, #0xa]
	ldrh r0, [r6]
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	str r0, [r5, #0x30]
	ldrb r0, [r3]
	cmp r0, #1
	bls _080462DE
	adds r1, r4, #0
	adds r1, #0x6c
	movs r0, #1
	strb r0, [r1]
_080462DE:
	mov r0, sb
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x41
	strb r1, [r0]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080462F4: .4byte 0xFFFFF7FF
_080462F8: .4byte gGameMode

.syntax divided
