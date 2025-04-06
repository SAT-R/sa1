.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_804B0D8
Task_804B0D8: @ 0x0804B0D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0804B13C @ =gCurTask
	ldr r0, [r0]
	mov sb, r0
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r6, r0
	adds r0, #0x18
	adds r5, r6, r0
	ldr r1, _0804B140 @ =0x0300000C
	adds r1, r1, r6
	mov r8, r1
	ldr r3, _0804B144 @ =gCamera
	ldr r1, [r7, #0x50]
	asrs r2, r1, #8
	movs r4, #0
	ldrsh r0, [r3, r4]
	subs r2, r2, r0
	mov ip, r2
	ldr r4, [r7, #0x54]
	asrs r0, r4, #8
	mov sl, r0
	movs r2, #2
	ldrsh r0, [r3, r2]
	mov r3, sl
	subs r2, r3, r0
	movs r0, #0x80
	lsls r0, r0, #6
	adds r1, r1, r0
	movs r0, #0x88
	lsls r0, r0, #0xa
	cmp r1, r0
	bhi _0804B132
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r4, r3
	movs r0, #0xb0
	lsls r0, r0, #9
	cmp r1, r0
	bls _0804B148
_0804B132:
	mov r0, sb
	bl TaskDestroy
	b _0804B1D0
	.align 2, 0
_0804B13C: .4byte gCurTask
_0804B140: .4byte 0x0300000C
_0804B144: .4byte gCamera
_0804B148:
	mov r0, ip
	mov r4, r8
	strh r0, [r4, #6]
	strh r2, [r4, #8]
	ldr r1, _0804B1E0 @ =0x03000070
	adds r4, r6, r1
	ldrh r0, [r4]
	lsrs r0, r0, #6
	mov r2, r8
	strh r0, [r2]
	ldr r0, [r5, #0x10]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	ldr r2, _0804B1E4 @ =sa2__gUnknown_030054B8
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
	mov r1, r8
	bl TransformSprite
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0804B1E8 @ =0x03000058
	adds r3, r6, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r0, [r7, #0x50]
	adds r0, r0, r1
	str r0, [r7, #0x50]
	ldr r0, _0804B1EC @ =0x0300005A
	adds r2, r6, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, [r7, #0x54]
	adds r0, r0, r1
	str r0, [r7, #0x54]
	ldr r1, _0804B1F0 @ =0x0300005C
	adds r0, r6, r1
	ldrh r0, [r0]
	ldrh r1, [r3]
	adds r0, r0, r1
	strh r0, [r3]
	ldr r3, _0804B1F4 @ =0x0300005E
	adds r0, r6, r3
	ldrh r0, [r0]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r2, _0804B1F8 @ =0x03000072
	adds r0, r6, r2
	ldrh r0, [r0]
	ldrh r3, [r4]
	adds r0, r0, r3
	strh r0, [r4]
_0804B1D0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B1E0: .4byte 0x03000070
_0804B1E4: .4byte sa2__gUnknown_030054B8
_0804B1E8: .4byte 0x03000058
_0804B1EC: .4byte 0x0300005A
_0804B1F0: .4byte 0x0300005C
_0804B1F4: .4byte 0x0300005E
_0804B1F8: .4byte 0x03000072

	thumb_func_start sub_804B1FC
sub_804B1FC: @ 0x0804B1FC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	adds r5, r3, #0
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x14
	mov r8, r1
	ands r0, r1
	cmp r0, #0
	bne _0804B2B0
	ldr r1, [r4, #0x50]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r2, [r4, #0x54]
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_800C0E0
	cmp r0, #0
	beq _0804B2B0
	adds r0, r5, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0804B26C
	movs r0, #0x8a      @ SE_ITEM_BOX
	bl m4aSongNumStart
	ldr r0, [r4, #0x50]
	asrs r0, r0, #8
	ldr r1, [r4, #0x54]
	asrs r1, r1, #8
	movs r2, #8
	bl sub_8040C1C
	ldr r0, [r4, #0x50]
	ldr r1, [r4, #0x54]
	bl sub_804AFCC
	ldr r0, _0804B268 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	movs r0, #1
	rsbs r0, r0, #0
	b _0804B2B2
	.align 2, 0
_0804B268: .4byte gCurTask
_0804B26C:
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _0804B2B0
	ldr r0, [r7, #0x58]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0804B2B0
	ldr r0, _0804B2A4 @ =0x0000029E
	strh r0, [r6, #0xa]
	adds r1, r6, #0
	adds r1, #0x20
	movs r0, #3
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r5, #0x10]
	mov r1, r8
	orrs r0, r1
	str r0, [r5, #0x10]
	ldr r0, _0804B2A8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0804B2AC @ =Task_804AE14
	str r0, [r1, #8]
	movs r0, #1
	b _0804B2B2
	.align 2, 0
_0804B2A4: .4byte 0x0000029E
_0804B2A8: .4byte gCurTask
_0804B2AC: .4byte Task_804AE14
_0804B2B0:
	movs r0, #0
_0804B2B2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_804B2BC
sub_804B2BC: @ 0x0804B2BC
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _0804B314 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	ldr r1, _0804B318 @ =0x0000029E
	orrs r0, r1
	ldr r1, _0804B31C @ =0xFF00FFFF
	ands r0, r1
	str r0, [sp]
	movs r0, #8
	bl VramMalloc
	str r0, [sp, #4]
	ldr r1, _0804B320 @ =Task_804AC4C
	ldr r2, _0804B324 @ =TaskDestructor_SomeTaskManager_60_Common
	mov r0, sp
	bl CreateSomeTaskManager_7C_Task
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	str r4, [r0, #0x50]
	str r5, [r0, #0x54]
	ldr r1, _0804B328 @ =0x03000058
	adds r2, r2, r1
	movs r1, #0xff
	lsls r1, r1, #8
	strh r1, [r2]
	movs r1, #0x30
	str r1, [r0, #4]
	movs r1, #0xc0
	lsls r1, r1, #2
	strh r1, [r0, #0x32]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #0x28]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804B314: .4byte 0xFFFF0000
_0804B318: .4byte 0x0000029E
_0804B31C: .4byte 0xFF00FFFF
_0804B320: .4byte Task_804AC4C
_0804B324: .4byte TaskDestructor_SomeTaskManager_60_Common
_0804B328: .4byte 0x03000058

@ TODO: Maybe not just the ring capsule?
	thumb_func_start ExtraBossCapsule_UpdateSprite
ExtraBossCapsule_UpdateSprite: @ 0x0804B32C
	push {r4, lr}
	adds r4, r0, #0
	strh r1, [r4, #0x16]
	strh r2, [r4, #0x18]
	bl UpdateSpriteAnimation
	ldr r0, [r4, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, [r4, #0x10]
	ldr r1, _0804B368 @ =0xFFF3FFFF
	ands r0, r1
	ldr r1, _0804B36C @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804B368: .4byte 0xFFF3FFFF
_0804B36C: .4byte 0xFFFFF7FF

	thumb_func_start Task_804B370
Task_804B370: @ 0x0804B370
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0804B3C0 @ =gCurTask
	ldr r6, [r0]
	ldrh r1, [r6, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0x18
	adds r4, r1, r0
	ldr r0, _0804B3C4 @ =gExtraBossTaskData
	ldr r0, [r0]
	mov ip, r0
	ldr r7, _0804B3C8 @ =gPlayer
	mov sb, r7
	ldr r3, _0804B3CC @ =gCamera
	ldr r2, [r5, #0x50]
	asrs r1, r2, #8
	movs r7, #0
	ldrsh r0, [r3, r7]
	subs r1, r1, r0
	mov r8, r1
	ldr r0, [r5, #0x54]
	asrs r0, r0, #8
	movs r7, #2
	ldrsh r1, [r3, r7]
	subs r7, r0, r1
	movs r0, #0x80
	lsls r0, r0, #6
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0xa
	cmp r2, r0
	bls _0804B3D0
	adds r0, r6, #0
	bl TaskDestroy
	b _0804B414
	.align 2, 0
_0804B3C0: .4byte gCurTask
_0804B3C4: .4byte gExtraBossTaskData
_0804B3C8: .4byte gPlayer
_0804B3CC: .4byte gCamera
_0804B3D0:
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, ip
	mov r3, sb
	bl sub_804B1FC
	adds r1, r0, #0
	cmp r1, #0
	beq _0804B3F6
	cmp r1, #0
	bgt _0804B3F0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0804B414
	b _0804B40E
_0804B3F0:
	cmp r1, #1
	beq _0804B402
	b _0804B40E
_0804B3F6:
	adds r0, r4, #0
	mov r1, r8
	adds r2, r7, #0
	bl ExtraBossCapsule_UpdateSprite
	b _0804B40E
_0804B402:
	adds r0, r4, #0
	mov r1, r8
	adds r2, r7, #0
	bl ExtraBossCapsule_UpdateSprite
	b _0804B414
_0804B40E:
	adds r0, r5, #0
	bl sub_804CFA0
_0804B414:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start Task_804B420
Task_804B420: @ 0x0804B420
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0804B46C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0x18
	adds r5, r1, r0
	ldr r0, _0804B470 @ =gExtraBossTaskData
	ldr r0, [r0]
	mov sb, r0
	ldr r1, _0804B474 @ =gPlayer
	mov r8, r1
	ldr r6, _0804B478 @ =gCamera
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0804B464
	ldr r0, [r4, #0x50]
	movs r7, #0x80
	lsls r7, r7, #6
	adds r0, r0, r7
	movs r1, #0x88
	lsls r1, r1, #0xa
	cmp r0, r1
	bls _0804B47C
_0804B464:
	adds r0, r2, #0
	bl TaskDestroy
	b _0804B554
	.align 2, 0
_0804B46C: .4byte gCurTask
_0804B470: .4byte gExtraBossTaskData
_0804B474: .4byte gPlayer
_0804B478: .4byte gCamera
_0804B47C:
	movs r0, #0
	ldrsh r3, [r6, r0]
	ldr r0, _0804B564 @ =gStageTime
	ldr r0, [r0]
	lsls r0, r0, #3
	adds r3, r3, r0
	adds r1, r3, #0
	subs r1, #0x48
	ldr r0, _0804B568 @ =0x00000A7F
	cmp r1, r0
	ble _0804B4A2
	adds r3, r1, #0
	movs r1, #0xa8
	lsls r1, r1, #4
	adds r0, r3, #0
	bl Mod
	adds r3, r0, #0
	adds r3, #0x48
_0804B4A2:
	movs r1, #0
	ldrsh r2, [r6, r1]
	subs r2, r3, r2
	ldr r0, [r4, #0x54]
	asrs r0, r0, #8
	ldr r1, [r4, #0x50]
	asrs r1, r1, #8
	adds r1, r1, r2
	ldr r2, _0804B56C @ =sa2__sub_801EC3C
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F100
	lsls r0, r0, #8
	ldr r1, [r4, #0x54]
	adds r1, r1, r0
	str r1, [r4, #0x54]
	ldr r0, [r4, #0x50]
	asrs r3, r0, #8
	movs r2, #0
	ldrsh r0, [r6, r2]
	subs r0, r3, r0
	mov sl, r0
	asrs r2, r1, #8
	movs r7, #2
	ldrsh r0, [r6, r7]
	subs r6, r2, r0
	mov r0, r8
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0804B50E
	mov r1, r8
	movs r7, #0x1c
	ldrsh r0, [r1, r7]
	cmp r0, #0
	bne _0804B50E
	mov r1, sb
	ldr r0, [r1, #0x58]
	movs r1, #0x80  @ SER_FLAG__80
	ands r0, r1
	cmp r0, #0
	bne _0804B50E
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	mov r3, r8
	bl sub_800BFEC
_0804B50E:
	mov r2, sl
	strh r2, [r5, #0x16]
	strh r6, [r5, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	adds r2, r4, #0
	adds r2, #0x58
	movs r7, #0
	ldrsh r1, [r2, r7]
	ldr r0, [r4, #0x50]
	adds r0, r0, r1
	str r0, [r4, #0x50]
	adds r3, r4, #0
	adds r3, #0x5a
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, [r4, #0x54]
	adds r0, r0, r1
	str r0, [r4, #0x54]
	adds r0, r4, #0
	adds r0, #0x5c
	ldrh r0, [r0]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x5e
	ldrh r0, [r0]
	ldrh r2, [r3]
	adds r0, r0, r2
	strh r0, [r3]
_0804B554:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B564: .4byte gStageTime
_0804B568: .4byte 0x00000A7F
_0804B56C: .4byte sa2__sub_801EC3C

	thumb_func_start sub_804B570
sub_804B570: @ 0x0804B570
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _0804B5BC @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	movs r1, #0xa8
	lsls r1, r1, #2
	orrs r0, r1
	ldr r1, _0804B5C0 @ =0xFF00FFFF
	ands r0, r1
	str r0, [sp]
	movs r0, #0x18
	bl VramMalloc
	str r0, [sp, #4]
	ldr r1, _0804B5C4 @ =Task_804B420
	ldr r2, _0804B5C8 @ =TaskDestructor_SomeTaskManager_60_Common
	mov r0, sp
	bl CreateSomeTaskManager_7C_Task
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	str r4, [r1, #0x50]
	str r5, [r1, #0x54]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1, #0x32]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r1, #0x28]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804B5BC: .4byte 0xFFFF0000
_0804B5C0: .4byte 0xFF00FFFF
_0804B5C4: .4byte Task_804B420
_0804B5C8: .4byte TaskDestructor_SomeTaskManager_60_Common
