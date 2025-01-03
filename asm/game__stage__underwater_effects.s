.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ --- Start of underwater_effects.c ---
	thumb_func_start Task_DrowningCountdown
Task_DrowningCountdown: @ 0x0804BE7C
	push {r4, r5, r6, r7, lr}
	ldr r2, _0804BF00 @ =gCurTask
	ldr r0, [r2]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	adds r1, #0x18
	adds r6, r0, r1
	adds r1, #0x30
	adds r5, r0, r1
	ldr r0, [r4]
	asrs r0, r0, #8
	strh r0, [r5, #6]
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	strh r0, [r5, #8]
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	adds r0, #1
	lsls r3, r0, #3
	movs r7, #0x80
	lsls r7, r7, #1
	cmp r3, r7
	ble _0804BEB0
	adds r3, r7, #0
_0804BEB0:
	strh r3, [r5, #2]
	strh r3, [r5, #4]
	ldrh r1, [r4, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804BEC2
	rsbs r0, r3, #0
	strh r0, [r5, #2]
_0804BEC2:
	ldrh r1, [r4, #0x14]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804BED2
	ldrh r0, [r5, #4]
	rsbs r0, r0, #0
	strh r0, [r5, #4]
_0804BED2:
	ldrh r0, [r5, #6]
	adds r0, #0x20
	lsls r0, r0, #0x10
	movs r1, #0x98
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0804BEF6
	ldrh r0, [r5, #8]
	adds r0, #0x20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xe0
	bhi _0804BEF6
	ldrh r3, [r4, #0x10]
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	cmp r0, #0x80
	ble _0804BF04
_0804BEF6:
	ldr r0, [r2]
	bl TaskDestroy
	b _0804BF60
	.align 2, 0
_0804BF00: .4byte gCurTask
_0804BF04:
	cmp r0, #0x40
	bgt _0804BF2C
	ldr r1, _0804BF68 @ =gSineTable
	movs r2, #0x10
	ldrsh r0, [r4, r2]
	lsls r0, r0, #2
	adds r0, r0, r7
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	rsbs r0, r0, #0
	movs r2, #0xa
	ldrsh r1, [r4, r2]
	muls r1, r0, r1
	asrs r1, r1, #8
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
_0804BF2C:
	adds r0, r3, #1
	strh r0, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r6, #0x10]
	ldr r2, _0804BF6C @ =sa2__gUnknown_030054B8
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	movs r0, #0x20
	orrs r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r6, #0x10]
	orrs r0, r1
	str r0, [r6, #0x10]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	adds r1, r5, #0
	bl TransformSprite
	adds r0, r6, #0
	bl DisplaySprite
_0804BF60:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804BF68: .4byte gSineTable
_0804BF6C: .4byte sa2__gUnknown_030054B8

	thumb_func_start SpawnDrowningCountdownNum
SpawnDrowningCountdownNum: @ 0x0804BF70
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	adds r6, r0, #0
	mov sb, r1
	ldr r4, _0804C010 @ =gCamera
	ldr r0, _0804C014 @ =Task_DrowningCountdown
	str r0, [sp]
	ldr r0, _0804C018 @ =sa2__TaskDestructor_801F550
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sa2__sub_801F15C
	mov r8, r0
	ldrh r5, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r5, r2
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r1, r1, #8
	ldr r0, [r6]
	subs r0, r0, r1
	str r0, [r2]
	movs r0, #2
	ldrsh r1, [r4, r0]
	lsls r1, r1, #8
	ldr r0, [r6, #4]
	subs r0, r0, r1
	str r0, [r2, #4]
	movs r4, #0
	strh r4, [r2, #8]
	movs r0, #0x90
	lsls r0, r0, #1
	strh r0, [r2, #0xa]
	strh r4, [r2, #0x10]
	adds r6, #0x3c
	ldrb r0, [r6]
	strb r0, [r2, #0x16]
	ldr r1, _0804C01C @ =0x03000018
	adds r6, r5, r1
	movs r0, #4
	bl VramMalloc
	str r0, [r6, #4]
	ldr r0, _0804C020 @ =0x0000030D
	strh r0, [r6, #0xa]
	movs r0, #5
	mov r2, sb
	subs r0, r0, r2
	ldr r2, _0804C024 @ =0x03000038
	adds r1, r5, r2
	strb r0, [r1]
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r6, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r6, #0x10]
	ldr r0, _0804C028 @ =0x03000048
	adds r5, r5, r0
	strh r4, [r5]
	strh r4, [r5, #2]
	strh r4, [r5, #4]
	strh r4, [r5, #6]
	strh r4, [r5, #8]
	mov r0, r8
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0804C010: .4byte gCamera
_0804C014: .4byte Task_DrowningCountdown
_0804C018: .4byte sa2__TaskDestructor_801F550
_0804C01C: .4byte 0x03000018
_0804C020: .4byte 0x0000030D
_0804C024: .4byte 0x03000038
_0804C028: .4byte 0x03000048

	thumb_func_start SpawnAirBubbles
SpawnAirBubbles: @ 0x0804C02C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	adds r7, r1, #0
	mov r8, r2
	mov sb, r3
	ldr r1, _0804C050 @ =gSmallAirBubbleCount
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0xb
	ble _0804C054
	movs r0, #0
	b _0804C106
	.align 2, 0
_0804C050: .4byte gSmallAirBubbleCount
_0804C054:
	adds r0, r2, #1
	strb r0, [r1]
	ldr r0, _0804C0B0 @ =Task_SpawnAirBubbles
	str r0, [sp]
	ldr r0, _0804C0B4 @ =TaskDestructor_SpawnAirBubbles
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sa2__sub_801F15C
	mov ip, r0
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	adds r0, #0x18
	adds r4, r2, r0
	ldr r1, _0804C0B8 @ =0x03000048
	adds r5, r2, r1
	str r6, [r3]
	str r7, [r3, #4]
	movs r6, #0
	movs r1, #0
	mov r0, r8
	strh r0, [r3, #8]
	ldr r0, _0804C0BC @ =0x0000FF80
	strh r0, [r3, #0xa]
	strh r1, [r3, #0x10]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #0x12]
	strh r1, [r3, #0x14]
	mov r1, sb
	cmp r1, #0
	bne _0804C0CC
	ldr r0, _0804C0C0 @ =0x06012A20
	str r0, [r4, #4]
	ldr r0, _0804C0C4 @ =0x000002F1
	strh r0, [r4, #0xa]
	ldr r1, _0804C0C8 @ =0x03000038
	adds r0, r2, r1
	strb r6, [r0]
	b _0804C0F2
	.align 2, 0
_0804C0B0: .4byte Task_SpawnAirBubbles
_0804C0B4: .4byte TaskDestructor_SpawnAirBubbles
_0804C0B8: .4byte 0x03000048
_0804C0BC: .4byte 0x0000FF80
_0804C0C0: .4byte 0x06012A20
_0804C0C4: .4byte 0x000002F1
_0804C0C8: .4byte 0x03000038
_0804C0CC:
	ldr r0, _0804C114 @ =0x06012AA0
	str r0, [r4, #4]
	ldr r0, _0804C118 @ =0x000002F2
	strh r0, [r4, #0xa]
	ldr r1, _0804C11C @ =0x03000038
	adds r0, r2, r1
	strb r6, [r0]
	ldr r2, _0804C120 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _0804C124 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0804C128 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0xc0
	lsls r1, r1, #0xa
	ands r0, r1
	lsrs r0, r0, #0x10
	strh r0, [r3, #0x14]
_0804C0F2:
	movs r1, #0
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r4, #0x1a]
	strh r1, [r5]
	strh r1, [r5, #2]
	strh r1, [r5, #4]
	strh r1, [r5, #6]
	strh r1, [r5, #8]
	mov r0, ip
_0804C106:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0804C114: .4byte 0x06012AA0
_0804C118: .4byte 0x000002F2
_0804C11C: .4byte 0x03000038
_0804C120: .4byte gPseudoRandom
_0804C124: .4byte 0x00196225
_0804C128: .4byte 0x3C6EF35F

	thumb_func_start RandomlySpawnAirBubbles
RandomlySpawnAirBubbles: @ 0x0804C12C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r2, #0
	ldr r0, _0804C1B0 @ =gStageTime
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0804C1A6
	ldr r7, _0804C1B4 @ =gPseudoRandom
	ldr r0, [r7]
	ldr r6, _0804C1B8 @ =0x00196225
	muls r0, r6, r0
	ldr r1, _0804C1BC @ =0x3C6EF35F
	mov ip, r1
	adds r1, r0, r1
	str r1, [r7]
	movs r0, #0xc0
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0804C1A6
	muls r1, r6, r1
	ldr r3, _0804C1BC @ =0x3C6EF35F
	adds r1, r1, r3
	movs r2, #0xf0
	lsls r2, r2, #4
	adds r0, r1, #0
	ands r0, r2
	lsrs r4, r0, #8
	adds r0, r1, #0
	muls r0, r6, r0
	adds r3, r0, r3
	str r3, [r7]
	adds r0, r3, #0
	ands r0, r2
	lsrs r0, r0, #8
	adds r2, r0, #0
	subs r2, #8
	ldr r0, [r5, #0x10]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0804C186
	rsbs r4, r4, #0
_0804C186:
	ldr r0, [r5]
	subs r0, r0, r4
	ldr r1, [r5, #4]
	subs r1, r1, r2
	movs r4, #8
	ldrsh r2, [r5, r4]
	muls r3, r6, r3
	add r3, ip
	str r3, [r7]
	movs r4, #0x80
	lsls r4, r4, #1
	ands r3, r4
	lsrs r3, r3, #8
	bl SpawnAirBubbles
	movs r2, #1
_0804C1A6:
	adds r0, r2, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0804C1B0: .4byte gStageTime
_0804C1B4: .4byte gPseudoRandom
_0804C1B8: .4byte 0x00196225
_0804C1BC: .4byte 0x3C6EF35F

	thumb_func_start Task_SpawnAirBubbles
Task_SpawnAirBubbles: @ 0x0804C1C0
	push {r4, r5, r6, r7, lr}
	ldr r0, _0804C278 @ =gCurTask
	mov ip, r0
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	adds r1, #0x18
	adds r5, r0, r1
	ldr r4, _0804C27C @ =0x03000048
	adds r7, r0, r4
	ldr r1, [r6]
	ldr r4, [r6, #4]
	movs r0, #0x10
	ldrsh r2, [r6, r0]
	ldr r3, _0804C280 @ =gSineTable
	movs r0, #0xff
	ands r0, r2
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r1, r1, r0
	ldr r3, _0804C284 @ =gCamera
	asrs r1, r1, #8
	ldrh r0, [r3]
	subs r1, r1, r0
	strh r1, [r7, #6]
	asrs r4, r4, #8
	ldrh r0, [r3, #2]
	subs r0, r4, r0
	strh r0, [r7, #8]
	adds r2, #1
	lsls r2, r2, #4
	movs r0, #0x80
	lsls r0, r0, #1
	mov r3, ip
	cmp r2, r0
	ble _0804C214
	adds r2, r0, #0
_0804C214:
	strh r2, [r7, #2]
	strh r2, [r7, #4]
	ldrh r1, [r6, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804C226
	rsbs r0, r2, #0
	strh r0, [r7, #2]
_0804C226:
	ldrh r1, [r6, #0x14]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804C236
	ldrh r0, [r7, #4]
	rsbs r0, r0, #0
	strh r0, [r7, #4]
_0804C236:
	ldrh r0, [r7, #6]
	adds r0, #0x20
	lsls r0, r0, #0x10
	movs r1, #0x98
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0804C26E
	ldrh r0, [r7, #8]
	adds r0, #0x20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xe0
	bhi _0804C26E
	ldr r2, _0804C288 @ =gWater
	movs r1, #2
	ldrsh r0, [r2, r1]
	cmp r0, #0
	blt _0804C26E
	subs r1, r4, #3
	cmp r1, r0
	blt _0804C26E
	ldrh r2, [r6, #0x10]
	movs r0, #0x10
	ldrsh r1, [r6, r0]
	movs r0, #0xf0
	lsls r0, r0, #1
	cmp r1, r0
	ble _0804C28C
_0804C26E:
	ldr r0, [r3]
	bl TaskDestroy
	b _0804C2DE
	.align 2, 0
_0804C278: .4byte gCurTask
_0804C27C: .4byte 0x03000048
_0804C280: .4byte gSineTable
_0804C284: .4byte gCamera
_0804C288: .4byte gWater
_0804C28C:
	movs r4, #8
	ldrsh r1, [r6, r4]
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r6]
	movs r0, #0xa
	ldrsh r1, [r6, r0]
	ldr r0, [r6, #4]
	adds r0, r0, r1
	str r0, [r6, #4]
	ldrh r1, [r6, #8]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x13
	subs r1, r1, r0
	strh r1, [r6, #8]
	adds r0, r2, #1
	strh r0, [r6, #0x10]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	ldr r2, _0804C2E4 @ =sa2__gUnknown_030054B8
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	movs r0, #0x20
	orrs r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r5, #0x10]
	orrs r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	adds r1, r7, #0
	bl TransformSprite
	adds r0, r5, #0
	bl DisplaySprite
_0804C2DE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804C2E4: .4byte sa2__gUnknown_030054B8

	thumb_func_start Task_SpawnBubblesAfterDrowning
Task_SpawnBubblesAfterDrowning: @ 0x0804C2E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0804C314 @ =gCurTask
	ldr r2, [r0]
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r7, [r0]
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0804C318
	adds r0, r2, #0
	bl TaskDestroy
	b _0804C3A2
	.align 2, 0
_0804C314: .4byte gCurTask
_0804C318:
	ldr r0, _0804C3B0 @ =gStageTime
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0804C3A2
	ldr r2, _0804C3B4 @ =gPseudoRandom
	ldr r0, [r2]
	ldr r3, _0804C3B8 @ =0x00196225
	muls r0, r3, r0
	ldr r5, _0804C3BC @ =0x3C6EF35F
	adds r1, r0, r5
	str r1, [r2]
	movs r0, #0xc0
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0804C3A2
	adds r0, r1, #0
	muls r0, r3, r0
	adds r0, r0, r5
	str r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	lsrs r4, r0, #8
	mov sl, r2
	adds r6, r3, #0
	ldr r0, _0804C3C0 @ =0x0007FF00
	mov sb, r0
	ldr r1, _0804C3C4 @ =0xFFFFFC00
	mov r8, r1
_0804C358:
	mov r2, sl
	ldr r0, [r2]
	muls r0, r6, r0
	adds r0, r0, r5
	adds r1, r0, #0
	mov r3, sb
	ands r1, r3
	lsrs r1, r1, #8
	add r1, r8
	muls r0, r6, r0
	adds r0, r0, r5
	adds r2, r0, #0
	ands r2, r3
	lsrs r2, r2, #8
	add r2, r8
	adds r3, r0, #0
	muls r3, r6, r3
	adds r3, r3, r5
	mov r0, sl
	str r3, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r3, r0
	lsrs r3, r3, #8
	ldr r0, [r7]
	adds r0, r0, r1
	ldr r1, [r7, #4]
	adds r1, r1, r2
	ldr r2, _0804C3C8 @ =0xFFFFF400
	adds r1, r1, r2
	movs r2, #0
	bl SpawnAirBubbles
	adds r0, r4, #0
	subs r4, #1
	cmp r0, #0
	bne _0804C358
_0804C3A2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804C3B0: .4byte gStageTime
_0804C3B4: .4byte gPseudoRandom
_0804C3B8: .4byte 0x00196225
_0804C3BC: .4byte 0x3C6EF35F
_0804C3C0: .4byte 0x0007FF00
_0804C3C4: .4byte 0xFFFFFC00
_0804C3C8: .4byte 0xFFFFF400

	thumb_func_start SpawnBubblesAfterDrowning
SpawnBubblesAfterDrowning: @ 0x0804C3CC
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _0804C3F4 @ =Task_SpawnBubblesAfterDrowning
	ldr r2, _0804C3F8 @ =0x00004001
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r1, r1, r2
	str r4, [r1]
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0804C3F4: .4byte Task_SpawnBubblesAfterDrowning
_0804C3F8: .4byte 0x00004001

	thumb_func_start TaskDestructor_SpawnAirBubbles
TaskDestructor_SpawnAirBubbles: @ 0x0804C3FC
	ldr r1, _0804C408 @ =gSmallAirBubbleCount
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0804C408: .4byte gSmallAirBubbleCount

@ --- End of underwater_effects.c ---
