.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_802ECFC
sub_802ECFC: @ 0x0802ECFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r6, _0802ED98 @ =gCurTask
	ldr r0, [r6]
	ldrh r2, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r3, r2, r5
	ldr r0, _0802ED9C @ =0x0300000C
	adds r0, r0, r2
	mov sl, r0
	ldr r1, _0802EDA0 @ =0x0300004C
	adds r1, r2, r1
	str r1, [sp, #4]
	ldr r4, [r3]
	ldrb r1, [r3, #8]
	lsls r1, r1, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r7, _0802EDA4 @ =0x03000094
	adds r0, r2, r7
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	mov r0, r8
	str r0, [sp, #8]
	ldrb r1, [r4, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _0802EDA8 @ =0x03000098
	adds r0, r2, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	str r7, [sp, #0xc]
	ldr r0, _0802EDAC @ =0x030000AC
	adds r2, r2, r0
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf0
	bls _0802EDB8
	mov r1, r8
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	lsls r1, r7, #0x10
	asrs r5, r1, #0x10
	ldr r2, _0802EDB0 @ =0xFFFC0000
	adds r1, r1, r2
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8015C5C
	adds r0, r4, #0
	adds r1, r5, #0
	bl CreateBossCapsule
	ldr r1, _0802EDB4 @ =gMusicManagerState
	movs r0, #0x30
	strb r0, [r1, #1]
	ldr r0, [r6]
	bl TaskDestroy
	b _0802EECA
	.align 2, 0
_0802ED98: .4byte gCurTask
_0802ED9C: .4byte 0x0300000C
_0802EDA0: .4byte 0x0300004C
_0802EDA4: .4byte 0x03000094
_0802EDA8: .4byte 0x03000098
_0802EDAC: .4byte 0x030000AC
_0802EDB0: .4byte 0xFFFC0000
_0802EDB4: .4byte gMusicManagerState
_0802EDB8:
	movs r4, #7
	ands r1, r4
	cmp r1, #0
	bne _0802EE92
	ldr r3, _0802EEDC @ =gPseudoRandom
	mov sb, r3
	ldr r0, [r3]
	ldr r1, _0802EEE0 @ =0x00196225
	muls r0, r1, r0
	ldr r2, _0802EEE4 @ =0x3C6EF35F
	adds r0, r0, r2
	str r0, [r3]
	ands r4, r0
	ldr r0, _0802EEE8 @ =gUnknown_080BB434
	adds r0, r4, r0
	ldrb r0, [r0]
	bl VramMalloc
	adds r1, r0, #0
	movs r6, #0x80
	lsls r6, r6, #6
	ldr r2, _0802EEEC @ =gUnknown_080BB41C
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, _0802EEF0 @ =gUnknown_080BB42C
	adds r4, r4, r0
	ldrb r3, [r4]
	ldr r0, _0802EEF4 @ =TaskDestructor_NutsAndBolts
	str r0, [sp]
	adds r0, r6, #0
	bl CreateNutsAndBoltsTask
	ldrh r3, [r0, #6]
	adds r5, r3, r5
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #8
	str r1, [r5, #0x30]
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	lsls r2, r1, #8
	str r2, [r5, #0x34]
	str r6, [r5, #0x10]
	movs r2, #0x88
	lsls r2, r2, #3
	strh r2, [r5, #0x1a]
	movs r2, #0x28
	strh r2, [r5, #0x3e]
	ldr r2, _0802EEF8 @ =0x03000040
	adds r3, r3, r2
	movs r2, #0x20
	strh r2, [r3]
	mov r3, sb
	ldr r2, [r3]
	ldr r7, _0802EEE0 @ =0x00196225
	adds r6, r2, #0
	muls r6, r7, r6
	ldr r2, _0802EEE4 @ =0x3C6EF35F
	adds r6, r6, r2
	str r6, [r3]
	ldr r3, _0802EEFC @ =gSineTable
	mov r8, r3
	ldr r3, _0802EF00 @ =0x000001FF
	ands r3, r6
	lsls r2, r3, #1
	add r2, r8
	movs r7, #0
	ldrsh r4, [r2, r7]
	lsls r2, r4, #1
	adds r2, r2, r4
	lsls r2, r2, #9
	rsbs r2, r2, #0
	asrs r2, r2, #0xe
	strh r2, [r5, #0x3a]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r3, r3, r2
	lsls r3, r3, #1
	add r3, r8
	movs r7, #0
	ldrsh r3, [r3, r7]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #9
	rsbs r2, r2, #0
	asrs r2, r2, #0xe
	strh r2, [r5, #0x38]
	ldr r2, _0802EEE0 @ =0x00196225
	adds r3, r6, #0
	muls r3, r2, r3
	ldr r7, _0802EEE4 @ =0x3C6EF35F
	adds r3, r3, r7
	mov r2, sb
	str r3, [r2]
	movs r2, #0x3f
	ands r2, r3
	adds r0, r0, r2
	subs r0, #0x20
	lsls r0, r0, #8
	movs r2, #0xfc
	lsls r2, r2, #0xe
	ands r3, r2
	asrs r3, r3, #0x10
	subs r1, r1, r3
	lsls r1, r1, #8
	bl sub_8017540
_0802EE92:
	ldr r2, _0802EF04 @ =gCamera
	ldrh r1, [r2]
	ldr r3, [sp, #8]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	mov r7, sl
	strh r0, [r7, #0x16]
	ldrh r1, [r2, #2]
	ldr r2, [sp, #0xc]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r7, #0x18]
	bl sub_802D908
	mov r0, sl
	bl UpdateSpriteAnimation
	ldr r0, [sp, #4]
	bl UpdateSpriteAnimation
	mov r0, sl
	bl DisplaySprite
	ldr r0, [sp, #4]
	bl DisplaySprite
_0802EECA:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802EEDC: .4byte gPseudoRandom
_0802EEE0: .4byte 0x00196225
_0802EEE4: .4byte 0x3C6EF35F
_0802EEE8: .4byte gUnknown_080BB434
_0802EEEC: .4byte gUnknown_080BB41C
_0802EEF0: .4byte gUnknown_080BB42C
_0802EEF4: .4byte TaskDestructor_NutsAndBolts
_0802EEF8: .4byte 0x03000040
_0802EEFC: .4byte gSineTable
_0802EF00: .4byte 0x000001FF
_0802EF04: .4byte gCamera

	thumb_func_start TaskDestructor_EggPress
TaskDestructor_EggPress: @ 0x0802EF08
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x10]
	bl VramFree
	ldr r0, [r4, #0x50]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0

@ inline?
	thumb_func_start sub_802EF24
sub_802EF24: @ 0x0802EF24
	ldr r0, _0802EF54 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	ldr r0, _0802EF58 @ =0x0300004C
	adds r1, r2, r0
	adds r0, #0x20
	adds r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq _0802EF50
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0802EF50
	movs r0, #0
	strb r0, [r3]
	ldr r0, _0802EF5C @ =0x0300006D
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
_0802EF50:
	bx lr
	.align 2, 0
_0802EF54: .4byte gCurTask
_0802EF58: .4byte 0x0300004C
_0802EF5C: .4byte 0x0300006D

@ inline?
	thumb_func_start sub_802EF60
sub_802EF60: @ 0x0802EF60
	push {r4, lr}
	ldr r2, _0802EF88 @ =gCurTask
	ldr r2, [r2]
	ldrh r2, [r2, #6]
	ldr r3, _0802EF8C @ =0x0300000C
	adds r2, r2, r3
	ldr r4, _0802EF90 @ =gCamera
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
_0802EF88: .4byte gCurTask
_0802EF8C: .4byte 0x0300000C
_0802EF90: .4byte gCamera
