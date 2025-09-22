.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

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
	ldr r0, _0803A468 @ =Task_803A46C
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
_0803A468: .4byte Task_803A46C

	thumb_func_start Task_803A46C
Task_803A46C: @ 0x0803A46C
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
