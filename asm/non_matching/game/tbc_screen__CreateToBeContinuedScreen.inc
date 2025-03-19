.include "constants/constants.inc"

.syntax unified
.text
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r1, _080123AC @ =gDispCnt
	movs r2, #0x82
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080123B0 @ =Task_ToBeContinuedScreenInit
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _080123B4 @ =TaskDestructor_ToBeContinuedScreen
	str r1, [sp]
	movs r1, #0x80
	movs r3, #0
	bl TaskCreate
	adds r5, r0, #0     @ r5 = tbc
	ldrh r2, [r5, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r2, r0     @ r6 = s
	movs r4, #0
	movs r3, #0
	strh r3, [r6, #0x30]
	ldr r1, _080123B8 @ =0x0300007C
	adds r0, r2, r1
	strh r3, [r0]
	movs r0, #0xf0
	strh r0, [r6, #0x16]
	movs r0, #0x50
	strh r0, [r6, #0x18]
	ldr r0, _080123BC @ =0x06010000
	str r0, [r6, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r6, #0x1a]
	strh r3, [r6, #8]
	ldr r0, _080123C0 @ =0x000002CD
	strh r0, [r6, #0xa]
	subs r1, #0x5c
	adds r0, r2, r1
	strb r4, [r0]
	strh r3, [r6, #0x14]
	strh r3, [r6, #0x1c]
	ldr r0, _080123C4 @ =0x03000021
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _080123C8 @ =0x03000022
	adds r1, r2, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _080123CC @ =0x03000025
	adds r2, r2, r1
	strb r4, [r2]
	subs r0, #0x11
	str r0, [r6, #0x28]
	str r3, [r6, #0x10]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	movs r5, #0
_08012362:
	adds r4, r5, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r1, r4, #0
	bl sub_80125C0
	lsls r2, r5, #2
	adds r1, r6, #0
	adds r1, #0x74
	adds r1, r1, r2
	str r0, [r1]
	adds r5, r4, #0
	cmp r5, #1
	bls _08012362
	ldr r0, _080123D0 @ =0x01E00050
	str r0, [sp, #4]
	ldr r1, _080123D4 @ =0x040000D4
	add r2, sp, #4
	str r2, [r1]
	adds r0, r6, #0
	adds r0, #0x32
	str r0, [r1, #4]
	ldr r0, _080123D8 @ =0x85000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _080123DC @ =gBgPalette
	movs r0, #0
	strh r0, [r1]
	ldr r2, _080123E0 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080123AC: .4byte gDispCnt
_080123B0: .4byte Task_ToBeContinuedScreenInit
_080123B4: .4byte TaskDestructor_ToBeContinuedScreen
_080123B8: .4byte 0x0300007C
_080123BC: .4byte 0x06010000
_080123C0: .4byte 0x000002CD
_080123C4: .4byte 0x03000021
_080123C8: .4byte 0x03000022
_080123CC: .4byte 0x03000025
_080123D0: .4byte 0x01E00050
_080123D4: .4byte 0x040000D4
_080123D8: .4byte 0x85000010
_080123DC: .4byte gBgPalette
_080123E0: .4byte gFlags

.syntax divided
