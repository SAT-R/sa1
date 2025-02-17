.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_Itembox3
Task_Itembox3: @ 0x0801F044
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0801F0D0 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r7, r3
	ldr r5, [r3]
	ldr r1, _0801F0D4 @ =0x0300006C
	adds r4, r7, r1
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	ldr r0, _0801F0D8 @ =0x03000070
	adds r6, r7, r0
	ldrb r2, [r6]
	adds r2, #1
	strb r2, [r6]
	ldrb r0, [r3, #8]
	lsls r0, r0, #3
	ldrh r1, [r3, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	ldrh r1, [r3, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	ldrh r4, [r4]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #0x3b
	bls _0801F0A4
	mov r1, r8
	ldr r0, [r1]
	ldr r1, _0801F0DC @ =Task_Itembox4
	str r1, [r0, #8]
	movs r0, #0
	strb r0, [r6]
_0801F0A4:
	ldr r5, _0801F0E0 @ =0x0300003C
	adds r0, r7, r5
	ldr r3, _0801F0E4 @ =gCamera
	ldrh r2, [r3]
	mov r5, ip
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r2
	strh r1, [r0, #0x16]
	ldrh r2, [r3, #2]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r2
	strh r1, [r0, #0x18]
	bl DisplaySprite
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801F0D0: .4byte gCurTask
_0801F0D4: .4byte 0x0300006C
_0801F0D8: .4byte 0x03000070
_0801F0DC: .4byte Task_Itembox4
_0801F0E0: .4byte 0x0300003C
_0801F0E4: .4byte gCamera

	thumb_func_start Task_Itembox4
Task_Itembox4: @ 0x0801F0E8
	push {r4, r5, lr}
	ldr r2, _0801F114 @ =gCurTask
	ldr r0, [r2]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r4, r0
	ldr r5, [r3]
	adds r0, #0x70
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bls _0801F118
	ldr r0, [r2]
	bl TaskDestroy
	b _0801F152
	.align 2, 0
_0801F114: .4byte gCurTask
_0801F118:
	ldrb r2, [r3, #8]
	lsls r2, r2, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r5, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	ldr r5, _0801F158 @ =0x0300006C
	adds r3, r4, r5
	adds r1, r1, r0
	ldrh r3, [r3]
	adds r1, r1, r3
	ldr r3, _0801F15C @ =0x0300003C
	adds r0, r4, r3
	ldr r4, _0801F160 @ =gCamera
	ldrh r3, [r4]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r3
	strh r2, [r0, #0x16]
	ldrh r2, [r4, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r2
	strh r1, [r0, #0x18]
	bl DisplaySprite
_0801F152:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801F158: .4byte 0x0300006C
_0801F15C: .4byte 0x0300003C
_0801F160: .4byte gCamera

	thumb_func_start TaskDestructor_ItemBox
TaskDestructor_ItemBox: @ 0x0801F164
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x10]
	bl VramFree
	ldr r0, [r4, #0x40]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0
