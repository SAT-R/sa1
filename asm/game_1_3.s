.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_805B9E8
sub_805B9E8: @ 0x0805B9E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r6, #0
	ldr r0, _0805BB00 @ =sub_805BC00
	ldr r2, _0805BB04 @ =0x00002220
	ldr r1, _0805BB08 @ =TaskDestructor_805BC60
	str r1, [sp]
	movs r1, #0x70
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #4]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	str r6, [r5, #0x6c]
	strh r6, [r5]
	movs r0, #1
	strh r0, [r5, #2]
	strh r0, [r5, #4]
	strh r6, [r5, #6]
	movs r0, #0x40
	strh r0, [r5, #8]
	movs r0, #8
	strb r0, [r5, #0xa]
	ldr r1, _0805BB0C @ =0x0300000C
	adds r7, r4, r1
	movs r0, #0xe
	bl VramMalloc
	str r0, [r7, #4]
	strh r6, [r7, #8]
	str r6, [r7, #0x10]
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r7, #0x16]
	movs r1, #0x3c
	strh r1, [r7, #0x18]
	movs r0, #3
	mov sb, r0
	mov r1, sb
	strh r1, [r7, #0x1a]
	strh r6, [r7, #0x1c]
	ldr r0, _0805BB10 @ =0x0300002D
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _0805BB14 @ =0x0300002E
	adds r0, r4, r1
	movs r1, #0x10
	mov r8, r1
	mov r1, r8
	strb r1, [r0]
	ldr r1, _0805BB18 @ =0x03000031
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0805BB1C @ =0x000002CB
	mov sl, r0
	mov r1, sl
	strh r1, [r7, #0xa]
	ldr r0, _0805BB20 @ =0x0300002C
	adds r1, r4, r0
	movs r0, #4
	strb r0, [r1]
	ldr r1, _0805BB24 @ =0x0300003C
	adds r7, r4, r1
	movs r0, #0x40
	bl VramMalloc
	str r0, [r7, #4]
	strh r6, [r7, #8]
	str r6, [r7, #0x10]
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r7, #0x16]
	movs r1, #0x3c
	strh r1, [r7, #0x18]
	mov r0, sb
	strh r0, [r7, #0x1a]
	strh r6, [r7, #0x1c]
	ldr r0, _0805BB28 @ =0x0300005D
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _0805BB2C @ =0x0300005E
	adds r0, r4, r1
	mov r1, r8
	strb r1, [r0]
	ldr r1, _0805BB30 @ =0x03000061
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	mov r0, sl
	strh r0, [r7, #0xa]
	ldr r1, _0805BB34 @ =0x0300005C
	adds r4, r4, r1
	movs r0, #1
	strb r0, [r4]
	ldr r2, _0805BB38 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0805BB3C @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	adds r0, r5, #0
	bl sub_80543A4
	ldr r0, _0805BB40 @ =sub_805BB48
	movs r2, #0x88
	lsls r2, r2, #6
	ldr r1, _0805BB44 @ =TaskDestructor_805BC90
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r6, r0, #0
	ldrh r0, [r6, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0, #4]
	ldr r1, [sp, #4]
	str r1, [r0]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805BB00: .4byte sub_805BC00
_0805BB04: .4byte 0x00002220
_0805BB08: .4byte TaskDestructor_805BC60
_0805BB0C: .4byte 0x0300000C
_0805BB10: .4byte 0x0300002D
_0805BB14: .4byte 0x0300002E
_0805BB18: .4byte 0x03000031
_0805BB1C: .4byte 0x000002CB
_0805BB20: .4byte 0x0300002C
_0805BB24: .4byte 0x0300003C
_0805BB28: .4byte 0x0300005D
_0805BB2C: .4byte 0x0300005E
_0805BB30: .4byte 0x03000061
_0805BB34: .4byte 0x0300005C
_0805BB38: .4byte gDispCnt
_0805BB3C: .4byte 0x00001FFF
_0805BB40: .4byte sub_805BB48
_0805BB44: .4byte TaskDestructor_805BC90

	thumb_func_start sub_805BB48
sub_805BB48: @ 0x0805BB48
	push {r4, r5, lr}
	ldr r0, _0805BBD8 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	adds r3, r0, r1
	movs r1, #4
	ldrsh r0, [r4, r1]
	str r0, [r3, #0x6c]
	movs r5, #4
	ldrsh r0, [r4, r5]
	cmp r0, #0xd2
	ble _0805BB8A
	ldr r0, _0805BBDC @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xa
	bne _0805BB84
	ldr r2, _0805BBE0 @ =gCamera
	ldrh r1, [r2, #0x26]
	movs r5, #0x80
	lsls r5, r5, #6
	adds r0, r5, #0
	orrs r0, r1
	strh r0, [r2, #0x26]
_0805BB84:
	adds r0, r3, #0
	bl sub_805423C
_0805BB8A:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	movs r1, #0xa5
	lsls r1, r1, #0x11
	cmp r0, r1
	ble _0805BBD0
	ldr r0, [r4]
	bl TaskDestroy
	ldr r0, _0805BBD8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	ldr r1, _0805BBE4 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0805BBE8 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0805BBEC @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0805BBF0 @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0805BBF4 @ =gVramGraphicsCopyCursor
	ldr r0, _0805BBF8 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0805BBFC @ =gRingCount
	movs r0, #0
	strh r0, [r1]
	bl CreateGameStage
_0805BBD0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805BBD8: .4byte gCurTask
_0805BBDC: .4byte gCurrentLevel
_0805BBE0: .4byte gCamera
_0805BBE4: .4byte 0x0000FFFF
_0805BBE8: .4byte gBackgroundsCopyQueueCursor
_0805BBEC: .4byte gBackgroundsCopyQueueIndex
_0805BBF0: .4byte sa2__gUnknown_03005390
_0805BBF4: .4byte gVramGraphicsCopyCursor
_0805BBF8: .4byte gVramGraphicsCopyQueueIndex
_0805BBFC: .4byte gRingCount

	thumb_func_start sub_805BC00
sub_805BC00: @ 0x0805BC00
	push {r4, r5, lr}
	ldr r0, _0805BC1C @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	ldr r0, [r5, #0x6c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x78
	ble _0805BC20
	movs r1, #0x78
	b _0805BC30
	.align 2, 0
_0805BC1C: .4byte gCurTask
_0805BC20:
	cmp r0, #0x1e
	ble _0805BC38
	subs r0, #0x1e
	lsls r0, r0, #1
	movs r3, #0x96
	lsls r3, r3, #1
	adds r1, r3, #0
	subs r1, r1, r0
_0805BC30:
	strh r1, [r5, #0x22]
	ldr r3, _0805BC5C @ =0x03000052
	adds r0, r2, r3
	strh r1, [r0]
_0805BC38:
	adds r4, r5, #0
	adds r4, #0xc
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r4, #0x30
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805BC5C: .4byte 0x03000052

	thumb_func_start TaskDestructor_805BC60
TaskDestructor_805BC60: @ 0x0805BC60
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x10]
	bl VramFree
	ldr r0, [r4, #0x40]
	bl VramFree
	ldr r2, _0805BC88 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0805BC8C @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805BC88: .4byte gDispCnt
_0805BC8C: .4byte 0x00001FFF

    thumb_func_start TaskDestructor_805BC90
TaskDestructor_805BC90: @ 0x0805BC90
    bx lr
    .align 2, 0
