.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ This module is very close to Kiki in SA2!

	thumb_func_start CreateEntity_Kiki
CreateEntity_Kiki: @ 0x0801D3DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	adds r6, r1, #0
	mov r8, r2
	mov sb, r3
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r1, sb
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	ldr r0, _0801D4D4 @ =sub_801D4FC
	ldr r1, _0801D4D8 @ =TaskDestructor_EntityShared
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldr r3, _0801D4DC @ =0x0300000C
	adds r5, r4, r3
	movs r2, #0
	movs r7, #0
	strh r6, [r0, #4]
	mov r1, r8
	strh r1, [r0, #6]
	mov r3, sl
	str r3, [r0]
	ldrb r1, [r3]
	strb r1, [r0, #8]
	mov r1, sb
	strb r1, [r0, #9]
	ldr r3, _0801D4E0 @ =0x0300003C
	adds r0, r4, r3
	movs r1, #1
	mov sb, r1
	mov r3, sb
	strb r3, [r0]
	ldr r1, _0801D4E4 @ =0x0300003D
	adds r0, r4, r1
	strb r2, [r0]
	ldr r3, _0801D4E8 @ =0x0300003E
	adds r0, r4, r3
	strb r2, [r0]
	adds r1, #2
	adds r0, r4, r1
	strb r2, [r0]
	mov r3, sl
	ldrb r0, [r3]
	lsls r0, r0, #3
	lsls r6, r6, #8
	adds r0, r0, r6
	strh r0, [r5, #0x16]
	ldrb r0, [r3, #1]
	lsls r0, r0, #3
	mov r1, r8
	lsls r1, r1, #8
	mov r8, r1
	add r0, r8
	strh r0, [r5, #0x18]
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	mov r1, sl
	strb r0, [r1]
	movs r0, #0x14
	str r2, [sp, #4]
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	strh r7, [r5, #8]
	ldr r0, _0801D4EC @ =0x00000191
	strh r0, [r5, #0xa]
	ldr r3, _0801D4F0 @ =0x0300002C
	adds r0, r4, r3
	mov r1, sb
	strb r1, [r0]
	strh r7, [r5, #0x14]
	strh r7, [r5, #0x1c]
	adds r3, #1
	adds r1, r4, r3
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0801D4F4 @ =0x0300002E
	adds r1, r4, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0801D4F8 @ =0x03000031
	adds r4, r4, r1
	ldr r2, [sp, #4]
	strb r2, [r4]
	subs r0, #0x11
	str r0, [r5, #0x28]
	movs r3, #0x80
	lsls r3, r3, #6
	str r3, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801D4D4: .4byte sub_801D4FC
_0801D4D8: .4byte TaskDestructor_EntityShared
_0801D4DC: .4byte 0x0300000C
_0801D4E0: .4byte 0x0300003C
_0801D4E4: .4byte 0x0300003D
_0801D4E8: .4byte 0x0300003E
_0801D4EC: .4byte 0x00000191
_0801D4F0: .4byte 0x0300002C
_0801D4F4: .4byte 0x0300002E
_0801D4F8: .4byte 0x03000031

	thumb_func_start sub_801D4FC
sub_801D4FC: @ 0x0801D4FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0801D5B0 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r5
	mov r8, r0
	ldr r1, _0801D5B4 @ =0x0300000C
	adds r6, r5, r1
	ldr r3, [r0]
	mov sb, r3
	ldrb r2, [r0, #8]
	lsls r2, r2, #3
	ldrh r0, [r0, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	mov r4, r8
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r7, _0801D5B8 @ =0x0300003D
	adds r4, r5, r7
	ldr r0, _0801D5BC @ =0x0300003C
	adds r0, r5, r0
	str r0, [sp]
	ldrb r0, [r0]
	ldrb r3, [r4]
	adds r0, r0, r3
	strb r0, [r4]
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _0801D5C0 @ =gCamera
	ldrh r0, [r3]
	lsrs r7, r2, #0x10
	mov ip, r7
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsrs r2, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #0x18]
	movs r3, #0
	ldrsb r3, [r4, r3]
	mov r0, sb
	movs r1, #4
	ldrsb r1, [r0, r1]
	lsls r0, r1, #3
	cmp r3, r0
	bgt _0801D5D4
	ldr r3, _0801D5C4 @ =0x0300003E
	adds r1, r5, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #1
	ldr r4, [sp]
	strb r0, [r4]
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _0801D5E6
	ldr r7, _0801D5C8 @ =0x0300003F
	adds r1, r5, r7
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0801D5CC @ =0x0300002C
	adds r1, r5, r0
	movs r0, #2
	strb r0, [r1]
	mov r3, sl
	ldr r1, [r3]
	ldr r0, _0801D5D0 @ =sub_801D680
	str r0, [r1, #8]
	b _0801D5E6
	.align 2, 0
_0801D5B0: .4byte gCurTask
_0801D5B4: .4byte 0x0300000C
_0801D5B8: .4byte 0x0300003D
_0801D5BC: .4byte 0x0300003C
_0801D5C0: .4byte gCamera
_0801D5C4: .4byte 0x0300003E
_0801D5C8: .4byte 0x0300003F
_0801D5CC: .4byte 0x0300002C
_0801D5D0: .4byte sub_801D680
_0801D5D4:
	mov r4, sb
	ldrb r0, [r4, #6]
	adds r0, r1, r0
	lsls r0, r0, #3
	cmp r3, r0
	blt _0801D5E6
	movs r0, #0xff
	ldr r7, [sp]
	strb r0, [r7]
_0801D5E6:
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl Coll_Player_Enemy_Attack
	cmp r0, #0
	bne _0801D62A
	ldrh r2, [r6, #0x16]
	adds r0, r2, #0
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0801D622
	movs r3, #0x18
	ldrsh r0, [r6, r3]
	adds r0, #0x80
	cmp r0, #0
	blt _0801D622
	movs r7, #0x18
	ldrsh r1, [r6, r7]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0801D638
_0801D622:
	mov r1, r8
	ldrb r0, [r1, #8]
	mov r3, sb
	strb r0, [r3]
_0801D62A:
	ldr r0, _0801D634 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0801D670
	.align 2, 0
_0801D634: .4byte gCurTask
_0801D638:
	ldr r0, _0801D64C @ =gPlayer
	ldr r0, [r0]
	asrs r0, r0, #8
	cmp r0, r4
	bge _0801D654
	ldr r0, [r6, #0x10]
	ldr r1, _0801D650 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r6, #0x10]
	b _0801D664
	.align 2, 0
_0801D64C: .4byte gPlayer
_0801D650: .4byte 0xFFFFFBFF
_0801D654:
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r6, #0x10]
	adds r0, r2, #0
	subs r0, #8
	strh r0, [r6, #0x16]
_0801D664:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_0801D670:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_801D680
sub_801D680: @ 0x0801D680
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0801D6F4 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	ldr r1, _0801D6F8 @ =0x0300000C
	adds r4, r3, r1
	ldr r7, [r6]
	ldrb r1, [r6, #8]
	lsls r1, r1, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldrb r2, [r7, #1]
	lsls r2, r2, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r5, _0801D6FC @ =0x0300003D
	adds r3, r3, r5
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldr r3, _0801D700 @ =gCamera
	ldrh r0, [r3]
	lsrs r5, r1, #0x10
	mov r8, r5
	asrs r5, r1, #0x10
	subs r0, r5, r0
	strh r0, [r4, #0x16]
	ldrh r0, [r3, #2]
	lsrs r1, r2, #0x10
	mov sb, r1
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	adds r1, r5, #0
	bl Coll_Player_Enemy_Attack
	cmp r0, #0
	beq _0801D704
	mov r2, sl
	ldr r0, [r2]
	bl TaskDestroy
	b _0801D7E6
	.align 2, 0
_0801D6F4: .4byte gCurTask
_0801D6F8: .4byte 0x0300000C
_0801D6FC: .4byte 0x0300003D
_0801D700: .4byte gCamera
_0801D704:
	ldrh r2, [r4, #0x16]
	adds r0, r2, #0
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0801D72A
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0801D72A
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0801D73C
_0801D72A:
	ldrb r0, [r6, #8]
	strb r0, [r7]
	ldr r0, _0801D738 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0801D7E6
	.align 2, 0
_0801D738: .4byte gCurTask
_0801D73C:
	ldr r0, _0801D750 @ =gPlayer
	ldr r0, [r0]
	asrs r0, r0, #8
	cmp r0, r5
	bge _0801D758
	ldr r0, [r4, #0x10]
	ldr r1, _0801D754 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #0x10]
	b _0801D768
	.align 2, 0
_0801D750: .4byte gPlayer
_0801D754: .4byte 0xFFFFFBFF
_0801D758:
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #0x10]
	adds r0, r2, #0
	subs r0, #8
	strh r0, [r4, #0x16]
_0801D768:
	adds r1, r6, #0
	adds r1, #0x3f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _0801D7DA
	ldr r0, _0801D7B0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801D7B4 @ =sub_801D4FC
	str r0, [r1, #8]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0801D7C0
	mov r1, r8
	lsls r0, r1, #0x10
	ldr r2, _0801D7B8 @ =0xFFEE0000
	adds r0, r0, r2
	asrs r0, r0, #0x10
	mov r5, sb
	lsls r1, r5, #0x10
	ldr r2, _0801D7BC @ =0xFFF80000
	adds r1, r1, r2
	asrs r1, r1, #0x10
	bl CreateKikiProjectile
	b _0801D7DA
	.align 2, 0
_0801D7B0: .4byte gCurTask
_0801D7B4: .4byte sub_801D4FC
_0801D7B8: .4byte 0xFFEE0000
_0801D7BC: .4byte 0xFFF80000
_0801D7C0:
	mov r5, r8
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r0, r1
	asrs r0, r0, #0x10
	mov r2, sb
	lsls r1, r2, #0x10
	ldr r5, _0801D7F4 @ =0xFFF80000
	adds r1, r1, r5
	asrs r1, r1, #0x10
	bl CreateKikiProjectile
_0801D7DA:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0801D7E6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801D7F4: .4byte 0xFFF80000

	thumb_func_start CreateKikiProjectile
CreateKikiProjectile: @ 0x0801D7F8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r0, _0801D860 @ =Task_KikiProjMain
	movs r2, #0x80
	lsls r2, r2, #6
	movs r4, #0
	str r4, [sp]
	movs r1, #0x3c
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r5, #0x32]
	strh r4, [r5, #0x30]
	strh r4, [r5, #0x36]
	strh r6, [r5, #0x38]
	ldr r0, _0801D864 @ =gPlayer
	ldr r0, [r0]
	asrs r1, r0, #8
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _0801D86C
	subs r1, r0, r1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r1, #0xc8
	lsls r1, r1, #2
	bl Div
	rsbs r0, r0, #0
	strh r0, [r5, #0x34]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x3c
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0801D88E
	ldr r0, _0801D868 @ =0x0000FFC4
	b _0801D88C
	.align 2, 0
_0801D860: .4byte Task_KikiProjMain
_0801D864: .4byte gPlayer
_0801D868: .4byte 0x0000FFC4
_0801D86C:
	subs r1, r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r1, #0xc8
	lsls r1, r1, #2
	bl Div
	strh r0, [r5, #0x34]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	ble _0801D88E
	movs r0, #0x3c
_0801D88C:
	strh r0, [r5, #0x34]
_0801D88E:
	movs r2, #0
	movs r1, #0
	strh r6, [r5, #0x16]
	strh r7, [r5, #0x18]
	ldr r0, _0801D8E0 @ =0x06012580
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	strh r1, [r5, #8]
	movs r0, #0xcc
	lsls r0, r0, #1
	strh r0, [r5, #0xa]
	adds r0, r5, #0
	adds r0, #0x20
	strb r2, [r0]
	strh r1, [r5, #0x14]
	strh r1, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x25
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801D8E0: .4byte 0x06012580

	thumb_func_start Task_KikiProjMain
Task_KikiProjMain: @ 0x0801D8E4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	ldr r6, _0801D960 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r0, [r4, #0x32]
	adds r0, #0x28
	movs r5, #0
	strh r0, [r4, #0x32]
	ldrh r0, [r4, #0x34]
	ldrh r1, [r4, #0x36]
	adds r0, r0, r1
	strh r0, [r4, #0x36]
	movs r2, #0x36
	ldrsh r0, [r4, r2]
	movs r1, #0x28
	bl Div
	ldrh r1, [r4, #0x38]
	adds r1, r1, r0
	strh r1, [r4, #0x16]
	ldrh r1, [r4, #0x32]
	lsls r1, r1, #0x10
	asrs r0, r1, #0x18
	ldrh r2, [r4, #0x18]
	adds r0, r0, r2
	strh r0, [r4, #0x18]
	cmp r1, #0
	ble _0801D972
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	movs r2, #0x16
	ldrsh r1, [r4, r2]
	str r5, [sp]
	ldr r2, _0801D964 @ =sa2__sub_801EE64
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F07C
	adds r1, r0, #0
	cmp r1, #0
	bge _0801D972
	ldrh r0, [r4, #0x18]
	adds r0, r0, r1
	strh r0, [r4, #0x18]
	ldrh r1, [r4, #0x30]
	cmp r1, #0
	bne _0801D968
	ldrh r0, [r4, #0x32]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	rsbs r0, r0, #0
	strh r0, [r4, #0x32]
	adds r0, r1, #1
	strh r0, [r4, #0x30]
	b _0801D972
	.align 2, 0
_0801D960: .4byte gCurTask
_0801D964: .4byte sa2__sub_801EE64
_0801D968:
	ldr r1, [r6]
	ldr r0, _0801D9B4 @ =Task_KikiProjSplit
	str r0, [r1, #8]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
_0801D972:
	ldrh r7, [r4, #0x16]
	movs r0, #0x16
	ldrsh r6, [r4, r0]
	ldrh r1, [r4, #0x18]
	mov r8, r1
	movs r2, #0x18
	ldrsh r5, [r4, r2]
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_800B798
	cmp r0, #0
	beq _0801D9BC
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	movs r1, #0
	adds r0, #0x98
	strh r0, [r4, #0xa]
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	bl CreateKikiProjectilePiece
	ldr r0, _0801D9B8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0801D9E0
	.align 2, 0
_0801D9B4: .4byte Task_KikiProjSplit
_0801D9B8: .4byte gCurTask
_0801D9BC:
	ldr r2, _0801D9EC @ =gCamera
	ldrh r0, [r4, #0x16]
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldrh r0, [r4, #0x18]
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	strh r7, [r4, #0x16]
	mov r0, r8
	strh r0, [r4, #0x18]
_0801D9E0:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801D9EC: .4byte gCamera

	thumb_func_start Task_KikiProjSplit
Task_KikiProjSplit: @ 0x0801D9F0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r7, _0801DA28 @ =gCurTask
	ldr r0, [r7]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	adds r4, r2, #0
	ldrh r3, [r2, #0x16]
	mov sb, r3
	ldrh r5, [r2, #0x18]
	mov r8, r5
	ldrh r0, [r2, #0x30]
	adds r1, r0, #1
	strh r1, [r2, #0x30]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x5f
	bls _0801DA2C
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	b _0801DA46
	.align 2, 0
_0801DA28: .4byte gCurTask
_0801DA2C:
	lsls r0, r3, #0x10
	asrs r6, r0, #0x10
	lsls r0, r5, #0x10
	asrs r5, r0, #0x10
	adds r0, r2, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_800B798
	cmp r0, #0
	beq _0801DA52
	adds r0, r6, #0
	adds r1, r5, #0
_0801DA46:
	bl CreateKikiProjectilePiece
	ldr r0, [r7]
	bl TaskDestroy
	b _0801DA78
_0801DA52:
	ldr r2, _0801DA84 @ =gCamera
	ldrh r0, [r4, #0x16]
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldrh r0, [r4, #0x18]
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	mov r0, sb
	strh r0, [r4, #0x16]
	mov r0, r8
	strh r0, [r4, #0x18]
_0801DA78:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801DA84: .4byte gCamera

	thumb_func_start CreateKikiProjectilePiece
CreateKikiProjectilePiece: @ 0x0801DA88
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	ldr r0, _0801DAD0 @ =Task_ProjPieceMain
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _0801DAD4 @ =TaskDestructor_KikiProj
	str r1, [sp]
	movs r1, #0x3c
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r1, #0
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r6, #0x32]
	strh r1, [r6, #0x30]
	ldr r0, _0801DAD8 @ =gPlayer
	ldr r1, [r0]
	asrs r1, r1, #8
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _0801DAE0
	ldr r0, _0801DADC @ =0x0000FFFF
	b _0801DAE2
	.align 2, 0
_0801DAD0: .4byte Task_ProjPieceMain
_0801DAD4: .4byte TaskDestructor_KikiProj
_0801DAD8: .4byte gPlayer
_0801DADC: .4byte 0x0000FFFF
_0801DAE0:
	movs r0, #1
_0801DAE2:
	strh r0, [r6, #0x34]
	movs r5, #0
	movs r4, #0
	strh r7, [r6, #0x16]
	mov r0, r8
	strh r0, [r6, #0x18]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r6, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r6, #0x1a]
	strh r4, [r6, #8]
	movs r0, #0xc9
	lsls r0, r0, #1
	strh r0, [r6, #0xa]
	adds r0, r6, #0
	adds r0, #0x20
	strb r5, [r0]
	strh r4, [r6, #0x14]
	strh r4, [r6, #0x1c]
	adds r1, r6, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x25
	strb r5, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r6, #0x10]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start Task_ProjPieceMain
Task_ProjPieceMain: @ 0x0801DB40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0801DC3C @ =gPlayerBodyPSI+0xC
	mov ip, r0          @ ip = sprPlayer
	ldr r0, _0801DC40 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldrh r1, [r4, #0x16]
	mov r8, r1
	ldrh r2, [r4, #0x18]
	mov sb, r2
	ldr r0, [r4, #0x28]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0801DC16
	mov r2, ip
	ldr r0, [r2, #0x28]
	cmp r0, r1
	beq _0801DC16
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldr r2, _0801DC44 @ =0x0300002C
	adds r1, r5, r2
	movs r6, #0
	ldrsb r6, [r1, r6]
	adds r3, r0, r6
	ldr r2, _0801DC48 @ =gPlayer
	ldr r0, [r2]
	asrs r0, r0, #8
	mov r1, ip
	adds r1, #0x2c
	movs r7, #0
	ldrsb r7, [r1, r7]
	adds r1, r0, r7
	mov sl, r2
	cmp r3, r1
	bgt _0801DBB0
	ldr r2, _0801DC4C @ =0x0300002E
	adds r0, r5, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r6
	adds r0, r3, r0
	cmp r0, r1
	bge _0801DBC2
	cmp r3, r1
	blt _0801DC16
_0801DBB0:
	mov r0, ip
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r1, r0
	cmp r0, r3
	blt _0801DC16
_0801DBC2:
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x2d
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r2, r0, r5
	mov r1, sl
	ldr r0, [r1, #4]
	asrs r0, r0, #8
	mov r1, ip
	adds r1, #0x2d
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r3, r0, r1
	cmp r2, r3
	bgt _0801DBFE
	adds r0, r4, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r3
	bge _0801DC10
	cmp r2, r3
	blt _0801DC16
_0801DBFE:
	mov r0, ip
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r1
	adds r0, r3, r0
	cmp r0, r2
	blt _0801DC16
_0801DC10:
	mov r0, sl
	bl Coll_DamagePlayer
_0801DC16:
	ldr r2, _0801DC50 @ =gCamera
	ldrh r0, [r4, #0x16]
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldrh r0, [r4, #0x18]
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _0801DC54
	ldr r0, _0801DC40 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0801DC62
	.align 2, 0
_0801DC3C: .4byte gPlayerBodyPSI+0xC
_0801DC40: .4byte gCurTask
_0801DC44: .4byte 0x0300002C
_0801DC48: .4byte gPlayer
_0801DC4C: .4byte 0x0300002E
_0801DC50: .4byte gCamera
_0801DC54:
	adds r0, r4, #0
	bl DisplaySprite
	mov r2, r8
	strh r2, [r4, #0x16]
	mov r0, sb
	strh r0, [r4, #0x18]
_0801DC62:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_KikiProj
TaskDestructor_KikiProj: @ 0x0801DC70
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0
