.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_806ABD4
Task_806ABD4: @ 0x0806ABD4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r6, _0806ACF0 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	ldr r1, _0806ACF4 @ =0x03000280
	adds r0, r5, r1
	bl sub_805423C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806ABF6
	b _0806AD30
_0806ABF6:
	ldr r2, _0806ACF8 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0806ACFC @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0806AD00 @ =gBldRegs
	movs r4, #0
	strh r4, [r0]
	strh r4, [r0, #4]
	ldr r0, [r6]
	bl TaskDestroy
	ldr r2, _0806AD04 @ =0x0300028C
	adds r7, r5, r2
	ldrb r0, [r7]
	cmp r0, #1
	bne _0806ACDE
	bl m4aMPlayAllStop
	bl m4aSoundVSyncOff
	ldr r0, _0806AD08 @ =gFlags
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r1, r0
	ldr r2, _0806AD0C @ =0x04000200
	mov r8, r2
	ldrh r0, [r2]
	str r0, [sp]
	ldr r6, _0806AD10 @ =0x04000208
	ldrh r0, [r6]
	mov sl, r0
	ldr r5, _0806AD14 @ =0x04000004
	ldrh r0, [r5]
	mov sb, r0
	strh r4, [r2]
	ldrh r0, [r2]
	strh r4, [r6]
	ldrh r0, [r6]
	strh r4, [r5]
	ldrh r0, [r5]
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	ldr r2, _0806AD08 @ =gFlags
	str r1, [r2]
	ldr r1, _0806AD18 @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r4, _0806AD1C @ =0x0000C5FF
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r3, _0806AD20 @ =0x00007FFF
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xc
	ldrh r2, [r1, #0xa]
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xc
	ldrh r2, [r1, #0xa]
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r0, _0806AD24 @ =0x040000D4
	ldrh r1, [r0, #0xa]
	ands r4, r1
	strh r4, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ands r3, r1
	strh r3, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ldrh r0, [r0, #0xa]
	bl WriteSaveGame
	mov r0, sp
	ldrh r1, [r0]
	mov r0, r8
	strh r1, [r0]
	ldrh r0, [r0]
	mov r2, sl
	strh r2, [r6]
	ldrh r0, [r6]
	mov r0, sb
	strh r0, [r5]
	ldrh r0, [r5]
	bl m4aSoundVSyncOn
	ldr r1, _0806AD08 @ =gFlags
	ldr r0, [r1]
	ldr r1, _0806AD28 @ =0xFFFF7FFF
	ands r0, r1
	ldr r2, _0806AD08 @ =gFlags
	str r0, [r2]
_0806ACDE:
	ldr r0, _0806AD2C @ =gUnknown_0868B758
	ldrb r1, [r7]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl _call_via_r0
	b _0806AD34
	.align 2, 0
_0806ACF0: .4byte gCurTask
_0806ACF4: .4byte 0x03000280
_0806ACF8: .4byte gDispCnt
_0806ACFC: .4byte 0x00001FFF
_0806AD00: .4byte gBldRegs
_0806AD04: .4byte 0x0300028C
_0806AD08: .4byte gFlags
_0806AD0C: .4byte 0x04000200
_0806AD10: .4byte 0x04000208
_0806AD14: .4byte 0x04000004
_0806AD18: .4byte 0x040000B0
_0806AD1C: .4byte 0x0000C5FF
_0806AD20: .4byte 0x00007FFF
_0806AD24: .4byte 0x040000D4
_0806AD28: .4byte 0xFFFF7FFF
_0806AD2C: .4byte gUnknown_0868B758
_0806AD30:
	bl sub_806AD44
_0806AD34:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_806AD44
sub_806AD44: @ 0x0806AD44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0806AE20 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	movs r5, #0
	ldr r0, _0806AE24 @ =gUnknown_0868B6D4
	mov sl, r0
	ldr r3, _0806AE28 @ =0x0300028D
	adds r6, r1, r3
	ldr r0, _0806AE2C @ =gUnknown_0868B728
	mov r8, r0
	movs r1, #1
	add r1, r8
	mov sb, r1
_0806AD70:
	lsls r2, r5, #1
	adds r0, r2, r5
	lsls r0, r0, #4
	adds r0, #0x40
	adds r4, r7, r0
	movs r0, #0
	ldrsb r0, [r6, r0]
	lsls r1, r5, #2
	cmp r0, #0
	beq _0806AD86
	adds r1, #2
_0806AD86:
	mov r3, sl
	adds r0, r1, r3
	ldrh r0, [r0]
	strh r0, [r4, #0xa]
	ldr r3, _0806AE30 @ =gUnknown_0868B704
	movs r0, #0
	ldrsb r0, [r6, r0]
	adds r1, r2, #0
	cmp r0, #0
	beq _0806AD9C
	adds r1, r2, #1
_0806AD9C:
	adds r0, r1, r3
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
	mov r1, r8
	adds r0, r2, r1
	ldrb r0, [r0]
	strh r0, [r4, #0x16]
	mov r3, sb
	adds r0, r2, r3
	ldrb r0, [r0]
	strh r0, [r4, #0x18]
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #5
	bls _0806AD70
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrb r0, [r0]
	movs r3, #9
	mov r8, r3
	cmp r0, #1
	bne _0806ADE8
	movs r0, #8
	mov r8, r0
_0806ADE8:
	cmp r5, r8
	bhs _0806AEC0
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r6, r7, r1
	ldr r3, _0806AE34 @ =gUnknown_0868B734
	mov sb, r3
	movs r0, #1
	add r0, sb
	mov sl, r0
_0806ADFC:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #4
	adds r0, #0x40
	adds r4, r7, r0
	subs r2, r5, #6
	lsls r3, r2, #2
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r1, r0, #2
	ldr r0, _0806AE38 @ =0x0000028D
	ldrsb r0, [r0, r7]
	cmp r0, #0
	beq _0806AE3C
	adds r0, r1, #2
	adds r0, r3, r0
	b _0806AE3E
	.align 2, 0
_0806AE20: .4byte gCurTask
_0806AE24: .4byte gUnknown_0868B6D4
_0806AE28: .4byte 0x0300028D
_0806AE2C: .4byte gUnknown_0868B728
_0806AE30: .4byte gUnknown_0868B704
_0806AE34: .4byte gUnknown_0868B734
_0806AE38: .4byte 0x0000028D
_0806AE3C:
	adds r0, r3, r1
_0806AE3E:
	ldr r1, _0806AE68 @ =gUnknown_0868B6EC
	adds r0, r1, r0
	ldrh r0, [r0]
	strh r0, [r4, #0xa]
	ldr r3, _0806AE6C @ =gUnknown_0868B710
	mov ip, r3
	lsls r3, r2, #1
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r1, r0, #1
	ldr r0, _0806AE70 @ =0x0000028D
	adds r0, r7, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0806AE74
	adds r0, r1, #1
	adds r0, r3, r0
	b _0806AE76
	.align 2, 0
_0806AE68: .4byte gUnknown_0868B6EC
_0806AE6C: .4byte gUnknown_0868B710
_0806AE70: .4byte 0x0000028D
_0806AE74:
	adds r0, r3, r1
_0806AE76:
	add r0, ip
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
	lsls r2, r2, #1
	ldrb r1, [r6]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r2, r0
	add r0, sb
	ldrb r0, [r0]
	strh r0, [r4, #0x16]
	ldrb r1, [r6]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, r2, r0
	add r2, sl
	ldrb r0, [r2]
	strh r0, [r4, #0x18]
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r8
	blo _0806ADFC
_0806AEC0:
	movs r1, #0xf8
	lsls r1, r1, #1
	adds r4, r7, r1
	ldr r1, _0806AEFC @ =gUnknown_0868B760
	ldr r3, _0806AF00 @ =0x0000028D
	adds r2, r7, r3
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	strh r0, [r4, #0x16]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	adds r1, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl DisplaySprite
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806AEFC: .4byte gUnknown_0868B760
_0806AF00: .4byte 0x0000028D

	thumb_func_start Task_806AF04
Task_806AF04: @ 0x0806AF04
	push {r4, r5, lr}
	ldr r5, _0806AF44 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	ldr r1, _0806AF48 @ =0x03000250
	adds r0, r4, r1
	bl DisplaySprite
	bl sub_806AD44
	ldr r0, _0806AF4C @ =gPressedKeys
	ldrh r1, [r0]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0806AF3C
	ldr r1, _0806AF50 @ =0x03000280
	adds r0, r4, r1
	movs r1, #0
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	movs r0, #0x6a
	bl m4aSongNumStart
	ldr r1, [r5]
	ldr r0, _0806AF54 @ =Task_806ABD4
	str r0, [r1, #8]
_0806AF3C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806AF44: .4byte gCurTask
_0806AF48: .4byte 0x03000250
_0806AF4C: .4byte gPressedKeys
_0806AF50: .4byte 0x03000280
_0806AF54: .4byte Task_806ABD4

	thumb_func_start TaskDestructor_EditLanguageScreen
TaskDestructor_EditLanguageScreen: @ 0x0806AF58
	push {r4, r5, r6, lr}
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r4, #0
	adds r0, #0x44
	adds r5, r1, r0
_0806AF68:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, r5, r0
	ldr r0, [r0]
	bl VramFree
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #8
	bls _0806AF68
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	bl VramFree
	movs r1, #0x95
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0806AF9C
	bl VramFree
_0806AF9C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

@ --- End of Edit Language Screen ---
