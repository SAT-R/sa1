.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

    @ Not asm-equivalent to SA2!
	thumb_func_start LoadSaveGame
LoadSaveGame: @ 0x0803CD34
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	movs r3, #0
	str r3, [sp]
	ldr r1, _0803CDE8 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r2, _0803CDEC @ =gLoadedSaveGame
	str r2, [r1, #4]
	ldr r0, _0803CDF0 @ =0x8500010C
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	str r3, [r2, #4]
	movs r7, #0x84
	lsls r7, r7, #3
	adds r1, r2, r7
	ldr r0, _0803CDF4 @ =0x0000C350
	str r0, [r1]
	strb r3, [r2, #0x18]
	adds r6, r2, #0
	adds r6, #0x20
	movs r0, #0
	adds r2, #8
_0803CD68:
	strh r0, [r2]
	adds r2, #2
	adds r3, #1
	cmp r3, #3
	bls _0803CD68
	movs r3, #0
	ldr r5, _0803CDEC @ =gLoadedSaveGame
	movs r4, #0x20
	movs r0, #0xe3
	lsls r0, r0, #2
	mov r8, r0
	movs r1, #0xff
	mov ip, r1
	movs r2, #0xe1
	lsls r2, r2, #2
	adds r2, r2, r5
	mov sb, r2
_0803CD8A:
	lsls r2, r3, #4
	adds r1, r2, r5
	add r1, r8
	ldrb r0, [r1]
	mov r7, ip
	orrs r0, r7
	strb r0, [r1]
	movs r0, #0
	adds r1, r3, #1
	add r2, sb
_0803CD9E:
	strb r4, [r2]
	adds r2, #1
	adds r0, #1
	cmp r0, #7
	bls _0803CD9E
	adds r3, r1, #0
	cmp r3, #9
	bls _0803CD8A
	ldr r0, _0803CDF8 @ =0x00008CA0
	str r0, [sp]
	ldr r0, _0803CDE8 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	str r6, [r0, #4]
	ldr r1, _0803CDFC @ =0x850000D8
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	adds r2, r6, #0
	subs r2, #0x20
	movs r1, #0
	movs r0, #1
	strb r0, [r2, #0x19]
	strb r0, [r2, #0x1a]
	strb r1, [r2, #0x1b]
	strb r1, [r2, #0x1c]
	movs r2, #0x81
	lsls r2, r2, #3
	adds r0, r6, r2
	str r1, [r0]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803CDE8: .4byte 0x040000D4
_0803CDEC: .4byte gLoadedSaveGame
_0803CDF0: .4byte 0x8500010C
_0803CDF4: .4byte 0x0000C350
_0803CDF8: .4byte 0x00008CA0
_0803CDFC: .4byte 0x850000D8
