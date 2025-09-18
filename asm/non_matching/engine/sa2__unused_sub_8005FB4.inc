

.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, [sp, #0x20]
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sl, r2
	lsls r3, r3, #0x18
	lsrs r2, r3, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _08004F40 @ =gFlags
	ldr r0, [r1]
	movs r7, #4
	orrs r0, r7
	str r0, [r1]
	cmp r6, #1
	bls _08004F58
	ldr r1, _08004F44 @ =gHBlankCopySize
	strb r7, [r1]
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _08004F4C
	ldr r0, _08004F48 @ =gBgOffsetsHBlank
	ldr r0, [r0]
	adds r3, r0, #2
	b _08004F80
	.align 2, 0
_08004F40: .4byte gFlags
_08004F44: .4byte gHBlankCopySize
_08004F48: .4byte gBgOffsetsHBlank
_08004F4C:
	ldr r0, _08004F54 @ =gBgOffsetsHBlank
	ldr r3, [r0]
	b _08004F80
	.align 2, 0
_08004F54: .4byte gBgOffsetsHBlank
_08004F58:
	ldr r1, _08004F70 @ =gHBlankCopySize
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08004F74 @ =gBgOffsetsHBlank
	ldr r3, [r0]
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _08004F80
	ldr r1, _08004F78 @ =gHBlankCopyTarget
	ldr r0, _08004F7C @ =0x04000042
	b _08004F84
	.align 2, 0
_08004F70: .4byte gHBlankCopySize
_08004F74: .4byte gBgOffsetsHBlank
_08004F78: .4byte gHBlankCopyTarget
_08004F7C: .4byte 0x04000042
_08004F80:
	ldr r1, _08004FE8 @ =gHBlankCopyTarget
	ldr r0, _08004FEC @ =0x04000040
_08004F84:
	str r0, [r1]
	subs r1, r2, r5
	mov r2, sl
	subs r0, r4, r2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r7, r1, #0x10
	asrs r2, r7, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _08004F9C
	rsbs r0, r2, #0
_08004F9C:
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	adds r4, r1, #0
	mov sb, r0
	cmp r1, #0
	bge _08004FB0
	rsbs r4, r1, #0
_08004FB0:
	lsls r0, r4, #0x11
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r4, _08004FF0 @ =gHBlankCopySize
	ldrb r0, [r4]
	mov r4, sl
	muls r4, r0, r4
	adds r0, r4, #0
	adds r3, r3, r0
	adds r6, r2, #0
	cmp r2, #0
	bge _08004FCA
	rsbs r6, r2, #0
_08004FCA:
	adds r0, r1, #0
	cmp r1, #0
	bge _08004FD2
	rsbs r0, r1, #0
_08004FD2:
	cmp r6, r0
	ble _080050A4
	rsbs r0, r2, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r2, #0
	ble _08005044
	strb r5, [r3, #1]
	movs r2, #0
	adds r6, r7, #0
	b _0800502C
	.align 2, 0
_08004FE8: .4byte gHBlankCopyTarget
_08004FEC: .4byte 0x04000040
_08004FF0: .4byte gHBlankCopySize
_08004FF4:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	mov r4, ip
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	blt _08005026
	mov r4, r8
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	strb r5, [r3]
	ldr r1, _08005040 @ =gHBlankCopySize
	ldrb r0, [r1]
	adds r3, r3, r0
	strb r5, [r3, #1]
_08005026:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0800502C:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	asrs r0, r6, #0x10
	cmp r0, #0
	bge _08005038
	rsbs r0, r0, #0
_08005038:
	cmp r2, r0
	blt _08004FF4
	strb r5, [r3]
	b _0800515C
	.align 2, 0
_08005040: .4byte gHBlankCopySize
_08005044:
	strb r5, [r3]
	adds r3, #1
	movs r2, #0
	adds r6, r7, #0
	b _0800508A
_0800504E:
	subs r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	mov r4, ip
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	blt _08005084
	mov r4, r8
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	strb r5, [r3]
	ldr r1, _080050A0 @ =gHBlankCopySize
	ldrb r0, [r1]
	adds r0, r0, r3
	subs r3, r0, #1
	strb r5, [r3]
	adds r3, #1
_08005084:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0800508A:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	asrs r0, r6, #0x10
	cmp r0, #0
	bge _08005096
	rsbs r0, r0, #0
_08005096:
	cmp r2, r0
	blt _0800504E
	strb r5, [r3]
	b _0800515C
	.align 2, 0
_080050A0: .4byte gHBlankCopySize
_080050A4:
	rsbs r0, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r2, #0
	ble _08005108
	movs r2, #0
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r7, r0, #0x10
	b _080050F0
_080050C0:
	adds r2, r5, #1
	strb r2, [r3]
	adds r3, #1
	strb r5, [r3]
	ldr r1, _08005104 @ =gHBlankCopySize
	ldrb r0, [r1]
	adds r0, r0, r3
	subs r3, r0, #1
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	add r0, r8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _080050EA
	lsls r0, r2, #0x18
	lsrs r5, r0, #0x18
	subs r0, r1, r7
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_080050EA:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080050F0:
	lsls r0, r2, #0x10
	asrs r6, r0, #0x10
	mov r2, sb
	asrs r0, r2, #0x10
	cmp r0, #0
	bge _080050FE
	rsbs r0, r0, #0
_080050FE:
	cmp r6, r0
	blt _080050C0
	b _0800515C
	.align 2, 0
_08005104: .4byte gHBlankCopySize
_08005108:
	movs r2, #0
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r7, r0, #0x10
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r6, r0, #0x10
	b _0800514A
_08005118:
	adds r0, r5, #1
	strb r0, [r3]
	adds r3, #1
	strb r5, [r3]
	ldr r1, _0800516C @ =gHBlankCopySize
	ldrb r0, [r1]
	adds r0, r0, r3
	subs r3, r0, #1
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r7
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _08005144
	subs r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	subs r0, r1, r6
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08005144:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0800514A:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	mov r1, sb
	asrs r0, r1, #0x10
	cmp r0, #0
	bge _08005158
	rsbs r0, r0, #0
_08005158:
	cmp r2, r0
	blt _08005118
_0800515C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800516C: .4byte gHBlankCopySize

.syntax divided
