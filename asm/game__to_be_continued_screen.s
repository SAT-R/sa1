.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateToBeContinuedScreen
CreateToBeContinuedScreen: @ 0x080122E4
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r1, _080123AC @ =gDispCnt
	movs r2, #0x82
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080123B0 @ =sub_80123E4
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _080123B4 @ =TaskDestructor_8012720
	str r1, [sp]
	movs r1, #0x80
	movs r3, #0
	bl TaskCreate
	adds r5, r0, #0
	ldrh r2, [r5, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r2, r0
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
_080123B0: .4byte sub_80123E4
_080123B4: .4byte TaskDestructor_8012720
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

	thumb_func_start sub_80123E4
sub_80123E4: @ 0x080123E4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _08012478 @ =gBldRegs
	movs r3, #0
	strh r3, [r0]
	strh r3, [r0, #4]
	ldr r0, _0801247C @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r7, r0
	ldr r1, _08012480 @ =0x0300007C
	adds r4, r7, r1
	ldrh r0, [r4]
	adds r0, #8
	ldr r2, _08012484 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r4]
	ldr r1, _08012488 @ =gSineTable
	ldrh r0, [r4]
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r1, r0, #4
	subs r1, r1, r0
	asrs r1, r1, #4
	adds r1, #0x78
	strh r1, [r6, #0x16]
	ldrh r2, [r6, #0x30]
	lsls r2, r2, #2
	mov ip, r2
	ldr r2, _0801248C @ =0x03000032
	adds r0, r7, r2
	add r0, ip
	strh r1, [r0]
	ldrh r0, [r6, #0x30]
	lsls r0, r0, #2
	adds r2, #2
	adds r1, r7, r2
	adds r1, r1, r0
	ldrh r0, [r6, #0x18]
	strh r0, [r1]
	ldrh r0, [r6, #0x30]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strh r0, [r6, #0x30]
	adds r0, r6, #0
	str r3, [sp]
	bl DisplaySprite
	ldrh r1, [r4]
	ldr r3, [sp]
	cmp r1, r5
	bne _08012498
	movs r0, #0x78
	strh r0, [r6, #0x16]
	ldr r1, _08012490 @ =0x0300007E
	adds r0, r7, r1
	strh r3, [r0]
	mov r2, r8
	ldr r1, [r2]
	ldr r0, _08012494 @ =sub_80124C4
	b _080124AC
	.align 2, 0
_08012478: .4byte gBldRegs
_0801247C: .4byte gCurTask
_08012480: .4byte 0x0300007C
_08012484: .4byte 0x000003FF
_08012488: .4byte gSineTable
_0801248C: .4byte 0x03000032
_08012490: .4byte 0x0300007E
_08012494: .4byte sub_80124C4
_08012498:
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	bne _080124AE
	ldr r1, _080124BC @ =0x0300007E
	adds r0, r7, r1
	strh r3, [r0]
	mov r2, r8
	ldr r1, [r2]
	ldr r0, _080124C0 @ =sub_801252C
_080124AC:
	str r0, [r1, #8]
_080124AE:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080124BC: .4byte 0x0300007E
_080124C0: .4byte sub_801252C

	thumb_func_start sub_80124C4
sub_80124C4: @ 0x080124C4
	push {r4, r5, lr}
	ldr r5, _0801251C @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldrh r1, [r0, #0x30]
	lsls r1, r1, #2
	ldr r3, _08012520 @ =0x03000032
	adds r2, r4, r3
	adds r2, r2, r1
	ldrh r1, [r0, #0x16]
	strh r1, [r2]
	ldrh r1, [r0, #0x30]
	lsls r1, r1, #2
	adds r3, #2
	adds r2, r4, r3
	adds r2, r2, r1
	ldrh r1, [r0, #0x18]
	strh r1, [r2]
	ldrh r1, [r0, #0x30]
	adds r1, #1
	movs r2, #0xf
	ands r1, r2
	strh r1, [r0, #0x30]
	bl DisplaySprite
	ldr r0, _08012524 @ =0x0300007E
	adds r4, r4, r0
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3d
	bne _08012514
	ldr r1, [r5]
	ldr r0, _08012528 @ =sub_80123E4
	str r0, [r1, #8]
_08012514:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801251C: .4byte gCurTask
_08012520: .4byte 0x03000032
_08012524: .4byte 0x0300007E
_08012528: .4byte sub_80123E4

	thumb_func_start sub_801252C
sub_801252C: @ 0x0801252C
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
