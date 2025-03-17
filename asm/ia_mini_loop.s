.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start Task_MiniLoop_StartBoost
Task_MiniLoop_StartBoost: @ 0x0804DF50
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _0804DFCC @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r7, #0
	mov sb, r2
	ldr r0, _0804DFD0 @ =gPlayer
	mov r8, r0
	ldr r1, _0804DFD4 @ =gCamera
	mov ip, r1
_0804DF70:
	mov r2, r8
	cmp r7, #0
	beq _0804DF78
	ldr r2, _0804DFD8 @ =gPartner
_0804DF78:
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
	bgt _0804DFB4
	adds r0, r3, #0
	subs r0, #0x80
	cmp r1, r0
	blt _0804DFB4
	mov r0, ip
	movs r1, #2
	ldrsh r3, [r0, r1]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r1, [r4, #8]
	cmp r1, r0
	bgt _0804DFB4
	adds r0, r3, #0
	subs r0, #0x80
	cmp r1, r0
	bge _0804DFE0
_0804DFB4:
	ldr r0, [r2, #0x10]
	ldr r1, _0804DFDC @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r2, #0x10]
	ldr r1, [r4]
	ldrb r0, [r4, #0x1d]
	strb r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	b _0804E016
	.align 2, 0
_0804DFCC: .4byte gCurTask
_0804DFD0: .4byte gPlayer
_0804DFD4: .4byte gCamera
_0804DFD8: .4byte gPartner
_0804DFDC: .4byte 0xFFFF7FFF
_0804DFE0:
	ldr r0, [r4, #0xc]
	cmp r0, r5
	bgt _0804E008
	ldr r0, [r4, #0x10]
	cmp r5, r0
	bge _0804E008
	ldr r0, [r4, #0x14]
	cmp r0, r6
	bgt _0804E008
	ldr r0, [r4, #0x18]
	cmp r6, r0
	bge _0804E008
	ldr r0, [r2, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0804E008
	movs r0, #0x90
	lsls r0, r0, #4
	strh r0, [r2, #0xc]
_0804E008:
	adds r7, #1
	ldr r0, _0804E024 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r7, r0
	blt _0804DF70
_0804E016:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804E024: .4byte gNumSingleplayerCharacters

	thumb_func_start Task_MiniLoop_Exit
Task_MiniLoop_Exit: @ 0x0804E028
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _0804E0A8 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r7, #0
	mov sb, r2
	ldr r0, _0804E0AC @ =gPlayer
	mov r8, r0
	ldr r1, _0804E0B0 @ =gCamera
	mov ip, r1
_0804E04A:
	mov r2, r8
	cmp r7, #0
	beq _0804E052
	ldr r2, _0804E0B4 @ =gPartner
_0804E052:
	ldr r0, [r2]
	asrs r5, r0, #8
	ldr r0, [r2, #4]
	asrs r6, r0, #8
	mov r1, ip
	movs r0, #0
	ldrsh r3, [r1, r0]
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r1, [r4, #4]
	cmp r1, r0
	bgt _0804E08E
	adds r0, r3, #0
	subs r0, #0x80
	cmp r1, r0
	blt _0804E08E
	mov r0, ip
	movs r1, #2
	ldrsh r3, [r0, r1]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r1, [r4, #8]
	cmp r1, r0
	bgt _0804E08E
	adds r0, r3, #0
	subs r0, #0x80
	cmp r1, r0
	bge _0804E0BC
_0804E08E:
	ldr r0, [r2, #0x10]
	ldr r1, _0804E0B8 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r2, #0x10]
	ldr r1, [r4]
	ldrb r0, [r4, #0x1d]
	strb r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	b _0804E0F8
	.align 2, 0
_0804E0A8: .4byte gCurTask
_0804E0AC: .4byte gPlayer
_0804E0B0: .4byte gCamera
_0804E0B4: .4byte gPartner
_0804E0B8: .4byte 0xFFFF7FFF
_0804E0BC:
	ldr r0, [r4, #0xc]
	cmp r0, r5
	bgt _0804E0EA
	ldr r0, [r4, #0x10]
	cmp r5, r0
	bge _0804E0EA
	ldr r0, [r4, #0x14]
	cmp r0, r6
	bgt _0804E0EA
	ldr r0, [r4, #0x18]
	cmp r6, r0
	bge _0804E0EA
	ldr r1, [r2, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0804E0F8
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _0804E0EA
	ldr r0, _0804E108 @ =0x0000F8C0
	strh r0, [r2, #0xc]
_0804E0EA:
	adds r7, #1
	ldr r0, _0804E10C @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r7, r0
	blt _0804E04A
_0804E0F8:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804E108: .4byte 0x0000F8C0
_0804E10C: .4byte gNumSingleplayerCharacters

.if 0
.endif
