.include "constants/constants.inc"

.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r6, _08026F70 @ =gCurTask
	ldr r0, [r6]
	ldrh r7, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r2, r7, r5
	ldr r0, _08026F74 @ =0x0300000C
	adds r0, r7, r0
	str r0, [sp, #4]
	ldr r1, _08026F78 @ =0x03000044
	adds r1, r1, r7
	mov sb, r1
	ldr r3, [r2]
	ldrb r1, [r2, #8]
	lsls r1, r1, #3
	ldrh r0, [r2, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r4, _08026F7C @ =0x0300008C
	adds r0, r7, r4
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	mov r0, sl
	str r0, [sp, #8]
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r2, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _08026F80 @ =0x03000090
	adds r0, r7, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	mov r3, r8
	str r3, [sp, #0xc]
	adds r4, #0xc
	adds r1, r7, r4
	ldrh r0, [r1]
	adds r2, r0, #1
	strh r2, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf0
	bls _08026F8C
	mov r0, sl
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	lsls r1, r3, #0x10
	asrs r5, r1, #0x10
	ldr r2, _08026F84 @ =0xFFE00000
	adds r1, r1, r2
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8015C5C
	adds r0, r4, #0
	adds r1, r5, #0
	bl CreateBossCapsule
	ldr r1, _08026F88 @ =gMusicManagerState
	movs r0, #0x30
	strb r0, [r1, #1]
	ldr r0, [r6]
	bl TaskDestroy
	b _080270BE
	.align 2, 0
_08026F70: .4byte gCurTask
_08026F74: .4byte 0x0300000C
_08026F78: .4byte 0x03000044
_08026F7C: .4byte 0x0300008C
_08026F80: .4byte 0x03000090
_08026F84: .4byte 0xFFE00000
_08026F88: .4byte gMusicManagerState
_08026F8C:
	movs r4, #7
	ands r2, r4
	cmp r2, #0
	bne _08027070
	ldr r3, _080270D0 @ =gPseudoRandom
	ldr r0, [r3]
	ldr r1, _080270D4 @ =0x00196225
	muls r0, r1, r0
	ldr r2, _080270D8 @ =0x3C6EF35F
	adds r0, r0, r2
	str r0, [r3]
	ands r4, r0
	ldr r0, _080270DC @ =gUnknown_080BB434
	adds r0, r4, r0
	ldrb r0, [r0]
	bl VramMalloc
	adds r1, r0, #0
	movs r6, #0x80
	lsls r6, r6, #6
	ldr r2, _080270E0 @ =gUnknown_080BB41C
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, _080270E4 @ =gUnknown_080BB42C
	adds r4, r4, r0
	ldrb r3, [r4]
	ldr r0, _080270E8 @ =TaskDestructor_NutsAndBolts
	str r0, [sp]
	adds r0, r6, #0
	bl CreateNutsAndBoltsTask
	ldrh r3, [r0, #6]
	adds r5, r3, r5
	mov r4, sl
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #8
	str r1, [r5, #0x30]
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	adds r2, r1, #0
	subs r2, #0x20
	lsls r2, r2, #8
	str r2, [r5, #0x34]
	str r6, [r5, #0x10]
	movs r2, #0x88
	lsls r2, r2, #3
	strh r2, [r5, #0x1a]
	movs r2, #0x28
	strh r2, [r5, #0x3e]
	ldr r4, _080270EC @ =0x03000040
	adds r3, r3, r4
	movs r2, #0x20
	strh r2, [r3]
	ldr r3, _080270D0 @ =gPseudoRandom
	ldr r2, [r3]
	ldr r4, _080270D4 @ =0x00196225
	adds r6, r2, #0
	muls r6, r4, r6
	ldr r2, _080270D8 @ =0x3C6EF35F
	adds r6, r6, r2
	str r6, [r3]
	ldr r3, _080270F0 @ =gSineTable
	mov r8, r3
	ldr r3, _080270F4 @ =0x000001FF
	ands r3, r6
	lsls r2, r3, #1
	add r2, r8
	mov ip, r2
	movs r4, #0
	ldrsh r2, [r2, r4]
	mov ip, r2
	lsls r2, r2, #1
	add r2, ip
	lsls r2, r2, #9
	rsbs r2, r2, #0
	asrs r2, r2, #0xe
	strh r2, [r5, #0x3a]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r3, r3, r2
	lsls r3, r3, #1
	add r3, r8
	movs r4, #0
	ldrsh r3, [r3, r4]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #9
	rsbs r2, r2, #0
	asrs r2, r2, #0xe
	strh r2, [r5, #0x38]
	ldr r2, _080270D4 @ =0x00196225
	adds r3, r6, #0
	muls r3, r2, r3
	ldr r4, _080270D8 @ =0x3C6EF35F
	adds r3, r3, r4
	ldr r2, _080270D0 @ =gPseudoRandom
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
	adds r3, #0x20
	subs r1, r1, r3
	lsls r1, r1, #8
	bl sub_8017540
_08027070:
	ldr r2, _080270F8 @ =gCamera
	ldrh r0, [r2]
	ldr r3, [sp, #8]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	ldr r4, [sp, #4]
	strh r1, [r4, #0x16]
	ldrh r2, [r2, #2]
	ldr r3, [sp, #0xc]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	strh r0, [r4, #0x18]
	mov r4, sb
	strh r1, [r4, #0x16]
	ldr r1, [sp, #4]
	ldrh r0, [r1, #0x18]
	strh r0, [r4, #0x18]
	ldr r0, [sp, #4]
	bl UpdateSpriteAnimation
	mov r0, sb
	bl UpdateSpriteAnimation
	ldr r2, _080270FC @ =0x0300002C
	adds r0, r7, r2
	ldrb r0, [r0]
	cmp r0, #2
	bne _080270B2
	ldrh r0, [r4, #0x18]
	subs r0, #1
	strh r0, [r4, #0x18]
_080270B2:
	ldr r0, [sp, #4]
	bl DisplaySprite
	mov r0, sb
	bl DisplaySprite
_080270BE:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080270D0: .4byte gPseudoRandom
_080270D4: .4byte 0x00196225
_080270D8: .4byte 0x3C6EF35F
_080270DC: .4byte gUnknown_080BB434
_080270E0: .4byte gUnknown_080BB41C
_080270E4: .4byte gUnknown_080BB42C
_080270E8: .4byte TaskDestructor_NutsAndBolts
_080270EC: .4byte 0x03000040
_080270F0: .4byte gSineTable
_080270F4: .4byte 0x000001FF
_080270F8: .4byte gCamera
_080270FC: .4byte 0x0300002C

.syntax divided
