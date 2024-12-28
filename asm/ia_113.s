.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start Task_Interactable113
Task_Interactable113: @ 0x08096B20
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r4, _08096B90 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov ip, r1
	ldr r0, [r1]
	mov r8, r0
	ldrb r2, [r1, #8]
	lsls r2, r2, #3
	ldrh r0, [r1, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	mov r3, r8
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	mov r3, ip
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _08096B94 @ =gCamera
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldrh r0, [r3, #2]
	lsrs r3, r1, #0x10
	mov sb, r3
	asrs r1, r1, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp]
	movs r5, #0
	adds r7, r2, #0
	ldr r6, _08096B98 @ =gPartner
	ldr r4, _08096B9C @ =gPlayer
_08096B80:
	cmp r5, #0
	beq _08096BA0
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r7, r0
	ble _08096BA8
	b _08096C6C
	.align 2, 0
_08096B90: .4byte gCurTask
_08096B94: .4byte gCamera
_08096B98: .4byte gPartner
_08096B9C: .4byte gPlayer
_08096BA0:
	ldr r0, [r4]
	asrs r0, r0, #8
	cmp r7, r0
	bgt _08096C6C
_08096BA8:
	mov r1, r8
	ldrb r0, [r1, #5]
	lsls r0, r0, #3
	adds r1, r7, r0
	cmp r5, #0
	beq _08096BBE
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08096BC6
	b _08096C6C
_08096BBE:
	ldr r0, [r4]
	asrs r0, r0, #8
	cmp r1, r0
	blt _08096C6C
_08096BC6:
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r3, r0, #0x10
	adds r1, r0, #0
	cmp r5, #0
	beq _08096BDC
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	cmp r3, r0
	ble _08096BE4
	b _08096C6C
_08096BDC:
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	cmp r3, r0
	bgt _08096C6C
_08096BE4:
	asrs r1, r1, #0x10
	mov r3, r8
	ldrb r0, [r3, #6]
	lsls r0, r0, #3
	adds r1, r1, r0
	cmp r5, #0
	beq _08096BFC
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08096C04
	b _08096C6C
_08096BFC:
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	cmp r1, r0
	blt _08096C6C
_08096C04:
	cmp r5, #0
	beq _08096C0C
	ldr r1, [r6, #0x10]
	b _08096C0E
_08096C0C:
	ldr r1, [r4, #0x10]
_08096C0E:
	movs r0, #0x80
	ands r1, r0
	mov r2, ip
	adds r2, #0x3c
	cmp r1, #0
	bne _08096CC6
	mov r1, ip
	adds r1, #0x3c
	movs r0, #0
	ldrsb r0, [r1, r0]
	asrs r0, r5
	movs r3, #1
	ands r0, r3
	adds r2, r1, #0
	cmp r0, #0
	bne _08096CC6
	adds r0, r3, #0
	lsls r0, r5
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	cmp r5, #0
	beq _08096C48
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r6, #0x10]
	b _08096C52
_08096C48:
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r4, #0x10]
_08096C52:
	cmp r5, #0
	beq _08096C5C
	movs r0, #0
	strh r0, [r6, #0x3a]
	b _08096C5E
_08096C5C:
	strh r5, [r4, #0x3a]
_08096C5E:
	cmp r5, #0
	beq _08096C68
	movs r0, #0
	strh r0, [r6, #0x38]
	b _08096CC6
_08096C68:
	strh r5, [r4, #0x38]
	b _08096CC6
_08096C6C:
	mov r1, ip
	adds r1, #0x3c
	movs r0, #0
	ldrsb r0, [r1, r0]
	asrs r0, r5
	movs r3, #1
	ands r0, r3
	adds r2, r1, #0
	cmp r0, #0
	beq _08096CC6
	adds r1, r3, #0
	lsls r1, r5
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
	cmp r5, #0
	beq _08096C9C
	ldr r0, [r6, #0x10]
	ldr r1, _08096C98 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	b _08096CA4
	.align 2, 0
_08096C98: .4byte 0xFFDFFFFF
_08096C9C:
	ldr r0, [r4, #0x10]
	ldr r1, _08096CB8 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
_08096CA4:
	ldr r0, _08096CBC @ =gUnknown_030060E0
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	orrs r1, r0
	cmp r5, #0
	beq _08096CC0
	ldrh r0, [r6, #0x38]
	orrs r1, r0
	strh r1, [r6, #0x38]
	b _08096CC6
	.align 2, 0
_08096CB8: .4byte 0xFFDFFFFF
_08096CBC: .4byte gUnknown_030060E0
_08096CC0:
	ldrh r0, [r4, #0x38]
	orrs r1, r0
	strh r1, [r4, #0x38]
_08096CC6:
	adds r5, #1
	ldr r1, _08096D24 @ =gNumSingleplayerCharacters
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r5, r0
	bge _08096CD4
	b _08096B80
_08096CD4:
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne _08096D14
	mov r2, sl
	lsls r0, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #0x10
	adds r0, r0, r3
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08096D04
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	adds r0, #0x80
	cmp r0, #0
	blt _08096D04
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08096D14
_08096D04:
	mov r2, ip
	ldrb r0, [r2, #8]
	mov r3, r8
	strb r0, [r3]
	ldr r1, _08096D28 @ =gCurTask
	ldr r0, [r1]
	bl TaskDestroy
_08096D14:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08096D24: .4byte gNumSingleplayerCharacters
_08096D28: .4byte gCurTask

	thumb_func_start CreateEntity_Interactable113
CreateEntity_Interactable113: @ 0x08096D2C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08096D90 @ =Task_Interactable113
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	movs r3, #0
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, r8
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #8]
	strb r6, [r0, #9]
	ldr r4, _08096D94 @ =0x0300003C
	adds r2, r2, r4
	strb r3, [r2]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r4, r8
	strb r0, [r4]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08096D90: .4byte Task_Interactable113
_08096D94: .4byte 0x0300003C
