.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start Task_ToBeContinuedText
Task_ToBeContinuedText: @ 0x080255F0
	push {r4, r5, r6, r7, lr}
	ldr r3, _08025668 @ =gCurTask
	ldr r6, [r3]
	ldrh r1, [r6, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r7, [r4]
	ldrb r2, [r4, #8]
	lsls r2, r2, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	ldrh r1, [r4, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _0802566C @ =gPlayer
	ldr r0, [r0]
	asrs r0, r0, #8
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov ip, r3
	cmp r0, r2
	ble _0802568C
	ldr r2, _08025670 @ =gUnknown_03005004
	ldrh r0, [r2]
	movs r1, #1
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _08025674 @ =gBldRegs
	movs r1, #0
	movs r0, #0xff
	strh r0, [r2]
	strh r1, [r2, #4]
	strh r1, [r4, #0xc]
	strh r1, [r4, #0xa]
	ldr r0, _08025678 @ =sub_80256D4
	str r0, [r6, #8]
	ldr r0, _0802567C @ =gMPlayInfo_BGM
	movs r1, #4
	bl m4aMPlayFadeOut
	ldr r0, _08025680 @ =gMPlayInfo_SE1
	movs r1, #4
	bl m4aMPlayFadeOut
	ldr r0, _08025684 @ =gMPlayInfo_SE2
	movs r1, #4
	bl m4aMPlayFadeOut
	ldr r0, _08025688 @ =gMPlayInfo_SE3
	movs r1, #4
	bl m4aMPlayFadeOut
	b _080256CA
	.align 2, 0
_08025668: .4byte gCurTask
_0802566C: .4byte gPlayer
_08025670: .4byte gUnknown_03005004
_08025674: .4byte gBldRegs
_08025678: .4byte sub_80256D4
_0802567C: .4byte gMPlayInfo_BGM
_08025680: .4byte gMPlayInfo_SE1
_08025684: .4byte gMPlayInfo_SE2
_08025688: .4byte gMPlayInfo_SE3
_0802568C:
	ldr r3, _080256D0 @ =gCamera
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r6, #0xb8
	lsls r6, r6, #1
	adds r0, r1, r6
	cmp r2, r0
	bgt _080256BE
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _080256BE
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
	movs r0, #2
	ldrsh r1, [r3, r0]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r2, r0
	bgt _080256BE
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _080256CA
_080256BE:
	ldrb r0, [r4, #8]
	strb r0, [r7]
	mov r6, ip
	ldr r0, [r6]
	bl TaskDestroy
_080256CA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080256D0: .4byte gCamera

	thumb_func_start sub_80256D4
sub_80256D4: @ 0x080256D4
	ldr r0, _08025704 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1, #0xc]
	adds r0, #0x40
	strh r0, [r1, #0xc]
	ldr r3, _08025708 @ =gBldRegs
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	strh r0, [r3, #4]
	movs r0, #0xc
	ldrsh r1, [r1, r0]
	ldr r0, _0802570C @ =0x00000FFF
	cmp r1, r0
	ble _08025700
	movs r0, #0x10
	strh r0, [r3, #4]
	ldr r0, _08025710 @ =sub_8025714
	str r0, [r2, #8]
_08025700:
	bx lr
	.align 2, 0
_08025704: .4byte gCurTask
_08025708: .4byte gBldRegs
_0802570C: .4byte 0x00000FFF
_08025710: .4byte sub_8025714

	thumb_func_start sub_8025714
sub_8025714: @ 0x08025714
	push {lr}
	ldr r1, _0802573C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08025740 @ =gUnknown_03002384
	ldr r0, _08025744 @ =gUnknown_0300211C
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08025748 @ =gUnknown_03004C30
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0802574C @ =gVramGraphicsCopyCursor
	ldr r0, _08025750 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl sub_80122E4
	pop {r0}
	bx r0
	.align 2, 0
_0802573C: .4byte 0x0000FFFF
_08025740: .4byte gUnknown_03002384
_08025744: .4byte gUnknown_0300211C
_08025748: .4byte gUnknown_03004C30
_0802574C: .4byte gVramGraphicsCopyCursor
_08025750: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start CreateEntity_ToBeContinuedText
CreateEntity_ToBeContinuedText: @ 0x08025754
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _0802579C @ =Task_ToBeContinuedText
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x10
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	str r6, [r0]
	ldrb r1, [r6]
	strb r1, [r0, #8]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802579C: .4byte Task_ToBeContinuedText
