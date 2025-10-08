.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_805C448
sub_805C448: @ 0x0805C448
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp, #0xc]
	movs r4, #0
	bl sub_80535FC
	bl UiGfxStackInit
	ldr r0, _0805C57C @ =Task_805C6B0
	ldr r7, _0805C580 @ =0x00002120
	str r4, [sp]
	movs r1, #0x1c
	adds r2, r7, #0
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #8]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	mov sl, r1
	adds r1, r0, r1
	strh r4, [r1, #0x18]
	strh r4, [r1, #0x1a]
	movs r0, #0xf0
	strh r0, [r1, #0xa]
	movs r0, #0x7e
	strh r0, [r1, #0xc]
	movs r0, #8
	strh r0, [r1, #0xe]
	strh r0, [r1, #0x10]
	movs r6, #6
	strh r6, [r1, #0x12]
	movs r2, #1
	mov r8, r2
	mov r0, r8
	strb r0, [r1, #0x16]
	movs r0, #0xa
	strh r0, [r1, #8]
	ldr r0, _0805C584 @ =Task_805C740
	str r4, [sp]
	movs r1, #0x1c
	adds r2, r7, #0
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #4]
	ldrh r0, [r0, #6]
	mov r2, sl
	adds r1, r0, r2
	strh r4, [r1, #0x18]
	strh r4, [r1, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #1
	mov sb, r0
	mov r2, sb
	strh r2, [r1, #0xa]
	movs r0, #0x80
	strh r0, [r1, #0xc]
	movs r0, #9
	strh r0, [r1, #0xe]
	movs r0, #2
	strh r0, [r1, #0x10]
	strh r6, [r1, #0x12]
	mov r2, r8
	strb r2, [r1, #0x16]
	strh r4, [r1, #8]
	cmp r5, #0
	beq _0805C520
	ldr r0, _0805C588 @ =Task_805C83C
	str r4, [sp]
	movs r1, #0x1c
	adds r2, r7, #0
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0xc]
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r1, r0, r2
	strh r4, [r1, #0x18]
	strh r4, [r1, #0x1a]
	mov r0, sb
	strh r0, [r1]
	strh r4, [r1, #2]
	strh r4, [r1, #4]
	strh r4, [r1, #6]
	movs r0, #0x39
	strh r0, [r1, #0xa]
	movs r0, #0x49
	strh r0, [r1, #0xc]
	movs r0, #5
	strh r0, [r1, #0xe]
	movs r0, #4
	strh r0, [r1, #0x10]
	strh r6, [r1, #0x12]
	mov r2, r8
	strb r2, [r1, #0x16]
	strh r4, [r1, #8]
_0805C520:
	ldr r0, _0805C58C @ =sub_805C594
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0805C590 @ =TaskDestructor_nullsub_805C8FC
	str r1, [sp]
	movs r1, #0x1c
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	mov r1, sl
	adds r4, r0, r1
	movs r2, #0
	strh r2, [r4, #0x18]
	strb r5, [r4, #0x1a]
	ldr r0, [sp, #8]
	str r0, [r4, #0x10]
	ldr r1, [sp, #4]
	str r1, [r4, #0x14]
	ldr r2, [sp, #0xc]
	str r2, [r4, #0xc]
	movs r0, #0
	strh r0, [r4]
	movs r1, #1
	mov r2, r8
	strh r2, [r4, #2]
	movs r0, #2
	strh r0, [r4, #4]
	movs r2, #0
	strh r2, [r4, #6]
	movs r0, #0x60
	strh r0, [r4, #8]
	strb r1, [r4, #0xa]
	cmp r5, #0
	beq _0805C56C
	adds r0, r4, #0
	bl sub_80543A4
_0805C56C:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805C57C: .4byte Task_805C6B0
_0805C580: .4byte 0x00002120
_0805C584: .4byte Task_805C740
_0805C588: .4byte Task_805C83C
_0805C58C: .4byte sub_805C594
_0805C590: .4byte TaskDestructor_nullsub_805C8FC

	thumb_func_start sub_805C594
sub_805C594: @ 0x0805C594
	push {r4, r5, lr}
	ldr r0, _0805C5EC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r0, r1
	ldr r0, [r5, #0x10]
	ldrh r0, [r0, #6]
	adds r2, r0, r1
	ldr r0, [r5, #0x14]
	ldrh r0, [r0, #6]
	adds r1, r0, r1
	ldrb r0, [r5, #0x1a]
	cmp r0, #0
	beq _0805C5BE
	ldr r0, [r5, #0xc]
	ldrh r0, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r3, r0, r4
_0805C5BE:
	ldrh r0, [r5, #0x18]
	strh r0, [r2, #0x18]
	ldrh r0, [r5, #0x18]
	strh r0, [r1, #0x18]
	ldrb r0, [r5, #0x1a]
	cmp r0, #0
	beq _0805C5F6
	ldrh r0, [r5, #0x18]
	strh r0, [r3, #0x18]
	ldrb r0, [r5, #0x1a]
	cmp r0, #0
	beq _0805C5F6
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	cmp r0, #0x69
	bgt _0805C5F6
	cmp r0, #0x14
	ble _0805C5F0
	adds r0, r5, #0
	bl sub_805423C
	b _0805C5F6
	.align 2, 0
_0805C5EC: .4byte gCurTask
_0805C5F0:
	adds r0, r5, #0
	bl sub_80543A4
_0805C5F6:
	ldrh r0, [r5, #0x18]
	adds r0, #1
	movs r3, #0
	strh r0, [r5, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _0805C698
	ldr r2, _0805C670 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0805C674 @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0805C678 @ =gBldRegs
	strh r3, [r0]
	strh r3, [r0, #4]
	ldr r2, _0805C67C @ =gStageFlags
	ldrh r1, [r2]
	ldr r0, _0805C680 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2]
	ldr r3, _0805C684 @ =gPlayer
	ldr r0, [r3, #0x10]
	ldr r4, _0805C688 @ =0xFFDFFFFF
	ands r0, r4
	str r0, [r3, #0x10]
	ldr r0, _0805C68C @ =gPlayerControls
	ldrh r2, [r0]
	ldrh r0, [r0, #2]
	orrs r2, r0
	ldrh r1, [r3, #0x38]
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #0x38]
	ldr r1, _0805C690 @ =gPartner
	ldr r0, [r1, #0x10]
	ands r0, r4
	str r0, [r1, #0x10]
	ldrh r0, [r1, #0x38]
	orrs r2, r0
	strh r2, [r1, #0x38]
	bl CreateSpecialStageUI
	ldr r0, [r5, #0x14]
	bl TaskDestroy
	ldr r0, [r5, #0x10]
	bl TaskDestroy
	ldrb r0, [r5, #0x1a]
	cmp r0, #0
	beq _0805C664
	ldr r0, [r5, #0xc]
	bl TaskDestroy
_0805C664:
	ldr r0, _0805C694 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0805C6A4
	.align 2, 0
_0805C670: .4byte gDispCnt
_0805C674: .4byte 0x00001FFF
_0805C678: .4byte gBldRegs
_0805C67C: .4byte gStageFlags
_0805C680: .4byte 0x0000FFFE
_0805C684: .4byte gPlayer
_0805C688: .4byte 0xFFDFFFFF
_0805C68C: .4byte gPlayerControls
_0805C690: .4byte gPartner
_0805C694: .4byte gCurTask
_0805C698:
	cmp r0, #2
	bne _0805C6A4
	ldr r0, _0805C6AC @ =gUnknown_03005154
	ldrh r0, [r0]
	bl sub_805BC94
_0805C6A4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805C6AC: .4byte gUnknown_03005154

	thumb_func_start Task_805C6B0
Task_805C6B0: @ 0x0805C6B0
	push {lr}
	ldr r0, _0805C6F0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	movs r1, #0x18
	ldrsh r0, [r2, r1]
	cmp r0, #0xf5
	ble _0805C6F4
	ldrh r3, [r2, #0xa]
	movs r0, #0xa
	ldrsh r1, [r2, r0]
	movs r0, #0x20
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0805C6E8
	adds r0, r3, #0
	adds r0, #0x20
	strh r0, [r2, #0xa]
	ldrh r1, [r2, #0xe]
	movs r3, #0xe
	ldrsh r0, [r2, r3]
	cmp r0, #0
	beq _0805C6E8
	subs r0, r1, #1
	strh r0, [r2, #0xe]
_0805C6E8:
	ldrh r0, [r2, #0xa]
	subs r0, #0x1a
	strh r0, [r2, #0xa]
	b _0805C730
	.align 2, 0
_0805C6F0: .4byte gCurTask
_0805C6F4:
	cmp r0, #0x2d
	ble _0805C6FE
	movs r0, #0x11
	strh r0, [r2, #0xc]
	b _0805C730
_0805C6FE:
	cmp r0, #0x21
	ble _0805C70A
	ldrh r0, [r2, #0xc]
	subs r0, #8
	strh r0, [r2, #0xc]
	b _0805C730
_0805C70A:
	cmp r0, #0x19
	ble _0805C718
	ldr r0, _0805C714 @ =0x0000FFF0
	strh r0, [r2, #0xa]
	b _0805C730
	.align 2, 0
_0805C714: .4byte 0x0000FFF0
_0805C718:
	cmp r0, #0xf
	ble _0805C730
	ldrh r0, [r2, #0xa]
	subs r0, #0x1a
	strh r0, [r2, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x10
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0805C730
	strh r1, [r2, #0xa]
_0805C730:
	ldr r0, _0805C73C @ =gUnknown_0868862C
	adds r1, r2, #0
	bl sub_8052F78
	pop {r0}
	bx r0
	.align 2, 0
_0805C73C: .4byte gUnknown_0868862C

	thumb_func_start Task_805C740
Task_805C740: @ 0x0805C740
	push {r4, lr}
	sub sp, #0x1c
	ldr r1, _0805C794 @ =gUnknown_08688638
	mov r0, sp
	movs r2, #0x16
	bl memcpy
	mov r0, sp
	adds r0, #0x16
	movs r1, #0
	movs r2, #5
	bl memset
	ldr r0, _0805C798 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0xf5
	ble _0805C79C
	ldrh r0, [r4, #0xa]
	subs r0, #0x1c
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x1f
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0805C7EA
	ldrh r1, [r4, #0xe]
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _0805C78E
	subs r0, r1, #1
	strh r0, [r4, #0xe]
_0805C78E:
	ldrh r0, [r4, #0xa]
	adds r0, #0x20
	b _0805C7DC
	.align 2, 0
_0805C794: .4byte gUnknown_08688638
_0805C798: .4byte gCurTask
_0805C79C:
	cmp r0, #0x2d
	ble _0805C7AC
	movs r0, #0x13
	strh r0, [r4, #0xc]
	ldrh r2, [r4, #0xa]
	subs r0, r2, #2
	strh r0, [r4, #0xa]
	b _0805C7CC
_0805C7AC:
	cmp r0, #0x21
	ble _0805C7BE
	ldrh r0, [r4, #0xc]
	subs r0, #8
	strh r0, [r4, #0xc]
	ldrh r2, [r4, #0xa]
	subs r0, r2, #2
	strh r0, [r4, #0xa]
	b _0805C7CC
_0805C7BE:
	cmp r0, #0x19
	ble _0805C7F6
	ldrh r2, [r4, #0xa]
	subs r0, r2, #2
	strh r0, [r4, #0xa]
	movs r1, #9
	strh r1, [r4, #0xe]
_0805C7CC:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x1f
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0805C7EA
	adds r0, r2, #0
	adds r0, #0x1e
_0805C7DC:
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0x1a]
	adds r0, #1
	movs r1, #7
	bl Mod
	strh r0, [r4, #0x1a]
_0805C7EA:
	ldrh r0, [r4, #0x1a]
	add r0, sp
	adds r1, r4, #0
	bl sub_8052F78
	b _0805C834
_0805C7F6:
	cmp r0, #0xf
	ble _0805C834
	ldrh r3, [r4, #0xa]
	adds r0, r3, #0
	subs r0, #0x1c
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0xef
	bgt _0805C834
	asrs r0, r0, #0x15
	movs r1, #9
	subs r1, r1, r0
	strh r1, [r4, #0xe]
	movs r0, #0x1f
	rsbs r0, r0, #0
	cmp r2, r0
	bge _0805C82A
	adds r0, r3, #4
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0x1a]
	adds r0, #1
	movs r1, #7
	bl Mod
	strh r0, [r4, #0x1a]
_0805C82A:
	ldrh r0, [r4, #0x1a]
	add r0, sp
	adds r1, r4, #0
	bl sub_8052F78
_0805C834:
	add sp, #0x1c
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start Task_805C83C
Task_805C83C: @ 0x0805C83C
	push {lr}
	ldr r0, _0805C874 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	movs r1, #0x18
	ldrsh r0, [r3, r1]
	cmp r0, #0xf5
	ble _0805C87C
	movs r0, #0x49
	strh r0, [r3, #0xc]
	ldrh r0, [r3, #0xa]
	subs r0, #0x1c
	strh r0, [r3, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0805C89C
	movs r0, #0
	strh r0, [r3, #0xe]
	ldr r0, _0805C878 @ =0x0000FF80
	strh r0, [r3, #0xa]
	b _0805C8F4
	.align 2, 0
_0805C874: .4byte gCurTask
_0805C878: .4byte 0x0000FF80
_0805C87C:
	cmp r0, #0x2d
	ble _0805C8C8
	ldrh r0, [r3, #2]
	adds r0, #0x10
	strh r0, [r3, #2]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0xff
	bls _0805C8AC
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #2]
	movs r0, #0x39
	strh r0, [r3, #0xa]
	movs r0, #0x49
	strh r0, [r3, #0xc]
_0805C89C:
	ldr r0, _0805C8A8 @ =gUnknown_08688650
	adds r1, r3, #0
	bl sub_8052F78
	b _0805C8F4
	.align 2, 0
_0805C8A8: .4byte gUnknown_08688650
_0805C8AC:
	movs r0, #0x29
	strh r0, [r3, #0xa]
	lsrs r1, r1, #0x13
	movs r0, #0x54
	subs r0, r0, r1
	strh r0, [r3, #0xc]
	ldr r0, _0805C8C4 @ =gUnknown_08688650
	adds r1, r3, #0
	bl sub_8052C84
	b _0805C8F4
	.align 2, 0
_0805C8C4: .4byte gUnknown_08688650
_0805C8C8:
	cmp r0, #0x21
	ble _0805C8F4
	movs r0, #0x29
	strh r0, [r3, #0xa]
	ldrh r1, [r3, #2]
	lsrs r2, r1, #3
	movs r0, #0x54
	subs r0, r0, r2
	strh r0, [r3, #0xc]
	adds r1, #0x10
	strh r1, [r3, #2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xff
	bls _0805C8EC
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #2]
_0805C8EC:
	ldr r0, _0805C8F8 @ =gUnknown_08688650
	adds r1, r3, #0
	bl sub_8052C84
_0805C8F4:
	pop {r0}
	bx r0
	.align 2, 0
_0805C8F8: .4byte gUnknown_08688650

    thumb_func_start TaskDestructor_nullsub_805C8FC
TaskDestructor_nullsub_805C8FC: @ 0x0805C8FC
    bx lr
    .align 2, 0
