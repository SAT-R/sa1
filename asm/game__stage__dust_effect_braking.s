.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ --- Start of game/stage/dust_effect_braking.c ---
	thumb_func_start CreateBrakingDustEffect
CreateBrakingDustEffect: @ 0x080404A0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r7, r1, #0
	ldr r1, _080404C0 @ =gDustEffectBrakingTask
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _080404BA
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _080404C4
_080404BA:
	movs r0, #0
	b _0804053C
	.align 2, 0
_080404C0: .4byte gDustEffectBrakingTask
_080404C4:
	subs r0, r2, #1
	movs r5, #0
	strb r0, [r1]
	ldr r0, _08040544 @ =Task_BrakingDustEffect
	ldr r2, _08040548 @ =0x00004001
	str r5, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r2, r1
	movs r6, #0
	strh r4, [r1]
	strh r7, [r1, #2]
	strh r5, [r1, #4]
	strh r5, [r1, #6]
	ldr r1, _0804054C @ =0x03000008
	adds r4, r2, r1
	ldr r1, _08040550 @ =0x06012100
	str r1, [r4, #4]
	strh r5, [r4, #8]
	movs r1, #0xbb
	lsls r1, r1, #2
	strh r1, [r4, #0xa]
	ldr r3, _08040554 @ =0x03000028
	adds r1, r2, r3
	strb r6, [r1]
	ldr r1, _08040558 @ =0x03000029
	adds r3, r2, r1
	movs r1, #0xff
	strb r1, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r4, #0x1a]
	strh r5, [r4, #0x1c]
	ldr r1, _0804055C @ =0x0300002A
	adds r3, r2, r1
	movs r1, #0x10
	strb r1, [r3]
	ldr r3, _08040560 @ =0x0300002D
	adds r2, r2, r3
	strb r6, [r2]
	movs r5, #0x80
	lsls r5, r5, #6
	str r5, [r4, #0x10]
	ldr r3, _08040564 @ =gPseudoRandom
	ldr r2, [r3]
	ldr r1, _08040568 @ =0x00196225
	muls r1, r2, r1
	ldr r2, _0804056C @ =0x3C6EF35F
	adds r1, r1, r2
	str r1, [r3]
	movs r2, #0xc0
	lsls r2, r2, #4
	ands r1, r2
	orrs r1, r5
	str r1, [r4, #0x10]
_0804053C:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08040544: .4byte Task_BrakingDustEffect
_08040548: .4byte 0x00004001
_0804054C: .4byte 0x03000008
_08040550: .4byte 0x06012100
_08040554: .4byte 0x03000028
_08040558: .4byte 0x03000029
_0804055C: .4byte 0x0300002A
_08040560: .4byte 0x0300002D
_08040564: .4byte gPseudoRandom
_08040568: .4byte 0x00196225
_0804056C: .4byte 0x3C6EF35F

	thumb_func_start Task_BrakingDustEffect
Task_BrakingDustEffect: @ 0x08040570
	push {r4, r5, lr}
	ldr r2, _080405A4 @ =gDustEffectBrakingTask
	ldr r0, _080405A8 @ =gCurTask
	ldr r3, [r0]
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #8
	adds r5, r1, r0
	ldr r0, [r2, #4]
	cmp r0, #0
	beq _08040596
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080405AC
_08040596:
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	adds r0, r3, #0
	bl TaskDestroy
	b _080405DA
	.align 2, 0
_080405A4: .4byte gDustEffectBrakingTask
_080405A8: .4byte gCurTask
_080405AC:
	ldr r2, _080405E0 @ =gCamera
	ldrh r0, [r4]
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r5, #0x16]
	ldrh r0, [r4, #2]
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldrh r0, [r4, #4]
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	ldrh r0, [r4, #6]
	ldrh r1, [r4, #2]
	adds r0, r0, r1
	strh r0, [r4, #2]
_080405DA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080405E0: .4byte gCamera

	thumb_func_start CreateBrakingDustEffectRelatedTask
CreateBrakingDustEffectRelatedTask: @ 0x080405E4
	push {r4, lr}
	sub sp, #4
	ldr r4, _08040610 @ =gDustEffectBrakingTask
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _08040608
	ldr r0, _08040614 @ =Task_BrakingDustEffectRelated
	movs r2, #0x80
	lsls r2, r2, #7
	ldr r1, _08040618 @ =TaskDestructor_BrakingDustEffectRelated
	str r1, [sp]
	movs r1, #0
	movs r3, #0
	bl TaskCreate
	str r0, [r4, #4]
	movs r0, #0x14
	strb r0, [r4]
_08040608:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08040610: .4byte gDustEffectBrakingTask
_08040614: .4byte Task_BrakingDustEffectRelated
_08040618: .4byte TaskDestructor_BrakingDustEffectRelated

	thumb_func_start DestroyBrakingDustEffectRelatedTask
DestroyBrakingDustEffectRelatedTask: @ 0x0804061C
	push {r4, lr}
	ldr r4, _08040634 @ =gDustEffectBrakingTask
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0804062E
	bl TaskDestroy
	movs r0, #0
	str r0, [r4, #4]
_0804062E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08040634: .4byte gDustEffectBrakingTask

	thumb_func_start TaskDestructor_BrakingDustEffectRelated
TaskDestructor_BrakingDustEffectRelated: @ 0x08040638
	ldr r1, _08040640 @ =gDustEffectBrakingTask
	movs r0, #0
	str r0, [r1, #4]
	bx lr
	.align 2, 0
_08040640: .4byte gDustEffectBrakingTask

    thumb_func_start Task_BrakingDustEffectRelated
Task_BrakingDustEffectRelated:
	bx lr
	.align 2, 0
