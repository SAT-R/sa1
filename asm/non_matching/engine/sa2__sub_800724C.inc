.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	mov sl, r1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	add r6, sp, #4
	ldr r1, _080061F0 @ =gUnknown_0809C138
	adds r0, r6, #0
	movs r2, #4
	bl memcpy
	add r5, sp, #0xc
	adds r0, r5, #0
	movs r1, #0
	movs r2, #4
	bl memset
	add r4, sp, #0x10
	adds r0, r4, #0
	movs r1, #0
	movs r2, #4
	bl memset
	ldr r1, _080061F4 @ =gFlags
	ldr r0, [r1]
	movs r2, #4
	orrs r0, r2
	str r0, [r1]
	mov r8, r6
	cmp r7, #1
	bls _0800620C
	ldr r1, _080061F8 @ =sa2__gUnknown_03002A80
	strb r2, [r1]
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq _08006200
	ldr r0, _080061FC @ =gBgOffsetsHBlank
	ldr r0, [r0]
	adds r5, r0, #2
	b _08006234
	.align 2, 0
_080061F0: .4byte gUnknown_0809C138
_080061F4: .4byte gFlags
_080061F8: .4byte sa2__gUnknown_03002A80
_080061FC: .4byte gBgOffsetsHBlank
_08006200:
	ldr r0, _08006208 @ =gBgOffsetsHBlank
	ldr r5, [r0]
	b _08006234
	.align 2, 0
_08006208: .4byte gBgOffsetsHBlank
_0800620C:
	ldr r1, _08006224 @ =sa2__gUnknown_03002A80
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08006228 @ =gBgOffsetsHBlank
	ldr r5, [r0]
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq _08006234
	ldr r1, _0800622C @ =sa2__gUnknown_03002878
	ldr r0, _08006230 @ =0x04000042
	b _08006238
	.align 2, 0
_08006224: .4byte sa2__gUnknown_03002A80
_08006228: .4byte gBgOffsetsHBlank
_0800622C: .4byte sa2__gUnknown_03002878
_08006230: .4byte 0x04000042
_08006234:
	ldr r1, _08006348 @ =sa2__gUnknown_03002878
	ldr r0, _0800634C @ =0x04000040
