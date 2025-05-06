.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
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
