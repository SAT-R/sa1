.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start StageBgUpdate_Zone7Act2
StageBgUpdate_Zone7Act2: @ 0x0803F52C
	push {r4, r5, lr}
	sub sp, #4
	ldr r3, _0803F600 @ =gCamera
	ldr r0, _0803F604 @ =gStageBackgroundsRam + 0xC0
	ldr r2, _0803F608 @ =gBgScrollRegs
	movs r1, #0
	strh r1, [r3, #0x28]
	strh r1, [r2, #4]
	strh r1, [r3, #0x2a]
	strh r1, [r2, #6]
	strh r1, [r0, #0x30]
	strh r1, [r0, #0x32]
	bl DrawBackground
	ldr r0, _0803F60C @ =gBgOffsetsHBlank
	ldr r5, [r0]
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r5, r5, r0
	ldr r4, _0803F610 @ =gStageTime
	ldr r2, [r4]
	lsrs r0, r2, #6
	movs r3, #0xff
	ands r0, r3
	str r0, [sp]
	ldr r1, _0803F614 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	str r5, [r1, #4]
	ldr r0, _0803F618 @ =0x8500000A
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r5, #0x28
	lsrs r0, r2, #5
	ands r0, r3
	str r0, [sp]
	mov r0, sp
	str r0, [r1]
	str r5, [r1, #4]
	ldr r0, _0803F61C @ =0x85000005
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r5, #0x14
	lsrs r0, r2, #4
	ands r0, r3
	str r0, [sp]
	mov r0, sp
	str r0, [r1]
	str r5, [r1, #4]
	ldr r0, _0803F620 @ =0x85000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r5, #0x20
	lsrs r2, r2, #3
	ands r2, r3
	str r2, [sp]
	mov r0, sp
	str r0, [r1]
	str r5, [r1, #4]
	ldr r0, _0803F624 @ =0x85000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r5, #0x40
	movs r2, #1
_0803F5AC:
	ldr r0, [r4]
	lsrs r1, r0, #3
	muls r0, r2, r0
	lsrs r0, r0, #5
	adds r1, r1, r0
	ands r1, r3
	stm r5!, {r1}
	adds r2, #1
	cmp r2, #0x1f
	ble _0803F5AC
	ldr r3, _0803F628 @ =gHBlankCallbacks
	ldr r2, _0803F62C @ =gNumHBlankCallbacks
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	ldr r1, _0803F630 @ =sub_803F92C
	str r1, [r0]
	ldr r5, _0803F634 @ =gFlags
	ldr r3, [r5]
	movs r0, #8
	orrs r3, r0
	ldr r4, _0803F638 @ =sa2__gUnknown_03001870
	ldr r2, _0803F63C @ =sa2__gUnknown_03004D50
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r1, _0803F640 @ =sub_803F920
	str r1, [r0]
	movs r0, #0x10
	orrs r3, r0
	str r3, [r5]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803F600: .4byte gCamera
_0803F604: .4byte gStageBackgroundsRam + 0xC0
_0803F608: .4byte gBgScrollRegs
_0803F60C: .4byte gBgOffsetsHBlank
_0803F610: .4byte gStageTime
_0803F614: .4byte 0x040000D4
_0803F618: .4byte 0x8500000A
_0803F61C: .4byte 0x85000005
_0803F620: .4byte 0x85000008
_0803F624: .4byte 0x85000010
_0803F628: .4byte gHBlankCallbacks
_0803F62C: .4byte gNumHBlankCallbacks
_0803F630: .4byte sub_803F92C
_0803F634: .4byte gFlags
_0803F638: .4byte sa2__gUnknown_03001870
_0803F63C: .4byte sa2__gUnknown_03004D50
_0803F640: .4byte sub_803F920
