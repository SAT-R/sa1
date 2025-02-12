.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ TODO: This does not appear to be exclusive to the "Mini Loop"
	thumb_func_start Task_MiniLoop_Base
Task_MiniLoop_Base: @ 0x0804D8E8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _0804D964 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r7, #0
	mov sb, r2
	ldr r0, _0804D968 @ =gPlayer
	mov r8, r0
	ldr r1, _0804D96C @ =gCamera
	mov ip, r1
_0804D908:
	mov r2, r8
	cmp r7, #0
	beq _0804D910
	ldr r2, _0804D970 @ =gPartner
_0804D910:
	ldr r0, [r2]
	asrs r5, r0, #8
	ldr r0, [r2, #4]
	asrs r6, r0, #8
	mov r0, ip
	movs r1, #0
	ldrsh r3, [r0, r1]
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r1, [r4, #4]
	cmp r1, r0
	bgt _0804D94C
	adds r0, r3, #0
	subs r0, #0x80
	cmp r1, r0
	blt _0804D94C
	mov r0, ip
	movs r1, #2
	ldrsh r3, [r0, r1]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r1, [r4, #8]
	cmp r1, r0
	bgt _0804D94C
	adds r0, r3, #0
	subs r0, #0x80
	cmp r1, r0
	bge _0804D978
_0804D94C:
	ldr r0, [r2, #0x10]
	ldr r1, _0804D974 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r2, #0x10]
	ldr r1, [r4]
	ldrb r0, [r4, #0x1d]
	strb r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	b _0804D9D6
	.align 2, 0
_0804D964: .4byte gCurTask
_0804D968: .4byte gPlayer
_0804D96C: .4byte gCamera
_0804D970: .4byte gPartner
_0804D974: .4byte 0xFFFF7FFF
_0804D978:
	ldr r0, [r4, #0xc]
	cmp r0, r5
	bgt _0804D9C8
	ldr r0, [r4, #0x10]
	cmp r5, r0
	bge _0804D9C8
	ldr r0, [r4, #0x14]
	cmp r0, r6
	bgt _0804D9C8
	ldr r0, [r4, #0x18]
	cmp r6, r0
	bge _0804D9C8
	ldr r3, [r2, #0x10]
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	bne _0804D9D6
	ldr r1, _0804D9E4 @ =0xFFFFFDFF
	ands r1, r3
	str r1, [r2, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r0, r1
	cmp r0, #0
	beq _0804D9BE
	ldr r0, _0804D9E8 @ =0xFFDFFFFF
	ands r1, r0
	str r1, [r2, #0x10]
	ldr r0, _0804D9EC @ =gPlayerControls
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	orrs r1, r0
	ldrh r0, [r2, #0x38]
	orrs r1, r0
	strh r1, [r2, #0x38]
_0804D9BE:
	adds r2, #0x26
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
_0804D9C8:
	adds r7, #1
	ldr r0, _0804D9F0 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r7, r0
	blt _0804D908
_0804D9D6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804D9E4: .4byte 0xFFFFFDFF
_0804D9E8: .4byte 0xFFDFFFFF
_0804D9EC: .4byte gPlayerControls
_0804D9F0: .4byte gNumSingleplayerCharacters

	thumb_func_start CreateEntity_MiniLoop_Base
CreateEntity_MiniLoop_Base: @ 0x0804D9F4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _0804DA78 @ =Task_MiniLoop_Base
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	mov r8, r1
	str r1, [sp]
	movs r1, #0x20
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	str r6, [r1]
	ldrb r0, [r6]
	strb r0, [r1, #0x1d]
	mov r0, r8
	strb r0, [r1, #0x1c]
	lsls r4, r4, #8
	ldrb r0, [r6]
	lsls r0, r0, #3
	adds r4, r4, r0
	lsls r5, r5, #8
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	adds r5, r5, r0
	str r4, [r1, #4]
	str r5, [r1, #8]
	movs r0, #3
	ldrsb r0, [r6, r0]
	lsls r0, r0, #3
	adds r4, r4, r0
	str r4, [r1, #0xc]
	movs r0, #4
	ldrsb r0, [r6, r0]
	lsls r0, r0, #3
	adds r5, r5, r0
	str r5, [r1, #0x14]
	ldrb r0, [r6, #5]
	lsls r0, r0, #3
	adds r4, r4, r0
	str r4, [r1, #0x10]
	ldrb r0, [r6, #6]
	lsls r0, r0, #3
	adds r5, r5, r0
	str r5, [r1, #0x18]
	movs r0, #0xfe
	strb r0, [r6]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804DA78: .4byte Task_MiniLoop_Base
