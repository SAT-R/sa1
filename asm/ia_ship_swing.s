.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_ShipSwing
CreateEntity_ShipSwing: @ 0x0807F2EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r5, r0, #0
	mov sb, r3
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r2, #0x10
	lsrs r2, r1, #0x10
	str r2, [sp, #0x10]
	mov r0, sb
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	ldr r0, _0807F4A0 @ =Task_ShipSwing
	movs r2, #0xe0
	lsls r2, r2, #7
	ldr r1, _0807F4A4 @ =TaskDestructor_ShipSwing
	str r1, [sp]
	movs r1, #0xa8
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldr r1, _0807F4A8 @ =0x0300000C
	adds r1, r1, r4
	mov sl, r1
	ldr r2, _0807F4AC @ =0x0300003C
	adds r6, r4, r2
	ldr r1, _0807F4B0 @ =0x0300006C
	adds r7, r4, r1
	mov r2, r8
	strh r2, [r0, #4]
	mov r1, sp
	ldrh r1, [r1, #0x10]
	strh r1, [r0, #6]
	str r5, [r0]
	ldrb r1, [r5]
	strb r1, [r0, #8]
	mov r2, sb
	strb r2, [r0, #9]
	ldr r1, _0807F4B4 @ =0x030000A4
	adds r0, r4, r1
	movs r2, #0
	strb r2, [r0]
	adds r1, #3
	adds r0, r4, r1
	strb r2, [r0]
	ldr r2, _0807F4B8 @ =0x0300009C
	adds r0, r4, r2
	movs r1, #0
	str r1, [r0]
	adds r2, #4
	adds r0, r4, r2
	str r1, [r0]
	ldr r1, _0807F4BC @ =0x030000A6
	adds r0, r4, r1
	movs r2, #0
	strb r2, [r0]
	subs r1, #1
	adds r0, r4, r1
	strb r2, [r0]
	ldrb r0, [r5]
	lsls r0, r0, #3
	mov r2, r8
	lsls r2, r2, #8
	adds r0, r0, r2
	mov r1, sl
	strh r0, [r1, #0x16]
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	ldr r2, [sp, #0x10]
	lsls r2, r2, #8
	str r2, [sp, #0x1c]
	adds r0, r0, r2
	strh r0, [r1, #0x18]
	movs r0, #0xfe
	strb r0, [r5]
	movs r0, #0x1e
	bl VramMalloc
	mov r1, sl
	str r0, [r1, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #0x1a]
	movs r2, #0
	strh r2, [r1, #8]
	adds r0, #0xeb
	strh r0, [r1, #0xa]
	ldr r1, _0807F4C0 @ =0x0300002C
	adds r0, r4, r1
	strb r2, [r0]
	movs r1, #0
	mov r0, sl
	strh r1, [r0, #0x14]
	strh r1, [r0, #0x1c]
	ldr r2, _0807F4C4 @ =0x0300002D
	adds r1, r4, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _0807F4C8 @ =0x0300002E
	adds r0, r4, r1
	movs r2, #0x10
	mov sb, r2
	mov r1, sb
	strb r1, [r0]
	ldr r2, _0807F4CC @ =0x03000031
	adds r0, r4, r2
	movs r1, #0
	strb r1, [r0]
	movs r2, #1
	rsbs r2, r2, #0
	mov r0, sl
	str r2, [r0, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r0, #0x10]
	movs r0, #9
	bl VramMalloc
	str r0, [r7, #4]
	movs r2, #0x90
	lsls r2, r2, #3
	strh r2, [r7, #0x1a]
	movs r0, #0
	strh r0, [r7, #8]
	movs r0, #0xf5
	lsls r0, r0, #1
	strh r0, [r7, #0xa]
	ldr r1, _0807F4D0 @ =0x0300008C
	adds r0, r4, r1
	movs r2, #0
	strb r2, [r0]
	movs r0, #0
	strh r0, [r7, #0x14]
	strh r0, [r7, #0x1c]
	ldr r2, _0807F4D4 @ =0x0300008D
	adds r1, r4, r2
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _0807F4D8 @ =0x0300008E
	adds r0, r4, r1
	mov r2, sb
	strb r2, [r0]
	adds r1, #3
	adds r0, r4, r1
	movs r2, #0
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r7, #0x10]
	movs r0, #1
	bl VramMalloc
	str r0, [r6, #4]
	movs r2, #0x90
	lsls r2, r2, #3
	strh r2, [r6, #0x1a]
	movs r0, #0
	strh r0, [r6, #8]
	ldr r0, _0807F4DC @ =0x000001E9
	strh r0, [r6, #0xa]
	ldr r1, _0807F4E0 @ =0x0300005C
	adds r0, r4, r1
	movs r2, #0
	strb r2, [r0]
	movs r0, #0
	strh r0, [r6, #0x14]
	strh r0, [r6, #0x1c]
	ldr r2, _0807F4E4 @ =0x0300005D
	adds r1, r4, r2
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _0807F4E8 @ =0x0300005E
	adds r0, r4, r1
	mov r2, sb
	strb r2, [r0]
	ldr r0, _0807F4EC @ =0x03000061
	adds r4, r4, r0
	movs r1, #0
	strb r1, [r4]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r6, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r6, #0x10]
	mov r0, sl
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807F4A0: .4byte Task_ShipSwing
_0807F4A4: .4byte TaskDestructor_ShipSwing
_0807F4A8: .4byte 0x0300000C
_0807F4AC: .4byte 0x0300003C
_0807F4B0: .4byte 0x0300006C
_0807F4B4: .4byte 0x030000A4
_0807F4B8: .4byte 0x0300009C
_0807F4BC: .4byte 0x030000A6
_0807F4C0: .4byte 0x0300002C
_0807F4C4: .4byte 0x0300002D
_0807F4C8: .4byte 0x0300002E
_0807F4CC: .4byte 0x03000031
_0807F4D0: .4byte 0x0300008C
_0807F4D4: .4byte 0x0300008D
_0807F4D8: .4byte 0x0300008E
_0807F4DC: .4byte 0x000001E9
_0807F4E0: .4byte 0x0300005C
_0807F4E4: .4byte 0x0300005D
_0807F4E8: .4byte 0x0300005E
_0807F4EC: .4byte 0x03000061

	thumb_func_start Task_ShipSwing
Task_ShipSwing: @ 0x0807F4F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	ldr r0, _0807F578 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r0, r1
	str r1, [sp, #0x18]
	ldr r1, _0807F57C @ =0x0300000C
	adds r1, r0, r1
	str r1, [sp]
	ldr r2, _0807F580 @ =0x0300003C
	adds r6, r0, r2
	ldr r3, _0807F584 @ =0x0300006C
	adds r3, r0, r3
	str r3, [sp, #4]
	ldr r7, [sp, #0x18]
	ldr r7, [r7]
	str r7, [sp, #0x14]
	movs r0, #0
	str r0, [sp, #0xc]
	movs r1, #0
	str r1, [sp, #0x10]
	ldr r2, [sp, #0x18]
	ldrb r0, [r2, #8]
	lsls r0, r0, #3
	ldrh r1, [r2, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	ldrh r1, [r2, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x38]
	mov sl, r4
	str r0, [sp, #8]
	ldr r0, _0807F588 @ =gStageTime
	ldr r0, [r0]
	lsls r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #2
	bl Mod
	adds r2, r0, #0
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	bls _0807F594
	ldr r3, _0807F58C @ =0xFFFFFF00
	adds r2, r2, r3
	subs r2, r0, r2
	ldr r0, _0807F590 @ =gSineTable
	lsls r1, r2, #2
	adds r1, r1, r0
	ldrh r1, [r1]
	lsrs r3, r1, #8
	adds r5, r0, #0
	b _0807F5A8
	.align 2, 0
_0807F578: .4byte gCurTask
_0807F57C: .4byte 0x0300000C
_0807F580: .4byte 0x0300003C
_0807F584: .4byte 0x0300006C
_0807F588: .4byte gStageTime
_0807F58C: .4byte 0xFFFFFF00
_0807F590: .4byte gSineTable
_0807F594:
	ldr r1, _0807F680 @ =gSineTable
	lsls r0, r2, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r5, r1, #0
_0807F5A8:
	adds r0, r2, #0
	subs r0, #0x7e
	ldr r1, _0807F684 @ =0x000001FF
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x17
	ands r0, r1
	lsls r0, r0, #1
	lsls r1, r0, #1
	adds r1, r1, r5
	movs r2, #0
	ldrsh r7, [r1, r2]
	mov sb, r7
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	mov r8, r1
	ldr r5, _0807F688 @ =gCamera
	ldrh r0, [r5]
	lsls r4, r4, #0x10
	asrs r2, r4, #0x10
	subs r0, r2, r0
	ldr r3, [sp]
	strh r0, [r3, #0x16]
	ldrh r0, [r5, #2]
	ldr r7, [sp, #0x38]
	lsls r3, r7, #0x10
	asrs r1, r3, #0x10
	subs r0, r1, r0
	ldr r7, [sp]
	strh r0, [r7, #0x18]
	ldrh r0, [r5]
	subs r2, r2, r0
	ldr r0, [sp, #4]
	strh r2, [r0, #0x16]
	ldrh r0, [r5, #2]
	subs r1, r1, r0
	ldr r2, [sp, #4]
	strh r1, [r2, #0x18]
	mov r7, sl
	lsls r0, r7, #0x10
	asrs r2, r0, #0x10
	movs r0, #0
	ldrsh r1, [r5, r0]
	movs r7, #0xb8
	lsls r7, r7, #1
	adds r0, r1, r7
	str r4, [sp, #0x24]
	str r3, [sp, #0x28]
	cmp r2, r0
	bgt _0807F644
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _0807F644
	ldr r1, [sp, #8]
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	movs r3, #2
	ldrsh r1, [r5, r3]
	subs r7, #0x50
	adds r0, r1, r7
	cmp r2, r0
	bgt _0807F644
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _0807F690
_0807F644:
	ldr r1, [sp]
	ldrh r0, [r1, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0807F66C
	ldr r2, [sp]
	movs r3, #0x18
	ldrsh r0, [r2, r3]
	adds r0, #0x80
	cmp r0, #0
	blt _0807F66C
	movs r7, #0x18
	ldrsh r1, [r2, r7]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0807F690
_0807F66C:
	ldr r1, [sp, #0x18]
	ldrb r0, [r1, #8]
	ldr r2, [sp, #0x14]
	strb r0, [r2]
	ldr r0, _0807F68C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0807F950
	.align 2, 0
_0807F680: .4byte gSineTable
_0807F684: .4byte 0x000001FF
_0807F688: .4byte gCamera
_0807F68C: .4byte gCurTask
_0807F690:
	ldr r0, [sp, #4]
	bl DisplaySprite
	movs r5, #0
	movs r4, #0x6e
	ldr r7, _0807F6E4 @ =gCamera
_0807F69C:
	mov r0, sb
	muls r0, r4, r0
	movs r1, #0x64
	bl Div
	ldr r3, [sp, #0xc]
	adds r3, r3, r0
	str r3, [sp, #0xc]
	mov r0, r8
	muls r0, r4, r0
	movs r1, #0x64
	bl Div
	ldr r1, [sp, #0x10]
	adds r1, r1, r0
	str r1, [sp, #0x10]
	ldrh r1, [r7]
	ldr r2, [sp, #0x24]
	asrs r0, r2, #0x10
	subs r0, r0, r1
	ldr r3, [sp, #0xc]
	asrs r1, r3, #0xa
	adds r0, r0, r1
	strh r0, [r6, #0x16]
	ldrh r1, [r7, #2]
	ldr r2, [sp, #0x28]
	asrs r0, r2, #0x10
	subs r0, r0, r1
	ldr r3, [sp, #0x10]
	asrs r1, r3, #0xa
	adds r0, r0, r1
	strh r0, [r6, #0x18]
	cmp r5, #4
	bne _0807F6E8
	movs r0, #0xc0
	b _0807F6EC
	.align 2, 0
_0807F6E4: .4byte gCamera
_0807F6E8:
	movs r0, #0x90
	lsls r0, r0, #3
_0807F6EC:
	strh r0, [r6, #0x1a]
	adds r0, r6, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0807F69C
	ldrh r0, [r6, #0x16]
	ldr r7, [sp]
	strh r0, [r7, #0x16]
	ldrh r0, [r6, #0x18]
	strh r0, [r7, #0x18]
	movs r6, #0
	ldr r0, _0807F72C @ =gUnknown_03005AB0
	mov sl, r0
	ldr r1, _0807F730 @ =gPlayer
	mov sb, r1
	ldr r2, [sp, #0x28]
	asrs r2, r2, #0x10
	str r2, [sp, #0x1c]
	subs r2, #4
	str r2, [sp, #0x20]
	movs r3, #0
	str r3, [sp, #0x34]
_0807F720:
	cmp r6, #0
	beq _0807F734
	mov r7, sl
	ldr r0, [r7, #0x10]
	b _0807F738
	.align 2, 0
_0807F72C: .4byte gUnknown_03005AB0
_0807F730: .4byte gPlayer
_0807F734:
	mov r1, sb
	ldr r0, [r1, #0x10]
_0807F738:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807F742
	b _0807F91A
_0807F742:
	ldr r2, [sp, #0x20]
	lsls r1, r2, #8
	cmp r6, #0
	beq _0807F754
	mov r3, sl
	ldr r0, [r3, #4]
	cmp r1, r0
	bgt _0807F75C
	b _0807F7F8
_0807F754:
	mov r7, sb
	ldr r0, [r7, #4]
	cmp r1, r0
	ble _0807F7F8
_0807F75C:
	ldr r0, [sp, #0x24]
	asrs r1, r0, #0x10
	ldr r3, [sp, #0x28]
	asrs r2, r3, #0x10
	ldr r3, _0807F798 @ =gPlayer
	cmp r6, #0
	beq _0807F76C
	ldr r3, _0807F79C @ =gUnknown_03005AB0
_0807F76C:
	ldr r0, [sp, #4]
	bl sub_800B2BC
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	beq _0807F7A0
	ldr r2, [sp, #0x18]
	adds r2, #0xa7
	ldrb r1, [r2]
	adds r0, r1, #0
	asrs r0, r6
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	bne _0807F7F8
	adds r0, r3, #0
	lsls r0, r6
	orrs r1, r0
	strb r1, [r2]
	b _0807F7F8
	.align 2, 0
_0807F798: .4byte gPlayer
_0807F79C: .4byte gUnknown_03005AB0
_0807F7A0:
	ldr r3, [sp, #0x18]
	adds r3, #0xa7
	ldrb r1, [r3]
	adds r0, r1, #0
	asrs r0, r6
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _0807F7F8
	adds r0, r2, #0
	lsls r0, r6
	bics r1, r0
	strb r1, [r3]
	cmp r6, #0
	beq _0807F7CC
	mov r7, sl
	ldr r0, [r7, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _0807F7D8
_0807F7CC:
	mov r2, sb
	ldr r0, [r2, #0x10]
	movs r3, #9
	rsbs r3, r3, #0
	ands r0, r3
	str r0, [r2, #0x10]
_0807F7D8:
	cmp r6, #0
	beq _0807F7EA
	mov r7, sl
	ldr r0, [r7, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _0807F7F8
_0807F7EA:
	mov r1, sb
	ldr r0, [r1, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, sb
	str r0, [r2, #0x10]
_0807F7F8:
	ldr r0, [sp, #0x18]
	adds r0, #0xa5
	adds r7, r0, r6
	ldrb r0, [r7]
	cmp r0, #0
	beq _0807F80A
	subs r0, #1
	strb r0, [r7]
	b _0807F91A
_0807F80A:
	ldr r3, [sp, #0xc]
	asrs r2, r3, #0xa
	ldr r1, [sp, #0x24]
	asrs r0, r1, #0x10
	adds r0, r0, r2
	mov r8, r0
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	ldr r3, [sp, #0x10]
	asrs r1, r3, #0xa
	ldr r3, [sp, #0x1c]
	adds r0, r3, r1
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	ldr r5, _0807F868 @ =gPlayer
	str r2, [sp, #0x2c]
	str r1, [sp, #0x30]
	cmp r6, #0
	beq _0807F832
	ldr r5, _0807F86C @ =gUnknown_03005AB0
_0807F832:
	ldr r0, [sp]
	adds r1, r4, #0
	adds r2, r3, #0
	adds r3, r5, #0
	bl sub_800B2BC
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	beq _0807F8BE
	ldr r2, [sp, #0x18]
	adds r2, #0xa4
	ldrb r1, [r2]
	adds r0, r1, #0
	asrs r0, r6
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	bne _0807F870
	adds r0, r3, #0
	lsls r0, r6
	orrs r1, r0
	strb r1, [r2]
	ldr r1, [sp, #0x18]
	adds r1, #0x9c
	b _0807F8AE
	.align 2, 0
_0807F868: .4byte gPlayer
_0807F86C: .4byte gUnknown_03005AB0
_0807F870:
	ldr r1, [sp, #0x18]
	adds r1, #0x9c
	ldr r7, [sp, #0x34]
	adds r0, r1, r7
	ldr r0, [r0]
	mov r2, r8
	subs r0, r2, r0
	lsls r2, r0, #8
	cmp r6, #0
	beq _0807F88E
	mov r3, sl
	ldr r0, [r3]
	adds r0, r0, r2
	str r0, [r3]
	b _0807F896
_0807F88E:
	mov r7, sb
	ldr r0, [r7]
	adds r0, r0, r2
	str r0, [r7]
_0807F896:
	ldr r0, [sp, #0x30]
	subs r0, #5
	ldr r2, [sp, #0x1c]
	adds r0, r2, r0
	lsls r0, r0, #8
	cmp r6, #0
	beq _0807F8AA
	mov r3, sl
	str r0, [r3, #4]
	b _0807F8AE
_0807F8AA:
	mov r7, sb
	str r0, [r7, #4]
_0807F8AE:
	ldr r0, [sp, #0x34]
	adds r1, r1, r0
	ldr r2, [sp, #0x24]
	asrs r0, r2, #0x10
	ldr r3, [sp, #0x2c]
	adds r0, r0, r3
	str r0, [r1]
	b _0807F91A
_0807F8BE:
	ldr r3, [sp, #0x18]
	adds r3, #0xa4
	ldrb r1, [r3]
	adds r0, r1, #0
	asrs r0, r6
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _0807F91A
	adds r0, r2, #0
	lsls r0, r6
	bics r1, r0
	strb r1, [r3]
	movs r0, #5
	strb r0, [r7]
	cmp r6, #0
	beq _0807F8EE
	mov r7, sl
	ldr r0, [r7, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _0807F8FA
_0807F8EE:
	mov r2, sb
	ldr r0, [r2, #0x10]
	movs r3, #9
	rsbs r3, r3, #0
	ands r0, r3
	str r0, [r2, #0x10]
_0807F8FA:
	cmp r6, #0
	beq _0807F90C
	mov r7, sl
	ldr r0, [r7, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _0807F91A
_0807F90C:
	mov r1, sb
	ldr r0, [r1, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, sb
	str r0, [r2, #0x10]
_0807F91A:
	ldr r3, [sp, #0x34]
	adds r3, #4
	str r3, [sp, #0x34]
	adds r6, #1
	ldr r0, _0807F960 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r6, r0
	bge _0807F930
	b _0807F720
_0807F930:
	ldr r0, [sp]
	bl DisplaySprite
	ldr r7, [sp]
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r7, #0x10]
	ldr r0, [sp]
	bl DisplaySprite
	ldr r0, [r7, #0x10]
	ldr r1, _0807F964 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r7, #0x10]
_0807F950:
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807F960: .4byte gUnknown_03005088
_0807F964: .4byte 0xFFFFFBFF

	thumb_func_start TaskDestructor_ShipSwing
TaskDestructor_ShipSwing: @ 0x0807F968
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x10]
	bl VramFree
	ldr r0, [r4, #0x40]
	bl VramFree
	ldr r0, [r4, #0x70]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
