.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_806806C
Task_806806C: @ 0x0806806C
	push {r4, r5, r6, r7, lr}
	ldr r0, _080680DC @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r6, r0
	ldr r4, [r7, #0x3c]
	ldr r0, [r7, #0x40]
	cmp r4, r0
	bls _0806812C
	subs r0, r4, r0
	movs r1, #0x10
	bl Div
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, [r7, #0x40]
	subs r0, r4, r0
	movs r1, #0x10
	bl Mod
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r5, #0
	beq _080680A4
	cmp r5, #2
	bne _080680E8
_080680A4:
	cmp r5, #2
	bne _080680AA
	movs r5, #3
_080680AA:
	adds r4, r7, #0
	cmp r0, #0
	bne _080680B8
	ldr r0, _080680E0 @ =0x03000021
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
_080680B8:
	lsls r1, r5, #2
	ldr r2, _080680E4 @ =0x03000044
	adds r0, r6, r2
	adds r0, r0, r1
	ldr r0, [r0]
	strh r0, [r4, #0x16]
	adds r2, #0x10
	adds r0, r6, r2
	adds r0, r0, r1
	ldr r0, [r0]
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	b _0806812C
	.align 2, 0
_080680DC: .4byte gCurTask
_080680E0: .4byte 0x03000021
_080680E4: .4byte 0x03000044
_080680E8:
	cmp r5, #1
	bne _0806812C
	adds r4, r7, #0
	cmp r0, #0
	bne _080680FA
	ldr r0, _08068134 @ =0x03000021
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
_080680FA:
	ldr r1, _08068138 @ =0x03000048
	adds r0, r6, r1
	ldr r0, [r0]
	strh r0, [r4, #0x16]
	ldr r2, _0806813C @ =0x03000058
	adds r0, r6, r2
	ldr r0, [r0]
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r1, _08068140 @ =0x0300004C
	adds r0, r6, r1
	ldr r0, [r0]
	strh r0, [r4, #0x16]
	ldr r2, _08068144 @ =0x0300005C
	adds r0, r6, r2
	ldr r0, [r0]
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl DisplaySprite
_0806812C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08068134: .4byte 0x03000021
_08068138: .4byte 0x03000048
_0806813C: .4byte 0x03000058
_08068140: .4byte 0x0300004C
_08068144: .4byte 0x0300005C

	thumb_func_start Task_8068148
Task_8068148: @ 0x08068148
	push {r4, r5, r6, lr}
	ldr r0, _0806816C @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	adds r5, r4, #0
	ldr r2, [r4, #0x3c]
	cmp r2, #0x78
	bne _08068174
	movs r1, #0
	movs r0, #0xbf
	strh r0, [r4, #0xa]
	ldr r6, _08068170 @ =0x03000020
	adds r0, r3, r6
	strb r1, [r0]
	b _08068188
	.align 2, 0
_0806816C: .4byte gCurTask
_08068170: .4byte 0x03000020
_08068174:
	movs r0, #0xf0
	lsls r0, r0, #1
	cmp r2, r0
	bne _08068190
	movs r0, #0xbf
	strh r0, [r4, #0xa]
	ldr r6, _080681B0 @ =0x03000020
	adds r1, r3, r6
	movs r0, #1
	strb r0, [r1]
_08068188:
	ldr r0, _080681B4 @ =0x03000021
	adds r1, r3, r0
	movs r0, #0xff
	strb r0, [r1]
_08068190:
	ldr r0, _080681B8 @ =0x00000257
	cmp r2, r0
	bhi _080681C0
	movs r0, #0xff
	ands r2, r0
	ldr r1, _080681BC @ =gSineTable
	lsls r0, r2, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x19
	ldr r0, [r5, #0x54]
	adds r0, r0, r1
	str r0, [r5, #0x54]
	b _080681F6
	.align 2, 0
_080681B0: .4byte 0x03000020
_080681B4: .4byte 0x03000021
_080681B8: .4byte 0x00000257
_080681BC: .4byte gSineTable
_080681C0:
	ldr r0, _080681E4 @ =0x00000296
	cmp r2, r0
	bhi _080681F0
	ldr r1, _080681E8 @ =gSineTable
	ldr r3, _080681EC @ =0xFFFFFDA8
	adds r0, r2, r3
	lsls r0, r0, #3
	adds r0, r0, r1
	movs r6, #0
	ldrsh r0, [r0, r6]
	movs r1, #0x1a
	bl Div
	ldr r1, [r5, #0x54]
	adds r1, r1, r0
	str r1, [r5, #0x54]
	b _080681F6
	.align 2, 0
_080681E4: .4byte 0x00000296
_080681E8: .4byte gSineTable
_080681EC: .4byte 0xFFFFFDA8
_080681F0:
	movs r0, #0x8c
	lsls r0, r0, #8
	str r0, [r5, #0x44]
_080681F6:
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	ldr r0, [r5, #0x54]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start Task_8068214
Task_8068214: @ 0x08068214
	push {r4, r5, r6, r7, lr}
	ldr r0, _08068244 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	adds r6, r4, #0
	adds r0, #0x30
	adds r7, r2, r0
	ldr r5, [r4, #0x3c]
	ldr r0, _08068248 @ =0x00000257
	cmp r5, r0
	bhi _08068250
	movs r0, #0xff
	ands r5, r0
	ldr r1, _0806824C @ =gSineTable
	lsls r0, r5, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x19
	b _0806826A
	.align 2, 0
_08068244: .4byte gCurTask
_08068248: .4byte 0x00000257
_0806824C: .4byte gSineTable
_08068250:
	ldr r0, _08068288 @ =0x00000296
	cmp r5, r0
	bhi _08068294
	ldr r1, _0806828C @ =gSineTable
	ldr r2, _08068290 @ =0xFFFFFDA8
	adds r0, r5, r2
	lsls r0, r0, #3
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r1, #0x1a
	bl Div
_0806826A:
	ldr r1, [r4, #0x54]
	adds r1, r1, r0
	str r1, [r4, #0x54]
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	asrs r1, r1, #8
	strh r1, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	b _08068348
	.align 2, 0
_08068288: .4byte 0x00000296
_0806828C: .4byte gSineTable
_08068290: .4byte 0xFFFFFDA8
_08068294:
	ldr r1, _080682C8 @ =0x000002BB
	cmp r5, r1
	bhi _080682DC
	movs r0, #0xb4
	lsls r0, r0, #8
	str r0, [r4, #0x44]
	str r0, [r4, #0x54]
	cmp r5, r1
	bne _08068348
	movs r1, #0
	ldr r0, _080682CC @ =0x000002DF
	strh r0, [r4, #0xa]
	ldr r3, _080682D0 @ =0x03000020
	adds r0, r2, r3
	strb r1, [r0]
	ldr r0, _080682D4 @ =0x03000021
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _080682D8 @ =0x0000106B
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	b _08068348
	.align 2, 0
_080682C8: .4byte 0x000002BB
_080682CC: .4byte 0x000002DF
_080682D0: .4byte 0x03000020
_080682D4: .4byte 0x03000021
_080682D8: .4byte 0x0000106B
_080682DC:
	ldr r1, _08068350 @ =gSineTable
	ldr r0, _08068354 @ =0x000003BB
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r0, r0, r1
	movs r1, #0
	ldrsh r4, [r0, r1]
	adds r0, r4, #0
	movs r1, #0x24
	bl Div
	ldr r1, [r6, #0x54]
	adds r1, r1, r0
	str r1, [r6, #0x54]
	adds r0, r4, #0
	movs r1, #0x12
	bl Div
	ldr r1, [r6, #0x44]
	adds r1, r1, r0
	str r1, [r6, #0x44]
	ldr r3, _08068358 @ =0xFFFFFD44
	adds r2, r5, r3
	lsls r1, r2, #1
	ldr r3, _0806835C @ =0x000003FF
	adds r0, r3, #0
	bics r0, r1
	strh r0, [r7]
	adds r1, r1, r2
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r0, r2, #0
	subs r0, r0, r1
	strh r0, [r7, #2]
	strh r0, [r7, #4]
	ldr r0, [r6, #0x44]
	asrs r0, r0, #8
	strh r0, [r7, #6]
	ldr r0, [r6, #0x54]
	asrs r0, r0, #8
	strh r0, [r7, #8]
	ldr r0, [r6, #0x44]
	asrs r0, r0, #8
	strh r0, [r6, #0x16]
	ldr r0, [r6, #0x54]
	asrs r0, r0, #8
	strh r0, [r6, #0x18]
	adds r0, r6, #0
	adds r1, r7, #0
	bl TransformSprite
	adds r0, r6, #0
	bl DisplaySprite
_08068348:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08068350: .4byte gSineTable
_08068354: .4byte 0x000003BB
_08068358: .4byte 0xFFFFFD44
_0806835C: .4byte 0x000003FF

	thumb_func_start Task_8068360
Task_8068360: @ 0x08068360
	push {r4, lr}
	ldr r0, _080683CC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	adds r4, r2, #0
	ldr r0, [r2, #0x44]
	ldr r1, [r2, #0x48]
	adds r0, r0, r1
	str r0, [r2, #0x44]
	movs r3, #0x88
	lsls r3, r3, #9
	cmp r0, r3
	ble _08068384
	ldr r0, _080683D0 @ =0xFFFF8800
	str r0, [r2, #0x44]
_08068384:
	ldr r1, [r2, #0x44]
	ldr r0, _080683D0 @ =0xFFFF8800
	cmp r1, r0
	bge _0806838E
	str r3, [r2, #0x44]
_0806838E:
	ldr r0, [r2, #0x54]
	ldr r1, [r2, #0x58]
	adds r0, r0, r1
	str r0, [r2, #0x54]
	movs r3, #0xac
	lsls r3, r3, #8
	cmp r0, r3
	ble _080683A2
	ldr r0, _080683D4 @ =0xFFFFF000
	str r0, [r2, #0x54]
_080683A2:
	ldr r1, [r2, #0x54]
	ldr r0, _080683D4 @ =0xFFFFF000
	cmp r1, r0
	bge _080683AC
	str r3, [r2, #0x54]
_080683AC:
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
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080683CC: .4byte gCurTask
_080683D0: .4byte 0xFFFF8800
_080683D4: .4byte 0xFFFFF000

	thumb_func_start sub_80683D8
sub_80683D8: @ 0x080683D8
	push {r4, lr}
	ldr r0, _08068440 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r4, r3, #0
	ldr r1, [r3, #0x44]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r1, r1, r2
	ldr r0, [r3, #0x54]
	adds r0, r0, r2
	str r0, [r3, #0x54]
	ldr r0, [r3, #0x48]
	adds r1, r1, r0
	str r1, [r3, #0x44]
	movs r0, #0x88
	lsls r0, r0, #9
	cmp r1, r0
	ble _0806840A
	ldr r2, _08068444 @ =0xFFFED400
	adds r0, r1, r2
	str r0, [r3, #0x44]
_0806840A:
	ldr r0, [r3, #0x54]
	ldr r1, [r3, #0x58]
	adds r1, r0, r1
	str r1, [r3, #0x54]
	movs r0, #0xac
	lsls r0, r0, #8
	cmp r1, r0
	ble _08068420
	ldr r2, _08068444 @ =0xFFFED400
	adds r0, r1, r2
	str r0, [r3, #0x54]
_08068420:
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
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068440: .4byte gCurTask
_08068444: .4byte 0xFFFED400

	thumb_func_start Task_nullsub_8068448
Task_nullsub_8068448: @ 0x08068448
	bx lr
	.align 2, 0

	thumb_func_start sub_806844C
sub_806844C: @ 0x0806844C
	push {r4, lr}
	ldr r0, _080684A8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r2, r4, #0
	ldr r0, [r4, #0x54]
	ldr r1, [r4, #0x58]
	adds r0, r0, r1
	str r0, [r4, #0x54]
	ldr r1, _080684AC @ =0xFFFFF000
	cmp r0, r1
	bge _0806848A
	movs r0, #0xac
	lsls r0, r0, #8
	str r0, [r4, #0x54]
	ldr r1, [r4, #0x48]
	movs r0, #0xc8
	muls r1, r0, r1
	ldr r0, [r4, #0x44]
	adds r1, r0, r1
	str r1, [r4, #0x44]
	movs r0, #0x88
	lsls r0, r0, #9
	cmp r1, r0
	ble _0806848A
	ldr r3, _080684B0 @ =0xFFFED400
	adds r0, r1, r3
	str r0, [r4, #0x44]
_0806848A:
	ldr r0, [r2, #0x44]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	ldr r0, [r2, #0x54]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080684A8: .4byte gCurTask
_080684AC: .4byte 0xFFFFF000
_080684B0: .4byte 0xFFFED400

	thumb_func_start sub_80684B4
sub_80684B4: @ 0x080684B4
	push {r4, lr}
	ldr r0, _080684EC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, [r4, #0x54]
	ldr r0, _080684F0 @ =0xFFFFF000
	cmp r2, r0
	blt _080684E6
	ldr r1, [r4, #0x58]
	adds r1, r2, r1
	str r1, [r4, #0x54]
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	asrs r1, r1, #8
	strh r1, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080684E6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080684EC: .4byte gCurTask
_080684F0: .4byte 0xFFFFF000

	thumb_func_start sub_80684F4
sub_80684F4: @ 0x080684F4
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, _08068514 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	cmp r2, #0x19
	bne _08068518
	bl UiGfxStackInit
	bl sub_80538BC
	b _0806852A
	.align 2, 0
_08068514: .4byte gCurTask
_08068518:
	cmp r2, #0x1e
	bne _0806852A
	ldr r0, _08068530 @ =gRingCount
	ldrh r0, [r0]
	ldr r1, _08068534 @ =gCourseTime
	ldr r1, [r1]
	bl CreateStageResults
	str r0, [r4, #0x3c]
_0806852A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068530: .4byte gRingCount
_08068534: .4byte gCourseTime

	thumb_func_start sub_8068538
sub_8068538: @ 0x08068538
	bx lr
	.align 2, 0

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
