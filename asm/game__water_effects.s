.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_804C40C
sub_804C40C: @ 0x0804C40C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0804C580 @ =gWater
	mov ip, r0
	ldr r5, _0804C584 @ =gUnknown_03005C80
	ldr r6, _0804C588 @ =gObjPalette
	ldr r2, [r0, #0xc]
	movs r7, #0xf
	movs r0, #0x80
	lsls r0, r0, #2
	adds r0, r0, r5
	mov r8, r0
	ldr r0, _0804C58C @ =gBgPalette
	mov sb, r0
	ldr r4, _0804C590 @ =0x7BDE7BDE
	ldr r3, _0804C594 @ =0x739C739C
	ands r2, r3
_0804C432:
	ldm r6!, {r0}
	adds r1, r0, #0
	ands r1, r4
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	ldm r6!, {r0}
	adds r1, r0, #0
	ands r1, r4
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	ldm r6!, {r0}
	adds r1, r0, #0
	ands r1, r4
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	ldm r6!, {r0}
	adds r1, r0, #0
	ands r1, r4
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	ldm r6!, {r0}
	adds r1, r0, #0
	ands r1, r4
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	ldm r6!, {r0}
	adds r1, r0, #0
	ands r1, r4
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	ldm r6!, {r0}
	adds r1, r0, #0
	ands r1, r4
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	ldm r6!, {r0}
	adds r1, r0, #0
	ands r1, r4
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	adds r0, r7, #0
	subs r7, #1
	cmp r0, #0
	bne _0804C432
	mov r6, r8
	mov r5, sb
	mov r0, ip
	ldr r2, [r0, #0xc]
	movs r7, #0xf
	ldr r4, _0804C590 @ =0x7BDE7BDE
	ldr r3, _0804C594 @ =0x739C739C
	ands r2, r3
_0804C4DA:
	ldm r5!, {r0}
	adds r1, r0, #0
	ands r1, r4
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r6!, {r1}
	ldm r5!, {r0}
	adds r1, r0, #0
	ands r1, r4
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r6!, {r1}
	ldm r5!, {r0}
	adds r1, r0, #0
	ands r1, r4
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r6!, {r1}
	ldm r5!, {r0}
	adds r1, r0, #0
	ands r1, r4
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r6!, {r1}
	ldm r5!, {r0}
	adds r1, r0, #0
	ands r1, r4
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r6!, {r1}
	ldm r5!, {r0}
	adds r1, r0, #0
	ands r1, r4
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r6!, {r1}
	ldm r5!, {r0}
	adds r1, r0, #0
	ands r1, r4
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r6!, {r1}
	ldm r5!, {r0}
	adds r1, r0, #0
	ands r1, r4
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r6!, {r1}
	adds r0, r7, #0
	subs r7, #1
	cmp r0, #0
	bne _0804C4DA
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804C580: .4byte gWater
_0804C584: .4byte gUnknown_03005C80
_0804C588: .4byte gObjPalette
_0804C58C: .4byte gBgPalette
_0804C590: .4byte 0x7BDE7BDE
_0804C594: .4byte 0x739C739C

	thumb_func_start sub_804C598
sub_804C598: @ 0x0804C598
	push {lr}
	sub sp, #0x30
	movs r2, #0
	str r2, [sp, #4]
	mov r1, sp
	movs r3, #0
	movs r0, #0xd5
	lsls r0, r0, #2
	strh r0, [r1, #0xa]
	add r0, sp, #0x20
	strb r3, [r0]
	mov r0, sp
	strh r2, [r0, #0x1a]
	str r2, [sp, #0x10]
	strh r2, [r0, #8]
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	mov r0, sp
	strh r2, [r0, #0x1c]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	mov r0, sp
	adds r0, #0x25
	strb r3, [r0]
	mov r0, sp
	bl UpdateSpriteAnimation
	add sp, #0x30
	pop {r0}
	bx r0

	thumb_func_start CreateStageWaterTask
CreateStageWaterTask: @ 0x0804C5D8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r4, _0804C650 @ =gWater
	movs r7, #0
	movs r5, #0
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	movs r3, #0xff
	strb r3, [r4, #1]
	movs r3, #1
	rsbs r3, r3, #0
	adds r6, r3, #0
	strb r3, [r4]
	movs r3, #0x80
	lsls r3, r3, #1
	ands r3, r2
	str r3, [r4, #8]
	str r1, [r4, #0xc]
	cmp r0, #0
	blt _0804C646
	adds r0, r4, #0
	adds r0, #0x14
	ldr r1, _0804C654 @ =0x06012660
	str r1, [r0, #4]
	strh r5, [r0, #8]
	ldr r1, _0804C658 @ =0x00000233
	strh r1, [r0, #0xa]
	adds r1, r4, #0
	adds r1, #0x34
	strb r7, [r1]
	adds r2, r4, #0
	adds r2, #0x35
	ldrb r1, [r2]
	orrs r1, r6
	strb r1, [r2]
	strh r5, [r0, #0x1a]
	strh r5, [r0, #0x1c]
	adds r2, #1
	movs r1, #0x10
	strb r1, [r2]
	adds r1, r4, #0
	adds r1, #0x39
	strb r7, [r1]
	str r5, [r0, #0x10]
	bl UpdateSpriteAnimation
	ldr r0, _0804C65C @ =Task_StageWaterTask
	ldr r2, _0804C660 @ =0x0000FFFE
	ldr r1, _0804C664 @ =TaskDestructor_WaterSurface
	str r1, [sp]
	movs r1, #0
	movs r3, #0
	bl TaskCreate
	str r0, [r4, #0x10]
_0804C646:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804C650: .4byte gWater
_0804C654: .4byte 0x06012660
_0804C658: .4byte 0x00000233
_0804C65C: .4byte Task_StageWaterTask
_0804C660: .4byte 0x0000FFFE
_0804C664: .4byte TaskDestructor_WaterSurface

	thumb_func_start Task_StageWaterTask
Task_StageWaterTask: @ 0x0804C668
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x1c
	ldr r7, _0804C698 @ =gWater
	ldr r5, _0804C69C @ =gCamera
	ldr r0, _0804C6A0 @ =gStageTime
	ldr r1, [r0]
	movs r2, #1
	ands r1, r2
	adds r6, r0, #0
	cmp r1, #0
	beq _0804C6AC
	ldrh r0, [r7, #2]
	movs r1, #2
	ldrsh r2, [r7, r1]
	movs r3, #4
	ldrsh r1, [r7, r3]
	cmp r2, r1
	beq _0804C6AC
	cmp r2, r1
	bge _0804C6A4
	adds r0, #1
	b _0804C6AA
	.align 2, 0
_0804C698: .4byte gWater
_0804C69C: .4byte gCamera
_0804C6A0: .4byte gStageTime
_0804C6A4:
	cmp r2, r1
	ble _0804C6AC
	subs r0, #1
_0804C6AA:
	strh r0, [r7, #2]
_0804C6AC:
	ldrh r2, [r7, #2]
	movs r4, #2
	ldrsh r1, [r7, r4]
	ldrh r3, [r5, #2]
	movs r4, #2
	ldrsh r0, [r5, r4]
	cmp r1, r0
	bgt _0804C6C0
	movs r0, #0
	b _0804C6D4
_0804C6C0:
	movs r0, #2
	ldrsh r1, [r7, r0]
	movs r4, #2
	ldrsh r0, [r5, r4]
	adds r0, #0xa0
	cmp r1, r0
	bge _0804C6D2
	subs r0, r2, r3
	b _0804C6D4
_0804C6D2:
	movs r0, #0xff
_0804C6D4:
	strb r0, [r7, #1]
	ldr r3, _0804C77C @ =sa2__gUnknown_03001870
	ldr r2, _0804C780 @ =sa2__gUnknown_03004D50
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	ldr r1, _0804C784 @ =sa2__sub_8011A4C
	str r1, [r0]
	ldr r2, _0804C788 @ =gFlags
	ldr r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2]
	ldrb r0, [r7]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x9e
	bhi _0804C756
	adds r4, r7, #0
	adds r4, #0x14
	ldr r0, [r6]
	adds r0, #1
	lsrs r0, r0, #2
	ldrh r5, [r5]
	adds r0, r0, r5
	movs r1, #0xf
	ands r0, r1
	rsbs r0, r0, #0
	strh r0, [r4, #0x16]
	ldrb r0, [r7, #1]
	adds r0, #1
	strh r0, [r4, #0x18]
	ldr r0, [r4, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r0, [r6]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0804C756
	ldrh r0, [r4, #0x18]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xee
	bhi _0804C756
	movs r5, #0x10
_0804C744:
	adds r0, r4, #0
	bl DisplaySprite
	ldrh r0, [r4, #0x16]
	adds r0, #0x10
	strh r0, [r4, #0x16]
	subs r5, #1
	cmp r5, #0
	bge _0804C744
_0804C756:
	ldrb r1, [r7, #1]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r3, r1, #0
	cmp r0, #0x9e
	bhi _0804C798
	ldr r1, _0804C78C @ =gIntrTable
	ldr r0, _0804C790 @ =sa2__VCountIntr_8011ACC
	str r0, [r1, #0xc]
	ldr r1, _0804C794 @ =sa2__gUnknown_03002874
	subs r0, r3, #1
	strb r0, [r1]
	ldr r2, _0804C788 @ =gFlags
	ldr r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	b _0804C7AA
	.align 2, 0
_0804C77C: .4byte sa2__gUnknown_03001870
_0804C780: .4byte sa2__gUnknown_03004D50
_0804C784: .4byte sa2__sub_8011A4C
_0804C788: .4byte gFlags
_0804C78C: .4byte gIntrTable
_0804C790: .4byte sa2__VCountIntr_8011ACC
_0804C794: .4byte sa2__gUnknown_03002874
_0804C798:
	ldr r1, _0804C7C0 @ =gIntrTable
	ldr r0, _0804C7C4 @ =gIntrTableTemplate
	ldr r0, [r0, #0xc]
	str r0, [r1, #0xc]
	ldr r2, _0804C7C8 @ =gFlags
	ldr r0, [r2]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
_0804C7AA:
	str r0, [r2]
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x9f
	bls _0804C7CC
	ldr r0, [r2]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	b _0804C86C
	.align 2, 0
_0804C7C0: .4byte gIntrTable
_0804C7C4: .4byte gIntrTableTemplate
_0804C7C8: .4byte gFlags
_0804C7CC:
	ldr r0, _0804C878 @ =gStageTime
	ldr r1, [r0]
	lsls r3, r1, #2
	ldr r2, _0804C87C @ =gBgScrollRegs
	movs r6, #0xe
	ldrsh r0, [r2, r6]
	ldrb r4, [r7, #1]
	adds r0, r0, r4
	movs r4, #0x1f
	ands r0, r4
	lsls r0, r0, #6
	adds r3, r3, r0
	ldr r6, _0804C880 @ =0x000003FF
	adds r5, r6, #0
	ands r3, r5
	movs r0, #2
	str r0, [sp]
	movs r0, #0x40
	str r0, [sp, #4]
	lsls r1, r1, #1
	movs r6, #0xe
	ldrsh r0, [r2, r6]
	ldrb r6, [r7, #1]
	adds r0, r0, r6
	ands r0, r4
	lsls r0, r0, #5
	adds r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	ands r1, r5
	str r1, [sp, #8]
	movs r0, #0xa
	str r0, [sp, #0xc]
	movs r0, #0x20
	str r0, [sp, #0x10]
	movs r1, #0xc
	ldrsh r0, [r2, r1]
	str r0, [sp, #0x14]
	movs r4, #0xe
	ldrsh r0, [r2, r4]
	str r0, [sp, #0x18]
	movs r0, #3
	movs r1, #0
	movs r2, #0x20
	bl sa2__sub_8007738
	movs r5, #0x20
	ldr r2, _0804C884 @ =0x040000D4
	ldr r0, _0804C888 @ =gBgOffsetsHBlank
	ldr r4, [r0]
	ldr r0, _0804C88C @ =sa2__gUnknown_03002A80
	ldrb r3, [r0]
	lsls r0, r3, #5
	adds r1, r0, r4
	movs r6, #0x84
	lsls r6, r6, #0x18
	mov ip, r6
	mov r8, r0
_0804C842:
	str r4, [r2]
	str r1, [r2, #4]
	lsls r0, r3, #5
	asrs r0, r0, #2
	mov r6, ip
	orrs r0, r6
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	add r1, r8
	adds r5, #0x20
	cmp r5, #0x9f
	bls _0804C842
	ldrb r0, [r7, #1]
	cmp r0, #0
	beq _0804C86C
	ldr r0, _0804C890 @ =gFlags
	ldr r1, [r0]
	movs r2, #5
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0]
_0804C86C:
	add sp, #0x1c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804C878: .4byte gStageTime
_0804C87C: .4byte gBgScrollRegs
_0804C880: .4byte 0x000003FF
_0804C884: .4byte 0x040000D4
_0804C888: .4byte gBgOffsetsHBlank
_0804C88C: .4byte sa2__gUnknown_03002A80
_0804C890: .4byte gFlags

	thumb_func_start unused_DestroygWaterTask
unused_DestroygWaterTask: @ 0x0804C894
	push {r4, lr}
	ldr r4, _0804C8A8 @ =gWater
	ldr r0, [r4, #0x10]
	bl TaskDestroy
	movs r0, #0
	str r0, [r4, #0x10]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804C8A8: .4byte gWater

	thumb_func_start CreateWaterfallSurfaceHitEffect
CreateWaterfallSurfaceHitEffect: @ 0x0804C8AC
	push {r4, r5, r6, lr}
	sub sp, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, _0804C8FC @ =sub_8040278
	str r2, [sp]
	ldr r2, _0804C900 @ =sa2__TaskDestructor_801F550
	str r2, [sp, #4]
	movs r2, #0x10
	movs r3, #0
	bl sa2__sub_801F15C
	adds r6, r0, #0
	ldrh r4, [r6, #6]
	ldr r0, _0804C904 @ =0x03000018
	adds r5, r4, r0
	movs r0, #0xc
	bl VramMalloc
	str r0, [r5, #4]
	movs r1, #0
	ldr r0, _0804C908 @ =0x00000245
	strh r0, [r5, #0xa]
	ldr r0, _0804C90C @ =0x03000038
	adds r4, r4, r0
	strb r1, [r4]
	movs r0, #0xe0
	lsls r0, r0, #1
	strh r0, [r5, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	adds r0, r6, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0804C8FC: .4byte sub_8040278
_0804C900: .4byte sa2__TaskDestructor_801F550
_0804C904: .4byte 0x03000018
_0804C908: .4byte 0x00000245
_0804C90C: .4byte 0x03000038

	thumb_func_start TaskDestructor_WaterSurface
TaskDestructor_WaterSurface: @ 0x0804C910
	sub sp, #4
	ldr r3, _0804C944 @ =gWater
	ldr r2, _0804C948 @ =gFlags
	ldr r0, [r2]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	ldr r1, _0804C94C @ =gIntrTable
	ldr r0, _0804C950 @ =gIntrTableTemplate
	ldr r0, [r0, #0xc]
	str r0, [r1, #0xc]
	movs r0, #0
	str r0, [r3, #0x10]
	str r0, [sp]
	ldr r1, _0804C954 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _0804C958 @ =gUnknown_03005C80
	str r0, [r1, #4]
	ldr r0, _0804C95C @ =0x850000F0
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #4
	bx lr
	.align 2, 0
_0804C944: .4byte gWater
_0804C948: .4byte gFlags
_0804C94C: .4byte gIntrTable
_0804C950: .4byte gIntrTableTemplate
_0804C954: .4byte 0x040000D4
_0804C958: .4byte gUnknown_03005C80
_0804C95C: .4byte 0x850000F0

	thumb_func_start sa2__sub_8011A4C
sa2__sub_8011A4C: @ 0x0804C960
	ldr r2, _0804C9B0 @ =gWater
	ldrb r3, [r2, #1]
	strb r3, [r2]
	ldr r0, [r2, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #8]
	lsls r3, r3, #0x18
	cmp r3, #0
	bne _0804C9AE
	ldr r1, _0804C9B4 @ =0x040000D4
	ldr r2, _0804C9B8 @ =gUnknown_03005E80
	str r2, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _0804C9BC @ =0x84000074
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0804C9C0 @ =0xFFFFFE00
	adds r2, r2, r0
	str r2, [r1]
	ldr r0, _0804C9C4 @ =0x05000200
	str r0, [r1, #4]
	ldr r0, _0804C9C8 @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _0804C9CC @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	ldr r2, _0804C9D0 @ =gFlags
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
_0804C9AE:
	bx lr
	.align 2, 0
_0804C9B0: .4byte gWater
_0804C9B4: .4byte 0x040000D4
_0804C9B8: .4byte gUnknown_03005E80
_0804C9BC: .4byte 0x84000074
_0804C9C0: .4byte 0xFFFFFE00
_0804C9C4: .4byte 0x05000200
_0804C9C8: .4byte 0x84000080
_0804C9CC: .4byte 0x0000FEFF
_0804C9D0: .4byte gFlags

	thumb_func_start sa2__VCountIntr_8011ACC
sa2__VCountIntr_8011ACC: @ 0x0804C9D4
	ldr r2, _0804CA2C @ =0x040000B0
	ldr r1, _0804CA30 @ =gUnknown_03005E80
	str r1, [r2]
	movs r0, #0xa0
	lsls r0, r0, #0x13  @ r0 = PLTT
	str r0, [r2, #4]
	ldr r0, _0804CA34 @ =0x84000074
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0804CA38 @ =0xFFFFFE00
	adds r1, r1, r0
	str r1, [r2]
	ldr r0, _0804CA3C @ =0x05000200
	str r0, [r2, #4]
	ldr r0, _0804CA40 @ =0x84000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #0x13
	ldrh r1, [r3]
	ldr r0, _0804CA44 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r3]
	ldr r3, _0804CA48 @ =gFlags
	ldr r0, [r3]
	movs r1, #3
	orrs r0, r1
	str r0, [r3]
	ldr r0, _0804CA4C @ =sa2__gUnknown_030022AC
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, _0804CA50 @ =0x0400001C
	str r0, [r2, #4]
	ldr r0, _0804CA54 @ =sa2__gUnknown_03002A80
	ldrb r0, [r0]
	lsrs r0, r0, #1
	ldr r1, _0804CA58 @ =0xA2600000
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r1, _0804CA5C @ =0x04000202
	movs r0, #4
	strh r0, [r1]
	bx lr
	.align 2, 0
_0804CA2C: .4byte 0x040000B0
_0804CA30: .4byte gUnknown_03005E80
_0804CA34: .4byte 0x84000074
_0804CA38: .4byte 0xFFFFFE00
_0804CA3C: .4byte 0x05000200
_0804CA40: .4byte 0x84000080
_0804CA44: .4byte 0x0000FEFF
_0804CA48: .4byte gFlags
_0804CA4C: .4byte sa2__gUnknown_030022AC
_0804CA50: .4byte 0x0400001C
_0804CA54: .4byte sa2__gUnknown_03002A80
_0804CA58: .4byte 0xA2600000
_0804CA5C: .4byte 0x04000202

	thumb_func_start MaskPaletteWithUnderwaterColor
MaskPaletteWithUnderwaterColor: @ 0x0804CA60
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r1, r2, #0
	asrs r7, r3, #4
	adds r0, r7, #0
	subs r7, #1
	cmp r0, #0
	beq _0804CB12
	ldr r6, _0804CB18 @ =0x7BDE7BDE
	ldr r3, _0804CB1C @ =0x739C739C
	adds r2, r3, #0
	ands r2, r1
_0804CA7A:
	ldm r4!, {r0}
	adds r1, r0, #0
	ands r1, r6
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	ldm r4!, {r0}
	adds r1, r0, #0
	ands r1, r6
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	ldm r4!, {r0}
	adds r1, r0, #0
	ands r1, r6
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	ldm r4!, {r0}
	adds r1, r0, #0
	ands r1, r6
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	ldm r4!, {r0}
	adds r1, r0, #0
	ands r1, r6
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	ldm r4!, {r0}
	adds r1, r0, #0
	ands r1, r6
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	ldm r4!, {r0}
	adds r1, r0, #0
	ands r1, r6
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	ldm r4!, {r0}
	adds r1, r0, #0
	ands r1, r6
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	adds r0, r7, #0
	subs r7, #1
	cmp r0, #0
	bne _0804CA7A
_0804CB12:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804CB18: .4byte 0x7BDE7BDE
_0804CB1C: .4byte 0x739C739C

	thumb_func_start sub_804CB20
sub_804CB20: @ 0x0804CB20
	push {r4, r5, lr}
	ldr r0, _0804CB44 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldr r0, [r3, #0xc]
	cmp r0, #0
	beq _0804CB3A
	ldr r0, [r3]
	cmp r0, #0
	bgt _0804CB48
_0804CB3A:
	adds r0, r2, #0
	bl TaskDestroy
	b _0804CC06
	.align 2, 0
_0804CB44: .4byte gCurTask
_0804CB48:
	ldr r5, _0804CB6C @ =gCamera
	ldr r0, [r3, #0x10]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0804CB7C
	ldr r2, _0804CB70 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _0804CB74 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0804CB78 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x17
	adds r1, r0, #0
	subs r1, #0xff
	b _0804CB8A
	.align 2, 0
_0804CB6C: .4byte gCamera
_0804CB70: .4byte gPseudoRandom
_0804CB74: .4byte 0x00196225
_0804CB78: .4byte 0x3C6EF35F
_0804CB7C:
	ldr r0, _0804CBA4 @ =gSineTable
	ldr r1, [r3, #0x14]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x16
_0804CB8A:
	ldr r0, [r3]
	muls r0, r1, r0
	asrs r2, r0, #0x10
	ldr r0, [r3, #0x10]
	movs r1, #3
	ands r1, r0
	adds r4, r0, #0
	cmp r1, #1
	beq _0804CBA8
	cmp r1, #2
	beq _0804CBB0
	b _0804CBBA
	.align 2, 0
_0804CBA4: .4byte gSineTable
_0804CBA8:
	cmp r2, #0
	bge _0804CBBA
	rsbs r2, r2, #0
	b _0804CBBA
_0804CBB0:
	adds r0, r2, #0
	cmp r2, #0
	bge _0804CBB8
	rsbs r0, r2, #0
_0804CBB8:
	rsbs r2, r0, #0
_0804CBBA:
	movs r0, #0x20
	ands r0, r4
	cmp r0, #0
	beq _0804CBCE
	ldr r0, _0804CC0C @ =gStageTime
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0804CBE4
_0804CBCE:
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0
	beq _0804CBD8
	strh r2, [r5, #0x34]
_0804CBD8:
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804CBE4
	strh r2, [r5, #0x36]
_0804CBE4:
	ldr r0, [r3, #0xc]
	cmp r0, #0
	ble _0804CBEE
	subs r0, #1
	str r0, [r3, #0xc]
_0804CBEE:
	ldr r1, [r3]
	cmp r1, #0
	ble _0804CBFA
	ldr r0, [r3, #4]
	subs r0, r1, r0
	str r0, [r3]
_0804CBFA:
	ldr r0, [r3, #0x14]
	ldr r1, [r3, #8]
	adds r0, r0, r1
	ldr r1, _0804CC10 @ =0x000003FF
	ands r0, r1
	str r0, [r3, #0x14]
_0804CC06:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804CC0C: .4byte gStageTime
_0804CC10: .4byte 0x000003FF

	thumb_func_start sub_804CC14
sub_804CC14: @ 0x0804CC14
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r8, r3
	ldr r7, [sp, #0x1c]
	ldr r0, _0804CC5C @ =sub_804CB20
	ldr r2, _0804CC60 @ =0x00000EFF
	ldr r1, _0804CC64 @ =sub_804CC68
	str r1, [sp]
	movs r1, #0x18
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r1, r1, r2
	str r4, [r1]
	str r5, [r1, #4]
	str r6, [r1, #8]
	movs r2, #0
	str r2, [r1, #0x14]
	mov r2, r8
	str r2, [r1, #0xc]
	str r7, [r1, #0x10]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0804CC5C: .4byte sub_804CB20
_0804CC60: .4byte 0x00000EFF
_0804CC64: .4byte sub_804CC68

	thumb_func_start sub_804CC68
sub_804CC68: @ 0x0804CC68
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	ldr r3, _0804CC90 @ =gCamera
	ldr r0, [r2, #0x10]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0804CC80
	movs r0, #0
	strh r0, [r3, #0x34]
_0804CC80:
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804CC8E
	movs r0, #0
	strh r0, [r3, #0x36]
_0804CC8E:
	bx lr
	.align 2, 0
_0804CC90: .4byte gCamera
