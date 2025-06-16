.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_SkatingStoneDebris
Task_SkatingStoneDebris: @ 0x0808DB9C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _0808DBD4 @ =gCurTask
	ldr r2, [r0]
	ldrh r4, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r4, r0
	adds r0, #0xf0
	adds r0, r4, r0
	str r0, [sp]
	ldrh r0, [r0]
	adds r1, r0, #1
	ldr r5, [sp]
	strh r1, [r5]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bls _0808DBD8
	adds r0, r2, #0
	bl TaskDestroy
	b _0808DDDC
	.align 2, 0
_0808DBD4: .4byte gCurTask
_0808DBD8:
	ldr r0, _0808DDEC @ =0x030000F2
	adds r0, r4, r0
	str r0, [sp, #4]
	ldrh r0, [r0]
	adds r0, #0x28
	ldr r1, [sp, #4]
	strh r0, [r1]
	ldr r2, _0808DDF0 @ =0x030000C0
	adds r7, r4, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r5, [r7, #8]
	adds r0, r0, r5
	strh r0, [r7, #8]
	ldrh r6, [r7, #6]
	ldrh r1, [r7, #8]
	mov r8, r1
	ldr r2, _0808DDF4 @ =gCamera
	mov sl, r2
	ldrh r2, [r2]
	subs r2, r6, r2
	strh r2, [r7, #6]
	mov r5, sl
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	strh r0, [r7, #8]
	ldr r1, [sp]
	ldrh r0, [r1]
	lsls r0, r0, #1
	subs r2, r2, r0
	strh r2, [r7, #6]
	ldrh r0, [r7, #2]
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #2
	cmp r0, r1
	ble _0808DC2A
	adds r5, r1, #0
_0808DC2A:
	strh r5, [r7, #2]
	strh r5, [r7, #4]
	ldrh r0, [r7]
	subs r0, #0x2a
	ldr r2, _0808DDF8 @ =0x000003FF
	ands r0, r2
	strh r0, [r7]
	ldr r0, [r3, #0x10]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r2, _0808DDFC @ =sa2__gUnknown_030054B8
	mov sb, r2
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r3, #0x10]
	orrs r0, r1
	str r0, [r3, #0x10]
	adds r0, r3, #0
	adds r1, r7, #0
	str r3, [sp, #8]
	bl sa2__sub_8004E14
	ldr r3, [sp, #8]
	adds r0, r3, #0
	bl DisplaySprite
	strh r6, [r7, #6]
	mov r0, r8
	strh r0, [r7, #8]
	ldr r1, _0808DE00 @ =0x03000030
	adds r3, r4, r1
	ldr r2, _0808DE04 @ =0x030000CC
	adds r7, r4, r2
	ldr r1, [sp, #4]
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r2, [r7, #8]
	adds r0, r0, r2
	strh r0, [r7, #8]
	ldrh r6, [r7, #6]
	ldrh r1, [r7, #8]
	mov r8, r1
	mov r1, sl
	ldrh r2, [r1]
	subs r2, r6, r2
	str r2, [sp, #0xc]
	strh r2, [r7, #6]
	ldrh r1, [r1, #2]
	mov ip, r1
	mov r2, ip
	subs r0, r0, r2
	strh r0, [r7, #8]
	ldr r1, [sp]
	ldrh r0, [r1]
	ldr r1, [sp, #0xc]
	adds r2, r1, r0
	strh r2, [r7, #6]
	strh r5, [r7, #2]
	strh r5, [r7, #4]
	ldrh r0, [r7]
	adds r0, #0x2a
	ldr r2, _0808DDF8 @ =0x000003FF
	ands r0, r2
	strh r0, [r7]
	ldr r0, [r3, #0x10]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #0x10]
	mov r2, sb
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r3, #0x10]
	orrs r0, r1
	str r0, [r3, #0x10]
	adds r0, r3, #0
	adds r1, r7, #0
	str r3, [sp, #8]
	bl sa2__sub_8004E14
	ldr r3, [sp, #8]
	adds r0, r3, #0
	bl DisplaySprite
	strh r6, [r7, #6]
	mov r0, r8
	strh r0, [r7, #8]
	ldr r1, _0808DE08 @ =0x03000060
	adds r3, r4, r1
	ldr r2, _0808DE0C @ =0x030000D8
	adds r7, r4, r2
	ldr r1, [sp, #4]
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r2, [r7, #8]
	adds r0, r0, r2
	strh r0, [r7, #8]
	ldrh r6, [r7, #6]
	ldrh r1, [r7, #8]
	mov r8, r1
	mov r1, sl
	ldrh r2, [r1]
	subs r2, r6, r2
	str r2, [sp, #0xc]
	strh r2, [r7, #6]
	ldrh r1, [r1, #2]
	mov ip, r1
	mov r2, ip
	subs r0, r0, r2
	strh r0, [r7, #8]
	ldr r1, [sp]
	ldrh r0, [r1]
	lsls r0, r0, #1
	ldr r1, [sp, #0xc]
	adds r2, r1, r0
	strh r2, [r7, #6]
	strh r5, [r7, #2]
	strh r5, [r7, #4]
	ldrh r0, [r7]
	adds r0, #0xe
	ldr r2, _0808DDF8 @ =0x000003FF
	ands r0, r2
	strh r0, [r7]
	ldr r0, [r3, #0x10]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #0x10]
	mov r2, sb
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r3, #0x10]
	orrs r0, r1
	str r0, [r3, #0x10]
	adds r0, r3, #0
	adds r1, r7, #0
	str r3, [sp, #8]
	bl sa2__sub_8004E14
	ldr r3, [sp, #8]
	adds r0, r3, #0
	bl DisplaySprite
	strh r6, [r7, #6]
	mov r0, r8
	strh r0, [r7, #8]
	ldr r1, _0808DE10 @ =0x03000090
	adds r3, r4, r1
	ldr r2, _0808DE14 @ =0x030000E4
	adds r7, r4, r2
	ldr r4, [sp, #4]
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r1, [r7, #8]
	adds r0, r0, r1
	strh r0, [r7, #8]
	ldrh r6, [r7, #6]
	ldrh r2, [r7, #8]
	mov r8, r2
	mov r4, sl
	ldrh r2, [r4]
	subs r2, r6, r2
	strh r2, [r7, #6]
	ldrh r1, [r4, #2]
	subs r0, r0, r1
	strh r0, [r7, #8]
	ldr r1, [sp]
	ldrh r0, [r1]
	subs r2, r2, r0
	strh r2, [r7, #6]
	strh r5, [r7, #2]
	strh r5, [r7, #4]
	ldrh r0, [r7]
	subs r0, #0xe
	ldr r2, _0808DDF8 @ =0x000003FF
	ands r0, r2
	strh r0, [r7]
	ldr r0, [r3, #0x10]
	movs r4, #0x20
	rsbs r4, r4, #0
	ands r0, r4
	str r0, [r3, #0x10]
	mov r5, sb
	ldrb r1, [r5]
	adds r0, r1, #1
	strb r0, [r5]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r3, #0x10]
	orrs r0, r1
	str r0, [r3, #0x10]
	adds r0, r3, #0
	adds r1, r7, #0
	str r3, [sp, #8]
	bl sa2__sub_8004E14
	ldr r3, [sp, #8]
	adds r0, r3, #0
	bl DisplaySprite
	strh r6, [r7, #6]
	mov r0, r8
	strh r0, [r7, #8]
_0808DDDC:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808DDEC: .4byte 0x030000F2
_0808DDF0: .4byte 0x030000C0
_0808DDF4: .4byte gCamera
_0808DDF8: .4byte 0x000003FF
_0808DDFC: .4byte sa2__gUnknown_030054B8
_0808DE00: .4byte 0x03000030
_0808DE04: .4byte 0x030000CC
_0808DE08: .4byte 0x03000060
_0808DE0C: .4byte 0x030000D8
_0808DE10: .4byte 0x03000090
_0808DE14: .4byte 0x030000E4

	thumb_func_start TaskDestructor_SkatingStone
TaskDestructor_SkatingStone: @ 0x0808DE18
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	movs r0, #0xc6
	bl m4aSongNumStop
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start TaskDestructor_SkatingStoneDebris
TaskDestructor_SkatingStoneDebris: @ 0x0808DE34
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #4]
	bl VramFree
	ldr r0, [r4, #0x64]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0
