.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ --- Start of Staff Credits ---

	thumb_func_start sub_805E1E8
sub_805E1E8: @ 0x0805E1E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	mov r7, sp
	adds r7, #0x2b
	movs r0, #8
	strb r0, [r7]
	add r4, sp, #0x2c
	movs r0, #0x3b
	strb r0, [r4]
	mov r6, sp
	adds r6, #0x2a
	movs r0, #0xd
	strb r0, [r6]
	ldr r5, _0805E3D8 @ =gUiGraphics
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldr r1, _0805E3DC @ =0x06010400
	mov sb, r1
	str r1, [sp, #0xc]
	movs r0, #0x20
	mov sl, r0
	str r0, [sp, #0x18]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805E3E0 @ =gUiGraphics + 0x4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	mov r0, sl
	str r0, [sp, #0x24]
	add r1, sp, #0x28
	mov r8, r1
	movs r0, #0xf
	strb r0, [r1]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805E3E4 @ =gUiGraphics + 0x8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805E3E8 @ =gUiGraphics + 0xC
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805E3EC @ =gUiGraphics + 0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805E3F0 @ =gUiGraphics + 0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805E3F4 @ =gUiGraphics + 0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r0, #7
	strb r0, [r7]
	movs r0, #0
	strb r0, [r4]
	movs r1, #0xd
	strb r1, [r6]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	str r0, [sp, #0x14]
	mov r0, sb
	str r0, [sp, #0xc]
	movs r0, #0xec
	lsls r0, r0, #5
	str r0, [sp, #0x18]
	ldr r1, _0805E3F8 @ =0x00000694
	adds r0, r5, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	mov r0, sl
	str r0, [sp, #0x24]
	movs r0, #0xe
	mov r1, r8
	strb r0, [r1]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805E3E4 @ =gUiGraphics + 0x8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805E3E8 @ =gUiGraphics + 0xC
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805E3EC @ =gUiGraphics + 0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805E3F0 @ =gUiGraphics + 0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805E3F4 @ =gUiGraphics + 0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r0, #0x2d
	strb r0, [r4]
	movs r0, #0
	strb r0, [r7]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805E3E0 @ =gUiGraphics + 0x4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	mov r0, sl
	str r0, [sp, #0x18]
	str r0, [sp, #0x24]
	movs r0, #0
	mov r1, r8
	strb r0, [r1]
	mov r1, sp
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0805E3FC @ =gUnknown_0868483C
	str r0, [sp, #0x10]
	movs r1, #0
	str r1, [sp, #0x1c]
	movs r0, #5
	strb r0, [r6]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805E3E4 @ =gUiGraphics + 0x8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805E3E8 @ =gUiGraphics + 0xC
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805E3EC @ =gUiGraphics + 0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805E3F0 @ =gUiGraphics + 0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805E3F4 @ =gUiGraphics + 0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	bl sub_80528AC
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805E3D8: .4byte gUiGraphics
_0805E3DC: .4byte 0x06010400
_0805E3E0: .4byte gUiGraphics + 0x4
_0805E3E4: .4byte gUiGraphics + 0x8
_0805E3E8: .4byte gUiGraphics + 0xC
_0805E3EC: .4byte gUiGraphics + 0x10
_0805E3F0: .4byte gUiGraphics + 0x14
_0805E3F4: .4byte gUiGraphics + 0x18
_0805E3F8: .4byte 0x00000694
_0805E3FC: .4byte gUnknown_0868483C

	thumb_func_start CreateStaffCredits
CreateStaffCredits: @ 0x0805E400
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r1, #0xc0
	lsls r1, r1, #5
	movs r0, #1
	bl TasksDestroyInPriorityRange
	ldr r0, _0805E5F8 @ =0x00001801
	ldr r1, _0805E5FC @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	bl sub_80535FC
	bl UiGfxStackInit
	movs r1, #0x92
	lsls r1, r1, #5
	adds r0, r1, #0
	ldr r2, _0805E600 @ =gDispCnt
	strh r0, [r2]
	movs r4, #0
	ldr r0, _0805E604 @ =0x00001907
	ldr r1, _0805E608 @ =gBgCntRegs
	strh r0, [r1, #2]
	ldr r0, _0805E60C @ =gBgScrollRegs
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	strh r4, [r0, #8]
	strh r4, [r0, #0xa]
	ldr r0, _0805E610 @ =sub_805E888
	movs r2, #0xc4
	lsls r2, r2, #7
	str r4, [sp]
	movs r1, #0x80
	movs r3, #0
	bl TaskCreate
	mov r8, r0
	ldrh r5, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	mov sl, r2
	adds r2, r5, r2
	movs r7, #0x30
	str r7, [r2, #0x78]
	str r4, [r2, #0x7c]
	ldr r0, _0805E614 @ =0x06014000
	str r0, [r2, #4]
	movs r0, #0xb9
	lsls r0, r0, #2
	strh r0, [r2, #0xa]
	ldr r1, _0805E618 @ =0x03000020
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	strh r4, [r2, #0x16]
	strh r4, [r2, #0x18]
	movs r0, #0x90
	lsls r0, r0, #3
	mov sb, r0
	mov r1, sb
	strh r1, [r2, #0x1a]
	strh r4, [r2, #8]
	strh r4, [r2, #0x14]
	strh r4, [r2, #0x1c]
	ldr r0, _0805E61C @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _0805E620 @ =0x03000022
	adds r0, r5, r1
	movs r1, #0x10
	strb r1, [r0]
	ldr r1, _0805E624 @ =0x03000025
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	movs r6, #1
	rsbs r6, r6, #0
	str r6, [r2, #0x28]
	str r4, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	ldr r2, _0805E628 @ =0x03000030
	adds r0, r5, r2
	ldr r1, _0805E62C @ =0x000002E5
	strh r1, [r0, #0xa]
	adds r2, #0x20
	adds r1, r5, r2
	movs r2, #1
	strb r2, [r1]
	ldr r1, _0805E630 @ =0x06016000
	str r1, [r0, #4]
	movs r1, #0x78
	strh r1, [r0, #0x16]
	strh r4, [r0, #0x18]
	mov r1, sb
	strh r1, [r0, #0x1a]
	strh r4, [r0, #8]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0x1c]
	ldr r1, _0805E634 @ =0x03000051
	adds r2, r5, r1
	adds r1, r6, #0
	strb r1, [r2]
	ldr r2, _0805E638 @ =0x03000052
	adds r1, r5, r2
	movs r2, #0x10
	strb r2, [r1]
	ldr r1, _0805E63C @ =0x03000055
	adds r5, r5, r1
	movs r2, #0
	strb r2, [r5]
	str r6, [r0, #0x28]
	str r4, [r0, #0x10]
	bl UpdateSpriteAnimation
	ldr r0, _0805E640 @ =sub_805E758
	ldr r2, _0805E644 @ =0x00006120
	str r4, [sp]
	movs r1, #0x80
	movs r3, #0
	bl TaskCreate
	adds r6, r0, #0
	ldrh r1, [r6, #6]
	mov r0, sl
	adds r2, r1, r0
	str r7, [r2, #0x78]
	str r4, [r2, #0x7c]
	ldr r0, _0805E648 @ =0x0300006A
	adds r2, r1, r0
	ldr r0, _0805E64C @ =0x0000FFB0
	strh r0, [r2]
	ldr r2, _0805E650 @ =0x0300006C
	adds r0, r1, r2
	strh r4, [r0]
	ldr r0, _0805E654 @ =0x0300006E
	adds r2, r1, r0
	movs r0, #3
	strh r0, [r2]
	ldr r2, _0805E658 @ =0x03000068
	adds r0, r1, r2
	strh r4, [r0]
	ldr r0, _0805E65C @ =0x03000070
	adds r2, r1, r0
	movs r0, #7
	strh r0, [r2]
	ldr r2, _0805E660 @ =0x03000076
	adds r0, r1, r2
	movs r2, #1
	strb r2, [r0]
	ldr r0, _0805E664 @ =0x03000072
	adds r2, r1, r0
	movs r0, #0xe
	strh r0, [r2]
	ldr r2, _0805E668 @ =0x03000074
	adds r1, r1, r2
	movs r0, #5
	strh r0, [r1]
	ldr r0, _0805E66C @ =sub_805E698
	movs r5, #0xc0
	lsls r5, r5, #7
	ldr r1, _0805E670 @ =TaskDestructor_805E9B0
	str r1, [sp]
	movs r1, #0x18
	adds r2, r5, #0
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	add r0, sl
	str r7, [r0, #0x14]
	mov r1, r8
	str r1, [r0, #0xc]
	str r6, [r0, #0x10]
	strh r4, [r0]
	strh r4, [r0, #2]
	movs r3, #1
	strh r3, [r0, #4]
	strh r4, [r0, #6]
	movs r1, #0x80
	strh r1, [r0, #8]
	movs r1, #8
	strb r1, [r0, #0xa]
	str r4, [sp, #4]
	ldr r2, _0805E674 @ =0x040000D4
	add r0, sp, #4
	str r0, [r2]
	ldr r0, _0805E608 @ =gBgCntRegs
	ldrh r1, [r0, #2]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0805E678 @ =0x85000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0805E67C @ =sa2__gUnknown_03004D80
	strb r3, [r0, #1]
	ldr r1, _0805E680 @ =sa2__gUnknown_03002280
	movs r2, #0
	strb r2, [r1, #4]
	strb r2, [r1, #5]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #6]
	movs r0, #0x14
	strb r0, [r1, #7]
	ldr r1, _0805E600 @ =gDispCnt
	ldrh r0, [r1]
	orrs r5, r0
	strh r5, [r1]
	ldr r1, _0805E684 @ =gWinRegs
	movs r2, #0xf0
	strh r2, [r1]
	movs r0, #0x24
	strh r0, [r1, #4]
	strh r2, [r1, #2]
	ldr r0, _0805E688 @ =0x000084A0
	strh r0, [r1, #6]
	ldr r0, _0805E68C @ =0x00003F3F
	strh r0, [r1, #8]
	movs r0, #0x1f
	strh r0, [r1, #0xa]
	ldr r0, _0805E690 @ =gBldRegs
	ldr r1, _0805E694 @ =0x00001FDF
	strh r1, [r0]
	movs r2, #0x10
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	bl sub_805E1E8
	movs r0, #0x28      @ MUS_STAFF_CREDITS
	bl m4aSongNumStart
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805E5F8: .4byte 0x00001801
_0805E5FC: .4byte 0x0000FFFF
_0805E600: .4byte gDispCnt
_0805E604: .4byte 0x00001907
_0805E608: .4byte gBgCntRegs
_0805E60C: .4byte gBgScrollRegs
_0805E610: .4byte sub_805E888
_0805E614: .4byte 0x06014000
_0805E618: .4byte 0x03000020
_0805E61C: .4byte 0x03000021
_0805E620: .4byte 0x03000022
_0805E624: .4byte 0x03000025
_0805E628: .4byte 0x03000030
_0805E62C: .4byte 0x000002E5
_0805E630: .4byte 0x06016000
_0805E634: .4byte 0x03000051
_0805E638: .4byte 0x03000052
_0805E63C: .4byte 0x03000055
_0805E640: .4byte sub_805E758
_0805E644: .4byte 0x00006120
_0805E648: .4byte 0x0300006A
_0805E64C: .4byte 0x0000FFB0
_0805E650: .4byte 0x0300006C
_0805E654: .4byte 0x0300006E
_0805E658: .4byte 0x03000068
_0805E65C: .4byte 0x03000070
_0805E660: .4byte 0x03000076
_0805E664: .4byte 0x03000072
_0805E668: .4byte 0x03000074
_0805E66C: .4byte sub_805E698
_0805E670: .4byte TaskDestructor_805E9B0
_0805E674: .4byte 0x040000D4
_0805E678: .4byte 0x85000010
_0805E67C: .4byte sa2__gUnknown_03004D80
_0805E680: .4byte sa2__gUnknown_03002280
_0805E684: .4byte gWinRegs
_0805E688: .4byte 0x000084A0
_0805E68C: .4byte 0x00003F3F
_0805E690: .4byte gBldRegs
_0805E694: .4byte 0x00001FDF

	thumb_func_start sub_805E698
sub_805E698: @ 0x0805E698
	push {r4, lr}
	ldr r0, _0805E6C0 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r0, [r4, #0x10]
	ldrh r0, [r0, #6]
	adds r2, r0, r1
	ldr r0, [r4, #0xc]
	ldrh r0, [r0, #6]
	adds r3, r0, r1
	ldr r1, [r4, #0x14]
	ldr r0, _0805E6C4 @ =0x0000208D
	cmp r1, r0
	bgt _0805E6C8
	str r1, [r2, #0x78]
	ldr r0, [r4, #0x14]
	b _0805E6CC
	.align 2, 0
_0805E6C0: .4byte gCurTask
_0805E6C4: .4byte 0x0000208D
_0805E6C8:
	ldr r0, _0805E6E8 @ =0x0000208E
	str r0, [r2, #0x78]
_0805E6CC:
	str r0, [r3, #0x78]
	ldr r0, [r4, #0x14]
	adds r0, #1
	str r0, [r4, #0x14]
	ldr r1, _0805E6EC @ =0x00002148
	cmp r0, r1
	ble _0805E6F0
	adds r0, r4, #0
	bl sub_805423C
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	b _0805E6F2
	.align 2, 0
_0805E6E8: .4byte 0x0000208E
_0805E6EC: .4byte 0x00002148
_0805E6F0:
	movs r2, #0
_0805E6F2:
	ldr r1, [r4, #0x14]
	ldr r0, _0805E734 @ =0x00002166
	cmp r1, r0
	ble _0805E750
	cmp r2, #0
	beq _0805E750
	ldr r2, _0805E738 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0805E73C @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _0805E740 @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	ldr r0, [r4, #0x10]
	bl TaskDestroy
	ldr r0, [r4, #0xc]
	bl TaskDestroy
	ldr r0, _0805E744 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	ldr r0, _0805E748 @ =gLoadedSaveGame
	ldrb r0, [r0, #0x1d]
	cmp r0, #0x7f
	beq _0805E74C
	bl sub_8069710
	b _0805E750
	.align 2, 0
_0805E734: .4byte 0x00002166
_0805E738: .4byte gDispCnt
_0805E73C: .4byte 0x00001FFF
_0805E740: .4byte gBldRegs
_0805E744: .4byte gCurTask
_0805E748: .4byte gLoadedSaveGame
_0805E74C:
	bl CreateSegaLogo
_0805E750:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_805E758
sub_805E758: @ 0x0805E758
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0805E7B0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r4, [r5, #0x78]
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	bne _0805E788
	ldr r0, _0805E7B4 @ =0x00143000
	ldr r1, _0805E7B8 @ =0x0000201C
	bl Div
	adds r0, #1
	muls r0, r4, r0
	str r0, [r5, #0x7c]
_0805E788:
	ldr r0, [r5, #0x7c]
	lsrs r1, r0, #8
	movs r0, #0xc
	rsbs r0, r0, #0
	adds r0, r0, r1
	mov sb, r0
	cmp r0, #0x8a
	bls _0805E7BC
	adds r0, r1, #0
	subs r0, #0x86
	lsrs r0, r0, #4
	mov r8, r0
	adds r0, r1, #0
	subs r0, #0x96
	movs r1, #0x10
	bl Mod
	adds r0, #8
	mov sl, r0
	b _0805E7C2
	.align 2, 0
_0805E7B0: .4byte gCurTask
_0805E7B4: .4byte 0x00143000
_0805E7B8: .4byte 0x0000201C
_0805E7BC:
	movs r1, #0
	mov r8, r1
	mov sl, r1
_0805E7C2:
	movs r7, #0x24
	movs r0, #0x9c
	lsls r0, r0, #1
	cmp r8, r0
	bhi _0805E7D2
	movs r2, #7
	str r2, [sp]
	b _0805E7DE
_0805E7D2:
	movs r0, #0x43
	mov r3, r8
	subs r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
_0805E7DE:
	movs r6, #0
	ldr r0, [sp]
	cmp r6, r0
	bhs _0805E86E
_0805E7E6:
	mov r1, r8
	adds r0, r1, r6
	lsls r1, r0, #5
	ldr r3, _0805E80C @ =sCreditsEntries
	adds r2, r1, r3
	ldrb r1, [r2]
	adds r3, r0, #0
	cmp r1, #0
	beq _0805E860
	mov r0, sb
	cmp r0, #0x8a
	bls _0805E810
	movs r0, #2
	ldrsb r0, [r2, r0]
	adds r0, r0, r7
	mov r1, sl
	subs r0, r0, r1
	b _0805E81C
	.align 2, 0
_0805E80C: .4byte sCreditsEntries
_0805E810:
	movs r0, #2
	ldrsb r0, [r2, r0]
	adds r0, #0x8a
	mov r2, sb
	subs r0, r0, r2
	adds r0, r0, r7
_0805E81C:
	adds r1, r5, #0
	adds r1, #0x6c
	strh r0, [r1]
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0x8a
	bgt _0805E86E
	lsls r0, r3, #5
	ldr r3, _0805E880 @ =sCreditsEntries @ Length of Entry String
	adds r4, r0, r3
	ldrb r3, [r4]
	lsls r2, r3, #2
	movs r1, #0x78
	subs r1, r1, r2
	adds r2, r5, #0
	adds r2, #0x6a
	strh r1, [r2]
	adds r1, r5, #0
	adds r1, #0x6e
	strh r3, [r1]
	lsls r2, r6, #4
	subs r1, #6
	strh r2, [r1]
	ldrb r1, [r4, #1]
	adds r1, #0xe
	adds r2, r5, #0
	adds r2, #0x72
	strh r1, [r2]
	ldr r1, _0805E884 @ =sCreditsEntries+0x3 @ Entry String
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x60
	bl sub_8053370
_0805E860:
	adds r7, #0x10
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r2, [sp]
	cmp r6, r2
	blo _0805E7E6
_0805E86E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805E880: .4byte sCreditsEntries
_0805E884: .4byte sCreditsEntries+0x3

	thumb_func_start sub_805E888
sub_805E888: @ 0x0805E888
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0805E954 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0x30
	adds r0, r0, r1
	mov sb, r0
	ldr r5, [r4, #0x78]
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	bne _0805E8BC
	ldr r0, _0805E958 @ =0x00143000
	ldr r1, _0805E95C @ =0x0000201C
	bl Div
	adds r0, #1
	muls r0, r5, r0
	str r0, [r4, #0x7c]
_0805E8BC:
	ldr r0, [r4, #0x7c]
	lsrs r2, r0, #8
	adds r0, r2, #0
	subs r0, #0xc
	cmp r0, #0x9a
	bls _0805E9A2
	subs r0, #0x8a
	lsrs r6, r0, #4
	subs r0, #0x10
	movs r1, #0x10
	bl Mod
	adds r0, #4
	mov sl, r0
	movs r5, #0xff
	movs r3, #0
	ldr r1, _0805E960 @ =gUnknown_086886A0
	mov ip, r1
	mov r7, ip
_0805E8E2:
	movs r2, #0
_0805E8E4:
	lsls r0, r2, #2
	adds r0, r0, r7
	adds r1, r6, r3
	ldr r0, [r0]
	cmp r0, r1
	bne _0805E8F8
	adds r5, r2, #0
	mov r8, r3
	movs r3, #0xa
	movs r2, #5
_0805E8F8:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _0805E8E4
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #9
	bls _0805E8E2
	mov r2, ip
	ldr r0, [r2, #0xc]
	subs r0, #3
	cmp r6, r0
	blo _0805E91C
	movs r5, #3
	movs r0, #0
	mov r8, r0
_0805E91C:
	cmp r5, #0xff
	beq _0805E9A2
	movs r0, #0x18
	mov r1, sl
	subs r0, r0, r1
	mov r2, r8
	lsls r1, r2, #4
	adds r0, r0, r1
	strh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9a
	bgt _0805E9A2
	movs r2, #0x78
	strh r2, [r4, #0x16]
	cmp r5, #0
	beq _0805E996
	cmp r5, #1
	beq _0805E946
	cmp r5, #2
	bne _0805E964
_0805E946:
	movs r0, #0xb9
	lsls r0, r0, #2
	strh r0, [r4, #0xa]
	adds r0, r4, #0
	adds r0, #0x20
	strb r5, [r0]
	b _0805E996
	.align 2, 0
_0805E954: .4byte gCurTask
_0805E958: .4byte 0x00143000
_0805E95C: .4byte 0x0000201C
_0805E960: .4byte gUnknown_086886A0
_0805E964:
	movs r0, #0xb9
	lsls r0, r0, #2
	strh r0, [r4, #0xa]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #3
	strb r0, [r1]
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0x4f
	bgt _0805E97E
	movs r0, #0x50
	strh r0, [r4, #0x18]
_0805E97E:
	mov r0, sb
	strh r2, [r0, #0x16]
	ldrh r0, [r4, #0x18]
	adds r0, #0x28
	mov r1, sb
	strh r0, [r1, #0x18]
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, sb
	bl DisplaySprite
_0805E996:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0805E9A2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

    thumb_func_start TaskDestructor_805E9B0
TaskDestructor_805E9B0:
    bx lr
    .align 2, 0

@ --- End of Staff Credits
