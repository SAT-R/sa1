.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	mov sl, r1
	mov sb, r3
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	add r6, sp, #4
	ldr r1, _08005D58 @ =gUnknown_0809C138
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
	ldr r1, _08005D5C @ =gFlags
	ldr r0, [r1]
	movs r2, #4
	orrs r0, r2
	str r0, [r1]
	cmp r7, #1
	bls _08005D74
	ldr r1, _08005D60 @ =sa2__gUnknown_03002A80
	strb r2, [r1]
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq _08005D68
	ldr r0, _08005D64 @ =gBgOffsetsHBlank
	ldr r0, [r0]
	adds r4, r0, #2
	b _08005D9C
	.align 2, 0
_08005D58: .4byte gUnknown_0809C138
_08005D5C: .4byte gFlags
_08005D60: .4byte sa2__gUnknown_03002A80
_08005D64: .4byte gBgOffsetsHBlank
_08005D68:
	ldr r0, _08005D70 @ =gBgOffsetsHBlank
	ldr r4, [r0]
	b _08005D9C
	.align 2, 0
_08005D70: .4byte gBgOffsetsHBlank
_08005D74:
	ldr r1, _08005D8C @ =sa2__gUnknown_03002A80
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08005D90 @ =gBgOffsetsHBlank
	ldr r4, [r0]
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq _08005D9C
	ldr r1, _08005D94 @ =sa2__gUnknown_03002878
	ldr r0, _08005D98 @ =0x04000042
	b _08005DA0
	.align 2, 0
_08005D8C: .4byte sa2__gUnknown_03002A80
_08005D90: .4byte gBgOffsetsHBlank
_08005D94: .4byte sa2__gUnknown_03002878
_08005D98: .4byte 0x04000042
_08005D9C:
	ldr r1, _08005EB0 @ =sa2__gUnknown_03002878
	ldr r0, _08005EB4 @ =0x04000040
