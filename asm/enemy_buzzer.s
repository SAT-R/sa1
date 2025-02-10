.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Buzzer
CreateEntity_Buzzer: @ 0x0801DC84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sl, r3
	ldr r0, _0801DDB4 @ =gCurrentLevel
	ldrb r0, [r0]
	lsrs r0, r0, #1
	cmp r0, #0
	bne _0801DCB6
	ldr r0, _0801DDB8 @ =gLoadedSaveGame
	ldrb r0, [r0, #0x18]
	cmp r0, #0
	bne _0801DDA2
_0801DCB6:
	ldr r0, _0801DDBC @ =Task_BuzzerMain
	ldr r1, _0801DDC0 @ =sa2__TaskDestructor_80095E8
	str r1, [sp]
	movs r1, #0x48
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r4, r5
	ldr r0, _0801DDC4 @ =0x0300000C
	adds r7, r4, r0
	movs r2, #0
	movs r3, #0
	mov r1, sb
	strh r1, [r5, #4]
	mov r0, r8
	strh r0, [r5, #6]
	str r6, [r5]
	ldrb r0, [r6]
	strb r0, [r5, #8]
	mov r1, sl
	strb r1, [r5, #9]
	ldr r0, _0801DDC8 @ =0x03000040
	adds r0, r4, r0
	str r0, [sp, #0xc]
	strb r2, [r0]
	ldr r1, _0801DDCC @ =0x03000041
	strb r2, [r1, r4]
	ldr r0, _0801DDD0 @ =0x03000042
	adds r0, r0, r4
	mov sl, r0
	movs r1, #0xff
	lsls r1, r1, #8
	mov ip, r1
	mov r1, ip
	strh r1, [r0]
	str r3, [r5, #0x3c]
	ldr r0, [sp, #0xc]
	strb r2, [r0]
	ldrb r0, [r6]
	lsls r0, r0, #3
	mov r1, sb
	lsls r1, r1, #8
	mov sb, r1
	add r0, sb
	strh r0, [r7, #0x16]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	mov r1, r8
	lsls r1, r1, #8
	mov sb, r1
	add r0, sb
	strh r0, [r7, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	movs r0, #0x14
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	ldr r3, [sp, #8]
	strh r3, [r7, #8]
	ldr r0, _0801DDD4 @ =0x00000193
	strh r0, [r7, #0xa]
	ldr r1, _0801DDD8 @ =0x0300002C
	adds r0, r4, r1
	ldr r2, [sp, #4]
	strb r2, [r0]
	strh r3, [r7, #0x14]
	strh r3, [r7, #0x1c]
	ldr r0, _0801DDDC @ =0x0300002D
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0801DDE0 @ =0x0300002E
	adds r1, r4, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0801DDE4 @ =0x03000031
	adds r4, r4, r1
	strb r2, [r4]
	subs r0, #0x11
	str r0, [r7, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x10]
	ldr r0, _0801DDE8 @ =gPlayer
	ldr r2, [r0]
	asrs r2, r2, #8
	ldrb r1, [r5, #8]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	cmp r2, r1
	blt _0801DD9C
	movs r0, #0x80
	lsls r0, r0, #1
	mov r1, sl
	strh r0, [r1]
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r7, #0x10]
_0801DD9C:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
_0801DDA2:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801DDB4: .4byte gCurrentLevel
_0801DDB8: .4byte gLoadedSaveGame
_0801DDBC: .4byte Task_BuzzerMain
_0801DDC0: .4byte sa2__TaskDestructor_80095E8
_0801DDC4: .4byte 0x0300000C
_0801DDC8: .4byte 0x03000040
_0801DDCC: .4byte 0x03000041
_0801DDD0: .4byte 0x03000042
_0801DDD4: .4byte 0x00000193
_0801DDD8: .4byte 0x0300002C
_0801DDDC: .4byte 0x0300002D
_0801DDE0: .4byte 0x0300002E
_0801DDE4: .4byte 0x03000031
_0801DDE8: .4byte gPlayer

	thumb_func_start Task_BuzzerMain
Task_BuzzerMain: @ 0x0801DDEC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _0801DEB4 @ =gCurTask
	ldr r0, [r4]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r3, r0
	adds r0, #0xc
	adds r5, r3, r0
	ldr r1, [r7]
	mov r8, r1
	ldrb r1, [r7, #8]
	lsls r1, r1, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r0, r8
	ldrb r2, [r0, #1]
	lsls r2, r2, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldr r0, _0801DEB8 @ =0x03000042
	adds r3, r3, r0
	movs r0, #0
	ldrsh r3, [r3, r0]
	ldr r0, [r7, #0x3c]
	adds r0, r0, r3
	str r0, [r7, #0x3c]
	asrs r0, r0, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r6, _0801DEBC @ =gCamera
	ldrh r0, [r6]
	lsrs r3, r1, #0x10
	mov sb, r3
	asrs r1, r1, #0x10
	subs r0, r1, r0
	strh r0, [r5, #0x16]
	ldrh r0, [r6, #2]
	lsrs r3, r2, #0x10
	mov sl, r3
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r5, #0x18]
	movs r0, #0
	ldrsh r3, [r6, r0]
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r0, r0, r3
	mov ip, r0
	cmp r1, ip
	bgt _0801DE82
	adds r0, r3, #0
	subs r0, #0x80
	cmp r1, r0
	blt _0801DE82
	movs r3, #2
	ldrsh r1, [r6, r3]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r2, r0
	bgt _0801DE82
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _0801DEC0
_0801DE82:
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0801DEA6
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0801DEA6
	movs r3, #0x18
	ldrsh r1, [r5, r3]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0801DEC0
_0801DEA6:
	ldrb r0, [r7, #8]
	mov r1, r8
	strb r0, [r1]
	ldr r0, [r4]
	bl TaskDestroy
	b _0801E018
	.align 2, 0
_0801DEB4: .4byte gCurTask
_0801DEB8: .4byte 0x03000042
_0801DEBC: .4byte gCamera
_0801DEC0:
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	mov sb, r0
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r6, r0, #0x10
	adds r0, r5, #0
	mov r1, sb
	adds r2, r6, #0
	bl sa2__sub_800C4FC
	cmp r0, #0
	beq _0801DEEC
	ldr r0, _0801DEE8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0801E018
	.align 2, 0
_0801DEE8: .4byte gCurTask
_0801DEEC:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r7, #0x3c]
	asrs r2, r0, #8
	mov r3, r8
	movs r1, #3
	ldrsb r1, [r3, r1]
	lsls r0, r1, #3
	cmp r2, r0
	bgt _0801DF3C
	adds r1, r7, #0
	adds r1, #0x42
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	subs r1, #1
	movs r0, #2
	strb r0, [r1]
	ldr r0, _0801DF34 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801DF38 @ =Task_Buzzer_801E190
	str r0, [r1, #8]
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5, #0x10]
	b _0801E018
	.align 2, 0
_0801DF34: .4byte gCurTask
_0801DF38: .4byte Task_Buzzer_801E190
_0801DF3C:
	mov r3, r8
	ldrb r0, [r3, #5]
	adds r0, r1, r0
	lsls r0, r0, #3
	cmp r2, r0
	blt _0801DF80
	adds r1, r7, #0
	adds r1, #0x42
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r1]
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	subs r1, #1
	movs r0, #2
	strb r0, [r1]
	ldr r0, _0801DF74 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801DF78 @ =Task_Buzzer_801E190
	str r0, [r1, #8]
	ldr r0, [r5, #0x10]
	ldr r1, _0801DF7C @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r5, #0x10]
	b _0801E018
	.align 2, 0
_0801DF74: .4byte gCurTask
_0801DF78: .4byte Task_Buzzer_801E190
_0801DF7C: .4byte 0xFFFFFBFF
_0801DF80:
	adds r0, r7, #0
	adds r0, #0x41
	ldrb r0, [r0]
	mov sl, r0
	cmp r0, #0
	bne _0801E018
	ldr r4, _0801E028 @ =gPlayer
	ldr r0, [r4, #4]
	asrs r1, r0, #8
	cmp r6, r1
	bgt _0801E018
	adds r0, r6, #0
	adds r0, #0x60
	cmp r0, r1
	blt _0801E018
	subs r0, r1, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r4, [r4]
	asrs r4, r4, #8
	mov r0, sb
	subs r4, r0, r4
	lsls r0, r4, #4
	adds r0, r0, r4
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #1
	movs r1, #0x11
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	str r0, [r5, #0x10]
	cmp r0, #0
	beq _0801DFE6
	lsls r0, r2, #0x10
	rsbs r0, r0, #0
	lsrs r2, r0, #0x10
	lsls r0, r6, #0x10
	rsbs r0, r0, #0
	lsrs r6, r0, #0x10
_0801DFE6:
	lsls r1, r6, #0x10
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r3, r0, #0x10
	cmp r1, r0
	blt _0801E018
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, r3
	bgt _0801E018
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	subs r1, #1
	movs r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x44
	mov r1, sl
	strh r1, [r0]
	ldr r0, _0801E02C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801E030 @ =Task_801E034
	str r0, [r1, #8]
_0801E018:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801E028: .4byte gPlayer
_0801E02C: .4byte gCurTask
_0801E030: .4byte Task_801E034

	thumb_func_start Task_801E034
Task_801E034: @ 0x0801E034
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0801E10C @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r3, r0
	adds r0, #0xc
	adds r6, r3, r0
	ldr r1, [r7]
	mov sb, r1
	ldrb r1, [r7, #8]
	lsls r1, r1, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r4, sb
	ldrb r2, [r4, #1]
	lsls r2, r2, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldr r0, [r7, #0x3c]
	asrs r0, r0, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r0, _0801E110 @ =gCamera
	mov r8, r0
	ldrh r0, [r0]
	lsrs r4, r1, #0x10
	str r4, [sp]
	asrs r4, r1, #0x10
	subs r0, r4, r0
	strh r0, [r6, #0x16]
	mov r1, r8
	ldrh r0, [r1, #2]
	lsrs r1, r2, #0x10
	mov sl, r1
	asrs r5, r2, #0x10
	subs r0, r5, r0
	strh r0, [r6, #0x18]
	ldr r2, _0801E114 @ =0x03000044
	adds r3, r3, r2
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa
	bne _0801E0B2
	movs r1, #6
	orrs r1, r5
	adds r0, r4, #0
	bl CreateBuzzerProjectile
_0801E0B2:
	mov r0, r8
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r4, r0
	bgt _0801E0E0
	adds r0, r1, #0
	subs r0, #0x80
	cmp r4, r0
	blt _0801E0E0
	mov r4, r8
	movs r0, #2
	ldrsh r1, [r4, r0]
	subs r2, #0x50
	adds r0, r1, r2
	cmp r5, r0
	bgt _0801E0E0
	adds r0, r1, #0
	subs r0, #0x80
	cmp r5, r0
	bge _0801E118
_0801E0E0:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0801E104
	movs r4, #0x18
	ldrsh r0, [r6, r4]
	adds r0, #0x80
	cmp r0, #0
	blt _0801E104
	movs r0, #0x18
	ldrsh r1, [r6, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0801E118
_0801E104:
	ldrb r0, [r7, #8]
	mov r1, sb
	strb r0, [r1]
	b _0801E130
	.align 2, 0
_0801E10C: .4byte gCurTask
_0801E110: .4byte gCamera
_0801E114: .4byte 0x03000044
_0801E118:
	ldr r2, [sp]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	mov r4, sl
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	bl sa2__sub_800C4FC
	adds r2, r0, #0
	cmp r2, #0
	beq _0801E140
_0801E130:
	ldr r0, _0801E13C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0801E176
	.align 2, 0
_0801E13C: .4byte gCurTask
_0801E140:
	adds r0, r7, #0
	adds r0, #0x44
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x1d
	ble _0801E16A
	adds r1, r6, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x20
	strb r2, [r0]
	ldr r0, _0801E188 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801E18C @ =Task_BuzzerMain
	str r0, [r1, #8]
	adds r1, r7, #0
	adds r1, #0x41
	movs r0, #1
	strb r0, [r1]
_0801E16A:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_0801E176:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801E188: .4byte gCurTask
_0801E18C: .4byte Task_BuzzerMain

	thumb_func_start Task_Buzzer_801E190
Task_Buzzer_801E190: @ 0x0801E190
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0801E24C @ =gCurTask
	mov ip, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r2, _0801E250 @ =0x0300000C
	adds r6, r1, r2
	ldr r3, [r5]
	ldrb r1, [r5, #8]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r3, #1]
	lsls r2, r2, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldr r0, [r5, #0x3c]
	asrs r0, r0, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r7, _0801E254 @ =gCamera
	ldrh r0, [r7]
	lsrs r4, r1, #0x10
	mov sb, r4
	asrs r1, r1, #0x10
	subs r0, r1, r0
	strh r0, [r6, #0x16]
	ldrh r0, [r7, #2]
	lsrs r4, r2, #0x10
	mov r8, r4
	asrs r4, r2, #0x10
	subs r0, r4, r0
	strh r0, [r6, #0x18]
	movs r0, #0
	ldrsh r2, [r7, r0]
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r0, r0, r2
	mov sl, r0
	cmp r1, sl
	bgt _0801E218
	adds r0, r2, #0
	subs r0, #0x80
	cmp r1, r0
	blt _0801E218
	movs r2, #2
	ldrsh r1, [r7, r2]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r4, r0
	bgt _0801E218
	adds r0, r1, #0
	subs r0, #0x80
	cmp r4, r0
	bge _0801E258
_0801E218:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0801E23C
	movs r4, #0x18
	ldrsh r0, [r6, r4]
	adds r0, #0x80
	cmp r0, #0
	blt _0801E23C
	movs r0, #0x18
	ldrsh r1, [r6, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0801E258
_0801E23C:
	ldrb r0, [r5, #8]
	strb r0, [r3]
	mov r1, ip
	ldr r0, [r1]
	bl TaskDestroy
	b _0801E2AA
	.align 2, 0
_0801E24C: .4byte gCurTask
_0801E250: .4byte 0x0300000C
_0801E254: .4byte gCamera
_0801E258:
	mov r2, sb
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	mov r4, r8
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	bl sa2__sub_800C4FC
	adds r2, r0, #0
	cmp r2, #0
	beq _0801E280
	ldr r0, _0801E27C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0801E2AA
	.align 2, 0
_0801E27C: .4byte gCurTask
_0801E280:
	adds r0, r5, #0
	adds r0, #0x41
	strb r2, [r0]
	subs r0, #1
	strb r2, [r0]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r1, r0, #0
	cmp r1, #0
	bne _0801E2A4
	adds r0, r6, #0
	adds r0, #0x20
	strb r1, [r0]
	ldr r0, _0801E2B8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801E2BC @ =Task_BuzzerMain
	str r0, [r1, #8]
_0801E2A4:
	adds r0, r6, #0
	bl DisplaySprite
_0801E2AA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801E2B8: .4byte gCurTask
_0801E2BC: .4byte Task_BuzzerMain


	thumb_func_start CreateBuzzerProjectile
CreateBuzzerProjectile: @ 0x0801E2C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	ldr r0, _0801E3B8 @ =Task_BuzzerProjectileMain
	movs r2, #0x90
	lsls r2, r2, #8
	movs r1, #0
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r5, #0xc0
	lsls r5, r5, #0x12
	add r5, r8
	ldr r1, _0801E3BC @ =gPlayer
	ldr r0, [r1, #4]
	asrs r0, r0, #8
	ldr r2, [sp, #4]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov sb, r2
	subs r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r1]
	asrs r1, r1, #8
	mov r2, sl
	lsls r6, r2, #0x10
	asrs r6, r6, #0x10
	subs r1, r1, r6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sa2__sub_8004418
	adds r4, r0, #0
	ldr r7, _0801E3C0 @ =gSineTable
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r1, #0x26
	bl Div
	strh r0, [r5, #0x38]
	lsls r4, r4, #1
	adds r4, r4, r7
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r1, #0x26
	bl Div
	strh r0, [r5, #0x3a]
	lsls r6, r6, #8
	str r6, [r5, #0x30]
	mov r2, sb
	lsls r2, r2, #8
	str r2, [r5, #0x34]
	mov r0, sl
	strh r0, [r5, #0x16]
	mov r1, sp
	ldrh r1, [r1, #4]
	strh r1, [r5, #0x18]
	ldr r0, _0801E3C4 @ =0x06012600
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	movs r2, #0
	strh r2, [r5, #8]
	ldr r0, _0801E3C8 @ =0x00000199
	strh r0, [r5, #0xa]
	ldr r0, _0801E3CC @ =0x03000020
	add r0, r8
	movs r1, #0
	strb r1, [r0]
	strh r2, [r5, #0x14]
	strh r2, [r5, #0x1c]
	ldr r1, _0801E3D0 @ =0x03000021
	add r1, r8
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _0801E3D4 @ =0x03000022
	add r1, r8
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _0801E3D8 @ =0x03000025
	add r8, r0
	mov r1, r8
	strb r2, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	adds r0, r5, #0
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
_0801E3B8: .4byte Task_BuzzerProjectileMain
_0801E3BC: .4byte gPlayer
_0801E3C0: .4byte gSineTable
_0801E3C4: .4byte 0x06012600
_0801E3C8: .4byte 0x00000199
_0801E3CC: .4byte 0x03000020
_0801E3D0: .4byte 0x03000021
_0801E3D4: .4byte 0x03000022
_0801E3D8: .4byte 0x03000025

	thumb_func_start Task_BuzzerProjectileMain
Task_BuzzerProjectileMain: @ 0x0801E3DC
	push {r4, r5, lr}
	ldr r0, _0801E450 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r5, r4, #0
	movs r1, #0x38
	ldrsh r0, [r4, r1]
	ldr r1, [r4, #0x30]
	adds r1, r1, r0
	str r1, [r4, #0x30]
	movs r0, #0x3a
	ldrsh r2, [r4, r0]
	ldr r0, [r4, #0x34]
	adds r0, r0, r2
	str r0, [r4, #0x34]
	asrs r1, r1, #8
	strh r1, [r4, #0x16]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	movs r0, #0x16
	ldrsh r1, [r4, r0]
	movs r0, #0x18
	ldrsh r2, [r4, r0]
	adds r0, r4, #0
	bl sub_800B798
	ldr r3, _0801E454 @ =gCamera
	ldrh r0, [r4, #0x16]
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldrh r2, [r4, #0x18]
	ldrh r1, [r3, #2]
	subs r2, r2, r1
	strh r2, [r4, #0x18]
	adds r0, #0x28
	lsls r0, r0, #0x10
	movs r1, #0xa0
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0801E446
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x28
	cmp r0, #0
	blt _0801E446
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xc8
	ble _0801E458
_0801E446:
	ldr r0, _0801E450 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0801E464
	.align 2, 0
_0801E450: .4byte gCurTask
_0801E454: .4byte gCamera
_0801E458:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_0801E464:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
