.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_806853C
sub_806853C: @ 0x0806853C
	push {r4, lr}
	ldr r0, _08068564 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r1, [r4, #0x3c]
	ldr r0, _08068568 @ =0x00000257
	cmp r1, r0
	bhi _0806855E
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0806855E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068564: .4byte gCurTask
_08068568: .4byte 0x00000257

	thumb_func_start Task_806856C
Task_806856C: @ 0x0806856C
	bx lr
	.align 2, 0

	thumb_func_start Task_8068570
Task_8068570: @ 0x08068570
	push {r4, r5, lr}
	ldr r0, _080685B8 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	ldr r3, [r4, #0x3c]
	cmp r3, #0
	bne _080685A6
	adds r0, #0x21
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _080685BC @ =0x060126E0
	str r0, [r4, #4]
	movs r1, #0
	ldr r0, _080685C0 @ =0x000002DD
	strh r0, [r4, #0xa]
	ldr r5, _080685C4 @ =0x03000020
	adds r0, r2, r5
	strb r1, [r0]
	movs r0, #0x78
	strh r0, [r4, #0x16]
	movs r0, #0x50
	strh r0, [r4, #0x18]
	str r3, [r4, #0x10]
_080685A6:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080685B8: .4byte gCurTask
_080685BC: .4byte 0x060126E0
_080685C0: .4byte 0x000002DD
_080685C4: .4byte 0x03000020

	thumb_func_start Task_80685C8
Task_80685C8: @ 0x080685C8
	push {r4, lr}
	ldr r0, _08068610 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	ldr r3, [r4, #0x3c]
	cmp r3, #0
	bne _080685FE
	adds r0, #0x21
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08068614 @ =0x060126E0
	str r0, [r4, #4]
	ldr r0, _08068618 @ =0x000002DD
	strh r0, [r4, #0xa]
	ldr r0, _0806861C @ =0x03000020
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x78
	strh r0, [r4, #0x16]
	movs r0, #0x50
	strh r0, [r4, #0x18]
	str r3, [r4, #0x10]
_080685FE:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068610: .4byte gCurTask
_08068614: .4byte 0x060126E0
_08068618: .4byte 0x000002DD
_0806861C: .4byte 0x03000020

	thumb_func_start Task_8068620
Task_8068620: @ 0x08068620
	bx lr
	.align 2, 0

	thumb_func_start Task_8068624
Task_8068624: @ 0x08068624
	bx lr
	.align 2, 0

	thumb_func_start Task_8068628
Task_8068628: @ 0x08068628
	bx lr
	.align 2, 0

	thumb_func_start Task_806862C
Task_806862C: @ 0x0806862C
	push {r4, lr}
	ldr r0, _08068680 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	adds r4, r1, #0
	ldr r0, [r1, #0x3c]
	cmp r0, #0xb4
	bls _08068678
	ldr r0, [r1, #0x44]
	subs r0, #0x60
	str r0, [r1, #0x44]
	ldr r2, _08068684 @ =0xFFFFC000
	cmp r0, r2
	bge _08068650
	str r2, [r1, #0x44]
_08068650:
	ldr r0, [r1, #0x54]
	adds r0, #0x30
	str r0, [r1, #0x54]
	movs r2, #0x80
	lsls r2, r2, #6
	cmp r0, r2
	ble _08068660
	str r2, [r1, #0x54]
_08068660:
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	ldr r0, [r4, #0x54]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08068678:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068680: .4byte gCurTask
_08068684: .4byte 0xFFFFC000
