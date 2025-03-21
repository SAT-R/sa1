.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start Task_GrindRailStart
Task_GrindRailStart: @ 0x08023B08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _08023C04 @ =gPlayer
	adds r0, r3, #0
	adds r0, #0x59
	ldrb r0, [r0]
	mov ip, r0
	mov r0, ip
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08023B2A
	b _08023C70
_08023B2A:
	ldr r0, _08023C08 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r7, [r0]
	ldr r1, _08023C0C @ =0x03000008
	adds r0, r2, r1
	ldrb r0, [r0]
	mov sl, r0
	ldr r4, _08023C10 @ =0x03000004
	adds r0, r2, r4
	ldrh r1, [r0]
	ldr r0, _08023C14 @ =0x03000006
	adds r2, r2, r0
	ldrh r2, [r2]
	mov r4, sl
	lsls r0, r4, #3
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	lsls r2, r2, #8
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r6, [r3, #0x10]
	movs r0, #0x80
	ands r0, r6
	cmp r0, #0
	beq _08023B70
	b _08023C70
_08023B70:
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	ldr r0, [r3]
	asrs r4, r0, #8
	mov sb, r1
	lsls r2, r2, #0x10
	mov r8, r2
	cmp r5, r4
	bgt _08023C2A
	ldrb r0, [r7, #5]
	lsls r0, r0, #3
	adds r0, r5, r0
	cmp r0, r4
	blt _08023C2A
	asrs r2, r2, #0x10
	ldr r0, [r3, #4]
	asrs r1, r0, #8
	cmp r2, r1
	bgt _08023C2A
	ldrb r0, [r7, #6]
	lsls r0, r0, #3
	adds r0, r2, r0
	cmp r0, r1
	blt _08023C2A
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r6, #0
	ands r0, r2
	cmp r0, #0
	bne _08023C2A
	movs r1, #0xa
	ldrsh r0, [r3, r1]
	cmp r0, #0
	blt _08023C2A
	ldrh r1, [r3, #8]
	movs r4, #8
	ldrsh r0, [r3, r4]
	cmp r0, #0
	ble _08023C2A
	cmp r0, #0x80
	bge _08023BC4
	movs r1, #0x80
_08023BC4:
	strh r1, [r3, #8]
	orrs r6, r2
	str r6, [r3, #0x10]
	adds r2, r3, #0
	adds r2, #0x27
	ldrb r0, [r2]
	movs r1, #1
	eors r0, r1
	strb r0, [r2]
	ldr r2, _08023C18 @ =gPlayerBodyPSI
	ldr r0, [r2, #0x1c]
	ldr r1, _08023C1C @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r2, #0x1c]
	adds r2, r3, #0
	adds r2, #0x26
	ldrb r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2]
	mov r1, ip
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	bne _08023C20
	movs r0, #0x86
	bl m4aSongNumStart
	b _08023C26
	.align 2, 0
_08023C04: .4byte gPlayer
_08023C08: .4byte gCurTask
_08023C0C: .4byte 0x03000008
_08023C10: .4byte 0x03000004
_08023C14: .4byte 0x03000006
_08023C18: .4byte gPlayerBodyPSI
_08023C1C: .4byte 0xFFFFCFFF
_08023C20:
	movs r0, #0x72
	bl m4aSongNumStart
_08023C26:
	bl CreateGrindEffect
_08023C2A:
	ldr r2, _08023C80 @ =gCamera
	ldrh r0, [r2]
	mov r3, sb
	asrs r1, r3, #0x10
	subs r1, r1, r0
	ldrh r2, [r2, #2]
	mov r4, r8
	asrs r0, r4, #0x10
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x10
	adds r1, r1, r0
	movs r0, #0xf8
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _08023C64
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	adds r0, #0x80
	cmp r0, #0
	blt _08023C64
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08023C70
_08023C64:
	mov r1, sl
	strb r1, [r7]
	ldr r0, _08023C84 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08023C70:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023C80: .4byte gCamera
_08023C84: .4byte gCurTask

	thumb_func_start Task_GrindRailEnd
Task_GrindRailEnd: @ 0x08023C88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08023D60 @ =gPlayer
	mov ip, r0
	adds r0, #0x59
	ldrb r7, [r0]
	subs r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08023CA8
	b _08023EA6_return
_08023CA8:
	ldr r0, _08023D64 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r0, [r0]
	mov r8, r0
	ldr r1, _08023D68 @ =0x03000008
	adds r0, r2, r1
	ldrb r0, [r0]
	mov sl, r0
	ldr r3, _08023D6C @ =0x03000004
	adds r0, r2, r3
	ldrh r1, [r0]
	ldr r4, _08023D70 @ =0x03000006
	adds r2, r2, r4
	ldrh r2, [r2]
	mov r6, sl
	lsls r0, r6, #3
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov r3, r8
	ldrb r0, [r3, #1]
	lsls r0, r0, #3
	lsls r2, r2, #8
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r4, ip
	ldr r3, [r4, #0x10]
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	beq _08023CF4
	b _08023EA6_return
_08023CF4:
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	ldr r0, [r4]
	asrs r4, r0, #8
	str r1, [sp]
	lsls r2, r2, #0x10
	mov sb, r2
	cmp r5, r4
	ble _08023D08
	b _08023E5E
_08023D08:
	mov r6, r8
	ldrb r0, [r6, #5]
	lsls r0, r0, #3
	str r0, [sp, #4]
	adds r0, r5, r0
	cmp r0, r4
	bge _08023D18
	b _08023E5E
_08023D18:
	asrs r2, r2, #0x10
	mov r1, ip
	ldr r0, [r1, #4]
	asrs r1, r0, #8
	cmp r2, r1
	ble _08023D26
	b _08023E5E
_08023D26:
	ldrb r0, [r6, #6]
	lsls r0, r0, #3
	adds r0, r2, r0
	cmp r0, r1
	bge _08023D32
	b _08023E5E
_08023D32:
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r3, r0
	cmp r3, #0
	bne _08023D3E
	b _08023E5E
_08023D3E:
	ldr r3, [sp, #4]
	asrs r0, r3, #1
	adds r0, r5, r0
	cmp r4, r0
	ble _08023DD8
	ldr r0, _08023D74 @ =0x0000FB20
	mov r4, ip
	strh r0, [r4, #0xa]
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	bne _08023D78
	movs r0, #0x86
	bl m4aSongNumStop
	b _08023D7E
	.align 2, 0
_08023D60: .4byte gPlayer
_08023D64: .4byte gCurTask
_08023D68: .4byte 0x03000008
_08023D6C: .4byte 0x03000004
_08023D70: .4byte 0x03000006
_08023D74: .4byte 0x0000FB20
_08023D78:
	movs r0, #0x72
	bl m4aSongNumStop
_08023D7E:
	movs r0, #0x74
	bl m4aSongNumStart
	ldr r4, _08023DC8 @ =gPlayer
	adds r0, r4, #0
	bl Player_TransitionCancelFlyingAndBoost
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x11
	strb r0, [r1]
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	ldr r1, _08023DCC @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	adds r2, r4, #0
	adds r2, #0x27
	ldrb r0, [r2]
	movs r1, #1
	eors r0, r1
	strb r0, [r2]
	adds r4, #0x26
	ldrb r1, [r4]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4]
	ldr r2, _08023DD0 @ =gPlayerBodyPSI
	ldr r0, [r2, #0x1c]
	ldr r1, _08023DD4 @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r2, #0x1c]
	b _08023E5E
	.align 2, 0
_08023DC8: .4byte gPlayer
_08023DCC: .4byte 0xFEFFFFFF
_08023DD0: .4byte gPlayerBodyPSI
_08023DD4: .4byte 0xFFFFCFFF
_08023DD8:
	ldr r0, _08023E00 @ =gInput
	ldr r1, _08023E04 @ =gPlayerControls
	ldrh r2, [r0]
	ldrh r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _08023E5E
	movs r0, #0xf9
	lsls r0, r0, #8
	mov r6, ip
	strh r0, [r6, #0xa]
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	bne _08023E08
	movs r0, #0x86
	bl m4aSongNumStop
	b _08023E0E
	.align 2, 0
_08023E00: .4byte gInput
_08023E04: .4byte gPlayerControls
_08023E08:
	movs r0, #0x72
	bl m4aSongNumStop
_08023E0E:
	movs r0, #0x74
	bl m4aSongNumStart
	ldr r4, _08023EB8 @ =gPlayer
	adds r0, r4, #0
	bl Player_TransitionCancelFlyingAndBoost
	adds r1, r4, #0
	adds r1, #0x40
	movs r2, #0
	movs r0, #0x14
	strb r0, [r1]
	ldr r3, _08023EBC @ =gPlayerBodyPSI
	adds r0, r3, #0
	adds r0, #0x2c
	strb r2, [r0]
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	ldr r1, _08023EC0 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	adds r2, r4, #0
	adds r2, #0x27
	ldrb r0, [r2]
	movs r1, #1
	eors r0, r1
	strb r0, [r2]
	adds r4, #0x26
	ldrb r1, [r4]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4]
	ldr r0, [r3, #0x1c]
	ldr r1, _08023EC4 @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r3, #0x1c]
_08023E5E:
	ldr r2, _08023EC8 @ =gCamera
	ldrh r0, [r2]
	ldr r3, [sp]
	asrs r1, r3, #0x10
	subs r1, r1, r0
	ldrh r2, [r2, #2]
	mov r4, sb
	asrs r0, r4, #0x10
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	movs r6, #0x80
	lsls r6, r6, #0x10
	adds r1, r1, r6
	movs r0, #0xf8
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _08023E98
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	adds r0, #0x80
	cmp r0, #0
	blt _08023E98
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08023EA6_return
_08023E98:
	mov r1, sl
	mov r0, r8
	strb r1, [r0]
	ldr r0, _08023ECC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08023EA6_return:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023EB8: .4byte gPlayer
_08023EBC: .4byte gPlayerBodyPSI
_08023EC0: .4byte 0xFEFFFFFF
_08023EC4: .4byte 0xFFFFCFFF
_08023EC8: .4byte gCamera
_08023ECC: .4byte gCurTask

.if 0
.endif
