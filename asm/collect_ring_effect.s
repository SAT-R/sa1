.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
@ SA2: src/sakit/collect_ring_effect.c
	thumb_func_start CreateCollectRingEffect
CreateCollectRingEffect: @ 0x0801E46C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r0, _0801E520 @ =gActiveCollectRingEffectCount
	ldrb r0, [r0]
	cmp r0, #7
	bhi _0801E57E
	ldr r0, _0801E524 @ =Task_CollectRingEffect
	movs r1, #0x80
	lsls r1, r1, #6
	mov r8, r1
	movs r4, #0
	str r4, [sp]
	movs r1, #0x34
	mov r2, r8
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r3, r1
	ldr r2, _0801E528 @ =0x03000031
	adds r0, r3, r2
	strb r4, [r0]
	movs r5, #0
	strh r6, [r1, #0x16]
	strh r7, [r1, #0x18]
	ldr r0, _0801E52C @ =0x06011F00
	str r0, [r1, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r1, #0x1a]
	strh r4, [r1, #8]
	subs r0, #0xfc
	strh r0, [r1, #0xa]
	subs r2, #0x11
	adds r0, r3, r2
	strb r5, [r0]
	strh r4, [r1, #0x14]
	strh r4, [r1, #0x1c]
	ldr r0, _0801E530 @ =0x03000021
	adds r2, r3, r0
	movs r0, #0xff
	strb r0, [r2]
	ldr r0, _0801E534 @ =0x03000022
	adds r2, r3, r0
	movs r0, #0x10
	strb r0, [r2]
	ldr r2, _0801E538 @ =0x03000025
	adds r0, r3, r2
	strb r5, [r0]
	mov r0, r8
	str r0, [r1, #0x10]
	ldr r0, _0801E53C @ =gRingCount
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	ldr r1, _0801E540 @ =0x03000030
	adds r3, r3, r1
	strb r0, [r3]
	cmp r0, #0
	beq _0801E550
	ldr r4, _0801E544 @ =gMPlayInfo_SE2
	ldr r1, _0801E548 @ =se_ring_copy
	adds r0, r4, #0
	bl MPlayStart
	adds r0, r4, #0
	bl m4aMPlayImmInit
	ldr r5, _0801E54C @ =0x0000FFFF
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl m4aMPlayVolumeControl
	movs r2, #0x40
	rsbs r2, r2, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl m4aMPlayPanpotControl
	b _0801E576
	.align 2, 0
_0801E520: .4byte gActiveCollectRingEffectCount
_0801E524: .4byte Task_CollectRingEffect
_0801E528: .4byte 0x03000031
_0801E52C: .4byte 0x06011F00
_0801E530: .4byte 0x03000021
_0801E534: .4byte 0x03000022
_0801E538: .4byte 0x03000025
_0801E53C: .4byte gRingCount
_0801E540: .4byte 0x03000030
_0801E544: .4byte gMPlayInfo_SE2
_0801E548: .4byte se_ring_copy
_0801E54C: .4byte 0x0000FFFF
_0801E550:
	ldr r4, _0801E58C @ =gMPlayInfo_SE1
	ldr r1, _0801E590 @ =se_ring_copy
	adds r0, r4, #0
	bl MPlayStart
	adds r0, r4, #0
	bl m4aMPlayImmInit
	ldr r5, _0801E594 @ =0x0000FFFF
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl m4aMPlayVolumeControl
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x40
	bl m4aMPlayPanpotControl
_0801E576:
	ldr r1, _0801E598 @ =gActiveCollectRingEffectCount
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0801E57E:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801E58C: .4byte gMPlayInfo_SE1
_0801E590: .4byte se_ring_copy
_0801E594: .4byte 0x0000FFFF
_0801E598: .4byte gActiveCollectRingEffectCount

	thumb_func_start Task_CollectRingEffect
Task_CollectRingEffect: @ 0x0801E59C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0801E5FC @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r5, r4, #0
	ldrh r0, [r4, #0x16]
	adds r6, r0, #0
	ldrh r7, [r4, #0x18]
	ldr r1, _0801E600 @ =gCamera
	ldrh r0, [r1]
	subs r0, r6, r0
	strh r0, [r4, #0x16]
	ldrh r0, [r4, #0x18]
	ldrh r1, [r1, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _0801E5E8
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, _0801E604 @ =gActiveCollectRingEffectCount
	ldrb r1, [r0]
	subs r1, #1
	strb r1, [r0]
	mov r1, r8
	ldr r0, [r1]
	bl TaskDestroy
_0801E5E8:
	adds r0, r5, #0
	bl DisplaySprite
	strh r6, [r5, #0x16]
	strh r7, [r5, #0x18]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801E5FC: .4byte gCurTask
_0801E600: .4byte gCamera
_0801E604: .4byte gActiveCollectRingEffectCount
.endif
