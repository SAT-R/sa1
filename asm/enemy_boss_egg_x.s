.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
	thumb_func_start sub_8039940
sub_8039940: @ 0x08039940
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _080399B4 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r7, r4, r5
	ldr r0, _080399B8 @ =Task_8039A64
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _080399BC @ =TaskDestructor_803A600
	str r1, [sp]
	movs r1, #0x64
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	adds r6, r2, r5
	ldr r0, _080399C0 @ =0x03000088
	adds r1, r4, r0
	ldr r0, [r7, #0x74]
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r1, _080399C4 @ =0x03000050
	adds r5, r2, r1
	movs r3, #0
	strh r0, [r5]
	ldr r0, _080399C8 @ =0x0300008A
	adds r4, r4, r0
	ldr r0, [r7, #0x78]
	asrs r0, r0, #8
	ldrh r4, [r4]
	adds r0, r0, r4
	ldr r4, _080399CC @ =0x03000052
	adds r1, r2, r4
	strh r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #4
	str r0, [r6, #0x40]
	ldr r0, _080399D0 @ =0x03000048
	adds r1, r2, r0
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r1]
	ldr r1, _080399D4 @ =0x0300004A
	adds r2, r2, r1
	strh r3, [r2]
	ldr r0, [r7, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080399D8
	ldrh r0, [r5]
	adds r0, #0x1a
	b _080399DC
	.align 2, 0
_080399B4: .4byte gCurTask
_080399B8: .4byte Task_8039A64
_080399BC: .4byte TaskDestructor_803A600
_080399C0: .4byte 0x03000088
_080399C4: .4byte 0x03000050
_080399C8: .4byte 0x0300008A
_080399CC: .4byte 0x03000052
_080399D0: .4byte 0x03000048
_080399D4: .4byte 0x0300004A
_080399D8:
	ldrh r0, [r5]
	subs r0, #0x1a
_080399DC:
	strh r0, [r5]
	movs r4, #0
	movs r5, #0
	movs r0, #0x11
	strh r0, [r6, #0x3c]
	adds r0, r6, #0
	adds r0, #0x61
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	movs r0, #0x40
	bl VramMalloc
	str r0, [r6, #4]
	movs r0, #0xb8
	lsls r0, r0, #3
	strh r0, [r6, #0x1a]
	strh r5, [r6, #8]
	ldr r0, _08039A48 @ =0x000002B1
	strh r0, [r6, #0xa]
	adds r0, r6, #0
	adds r0, #0x20
	strb r4, [r0]
	strh r5, [r6, #0x14]
	strh r5, [r6, #0x1c]
	adds r1, r6, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x25
	strb r4, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x28]
	ldr r0, [r7, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #3
	ands r0, r2
	ldr r1, _08039A4C @ =0x00002030
	orrs r0, r1
	str r0, [r6, #0x10]
	adds r1, r6, #0
	adds r1, #0x30
	strh r5, [r6, #0x30]
	ands r0, r2
	cmp r0, #0
	beq _08039A50
	movs r0, #0xff
	lsls r0, r0, #8
	b _08039A54
	.align 2, 0
_08039A48: .4byte 0x000002B1
_08039A4C: .4byte 0x00002030
_08039A50:
	movs r0, #0x80
	lsls r0, r0, #1
_08039A54:
	strh r0, [r1, #2]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #4]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
.endif

	thumb_func_start Task_8039A64
Task_8039A64: @ 0x08039A64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, _08039AD0 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r2, r4, r1
	mov r8, r2
	ldrh r0, [r0]
	adds r0, r0, r1
	ldrh r3, [r0, #6]
	adds r1, r3, r1
	str r1, [sp]
	mov sl, r8
	ldr r0, _08039AD4 @ =0x03000030
	adds r0, r4, r0
	str r0, [sp, #4]
	ldr r1, _08039AD8 @ =0x03000094
	adds r0, r3, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	bgt _08039AEA
	ldr r2, _08039ADC @ =0x0300008C
	adds r0, r3, r2
	ldrh r0, [r0]
	subs r1, #0x44
	adds r2, r4, r1
	strh r0, [r2]
	adds r1, #0x3e
	adds r0, r3, r1
	ldrh r1, [r0]
	ldr r3, _08039AE0 @ =0x03000052
	adds r0, r4, r3
	strh r1, [r0]
	mov r4, sl
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08039AE4
	ldrh r0, [r2]
	adds r0, #0x1a
	b _08039AE8
	.align 2, 0
_08039AD0: .4byte gCurTask
_08039AD4: .4byte 0x03000030
_08039AD8: .4byte 0x03000094
_08039ADC: .4byte 0x0300008C
_08039AE0: .4byte 0x03000052
_08039AE4:
	ldrh r0, [r2]
	subs r0, #0x1a
_08039AE8:
	strh r0, [r2]
_08039AEA:
	mov r3, r8
	adds r3, #0x48
	movs r0, #0
	ldrsh r1, [r3, r0]
	mov r2, r8
	ldr r0, [r2, #0x40]
	adds r0, r0, r1
	str r0, [r2, #0x40]
	adds r2, #0x4a
	ldrh r0, [r2]
	mov r1, r8
	adds r1, #0x4e
	strh r0, [r1]
	ldrh r6, [r2]
	mov ip, r6
	mov r4, sl
	ldr r1, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r1, r0
	str r3, [sp, #0xc]
	mov sb, r2
	cmp r1, #0
	beq _08039B38
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	ldr r2, _08039BD4 @ =0xFFFFFE00
	adds r1, r2, #0
	subs r6, r1, r0
	ldr r1, _08039BD8 @ =0x000003FF
	ands r6, r1
	mov r3, ip
	lsls r0, r3, #0x10
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	mov ip, r0
	mov r4, ip
	ands r4, r1
	mov ip, r4
_08039B38:
	ldr r2, _08039BDC @ =gSineTable
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r1, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r4, #0
	ldrsh r6, [r0, r4]
	asrs r6, r6, #6
	mov r3, r8
	ldr r0, [r3, #0x40]
	muls r6, r0, r6
	asrs r6, r6, #0x10
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r4, #0
	ldrsh r7, [r1, r4]
	asrs r7, r7, #6
	muls r7, r0, r7
	asrs r7, r7, #0x10
	mov r5, r8
	adds r5, #0x50
	movs r1, #0
	ldrsh r0, [r5, r1]
	adds r6, r6, r0
	mov r4, r8
	adds r4, #0x52
	movs r2, #0
	ldrsh r0, [r4, r2]
	adds r7, r7, r0
	ldr r1, _08039BE0 @ =gCamera
	ldrh r0, [r1]
	subs r0, r6, r0
	ldr r3, [sp, #4]
	strh r0, [r3, #6]
	ldrh r0, [r1, #2]
	subs r0, r7, r0
	strh r0, [r3, #8]
	mov r0, ip
	strh r0, [r3]
	mov r0, sl
	bl UpdateSpriteAnimation
	mov r0, sl
	ldr r1, [sp, #4]
	bl TransformSprite
	mov r0, sl
	bl DisplaySprite
	ldr r0, [sp]
	adds r0, #0x94
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _08039BEC
	movs r0, #0
	ldr r1, [sp, #0xc]
	strh r0, [r1]
	lsls r0, r6, #8
	mov r2, r8
	str r0, [r2, #0x54]
	lsls r0, r7, #8
	str r0, [r2, #0x58]
	movs r0, #0xb8
	lsls r0, r0, #3
	mov r3, sl
	strh r0, [r3, #0x1a]
	movs r0, #0x50
	strh r0, [r2, #0x3c]
	ldr r0, _08039BE4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08039BE8 @ =sub_803A46C
	str r0, [r1, #8]
	b _0803A14A
	.align 2, 0
_08039BD4: .4byte 0xFFFFFE00
_08039BD8: .4byte 0x000003FF
_08039BDC: .4byte gSineTable
_08039BE0: .4byte gCamera
_08039BE4: .4byte gCurTask
_08039BE8: .4byte sub_803A46C
_08039BEC:
	mov r0, r8
	adds r0, #0x61
	ldrb r1, [r0]
	str r0, [sp, #0x10]
	cmp r1, #0
	blt _08039C1E
	cmp r1, #1
	ble _08039C02
	cmp r1, #2
	beq _08039C0E
	b _08039C1E
_08039C02:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	movs r2, #0
	b _08039C18
_08039C0E:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	movs r2, #1
_08039C18:
	bl sub_8036F9C
	str r0, [sp, #8]
_08039C1E:
	ldr r1, [sp, #0x10]
	ldrb r0, [r1]
	cmp r0, #9
	bls _08039C28
	b _0803A14A
_08039C28:
	lsls r0, r0, #2
	ldr r1, _08039C34 @ =_08039C38
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08039C34: .4byte _08039C38
_08039C38: @ jump table
	.4byte _08039C60 @ case 0
	.4byte _08039CDE @ case 1
	.4byte _08039E08 @ case 2
	.4byte _08039EE2 @ case 3
	.4byte _08039EFC @ case 4
	.4byte _08039F30 @ case 5
	.4byte _08039F94 @ case 6
	.4byte _08039FD4 @ case 7
	.4byte _0803A026 @ case 8
	.4byte _0803A084 @ case 9
_08039C60:
	mov r2, r8
	ldrh r0, [r2, #0x3c]
	subs r0, #1
	strh r0, [r2, #0x3c]
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _08039C72
	b _0803A14A
_08039C72:
	ldr r2, _08039CA8 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _08039CAC @ =0x00196225
	muls r0, r1, r0
	ldr r4, _08039CB0 @ =0x3C6EF35F
	adds r0, r0, r4
	str r0, [r2]
	adds r1, r0, #0
	ldr r0, [sp, #0xc]
	strh r3, [r0]
	ldr r2, [sp, #0x10]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	adds r0, r1, #0
	movs r1, #0x64
	bl __modsi3
	adds r1, r0, #0
	subs r1, #0x23
	cmp r1, #0
	bgt _08039CB4
	movs r0, #0xb4
	mov r3, r8
	strh r0, [r3, #0x3c]
	b _0803A14A
	.align 2, 0
_08039CA8: .4byte gPseudoRandom
_08039CAC: .4byte 0x00196225
_08039CB0: .4byte 0x3C6EF35F
_08039CB4:
	adds r1, r0, #0
	subs r1, #0x46
	cmp r1, #0
	bgt _08039CC4
	movs r0, #0x3c
	mov r4, r8
	strh r0, [r4, #0x3c]
	b _0803A14A
_08039CC4:
	adds r1, r0, #0
	subs r1, #0x5a
	cmp r1, #0
	bgt _08039CD4
	movs r0, #0x12
	mov r1, r8
	strh r0, [r1, #0x3c]
	b _0803A14A
_08039CD4:
	movs r0, #0x96
	lsls r0, r0, #1
	mov r2, r8
	strh r0, [r2, #0x3c]
	b _0803A14A
_08039CDE:
	movs r3, #0
	ldrsh r1, [r5, r3]
	ldr r2, _08039D48 @ =gPlayer
	ldr r0, [r2]
	asrs r0, r0, #8
	subs r6, r1, r0
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	subs r7, r1, r0
	cmp r6, #0
	bge _08039CFA
	rsbs r6, r6, #0
_08039CFA:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	bl sa2__sub_8004418
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r1, _08039D4C @ =0xFF1F0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	movs r1, #0x8f
	lsls r1, r1, #1
	cmp r0, r1
	bhi _08039D1A
	movs r6, #0xe0
_08039D1A:
	lsls r0, r6, #0x10
	ldr r2, _08039D50 @ =0xFDFF0000
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	cmp r0, r1
	bhi _08039D2A
	movs r6, #0xc8
	lsls r6, r6, #2
_08039D2A:
	mov r3, sb
	ldrh r2, [r3]
	lsls r0, r2, #0x16
	asrs r1, r0, #0x10
	lsls r0, r6, #0x16
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _08039D54
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r0, r0, r3
	cmp r1, r0
	blt _08039D60
	subs r0, r2, #6
	b _08039D6E
	.align 2, 0
_08039D48: .4byte gPlayer
_08039D4C: .4byte 0xFF1F0000
_08039D50: .4byte 0xFDFF0000
_08039D54:
	cmp r1, r0
	bge _08039D72
	ldr r3, _08039D68 @ =0xFFFFFE80
	adds r0, r0, r3
	cmp r1, r0
	ble _08039D6C
_08039D60:
	mov r0, sb
	strh r6, [r0]
	b _08039D72
	.align 2, 0
_08039D68: .4byte 0xFFFFFE80
_08039D6C:
	adds r0, r2, #6
_08039D6E:
	mov r1, sb
	strh r0, [r1]
_08039D72:
	mov r2, sb
	ldrh r0, [r2]
	ldr r1, _08039DFC @ =0x000003FF
	ands r1, r0
	strh r1, [r2]
	mov r3, r8
	ldrh r0, [r3, #0x3c]
	subs r0, #1
	strh r0, [r3, #0x3c]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08039D8C
	b _0803A14A
_08039D8C:
	movs r1, #0
	ldrsh r0, [r5, r1]
	ldr r3, _08039E00 @ =gPlayer
	ldr r1, [r3]
	asrs r1, r1, #8
	subs r0, r0, r1
	movs r1, #0
	ldrsh r2, [r4, r1]
	ldr r1, [r3, #4]
	asrs r1, r1, #8
	subs r2, r2, r1
	adds r3, r0, #0
	muls r3, r0, r3
	adds r0, r3, #0
	adds r4, r2, #0
	muls r4, r2, r4
	adds r2, r4, #0
	lsls r0, r0, #8
	lsls r2, r2, #8
	adds r0, r0, r2
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xc
	ldr r1, _08039E04 @ =0xFFFFF000
	subs r1, r1, r0
	mov r0, r8
	str r1, [r0, #0x44]
	movs r0, #0xfa
	lsls r0, r0, #8
	ldr r1, [sp, #0xc]
	strh r0, [r1]
	mov r1, r8
	adds r1, #0x60
	movs r0, #0
	strb r0, [r1]
	ldr r2, [sp, #0x10]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	movs r0, #0xf0
	lsls r0, r0, #2
	mov r3, sl
	strh r0, [r3, #0x1a]
	mov r1, sl
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0xb3
	bl m4aSongNumStart
	b _0803A14A
	.align 2, 0
_08039DFC: .4byte 0x000003FF
_08039E00: .4byte gPlayer
_08039E04: .4byte 0xFFFFF000
_08039E08:
	mov r4, r8
	ldr r0, [r4, #0x40]
	rsbs r0, r0, #0
	asrs r0, r0, #8
	subs r0, #0x14
	asrs r0, r0, #4
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	mov r1, r8
	adds r1, #0x60
	ldrb r0, [r1]
	cmp r0, r2
	bhs _08039E2A
	strb r2, [r1]
	bl sub_803A1D8
_08039E2A:
	ldr r0, [sp, #8]
	cmp r0, #2
	bne _08039EB8
	mov r1, r8
	adds r1, #0x62
	movs r0, #0xff
	strb r0, [r1]
	movs r4, #0
	ldr r1, [sp, #0xc]
	strh r4, [r1]
	movs r0, #7
	ldr r2, [sp, #0x10]
	strb r0, [r2]
	mov r0, sl
	adds r0, #0x20
	mov r3, sp
	ldrb r3, [r3, #8]
	strb r3, [r0]
	mov r1, sl
	adds r1, #0x21
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r5, _08039E90 @ =gPlayer
	adds r0, r5, #0
	bl Player_TransitionCancelFlyingAndBoost
	lsls r0, r6, #8
	str r0, [r5]
	lsls r0, r7, #8
	str r0, [r5, #4]
	strh r4, [r5, #8]
	strh r4, [r5, #0xa]
	strh r4, [r5, #0xc]
	ldr r0, [r5, #0x10]
	ldr r1, _08039E94 @ =0x00E00100
	orrs r0, r1
	str r0, [r5, #0x10]
	mov r4, sl
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08039E98
	mov r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	rsbs r0, r0, #0
	asrs r0, r0, #2
	b _08039E9E
	.align 2, 0
_08039E90: .4byte gPlayer
_08039E94: .4byte 0x00E00100
_08039E98:
	mov r3, sb
	ldrh r0, [r3]
	lsrs r0, r0, #2
_08039E9E:
	strb r0, [r5, #0x14]
	ldr r1, _08039EB4 @ =gPlayer
	adds r3, r1, #0
	adds r3, #0x40
	movs r2, #0
	movs r0, #0x28
	strb r0, [r3]
	strh r2, [r1, #0x38]
	strh r2, [r1, #0x3a]
	b _0803A14A
	.align 2, 0
_08039EB4: .4byte gPlayer
_08039EB8:
	mov r4, r8
	ldr r1, [r4, #0x40]
	ldr r0, [r4, #0x44]
	cmp r1, r0
	ble _08039EC4
	b _0803A14A
_08039EC4:
	movs r0, #0
	ldr r1, [sp, #0xc]
	strh r0, [r1]
	ldr r2, [sp, #0x10]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	mov r1, sl
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	b _0803A14A
_08039EE2:
	mov r3, sl
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _08039EF2
	b _0803A14A
_08039EF2:
	movs r0, #0x80
	lsls r0, r0, #2
	ldr r4, [sp, #0xc]
	strh r0, [r4]
	b _0803A076
_08039EFC:
	mov r2, r8
	ldr r0, [r2, #0x40]
	ldr r1, _08039F2C @ =0xFFFFEC00
	cmp r0, r1
	bge _08039F08
	b _0803A14A
_08039F08:
	str r1, [r2, #0x40]
	movs r1, #0
	movs r0, #0
	ldr r3, [sp, #0xc]
	strh r0, [r3]
	movs r0, #0xb8
	lsls r0, r0, #3
	mov r4, sl
	strh r0, [r4, #0x1a]
	mov r0, sl
	adds r0, #0x20
	strb r1, [r0]
	mov r1, sl
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	b _0803A076
	.align 2, 0
_08039F2C: .4byte 0xFFFFEC00
_08039F30:
	mov r2, sb
	ldrh r0, [r2]
	movs r3, #0
	ldrsh r1, [r2, r3]
	cmp r1, #0
	bne _08039F56
	movs r0, #0xb8
	lsls r0, r0, #3
	mov r4, sl
	strh r0, [r4, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r1, [sp, #0xc]
	strh r0, [r1]
	ldr r2, [sp, #0x10]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	b _0803A14A
_08039F56:
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r1, r2
	ble _08039F78
	adds r0, #6
	ldr r3, _08039F74 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	mov r4, sb
	strh r0, [r4]
	cmp r0, #6
	ble _08039F70
	b _0803A14A
_08039F70:
	b _08039F8A
	.align 2, 0
_08039F74: .4byte 0x000003FF
_08039F78:
	subs r0, #6
	ldr r3, _08039F90 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	mov r4, sb
	strh r0, [r4]
	cmp r0, r2
	bgt _08039F8A
	b _0803A14A
_08039F8A:
	movs r0, #0
	strh r0, [r4]
	b _0803A14A
	.align 2, 0
_08039F90: .4byte 0x000003FF
_08039F94:
	mov r0, r8
	ldr r1, [r0, #0x40]
	ldr r0, _08039FB8 @ =0x00000DFF
	cmp r1, r0
	bgt _08039FA0
	b _0803A14A
_08039FA0:
	mov r0, r8
	adds r0, #0x62
	ldrb r0, [r0]
	cmp r0, #0
	bne _08039FBC
	ldr r1, [sp]
	adds r1, #0x99
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08039FC4
	.align 2, 0
_08039FB8: .4byte 0x00000DFF
_08039FBC:
	ldr r1, [sp]
	adds r1, #0x92
	movs r0, #1
	strh r0, [r1]
_08039FC4:
	ldr r0, _08039FD0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0803A14A
	.align 2, 0
_08039FD0: .4byte gCurTask
_08039FD4:
	ldr r2, _08039FF8 @ =gPlayer
	lsls r0, r6, #8
	str r0, [r2]
	lsls r0, r7, #8
	str r0, [r2, #4]
	mov r1, sl
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08039FFC
	mov r3, sb
	movs r4, #0
	ldrsh r0, [r3, r4]
	rsbs r0, r0, #0
	asrs r0, r0, #2
	b _0803A002
	.align 2, 0
_08039FF8: .4byte gPlayer
_08039FFC:
	mov r1, sb
	ldrh r0, [r1]
	lsrs r0, r0, #2
_0803A002:
	strb r0, [r2, #0x14]
	mov r2, sl
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0803A014
	b _0803A14A
_0803A014:
	movs r0, #0xc0
	lsls r0, r0, #3
	ldr r3, [sp, #0xc]
	strh r0, [r3]
	ldr r4, [sp, #0x10]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	b _0803A14A
_0803A026:
	ldr r2, _0803A04C @ =gPlayer
	lsls r0, r6, #8
	str r0, [r2]
	lsls r0, r7, #8
	str r0, [r2, #4]
	mov r1, sl
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0803A050
	mov r3, sb
	movs r4, #0
	ldrsh r0, [r3, r4]
	rsbs r0, r0, #0
	asrs r0, r0, #2
	b _0803A056
	.align 2, 0
_0803A04C: .4byte gPlayer
_0803A050:
	mov r1, sb
	ldrh r0, [r1]
	lsrs r0, r0, #2
_0803A056:
	strb r0, [r2, #0x14]
	mov r2, r8
	ldr r0, [r2, #0x40]
	ldr r1, _0803A080 @ =0xFFFFDC00
	cmp r0, r1
	blt _0803A14A
	str r1, [r2, #0x40]
	movs r2, #0
	ldr r3, [sp, #0xc]
	strh r2, [r3]
	mov r1, r8
	adds r1, #0x4c
	movs r0, #0x10
	strh r0, [r1]
	mov r4, r8
	strh r2, [r4, #0x3c]
_0803A076:
	ldr r1, [sp, #0x10]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _0803A14A
	.align 2, 0
_0803A080: .4byte 0xFFFFDC00
_0803A084:
	ldr r2, _0803A0AC @ =gPlayer
	lsls r0, r6, #8
	str r0, [r2]
	lsls r0, r7, #8
	str r0, [r2, #4]
	mov r3, sl
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	adds r3, r2, #0
	cmp r0, #0
	beq _0803A0B0
	mov r4, sb
	movs r1, #0
	ldrsh r0, [r4, r1]
	rsbs r0, r0, #0
	asrs r0, r0, #2
	b _0803A0B6
	.align 2, 0
_0803A0AC: .4byte gPlayer
_0803A0B0:
	mov r2, sb
	ldrh r0, [r2]
	lsrs r0, r0, #2
_0803A0B6:
	strb r0, [r3, #0x14]
	mov r2, r8
	adds r2, #0x4c
	ldrh r0, [r2]
	mov r4, sb
	ldrh r4, [r4]
	adds r0, r0, r4
	ldr r1, _0803A15C @ =0x000003FF
	ands r0, r1
	mov r1, sb
	strh r0, [r1]
	ldr r1, _0803A160 @ =0x000001FF
	adds r5, r2, #0
	cmp r0, r1
	ble _0803A102
	ldr r6, _0803A164 @ =gRingCount
	ldrh r4, [r6]
	cmp r4, #0
	beq _0803A0FE
	movs r2, #0
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bge _0803A0FE
	cmp r4, #5
	bls _0803A0EA
	movs r4, #5
_0803A0EA:
	ldr r0, [r3]
	asrs r0, r0, #8
	ldr r1, [r3, #4]
	asrs r1, r1, #8
	adds r2, r4, #0
	bl InitScatteringRings
	ldrh r0, [r6]
	subs r0, r0, r4
	strh r0, [r6]
_0803A0FE:
	movs r0, #0x10
	strh r0, [r5]
_0803A102:
	ldr r3, _0803A168 @ =0xFFFFFF00
	adds r0, r3, #0
	mov r4, sb
	ldrh r4, [r4]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	bhi _0803A14A
	ldr r0, _0803A16C @ =0x0000FFF0
	strh r0, [r5]
	mov r1, r8
	ldrh r0, [r1, #0x3c]
	adds r0, #1
	strh r0, [r1, #0x3c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #4
	bne _0803A130
	ldr r1, [sp]
	adds r1, #0x99
	movs r0, #0x33
	strb r0, [r1]
_0803A130:
	mov r2, r8
	ldrh r4, [r2, #0x3c]
	cmp r4, #5
	bne _0803A14A
	mov r3, sl
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	bl sub_803A170
	ldr r0, [sp, #0x10]
	strb r4, [r0]
_0803A14A:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A15C: .4byte 0x000003FF
_0803A160: .4byte 0x000001FF
_0803A164: .4byte gRingCount
_0803A168: .4byte 0xFFFFFF00
_0803A16C: .4byte 0x0000FFF0

	thumb_func_start sub_803A170
sub_803A170: @ 0x0803A170
	push {r4, r5, lr}
	ldr r2, _0803A184 @ =gPlayer
	movs r1, #0x78
	strh r1, [r2, #0x1c]
	adds r5, r2, #0
	cmp r0, #0
	beq _0803A188
	movs r0, #0xfe
	lsls r0, r0, #8
	b _0803A18C
	.align 2, 0
_0803A184: .4byte gPlayer
_0803A188:
	movs r0, #0x80
	lsls r0, r0, #2
_0803A18C:
	strh r0, [r5, #8]
	movs r4, #0
	ldr r0, _0803A1D0 @ =0x0000FA20
	strh r0, [r5, #0xa]
	strb r4, [r5, #0x14]
	ldr r0, [r5, #0x10]
	ldr r1, _0803A1D4 @ =0xFF1FFAC3
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0x10]
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0xf
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #0xe
	bl Player_HandleSpriteYOffsetChange
	movs r0, #6
	strb r0, [r5, #0xe]
	movs r0, #0xe
	strb r0, [r5, #0xf]
	adds r1, r5, #0
	adds r1, #0x3d
	movs r0, #0
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x3e
	strb r4, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803A1D0: .4byte 0x0000FA20
_0803A1D4: .4byte 0xFF1FFAC3

	thumb_func_start sub_803A1D8
sub_803A1D8: @ 0x0803A1D8
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	ldr r0, _0803A2A0 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r6, #0xc0
	lsls r6, r6, #0x12
	adds r0, r4, r6
	mov sb, r0
	ldr r0, _0803A2A4 @ =sub_803A2F8
	ldr r2, _0803A2A8 @ =0x00002101
	ldr r1, _0803A2AC @ =TaskDestructor_803A600
	str r1, [sp]
	movs r1, #0x64
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	adds r6, r5, r6
	ldr r1, _0803A2B0 @ =0x03000050
	adds r0, r4, r1
	ldrh r1, [r0]
	ldr r2, _0803A2B0 @ =0x03000050
	adds r0, r5, r2
	movs r2, #0
	mov r8, r2
	movs r3, #0
	strh r1, [r0]
	ldr r1, _0803A2B4 @ =0x03000052
	adds r0, r4, r1
	ldrh r1, [r0]
	ldr r2, _0803A2B4 @ =0x03000052
	adds r0, r5, r2
	strh r1, [r0]
	ldr r1, _0803A2B8 @ =0x0300004E
	adds r0, r4, r1
	ldrh r1, [r0]
	subs r2, #8
	adds r0, r5, r2
	strh r1, [r0]
	ldr r0, _0803A2BC @ =0x03000060
	adds r4, r4, r0
	ldrb r1, [r4]
	adds r0, r5, r0
	strb r1, [r0]
	movs r0, #4
	str r3, [sp, #4]
	bl VramMalloc
	str r0, [r6, #4]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r6, #0x1a]
	ldr r3, [sp, #4]
	strh r3, [r6, #8]
	ldr r0, _0803A2C0 @ =0x000002B2
	strh r0, [r6, #0xa]
	ldr r1, _0803A2C4 @ =0x03000020
	adds r0, r5, r1
	mov r2, r8
	strb r2, [r0]
	strh r3, [r6, #0x14]
	strh r3, [r6, #0x1c]
	ldr r0, _0803A2C8 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r2, _0803A2CC @ =0x03000022
	adds r1, r5, r2
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0803A2D0 @ =0x03000025
	adds r0, r5, r1
	mov r2, r8
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x28]
	mov r1, sb
	ldr r0, [r1, #0x10]
	movs r2, #0x80
	lsls r2, r2, #3
	ands r0, r2
	ldr r1, _0803A2D4 @ =0x00002030
	orrs r0, r1
	str r0, [r6, #0x10]
	ldr r0, _0803A2D8 @ =0x03000030
	adds r5, r5, r0
	strh r3, [r5]
	ldr r0, [r6, #0x10]
	ands r0, r2
	cmp r0, #0
	beq _0803A2DC
	movs r0, #0xff
	lsls r0, r0, #8
	b _0803A2E0
	.align 2, 0
_0803A2A0: .4byte gCurTask
_0803A2A4: .4byte sub_803A2F8
_0803A2A8: .4byte 0x00002101
_0803A2AC: .4byte TaskDestructor_803A600
_0803A2B0: .4byte 0x03000050
_0803A2B4: .4byte 0x03000052
_0803A2B8: .4byte 0x0300004E
_0803A2BC: .4byte 0x03000060
_0803A2C0: .4byte 0x000002B2
_0803A2C4: .4byte 0x03000020
_0803A2C8: .4byte 0x03000021
_0803A2CC: .4byte 0x03000022
_0803A2D0: .4byte 0x03000025
_0803A2D4: .4byte 0x00002030
_0803A2D8: .4byte 0x03000030
_0803A2DC:
	movs r0, #0x80
	lsls r0, r0, #1
_0803A2E0:
	strh r0, [r5, #2]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #4]
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803A2F8
sub_803A2F8: @ 0x0803A2F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r1, _0803A43C @ =gCurTask
	ldr r0, [r1]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r2, r1
	ldrh r0, [r0]
	adds r0, r0, r1
	ldrh r3, [r0, #6]
	mov r8, r3
	adds r3, r3, r1
	ldrh r0, [r0]
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp]
	ldr r4, _0803A440 @ =0x03000030
	adds r4, r4, r2
	mov sb, r4
	ldr r0, _0803A444 @ =0x03000050
	add r0, r8
	ldrh r0, [r0]
	adds r1, #0x50
	adds r1, r1, r2
	mov sl, r1
	strh r0, [r1]
	ldr r0, _0803A448 @ =0x03000052
	add r0, r8
	ldrh r0, [r0]
	ldr r4, _0803A448 @ =0x03000052
	adds r4, r4, r2
	mov ip, r4
	strh r0, [r4]
	ldr r0, _0803A44C @ =0x0300004E
	add r0, r8
	ldrh r6, [r0]
	adds r4, r6, #0
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0803A36C
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	ldr r1, _0803A450 @ =0xFFFFFE00
	adds r4, r0, r1
	ldr r1, _0803A454 @ =0x000003FF
	ands r4, r1
	adds r6, r1, #0
	ands r6, r0
_0803A36C:
	ldr r1, _0803A458 @ =0x03000060
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	adds r0, #8
	lsls r0, r0, #8
	ldr r2, [r3, #0x40]
	adds r2, r2, r0
	str r2, [r7, #0x40]
	ldr r3, _0803A45C @ =gSineTable
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r1, r4
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r4, #0
	ldrsh r5, [r0, r4]
	asrs r5, r5, #6
	muls r5, r2, r5
	asrs r5, r5, #0x10
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r0, #0
	ldrsh r4, [r1, r0]
	asrs r4, r4, #6
	muls r4, r2, r4
	asrs r4, r4, #0x10
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r5, r5, r0
	mov r3, ip
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r4, r4, r0
	ldr r1, _0803A460 @ =gCamera
	ldrh r0, [r1]
	subs r0, r5, r0
	mov r2, sb
	strh r0, [r2, #6]
	ldrh r0, [r1, #2]
	subs r0, r4, r0
	strh r0, [r2, #8]
	strh r6, [r2]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	mov r1, sb
	bl TransformSprite
	adds r0, r7, #0
	bl DisplaySprite
	ldr r1, [r7, #0x40]
	movs r0, #0x80
	lsls r0, r0, #4
	cmp r1, r0
	bgt _0803A3F0
	ldr r0, _0803A464 @ =0x03000061
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #6
	bne _0803A3F8
_0803A3F0:
	ldr r3, _0803A43C @ =gCurTask
	ldr r0, [r3]
	bl TaskDestroy
_0803A3F8:
	ldr r0, [sp]
	adds r0, #0x94
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _0803A42C
	adds r1, r7, #0
	adds r1, #0x48
	movs r0, #0
	strh r0, [r1]
	lsls r0, r5, #8
	str r0, [r7, #0x54]
	lsls r0, r4, #8
	str r0, [r7, #0x58]
	ldr r0, _0803A43C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803A468 @ =sub_803A46C
	str r0, [r1, #8]
	adds r0, r7, #0
	adds r0, #0x60
	ldrb r1, [r0]
	lsls r1, r1, #2
	movs r0, #0x50
	subs r0, r0, r1
	strh r0, [r7, #0x3c]
_0803A42C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A43C: .4byte gCurTask
_0803A440: .4byte 0x03000030
_0803A444: .4byte 0x03000050
_0803A448: .4byte 0x03000052
_0803A44C: .4byte 0x0300004E
_0803A450: .4byte 0xFFFFFE00
_0803A454: .4byte 0x000003FF
_0803A458: .4byte 0x03000060
_0803A45C: .4byte gSineTable
_0803A460: .4byte gCamera
_0803A464: .4byte 0x03000061
_0803A468: .4byte sub_803A46C

	thumb_func_start sub_803A46C
sub_803A46C: @ 0x0803A46C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _0803A520 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	adds r1, #0x30
	adds r1, r1, r0
	mov r8, r1
	ldr r2, _0803A524 @ =0x03000048
	adds r5, r0, r2
	ldrh r0, [r5]
	adds r0, #0x20
	strh r0, [r5]
	movs r0, #0
	ldrsh r1, [r5, r0]
	ldr r0, [r4, #0x58]
	adds r0, r0, r1
	str r0, [r4, #0x58]
	ldr r1, [r4, #0x54]
	lsls r1, r1, #8
	lsls r0, r0, #8
	asrs r7, r0, #0x10
	adds r0, r7, #0
	adds r0, #8
	asrs r6, r1, #0x10
	ldr r1, _0803A528 @ =sa2__sub_801EC3C
	str r1, [sp]
	adds r1, r6, #0
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F100
	cmp r0, #0
	bge _0803A4D0
	lsls r1, r0, #8
	ldr r0, [r4, #0x58]
	adds r0, r0, r1
	str r0, [r4, #0x58]
	ldrh r1, [r5]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x12
	subs r0, r0, r1
	strh r0, [r5]
_0803A4D0:
	ldr r1, _0803A52C @ =gCamera
	ldrh r0, [r1]
	subs r0, r6, r0
	mov r2, r8
	strh r0, [r2, #6]
	ldrh r0, [r1, #2]
	subs r0, r7, r0
	strh r0, [r2, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	mov r1, r8
	bl TransformSprite
	adds r0, r4, #0
	bl DisplaySprite
	ldrh r0, [r4, #0x3c]
	subs r0, #1
	strh r0, [r4, #0x3c]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803A510
	lsls r0, r6, #8
	lsls r1, r7, #8
	bl sub_8017540
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
_0803A510:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A520: .4byte gCurTask
_0803A524: .4byte 0x03000048
_0803A528: .4byte sa2__sub_801EC3C
_0803A52C: .4byte gCamera

	thumb_func_start TaskDestructor_EggX
TaskDestructor_EggX: @ 0x0803A530
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x10]
	bl VramFree
	ldr r0, [r4, #0x48]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_803A54C
sub_803A54C: @ 0x0803A54C
	push {r4, lr}
	sub sp, #4
	ldr r2, _0803A588 @ =gLoadedSaveGame
	ldrh r0, [r2, #8]
	cmp r0, #0xd
	bhi _0803A55A
	movs r0, #0xe
_0803A55A:
	movs r4, #0
	movs r1, #0
	strh r0, [r2, #8]
	ldr r0, _0803A58C @ =sub_8038554
	ldr r2, _0803A590 @ =0x00001FFF
	str r1, [sp]
	movs r1, #0x10
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r1, #0xd2
	lsls r1, r1, #1
	strh r1, [r0, #6]
	strb r4, [r0, #9]
	strb r4, [r0, #8]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803A588: .4byte gLoadedSaveGame
_0803A58C: .4byte sub_8038554
_0803A590: .4byte 0x00001FFF

	thumb_func_start sub_803A594
sub_803A594: @ 0x0803A594
	push {r4, lr}
	sub sp, #4
	ldr r0, _0803A5C8 @ =Task_Strc10_803891C
	ldr r2, _0803A5CC @ =0x00001FFF
	movs r4, #0
	str r4, [sp]
	movs r1, #0x10
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #0
	movs r1, #0x20
	strh r1, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	movs r1, #0x78
	strh r1, [r0, #6]
	strb r2, [r0, #8]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803A5C8: .4byte Task_Strc10_803891C
_0803A5CC: .4byte 0x00001FFF

	thumb_func_start TaskDestructor_803A5D0
TaskDestructor_803A5D0: @ 0x0803A5D0
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #4]
	bl VramFree
	ldr r0, [r4, #0x34]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_EggX48
TaskDestructor_EggX48: @ 0x0803A5EC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_803A600
TaskDestructor_803A600: @ 0x0803A600
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

@ Inline?
	thumb_func_start sub_803A614
sub_803A614: @ 0x0803A614
	sub sp, #4
	mov r1, sp
	ldr r2, _0803A63C @ =0x00007FFF
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0803A640 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _0803A644 @ =gObjPalette+0x180
	str r0, [r1, #4]
	ldr r0, _0803A648 @ =0x81000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _0803A64C @ =gFlags
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	add sp, #4
	bx lr
	.align 2, 0
_0803A63C: .4byte 0x00007FFF
_0803A640: .4byte 0x040000D4
_0803A644: .4byte gObjPalette+0x180
_0803A648: .4byte 0x81000010
_0803A64C: .4byte gFlags

@ Inline?
	thumb_func_start sub_803A650
sub_803A650: @ 0x0803A650
	push {r4, r5, r6, r7, lr}
	ldr r2, _0803A690 @ =gCurTask
	ldr r2, [r2]
	ldrh r3, [r2, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r6, r3, r2
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	ldr r3, _0803A694 @ =gPlayer
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	adds r7, r0, #0
	ldr r0, _0803A698 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0803A6A0
	ldr r3, _0803A69C @ =gPartner
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	b _0803A6A2
	.align 2, 0
_0803A690: .4byte gCurTask
_0803A694: .4byte gPlayer
_0803A698: .4byte gNumSingleplayerCharacters
_0803A69C: .4byte gPartner
_0803A6A0:
	movs r0, #0
_0803A6A2:
	cmp r7, #2
	beq _0803A6AA
	cmp r0, #2
	bne _0803A6D4
_0803A6AA:
	ldr r0, _0803A6DC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldrh r2, [r0, #6]
	ldr r0, _0803A6E0 @ =0x03000044
	adds r3, r2, r0
	adds r0, #0x20
	adds r1, r2, r0
	movs r0, #3
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _0803A6E4 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r0, _0803A6E8 @ =0x03000065
	adds r2, r2, r0
	movs r0, #0xff
	strb r0, [r2]
_0803A6D4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A6DC: .4byte gCurTask
_0803A6E0: .4byte 0x03000044
_0803A6E4: .4byte 0xFFFFBFFF
_0803A6E8: .4byte 0x03000065

	thumb_func_start sub_803A6EC
sub_803A6EC: @ 0x0803A6EC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0xc
	ldr r6, [sp, #0x20]
	ldr r4, [sp, #0x24]
	mov r8, r4
	movs r5, #0
	str r5, [sp, #4]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r4, _0803A76C @ =0xFFFFFF00
	ldr r5, [sp, #8]
	ands r4, r5
	orrs r4, r2
	str r4, [sp, #8]
	lsls r3, r3, #0x18
	lsrs r3, r3, #8
	ldr r5, _0803A770 @ =0xFF00FFFF
	ands r5, r4
	orrs r5, r3
	str r5, [sp, #8]
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x10
	ldr r2, _0803A774 @ =0xFFFF00FF
	ands r2, r5
	orrs r2, r6
	str r2, [sp, #8]
	mov r3, r8
	lsls r3, r3, #0x18
	mov r8, r3
	ldr r3, _0803A778 @ =0x00FFFFFF
	ands r2, r3
	mov r4, r8
	orrs r4, r2
	str r4, [sp, #8]
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	ldr r0, _0803A77C @ =gPlayer
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_800C1E8
	adds r4, r0, #0
	ldr r0, _0803A780 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0803A788
	ldr r0, _0803A784 @ =gPartner
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_800C1E8
	b _0803A78A
	.align 2, 0
_0803A76C: .4byte 0xFFFFFF00
_0803A770: .4byte 0xFF00FFFF
_0803A774: .4byte 0xFFFF00FF
_0803A778: .4byte 0x00FFFFFF
_0803A77C: .4byte gPlayer
_0803A780: .4byte gNumSingleplayerCharacters
_0803A784: .4byte gPartner
_0803A788:
	movs r0, #0
_0803A78A:
	orrs r4, r0
	cmp r4, #2
	bne _0803A7B2
	ldr r0, _0803A7C0 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	ldr r5, _0803A7C4 @ =0x03000044
	adds r3, r2, r5
	ldr r0, _0803A7C8 @ =0x03000064
	adds r1, r2, r0
	movs r0, #3
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _0803A7CC @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r3, _0803A7D0 @ =0x03000065
	adds r2, r2, r3
	movs r0, #0xff
	strb r0, [r2]
_0803A7B2:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803A7C0: .4byte gCurTask
_0803A7C4: .4byte 0x03000044
_0803A7C8: .4byte 0x03000064
_0803A7CC: .4byte 0xFFFFBFFF
_0803A7D0: .4byte 0x03000065

	thumb_func_start sub_803A7D4
sub_803A7D4: @ 0x0803A7D4
	push {r4, r5, r6, r7, lr}
	ldr r2, _0803A814 @ =gCurTask
	ldr r2, [r2]
	ldrh r3, [r2, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r6, r3, r2
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	ldr r3, _0803A818 @ =gPlayer
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	adds r7, r0, #0
	ldr r0, _0803A81C @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0803A824
	ldr r3, _0803A820 @ =gPartner
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	b _0803A826
	.align 2, 0
_0803A814: .4byte gCurTask
_0803A818: .4byte gPlayer
_0803A81C: .4byte gNumSingleplayerCharacters
_0803A820: .4byte gPartner
_0803A824:
	movs r0, #0
_0803A826:
	cmp r7, #2
	beq _0803A82E
	cmp r0, #2
	bne _0803A858
_0803A82E:
	ldr r0, _0803A860 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldrh r2, [r0, #6]
	ldr r0, _0803A864 @ =0x03000044
	adds r3, r2, r0
	adds r0, #0x20
	adds r1, r2, r0
	movs r0, #3
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _0803A868 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r0, _0803A86C @ =0x03000065
	adds r2, r2, r0
	movs r0, #0xff
	strb r0, [r2]
_0803A858:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A860: .4byte gCurTask
_0803A864: .4byte 0x03000044
_0803A868: .4byte 0xFFFFBFFF
_0803A86C: .4byte 0x03000065

	thumb_func_start sub_803A870
sub_803A870: @ 0x0803A870
	ldr r0, _0803A8A0 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	ldr r0, _0803A8A4 @ =0x03000044
	adds r1, r2, r0
	adds r0, #0x20
	adds r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq _0803A89C
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0803A89C
	movs r0, #0
	strb r0, [r3]
	ldr r0, _0803A8A8 @ =0x03000065
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
_0803A89C:
	bx lr
	.align 2, 0
_0803A8A0: .4byte gCurTask
_0803A8A4: .4byte 0x03000044
_0803A8A8: .4byte 0x03000065

	thumb_func_start sub_803A8AC
sub_803A8AC: @ 0x0803A8AC
	ldr r0, _0803A8C4 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _0803A8C8 @ =0x0300000C
	adds r2, r0, r1
	adds r1, #0x38
	adds r0, r0, r1
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	bx lr
	.align 2, 0
_0803A8C4: .4byte gCurTask
_0803A8C8: .4byte 0x0300000C

	thumb_func_start sub_803A8CC
sub_803A8CC: @ 0x0803A8CC
	push {r4, lr}
	ldr r2, _0803A8F4 @ =gCurTask
	ldr r2, [r2]
	ldrh r2, [r2, #6]
	ldr r3, _0803A8F8 @ =0x0300000C
	adds r2, r2, r3
	ldr r4, _0803A8FC @ =gCamera
	ldrh r3, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r3
	strh r0, [r2, #0x16]
	ldrh r0, [r4, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r2, #0x18]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803A8F4: .4byte gCurTask
_0803A8F8: .4byte 0x0300000C
_0803A8FC: .4byte gCamera

	thumb_func_start sub_803A900
sub_803A900: @ 0x0803A900
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r3, r2, #0
	ldr r0, _0803A91C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	cmp r2, #2
	beq _0803A934
	cmp r2, #2
	bgt _0803A920
	cmp r2, #1
	beq _0803A926
	b _0803A948
	.align 2, 0
_0803A91C: .4byte gCurTask
_0803A920:
	cmp r3, #3
	beq _0803A940
	b _0803A948
_0803A926:
	ldr r0, _0803A930 @ =0x03000078
	adds r1, r1, r0
	movs r0, #8
	b _0803A946
	.align 2, 0
_0803A930: .4byte 0x03000078
_0803A934:
	ldr r0, _0803A93C @ =0x03000078
	adds r1, r1, r0
	movs r0, #9
	b _0803A946
	.align 2, 0
_0803A93C: .4byte 0x03000078
_0803A940:
	ldr r0, _0803A94C @ =0x03000078
	adds r1, r1, r0
	movs r0, #0xa
_0803A946:
	strb r0, [r1]
_0803A948:
	bx lr
	.align 2, 0
_0803A94C: .4byte 0x03000078

@ --- End of X-Zone Final Boss
