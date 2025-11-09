.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ --- Start of Sound Test

.if 0
.endif

@ Sound test / Soundtest
	thumb_func_start Task_SoundTestInit
Task_SoundTestInit: @ 0x0805F288
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r4, _0805F314 @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	ldr r2, [r6, #0xc]
	ldrh r0, [r2, #6]
	adds r0, r0, r1
	str r0, [sp]
	ldr r0, [r6, #0x10]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [r6, #0x14]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #8]
	ldr r0, [r6, #0x18]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #0xc]
	ldr r0, [r6, #0x1c]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #0x10]
	ldr r0, [r6, #0x20]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #0x14]
	ldr r7, [r6, #0x24]
	adds r7, #1
	movs r1, #4
	ldrsh r0, [r6, r1]
	cmp r0, #1
	bne _0805F320
	movs r3, #6
	ldrsh r1, [r6, r3]
	ldr r0, _0805F318 @ =0x00001FFF
	cmp r1, r0
	ble _0805F320
	adds r0, r2, #0
	bl TaskDestroy
	ldr r0, [r6, #0x10]
	bl TaskDestroy
	ldr r0, [r6, #0x14]
	bl TaskDestroy
	ldr r0, [r6, #0x18]
	bl TaskDestroy
	ldr r0, [r6, #0x1c]
	bl TaskDestroy
	ldr r0, [r6, #0x20]
	bl TaskDestroy
	ldr r1, [r4]
	ldr r0, _0805F31C @ =sub_805FDB0
	str r0, [r1, #8]
	b _0805F93A
	.align 2, 0
_0805F314: .4byte gCurTask
_0805F318: .4byte 0x00001FFF
_0805F31C: .4byte sub_805FDB0
_0805F320:
	ldr r2, _0805F360 @ =gBgScrollRegs
	ldrh r0, [r2]
	adds r0, #1
	ldrh r1, [r2, #2]
	adds r1, #1
	movs r3, #0xff
	ands r0, r3
	strh r0, [r2]
	ands r1, r3
	strh r1, [r2, #2]
	adds r1, r6, #0
	adds r1, #0x28
	ldrb r5, [r1]
	ldr r0, _0805F364 @ =gRepeatedKeys
	ldrh r2, [r0]
	movs r0, #0x20
	ands r0, r2
	mov r8, r1
	cmp r0, #0
	beq _0805F39A
	cmp r5, #0
	bne _0805F370
	ldr r0, _0805F368 @ =gLoadedSaveGame
	ldr r4, _0805F36C @ =0x00000424
	adds r0, r0, r4
	ldrb r0, [r0]
	movs r5, #0x26
	cmp r0, #0
	beq _0805F376
	movs r5, #0x29
	b _0805F376
	.align 2, 0
_0805F360: .4byte gBgScrollRegs
_0805F364: .4byte gRepeatedKeys
_0805F368: .4byte gLoadedSaveGame
_0805F36C: .4byte 0x00000424
_0805F370:
	subs r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0805F376:
	adds r1, r6, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [sp]
	movs r2, #0x88
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r3, [sp]
	movs r4, #0x87
	lsls r4, r4, #1
	adds r1, r3, r4
	movs r0, #8
	strh r0, [r1]
	b _0805F3E4
_0805F39A:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _0805F3E4
	ldr r0, _0805F3B4 @ =gLoadedSaveGame
	ldr r1, _0805F3B8 @ =0x00000424
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805F3BC
	adds r0, r5, #1
	movs r1, #0x2a
	b _0805F3C0
	.align 2, 0
_0805F3B4: .4byte gLoadedSaveGame
_0805F3B8: .4byte 0x00000424
_0805F3BC:
	adds r0, r5, #1
	movs r1, #0x27
_0805F3C0:
	bl Mod
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r6, #0
	adds r0, #0x2b
	movs r2, #0
	movs r1, #1
	strb r1, [r0]
	ldr r3, [sp]
	movs r4, #0x88
	lsls r4, r4, #1
	adds r0, r3, r4
	strb r1, [r0]
	movs r1, #0x87
	lsls r1, r1, #1
	adds r0, r3, r1
	strh r2, [r0]
_0805F3E4:
	ldr r2, [sp]
	movs r4, #0x88
	lsls r4, r4, #1
	adds r3, r2, r4
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	beq _0805F42A
	cmp r0, #0
	ble _0805F412
	movs r0, #0x87
	lsls r0, r0, #1
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #8
	bne _0805F42A
	movs r0, #0
	strb r0, [r3]
	b _0805F42A
_0805F412:
	ldr r1, [sp]
	movs r4, #0x87
	lsls r4, r4, #1
	adds r2, r1, r4
	ldrh r0, [r2]
	adds r1, r0, #0
	cmp r1, #0
	beq _0805F428
	subs r0, #1
	strh r0, [r2]
	b _0805F42A
_0805F428:
	strb r1, [r3]
_0805F42A:
	movs r0, #0x86
	lsls r0, r0, #1
	ldr r2, [sp]
	adds r1, r2, r0
	strb r5, [r1]
	ldr r3, [sp, #4]
	adds r1, r3, r0
	strb r5, [r1]
	ldr r4, [sp, #8]
	adds r1, r4, r0
	strb r5, [r1]
	ldr r2, [sp, #0xc]
	adds r1, r2, r0
	strb r5, [r1]
	ldr r3, [sp, #0x10]
	adds r1, r3, r0
	strb r5, [r1]
	ldr r4, [sp, #0x14]
	adds r0, r4, r0
	strb r5, [r0]
	mov r0, r8
	strb r5, [r0]
	cmp r7, #2
	bne _0805F472
	ldr r0, _0805F558 @ =gMPlayInfo_BGM
	bl m4aMPlayContinue
	ldr r0, _0805F55C @ =gMPlayInfo_SE1
	bl m4aMPlayContinue
	ldr r0, _0805F560 @ =gMPlayInfo_SE2
	bl m4aMPlayContinue
	ldr r0, _0805F564 @ =gMPlayInfo_SE3
	bl m4aMPlayContinue
_0805F472:
	adds r0, r6, #0
	bl sub_805423C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805F4D2
	ldr r0, _0805F568 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805F4D2
	cmp r7, #0x78
	bhi _0805F4D2
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0805F4D2
	movs r7, #0x79
	ldr r0, _0805F56C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	ldrh r2, [r0, #6]
	adds r0, r2, r1
	ldr r4, _0805F570 @ =0x0300010D
	adds r3, r2, r4
	movs r1, #2
	strb r1, [r3]
	ldr r1, _0805F574 @ =0x0300010E
	adds r3, r2, r1
	movs r4, #0
	movs r1, #0x78
	strh r1, [r3]
	ldr r1, _0805F578 @ =0x03000021
	adds r3, r2, r1
	movs r1, #0xff
	strb r1, [r3]
	ldr r1, _0805F57C @ =0x00000357
	strh r1, [r0, #0xa]
	ldr r3, _0805F580 @ =0x03000020
	adds r2, r2, r3
	strb r4, [r2]
	bl UpdateSpriteAnimation
_0805F4D2:
	cmp r7, #1
	bls _0805F588
	ldr r0, _0805F568 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805F588
	movs r4, #4
	ldrsh r0, [r6, r4]
	cmp r0, #1
	beq _0805F588
	cmp r7, #0x78
	bls _0805F588
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0805F588
	ldr r0, _0805F558 @ =gMPlayInfo_BGM
	movs r1, #1
	bl m4aMPlayFadeOut
	ldr r0, _0805F55C @ =gMPlayInfo_SE1
	movs r1, #1
	bl m4aMPlayFadeOut
	ldr r0, _0805F560 @ =gMPlayInfo_SE2
	movs r1, #1
	bl m4aMPlayFadeOut
	ldr r0, _0805F564 @ =gMPlayInfo_SE3
	movs r1, #1
	bl m4aMPlayFadeOut
	ldr r1, _0805F584 @ =sSoundTestSongIds
	lsls r0, r5, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl m4aSongNumStart
	ldr r0, _0805F56C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r0, r0, r5
	ldr r0, [r0, #0x10]
	ldrh r1, [r0, #6]
	ldr r0, _0805F570 @ =0x0300010D
	adds r2, r1, r0
	movs r0, #2
	strb r0, [r2]
	ldr r2, _0805F574 @ =0x0300010E
	adds r1, r1, r2
	movs r0, #0x78
	strh r0, [r1]
	adds r3, r6, #0
	adds r3, #0x2a
	str r3, [sp, #0x18]
	movs r4, #0x29
	adds r4, r4, r6
	mov sl, r4
	movs r5, #0x2c
	adds r5, r5, r6
	mov sb, r5
	b _0805F738
	.align 2, 0
_0805F558: .4byte gMPlayInfo_BGM
_0805F55C: .4byte gMPlayInfo_SE1
_0805F560: .4byte gMPlayInfo_SE2
_0805F564: .4byte gMPlayInfo_SE3
_0805F568: .4byte gPressedKeys
_0805F56C: .4byte gCurTask
_0805F570: .4byte 0x0300010D
_0805F574: .4byte 0x0300010E
_0805F578: .4byte 0x03000021
_0805F57C: .4byte 0x00000357
_0805F580: .4byte 0x03000020
_0805F584: .4byte sSoundTestSongIds
_0805F588:
	movs r4, #0
	adds r0, r6, #0
	adds r0, #0x2a
	str r0, [sp, #0x18]
	movs r1, #0x29
	adds r1, r1, r6
	mov sl, r1
	movs r2, #0x2c
	adds r2, r2, r6
	mov sb, r2
	ldr r3, _0805F5C0 @ =0x0000FFFF
	mov ip, r3
	adds r2, r0, #0
	movs r5, #3
	mov r8, r5
	movs r3, #0x78
_0805F5A8:
	cmp r4, #0
	bne _0805F610
	ldr r1, _0805F5C4 @ =gMPlayInfo_BGM
	ldr r0, [r1, #4]
	mov r5, ip
	ands r0, r5
	cmp r0, #0
	beq _0805F5C8
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	b _0805F72A
	.align 2, 0
_0805F5C0: .4byte 0x0000FFFF
_0805F5C4: .4byte gMPlayInfo_BGM
_0805F5C8:
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805F5FC
	cmp r7, #0x64
	bls _0805F5FC
	movs r1, #4
	ldrsh r0, [r6, r1]
	cmp r0, #1
	beq _0805F5FC
	ldr r5, _0805F604 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	ldrh r1, [r0, #6]
	ldr r5, _0805F608 @ =0x0300010D
	adds r5, r1, r5
	mov r0, r8
	strb r0, [r5]
	ldr r5, _0805F60C @ =0x0300010E
	adds r1, r1, r5
	strh r3, [r1]
_0805F5FC:
	ldrb r1, [r2]
	movs r0, #0xfe
	b _0805F728
	.align 2, 0
_0805F604: .4byte gCurTask
_0805F608: .4byte 0x0300010D
_0805F60C: .4byte 0x0300010E
_0805F610:
	cmp r4, #1
	bne _0805F674
	ldr r1, _0805F628 @ =gMPlayInfo_SE1
	ldr r0, [r1, #4]
	mov r5, ip
	ands r0, r5
	cmp r0, #0
	beq _0805F62C
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	b _0805F72A
	.align 2, 0
_0805F628: .4byte gMPlayInfo_SE1
_0805F62C:
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0805F660
	cmp r7, #0x64
	bls _0805F660
	movs r1, #4
	ldrsh r0, [r6, r1]
	cmp r0, #1
	beq _0805F660
	ldr r5, _0805F668 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	ldrh r1, [r0, #6]
	ldr r5, _0805F66C @ =0x0300010D
	adds r5, r1, r5
	mov r0, r8
	strb r0, [r5]
	ldr r5, _0805F670 @ =0x0300010E
	adds r1, r1, r5
	strh r3, [r1]
_0805F660:
	ldrb r1, [r2]
	movs r0, #0xfd
	b _0805F728
	.align 2, 0
_0805F668: .4byte gCurTask
_0805F66C: .4byte 0x0300010D
_0805F670: .4byte 0x0300010E
_0805F674:
	cmp r4, #2
	bne _0805F6D8
	ldr r1, _0805F68C @ =gMPlayInfo_SE2
	ldr r0, [r1, #4]
	mov r5, ip
	ands r0, r5
	cmp r0, #0
	beq _0805F690
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	b _0805F72A
	.align 2, 0
_0805F68C: .4byte gMPlayInfo_SE2
_0805F690:
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0805F6C4
	cmp r7, #0x64
	bls _0805F6C4
	movs r1, #4
	ldrsh r0, [r6, r1]
	cmp r0, #1
	beq _0805F6C4
	ldr r5, _0805F6CC @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	ldrh r1, [r0, #6]
	ldr r5, _0805F6D0 @ =0x0300010D
	adds r5, r1, r5
	mov r0, r8
	strb r0, [r5]
	ldr r5, _0805F6D4 @ =0x0300010E
	adds r1, r1, r5
	strh r3, [r1]
_0805F6C4:
	ldrb r1, [r2]
	movs r0, #0xfb
	b _0805F728
	.align 2, 0
_0805F6CC: .4byte gCurTask
_0805F6D0: .4byte 0x0300010D
_0805F6D4: .4byte 0x0300010E
_0805F6D8:
	ldr r1, _0805F6EC @ =gMPlayInfo_SE3
	ldr r0, [r1, #4]
	mov r5, ip
	ands r0, r5
	cmp r0, #0
	beq _0805F6F0
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	b _0805F72A
	.align 2, 0
_0805F6EC: .4byte gMPlayInfo_SE3
_0805F6F0:
	ldrb r1, [r2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0805F724
	cmp r7, #0x64
	bls _0805F724
	movs r1, #4
	ldrsh r0, [r6, r1]
	cmp r0, #1
	beq _0805F724
	ldr r5, _0805F774 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	ldrh r1, [r0, #6]
	ldr r5, _0805F778 @ =0x0300010D
	adds r5, r1, r5
	mov r0, r8
	strb r0, [r5]
	ldr r5, _0805F77C @ =0x0300010E
	adds r1, r1, r5
	strh r3, [r1]
_0805F724:
	ldrb r1, [r2]
	movs r0, #0xf7
_0805F728:
	ands r0, r1
_0805F72A:
	strb r0, [r2]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bhi _0805F738
	b _0805F5A8
_0805F738:
	ldr r1, [sp, #0x18]
	ldrb r0, [r1]
	cmp r0, #0
	beq _0805F780
	movs r2, #4
	ldrsh r0, [r6, r2]
	cmp r0, #1
	beq _0805F780
	cmp r7, #0x78
	bls _0805F786
	movs r2, #2
	ldr r0, _0805F774 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r0, r0, r3
	ldr r0, [r0, #0x10]
	ldrh r0, [r0, #6]
	ldr r4, _0805F778 @ =0x0300010D
	adds r1, r0, r4
	strb r2, [r1]
	ldr r5, _0805F77C @ =0x0300010E
	adds r0, r0, r5
	movs r1, #0x78
	strh r1, [r0]
	movs r0, #1
	mov r1, sl
	strb r0, [r1]
	b _0805F786
	.align 2, 0
_0805F774: .4byte gCurTask
_0805F778: .4byte 0x0300010D
_0805F77C: .4byte 0x0300010E
_0805F780:
	movs r0, #0
	mov r2, sl
	strb r0, [r2]
_0805F786:
	ldr r0, _0805F86C @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0805F794
	b _0805F8D0
_0805F794:
	movs r3, #4
	ldrsh r0, [r6, r3]
	cmp r0, #1
	beq _0805F826
	mov r4, sl
	ldrb r0, [r4]
	cmp r0, #0
	bne _0805F826
	mov r5, sb
	ldrb r0, [r5]
	cmp r0, #0
	bne _0805F826
	cmp r7, #0x78
	bls _0805F826
	movs r5, #1
	adds r4, r5, #0
	ands r4, r1
	cmp r4, #0
	bne _0805F826
	movs r0, #0x6b
	bl m4aSongNumStart
	str r4, [r6, #0x24]
	movs r4, #0
	strh r5, [r6, #4]
	ldrh r1, [r6, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	subs r0, r0, r1
	strh r0, [r6, #6]
	movs r0, #0xc0
	strh r0, [r6, #8]
	ldr r3, _0805F870 @ =gCurTask
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r0, r0, r5
	ldr r0, [r0, #0x10]
	ldrh r0, [r0, #6]
	ldr r2, _0805F874 @ =0x0300010D
	adds r1, r0, r2
	strb r4, [r1]
	ldr r5, _0805F878 @ =0x0300010E
	adds r0, r0, r5
	movs r2, #0x78
	strh r2, [r0]
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	ldrh r0, [r0, #6]
	subs r5, #1
	adds r1, r0, r5
	strb r4, [r1]
	ldr r1, _0805F878 @ =0x0300010E
	adds r0, r0, r1
	strh r2, [r0]
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r0, r0, r3
	ldr r0, [r0, #0x10]
	ldrh r0, [r0, #6]
	adds r1, r0, r5
	strb r4, [r1]
	ldr r4, _0805F878 @ =0x0300010E
	adds r0, r0, r4
	strh r2, [r0]
_0805F826:
	ldr r0, _0805F86C @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0805F8D0
	movs r5, #4
	ldrsh r0, [r6, r5]
	cmp r0, #1
	beq _0805F8D0
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0
	beq _0805F8D0
	mov r2, sb
	ldrb r0, [r2]
	cmp r0, #0
	bne _0805F8D8
	movs r4, #0
	movs r3, #1
	mov r8, r3
	movs r5, #0xa
_0805F852:
	cmp r4, #0
	bne _0805F880
	ldr r1, [sp, #0x18]
	ldrb r0, [r1]
	mov r2, r8
	ands r0, r2
	cmp r0, #0
	beq _0805F8BE
	mov r3, sb
	strb r5, [r3]
	ldr r0, _0805F87C @ =gMPlayInfo_BGM
	b _0805F896
	.align 2, 0
_0805F86C: .4byte gPressedKeys
_0805F870: .4byte gCurTask
_0805F874: .4byte 0x0300010D
_0805F878: .4byte 0x0300010E
_0805F87C: .4byte gMPlayInfo_BGM
_0805F880:
	cmp r4, #1
	bne _0805F8A4
	ldr r1, [sp, #0x18]
	ldrb r0, [r1]
	asrs r0, r0, #1
	ands r0, r4
	cmp r0, #0
	beq _0805F8BE
	mov r2, sb
	strb r5, [r2]
	ldr r0, _0805F8A0 @ =gMPlayInfo_SE1
_0805F896:
	movs r1, #1
	bl m4aMPlayFadeOut
	b _0805F8BE
	.align 2, 0
_0805F8A0: .4byte gMPlayInfo_SE1
_0805F8A4:
	ldr r3, [sp, #0x18]
	ldrb r0, [r3]
	asrs r0, r4
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _0805F8BE
	mov r2, sb
	strb r5, [r2]
	ldr r0, _0805F8CC @ =gMPlayInfo_SE3
	movs r1, #1
	bl m4aMPlayFadeOut
_0805F8BE:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0805F852
	b _0805F8E0
	.align 2, 0
_0805F8CC: .4byte gMPlayInfo_SE3
_0805F8D0:
	mov r3, sb
	ldrb r0, [r3]
	cmp r0, #0
	beq _0805F8E0
_0805F8D8:
	mov r4, sb
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
_0805F8E0:
	mov r5, sl
	ldrb r2, [r5]
	ldr r1, _0805F94C @ =0x0000010D
	ldr r3, [sp]
	adds r0, r3, r1
	strb r2, [r0]
	ldrb r2, [r5]
	ldr r4, [sp, #8]
	adds r0, r4, r1
	strb r2, [r0]
	ldrb r2, [r5]
	ldr r5, [sp, #0xc]
	adds r0, r5, r1
	strb r2, [r0]
	mov r0, sl
	ldrb r2, [r0]
	ldr r3, [sp, #0x10]
	adds r0, r3, r1
	strb r2, [r0]
	mov r4, sl
	ldrb r0, [r4]
	ldr r5, [sp, #0x14]
	adds r1, r5, r1
	strb r0, [r1]
	movs r0, #0x84
	lsls r0, r0, #1
	ldr r2, [sp]
	adds r1, r2, r0
	str r7, [r1]
	ldr r3, [sp, #4]
	adds r1, r3, r0
	str r7, [r1]
	ldr r4, [sp, #8]
	adds r1, r4, r0
	str r7, [r1]
	ldr r5, [sp, #0xc]
	adds r1, r5, r0
	str r7, [r1]
	ldr r2, [sp, #0x10]
	adds r1, r2, r0
	str r7, [r1]
	ldr r3, [sp, #0x14]
	adds r0, r3, r0
	str r7, [r0]
	str r7, [r6, #0x24]
_0805F93A:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805F94C: .4byte 0x0000010D

	thumb_func_start sub_805F950
sub_805F950: @ 0x0805F950
	push {r4, r5, r6, r7, lr}
	ldr r0, _0805F9A0 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldr r1, _0805F9A4 @ =0x03000108
	adds r0, r5, r1
	ldr r6, [r0]
	ldr r2, _0805F9A8 @ =0x0300010D
	adds r3, r5, r2
	ldrb r0, [r3]
	cmp r0, #0
	beq _0805F972
	cmp r6, #0x77
	bhi _0805F9B8
_0805F972:
	movs r7, #0
	movs r0, #0xb4
	strh r0, [r4, #0x16]
	movs r0, #0x78
	strh r0, [r4, #0x18]
	ldr r0, _0805F9AC @ =0x00000355
	strh r0, [r4, #0xa]
	ldr r0, _0805F9B0 @ =0x03000020
	adds r2, r5, r0
	strb r7, [r2]
	cmp r6, #0x77
	beq _0805F98C
	b _0805FAA8
_0805F98C:
	adds r0, #1
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #1
	strb r0, [r3]
	ldr r0, _0805F9B4 @ =0x00000356
	strh r0, [r4, #0xa]
	strb r7, [r2]
	b _0805FAA8
	.align 2, 0
_0805F9A0: .4byte gCurTask
_0805F9A4: .4byte 0x03000108
_0805F9A8: .4byte 0x0300010D
_0805F9AC: .4byte 0x00000355
_0805F9B0: .4byte 0x03000020
_0805F9B4: .4byte 0x00000356
_0805F9B8:
	cmp r0, #1
	bne _0805F9DC
	movs r1, #0
	movs r0, #0xb4
	strh r0, [r4, #0x16]
	movs r0, #0x78
	strh r0, [r4, #0x18]
	ldr r0, _0805F9D4 @ =0x00000356
_0805F9C8:
	strh r0, [r4, #0xa]
	ldr r2, _0805F9D8 @ =0x03000020
	adds r0, r5, r2
	strb r1, [r0]
	b _0805FAA8
	.align 2, 0
_0805F9D4: .4byte 0x00000356
_0805F9D8: .4byte 0x03000020
_0805F9DC:
	cmp r0, #2
	bne _0805FA6C
	adds r0, r6, #0
	movs r1, #0xfa
	bl Mod
	cmp r0, #0x77
	bgt _0805FA00
	movs r1, #0
	movs r0, #0xa4
	strh r0, [r4, #0x16]
	movs r0, #0x78
	strh r0, [r4, #0x18]
	ldr r0, _0805F9FC @ =0x00000357
	b _0805F9C8
	.align 2, 0
_0805F9FC: .4byte 0x00000357
_0805FA00:
	adds r0, r6, #0
	movs r1, #0xfa
	bl Mod
	cmp r0, #0x7c
	ble _0805FA40
	adds r0, r6, #0
	movs r1, #0xfa
	bl Mod
	cmp r0, #0xf4
	bgt _0805FA40
	movs r1, #0
	movs r0, #0xc4
	strh r0, [r4, #0x16]
	movs r0, #0x78
	strh r0, [r4, #0x18]
	ldr r0, _0805FA38 @ =0x00000357
	strh r0, [r4, #0xa]
	ldr r2, _0805FA3C @ =0x03000020
	adds r0, r5, r2
	strb r1, [r0]
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _0805FAAE
	.align 2, 0
_0805FA38: .4byte 0x00000357
_0805FA3C: .4byte 0x03000020
_0805FA40:
	movs r0, #0xb4
	strh r0, [r4, #0x16]
	movs r0, #0x78
	strh r0, [r4, #0x18]
	ldr r0, _0805FA60 @ =0x00000357
	strh r0, [r4, #0xa]
	ldr r0, _0805FA64 @ =0x03000020
	adds r1, r5, r0
	movs r0, #1
	strb r0, [r1]
	ldr r2, _0805FA68 @ =0x0300010E
	adds r1, r5, r2
	movs r0, #5
	strh r0, [r1]
	b _0805FAB0
	.align 2, 0
_0805FA60: .4byte 0x00000357
_0805FA64: .4byte 0x03000020
_0805FA68: .4byte 0x0300010E
_0805FA6C:
	cmp r0, #3
	bne _0805FAB0
	movs r6, #0
	movs r0, #0xb4
	strh r0, [r4, #0x16]
	movs r0, #0x78
	strh r0, [r4, #0x18]
	movs r0, #0xd6
	lsls r0, r0, #2
	strh r0, [r4, #0xa]
	ldr r0, _0805FAC4 @ =0x03000020
	adds r2, r5, r0
	strb r6, [r2]
	adds r0, #0xee
	adds r1, r5, r0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0805FAA8
	ldr r0, _0805FAC8 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #1
	strb r0, [r3]
	ldr r0, _0805FACC @ =0x00000356
	strh r0, [r4, #0xa]
	strb r6, [r2]
_0805FAA8:
	ldr r0, [r4, #0x10]
	ldr r1, _0805FAD0 @ =0xFFFFFBFF
	ands r0, r1
_0805FAAE:
	str r0, [r4, #0x10]
_0805FAB0:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805FAC4: .4byte 0x03000020
_0805FAC8: .4byte 0x03000021
_0805FACC: .4byte 0x00000356
_0805FAD0: .4byte 0xFFFFFBFF

	thumb_func_start sub_805FAD4
sub_805FAD4: @ 0x0805FAD4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0805FB0C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	mov sl, r7
	adds r0, #0x30
	adds r3, r1, r0
	ldr r2, _0805FB10 @ =0x0300010D
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805FB18
	adds r2, #1
	adds r0, r1, r2
	ldrh r1, [r0]
	adds r1, #0x10
	ldr r2, _0805FB14 @ =0x000003FF
	ands r1, r2
	strh r1, [r0]
	b _0805FB52
	.align 2, 0
_0805FB0C: .4byte gCurTask
_0805FB10: .4byte 0x0300010D
_0805FB14: .4byte 0x000003FF
_0805FB18:
	ldr r0, _0805FB38 @ =0x0300010E
	adds r4, r1, r0
	ldrh r1, [r4]
	adds r2, r1, #0
	cmp r2, #4
	beq _0805FB52
	ldr r0, _0805FB3C @ =0x000001FF
	cmp r2, r0
	bhi _0805FB40
	adds r0, r1, #0
	adds r0, #0x10
	strh r0, [r4]
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x12
	b _0805FB4A
	.align 2, 0
_0805FB38: .4byte 0x0300010E
_0805FB3C: .4byte 0x000001FF
_0805FB40:
	adds r0, r1, #0
	adds r0, #0x10
	strh r0, [r4]
	lsls r0, r0, #0x10
	ldr r1, _0805FC80 @ =0x03FF0000
_0805FB4A:
	cmp r0, r1
	bls _0805FB52
	movs r0, #4
	strh r0, [r4]
_0805FB52:
	movs r0, #0
	strh r0, [r3]
	ldr r1, _0805FC84 @ =gSineTable
	mov r8, r1
	movs r2, #0x87
	lsls r2, r2, #1
	add r2, sl
	mov sb, r2
	ldrh r0, [r2]
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	adds r0, r0, r1
	strh r0, [r3, #2]
	mov r2, sb
	ldrh r0, [r2]
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r0, r0, r1
	strh r0, [r3, #4]
	movs r6, #0x4c
	strh r6, [r3, #6]
	strh r6, [r7, #0x16]
	movs r5, #0x5c
	strh r5, [r3, #8]
	strh r5, [r7, #0x18]
	adds r0, r7, #0
	adds r1, r3, #0
	bl TransformSprite
	adds r0, r7, #0
	bl DisplaySprite
	mov r7, sl
	adds r7, #0x3c
	mov r3, sl
	adds r3, #0x6c
	movs r4, #0x80
	lsls r4, r4, #1
	strh r4, [r3]
	mov r1, sb
	ldrh r0, [r1]
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r0, r0, r4
	strh r0, [r3, #2]
	ldrh r0, [r1]
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r0, r0, r4
	strh r0, [r3, #4]
	strh r6, [r3, #6]
	strh r6, [r7, #0x16]
	strh r5, [r3, #8]
	strh r5, [r7, #0x18]
	adds r0, r7, #0
	adds r1, r3, #0
	bl TransformSprite
	adds r0, r7, #0
	bl DisplaySprite
	adds r7, #0x3c
	mov r3, sl
	adds r3, #0xa8
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r3]
	mov r2, sb
	ldrh r0, [r2]
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r0, r0, r4
	strh r0, [r3, #2]
	ldrh r0, [r2]
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r0, r0, r4
	strh r0, [r3, #4]
	strh r6, [r3, #6]
	strh r6, [r7, #0x16]
	strh r5, [r3, #8]
	strh r5, [r7, #0x18]
	adds r0, r7, #0
	adds r1, r3, #0
	bl TransformSprite
	adds r0, r7, #0
	bl DisplaySprite
	adds r7, #0x3c
	mov r3, sl
	adds r3, #0xe4
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r3]
	mov r1, sb
	ldrh r0, [r1]
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r0, r0, r4
	strh r0, [r3, #2]
	ldrh r0, [r1]
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r0, r0, r4
	strh r0, [r3, #4]
	strh r6, [r3, #6]
	strh r6, [r7, #0x16]
	strh r5, [r3, #8]
	strh r5, [r7, #0x18]
	adds r0, r7, #0
	adds r1, r3, #0
	bl TransformSprite
	adds r0, r7, #0
	bl DisplaySprite
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805FC80: .4byte 0x03FF0000
_0805FC84: .4byte gSineTable

	thumb_func_start sub_805FC88
sub_805FC88: @ 0x0805FC88
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _0805FCDC @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	ldr r1, _0805FCE0 @ =0x0300010C
	adds r0, r4, r1
	ldrb r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	movs r0, #0
	mov r8, r0
	ldr r0, _0805FCE4 @ =0x030000FC
	adds r1, r4, r0
	movs r0, #0x52
	strh r0, [r1]
	cmp r5, #0x63
	bls _0805FCF0
	adds r0, r5, #0
	movs r1, #0x64
	bl Div
	adds r0, #0x20
	mov r1, sp
	strb r0, [r1]
	ldr r0, _0805FCE8 @ =0x030000FA
	adds r1, r4, r0
	movs r0, #0x40
	strh r0, [r1]
	ldr r0, _0805FCEC @ =0x030000F0
	adds r1, r4, r0
	mov r0, sp
	bl sub_805321C
	b _0805FCFC
	.align 2, 0
_0805FCDC: .4byte gCurTask
_0805FCE0: .4byte 0x0300010C
_0805FCE4: .4byte 0x030000FC
_0805FCE8: .4byte 0x030000FA
_0805FCEC: .4byte 0x030000F0
_0805FCF0:
	movs r1, #0xa
	mov r8, r1
	cmp r5, #9
	bls _0805FCFC
	movs r0, #5
	mov r8, r0
_0805FCFC:
	adds r6, r7, #0
	adds r6, #0xfa
	adds r7, #0xf0
	cmp r5, #9
	bls _0805FD2A
	mov r4, sp
	adds r0, r5, #0
	movs r1, #0x64
	bl Mod
	movs r1, #0xa
	bl Div
	adds r0, #0x20
	strb r0, [r4]
	movs r0, #0x4a
	mov r1, r8
	subs r0, r0, r1
	strh r0, [r6]
	mov r0, sp
	adds r1, r7, #0
	bl sub_805321C
_0805FD2A:
	mov r4, sp
	adds r0, r5, #0
	movs r1, #0xa
	bl Mod
	adds r0, #0x20
	strb r0, [r4]
	movs r0, #0x54
	mov r1, r8
	subs r0, r0, r1
	strh r0, [r6]
	mov r0, sp
	adds r1, r7, #0
	bl sub_805321C
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_805FD54
sub_805FD54: @ 0x0805FD54
	push {r4, lr}
	ldr r0, _0805FD98 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldr r1, [r1, #0x10]
	ldrh r2, [r1, #6]
	adds r0, r2, r0
	ldr r1, _0805FD9C @ =0x0300010D
	adds r3, r2, r1
	movs r1, #2
	strb r1, [r3]
	ldr r1, _0805FDA0 @ =0x0300010E
	adds r3, r2, r1
	movs r4, #0
	movs r1, #0x78
	strh r1, [r3]
	ldr r1, _0805FDA4 @ =0x03000021
	adds r3, r2, r1
	movs r1, #0xff
	strb r1, [r3]
	ldr r1, _0805FDA8 @ =0x00000357
	strh r1, [r0, #0xa]
	ldr r1, _0805FDAC @ =0x03000020
	adds r2, r2, r1
	strb r4, [r2]
	bl UpdateSpriteAnimation
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805FD98: .4byte gCurTask
_0805FD9C: .4byte 0x0300010D
_0805FDA0: .4byte 0x0300010E
_0805FDA4: .4byte 0x03000021
_0805FDA8: .4byte 0x00000357
_0805FDAC: .4byte 0x03000020

	thumb_func_start sub_805FDB0
sub_805FDB0: @ 0x0805FDB0
	push {lr}
	ldr r2, _0805FDD4 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0805FDD8 @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _0805FDDC @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	ldr r0, _0805FDE0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl CreateOptionsMenu
	pop {r0}
	bx r0
	.align 2, 0
_0805FDD4: .4byte gDispCnt
_0805FDD8: .4byte 0x00001FFF
_0805FDDC: .4byte gBldRegs
_0805FDE0: .4byte gCurTask

	thumb_func_start sub_805FDE4
sub_805FDE4: @ 0x0805FDE4
	push {r4, lr}
	ldr r0, _0805FE18 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	ldr r1, _0805FE1C @ =0x03000108
	adds r0, r2, r1
	ldr r1, [r0]
	ldr r3, _0805FE20 @ =0x0300010D
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805FE28
	cmp r1, #0x18
	bls _0805FE28
	ldr r0, _0805FE24 @ =0x03000021
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	subs r3, #0xed
	adds r1, r2, r3
	movs r0, #0
	b _0805FE34
	.align 2, 0
_0805FE18: .4byte gCurTask
_0805FE1C: .4byte 0x03000108
_0805FE20: .4byte 0x0300010D
_0805FE24: .4byte 0x03000021
_0805FE28:
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	subs r1, #1
	movs r0, #1
_0805FE34:
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_805FE48
sub_805FE48: @ 0x0805FE48
	push {r4, r5, lr}
	ldr r0, _0805FE98 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	bl DisplaySprite
	ldr r0, _0805FE9C @ =0x0300003C
	adds r5, r4, r0
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0805FEA0 @ =0x03000078
	adds r5, r4, r0
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0805FEA4 @ =0x030000B4
	adds r5, r4, r0
	ldr r0, [r5, #0x10]
	ldr r1, _0805FEA8 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805FE98: .4byte gCurTask
_0805FE9C: .4byte 0x0300003C
_0805FEA0: .4byte 0x03000078
_0805FEA4: .4byte 0x030000B4
_0805FEA8: .4byte 0xFFFFFBFF

	thumb_func_start Task_805FEAC
Task_805FEAC: @ 0x0805FEAC
	push {r4, r5, lr}
	ldr r0, _0805FEFC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r0, r4
	ldr r1, _0805FF00 @ =0x03000108
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r4, #0x10]
	ldr r2, _0805FF04 @ =0xFFFFFBFF
	ands r0, r2
	str r0, [r4, #0x10]
	ldr r2, _0805FF08 @ =gUnknown_0868B0CC
	lsrs r1, r1, #3
	movs r0, #7
	ands r1, r0
	adds r1, r1, r2
	ldrb r5, [r1]
	adds r0, r5, #0
	adds r0, #0x66
	strh r0, [r4, #0x16]
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #0x10]
	movs r0, #0x34
	subs r0, r0, r5
	strh r0, [r4, #0x16]
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805FEFC: .4byte gCurTask
_0805FF00: .4byte 0x03000108
_0805FF04: .4byte 0xFFFFFBFF
_0805FF08: .4byte gUnknown_0868B0CC

@ Seems to be inline!
	thumb_func_start sub_805FF0C
sub_805FF0C: @ 0x0805FF0C
	ldr r1, _0805FF2C @ =gCurTask
	ldr r1, [r1]
	ldrh r1, [r1, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r1, r1, r2
	ldr r1, [r1, #0x10]
	ldrh r1, [r1, #6]
	ldr r3, _0805FF30 @ =0x0300010D
	adds r2, r1, r3
	strb r0, [r2]
	ldr r0, _0805FF34 @ =0x0300010E
	adds r1, r1, r0
	movs r0, #0x78
	strh r0, [r1]
	bx lr
	.align 2, 0
_0805FF2C: .4byte gCurTask
_0805FF30: .4byte 0x0300010D
_0805FF34: .4byte 0x0300010E
