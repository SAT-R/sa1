.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_806BD24
sub_806BD24: @ 0x0806BD24
	push {r4, r5, r6, r7, lr}
	ldr r0, _0806BDC0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r0, #0xc0
	adds r6, r1, r0
	movs r5, #0
_0806BD38:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #4
	adds r4, r7, r0
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _0806BD38
	adds r4, r7, #0
	adds r4, #0x90
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, #0xf3
	cmp r0, r1
	bgt _0806BD80
	adds r5, r1, #0
_0806BD6C:
	adds r0, r4, #0
	bl DisplaySprite
	ldrh r0, [r4, #0x16]
	adds r0, #0xc8
	strh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r5
	ble _0806BD6C
_0806BD80:
	movs r5, #0
_0806BD82:
	movs r0, #1
	strh r0, [r6, #0xe]
	movs r0, #0x2c
	strh r0, [r6, #0xa]
	lsls r0, r5, #4
	adds r0, #0x5c
	strh r0, [r6, #0xc]
	adds r0, r5, #0
	adds r0, #0xfc
	adds r0, r7, r0
	adds r1, r6, #0
	bl sub_8052F78
	movs r0, #7
	strh r0, [r6, #0xe]
	movs r0, #0x50
	strh r0, [r6, #0xa]
	lsls r0, r5, #3
	adds r0, #0xe4
	adds r0, r7, r0
	adds r1, r6, #0
	bl sub_8052F78
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _0806BD82
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806BDC0: .4byte gCurTask

	thumb_func_start sub_806BDC4
sub_806BDC4: @ 0x0806BDC4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldrh r7, [r1, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r7
	mov r8, r0
	ldr r3, _0806BE30 @ =gLoadedSaveGame
	ldr r0, _0806BE34 @ =gCurrentLevel
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r0, r0, r5
	lsls r0, r0, #2
	ldr r1, _0806BE38 @ =gSelectedCharacter
	movs r2, #0
	ldrsb r2, [r1, r2]
	movs r1, #0xd8
	muls r1, r2, r1
	adds r0, r0, r1
	adds r3, #0x20
	adds r0, r0, r3
	ldr r6, [r0]
	ldr r0, _0806BE3C @ =0x00008C9F
	cmp r6, r0
	bls _0806BE48
	lsls r2, r5, #3
	ldr r1, _0806BE40 @ =0x030000EA
	adds r0, r7, r1
	adds r0, r0, r2
	movs r3, #0x29
	strb r3, [r0]
	subs r1, #1
	adds r0, r7, r1
	adds r0, r0, r2
	strb r3, [r0]
	subs r1, #2
	adds r0, r7, r1
	adds r0, r0, r2
	strb r3, [r0]
	subs r1, #1
	adds r0, r7, r1
	adds r0, r0, r2
	movs r1, #0x25
	strb r1, [r0]
	ldr r1, _0806BE44 @ =0x030000E4
	adds r0, r7, r1
	adds r0, r0, r2
	strb r3, [r0]
	b _0806BEC2
	.align 2, 0
_0806BE30: .4byte gLoadedSaveGame
_0806BE34: .4byte gCurrentLevel
_0806BE38: .4byte gSelectedCharacter
_0806BE3C: .4byte 0x00008C9F
_0806BE40: .4byte 0x030000EA
_0806BE44: .4byte 0x030000E4
_0806BE48:
	adds r0, r6, #0
	movs r1, #0x3c
	bl Div
	adds r4, r0, #0
	movs r1, #0x3c
	bl Div
	ldr r2, _0806BEE0 @ =sZoneTimeSecondsTable
	lsls r0, r0, #1
	adds r1, r0, r2
	movs r3, #0
	ldrsh r1, [r1, r3]
	subs r4, r4, r1
	lsls r4, r4, #1
	adds r2, r4, r2
	movs r1, #0
	ldrsh r2, [r2, r1]
	subs r2, r6, r2
	ldr r1, _0806BEE4 @ =sZoneTimeMinutesTable
	adds r1, r0, r1
	ldrh r1, [r1]
	subs r2, r2, r1
	lsls r2, r2, #1
	lsls r5, r5, #3
	ldr r1, _0806BEE8 @ =0x030000EA
	adds r3, r7, r1
	adds r3, r3, r5
	ldr r6, _0806BEEC @ =gMillisUnpackTable
	adds r1, r2, #1
	adds r1, r1, r6
	ldrb r1, [r1]
	strb r1, [r3]
	ldr r3, _0806BEF0 @ =0x030000E9
	adds r1, r7, r3
	adds r1, r1, r5
	adds r2, r2, r6
	ldrb r2, [r2]
	strb r2, [r1]
	ldr r1, _0806BEF4 @ =0x030000E7
	adds r2, r7, r1
	adds r2, r2, r5
	ldr r3, _0806BEF8 @ =gSecondsTable
	adds r1, r4, #1
	adds r1, r1, r3
	ldrb r1, [r1]
	strb r1, [r2]
	ldr r2, _0806BEFC @ =0x030000E6
	adds r1, r7, r2
	adds r1, r1, r5
	adds r4, r4, r3
	ldrb r2, [r4]
	strb r2, [r1]
	ldr r2, _0806BF00 @ =0x030000E4
	adds r1, r7, r2
	adds r1, r1, r5
	adds r0, #1
	adds r0, r0, r3
	ldrb r0, [r0]
	strb r0, [r1]
	adds r2, r5, #0
_0806BEC2:
	mov r0, r8
	adds r0, #0xe5
	adds r0, r0, r2
	movs r1, #0x2a
	strb r1, [r0]
	mov r0, r8
	adds r0, #0xe8
	adds r0, r0, r2
	strb r1, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806BEE0: .4byte sZoneTimeSecondsTable
_0806BEE4: .4byte sZoneTimeMinutesTable
_0806BEE8: .4byte 0x030000EA
_0806BEEC: .4byte gMillisUnpackTable
_0806BEF0: .4byte 0x030000E9
_0806BEF4: .4byte 0x030000E7
_0806BEF8: .4byte gSecondsTable
_0806BEFC: .4byte 0x030000E6
_0806BF00: .4byte 0x030000E4

	thumb_func_start sub_806BF04
sub_806BF04: @ 0x0806BF04
	ldr r0, _0806BF28 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _0806BF2C @ =0x03000100
	adds r2, r0, r1
	ldr r3, [r2]
	ldr r0, _0806BF30 @ =0xFFFFFE00
	adds r1, r3, r0
	str r1, [r2]
	ldr r0, _0806BF34 @ =0xFFFF3800
	cmp r1, r0
	bge _0806BF24
	movs r1, #0xc6
	lsls r1, r1, #8
	adds r0, r3, r1
	str r0, [r2]
_0806BF24:
	bx lr
	.align 2, 0
_0806BF28: .4byte gCurTask
_0806BF2C: .4byte 0x03000100
_0806BF30: .4byte 0xFFFFFE00
_0806BF34: .4byte 0xFFFF3800

	thumb_func_start TaskDestructor_806BF38
TaskDestructor_806BF38: @ 0x0806BF38
	push {r4, r5, lr}
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	ldr r0, [r4, #4]
	bl VramFree
	ldr r0, [r4, #0x34]
	bl VramFree
	ldr r0, [r4, #0x64]
	bl VramFree
	ldr r1, _0806BF70 @ =0x03000094
	adds r0, r5, r1
	ldr r0, [r0]
	bl VramFree
	ldr r0, _0806BF74 @ =0x03000110
	adds r5, r5, r0
	ldr r0, [r5]
	bl VramFree
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806BF70: .4byte 0x03000094
_0806BF74: .4byte 0x03000110
