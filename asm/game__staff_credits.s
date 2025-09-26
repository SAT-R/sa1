.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ --- Start of Staff Credits ---

.if 0
.endif

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
