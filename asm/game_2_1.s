.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_805C994
sub_805C994: @ 0x0805C994
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov r0, sp
	adds r0, #0x2c
	str r0, [sp, #0x30]
	movs r0, #0x10
	ldr r1, [sp, #0x30]
	strb r0, [r1]
	movs r2, #0x2b
	add r2, sp
	movs r0, #8
	strb r0, [r2]
	ldr r7, _0805CB78 @ =gUiGraphics
	movs r1, #0xe0
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	str r0, [sp, #0x14]
	movs r2, #0xe2
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x18]
	movs r5, #0x20
	str r5, [sp, #0x24]
	add r6, sp, #0x28
	movs r0, #0xe
	strb r0, [r6]
	ldr r0, _0805CB7C @ =0x060177A0
	str r0, [sp, #0xc]
	mov r0, sp
	adds r0, #0x2a
	str r0, [sp, #0x34]
	movs r1, #0xd
	mov sl, r1
	mov r2, sl
	strb r2, [r0]
	movs r1, #0xe4
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r1, sp
	movs r2, #0xe6
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #8]
	adds r2, #4
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #9]
	adds r2, #4
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #0xa]
	adds r2, #4
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	ldr r3, [sp, #0x30]
	cmp r4, #0
	bne _0805CA2E
	b _0805CB94
_0805CA2E:
	movs r0, #0x33
	strb r0, [r3]
	movs r0, #2
	movs r1, #0x2b
	add r1, sp
	strb r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _0805CB80 @ =gUiGraphics + 0x4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0xe0
	lsls r0, r0, #4
	str r0, [sp, #0x18]
	str r5, [sp, #0x24]
	movs r0, #0xf
	add r1, sp, #0x28
	strb r0, [r1]
	ldr r0, _0805CB84 @ =0x060169A0
	str r0, [sp, #0xc]
	mov r2, sl
	movs r0, #0x2a
	add r0, sp
	strb r2, [r0]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CB88 @ =gUiGraphics + 0x8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0xc
	adds r1, r1, r7
	mov r8, r1
	add r0, r8
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r6, r7, #0
	adds r6, #0x10
	adds r0, r0, r6
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0x14
	adds r1, r1, r7
	mov sb, r1
	add r0, sb
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r4, r7, #0
	adds r4, #0x18
	adds r0, r0, r4
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	str r3, [sp, #0x38]
	bl sub_80528AC
	ldr r0, _0805CB8C @ =gSelectedCharacter
	ldrb r0, [r0]
	adds r0, #0xb
	ldr r3, [sp, #0x38]
	strb r0, [r3]
	movs r2, #2
	movs r0, #0x2b
	add r0, sp
	strb r2, [r0]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CB80 @ =gUiGraphics + 0x4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0xc0
	lsls r0, r0, #3
	str r0, [sp, #0x18]
	movs r0, #0xc
	str r0, [sp, #0x24]
	movs r2, #0xf
	add r0, sp, #0x28
	strb r2, [r0]
	ldr r0, _0805CB90 @ =0x060163A0
	str r0, [sp, #0xc]
	mov r1, sl
	movs r2, #0x2a
	add r2, sp
	strb r1, [r2]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CB88 @ =gUiGraphics + 0x8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	str r3, [sp, #0x38]
	bl sub_80528AC
	b _0805CC3C
	.align 2, 0
_0805CB78: .4byte gUiGraphics
_0805CB7C: .4byte 0x060177A0
_0805CB80: .4byte gUiGraphics + 0x4
_0805CB84: .4byte 0x060169A0
_0805CB88: .4byte gUiGraphics + 0x8
_0805CB8C: .4byte gSelectedCharacter
_0805CB90: .4byte 0x060163A0
_0805CB94:
	movs r0, #0x35
	strb r0, [r3]
	movs r0, #2
	movs r2, #0x2b
	add r2, sp
	strb r0, [r2]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0xa0
	lsls r0, r0, #5
	str r0, [sp, #0x18]
	str r5, [sp, #0x24]
	movs r0, #0xf
	add r1, sp, #0x28
	strb r0, [r1]
	ldr r0, _0805CFB8 @ =0x060163A0
	str r0, [sp, #0xc]
	mov r2, sl
	movs r0, #0x2a
	add r0, sp
	strb r2, [r0]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	str r3, [sp, #0x38]
	bl sub_80528AC
_0805CC3C:
	ldr r3, [sp, #0x38]
	movs r0, #0x34
	strb r0, [r3]
	movs r0, #3
	movs r1, #0x2b
	add r1, sp
	strb r0, [r1]
	ldr r4, _0805CFBC @ =gUiGraphics
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _0805CFC0 @ =gUiGraphics + 0x4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0x88
	lsls r0, r0, #5
	str r0, [sp, #0x18]
	movs r7, #0x20
	str r7, [sp, #0x24]
	movs r0, #0xe
	add r1, sp, #0x28
	strb r0, [r1]
	ldr r0, _0805CFC4 @ =0x060152A0
	str r0, [sp, #0xc]
	movs r2, #0xd
	movs r0, #0x2a
	add r0, sp
	strb r2, [r0]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFC8 @ =gUiGraphics + 0x8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFCC @ =gUiGraphics + 0xC
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFD0 @ =gUiGraphics + 0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFD4 @ =gUiGraphics + 0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFD8 @ =gUiGraphics + 0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	str r3, [sp, #0x38]
	bl sub_80528AC
	movs r0, #0x36
	ldr r3, [sp, #0x38]
	strb r0, [r3]
	movs r0, #4
	movs r2, #0x2b
	add r2, sp
	strb r0, [r2]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFC0 @ =gUiGraphics + 0x4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0xc0
	lsls r0, r0, #3
	str r0, [sp, #0x18]
	str r7, [sp, #0x24]
	movs r2, #0xd
	add r0, sp, #0x28
	strb r2, [r0]
	ldr r1, _0805CFDC @ =0x06014CA0
	str r1, [sp, #0xc]
	movs r0, #0x2a
	add r0, sp
	strb r2, [r0]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFC8 @ =gUiGraphics + 0x8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFCC @ =gUiGraphics + 0xC
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFD0 @ =gUiGraphics + 0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFD4 @ =gUiGraphics + 0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFD8 @ =gUiGraphics + 0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	str r3, [sp, #0x38]
	bl sub_80528AC
	movs r0, #0x38
	ldr r3, [sp, #0x38]
	strb r0, [r3]
	movs r2, #5
	mov r8, r2
	mov r0, r8
	movs r1, #0x2b
	add r1, sp
	strb r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _0805CFC0 @ =gUiGraphics + 0x4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [sp, #0x20]
	str r7, [sp, #0x18]
	str r7, [sp, #0x24]
	movs r6, #0xc
	add r0, sp, #0x28
	strb r6, [r0]
	ldr r1, _0805CFDC @ =0x06014CA0
	str r1, [sp, #0xc]
	movs r2, #0x2a
	add r2, sp
	strb r6, [r2]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFC8 @ =gUiGraphics + 0x8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFCC @ =gUiGraphics + 0xC
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFD0 @ =gUiGraphics + 0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFD4 @ =gUiGraphics + 0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFD8 @ =gUiGraphics + 0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	str r3, [sp, #0x38]
	bl sub_80528AC
	movs r0, #0x39
	ldr r3, [sp, #0x38]
	strb r0, [r3]
	mov r2, r8
	movs r0, #0x2b
	add r0, sp
	strb r2, [r0]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFC0 @ =gUiGraphics + 0x4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	str r7, [sp, #0x18]
	str r7, [sp, #0x24]
	movs r0, #0xb
	add r2, sp, #0x28
	strb r0, [r2]
	ldr r0, _0805CFDC @ =0x06014CA0
	str r0, [sp, #0xc]
	movs r1, #0x2a
	add r1, sp
	strb r6, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _0805CFC8 @ =gUiGraphics + 0x8
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFCC @ =gUiGraphics + 0xC
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFD0 @ =gUiGraphics + 0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFD4 @ =gUiGraphics + 0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFD8 @ =gUiGraphics + 0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	str r3, [sp, #0x38]
	bl sub_80528AC
	movs r0, #0x3a
	ldr r3, [sp, #0x38]
	strb r0, [r3]
	mov r2, r8
	movs r0, #0x2b
	add r0, sp
	strb r2, [r0]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFC0 @ =gUiGraphics + 0x4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	str r7, [sp, #0x18]
	str r7, [sp, #0x24]
	movs r0, #0xa
	add r2, sp, #0x28
	strb r0, [r2]
	ldr r0, _0805CFDC @ =0x06014CA0
	str r0, [sp, #0xc]
	movs r1, #0x2a
	add r1, sp
	strb r6, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _0805CFC8 @ =gUiGraphics + 0x8
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFCC @ =gUiGraphics + 0xC
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFD0 @ =gUiGraphics + 0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFD4 @ =gUiGraphics + 0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFD8 @ =gUiGraphics + 0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	str r3, [sp, #0x38]
	bl sub_80528AC
	ldr r3, [sp, #0x38]
	movs r2, #0
	strb r2, [r3]
	movs r0, #6
	movs r1, #0x2b
	add r1, sp
	strb r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [sp, #0x14]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805CFC0 @ =gUiGraphics + 0x4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	ldr r0, _0805CFE0 @ =0x06014A20
	str r0, [sp, #0xc]
	movs r0, #0xa0
	lsls r0, r0, #2
	str r0, [sp, #0x18]
	str r7, [sp, #0x24]
	movs r0, #9
	add r2, sp, #0x28
	strb r0, [r2]
	movs r0, #0xd
	movs r1, #0x2a
	add r1, sp
	strb r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _0805CFC8 @ =gUiGraphics + 0x8
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	b _0805CFE4
	.align 2, 0
_0805CFB8: .4byte 0x060163A0
_0805CFBC: .4byte gUiGraphics
_0805CFC0: .4byte gUiGraphics + 0x4
_0805CFC4: .4byte 0x060152A0
_0805CFC8: .4byte gUiGraphics + 0x8
_0805CFCC: .4byte gUiGraphics + 0xC
_0805CFD0: .4byte gUiGraphics + 0x10
_0805CFD4: .4byte gUiGraphics + 0x14
_0805CFD8: .4byte gUiGraphics + 0x18
_0805CFDC: .4byte 0x06014CA0
_0805CFE0: .4byte 0x06014A20
_0805CFE4:
	lsls r0, r0, #2
	ldr r1, _0805D038 @ =gUiGraphics + 0xC
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	mov r3, sp
	add r2, sp, #0x2c
	ldrb r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805D03C @ =gUiGraphics + 0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r3, #9]
	ldrb r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0805D040 @ =gUiGraphics + 0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r3, #0xa]
	ldrb r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _0805D044 @ =gUiGraphics + 0x18
	adds r0, r0, r2
	ldr r0, [r0]
	strb r0, [r3, #0xb]
	mov r0, sp
	bl sub_80528AC
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805D038: .4byte gUiGraphics + 0xC
_0805D03C: .4byte gUiGraphics + 0x10
_0805D040: .4byte gUiGraphics + 0x14
_0805D044: .4byte gUiGraphics + 0x18

	thumb_func_start sub_805D048
sub_805D048: @ 0x0805D048
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	bl sub_80535FC
	ldr r1, _0805D0B0 @ =gBgScrollRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	strh r0, [r1, #0xa]
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	ldr r0, _0805D0B4 @ =gSpecialStageCollectedRings
	ldr r1, _0805D0B8 @ =gUnknown_03005154
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	blo _0805D0DA
	movs r0, #0x2f
	bl m4aSongNumStart
	movs r0, #1
	str r0, [sp, #0x24]
	ldr r1, _0805D0BC @ =0x00002710
	str r1, [sp, #0x20]
	ldr r3, _0805D0C0 @ =gLoadedSaveGame
	ldrb r2, [r3, #0x1d]
	ldr r1, _0805D0C4 @ =gUnknown_08487134
	ldr r0, _0805D0C8 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r2, #0
	asrs r0, r1
	ldr r4, [sp, #0x24]
	ands r0, r4
	cmp r0, #0
	beq _0805D0CC
	movs r0, #1
	mov r8, r0
	b _0805D0EC
	.align 2, 0
_0805D0B0: .4byte gBgScrollRegs
_0805D0B4: .4byte gSpecialStageCollectedRings
_0805D0B8: .4byte gUnknown_03005154
_0805D0BC: .4byte 0x00002710
_0805D0C0: .4byte gLoadedSaveGame
_0805D0C4: .4byte gUnknown_08487134
_0805D0C8: .4byte gCurrentLevel
_0805D0CC:
	ldr r0, [sp, #0x24]
	lsls r0, r1
	orrs r2, r0
	strb r2, [r3, #0x1d]
	movs r1, #0
	mov r8, r1
	b _0805D0EC
_0805D0DA:
	movs r0, #0x2e
	bl m4aSongNumStart
	movs r2, #0
	mov r8, r2
	movs r3, #0
	str r3, [sp, #0x24]
	movs r4, #0
	str r4, [sp, #0x20]
_0805D0EC:
	ldr r0, _0805D164 @ =gLoadedSaveGame
	ldrb r0, [r0, #0x1d]
	mov sb, r0
	ldr r0, _0805D168 @ =gSpecialStageCollectedRings
	ldrh r0, [r0]
	mov sl, r0
	ldr r0, _0805D16C @ =gUnknown_0300507C
	ldrb r0, [r0]
	add r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r1, _0805D170 @ =sa2__gUnknown_0300543C
	ldrb r0, [r1]
	add r0, r8
	strb r0, [r1]
	ldr r1, _0805D174 @ =gLevelScore
	ldr r6, [r1]
	movs r0, #0x64
	mov r2, sl
	muls r2, r0, r2
	adds r0, r2, #0
	ldr r3, [sp, #0x20]
	adds r0, r3, r0
	adds r0, r6, r0
	str r0, [r1]
	ldr r4, _0805D178 @ =0x0000C350
	adds r1, r4, #0
	bl Div
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl Div
	cmp r5, r0
	beq _0805D146
	ldr r0, _0805D17C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805D146
	ldr r1, _0805D180 @ =gNumLives
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0805D146:
	movs r0, #0x64
	mov r4, sl
	muls r4, r0, r4
	adds r0, r4, #0
	ldr r1, [sp, #0x20]
	cmp r1, r0
	bls _0805D184
	adds r0, r1, #0
	movs r1, #0x64
	bl Div
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	b _0805D186
	.align 2, 0
_0805D164: .4byte gLoadedSaveGame
_0805D168: .4byte gSpecialStageCollectedRings
_0805D16C: .4byte gUnknown_0300507C
_0805D170: .4byte sa2__gUnknown_0300543C
_0805D174: .4byte gLevelScore
_0805D178: .4byte 0x0000C350
_0805D17C: .4byte gGameMode
_0805D180: .4byte gNumLives
_0805D184:
	mov r7, sl
_0805D186:
	bl UiGfxStackInit
	ldr r0, _0805D4B4 @ =sub_805D684
	movs r5, #0
	str r5, [sp]
	movs r1, #0x34
	ldr r2, _0805D4B8 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0xc]
	ldrh r1, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r2, r1, r3
	strh r5, [r2, #0x20]
	strh r7, [r2, #0x22]
	strh r5, [r2, #0x24]
	movs r0, #0xf0
	strh r0, [r2, #0xa]
	movs r0, #0x7e
	strh r0, [r2, #0xc]
	movs r4, #8
	strh r4, [r2, #0xe]
	strh r4, [r2, #0x10]
	movs r0, #0xe
	strh r0, [r2, #0x12]
	movs r3, #1
	strb r3, [r2, #0x16]
	movs r0, #0xa
	strh r0, [r2, #8]
	ldr r4, _0805D4BC @ =0x03000028
	adds r0, r1, r4
	add r3, sp, #0x24
	ldrb r3, [r3]
	strb r3, [r0]
	adds r4, #1
	adds r0, r1, r4
	mov r3, sb
	strb r3, [r0]
	adds r4, #1
	adds r1, r1, r4
	mov r0, r8
	strb r0, [r1]
	mov r1, sl
	strh r1, [r2, #0x26]
	ldr r3, [sp, #0x20]
	str r3, [r2, #0x18]
	movs r4, #0
	str r4, [r2, #0x1c]
	ldr r0, _0805D4C0 @ =sub_805D720
	str r5, [sp]
	movs r1, #0x34
	ldr r2, _0805D4B8 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #8]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	strh r5, [r2, #0x20]
	strh r7, [r2, #0x22]
	strh r5, [r2, #0x24]
	movs r3, #0x80
	lsls r3, r3, #1
	strh r3, [r2, #0xa]
	movs r0, #0x80
	strh r0, [r2, #0xc]
	movs r0, #9
	strh r0, [r2, #0xe]
	movs r4, #2
	strh r4, [r2, #0x10]
	movs r0, #0xf
	strh r0, [r2, #0x12]
	movs r0, #1
	strb r0, [r2, #0x16]
	strh r5, [r2, #8]
	ldr r3, _0805D4BC @ =0x03000028
	adds r0, r1, r3
	add r4, sp, #0x24
	ldrb r4, [r4]
	strb r4, [r0]
	adds r3, #1
	adds r0, r1, r3
	mov r4, sb
	strb r4, [r0]
	ldr r0, _0805D4C4 @ =0x0300002A
	adds r1, r1, r0
	mov r3, r8
	strb r3, [r1]
	mov r4, sl
	strh r4, [r2, #0x26]
	ldr r0, [sp, #0x20]
	str r0, [r2, #0x18]
	movs r1, #0
	str r1, [r2, #0x1c]
	ldr r0, _0805D4C8 @ =sub_805D8EC
	str r5, [sp]
	movs r1, #0x34
	ldr r2, _0805D4B8 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0x10]
	ldrh r1, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r2, r1, r3
	strh r5, [r2, #0x20]
	strh r7, [r2, #0x22]
	strh r5, [r2, #0x24]
	movs r4, #0x80
	lsls r4, r4, #1
	strh r4, [r2]
	strh r5, [r2, #2]
	strh r5, [r2, #4]
	strh r5, [r2, #6]
	movs r6, #0x39
	strh r6, [r2, #0xa]
	movs r0, #0x49
	strh r0, [r2, #0xc]
	movs r4, #3
	strh r4, [r2, #0xe]
	strh r4, [r2, #0x10]
	movs r0, #0xe
	strh r0, [r2, #0x12]
	movs r3, #1
	strb r3, [r2, #0x16]
	movs r0, #0x18
	strh r0, [r2, #8]
	ldr r0, _0805D4BC @ =0x03000028
	add r3, sp, #0x24
	ldrb r3, [r3]
	strb r3, [r0, r1]
	ldr r3, _0805D4CC @ =0x03000029
	adds r0, r1, r3
	mov r3, sb
	strb r3, [r0]
	ldr r0, _0805D4C4 @ =0x0300002A
	adds r1, r1, r0
	mov r3, r8
	strb r3, [r1]
	mov r0, sl
	strh r0, [r2, #0x26]
	ldr r1, [sp, #0x20]
	str r1, [r2, #0x18]
	movs r3, #0
	str r3, [r2, #0x1c]
	ldr r0, _0805D4D0 @ =sub_805DB04
	str r5, [sp]
	movs r1, #0x34
	ldr r2, _0805D4B8 @ =0x00002120
	bl TaskCreate
	str r0, [sp, #0x14]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	strh r5, [r2, #0x20]
	strh r7, [r2, #0x22]
	strh r5, [r2, #0x24]
	movs r3, #0x80
	lsls r3, r3, #1
	strh r3, [r2]
	strh r5, [r2, #2]
	strh r5, [r2, #4]
	movs r0, #1
	strh r0, [r2, #6]
	strh r6, [r2, #0xa]
	strh r6, [r2, #0xc]
	strh r4, [r2, #0xe]
	strh r4, [r2, #0x10]
	movs r3, #0xe
	strh r3, [r2, #0x12]
	strb r0, [r2, #0x16]
	movs r0, #0x10
	strh r0, [r2, #8]
	ldr r3, _0805D4BC @ =0x03000028
	add r0, sp, #0x24
	ldrb r0, [r0]
	strb r0, [r3, r1]
	adds r3, #1
	adds r0, r1, r3
	mov r3, sb
	strb r3, [r0]
	ldr r0, _0805D4C4 @ =0x0300002A
	adds r1, r1, r0
	mov r3, r8
	strb r3, [r1]
	mov r0, sl
	strh r0, [r2, #0x26]
	ldr r1, [sp, #0x20]
	str r1, [r2, #0x18]
	movs r3, #0
	str r3, [r2, #0x1c]
	ldr r0, _0805D4D4 @ =sub_805DD10
	str r5, [sp]
	movs r1, #0x34
	ldr r2, _0805D4B8 @ =0x00002120
	bl TaskCreate
	str r0, [sp, #0x18]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	strh r5, [r2, #0x20]
	strh r7, [r2, #0x22]
	strh r5, [r2, #0x24]
	movs r3, #0x80
	lsls r3, r3, #1
	strh r3, [r2]
	strh r5, [r2, #2]
	strh r5, [r2, #4]
	movs r0, #2
	strh r0, [r2, #6]
	strh r6, [r2, #0xa]
	strh r6, [r2, #0xc]
	strh r4, [r2, #0xe]
	strh r4, [r2, #0x10]
	movs r3, #0xe
	strh r3, [r2, #0x12]
	movs r0, #1
	strb r0, [r2, #0x16]
	movs r3, #8
	strh r3, [r2, #8]
	ldr r0, _0805D4BC @ =0x03000028
	add r3, sp, #0x24
	ldrb r3, [r3]
	strb r3, [r0, r1]
	ldr r3, _0805D4CC @ =0x03000029
	adds r0, r1, r3
	mov r3, sb
	strb r3, [r0]
	ldr r0, _0805D4C4 @ =0x0300002A
	adds r1, r1, r0
	mov r3, r8
	strb r3, [r1]
	mov r0, sl
	strh r0, [r2, #0x26]
	ldr r1, [sp, #0x20]
	str r1, [r2, #0x18]
	movs r3, #0
	str r3, [r2, #0x1c]
	ldr r0, _0805D4D8 @ =sub_805DF2C
	str r5, [sp]
	movs r1, #0x34
	ldr r2, _0805D4B8 @ =0x00002120
	bl TaskCreate
	str r0, [sp, #0x1c]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	strh r5, [r2, #0x20]
	strh r7, [r2, #0x22]
	strh r5, [r2, #0x24]
	movs r3, #0x80
	lsls r3, r3, #1
	strh r3, [r2]
	strh r5, [r2, #2]
	strh r5, [r2, #4]
	strh r4, [r2, #6]
	strh r6, [r2, #0xa]
	strh r6, [r2, #0xc]
	strh r4, [r2, #0xe]
	strh r4, [r2, #0x10]
	movs r4, #0xe
	strh r4, [r2, #0x12]
	movs r0, #1
	strb r0, [r2, #0x16]
	strh r5, [r2, #8]
	ldr r3, _0805D4BC @ =0x03000028
	adds r0, r1, r3
	add r4, sp, #0x24
	ldrb r4, [r4]
	strb r4, [r0]
	adds r3, #1
	adds r0, r1, r3
	mov r4, sb
	strb r4, [r0]
	ldr r0, _0805D4C4 @ =0x0300002A
	adds r1, r1, r0
	mov r3, r8
	strb r3, [r1]
	mov r4, sl
	strh r4, [r2, #0x26]
	ldr r0, [sp, #0x20]
	str r0, [r2, #0x18]
	movs r1, #0
	str r1, [r2, #0x1c]
	ldr r0, _0805D4DC @ =sub_805E018
	str r5, [sp]
	movs r1, #0x34
	ldr r2, _0805D4B8 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	adds r6, r0, #0
	ldrh r1, [r6, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r2, r1, r3
	strh r5, [r2, #0x20]
	strh r7, [r2, #0x22]
	strh r5, [r2, #0x24]
	strh r5, [r2, #0xa]
	movs r0, #0x29
	strh r0, [r2, #0xc]
	movs r4, #1
	strh r4, [r2, #0xe]
	movs r0, #4
	strh r0, [r2, #0x10]
	movs r0, #0xd
	strh r0, [r2, #0x12]
	movs r0, #1
	strb r0, [r2, #0x16]
	strh r5, [r2, #8]
	adds r3, #0x28
	adds r0, r1, r3
	add r4, sp, #0x24
	ldrb r4, [r4]
	strb r4, [r0]
	adds r3, #1
	adds r0, r1, r3
	mov r4, sb
	strb r4, [r0]
	ldr r0, _0805D4C4 @ =0x0300002A
	adds r1, r1, r0
	mov r3, r8
	strb r3, [r1]
	movs r4, #0
	mov r0, sl
	strh r0, [r2, #0x26]
	ldr r1, [sp, #0x20]
	str r1, [r2, #0x18]
	movs r3, #0
	str r3, [r2, #0x1c]
	ldr r0, _0805D4E0 @ =sub_805D4F0
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0805D4E4 @ =TaskDestructor_805E1E4
	str r1, [sp]
	movs r1, #0x2c
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	strh r5, [r0, #0x28]
	strh r7, [r0, #0x2a]
	ldr r2, [sp, #0xc]
	str r2, [r0, #0x1c]
	ldr r3, [sp, #8]
	str r3, [r0, #0x18]
	ldr r1, [sp, #0x10]
	str r1, [r0, #0xc]
	ldr r2, [sp, #0x14]
	str r2, [r0, #0x24]
	ldr r3, [sp, #0x18]
	str r3, [r0, #0x10]
	ldr r1, [sp, #0x1c]
	str r1, [r0, #0x14]
	str r6, [r0, #0x20]
	ldr r3, _0805D4E8 @ =sa2__gUnknown_03004D80
	strb r4, [r3]
	ldr r0, _0805D4EC @ =sa2__gUnknown_03002280
	strb r4, [r0]
	strb r4, [r0, #1]
	movs r1, #0xff
	strb r1, [r0, #2]
	movs r2, #0x20
	strb r2, [r0, #3]
	strb r4, [r3, #1]
	strb r4, [r0, #4]
	strb r4, [r0, #5]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #6]
	strb r2, [r0, #7]
	strb r4, [r3, #2]
	strb r4, [r0, #8]
	strb r4, [r0, #9]
	strb r1, [r0, #0xa]
	strb r2, [r0, #0xb]
	strb r4, [r3, #3]
	strb r4, [r0, #0xc]
	strb r4, [r0, #0xd]
	strb r1, [r0, #0xe]
	strb r2, [r0, #0xf]
	ldr r0, [sp, #4]
	bl sub_805C994
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805D4B4: .4byte sub_805D684
_0805D4B8: .4byte 0x00002120
_0805D4BC: .4byte 0x03000028
_0805D4C0: .4byte sub_805D720
_0805D4C4: .4byte 0x0300002A
_0805D4C8: .4byte sub_805D8EC
_0805D4CC: .4byte 0x03000029
_0805D4D0: .4byte sub_805DB04
_0805D4D4: .4byte sub_805DD10
_0805D4D8: .4byte sub_805DF2C
_0805D4DC: .4byte sub_805E018
_0805D4E0: .4byte sub_805D4F0
_0805D4E4: .4byte TaskDestructor_805E1E4
_0805D4E8: .4byte sa2__gUnknown_03004D80
_0805D4EC: .4byte sa2__gUnknown_03002280

	thumb_func_start sub_805D4F0
sub_805D4F0: @ 0x0805D4F0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _0805D5FC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r0, r1
	ldr r0, [r5, #0x1c]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov r8, r0
	ldr r0, [r5, #0x18]
	ldrh r3, [r0, #6]
	adds r3, r3, r1
	ldr r0, [r5, #0xc]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sb, r0
	ldr r0, [r5, #0x24]
	ldrh r0, [r0, #6]
	adds r7, r0, r1
	ldr r0, [r5, #0x10]
	ldrh r0, [r0, #6]
	adds r4, r0, r1
	ldr r0, [r5, #0x14]
	ldrh r0, [r0, #6]
	adds r6, r0, r1
	ldr r0, [r5, #0x20]
	ldrh r2, [r0, #6]
	adds r2, r2, r1
	ldrh r0, [r5, #0x28]
	mov r1, r8
	strh r0, [r1, #0x20]
	ldrh r0, [r5, #0x28]
	strh r0, [r3, #0x20]
	ldrh r0, [r5, #0x28]
	mov r1, sb
	strh r0, [r1, #0x20]
	ldrh r0, [r5, #0x28]
	strh r0, [r7, #0x20]
	ldrh r0, [r5, #0x28]
	strh r0, [r4, #0x20]
	ldrh r0, [r5, #0x28]
	strh r0, [r6, #0x20]
	ldrh r0, [r5, #0x28]
	strh r0, [r2, #0x20]
	movs r1, #0x28
	ldrsh r0, [r5, r1]
	cmp r0, #0xa9
	ble _0805D586
	ldrh r0, [r6, #0x26]
	cmp r0, #0
	beq _0805D576
	subs r0, #1
	strh r0, [r6, #0x26]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _0805D570
	strh r0, [r6, #0x26]
_0805D570:
	ldr r0, [r7, #0x1c]
	adds r0, #0x64
	str r0, [r7, #0x1c]
_0805D576:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0805D586
	subs r0, #0x64
	str r0, [r4, #0x18]
	ldr r0, [r7, #0x1c]
	adds r0, #0x64
	str r0, [r7, #0x1c]
_0805D586:
	ldrh r1, [r5, #0x2a]
	ldr r0, _0805D600 @ =0x00000267
	adds r1, r1, r0
	ldrh r0, [r5, #0x28]
	adds r0, #1
	strh r0, [r5, #0x28]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r5, #0x2a]
	cmp r1, r0
	bge _0805D62C
	ldr r7, _0805D604 @ =gPlayer
	movs r1, #0x48
	adds r1, r1, r7
	mov sb, r1
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	movs r0, #0x4a
	adds r0, r0, r7
	mov r8, r0
	ldrh r0, [r0]
	subs r0, #0x10
	mov r1, r8
	strh r0, [r1]
	ldr r1, _0805D608 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0805D60C @ =gBackgroundsCopyQueueCursor
	ldr r0, _0805D610 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0805D614 @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0805D618 @ =gVramGraphicsCopyCursor
	ldr r0, _0805D61C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r5, _0805D620 @ =gCourseTime
	ldr r6, [r5]
	bl CreateGameStage
	ldr r0, _0805D624 @ =gSpecialStageReturnX
	ldrh r0, [r0]
	mov r1, sb
	strh r0, [r1]
	ldr r0, _0805D628 @ =gSpecialStageReturnY
	ldrh r0, [r0]
	mov r1, r8
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x6e
	movs r0, #1
	strb r0, [r1]
	str r6, [r5]
	b _0805D674
	.align 2, 0
_0805D5FC: .4byte gCurTask
_0805D600: .4byte 0x00000267
_0805D604: .4byte gPlayer
_0805D608: .4byte 0x0000FFFF
_0805D60C: .4byte gBackgroundsCopyQueueCursor
_0805D610: .4byte gBackgroundsCopyQueueIndex
_0805D614: .4byte sa2__gUnknown_03005390
_0805D618: .4byte gVramGraphicsCopyCursor
_0805D61C: .4byte gVramGraphicsCopyQueueIndex
_0805D620: .4byte gCourseTime
_0805D624: .4byte gSpecialStageReturnX
_0805D628: .4byte gSpecialStageReturnY
_0805D62C:
	movs r0, #0x28
	ldrsh r1, [r5, r0]
	adds r0, r2, #0
	adds r0, #0xaa
	cmp r1, r0
	bne _0805D650
	mov r0, sb
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805D64A
	movs r0, #0x9a
	bl m4aSongNumStart
	b _0805D650
_0805D64A:
	movs r0, #0x8d      @ SE_STAGE_RESULT_COUNTER_DONE
	bl m4aSongNumStart
_0805D650:
	movs r1, #0x28
	ldrsh r0, [r5, r1]
	cmp r0, #0xaa
	ble _0805D674
	adds r1, r0, #0
	ldrh r0, [r5, #0x2a]
	adds r0, #0xaa
	cmp r1, r0
	bge _0805D674
	adds r0, r1, #0
	movs r1, #4
	bl Mod
	cmp r0, #0
	bne _0805D674
	movs r0, #0x8c      @ SE_STAGE_RESULT_COUNTER
	bl m4aSongNumStart
_0805D674:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_805D684
sub_805D684: @ 0x0805D684
	push {lr}
	ldr r0, _0805D6CC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	movs r0, #0x20
	ldrsh r1, [r2, r0]
	ldrh r0, [r2, #0x22]
	ldr r3, _0805D6D0 @ =0x00000221
	adds r0, r0, r3
	cmp r1, r0
	ble _0805D6D4
	ldrh r3, [r2, #0xa]
	movs r0, #0xa
	ldrsh r1, [r2, r0]
	movs r0, #0x20
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0805D6C2
	adds r0, r3, #0
	adds r0, #0x20
	strh r0, [r2, #0xa]
	ldrh r1, [r2, #0xe]
	movs r3, #0xe
	ldrsh r0, [r2, r3]
	cmp r0, #0
	beq _0805D6C2
	subs r0, r1, #1
	strh r0, [r2, #0xe]
_0805D6C2:
	ldrh r0, [r2, #0xa]
	subs r0, #0x1a
	strh r0, [r2, #0xa]
	b _0805D710
	.align 2, 0
_0805D6CC: .4byte gCurTask
_0805D6D0: .4byte 0x00000221
_0805D6D4:
	cmp r1, #0x31
	ble _0805D6DE
	movs r0, #0x11
	strh r0, [r2, #0xc]
	b _0805D710
_0805D6DE:
	cmp r1, #0x21
	ble _0805D6EA
	ldrh r0, [r2, #0xc]
	subs r0, #6
	strh r0, [r2, #0xc]
	b _0805D710
_0805D6EA:
	cmp r1, #0x19
	ble _0805D6F8
	ldr r0, _0805D6F4 @ =0x0000FFF0
	strh r0, [r2, #0xa]
	b _0805D710
	.align 2, 0
_0805D6F4: .4byte 0x0000FFF0
_0805D6F8:
	cmp r1, #0xf
	ble _0805D710
	ldrh r0, [r2, #0xa]
	subs r0, #0x1a
	strh r0, [r2, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x10
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0805D710
	strh r1, [r2, #0xa]
_0805D710:
	ldr r0, _0805D71C @ =gUnknown_08688658
	adds r1, r2, #0
	bl sub_8052F78
	pop {r0}
	bx r0
	.align 2, 0
_0805D71C: .4byte gUnknown_08688658

	thumb_func_start sub_805D720
sub_805D720: @ 0x0805D720
	push {r4, lr}
	sub sp, #0x20
	ldr r1, _0805D770 @ =gUnknown_08688664
	mov r0, sp
	movs r2, #0x1f
	bl memcpy
	ldr r0, _0805D774 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r0, #0x20
	ldrsh r1, [r4, r0]
	ldrh r0, [r4, #0x22]
	ldr r2, _0805D778 @ =0x00000221
	adds r0, r0, r2
	cmp r1, r0
	ble _0805D77C
	ldrh r0, [r4, #0xa]
	subs r0, #0x1c
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x1f
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0805D7CA
	ldrh r1, [r4, #0xe]
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _0805D768
	subs r0, r1, #1
	strh r0, [r4, #0xe]
_0805D768:
	ldrh r0, [r4, #0xa]
	adds r0, #0x20
	b _0805D7BC
	.align 2, 0
_0805D770: .4byte gUnknown_08688664
_0805D774: .4byte gCurTask
_0805D778: .4byte 0x00000221
_0805D77C:
	cmp r1, #0x31
	ble _0805D78C
	movs r0, #0x13
	strh r0, [r4, #0xc]
	ldrh r2, [r4, #0xa]
	subs r0, r2, #2
	strh r0, [r4, #0xa]
	b _0805D7AC
_0805D78C:
	cmp r1, #0x21
	ble _0805D79E
	ldrh r0, [r4, #0xc]
	subs r0, #6
	strh r0, [r4, #0xc]
	ldrh r2, [r4, #0xa]
	subs r0, r2, #2
	strh r0, [r4, #0xa]
	b _0805D7AC
_0805D79E:
	cmp r1, #0x19
	ble _0805D7D6
	ldrh r2, [r4, #0xa]
	subs r0, r2, #2
	strh r0, [r4, #0xa]
	movs r1, #9
	strh r1, [r4, #0xe]
_0805D7AC:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x1f
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0805D7CA
	adds r0, r2, #0
	adds r0, #0x1e
_0805D7BC:
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0x24]
	adds r0, #1
	movs r1, #0xa
	bl Mod
	strh r0, [r4, #0x24]
_0805D7CA:
	ldrh r0, [r4, #0x24]
	add r0, sp
	adds r1, r4, #0
	bl sub_8052F78
	b _0805D814
_0805D7D6:
	cmp r1, #0xf
	ble _0805D814
	ldrh r3, [r4, #0xa]
	adds r0, r3, #0
	subs r0, #0x1c
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0xef
	bgt _0805D814
	asrs r0, r0, #0x15
	movs r1, #9
	subs r1, r1, r0
	strh r1, [r4, #0xe]
	movs r0, #0x1f
	rsbs r0, r0, #0
	cmp r2, r0
	bge _0805D80A
	adds r0, r3, #4
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0x24]
	adds r0, #1
	movs r1, #0xa
	bl Mod
	strh r0, [r4, #0x24]
_0805D80A:
	ldrh r0, [r4, #0x24]
	add r0, sp
	adds r1, r4, #0
	bl sub_8052F78
_0805D814:
	add sp, #0x20
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_805D81C
sub_805D81C: @ 0x0805D81C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0805D858 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r7, [r4, #0xa]
	ldrh r0, [r4, #0xc]
	mov r8, r0
	ldrh r1, [r4, #0x20]
	ldrh r2, [r4, #0x22]
	ldr r3, _0805D85C @ =0x0000022E
	adds r0, r2, r3
	cmp r1, r0
	bgt _0805D8E2
	subs r3, #0xd
	adds r0, r2, r3
	cmp r1, r0
	ble _0805D864
	ldr r0, _0805D860 @ =0xFFFFFDDF
	adds r1, r1, r0
	subs r1, r1, r2
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #0x12
	lsrs r6, r0, #0x10
	b _0805D866
	.align 2, 0
_0805D858: .4byte gCurTask
_0805D85C: .4byte 0x0000022E
_0805D860: .4byte 0xFFFFFDDF
_0805D864:
	movs r6, #0
_0805D866:
	movs r0, #3
	bl sub_805C900
	movs r5, #0
	adds r1, r4, #0
	adds r1, #0x2b
	ldrb r0, [r1]
	cmp r0, #0x20
	bne _0805D88A
_0805D878:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #6
	bhi _0805D88A
	adds r0, r1, r5
	ldrb r0, [r0]
	cmp r0, #0x20
	beq _0805D878
_0805D88A:
	ldrh r1, [r4, #2]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _0805D8B4
	movs r0, #0x7e
	strh r0, [r4, #0xc]
	movs r0, #1
	strh r0, [r4, #0xe]
	movs r1, #0xb3
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r4, #0xa]
	adds r0, r5, #0
	adds r0, #0x2b
	adds r0, r4, r0
	adds r1, r4, #0
	bl sub_8052F78
	b _0805D8DC
_0805D8B4:
	ldrh r0, [r4, #2]
	movs r1, #0x19
	bl Div
	ldrh r2, [r4, #2]
	lsrs r2, r2, #4
	movs r1, #0x8f
	subs r1, r1, r2
	subs r1, r1, r0
	strh r1, [r4, #0xc]
	movs r0, #1
	strh r0, [r4, #0xe]
	movs r0, #0xa3
	strh r0, [r4, #0xa]
	adds r0, r5, #0
	adds r0, #0x2b
	adds r0, r4, r0
	adds r1, r4, #0
	bl sub_8052C84
_0805D8DC:
	strh r7, [r4, #0xa]
	mov r3, r8
	strh r3, [r4, #0xc]
_0805D8E2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_805D8EC
sub_805D8EC: @ 0x0805D8EC
	push {r4, lr}
	ldr r0, _0805D948 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r3, r0, r1
	ldrh r1, [r3, #0x20]
	ldr r2, _0805D94C @ =0x0300002A
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805D9DA
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	ldrh r2, [r3, #0x22]
	adds r0, r2, #0
	adds r0, #0xaa
	cmp r1, r0
	blt _0805D9DA
	movs r0, #3
	strh r0, [r3, #0xe]
	strh r0, [r3, #0x10]
	movs r0, #0xe
	strh r0, [r3, #0x12]
	ldr r4, _0805D950 @ =0x00000221
	adds r0, r2, r4
	cmp r1, r0
	ble _0805D968
	movs r0, #0x81
	strh r0, [r3, #0xc]
	ldrh r0, [r3, #0xa]
	subs r0, #0x1c
	strh r0, [r3, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0805D958
	movs r0, #0
	strh r0, [r3, #0xe]
	ldr r0, _0805D954 @ =0x0000FF80
	strh r0, [r3, #0xa]
	b _0805D9AC
	.align 2, 0
_0805D948: .4byte gCurTask
_0805D94C: .4byte 0x0300002A
_0805D950: .4byte 0x00000221
_0805D954: .4byte 0x0000FF80
_0805D958:
	ldr r0, _0805D964 @ =gUnknown_08688684
	adds r1, r3, #0
	bl sub_8052F78
	b _0805D9AC
	.align 2, 0
_0805D964: .4byte gUnknown_08688684
_0805D968:
	cmp r1, #0x27
	ble _0805D9B8
	ldrh r0, [r3, #2]
	adds r0, #0x20
	strh r0, [r3, #2]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0xff
	bls _0805D998
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #2]
	movs r0, #0x29
	strh r0, [r3, #0xa]
	movs r0, #0x81
	strh r0, [r3, #0xc]
	ldr r0, _0805D994 @ =gUnknown_08688684
	adds r1, r3, #0
	bl sub_8052F78
	b _0805D9AC
	.align 2, 0
_0805D994: .4byte gUnknown_08688684
_0805D998:
	movs r0, #0x19
	strh r0, [r3, #0xa]
	lsrs r1, r1, #0x14
	movs r0, #0x8b
	subs r0, r0, r1
	strh r0, [r3, #0xc]
	ldr r0, _0805D9B4 @ =gUnknown_08688684
	adds r1, r3, #0
	bl sub_8052C84
_0805D9AC:
	bl sub_805D81C
	b _0805D9DA
	.align 2, 0
_0805D9B4: .4byte gUnknown_08688684
_0805D9B8:
	cmp r1, #0x21
	ble _0805D9DA
	movs r0, #0x19
	strh r0, [r3, #0xa]
	ldrh r1, [r3, #2]
	lsrs r2, r1, #4
	movs r0, #0x8b
	subs r0, r0, r2
	strh r0, [r3, #0xc]
	adds r1, #0x20
	strh r1, [r3, #2]
	ldr r0, _0805D9E0 @ =gUnknown_08688684
	adds r1, r3, #0
	bl sub_8052C84
	bl sub_805D81C
_0805D9DA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805D9E0: .4byte gUnknown_08688684

	thumb_func_start sub_805D9E4
sub_805D9E4: @ 0x0805D9E4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0805DA20 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r7, [r4, #0xa]
	ldrh r0, [r4, #0xc]
	mov r8, r0
	ldrh r1, [r4, #0x20]
	ldrh r2, [r4, #0x22]
	ldr r3, _0805DA24 @ =0x0000022E
	adds r0, r2, r3
	cmp r1, r0
	bgt _0805DAF6
	subs r3, #0xd
	adds r0, r2, r3
	cmp r1, r0
	ble _0805DA2C
	ldr r0, _0805DA28 @ =0xFFFFFDDF
	adds r1, r1, r0
	subs r1, r1, r2
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #0x12
	lsrs r6, r0, #0x10
	b _0805DA2E
	.align 2, 0
_0805DA20: .4byte gCurTask
_0805DA24: .4byte 0x0000022E
_0805DA28: .4byte 0xFFFFFDDF
_0805DA2C:
	movs r6, #0
_0805DA2E:
	movs r0, #6
	strh r0, [r4, #0x10]
	movs r0, #9
	strh r0, [r4, #0x12]
	movs r0, #2
	bl sub_805C900
	movs r5, #0
	adds r1, r4, #0
	adds r1, #0x2b
	ldrb r0, [r1]
	cmp r0, #0x20
	bne _0805DA5A
_0805DA48:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #6
	bhi _0805DA5A
	adds r0, r1, r5
	ldrb r0, [r0]
	cmp r0, #0x20
	beq _0805DA48
_0805DA5A:
	ldrh r1, [r4, #2]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _0805DAA8
	movs r0, #0x6a
	strh r0, [r4, #0xc]
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0805DA8A
	movs r2, #7
	subs r2, r2, r5
	strh r2, [r4, #0xe]
	movs r1, #0xc3
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r2, r2, #3
	subs r1, r1, r2
	strh r1, [r4, #0xa]
	adds r0, r5, #0
	adds r0, #0x2b
	adds r0, r4, r0
	b _0805DA9A
_0805DA8A:
	movs r0, #1
	strh r0, [r4, #0xe]
	movs r1, #0xbb
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r4, #0xa]
	ldr r0, _0805DAA4 @ =gUnknown_08688688
_0805DA9A:
	adds r1, r4, #0
	bl sub_8052F78
	b _0805DAF0
	.align 2, 0
_0805DAA4: .4byte gUnknown_08688688
_0805DAA8:
	ldrh r0, [r4, #2]
	movs r1, #0x19
	bl Div
	ldrh r2, [r4, #2]
	lsrs r2, r2, #4
	movs r1, #0x77
	subs r1, r1, r2
	subs r1, r1, r0
	strh r1, [r4, #0xc]
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0805DAE0
	movs r0, #7
	subs r0, r0, r5
	strh r0, [r4, #0xe]
	movs r1, #6
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x8f
	strh r1, [r4, #0xa]
	adds r0, r5, #0
	adds r0, #0x2b
	adds r0, r4, r0
	adds r1, r4, #0
	bl sub_8052C84
	b _0805DAF0
_0805DAE0:
	movs r0, #1
	strh r0, [r4, #0xe]
	movs r0, #0xb7
	strh r0, [r4, #0xa]
	ldr r0, _0805DB00 @ =gUnknown_08688688
	adds r1, r4, #0
	bl sub_8052C84
_0805DAF0:
	strh r7, [r4, #0xa]
	mov r3, r8
	strh r3, [r4, #0xc]
_0805DAF6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805DB00: .4byte gUnknown_08688688

	thumb_func_start sub_805DB04
sub_805DB04: @ 0x0805DB04
	push {lr}
	ldr r0, _0805DB4C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldrh r1, [r3, #0x20]
	movs r0, #3
	strh r0, [r3, #0xe]
	strh r0, [r3, #0x10]
	movs r0, #0xe
	strh r0, [r3, #0x12]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r3, #0x22]
	ldr r2, _0805DB50 @ =0x00000221
	adds r0, r0, r2
	cmp r1, r0
	ble _0805DB68
	movs r0, #0x6d
	strh r0, [r3, #0xc]
	ldrh r0, [r3, #0xa]
	subs r0, #0x1c
	strh r0, [r3, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0805DB58
	movs r0, #0
	strh r0, [r3, #0xe]
	ldr r0, _0805DB54 @ =0x0000FF80
	strh r0, [r3, #0xa]
	b _0805DBAC
	.align 2, 0
_0805DB4C: .4byte gCurTask
_0805DB50: .4byte 0x00000221
_0805DB54: .4byte 0x0000FF80
_0805DB58:
	ldr r0, _0805DB64 @ =gUnknown_0868868C
	adds r1, r3, #0
	bl sub_8052F78
	b _0805DBAC
	.align 2, 0
_0805DB64: .4byte gUnknown_0868868C
_0805DB68:
	cmp r1, #0x2d
	ble _0805DBB8
	ldrh r0, [r3, #2]
	adds r0, #0x20
	strh r0, [r3, #2]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0xff
	bls _0805DB98
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #2]
	movs r0, #0x29
	strh r0, [r3, #0xa]
	movs r0, #0x6d
	strh r0, [r3, #0xc]
	ldr r0, _0805DB94 @ =gUnknown_0868868C
	adds r1, r3, #0
	bl sub_8052F78
	b _0805DBAC
	.align 2, 0
_0805DB94: .4byte gUnknown_0868868C
_0805DB98:
	movs r0, #0x19
	strh r0, [r3, #0xa]
	lsrs r1, r1, #0x14
	movs r0, #0x77
	subs r0, r0, r1
	strh r0, [r3, #0xc]
	ldr r0, _0805DBB4 @ =gUnknown_0868868C
	adds r1, r3, #0
	bl sub_8052C84
_0805DBAC:
	bl sub_805D9E4
	b _0805DBE8
	.align 2, 0
_0805DBB4: .4byte gUnknown_0868868C
_0805DBB8:
	cmp r1, #0x27
	ble _0805DBE8
	movs r0, #0x19
	strh r0, [r3, #0xa]
	ldrh r1, [r3, #2]
	lsrs r2, r1, #4
	movs r0, #0x77
	subs r0, r0, r2
	strh r0, [r3, #0xc]
	adds r1, #0x20
	strh r1, [r3, #2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xff
	bls _0805DBDC
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #2]
_0805DBDC:
	ldr r0, _0805DBEC @ =gUnknown_0868868C
	adds r1, r3, #0
	bl sub_8052C84
	bl sub_805D9E4
_0805DBE8:
	pop {r0}
	bx r0
	.align 2, 0
_0805DBEC: .4byte gUnknown_0868868C

	thumb_func_start sub_805DBF0
sub_805DBF0: @ 0x0805DBF0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0805DC2C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r7, [r4, #0xa]
	ldrh r0, [r4, #0xc]
	mov r8, r0
	ldrh r1, [r4, #0x20]
	ldrh r2, [r4, #0x22]
	ldr r3, _0805DC30 @ =0x0000022E
	adds r0, r2, r3
	cmp r1, r0
	bgt _0805DD02
	subs r3, #0xd
	adds r0, r2, r3
	cmp r1, r0
	ble _0805DC38
	ldr r0, _0805DC34 @ =0xFFFFFDDF
	adds r1, r1, r0
	subs r1, r1, r2
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #0x12
	lsrs r6, r0, #0x10
	b _0805DC3A
	.align 2, 0
_0805DC2C: .4byte gCurTask
_0805DC30: .4byte 0x0000022E
_0805DC34: .4byte 0xFFFFFDDF
_0805DC38:
	movs r6, #0
_0805DC3A:
	movs r0, #6
	strh r0, [r4, #0x10]
	movs r0, #9
	strh r0, [r4, #0x12]
	movs r0, #1
	bl sub_805C900
	movs r5, #0
	adds r1, r4, #0
	adds r1, #0x2b
	ldrb r0, [r1]
	cmp r0, #0x20
	bne _0805DC66
_0805DC54:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #6
	bhi _0805DC66
	adds r0, r1, r5
	ldrb r0, [r0]
	cmp r0, #0x20
	beq _0805DC54
_0805DC66:
	ldrh r1, [r4, #2]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _0805DCB4
	movs r0, #0x58
	strh r0, [r4, #0xc]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0805DC96
	movs r2, #7
	subs r2, r2, r5
	strh r2, [r4, #0xe]
	movs r1, #0xc3
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r2, r2, #3
	subs r1, r1, r2
	strh r1, [r4, #0xa]
	adds r0, r5, #0
	adds r0, #0x2b
	adds r0, r4, r0
	b _0805DCA6
_0805DC96:
	movs r0, #1
	strh r0, [r4, #0xe]
	movs r1, #0xbb
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r4, #0xa]
	ldr r0, _0805DCB0 @ =gUnknown_08688688
_0805DCA6:
	adds r1, r4, #0
	bl sub_8052F78
	b _0805DCFC
	.align 2, 0
_0805DCB0: .4byte gUnknown_08688688
_0805DCB4:
	ldrh r0, [r4, #2]
	movs r1, #0x19
	bl Div
	ldrh r2, [r4, #2]
	lsrs r2, r2, #4
	movs r1, #0x65
	subs r1, r1, r2
	subs r1, r1, r0
	strh r1, [r4, #0xc]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0805DCEC
	movs r0, #7
	subs r0, r0, r5
	strh r0, [r4, #0xe]
	movs r1, #6
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x8f
	strh r1, [r4, #0xa]
	adds r0, r5, #0
	adds r0, #0x2b
	adds r0, r4, r0
	adds r1, r4, #0
	bl sub_8052C84
	b _0805DCFC
_0805DCEC:
	movs r0, #1
	strh r0, [r4, #0xe]
	movs r0, #0xb7
	strh r0, [r4, #0xa]
	ldr r0, _0805DD0C @ =gUnknown_08688688
	adds r1, r4, #0
	bl sub_8052C84
_0805DCFC:
	strh r7, [r4, #0xa]
	mov r3, r8
	strh r3, [r4, #0xc]
_0805DD02:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805DD0C: .4byte gUnknown_08688688

	thumb_func_start sub_805DD10
sub_805DD10: @ 0x0805DD10
	push {lr}
	ldr r0, _0805DD64 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r3, r0, r1
	ldrh r1, [r3, #0x20]
	ldr r2, _0805DD68 @ =0x03000028
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805DE04
	movs r0, #3
	strh r0, [r3, #0xe]
	strh r0, [r3, #0x10]
	movs r0, #0xe
	strh r0, [r3, #0x12]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	ldrh r0, [r3, #0x22]
	ldr r2, _0805DD6C @ =0x00000221
	adds r0, r0, r2
	cmp r1, r0
	ble _0805DD84
	movs r0, #0x5b
	strh r0, [r3, #0xc]
	ldrh r0, [r3, #0xa]
	subs r0, #0x1c
	strh r0, [r3, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0805DD74
	movs r0, #0
	strh r0, [r3, #0xe]
	ldr r0, _0805DD70 @ =0x0000FF80
	strh r0, [r3, #0xa]
	b _0805DDC8
	.align 2, 0
_0805DD64: .4byte gCurTask
_0805DD68: .4byte 0x03000028
_0805DD6C: .4byte 0x00000221
_0805DD70: .4byte 0x0000FF80
_0805DD74:
	ldr r0, _0805DD80 @ =gUnknown_08688690
	adds r1, r3, #0
	bl sub_8052F78
	b _0805DDC8
	.align 2, 0
_0805DD80: .4byte gUnknown_08688690
_0805DD84:
	cmp r1, #0x33
	ble _0805DDD4
	ldrh r0, [r3, #2]
	adds r0, #0x20
	strh r0, [r3, #2]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0xff
	bls _0805DDB4
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #2]
	movs r0, #0x29
	strh r0, [r3, #0xa]
	movs r0, #0x5b
	strh r0, [r3, #0xc]
	ldr r0, _0805DDB0 @ =gUnknown_08688690
	adds r1, r3, #0
	bl sub_8052F78
	b _0805DDC8
	.align 2, 0
_0805DDB0: .4byte gUnknown_08688690
_0805DDB4:
	movs r0, #0x19
	strh r0, [r3, #0xa]
	lsrs r1, r1, #0x14
	movs r0, #0x65
	subs r0, r0, r1
	strh r0, [r3, #0xc]
	ldr r0, _0805DDD0 @ =gUnknown_08688690
	adds r1, r3, #0
	bl sub_8052C84
_0805DDC8:
	bl sub_805DBF0
	b _0805DE04
	.align 2, 0
_0805DDD0: .4byte gUnknown_08688690
_0805DDD4:
	cmp r1, #0x2d
	ble _0805DE04
	movs r0, #0x19
	strh r0, [r3, #0xa]
	ldrh r1, [r3, #2]
	lsrs r2, r1, #4
	movs r0, #0x65
	subs r0, r0, r2
	strh r0, [r3, #0xc]
	adds r1, #0x20
	strh r1, [r3, #2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xff
	bls _0805DDF8
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #2]
_0805DDF8:
	ldr r0, _0805DE08 @ =gUnknown_08688690
	adds r1, r3, #0
	bl sub_8052C84
	bl sub_805DBF0
_0805DE04:
	pop {r0}
	bx r0
	.align 2, 0
_0805DE08: .4byte gUnknown_08688690

	thumb_func_start sub_805DE0C
sub_805DE0C: @ 0x0805DE0C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0805DE48 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r7, [r4, #0xa]
	ldrh r0, [r4, #0xc]
	mov r8, r0
	ldrh r1, [r4, #0x20]
	ldrh r2, [r4, #0x22]
	ldr r3, _0805DE4C @ =0x0000022E
	adds r0, r2, r3
	cmp r1, r0
	bgt _0805DF1E
	subs r3, #0xd
	adds r0, r2, r3
	cmp r1, r0
	ble _0805DE54
	ldr r0, _0805DE50 @ =0xFFFFFDDF
	adds r1, r1, r0
	subs r1, r1, r2
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #0x12
	lsrs r6, r0, #0x10
	b _0805DE56
	.align 2, 0
_0805DE48: .4byte gCurTask
_0805DE4C: .4byte 0x0000022E
_0805DE50: .4byte 0xFFFFFDDF
_0805DE54:
	movs r6, #0
_0805DE56:
	movs r0, #6
	strh r0, [r4, #0x10]
	movs r0, #9
	strh r0, [r4, #0x12]
	movs r0, #0
	bl sub_805C900
	movs r5, #0
	adds r1, r4, #0
	adds r1, #0x2b
	ldrb r0, [r1]
	cmp r0, #0x20
	bne _0805DE82
_0805DE70:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #6
	bhi _0805DE82
	adds r0, r1, r5
	ldrb r0, [r0]
	cmp r0, #0x20
	beq _0805DE70
_0805DE82:
	ldrh r1, [r4, #2]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _0805DED0
	movs r0, #0x46
	strh r0, [r4, #0xc]
	ldrh r0, [r4, #0x26]
	cmp r0, #0
	beq _0805DEB2
	movs r2, #7
	subs r2, r2, r5
	strh r2, [r4, #0xe]
	movs r1, #0xc3
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r2, r2, #3
	subs r1, r1, r2
	strh r1, [r4, #0xa]
	adds r0, r5, #0
	adds r0, #0x2b
	adds r0, r4, r0
	b _0805DEC2
_0805DEB2:
	movs r0, #1
	strh r0, [r4, #0xe]
	movs r1, #0xbb
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r4, #0xa]
	ldr r0, _0805DECC @ =gUnknown_08688688
_0805DEC2:
	adds r1, r4, #0
	bl sub_8052F78
	b _0805DF18
	.align 2, 0
_0805DECC: .4byte gUnknown_08688688
_0805DED0:
	ldrh r0, [r4, #2]
	movs r1, #0x19
	bl Div
	ldrh r2, [r4, #2]
	lsrs r2, r2, #4
	movs r1, #0x53
	subs r1, r1, r2
	subs r1, r1, r0
	strh r1, [r4, #0xc]
	ldrh r0, [r4, #0x26]
	cmp r0, #0
	beq _0805DF08
	movs r0, #7
	subs r0, r0, r5
	strh r0, [r4, #0xe]
	movs r1, #6
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x8f
	strh r1, [r4, #0xa]
	adds r0, r5, #0
	adds r0, #0x2b
	adds r0, r4, r0
	adds r1, r4, #0
	bl sub_8052C84
	b _0805DF18
_0805DF08:
	movs r0, #1
	strh r0, [r4, #0xe]
	movs r0, #0xb7
	strh r0, [r4, #0xa]
	ldr r0, _0805DF28 @ =gUnknown_08688688
	adds r1, r4, #0
	bl sub_8052C84
_0805DF18:
	strh r7, [r4, #0xa]
	mov r3, r8
	strh r3, [r4, #0xc]
_0805DF1E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805DF28: .4byte gUnknown_08688688

	thumb_func_start sub_805DF2C
sub_805DF2C: @ 0x0805DF2C
	push {lr}
	ldr r0, _0805DF74 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldrh r1, [r3, #0x20]
	movs r0, #3
	strh r0, [r3, #0xe]
	strh r0, [r3, #0x10]
	movs r0, #0xe
	strh r0, [r3, #0x12]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r3, #0x22]
	ldr r2, _0805DF78 @ =0x00000221
	adds r0, r0, r2
	cmp r1, r0
	ble _0805DF90
	movs r0, #0x49
	strh r0, [r3, #0xc]
	ldrh r0, [r3, #0xa]
	subs r0, #0x1c
	strh r0, [r3, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0805DF80
	movs r0, #0
	strh r0, [r3, #0xe]
	ldr r0, _0805DF7C @ =0x0000FF80
	strh r0, [r3, #0xa]
	b _0805DFD4
	.align 2, 0
_0805DF74: .4byte gCurTask
_0805DF78: .4byte 0x00000221
_0805DF7C: .4byte 0x0000FF80
_0805DF80:
	ldr r0, _0805DF8C @ =gUnknown_08688694
	adds r1, r3, #0
	bl sub_8052F78
	b _0805DFD4
	.align 2, 0
_0805DF8C: .4byte gUnknown_08688694
_0805DF90:
	cmp r1, #0x39
	ble _0805DFE0
	ldrh r0, [r3, #2]
	adds r0, #0x20
	strh r0, [r3, #2]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0xff
	bls _0805DFC0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #2]
	movs r0, #0x29
	strh r0, [r3, #0xa]
	movs r0, #0x49
	strh r0, [r3, #0xc]
	ldr r0, _0805DFBC @ =gUnknown_08688694
	adds r1, r3, #0
	bl sub_8052F78
	b _0805DFD4
	.align 2, 0
_0805DFBC: .4byte gUnknown_08688694
_0805DFC0:
	movs r0, #0x19
	strh r0, [r3, #0xa]
	lsrs r1, r1, #0x14
	movs r0, #0x53
	subs r0, r0, r1
	strh r0, [r3, #0xc]
	ldr r0, _0805DFDC @ =gUnknown_08688694
	adds r1, r3, #0
	bl sub_8052C84
_0805DFD4:
	bl sub_805DE0C
	b _0805E010
	.align 2, 0
_0805DFDC: .4byte gUnknown_08688694
_0805DFE0:
	cmp r1, #0x33
	ble _0805E010
	movs r0, #0x19
	strh r0, [r3, #0xa]
	ldrh r1, [r3, #2]
	lsrs r2, r1, #4
	movs r0, #0x53
	subs r0, r0, r2
	strh r0, [r3, #0xc]
	adds r1, #0x20
	strh r1, [r3, #2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xff
	bls _0805E004
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #2]
_0805E004:
	ldr r0, _0805E014 @ =gUnknown_08688694
	adds r1, r3, #0
	bl sub_8052C84
	bl sub_805DE0C
_0805E010:
	pop {r0}
	bx r0
	.align 2, 0
_0805E014: .4byte gUnknown_08688694

	thumb_func_start sub_805E018
sub_805E018: @ 0x0805E018
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0805E088 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	ldrh r1, [r6, #0x20]
	ldrh r2, [r6, #0x22]
	ldr r4, _0805E08C @ =0x00000221
	adds r0, r2, r4
	cmp r1, r0
	ble _0805E0C4
	ldr r3, _0805E090 @ =0xFFFFFDDF
	adds r0, r1, r3
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #0x12
	movs r7, #0
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	subs r4, r0, #5
_0805E050:
	lsls r1, r7, #5
	subs r0, r1, r4
	strh r0, [r6, #0xa]
	subs r0, r5, #5
	subs r1, r1, r0
	movs r0, #0x20
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0805E0B4
	adds r0, r6, #0
	adds r0, #0x29
	ldrb r0, [r0]
	asrs r0, r7
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _0805E0A8
	lsrs r0, r7, #1
	movs r1, #0xd
	subs r1, r1, r0
	strh r1, [r6, #0x12]
	adds r0, r7, #0
	ands r0, r2
	cmp r0, #0
	beq _0805E098
	ldr r0, _0805E094 @ =gUnknown_08688698
	b _0805E09A
	.align 2, 0
_0805E088: .4byte gCurTask
_0805E08C: .4byte 0x00000221
_0805E090: .4byte 0xFFFFFDDF
_0805E094: .4byte gUnknown_08688698
_0805E098:
	ldr r0, _0805E0A4 @ =gUnknown_08688688
_0805E09A:
	adds r1, r6, #0
	bl sub_8052F78
	b _0805E0B4
	.align 2, 0
_0805E0A4: .4byte gUnknown_08688688
_0805E0A8:
	movs r0, #0xb
	strh r0, [r6, #0x12]
	ldr r0, _0805E0C0 @ =gUnknown_0868869C
	adds r1, r6, #0
	bl sub_8052F78
_0805E0B4:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #6
	bls _0805E050
	b _0805E1D2
	.align 2, 0
_0805E0C0: .4byte gUnknown_0868869C
_0805E0C4:
	cmp r1, #0x86
	bls _0805E128
	movs r7, #0
	ldr r4, _0805E0F4 @ =0x03000029
	adds r5, r3, r4
	movs r4, #1
_0805E0D0:
	lsls r0, r7, #5
	adds r0, #5
	strh r0, [r6, #0xa]
	ldrb r0, [r5]
	asrs r0, r7
	ands r0, r4
	cmp r0, #0
	beq _0805E10C
	lsrs r0, r7, #1
	movs r1, #0xd
	subs r1, r1, r0
	strh r1, [r6, #0x12]
	adds r0, r7, #0
	ands r0, r4
	cmp r0, #0
	beq _0805E0FC
	ldr r0, _0805E0F8 @ =gUnknown_08688698
	b _0805E0FE
	.align 2, 0
_0805E0F4: .4byte 0x03000029
_0805E0F8: .4byte gUnknown_08688698
_0805E0FC:
	ldr r0, _0805E108 @ =gUnknown_08688688
_0805E0FE:
	adds r1, r6, #0
	bl sub_8052F78
	b _0805E118
	.align 2, 0
_0805E108: .4byte gUnknown_08688688
_0805E10C:
	movs r0, #0xb
	strh r0, [r6, #0x12]
	ldr r0, _0805E124 @ =gUnknown_0868869C
	adds r1, r6, #0
	bl sub_8052F78
_0805E118:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #6
	bls _0805E0D0
	b _0805E1D2
	.align 2, 0
_0805E124: .4byte gUnknown_0868869C
_0805E128:
	cmp r1, #0x31
	bls _0805E1D2
	movs r7, #0
	subs r1, #0x31
	mov sb, r1
	ldr r0, _0805E1A4 @ =gSineTable
	mov r8, r0
_0805E136:
	mov r1, sb
	lsls r0, r1, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r7, #2
	adds r0, r0, r7
	cmp r5, r0
	blt _0805E1C8
	subs r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x32
	bls _0805E150
	movs r5, #0x32
_0805E150:
	movs r0, #0x80
	lsls r0, r0, #2
	add r0, r8
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r1, #0x50
	bl Div
	adds r4, r0, #0
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0x50
	bl Div
	lsls r1, r7, #5
	adds r4, #5
	adds r1, r1, r4
	subs r1, r1, r0
	strh r1, [r6, #0xa]
	adds r0, r6, #0
	adds r0, #0x29
	ldrb r0, [r0]
	asrs r0, r7
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _0805E1BC
	lsrs r0, r7, #1
	movs r1, #0xd
	subs r1, r1, r0
	strh r1, [r6, #0x12]
	adds r0, r7, #0
	ands r0, r2
	cmp r0, #0
	beq _0805E1AC
	ldr r0, _0805E1A8 @ =gUnknown_08688698
	b _0805E1AE
	.align 2, 0
_0805E1A4: .4byte gSineTable
_0805E1A8: .4byte gUnknown_08688698
_0805E1AC:
	ldr r0, _0805E1B8 @ =gUnknown_08688688
_0805E1AE:
	adds r1, r6, #0
	bl sub_8052F78
	b _0805E1C8
	.align 2, 0
_0805E1B8: .4byte gUnknown_08688688
_0805E1BC:
	movs r0, #0xb
	strh r0, [r6, #0x12]
	ldr r0, _0805E1E0 @ =gUnknown_0868869C
	adds r1, r6, #0
	bl sub_8052F78
_0805E1C8:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #6
	bls _0805E136
_0805E1D2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805E1E0: .4byte gUnknown_0868869C

    thumb_func_start TaskDestructor_805E1E4
TaskDestructor_805E1E4: @ 0x0805E1E4
    bx lr
    .align 2, 0
