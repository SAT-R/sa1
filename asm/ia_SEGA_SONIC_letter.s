.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_SEGA_SONIC_Letter
CreateEntity_SEGA_SONIC_Letter: @ 0x0807EA84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov r8, r0
	adds r6, r1, #0
	mov sb, r2
	mov sl, r3
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, sb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r1, sl
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	ldr r1, _0807EBAC @ =gUnknown_086CED90
	add r0, sp, #4
	movs r2, #6
	bl memcpy
	ldr r0, _0807EBB0 @ =Task_SEGA_SONIC_Letter
	ldr r1, _0807EBB4 @ =TaskDestructor_SEGA_SONIC_Letter
	str r1, [sp]
	movs r1, #0x44
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldr r2, _0807EBB8 @ =0x0300000C
	adds r5, r4, r2
	movs r7, #0
	strh r6, [r0, #4]
	mov r3, sb
	strh r3, [r0, #6]
	mov r1, r8
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #8]
	mov r2, sl
	strb r2, [r0, #9]
	mov r3, r8
	ldrb r0, [r3, #3]
	ldr r1, _0807EBBC @ =0x0300003C
	adds r1, r1, r4
	mov sl, r1
	strb r0, [r1]
	ldr r2, _0807EBC0 @ =0x0300003D
	adds r0, r4, r2
	movs r3, #0
	strb r3, [r0]
	mov r0, r8
	ldrb r2, [r0, #4]
	movs r0, #3
	adds r1, r0, #0
	ands r1, r2
	ldr r3, _0807EBC4 @ =0x0300003E
	adds r2, r4, r3
	strb r1, [r2]
	mov r2, r8
	ldrb r1, [r2, #4]
	ands r0, r1
	lsls r0, r0, #1
	add r0, sp
	adds r0, #4
	ldrh r0, [r0]
	subs r0, #0xa1
	asrs r0, r0, #1
	adds r3, #1
	adds r1, r4, r3
	strb r0, [r1]
	ldrb r1, [r2, #5]
	ldr r2, _0807EBC8 @ =0x03000040
	adds r0, r4, r2
	strb r1, [r0]
	mov r3, r8
	ldrb r0, [r3]
	lsls r0, r0, #3
	lsls r6, r6, #8
	adds r0, r0, r6
	strh r0, [r5, #0x16]
	ldrb r0, [r3, #1]
	lsls r0, r0, #3
	mov r1, sb
	lsls r1, r1, #8
	mov sb, r1
	add r0, sb
	strh r0, [r5, #0x18]
	movs r0, #0xfe
	strb r0, [r3]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	strh r7, [r5, #8]
	movs r0, #0xf6
	lsls r0, r0, #1
	strh r0, [r5, #0xa]
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #2
	ldr r3, _0807EBCC @ =0x0300002C
	adds r1, r4, r3
	strb r0, [r1]
	strh r7, [r5, #0x14]
	strh r7, [r5, #0x1c]
	ldr r0, _0807EBD0 @ =0x0300002D
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r2, _0807EBD4 @ =0x0300002E
	adds r1, r4, r2
	movs r0, #0x10
	strb r0, [r1]
	adds r3, #5
	adds r4, r4, r3
	movs r0, #0
	strb r0, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807EBAC: .4byte gUnknown_086CED90
_0807EBB0: .4byte Task_SEGA_SONIC_Letter
_0807EBB4: .4byte TaskDestructor_SEGA_SONIC_Letter
_0807EBB8: .4byte 0x0300000C
_0807EBBC: .4byte 0x0300003C
_0807EBC0: .4byte 0x0300003D
_0807EBC4: .4byte 0x0300003E
_0807EBC8: .4byte 0x03000040
_0807EBCC: .4byte 0x0300002C
_0807EBD0: .4byte 0x0300002D
_0807EBD4: .4byte 0x0300002E

	thumb_func_start Task_SEGA_SONIC_Letter
Task_SEGA_SONIC_Letter: @ 0x0807EBD8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r1, _0807EC68 @ =gUnknown_086CED90
	mov r0, sp
	movs r2, #6
	bl memcpy
	ldr r0, _0807EC6C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	adds r0, #0xc
	adds r7, r4, r0
	ldr r1, [r5]
	mov sl, r1
	ldrb r2, [r5, #8]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _0807EC70 @ =gCamera
	ldrh r0, [r3]
	lsrs r6, r2, #0x10
	str r6, [sp, #8]
	asrs r2, r2, #0x10
	mov sb, r2
	subs r0, r2, r0
	strh r0, [r7, #0x16]
	ldrh r2, [r3, #2]
	lsrs r3, r1, #0x10
	str r3, [sp, #0xc]
	asrs r1, r1, #0x10
	mov r8, r1
	subs r2, r1, r2
	strh r2, [r7, #0x18]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0807EC58
	movs r6, #0x18
	ldrsh r0, [r7, r6]
	adds r0, #0x80
	cmp r0, #0
	blt _0807EC58
	lsls r1, r2, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _0807EC74
_0807EC58:
	ldrb r0, [r5, #8]
	mov r1, sl
	strb r0, [r1]
	ldr r0, _0807EC6C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0807EE02
	.align 2, 0
_0807EC68: .4byte gUnknown_086CED90
_0807EC6C: .4byte gCurTask
_0807EC70: .4byte gCamera
_0807EC74:
	movs r2, #0
	mov sl, r2
	ldr r2, _0807ECC0 @ =gStageTime
	ldr r3, _0807ECC4 @ =0x03000040
	adds r0, r4, r3
	ldrb r1, [r0]
	ldr r0, [r2]
	subs r0, r0, r1
	ldr r6, _0807ECC8 @ =0x0300003E
	adds r5, r4, r6
	ldrb r1, [r5]
	lsls r1, r1, #1
	add r1, sp
	ldrh r1, [r1]
	bl Mod
	adds r1, r0, #0
	cmp r1, #0x39
	bhi _0807ECD4
	movs r0, #1
	mov sl, r0
	cmp r1, #0
	beq _0807ECA4
	b _0807EDC6
_0807ECA4:
	movs r1, #0
	mov sl, r1
	ldr r2, _0807ECCC @ =0x0300002D
	adds r1, r4, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r3, _0807ECD0 @ =0x0300003C
	adds r0, r4, r3
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, #1
	subs r6, #0x12
	b _0807ED40
	.align 2, 0
_0807ECC0: .4byte gStageTime
_0807ECC4: .4byte 0x03000040
_0807ECC8: .4byte 0x0300003E
_0807ECCC: .4byte 0x0300002D
_0807ECD0: .4byte 0x0300003C
_0807ECD4:
	ldr r2, _0807ED04 @ =0x0300003F
	adds r0, r4, r2
	ldrb r2, [r0]
	adds r3, r2, #0
	adds r3, #0x3a
	cmp r1, r3
	bhs _0807ED14
	movs r3, #1
	mov sl, r3
	cmp r1, #0x3a
	bne _0807EDC6
	ldr r6, _0807ED08 @ =0x0300002D
	adds r1, r4, r6
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _0807ED0C @ =0x0300003C
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, #3
	ldr r2, _0807ED10 @ =0x0300002C
	adds r1, r4, r2
	strb r0, [r1]
	b _0807EDC6
	.align 2, 0
_0807ED04: .4byte 0x0300003F
_0807ED08: .4byte 0x0300002D
_0807ED0C: .4byte 0x0300003C
_0807ED10: .4byte 0x0300002C
_0807ED14:
	ldrb r0, [r5]
	lsls r0, r0, #1
	add r0, sp
	ldrh r0, [r0]
	subs r0, r0, r2
	cmp r1, r0
	bhs _0807ED54
	movs r6, #1
	mov sl, r6
	cmp r1, r3
	bne _0807EDC6
	movs r0, #0
	mov sl, r0
	ldr r2, _0807ED48 @ =0x0300002D
	adds r1, r4, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r3, _0807ED4C @ =0x0300003C
	adds r0, r4, r3
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r6, _0807ED50 @ =0x0300002C
_0807ED40:
	adds r1, r4, r6
	strb r0, [r1]
	b _0807EDC6
	.align 2, 0
_0807ED48: .4byte 0x0300002D
_0807ED4C: .4byte 0x0300003C
_0807ED50: .4byte 0x0300002C
_0807ED54:
	cmp r1, r0
	bne _0807ED70
	ldr r0, _0807ED9C @ =0x0300002D
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _0807EDA0 @ =0x0300003C
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, #2
	ldr r2, _0807EDA4 @ =0x0300002C
	adds r1, r4, r2
	strb r0, [r1]
_0807ED70:
	movs r4, #0
	ldr r6, _0807EDA8 @ =gPartner
	movs r5, #9
	rsbs r5, r5, #0
_0807ED78:
	ldr r3, _0807EDAC @ =gPlayer
	cmp r4, #0
	beq _0807ED80
	ldr r3, _0807EDA8 @ =gPartner
_0807ED80:
	adds r0, r7, #0
	mov r1, sb
	mov r2, r8
	bl sub_800CE34
	cmp r0, #0
	beq _0807EDB8
	cmp r4, #0
	beq _0807EDB0
	ldr r0, [r6, #0x10]
	ands r0, r5
	str r0, [r6, #0x10]
	b _0807EDB8
	.align 2, 0
_0807ED9C: .4byte 0x0300002D
_0807EDA0: .4byte 0x0300003C
_0807EDA4: .4byte 0x0300002C
_0807EDA8: .4byte gPartner
_0807EDAC: .4byte gPlayer
_0807EDB0:
	ldr r1, _0807EE14 @ =gPlayer
	ldr r0, [r1, #0x10]
	ands r0, r5
	str r0, [r1, #0x10]
_0807EDB8:
	adds r4, #1
	ldr r0, _0807EE18 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _0807ED78
_0807EDC6:
	movs r4, #0
_0807EDC8:
	mov r3, sl
	cmp r3, #1
	bne _0807EDE8
	ldr r6, [sp, #8]
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	ldr r2, [sp, #0xc]
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	ldr r3, _0807EE14 @ =gPlayer
	cmp r4, #0
	beq _0807EDE2
	ldr r3, _0807EE1C @ =gPartner
_0807EDE2:
	adds r0, r7, #0
	bl sub_80096B0
_0807EDE8:
	adds r4, #1
	ldr r0, _0807EE18 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _0807EDC8
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_0807EE02:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807EE14: .4byte gPlayer
_0807EE18: .4byte gUnknown_03005088
_0807EE1C: .4byte gPartner

	thumb_func_start TaskDestructor_SEGA_SONIC_Letter
TaskDestructor_SEGA_SONIC_Letter: @ 0x0807EE20
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0
