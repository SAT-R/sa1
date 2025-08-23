.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_8057B74
Task_8057B74: @ 0x08057B74
	push {lr}
	ldr r0, _08057BCC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	movs r0, #0x1c
	ldrsh r1, [r2, r0]
	ldr r0, [r2, #0x30]
	adds r0, #0xe6
	cmp r1, r0
	bls _08057BD4
	ldr r0, _08057BD0 @ =gCurrentLevel
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08057BA2
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xb
	ble _08057C14
_08057BA2:
	ldrh r3, [r2, #0xa]
	movs r0, #0xa
	ldrsh r1, [r2, r0]
	movs r0, #0x20
	rsbs r0, r0, #0
	cmp r1, r0
	bge _08057BC4
	adds r0, r3, #0
	adds r0, #0x20
	strh r0, [r2, #0xa]
	ldrh r1, [r2, #0xe]
	movs r3, #0xe
	ldrsh r0, [r2, r3]
	cmp r0, #0
	beq _08057BC4
	subs r0, r1, #1
	strh r0, [r2, #0xe]
_08057BC4:
	ldrh r0, [r2, #0xa]
	subs r0, #0x1a
	strh r0, [r2, #0xa]
	b _08057C14
	.align 2, 0
_08057BCC: .4byte gCurTask
_08057BD0: .4byte gCurrentLevel
_08057BD4:
	cmp r1, #0x31
	ble _08057BE2
	movs r0, #9
	strh r0, [r2, #0xe]
	movs r0, #0x2a
	strh r0, [r2, #0xc]
	b _08057C14
_08057BE2:
	cmp r1, #0x23
	ble _08057BEE
	ldrh r0, [r2, #0xc]
	subs r0, #6
	strh r0, [r2, #0xc]
	b _08057C14
_08057BEE:
	cmp r1, #0x19
	ble _08057BFC
	ldr r0, _08057BF8 @ =0x0000FFF0
	strh r0, [r2, #0xa]
	b _08057C14
	.align 2, 0
_08057BF8: .4byte 0x0000FFF0
_08057BFC:
	cmp r1, #0xf
	ble _08057C14
	ldrh r0, [r2, #0xa]
	subs r0, #0x1a
	strh r0, [r2, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x10
	rsbs r1, r1, #0
	cmp r0, r1
	bge _08057C14
	strh r1, [r2, #0xa]
_08057C14:
	ldr r0, [r2, #0x30]
	adds r0, #0xf0
	ldrh r1, [r2, #0x1c]
	cmp r0, r1
	bhs _08057C2C
	ldr r0, _08057C28 @ =gUnknown_0868841C
	adds r1, r2, #0
	bl sub_8052F78
	b _08057C34
	.align 2, 0
_08057C28: .4byte gUnknown_0868841C
_08057C2C:
	ldr r0, _08057C38 @ =gUnknown_0868841C
	adds r1, r2, #0
	bl sub_80530CC
_08057C34:
	pop {r0}
	bx r0
	.align 2, 0
_08057C38: .4byte gUnknown_0868841C

	thumb_func_start Task_8057C3C
Task_8057C3C: @ 0x08057C3C
	push {r4, lr}
	sub sp, #0x1c
	ldr r1, _08057C88 @ =gUnknown_08688428
	mov r0, sp
	movs r2, #0x19
	bl memcpy
	ldr r0, _08057C8C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r0, #0x1c
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x30]
	adds r0, #0xe6
	cmp r1, r0
	bls _08057C90
	ldrh r0, [r4, #0xa]
	subs r0, #0x1c
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x1f
	rsbs r1, r1, #0
	cmp r0, r1
	bge _08057CDE
	ldrh r1, [r4, #0xe]
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _08057C82
	subs r0, r1, #1
	strh r0, [r4, #0xe]
_08057C82:
	ldrh r0, [r4, #0xa]
	adds r0, #0x20
	b _08057CD0
	.align 2, 0
_08057C88: .4byte gUnknown_08688428
_08057C8C: .4byte gCurTask
_08057C90:
	cmp r1, #0x31
	ble _08057CA0
	movs r0, #0x2c
	strh r0, [r4, #0xc]
	ldrh r2, [r4, #0xa]
	subs r0, r2, #2
	strh r0, [r4, #0xa]
	b _08057CC0
_08057CA0:
	cmp r1, #0x23
	ble _08057CB2
	ldrh r0, [r4, #0xc]
	subs r0, #6
	strh r0, [r4, #0xc]
	ldrh r2, [r4, #0xa]
	subs r0, r2, #2
	strh r0, [r4, #0xa]
	b _08057CC0
_08057CB2:
	cmp r1, #0x19
	ble _08057CEA
	ldrh r2, [r4, #0xa]
	subs r0, r2, #2
	strh r0, [r4, #0xa]
	movs r1, #9
	strh r1, [r4, #0xe]
_08057CC0:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x1f
	rsbs r1, r1, #0
	cmp r0, r1
	bge _08057CDE
	adds r0, r2, #0
	adds r0, #0x1e
_08057CD0:
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0x1e]
	adds r0, #1
	movs r1, #8
	bl Mod
	strh r0, [r4, #0x1e]
_08057CDE:
	ldrh r0, [r4, #0x1e]
	add r0, sp
	adds r1, r4, #0
	bl sub_80530CC
	b _08057D28
_08057CEA:
	cmp r1, #0xf
	ble _08057D28
	ldrh r3, [r4, #0xa]
	adds r0, r3, #0
	subs r0, #0x1c
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0xef
	bgt _08057D28
	asrs r0, r0, #0x15
	movs r1, #9
	subs r1, r1, r0
	strh r1, [r4, #0xe]
	movs r0, #0x1f
	rsbs r0, r0, #0
	cmp r2, r0
	bge _08057D1E
	adds r0, r3, #4
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0x1e]
	adds r0, #1
	movs r1, #8
	bl Mod
	strh r0, [r4, #0x1e]
_08057D1E:
	ldrh r0, [r4, #0x1e]
	add r0, sp
	adds r1, r4, #0
	bl sub_80530CC
_08057D28:
	add sp, #0x1c
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start Task_8057D30
Task_8057D30: @ 0x08057D30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08057D58 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r7, [r5, #0x18]
	ldrh r0, [r5, #0x1c]
	cmp r0, #0x5a
	bls _08057D5C
	subs r0, #0x5a
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	b _08057D5E
	.align 2, 0
_08057D58: .4byte gCurTask
_08057D5C:
	movs r1, #0
_08057D5E:
	ldrh r0, [r5, #0x1c]
	lsls r1, r1, #0x10
	str r1, [sp]
	cmp r0, #0x85
	bls _08057DD6
	movs r6, #0xf
	movs r0, #0x20
	adds r0, r0, r5
	mov r8, r0
_08057D70:
	adds r0, r7, #0
	movs r1, #0xa
	bl Div
	lsls r3, r6, #0x18
	asrs r3, r3, #0x18
	mov r1, r8
	adds r4, r1, r3
	lsls r1, r0, #3
	lsls r2, r0, #1
	adds r1, r1, r2
	subs r1, r7, r1
	adds r1, #0x20
	strb r1, [r4]
	adds r7, r0, #0
	subs r3, #1
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	cmp r3, #0
	bge _08057D70
	movs r6, #0xb
	mov r3, r8
	movs r4, #0x2b
_08057D9E:
	lsls r0, r6, #0x18
	asrs r2, r0, #0x18
	adds r1, r3, r2
	ldrb r0, [r1]
	cmp r0, #0x20
	bne _08057DB8
	strb r4, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xe
	ble _08057D9E
_08057DB8:
	movs r6, #0
	mov r4, r8
	ldr r3, _08057DF0 @ =gUnknown_08688404
_08057DBE:
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	adds r2, r4, r0
	adds r1, r0, r3
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xa
	ble _08057DBE
_08057DD6:
	ldrh r1, [r5, #0x1c]
	ldr r2, [r5, #0x30]
	adds r0, r2, #0
	adds r0, #0xe6
	cmp r1, r0
	bls _08057DF4
	subs r1, #0xe6
	subs r1, r1, r2
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #0x12
	lsrs r7, r0, #0x10
	b _08057DF6
	.align 2, 0
_08057DF0: .4byte gUnknown_08688404
_08057DF4:
	movs r7, #0
_08057DF6:
	ldr r2, [sp]
	asrs r0, r2, #0x10
	cmp r0, #0x96
	ble _08057E7C
	movs r0, #4
	strh r0, [r5, #0x10]
	movs r6, #6
	strh r6, [r5, #0x12]
	movs r0, #0xa
	strh r0, [r5, #0xe]
	movs r0, #0x32
	lsls r1, r7, #0x10
	asrs r4, r1, #0x10
	subs r0, r0, r4
	strh r0, [r5, #0xa]
	movs r1, #0x66
	strh r1, [r5, #0xc]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, #0xb6
	movs r3, #0x20
	adds r3, r3, r5
	mov r8, r3
	cmp r0, r1
	blt _08057E30
	mov r0, r8
	adds r1, r5, #0
	bl sub_80530CC
_08057E30:
	movs r0, #0
	strh r0, [r5, #0x10]
	strh r6, [r5, #0x12]
	movs r0, #1
	strh r0, [r5, #0xe]
	movs r6, #0xb
	subs r4, #0x32
	movs r7, #8
	rsbs r7, r7, #0
_08057E42:
	lsls r0, r6, #0x18
	asrs r2, r0, #0x18
	mov r3, r8
	adds r1, r3, r2
	ldrb r1, [r1]
	adds r6, r0, #0
	cmp r1, #0x2b
	beq _08057E6C
	lsls r0, r2, #3
	subs r0, r0, r4
	strh r0, [r5, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r7
	blt _08057E6C
	adds r0, r2, #0
	adds r0, #0x20
	adds r0, r5, r0
	adds r1, r5, #0
	bl sub_80530CC
_08057E6C:
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r6, r1
	lsrs r6, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xf
	ble _08057E42
	b _0805802A
_08057E7C:
	cmp r0, #0x2c
	ble _08057EF0
	movs r0, #4
	strh r0, [r5, #0x10]
	movs r0, #6
	strh r0, [r5, #0x12]
	movs r0, #0xa
	strh r0, [r5, #0xe]
	movs r0, #0x32
	strh r0, [r5, #0xa]
	movs r0, #0x66
	strh r0, [r5, #0xc]
	adds r4, r5, #0
	adds r4, #0x20
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_80530CC
	movs r6, #0xb
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	mov r8, r4
	lsls r3, r7, #0x10
	cmp r0, #0x2b
	bne _08057EC8
_08057EB0:
	lsls r0, r6, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r0, r2
	lsrs r6, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xe
	bgt _08057EC8
	adds r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0x2b
	beq _08057EB0
_08057EC8:
	movs r0, #0
	strh r0, [r5, #0x10]
	movs r0, #6
	strh r0, [r5, #0x12]
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0xe]
	lsls r2, r0, #3
	asrs r1, r3, #0x10
	subs r1, #0x32
	subs r2, r2, r1
	strh r2, [r5, #0xa]
	adds r0, #0x20
	adds r0, r5, r0
	adds r1, r5, #0
	bl sub_80530CC
	b _0805802A
_08057EF0:
	movs r1, #2
	bl Div
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #0x10
	bls _08057F04
	movs r3, #0x10
	mov sb, r3
_08057F04:
	mov r4, sb
	cmp r4, #0
	bne _08057F0C
	b _0805802A
_08057F0C:
	movs r0, #0
	mov sl, r0
	movs r6, #0
	movs r1, #0x20
	adds r1, r1, r5
	mov r8, r1
	cmp sl, sb
	bge _08057FAC
_08057F1C:
	lsls r2, r6, #0x18
	asrs r3, r2, #0x18
	lsls r1, r3, #1
	ldr r4, [sp]
	asrs r0, r4, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r6, r2, #0
	cmp r3, #0xa
	bgt _08057F36
	movs r0, #4
	b _08057F38
_08057F36:
	movs r0, #0
_08057F38:
	strh r0, [r5, #0x10]
	movs r0, #6
	strh r0, [r5, #0x12]
	lsls r0, r7, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0xc
	ble _08057F56
	mov r1, sl
	lsls r0, r1, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r0, r2
	lsrs r0, r0, #0x18
	mov sl, r0
	b _08057F9E
_08057F56:
	asrs r0, r6, #0x18
	cmp r0, #0xa
	ble _08057F64
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0x2b
	beq _08057F9E
_08057F64:
	movs r0, #1
	strh r0, [r5, #0xe]
	lsls r1, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r4
	adds r0, #0xff
	subs r0, r0, r1
	movs r1, #0x23
	bl Div
	adds r0, #0x5e
	strh r0, [r5, #0xc]
	cmp r4, #0xc
	bne _08057F86
	movs r0, #0x1f
	b _08057F8A
_08057F86:
	adds r0, r4, #0
	adds r0, #0x14
_08057F8A:
	strh r0, [r5, #6]
	asrs r0, r6, #0x18
	lsls r1, r0, #3
	adds r1, #0x2e
	strh r1, [r5, #0xa]
	adds r0, #0x20
	adds r0, r5, r0
	adds r1, r5, #0
	bl sub_8052E40
_08057F9E:
	movs r3, #0x80
	lsls r3, r3, #0x11
	adds r0, r6, r3
	lsrs r6, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, sb
	blt _08057F1C
_08057FAC:
	mov r4, sl
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xb
	ble _0805800A
	movs r6, #0xb
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0x2b
	bne _08057FDC
	mov r1, r8
_08057FC4:
	lsls r0, r6, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r0, r2
	lsrs r6, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xe
	bgt _08057FDC
	adds r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #0x2b
	beq _08057FC4
_08057FDC:
	movs r0, #0
	strh r0, [r5, #0x10]
	movs r0, #6
	strh r0, [r5, #0x12]
	mov r3, sl
	lsls r1, r3, #0x18
	asrs r1, r1, #0x18
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	subs r1, r1, r0
	strh r1, [r5, #0xe]
	movs r1, #0x66
	strh r1, [r5, #0xc]
	lsls r1, r0, #3
	adds r1, #0x32
	strh r1, [r5, #0xa]
	adds r0, #0x20
	adds r0, r5, r0
	adds r1, r5, #0
	bl sub_80530CC
	movs r4, #0xb
	mov sl, r4
_0805800A:
	movs r0, #4
	strh r0, [r5, #0x10]
	movs r0, #6
	strh r0, [r5, #0x12]
	mov r1, sl
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	strh r0, [r5, #0xe]
	movs r0, #0x66
	strh r0, [r5, #0xc]
	movs r0, #0x32
	strh r0, [r5, #0xa]
	mov r0, r8
	adds r1, r5, #0
	bl sub_80530CC
_0805802A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Task_805803C
Task_805803C: @ 0x0805803C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08058064 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r7, [r5, #0x18]
	ldrh r0, [r5, #0x1c]
	cmp r0, #0x3c
	bls _08058068
	subs r0, #0x3c
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	b _0805806A
	.align 2, 0
_08058064: .4byte gCurTask
_08058068:
	movs r1, #0
_0805806A:
	ldrh r0, [r5, #0x1c]
	lsls r1, r1, #0x10
	str r1, [sp, #4]
	cmp r0, #0x85
	bls _080580E2
	movs r6, #0xf
	movs r0, #0x20
	adds r0, r0, r5
	mov sb, r0
_0805807C:
	adds r0, r7, #0
	movs r1, #0xa
	bl Div
	lsls r3, r6, #0x18
	asrs r3, r3, #0x18
	mov r1, sb
	adds r4, r1, r3
	lsls r1, r0, #3
	lsls r2, r0, #1
	adds r1, r1, r2
	subs r1, r7, r1
	adds r1, #0x20
	strb r1, [r4]
	adds r7, r0, #0
	subs r3, #1
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	cmp r3, #0
	bge _0805807C
	movs r6, #0xb
	mov r3, sb
	movs r4, #0x2b
_080580AA:
	lsls r0, r6, #0x18
	asrs r2, r0, #0x18
	adds r1, r3, r2
	ldrb r0, [r1]
	cmp r0, #0x20
	bne _080580C4
	strb r4, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xe
	ble _080580AA
_080580C4:
	movs r6, #0
	mov r4, sb
	ldr r3, _080580FC @ =gUnknown_0868840F
_080580CA:
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	adds r2, r4, r0
	adds r1, r0, r3
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xa
	ble _080580CA
_080580E2:
	ldrh r1, [r5, #0x1c]
	ldr r2, [r5, #0x30]
	adds r0, r2, #0
	adds r0, #0xe6
	cmp r1, r0
	bls _08058100
	subs r1, #0xe6
	subs r1, r1, r2
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #0x12
	lsrs r7, r0, #0x10
	b _08058102
	.align 2, 0
_080580FC: .4byte gUnknown_0868840F
_08058100:
	movs r7, #0
_08058102:
	ldr r2, [sp, #4]
	asrs r0, r2, #0x10
	cmp r0, #0xb4
	ble _08058188
	movs r0, #4
	strh r0, [r5, #0x10]
	movs r6, #6
	strh r6, [r5, #0x12]
	movs r0, #0xa
	strh r0, [r5, #0xe]
	movs r0, #0x32
	lsls r1, r7, #0x10
	asrs r4, r1, #0x10
	subs r0, r0, r4
	strh r0, [r5, #0xa]
	movs r1, #0x50
	strh r1, [r5, #0xc]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, #0xa0
	movs r3, #0x20
	adds r3, r3, r5
	mov sb, r3
	cmp r0, r1
	blt _0805813C
	mov r0, sb
	adds r1, r5, #0
	bl sub_80530CC
_0805813C:
	movs r0, #0
	strh r0, [r5, #0x10]
	strh r6, [r5, #0x12]
	movs r0, #1
	strh r0, [r5, #0xe]
	movs r6, #0xb
	subs r4, #0x32
	movs r7, #8
	rsbs r7, r7, #0
_0805814E:
	lsls r0, r6, #0x18
	asrs r2, r0, #0x18
	mov r3, sb
	adds r1, r3, r2
	ldrb r1, [r1]
	mov r8, r0
	cmp r1, #0x2b
	beq _08058178
	lsls r0, r2, #3
	subs r0, r0, r4
	strh r0, [r5, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r7
	blt _08058178
	adds r0, r2, #0
	adds r0, #0x20
	adds r0, r5, r0
	adds r1, r5, #0
	bl sub_80530CC
_08058178:
	movs r0, #0x80
	lsls r0, r0, #0x11
	add r0, r8
	lsrs r6, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xf
	ble _0805814E
	b _08058332
_08058188:
	cmp r0, #0x2c
	ble _080581FC
	movs r0, #4
	strh r0, [r5, #0x10]
	movs r0, #6
	strh r0, [r5, #0x12]
	movs r0, #0xa
	strh r0, [r5, #0xe]
	movs r0, #0x32
	strh r0, [r5, #0xa]
	movs r0, #0x50
	strh r0, [r5, #0xc]
	adds r4, r5, #0
	adds r4, #0x20
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_80530CC
	movs r6, #0xb
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	mov sb, r4
	lsls r3, r7, #0x10
	cmp r0, #0x2b
	bne _080581D4
_080581BC:
	lsls r0, r6, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r0, r1
	lsrs r6, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xe
	bgt _080581D4
	adds r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0x2b
	beq _080581BC
_080581D4:
	movs r0, #0
	strh r0, [r5, #0x10]
	movs r0, #6
	strh r0, [r5, #0x12]
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0xe]
	lsls r2, r0, #3
	asrs r1, r3, #0x10
	subs r1, #0x32
	subs r2, r2, r1
	strh r2, [r5, #0xa]
	adds r0, #0x20
	adds r0, r5, r0
	adds r1, r5, #0
	bl sub_80530CC
	b _08058332
_080581FC:
	movs r1, #2
	bl Div
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #0x10
	bls _08058210
	movs r2, #0x10
	mov sl, r2
_08058210:
	mov r3, sl
	cmp r3, #0
	bne _08058218
	b _08058332
_08058218:
	movs r4, #0
	str r4, [sp]
	movs r6, #0
	movs r0, #0x20
	adds r0, r0, r5
	mov sb, r0
	cmp r4, sl
	bge _080582B4
_08058228:
	lsls r2, r6, #0x18
	asrs r3, r2, #0x18
	lsls r1, r3, #1
	ldr r4, [sp, #4]
	asrs r0, r4, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r8, r2
	cmp r3, #0xa
	bgt _08058242
	movs r0, #4
	b _08058244
_08058242:
	movs r0, #0
_08058244:
	strh r0, [r5, #0x10]
	movs r0, #6
	strh r0, [r5, #0x12]
	lsls r0, r7, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0xb
	ble _08058262
	ldr r1, [sp]
	lsls r0, r1, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r0, r2
	lsrs r0, r0, #0x18
	str r0, [sp]
	b _080582A6
_08058262:
	mov r3, r8
	asrs r6, r3, #0x18
	cmp r6, #0xa
	ble _08058274
	mov r1, sb
	adds r0, r1, r6
	ldrb r0, [r0]
	cmp r0, #0x2b
	beq _080582A6
_08058274:
	movs r0, #1
	strh r0, [r5, #0xe]
	lsls r1, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r4
	adds r0, #0xff
	subs r0, r0, r1
	movs r1, #0x23
	bl Div
	adds r0, #0x48
	strh r0, [r5, #0xc]
	adds r0, r4, #0
	adds r0, #0x14
	strh r0, [r5, #6]
	lsls r0, r6, #3
	adds r0, #0x2e
	strh r0, [r5, #0xa]
	adds r0, r6, #0
	adds r0, #0x20
	adds r0, r5, r0
	adds r1, r5, #0
	bl sub_8052E40
_080582A6:
	movs r0, #0x80
	lsls r0, r0, #0x11
	add r0, r8
	lsrs r6, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, sl
	blt _08058228
_080582B4:
	ldr r2, [sp]
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xb
	ble _08058312
	movs r6, #0xb
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0x2b
	bne _080582E4
	mov r1, sb
_080582CC:
	lsls r0, r6, #0x18
	movs r3, #0x80
	lsls r3, r3, #0x11
	adds r0, r0, r3
	lsrs r6, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xe
	bgt _080582E4
	adds r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #0x2b
	beq _080582CC
_080582E4:
	movs r0, #0
	strh r0, [r5, #0x10]
	movs r0, #6
	strh r0, [r5, #0x12]
	ldr r4, [sp]
	lsls r1, r4, #0x18
	asrs r1, r1, #0x18
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	subs r1, r1, r0
	strh r1, [r5, #0xe]
	movs r1, #0x50
	strh r1, [r5, #0xc]
	lsls r1, r0, #3
	adds r1, #0x32
	strh r1, [r5, #0xa]
	adds r0, #0x20
	adds r0, r5, r0
	adds r1, r5, #0
	bl sub_80530CC
	movs r0, #0xb
	str r0, [sp]
_08058312:
	movs r0, #4
	strh r0, [r5, #0x10]
	movs r0, #6
	strh r0, [r5, #0x12]
	ldr r1, [sp]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	strh r0, [r5, #0xe]
	movs r0, #0x50
	strh r0, [r5, #0xc]
	movs r0, #0x32
	strh r0, [r5, #0xa]
	mov r0, sb
	adds r1, r5, #0
	bl sub_80530CC
_08058332:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start TaskDestructor_8058344
TaskDestructor_8058344: @ 0x08058344
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x1c]
	bl VramFree
	ldr r0, [r4, #0x20]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0
