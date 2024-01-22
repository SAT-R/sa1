.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start Task_Lava
Task_Lava: @ 0x08093F60
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r3, _08093FFC @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	ldr r7, [r0]
	ldr r2, _08094000 @ =0x0300003C
	adds r0, r1, r2
	ldrb r0, [r0]
	mov sb, r0
	ldr r4, _08094004 @ =0x03000034
	adds r0, r1, r4
	ldrh r0, [r0]
	subs r2, #6
	adds r1, r1, r2
	ldrh r2, [r1]
	mov r4, sb
	lsls r1, r4, #3
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	lsls r2, r2, #8
	adds r0, r0, r2
	ldr r2, _08094008 @ =gCamera
	ldrh r5, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r5
	ldrh r2, [r2, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x10
	adds r1, r1, r0
	movs r0, #0xf8
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _08093FDE
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	adds r0, #0x80
	cmp r0, #0
	blt _08093FDE
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08094050
_08093FDE:
	movs r4, #0
	ldr r6, _0809400C @ =gUnknown_03005AB0
	ldr r5, _08094010 @ =gPlayer
_08093FE4:
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	ldr r2, _08094014 @ =0x0300003A
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r0, #1
	bne _0809402E
	cmp r4, #0
	beq _08094018
	movs r1, #0xa
	ldrsh r0, [r6, r1]
	b _0809401C
	.align 2, 0
_08093FFC: .4byte gCurTask
_08094000: .4byte 0x0300003C
_08094004: .4byte 0x03000034
_08094008: .4byte gCamera
_0809400C: .4byte gUnknown_03005AB0
_08094010: .4byte gPlayer
_08094014: .4byte 0x0300003A
_08094018:
	movs r2, #0xa
	ldrsh r0, [r5, r2]
_0809401C:
	movs r1, #2
	bl Div
	cmp r4, #0
	beq _0809402A
	strh r0, [r6, #0xa]
	b _0809402C
_0809402A:
	strh r0, [r5, #0xa]
_0809402C:
	ldr r3, _08094048 @ =gCurTask
_0809402E:
	adds r4, #1
	ldr r0, _0809404C @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _08093FE4
	mov r4, sb
	strb r4, [r7]
	ldr r0, [r3]
	bl TaskDestroy
	b _0809417E
	.align 2, 0
_08094048: .4byte gCurTask
_0809404C: .4byte gUnknown_03005088
_08094050:
	adds r0, r4, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r4, #0
	ldr r6, _08094078 @ =gUnknown_03005AB0
	ldr r5, _0809407C @ =gPlayer
	movs r0, #0x26
	adds r0, r0, r5
	mov sl, r0
	movs r3, #0x80
_0809406E:
	cmp r4, #0
	beq _08094080
	ldr r0, [r6, #0x10]
	b _08094082
	.align 2, 0
_08094078: .4byte gUnknown_03005AB0
_0809407C: .4byte gPlayer
_08094080:
	ldr r0, [r5, #0x10]
_08094082:
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0809416E
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r1, r0, #0
	cmp r4, #0
	beq _080940A2
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r2, r0
	ble _080940AA
	b _0809416E
_080940A2:
	ldr r0, [r5]
	asrs r0, r0, #8
	cmp r2, r0
	bgt _0809416E
_080940AA:
	asrs r1, r1, #0x10
	ldrb r0, [r7, #5]
	lsls r0, r0, #3
	adds r1, r1, r0
	cmp r4, #0
	beq _080940C0
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r1, r0
	bge _080940C8
	b _0809416E
_080940C0:
	ldr r0, [r5]
	asrs r0, r0, #8
	cmp r1, r0
	blt _0809416E
_080940C8:
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	adds r1, r0, #0
	cmp r4, #0
	beq _080940DE
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _080940E6
	b _0809416E
_080940DE:
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	cmp r2, r0
	bgt _0809416E
_080940E6:
	asrs r1, r1, #0x10
	ldrb r0, [r7, #6]
	lsls r0, r0, #3
	adds r1, r1, r0
	cmp r4, #0
	beq _080940FC
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08094104
	b _0809416E
_080940FC:
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	cmp r1, r0
	blt _0809416E
_08094104:
	cmp r4, #0
	beq _0809410C
	ldr r0, [r6, #0x10]
	b _0809410E
_0809410C:
	ldr r0, [r5, #0x10]
_0809410E:
	ands r0, r3
	cmp r0, #0
	bne _0809416E
	movs r0, #3
	ldrsb r0, [r7, r0]
	cmp r0, #0
	bne _0809415C
	cmp r4, #0
	beq _08094134
	ldr r1, _08094130 @ =gUnknown_03005AD6
	ldrb r0, [r1]
	mvns r0, r0
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08094142
	b _0809416E
	.align 2, 0
_08094130: .4byte gUnknown_03005AD6
_08094134:
	mov r2, sl
	ldrb r0, [r2]
	mvns r0, r0
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0809416E
_08094142:
	ldr r0, _08094154 @ =gPlayer
	cmp r4, #0
	beq _0809414A
	ldr r0, _08094158 @ =gUnknown_03005AB0
_0809414A:
	str r3, [sp]
	bl sub_800C558
	ldr r3, [sp]
	b _0809416E
	.align 2, 0
_08094154: .4byte gPlayer
_08094158: .4byte gUnknown_03005AB0
_0809415C:
	cmp r4, #0
	beq _08094168
	ldr r0, [r6, #0x10]
	orrs r0, r3
	str r0, [r6, #0x10]
	b _0809416E
_08094168:
	ldr r0, [r5, #0x10]
	orrs r0, r3
	str r0, [r5, #0x10]
_0809416E:
	adds r4, #1
	ldr r0, _08094190 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	bge _0809417E
	b _0809406E
_0809417E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08094190: .4byte gUnknown_03005088

	thumb_func_start CreateEntity_Lava
CreateEntity_Lava: @ 0x08094194
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _08094224 @ =Task_Lava
	movs r2, #0x80
	lsls r2, r2, #6
	movs r6, #0
	str r6, [sp]
	movs r1, #0x3f
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	ldr r2, _08094228 @ =0x03000034
	adds r1, r1, r2
	strh r4, [r1]
	ldrh r1, [r0, #6]
	adds r2, #2
	adds r1, r1, r2
	strh r5, [r1]
	ldrh r1, [r0, #6]
	adds r2, #2
	adds r1, r1, r2
	movs r3, #0
	strh r6, [r1]
	ldrh r1, [r0, #6]
	adds r2, #2
	adds r1, r1, r2
	strh r6, [r1]
	ldrh r1, [r0, #6]
	adds r1, r1, r2
	strh r6, [r1]
	ldrh r1, [r0, #6]
	adds r1, r1, r2
	strh r6, [r1]
	ldrh r1, [r0, #6]
	subs r2, #0x3a
	adds r1, r1, r2
	mov r2, r8
	str r2, [r1]
	ldrh r1, [r0, #6]
	ldr r2, _0809422C @ =0x0300003D
	adds r1, r1, r2
	strb r3, [r1]
	ldrh r1, [r0, #6]
	adds r2, #1
	adds r1, r1, r2
	strb r3, [r1]
	ldrh r0, [r0, #6]
	ldr r1, _08094230 @ =0x0300003C
	adds r0, r0, r1
	mov r2, r8
	ldrb r1, [r2]
	strb r1, [r0]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r2]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08094224: .4byte Task_Lava
_08094228: .4byte 0x03000034
_0809422C: .4byte 0x0300003D
_08094230: .4byte 0x0300003C
