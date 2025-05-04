.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 01
	thumb_func_start Task_PenMk1Snowball
Task_PenMk1Snowball: @ 0x08073F84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r0, _08074010 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0     @ r6 = s
	mov r8, r6          @ r8 = proj = s
	ldr r1, _08074014 @ =0x0300004B
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08073FAE
	ldrh r0, [r6, #0x32]
	adds r0, #0x3c
	strh r0, [r6, #0x32]
_08073FAE:
	movs r2, #0x30
	ldrsh r0, [r6, r2]
	ldr r1, [r6, #0x34]
	adds r1, r1, r0
	str r1, [r6, #0x34]
	movs r7, #0x32
	ldrsh r0, [r6, r7]
	ldr r2, [r6, #0x38]
	adds r2, r2, r0
	str r2, [r6, #0x38]
	ldr r0, [r6, #0x3c]
	asrs r1, r1, #8
	adds r0, r0, r1
	strh r0, [r6, #0x16]
	ldr r0, [r6, #0x44]
	asrs r2, r2, #8
	adds r0, r0, r2
	strh r0, [r6, #0x18]
	ldrh r0, [r6, #0x16]
	mov sl, r0
	ldrh r1, [r6, #0x18]
	str r1, [sp, #0xc]
	ldr r5, _08074018 @ =gSineTable
	ldr r2, _0807401C @ =0x0300004A
	adds r4, r3, r2
	ldrb r0, [r4]
	ldr r7, _08074020 @ =0x000003FF
	mov sb, r7
	lsls r0, r0, #3
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r7, #0x17
	adds r1, r7, #0
	bl Div
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _0807402C
	movs r2, #0x30
	ldrsh r0, [r6, r2]
	adds r0, r1, r0
	ldr r1, _08074024 @ =0x0000FFFE
	cmp r0, r1
	ble _0807402C
	ldr r0, _08074028 @ =0x0000FFFF
	strh r0, [r6, #0x30]
	b _08074048
	.align 2, 0
_08074010: .4byte gCurTask
_08074014: .4byte 0x0300004B
_08074018: .4byte gSineTable
_0807401C: .4byte 0x0300004A
_08074020: .4byte 0x000003FF
_08074024: .4byte 0x0000FFFE
_08074028: .4byte 0x0000FFFF
_0807402C:
	ldrb r0, [r4]
	lsls r0, r0, #2
	mov r1, sb
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, r7, #0
	bl Div
	ldrh r1, [r6, #0x30]
	adds r1, r1, r0
	strh r1, [r6, #0x30]
_08074048:
	ldr r1, _080740AC @ =gSineTable
	mov r4, r8
	adds r4, #0x4a
	ldrb r0, [r4]
	lsls r0, r0, #3
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0xfa
	lsls r1, r1, #2
	bl Div
	mov r2, r8
	ldr r1, [r2, #0x38]
	adds r1, r1, r0
	str r1, [r2, #0x38]
	mov r7, r8
	adds r7, #0x48
	ldrh r0, [r7]
	str r4, [sp, #0x10]
	cmp r0, #0
	beq _0807407E
	subs r0, #1
	strh r0, [r7]
_0807407E:
	mov r0, sl
	lsls r5, r0, #0x10
	asrs r1, r5, #0x10
	mov sb, r1
	ldr r2, [sp, #0xc]
	lsls r4, r2, #0x10
	asrs r0, r4, #0x10
	mov sl, r0
	adds r0, r6, #0
	mov r2, sl
	bl Coll_Player_Projectile
	cmp r0, #0
	bne _080740A0
	ldrh r0, [r7]
	cmp r0, #0
	bne _080740B0
_080740A0:
	mov r0, sb
	mov r1, sl
	bl CreatePeMk1SnowballDebris
	b _080741BC
	.align 2, 0
_080740AC: .4byte gSineTable
_080740B0:
	ldr r2, _080740F0 @ =gCamera
	ldrh r0, [r6, #0x16]
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r6, #0x16]
	ldrh r0, [r6, #0x18]
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r6, #0x18]
	add r1, sp, #8
	str r1, [sp]
	ldr r0, _080740F4 @ =sa2__sub_801EE64
	str r0, [sp, #4]
	mov r0, sl
	mov r1, sb
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F07C
	adds r3, r0, #0
	cmp r3, #0
	ble _080740F8
	mov r0, r8
	adds r0, #0x4b
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #0
	bne _080740EC
	mov r7, r8
	strh r1, [r7, #0x32]
_080740EC:
	movs r0, #1
	b _0807411E
	.align 2, 0
_080740F0: .4byte gCamera
_080740F4: .4byte sa2__sub_801EE64
_080740F8:
	mov r0, r8
	adds r0, #0x4b
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #0
	beq _08074118
	movs r0, #0
	ldr r1, [sp, #0x10]
	strb r0, [r1]
	mov r7, r8
	movs r0, #0x32
	ldrsh r1, [r7, r0]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	bgt _080740A0
_08074118:
	cmp r3, #0
	bge _08074120
	movs r0, #0
_0807411E:
	strb r0, [r2]
_08074120:
	ldrb r2, [r2]
	cmp r2, #0
	bne _08074174
	cmp r3, #0
	bge _08074138
	lsls r1, r3, #8
	mov r7, r8
	ldr r0, [r7, #0x38]
	adds r0, r0, r1
	str r0, [r7, #0x38]
	strh r2, [r7, #0x32]
	b _08074144
_08074138:
	lsls r0, r3, #6
	mov r1, r8
	ldrh r1, [r1, #0x32]
	adds r0, r0, r1
	mov r2, r8
	strh r0, [r2, #0x32]
_08074144:
	add r1, sp, #8
	ldr r7, [sp, #0x10]
	ldrb r0, [r7]
	ldrb r1, [r1]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _0807415E
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_0807415E:
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x3f
	ble _08074170
_08074166:
	asrs r0, r5, #0x10
	asrs r1, r4, #0x10
	bl CreatePeMk1SnowballDebris
	b _080741BC
_08074170:
	ldr r0, [sp, #0x10]
	strb r1, [r0]
_08074174:
	adds r0, r3, #5
	cmp r0, #5
	bhi _08074198
	add r0, sp, #8
	ldrb r1, [r0]
	adds r0, r1, #0
	adds r0, #0x3f
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1c
	bls _08074166
	adds r0, r1, #0
	adds r0, #0x5d
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1c
	bhi _080741CC
	b _08074166
_08074198:
	ldrh r0, [r6, #0x16]
	adds r0, #0x3c
	lsls r0, r0, #0x10
	movs r1, #0xb4
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080741BC
	movs r1, #0x18
	ldrsh r0, [r6, r1]
	adds r0, #0x3c
	cmp r0, #0
	blt _080741BC
	movs r2, #0x18
	ldrsh r1, [r6, r2]
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r1, r0
	ble _080741CC
_080741BC:
	ldr r0, _080741C8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080741D8
	.align 2, 0
_080741C8: .4byte gCurTask
_080741CC:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_080741D8:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
.endif

	thumb_func_start CreatePeMk1SnowballDebris
CreatePeMk1SnowballDebris: @ 0x080741E8
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #8
	mov r8, r0
	mov sb, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	ldr r0, _080742C0 @ =sub_80742E0
	movs r2, #0xc0
	lsls r2, r2, #6
	movs r6, #0
	str r6, [sp]
	movs r1, #0x4c
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	movs r2, #0
	mov sl, r2
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r4, #0x30]
	ldr r0, _080742C4 @ =0x0000FC40
	strh r0, [r4, #0x32]
	str r6, [r4, #0x34]
	str r6, [r4, #0x38]
	mov r3, r8
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #8
	str r0, [r4, #0x3c]
	str r0, [r4, #0x40]
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r2, r0, #8
	str r2, [r4, #0x44]
	ldr r3, _080742C8 @ =0x0300004B
	adds r2, r5, r3
	mov r3, sl
	strb r3, [r2]
	str r6, [sp]
	ldr r2, _080742CC @ =sa2__sub_801EE64
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F07C
	ldr r1, [r4, #0x38]
	adds r1, r1, r0
	str r1, [r4, #0x38]
	mov r0, r8
	strh r0, [r4, #0x16]
	mov r1, sb
	strh r1, [r4, #0x18]
	ldr r0, _080742D0 @ =0x06012620
	str r0, [r4, #4]
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r4, #0x1a]
	strh r6, [r4, #8]
	subs r0, #0x93
	strh r0, [r4, #0xa]
	ldr r2, _080742D4 @ =0x03000020
	adds r0, r5, r2
	mov r3, sl
	strb r3, [r0]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	ldr r0, _080742D8 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	adds r2, #2
	adds r1, r5, r2
	movs r0, #0x10
	strb r0, [r1]
	ldr r3, _080742DC @ =0x03000025
	adds r5, r5, r3
	mov r0, sl
	strb r0, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080742C0: .4byte sub_80742E0
_080742C4: .4byte 0x0000FC40
_080742C8: .4byte 0x0300004B
_080742CC: .4byte sa2__sub_801EE64
_080742D0: .4byte 0x06012620
_080742D4: .4byte 0x03000020
_080742D8: .4byte 0x03000021
_080742DC: .4byte 0x03000025

	thumb_func_start sub_80742E0
sub_80742E0: @ 0x080742E0
	push {r4, r5, lr}
	ldr r0, _08074338 @ =gCurTask
	ldr r3, [r0]
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	ldr r1, [r4, #0x3c]
	adds r1, r1, r0
	str r1, [r4, #0x3c]
	adds r2, r0, #0
	ldr r0, [r4, #0x40]
	subs r0, r0, r2
	str r0, [r4, #0x40]
	asrs r1, r1, #8
	strh r1, [r4, #0x16]
	ldrh r0, [r4, #0x32]
	adds r0, #0x3c
	strh r0, [r4, #0x32]
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	ldrh r1, [r4, #0x16]
	ldr r5, _0807433C @ =gCamera
	ldrh r2, [r5]
	subs r1, r1, r2
	strh r1, [r4, #0x16]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf0
	ble _08074340
	adds r0, r3, #0
	bl TaskDestroy
	b _0807435C
	.align 2, 0
_08074338: .4byte gCurTask
_0807433C: .4byte gCamera
_08074340:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	ldrh r1, [r5]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	adds r0, r4, #0
	bl DisplaySprite
_0807435C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
