.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_PartyBalloonPopped
Task_PartyBalloonPopped: @ 0x0807F224
	push {r4, r5, r6, r7, lr}
	ldr r0, _0807F294 @ =gCurTask
	mov ip, r0
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	ldr r1, _0807F298 @ =0x0300000C
	adds r5, r6, r1
	ldr r7, [r4]
	ldrb r1, [r4, #8]
	lsls r1, r1, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r7, #1]
	lsls r2, r2, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _0807F29C @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r5, #0x18]
	adds r1, #0x80
	lsls r1, r1, #0x10
	movs r0, #0xf8
	lsls r0, r0, #0x11
	mov r3, ip
	cmp r1, r0
	bhi _0807F286
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0807F286
	lsls r1, r2, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _0807F2A0
_0807F286:
	ldrb r0, [r4, #8]
	strb r0, [r7]
	ldr r0, [r3]
	bl TaskDestroy
	b _0807F2D0
	.align 2, 0
_0807F294: .4byte gCurTask
_0807F298: .4byte 0x0300000C
_0807F29C: .4byte gCamera
_0807F2A0:
	ldr r0, _0807F2C0 @ =0x03000040
	adds r1, r6, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0807F2C4
	ldrb r0, [r4, #8]
	strb r0, [r7]
	mov r1, ip
	ldr r0, [r1]
	bl TaskDestroy
	b _0807F2D0
	.align 2, 0
_0807F2C0: .4byte 0x03000040
_0807F2C4:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_0807F2D0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start TaskDestructor_PartyBalloon
TaskDestructor_PartyBalloon: @ 0x0807F2D8
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0