_08005DA0:
	str r0, [r1]
	mov r1, sl
	ldrb r0, [r1, #5]
	ldrb r2, [r1, #1]
	adds r5, r2, #0
	adds r1, r0, #0
	cmp r0, r5
	bls _08005DB2
	adds r0, r2, #0
_08005DB2:
	adds r3, r0, #0
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	cmp ip, r5
	bhs _08005DC0
	adds r1, r2, #0
_08005DC0:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r2, _08005EB8 @ =sa2__gUnknown_03002A80
	ldrb r0, [r2]
	muls r0, r3, r0
	adds r4, r4, r0
	mov r2, sp
	mov r7, sl
	ldrb r0, [r7, #2]
	ldrb r1, [r7]
	subs r0, r0, r1
	strh r0, [r2]
	adds r7, r6, #0
	mov r1, sl
	ldrb r0, [r1, #3]
	ldrb r1, [r1, #1]
	subs r0, r0, r1
	strh r0, [r7]
	mov r0, sp
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bge _08005DF2
	rsbs r0, r0, #0
_08005DF2:
	lsls r0, r0, #1
	mov r1, sp
	strh r0, [r1, #0xc]
	movs r2, #0
	ldrsh r0, [r7, r2]
	cmp r0, #0
	bge _08005E02
	rsbs r0, r0, #0
_08005E02:
	lsls r0, r0, #1
	mov r1, sp
	strh r0, [r1, #0x10]
	mov r2, sp
	mov r1, sl
	ldrb r0, [r1, #6]
	ldrb r1, [r1, #4]
	subs r0, r0, r1
	strh r0, [r2, #2]
	mov r2, sl
	ldrb r0, [r2, #7]
	ldrb r1, [r2, #5]
	subs r0, r0, r1
	strh r0, [r7, #2]
	mov r0, sp
	movs r1, #2
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _08005E2A
	rsbs r0, r0, #0
_08005E2A:
	lsls r0, r0, #1
	mov r2, sp
	strh r0, [r2, #0xe]
	movs r1, #2
	ldrsh r0, [r7, r1]
	cmp r0, #0
	bge _08005E3A
	rsbs r0, r0, #0
_08005E3A:
	lsls r0, r0, #1
	mov r2, sp
	strh r0, [r2, #0x12]
	add r2, sp, #0x14
	mov r7, sl
	ldrb r0, [r7]
	strb r0, [r2]
	ldrb r0, [r7, #4]
	strb r0, [r2, #1]
	add r1, sp, #8
	ldrh r0, [r6]
	rsbs r0, r0, #0
	strh r0, [r1]
	ldrh r0, [r6, #2]
	rsbs r0, r0, #0
	strh r0, [r1, #2]
	adds r6, r2, #0
	cmp r3, r8
	bne _08005E62
	b _08005F74
_08005E62:
	cmp r5, ip
	bhs _08005EF8
	cmp r3, r8
	blo _08005E6C
	b _08005F74
_08005E6C:
	adds r7, r6, #0
	adds r5, r1, #0
_08005E70:
	mov r0, sb
	strb r0, [r4]
	ldrb r0, [r7]
	strb r0, [r4, #1]
	mov r1, sp
	ldrh r0, [r1, #0xc]
	ldrh r2, [r5]
	adds r0, r0, r2
	strh r0, [r5]
	lsls r0, r0, #0x10
	adds r3, #1
	mov ip, r3
	cmp r0, #0
	blt _08005EE0
	add r2, sp, #8
	add r3, sp, #0x10
_08005E90:
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _08005EBC
	ldrb r0, [r7]
	cmp sb, r0
	ble _08005EA4
	adds r0, #1
	strb r0, [r6]
_08005EA4:
	ldrh r0, [r2]
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r2]
	b _08005ED8
	.align 2, 0
_08005EB0: .4byte sa2__gUnknown_03002878
_08005EB4: .4byte 0x04000040
_08005EB8: .4byte sa2__gUnknown_03002A80
_08005EBC:
	ldrb r0, [r6]
	cmp r0, #0
	beq _08005EC6
	subs r0, #1
	strb r0, [r6]
_08005EC6:
	ldrh r0, [r2]
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _08005ED8
	ldrb r0, [r6]
	strb r0, [r4, #1]
_08005ED8:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _08005E90
_08005EE0:
	ldr r2, _08005EF4 @ =sa2__gUnknown_03002A80
	ldrb r0, [r2]
	adds r4, r4, r0
	mov r1, ip
	lsls r0, r1, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r8
	blo _08005E70
	b _08005F74
	.align 2, 0
_08005EF4: .4byte sa2__gUnknown_03002A80
_08005EF8:
	cmp r3, r8
	bhs _08005F74
	adds r7, r6, #0
	add r5, sp, #8
_08005F00:
	ldrb r0, [r7, #1]
	strb r0, [r4]
	movs r0, #0
	strb r0, [r4, #1]
	ldrh r1, [r5, #2]
	mov r2, sp
	ldrh r0, [r2, #0xe]
	adds r1, r1, r0
	strh r1, [r5, #2]
	lsls r1, r1, #0x10
	adds r3, #1
	mov ip, r3
	cmp r1, #0
	blt _08005F64
	add r2, sp, #8
	add r3, sp, #0x10
_08005F20:
	mov r0, sp
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08005F4A
	ldrb r0, [r6, #1]
	cmp sb, r0
	ble _08005F34
	adds r0, #1
	strb r0, [r6, #1]
_08005F34:
	ldrh r0, [r2, #2]
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	strh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _08005F5C
	ldrb r0, [r6, #1]
	adds r0, #1
	strb r0, [r4]
	b _08005F5C
_08005F4A:
	ldrb r0, [r7, #1]
	cmp r0, #0
	beq _08005F54
	subs r0, #1
	strb r0, [r6, #1]
_08005F54:
	ldrh r0, [r2, #2]
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	strh r0, [r2, #2]
_08005F5C:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08005F20
_08005F64:
	ldr r1, _08005FD8 @ =sa2__gUnknown_03002A80
	ldrb r0, [r1]
	adds r4, r4, r0
	mov r2, ip
	lsls r0, r2, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r8
	blo _08005F00
_08005F74:
	mov r7, sl
	ldrb r0, [r7, #7]
	ldrb r1, [r7, #3]
	cmp r0, r1
	bls _08005F80
	adds r0, r1, #0
_08005F80:
	mov r8, r0
	cmp r3, r8
	bhs _08006060
	adds r7, r6, #0
	add r5, sp, #8
	mov r0, sp
	adds r0, #0xc
	str r0, [sp, #0x18]
_08005F90:
	ldrb r0, [r7, #1]
	strb r0, [r4]
	ldrb r0, [r7]
	strb r0, [r4, #1]
	ldr r1, [sp, #0x18]
	ldrh r2, [r1]
	ldrh r0, [r5]
	adds r2, r2, r0
	strh r2, [r5]
	ldrh r1, [r1, #2]
	mov ip, r1
	ldrh r0, [r5, #2]
	add r0, ip
	strh r0, [r5, #2]
	lsls r2, r2, #0x10
	adds r3, #1
	mov ip, r3
	cmp r2, #0
	blt _08006000
	add r2, sp, #8
	add r3, sp, #0x10
_08005FBA:
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _08005FDC
	ldrb r0, [r7]
	cmp sb, r0
	ble _08005FCE
	adds r0, #1
	strb r0, [r6]
_08005FCE:
	ldrh r0, [r2]
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r2]
	b _08005FF8
	.align 2, 0
_08005FD8: .4byte sa2__gUnknown_03002A80
_08005FDC:
	ldrb r0, [r6]
	cmp r0, #0
	beq _08005FE6
	subs r0, #1
	strb r0, [r6]
_08005FE6:
	ldrh r0, [r2]
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _08005FF8
	ldrb r0, [r6]
	strb r0, [r4, #1]
_08005FF8:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _08005FBA
_08006000:
	ldrh r0, [r5, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _08006050
	add r2, sp, #8
	add r3, sp, #0x10
_0800600C:
	mov r0, sp
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08006036
	ldrb r0, [r6, #1]
	cmp sb, r0
	ble _08006020
	adds r0, #1
	strb r0, [r6, #1]
_08006020:
	ldrh r0, [r2, #2]
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	strh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _08006048
	ldrb r0, [r6, #1]
	adds r0, #1
	strb r0, [r4]
	b _08006048
_08006036:
	ldrb r0, [r7, #1]
	cmp r0, #0
	beq _08006040
	subs r0, #1
	strb r0, [r6, #1]
_08006040:
	ldrh r0, [r2, #2]
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	strh r0, [r2, #2]
_08006048:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0800600C
_08006050:
	ldr r2, _080060D0 @ =sa2__gUnknown_03002A80
	ldrb r0, [r2]
	adds r4, r4, r0
	mov r1, ip
	lsls r0, r1, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r8
	blo _08005F90
_08006060:
	mov r2, sl
	ldrb r0, [r2, #7]
	ldrb r1, [r2, #3]
	adds r2, r1, #0
	adds r7, r0, #0
	cmp r0, r2
	bhs _08006070
	adds r0, r1, #0
_08006070:
	mov r8, r0
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	cmp r2, r0
	bhi _08006104
	cmp r3, r8
	blo _08006080
	b _08006180
_08006080:
	adds r7, r6, #0
	add r5, sp, #8
_08006084:
	ldrb r0, [r7, #1]
	strb r0, [r4]
	movs r0, #0
	strb r0, [r4, #1]
	ldrh r1, [r5, #2]
	mov r2, sp
	ldrh r0, [r2, #0xe]
	adds r1, r1, r0
	strh r1, [r5, #2]
	lsls r1, r1, #0x10
	adds r3, #1
	mov ip, r3
	cmp r1, #0
	blt _080060EE
	add r2, sp, #8
	add r3, sp, #0x10
_080060A4:
	mov r0, sp
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080060D4
	ldrb r0, [r6, #1]
	cmp sb, r0
	ble _080060B8
	adds r0, #1
	strb r0, [r6, #1]
_080060B8:
	ldrh r0, [r2, #2]
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	strh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080060E6
	ldrb r0, [r6, #1]
	adds r0, #1
	strb r0, [r4]
	b _080060E6
	.align 2, 0
_080060D0: .4byte sa2__gUnknown_03002A80
_080060D4:
	ldrb r0, [r7, #1]
	cmp r0, #0
	beq _080060DE
	subs r0, #1
	strb r0, [r6, #1]
_080060DE:
	ldrh r0, [r2, #2]
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	strh r0, [r2, #2]
_080060E6:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080060A4
_080060EE:
	ldr r1, _08006100 @ =sa2__gUnknown_03002A80
	ldrb r0, [r1]
	adds r4, r4, r0
	mov r2, ip
	lsls r0, r2, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r8
	blo _08006084
	b _08006180
	.align 2, 0
_08006100: .4byte sa2__gUnknown_03002A80
_08006104:
	cmp r3, r8
	bhs _08006180
	adds r7, r6, #0
	add r5, sp, #8
_0800610C:
	mov r0, sb
	strb r0, [r4]
	ldrb r0, [r7]
	strb r0, [r4, #1]
	mov r1, sp
	ldrh r0, [r1, #0xc]
	ldrh r2, [r5]
	adds r0, r0, r2
	strh r0, [r5]
	lsls r0, r0, #0x10
	adds r3, #1
	mov ip, r3
	cmp r0, #0
	blt _08006170
	add r2, sp, #8
	add r3, sp, #0x10
_0800612C:
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _0800614A
	ldrb r0, [r7]
	cmp sb, r0
	ble _08006140
	adds r0, #1
	strb r0, [r6]
_08006140:
	ldrh r0, [r2]
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r2]
	b _08006168
_0800614A:
	adds r1, r6, #0
	ldrb r0, [r1]
	cmp r0, #0
	beq _08006156
	subs r0, #1
	strb r0, [r1]
_08006156:
	ldrh r0, [r2]
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _08006168
	ldrb r0, [r6]
	strb r0, [r4, #1]
_08006168:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _0800612C
_08006170:
	ldr r2, _08006190 @ =sa2__gUnknown_03002A80
	ldrb r0, [r2]
	adds r4, r4, r0
	mov r1, ip
	lsls r0, r1, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r8
	blo _0800610C
_08006180:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006190: .4byte sa2__gUnknown_03002A80

.syntax divided
