.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_PlatformThin
CreateEntity_PlatformThin: @ 0x08023FF8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r3, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0802406C @ =sub_802417C
	ldr r2, _08024070 @ =0x00002010
	ldr r1, _08024074 @ =sub_8024B1C
	str r1, [sp]
	movs r1, #0x50
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	adds r0, #0xc
	adds r5, r2, r0
	movs r7, #0
	mov r1, r8
	strh r1, [r3, #4]
	mov r0, sb
	strh r0, [r3, #6]
	str r6, [r3]
	ldrb r0, [r6]
	strb r0, [r3, #8]
	strb r4, [r3, #9]
	str r7, [r3, #0x40]
	str r7, [r3, #0x44]
	ldr r1, _08024078 @ =0x0300004C
	adds r0, r2, r1
	strh r7, [r0]
	ldrb r0, [r6, #5]
	ldrb r1, [r6, #6]
	cmp r0, r1
	bls _0802409C
	movs r0, #3
	ldrsb r0, [r6, r0]
	cmp r0, #0
	blt _08024080
	ldr r1, _0802407C @ =0x03000048
	adds r0, r2, r1
	movs r1, #4
	strh r1, [r0]
	strh r7, [r3, #0x3c]
	b _0802408C
	.align 2, 0
_0802406C: .4byte sub_802417C
_08024070: .4byte 0x00002010
_08024074: .4byte sub_8024B1C
_08024078: .4byte 0x0300004C
_0802407C: .4byte 0x03000048
_08024080:
	ldr r0, _08024094 @ =0x03000048
	adds r1, r2, r0
	movs r0, #4
	strh r0, [r1]
	movs r0, #0x80
	strh r0, [r3, #0x3c]
_0802408C:
	ldr r1, _08024098 @ =0x0300004A
	adds r0, r2, r1
	strh r7, [r0]
	b _080240D2
	.align 2, 0
_08024094: .4byte 0x03000048
_08024098: .4byte 0x0300004A
_0802409C:
	movs r0, #4
	ldrsb r0, [r6, r0]
	cmp r0, #0
	blt _080240C0
	ldr r1, _080240B8 @ =0x03000048
	adds r0, r2, r1
	strh r7, [r0]
	ldr r0, _080240BC @ =0x0300004A
	adds r1, r2, r0
	movs r0, #4
	strh r0, [r1]
	strh r7, [r3, #0x3c]
	b _080240D2
	.align 2, 0
_080240B8: .4byte 0x03000048
_080240BC: .4byte 0x0300004A
_080240C0:
	ldr r1, _0802411C @ =0x03000048
	adds r0, r2, r1
	strh r7, [r0]
	ldr r0, _08024120 @ =0x0300004A
	adds r1, r2, r0
	movs r0, #4
	strh r0, [r1]
	movs r0, #0x80
	strh r0, [r3, #0x3c]
_080240D2:
	ldrb r0, [r6]
	lsls r0, r0, #3
	mov r2, r8
	lsls r1, r2, #8
	adds r0, r0, r1
	movs r4, #0
	strh r0, [r5, #0x16]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	mov r2, sb
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r5, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	movs r0, #0x12
	bl VramMalloc
	str r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0x20
	strb r4, [r0]
	ldr r0, _08024124 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _08024130
	ldr r1, _08024128 @ =gUnknown_080BB4FC
	ldr r0, _0802412C @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	b _08024132
	.align 2, 0
_0802411C: .4byte 0x03000048
_08024120: .4byte 0x0300004A
_08024124: .4byte gGameMode
_08024128: .4byte gUnknown_080BB4FC
_0802412C: .4byte gCurrentLevel
_08024130:
	ldr r0, _08024178 @ =0x000001CF
_08024132:
	strh r0, [r5, #0xa]
	movs r2, #0
	movs r1, #0
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	strh r1, [r5, #8]
	strh r1, [r5, #0x14]
	strh r1, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x25
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024178: .4byte 0x000001CF

	thumb_func_start sub_802417C
sub_802417C: @ 0x0802417C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r0, #0
	str r0, [sp]
	movs r1, #0
	str r1, [sp, #4]
	mov sb, r1
	ldr r0, _08024294 @ =gCurTask
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r7, r0
	ldr r2, _08024298 @ =0x0300000C
	adds r2, r2, r7
	mov r8, r2
	ldr r3, [r6]
	mov sl, r3
	ldr r4, _0802429C @ =0x03000048
	adds r1, r7, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _080241E2
	ldr r5, [r6, #0x40]
	ldrb r2, [r3, #5]
	lsls r2, r2, #0xb
	ldr r4, _080242A0 @ =gSineTable
	adds r3, r0, #0
	ldr r0, _080242A4 @ =gStageTime
	ldrh r1, [r6, #0x3c]
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	muls r0, r3, r0
	ldr r1, _080242A8 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	str r0, [r6, #0x40]
	subs r5, r0, r5
	str r5, [sp]
_080241E2:
	ldr r2, _080242AC @ =0x0300004A
	adds r1, r7, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0802421E
	ldr r5, [r6, #0x44]
	mov r4, sl
	ldrb r2, [r4, #6]
	lsls r2, r2, #0xb
	ldr r4, _080242A0 @ =gSineTable
	adds r3, r0, #0
	ldr r0, _080242A4 @ =gStageTime
	ldrh r1, [r6, #0x3c]
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	muls r0, r3, r0
	ldr r1, _080242A8 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	str r0, [r6, #0x44]
	subs r5, r0, r5
	str r5, [sp, #4]
_0802421E:
	ldrb r1, [r6, #8]
	lsls r1, r1, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	mov r3, sl
	ldrb r2, [r3, #1]
	lsls r2, r2, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldr r3, _080242B0 @ =gCamera
	ldrh r0, [r3]
	lsrs r7, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	ldr r0, [r6, #0x40]
	asrs r0, r0, #8
	adds r1, r1, r0
	mov r4, r8
	strh r1, [r4, #0x16]
	ldrh r0, [r3, #2]
	lsrs r5, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	ldr r0, [r6, #0x44]
	asrs r0, r0, #8
	adds r2, r2, r0
	strh r2, [r4, #0x18]
_0802425C:
	ldr r3, _080242B4 @ =gPlayer
	mov r0, sb
	cmp r0, #0
	beq _08024266
	ldr r3, _080242B8 @ =gPartner
_08024266:
	ldr r1, [r3, #0x10]
	movs r0, #8
	ands r0, r1
	adds r2, r1, #0
	cmp r0, #0
	beq _080242CC
	ldr r0, [r3, #0x28]
	cmp r0, r8
	bne _080242CC
	ldr r0, [r3]
	ldr r1, [sp]
	adds r0, r0, r1
	str r0, [r3]
	ldr r0, _080242BC @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080242C0
	ldr r0, [r3, #4]
	movs r4, #0x80
	lsls r4, r4, #1
	b _080242C4
	.align 2, 0
_08024294: .4byte gCurTask
_08024298: .4byte 0x0300000C
_0802429C: .4byte 0x03000048
_080242A0: .4byte gSineTable
_080242A4: .4byte gStageTime
_080242A8: .4byte 0x000003FF
_080242AC: .4byte 0x0300004A
_080242B0: .4byte gCamera
_080242B4: .4byte gPlayer
_080242B8: .4byte gPartner
_080242BC: .4byte gStageFlags
_080242C0:
	ldr r0, [r3, #4]
	ldr r4, _08024374 @ =0xFFFFFE00
_080242C4:
	adds r0, r0, r4
	ldr r1, [sp, #4]
	adds r0, r0, r1
	str r0, [r3, #4]
_080242CC:
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r0, r2
	lsls r4, r7, #0x10
	cmp r0, #0
	bne _080242F8
	ldr r0, [r6, #0x40]
	asrs r0, r0, #8
	asrs r1, r4, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r6, #0x44]
	asrs r0, r0, #8
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	adds r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r0, r8
	bl sub_800B2BC
_080242F8:
	movs r2, #1
	add sb, r2
	ldr r0, _08024378 @ =gNumSingleplayerCharacters
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov ip, r0
	cmp sb, r1
	blt _0802425C
	asrs r1, r4, #0x10
	ldr r3, _0802437C @ =gCamera
	movs r4, #0
	ldrsh r2, [r3, r4]
	movs r4, #0xb8
	lsls r4, r4, #1
	adds r0, r2, r4
	cmp r1, r0
	bgt _0802433C
	adds r0, r2, #0
	subs r0, #0x80
	cmp r1, r0
	blt _0802433C
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
	movs r0, #2
	ldrsh r1, [r3, r0]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r2, r0
	bgt _0802433C
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _08024384
_0802433C:
	mov r4, r8
	ldrh r0, [r4, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08024362
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08024362
	movs r2, #0x18
	ldrsh r1, [r4, r2]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08024384
_08024362:
	ldrb r0, [r6, #8]
	mov r3, sl
	strb r0, [r3]
	ldr r0, _08024380 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08024434
	.align 2, 0
_08024374: .4byte 0xFFFFFE00
_08024378: .4byte gNumSingleplayerCharacters
_0802437C: .4byte gCamera
_08024380: .4byte gCurTask
_08024384:
	ldr r2, _080243D0 @ =gPlayer
	ldr r1, [r2, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0802442E
	movs r3, #8
	ands r1, r3
	cmp r1, #0
	beq _080243A0
	ldr r0, [r2, #0x28]
	cmp r0, r8
	beq _080243BA
_080243A0:
	mov r4, ip
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #2
	bne _080243D8
	ldr r1, _080243D4 @ =gPartner
	ldr r0, [r1, #0x10]
	ands r0, r3
	cmp r0, #0
	beq _080243D8
	ldr r0, [r1, #0x28]
	cmp r0, r8
	bne _080243D8
_080243BA:
	adds r0, r6, #0
	adds r0, #0x4c
	ldrh r3, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r0, #0
	cmp r3, r1
	beq _080243EA
	adds r0, r3, #0
	adds r0, #0x10
	b _080243E8
	.align 2, 0
_080243D0: .4byte gPlayer
_080243D4: .4byte gPartner
_080243D8:
	adds r0, r6, #0
	adds r0, #0x4c
	ldrh r1, [r0]
	adds r2, r0, #0
	cmp r1, #0
	beq _080243EA
	adds r0, r1, #0
	subs r0, #0x10
_080243E8:
	strh r0, [r2]
_080243EA:
	ldr r0, _08024410 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08024418
	ldr r1, _08024414 @ =gSineTable
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	mov r1, r8
	ldrh r1, [r1, #0x18]
	adds r0, r0, r1
	mov r2, r8
	strh r0, [r2, #0x18]
	b _0802442E
	.align 2, 0
_08024410: .4byte gStageFlags
_08024414: .4byte gSineTable
_08024418:
	ldr r1, _08024444 @ =gSineTable
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x1c
	mov r3, r8
	ldrh r0, [r3, #0x18]
	subs r0, r0, r1
	strh r0, [r3, #0x18]
_0802442E:
	mov r0, r8
	bl DisplaySprite
_08024434:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024444: .4byte gSineTable

	thumb_func_start CreateEntity_PlatformThin_Falling
CreateEntity_PlatformThin_Falling: @ 0x08024448
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r8, r3
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _08024500 @ =sub_8024574
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08024504 @ =sub_8024B1C
	str r1, [sp]
	movs r1, #0x50
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldr r1, _08024508 @ =0x0300000C
	adds r7, r4, r1
	movs r3, #0
	mov sl, r3
	movs r2, #0
	strh r5, [r0, #4]
	strh r6, [r0, #6]
	mov r1, sb
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #8]
	mov r3, r8
	strb r3, [r0, #9]
	str r2, [r0, #0x40]
	str r2, [r0, #0x44]
	ldr r1, _0802450C @ =0x0300004C
	adds r0, r4, r1
	strh r2, [r0]
	ldr r3, _08024510 @ =0x03000048
	adds r0, r4, r3
	strh r2, [r0]
	subs r1, #2
	adds r0, r4, r1
	strh r2, [r0]
	mov r3, sb
	ldrb r0, [r3]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r7, #0x16]
	ldrb r0, [r3, #1]
	lsls r0, r0, #3
	lsls r6, r6, #8
	adds r0, r0, r6
	strh r0, [r7, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r3]
	movs r0, #0x12
	bl VramMalloc
	str r0, [r7, #4]
	ldr r3, _08024514 @ =0x0300002C
	adds r4, r4, r3
	mov r0, sl
	strb r0, [r4]
	ldr r0, _08024518 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _08024524
	ldr r1, _0802451C @ =gUnknown_080BB4FC
	ldr r0, _08024520 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	b _08024526
	.align 2, 0
_08024500: .4byte sub_8024574
_08024504: .4byte sub_8024B1C
_08024508: .4byte 0x0300000C
_0802450C: .4byte 0x0300004C
_08024510: .4byte 0x03000048
_08024514: .4byte 0x0300002C
_08024518: .4byte gGameMode
_0802451C: .4byte gUnknown_080BB4FC
_08024520: .4byte gCurrentLevel
_08024524:
	ldr r0, _08024570 @ =0x000001CF
_08024526:
	strh r0, [r7, #0xa]
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
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024570: .4byte 0x000001CF

	thumb_func_start sub_8024574
sub_8024574: @ 0x08024574
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r1, _0802468C @ =gCurTask
	ldr r0, [r1]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r2, _08024690 @ =0x0300000C
	adds r6, r1, r2
	ldr r3, [r7]
	mov sb, r3
	ldrb r2, [r7, #8]
	lsls r2, r2, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _08024694 @ =gCamera
	ldrh r0, [r3]
	lsrs r4, r2, #0x10
	mov sl, r4
	asrs r5, r2, #0x10
	subs r0, r5, r0
	strh r0, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsrs r2, r1, #0x10
	str r2, [sp]
	asrs r4, r1, #0x10
	subs r0, r4, r0
	strh r0, [r6, #0x18]
	ldr r3, _08024698 @ =gPlayer
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800B2BC
	movs r3, #8
	mov r8, r3
	ands r0, r3
	cmp r0, #0
	bne _080245F0
	ldr r3, _0802469C @ =gPartner
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800B2BC
	mov r4, r8
	ands r0, r4
	cmp r0, #0
	beq _080245FC
_080245F0:
	ldr r1, _0802468C @ =gCurTask
	ldr r0, [r1]
	ldr r1, _080246A0 @ =sub_802473C
	str r1, [r0, #8]
	movs r0, #0x1e
	strh r0, [r7, #0x3c]
_080245FC:
	ldr r0, _080246A4 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0802461E
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	movs r0, #3
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0802461E
	movs r0, #0
	strh r0, [r7, #0x3c]
	ldr r0, _0802468C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080246A8 @ =sub_802492C
	str r0, [r1, #8]
_0802461E:
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	ldr r3, _08024694 @ =gCamera
	movs r4, #0
	ldrsh r1, [r3, r4]
	movs r4, #0xb8
	lsls r4, r4, #1
	adds r0, r1, r4
	cmp r2, r0
	bgt _08024658
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _08024658
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	movs r4, #2
	ldrsh r2, [r3, r4]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r2, r3
	cmp r1, r0
	bgt _08024658
	adds r0, r2, #0
	subs r0, #0x80
	cmp r1, r0
	bge _080246AC
_08024658:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0802467C
	movs r4, #0x18
	ldrsh r0, [r6, r4]
	adds r0, #0x80
	cmp r0, #0
	blt _0802467C
	movs r0, #0x18
	ldrsh r1, [r6, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _080246AC
_0802467C:
	ldrb r0, [r7, #8]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _0802468C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08024728
	.align 2, 0
_0802468C: .4byte gCurTask
_08024690: .4byte 0x0300000C
_08024694: .4byte gCamera
_08024698: .4byte gPlayer
_0802469C: .4byte gPartner
_080246A0: .4byte sub_802473C
_080246A4: .4byte gGameMode
_080246A8: .4byte sub_802492C
_080246AC:
	ldr r1, _080246F0 @ =gPlayer
	ldr r0, [r1, #0x10]
	movs r2, #8
	ands r0, r2
	cmp r0, #0
	beq _080246BE
	ldr r0, [r1, #0x28]
	cmp r0, r6
	beq _080246DA
_080246BE:
	ldr r0, _080246F4 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _080246FC
	ldr r1, _080246F8 @ =gPartner
	ldr r0, [r1, #0x10]
	ands r0, r2
	cmp r0, #0
	beq _080246FC
	ldr r0, [r1, #0x28]
	cmp r0, r6
	bne _080246FC
_080246DA:
	adds r0, r7, #0
	adds r0, #0x4c
	ldrh r3, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r0, #0
	cmp r3, r1
	beq _0802470E
	adds r0, r3, #0
	adds r0, #0x10
	b _0802470C
	.align 2, 0
_080246F0: .4byte gPlayer
_080246F4: .4byte gNumSingleplayerCharacters
_080246F8: .4byte gPartner
_080246FC:
	adds r0, r7, #0
	adds r0, #0x4c
	ldrh r1, [r0]
	adds r2, r0, #0
	cmp r1, #0
	beq _0802470E
	adds r0, r1, #0
	subs r0, #0x10
_0802470C:
	strh r0, [r2]
_0802470E:
	ldr r1, _08024738 @ =gSineTable
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	ldrh r2, [r6, #0x18]
	adds r0, r0, r2
	strh r0, [r6, #0x18]
	adds r0, r6, #0
	bl DisplaySprite
_08024728:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024738: .4byte gSineTable

	thumb_func_start sub_802473C
sub_802473C: @ 0x0802473C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _080247CC @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r2, _080247D0 @ =0x0300000C
	adds r7, r1, r2
	ldr r3, [r6]
	mov r8, r3
	ldrb r5, [r6, #8]
	lsls r5, r5, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r5, r5, r0
	lsls r5, r5, #0x10
	ldrb r4, [r3, #1]
	lsls r4, r4, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r4, r4, r0
	lsls r4, r4, #0x10
	ldr r1, _080247D4 @ =gCamera
	ldrh r0, [r1]
	lsrs r2, r5, #0x10
	mov sl, r2
	asrs r5, r5, #0x10
	subs r0, r5, r0
	strh r0, [r7, #0x16]
	ldrh r0, [r1, #2]
	lsrs r3, r4, #0x10
	str r3, [sp]
	asrs r4, r4, #0x10
	subs r0, r4, r0
	strh r0, [r7, #0x18]
	ldr r3, _080247D8 @ =gPlayer
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800B2BC
	ldr r3, _080247DC @ =gPartner
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800B2BC
	ldr r0, _080247E0 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _080247E8
	mov r0, r8
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #3
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080247E8
	movs r0, #0
	strh r0, [r6, #0x3c]
	mov r2, sb
	ldr r1, [r2]
	ldr r0, _080247E4 @ =sub_802492C
	str r0, [r1, #8]
	b _0802481E
	.align 2, 0
_080247CC: .4byte gCurTask
_080247D0: .4byte 0x0300000C
_080247D4: .4byte gCamera
_080247D8: .4byte gPlayer
_080247DC: .4byte gPartner
_080247E0: .4byte gGameMode
_080247E4: .4byte sub_802492C
_080247E8:
	ldrh r0, [r6, #0x3c]
	subs r0, #1
	strh r0, [r6, #0x3c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _0802481E
	strh r0, [r6, #0x3c]
	ldr r0, _0802488C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08024890 @ =sub_802492C
	str r0, [r1, #8]
	ldr r0, _08024894 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0802481E
	bl sub_80182FC
	movs r2, #1
	strb r2, [r0]
	ldrh r1, [r6, #4]
	strb r1, [r0, #1]
	ldrh r1, [r6, #6]
	strb r1, [r0, #2]
	ldrb r1, [r6, #9]
	strb r1, [r0, #3]
	strb r2, [r0, #4]
_0802481E:
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r5, r0, #0x10
	ldr r2, _08024898 @ =gCamera
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r3, #0xb8
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r5, r0
	bgt _08024858
	adds r0, r1, #0
	subs r0, #0x80
	cmp r5, r0
	blt _08024858
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	movs r3, #2
	ldrsh r1, [r2, r3]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r4, r0
	bgt _08024858
	adds r0, r1, #0
	subs r0, #0x80
	cmp r4, r0
	bge _0802489C
_08024858:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0802487C
	movs r3, #0x18
	ldrsh r0, [r7, r3]
	adds r0, #0x80
	cmp r0, #0
	blt _0802487C
	movs r0, #0x18
	ldrsh r1, [r7, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0802489C
_0802487C:
	ldrb r0, [r6, #8]
	mov r1, r8
	strb r0, [r1]
	ldr r0, _0802488C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08024918
	.align 2, 0
_0802488C: .4byte gCurTask
_08024890: .4byte sub_802492C
_08024894: .4byte gGameMode
_08024898: .4byte gCamera
_0802489C:
	ldr r1, _080248E0 @ =gPlayer
	ldr r0, [r1, #0x10]
	movs r2, #8
	ands r0, r2
	cmp r0, #0
	beq _080248AE
	ldr r0, [r1, #0x28]
	cmp r0, r7
	beq _080248CA
_080248AE:
	ldr r0, _080248E4 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _080248EC
	ldr r1, _080248E8 @ =gPartner
	ldr r0, [r1, #0x10]
	ands r0, r2
	cmp r0, #0
	beq _080248EC
	ldr r0, [r1, #0x28]
	cmp r0, r7
	bne _080248EC
_080248CA:
	adds r0, r6, #0
	adds r0, #0x4c
	ldrh r3, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r0, #0
	cmp r3, r1
	beq _080248FE
	adds r0, r3, #0
	adds r0, #0x10
	b _080248FC
	.align 2, 0
_080248E0: .4byte gPlayer
_080248E4: .4byte gNumSingleplayerCharacters
_080248E8: .4byte gPartner
_080248EC:
	adds r0, r6, #0
	adds r0, #0x4c
	ldrh r1, [r0]
	adds r2, r0, #0
	cmp r1, #0
	beq _080248FE
	adds r0, r1, #0
	subs r0, #0x10
_080248FC:
	strh r0, [r2]
_080248FE:
	ldr r1, _08024928 @ =gSineTable
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	ldrh r2, [r7, #0x18]
	adds r0, r0, r2
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
_08024918:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024928: .4byte gSineTable

	thumb_func_start sub_802492C
sub_802492C: @ 0x0802492C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r0, #0
	mov r8, r0
	ldr r0, _080249F0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r2, _080249F4 @ =0x0300000C
	adds r7, r1, r2
	ldr r3, [r5]
	str r3, [sp, #4]
	adds r0, #0x4a
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #0x2a
	strh r0, [r1]
	movs r2, #0
	ldrsh r1, [r1, r2]
	ldr r0, [r5, #0x44]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldrb r2, [r5, #8]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r4, _080249F8 @ =gCamera
	ldrh r3, [r4]
	lsls r2, r2, #0x10
	asrs r0, r2, #0x10
	subs r0, r0, r3
	strh r0, [r7, #0x16]
	ldrh r0, [r4, #2]
	lsrs r3, r1, #0x10
	str r3, [sp]
	asrs r1, r1, #0x10
	subs r1, r1, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r7, #0x18]
	ldrh r0, [r5, #0x3c]
	adds r0, #1
	strh r0, [r5, #0x3c]
	ldr r0, _080249FC @ =gPlayer
	mov sb, r0
	mov sl, r2
_080249A4:
	ldr r4, _080249FC @ =gPlayer
	mov r1, r8
	cmp r1, #0
	beq _080249AE
	ldr r4, _08024A00 @ =gPartner
_080249AE:
	ldr r0, [r4, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08024A26
	ldr r0, [r4, #0x28]
	cmp r0, r7
	bne _08024A26
	mov r6, sb
	adds r6, #0x40
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0xe
	bne _080249D4
	mov r0, sb
	bl sub_8046CEC
	movs r0, #4
	strb r0, [r6]
_080249D4:
	ldrh r0, [r5, #0x3c]
	cmp r0, #0x20
	bls _08024A04
	ldr r1, [r4, #0x10]
	movs r0, #2
	orrs r1, r0
	subs r0, #0xb
	ands r1, r0
	str r1, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x4a
	ldrh r0, [r0]
	strh r0, [r4, #0xa]
	b _08024A26
	.align 2, 0
_080249F0: .4byte gCurTask
_080249F4: .4byte 0x0300000C
_080249F8: .4byte gCamera
_080249FC: .4byte gPlayer
_08024A00: .4byte gPartner
_08024A04:
	adds r0, r5, #0
	adds r0, #0x48
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	ldr r1, [r4, #4]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r1, r3
	adds r0, r5, #0
	adds r0, #0x4a
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, r1, r0
	str r1, [r4, #4]
_08024A26:
	ldrh r0, [r5, #0x3c]
	cmp r0, #0x1f
	bhi _08024A48
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	ldr r3, [sp]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	adds r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	mov r3, sl
	asrs r1, r3, #0x10
	adds r3, r4, #0
	bl sub_800B2BC
_08024A48:
	movs r0, #1
	add r8, r0
	ldr r2, _08024A8C @ =gNumSingleplayerCharacters
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r8, r0
	blt _080249A4
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08024A7A
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08024A7A
	movs r3, #0x18
	ldrsh r1, [r7, r3]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08024A94
_08024A7A:
	ldrb r0, [r5, #8]
	ldr r1, [sp, #4]
	strb r0, [r1]
	ldr r0, _08024A90 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08024B08
	.align 2, 0
_08024A8C: .4byte gNumSingleplayerCharacters
_08024A90: .4byte gCurTask
_08024A94:
	ldr r1, _08024AD4 @ =gPlayer
	ldr r0, [r1, #0x10]
	movs r3, #8
	ands r0, r3
	cmp r0, #0
	beq _08024AA6
	ldr r0, [r1, #0x28]
	cmp r0, r7
	beq _08024ABE
_08024AA6:
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #2
	bne _08024ADC
	ldr r1, _08024AD8 @ =gPartner
	ldr r0, [r1, #0x10]
	ands r0, r3
	cmp r0, #0
	beq _08024ADC
	ldr r0, [r1, #0x28]
	cmp r0, r7
	bne _08024ADC
_08024ABE:
	adds r0, r5, #0
	adds r0, #0x4c
	ldrh r3, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r0, #0
	cmp r3, r1
	beq _08024AEE
	adds r0, r3, #0
	adds r0, #0x10
	b _08024AEC
	.align 2, 0
_08024AD4: .4byte gPlayer
_08024AD8: .4byte gPartner
_08024ADC:
	adds r0, r5, #0
	adds r0, #0x4c
	ldrh r1, [r0]
	adds r2, r0, #0
	cmp r1, #0
	beq _08024AEE
	adds r0, r1, #0
	subs r0, #0x10
_08024AEC:
	strh r0, [r2]
_08024AEE:
	ldr r1, _08024B18 @ =gSineTable
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	ldrh r2, [r7, #0x18]
	adds r0, r0, r2
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
_08024B08:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024B18: .4byte gSineTable

	thumb_func_start sub_8024B1C
sub_8024B1C: @ 0x08024B1C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0
