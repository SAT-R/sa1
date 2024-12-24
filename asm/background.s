.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start DrawBackground
DrawBackground: @ 0x080019C0
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldrh r0, [r3, #0x1c]
	ldr r1, _08001A84 @ =gTilemapsRef
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	ldrh r0, [r4]
	strh r0, [r3, #0x14]
	ldrh r0, [r4, #2]
	strh r0, [r3, #0x16]
	ldr r0, [r4, #8]
	str r0, [r3]
	ldrh r0, [r4, #0xc]
	strh r0, [r3, #8]
	ldrh r1, [r3, #0x2e]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08001A08
	ldr r1, _08001A88 @ =gVramGraphicsCopyQueue
	ldr r2, _08001A8C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	str r3, [r0]
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r2]
	ldrh r0, [r3, #0x2e]
	movs r1, #8
	eors r0, r1
	strh r0, [r3, #0x2e]
_08001A08:
	ldr r6, [r4, #0x10]
	ldrh r5, [r4, #0x16]
	ldrh r0, [r4, #0x14]
	movs r1, #0x2a
	adds r1, r1, r3
	mov ip, r1
	strb r0, [r1]
	ldrh r1, [r3, #0x2e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08001A4C
	ldr r2, _08001A90 @ =0x040000D4
	str r6, [r2]
	mov r1, ip
	ldrb r0, [r1]
	lsls r0, r0, #1
	ldr r1, _08001A94 @ =gBgPalette
	adds r0, r0, r1
	str r0, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r5, r0
	str r5, [r2, #8]
	ldr r0, [r2, #8]
	ldr r2, _08001A98 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	ldrh r0, [r3, #0x2e]
	movs r1, #0x10
	eors r0, r1
	strh r0, [r3, #0x2e]
_08001A4C:
	ldr r0, [r4, #0x18]
	str r0, [r3, #0x10]
	ldrh r1, [r3, #0x2e]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08001A66
	ldr r0, [r4, #0x1c]
	str r0, [r3, #0x38]
	ldrh r0, [r4, #0x20]
	strh r0, [r3, #0x3c]
	ldrh r0, [r4, #0x22]
	strh r0, [r3, #0x3e]
_08001A66:
	ldr r1, _08001A9C @ =gUnknown_030010C0
	ldr r2, _08001AA0 @ =gUnknown_0300211C
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	str r3, [r0]
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08001A84: .4byte gTilemapsRef
_08001A88: .4byte gVramGraphicsCopyQueue
_08001A8C: .4byte gVramGraphicsCopyQueueIndex
_08001A90: .4byte 0x040000D4
_08001A94: .4byte gBgPalette
_08001A98: .4byte gFlags
_08001A9C: .4byte gUnknown_030010C0
_08001AA0: .4byte gUnknown_0300211C

@ SA2: sub_8002B20 (not byte-accurate?)
	thumb_func_start sub_8001AA4
sub_8001AA4: @ 0x08001AA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _08001ADC @ =gUnknown_03002384
	ldr r1, _08001AE0 @ =gUnknown_0300211C
	ldrb r2, [r0]
	adds r3, r0, #0
	adds r4, r1, #0
	ldrb r1, [r4]
	cmp r2, r1
	bne _08001AC8
	bl _0800258C
_08001AC8:
	ldr r0, _08001AE4 @ =0x04000004
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08001AE8
	movs r0, #0
	bl sub_800258E
	.align 2, 0
_08001ADC: .4byte gUnknown_03002384
_08001AE0: .4byte gUnknown_0300211C
_08001AE4: .4byte 0x04000004
_08001AE8:
	ldr r0, _08001B48 @ =0x04000006
	ldrh r0, [r0]
	ldr r2, _08001B4C @ =gUnknown_030010C0
	ldrb r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r2
	ldr r6, [r0]
	adds r1, #1
	movs r0, #0xf
	ands r1, r0
	strb r1, [r3]
	ldrh r2, [r6, #0x2e]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08001B14
	ldr r1, [r6, #0x30]
	ldr r0, [r6, #0x34]
	cmp r1, r0
	bne _08001B14
	bl _8002580
_08001B14:
	ldrh r3, [r6, #0x14]
	str r3, [sp]
	movs r3, #3
	adds r5, r3, #0
	ands r5, r2
	ldr r4, [sp]
	cmp r5, #1
	bls _08001B58
	ldr r0, _08001B50 @ =gDispCnt
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08001B58
	ldr r1, _08001B54 @ =gBgCntRegs
	lsls r0, r5, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsrs r3, r0, #0xe
	movs r0, #0x80
	lsls r0, r0, #0xd
	lsls r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	movs r0, #1
	b _08001B76
	.align 2, 0
_08001B48: .4byte 0x04000006
_08001B4C: .4byte gUnknown_030010C0
_08001B50: .4byte gDispCnt
_08001B54: .4byte gBgCntRegs
_08001B58:
	movs r1, #0x20
	str r1, [sp, #0xc]
	ldr r0, _08001C48 @ =gBgCntRegs
	lsls r1, r5, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	lsrs r3, r0, #0xe
	cmp r3, #1
	beq _08001B6E
	cmp r3, #3
	bne _08001B74
_08001B6E:
	movs r2, #0x80
	lsls r2, r2, #4
	str r2, [sp, #4]
_08001B74:
	movs r0, #2
_08001B76:
	str r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	adds r0, r1, #0
	muls r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	ldrh r2, [r6, #0x2e]
	movs r0, #0x20
	mov sb, r0
	ands r0, r2
	cmp r0, #0
	beq _08001B94
	b _08001F60
_08001B94:
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _08001B9E
	b _08001E50
_08001B9E:
	ldrh r0, [r6, #0x24]
	ldr r1, [sp, #0xc]
	muls r0, r1, r0
	ldr r1, [r6, #0xc]
	adds r1, r1, r0
	ldrh r5, [r6, #0x22]
	mov r8, r5
	ldr r5, [sp, #8]
	mov r0, r8
	muls r0, r5, r0
	adds r7, r1, r0
	ldrh r5, [r6, #0x28]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _08001BC4
	b _08001CCC
_08001BC4:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08001C50
	ldrh r0, [r6, #0x20]
	adds r0, r0, r5
	subs r0, #1
	muls r0, r4, r0
	ldr r2, [sp, #8]
	muls r0, r2, r0
	ldr r2, [r6, #0x10]
	adds r2, r2, r0
	ldrh r0, [r6, #0x1e]
	ldrh r1, [r6, #0x26]
	adds r0, r0, r1
	subs r0, #1
	ldr r3, [sp, #8]
	muls r0, r3, r0
	adds r4, r2, r0
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _08001C4C @ =0x0000FFFF
	cmp r5, r0
	bne _08001BFA
	bl _08002570
_08001BFA:
	ldr r2, [sp]
	adds r1, r2, #0
	muls r1, r3, r1
	mov sb, r1
	mov sl, r0
_08001C04:
	movs r3, #0
	subs r5, #1
	ldr r0, [sp, #0xc]
	adds r2, r7, r0
	ldrh r1, [r6, #0x26]
	cmp r3, r1
	bhs _08001C36
	movs r0, #0xc0
	lsls r0, r0, #4
	mov r8, r0
_08001C18:
	lsls r0, r3, #1
	adds r1, r0, r7
	mov ip, r1
	subs r0, r4, r0
	ldrh r0, [r0]
	mov r1, r8
	eors r0, r1
	mov r1, ip
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r6, #0x26]
	cmp r3, r0
	blo _08001C18
_08001C36:
	adds r7, r2, #0
	mov r1, sb
	subs r4, r4, r1
	lsls r0, r5, #0x10
	lsrs r5, r0, #0x10
	cmp r5, sl
	bne _08001C04
	bl _08002570
	.align 2, 0
_08001C48: .4byte gBgCntRegs
_08001C4C: .4byte 0x0000FFFF
_08001C50:
	ldrh r0, [r6, #0x20]
	muls r0, r4, r0
	ldr r2, [sp, #8]
	muls r0, r2, r0
	ldr r2, [r6, #0x10]
	adds r2, r2, r0
	ldrh r0, [r6, #0x1e]
	ldrh r1, [r6, #0x26]
	adds r0, r0, r1
	subs r0, #1
	ldr r3, [sp, #8]
	muls r0, r3, r0
	adds r4, r2, r0
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _08001CC8 @ =0x0000FFFF
	cmp r5, r0
	bne _08001C7A
	bl _08002570
_08001C7A:
	ldr r2, [sp]
	adds r1, r2, #0
	muls r1, r3, r1
	mov sb, r1
	mov sl, r0
_08001C84:
	movs r3, #0
	subs r5, #1
	ldr r0, [sp, #0xc]
	adds r2, r7, r0
	ldrh r1, [r6, #0x26]
	cmp r3, r1
	bhs _08001CB6
	movs r0, #0x80
	lsls r0, r0, #3
	mov r8, r0
_08001C98:
	lsls r0, r3, #1
	adds r1, r0, r7
	mov ip, r1
	subs r0, r4, r0
	ldrh r0, [r0]
	mov r1, r8
	eors r0, r1
	mov r1, ip
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r6, #0x26]
	cmp r3, r0
	blo _08001C98
_08001CB6:
	adds r7, r2, #0
	add r4, sb
	lsls r0, r5, #0x10
	lsrs r5, r0, #0x10
	cmp r5, sl
	bne _08001C84
	bl _08002570
	.align 2, 0
_08001CC8: .4byte 0x0000FFFF
_08001CCC:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08001D50
	ldrh r0, [r6, #0x20]
	adds r0, r0, r5
	subs r0, #1
	muls r0, r4, r0
	ldr r1, [sp, #8]
	muls r0, r1, r0
	ldr r1, [r6, #0x10]
	adds r1, r1, r0
	ldrh r0, [r6, #0x1e]
	ldr r2, [sp, #8]
	muls r0, r2, r0
	adds r4, r1, r0
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r3, _08001D4C @ =0x0000FFFF
	cmp r5, r3
	bne _08001CFC
	bl _08002570
_08001CFC:
	ldr r1, [sp]
	adds r0, r1, #0
	muls r0, r2, r0
	mov sb, r0
	mov sl, r3
_08001D06:
	movs r3, #0
	subs r5, #1
	ldr r0, [sp, #0xc]
	adds r2, r7, r0
	ldrh r1, [r6, #0x26]
	cmp r3, r1
	bhs _08001D38
	movs r0, #0x80
	lsls r0, r0, #4
	mov r8, r0
_08001D1A:
	lsls r0, r3, #1
	adds r1, r0, r7
	mov ip, r1
	adds r0, r0, r4
	ldrh r0, [r0]
	mov r1, r8
	eors r0, r1
	mov r1, ip
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r6, #0x26]
	cmp r3, r0
	blo _08001D1A
_08001D38:
	adds r7, r2, #0
	mov r1, sb
	subs r4, r4, r1
	lsls r0, r5, #0x10
	lsrs r5, r0, #0x10
	cmp r5, sl
	bne _08001D06
	bl _08002570
	.align 2, 0
_08001D4C: .4byte 0x0000FFFF
_08001D50:
	movs r0, #1
	ands r3, r0
	cmp r3, #0
	beq _08001DF0
	ldr r2, [sp, #8]
	cmp r2, #2
	bne _08001DF0
	mov r3, sb
	mov r0, r8
	subs r3, r3, r0
	cmp r3, #0
	ble _08001DF0
	ldrh r0, [r6, #0x26]
	add r0, r8
	adds r2, r0, #0
	subs r2, #0x20
	cmp r2, #0
	ble _08001DF0
	ldrh r0, [r6, #0x20]
	muls r0, r4, r0
	lsls r0, r0, #1
	ldr r1, [r6, #0x10]
	adds r1, r1, r0
	ldrh r0, [r6, #0x1e]
	lsls r0, r0, #1
	adds r4, r1, r0
	lsls r3, r3, #1
	mov sb, r3
	lsls r2, r2, #1
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r1, _08001DE8 @ =0x0000FFFF
	cmp r5, r1
	bne _08001D98
	b _08002570
_08001D98:
	ldr r1, _08001DEC @ =0x040000D4
	asrs r3, r3, #1
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r3, r0
	mov r8, r3
	asrs r2, r2, #1
	mov ip, r2
	orrs r2, r0
	mov ip, r2
_08001DAC:
	str r4, [r1]
	str r7, [r1, #4]
	mov r3, r8
	str r3, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r4, #0
	add r0, sb
	str r0, [r1]
	ldr r2, [sp, #4]
	adds r2, r2, r7
	str r2, [r1, #4]
	mov r3, ip
	str r3, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [sp, #0xc]
	adds r7, r7, r0
	ldr r3, [sp]
	ldr r0, [sp, #8]
	adds r2, r3, #0
	muls r2, r0, r2
	mov sl, r2
	add r4, sl
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r2, _08001DE8 @ =0x0000FFFF
	cmp r5, r2
	bne _08001DAC
	b _08002570
	.align 2, 0
_08001DE8: .4byte 0x0000FFFF
_08001DEC: .4byte 0x040000D4
_08001DF0:
	ldrh r0, [r6, #0x20]
	muls r0, r4, r0
	ldr r3, [sp, #8]
	muls r0, r3, r0
	ldr r1, [r6, #0x10]
	adds r1, r1, r0
	ldrh r0, [r6, #0x1e]
	muls r0, r3, r0
	adds r4, r1, r0
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _08001E48 @ =0x0000FFFF
	cmp r5, r0
	bne _08001E10
	b _08002570
_08001E10:
	ldr r1, _08001E4C @ =0x040000D4
	movs r2, #0x80
	lsls r2, r2, #0x18
	mov r8, r2
	mov sb, r0
	ldr r0, [sp]
	adds r2, r0, #0
	muls r2, r3, r2
_08001E20:
	str r4, [r1]
	str r7, [r1, #4]
	ldrh r0, [r6, #0x26]
	ldr r3, [sp, #8]
	muls r0, r3, r0
	asrs r0, r0, #1
	mov r3, r8
	orrs r0, r3
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [sp, #0xc]
	adds r7, r7, r0
	adds r4, r4, r2
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, sb
	bne _08001E20
	b _08002570
	.align 2, 0
_08001E48: .4byte 0x0000FFFF
_08001E4C: .4byte 0x040000D4
_08001E50:
	ldrh r1, [r6, #0x1e]
	str r1, [sp, #0x10]
	ldrh r2, [r6, #0x20]
	str r2, [sp, #0x14]
	movs r3, #0
	mov sl, r3
	ldrh r4, [r6, #0x26]
	cmp sl, r4
	blt _08001E64
	b _08002570
_08001E64:
	ldr r4, [sp, #0x10]
	add r4, sl
	ldrh r1, [r6, #0x14]
	adds r0, r4, #0
	bl Div
	str r0, [sp, #0x18]
	ldrh r1, [r6, #0x14]
	adds r5, r0, #0
	adds r0, r5, #0
	muls r0, r1, r0
	subs r4, r4, r0
	str r4, [sp, #0x1c]
	ldrh r0, [r6, #0x28]
	mov r8, r0
	ldrh r0, [r6, #0x26]
	mov r2, sl
	subs r0, r0, r2
	subs r1, r1, r4
	cmp r1, r0
	ble _08001E90
	adds r1, r0, #0
_08001E90:
	ldr r4, [sp, #8]
	adds r3, r1, #0
	muls r3, r4, r3
	str r3, [sp, #0x20]
	movs r5, #0
	mov sb, r5
	add r1, sl
	str r1, [sp, #0x38]
	cmp sb, r8
	bge _08001F50
_08001EA4:
	ldr r4, [sp, #0x14]
	add r4, sb
	ldrh r1, [r6, #0x16]
	adds r0, r4, #0
	bl Div
	ldrh r3, [r6, #0x16]
	adds r1, r0, #0
	muls r1, r3, r1
	subs r4, r4, r1
	subs r5, r3, r4
	ldrh r1, [r6, #0x3c]
	muls r1, r0, r1
	ldr r0, [r6, #0x38]
	adds r0, r0, r1
	ldr r1, [sp, #0x18]
	adds r0, r0, r1
	ldrb r0, [r0]
	ldrh r2, [r6, #0x14]
	muls r0, r2, r0
	adds r1, r0, #0
	muls r1, r3, r1
	adds r0, r4, #0
	muls r0, r2, r0
	ldr r2, [sp, #0x1c]
	adds r0, r0, r2
	adds r1, r1, r0
	ldr r3, [sp, #8]
	muls r1, r3, r1
	ldr r0, [r6, #0x10]
	adds r4, r0, r1
	ldrh r1, [r6, #0x24]
	ldr r0, [r6, #0xc]
	adds r0, r0, r1
	ldr r2, [sp, #0xc]
	mov r1, sb
	muls r1, r2, r1
	adds r0, r0, r1
	ldrh r3, [r6, #0x22]
	adds r0, r0, r3
	ldr r2, [sp, #8]
	mov r1, sl
	muls r1, r2, r1
	adds r7, r0, r1
	add sb, r5
	cmp r5, r8
	ble _08001F04
	mov r5, r8
_08001F04:
	mov r3, r8
	subs r3, r3, r5
	mov r8, r3
	adds r0, r5, #0
	subs r5, #1
	cmp r0, #0
	beq _08001F4A
	ldr r3, _08001F5C @ =0x040000D4
	ldr r1, [sp, #0x20]
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	str r0, [sp, #0x3c]
	movs r0, #0x80
	lsls r0, r0, #0x18
	ldr r2, [sp, #0x3c]
	orrs r2, r0
	str r2, [sp, #0x3c]
	ldr r1, [sp]
	ldr r2, [sp, #8]
	adds r0, r1, #0
	muls r0, r2, r0
	mov ip, r0
_08001F32:
	str r4, [r3]
	str r7, [r3, #4]
	ldr r0, [sp, #0x3c]
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r1, [sp, #0xc]
	adds r7, r7, r1
	add r4, ip
	adds r0, r5, #0
	subs r5, #1
	cmp r0, #0
	bne _08001F32
_08001F4A:
	ldrh r2, [r6, #0x28]
	cmp sb, r2
	blt _08001EA4
_08001F50:
	ldr r3, [sp, #0x38]
	mov sl, r3
	ldrh r4, [r6, #0x26]
	cmp sl, r4
	blt _08001E64
	b _08002570
	.align 2, 0
_08001F5C: .4byte 0x040000D4
_08001F60:
	movs r0, #0x40
	ands r0, r2
	ldrh r3, [r6, #0x30]
	ldr r1, _08002030 @ =gBgScrollRegs
	mov sb, r1
	lsls r5, r5, #2
	mov r8, r5
	cmp r0, #0
	bne _08001FAC
	adds r2, r4, #0
	lsls r0, r4, #3
	ldrh r5, [r6, #0x16]
	ldrh r7, [r6, #0x32]
	cmp r3, r0
	blt _08001F90
_08001F7E:
	lsls r1, r2, #3
	ldrh r0, [r6, #0x30]
	subs r0, r0, r1
	strh r0, [r6, #0x30]
	ldrh r1, [r6, #0x30]
	adds r2, r4, #0
	lsls r0, r4, #3
	cmp r1, r0
	bge _08001F7E
_08001F90:
	adds r2, r5, #0
	lsls r0, r2, #3
	ldrh r3, [r6, #0x30]
	cmp r7, r0
	blt _08001FAC
_08001F9A:
	lsls r1, r2, #3
	ldrh r0, [r6, #0x32]
	subs r0, r0, r1
	strh r0, [r6, #0x32]
	ldrh r1, [r6, #0x32]
	adds r2, r5, #0
	lsls r0, r2, #3
	cmp r1, r0
	bge _08001F9A
_08001FAC:
	mov r0, r8
	add r0, sb
	movs r2, #7
	ands r3, r2
	strh r3, [r0]
	mov r1, sb
	adds r1, #2
	add r1, r8
	ldrh r0, [r6, #0x32]
	ands r0, r2
	strh r0, [r1]
	ldrh r0, [r6, #0x34]
	ldrh r4, [r6, #0x30]
	lsrs r2, r4, #3
	lsrs r0, r0, #3
	cmp r0, r2
	bne _08001FDC
	ldrh r1, [r6, #0x36]
	ldrh r0, [r6, #0x32]
	lsrs r1, r1, #3
	lsrs r0, r0, #3
	cmp r1, r0
	bne _08001FDC
	b _08002570
_08001FDC:
	ldrh r1, [r6, #0x2e]
	movs r0, #0x40
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _08001FEA
	b _08002454
_08001FEA:
	ldrh r0, [r6, #0x1e]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrh r0, [r6, #0x32]
	lsrs r0, r0, #3
	ldrh r2, [r6, #0x20]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	ldrh r0, [r6, #0x24]
	ldr r4, [sp, #0xc]
	muls r0, r4, r0
	ldr r1, [r6, #0xc]
	adds r1, r1, r0
	ldrh r0, [r6, #0x22]
	ldr r5, [sp, #8]
	muls r0, r5, r0
	adds r7, r1, r0
	ldrh r0, [r6, #0x26]
	ldr r1, [sp, #0x10]
	adds r2, r1, r0
	adds r1, r2, #1
	ldrh r4, [r6, #0x14]
	mov r8, r0
	cmp r1, r4
	ble _08002034
	subs r0, r4, #1
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _08002036
	.align 2, 0
_08002030: .4byte gBgScrollRegs
_08002034:
	movs r2, #0
_08002036:
	ldrh r0, [r6, #0x28]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	bne _0800204C
	b _08002148
_0800204C:
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	beq _080020D0
	ldrh r0, [r6, #0x20]
	adds r0, r0, r5
	subs r0, #1
	muls r0, r4, r0
	ldr r3, [sp, #8]
	muls r0, r3, r0
	ldr r1, [r6, #0x10]
	adds r1, r1, r0
	ldrh r0, [r6, #0x1e]
	add r0, r8
	subs r0, #1
	muls r0, r3, r0
	adds r4, r1, r0
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r2, r2, #0x10
	mov sl, r2
	ldr r0, _080020CC @ =0x0000FFFF
	cmp r5, r0
	bne _08002080
	b _0800223C
_08002080:
	ldr r2, [sp]
	adds r1, r2, #0
	muls r1, r3, r1
	mov sb, r1
	mov ip, r0
_0800208A:
	movs r3, #0
	subs r5, #1
	ldr r0, [sp, #0xc]
	adds r2, r7, r0
	ldrh r1, [r6, #0x26]
	cmp r3, r1
	bhs _080020BC
	movs r0, #0xc0
	lsls r0, r0, #4
	mov r8, r0
_0800209E:
	lsls r0, r3, #1
	adds r1, r0, r7
	str r1, [sp, #0x3c]
	subs r0, r4, r0
	ldrh r0, [r0]
	mov r1, r8
	eors r0, r1
	ldr r1, [sp, #0x3c]
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r6, #0x26]
	cmp r3, r0
	blo _0800209E
_080020BC:
	adds r7, r2, #0
	mov r1, sb
	subs r4, r4, r1
	lsls r0, r5, #0x10
	lsrs r5, r0, #0x10
	cmp r5, ip
	bne _0800208A
	b _0800223C
	.align 2, 0
_080020CC: .4byte 0x0000FFFF
_080020D0:
	ldrh r0, [r6, #0x20]
	muls r0, r4, r0
	ldr r3, [sp, #8]
	muls r0, r3, r0
	ldr r1, [r6, #0x10]
	adds r1, r1, r0
	ldrh r0, [r6, #0x1e]
	add r0, r8
	subs r0, #1
	muls r0, r3, r0
	adds r4, r1, r0
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r2, r2, #0x10
	mov sl, r2
	ldr r0, _08002144 @ =0x0000FFFF
	cmp r5, r0
	bne _080020F8
	b _0800223C
_080020F8:
	ldr r2, [sp]
	adds r1, r2, #0
	muls r1, r3, r1
	mov sb, r1
	mov ip, r0
_08002102:
	movs r3, #0
	subs r5, #1
	ldr r0, [sp, #0xc]
	adds r2, r7, r0
	ldrh r1, [r6, #0x26]
	cmp r3, r1
	bhs _08002134
	movs r0, #0x80
	lsls r0, r0, #3
	mov r8, r0
_08002116:
	lsls r0, r3, #1
	adds r1, r0, r7
	str r1, [sp, #0x3c]
	subs r0, r4, r0
	ldrh r0, [r0]
	mov r1, r8
	eors r0, r1
	ldr r1, [sp, #0x3c]
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r6, #0x26]
	cmp r3, r0
	blo _08002116
_08002134:
	adds r7, r2, #0
	add r4, sb
	lsls r0, r5, #0x10
	lsrs r5, r0, #0x10
	cmp r5, ip
	bne _08002102
	b _0800223C
	.align 2, 0
_08002144: .4byte 0x0000FFFF
_08002148:
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	beq _080021CC
	ldr r1, [sp, #0x14]
	adds r0, r1, r5
	subs r0, #1
	muls r0, r4, r0
	ldr r3, [sp, #8]
	adds r1, r0, #0
	muls r1, r3, r1
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	ldr r4, [sp, #0x10]
	adds r1, r4, #0
	muls r1, r3, r1
	adds r4, r0, r1
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r2, r2, #0x10
	mov sl, r2
	ldr r0, _080021C8 @ =0x0000FFFF
	cmp r5, r0
	beq _0800223C
	ldr r2, [sp]
	adds r1, r2, #0
	muls r1, r3, r1
	mov sb, r1
	mov ip, r0
_08002184:
	movs r3, #0
	subs r5, #1
	ldr r0, [sp, #0xc]
	adds r2, r7, r0
	ldrh r1, [r6, #0x26]
	cmp r3, r1
	bhs _080021B6
	movs r0, #0x80
	lsls r0, r0, #4
	mov r8, r0
_08002198:
	lsls r0, r3, #1
	adds r1, r0, r7
	str r1, [sp, #0x3c]
	adds r0, r0, r4
	ldrh r0, [r0]
	mov r1, r8
	eors r0, r1
	ldr r1, [sp, #0x3c]
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r6, #0x26]
	cmp r3, r0
	blo _08002198
_080021B6:
	adds r7, r2, #0
	mov r1, sb
	subs r4, r4, r1
	lsls r0, r5, #0x10
	lsrs r5, r0, #0x10
	cmp r5, ip
	bne _08002184
	b _0800223C
	.align 2, 0
_080021C8: .4byte 0x0000FFFF
_080021CC:
	ldr r3, [sp, #0x14]
	adds r0, r3, #0
	muls r0, r4, r0
	ldr r4, [sp, #8]
	adds r1, r0, #0
	muls r1, r4, r1
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	ldr r3, [sp, #0x10]
	adds r1, r3, #0
	muls r1, r4, r1
	adds r4, r0, r1
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r2, r2, #0x10
	mov sl, r2
	ldr r0, _080022F0 @ =0x0000FFFF
	cmp r5, r0
	beq _0800223C
	ldr r2, _080022F4 @ =0x040000D4
	mov r1, sl
	asrs r0, r1, #0x10
	subs r0, #1
	mov r8, r0
	ldr r3, _080022F0 @ =0x0000FFFF
	mov ip, r3
	movs r0, #0x80
	lsls r0, r0, #0x18
	mov sb, r0
	ldr r1, [sp]
	ldr r0, [sp, #8]
	adds r3, r1, #0
	muls r3, r0, r3
_08002210:
	str r4, [r2]
	str r7, [r2, #4]
	ldrh r0, [r6, #0x26]
	mov r1, r8
	subs r0, r0, r1
	ldr r1, [sp, #8]
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	mov r1, sb
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [sp, #0xc]
	adds r7, r7, r0
	adds r4, r4, r3
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, ip
	bne _08002210
_0800223C:
	mov r1, sl
	asrs r3, r1, #0x10
	cmp r3, #0
	bne _08002246
	b _08002570
_08002246:
	ldrh r0, [r6, #0x24]
	ldr r2, [sp, #0xc]
	muls r0, r2, r0
	ldr r1, [r6, #0xc]
	adds r1, r1, r0
	ldrh r0, [r6, #0x22]
	ldrh r4, [r6, #0x14]
	adds r0, r0, r4
	ldr r5, [sp, #0x10]
	subs r0, r0, r5
	ldr r2, [sp, #8]
	muls r0, r2, r0
	adds r7, r1, r0
	ldrh r0, [r6, #0x28]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r1, [r6, #0x2e]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0800236C
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080022F8
	ldr r1, [sp, #0x14]
	adds r0, r1, r5
	subs r0, #1
	muls r0, r4, r0
	ldr r2, [sp, #8]
	muls r0, r2, r0
	ldr r1, [r6, #0x10]
	adds r1, r1, r0
	subs r0, r3, #1
	muls r0, r2, r0
	adds r4, r1, r0
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r3, _080022F0 @ =0x0000FFFF
	cmp r5, r3
	bne _080022A2
	b _08002570
_080022A2:
	ldr r1, [sp]
	adds r0, r1, #0
	muls r0, r2, r0
	mov sb, r0
	mov sl, r3
_080022AC:
	movs r3, #0
	subs r5, #1
	ldr r0, [sp, #0xc]
	adds r2, r7, r0
	ldrh r1, [r6, #0x26]
	cmp r3, r1
	bhs _080022DE
	movs r0, #0xc0
	lsls r0, r0, #4
	mov r8, r0
_080022C0:
	lsls r0, r3, #1
	adds r1, r0, r7
	mov ip, r1
	subs r0, r4, r0
	ldrh r0, [r0]
	mov r1, r8
	eors r0, r1
	mov r1, ip
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r6, #0x26]
	cmp r3, r0
	blo _080022C0
_080022DE:
	adds r7, r2, #0
	mov r1, sb
	subs r4, r4, r1
	lsls r0, r5, #0x10
	lsrs r5, r0, #0x10
	cmp r5, sl
	bne _080022AC
	b _08002570
	.align 2, 0
_080022F0: .4byte 0x0000FFFF
_080022F4: .4byte 0x040000D4
_080022F8:
	ldr r2, [sp, #0x14]
	adds r0, r2, #0
	muls r0, r4, r0
	ldr r4, [sp, #8]
	muls r0, r4, r0
	ldr r1, [r6, #0x10]
	adds r1, r1, r0
	subs r0, r3, #1
	muls r0, r4, r0
	adds r4, r1, r0
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _08002368 @ =0x0000FFFF
	cmp r5, r0
	bne _0800231A
	b _08002570
_0800231A:
	ldr r2, [sp]
	ldr r3, [sp, #8]
	adds r1, r2, #0
	muls r1, r3, r1
	mov sb, r1
	mov sl, r0
_08002326:
	movs r3, #0
	subs r5, #1
	ldr r0, [sp, #0xc]
	adds r2, r7, r0
	ldrh r1, [r6, #0x26]
	cmp r3, r1
	bhs _08002358
	movs r0, #0x80
	lsls r0, r0, #3
	mov r8, r0
_0800233A:
	lsls r0, r3, #1
	adds r1, r0, r7
	mov ip, r1
	subs r0, r4, r0
	ldrh r0, [r0]
	mov r1, r8
	eors r0, r1
	mov r1, ip
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r6, #0x26]
	cmp r3, r0
	blo _0800233A
_08002358:
	adds r7, r2, #0
	add r4, sb
	lsls r0, r5, #0x10
	lsrs r5, r0, #0x10
	cmp r5, sl
	bne _08002326
	b _08002570
	.align 2, 0
_08002368: .4byte 0x0000FFFF
_0800236C:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080023EC
	ldr r1, [sp, #0x14]
	adds r0, r1, r5
	subs r0, #1
	muls r0, r4, r0
	ldr r2, [sp, #8]
	adds r1, r0, #0
	muls r1, r2, r1
	ldr r0, [r6, #0x10]
	adds r4, r0, r1
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _080023E8 @ =0x0000FFFF
	cmp r5, r0
	bne _08002394
	b _08002570
_08002394:
	mov r1, sl
	str r1, [sp, #0x30]
	mov ip, r3
	ldr r0, [sp]
	adds r3, r0, #0
	muls r3, r2, r3
	mov sb, r3
_080023A2:
	movs r3, #0
	subs r5, #1
	ldr r1, [sp, #0xc]
	adds r2, r7, r1
	cmp r3, ip
	bge _080023D6
	movs r0, #0x80
	lsls r0, r0, #4
	mov sl, r0
	ldr r1, [sp, #0x30]
	asrs r1, r1, #0x10
	mov r8, r1
_080023BA:
	lsls r0, r3, #1
	adds r1, r0, r7
	str r1, [sp, #0x3c]
	adds r0, r0, r4
	ldrh r0, [r0]
	mov r1, sl
	eors r0, r1
	ldr r1, [sp, #0x3c]
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r8
	blt _080023BA
_080023D6:
	adds r7, r2, #0
	mov r2, sb
	subs r4, r4, r2
	lsls r0, r5, #0x10
	lsrs r5, r0, #0x10
	ldr r3, _080023E8 @ =0x0000FFFF
	cmp r5, r3
	bne _080023A2
	b _08002570
	.align 2, 0
_080023E8: .4byte 0x0000FFFF
_080023EC:
	ldr r1, [sp, #0x14]
	adds r0, r1, #0
	muls r0, r4, r0
	ldr r2, [sp, #8]
	adds r1, r0, #0
	muls r1, r2, r1
	ldr r0, [r6, #0x10]
	adds r4, r0, r1
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _0800244C @ =0x0000FFFF
	cmp r5, r0
	bne _0800240A
	b _08002570
_0800240A:
	ldr r2, _08002450 @ =0x040000D4
	ldr r1, [sp, #8]
	adds r0, r3, #0
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	mov sb, r0
	movs r0, #0x80
	lsls r0, r0, #0x18
	mov r3, sb
	orrs r3, r0
	mov sb, r3
	ldr r1, [sp]
	ldr r3, [sp, #8]
	adds r0, r1, #0
	muls r0, r3, r0
	mov r8, r0
_0800242E:
	str r4, [r2]
	str r7, [r2, #4]
	mov r0, sb
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r1, [sp, #0xc]
	adds r7, r7, r1
	add r4, r8
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r3, _0800244C @ =0x0000FFFF
	cmp r5, r3
	bne _0800242E
	b _08002570
	.align 2, 0
_0800244C: .4byte 0x0000FFFF
_08002450: .4byte 0x040000D4
_08002454:
	lsrs r0, r4, #3
	ldrh r4, [r6, #0x1e]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrh r0, [r6, #0x32]
	lsrs r0, r0, #3
	ldrh r5, [r6, #0x20]
	adds r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	movs r0, #0
	mov sl, r0
	ldrh r1, [r6, #0x26]
	cmp sl, r1
	bge _08002570
_08002478:
	ldr r4, [sp, #0x10]
	add r4, sl
	ldrh r1, [r6, #0x14]
	adds r0, r4, #0
	bl Div
	str r0, [sp, #0x24]
	ldrh r1, [r6, #0x14]
	adds r2, r0, #0
	adds r0, r2, #0
	muls r0, r1, r0
	subs r4, r4, r0
	str r4, [sp, #0x28]
	ldrh r3, [r6, #0x28]
	mov r8, r3
	ldrh r0, [r6, #0x26]
	mov r4, sl
	subs r0, r0, r4
	ldr r5, [sp, #0x28]
	subs r1, r1, r5
	cmp r1, r0
	ble _080024A6
	adds r1, r0, #0
_080024A6:
	ldr r2, [sp, #8]
	adds r0, r1, #0
	muls r0, r2, r0
	str r0, [sp, #0x2c]
	movs r3, #0
	mov sb, r3
	add r1, sl
	str r1, [sp, #0x34]
	cmp sb, r8
	bge _08002566
_080024BA:
	ldr r4, [sp, #0x14]
	add r4, sb
	ldrh r1, [r6, #0x16]
	adds r0, r4, #0
	bl Div
	ldrh r3, [r6, #0x16]
	adds r1, r0, #0
	muls r1, r3, r1
	subs r4, r4, r1
	subs r5, r3, r4
	ldrh r1, [r6, #0x3c]
	muls r1, r0, r1
	ldr r0, [r6, #0x38]
	adds r0, r0, r1
	ldr r1, [sp, #0x24]
	adds r0, r0, r1
	ldrb r0, [r0]
	ldrh r2, [r6, #0x14]
	muls r0, r2, r0
	adds r1, r0, #0
	muls r1, r3, r1
	adds r0, r4, #0
	muls r0, r2, r0
	ldr r2, [sp, #0x28]
	adds r0, r0, r2
	adds r1, r1, r0
	ldr r3, [sp, #8]
	muls r1, r3, r1
	ldr r0, [r6, #0x10]
	adds r4, r0, r1
	ldrh r1, [r6, #0x24]
	ldr r0, [r6, #0xc]
	adds r0, r0, r1
	ldr r2, [sp, #0xc]
	mov r1, sb
	muls r1, r2, r1
	adds r0, r0, r1
	ldrh r3, [r6, #0x22]
	adds r0, r0, r3
	ldr r2, [sp, #8]
	mov r1, sl
	muls r1, r2, r1
	adds r7, r0, r1
	add sb, r5
	cmp r5, r8
	ble _0800251A
	mov r5, r8
_0800251A:
	mov r3, r8
	subs r3, r3, r5
	mov r8, r3
	adds r0, r5, #0
	subs r5, #1
	cmp r0, #0
	beq _08002560
	ldr r3, _080025A0 @ =0x040000D4
	ldr r1, [sp, #0x2c]
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	str r0, [sp, #0x3c]
	movs r0, #0x80
	lsls r0, r0, #0x18
	ldr r2, [sp, #0x3c]
	orrs r2, r0
	str r2, [sp, #0x3c]
	ldr r1, [sp]
	ldr r2, [sp, #8]
	adds r0, r1, #0
	muls r0, r2, r0
	mov ip, r0
_08002548:
	str r4, [r3]
	str r7, [r3, #4]
	ldr r0, [sp, #0x3c]
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r1, [sp, #0xc]
	adds r7, r7, r1
	add r4, ip
	adds r0, r5, #0
	subs r5, #1
	cmp r0, #0
	bne _08002548
_08002560:
	ldrh r2, [r6, #0x28]
	cmp sb, r2
	blt _080024BA
_08002566:
	ldr r3, [sp, #0x34]
	mov sl, r3
	ldrh r4, [r6, #0x26]
	cmp sl, r4
	blt _08002478
_08002570:
	ldr r0, _080025A4 @ =0x04000006
	ldrh r0, [r0]
	ldrh r0, [r6, #0x30]
	strh r0, [r6, #0x34]
	ldrh r0, [r6, #0x32]
	strh r0, [r6, #0x36]
	ldr r3, _080025A8 @ =gUnknown_03002384
	ldr r4, _080025AC @ =gUnknown_0300211C
_8002580: @ 0x08002580
	ldrb r0, [r3]
	ldrb r5, [r4]
	cmp r0, r5
	beq _0800258C
	bl _08001AC8
_0800258C:
	movs r0, #1
sub_800258E:
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080025A0: .4byte 0x040000D4
_080025A4: .4byte 0x04000006
_080025A8: .4byte gUnknown_03002384
_080025AC: .4byte gUnknown_0300211C

	thumb_func_start UpdateBgAnimationTiles
UpdateBgAnimationTiles: @ 0x080025B0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x1c]
	ldr r1, _0800260C @ =gTilemapsRef
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r3, [r0]
	ldrb r0, [r3, #6]
	cmp r0, #0
	beq _08002648
	adds r2, r4, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	adds r0, #1
	movs r6, #0
	strb r0, [r2]
	movs r5, #0xff
	ldrb r1, [r3, #7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	bhi _08002648
	strb r6, [r2]
	subs r2, #1
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldrb r1, [r3, #6]
	ands r0, r5
	cmp r1, r0
	bhi _080025F2
	strb r6, [r2]
_080025F2:
	ldrh r5, [r3, #4]
	ldrh r1, [r4, #0x2e]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08002622
	ldrb r0, [r2]
	cmp r0, #0
	bne _08002610
	ldr r0, [r3, #8]
	b _0800262E
	.align 2, 0
_0800260C: .4byte gTilemapsRef
_08002610:
	ldr r1, [r3, #8]
	ldr r0, [r3, #0xc]
	adds r1, r1, r0
	ldrb r0, [r2]
	subs r0, #1
	muls r0, r5, r0
	adds r1, r1, r0
	str r1, [r4]
	b _08002630
_08002622:
	ldr r0, [r4, #4]
	ldr r1, [r3, #0xc]
	adds r0, r0, r1
	ldrb r1, [r2]
	muls r1, r5, r1
	adds r0, r0, r1
_0800262E:
	str r0, [r4]
_08002630:
	strh r5, [r4, #8]
	ldr r1, _08002650 @ =gVramGraphicsCopyQueue
	ldr r2, _08002654 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	str r4, [r0]
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r2]
_08002648:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08002650: .4byte gVramGraphicsCopyQueue
_08002654: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start sub_8002658
sub_8002658: @ 0x08002658
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r2, r0
	cmp r2, #0
	beq _0800266C
	movs r0, #0
	b _08002772
_0800266C:
	adds r3, r4, #0
	adds r3, #0x21
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r1, [r3]
	adds r6, r0, #0
	ldrb r0, [r6]
	cmp r1, r0
	bne _08002686
	ldrh r0, [r4, #0x1e]
	ldrh r1, [r4, #0xa]
	cmp r0, r1
	beq _0800269C
_08002686:
	strh r2, [r4, #8]
	ldrb r0, [r6]
	strb r0, [r3]
	ldrh r0, [r4, #0xa]
	strh r0, [r4, #0x1e]
	strh r2, [r4, #0x14]
	strh r2, [r4, #0x1c]
	ldr r0, [r4, #0x10]
	ldr r1, _080026B4 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r4, #0x10]
_0800269C:
	ldrh r1, [r4, #0x1c]
	movs r2, #0x1c
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble _080026B8
	adds r0, r4, #0
	adds r0, #0x22
	ldrb r0, [r0]
	lsls r0, r0, #4
	subs r0, r1, r0
	strh r0, [r4, #0x1c]
	b _08002770
	.align 2, 0
_080026B4: .4byte 0xFFFFBFFF
_080026B8:
	ldr r0, _0800275C @ =gUnknown_03002034
	ldr r1, [r0]
	ldrh r0, [r4, #0xa]
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r5, [r0]
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #2
	adds r3, r5, r0
	ldr r0, [r3]
	cmp r0, #0
	bge _08002722
	ldr r7, _08002760 @ =animCmdTable_BG
_080026DC:
	mvns r0, r0
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r2, [r0]
	adds r0, r3, #0
	adds r1, r4, #0
	bl _call_via_r2
	adds r1, r0, #0
	cmp r1, #1
	beq _08002716
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08002764
	ldr r0, _0800275C @ =gUnknown_03002034
	ldr r1, [r0]
	ldrh r0, [r4, #0xa]
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0
	strh r0, [r4, #0x14]
	adds r5, r1, #0
_08002716:
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #2
	adds r3, r5, r0
	ldr r0, [r3]
	cmp r0, #0
	blt _080026DC
_08002722:
	ldr r0, [r3]
	lsls r0, r0, #8
	ldrh r1, [r4, #0x1c]
	adds r0, r0, r1
	strh r0, [r4, #0x1c]
	adds r1, r4, #0
	adds r1, #0x22
	ldrb r1, [r1]
	lsls r1, r1, #4
	subs r0, r0, r1
	strh r0, [r4, #0x1c]
	ldr r2, [r3, #4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _08002768
	ldr r0, _0800275C @ =gUnknown_03002034
	ldr r1, [r0]
	ldrh r0, [r4, #0xa]
	ldr r1, [r1, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	ldr r0, [r0]
	adds r0, r0, r1
	str r0, [r4, #0xc]
	b _0800276A
	.align 2, 0
_0800275C: .4byte gUnknown_03002034
_08002760: .4byte animCmdTable_BG
_08002764:
	adds r0, r1, #0
	b _08002772
_08002768:
	str r2, [r4, #0xc]
_0800276A:
	ldrh r0, [r4, #0x14]
	adds r0, #2
	strh r0, [r4, #0x14]
_08002770:
	movs r0, #1
_08002772:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start animCmd_GetTiles_BG
animCmd_GetTiles_BG: @ 0x08002778
	adds r2, r0, #0
	adds r3, r1, #0
	ldrh r0, [r3, #0x14]
	adds r0, #3
	strh r0, [r3, #0x14]
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	bne _080027D4
	ldr r1, [r2, #4]
	cmp r1, #0
	bge _080027AC
	ldr r0, _080027A8 @ =gUnknown_03002034
	ldr r0, [r0]
	lsls r1, r1, #6
	ldr r0, [r0, #0x14]
	adds r0, r0, r1
	str r0, [r3]
	ldr r0, [r2, #8]
	lsls r0, r0, #6
	b _080027BC
	.align 2, 0
_080027A8: .4byte gUnknown_03002034
_080027AC:
	ldr r0, _080027D8 @ =gUnknown_03002034
	ldr r0, [r0]
	lsls r1, r1, #5
	ldr r0, [r0, #0x10]
	adds r0, r0, r1
	str r0, [r3]
	ldr r0, [r2, #8]
	lsls r0, r0, #5
_080027BC:
	strh r0, [r3, #8]
	ldr r1, _080027DC @ =gVramGraphicsCopyQueue
	ldr r2, _080027E0 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	str r3, [r0]
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r2]
_080027D4:
	movs r0, #1
	bx lr
	.align 2, 0
_080027D8: .4byte gUnknown_03002034
_080027DC: .4byte gVramGraphicsCopyQueue
_080027E0: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start animCmd_AddHitbox_BG
animCmd_AddHitbox_BG: @ 0x080027E4
	push {r4, lr}
	adds r4, r1, #0
	ldr r3, [r0, #4]
	movs r1, #0xf
	ands r3, r1
	ldrh r1, [r4, #0x14]
	adds r1, #3
	strh r1, [r4, #0x14]
	ldr r2, _08002820 @ =0x040000D4
	adds r1, r0, #4
	str r1, [r2]
	lsls r3, r3, #3
	adds r1, r3, #0
	adds r1, #0x28
	adds r1, r4, r1
	str r1, [r2, #4]
	ldr r1, _08002824 @ =0x84000002
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _08002828
	adds r0, r4, #0
	adds r0, #0x28
	adds r0, r0, r3
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0]
	b _0800287E
	.align 2, 0
_08002820: .4byte 0x040000D4
_08002824: .4byte 0x84000002
_08002828:
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08002856
	adds r2, r4, r3
	movs r0, #0x2d
	adds r0, r0, r2
	mov ip, r0
	adds r2, #0x2f
	ldrb r1, [r0]
	ldrb r0, [r2]
	eors r1, r0
	mov r0, ip
	strb r1, [r0]
	ldrb r0, [r2]
	eors r0, r1
	strb r0, [r2]
	mov r2, ip
	ldrb r1, [r2]
	eors r0, r1
	strb r0, [r2]
_08002856:
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0800287E
	adds r2, r4, r3
	adds r3, r2, #0
	adds r3, #0x2c
	adds r2, #0x2e
	ldrb r1, [r3]
	ldrb r0, [r2]
	eors r1, r0
	strb r1, [r3]
	ldrb r0, [r2]
	eors r0, r1
	strb r0, [r2]
	ldrb r1, [r3]
	eors r0, r1
	strb r0, [r3]
_0800287E:
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8002888
sub_8002888: @ 0x08002888
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r2, _08002908 @ =gUnknown_030045B0
	ldr r1, _0800290C @ =gUnknown_03004C30
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	str r6, [r0]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, [r6, #0xc]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800294A
	mov r8, r1
	ldr r0, [r6, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #9
	ands r0, r1
	lsrs r7, r0, #0xf
	cmp r7, #1
	bls _08002918
	ldr r0, _08002910 @ =gDispCnt
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08002918
	mov r1, r8
	movs r2, #8
	ldrsh r0, [r1, r2]
	movs r2, #0x16
	ldrsh r1, [r6, r2]
	subs r0, r0, r1
	movs r1, #0x10
	bl Mod
	ldr r5, _08002914 @ =gBgAffineRegs
	subs r4, r7, #2
	lsls r4, r4, #4
	adds r1, r5, #0
	adds r1, #8
	adds r1, r4, r1
	lsls r0, r0, #8
	str r0, [r1]
	mov r1, r8
	movs r2, #0xa
	ldrsh r0, [r1, r2]
	movs r2, #0x18
	ldrsh r1, [r6, r2]
	subs r0, r0, r1
	movs r1, #8
	bl Mod
	adds r5, #0xc
	adds r4, r4, r5
	lsls r0, r0, #8
	str r0, [r4]
	b _0800294A
	.align 2, 0
_08002908: .4byte gUnknown_030045B0
_0800290C: .4byte gUnknown_03004C30
_08002910: .4byte gDispCnt
_08002914: .4byte gBgAffineRegs
_08002918:
	mov r1, r8
	movs r2, #8
	ldrsh r0, [r1, r2]
	movs r2, #0x16
	ldrsh r1, [r6, r2]
	subs r0, r0, r1
	movs r1, #0x10
	bl Mod
	ldr r4, _08002954 @ =gBgScrollRegs
	lsls r5, r7, #2
	adds r1, r5, r4
	strh r0, [r1]
	mov r1, r8
	movs r2, #0xa
	ldrsh r0, [r1, r2]
	movs r2, #0x18
	ldrsh r1, [r6, r2]
	subs r0, r0, r1
	movs r1, #8
	bl Mod
	adds r4, #2
	adds r5, r5, r4
	strh r0, [r5]
_0800294A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002954: .4byte gBgScrollRegs

	thumb_func_start sub_8002958
sub_8002958: @ 0x08002958
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	movs r0, #5
	str r0, [sp, #0x28]
	ldr r0, _08002978 @ =0x04000004
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0800297C
	movs r0, #0
	b _08002E3E
	.align 2, 0
_08002978: .4byte 0x04000004
_0800297C:
	ldr r0, _08002B18 @ =gUnknown_03004C30
	ldrb r1, [r0]
	cmp r1, #0
	bne _08002986
	b _08002E3C
_08002986:
	movs r5, #0
	cmp r5, r1
	blo _0800298E
	b _08002E36
_0800298E:
	lsls r0, r5, #2
	ldr r1, _08002B1C @ =gUnknown_030045B0
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0xc]
	ldr r1, [r0, #0xc]
	movs r0, #1
	rsbs r0, r0, #0
	adds r2, r5, #1
	str r2, [sp, #0x3c]
	cmp r1, r0
	bne _080029A8
	b _08002E26
_080029A8:
	mov sl, r1
	ldr r3, [sp, #0xc]
	ldr r0, [r3, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #9
	ands r0, r1
	lsrs r3, r0, #0xf
	lsls r0, r3, #1
	ldr r4, _08002B20 @ =gBgCntRegs
	adds r0, r0, r4
	ldrh r2, [r0]
	movs r0, #0xc
	ands r0, r2
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [sp, #0x14]
	movs r0, #0xf8
	lsls r0, r0, #5
	ands r0, r2
	lsls r0, r0, #3
	adds r0, r0, r1
	str r0, [sp, #0x18]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _080029E4
	movs r6, #6
	str r6, [sp, #0x28]
_080029E4:
	cmp r3, #1
	bhi _080029EA
	b _08002BA0
_080029EA:
	ldr r7, _08002B24 @ =gDispCnt
	ldrh r1, [r7]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080029F8
	b _08002BA0
_080029F8:
	lsrs r1, r2, #0xe
	movs r0, #0x80
	lsls r0, r0, #0xd
	lsls r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, _08002B28 @ =gUnknown_03002034
	ldr r1, [r0]
	ldr r2, [sp, #0xc]
	ldrh r0, [r2, #0xa]
	ldr r1, [r1, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x1c]
	mov r3, sl
	ldrb r1, [r3, #1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r4, [sp, #0x1c]
	adds r4, r4, r0
	str r4, [sp, #0x1c]
	movs r5, #0
	str r5, [sp, #8]
	ldrh r6, [r3, #2]
	cmp r5, r6
	blo _08002A32
	b _08002E26
_08002A32:
	mov sb, sp
	ldr r7, [sp, #0x10]
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x30]
_08002A3C:
	ldr r0, [sp, #0x1c]
	ldr r1, _08002B2C @ =0x040000D4
	str r0, [r1]
	mov r2, sp
	str r2, [r1, #4]
	ldr r0, _08002B30 @ =0x80000003
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r3, [sp, #0x1c]
	adds r3, #6
	str r3, [sp, #0x1c]
	mov r4, sb
	ldrh r3, [r4]
	movs r1, #0xc0
	lsls r1, r1, #8
	ands r1, r3
	lsrs r1, r1, #0xc
	ldrh r2, [r4, #2]
	movs r0, #0xc0
	lsls r0, r0, #8
	ands r0, r2
	lsrs r0, r0, #0xe
	orrs r1, r0
	lsls r1, r1, #1
	ldr r5, _08002B34 @ =gOamShapesSizes
	adds r0, r1, r5
	ldrb r0, [r0]
	lsrs r0, r0, #3
	str r0, [sp, #0x20]
	ldr r6, _08002B38 @ =gOamShapesSizes+1
	adds r1, r1, r6
	ldrb r0, [r1]
	lsrs r0, r0, #3
	mov ip, r0
	mov r4, ip
	ldr r7, [sp, #0xc]
	movs r0, #0x18
	ldrsh r1, [r7, r0]
	mov r2, sl
	movs r5, #0xa
	ldrsh r0, [r2, r5]
	subs r5, r1, r0
	movs r6, #0x16
	ldrsh r1, [r7, r6]
	movs r7, #8
	ldrsh r0, [r2, r7]
	subs r1, r1, r0
	mov r8, r1
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r1, r0
	mov r8, r1
	movs r0, #0xff
	ands r0, r3
	adds r0, r5, r0
	asrs r0, r0, #3
	ldr r2, [sp, #0x10]
	muls r0, r2, r0
	ldr r3, [sp, #0x18]
	adds r7, r3, r0
	ldr r5, [sp, #0xc]
	ldr r1, [r5, #4]
	ldr r6, [sp, #0x14]
	subs r1, r1, r6
	ldr r0, [sp, #0x28]
	lsrs r1, r0
	mov r3, sb
	ldrh r2, [r3, #4]
	ldr r0, _08002B3C @ =0x000003FF
	ands r0, r2
	adds r5, r1, r0
	movs r6, #0xff
	ands r5, r6
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	ldr r0, [sp, #8]
	adds r0, #1
	str r0, [sp, #0x40]
	cmp r4, #0
	beq _08002B8C
	ldr r1, [sp, #0x30]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x34]
_08002AE8:
	mov r2, sb
	ldrh r0, [r2, #2]
	ldr r1, _08002B40 @ =0x000001FF
	ands r1, r0
	add r1, r8
	asrs r1, r1, #3
	adds r2, r7, r1
	ldr r0, [sp, #0x20]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	mov r6, ip
	subs r6, #1
	ldr r4, [sp, #0x20]
	cmp r4, #0
	beq _08002B66
	movs r4, #1
_08002B0A:
	adds r0, r2, #0
	ands r0, r4
	cmp r0, #0
	bne _08002B44
	str r5, [sp, #0x24]
	b _08002B52
	.align 2, 0
_08002B18: .4byte gUnknown_03004C30
_08002B1C: .4byte gUnknown_030045B0
_08002B20: .4byte gBgCntRegs
_08002B24: .4byte gDispCnt
_08002B28: .4byte gUnknown_03002034
_08002B2C: .4byte 0x040000D4
_08002B30: .4byte 0x80000003
_08002B34: .4byte gOamShapesSizes
_08002B38: .4byte gOamShapesSizes+1
_08002B3C: .4byte 0x000003FF
_08002B40: .4byte 0x000001FF
_08002B44:
	lsls r0, r5, #8
	ldr r1, [sp, #0x24]
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x24]
	strh r0, [r2]
_08002B52:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r2, #1
	adds r1, r3, #0
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r1, #0
	bne _08002B0A
_08002B66:
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08002B7C
	ldrh r1, [r2]
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r1
	ldr r1, [sp, #0x24]
	orrs r0, r1
	strh r0, [r2]
_08002B7C:
	ldr r2, [sp, #0x34]
	adds r7, r7, r2
	mov r1, ip
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	cmp r1, #0
	bne _08002AE8
_08002B8C:
	ldr r3, [sp, #0x40]
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	mov r4, sl
	ldrh r4, [r4, #2]
	cmp r0, r4
	bhs _08002B9E
	b _08002A3C
_08002B9E:
	b _08002E26
_08002BA0:
	movs r6, #0x20
	str r6, [sp, #0x10]
	lsls r0, r3, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	lsrs r1, r0, #0xe
	subs r0, r1, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08002BBA
	movs r7, #0x40
	str r7, [sp, #0x10]
_08002BBA:
	ldr r0, _08002C88 @ =gUnknown_03002034
	ldr r1, [r0]
	ldr r2, [sp, #0xc]
	ldrh r0, [r2, #0xa]
	ldr r1, [r1, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x1c]
	mov r3, sl
	ldrb r1, [r3, #1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r4, [sp, #0x1c]
	adds r4, r4, r0
	str r4, [sp, #0x1c]
	movs r6, #0
	str r6, [sp, #8]
	adds r5, #1
	str r5, [sp, #0x3c]
	ldrh r7, [r3, #2]
	cmp r6, r7
	blo _08002BEC
	b _08002E26
_08002BEC:
	mov sb, sp
_08002BEE:
	ldr r0, [sp, #0x1c]
	ldr r1, _08002C8C @ =0x040000D4
	str r0, [r1]
	mov r2, sp
	str r2, [r1, #4]
	ldr r0, _08002C90 @ =0x80000003
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r3, [sp, #0x1c]
	adds r3, #6
	str r3, [sp, #0x1c]
	mov r4, sb
	ldrh r2, [r4]
	movs r1, #0xc0
	lsls r1, r1, #8
	ands r1, r2
	lsrs r1, r1, #0xc
	ldrh r3, [r4, #2]
	movs r0, #0xc0
	lsls r0, r0, #8
	ands r0, r3
	lsrs r0, r0, #0xe
	orrs r1, r0
	lsls r1, r1, #1
	ldr r5, _08002C94 @ =gOamShapesSizes
	adds r0, r1, r5
	ldrb r0, [r0]
	lsrs r0, r0, #3
	str r0, [sp, #0x20]
	ldr r6, _08002C98 @ =gOamShapesSizes+1
	adds r1, r1, r6
	ldrb r0, [r1]
	lsrs r0, r0, #3
	mov ip, r0
	ldr r4, _08002C9C @ =0x000001FF
	ands r4, r3
	movs r6, #0xff
	ands r6, r2
	ldr r0, [sp, #0xc]
	adds r0, #0x25
	ldrb r0, [r0]
	lsls r0, r0, #0xc
	mov r7, sb
	ldrh r7, [r7, #4]
	adds r0, r0, r7
	mov r1, sb
	strh r0, [r1, #4]
	ldr r2, [sp, #0xc]
	ldr r1, [r2, #0x10]
	lsrs r1, r1, #0xb
	mov r5, sl
	ldrb r0, [r5]
	lsrs r0, r0, #1
	eors r0, r1
	movs r7, #1
	ands r0, r7
	cmp r0, #0
	beq _08002CBE
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r1, #0
	eors r0, r3
	mov r2, sb
	strh r0, [r2, #2]
	ldrb r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08002CA0
	ldr r3, [sp, #0xc]
	movs r5, #0x18
	ldrsh r0, [r3, r5]
	mov r7, sl
	movs r2, #0xa
	ldrsh r1, [r7, r2]
	b _08002CB0
	.align 2, 0
_08002C88: .4byte gUnknown_03002034
_08002C8C: .4byte 0x040000D4
_08002C90: .4byte 0x80000003
_08002C94: .4byte gOamShapesSizes
_08002C98: .4byte gOamShapesSizes+1
_08002C9C: .4byte 0x000001FF
_08002CA0:
	ldr r3, [sp, #0xc]
	movs r5, #0x18
	ldrsh r0, [r3, r5]
	mov r7, sl
	ldrh r1, [r7, #6]
	movs r3, #0xa
	ldrsh r2, [r7, r3]
	subs r1, r1, r2
_08002CB0:
	adds r0, r0, r1
	adds r5, r0, #0
	subs r5, #8
	lsls r0, r6, #0x10
	rsbs r0, r0, #0
	lsrs r6, r0, #0x10
	b _08002CCC
_08002CBE:
	ldr r5, [sp, #0xc]
	movs r7, #0x18
	ldrsh r1, [r5, r7]
	mov r2, sl
	movs r3, #0xa
	ldrsh r0, [r2, r3]
	subs r5, r1, r0
_08002CCC:
	ldr r7, [sp, #0xc]
	ldr r0, [r7, #0x10]
	lsrs r0, r0, #0xa
	movs r3, #1
	ands r0, r3
	mov r1, sl
	ldrb r2, [r1]
	adds r1, r3, #0
	ands r1, r2
	cmp r0, r1
	beq _08002D28
	mov r2, sb
	ldrh r0, [r2, #2]
	movs r7, #0x80
	lsls r7, r7, #5
	adds r1, r7, #0
	eors r0, r1
	strh r0, [r2, #2]
	mov r0, sl
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08002D0A
	ldr r1, [sp, #0xc]
	movs r2, #0x16
	ldrsh r0, [r1, r2]
	mov r3, sl
	movs r7, #8
	ldrsh r1, [r3, r7]
	b _08002D1A
_08002D0A:
	ldr r1, [sp, #0xc]
	movs r2, #0x16
	ldrsh r0, [r1, r2]
	mov r3, sl
	ldrh r1, [r3, #4]
	movs r7, #8
	ldrsh r2, [r3, r7]
	subs r1, r1, r2
_08002D1A:
	adds r0, r0, r1
	subs r0, #8
	mov r8, r0
	lsls r0, r4, #0x10
	rsbs r0, r0, #0
	lsrs r4, r0, #0x10
	b _08002D38
_08002D28:
	ldr r0, [sp, #0xc]
	movs r2, #0x16
	ldrsh r1, [r0, r2]
	mov r3, sl
	movs r7, #8
	ldrsh r0, [r3, r7]
	subs r1, r1, r0
	mov r8, r1
_08002D38:
	movs r0, #0x10
	rsbs r0, r0, #0
	mov r1, r8
	ands r1, r0
	mov r8, r1
	adds r0, #8
	ands r5, r0
	mov r2, sb
	ldrh r1, [r2, #2]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	movs r3, #2
	str r3, [sp, #0x2c]
	cmp r0, #0
	beq _08002D5C
	movs r7, #0xfe
	str r7, [sp, #0x2c]
_08002D5C:
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	beq _08002D6E
	ldr r1, [sp, #0x10]
	lsls r0, r1, #0x19
	rsbs r0, r0, #0
	b _08002D72
_08002D6E:
	ldr r2, [sp, #0x10]
	lsls r0, r2, #0x19
_08002D72:
	lsrs r0, r0, #0x18
	str r0, [sp, #0x30]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	adds r0, r5, r0
	asrs r0, r0, #2
	ldr r3, [sp, #0x10]
	muls r0, r3, r0
	ldr r5, [sp, #0x18]
	adds r7, r5, r0
	ldr r6, [sp, #0xc]
	ldr r1, [r6, #4]
	ldr r0, [sp, #0x14]
	subs r1, r1, r0
	ldr r2, [sp, #0x28]
	lsrs r1, r2
	mov r3, sb
	ldrh r2, [r3, #4]
	ldr r0, _08002E50 @ =0x0000F3FF
	ands r0, r2
	adds r1, r1, r0
	ldrh r2, [r3, #2]
	movs r0, #0xc0
	lsls r0, r0, #6
	ands r0, r2
	lsrs r0, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	mov r1, ip
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	ldr r6, [sp, #8]
	adds r6, #1
	str r6, [sp, #0x40]
	cmp r1, #0
	beq _08002E14
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	add r0, r8
	asrs r0, r0, #2
	str r0, [sp, #0x38]
	ldr r1, [sp, #0x30]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	mov r8, r0
_08002DD2:
	ldr r3, [sp, #0x38]
	adds r2, r7, r3
	ldr r0, [sp, #0x20]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	mov r6, ip
	subs r6, #1
	ldr r4, [sp, #0x20]
	cmp r4, #0
	beq _08002E06
	ldr r1, [sp, #0x2c]
	lsls r0, r1, #0x18
	asrs r4, r0, #0x18
_08002DEE:
	adds r1, r5, #0
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	strh r1, [r2]
	adds r2, r2, r4
	adds r1, r3, #0
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r1, #0
	bne _08002DEE
_08002E06:
	add r7, r8
	mov r1, ip
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	cmp r1, #0
	bne _08002DD2
_08002E14:
	ldr r2, [sp, #0x40]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	mov r3, sl
	ldrh r3, [r3, #2]
	cmp r0, r3
	bhs _08002E26
	b _08002BEE
_08002E26:
	ldr r4, [sp, #0x3c]
	lsls r0, r4, #0x18
	lsrs r5, r0, #0x18
	ldr r6, _08002E54 @ =gUnknown_03004C30
	ldrb r6, [r6]
	cmp r5, r6
	bhs _08002E36
	b _0800298E
_08002E36:
	movs r0, #0
	ldr r7, _08002E54 @ =gUnknown_03004C30
	strb r0, [r7]
_08002E3C:
	movs r0, #1
_08002E3E:
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08002E50: .4byte 0x0000F3FF
_08002E54: .4byte gUnknown_03004C30

	thumb_func_start sub_8002E58
sub_8002E58: @ 0x08002E58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	mov sb, r1
	adds r5, r2, #0
	ldr r0, [sp, #0x2c]
	ldr r6, [sp, #0x30]
	ldr r1, [sp, #0x34]
	mov r8, r1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r2, r8
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	movs r7, #0x80
	lsls r7, r7, #9
	mov r3, sb
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	mov sb, r3
	adds r0, r7, #0
	mov r1, sb
	bl Div
	ldr r1, _08002F80 @ =gSineTable
	mov sl, r1
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r4, r2
	lsls r1, r1, #1
	add r1, sl
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	str r1, [sp, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	ldr r3, [sp, #0x38]
	strh r0, [r3]
	adds r0, r7, #0
	mov r1, sb
	bl Div
	lsls r4, r4, #1
	add r4, sl
	ldrh r1, [r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	ldr r1, [sp, #0x38]
	strh r0, [r1, #2]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r0, r7, #0
	adds r1, r5, #0
	bl Div
	movs r2, #0
	ldrsh r1, [r4, r2]
	rsbs r1, r1, #0
	asrs r1, r1, #6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	ldr r3, [sp, #0x38]
	strh r0, [r3, #4]
	adds r0, r7, #0
	adds r1, r5, #0
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #8]
	muls r0, r1, r0
	asrs r0, r0, #8
	ldr r2, [sp, #0x38]
	strh r0, [r2, #6]
	lsls r6, r6, #0x10
	rsbs r6, r6, #0
	mov r3, r8
	lsls r3, r3, #0x10
	rsbs r3, r3, #0
	mov r8, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	asrs r6, r6, #0x10
	adds r1, r0, #0
	muls r1, r6, r1
	movs r3, #2
	ldrsh r0, [r2, r3]
	mov r2, r8
	asrs r2, r2, #0x10
	mov r8, r2
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	adds r1, r1, r0
	ldr r0, [sp]
	lsls r3, r0, #0x10
	asrs r3, r3, #8
	adds r1, r1, r3
	ldr r2, [sp, #0x38]
	str r1, [r2, #8]
	movs r3, #4
	ldrsh r0, [r2, r3]
	adds r1, r0, #0
	muls r1, r6, r1
	movs r3, #6
	ldrsh r0, [r2, r3]
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r1, r0
	ldr r3, [sp, #4]
	lsls r0, r3, #0x10
	asrs r0, r0, #8
	adds r1, r1, r0
	ldr r0, [sp, #0x38]
	str r1, [r0, #0xc]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002F80: .4byte gSineTable

	thumb_func_start sub_8002F84
sub_8002F84: @ 0x08002F84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	movs r0, #0
	mov r8, r0
	mov r1, sp
	str r1, [sp, #0x10]
_08002F98:
	mov r2, r8
	lsls r0, r2, #2
	ldr r1, _08003050 @ =gUnknown_03001B40
	adds r1, #1
	adds r4, r0, r1
	ldr r6, _08003054 @ =gUnknown_03001B40+3
	adds r6, r0, r6
	str r6, [sp, #0xc]
	ldrb r1, [r4]
	ldrb r2, [r6]
	mov ip, r2
	mov sl, r0
	cmp r1, ip
	bne _08002FCA
	ldr r0, _08003050 @ =gUnknown_03001B40
	add r0, sl
	ldr r1, _08003058 @ =gUnknown_03001B40+
	add r1, sl
	ldrb r0, [r0]
	mov r7, r8
	adds r7, #1
	ldrb r1, [r1]
	cmp r0, r1
	bne _08002FCA
	b _080031B6
_08002FCA:
	ldr r2, _0800305C @ =gBgCntRegs
	mov r6, r8
	lsls r3, r6, #1
	adds r0, r3, r2
	ldrh r6, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r0, #0xf8
	lsls r0, r0, #5
	ands r0, r6
	lsls r0, r0, #3
	adds r5, r0, r1
	ldrb r4, [r4]
	ldr r0, _08003050 @ =gUnknown_03001B40
	add r0, sl
	ldrb r0, [r0]
	str r0, [sp, #8]
	adds r7, r2, #0
	adds r2, r3, #0
	mov r0, r8
	cmp r0, #1
	bls _080030DC
	ldr r0, _08003060 @ =gDispCnt
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080030DC
	ldr r1, [sp, #8]
	adds r5, r5, r1
	lsrs r2, r6, #0xe
	movs r0, #0x80
	lsls r0, r0, #0xd
	lsls r0, r2
	lsrs r3, r0, #0x10
	mov r2, ip
	cmp r2, #0xff
	bne _0800306C
	ldr r0, _08003064 @ =gUnknown_03004620
	add r0, r8
	ldrb r1, [r0]
	lsls r0, r1, #8
	orrs r1, r0
	adds r0, r4, #0
	muls r0, r3, r0
	adds r0, r5, r0
	ldr r6, [sp, #0x10]
	strh r1, [r6]
	mov r1, sp
	ldr r2, _08003068 @ =0x040000D4
	str r1, [r2]
	str r0, [r2, #4]
	ldr r6, [sp, #0xc]
	ldrb r0, [r6]
	subs r0, r0, r4
	muls r0, r3, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x81
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	add r2, sp, #4
	mov sb, r2
	b _08003134
	.align 2, 0
_08003050: .4byte gUnknown_03001B40
_08003054: .4byte gUnknown_03001B40+3
_08003058: .4byte gUnknown_03001B40+2
_0800305C: .4byte gBgCntRegs
_08003060: .4byte gDispCnt
_08003064: .4byte gUnknown_03004620
_08003068: .4byte 0x040000D4
_0800306C:
	add r6, sp, #4
	mov sb, r6
	mov r7, r8
	adds r7, #1
	cmp r4, ip
	bls _0800307A
	b _080031A0
_0800307A:
	ldr r0, _080030D0 @ =gUnknown_03004620
	add r0, r8
	mov ip, r0
	ldr r2, _080030D4 @ =0x040000D4
	ldr r1, _080030D8 @ =gUnknown_03001B40
	add r1, sl
	mov r8, r1
	ldr r6, [sp, #0xc]
	str r6, [sp, #0x14]
_0800308C:
	mov r0, ip
	ldrb r1, [r0]
	lsls r0, r1, #8
	orrs r1, r0
	adds r0, r4, #0
	muls r0, r3, r0
	adds r0, r5, r0
	ldr r6, [sp, #0x10]
	strh r1, [r6]
	mov r1, sp
	str r1, [r2]
	str r0, [r2, #4]
	mov r6, r8
	ldrb r0, [r6]
	ldr r1, [sp, #8]
	subs r0, r0, r1
	adds r0, #1
	asrs r1, r0, #1
	lsrs r0, r0, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	movs r6, #0x81
	lsls r6, r6, #0x18
	orrs r1, r6
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [sp, #0x14]
	ldrb r0, [r0]
	cmp r4, r0
	bls _0800308C
	b _080031A0
	.align 2, 0
_080030D0: .4byte gUnknown_03004620
_080030D4: .4byte 0x040000D4
_080030D8: .4byte gUnknown_03001B40+2
_080030DC:
	ldr r1, [sp, #8]
	lsls r0, r1, #1
	adds r5, r5, r0
	movs r3, #0x20
	adds r0, r2, r7
	ldrh r0, [r0]
	lsrs r2, r0, #0xe
	subs r0, r2, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080030F6
	movs r3, #0x40
_080030F6:
	ldr r1, _0800313C @ =gUnknown_03001B40+2
	add r1, sl
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _0800314C
	ldr r0, _08003140 @ =gUnknown_03004620
	add r0, r8
	ldrb r1, [r0]
	lsls r0, r3, #1
	muls r0, r4, r0
	adds r0, r5, r0
	ldr r2, [sp, #0x10]
	strh r1, [r2]
	mov r6, sp
	ldr r1, _08003144 @ =0x040000D4
	str r6, [r1]
	str r0, [r1, #4]
	ldr r0, _08003148 @ =gUnknown_03001B40+3
	add r0, sl
	ldrb r0, [r0]
	subs r0, r0, r4
	muls r0, r3, r0
	lsls r0, r0, #1
	asrs r0, r0, #1
	movs r2, #0x81
	lsls r2, r2, #0x18
	orrs r0, r2
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add r6, sp, #4
	mov sb, r6
_08003134:
	mov r7, r8
	adds r7, #1
	b _080031A0
	.align 2, 0
_0800313C: .4byte gUnknown_03001B40+2
_08003140: .4byte gUnknown_03004620
_08003144: .4byte 0x040000D4
_08003148: .4byte gUnknown_03001B40+3
_0800314C:
	ldr r0, _080031D4 @ =gUnknown_03001B40+3
	add r0, sl
	add r2, sp, #4
	mov sb, r2
	mov r7, r8
	adds r7, #1
	ldrb r6, [r0]
	cmp r4, r6
	bhi _080031A0
	ldr r2, _080031D8 @ =gUnknown_03004620
	add r8, r2
	ldr r2, _080031DC @ =0x040000D4
	mov ip, r1
	str r0, [sp, #0x14]
	lsls r3, r3, #1
_0800316A:
	mov r6, r8
	ldrb r1, [r6]
	adds r0, r4, #0
	muls r0, r3, r0
	adds r0, r5, r0
	ldr r6, [sp, #0x10]
	strh r1, [r6]
	mov r1, sp
	str r1, [r2]
	str r0, [r2, #4]
	mov r6, ip
	ldrb r0, [r6]
	ldr r1, [sp, #8]
	subs r0, r0, r1
	adds r0, #1
	movs r6, #0x81
	lsls r6, r6, #0x18
	orrs r0, r6
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [sp, #0x14]
	ldrb r0, [r0]
	cmp r4, r0
	bls _0800316A
_080031A0:
	movs r0, #0
	str r0, [sp, #4]
	mov r1, sb
	ldr r2, _080031DC @ =0x040000D4
	str r1, [r2]
	ldr r0, _080031E0 @ =gUnknown_03001B40
	add r0, sl
	str r0, [r2, #4]
	ldr r0, _080031E4 @ =0x85000001
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_080031B6:
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #3
	bhi _080031C2
	b _08002F98
_080031C2:
	movs r0, #1
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080031D4: .4byte gUnknown_03001B40+3
_080031D8: .4byte gUnknown_03004620
_080031DC: .4byte 0x040000D4
_080031E0: .4byte gUnknown_03001B40
_080031E4: .4byte 0x85000001

@ SA2: sub_8004274
	thumb_func_start sub_80031E8
sub_80031E8: @ 0x080031E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	mov sl, r1
	ldr r0, [sp, #0x24]
	ldr r7, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	movs r5, #0
	ldr r1, _08003284 @ =gBgCntRegs
	lsrs r0, r0, #0x17
	adds r0, r0, r1
	ldrh r4, [r0]
	movs r0, #0xc
	ands r0, r4
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	mov r8, r0
	movs r0, #0xf8
	lsls r0, r0, #5
	ands r0, r4
	lsls r0, r0, #3
	adds r0, r0, r1
	lsrs r3, r3, #0xa
	adds r0, r0, r3
	lsrs r2, r2, #0xf
	adds r6, r0, r2
	ldrb r0, [r7]
	cmp r0, #0
	beq _08003272
_0800323A:
	lsls r4, r5, #5
	ldr r0, [sp]
	adds r4, r0, r4
	adds r0, r7, r5
	ldrb r0, [r0]
	lsls r0, r0, #5
	add r0, sl
	adds r1, r4, #0
	movs r2, #8
	bl CpuFastSet
	mov r2, r8
	subs r4, r4, r2
	lsls r4, r4, #0xb
	lsrs r4, r4, #0x10
	lsls r1, r5, #1
	adds r1, r6, r1
	mov r2, sb
	lsls r0, r2, #0xc
	orrs r4, r0
	strh r4, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r7, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800323A
_08003272:
	lsls r0, r5, #5
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08003284: .4byte gBgCntRegs

	thumb_func_start animCmd_GetPalette_BG
animCmd_GetPalette_BG: @ 0x08003288
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	ldrh r0, [r3, #0x14]
	adds r0, #3
	strh r0, [r3, #0x14]
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	bne _080032DC
	ldr r1, [r4, #4]
	ldr r2, _080032E4 @ =0x040000D4
	ldr r0, _080032E8 @ =gUnknown_03002034
	ldr r0, [r0]
	lsls r1, r1, #5
	ldr r0, [r0, #0xc]
	adds r0, r0, r1
	str r0, [r2]
	adds r0, r3, #0
	adds r0, #0x25
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldrh r1, [r4, #0xa]
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _080032EC @ =gBgPalette
	adds r0, r0, r1
	str r0, [r2, #4]
	ldrh r0, [r4, #8]
	asrs r0, r0, #1
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r2, _080032F0 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
_080032DC:
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080032E4: .4byte 0x040000D4
_080032E8: .4byte gUnknown_03002034
_080032EC: .4byte gBgPalette
_080032F0: .4byte gFlags

	thumb_func_start animCmd_JumpBack_BG
animCmd_JumpBack_BG: @ 0x080032F4
	ldr r2, [r0, #4]
	ldrh r0, [r1, #0x14]
	subs r0, r0, r2
	strh r0, [r1, #0x14]
	movs r0, #1
	bx lr

	thumb_func_start animCmd_End_BG
animCmd_End_BG: @ 0x08003300
	ldr r0, [r1, #0x10]
	movs r2, #0x80
	lsls r2, r2, #7
	orrs r0, r2
	str r0, [r1, #0x10]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start animCmd_PlaySoundEffect_BG
animCmd_PlaySoundEffect_BG: @ 0x08003310
	push {lr}
	ldrh r2, [r1, #0x14]
	adds r2, #2
	strh r2, [r1, #0x14]
	ldrh r0, [r0, #4]
	bl m4aSongNumStart
	movs r0, #1
	pop {r1}
	bx r1

	thumb_func_start animCmd_TranslateSprite_BG
animCmd_TranslateSprite_BG: @ 0x08003324
	ldrh r2, [r1, #0x14]
	adds r2, #2
	strh r2, [r1, #0x14]
	ldrh r2, [r0, #4]
	ldrh r3, [r1, #0x16]
	adds r2, r2, r3
	strh r2, [r1, #0x16]
	ldrh r0, [r0, #6]
	ldrh r2, [r1, #0x18]
	adds r0, r0, r2
	strh r0, [r1, #0x18]
	movs r0, #1
	bx lr
	.align 2, 0

	thumb_func_start animCmd_8_BG
animCmd_8_BG: @ 0x08003340
	ldrh r0, [r1, #0x14]
	adds r0, #3
	strh r0, [r1, #0x14]
	movs r0, #1
	bx lr
	.align 2, 0

	thumb_func_start animCmd_SetIdAndVariant_BG
animCmd_SetIdAndVariant_BG: @ 0x0800334C
	ldrh r2, [r1, #0x14]
	adds r2, #2
	strh r2, [r1, #0x14]
	ldrh r2, [r0, #4]
	strh r2, [r1, #0xa]
	adds r3, r1, #0
	adds r3, #0x21
	movs r2, #0xff
	strb r2, [r3]
	ldrh r0, [r0, #6]
	adds r1, #0x20
	strb r0, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	bx lr
	.align 2, 0

	thumb_func_start animCmd_10_BG
animCmd_10_BG: @ 0x0800336C
	ldrh r2, [r1, #0x14]
	adds r2, #4
	strh r2, [r1, #0x14]
	bx lr

@ No-op in BG
	thumb_func_start animCmd_SetSpritePriority_BG
animCmd_SetSpritePriority_BG: @ 0x08003374
	ldrh r0, [r1, #0x14]
	adds r0, #2
	strh r0, [r1, #0x14]
	movs r0, #1
	bx lr
	.align 2, 0

@ No-op in BG
	thumb_func_start animCmd_SetOamOrder_BG
animCmd_SetOamOrder_BG: @ 0x08003380
	ldrh r0, [r1, #0x14]
	adds r0, #2
	strh r0, [r1, #0x14]
	movs r0, #1
	bx lr
	.align 2, 0
