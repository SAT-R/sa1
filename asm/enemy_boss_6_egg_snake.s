.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 01
.endif

@ -> Task54
	thumb_func_start Task_8034098
Task_8034098: @ 0x08034098
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08034108 @ =gCurTask
	ldr r5, [r0]
	ldrh r3, [r5, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r2, r3, r1
	ldrh r0, [r5]
	adds r0, r0, r1
	ldrh r4, [r0, #6]
	adds r6, r4, r1
	ldr r0, [r6, #0xc]
	str r0, [sp]
	ldr r0, [r2, #0x38]
	asrs r0, r0, #8
	ldrh r1, [r2, #0x30]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r1, [r2, #0x3c]
	asrs r1, r1, #8
	ldrh r2, [r2, #0x32]
	adds r1, r1, r2
	ldr r2, _0803410C @ =gUnknown_03005870
	ldr r0, _08034110 @ =0x03000052
	adds r3, r3, r0
	ldrb r3, [r3]
	mov r8, r3
	lsls r0, r3, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	ldr r1, _08034114 @ =gCamera
	mov sb, r1
	movs r2, #2
	ldrsh r0, [r1, r2]
	subs r0, r7, r0
	bl __floatsisf
	ldr r1, _08034118 @ =0xC3700000
	bl __ltsf2
	cmp r0, #0
	bge _0803411C
	adds r0, r5, #0
	bl TaskDestroy
	b _080341E2
	.align 2, 0
_08034108: .4byte gCurTask
_0803410C: .4byte gUnknown_03005870
_08034110: .4byte 0x03000052
_08034114: .4byte gCamera
_08034118: .4byte 0xC3700000
_0803411C:
	ldr r3, _08034168 @ =0x03000058
	adds r0, r4, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08034134
	ldr r5, _0803416C @ =0x0300005E
	adds r0, r4, r5
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080341E2
_08034134:
	ldr r0, _08034170 @ =0x03000023
	adds r2, r4, r0
	mov r1, r8
	cmp r1, #0
	beq _08034146
	adds r1, r2, #0
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _08034174
_08034146:
	movs r0, #0xff
	strb r0, [r2]
	mov r2, sb
	ldrh r1, [r2]
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r6, #0x16]
	ldrh r0, [r2, #2]
	subs r0, r7, r0
	strh r0, [r6, #0x18]
	adds r0, r6, #0
	bl DisplaySprite
	b _080341E2
	.align 2, 0
_08034168: .4byte 0x03000058
_0803416C: .4byte 0x0300005E
_08034170: .4byte 0x03000023
_08034174:
	ldrb r0, [r1]
	lsls r0, r0, #3
	ldr r1, _080341F4 @ =gOamBuffer2
	adds r5, r0, r1
	ldrh r1, [r6, #0x1a]
	movs r0, #0xf8
	lsls r0, r0, #3
	ands r0, r1
	lsrs r0, r0, #6
	bl OamMalloc
	adds r4, r0, #0
	ldr r0, _080341F8 @ =iwram_end
	ldr r0, [r0]
	cmp r0, r4
	beq _080341E2
	ldr r0, _080341FC @ =0x040000D4
	str r5, [r0]
	str r4, [r0, #4]
	ldr r1, _08034200 @ =0x80000003
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldrh r0, [r4, #2]
	movs r3, #0xfe
	lsls r3, r3, #8
	ands r3, r0
	strh r3, [r4, #2]
	ldrh r0, [r4]
	movs r2, #0xff
	lsls r2, r2, #8
	ands r2, r0
	strh r2, [r4]
	mov r5, sb
	ldrh r0, [r5, #2]
	subs r0, r7, r0
	ldr r5, [sp]
	ldrh r1, [r5, #0xa]
	subs r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	adds r2, r2, r0
	strh r2, [r4]
	mov r0, sb
	ldrh r1, [r0]
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	ldrh r1, [r5, #8]
	subs r0, r0, r1
	ldr r5, _08034204 @ =0x000001FF
	adds r1, r5, #0
	ands r0, r1
	adds r3, r3, r0
	strh r3, [r4, #2]
_080341E2:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080341F4: .4byte gOamBuffer2
_080341F8: .4byte iwram_end
_080341FC: .4byte 0x040000D4
_08034200: .4byte 0x80000003
_08034204: .4byte 0x000001FF

	thumb_func_start TaskDestructor_8034208
TaskDestructor_8034208: @ 0x08034208
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x10]
	bl VramFree
	ldr r0, [r4, #0x48]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_8034224
TaskDestructor_8034224: @ 0x08034224
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_8034238
TaskDestructor_8034238: @ 0x08034238
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_803424C
sub_803424C: @ 0x0803424C
	ldr r0, _08034264 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _08034268 @ =0x0300000C
	adds r2, r0, r1
	adds r1, #0x38
	adds r0, r0, r1
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	bx lr
	.align 2, 0
_08034264: .4byte gCurTask
_08034268: .4byte 0x0300000C

	thumb_func_start sub_803426C
sub_803426C: @ 0x0803426C
	push {r4, lr}
	ldr r2, _08034294 @ =gCurTask
	ldr r2, [r2]
	ldrh r2, [r2, #6]
	ldr r3, _08034298 @ =0x0300000C
	adds r2, r2, r3
	ldr r4, _0803429C @ =gCamera
	ldrh r3, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r3
	strh r0, [r2, #0x16]
	ldrh r0, [r4, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r2, #0x18]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08034294: .4byte gCurTask
_08034298: .4byte 0x0300000C
_0803429C: .4byte gCamera