_08006238:
	str r0, [r1]
	mov r1, sl
	ldrb r0, [r1, #5]
	ldrb r2, [r1, #1]
	adds r7, r2, #0
	adds r1, r0, #0
	cmp r0, r7
	bls _0800624A
	adds r0, r2, #0
_0800624A:
	adds r4, r0, #0
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp sb, r7
	bhs _08006258
	adds r1, r2, #0
_08006258:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r2, _08006350 @ =sa2__gUnknown_03002A80
	ldrb r0, [r2]
	muls r0, r4, r0
	adds r5, r5, r0
	mov r2, sp
	mov r3, sl
	ldrb r0, [r3, #2]
	ldrb r1, [r3]
	subs r0, r0, r1
	strh r0, [r2]
	mov r3, r8
	mov r6, sl
	ldrb r0, [r6, #3]
	ldrb r1, [r6, #1]
	subs r0, r0, r1
	strh r0, [r3]
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _0800628A
	rsbs r0, r0, #0
_0800628A:
	lsls r0, r0, #1
	mov r2, sp
	strh r0, [r2, #0xc]
	movs r6, #0
	ldrsh r0, [r3, r6]
	cmp r0, #0
	bge _0800629A
	rsbs r0, r0, #0
_0800629A:
	lsls r0, r0, #1
	mov r1, sp
	strh r0, [r1, #0x10]
	mov r2, sp
	mov r6, sl
	ldrb r0, [r6, #6]
	ldrb r1, [r6, #4]
	subs r0, r0, r1
	strh r0, [r2, #2]
	ldrb r0, [r6, #7]
	ldrb r1, [r6, #5]
	subs r0, r0, r1
	strh r0, [r3, #2]
	mov r0, sp
	movs r1, #2
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _080062C0
	rsbs r0, r0, #0
_080062C0:
	lsls r0, r0, #1
	mov r2, sp
	strh r0, [r2, #0xe]
	movs r6, #2
	ldrsh r0, [r3, r6]
	cmp r0, #0
	bge _080062D0
	rsbs r0, r0, #0
_080062D0:
	lsls r0, r0, #1
	mov r1, sp
	strh r0, [r1, #0x12]
	add r2, sp, #0x14
	mov r3, sl
	ldrb r0, [r3]
	strb r0, [r2]
	ldrb r0, [r3, #4]
	strb r0, [r2, #1]
	add r1, sp, #8
	mov r6, r8
	ldrh r0, [r6]
	rsbs r0, r0, #0
	strh r0, [r1]
	ldrh r0, [r6, #2]
	rsbs r0, r0, #0
	strh r0, [r1, #2]
	mov r8, r2
	mov ip, r1
	ldr r0, [sp, #0x18]
	cmp r4, r0
	bne _080062FE
	b _08006410
_080062FE:
	cmp r7, sb
	bhs _08006390
	cmp r4, r0
	blo _08006308
	b _08006410
_08006308:
	movs r0, #0xf0
	strb r0, [r5]
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r5, #1]
	add r2, sp, #8
	mov r3, sp
	ldrh r0, [r3, #0xc]
	ldrh r6, [r2]
	adds r0, r0, r6
	strh r0, [r2]
	lsls r0, r0, #0x10
	adds r4, #1
	mov sb, r4
	cmp r0, #0
	blt _08006378
	mov r3, r8
	add r4, sp, #0x10
	mov r6, ip
_0800632E:
	mov r0, sp
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r0, #0
	ble _08006354
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldrh r0, [r2]
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r2]
	b _0800636E
	.align 2, 0
_08006348: .4byte sa2__gUnknown_03002878
_0800634C: .4byte 0x04000040
_08006350: .4byte sa2__gUnknown_03002A80
_08006354:
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
	ldrh r0, [r6]
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r6]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0800636E
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r5, #1]
_0800636E:
	mov r2, ip
	movs r7, #0
	ldrsh r0, [r2, r7]
	cmp r0, #0
	bge _0800632E
_08006378:
	ldr r1, _0800638C @ =sa2__gUnknown_03002A80
	ldrb r0, [r1]
	adds r5, r5, r0
	mov r2, sb
	lsls r0, r2, #0x18
	lsrs r4, r0, #0x18
	ldr r3, [sp, #0x18]
	cmp r4, r3
	blo _08006308
	b _08006410
	.align 2, 0
_0800638C: .4byte sa2__gUnknown_03002A80
_08006390:
	ldr r6, [sp, #0x18]
	cmp r4, r6
	bhs _08006410
	mov r7, ip
_08006398:
	mov r1, r8
	ldrb r0, [r1, #1]
	strb r0, [r5]
	movs r0, #0
	strb r0, [r5, #1]
	adds r2, r7, #0
	ldrh r1, [r2, #2]
	mov r3, sp
	ldrh r0, [r3, #0xe]
	adds r1, r1, r0
	strh r1, [r2, #2]
	lsls r1, r1, #0x10
	adds r4, #1
	mov sb, r4
	cmp r1, #0
	blt _080063FE
	mov r3, r8
	add r4, sp, #0x10
	mov r6, ip
_080063BE:
	mov r0, sp
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080063E6
	ldrb r0, [r3, #1]
	adds r0, #1
	strb r0, [r3, #1]
	ldrh r0, [r2, #2]
	ldrh r1, [r4, #2]
	subs r0, r0, r1
	strh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080063F4
	mov r1, r8
	ldrb r0, [r1, #1]
	adds r0, #1
	strb r0, [r5]
	b _080063F4
_080063E6:
	ldrb r0, [r3, #1]
	subs r0, #1
	strb r0, [r3, #1]
	ldrh r0, [r6, #2]
	ldrh r1, [r4, #2]
	subs r0, r0, r1
	strh r0, [r6, #2]
_080063F4:
	mov r2, ip
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080063BE
_080063FE:
	ldr r2, _08006474 @ =sa2__gUnknown_03002A80
	ldrb r0, [r2]
	adds r5, r5, r0
	mov r3, sb
	lsls r0, r3, #0x18
	lsrs r4, r0, #0x18
	ldr r6, [sp, #0x18]
	cmp r4, r6
	blo _08006398
_08006410:
	mov r7, sl
	ldrb r0, [r7, #7]
	ldrb r1, [r7, #3]
	cmp r0, r1
	bls _0800641C
	adds r0, r1, #0
_0800641C:
	str r0, [sp, #0x18]
	cmp r4, r0
	bhs _08006502
	mov r7, ip
	add r0, sp, #0xc
	mov sl, r0
_08006428:
	mov r1, r8
	ldrb r0, [r1, #1]
	strb r0, [r5]
	ldrb r0, [r1]
	strb r0, [r5, #1]
	adds r3, r7, #0
	mov r6, sl
	ldrh r2, [r6]
	ldrh r0, [r7]
	adds r2, r2, r0
	strh r2, [r7]
	ldrh r0, [r7, #2]
	ldrh r1, [r6, #2]
	adds r0, r0, r1
	strh r0, [r7, #2]
	lsls r2, r2, #0x10
	adds r4, #1
	mov sb, r4
	cmp r2, #0
	blt _080064A0
	mov r2, r8
	add r4, sp, #0x10
	mov r1, ip
	str r1, [sp, #0x1c]
_08006458:
	mov r0, sp
	movs r6, #0
	ldrsh r0, [r0, r6]
	cmp r0, #0
	ble _08006478
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldrh r0, [r3]
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r3]
	b _08006496
	.align 2, 0
_08006474: .4byte sa2__gUnknown_03002A80
_08006478:
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	ldr r1, [sp, #0x1c]
	ldrh r0, [r1]
	ldrh r1, [r4]
	subs r0, r0, r1
	ldr r3, [sp, #0x1c]
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _08006496
	mov r6, r8
	ldrb r0, [r6]
	strb r0, [r5, #1]
_08006496:
	mov r3, ip
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bge _08006458
_080064A0:
	adds r2, r7, #0
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080064F0
	mov r3, r8
	add r4, sp, #0x10
	mov r6, ip
_080064B0:
	mov r0, sp
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080064D8
	ldrb r0, [r3, #1]
	adds r0, #1
	strb r0, [r3, #1]
	ldrh r0, [r2, #2]
	ldrh r1, [r4, #2]
	subs r0, r0, r1
	strh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080064E6
	mov r2, r8
	ldrb r0, [r2, #1]
	adds r0, #1
	strb r0, [r5]
	b _080064E6
_080064D8:
	ldrb r0, [r3, #1]
	subs r0, #1
	strb r0, [r3, #1]
	ldrh r0, [r6, #2]
	ldrh r1, [r4, #2]
	subs r0, r0, r1
	strh r0, [r6, #2]
_080064E6:
	mov r2, ip
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080064B0
_080064F0:
	ldr r3, _08006514 @ =sa2__gUnknown_03002A80
	ldrb r0, [r3]
	adds r5, r5, r0
	mov r6, sb
	lsls r0, r6, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [sp, #0x18]
	cmp r4, r0
	blo _08006428
_08006502:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006514: .4byte sa2__gUnknown_03002A80

.syntax divided
