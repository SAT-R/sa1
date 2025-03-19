.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_801252C
Task_801252C: @ 0x0801252C
	push {r4, lr}
	ldr r0, _0801259C @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r3, r2
	ldrh r0, [r2, #0x30]
	lsls r0, r0, #2
	ldr r4, _080125A0 @ =0x03000032
	adds r1, r3, r4
	adds r1, r1, r0
	ldrh r0, [r2, #0x16]
	strh r0, [r1]
	ldrh r0, [r2, #0x30]
	lsls r0, r0, #2
	adds r4, #2
	adds r1, r3, r4
	adds r1, r1, r0
	ldrh r0, [r2, #0x18]
	strh r0, [r1]
	ldrh r0, [r2, #0x30]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strh r0, [r2, #0x30]
	ldr r0, _080125A4 @ =0x0300007E
	adds r3, r3, r0
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3d
	bne _08012594
	ldr r1, _080125A8 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080125AC @ =gBackgroundsCopyQueueCursor
	ldr r0, _080125B0 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080125B4 @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080125B8 @ =gVramGraphicsCopyCursor
	ldr r0, _080125BC @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl CreateSegaLogo
_08012594:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801259C: .4byte gCurTask
_080125A0: .4byte 0x03000032
_080125A4: .4byte 0x0300007E
_080125A8: .4byte 0x0000FFFF
_080125AC: .4byte gBackgroundsCopyQueueCursor
_080125B0: .4byte gBackgroundsCopyQueueIndex
_080125B4: .4byte sa2__gUnknown_03005390
_080125B8: .4byte gVramGraphicsCopyCursor
_080125BC: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start sub_80125C0
sub_80125C0: @ 0x080125C0
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #8
	mov sb, r0
	lsls r5, r1, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _08012688 @ =sub_80126B4
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	adds r2, r5, #0
	orrs r2, r1
	ldr r1, _0801268C @ =TaskDestructor_8012724
	str r1, [sp]
	movs r1, #0x74
	movs r3, #0
	bl TaskCreate
	mov r8, r0
	movs r0, #0
	mov sl, r0
	movs r6, #0
	mov r2, sb
	mov r1, r8
	strh r2, [r1]
	ldrh r4, [r1, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r4, r1
	mov r2, sb
	ldrh r3, [r2, #6]
	adds r3, r3, r1
	ldrh r1, [r3, #0x30]
	adds r1, #8
	movs r2, #0xf
	ands r1, r2
	strh r1, [r0, #0x30]
	ldrh r1, [r3, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r3, #0x18]
	strh r1, [r0, #0x18]
	ldr r1, [r3, #4]
	movs r2, #0xe0
	lsls r2, r2, #3
	adds r1, r1, r2
	str r1, [r0, #4]
	adds r1, r5, #0
	adds r1, #0x12
	lsls r1, r1, #6
	strh r1, [r0, #0x1a]
	strh r6, [r0, #8]
	ldr r1, _08012690 @ =0x000002CD
	strh r1, [r0, #0xa]
	ldr r2, _08012694 @ =0x03000020
	adds r1, r4, r2
	strb r5, [r1]
	strh r6, [r0, #0x14]
	strh r6, [r0, #0x1c]
	ldr r1, _08012698 @ =0x03000021
	adds r2, r4, r1
	movs r1, #0xff
	strb r1, [r2]
	ldr r1, _0801269C @ =0x03000022
	adds r2, r4, r1
	movs r1, #0x10
	strb r1, [r2]
	ldr r2, _080126A0 @ =0x03000025
	adds r1, r4, r2
	mov r2, sl
	strb r2, [r1]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0, #0x28]
	str r6, [r0, #0x10]
	bl UpdateSpriteAnimation
	ldr r0, _080126A4 @ =0x01E00050
	str r0, [sp, #4]
	ldr r1, _080126A8 @ =0x040000D4
	add r0, sp, #4
	str r0, [r1]
	ldr r2, _080126AC @ =0x03000032
	adds r4, r4, r2
	str r4, [r1, #4]
	ldr r0, _080126B0 @ =0x85000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r0, r8
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08012688: .4byte sub_80126B4
_0801268C: .4byte TaskDestructor_8012724
_08012690: .4byte 0x000002CD
_08012694: .4byte 0x03000020
_08012698: .4byte 0x03000021
_0801269C: .4byte 0x03000022
_080126A0: .4byte 0x03000025
_080126A4: .4byte 0x01E00050
_080126A8: .4byte 0x040000D4
_080126AC: .4byte 0x03000032
_080126B0: .4byte 0x85000010

	thumb_func_start sub_80126B4
sub_80126B4: @ 0x080126B4
	push {r4, r5, r6, lr}
	ldr r0, _08012714 @ =gCurTask
	ldr r1, [r0]
	ldrh r4, [r1, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r0, r4, r5
	ldrh r1, [r1]
	adds r1, r1, r5
	ldrh r3, [r1, #6]
	adds r5, r3, r5
	ldrh r2, [r0, #0x30]
	lsls r2, r2, #2
	ldr r6, _08012718 @ =0x03000032
	adds r1, r3, r6
	adds r1, r1, r2
	ldrh r6, [r1]
	strh r6, [r0, #0x16]
	ldrh r1, [r0, #0x30]
	lsls r1, r1, #2
	ldr r2, _0801271C @ =0x03000034
	adds r3, r3, r2
	adds r3, r3, r1
	ldrh r1, [r3]
	strh r1, [r0, #0x18]
	ldrh r2, [r0, #0x30]
	lsls r2, r2, #2
	ldr r3, _08012718 @ =0x03000032
	adds r1, r4, r3
	adds r1, r1, r2
	strh r6, [r1]
	ldrh r1, [r0, #0x30]
	lsls r1, r1, #2
	ldr r6, _0801271C @ =0x03000034
	adds r4, r4, r6
	adds r4, r4, r1
	ldrh r1, [r0, #0x18]
	strh r1, [r4]
	ldrh r1, [r5, #0x30]
	adds r1, #8
	movs r2, #0xf
	ands r1, r2
	strh r1, [r0, #0x30]
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08012714: .4byte gCurTask
_08012718: .4byte 0x03000032
_0801271C: .4byte 0x03000034

	thumb_func_start TaskDestructor_8012720
TaskDestructor_8012720: @ 0x08012720
    bx lr
    .align 2 , 0

	thumb_func_start TaskDestructor_8012724
TaskDestructor_8012724: @ 0x08012724
    bx lr
    .align 2 , 0
