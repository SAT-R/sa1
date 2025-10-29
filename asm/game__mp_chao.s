.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_8028AAC
sub_8028AAC: @ 0x08028AAC
	push {r4, r5, r6, r7, lr}
	ldr r2, _08028B0C @ =gCurTask
	ldr r2, [r2]
	ldrh r2, [r2, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r5, r2, r4
	ldr r3, _08028B10 @ =gMultiplayerPlayerTasks
	ldr r6, _08028B14 @ =0x03000041
	adds r2, r2, r6
	ldrb r2, [r2]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	ldrh r2, [r2, #6]
	adds r4, r2, r4
	adds r3, r5, #0
	ldr r2, [r5, #0x30]
	asrs r2, r2, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	lsls r0, r0, #0x10
	ldr r2, [r5, #0x34]
	asrs r2, r2, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bgt _08028B00
	cmp r0, #0
	bne _08028B18
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08028B18
_08028B00:
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5, #0x10]
	b _08028B20
	.align 2, 0
_08028B0C: .4byte gCurTask
_08028B10: .4byte gMultiplayerPlayerTasks
_08028B14: .4byte 0x03000041
_08028B18:
	ldr r0, [r3, #0x10]
	ldr r1, _08028B34 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r3, #0x10]
_08028B20:
	lsls r0, r6, #0x10
	adds r6, r0, #0
	lsls r7, r2, #0x10
	cmp r6, #0
	bne _08028B38
	cmp r7, #0
	bne _08028B38
	movs r0, #1
	b _08028C64
	.align 2, 0
_08028B34: .4byte 0xFFFFFBFF
_08028B38:
	lsrs r3, r6, #0x10
	lsrs r1, r7, #0x10
	cmp r6, #0
	beq _08028B96
	cmp r7, #0
	beq _08028B96
	lsls r4, r1, #0x10
	b _08028B7C
_08028B48:
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	lsrs r0, r0, #0x1f
	adds r2, r2, r0
	lsls r2, r2, #0xf
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1f
	adds r1, r1, r0
	lsls r1, r1, #0xf
	lsrs r1, r1, #0x10
	lsrs r3, r2, #0x10
	asrs r0, r2, #0x10
	cmp r0, #0
	bge _08028B68
	rsbs r0, r0, #0
_08028B68:
	cmp r0, #1
	ble _08028B96
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r4, r0, #0
	cmp r2, #0
	bge _08028B78
	rsbs r2, r2, #0
_08028B78:
	cmp r2, #1
	ble _08028B96
_08028B7C:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08028B86
	rsbs r0, r0, #0
_08028B86:
	cmp r0, #0x7f
	bgt _08028B48
	asrs r0, r4, #0x10
	cmp r0, #0
	bge _08028B92
	rsbs r0, r0, #0
_08028B92:
	cmp r0, #0x7f
	bgt _08028B48
_08028B96:
	lsls r0, r3, #0x10
	asrs r3, r0, #0x10
	adds r2, r0, #0
	cmp r3, #0
	bge _08028BA2
	rsbs r3, r3, #0
_08028BA2:
	lsls r4, r1, #0x10
	cmp r3, #1
	bgt _08028BC4
	asrs r0, r4, #0x10
	adds r3, r0, #0
	cmp r0, #0
	bge _08028BB2
	rsbs r3, r0, #0
_08028BB2:
	cmp r3, #1
	ble _08028BC4
	movs r4, #0xc0
	lsls r4, r4, #2
	cmp r0, #0
	ble _08028BF6
	movs r4, #0x80
	lsls r4, r4, #1
	b _08028BF6
_08028BC4:
	asrs r0, r4, #0x10
	cmp r0, #0
	bge _08028BCC
	rsbs r0, r0, #0
_08028BCC:
	cmp r0, #1
	bgt _08028BEA
	asrs r0, r2, #0x10
	adds r3, r0, #0
	cmp r0, #0
	bge _08028BDA
	rsbs r3, r0, #0
_08028BDA:
	cmp r3, #1
	ble _08028BEA
	movs r4, #0x80
	lsls r4, r4, #2
	cmp r0, #0
	ble _08028BF6
	movs r4, #0
	b _08028BF6
_08028BEA:
	asrs r0, r4, #0x10
	asrs r1, r2, #0x10
	bl sa2__sub_8004418
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08028BF6:
	asrs r0, r6, #0x10
	adds r1, r0, #0
	muls r1, r0, r1
	adds r0, r1, #0
	asrs r1, r7, #0x10
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #8
	movs r1, #0x80
	lsls r1, r1, #2
	cmp r0, r1
	ble _08028C1C
	adds r0, r1, #0
	b _08028C22
_08028C1C:
	cmp r0, #0
	bne _08028C22
	movs r0, #1
_08028C22:
	strh r0, [r5, #0x38]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08028C62
	movs r3, #0x38
	ldrsh r1, [r5, r3]
	ldr r3, _08028C6C @ =gSineTable
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r2, r4
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r6, #0
	ldrsh r0, [r0, r6]
	muls r1, r0, r1
	asrs r1, r1, #0xe
	ldr r0, [r5, #0x30]
	adds r0, r0, r1
	str r0, [r5, #0x30]
	movs r0, #0x38
	ldrsh r1, [r5, r0]
	lsls r2, r2, #1
	adds r2, r2, r3
	movs r3, #0
	ldrsh r0, [r2, r3]
	muls r1, r0, r1
	asrs r1, r1, #0xe
	ldr r0, [r5, #0x34]
	adds r0, r0, r1
	str r0, [r5, #0x34]
_08028C62:
	movs r0, #0
_08028C64:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08028C6C: .4byte gSineTable

	thumb_func_start TaskDestructor_Chao
TaskDestructor_Chao: @ 0x08028C70
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0
