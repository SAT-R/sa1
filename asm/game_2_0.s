.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_805BC94
sub_805BC94: @ 0x0805BC94
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x58
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x30]
	movs r1, #100
	bl Div
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805BCB8
	movs r0, #3
	str r0, [sp, #0x38]
	b _0805BCCE
_0805BCB8:
	ldr r0, [sp, #0x30]
	movs r1, #10
	bl Div
	lsls r0, r0, #0x18
	movs r1, #1
	str r1, [sp, #0x38]
	cmp r0, #0
	beq _0805BCCE
	movs r2, #2
	str r2, [sp, #0x38]
_0805BCCE:
	mov r3, sp
	adds r3, #0x2c
	str r3, [sp, #0x3c]
	movs r0, #0x32
	strb r0, [r3]
	mov r0, sp
	adds r0, #0x2b
	str r0, [sp, #0x40]
	movs r0, #4
	ldr r1, [sp, #0x40]
	strb r0, [r1]
	ldr r7, _0805BE00 @ =gUiGraphics
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
	lsls r0, r0, #4
	str r0, [sp, #0x18]
	movs r2, #0x20
	str r2, [sp, #0x24]
	add r3, sp, #0x28
	mov sl, r3
	movs r0, #6
	strb r0, [r3]
	ldr r0, _0805BE04 @ =0x06015DA0
	str r0, [sp, #0xc]
	mov r5, sp
	adds r5, #0x2a
	movs r1, #0xd
	strb r1, [r5]
	ldr r2, [sp, #0x3c]
	ldrb r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldr r3, [sp, #0x3c]
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
	bl sub_80528AC
	movs r0, #0x10
	ldr r1, [sp, #0x3c]
	strb r0, [r1]
	movs r0, #8
	ldr r2, [sp, #0x40]
	strb r0, [r2]
	movs r3, #0xe0
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r0, [r0]
	str r0, [sp, #0x14]
	movs r1, #0xe2
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x18]
	movs r2, #0x20
	str r2, [sp, #0x24]
	movs r0, #6
	mov r3, sl
	strb r0, [r3]
	ldr r0, _0805BE08 @ =0x060177A0
	str r0, [sp, #0xc]
	movs r1, #0xd
	strb r1, [r5]
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r1, sp
	movs r3, #0xe6
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r0, [r0]
	strb r0, [r1, #8]
	adds r2, #8
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #9]
	adds r3, #8
	adds r0, r7, r3
	ldr r0, [r0]
	strb r0, [r1, #0xa]
	adds r2, #8
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	ldr r3, [sp, #0x38]
	cmp r3, #1
	bne _0805BE0C
	movs r0, #0x2f
	b _0805BE1C
	.align 2, 0
_0805BE00: .4byte gUiGraphics
_0805BE04: .4byte 0x06015DA0
_0805BE08: .4byte 0x060177A0
_0805BE0C:
	ldr r2, [sp, #0x38]
	cmp r2, #2
	bne _0805BE1A
	movs r0, #0x30
	add r3, sp, #0x2c
	strb r0, [r3]
	b _0805BE20
_0805BE1A:
	movs r0, #0x31
_0805BE1C:
	add r1, sp, #0x2c
	strb r0, [r1]
_0805BE20:
	mov r2, sp
	adds r2, #0x2b
	str r2, [sp, #0x44]
	movs r0, #2
	strb r0, [r2]
	ldr r7, _0805C160 @ =gUiGraphics
	add r6, sp, #0x2c
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0xe0
	lsls r0, r0, #4
	str r0, [sp, #0x18]
	movs r3, #0x20
	str r3, [sp, #0x24]
	mov r0, sp
	adds r0, #0x28
	str r0, [sp, #0x48]
	movs r1, #6
	strb r1, [r0]
	ldr r0, _0805C164 @ =0x060167A0
	str r0, [sp, #0xc]
	subs r2, #1
	str r2, [sp, #0x4c]
	movs r3, #0xd
	strb r3, [r2]
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	bl sub_80528AC
	ldr r0, [sp, #0x38]
	cmp r0, #3
	beq _0805BED6
	b _0805C19C
_0805BED6:
	movs r1, #1
	str r1, [sp, #0x34]
	ldr r0, [sp, #0x30]
	movs r1, #100
	bl Div
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, [sp, #0x30]
	movs r1, #100
	bl Mod
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x30]
	cmp r5, #0
	beq _0805BFB2
	movs r2, #0
	str r2, [sp, #0x34]
	movs r3, #0x20
	strb r3, [r6]
	add r0, sp, #0x38
	ldrb r1, [r0]
	ldr r0, [sp, #0x44]
	strb r1, [r0]
	lsls r4, r5, #7
	ldr r1, _0805C168 @ =gUiGraphics + ((32 * 0x1C) + 0)
	ldr r0, [r1]
	adds r0, r0, r4
	str r0, [sp, #0x14]
	ldr r2, _0805C16C @ =gUiGraphics + ((32 * 0x1C) + 4)
	ldr r0, [r2]
	str r0, [sp, #0x20]
	ldr r0, _0805C170 @ =0x060169E0
	str r0, [sp, #0xc]
	movs r3, #0x40
	str r3, [sp, #0x18]
	movs r0, #0x20
	str r0, [sp, #0x24]
	movs r2, #6
	ldr r1, [sp, #0x48]
	strb r2, [r1]
	movs r0, #0xd
	ldr r3, [sp, #0x4c]
	strb r0, [r3]
	ldr r1, _0805C174 @ =gUiGraphics + ((32 * 0x1C) + 8)
	ldr r0, [r1]
	str r0, [sp, #4]
	mov r1, sp
	ldr r2, _0805C178 @ =gUiGraphics + ((32 * 0x1C) + 0xC)
	ldr r0, [r2]
	strb r0, [r1, #8]
	ldr r3, _0805C17C @ =gUiGraphics + ((32 * 0x1C) + 0x10)
	ldr r0, [r3]
	strb r0, [r1, #9]
	movs r0, #0xe5
	lsls r0, r0, #2
	adds r5, r7, r0
	ldr r0, [r5]
	strb r0, [r1, #0xa]
	ldr r2, _0805C180 @ =gUiGraphics + ((32 * 0x1C) + 0x18)
	ldr r0, [r2]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r3, #0x20
	strb r3, [r6]
	add r0, sp, #0x38
	ldrb r1, [r0]
	ldr r0, [sp, #0x44]
	strb r1, [r0]
	ldr r1, _0805C168 @ =gUiGraphics + ((32 * 0x1C) + 0)
	ldr r0, [r1]
	adds r0, r0, r4
	adds r0, #0x40
	str r0, [sp, #0x14]
	ldr r2, _0805C16C @ =gUiGraphics + ((32 * 0x1C) + 4)
	ldr r0, [r2]
	str r0, [sp, #0x20]
	ldr r0, _0805C184 @ =0x06016A60
	str r0, [sp, #0xc]
	movs r3, #0x40
	str r3, [sp, #0x18]
	movs r0, #0x20
	str r0, [sp, #0x24]
	movs r2, #6
	ldr r1, [sp, #0x48]
	strb r2, [r1]
	movs r0, #0xd
	ldr r3, [sp, #0x4c]
	strb r0, [r3]
	ldr r1, _0805C174 @ =gUiGraphics + ((32 * 0x1C) + 8)
	ldr r0, [r1]
	str r0, [sp, #4]
	mov r1, sp
	ldr r2, _0805C178 @ =gUiGraphics + ((32 * 0x1C) + 0xC)
	ldr r0, [r2]
	strb r0, [r1, #8]
	ldr r3, _0805C17C @ =gUiGraphics + ((32 * 0x1C) + 0x10)
	ldr r0, [r3]
	strb r0, [r1, #9]
	ldr r0, [r5]
	strb r0, [r1, #0xa]
	ldr r2, _0805C180 @ =gUiGraphics + ((32 * 0x1C) + 0x18)
	ldr r0, [r2]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
_0805BFB2:
	ldr r0, [sp, #0x30]
	movs r1, #10
	bl Div
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, [sp, #0x30]
	movs r1, #10
	bl Mod
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x30]
	cmp r5, #0
	bne _0805BFD6
	ldr r3, [sp, #0x34]
	cmp r3, #0
	bne _0805C094
_0805BFD6:
	movs r0, #0
	str r0, [sp, #0x34]
	movs r1, #0x20
	strb r1, [r6]
	add r2, sp, #0x38
	ldrb r3, [r2]
	ldr r2, [sp, #0x44]
	strb r3, [r2]
	lsls r5, r5, #7
	mov sb, r5
	ldr r3, _0805C168 @ =gUiGraphics + ((32 * 0x1C) + 0)
	ldr r0, [r3]
	add r0, sb
	str r0, [sp, #0x14]
	ldr r1, _0805C16C @ =gUiGraphics + ((32 * 0x1C) + 4)
	ldr r0, [r1]
	str r0, [sp, #0x20]
	ldr r0, _0805C188 @ =0x06016BA0
	str r0, [sp, #0xc]
	movs r2, #0x40
	str r2, [sp, #0x18]
	movs r3, #0x20
	str r3, [sp, #0x24]
	movs r1, #6
	ldr r0, [sp, #0x48]
	strb r1, [r0]
	movs r3, #0xd
	ldr r2, [sp, #0x4c]
	strb r3, [r2]
	ldr r1, _0805C174 @ =gUiGraphics + ((32 * 0x1C) + 8)
	ldr r0, [r1]
	str r0, [sp, #4]
	mov r1, sp
	ldr r2, _0805C178 @ =gUiGraphics + ((32 * 0x1C) + 0xC)
	ldr r0, [r2]
	strb r0, [r1, #8]
	ldr r3, _0805C17C @ =gUiGraphics + ((32 * 0x1C) + 0x10)
	ldr r0, [r3]
	strb r0, [r1, #9]
	movs r0, #0xe5
	lsls r0, r0, #2
	adds r5, r7, r0
	ldr r0, [r5]
	strb r0, [r1, #0xa]
	movs r2, #0xe6
	lsls r2, r2, #2
	adds r7, r7, r2
	ldr r0, [r7]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r3, #0x20
	strb r3, [r6]
	add r0, sp, #0x38
	ldrb r1, [r0]
	ldr r0, [sp, #0x44]
	strb r1, [r0]
	ldr r1, _0805C168 @ =gUiGraphics + ((32 * 0x1C) + 0)
	ldr r0, [r1]
	add r0, sb
	adds r0, #0x40
	str r0, [sp, #0x14]
	ldr r2, _0805C16C @ =gUiGraphics + ((32 * 0x1C) + 4)
	ldr r0, [r2]
	str r0, [sp, #0x20]
	ldr r0, _0805C18C @ =0x06016C20
	str r0, [sp, #0xc]
	movs r3, #0x40
	str r3, [sp, #0x18]
	movs r0, #0x20
	str r0, [sp, #0x24]
	movs r2, #6
	ldr r1, [sp, #0x48]
	strb r2, [r1]
	movs r0, #0xd
	ldr r3, [sp, #0x4c]
	strb r0, [r3]
	ldr r1, _0805C174 @ =gUiGraphics + ((32 * 0x1C) + 8)
	ldr r0, [r1]
	str r0, [sp, #4]
	mov r1, sp
	ldr r2, _0805C178 @ =gUiGraphics + ((32 * 0x1C) + 0xC)
	ldr r0, [r2]
	strb r0, [r1, #8]
	ldr r3, _0805C17C @ =gUiGraphics + ((32 * 0x1C) + 0x10)
	ldr r0, [r3]
	strb r0, [r1, #9]
	ldr r0, [r5]
	strb r0, [r1, #0xa]
	ldr r0, [r7]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
_0805C094:
	ldr r1, [sp, #0x30]
	lsls r0, r1, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _0805C0A6
	ldr r2, [sp, #0x34]
	cmp r2, #0
	beq _0805C0A6
	b _0805C416
_0805C0A6:
	movs r3, #0x20
	add r0, sp, #0x2c
	strb r3, [r0]
	movs r1, #3
	movs r2, #0x2b
	add r2, sp
	strb r1, [r2]
	ldr r2, _0805C160 @ =gUiGraphics
	lsls r7, r5, #7
	ldr r3, _0805C168 @ =gUiGraphics + ((32 * 0x1C) + 0)
	ldr r0, [r3]
	adds r0, r0, r7
	str r0, [sp, #0x14]
	ldr r1, _0805C16C @ =gUiGraphics + ((32 * 0x1C) + 4)
	ldr r0, [r1]
	str r0, [sp, #0x20]
	ldr r0, _0805C190 @ =0x06016BE0
	str r0, [sp, #0xc]
	movs r3, #0x40
	str r3, [sp, #0x18]
	movs r0, #0x20
	str r0, [sp, #0x24]
	movs r1, #6
	add r3, sp, #0x28
	strb r1, [r3]
	movs r0, #0xd
	movs r1, #0x2a
	add r1, sp
	strb r0, [r1]
	ldr r3, _0805C174 @ =gUiGraphics + ((32 * 0x1C) + 8)
	ldr r0, [r3]
	str r0, [sp, #4]
	mov r1, sp
	ldr r3, _0805C178 @ =gUiGraphics + ((32 * 0x1C) + 0xC)
	ldr r0, [r3]
	strb r0, [r1, #8]
	ldr r3, _0805C17C @ =gUiGraphics + ((32 * 0x1C) + 0x10)
	ldr r0, [r3]
	strb r0, [r1, #9]
	ldr r3, _0805C194 @ =gUiGraphics + ((32 * 0x1C) + 0x14)
	ldr r0, [r3]
	strb r0, [r1, #0xa]
	movs r0, #0xe6
	lsls r0, r0, #2
	adds r5, r2, r0
	ldr r0, [r5]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r1, #0x20
	add r2, sp, #0x2c
	strb r1, [r2]
	movs r3, #3
	movs r0, #0x2b
	add r0, sp
	strb r3, [r0]
	ldr r1, _0805C168 @ =gUiGraphics + ((32 * 0x1C) + 0)
	ldr r0, [r1]
	adds r0, r0, r7
	adds r0, #0x40
	str r0, [sp, #0x14]
	ldr r2, _0805C16C @ =gUiGraphics + ((32 * 0x1C) + 4)
	ldr r0, [r2]
	str r0, [sp, #0x20]
	ldr r0, _0805C198 @ =0x06016C60
	str r0, [sp, #0xc]
	movs r3, #0x40
	str r3, [sp, #0x18]
	movs r0, #0x20
	str r0, [sp, #0x24]
	movs r1, #6
	add r2, sp, #0x28
	strb r1, [r2]
	movs r3, #0xd
	movs r0, #0x2a
	add r0, sp
	strb r3, [r0]
	ldr r1, _0805C174 @ =gUiGraphics + ((32 * 0x1C) + 8)
	ldr r0, [r1]
	str r0, [sp, #4]
	mov r1, sp
	ldr r2, _0805C178 @ =gUiGraphics + ((32 * 0x1C) + 0xC)
	ldr r0, [r2]
	strb r0, [r1, #8]
	ldr r3, _0805C17C @ =gUiGraphics + ((32 * 0x1C) + 0x10)
	ldr r0, [r3]
	strb r0, [r1, #9]
	ldr r2, _0805C194 @ =gUiGraphics + ((32 * 0x1C) + 0x14)
	ldr r0, [r2]
	strb r0, [r1, #0xa]
	ldr r0, [r5]
	b _0805C318
	.align 2, 0
_0805C160: .4byte gUiGraphics
_0805C164: .4byte 0x060167A0
_0805C168: .4byte gUiGraphics + ((32 * 0x1C) + 0)
_0805C16C: .4byte gUiGraphics + ((32 * 0x1C) + 4)
_0805C170: .4byte 0x060169E0
_0805C174: .4byte gUiGraphics + ((32 * 0x1C) + 8)
_0805C178: .4byte gUiGraphics + ((32 * 0x1C) + 0xC)
_0805C17C: .4byte gUiGraphics + ((32 * 0x1C) + 0x10)
_0805C180: .4byte gUiGraphics + ((32 * 0x1C) + 0x18)
_0805C184: .4byte 0x06016A60
_0805C188: .4byte 0x06016BA0
_0805C18C: .4byte 0x06016C20
_0805C190: .4byte 0x06016BE0
_0805C194: .4byte gUiGraphics + ((32 * 0x1C) + 0x14)
_0805C198: .4byte 0x06016C60
_0805C19C:
	ldr r3, [sp, #0x38]
	cmp r3, #2
	beq _0805C1A4
	b _0805C34C
_0805C1A4:
	ldr r0, [sp, #0x30]
	movs r1, #10
	bl Div
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, [sp, #0x30]
	movs r1, #10
	bl Mod
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x30]
	movs r0, #0x20
	strb r0, [r6]
	movs r2, #3
	ldr r1, [sp, #0x44]
	strb r2, [r1]
	lsls r5, r5, #7
	mov r8, r5
	ldr r3, _0805C324 @ =gUiGraphics + ((32 * 0x1C) + 0)
	ldr r0, [r3]
	add r0, r8
	str r0, [sp, #0x14]
	ldr r1, _0805C328 @ =gUiGraphics + ((32 * 0x1C) + 4)
	ldr r0, [r1]
	str r0, [sp, #0x20]
	ldr r0, _0805C32C @ =0x060169E0
	str r0, [sp, #0xc]
	movs r2, #0x40
	str r2, [sp, #0x18]
	movs r3, #0x20
	str r3, [sp, #0x24]
	movs r1, #6
	ldr r0, [sp, #0x48]
	strb r1, [r0]
	movs r3, #0xd
	ldr r2, [sp, #0x4c]
	strb r3, [r2]
	ldr r1, _0805C330 @ =gUiGraphics + ((32 * 0x1C) + 8)
	ldr r0, [r1]
	str r0, [sp, #4]
	mov r1, sp
	ldr r2, _0805C334 @ =gUiGraphics + ((32 * 0x1C) + 0xC)
	ldr r0, [r2]
	strb r0, [r1, #8]
	ldr r3, _0805C338 @ =gUiGraphics + ((32 * 0x1C) + 0x10)
	ldr r0, [r3]
	strb r0, [r1, #9]
	movs r0, #0xe5
	lsls r0, r0, #2
	adds r5, r7, r0
	ldr r0, [r5]
	strb r0, [r1, #0xa]
	ldr r2, _0805C33C @ =gUiGraphics + ((32 * 0x1C) + 0x18)
	ldr r0, [r2]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r3, #0x20
	strb r3, [r6]
	movs r1, #3
	ldr r0, [sp, #0x44]
	strb r1, [r0]
	ldr r2, _0805C324 @ =gUiGraphics + ((32 * 0x1C) + 0)
	ldr r0, [r2]
	add r0, r8
	adds r0, #0x40
	str r0, [sp, #0x14]
	ldr r3, _0805C328 @ =gUiGraphics + ((32 * 0x1C) + 4)
	ldr r0, [r3]
	str r0, [sp, #0x20]
	ldr r0, _0805C340 @ =0x06016A60
	str r0, [sp, #0xc]
	movs r0, #0x40
	str r0, [sp, #0x18]
	movs r1, #0x20
	str r1, [sp, #0x24]
	movs r3, #6
	ldr r2, [sp, #0x48]
	strb r3, [r2]
	movs r1, #0xd
	ldr r0, [sp, #0x4c]
	strb r1, [r0]
	ldr r2, _0805C330 @ =gUiGraphics + ((32 * 0x1C) + 8)
	ldr r0, [r2]
	str r0, [sp, #4]
	mov r1, sp
	ldr r3, _0805C334 @ =gUiGraphics + ((32 * 0x1C) + 0xC)
	ldr r0, [r3]
	strb r0, [r1, #8]
	ldr r2, _0805C338 @ =gUiGraphics + ((32 * 0x1C) + 0x10)
	ldr r0, [r2]
	strb r0, [r1, #9]
	ldr r0, [r5]
	strb r0, [r1, #0xa]
	ldr r3, _0805C33C @ =gUiGraphics + ((32 * 0x1C) + 0x18)
	ldr r0, [r3]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r0, #0x20
	strb r0, [r6]
	movs r2, #3
	ldr r1, [sp, #0x44]
	strb r2, [r1]
	ldr r3, [sp, #0x30]
	lsls r7, r3, #7
	ldr r1, _0805C324 @ =gUiGraphics + ((32 * 0x1C) + 0)
	ldr r0, [r1]
	adds r0, r0, r7
	str r0, [sp, #0x14]
	ldr r2, _0805C328 @ =gUiGraphics + ((32 * 0x1C) + 4)
	ldr r0, [r2]
	str r0, [sp, #0x20]
	ldr r0, _0805C344 @ =0x06016BA0
	str r0, [sp, #0xc]
	movs r3, #0x40
	str r3, [sp, #0x18]
	movs r0, #0x20
	str r0, [sp, #0x24]
	movs r2, #6
	ldr r1, [sp, #0x48]
	strb r2, [r1]
	movs r0, #0xd
	ldr r3, [sp, #0x4c]
	strb r0, [r3]
	ldr r1, _0805C330 @ =gUiGraphics + ((32 * 0x1C) + 8)
	ldr r0, [r1]
	str r0, [sp, #4]
	mov r1, sp
	ldr r2, _0805C334 @ =gUiGraphics + ((32 * 0x1C) + 0xC)
	ldr r0, [r2]
	strb r0, [r1, #8]
	ldr r3, _0805C338 @ =gUiGraphics + ((32 * 0x1C) + 0x10)
	ldr r0, [r3]
	strb r0, [r1, #9]
	ldr r0, [r5]
	strb r0, [r1, #0xa]
	ldr r2, _0805C33C @ =gUiGraphics + ((32 * 0x1C) + 0x18)
	ldr r0, [r2]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r3, #0x20
	strb r3, [r6]
	movs r1, #3
	ldr r0, [sp, #0x44]
	strb r1, [r0]
	ldr r2, _0805C324 @ =gUiGraphics + ((32 * 0x1C) + 0)
	ldr r0, [r2]
	adds r0, r0, r7
	adds r0, #0x40
	str r0, [sp, #0x14]
	ldr r3, _0805C328 @ =gUiGraphics + ((32 * 0x1C) + 4)
	ldr r0, [r3]
	str r0, [sp, #0x20]
	ldr r0, _0805C348 @ =0x06016C20
	str r0, [sp, #0xc]
	movs r0, #0x40
	str r0, [sp, #0x18]
	movs r1, #0x20
	str r1, [sp, #0x24]
	movs r3, #6
	ldr r2, [sp, #0x48]
	strb r3, [r2]
	movs r1, #0xd
	ldr r0, [sp, #0x4c]
	strb r1, [r0]
	ldr r2, _0805C330 @ =gUiGraphics + ((32 * 0x1C) + 8)
	ldr r0, [r2]
	str r0, [sp, #4]
	mov r1, sp
	ldr r3, _0805C334 @ =gUiGraphics + ((32 * 0x1C) + 0xC)
	ldr r0, [r3]
	strb r0, [r1, #8]
	ldr r2, _0805C338 @ =gUiGraphics + ((32 * 0x1C) + 0x10)
	ldr r0, [r2]
	strb r0, [r1, #9]
	ldr r0, [r5]
	strb r0, [r1, #0xa]
	ldr r3, _0805C33C @ =gUiGraphics + ((32 * 0x1C) + 0x18)
	ldr r0, [r3]
_0805C318:
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	b _0805C416
	.align 2, 0
_0805C324: .4byte gUiGraphics + ((32 * 0x1C) + 0)
_0805C328: .4byte gUiGraphics + ((32 * 0x1C) + 4)
_0805C32C: .4byte 0x060169E0
_0805C330: .4byte gUiGraphics + ((32 * 0x1C) + 8)
_0805C334: .4byte gUiGraphics + ((32 * 0x1C) + 0xC)
_0805C338: .4byte gUiGraphics + ((32 * 0x1C) + 0x10)
_0805C33C: .4byte gUiGraphics + ((32 * 0x1C) + 0x18)
_0805C340: .4byte 0x06016A60
_0805C344: .4byte 0x06016BA0
_0805C348: .4byte 0x06016C20
_0805C34C:
	ldr r0, [sp, #0x30]
	lsls r0, r0, #0x18
	str r0, [sp, #0x50]
	movs r1, #0x20
	add r2, sp, #0x2c
	strb r1, [r2]
	movs r3, #3
	movs r0, #0x2b
	add r0, sp
	strb r3, [r0]
	ldr r1, [sp, #0x50]
	lsrs r1, r1, #0x11
	str r1, [sp, #0x54]
	ldr r2, _0805C428 @ =gUiGraphics + ((32 * 0x1C) + 0)
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [sp, #0x14]
	ldr r3, _0805C42C @ =gUiGraphics + ((32 * 0x1C) + 4)
	ldr r0, [r3]
	str r0, [sp, #0x20]
	ldr r0, _0805C430 @ =0x060169E0
	str r0, [sp, #0xc]
	movs r0, #0x40
	str r0, [sp, #0x18]
	movs r1, #0x20
	str r1, [sp, #0x24]
	movs r2, #6
	add r3, sp, #0x28
	strb r2, [r3]
	movs r0, #0xd
	movs r1, #0x2a
	add r1, sp
	strb r0, [r1]
	ldr r2, _0805C434 @ =gUiGraphics + ((32 * 0x1C) + 8)
	ldr r0, [r2]
	str r0, [sp, #4]
	mov r1, sp
	ldr r3, _0805C438 @ =gUiGraphics + ((32 * 0x1C) + 0xC)
	ldr r0, [r3]
	strb r0, [r1, #8]
	ldr r2, _0805C43C @ =gUiGraphics + ((32 * 0x1C) + 0x10)
	ldr r0, [r2]
	strb r0, [r1, #9]
	ldr r3, _0805C440 @ =gUiGraphics + ((32 * 0x1C) + 0x14)
	ldr r0, [r3]
	strb r0, [r1, #0xa]
	movs r0, #0xe6
	lsls r0, r0, #2
	adds r5, r7, r0
	ldr r0, [r5]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r1, #0x20
	add r2, sp, #0x2c
	strb r1, [r2]
	movs r3, #3
	movs r0, #0x2b
	add r0, sp
	strb r3, [r0]
	ldr r1, _0805C428 @ =gUiGraphics + ((32 * 0x1C) + 0)
	ldr r0, [r1]
	ldr r2, [sp, #0x54]
	adds r0, r0, r2
	adds r0, #0x40
	str r0, [sp, #0x14]
	ldr r3, _0805C42C @ =gUiGraphics + ((32 * 0x1C) + 4)
	ldr r0, [r3]
	str r0, [sp, #0x20]
	ldr r0, _0805C444 @ =0x06016A60
	str r0, [sp, #0xc]
	movs r0, #0x40
	str r0, [sp, #0x18]
	movs r1, #0x20
	str r1, [sp, #0x24]
	movs r2, #6
	add r3, sp, #0x28
	strb r2, [r3]
	movs r0, #0xd
	movs r1, #0x2a
	add r1, sp
	strb r0, [r1]
	ldr r2, _0805C434 @ =gUiGraphics + ((32 * 0x1C) + 8)
	ldr r0, [r2]
	str r0, [sp, #4]
	mov r1, sp
	ldr r3, _0805C438 @ =gUiGraphics + ((32 * 0x1C) + 0xC)
	ldr r0, [r3]
	strb r0, [r1, #8]
	ldr r2, _0805C43C @ =gUiGraphics + ((32 * 0x1C) + 0x10)
	ldr r0, [r2]
	strb r0, [r1, #9]
	ldr r3, _0805C440 @ =gUiGraphics + ((32 * 0x1C) + 0x14)
	ldr r0, [r3]
	strb r0, [r1, #0xa]
	ldr r0, [r5]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
_0805C416:
	add sp, #0x58
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805C428: .4byte gUiGraphics + ((32 * 0x1C) + 0)
_0805C42C: .4byte gUiGraphics + ((32 * 0x1C) + 4)
_0805C430: .4byte 0x060169E0
_0805C434: .4byte gUiGraphics + ((32 * 0x1C) + 8)
_0805C438: .4byte gUiGraphics + ((32 * 0x1C) + 0xC)
_0805C43C: .4byte gUiGraphics + ((32 * 0x1C) + 0x10)
_0805C440: .4byte gUiGraphics + ((32 * 0x1C) + 0x14)
_0805C444: .4byte 0x06016A60

	thumb_func_start sub_805C448
sub_805C448: @ 0x0805C448
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp, #0xc]
	movs r4, #0
	bl sub_80535FC
	bl UiGfxStackInit
	ldr r0, _0805C57C @ =Task_805C6B0
	ldr r7, _0805C580 @ =0x00002120
	str r4, [sp]
	movs r1, #0x1c
	adds r2, r7, #0
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #8]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	mov sl, r1
	adds r1, r0, r1
	strh r4, [r1, #0x18]
	strh r4, [r1, #0x1a]
	movs r0, #0xf0
	strh r0, [r1, #0xa]
	movs r0, #0x7e
	strh r0, [r1, #0xc]
	movs r0, #8
	strh r0, [r1, #0xe]
	strh r0, [r1, #0x10]
	movs r6, #6
	strh r6, [r1, #0x12]
	movs r2, #1
	mov r8, r2
	mov r0, r8
	strb r0, [r1, #0x16]
	movs r0, #0xa
	strh r0, [r1, #8]
	ldr r0, _0805C584 @ =Task_805C740
	str r4, [sp]
	movs r1, #0x1c
	adds r2, r7, #0
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #4]
	ldrh r0, [r0, #6]
	mov r2, sl
	adds r1, r0, r2
	strh r4, [r1, #0x18]
	strh r4, [r1, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #1
	mov sb, r0
	mov r2, sb
	strh r2, [r1, #0xa]
	movs r0, #0x80
	strh r0, [r1, #0xc]
	movs r0, #9
	strh r0, [r1, #0xe]
	movs r0, #2
	strh r0, [r1, #0x10]
	strh r6, [r1, #0x12]
	mov r2, r8
	strb r2, [r1, #0x16]
	strh r4, [r1, #8]
	cmp r5, #0
	beq _0805C520
	ldr r0, _0805C588 @ =Task_805C83C
	str r4, [sp]
	movs r1, #0x1c
	adds r2, r7, #0
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0xc]
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r1, r0, r2
	strh r4, [r1, #0x18]
	strh r4, [r1, #0x1a]
	mov r0, sb
	strh r0, [r1]
	strh r4, [r1, #2]
	strh r4, [r1, #4]
	strh r4, [r1, #6]
	movs r0, #0x39
	strh r0, [r1, #0xa]
	movs r0, #0x49
	strh r0, [r1, #0xc]
	movs r0, #5
	strh r0, [r1, #0xe]
	movs r0, #4
	strh r0, [r1, #0x10]
	strh r6, [r1, #0x12]
	mov r2, r8
	strb r2, [r1, #0x16]
	strh r4, [r1, #8]
_0805C520:
	ldr r0, _0805C58C @ =sub_805C594
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0805C590 @ =TaskDestructor_nullsub_805C8FC
	str r1, [sp]
	movs r1, #0x1c
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	mov r1, sl
	adds r4, r0, r1
	movs r2, #0
	strh r2, [r4, #0x18]
	strb r5, [r4, #0x1a]
	ldr r0, [sp, #8]
	str r0, [r4, #0x10]
	ldr r1, [sp, #4]
	str r1, [r4, #0x14]
	ldr r2, [sp, #0xc]
	str r2, [r4, #0xc]
	movs r0, #0
	strh r0, [r4]
	movs r1, #1
	mov r2, r8
	strh r2, [r4, #2]
	movs r0, #2
	strh r0, [r4, #4]
	movs r2, #0
	strh r2, [r4, #6]
	movs r0, #0x60
	strh r0, [r4, #8]
	strb r1, [r4, #0xa]
	cmp r5, #0
	beq _0805C56C
	adds r0, r4, #0
	bl sub_80543A4
_0805C56C:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805C57C: .4byte Task_805C6B0
_0805C580: .4byte 0x00002120
_0805C584: .4byte Task_805C740
_0805C588: .4byte Task_805C83C
_0805C58C: .4byte sub_805C594
_0805C590: .4byte TaskDestructor_nullsub_805C8FC

	thumb_func_start sub_805C594
sub_805C594: @ 0x0805C594
	push {r4, r5, lr}
	ldr r0, _0805C5EC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r0, r1
	ldr r0, [r5, #0x10]
	ldrh r0, [r0, #6]
	adds r2, r0, r1
	ldr r0, [r5, #0x14]
	ldrh r0, [r0, #6]
	adds r1, r0, r1
	ldrb r0, [r5, #0x1a]
	cmp r0, #0
	beq _0805C5BE
	ldr r0, [r5, #0xc]
	ldrh r0, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r3, r0, r4
_0805C5BE:
	ldrh r0, [r5, #0x18]
	strh r0, [r2, #0x18]
	ldrh r0, [r5, #0x18]
	strh r0, [r1, #0x18]
	ldrb r0, [r5, #0x1a]
	cmp r0, #0
	beq _0805C5F6
	ldrh r0, [r5, #0x18]
	strh r0, [r3, #0x18]
	ldrb r0, [r5, #0x1a]
	cmp r0, #0
	beq _0805C5F6
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	cmp r0, #0x69
	bgt _0805C5F6
	cmp r0, #0x14
	ble _0805C5F0
	adds r0, r5, #0
	bl sub_805423C
	b _0805C5F6
	.align 2, 0
_0805C5EC: .4byte gCurTask
_0805C5F0:
	adds r0, r5, #0
	bl sub_80543A4
_0805C5F6:
	ldrh r0, [r5, #0x18]
	adds r0, #1
	movs r3, #0
	strh r0, [r5, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _0805C698
	ldr r2, _0805C670 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0805C674 @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0805C678 @ =gBldRegs
	strh r3, [r0]
	strh r3, [r0, #4]
	ldr r2, _0805C67C @ =gStageFlags
	ldrh r1, [r2]
	ldr r0, _0805C680 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2]
	ldr r3, _0805C684 @ =gPlayer
	ldr r0, [r3, #0x10]
	ldr r4, _0805C688 @ =0xFFDFFFFF
	ands r0, r4
	str r0, [r3, #0x10]
	ldr r0, _0805C68C @ =gPlayerControls
	ldrh r2, [r0]
	ldrh r0, [r0, #2]
	orrs r2, r0
	ldrh r1, [r3, #0x38]
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #0x38]
	ldr r1, _0805C690 @ =gPartner
	ldr r0, [r1, #0x10]
	ands r0, r4
	str r0, [r1, #0x10]
	ldrh r0, [r1, #0x38]
	orrs r2, r0
	strh r2, [r1, #0x38]
	bl CreateSpecialStageUI
	ldr r0, [r5, #0x14]
	bl TaskDestroy
	ldr r0, [r5, #0x10]
	bl TaskDestroy
	ldrb r0, [r5, #0x1a]
	cmp r0, #0
	beq _0805C664
	ldr r0, [r5, #0xc]
	bl TaskDestroy
_0805C664:
	ldr r0, _0805C694 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0805C6A4
	.align 2, 0
_0805C670: .4byte gDispCnt
_0805C674: .4byte 0x00001FFF
_0805C678: .4byte gBldRegs
_0805C67C: .4byte gStageFlags
_0805C680: .4byte 0x0000FFFE
_0805C684: .4byte gPlayer
_0805C688: .4byte 0xFFDFFFFF
_0805C68C: .4byte gPlayerControls
_0805C690: .4byte gPartner
_0805C694: .4byte gCurTask
_0805C698:
	cmp r0, #2
	bne _0805C6A4
	ldr r0, _0805C6AC @ =gUnknown_03005154
	ldrh r0, [r0]
	bl sub_805BC94
_0805C6A4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805C6AC: .4byte gUnknown_03005154

	thumb_func_start Task_805C6B0
Task_805C6B0: @ 0x0805C6B0
	push {lr}
	ldr r0, _0805C6F0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	movs r1, #0x18
	ldrsh r0, [r2, r1]
	cmp r0, #0xf5
	ble _0805C6F4
	ldrh r3, [r2, #0xa]
	movs r0, #0xa
	ldrsh r1, [r2, r0]
	movs r0, #0x20
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0805C6E8
	adds r0, r3, #0
	adds r0, #0x20
	strh r0, [r2, #0xa]
	ldrh r1, [r2, #0xe]
	movs r3, #0xe
	ldrsh r0, [r2, r3]
	cmp r0, #0
	beq _0805C6E8
	subs r0, r1, #1
	strh r0, [r2, #0xe]
_0805C6E8:
	ldrh r0, [r2, #0xa]
	subs r0, #0x1a
	strh r0, [r2, #0xa]
	b _0805C730
	.align 2, 0
_0805C6F0: .4byte gCurTask
_0805C6F4:
	cmp r0, #0x2d
	ble _0805C6FE
	movs r0, #0x11
	strh r0, [r2, #0xc]
	b _0805C730
_0805C6FE:
	cmp r0, #0x21
	ble _0805C70A
	ldrh r0, [r2, #0xc]
	subs r0, #8
	strh r0, [r2, #0xc]
	b _0805C730
_0805C70A:
	cmp r0, #0x19
	ble _0805C718
	ldr r0, _0805C714 @ =0x0000FFF0
	strh r0, [r2, #0xa]
	b _0805C730
	.align 2, 0
_0805C714: .4byte 0x0000FFF0
_0805C718:
	cmp r0, #0xf
	ble _0805C730
	ldrh r0, [r2, #0xa]
	subs r0, #0x1a
	strh r0, [r2, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x10
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0805C730
	strh r1, [r2, #0xa]
_0805C730:
	ldr r0, _0805C73C @ =gUnknown_0868862C
	adds r1, r2, #0
	bl sub_8052F78
	pop {r0}
	bx r0
	.align 2, 0
_0805C73C: .4byte gUnknown_0868862C

	thumb_func_start Task_805C740
Task_805C740: @ 0x0805C740
	push {r4, lr}
	sub sp, #0x1c
	ldr r1, _0805C794 @ =gUnknown_08688638
	mov r0, sp
	movs r2, #0x16
	bl memcpy
	mov r0, sp
	adds r0, #0x16
	movs r1, #0
	movs r2, #5
	bl memset
	ldr r0, _0805C798 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0xf5
	ble _0805C79C
	ldrh r0, [r4, #0xa]
	subs r0, #0x1c
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x1f
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0805C7EA
	ldrh r1, [r4, #0xe]
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _0805C78E
	subs r0, r1, #1
	strh r0, [r4, #0xe]
_0805C78E:
	ldrh r0, [r4, #0xa]
	adds r0, #0x20
	b _0805C7DC
	.align 2, 0
_0805C794: .4byte gUnknown_08688638
_0805C798: .4byte gCurTask
_0805C79C:
	cmp r0, #0x2d
	ble _0805C7AC
	movs r0, #0x13
	strh r0, [r4, #0xc]
	ldrh r2, [r4, #0xa]
	subs r0, r2, #2
	strh r0, [r4, #0xa]
	b _0805C7CC
_0805C7AC:
	cmp r0, #0x21
	ble _0805C7BE
	ldrh r0, [r4, #0xc]
	subs r0, #8
	strh r0, [r4, #0xc]
	ldrh r2, [r4, #0xa]
	subs r0, r2, #2
	strh r0, [r4, #0xa]
	b _0805C7CC
_0805C7BE:
	cmp r0, #0x19
	ble _0805C7F6
	ldrh r2, [r4, #0xa]
	subs r0, r2, #2
	strh r0, [r4, #0xa]
	movs r1, #9
	strh r1, [r4, #0xe]
_0805C7CC:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x1f
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0805C7EA
	adds r0, r2, #0
	adds r0, #0x1e
_0805C7DC:
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0x1a]
	adds r0, #1
	movs r1, #7
	bl Mod
	strh r0, [r4, #0x1a]
_0805C7EA:
	ldrh r0, [r4, #0x1a]
	add r0, sp
	adds r1, r4, #0
	bl sub_8052F78
	b _0805C834
_0805C7F6:
	cmp r0, #0xf
	ble _0805C834
	ldrh r3, [r4, #0xa]
	adds r0, r3, #0
	subs r0, #0x1c
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0xef
	bgt _0805C834
	asrs r0, r0, #0x15
	movs r1, #9
	subs r1, r1, r0
	strh r1, [r4, #0xe]
	movs r0, #0x1f
	rsbs r0, r0, #0
	cmp r2, r0
	bge _0805C82A
	adds r0, r3, #4
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0x1a]
	adds r0, #1
	movs r1, #7
	bl Mod
	strh r0, [r4, #0x1a]
_0805C82A:
	ldrh r0, [r4, #0x1a]
	add r0, sp
	adds r1, r4, #0
	bl sub_8052F78
_0805C834:
	add sp, #0x1c
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start Task_805C83C
Task_805C83C: @ 0x0805C83C
	push {lr}
	ldr r0, _0805C874 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	movs r1, #0x18
	ldrsh r0, [r3, r1]
	cmp r0, #0xf5
	ble _0805C87C
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
	bge _0805C89C
	movs r0, #0
	strh r0, [r3, #0xe]
	ldr r0, _0805C878 @ =0x0000FF80
	strh r0, [r3, #0xa]
	b _0805C8F4
	.align 2, 0
_0805C874: .4byte gCurTask
_0805C878: .4byte 0x0000FF80
_0805C87C:
	cmp r0, #0x2d
	ble _0805C8C8
	ldrh r0, [r3, #2]
	adds r0, #0x10
	strh r0, [r3, #2]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0xff
	bls _0805C8AC
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #2]
	movs r0, #0x39
	strh r0, [r3, #0xa]
	movs r0, #0x49
	strh r0, [r3, #0xc]
_0805C89C:
	ldr r0, _0805C8A8 @ =gUnknown_08688650
	adds r1, r3, #0
	bl sub_8052F78
	b _0805C8F4
	.align 2, 0
_0805C8A8: .4byte gUnknown_08688650
_0805C8AC:
	movs r0, #0x29
	strh r0, [r3, #0xa]
	lsrs r1, r1, #0x13
	movs r0, #0x54
	subs r0, r0, r1
	strh r0, [r3, #0xc]
	ldr r0, _0805C8C4 @ =gUnknown_08688650
	adds r1, r3, #0
	bl sub_8052C84
	b _0805C8F4
	.align 2, 0
_0805C8C4: .4byte gUnknown_08688650
_0805C8C8:
	cmp r0, #0x21
	ble _0805C8F4
	movs r0, #0x29
	strh r0, [r3, #0xa]
	ldrh r1, [r3, #2]
	lsrs r2, r1, #3
	movs r0, #0x54
	subs r0, r0, r2
	strh r0, [r3, #0xc]
	adds r1, #0x10
	strh r1, [r3, #2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xff
	bls _0805C8EC
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #2]
_0805C8EC:
	ldr r0, _0805C8F8 @ =gUnknown_08688650
	adds r1, r3, #0
	bl sub_8052C84
_0805C8F4:
	pop {r0}
	bx r0
	.align 2, 0
_0805C8F8: .4byte gUnknown_08688650

    thumb_func_start TaskDestructor_nullsub_805C8FC
TaskDestructor_nullsub_805C8FC: @ 0x0805C8FC
    bx lr
    .align 2, 0
