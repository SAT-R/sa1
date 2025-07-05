.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start Task_BoulderSpawnerMain
Task_BoulderSpawnerMain: @ 0x0808FE70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _0808FFE8 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r1, r8
	adds r6, r1, r0
	ldr r2, [r6]
	str r2, [sp, #0xc]
	ldrb r0, [r6, #8]
	lsls r0, r0, #3
	ldrh r1, [r6, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	mov r3, sl
	str r3, [sp, #4]
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	ldrh r1, [r6, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r4, sb
	str r4, [sp, #8]
	ldr r0, _0808FFEC @ =gStageTime
	ldr r0, [r0]
	movs r1, #0x78
	bl Mod
	adds r7, r0, #0
	cmp r7, #0
	bne _0808FF8E
	ldr r0, _0808FFF0 @ =Task_BoulderMain
	ldr r1, _0808FFF4 @ =TaskDestructor_Boulder
	str r1, [sp]
	movs r1, #0xbc
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r4, r0
	ldr r2, _0808FFF8 @ =0x0300000C
	adds r5, r4, r2
	ldrh r0, [r6, #4]
	strh r0, [r1, #4]
	ldrh r0, [r6, #6]
	strh r0, [r1, #6]
	ldrb r0, [r6, #8]
	strb r0, [r1, #8]
	ldr r0, _0808FFFC @ =0x030000BB
	add r0, r8
	ldrb r0, [r0]
	strb r0, [r1, #9]
	ldr r3, _08090000 @ =0x0300009C
	adds r0, r4, r3
	str r7, [r0]
	ldr r0, _08090004 @ =0x030000A0
	adds r1, r4, r0
	movs r0, #0x40
	str r0, [r1]
	ldr r1, _08090008 @ =0x030000A4
	adds r0, r4, r1
	str r7, [r0]
	adds r2, #0x9c
	adds r0, r4, r2
	str r7, [r0]
	adds r3, #0x10
	adds r0, r4, r3
	str r7, [r0]
	adds r1, #0xc
	adds r0, r4, r1
	movs r2, #0
	strb r2, [r0]
	ldr r0, _0809000C @ =0x030000B1
	add r0, r8
	ldrb r1, [r0]
	adds r3, #5
	adds r0, r4, r3
	strb r1, [r0]
	mov r0, sl
	strh r0, [r5, #0x16]
	ldr r1, _08090010 @ =0x030000B2
	adds r0, r4, r1
	mov r2, sl
	strh r2, [r0]
	mov r3, sb
	strh r3, [r5, #0x18]
	adds r1, #2
	adds r0, r4, r1
	strh r3, [r0]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	strh r7, [r5, #8]
	ldr r0, _08090014 @ =0x000001C9
	strh r0, [r5, #0xa]
	ldr r2, _08090018 @ =0x0300002C
	adds r0, r4, r2
	movs r3, #0
	strb r3, [r0]
	strh r7, [r5, #0x14]
	strh r7, [r5, #0x1c]
	ldr r0, _0809001C @ =0x0300002D
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	adds r2, #2
	adds r1, r4, r2
	movs r0, #0x10
	strb r0, [r1]
	ldr r3, _08090020 @ =0x03000031
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
_0808FF8E:
	ldr r2, [sp, #4]
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	ldr r3, _08090024 @ =gCamera
	movs r4, #0
	ldrsh r1, [r3, r4]
	movs r4, #0xb8
	lsls r4, r4, #1
	adds r0, r1, r4
	cmp r2, r0
	bgt _0808FFC8
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _0808FFC8
	ldr r1, [sp, #8]
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	movs r4, #2
	ldrsh r1, [r3, r4]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r2, r0
	bgt _0808FFC8
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _0808FFD6
_0808FFC8:
	ldrb r0, [r6, #8]
	ldr r4, [sp, #0xc]
	strb r0, [r4]
	ldr r0, _0808FFE8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0808FFD6:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808FFE8: .4byte gCurTask
_0808FFEC: .4byte gStageTime
_0808FFF0: .4byte Task_BoulderMain
_0808FFF4: .4byte TaskDestructor_Boulder
_0808FFF8: .4byte 0x0300000C
_0808FFFC: .4byte 0x030000BB
_08090000: .4byte 0x0300009C
_08090004: .4byte 0x030000A0
_08090008: .4byte 0x030000A4
_0809000C: .4byte 0x030000B1
_08090010: .4byte 0x030000B2
_08090014: .4byte 0x000001C9
_08090018: .4byte 0x0300002C
_0809001C: .4byte 0x0300002D
_08090020: .4byte 0x03000031
_08090024: .4byte gCamera

.if 0
.endif
