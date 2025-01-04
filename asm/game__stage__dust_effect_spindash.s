.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateSpindashDustEffect
CreateSpindashDustEffect: @ 0x08040648
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _080406AC @ =Task_SpindashDustEffect
	ldr r2, _080406B0 @ =0x00004001
	ldr r1, _080406B4 @ =TaskDestructor_SpindashDustEffect
	str r1, [sp]
	movs r1, #0x30
	movs r3, #0
	bl TaskCreate
	adds r6, r0, #0
	ldrh r5, [r6, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	movs r0, #0x14
	bl VramMalloc
	str r0, [r4, #4]
	movs r3, #0
	movs r2, #0
	strh r2, [r4, #8]
	ldr r0, _080406B8 @ =0x000002EA
	strh r0, [r4, #0xa]
	ldr r1, _080406BC @ =0x03000020
	adds r0, r5, r1
	strb r3, [r0]
	ldr r0, _080406C0 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x1a]
	strh r2, [r4, #0x1c]
	ldr r0, _080406C4 @ =0x03000022
	adds r1, r5, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _080406C8 @ =0x03000025
	adds r5, r5, r1
	strb r3, [r5]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080406AC: .4byte Task_SpindashDustEffect
_080406B0: .4byte 0x00004001
_080406B4: .4byte TaskDestructor_SpindashDustEffect
_080406B8: .4byte 0x000002EA
_080406BC: .4byte 0x03000020
_080406C0: .4byte 0x03000021
_080406C4: .4byte 0x03000022
_080406C8: .4byte 0x03000025

	thumb_func_start Task_SpindashDustEffect
Task_SpindashDustEffect: @ 0x080406CC
	push {r4, r5, r6, r7, lr}
	ldr r5, _080406F0 @ =gPlayer
	ldr r0, [r5, #0x60]
	cmp r0, #0
	beq _080406E4
	ldr r6, [r5, #0x10]
	movs r0, #0x90
	lsls r0, r0, #3
	ands r6, r0
	subs r0, #0x80
	cmp r6, r0
	beq _080406F8
_080406E4:
	ldr r0, _080406F4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080407B0
	.align 2, 0
_080406F0: .4byte gPlayer
_080406F4: .4byte gCurTask
_080406F8:
	ldr r3, _08040764 @ =gCurTask
	ldr r0, [r3]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	movs r0, #0x16
	ldrsh r1, [r5, r0]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	ble _0804072A
	movs r1, #0
	adds r0, #0xeb
	strh r0, [r4, #0xa]
	ldr r7, _08040768 @ =0x03000020
	adds r0, r2, r7
	strb r1, [r0]
	ldr r0, _0804076C @ =0x03000021
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, [r3]
	ldr r0, _08040770 @ =Task_SpindashDustEffectBig
	str r0, [r1, #8]
_0804072A:
	ldr r7, _08040774 @ =gCamera
	movs r3, #0xf
	ldrsb r3, [r5, r3]
	ldr r2, _08040778 @ =gStageFlags
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804073E
	rsbs r3, r3, #0
_0804073E:
	ldr r0, [r5]
	asrs r0, r0, #8
	ldrh r1, [r7]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	adds r0, r0, r3
	ldrh r1, [r7, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	ldr r0, [r5, #0x10]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0804077C
	ldr r0, [r4, #0x10]
	orrs r0, r6
	b _08040782
	.align 2, 0
_08040764: .4byte gCurTask
_08040768: .4byte 0x03000020
_0804076C: .4byte 0x03000021
_08040770: .4byte Task_SpindashDustEffectBig
_08040774: .4byte gCamera
_08040778: .4byte gStageFlags
_0804077C:
	ldr r0, [r4, #0x10]
	ldr r1, _08040798 @ =0xFFFFFBFF
	ands r0, r1
_08040782:
	str r0, [r4, #0x10]
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804079C
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _080407A2
	.align 2, 0
_08040798: .4byte 0xFFFFFBFF
_0804079C:
	ldr r0, [r4, #0x10]
	ldr r1, _080407B8 @ =0xFFFFF7FF
	ands r0, r1
_080407A2:
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080407B0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080407B8: .4byte 0xFFFFF7FF

	thumb_func_start Task_SpindashDustEffectBig
Task_SpindashDustEffectBig: @ 0x080407BC
	push {r4, r5, r6, r7, lr}
	ldr r5, _080407E0 @ =gPlayer
	ldr r0, [r5, #0x60]
	cmp r0, #0
	beq _080407D4
	ldr r6, [r5, #0x10]
	movs r0, #0x90
	lsls r0, r0, #3
	ands r6, r0
	subs r0, #0x80
	cmp r6, r0
	beq _080407E8
_080407D4:
	ldr r0, _080407E4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080408A0
	.align 2, 0
_080407E0: .4byte gPlayer
_080407E4: .4byte gCurTask
_080407E8:
	ldr r3, _08040854 @ =gCurTask
	ldr r0, [r3]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	movs r0, #0x16
	ldrsh r1, [r5, r0]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	bgt _0804081A
	movs r1, #0
	adds r0, #0xea
	strh r0, [r4, #0xa]
	ldr r7, _08040858 @ =0x03000020
	adds r0, r2, r7
	strb r1, [r0]
	ldr r0, _0804085C @ =0x03000021
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, [r3]
	ldr r0, _08040860 @ =Task_SpindashDustEffect
	str r0, [r1, #8]
_0804081A:
	ldr r7, _08040864 @ =gCamera
	movs r3, #0xf
	ldrsb r3, [r5, r3]
	ldr r2, _08040868 @ =gStageFlags
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804082E
	rsbs r3, r3, #0
_0804082E:
	ldr r0, [r5]
	asrs r0, r0, #8
	ldrh r1, [r7]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	adds r0, r0, r3
	ldrh r1, [r7, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	ldr r0, [r5, #0x10]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0804086C
	ldr r0, [r4, #0x10]
	orrs r0, r6
	b _08040872
	.align 2, 0
_08040854: .4byte gCurTask
_08040858: .4byte 0x03000020
_0804085C: .4byte 0x03000021
_08040860: .4byte Task_SpindashDustEffect
_08040864: .4byte gCamera
_08040868: .4byte gStageFlags
_0804086C:
	ldr r0, [r4, #0x10]
	ldr r1, _08040888 @ =0xFFFFFBFF
	ands r0, r1
_08040872:
	str r0, [r4, #0x10]
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804088C
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _08040892
	.align 2, 0
_08040888: .4byte 0xFFFFFBFF
_0804088C:
	ldr r0, [r4, #0x10]
	ldr r1, _080408A8 @ =0xFFFFF7FF
	ands r0, r1
_08040892:
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080408A0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080408A8: .4byte 0xFFFFF7FF

	thumb_func_start TaskDestructor_SpindashDustEffect
TaskDestructor_SpindashDustEffect: @ 0x080408AC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0
