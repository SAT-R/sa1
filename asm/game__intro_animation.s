.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_8063B8C
sub_8063B8C: @ 0x08063B8C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	bl UiGfxStackInit
	add r5, sp, #0x2c
	movs r0, #0x80
	rsbs r0, r0, #0
	strb r0, [r5]
	mov r7, sp
	adds r7, #0x2b
	movs r1, #0
	strb r1, [r7]
	ldr r0, _08063C34 @ =gUnknown_086B1CB4
	str r0, [sp, #0x14]
	movs r0, #0xa8
	lsls r0, r0, #3
	str r0, [sp, #0x18]
	ldr r0, _08063C38 @ =gUnknown_086B1AB4
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x24]
	ldr r0, _08063C3C @ =gUnknown_086B21F4
	str r0, [sp, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	mov sl, r1
	str r1, [sp, #0x1c]
	add r0, sp, #0x28
	mov sb, r0
	movs r1, #0
	strb r1, [r0]
	movs r0, #0x29
	add r0, sp
	mov r8, r0
	movs r4, #1
	strb r4, [r0]
	mov r6, sp
	adds r6, #0x2a
	movs r0, #0x15
	strb r0, [r6]
	mov r0, sp
	bl sub_80528AC
	movs r1, #0x80
	rsbs r1, r1, #0
	strb r1, [r5]
	strb r4, [r7]
	ldr r0, _08063C40 @ =gUnknown_086B2BF4
	str r0, [sp, #0x14]
	movs r0, #0xf0
	lsls r0, r0, #5
	str r0, [sp, #0x18]
	ldr r0, _08063C44 @ =gUnknown_086B29F4
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x24]
	ldr r0, _08063C48 @ =gUnknown_086B49F4
	str r0, [sp, #0x10]
	mov r1, sl
	str r1, [sp, #0x1c]
	movs r1, #0
	mov r0, sb
	strb r1, [r0]
	mov r0, r8
	strb r1, [r0]
	movs r0, #0x11
	strb r0, [r6]
	mov r0, sp
	bl sub_80528AC
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063C34: .4byte gUnknown_086B1CB4
_08063C38: .4byte gUnknown_086B1AB4
_08063C3C: .4byte gUnknown_086B21F4
_08063C40: .4byte gUnknown_086B2BF4
_08063C44: .4byte gUnknown_086B29F4
_08063C48: .4byte gUnknown_086B49F4

	thumb_func_start sub_8063C4C
sub_8063C4C: @ 0x08063C4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	bl UiGfxStackInit
	add r5, sp, #0x2c
	movs r0, #0x80
	rsbs r0, r0, #0
	strb r0, [r5]
	mov r7, sp
	adds r7, #0x2b
	movs r1, #0
	strb r1, [r7]
	ldr r0, _08063CF4 @ =gUnknown_086B1CB4
	str r0, [sp, #0x14]
	movs r0, #0xa8
	lsls r0, r0, #3
	str r0, [sp, #0x18]
	ldr r0, _08063CF8 @ =gUnknown_086B1AD4
	str r0, [sp, #0x20]
	movs r0, #0x20
	str r0, [sp, #0x24]
	ldr r0, _08063CFC @ =gUnknown_086B21F4
	str r0, [sp, #0x10]
	movs r0, #0x80
	lsls r0, r0, #4
	mov sl, r0
	str r0, [sp, #0x1c]
	add r1, sp, #0x28
	mov sb, r1
	movs r0, #0
	strb r0, [r1]
	movs r1, #0x29
	add r1, sp
	mov r8, r1
	movs r4, #1
	strb r4, [r1]
	mov r6, sp
	adds r6, #0x2a
	movs r0, #0x14
	strb r0, [r6]
	mov r0, sp
	bl sub_80528AC
	movs r0, #0x80
	rsbs r0, r0, #0
	strb r0, [r5]
	strb r4, [r7]
	ldr r0, _08063D00 @ =gUnknown_086B53F4
	str r0, [sp, #0x14]
	movs r0, #0xdc
	lsls r0, r0, #5
	str r0, [sp, #0x18]
	ldr r0, _08063D04 @ =gUnknown_086B51F4
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x24]
	ldr r0, _08063D08 @ =gUnknown_086B6F74
	str r0, [sp, #0x10]
	mov r1, sl
	str r1, [sp, #0x1c]
	movs r1, #0
	mov r0, sb
	strb r1, [r0]
	mov r0, r8
	strb r1, [r0]
	movs r0, #0x11
	strb r0, [r6]
	mov r0, sp
	bl sub_80528AC
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063CF4: .4byte gUnknown_086B1CB4
_08063CF8: .4byte gUnknown_086B1AD4
_08063CFC: .4byte gUnknown_086B21F4
_08063D00: .4byte gUnknown_086B53F4
_08063D04: .4byte gUnknown_086B51F4
_08063D08: .4byte gUnknown_086B6F74

	thumb_func_start sub_8063D0C
sub_8063D0C: @ 0x08063D0C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	bl UiGfxStackInit
	add r5, sp, #0x2c
	movs r0, #0x80
	rsbs r0, r0, #0
	strb r0, [r5]
	mov r7, sp
	adds r7, #0x2b
	movs r1, #0
	strb r1, [r7]
	ldr r0, _08063DB4 @ =gUnknown_086B1CB4
	str r0, [sp, #0x14]
	movs r0, #0xa8
	lsls r0, r0, #3
	str r0, [sp, #0x18]
	ldr r0, _08063DB8 @ =gUnknown_086B1AF4
	str r0, [sp, #0x20]
	movs r0, #0x20
	str r0, [sp, #0x24]
	ldr r0, _08063DBC @ =gUnknown_086B21F4
	str r0, [sp, #0x10]
	movs r0, #0x80
	lsls r0, r0, #4
	mov sl, r0
	str r0, [sp, #0x1c]
	add r1, sp, #0x28
	mov sb, r1
	movs r0, #0
	strb r0, [r1]
	movs r1, #0x29
	add r1, sp
	mov r8, r1
	movs r4, #1
	strb r4, [r1]
	mov r6, sp
	adds r6, #0x2a
	movs r0, #0x14
	strb r0, [r6]
	mov r0, sp
	bl sub_80528AC
	movs r0, #0x80
	rsbs r0, r0, #0
	strb r0, [r5]
	strb r4, [r7]
	ldr r0, _08063DC0 @ =gUnknown_086B7974
	str r0, [sp, #0x14]
	movs r0, #0xc4
	lsls r0, r0, #5
	str r0, [sp, #0x18]
	ldr r0, _08063DC4 @ =gUnknown_086B7774
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x24]
	ldr r0, _08063DC8 @ =gUnknown_086B91F4
	str r0, [sp, #0x10]
	mov r1, sl
	str r1, [sp, #0x1c]
	movs r1, #0
	mov r0, sb
	strb r1, [r0]
	mov r0, r8
	strb r1, [r0]
	movs r0, #0x11
	strb r0, [r6]
	mov r0, sp
	bl sub_80528AC
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063DB4: .4byte gUnknown_086B1CB4
_08063DB8: .4byte gUnknown_086B1AF4
_08063DBC: .4byte gUnknown_086B21F4
_08063DC0: .4byte gUnknown_086B7974
_08063DC4: .4byte gUnknown_086B7774
_08063DC8: .4byte gUnknown_086B91F4

	thumb_func_start sub_8063DCC
sub_8063DCC: @ 0x08063DCC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	bl UiGfxStackInit
	add r5, sp, #0x2c
	movs r0, #0x80
	rsbs r0, r0, #0
	strb r0, [r5]
	mov r7, sp
	adds r7, #0x2b
	movs r1, #0
	strb r1, [r7]
	ldr r0, _08063E74 @ =gUnknown_086B1CB4
	str r0, [sp, #0x14]
	movs r0, #0xa8
	lsls r0, r0, #3
	str r0, [sp, #0x18]
	ldr r0, _08063E78 @ =gUnknown_086B1B14
	str r0, [sp, #0x20]
	movs r0, #0x20
	str r0, [sp, #0x24]
	ldr r0, _08063E7C @ =gUnknown_086B21F4
	str r0, [sp, #0x10]
	movs r0, #0x80
	lsls r0, r0, #4
	mov sl, r0
	str r0, [sp, #0x1c]
	add r1, sp, #0x28
	mov sb, r1
	movs r0, #0
	strb r0, [r1]
	movs r1, #0x29
	add r1, sp
	mov r8, r1
	movs r4, #1
	strb r4, [r1]
	mov r6, sp
	adds r6, #0x2a
	movs r0, #0x14
	strb r0, [r6]
	mov r0, sp
	bl sub_80528AC
	movs r0, #0x80
	rsbs r0, r0, #0
	strb r0, [r5]
	strb r4, [r7]
	ldr r0, _08063E80 @ =gUnknown_086B9BF4
	str r0, [sp, #0x14]
	movs r0, #0xc2
	lsls r0, r0, #5
	str r0, [sp, #0x18]
	ldr r0, _08063E84 @ =gUnknown_086B99F4
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x24]
	ldr r0, _08063E88 @ =gUnknown_086BB434
	str r0, [sp, #0x10]
	mov r1, sl
	str r1, [sp, #0x1c]
	movs r1, #0
	mov r0, sb
	strb r1, [r0]
	mov r0, r8
	strb r1, [r0]
	movs r0, #0x11
	strb r0, [r6]
	mov r0, sp
	bl sub_80528AC
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063E74: .4byte gUnknown_086B1CB4
_08063E78: .4byte gUnknown_086B1B14
_08063E7C: .4byte gUnknown_086B21F4
_08063E80: .4byte gUnknown_086B9BF4
_08063E84: .4byte gUnknown_086B99F4
_08063E88: .4byte gUnknown_086BB434

	thumb_func_start sub_8063E8C
sub_8063E8C: @ 0x08063E8C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x34
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _08063F80
	movs r7, #0
	movs r0, #0
	mov r8, r0
_08063EA2:
	lsls r5, r7, #1
	ldr r1, _08063F4C @ =0x00006801
	adds r0, r1, #0
	adds r2, r5, #0
	orrs r2, r0
	mov r0, r8
	str r0, [sp]
	ldr r0, _08063F50 @ =sub_806515C
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r6, r1
	adds r5, r5, r7
	lsls r5, r5, #1
	strh r5, [r4, #0x30]
	ldr r2, _08063F54 @ =0x03000032
	adds r0, r6, r2
	strb r7, [r0]
	ldr r1, _08063F58 @ =0xFFFFDC00
	ldrh r0, [r4, #0x30]
	str r0, [r4, #0x34]
	str r1, [r4, #0x38]
	str r1, [r4, #0x3c]
	movs r0, #0x90
	lsls r0, r0, #2
	str r0, [r4, #0x40]
	lsls r2, r7, #7
	ldr r1, _08063F5C @ =0x06010BE0
	adds r0, r2, r1
	str r0, [r4, #4]
	ldr r0, _08063F60 @ =0x00000307 @ This is not Super Sonic, but uses SA1_ANIM_SUPER_SONIC_SPARKLE
	strh r0, [r4, #0xa]
	ldr r0, _08063F64 @ =0x03000020
	adds r1, r6, r0
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08063F68 @ =gSineTable
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	ldr r1, _08063F6C @ =0x0000028A
	bl Div
	adds r0, #0x78
	strh r0, [r4, #0x16]
	ldr r0, _08063F70 @ =0x0000FFDC
	strh r0, [r4, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x1a]
	mov r2, r8
	strh r2, [r4, #8]
	strh r2, [r4, #0x14]
	strh r2, [r4, #0x1c]
	ldr r0, _08063F74 @ =0x03000021
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r2, _08063F78 @ =0x03000022
	adds r1, r6, r2
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _08063F7C @ =0x03000025
	adds r6, r6, r0
	mov r1, r8
	strb r1, [r6]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #7
	bls _08063EA2
	b _080640B2
	.align 2, 0
_08063F4C: .4byte 0x00006801
_08063F50: .4byte sub_806515C
_08063F54: .4byte 0x03000032
_08063F58: .4byte 0xFFFFDC00
_08063F5C: .4byte 0x06010BE0
_08063F60: .4byte 0x00000307
_08063F64: .4byte 0x03000020
_08063F68: .4byte gSineTable
_08063F6C: .4byte 0x0000028A
_08063F70: .4byte 0x0000FFDC
_08063F74: .4byte 0x03000021
_08063F78: .4byte 0x03000022
_08063F7C: .4byte 0x03000025
_08063F80:
	cmp r3, #1
	bne _08063FD8
	ldr r1, _08063FC8 @ =gDispCnt
	movs r2, #0x92
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	add r1, sp, #0x30
	movs r2, #0
	movs r0, #0x80
	strb r0, [r1]
	mov r0, sp
	adds r0, #0x2f
	strb r2, [r0]
	ldr r0, _08063FCC @ =gUnknown_086A5F34
	str r0, [sp, #0x18]
	movs r0, #0xbc
	lsls r0, r0, #6
	str r0, [sp, #0x1c]
	ldr r0, _08063FD0 @ =gUnknown_086A5D34
	str r0, [sp, #0x24]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x28]
	ldr r0, _08063FD4 @ =gUnknown_086A8E34
	str r0, [sp, #0x14]
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [sp, #0x20]
	add r0, sp, #0x2c
	strb r2, [r0]
	adds r0, #1
	strb r3, [r0]
	subs r1, #2
	movs r0, #0x15
	b _0806405E
	.align 2, 0
_08063FC8: .4byte gDispCnt
_08063FCC: .4byte gUnknown_086A5F34
_08063FD0: .4byte gUnknown_086A5D34
_08063FD4: .4byte gUnknown_086A8E34
_08063FD8:
	cmp r3, #2
	bne _08064020
	ldr r1, _08064014 @ =gDispCnt
	movs r2, #0x9a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	add r1, sp, #0x30
	movs r2, #0
	movs r0, #0x80
	strb r0, [r1]
	subs r1, #1
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08064018 @ =gUnknown_086A9834
	str r0, [sp, #0x18]
	movs r0, #0xa1
	lsls r0, r0, #6
	str r0, [sp, #0x1c]
	ldr r0, _0806401C @ =gUnknown_086AC074
	str r0, [sp, #0x14]
	movs r0, #0x8c
	lsls r0, r0, #4
	str r0, [sp, #0x20]
	add r0, sp, #0x2c
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	subs r1, #1
	b _0806405C
	.align 2, 0
_08064014: .4byte gDispCnt
_08064018: .4byte gUnknown_086A9834
_0806401C: .4byte gUnknown_086AC074
_08064020:
	cmp r3, #3
	bne _08064074
	ldr r1, _08064068 @ =gDispCnt
	movs r2, #0xba
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	add r1, sp, #0x30
	movs r2, #0
	movs r0, #0x80
	strb r0, [r1]
	mov r0, sp
	adds r0, #0x2f
	strb r2, [r0]
	ldr r0, _0806406C @ =gUnknown_086AFFB4
	str r0, [sp, #0x18]
	movs r0, #0xa2
	lsls r0, r0, #5
	str r0, [sp, #0x1c]
	ldr r0, _08064070 @ =gUnknown_086B13F4
	str r0, [sp, #0x14]
	movs r0, #0xd8
	lsls r0, r0, #3
	str r0, [sp, #0x20]
	add r0, sp, #0x2c
	strb r2, [r0]
	subs r1, #3
	movs r0, #2
	strb r0, [r1]
	adds r1, #1
_0806405C:
	movs r0, #0x11
_0806405E:
	strb r0, [r1]
	add r0, sp, #4
	bl sub_80528AC
	b _080640B2
	.align 2, 0
_08064068: .4byte gDispCnt
_0806406C: .4byte gUnknown_086AFFB4
_08064070: .4byte gUnknown_086B13F4
_08064074:
	movs r0, #0x9b
	lsls r0, r0, #1
	cmp r3, r0
	bne _080640B2
	add r1, sp, #0x30
	movs r2, #0
	movs r0, #0x80
	strb r0, [r1]
	subs r1, #1
	movs r0, #1
	strb r0, [r1]
	ldr r0, _080640C0 @ =gUnknown_086ACB34
	str r0, [sp, #0x18]
	movs r0, #0xa1
	lsls r0, r0, #6
	str r0, [sp, #0x1c]
	ldr r0, _080640C4 @ =gUnknown_086AF4F4
	str r0, [sp, #0x14]
	movs r0, #0x8c
	lsls r0, r0, #4
	str r0, [sp, #0x20]
	add r0, sp, #0x2c
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	subs r1, #1
	movs r0, #0x11
	strb r0, [r1]
	add r0, sp, #4
	bl sub_80528AC
_080640B2:
	add sp, #0x34
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080640C0: .4byte gUnknown_086ACB34
_080640C4: .4byte gUnknown_086AF4F4

	thumb_func_start Task_80640C8
Task_80640C8: @ 0x080640C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08064104 @ =gCurTask
	ldr r4, [r0]
	ldrh r3, [r4, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r3, r1
	str r0, [sp]
	ldr r0, [r0, #0xc]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	adds r1, #0x4c
	adds r2, r3, r1
	ldrh r1, [r2]
	strh r1, [r0, #0x30]
	ldr r0, _08064108 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _08064110
	ldr r0, _0806410C @ =sub_8064FF8
	str r0, [r4, #8]
	b _08064232
	.align 2, 0
_08064104: .4byte gCurTask
_08064108: .4byte gPressedKeys
_0806410C: .4byte sub_8064FF8
_08064110:
	movs r1, #0
	ldrsh r0, [r2, r1]
	mov sb, r2
	cmp r0, #0x97
	ble _080641AC
	subs r0, #0x98
	lsls r0, r0, #0xf
	lsrs r7, r0, #0x10
	cmp r7, #0x28
	bls _08064126
	movs r7, #0x28
_08064126:
	movs r2, #0
	mov sl, r2
	ldr r0, _08064204 @ =0x0300004C
	adds r0, r0, r3
	mov sb, r0
_08064130:
	ldr r0, _08064208 @ =gUnknown_086A5D34
	mov r1, sl
	lsls r1, r1, #1
	mov r8, r1
	add r0, r8
	ldrh r6, [r0]
	movs r1, #0x1f
	ands r1, r6
	movs r2, #0xf8
	lsls r2, r2, #2
	adds r0, r2, #0
	adds r4, r6, #0
	ands r4, r0
	lsrs r4, r4, #5
	movs r3, #0xf8
	lsls r3, r3, #7
	adds r0, r3, #0
	ands r6, r0
	lsrs r6, r6, #0xa
	adds r0, r1, #0
	muls r0, r7, r0
	movs r1, #0x28
	bl Div
	adds r5, r0, #0
	movs r0, #0x1f
	ands r5, r0
	adds r0, r4, #0
	muls r0, r7, r0
	movs r1, #0x28
	bl Div
	adds r4, r0, #0
	movs r1, #0x1f
	ands r4, r1
	adds r0, r6, #0
	muls r0, r7, r0
	movs r1, #0x28
	bl Div
	movs r2, #0x1f
	ands r0, r2
	ldr r1, _0806420C @ =gBgPalette
	add r8, r1
	lsls r4, r4, #5
	orrs r5, r4
	lsls r0, r0, #0xa
	orrs r5, r0
	mov r3, r8
	strh r5, [r3]
	ldr r2, _08064210 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #0x1f
	bls _08064130
_080641AC:
	mov r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r2, _08064214 @ =gBgScrollRegs
	cmp r0, #0xb5
	ble _080641DA
	ldrh r0, [r2, #2]
	adds r0, #2
	strh r0, [r2, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x64
	ble _080641CA
	movs r0, #0x64
	strh r0, [r2, #2]
_080641CA:
	ldrh r1, [r2, #2]
	movs r3, #2
	ldrsh r0, [r2, r3]
	cmp r0, #0x50
	ble _080641DA
	adds r0, r1, #0
	subs r0, #0x50
	strh r0, [r2, #0xa]
_080641DA:
	ldrh r0, [r2, #6]
	adds r0, #0xa
	strh r0, [r2, #6]
	mov r1, sb
	ldrh r0, [r1]
	bl sub_8063E8C
	mov r2, sb
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r0, _08064218 @ =0x0000013F
	cmp r1, r0
	ble _08064224
	movs r0, #0
	strh r0, [r2]
	ldr r0, _0806421C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08064220 @ =sub_8064244
	str r0, [r1, #8]
	b _0806422A
	.align 2, 0
_08064204: .4byte 0x0300004C
_08064208: .4byte gUnknown_086A5D34
_0806420C: .4byte gBgPalette
_08064210: .4byte gFlags
_08064214: .4byte gBgScrollRegs
_08064218: .4byte 0x0000013F
_0806421C: .4byte gCurTask
_08064220: .4byte sub_8064244
_08064224:
	ldr r0, [sp]
	bl sub_805423C
_0806422A:
	mov r1, sb
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_08064232:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8064244
sub_8064244: @ 0x08064244
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08064280 @ =gCurTask
	ldr r1, [r0]
	ldrh r0, [r1, #6]
	mov sb, r0
	movs r2, #0xc0
	lsls r2, r2, #0x12
	mov sl, r2
	mov r6, sb
	add r6, sl
	ldr r3, _08064284 @ =0x0300004C
	add r3, sb
	mov r8, r3
	movs r7, #0
	ldrsh r4, [r3, r7]
	ldr r0, _08064288 @ =gPressedKeys
	ldrh r0, [r0]
	movs r5, #0xb
	ands r5, r0
	cmp r5, #0
	beq _08064290
	ldr r0, _0806428C @ =sub_8064FF8
	str r0, [r1, #8]
	b _080645D2
	.align 2, 0
_08064280: .4byte gCurTask
_08064284: .4byte 0x0300004C
_08064288: .4byte gPressedKeys
_0806428C: .4byte sub_8064FF8
_08064290:
	cmp r4, #0x5f
	bhi _080642A6
	movs r0, #0xd0
	lsls r0, r0, #7
	lsrs r1, r4, #2
	ldr r2, _08064360 @ =0x00006802
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl TasksDestroyInPriorityRange
_080642A6:
	cmp r4, #0x3c
	bne _080642C2
	strh r5, [r6]
	movs r1, #1
	movs r0, #1
	strh r0, [r6, #2]
	strh r0, [r6, #4]
	strh r5, [r6, #6]
	movs r0, #0x40
	strh r0, [r6, #8]
	strb r1, [r6, #0xa]
	adds r0, r6, #0
	bl sub_80543A4
_080642C2:
	ldr r7, _08064364 @ =gBgScrollRegs
	ldrh r0, [r7, #6]
	adds r0, #0xa
	strh r0, [r7, #6]
	mov r3, r8
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, _08064368 @ =0x000001F9
	cmp r1, r0
	bgt _080642DE
	b _080644C0
_080642DE:
	ldr r0, [r6, #0xc]
	bl TaskDestroy
	str r5, [r6, #0xc]
	strh r5, [r7, #4]
	strh r5, [r7, #6]
	ldr r1, _0806436C @ =0x03000050
	add r1, sb
	movs r0, #0x80
	lsls r0, r0, #7
	strh r0, [r1]
	ldr r0, _08064370 @ =0x03000052
	add r0, sb
	strh r5, [r0]
	mov r7, r8
	strh r5, [r7]
	ldr r0, [r6, #0x10]
	bl TaskDestroy
	str r5, [r6, #0x10]
	ldr r0, [r6, #0x14]
	bl TaskDestroy
	str r5, [r6, #0x14]
	ldr r1, _08064374 @ =gDispCnt
	ldr r0, _08064378 @ =gBldRegs
	strh r5, [r0]
	strh r5, [r0, #4]
	movs r2, #0x9a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0806437C @ =gBgCntRegs
	ldr r0, _08064380 @ =0x00001D86
	strh r0, [r1]
	ldr r0, _08064384 @ =0x00001883
	strh r0, [r1, #2]
	ldr r0, _08064388 @ =sub_8065258
	ldr r2, _0806438C @ =0x00002210
	str r5, [sp]
	movs r1, #0xc8
	movs r3, #0
	bl TaskCreate
	str r0, [r6, #0x18]
	ldrh r0, [r0, #6]
	mov r3, sl
	adds r7, r0, r3
	ldr r1, _08064390 @ =0x030000B4
	adds r0, r0, r1
	strh r5, [r0]
	movs r4, #0
	movs r6, #0
	movs r5, #0
	ldr r2, _08064394 @ =0x00000301
	mov r8, r2
_0806434E:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r3, r7, r0
	cmp r4, #0
	beq _0806439C
	ldr r0, _08064398 @ =0x06014000
	b _0806439E
	.align 2, 0
_08064360: .4byte 0x00006802
_08064364: .4byte gBgScrollRegs
_08064368: .4byte 0x000001F9
_0806436C: .4byte 0x03000050
_08064370: .4byte 0x03000052
_08064374: .4byte gDispCnt
_08064378: .4byte gBldRegs
_0806437C: .4byte gBgCntRegs
_08064380: .4byte 0x00001D86
_08064384: .4byte 0x00001883
_08064388: .4byte sub_8065258
_0806438C: .4byte 0x00002210
_08064390: .4byte 0x030000B4
_08064394: .4byte 0x00000301
_08064398: .4byte 0x06014000
_0806439C:
	ldr r0, _08064494 @ =0x06011440
_0806439E:
	str r0, [r3, #4]
	mov r0, r8
	strh r0, [r3, #0xa]
	adds r0, r3, #0
	adds r0, #0x20
	strb r6, [r0]
	movs r0, #0xb4
	strh r0, [r3, #0x16]
	movs r0, #0x82
	strh r0, [r3, #0x18]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r3, #0x1a]
	strh r5, [r3, #8]
	strh r5, [r3, #0x14]
	strh r5, [r3, #0x1c]
	adds r1, r3, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x25
	strb r6, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x28]
	movs r0, #0x80
	str r0, [r3, #0x10]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0806434E
	movs r4, #0
	movs r5, #0
	movs r1, #0x8c
	lsls r1, r1, #1
	mov sb, r1
	ldr r6, _08064498 @ =gUnknown_0868B28C
	adds r2, r6, #4
	mov r8, r2
_080643FC:
	str r5, [sp]
	ldr r0, _0806449C @ =sub_806562C
	movs r1, #0x44
	ldr r2, _080644A0 @ =0x00006820
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r7, #0xc0
	lsls r7, r7, #0x12
	adds r3, r2, r7
	strh r5, [r3, #0x30]
	ldr r1, _080644A4 @ =0x03000032
	adds r0, r2, r1
	strb r5, [r0]
	str r4, [r3, #0x34]
	ldr r0, _080644A8 @ =gUnknown_0868B27C
	movs r7, #0
	ldrsh r0, [r0, r7]
	add r0, sb
	str r0, [r3, #0x3c]
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r0, r6, #0
	adds r0, #8
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [r3, #4]
	adds r0, r1, r6
	ldr r0, [r0]
	strh r0, [r3, #0xa]
	add r1, r8
	ldr r1, [r1]
	ldr r7, _080644AC @ =0x03000020
	adds r0, r2, r7
	strb r1, [r0]
	mov r0, sb
	strh r0, [r3, #0x16]
	movs r0, #0x46
	strh r0, [r3, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r3, #0x1a]
	strh r5, [r3, #8]
	strh r5, [r3, #0x14]
	strh r5, [r3, #0x1c]
	adds r7, #1
	adds r1, r2, r7
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _080644B0 @ =0x03000022
	adds r1, r2, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _080644B4 @ =0x03000025
	adds r2, r2, r1
	strb r5, [r2]
	subs r0, #0x11
	str r0, [r3, #0x28]
	movs r0, #0x80
	str r0, [r3, #0x10]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #5
	bls _080643FC
	ldr r0, _080644B8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080644BC @ =sub_80645E4
	str r0, [r1, #8]
	b _080645D2
	.align 2, 0
_08064494: .4byte 0x06011440
_08064498: .4byte gUnknown_0868B28C
_0806449C: .4byte sub_806562C
_080644A0: .4byte 0x00006820
_080644A4: .4byte 0x03000032
_080644A8: .4byte gUnknown_0868B27C
_080644AC: .4byte 0x03000020
_080644B0: .4byte 0x03000022
_080644B4: .4byte 0x03000025
_080644B8: .4byte gCurTask
_080644BC: .4byte sub_80645E4
_080644C0:
	cmp r1, #0xe0
	bgt _080644C6
	b _080645C4
_080644C6:
	cmp r1, #0xe1
	bne _0806454C
	bl CreateSpotlightBeamTask
	str r0, [r6, #0x10]
	ldrh r0, [r0, #6]
	mov r2, sl
	adds r7, r0, r2
	movs r3, #0x78
	mov sb, r3
	mov r0, sb
	strh r0, [r7, #6]
	movs r1, #0xfa
	mov r8, r1
	mov r2, r8
	strh r2, [r7, #8]
	strh r5, [r7]
	strh r5, [r7, #2]
	strh r5, [r7, #4]
	movs r0, #2
	strb r0, [r7, #0xa]
	movs r4, #6
	strb r4, [r7, #0xb]
	bl CreateSpotlightBeamTask
	str r0, [r6, #0x14]
	ldrh r0, [r0, #6]
	mov r3, sl
	adds r7, r0, r3
	mov r0, sb
	strh r0, [r7, #6]
	mov r1, r8
	strh r1, [r7, #8]
	strh r5, [r7]
	strh r5, [r7, #2]
	strh r5, [r7, #4]
	movs r0, #3
	strb r0, [r7, #0xa]
	strb r4, [r7, #0xb]
	ldr r2, _08064538 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0xc0
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0806453C @ =gWinRegs
	ldr r0, _08064540 @ =0x00001F1F
	strh r0, [r1, #8]
	movs r0, #0x3f
	strh r0, [r1, #0xa]
	ldr r1, _08064544 @ =gBldRegs
	ldr r0, _08064548 @ =0x00003FDF
	strh r0, [r1]
	movs r0, #8
	strh r0, [r1, #4]
	b _080645D2
	.align 2, 0
_08064538: .4byte gDispCnt
_0806453C: .4byte gWinRegs
_08064540: .4byte 0x00001F1F
_08064544: .4byte gBldRegs
_08064548: .4byte 0x00003FDF
_0806454C:
	mov r7, r8
	movs r1, #0
	ldrsh r0, [r7, r1]
	adds r4, r0, #0
	subs r4, #0xe1
	ldr r0, [r6, #0x10]
	ldrh r0, [r0, #6]
	mov r2, sl
	adds r7, r0, r2
	adds r0, r4, #0
	movs r1, #0x19
	bl Mod
	movs r1, #0x18
	subs r1, r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	strh r0, [r7]
	cmp r4, #0x3f
	bhi _08064588
	adds r0, r4, #0
	movs r1, #6
	bl Mod
	cmp r0, #0
	bne _08064588
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
_08064588:
	ldr r0, [r6, #0x14]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r0, r4, #0
	movs r1, #0x19
	bl Mod
	movs r1, #0x18
	subs r1, r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	movs r3, #0xdc
	lsls r3, r3, #2
	adds r0, r0, r3
	strh r0, [r7]
	cmp r4, #0x3f
	bhi _080645D2
	adds r0, r4, #0
	movs r1, #6
	bl Mod
	cmp r0, #0
	bne _080645D2
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	b _080645D2
_080645C4:
	adds r0, r4, #0
	subs r0, #0x1e
	cmp r0, #0x59
	bhi _080645D2
	adds r0, r6, #0
	bl sub_805423C
_080645D2:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80645E4
sub_80645E4: @ 0x080645E4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _08064640 @ =gCurTask
	ldr r7, [r0]
	ldrh r1, [r7, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x18]
	ldrh r0, [r0, #6]
	ldr r2, _08064644 @ =0x0300004C
	adds r6, r1, r2
	ldrh r2, [r6]
	ldr r3, _08064648 @ =0x030000B4
	adds r0, r0, r3
	strh r2, [r0]
	ldr r0, _0806464C @ =0x03000050
	adds r2, r1, r0
	ldrh r0, [r2]
	subs r0, #0x20
	strh r0, [r2]
	subs r3, #0x62
	adds r1, r1, r3
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	ldr r3, _08064650 @ =gBgScrollRegs
	ldrh r0, [r2]
	lsrs r0, r0, #8
	strh r0, [r3]
	ldrh r0, [r1]
	lsrs r0, r0, #8
	strh r0, [r3, #2]
	ldr r0, _08064654 @ =gPressedKeys
	ldrh r0, [r0]
	movs r5, #0xb
	ands r5, r0
	cmp r5, #0
	beq _0806465C
	ldr r0, _08064658 @ =sub_8064FF8
	str r0, [r7, #8]
	b _080648C4
	.align 2, 0
_08064640: .4byte gCurTask
_08064644: .4byte 0x0300004C
_08064648: .4byte 0x030000B4
_0806464C: .4byte 0x03000050
_08064650: .4byte gBgScrollRegs
_08064654: .4byte gPressedKeys
_08064658: .4byte sub_8064FF8
_0806465C:
	movs r0, #0
	ldrsh r1, [r6, r0]
	cmp r1, #0x1d
	bhi _08064680
	cmp r1, #1
	bne _0806466C
	bl sub_8063B8C
_0806466C:
	strh r5, [r4]
	movs r0, #1
	movs r1, #1
	strh r1, [r4, #2]
	movs r1, #2
	strh r1, [r4, #4]
	strh r5, [r4, #6]
	strh r5, [r4, #8]
	strb r0, [r4, #0xa]
	b _08064698
_08064680:
	cmp r1, #0x29
	bhi _080646A0
	strh r5, [r4]
	movs r1, #1
	movs r0, #1
	strh r0, [r4, #2]
	movs r0, #8
	strh r0, [r4, #4]
	strh r5, [r4, #6]
	adds r0, #0xf8
	strh r0, [r4, #8]
	strb r1, [r4, #0xa]
_08064698:
	adds r0, r4, #0
	bl sub_80543A4
	b _080646BC
_080646A0:
	cmp r1, #0x65
	bls _080646A8
	cmp r1, #0xf1
	bhi _080646B0
_080646A8:
	adds r0, r4, #0
	bl sub_805423C
	b _080646BC
_080646B0:
	ldr r0, _08064748 @ =0x00000169
	cmp r1, r0
	bhi _080646BC
	adds r0, r4, #0
	bl sub_805423C
_080646BC:
	adds r5, r4, #0
	adds r5, #0x4c
	ldrh r0, [r5]
	adds r0, #1
	movs r6, #0
	strh r0, [r5]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, _0806474C @ =0x0000019D
	cmp r1, r0
	bgt _080646D4
	b _080648A4
_080646D4:
	ldr r0, _08064750 @ =0x00006820
	ldr r1, _08064754 @ =0x00006821
	bl TasksDestroyInPriorityRange
	ldr r0, [r4, #0x18]
	bl TaskDestroy
	str r6, [r4, #0x18]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xe0
	lsls r0, r0, #8
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xc0
	lsls r0, r0, #7
	strh r0, [r1]
	strh r6, [r5]
	strh r6, [r4]
	movs r1, #1
	movs r0, #1
	strh r0, [r4, #2]
	movs r0, #2
	strh r0, [r4, #4]
	strh r6, [r4, #6]
	strh r6, [r4, #8]
	strb r1, [r4, #0xa]
	adds r0, r4, #0
	bl sub_80543A4
	ldr r0, _08064758 @ =sub_8065328
	movs r2, #0x8a
	lsls r2, r2, #6
	str r6, [sp]
	movs r1, #0xc8
	movs r3, #0
	bl TaskCreate
	str r0, [r4, #0x1c]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r0, r1
	adds r1, #0xb4
	adds r0, r0, r1
	strh r6, [r0]
	movs r5, #0
	movs r2, #0
	mov r8, r2
_08064736:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #4
	adds r4, r7, r0
	cmp r5, #2
	bne _08064760
	ldr r0, _0806475C @ =0x06013280
	b _0806476E
	.align 2, 0
_08064748: .4byte 0x00000169
_0806474C: .4byte 0x0000019D
_08064750: .4byte 0x00006820
_08064754: .4byte 0x00006821
_08064758: .4byte sub_8065328
_0806475C: .4byte 0x06013280
_08064760:
	cmp r5, #1
	bne _0806476C
	ldr r0, _08064768 @ =0x06011980
	b _0806476E
	.align 2, 0
_08064768: .4byte 0x06011980
_0806476C:
	ldr r0, _08064874 @ =0x06010400
_0806476E:
	str r0, [r4, #4]
	ldr r0, _08064878 @ =0x00000301
	strh r0, [r4, #0xa]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x30
	strh r0, [r4, #0x16]
	movs r0, #0x6c
	strh r0, [r4, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x1a]
	strh r6, [r4, #8]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x25
	mov r3, r8
	strb r3, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	movs r0, #0x80
	str r0, [r4, #0x10]
	cmp r5, #0
	bne _080647BE
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080647BE:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08064736
	movs r5, #0
	movs r6, #0
	movs r0, #0x8c
	lsls r0, r0, #1
	mov r8, r0
	ldr r7, _0806487C @ =gUnknown_0868B2D4
	adds r1, r7, #4
	mov sb, r1
_080647D8:
	str r6, [sp]
	ldr r0, _08064880 @ =sub_80656A4
	movs r1, #0x44
	ldr r2, _08064884 @ =0x00006820
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r4, r2, r3
	strh r6, [r4, #0x30]
	ldr r1, _08064888 @ =0x03000032
	adds r0, r2, r1
	strb r6, [r0]
	str r5, [r4, #0x34]
	ldr r0, _0806488C @ =gUnknown_0868B280
	movs r3, #0
	ldrsh r0, [r0, r3]
	add r0, r8
	str r0, [r4, #0x3c]
	lsls r1, r5, #1
	adds r1, r1, r5
	lsls r1, r1, #2
	adds r0, r7, #0
	adds r0, #8
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [r4, #4]
	adds r0, r1, r7
	ldr r0, [r0]
	strh r0, [r4, #0xa]
	add r1, sb
	ldr r1, [r1]
	ldr r3, _08064890 @ =0x03000020
	adds r0, r2, r3
	strb r1, [r0]
	mov r0, r8
	strh r0, [r4, #0x16]
	movs r0, #0x46
	strh r0, [r4, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x1a]
	strh r6, [r4, #8]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	adds r3, #1
	adds r1, r2, r3
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08064894 @ =0x03000022
	adds r1, r2, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08064898 @ =0x03000025
	adds r2, r2, r1
	strb r6, [r2]
	subs r0, #0x11
	str r0, [r4, #0x28]
	movs r0, #0x80
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #5
	bls _080647D8
	ldr r0, _0806489C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080648A0 @ =sub_80648D4
	str r0, [r1, #8]
	b _080648C4
	.align 2, 0
_08064874: .4byte 0x06010400
_08064878: .4byte 0x00000301
_0806487C: .4byte gUnknown_0868B2D4
_08064880: .4byte sub_80656A4
_08064884: .4byte 0x00006820
_08064888: .4byte 0x03000032
_0806488C: .4byte gUnknown_0868B280
_08064890: .4byte 0x03000020
_08064894: .4byte 0x03000022
_08064898: .4byte 0x03000025
_0806489C: .4byte gCurTask
_080648A0: .4byte sub_80648D4
_080648A4:
	movs r0, #0xb0
	lsls r0, r0, #1
	cmp r1, r0
	ble _080648C4
	adds r0, #1
	cmp r1, r0
	bne _080648BE
	movs r0, #4
	strh r0, [r4, #4]
	strh r6, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #8]
_080648BE:
	adds r0, r4, #0
	bl sub_805423C
_080648C4:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80648D4
sub_80648D4: @ 0x080648D4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _08064930 @ =gCurTask
	ldr r6, [r0]
	ldrh r1, [r6, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x1c]
	ldrh r0, [r0, #6]
	ldr r2, _08064934 @ =0x0300004C
	adds r5, r1, r2
	ldrh r2, [r5]
	ldr r3, _08064938 @ =0x030000B4
	adds r0, r0, r3
	strh r2, [r0]
	ldr r0, _0806493C @ =0x03000050
	adds r2, r1, r0
	ldrh r0, [r2]
	adds r0, #0x20
	strh r0, [r2]
	subs r3, #0x62
	adds r1, r1, r3
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	ldr r3, _08064940 @ =gBgScrollRegs
	ldrh r0, [r2]
	lsrs r0, r0, #8
	strh r0, [r3]
	ldrh r0, [r1]
	lsrs r0, r0, #8
	strh r0, [r3, #2]
	ldr r0, _08064944 @ =gPressedKeys
	ldrh r0, [r0]
	movs r2, #0xb
	ands r2, r0
	cmp r2, #0
	beq _0806494C
	ldr r0, _08064948 @ =sub_8064FF8
	str r0, [r6, #8]
	b _08064BA4
	.align 2, 0
_08064930: .4byte gCurTask
_08064934: .4byte 0x0300004C
_08064938: .4byte 0x030000B4
_0806493C: .4byte 0x03000050
_08064940: .4byte gBgScrollRegs
_08064944: .4byte gPressedKeys
_08064948: .4byte sub_8064FF8
_0806494C:
	movs r0, #0
	ldrsh r1, [r5, r0]
	cmp r1, #0x1d
	bhi _0806495E
	cmp r1, #1
	bne _08064976
	bl sub_8063C4C
	b _08064976
_0806495E:
	cmp r1, #0x29
	bhi _0806497E
	strh r2, [r4]
	movs r1, #1
	movs r0, #1
	strh r0, [r4, #2]
	movs r0, #8
	strh r0, [r4, #4]
	strh r2, [r4, #6]
	adds r0, #0xf8
	strh r0, [r4, #8]
	strb r1, [r4, #0xa]
_08064976:
	adds r0, r4, #0
	bl sub_80543A4
	b _0806499A
_0806497E:
	cmp r1, #0x65
	bls _08064986
	cmp r1, #0xf1
	bhi _0806498E
_08064986:
	adds r0, r4, #0
	bl sub_805423C
	b _0806499A
_0806498E:
	ldr r0, _08064A24 @ =0x00000169
	cmp r1, r0
	bhi _0806499A
	adds r0, r4, #0
	bl sub_805423C
_0806499A:
	adds r5, r4, #0
	adds r5, #0x4c
	ldrh r0, [r5]
	adds r0, #1
	movs r6, #0
	strh r0, [r5]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, _08064A28 @ =0x0000019D
	cmp r1, r0
	bgt _080649B2
	b _08064B84
_080649B2:
	ldr r0, _08064A2C @ =0x00006820
	ldr r1, _08064A30 @ =0x00006821
	bl TasksDestroyInPriorityRange
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xe0
	lsls r0, r0, #8
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1]
	ldr r0, [r4, #0x1c]
	bl TaskDestroy
	str r6, [r4, #0x1c]
	strh r6, [r5]
	strh r6, [r4]
	movs r1, #1
	movs r0, #1
	strh r0, [r4, #2]
	movs r0, #2
	strh r0, [r4, #4]
	strh r6, [r4, #6]
	strh r6, [r4, #8]
	strb r1, [r4, #0xa]
	adds r0, r4, #0
	bl sub_80543A4
	ldr r0, _08064A34 @ =sub_8065444
	ldr r2, _08064A38 @ =0x00002230
	str r6, [sp]
	movs r1, #0xc8
	movs r3, #0
	bl TaskCreate
	str r0, [r4, #0x20]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r0, r1
	adds r1, #0xb4
	adds r0, r0, r1
	strh r6, [r0]
	movs r5, #0
	movs r2, #0
	mov r8, r2
_08064A12:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #4
	adds r4, r7, r0
	cmp r5, #2
	bne _08064A40
	ldr r0, _08064A3C @ =0x06013280
	b _08064A4E
	.align 2, 0
_08064A24: .4byte 0x00000169
_08064A28: .4byte 0x0000019D
_08064A2C: .4byte 0x00006820
_08064A30: .4byte 0x00006821
_08064A34: .4byte sub_8065444
_08064A38: .4byte 0x00002230
_08064A3C: .4byte 0x06013280
_08064A40:
	cmp r5, #1
	bne _08064A4C
	ldr r0, _08064A48 @ =0x06011980
	b _08064A4E
	.align 2, 0
_08064A48: .4byte 0x06011980
_08064A4C:
	ldr r0, _08064B50 @ =0x06010080
_08064A4E:
	str r0, [r4, #4]
	ldr r0, _08064B54 @ =0x00000301 @ SA1_ANIM_INTRO_SILHOUETTES
	strh r0, [r4, #0xa]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	movs r0, #0x30
	strh r0, [r4, #0x16]
	movs r0, #0x82
	strh r0, [r4, #0x18]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x1a]
	strh r6, [r4, #8]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x25
	mov r3, r8
	strb r3, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	movs r0, #0x80
	str r0, [r4, #0x10]
	cmp r5, #0
	bne _08064A9E
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08064A9E:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08064A12
	movs r5, #0
	movs r6, #0
	movs r0, #0x8c
	lsls r0, r0, #1
	mov r8, r0
	ldr r7, _08064B58 @ =gUnknown_0868B31C
	adds r1, r7, #4
	mov sb, r1
_08064AB8:
	str r6, [sp]
	ldr r0, _08064B5C @ =sub_806571C
	movs r1, #0x44
	ldr r2, _08064B60 @ =0x00006820
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r4, r2, r3
	strh r6, [r4, #0x30]
	ldr r1, _08064B64 @ =0x03000032
	adds r0, r2, r1
	strb r6, [r0]
	str r5, [r4, #0x34]
	ldr r0, _08064B68 @ =gUnknown_0868B284
	movs r3, #0
	ldrsh r0, [r0, r3]
	add r0, r8
	str r0, [r4, #0x3c]
	lsls r1, r5, #1
	adds r1, r1, r5
	lsls r1, r1, #2
	adds r0, r7, #0
	adds r0, #8
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [r4, #4]
	adds r0, r1, r7
	ldr r0, [r0]
	strh r0, [r4, #0xa]
	add r1, sb
	ldr r1, [r1]
	ldr r3, _08064B6C @ =0x03000020
	adds r0, r2, r3
	strb r1, [r0]
	mov r0, r8
	strh r0, [r4, #0x16]
	movs r0, #0x46
	strh r0, [r4, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x1a]
	strh r6, [r4, #8]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	adds r3, #1
	adds r1, r2, r3
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08064B70 @ =0x03000022
	adds r1, r2, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08064B74 @ =0x03000025
	adds r2, r2, r1
	strb r6, [r2]
	subs r0, #0x11
	str r0, [r4, #0x28]
	ldr r0, _08064B78 @ =0x00040080
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #8
	bls _08064AB8
	ldr r0, _08064B7C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08064B80 @ =sub_8064BB4
	str r0, [r1, #8]
	b _08064BA4
	.align 2, 0
_08064B50: .4byte 0x06010080
_08064B54: .4byte 0x00000301
_08064B58: .4byte gUnknown_0868B31C
_08064B5C: .4byte sub_806571C
_08064B60: .4byte 0x00006820
_08064B64: .4byte 0x03000032
_08064B68: .4byte gUnknown_0868B284
_08064B6C: .4byte 0x03000020
_08064B70: .4byte 0x03000022
_08064B74: .4byte 0x03000025
_08064B78: .4byte 0x00040080
_08064B7C: .4byte gCurTask
_08064B80: .4byte sub_8064BB4
_08064B84:
	movs r0, #0xb0
	lsls r0, r0, #1
	cmp r1, r0
	ble _08064BA4
	adds r0, #1
	cmp r1, r0
	bne _08064B9E
	movs r0, #4
	strh r0, [r4, #4]
	strh r6, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #8]
_08064B9E:
	adds r0, r4, #0
	bl sub_805423C
_08064BA4:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8064BB4
sub_8064BB4: @ 0x08064BB4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _08064C08 @ =gCurTask
	ldr r6, [r0]
	ldrh r1, [r6, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x20]
	ldrh r0, [r0, #6]
	ldr r2, _08064C0C @ =0x0300004C
	adds r5, r1, r2
	ldrh r2, [r5]
	ldr r3, _08064C10 @ =0x030000B4
	adds r0, r0, r3
	strh r2, [r0]
	ldr r0, _08064C14 @ =0x03000050
	adds r2, r1, r0
	subs r3, #0x62
	adds r1, r1, r3
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	ldr r3, _08064C18 @ =gBgScrollRegs
	ldrh r0, [r2]
	lsrs r0, r0, #8
	strh r0, [r3]
	ldrh r0, [r1]
	lsrs r0, r0, #8
	strh r0, [r3, #2]
	ldr r0, _08064C1C @ =gPressedKeys
	ldrh r0, [r0]
	movs r2, #0xb
	ands r2, r0
	cmp r2, #0
	beq _08064C24
	ldr r0, _08064C20 @ =sub_8064FF8
	str r0, [r6, #8]
	b _08064E74
	.align 2, 0
_08064C08: .4byte gCurTask
_08064C0C: .4byte 0x0300004C
_08064C10: .4byte 0x030000B4
_08064C14: .4byte 0x03000050
_08064C18: .4byte gBgScrollRegs
_08064C1C: .4byte gPressedKeys
_08064C20: .4byte sub_8064FF8
_08064C24:
	movs r0, #0
	ldrsh r1, [r5, r0]
	cmp r1, #0x1d
	bhi _08064C36
	cmp r1, #1
	bne _08064C4E
	bl sub_8063D0C
	b _08064C4E
_08064C36:
	cmp r1, #0x29
	bhi _08064C56
	strh r2, [r4]
	movs r1, #1
	movs r0, #1
	strh r0, [r4, #2]
	movs r0, #8
	strh r0, [r4, #4]
	strh r2, [r4, #6]
	adds r0, #0xf8
	strh r0, [r4, #8]
	strb r1, [r4, #0xa]
_08064C4E:
	adds r0, r4, #0
	bl sub_80543A4
	b _08064C72
_08064C56:
	cmp r1, #0x65
	bls _08064C5E
	cmp r1, #0xf1
	bhi _08064C66
_08064C5E:
	adds r0, r4, #0
	bl sub_805423C
	b _08064C72
_08064C66:
	ldr r0, _08064D00 @ =0x00000169
	cmp r1, r0
	bhi _08064C72
	adds r0, r4, #0
	bl sub_805423C
_08064C72:
	adds r5, r4, #0
	adds r5, #0x4c
	ldrh r0, [r5]
	adds r0, #1
	movs r6, #0
	strh r0, [r5]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, _08064D04 @ =0x0000019D
	cmp r1, r0
	bgt _08064C8A
	b _08064E54
_08064C8A:
	ldr r0, _08064D08 @ =0x00006820
	ldr r1, _08064D0C @ =0x00006821
	bl TasksDestroyInPriorityRange
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	lsls r0, r0, #6
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xa0
	lsls r0, r0, #7
	strh r0, [r1]
	ldr r0, [r4, #0x20]
	bl TaskDestroy
	str r6, [r4, #0x20]
	strh r6, [r5]
	strh r6, [r4]
	movs r1, #1
	movs r0, #1
	strh r0, [r4, #2]
	movs r0, #2
	strh r0, [r4, #4]
	strh r6, [r4, #6]
	strh r6, [r4, #8]
	strb r1, [r4, #0xa]
	adds r0, r4, #0
	bl sub_80543A4
	ldr r0, _08064D10 @ =sub_8065538
	ldr r2, _08064D14 @ =0x00002230
	str r6, [sp]
	movs r1, #0xc8
	movs r3, #0
	bl TaskCreate
	str r0, [r4, #0x24]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r0, r1
	adds r1, #0xb4
	adds r0, r0, r1
	strh r6, [r0]
	movs r5, #0
	movs r2, #0
	mov sb, r2
	ldr r3, _08064D18 @ =0x00000301
	mov r8, r3 @ SA1_ANIM_INTRO_SILHOUETTES
_08064CEE:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #4
	adds r4, r7, r0
	cmp r5, #0
	beq _08064D20
	ldr r0, _08064D1C @ =0x06016400
	b _08064D22
	.align 2, 0
_08064D00: .4byte 0x00000169
_08064D04: .4byte 0x0000019D
_08064D08: .4byte 0x00006820
_08064D0C: .4byte 0x00006821
_08064D10: .4byte sub_8065538
_08064D14: .4byte 0x00002230
_08064D18: .4byte 0x00000301
_08064D1C: .4byte 0x06016400
_08064D20:
	ldr r0, _08064E24 @ =0x06011440
_08064D22:
	str r0, [r4, #4]
	mov r0, r8 @ SA1_ANIM_INTRO_SILHOUETTES
	strh r0, [r4, #0xa]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #3
	strb r0, [r1]
	movs r0, #0xb4
	strh r0, [r4, #0x16]
	movs r0, #0x6c
	strh r0, [r4, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x1a]
	strh r6, [r4, #8]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x25
	mov r1, sb
	strb r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	movs r0, #0x80
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	cmp r5, #0
	bne _08064D72
	adds r0, r4, #0
	bl DisplaySprite
_08064D72:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08064CEE
	movs r5, #0
	movs r6, #0
	movs r2, #0x8c
	lsls r2, r2, #1
	mov r8, r2
	ldr r7, _08064E28 @ =gUnknown_0868B388
	adds r3, r7, #4
	mov sb, r3
_08064D8C:
	str r6, [sp]
	ldr r0, _08064E2C @ =sub_8065794
	movs r1, #0x44
	ldr r2, _08064E30 @ =0x00006820
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	strh r6, [r4, #0x30]
	ldr r1, _08064E34 @ =0x03000032
	adds r0, r2, r1
	strb r6, [r0]
	str r5, [r4, #0x34]
	ldr r0, _08064E38 @ =gUnknown_0868B288
	movs r3, #0
	ldrsh r0, [r0, r3]
	add r0, r8
	str r0, [r4, #0x3c]
	lsls r1, r5, #1
	adds r1, r1, r5
	lsls r1, r1, #2
	adds r0, r7, #0
	adds r0, #8
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [r4, #4]
	adds r0, r1, r7
	ldr r0, [r0]
	strh r0, [r4, #0xa]
	add r1, sb
	ldr r1, [r1]
	ldr r3, _08064E3C @ =0x03000020
	adds r0, r2, r3
	strb r1, [r0]
	mov r0, r8
	strh r0, [r4, #0x16]
	movs r0, #0x46
	strh r0, [r4, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x1a]
	strh r6, [r4, #8]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	adds r3, #1
	adds r1, r2, r3
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08064E40 @ =0x03000022
	adds r1, r2, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08064E44 @ =0x03000025
	adds r2, r2, r1
	strb r6, [r2]
	subs r0, #0x11
	str r0, [r4, #0x28]
	ldr r0, _08064E48 @ =0x00040080
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08064D8C
	ldr r0, _08064E4C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08064E50 @ =sub_8064E84
	str r0, [r1, #8]
	b _08064E74
	.align 2, 0
_08064E24: .4byte 0x06011440
_08064E28: .4byte gUnknown_0868B388
_08064E2C: .4byte sub_8065794
_08064E30: .4byte 0x00006820
_08064E34: .4byte 0x03000032
_08064E38: .4byte gUnknown_0868B288
_08064E3C: .4byte 0x03000020
_08064E40: .4byte 0x03000022
_08064E44: .4byte 0x03000025
_08064E48: .4byte 0x00040080
_08064E4C: .4byte gCurTask
_08064E50: .4byte sub_8064E84
_08064E54:
	movs r0, #0xb0
	lsls r0, r0, #1
	cmp r1, r0
	ble _08064E74
	adds r0, #1
	cmp r1, r0
	bne _08064E6E
	movs r0, #4
	strh r0, [r4, #4]
	strh r6, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #8]
_08064E6E:
	adds r0, r4, #0
	bl sub_805423C
_08064E74:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8064E84
sub_8064E84: @ 0x08064E84
	push {r4, r5, r6, lr}
	ldr r0, _08064ED8 @ =gCurTask
	ldr r6, [r0]
	ldrh r1, [r6, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x24]
	ldrh r0, [r0, #6]
	ldr r2, _08064EDC @ =0x0300004C
	adds r5, r1, r2
	ldrh r2, [r5]
	ldr r3, _08064EE0 @ =0x030000B4
	adds r0, r0, r3
	strh r2, [r0]
	ldr r0, _08064EE4 @ =0x03000050
	adds r2, r1, r0
	ldrh r0, [r2]
	subs r0, #0x20
	strh r0, [r2]
	subs r3, #0x62
	adds r1, r1, r3
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	ldr r3, _08064EE8 @ =gBgScrollRegs
	ldrh r0, [r2]
	lsrs r0, r0, #8
	strh r0, [r3]
	ldrh r0, [r1]
	lsrs r0, r0, #8
	strh r0, [r3, #2]
	ldr r0, _08064EEC @ =gPressedKeys
	ldrh r0, [r0]
	movs r2, #0xb
	ands r2, r0
	cmp r2, #0
	beq _08064EF4
	ldr r0, _08064EF0 @ =sub_8064FF8
	str r0, [r6, #8]
	b _08064F9A
	.align 2, 0
_08064ED8: .4byte gCurTask
_08064EDC: .4byte 0x0300004C
_08064EE0: .4byte 0x030000B4
_08064EE4: .4byte 0x03000050
_08064EE8: .4byte gBgScrollRegs
_08064EEC: .4byte gPressedKeys
_08064EF0: .4byte sub_8064FF8
_08064EF4:
	movs r0, #0
	ldrsh r1, [r5, r0]
	cmp r1, #0x1d
	bhi _08064F06
	cmp r1, #1
	bne _08064F1E
	bl sub_8063DCC
	b _08064F1E
_08064F06:
	cmp r1, #0x29
	bhi _08064F26
	strh r2, [r4]
	movs r1, #1
	movs r0, #1
	strh r0, [r4, #2]
	movs r0, #8
	strh r0, [r4, #4]
	strh r2, [r4, #6]
	adds r0, #0xf8
	strh r0, [r4, #8]
	strb r1, [r4, #0xa]
_08064F1E:
	adds r0, r4, #0
	bl sub_80543A4
	b _08064F42
_08064F26:
	cmp r1, #0x65
	bls _08064F2E
	cmp r1, #0xf1
	bhi _08064F36
_08064F2E:
	adds r0, r4, #0
	bl sub_805423C
	b _08064F42
_08064F36:
	ldr r0, _08064F68 @ =0x00000169
	cmp r1, r0
	bhi _08064F42
	adds r0, r4, #0
	bl sub_805423C
_08064F42:
	adds r0, r4, #0
	adds r0, #0x4c
	ldrh r1, [r0]
	adds r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, _08064F6C @ =0x0000019D
	cmp r1, r0
	ble _08064F78
	ldr r0, _08064F70 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08064F74 @ =sub_8064FA0
	str r0, [r1, #8]
	adds r0, r4, #0
	bl sub_805423C
	b _08064F9A
	.align 2, 0
_08064F68: .4byte 0x00000169
_08064F6C: .4byte 0x0000019D
_08064F70: .4byte gCurTask
_08064F74: .4byte sub_8064FA0
_08064F78:
	movs r0, #0xb0
	lsls r0, r0, #1
	cmp r1, r0
	ble _08064F9A
	adds r0, #1
	cmp r1, r0
	bne _08064F94
	movs r0, #4
	strh r0, [r4, #4]
	movs r0, #0
	strh r0, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #8]
_08064F94:
	adds r0, r4, #0
	bl sub_805423C
_08064F9A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8064FA0
sub_8064FA0: @ 0x08064FA0
	push {lr}
	ldr r1, _08064FDC @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08064FE0 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08064FE4 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08064FE8 @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08064FEC @ =gVramGraphicsCopyCursor
	ldr r0, _08064FF0 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08064FF4 @ =gBgScrollRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	strh r0, [r1, #0xa]
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	bl CreateTitleScreen
	pop {r0}
	bx r0
	.align 2, 0
_08064FDC: .4byte 0x0000FFFF
_08064FE0: .4byte gBackgroundsCopyQueueCursor
_08064FE4: .4byte gBackgroundsCopyQueueIndex
_08064FE8: .4byte sa2__gUnknown_03005390
_08064FEC: .4byte gVramGraphicsCopyCursor
_08064FF0: .4byte gVramGraphicsCopyQueueIndex
_08064FF4: .4byte gBgScrollRegs

	thumb_func_start sub_8064FF8
sub_8064FF8: @ 0x08064FF8
	push {lr}
	ldr r1, _0806503C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08065040 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08065044 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08065048 @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0806504C @ =gVramGraphicsCopyCursor
	ldr r0, _08065050 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #1
	bl m4aSongNumStop
	ldr r1, _08065054 @ =gBgScrollRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	strh r0, [r1, #0xa]
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	movs r0, #1
	bl CreateTitleScreen
	pop {r0}
	bx r0
	.align 2, 0
_0806503C: .4byte 0x0000FFFF
_08065040: .4byte gBackgroundsCopyQueueCursor
_08065044: .4byte gBackgroundsCopyQueueIndex
_08065048: .4byte sa2__gUnknown_03005390
_0806504C: .4byte gVramGraphicsCopyCursor
_08065050: .4byte gVramGraphicsCopyQueueIndex
_08065054: .4byte gBgScrollRegs

	thumb_func_start Task_8065058
Task_8065058: @ 0x08065058
	push {r4, r5, r6, r7, lr}
	ldr r0, _08065130 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r5, r6, #0
	ldrh r0, [r6, #0x30]
	adds r0, #1
	strh r0, [r6, #0x30]
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r2, r0, #0x10
	ldr r1, _08065134 @ =0xFFA60000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	cmp r0, #0x8f
	bls _08065086
	ldr r0, [r6, #0x3c]
	ldr r1, [r6, #0x40]
	adds r0, r0, r1
	str r0, [r6, #0x3c]
_08065086:
	cmp r2, #0x59
	bgt _08065098
	ldr r0, [r6, #0x40]
	subs r0, #6
	str r0, [r6, #0x40]
	cmp r0, #0
	bge _08065098
	movs r0, #0
	str r0, [r6, #0x40]
_08065098:
	lsls r0, r3, #0x10
	asrs r7, r0, #0x10
	cmp r7, #0xe9
	bne _080650A6
	movs r0, #0xa0
	lsls r0, r0, #1
	str r0, [r5, #0x40]
_080650A6:
	ldr r0, [r5, #0x3c]
	movs r1, #0xb4
	lsls r1, r1, #8
	cmp r0, r1
	ble _080650B2
	str r1, [r5, #0x3c]
_080650B2:
	ldr r0, [r5, #0x34]
	cmp r0, #0
	bne _080650C8
	adds r1, r6, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0x2f
	str r0, [r5, #0x34]
	ldr r0, [r5, #0x3c]
	str r0, [r5, #0x38]
_080650C8:
	ldr r4, _08065138 @ =gSineTable
	ldr r0, [r5, #0x34]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	movs r0, #0x80
	lsls r0, r0, #1
	subs r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0x18
	bl Div
	ldr r1, [r5, #0x38]
	subs r1, r1, r0
	str r1, [r5, #0x38]
	ldr r1, [r5, #0x34]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	lsls r1, r7, #5
	adds r0, r0, r1
	ldr r1, _0806513C @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _08065140 @ =0x0000028A
	bl Div
	adds r0, #0x78
	strh r0, [r6, #0x16]
	ldr r0, [r5, #0x38]
	asrs r0, r0, #8
	strh r0, [r6, #0x18]
	ldr r0, [r5, #0x34]
	subs r0, #1
	str r0, [r5, #0x34]
	adds r0, r5, #0
	adds r0, #0x32
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08065144
	movs r0, #0
	b _08065148
	.align 2, 0
_08065130: .4byte gCurTask
_08065134: .4byte 0xFFA60000
_08065138: .4byte gSineTable
_0806513C: .4byte 0x000003FF
_08065140: .4byte 0x0000028A
_08065144:
	movs r0, #0xc0
	lsls r0, r0, #1
_08065148:
	strh r0, [r6, #0x1a]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_806515C
sub_806515C: @ 0x0806515C
	push {r4, r5, r6, r7, lr}
	ldr r0, _0806522C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r5, r6, #0
	ldrh r0, [r6, #0x30]
	adds r0, #1
	strh r0, [r6, #0x30]
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r2, r0, #0x10
	ldr r1, _08065230 @ =0xFFA60000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	cmp r0, #0x8f
	bls _0806518A
	ldr r0, [r6, #0x3c]
	ldr r1, [r6, #0x40]
	adds r0, r0, r1
	str r0, [r6, #0x3c]
_0806518A:
	cmp r2, #0x59
	bgt _0806519C
	ldr r0, [r6, #0x40]
	subs r0, #6
	str r0, [r6, #0x40]
	cmp r0, #0
	bge _0806519C
	movs r0, #0
	str r0, [r6, #0x40]
_0806519C:
	lsls r0, r3, #0x10
	asrs r7, r0, #0x10
	cmp r7, #0xe9
	bne _080651AA
	movs r0, #0xa0
	lsls r0, r0, #1
	str r0, [r5, #0x40]
_080651AA:
	ldr r0, [r5, #0x3c]
	movs r1, #0xd4
	lsls r1, r1, #8
	cmp r0, r1
	ble _080651B6
	str r1, [r5, #0x3c]
_080651B6:
	ldr r0, [r5, #0x34]
	cmp r0, #0
	bne _080651CC
	adds r1, r6, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0x2f
	str r0, [r5, #0x34]
	ldr r0, [r5, #0x3c]
	str r0, [r5, #0x38]
_080651CC:
	ldr r4, _08065234 @ =gSineTable
	ldr r1, [r5, #0x34]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0x18
	bl Div
	ldr r1, [r5, #0x38]
	subs r1, r1, r0
	str r1, [r5, #0x38]
	ldr r1, [r5, #0x34]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	lsls r1, r7, #5
	adds r0, r0, r1
	ldr r1, _08065238 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _0806523C @ =0x0000028A
	bl Div
	movs r1, #0x78
	subs r1, r1, r0
	strh r1, [r6, #0x16]
	ldr r0, [r5, #0x38]
	asrs r0, r0, #8
	strh r0, [r6, #0x18]
	ldr r0, [r5, #0x34]
	subs r0, #1
	str r0, [r5, #0x34]
	adds r0, r5, #0
	adds r0, #0x32
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08065240
	movs r0, #0
	b _08065244
	.align 2, 0
_0806522C: .4byte gCurTask
_08065230: .4byte 0xFFA60000
_08065234: .4byte gSineTable
_08065238: .4byte 0x000003FF
_0806523C: .4byte 0x0000028A
_08065240:
	movs r0, #0xc0
	lsls r0, r0, #1
_08065244:
	strh r0, [r6, #0x1a]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8065258
sub_8065258: @ 0x08065258
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080652CC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov sl, r0
	ldr r0, _080652D0 @ =0x030000B4
	adds r1, r1, r0
	movs r7, #0
	movs r2, #0
	ldrsh r5, [r1, r2]
	ldr r0, _080652D4 @ =gUnknown_0868B3B8
	mov r8, r0  @ -> SA1_ANIM_INTRO_CHARACTERS
	movs r1, #2
	add r1, r8
	mov sb, r1
_08065284:
	lsls r6, r7, #1
	adds r0, r6, r7
	lsls r0, r0, #4
	mov r2, sl
	adds r4, r2, r0
	cmp r5, #0x1e
	bne _080652B4
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	lsls r1, r7, #3
	mov r2, r8
	adds r0, r1, r2
	ldrh r0, [r0]
	strh r0, [r4, #0xa]
	add r1, sb
	ldrh r1, [r1]
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
_080652B4:
	cmp r5, #0
	ble _0806530E
	ldr r0, _080652D8 @ =0x00000161
	cmp r5, r0
	ble _080652DC
	movs r0, #0
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	b _08065308
	.align 2, 0
_080652CC: .4byte gCurTask
_080652D0: .4byte 0x030000B4
_080652D4: .4byte gUnknown_0868B3B8
_080652D8: .4byte 0x00000161
_080652DC:
	cmp r5, #0xbd
	ble _08065308
	cmp r5, #0xbe
	bne _08065302
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, r6, #1
	lsls r1, r1, #2
	mov r2, r8
	adds r0, r1, r2
	ldrh r0, [r0]
	strh r0, [r4, #0xa]
	add r1, sb
	ldrh r1, [r1]
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
_08065302:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
_08065308:
	adds r0, r4, #0
	bl DisplaySprite
_0806530E:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #1
	blo _08065284
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8065328
sub_8065328: @ 0x08065328
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08065374 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r0, r1
	str r1, [sp]
	ldr r1, _08065378 @ =0x030000B4
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r6, #0
	lsls r0, r0, #0x10
	mov sb, r0
	mov r2, sb
	asrs r2, r2, #0x10
	mov r8, r2
	ldr r0, _0806537C @ =gUnknown_0868B3C0
	mov sl, r0
_08065358:
	lsls r1, r6, #1
	adds r0, r1, r6
	lsls r0, r0, #4
	ldr r2, [sp]
	adds r5, r2, r0
	adds r7, r1, #0
	mov r0, r8
	cmp r0, #0x1e
	bne _080653B8
	cmp r6, #2
	bne _08065384
	ldr r0, _08065380 @ =0x06013280
	b _08065392
	.align 2, 0
_08065374: .4byte gCurTask
_08065378: .4byte 0x030000B4
_0806537C: .4byte gUnknown_0868B3C0
_08065380: .4byte 0x06013280
_08065384:
	cmp r6, #1
	bne _08065390
	ldr r0, _0806538C @ =0x06011980
	b _08065392
	.align 2, 0
_0806538C: .4byte 0x06011980
_08065390:
	ldr r0, _080653DC @ =0x06010080
_08065392:
	str r0, [r5, #4]
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	lsls r1, r6, #3
	mov r2, sl
	adds r0, r1, r2
	ldrh r0, [r0]
	strh r0, [r5, #0xa]
	ldr r0, _080653E0 @ =gUnknown_0868B3C2
	adds r1, r1, r0
	ldrh r1, [r1]
	adds r0, r5, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
_080653B8:
	mov r1, sb
	asrs r4, r1, #0x10
	cmp r4, #0
	blt _08065426
	cmp r4, #0x1d
	bgt _080653CA
	adds r0, r5, #0
	bl UpdateSpriteAnimation
_080653CA:
	ldr r0, _080653E4 @ =0x00000161
	cmp r4, r0
	ble _080653E8
	movs r0, #0
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	b _08065416
	.align 2, 0
_080653DC: .4byte 0x06010080
_080653E0: .4byte gUnknown_0868B3C2
_080653E4: .4byte 0x00000161
_080653E8:
	cmp r4, #0xbd
	ble _08065416
	cmp r4, #0xbe
	bne _08065410
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, r7, #1
	lsls r1, r1, #2
	mov r2, sl
	adds r0, r1, r2
	ldrh r0, [r0]
	strh r0, [r5, #0xa]
	ldr r0, _08065440 @ =gUnknown_0868B3C2
	adds r1, r1, r0
	ldrh r1, [r1]
	adds r0, r5, #0
	adds r0, #0x20
	strb r1, [r0]
_08065410:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
_08065416:
	mov r1, r8
	cmp r1, #0x1d
	bgt _08065420
	cmp r6, #0
	bne _08065426
_08065420:
	adds r0, r5, #0
	bl DisplaySprite
_08065426:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	blo _08065358
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08065440: .4byte gUnknown_0868B3C2

	thumb_func_start sub_8065444
sub_8065444: @ 0x08065444
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08065480 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r1, r0
	mov sl, r1
	ldr r1, _08065484 @ =0x030000B4
	adds r0, r0, r1
	ldrh r0, [r0]
	mov sb, r0
	movs r5, #0
	ldr r7, _08065488 @ =gUnknown_0868B3C8
	adds r2, r7, #2
	mov r8, r2
_0806546C:
	lsls r1, r5, #1
	adds r0, r1, r5
	lsls r0, r0, #4
	mov r2, sl
	adds r4, r2, r0
	adds r3, r1, #0
	cmp r5, #2
	bne _08065490
	ldr r0, _0806548C @ =0x06013280
	b _0806549E
	.align 2, 0
_08065480: .4byte gCurTask
_08065484: .4byte 0x030000B4
_08065488: .4byte gUnknown_0868B3C8
_0806548C: .4byte 0x06013280
_08065490:
	cmp r5, #1
	bne _0806549C
	ldr r0, _08065498 @ =0x06011980
	b _0806549E
	.align 2, 0
_08065498: .4byte 0x06011980
_0806549C:
	ldr r0, _080654DC @ =0x06010080
_0806549E:
	str r0, [r4, #4]
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r6, r0, #0
	cmp r2, #0x1e
	bne _080654C6
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	lsls r1, r5, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	strh r0, [r4, #0xa]
	add r1, r8
	ldrh r1, [r1]
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
_080654C6:
	cmp r2, #0
	blt _0806551E
	ldr r0, _080654E0 @ =0x00000161
	cmp r2, r0
	ble _080654E4
	movs r0, #0
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	b _08065508
	.align 2, 0
_080654DC: .4byte 0x06010080
_080654E0: .4byte 0x00000161
_080654E4:
	cmp r2, #0xea
	ble _08065508
	cmp r2, #0xeb
	bne _08065508
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, r3, #1
	lsls r1, r1, #2
	adds r0, r1, r7
	ldrh r0, [r0]
	strh r0, [r4, #0xa]
	add r1, r8
	ldrh r1, [r1]
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
_08065508:
	asrs r0, r6, #0x10
	cmp r0, #0x1d
	bgt _08065512
	cmp r5, #0
	bne _0806551E
_08065512:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0806551E:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	blo _0806546C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8065538
sub_8065538: @ 0x08065538
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _080655D0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r0, [sp]
	ldr r2, _080655D4 @ =0x030000B4
	adds r0, r1, r2
	ldrh r0, [r0]
	lsls r2, r0, #0x10
	movs r0, #0xcd
	lsls r0, r0, #0x11
	cmp r2, r0
	bgt _0806561C
	movs r7, #0
	str r2, [sp, #4]
	ldr r0, _080655D4 @ =0x030000B4
	adds r0, r1, r0
	str r0, [sp, #8]
	ldr r1, _080655D8 @ =0x00000161
	mov sl, r1
	ldr r2, _080655DC @ =gUnknown_0868B3D0
	mov r8, r2
	movs r0, #2
	add r0, r8
	mov sb, r0
_0806557A:
	lsls r6, r7, #1
	adds r0, r6, r7
	lsls r0, r0, #4
	ldr r1, [sp]
	adds r4, r1, r0
	ldr r2, [sp, #8]
	ldrh r0, [r2]
	cmp r0, sl
	bne _08065590
	movs r0, #0
	str r0, [r4, #0x10]
_08065590:
	ldr r0, [sp, #4]
	asrs r5, r0, #0x10
	cmp r5, #0x1e
	bne _080655BA
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	lsls r1, r7, #3
	mov r2, r8
	adds r0, r1, r2
	ldrh r0, [r0]
	strh r0, [r4, #0xa]
	add r1, sb
	ldrh r1, [r1]
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
_080655BA:
	cmp r5, #0
	blt _08065612
	cmp r5, sl
	ble _080655E0
	movs r0, #0
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	b _0806560C
	.align 2, 0
_080655D0: .4byte gCurTask
_080655D4: .4byte 0x030000B4
_080655D8: .4byte 0x00000161
_080655DC: .4byte gUnknown_0868B3D0
_080655E0:
	cmp r5, #0xa4
	ble _0806560C
	cmp r5, #0xa5
	bne _08065606
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, r6, #1
	lsls r1, r1, #2
	mov r2, r8
	adds r0, r1, r2
	ldrh r0, [r0]
	strh r0, [r4, #0xa]
	add r1, sb
	ldrh r1, [r1]
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
_08065606:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
_0806560C:
	adds r0, r4, #0
	bl DisplaySprite
_08065612:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #1
	blo _0806557A
_0806561C:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_806562C
sub_806562C: @ 0x0806562C
	push {r4, r5, lr}
	ldr r0, _08065698 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r4, r3, #0
	ldrh r0, [r3, #0x30]
	adds r0, #1
	strh r0, [r3, #0x30]
	lsls r1, r0, #0x10
	lsrs r2, r1, #0x10
	adds r0, r1, #0
	ldr r1, _0806569C @ =0x01610000
	cmp r0, r1
	bne _08065652
	movs r0, #0
	str r0, [r3, #0x10]
_08065652:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x5a
	ble _08065690
	subs r0, #0x5a
	ldr r2, [r3, #0x34]
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _08065690
	ldr r0, [r3, #0x3c]
	subs r0, #0x10
	str r0, [r3, #0x3c]
	ldr r2, _080656A0 @ =gUnknown_0868B27C
	movs r5, #0
	ldrsh r1, [r2, r5]
	cmp r0, r1
	bge _0806567C
	str r1, [r3, #0x3c]
_0806567C:
	ldr r0, [r4, #0x3c]
	strh r0, [r4, #0x16]
	ldrh r0, [r2, #2]
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08065690:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08065698: .4byte gCurTask
_0806569C: .4byte 0x01610000
_080656A0: .4byte gUnknown_0868B27C

	thumb_func_start sub_80656A4
sub_80656A4: @ 0x080656A4
	push {r4, r5, lr}
	ldr r0, _08065710 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r4, r3, #0
	ldrh r0, [r3, #0x30]
	adds r0, #1
	strh r0, [r3, #0x30]
	lsls r1, r0, #0x10
	lsrs r2, r1, #0x10
	adds r0, r1, #0
	ldr r1, _08065714 @ =0x01610000
	cmp r0, r1
	bne _080656CA
	movs r0, #0
	str r0, [r3, #0x10]
_080656CA:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x5a
	ble _08065708
	subs r0, #0x5a
	ldr r2, [r3, #0x34]
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _08065708
	ldr r0, [r3, #0x3c]
	subs r0, #0x10
	str r0, [r3, #0x3c]
	ldr r2, _08065718 @ =gUnknown_0868B280
	movs r5, #0
	ldrsh r1, [r2, r5]
	cmp r0, r1
	bge _080656F4
	str r1, [r3, #0x3c]
_080656F4:
	ldr r0, [r4, #0x3c]
	strh r0, [r4, #0x16]
	ldrh r0, [r2, #2]
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08065708:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08065710: .4byte gCurTask
_08065714: .4byte 0x01610000
_08065718: .4byte gUnknown_0868B280

	thumb_func_start sub_806571C
sub_806571C: @ 0x0806571C
	push {r4, r5, lr}
	ldr r0, _08065788 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r4, r3, #0
	ldrh r0, [r3, #0x30]
	adds r0, #1
	strh r0, [r3, #0x30]
	lsls r1, r0, #0x10
	lsrs r2, r1, #0x10
	adds r0, r1, #0
	ldr r1, _0806578C @ =0x01610000
	cmp r0, r1
	bne _08065742
	movs r0, #0
	str r0, [r3, #0x10]
_08065742:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x5a
	ble _08065780
	subs r0, #0x5a
	ldr r2, [r3, #0x34]
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _08065780
	ldr r0, [r3, #0x3c]
	subs r0, #0x10
	str r0, [r3, #0x3c]
	ldr r2, _08065790 @ =gUnknown_0868B284
	movs r5, #0
	ldrsh r1, [r2, r5]
	cmp r0, r1
	bge _0806576C
	str r1, [r3, #0x3c]
_0806576C:
	ldr r0, [r4, #0x3c]
	strh r0, [r4, #0x16]
	ldrh r0, [r2, #2]
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08065780:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08065788: .4byte gCurTask
_0806578C: .4byte 0x01610000
_08065790: .4byte gUnknown_0868B284

	thumb_func_start sub_8065794
sub_8065794: @ 0x08065794
	push {r4, r5, lr}
	ldr r0, _08065804 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r4, r3, #0
	ldrh r0, [r3, #0x30]
	adds r1, r0, #1
	strh r1, [r3, #0x30]
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	movs r0, #0xcd
	lsls r0, r0, #1
	cmp r2, r0
	bgt _080657FE
	lsls r1, r1, #0x10
	ldr r0, _08065808 @ =0x01610000
	cmp r1, r0
	bne _080657C2
	movs r0, #0
	str r0, [r3, #0x10]
_080657C2:
	cmp r2, #0x5a
	ble _080657FE
	adds r0, r2, #0
	subs r0, #0x5a
	ldr r2, [r3, #0x34]
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _080657FE
	ldr r0, [r3, #0x3c]
	subs r0, #0x10
	str r0, [r3, #0x3c]
	ldr r2, _0806580C @ =gUnknown_0868B288
	movs r5, #0
	ldrsh r1, [r2, r5]
	cmp r0, r1
	bge _080657EA
	str r1, [r3, #0x3c]
_080657EA:
	ldr r0, [r4, #0x3c]
	strh r0, [r4, #0x16]
	ldrh r0, [r2, #2]
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080657FE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08065804: .4byte gCurTask
_08065808: .4byte 0x01610000
_0806580C: .4byte gUnknown_0868B288

	thumb_func_start TaskDestructor_8065810
TaskDestructor_8065810: @ 0x08065810
	bx lr
	.align 2, 0

	thumb_func_start Task_IntroChaosEmeraldUpdate
Task_IntroChaosEmeraldUpdate: @ 0x08065814
	push {r4, r5, lr}
	ldr r0, _08065880 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r2, r4, #0
	ldrh r5, [r4, #0x30]
	movs r0, #0x30
	ldrsh r3, [r4, r0]
	adds r0, r3, #0
	subs r0, #0x5a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x8f
	bls _0806583E
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x3c]
_0806583E:
	cmp r3, #0x59
	bgt _08065850
	ldr r0, [r4, #0x40]
	subs r0, #6
	str r0, [r4, #0x40]
	cmp r0, #0
	bge _08065850
	movs r0, #0
	str r0, [r4, #0x40]
_08065850:
	cmp r5, #0xe9
	bne _0806585A
	movs r0, #0xa0
	lsls r0, r0, #1
	str r0, [r2, #0x40]
_0806585A:
	ldr r0, [r2, #0x3c]
	movs r1, #0xb4
	lsls r1, r1, #8
	cmp r0, r1
	ble _08065866
	str r1, [r2, #0x3c]
_08065866:
	ldr r0, [r2, #0x3c]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08065880: .4byte gCurTask
