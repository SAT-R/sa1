.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_800338C
sub_800338C: @ 0x0800338C
	push {r4, r5, r6, lr}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	movs r6, #0
	ldr r1, _080033BC @ =gUnknown_0809C0E8
	mov r0, sp
	movs r2, #8
	bl sub_809B5BC
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
	adds r0, r1, #0
	orrs r0, r2
	cmp r0, #0
	bne _080033C0
	movs r0, #1
	rsbs r0, r0, #0
	b _08003442
	.align 2, 0
_080033BC: .4byte gUnknown_0809C0E8
_080033C0:
	cmp r1, #0
	bgt _080033CC
	rsbs r0, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #4
_080033CC:
	cmp r2, #0
	bgt _080033DC
	rsbs r0, r2, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r6, #2
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080033DC:
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	cmp r2, r1
	blt _080033FC
	lsls r0, r1, #0x17
	lsrs r5, r0, #0x10
	cmp r2, #0
	bne _080033F4
	adds r2, r5, #0
	b _0800341A
_080033F4:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r1, r2, #0
	b _08003412
_080033FC:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r0, r2, #0x17
	lsrs r4, r0, #0x10
	cmp r1, #0
	bne _0800340E
	adds r2, r4, #0
	b _0800341A
_0800340E:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
_08003412:
	bl sub_8099B78
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0800341A:
	mov r0, sp
	adds r3, r0, r6
	ldrb r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08003434
	movs r1, #0x80
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
_08003434:
	ldrb r1, [r3]
	lsls r1, r1, #7
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
_08003442:
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800344C
sub_800344C: @ 0x0800344C
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	movs r2, #0
	movs r5, #0xf0
	lsls r5, r5, #8
_0800345A:
	adds r0, r3, #0
	ands r0, r5
	lsrs r0, r0, #0xc
	cmp r0, #9
	bls _0800346A
	adds r1, r4, r2
	adds r0, #0x57
	b _0800346E
_0800346A:
	adds r1, r4, r2
	adds r0, #0x30
_0800346E:
	strb r0, [r1]
	lsls r0, r3, #0x14
	lsrs r3, r0, #0x10
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _0800345A
	adds r1, r4, r2
	movs r0, #0
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800348C
sub_800348C: @ 0x0800348C
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #0
	movs r5, #0
_08003496:
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_8099ADC
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	subs r1, r4, r1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r0, r5, #2
	lsls r1, r0
	orrs r6, r1
	lsls r0, r6, #0x10
	lsrs r6, r0, #0x10
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08003496
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80034CC
sub_80034CC: @ 0x080034CC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r3, r4, #0
	adds r3, #0x21
	adds r2, r4, #0
	adds r2, #0x20
	ldrb r0, [r3]
	ldrb r1, [r2]
	cmp r0, r1
	bne _080034E8
	ldrh r0, [r4, #0x1e]
	ldrh r1, [r4, #0xa]
	cmp r0, r1
	beq _08003500
_080034E8:
	movs r1, #0
	strh r1, [r4, #8]
	ldrb r0, [r2]
	strb r0, [r3]
	ldrh r0, [r4, #0xa]
	strh r0, [r4, #0x1e]
	strh r1, [r4, #0x14]
	strh r1, [r4, #0x1c]
	ldr r0, [r4, #0x10]
	ldr r1, _08003510 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r4, #0x10]
_08003500:
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08003514
	movs r0, #0
	b _080035EE
	.align 2, 0
_08003510: .4byte 0xFFFFBFFF
_08003514:
	ldrh r1, [r4, #0x1c]
	movs r2, #0x1c
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble _0800352C
	adds r0, r4, #0
	adds r0, #0x22
	ldrb r0, [r0]
	lsls r0, r0, #4
	subs r0, r1, r0
	strh r0, [r4, #0x1c]
	b _080035EC
_0800352C:
	ldr r0, _080035D8 @ =gUnknown_03002034
	ldr r1, [r0]
	ldrh r0, [r4, #0xa]
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	adds r1, r4, #0
	adds r1, #0x20
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r5, [r0]
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #2
	adds r3, r5, r0
	ldr r0, [r3]
	adds r6, r1, #0
	cmp r0, #0
	bge _0800359C
	ldr r7, _080035DC @ =animCmdTable
_08003556:
	mvns r0, r0
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r2, [r0]
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_8099B44
	adds r1, r0, #0
	cmp r1, #1
	beq _08003590
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080035E0
	ldr r0, _080035D8 @ =gUnknown_03002034
	ldr r1, [r0]
	ldrh r0, [r4, #0xa]
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r2, [r0]
	movs r0, #0
	strh r0, [r4, #0x14]
	adds r5, r2, #0
_08003590:
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #2
	adds r3, r5, r0
	ldr r0, [r3]
	cmp r0, #0
	blt _08003556
_0800359C:
	ldr r0, [r3]
	lsls r0, r0, #8
	ldrh r1, [r4, #0x1c]
	adds r0, r0, r1
	strh r0, [r4, #0x1c]
	adds r1, r4, #0
	adds r1, #0x22
	ldrb r1, [r1]
	lsls r1, r1, #4
	subs r0, r0, r1
	strh r0, [r4, #0x1c]
	ldr r2, [r3, #4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _080035E4
	ldr r0, _080035D8 @ =gUnknown_03002034
	ldr r1, [r0]
	ldrh r0, [r4, #0xa]
	ldr r1, [r1, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	ldr r0, [r0]
	adds r0, r0, r1
	str r0, [r4, #0xc]
	b _080035E6
	.align 2, 0
_080035D8: .4byte gUnknown_03002034
_080035DC: .4byte animCmdTable
_080035E0:
	adds r0, r1, #0
	b _080035EE
_080035E4:
	str r2, [r4, #0xc]
_080035E6:
	ldrh r0, [r4, #0x14]
	adds r0, #2
	strh r0, [r4, #0x14]
_080035EC:
	movs r0, #1
_080035EE:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start animCmd_GetTiles
animCmd_GetTiles: @ 0x080035F4
	adds r2, r0, #0
	adds r3, r1, #0
	ldrh r0, [r3, #0x14]
	adds r0, #3
	strh r0, [r3, #0x14]
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	bne _08003650
	ldr r1, [r2, #4]
	cmp r1, #0
	bge _08003628
	ldr r0, _08003624 @ =gUnknown_03002034
	ldr r0, [r0]
	lsls r1, r1, #6
	ldr r0, [r0, #0x14]
	adds r0, r0, r1
	str r0, [r3]
	ldr r0, [r2, #8]
	lsls r0, r0, #6
	b _08003638
	.align 2, 0
_08003624: .4byte gUnknown_03002034
_08003628:
	ldr r0, _08003654 @ =gUnknown_03002034
	ldr r0, [r0]
	lsls r1, r1, #5
	ldr r0, [r0, #0x10]
	adds r0, r0, r1
	str r0, [r3]
	ldr r0, [r2, #8]
	lsls r0, r0, #5
_08003638:
	strh r0, [r3, #8]
	ldr r1, _08003658 @ =gVramGraphicsCopyQueue
	ldr r2, _0800365C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	str r3, [r0]
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r2]
_08003650:
	movs r0, #1
	bx lr
	.align 2, 0
_08003654: .4byte gUnknown_03002034
_08003658: .4byte gVramGraphicsCopyQueue
_0800365C: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start sub_8003660
sub_8003660: @ 0x08003660
	push {r4, r5, lr}
	adds r4, r1, #0
	ldr r3, [r0, #4]
	movs r1, #0xf
	ands r3, r1
	ldrh r1, [r4, #0x14]
	adds r1, #3
	strh r1, [r4, #0x14]
	ldr r2, _0800369C @ =0x040000D4
	adds r1, r0, #4
	str r1, [r2]
	lsls r3, r3, #3
	adds r1, r3, #0
	adds r1, #0x28
	adds r1, r4, r1
	str r1, [r2, #4]
	ldr r1, _080036A0 @ =0x84000002
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _080036A4
	adds r0, r4, #0
	adds r0, #0x28
	adds r0, r0, r3
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0]
	b _08003708
	.align 2, 0
_0800369C: .4byte 0x040000D4
_080036A0: .4byte 0x84000002
_080036A4:
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080036D8
	adds r2, r4, r3
	movs r0, #0x2d
	adds r0, r0, r2
	mov ip, r0
	adds r2, #0x2f
	ldrb r1, [r0]
	ldrb r0, [r2]
	eors r1, r0
	mov r5, ip
	strb r1, [r5]
	ldrb r0, [r2]
	eors r0, r1
	strb r0, [r2]
	ldrb r1, [r5]
	eors r0, r1
	rsbs r0, r0, #0
	strb r0, [r5]
	ldrb r0, [r2]
	rsbs r0, r0, #0
	strb r0, [r2]
_080036D8:
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08003708
	adds r2, r4, r3
	adds r3, r2, #0
	adds r3, #0x2c
	adds r2, #0x2e
	ldrb r1, [r3]
	ldrb r0, [r2]
	eors r1, r0
	strb r1, [r3]
	ldrb r0, [r2]
	eors r0, r1
	strb r0, [r2]
	ldrb r1, [r3]
	eors r0, r1
	rsbs r0, r0, #0
	strb r0, [r3]
	ldrb r0, [r2]
	rsbs r0, r0, #0
	strb r0, [r2]
_08003708:
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_8003710
sub_8003710: @ 0x08003710
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	mov r8, r1
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0xb
	ldr r0, _080037C8 @ =gUnknown_03004636
	adds r6, r6, r0
	movs r0, #0x80
	lsls r0, r0, #9
	mov sl, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r8, r1
	bl sub_8099ADC
	ldr r7, _080037CC @ =gSineTable
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r4, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r1, [r1]
	mov sb, r1
	mov r1, sb
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	mov sb, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r2, sb
	muls r2, r0, r2
	adds r0, r2, #0
	asrs r0, r0, #8
	strh r0, [r6]
	mov r0, sl
	mov r1, r8
	bl sub_8099ADC
	lsls r4, r4, #1
	adds r4, r4, r7
	ldrh r1, [r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r6, #8]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	mov r0, sl
	adds r1, r5, #0
	bl sub_8099ADC
	movs r2, #0
	ldrsh r1, [r4, r2]
	rsbs r1, r1, #0
	asrs r1, r1, #6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r6, #0x10]
	mov r0, sl
	adds r1, r5, #0
	bl sub_8099ADC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	asrs r0, r0, #8
	strh r0, [r6, #0x18]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080037C8: .4byte gUnknown_03004636
_080037CC: .4byte gSineTable

	thumb_func_start sub_80037D0
sub_80037D0: @ 0x080037D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	str r0, [sp, #0x24]
	adds r6, r1, #0
	ldr r1, [r0, #0xc]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080037EC
	b _08003A1A
_080037EC:
	mov r8, r1
	add r2, sp, #0x20
	ldr r1, [sp, #0x24]
	ldr r0, [r1, #0x10]
	movs r1, #0x1f
	ands r0, r1
	strh r0, [r2]
	ldrh r4, [r2]
	lsls r4, r4, #5
	ldr r0, _08003984 @ =gUnknown_03004636
	adds r4, r4, r0
	subs r2, #0x18
	str r2, [sp, #0x28]
	ldr r2, _08003988 @ =gSineTable
	ldrh r0, [r6]
	ldr r1, _0800398C @ =0x000003FF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r1, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r7, [sp, #0x28]
	strh r0, [r7]
	movs r0, #0xa
	add r0, sp
	mov sl, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	mov r1, sl
	strh r0, [r1]
	add r7, sp, #0xc
	ldrh r0, [r6, #2]
	strh r0, [r7]
	movs r2, #0xe
	add r2, sp
	mov sb, r2
	ldrh r0, [r6, #4]
	strh r0, [r2]
	movs r5, #0x80
	lsls r5, r5, #9
	ldrh r1, [r7]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl sub_8099ADC
	ldr r3, [sp, #0x28]
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4]
	ldrh r1, [r7]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl sub_8099ADC
	mov r2, sl
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #8]
	mov r3, sb
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl sub_8099ADC
	mov r2, sl
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	mov r3, sb
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl sub_8099ADC
	ldr r2, [sp, #0x28]
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	ldrh r0, [r6, #2]
	movs r3, #2
	ldrsh r5, [r6, r3]
	cmp r5, #0
	bge _080038D6
	rsbs r0, r0, #0
	strh r0, [r7]
_080038D6:
	movs r1, #4
	ldrsh r0, [r6, r1]
	ldrh r2, [r6, #4]
	mov ip, r2
	cmp r0, #0
	bge _080038EA
	mov r3, ip
	rsbs r0, r3, #0
	mov r1, sb
	strh r0, [r1]
_080038EA:
	mov r2, sp
	ldr r3, [sp, #0x28]
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r7]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r2]
	mov r4, sp
	adds r4, #2
	mov r0, sl
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	ldrh r0, [r7]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4]
	add r3, sp, #4
	mov r2, sl
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r7, sb
	ldrh r0, [r7]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r3]
	mov r2, sp
	adds r2, #6
	ldr r0, [sp, #0x28]
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r7]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r2]
	add r0, sp, #0x18
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	adds r0, #2
	movs r1, #0
	strh r1, [r0]
	add r0, sp, #0x1c
	strh r1, [r0]
	adds r0, #2
	movs r7, #0x80
	lsls r7, r7, #1
	strh r7, [r0]
	movs r1, #6
	ldrsh r0, [r6, r1]
	str r0, [sp, #0x10]
	movs r7, #8
	ldrsh r0, [r6, r7]
	str r0, [sp, #0x14]
	adds r6, r4, #0
	adds r7, r3, #0
	mov sb, r2
	cmp r5, #0
	ble _08003990
	mov r0, r8
	ldrh r4, [r0, #8]
	ldrh r2, [r0, #4]
	b _0800399E
	.align 2, 0
_08003984: .4byte gUnknown_03004636
_08003988: .4byte gSineTable
_0800398C: .4byte 0x000003FF
_08003990:
	mov r2, r8
	ldrh r1, [r2, #4]
	ldrh r0, [r2, #8]
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r2, r1, #0
_0800399E:
	mov r3, ip
	lsls r0, r3, #0x10
	cmp r0, #0
	ble _080039AE
	mov r0, r8
	ldrh r3, [r0, #0xa]
	ldrh r5, [r0, #6]
	b _080039BC
_080039AE:
	mov r3, r8
	ldrh r1, [r3, #6]
	ldrh r0, [r3, #0xa]
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r5, r1, #0
_080039BC:
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsrs r2, r2, #1
	subs r4, r4, r2
	adds r1, r0, #0
	muls r1, r4, r1
	ldrh r0, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	lsrs r5, r5, #1
	subs r3, r3, r5
	muls r0, r3, r0
	adds r1, r1, r0
	lsls r2, r2, #8
	adds r1, r1, r2
	asrs r1, r1, #8
	ldr r0, [sp, #0x10]
	subs r0, r0, r1
	str r0, [sp, #0x10]
	ldrh r0, [r7]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r4, r1
	mov r7, sb
	ldrh r0, [r7]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r3, r0
	adds r1, r1, r0
	lsls r5, r5, #8
	adds r1, r1, r5
	asrs r1, r1, #8
	ldr r0, [sp, #0x14]
	subs r0, r0, r1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x24]
	strh r0, [r1, #0x16]
	ldr r0, [sp, #0x14]
	strh r0, [r1, #0x18]
_08003A1A:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8003A2C
sub_8003A2C: @ 0x08003A2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	str r0, [sp, #0x24]
	adds r7, r1, #0
	ldr r1, [r0, #0xc]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08003A48
	b _08003D74
_08003A48:
	mov sb, r1
	add r2, sp, #0x20
	ldr r1, [sp, #0x24]
	ldr r0, [r1, #0x10]
	movs r1, #0x1f
	ands r0, r1
	strh r0, [r2]
	ldrh r4, [r2]
	lsls r4, r4, #5
	ldr r0, _08003CC8 @ =gUnknown_03004636
	adds r4, r4, r0
	subs r2, #0x18
	str r2, [sp, #0x28]
	ldrh r0, [r7]
	ldr r3, _08003CCC @ =gUnknown_03001204
	ldrh r1, [r3]
	adds r0, r0, r1
	ldr r2, _08003CD0 @ =0x000003FF
	ands r0, r2
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #1
	ldr r6, _08003CD4 @ =gSineTable
	adds r0, r0, r6
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r1, [sp, #0x28]
	strh r0, [r1]
	movs r3, #0xa
	add r3, sp
	mov r8, r3
	ldrh r0, [r7]
	ldr r5, _08003CCC @ =gUnknown_03001204
	ldrh r1, [r5]
	adds r0, r0, r1
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	strh r0, [r3]
	add r6, sp, #0xc
	movs r0, #2
	ldrsh r1, [r7, r0]
	ldr r2, _08003CD8 @ =gUnknown_030010B0
	ldrh r0, [r2]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r6]
	movs r3, #0xe
	add r3, sp
	mov sl, r3
	movs r5, #4
	ldrsh r1, [r7, r5]
	ldr r2, _08003CDC @ =gUnknown_03004C34
	ldrh r0, [r2]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r3]
	movs r5, #0x80
	lsls r5, r5, #9
	ldrh r1, [r6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl sub_8099ADC
	ldr r3, [sp, #0x28]
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4]
	ldrh r1, [r6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl sub_8099ADC
	mov r2, r8
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #8]
	mov r3, sl
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl sub_8099ADC
	mov r2, r8
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	mov r3, sl
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl sub_8099ADC
	ldr r5, [sp, #0x28]
	ldrh r1, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	movs r1, #2
	ldrsh r0, [r7, r1]
	str r0, [sp, #0x2c]
	cmp r0, #0
	bge _08003B60
	movs r2, #2
	ldrsh r0, [r7, r2]
	rsbs r0, r0, #0
	ldr r3, _08003CD8 @ =gUnknown_030010B0
	ldrh r1, [r3]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r6]
_08003B60:
	movs r4, #4
	ldrsh r0, [r7, r4]
	ldr r5, _08003CDC @ =gUnknown_03004C34
	ldrh r3, [r5]
	ldrh r2, [r7, #4]
	mov r1, sp
	strh r2, [r1, #0x34]
	cmp r0, #0
	bge _08003B84
	movs r4, #4
	ldrsh r0, [r7, r4]
	rsbs r0, r0, #0
	muls r0, r3, r0
	asrs r0, r0, #8
	mov r5, sl
	strh r0, [r5]
	ldr r0, _08003CDC @ =gUnknown_03004C34
	ldrh r3, [r0]
_08003B84:
	mov r2, sp
	ldr r4, [sp, #0x28]
	ldrh r1, [r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r2]
	mov r5, sp
	adds r5, #2
	str r5, [sp, #0x30]
	mov r0, r8
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	ldrh r0, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r5]
	add r1, sp, #4
	mov ip, r1
	mov r2, r8
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r4, sl
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	mov r5, ip
	strh r0, [r5]
	mov r6, sp
	adds r6, #6
	str r6, [sp, #0x38]
	ldr r0, [sp, #0x28]
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r6]
	add r5, sp, #0x18
	ldr r1, _08003CCC @ =gUnknown_03001204
	ldrh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r4, _08003CD4 @ =gSineTable
	adds r0, r0, r4
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r6, _08003CD8 @ =gUnknown_030010B0
	ldrh r1, [r6]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r5]
	mov r2, sp
	adds r2, #0x1a
	ldr r1, _08003CCC @ =gUnknown_03001204
	ldrh r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r4, #0
	ldrsh r0, [r0, r4]
	rsbs r0, r0, #0
	asrs r0, r0, #6
	ldrh r1, [r6]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r2]
	add r4, sp, #0x1c
	ldr r6, _08003CCC @ =gUnknown_03001204
	ldrh r0, [r6]
	lsls r0, r0, #1
	ldr r1, _08003CD4 @ =gSineTable
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r3, r0
	asrs r0, r0, #8
	strh r0, [r4]
	mov r3, sp
	adds r3, #0x1e
	ldrh r0, [r6]
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r6, _08003CDC @ =gUnknown_03004C34
	ldrh r1, [r6]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r3]
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r5, #6
	ldrsh r1, [r7, r5]
	muls r1, r0, r1
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r6, #8
	ldrsh r2, [r7, r6]
	muls r0, r2, r0
	adds r1, r1, r0
	ldr r0, _08003CE0 @ =gUnknown_0300120C
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	adds r1, r1, r0
	asrs r1, r1, #8
	str r1, [sp, #0x10]
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #6
	ldrsh r1, [r7, r4]
	muls r1, r0, r1
	ldrh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r5, #8
	ldrsh r2, [r7, r5]
	muls r0, r2, r0
	adds r1, r1, r0
	ldr r0, _08003CE4 @ =gUnknown_030020C0
	movs r6, #0
	ldrsh r0, [r0, r6]
	lsls r0, r0, #8
	adds r1, r1, r0
	asrs r1, r1, #8
	str r1, [sp, #0x14]
	ldr r7, [sp, #0x30]
	mov r8, ip
	ldr r6, [sp, #0x38]
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	ble _08003CE8
	mov r1, sb
	ldrh r4, [r1, #8]
	ldrh r2, [r1, #4]
	b _08003CF6
	.align 2, 0
_08003CC8: .4byte gUnknown_03004636
_08003CCC: .4byte gUnknown_03001204
_08003CD0: .4byte 0x000003FF
_08003CD4: .4byte gSineTable
_08003CD8: .4byte gUnknown_030010B0
_08003CDC: .4byte gUnknown_03004C34
_08003CE0: .4byte gUnknown_0300120C
_08003CE4: .4byte gUnknown_030020C0
_08003CE8:
	mov r2, sb
	ldrh r1, [r2, #4]
	ldrh r0, [r2, #8]
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r2, r1, #0
_08003CF6:
	mov r3, sp
	ldrh r3, [r3, #0x34]
	lsls r0, r3, #0x10
	cmp r0, #0
	ble _08003D08
	mov r5, sb
	ldrh r3, [r5, #0xa]
	ldrh r5, [r5, #6]
	b _08003D16
_08003D08:
	mov r0, sb
	ldrh r1, [r0, #6]
	ldrh r0, [r0, #0xa]
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r5, r1, #0
_08003D16:
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsrs r2, r2, #1
	subs r4, r4, r2
	adds r1, r0, #0
	muls r1, r4, r1
	ldrh r0, [r7]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	lsrs r5, r5, #1
	subs r3, r3, r5
	muls r0, r3, r0
	adds r1, r1, r0
	lsls r2, r2, #8
	adds r1, r1, r2
	asrs r1, r1, #8
	ldr r0, [sp, #0x10]
	subs r0, r0, r1
	str r0, [sp, #0x10]
	mov r1, r8
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r4, r1
	ldrh r0, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r3, r0
	adds r1, r1, r0
	lsls r5, r5, #8
	adds r1, r1, r5
	asrs r1, r1, #8
	ldr r0, [sp, #0x14]
	subs r0, r0, r1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x24]
	strh r0, [r2, #0x16]
	ldr r0, [sp, #0x14]
	strh r0, [r2, #0x18]
_08003D74:
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8003D84
sub_8003D84: @ 0x08003D84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	str r0, [sp, #0x24]
	adds r6, r1, #0
	ldr r1, [r0, #0xc]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08003DA0
	b _08004148
_08003DA0:
	mov sb, r1
	add r2, sp, #0x20
	ldr r1, [sp, #0x24]
	ldr r0, [r1, #0x10]
	movs r1, #0x1f
	ands r0, r1
	strh r0, [r2]
	ldrh r4, [r2]
	lsls r4, r4, #5
	ldr r0, _08004098 @ =gUnknown_03004636
	adds r4, r4, r0
	subs r2, #0x18
	str r2, [sp, #0x28]
	ldrh r0, [r6]
	ldr r3, _0800409C @ =gUnknown_03001204
	ldrh r1, [r3]
	adds r0, r0, r1
	ldr r2, _080040A0 @ =0x000003FF
	ands r0, r2
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #1
	ldr r7, _080040A4 @ =gSineTable
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r1, [sp, #0x28]
	strh r0, [r1]
	movs r3, #0xa
	add r3, sp
	mov r8, r3
	ldrh r0, [r6]
	ldr r5, _0800409C @ =gUnknown_03001204
	ldrh r1, [r5]
	adds r0, r0, r1
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	strh r0, [r3]
	add r7, sp, #0xc
	movs r0, #2
	ldrsh r1, [r6, r0]
	ldr r2, _080040A8 @ =gUnknown_030010B0
	ldrh r0, [r2]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r7]
	movs r3, #0xe
	add r3, sp
	mov sl, r3
	movs r5, #4
	ldrsh r1, [r6, r5]
	ldr r2, _080040AC @ =gUnknown_03004C34
	ldrh r0, [r2]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r3]
	movs r5, #0x80
	lsls r5, r5, #9
	ldrh r1, [r7]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl sub_8099ADC
	ldr r3, [sp, #0x28]
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4]
	ldrh r1, [r7]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl sub_8099ADC
	mov r2, r8
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #8]
	mov r3, sl
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl sub_8099ADC
	mov r2, r8
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	mov r3, sl
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl sub_8099ADC
	ldr r5, [sp, #0x28]
	ldrh r1, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	movs r1, #2
	ldrsh r0, [r6, r1]
	str r0, [sp, #0x2c]
	cmp r0, #0
	bge _08003EB8
	movs r2, #2
	ldrsh r0, [r6, r2]
	rsbs r0, r0, #0
	ldr r3, _080040A8 @ =gUnknown_030010B0
	ldrh r1, [r3]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r7]
_08003EB8:
	movs r4, #4
	ldrsh r0, [r6, r4]
	ldr r5, _080040AC @ =gUnknown_03004C34
	ldrh r4, [r5]
	ldrh r2, [r6, #4]
	mov r1, sp
	strh r2, [r1, #0x3c]
	cmp r0, #0
	bge _08003EDA
	movs r3, #4
	ldrsh r0, [r6, r3]
	rsbs r0, r0, #0
	muls r0, r4, r0
	asrs r0, r0, #8
	mov r4, sl
	strh r0, [r4]
	ldrh r4, [r5]
_08003EDA:
	mov r2, sp
	ldr r5, [sp, #0x28]
	ldrh r1, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r7]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r2]
	mov r0, sp
	adds r0, #2
	str r0, [sp, #0x30]
	mov r2, r8
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	ldrh r0, [r7]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	ldr r3, [sp, #0x30]
	strh r0, [r3]
	mov r5, sp
	adds r5, #4
	str r5, [sp, #0x34]
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r2, sl
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r5]
	mov r3, sp
	adds r3, #6
	str r3, [sp, #0x38]
	ldr r5, [sp, #0x28]
	ldrh r1, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r3]
	add r0, sp, #0x18
	mov r8, r0
	ldr r1, _0800409C @ =gUnknown_03001204
	ldrh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r3, _080040A4 @ =gSineTable
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r5, _080040A8 @ =gUnknown_030010B0
	ldrh r1, [r5]
	adds r2, r0, #0
	muls r2, r1, r2
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	ldrh r0, [r7]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080040B0 @ =gUnknown_03004C38
	movs r5, #0
	ldrsh r1, [r3, r5]
	muls r0, r1, r0
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	muls r0, r2, r0
	asrs r0, r0, #8
	mov r1, r8
	strh r0, [r1]
	movs r2, #0x1a
	add r2, sp
	mov ip, r2
	ldr r5, _0800409C @ =gUnknown_03001204
	ldrh r0, [r5]
	lsls r0, r0, #1
	ldr r1, _080040A4 @ =gSineTable
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	rsbs r0, r0, #0
	asrs r0, r0, #6
	ldr r5, _080040A8 @ =gUnknown_030010B0
	ldrh r1, [r5]
	adds r2, r0, #0
	muls r2, r1, r2
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	ldrh r0, [r7]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r7, #0
	ldrsh r1, [r3, r7]
	muls r0, r1, r0
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	muls r0, r2, r0
	asrs r0, r0, #8
	mov r1, ip
	strh r0, [r1]
	add r5, sp, #0x1c
	ldr r2, _0800409C @ =gUnknown_03001204
	ldrh r0, [r2]
	lsls r0, r0, #1
	ldr r7, _080040A4 @ =gSineTable
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	adds r2, r0, #0
	muls r2, r4, r2
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	mov r1, sl
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #0
	ldrsh r1, [r3, r4]
	muls r0, r1, r0
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	muls r0, r2, r0
	asrs r0, r0, #8
	strh r0, [r5]
	mov r4, sp
	adds r4, #0x1e
	ldr r7, _0800409C @ =gUnknown_03001204
	ldrh r0, [r7]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r2, _080040A4 @ =gSineTable
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r7, _080040AC @ =gUnknown_03004C34
	ldrh r1, [r7]
	adds r2, r0, #0
	muls r2, r1, r2
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	mov r1, sl
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r7, #0
	ldrsh r1, [r3, r7]
	muls r0, r1, r0
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	muls r0, r2, r0
	asrs r0, r0, #8
	strh r0, [r4]
	mov r1, r8
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #6
	ldrsh r1, [r6, r2]
	muls r1, r0, r1
	mov r3, ip
	ldrh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r7, #8
	ldrsh r2, [r6, r7]
	muls r0, r2, r0
	adds r1, r1, r0
	ldr r0, _080040B4 @ =gUnknown_0300120C
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	adds r1, r1, r0
	asrs r1, r1, #8
	str r1, [sp, #0x10]
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #6
	ldrsh r1, [r6, r3]
	muls r1, r0, r1
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #8
	ldrsh r2, [r6, r4]
	muls r0, r2, r0
	adds r1, r1, r0
	ldr r0, _080040B8 @ =gUnknown_030020C0
	movs r5, #0
	ldrsh r0, [r0, r5]
	lsls r0, r0, #8
	adds r1, r1, r0
	asrs r1, r1, #8
	str r1, [sp, #0x14]
	ldr r6, [sp, #0x30]
	ldr r7, [sp, #0x34]
	ldr r0, [sp, #0x38]
	mov r8, r0
	ldr r1, [sp, #0x2c]
	cmp r1, #0
	ble _080040BC
	mov r2, sb
	ldrh r4, [r2, #8]
	ldrh r2, [r2, #4]
	b _080040CA
	.align 2, 0
_08004098: .4byte gUnknown_03004636
_0800409C: .4byte gUnknown_03001204
_080040A0: .4byte 0x000003FF
_080040A4: .4byte gSineTable
_080040A8: .4byte gUnknown_030010B0
_080040AC: .4byte gUnknown_03004C34
_080040B0: .4byte gUnknown_03004C38
_080040B4: .4byte gUnknown_0300120C
_080040B8: .4byte gUnknown_030020C0
_080040BC:
	mov r3, sb
	ldrh r1, [r3, #4]
	ldrh r0, [r3, #8]
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r2, r1, #0
_080040CA:
	mov r5, sp
	ldrh r5, [r5, #0x3c]
	lsls r0, r5, #0x10
	cmp r0, #0
	ble _080040DC
	mov r0, sb
	ldrh r3, [r0, #0xa]
	ldrh r5, [r0, #6]
	b _080040EA
_080040DC:
	mov r3, sb
	ldrh r1, [r3, #6]
	ldrh r0, [r3, #0xa]
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r5, r1, #0
_080040EA:
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsrs r2, r2, #1
	subs r4, r4, r2
	adds r1, r0, #0
	muls r1, r4, r1
	ldrh r0, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	lsrs r5, r5, #1
	subs r3, r3, r5
	muls r0, r3, r0
	adds r1, r1, r0
	lsls r2, r2, #8
	adds r1, r1, r2
	asrs r1, r1, #8
	ldr r0, [sp, #0x10]
	subs r0, r0, r1
	str r0, [sp, #0x10]
	ldrh r0, [r7]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r4, r1
	mov r4, r8
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r3, r0
	adds r1, r1, r0
	lsls r5, r5, #8
	adds r1, r1, r5
	asrs r1, r1, #8
	ldr r0, [sp, #0x14]
	subs r0, r0, r1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	ldr r5, [sp, #0x24]
	strh r0, [r5, #0x16]
	ldr r0, [sp, #0x14]
	strh r0, [r5, #0x18]
_08004148:
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8004158
sub_8004158: @ 0x08004158
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r2, [r7, #0xc]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _08004172
	b _08004430
_08004172:
	mov r8, r2
	ldrh r1, [r2, #2]
	adds r0, r7, #0
	adds r0, #0x24
	strb r1, [r0]
	movs r1, #0x16
	ldrsh r0, [r7, r1]
	str r0, [sp]
	movs r3, #0x18
	ldrsh r2, [r7, r3]
	mov sl, r2
	ldr r2, [r7, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _080041AA
	ldr r0, _080041E0 @ =gUnknown_030010B4
	movs r5, #0
	ldrsh r1, [r0, r5]
	ldr r3, [sp]
	subs r3, r3, r1
	str r3, [sp]
	movs r5, #2
	ldrsh r0, [r0, r5]
	mov r1, sl
	subs r1, r1, r0
	mov sl, r1
_080041AA:
	mov r3, r8
	ldrh r3, [r3, #4]
	str r3, [sp, #4]
	mov r5, r8
	ldrh r5, [r5, #6]
	str r5, [sp, #8]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _080041E4
	movs r0, #0x40
	ands r2, r0
	cmp r2, #0
	beq _08004236
	lsrs r0, r3, #1
	ldr r1, [sp]
	subs r1, r1, r0
	str r1, [sp]
	lsrs r0, r5, #1
	mov r2, sl
	subs r2, r2, r0
	mov sl, r2
	lsls r3, r3, #1
	str r3, [sp, #4]
	lsls r5, r5, #1
	str r5, [sp, #8]
	b _08004236
	.align 2, 0
_080041E0: .4byte gUnknown_030010B4
_080041E4:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r2, r0
	cmp r2, #0
	beq _08004200
	mov r3, r8
	movs r5, #0xa
	ldrsh r0, [r3, r5]
	ldr r1, [sp, #8]
	subs r0, r1, r0
	mov r2, sl
	subs r2, r2, r0
	mov sl, r2
	b _0800420C
_08004200:
	mov r3, r8
	movs r5, #0xa
	ldrsh r0, [r3, r5]
	mov r1, sl
	subs r1, r1, r0
	mov sl, r1
_0800420C:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0800422A
	mov r2, r8
	movs r3, #8
	ldrsh r0, [r2, r3]
	ldr r5, [sp, #4]
	subs r0, r5, r0
	ldr r1, [sp]
	subs r1, r1, r0
	str r1, [sp]
	b _08004236
_0800422A:
	mov r2, r8
	movs r3, #8
	ldrsh r0, [r2, r3]
	ldr r5, [sp]
	subs r5, r5, r0
	str r5, [sp]
_08004236:
	ldr r1, [sp]
	ldr r2, [sp, #4]
	adds r0, r1, r2
	cmp r0, #0
	bge _08004242
	b _08004430
_08004242:
	cmp r1, #0xf0
	ble _08004248
	b _08004430
_08004248:
	ldr r0, [sp, #8]
	add r0, sl
	cmp r0, #0
	bge _08004252
	b _08004430
_08004252:
	mov r3, sl
	cmp r3, #0xa0
	ble _0800425A
	b _08004430
_0800425A:
	movs r5, #0
	str r5, [sp, #0xc]
	mov r0, r8
	ldrh r0, [r0, #2]
	cmp r5, r0
	blo _08004268
	b _08004430
_08004268:
	ldr r0, _08004330 @ =gUnknown_03002034
	ldr r1, [r0]
	ldrh r0, [r7, #0xa]
	ldr r1, [r1, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r5, [r0]
	ldrh r0, [r7, #0x1a]
	movs r2, #0xf8
	lsls r2, r2, #3
	adds r1, r2, #0
	ands r0, r1
	lsrs r0, r0, #6
	bl sub_80047FC
	adds r4, r0, #0
	ldr r0, _08004334 @ =gUnknown_0300642C
	ldr r0, [r0]
	cmp r0, r4
	bne _08004292
	b _08004430
_08004292:
	ldr r3, [sp, #0xc]
	cmp r3, #0
	bne _080042A4
	ldr r0, _08004338 @ =gUnknown_030011B0
	ldrb r0, [r0]
	subs r0, #1
	adds r1, r7, #0
	adds r1, #0x23
	strb r0, [r1]
_080042A4:
	ldr r2, _0800433C @ =0x040000D4
	mov r0, r8
	ldrb r1, [r0, #1]
	ldr r3, [sp, #0xc]
	adds r1, r1, r3
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r5, r0
	str r0, [r2]
	str r4, [r2, #4]
	ldr r0, _08004340 @ =0x80000003
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r1, [r4, #2]
	ldr r5, _08004344 @ =0x000001FF
	adds r0, r5, #0
	adds r2, r0, #0
	ands r2, r1
	mov sb, r2
	ldrh r2, [r4]
	ldrb r3, [r4]
	mov ip, r3
	movs r0, #0xfe
	lsls r0, r0, #8
	adds r5, r0, #0
	ands r5, r1
	movs r6, #0
	strh r5, [r4, #2]
	adds r3, r0, #0
	ands r3, r2
	strh r3, [r4]
	adds r0, r7, #0
	adds r0, #0x25
	ldrb r0, [r0]
	lsls r0, r0, #0xc
	ldrh r1, [r4, #4]
	adds r0, r0, r1
	strh r0, [r4, #4]
	ldr r2, [r7, #0x10]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08004348
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	adds r2, r3, #0
	orrs r2, r0
	orrs r2, r6
	strh r2, [r4]
	ldr r0, [r7, #0x10]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800431E
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	orrs r2, r0
	strh r2, [r4]
_0800431E:
	ldr r0, [r7, #0x10]
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #9
	ldrh r1, [r4, #2]
	orrs r0, r1
	strh r0, [r4, #2]
	b _080043BA
	.align 2, 0
_08004330: .4byte gUnknown_03002034
_08004334: .4byte gUnknown_0300642C
_08004338: .4byte gUnknown_030011B0
_0800433C: .4byte 0x040000D4
_08004340: .4byte 0x80000003
_08004344: .4byte 0x000001FF
_08004348:
	movs r1, #0xc0
	lsls r1, r1, #8
	adds r0, r3, #0
	ands r0, r1
	lsrs r3, r0, #0xc
	adds r0, r5, #0
	ands r0, r1
	lsrs r0, r0, #0xe
	orrs r3, r0
	lsrs r1, r2, #0xb
	movs r6, #1
	mov r2, r8
	ldrb r0, [r2]
	lsrs r0, r0, #1
	eors r0, r1
	ands r0, r6
	cmp r0, #0
	beq _0800438A
	movs r0, #0x80
	lsls r0, r0, #6
	adds r1, r0, #0
	adds r0, r5, #0
	eors r0, r1
	strh r0, [r4, #2]
	lsls r0, r3, #1
	ldr r1, _08004440 @ =gOamShapesSizes+1
	adds r0, r0, r1
	ldrb r0, [r0]
	ldr r2, [sp, #8]
	subs r0, r2, r0
	mov r5, ip
	subs r5, r0, r5
	mov ip, r5
_0800438A:
	ldr r0, [r7, #0x10]
	lsrs r0, r0, #0xa
	ands r0, r6
	mov r1, r8
	ldrb r2, [r1]
	adds r1, r6, #0
	ands r1, r2
	cmp r0, r1
	beq _080043BA
	ldrh r0, [r4, #2]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	eors r0, r1
	strh r0, [r4, #2]
	lsls r0, r3, #1
	ldr r3, _08004444 @ =gOamShapesSizes
	adds r0, r0, r3
	ldrb r0, [r0]
	ldr r5, [sp, #4]
	subs r0, r5, r0
	mov r1, sb
	subs r1, r0, r1
	mov sb, r1
_080043BA:
	ldr r2, [r7, #0x10]
	movs r0, #0xc0
	lsls r0, r0, #1
	ands r2, r0
	lsls r2, r2, #3
	ldrh r0, [r4]
	orrs r2, r0
	strh r2, [r4]
	ldr r0, [r7, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #6
	ands r0, r1
	lsrs r3, r0, #2
	ldrh r0, [r4, #4]
	orrs r3, r0
	strh r3, [r4, #4]
	mov r0, sl
	add r0, ip
	movs r1, #0xff
	ands r0, r1
	adds r2, r2, r0
	strh r2, [r4]
	ldr r0, [sp]
	add r0, sb
	ldr r5, _08004448 @ =0x000001FF
	adds r1, r5, #0
	ands r0, r1
	ldrh r1, [r4, #2]
	adds r0, r0, r1
	strh r0, [r4, #2]
	movs r5, #0x80
	lsls r5, r5, #6
	adds r0, r5, #0
	ands r2, r0
	cmp r2, #0
	beq _0800440E
	ldr r0, _0800444C @ =0x000003FF
	adds r1, r0, #0
	adds r0, r3, #0
	ands r0, r1
	adds r0, r3, r0
	strh r0, [r4, #4]
_0800440E:
	ldr r0, [r7, #4]
	ldr r1, _08004450 @ =0xF9FF0000
	adds r0, r0, r1
	lsrs r0, r0, #5
	ldrh r2, [r4, #4]
	adds r0, r0, r2
	strh r0, [r4, #4]
	ldr r0, [sp, #0xc]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
	mov r3, r8
	ldrh r3, [r3, #2]
	cmp r0, r3
	bhs _08004430
	b _08004268
_08004430:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004440: .4byte gOamShapesSizes+1
_08004444: .4byte gOamShapesSizes
_08004448: .4byte 0x000001FF
_0800444C: .4byte 0x000003FF
_08004450: .4byte 0xF9FF0000

	thumb_func_start sub_8004454
sub_8004454: @ 0x08004454
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	mov r8, r0
	str r1, [sp, #8]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0xc]
	ldr r2, [r0, #0xc]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _08004476
	b _080047D0
_08004476:
	mov sl, r2
	ldrh r1, [r2, #2]
	mov r0, r8
	adds r0, #0x24
	strb r1, [r0]
	mov r1, r8
	movs r2, #0x16
	ldrsh r0, [r1, r2]
	str r0, [sp]
	movs r4, #0x18
	ldrsh r0, [r1, r4]
	str r0, [sp, #4]
	ldr r3, [r1, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r3
	cmp r0, #0
	beq _080044B0
	ldr r2, _080044F0 @ =gUnknown_030010B4
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, [sp]
	subs r0, r0, r1
	str r0, [sp]
	movs r4, #2
	ldrsh r1, [r2, r4]
	ldr r0, [sp, #4]
	subs r0, r0, r1
	str r0, [sp, #4]
_080044B0:
	mov r0, sl
	ldrh r0, [r0, #4]
	str r0, [sp, #0x10]
	mov r1, sl
	ldrh r1, [r1, #6]
	str r1, [sp, #0x14]
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	beq _080044F4
	movs r0, #0x40
	ands r3, r0
	cmp r3, #0
	beq _0800453C
	ldr r2, [sp, #0x10]
	lsrs r1, r2, #1
	ldr r0, [sp]
	subs r0, r0, r1
	str r0, [sp]
	mov r4, sl
	ldrh r1, [r4, #6]
	lsrs r1, r1, #1
	ldr r0, [sp, #4]
	subs r0, r0, r1
	str r0, [sp, #4]
	lsls r2, r2, #1
	str r2, [sp, #0x10]
	ldr r0, [sp, #0x14]
	lsls r0, r0, #1
	str r0, [sp, #0x14]
	b _0800453C
	.align 2, 0
_080044F0: .4byte gUnknown_030010B4
_080044F4:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r3, r0
	cmp r3, #0
	beq _0800450A
	mov r2, sl
	movs r4, #0xa
	ldrsh r1, [r2, r4]
	ldr r0, [sp, #0x14]
	subs r1, r0, r1
	b _08004510
_0800450A:
	mov r2, sl
	movs r4, #0xa
	ldrsh r1, [r2, r4]
_08004510:
	ldr r0, [sp, #4]
	subs r0, r0, r1
	str r0, [sp, #4]
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08004530
	mov r2, sl
	movs r4, #8
	ldrsh r1, [r2, r4]
	ldr r0, [sp, #0x10]
	subs r1, r0, r1
	b _08004536
_08004530:
	mov r2, sl
	movs r4, #8
	ldrsh r1, [r2, r4]
_08004536:
	ldr r0, [sp]
	subs r0, r0, r1
	str r0, [sp]
_0800453C:
	mov r0, r8
	movs r2, #0x16
	ldrsh r1, [r0, r2]
	ldr r0, [sp]
	subs r0, r0, r1
	str r0, [sp, #0x24]
	mov r4, r8
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	ldr r0, [sp, #4]
	subs r0, r0, r1
	str r0, [sp, #0x28]
	ldr r0, [sp]
	ldr r1, [sp, #0x10]
	adds r0, r0, r1
	cmp r0, #0
	bge _08004560
	b _080047D0
_08004560:
	ldr r0, [sp]
	cmp r0, #0xf0
	ble _08004568
	b _080047D0
_08004568:
	ldr r0, [sp, #4]
	ldr r2, [sp, #0x14]
	adds r0, r0, r2
	cmp r0, #0
	bge _08004574
	b _080047D0
_08004574:
	ldr r0, [sp, #4]
	cmp r0, #0xa0
	ble _0800457C
	b _080047D0
_0800457C:
	movs r4, #0
	str r4, [sp, #0x18]
	mov r0, sl
	ldrh r0, [r0, #2]
	cmp r4, r0
	blo _0800458A
	b _080047D0
_0800458A:
	ldr r0, _08004644 @ =gUnknown_03002034
	ldr r1, [r0]
	mov r2, r8
	ldrh r0, [r2, #0xa]
	ldr r1, [r1, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	ldrh r0, [r2, #0x1a]
	movs r2, #0xf8
	lsls r2, r2, #3
	adds r1, r2, #0
	ands r0, r1
	lsrs r0, r0, #6
	bl sub_80047FC
	adds r6, r0, #0
	ldr r0, _08004648 @ =gUnknown_0300642C
	ldr r0, [r0]
	cmp r0, r6
	bne _080045B6
	b _080047D0
_080045B6:
	ldr r2, _0800464C @ =0x040000D4
	mov r0, sl
	ldrb r1, [r0, #1]
	ldr r0, [sp, #0x18]
	adds r1, r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r4, r0
	str r0, [r2]
	str r6, [r2, #4]
	ldr r0, _08004650 @ =0x80000003
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r1, [r6, #2]
	ldr r2, _08004654 @ =0x000001FF
	adds r0, r2, #0
	adds r4, r0, #0
	ands r4, r1
	str r4, [sp, #0x1c]
	ldrh r0, [r6]
	ldrb r2, [r6]
	str r2, [sp, #0x20]
	movs r3, #0xfe
	lsls r3, r3, #8
	ands r3, r1
	movs r4, #0
	strh r3, [r6, #2]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r2, r0
	strh r2, [r6]
	mov r0, r8
	adds r0, #0x25
	ldrb r0, [r0]
	lsls r0, r0, #0xc
	ldrh r1, [r6, #4]
	adds r0, r0, r1
	strh r0, [r6, #4]
	mov r0, r8
	ldr r5, [r0, #0x10]
	movs r0, #0x20
	ands r0, r5
	cmp r0, #0
	beq _08004658
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	orrs r2, r0
	orrs r2, r4
	strh r2, [r6]
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08004632
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r4, #0
	orrs r2, r0
	strh r2, [r6]
_08004632:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #9
	ldrh r1, [r6, #2]
	orrs r0, r1
	strh r0, [r6, #2]
	b _080046CE
	.align 2, 0
_08004644: .4byte gUnknown_03002034
_08004648: .4byte gUnknown_0300642C
_0800464C: .4byte 0x040000D4
_08004650: .4byte 0x80000003
_08004654: .4byte 0x000001FF
_08004658:
	movs r1, #0xc0
	lsls r1, r1, #8
	adds r0, r2, #0
	ands r0, r1
	lsrs r4, r0, #0xc
	adds r0, r3, #0
	ands r0, r1
	lsrs r0, r0, #0xe
	orrs r4, r0
	lsrs r1, r5, #0xb
	movs r5, #1
	mov r2, sl
	ldrb r0, [r2]
	lsrs r0, r0, #1
	eors r0, r1
	ands r0, r5
	cmp r0, #0
	beq _0800469C
	movs r0, #0x80
	lsls r0, r0, #6
	adds r1, r0, #0
	adds r0, r3, #0
	eors r0, r1
	strh r0, [r6, #2]
	ldr r0, _080047E0 @ =gOamShapesSizes
	lsls r1, r4, #1
	adds r0, #1
	adds r1, r1, r0
	ldrb r0, [r1]
	ldr r1, [sp, #0x14]
	subs r0, r1, r0
	ldr r2, [sp, #0x20]
	subs r2, r0, r2
	str r2, [sp, #0x20]
_0800469C:
	mov r1, r8
	ldr r0, [r1, #0x10]
	lsrs r0, r0, #0xa
	ands r0, r5
	mov r1, sl
	ldrb r2, [r1]
	adds r1, r5, #0
	ands r1, r2
	cmp r0, r1
	beq _080046CE
	ldrh r0, [r6, #2]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	eors r0, r1
	strh r0, [r6, #2]
	ldr r1, _080047E0 @ =gOamShapesSizes
	lsls r0, r4, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	ldr r4, [sp, #0x10]
	subs r0, r4, r0
	ldr r1, [sp, #0x1c]
	subs r1, r0, r1
	str r1, [sp, #0x1c]
_080046CE:
	mov r4, r8
	ldr r2, [r4, #0x10]
	movs r0, #0xc0
	lsls r0, r0, #1
	ands r2, r0
	lsls r2, r2, #3
	ldrh r0, [r6]
	orrs r2, r0
	strh r2, [r6]
	ldr r0, [r4, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #6
	ands r0, r1
	lsrs r3, r0, #2
	ldrh r0, [r6, #4]
	orrs r3, r0
	strh r3, [r6, #4]
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x20]
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	adds r2, r2, r0
	strh r2, [r6]
	ldr r0, [sp]
	ldr r4, [sp, #0x1c]
	adds r0, r0, r4
	ldr r4, _080047E4 @ =0x000001FF
	adds r1, r4, #0
	ands r0, r1
	ldrh r1, [r6, #2]
	adds r0, r0, r1
	strh r0, [r6, #2]
	movs r4, #0x80
	lsls r4, r4, #6
	adds r0, r4, #0
	ands r2, r0
	cmp r2, #0
	beq _08004728
	ldr r0, _080047E8 @ =0x000003FF
	adds r1, r0, #0
	adds r0, r3, #0
	ands r0, r1
	adds r0, r3, r0
	strh r0, [r6, #4]
_08004728:
	mov r1, r8
	ldr r0, [r1, #4]
	ldr r2, _080047EC @ =0xF9FF0000
	adds r0, r0, r2
	lsrs r0, r0, #5
	ldrh r4, [r6, #4]
	adds r0, r0, r4
	strh r0, [r6, #4]
	movs r7, #0
	ldr r0, [sp, #0xc]
	cmp r7, r0
	bhs _080047BC
	ldr r1, _080047F0 @ =0x040000D4
	mov sb, r1
_08004744:
	mov r2, r8
	ldrh r0, [r2, #0x1a]
	movs r4, #0xf8
	lsls r4, r4, #3
	adds r1, r4, #0
	ands r0, r1
	lsrs r0, r0, #6
	bl sub_80047FC
	adds r5, r0, #0
	ldr r0, _080047F4 @ =gUnknown_0300642C
	ldr r0, [r0]
	cmp r0, r6
	beq _080047D0
	mov r0, sb
	str r6, [r0]
	str r5, [r0, #4]
	ldr r0, _080047F8 @ =0x80000003
	mov r1, sb
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r4, [r5, #2]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r4, r2
	strh r4, [r5, #2]
	ldrh r2, [r5]
	movs r1, #0xff
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r2, r0
	strh r2, [r5]
	lsls r3, r7, #2
	ldr r0, [sp, #8]
	adds r3, r3, r0
	ldrh r0, [r3, #2]
	ldr r1, [sp, #0x28]
	adds r0, r0, r1
	ldr r1, [sp, #0x20]
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	adds r2, r2, r0
	strh r2, [r5]
	ldrh r0, [r3]
	ldr r2, [sp, #0x24]
	adds r0, r0, r2
	ldr r1, [sp, #0x1c]
	adds r0, r0, r1
	ldr r2, _080047E4 @ =0x000001FF
	adds r1, r2, #0
	ands r0, r1
	adds r4, r4, r0
	strh r4, [r5, #2]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r4, [sp, #0xc]
	cmp r7, r4
	blo _08004744
_080047BC:
	ldr r0, [sp, #0x18]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	mov r1, sl
	ldrh r1, [r1, #2]
	cmp r0, r1
	bhs _080047D0
	b _0800458A
_080047D0:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080047E0: .4byte gOamShapesSizes
_080047E4: .4byte 0x000001FF
_080047E8: .4byte 0x000003FF
_080047EC: .4byte 0xF9FF0000
_080047F0: .4byte 0x040000D4
_080047F4: .4byte gUnknown_0300642C
_080047F8: .4byte 0x80000003

	thumb_func_start sub_80047FC
sub_80047FC: @ 0x080047FC
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x1f
	bls _08004808
	movs r5, #0x1f
_08004808:
	ldr r0, _0800481C @ =gUnknown_030011B0
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r4, r0, #0
	cmp r1, #0
	bge _08004824
	ldr r0, _08004820 @ =gUnknown_0300642C
	ldr r0, [r0]
	b _08004880
	.align 2, 0
_0800481C: .4byte gUnknown_030011B0
_08004820: .4byte gUnknown_0300642C
_08004824:
	ldr r0, _08004848 @ =gUnknown_03001110
	adds r2, r5, r0
	ldrb r0, [r2]
	cmp r0, #0xff
	bne _08004854
	ldr r1, _0800484C @ =gUnknown_03001B80
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r1
	movs r1, #0xff
	strb r1, [r0, #6]
	ldrb r0, [r4]
	strb r0, [r2]
	ldr r0, _08004850 @ =gUnknown_03004600
	adds r0, r5, r0
	ldrb r1, [r4]
	strb r1, [r0]
	b _08004872
	.align 2, 0
_08004848: .4byte gUnknown_03001110
_0800484C: .4byte gUnknown_03001B80
_08004850: .4byte gUnknown_03004600
_08004854:
	ldr r3, _08004888 @ =gUnknown_03001B80
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r3
	movs r1, #0xff
	strb r1, [r0, #6]
	ldr r2, _0800488C @ =gUnknown_03004600
	adds r2, r5, r2
	ldrb r0, [r2]
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrb r1, [r4]
	strb r1, [r0, #6]
	ldrb r0, [r4]
	strb r0, [r2]
_08004872:
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	ldrb r0, [r4]
	lsls r0, r0, #3
	ldr r1, _08004890 @ =gRepeatedKeys
	adds r0, r0, r1
_08004880:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08004888: .4byte gUnknown_03001B80
_0800488C: .4byte gUnknown_03004600
_08004890: .4byte gRepeatedKeys

	thumb_func_start sub_8004894
sub_8004894: @ 0x08004894
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r5, _08004944 @ =gUnknown_03004630
	movs r0, #0
	mov sb, r0
	movs r3, #0
	ldr r1, _08004948 @ =gUnknown_03002380
	mov sl, r1
	mov r2, sp
	adds r2, #8
	str r2, [sp, #0xc]
_080048B2:
	ldr r1, _0800494C @ =gUnknown_03001110
	adds r0, r3, r1
	ldrb r0, [r0]
	lsls r2, r0, #0x18
	asrs r0, r2, #0x18
	adds r6, r3, #1
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080048FA
	ldr r4, _08004950 @ =0x040000D4
	mov r8, r1
	ldr r0, _08004954 @ =gUnknown_03001FB0
	mov ip, r0
	ldr r7, _08004958 @ =gUnknown_03001B80
_080048D0:
	asrs r2, r2, #0x18
	lsls r3, r2, #3
	adds r3, r3, r7
	str r3, [r4]
	str r5, [r4, #4]
	ldr r0, _0800495C @ =0x80000003
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	adds r5, #8
	add r2, ip
	mov r1, sb
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	strb r1, [r2]
	ldrb r0, [r3, #6]
	lsls r2, r0, #0x18
	asrs r0, r2, #0x18
	cmp r0, r8
	bne _080048D0
_080048FA:
	adds r3, r6, #0
	cmp r3, #0x1f
	ble _080048B2
	ldr r2, _08004960 @ =gFlags
	ldr r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0800496C
	ldr r0, _08004964 @ =gUnknown_030011B0
	ldrb r3, [r0]
	lsls r0, r3, #3
	ldr r1, _08004944 @ =gUnknown_03004630
	adds r5, r0, r1
	mov r2, sl
	ldrb r0, [r2]
	cmp r3, r0
	bge _080049F8
	mov r4, sp
	movs r1, #0x80
	lsls r1, r1, #2
	adds r7, r1, #0
	ldr r1, _08004950 @ =0x040000D4
	ldr r6, _08004968 @ =0x81000003
_0800492C:
	strh r7, [r4]
	mov r0, sp
	str r0, [r1]
	str r5, [r1, #4]
	str r6, [r1, #8]
	ldr r0, [r1, #8]
	adds r5, #8
	adds r3, #1
	ldrb r0, [r2]
	cmp r3, r0
	blt _0800492C
	b _080049F8
	.align 2, 0
_08004944: .4byte gUnknown_03004630
_08004948: .4byte gUnknown_03002380
_0800494C: .4byte gUnknown_03001110
_08004950: .4byte 0x040000D4
_08004954: .4byte gUnknown_03001FB0
_08004958: .4byte gUnknown_03001B80
_0800495C: .4byte 0x80000003
_08004960: .4byte gFlags
_08004964: .4byte gUnknown_030011B0
_08004968: .4byte 0x81000003
_0800496C:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080049F4
	ldr r1, _080049E0 @ =gUnknown_030011B0
	ldrb r0, [r1]
	subs r3, r0, #1
	lsls r0, r3, #3
	ldr r2, _080049E4 @ =gUnknown_03004630
	adds r5, r0, r2
	cmp r3, #0
	blt _080049A6
	ldr r2, _080049E8 @ =0x040000D4
	ldr r6, _080049EC @ =0x80000003
	ldr r0, _080049E4 @ =gUnknown_03004630
	movs r1, #0xfe
	lsls r1, r1, #2
	adds r4, r0, r1
	adds r1, r5, #0
_08004994:
	str r1, [r2]
	str r4, [r2, #4]
	str r6, [r2, #8]
	ldr r0, [r2, #8]
	subs r1, #8
	subs r3, #1
	subs r4, #8
	cmp r3, #0
	bge _08004994
_080049A6:
	ldr r2, _080049E0 @ =gUnknown_030011B0
	ldrb r1, [r2]
	movs r0, #0x80
	subs r0, r0, r1
	mov r1, sl
	strb r0, [r1]
	movs r3, #0
	ldrb r0, [r1]
	cmp r3, r0
	bge _080049F8
	mov r5, sp
	movs r2, #0x80
	lsls r2, r2, #2
	adds r7, r2, #0
	ldr r1, _080049E8 @ =0x040000D4
	adds r4, r0, #0
	ldr r6, _080049F0 @ =0x81000003
	ldr r2, _080049E4 @ =gUnknown_03004630
_080049CA:
	strh r7, [r5]
	mov r0, sp
	str r0, [r1]
	str r2, [r1, #4]
	str r6, [r1, #8]
	ldr r0, [r1, #8]
	adds r2, #8
	adds r3, #1
	cmp r3, r4
	blt _080049CA
	b _080049F8
	.align 2, 0
_080049E0: .4byte gUnknown_030011B0
_080049E4: .4byte gUnknown_03004630
_080049E8: .4byte 0x040000D4
_080049EC: .4byte 0x80000003
_080049F0: .4byte 0x81000003
_080049F4:
	mov r1, sl
	strb r0, [r1]
_080049F8:
	movs r0, #0
	ldr r2, _08004A2C @ =gUnknown_030011B0
	strb r0, [r2]
	ldr r1, _08004A30 @ =gFlags
	ldr r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08004A40
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [sp, #4]
	add r0, sp, #4
	ldr r5, _08004A34 @ =0x05000008
	ldr r1, _08004A38 @ =gUnknown_03001110
	adds r2, r5, #0
	bl sub_8099AD8
	str r4, [sp, #8]
	ldr r1, _08004A3C @ =gUnknown_03004600
	ldr r0, [sp, #0xc]
	adds r2, r5, #0
	bl sub_8099AD8
	b _08004A64
	.align 2, 0
_08004A2C: .4byte gUnknown_030011B0
_08004A30: .4byte gFlags
_08004A34: .4byte 0x05000008
_08004A38: .4byte gUnknown_03001110
_08004A3C: .4byte gUnknown_03004600
_08004A40:
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp, #8]
	ldr r0, _08004A74 @ =0x040000D4
	ldr r2, [sp, #0xc]
	str r2, [r0]
	ldr r2, _08004A78 @ =gUnknown_03001110
	str r2, [r0, #4]
	ldr r2, _08004A7C @ =0x85000008
	str r2, [r0, #8]
	ldr r3, [r0, #8]
	str r1, [sp, #8]
	ldr r1, [sp, #0xc]
	str r1, [r0]
	ldr r1, _08004A80 @ =gUnknown_03004600
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
_08004A64:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004A74: .4byte 0x040000D4
_08004A78: .4byte gUnknown_03001110
_08004A7C: .4byte 0x85000008
_08004A80: .4byte gUnknown_03004600

	thumb_func_start animCmd_GetPalette
animCmd_GetPalette: @ 0x08004A84
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	ldrh r0, [r3, #0x14]
	adds r0, #3
	strh r0, [r3, #0x14]
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	bne _08004AD8
	ldr r1, [r4, #4]
	ldr r2, _08004AE0 @ =0x040000D4
	ldr r0, _08004AE4 @ =gUnknown_03002034
	ldr r0, [r0]
	lsls r1, r1, #5
	ldr r0, [r0, #0xc]
	adds r0, r0, r1
	str r0, [r2]
	adds r0, r3, #0
	adds r0, #0x25
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldrh r1, [r4, #0xa]
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _08004AE8 @ =gUnknown_03001920
	adds r0, r0, r1
	str r0, [r2, #4]
	ldrh r0, [r4, #8]
	asrs r0, r0, #1
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r2, _08004AEC @ =gFlags
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
_08004AD8:
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08004AE0: .4byte 0x040000D4
_08004AE4: .4byte gUnknown_03002034
_08004AE8: .4byte gUnknown_03001920
_08004AEC: .4byte gFlags

	thumb_func_start animCmd_JumpBack
animCmd_JumpBack: @ 0x08004AF0
	ldr r2, [r0, #4]
	ldrh r0, [r1, #0x14]
	subs r0, r0, r2
	strh r0, [r1, #0x14]
	movs r0, #1
	bx lr

	thumb_func_start animCmd_End
animCmd_End: @ 0x08004AFC
	ldr r0, [r1, #0x10]
	movs r2, #0x80
	lsls r2, r2, #7
	orrs r0, r2
	str r0, [r1, #0x10]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start animCmd_PlaySoundEffect
animCmd_PlaySoundEffect: @ 0x08004B0C
	push {lr}
	ldrh r2, [r1, #0x14]
	adds r2, #2
	strh r2, [r1, #0x14]
	ldrh r0, [r0, #4]
	bl m4aSongNumStart
	movs r0, #1
	pop {r1}
	bx r1

	thumb_func_start sub_8004B20
sub_8004B20: @ 0x08004B20
	ldrh r2, [r1, #0x14]
	adds r2, #2
	strh r2, [r1, #0x14]
	ldrh r2, [r0, #4]
	ldrh r3, [r1, #0x16]
	adds r2, r2, r3
	strh r2, [r1, #0x16]
	ldrh r0, [r0, #6]
	ldrh r2, [r1, #0x18]
	adds r0, r0, r2
	strh r0, [r1, #0x18]
	movs r0, #1
	bx lr
	.align 2, 0

	thumb_func_start sub_8004B3C
sub_8004B3C: @ 0x08004B3C
	ldrh r0, [r1, #0x14]
	adds r0, #3
	strh r0, [r1, #0x14]
	movs r0, #1
	bx lr
	.align 2, 0

	thumb_func_start sub_8004B48
sub_8004B48: @ 0x08004B48
	ldrh r2, [r1, #0x14]
	adds r2, #2
	strh r2, [r1, #0x14]
	ldrh r2, [r0, #4]
	strh r2, [r1, #0xa]
	adds r3, r1, #0
	adds r3, #0x21
	movs r2, #0xff
	strb r2, [r3]
	ldrh r0, [r0, #6]
	adds r1, #0x20
	strb r0, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_8004B68
sub_8004B68: @ 0x08004B68
	ldrh r2, [r1, #0x14]
	adds r2, #4
	strh r2, [r1, #0x14]
	bx lr

	thumb_func_start sub_8004B70
sub_8004B70: @ 0x08004B70
	ldrh r2, [r1, #0x14]
	adds r2, #2
	strh r2, [r1, #0x14]
	ldr r2, [r1, #0x10]
	ldr r3, _08004B88 @ =0xFFFFCFFF
	ands r2, r3
	ldr r0, [r0, #4]
	lsls r0, r0, #0xc
	orrs r2, r0
	str r2, [r1, #0x10]
	movs r0, #1
	bx lr
	.align 2, 0
_08004B88: .4byte 0xFFFFCFFF

	thumb_func_start sub_8004B8C
sub_8004B8C: @ 0x08004B8C
	ldrh r2, [r1, #0x14]
	adds r2, #2
	strh r2, [r1, #0x14]
	ldr r0, [r0, #4]
	lsls r0, r0, #6
	strh r0, [r1, #0x1a]
	movs r0, #1
	bx lr

	thumb_func_start sub_8004B9C
sub_8004B9C: @ 0x08004B9C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	ldr r4, [sp, #0x4c]
	ldr r5, [sp, #0x50]
	mov sb, r5
	ldr r5, [sp, #0x54]
	ldr r6, [sp, #0x58]
	ldr r7, [sp, #0x5c]
	mov r8, r7
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #4]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sl, r3
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #8]
	mov r0, sb
	lsls r0, r0, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #0xc]
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	mov r1, r8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x10]
	movs r2, #1
	str r2, [sp, #0x14]
	lsrs r5, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	beq _08004BFE
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	bne _08004C10
_08004BFE:
	ldr r0, _08004C0C @ =gFlags
	ldr r1, [r0]
	movs r2, #5
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0]
	b _08004EE6
	.align 2, 0
_08004C0C: .4byte gFlags
_08004C10:
	ldr r3, [sp, #0xc]
	mov r4, ip
	subs r0, r3, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r7, [sp, #4]
	subs r0, r7, r3
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r2, #0
	bge _08004C50
	movs r0, #0xff
	str r0, [sp, #0x14]
	rsbs r0, r2, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r2, [sp, #0xc]
	adds r0, r2, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	subs r0, r2, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	eors r1, r3
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	eors r3, r0
	lsls r0, r3, #0x10
	eors r0, r1
	lsrs r1, r0, #0x10
_08004C50:
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	lsls r1, r5, #0x10
	asrs r7, r1, #0x10
	adds r0, r4, #0
	muls r0, r7, r0
	asrs r0, r0, #8
	mov r5, sl
	subs r2, r6, r5
	str r1, [sp, #0x20]
	lsls r3, r3, #0x10
	mov r8, r3
	ldr r1, [sp, #8]
	subs r1, r1, r6
	str r1, [sp, #0x28]
	ldr r3, [sp]
	lsls r3, r3, #2
	str r3, [sp, #0x1c]
	ldr r5, [sp, #0x14]
	lsls r5, r5, #0x18
	str r5, [sp, #0x24]
	cmp r0, r2
	bge _08004CC4
	mov r3, sl
	lsls r0, r7, #8
	muls r0, r4, r0
	lsls r0, r0, #8
	asrs r0, r0, #0x18
	subs r0, r6, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	lsls r1, r3, #2
	ldr r7, _08004D70 @ =gUnknown_03001144
	ldr r0, [r7]
	adds r4, r0, r1
	mov r0, ip
	subs r5, r0, r3
	ldr r1, _08004D74 @ =0x000001FF
	adds r0, r1, #0
	ands r5, r0
	cmp r3, sl
	bhs _08004CC4
_08004CA6:
	mov r2, sp
	ldrh r2, [r2, #0x10]
	strh r2, [r4]
	adds r4, #2
	adds r0, r5, #0
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	strh r0, [r4]
	adds r4, #2
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, sl
	blo _08004CA6
_08004CC4:
	mov r3, r8
	asrs r2, r3, #0x10
	ldr r4, [sp, #0x20]
	asrs r1, r4, #0x10
	adds r0, r2, #0
	muls r0, r1, r0
	asrs r0, r0, #8
	mov r5, sl
	subs r5, r6, r5
	mov r8, r5
	mov r7, sl
	lsls r7, r7, #2
	mov sb, r7
	ldr r3, [sp, #0x28]
	cmp r0, r3
	bge _08004D2C
	ldr r7, [sp, #8]
	lsls r0, r1, #8
	muls r0, r2, r0
	lsls r0, r0, #8
	asrs r0, r0, #0x18
	adds r0, r6, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	adds r3, r0, #0
	lsls r1, r0, #2
	ldr r4, _08004D70 @ =gUnknown_03001144
	ldr r0, [r4]
	adds r4, r0, r1
	ldr r0, [sp, #4]
	subs r5, r0, r3
	ldr r1, _08004D74 @ =0x000001FF
	adds r0, r1, #0
	ands r5, r0
	cmp r3, r7
	bhs _08004D2C
_08004D0E:
	mov r2, sp
	ldrh r2, [r2, #0x10]
	strh r2, [r4]
	adds r4, #2
	adds r0, r5, #0
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	strh r0, [r4]
	adds r4, #2
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r7
	blo _08004D0E
_08004D2C:
	ldr r3, _08004D78 @ =gFlags
	ldr r0, [r3]
	movs r1, #4
	orrs r0, r1
	str r0, [r3]
	ldr r4, [sp, #0x1c]
	ldr r5, _08004D7C @ =0x04000010
	adds r0, r4, r5
	ldr r7, _08004D80 @ =gUnknown_03002118
	str r0, [r7]
	ldr r0, _08004D84 @ =gUnknown_03002320
	strb r1, [r0]
	ldr r1, _08004D70 @ =gUnknown_03001144
	ldr r0, [r1]
	mov r2, sb
	adds r4, r0, r2
	mov r3, r8
	lsls r6, r3, #8
	lsls r0, r3, #0x10
	ldr r5, [sp, #0x20]
	asrs r1, r5, #0x10
	bl sub_8099B78
	asrs r2, r0, #8
	ldr r7, [sp, #0x24]
	asrs r1, r7, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08004D88
	ldr r1, [sp, #0xc]
	subs r0, r1, r2
	b _08004D8C
	.align 2, 0
_08004D70: .4byte gUnknown_03001144
_08004D74: .4byte 0x000001FF
_08004D78: .4byte gFlags
_08004D7C: .4byte 0x04000010
_08004D80: .4byte gUnknown_03002118
_08004D84: .4byte gUnknown_03002320
_08004D88:
	ldr r1, [sp, #0xc]
	adds r0, r1, r2
_08004D8C:
	mov r3, sl
	subs r5, r0, r3
	ldr r7, _08004E34 @ =0x000001FF
	adds r0, r7, #0
	ands r5, r0
	ldr r0, [sp, #0x20]
	asrs r7, r0, #0x10
	adds r0, r2, #0
	muls r0, r7, r0
	subs r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08004DBA
	ldr r2, [sp, #0x24]
	asrs r0, r2, #0x18
	subs r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	subs r0, r7, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_08004DBA:
	movs r3, #0x80
	lsls r3, r3, #1
	mov r8, r3
	cmp r7, r8
	ble _08004E38
	mov r3, sl
	ldr r0, [sp, #8]
	cmp r3, r0
	blo _08004DCE
	b _08004EE6
_08004DCE:
	ldr r1, [sp, #0x20]
	mov sl, r1
	mov sb, r7
	ldr r2, _08004E34 @ =0x000001FF
	mov ip, r2
_08004DD8:
	mov r7, sp
	ldrh r7, [r7, #0x10]
	strh r7, [r4]
	adds r4, #2
	strh r5, [r4]
	adds r4, #2
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r2, r6, #0x10
	asrs r0, r2, #0x10
	mov r7, sl
	adds r3, #1
	mov r8, r3
	cmp r0, sb
	ble _08004E22
	ldr r0, [sp, #0x24]
	asrs r3, r0, #0x18
_08004E0A:
	adds r0, r5, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r2, #0x10
	asrs r1, r7, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r2, r6, #0x10
	asrs r0, r2, #0x10
	cmp r0, r1
	bgt _08004E0A
_08004E22:
	mov r1, ip
	ands r5, r1
	mov r2, r8
	lsls r0, r2, #0x18
	lsrs r3, r0, #0x18
	ldr r7, [sp, #8]
	cmp r3, r7
	blo _08004DD8
	b _08004EE6
	.align 2, 0
_08004E34: .4byte 0x000001FF
_08004E38:
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r7, #0
	bl sub_8099CE0
	lsrs r0, r0, #8
	movs r1, #0xff
	ands r0, r1
	adds r1, r0, #0
	muls r1, r7, r1
	mov r2, r8
	subs r1, r2, r1
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r3, [sp, #0x24]
	asrs r1, r3, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08004E78
	mov r1, sb
	lsls r0, r1, #0x10
	movs r3, #0x80
	lsls r3, r3, #0xa
	adds r0, r0, r3
	rsbs r0, r0, #0
	lsrs r0, r0, #0x10
	mov sb, r0
_08004E78:
	mov r3, sl
	ldr r0, [sp, #8]
	cmp r3, r0
	bhs _08004EE6
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x20]
	mov ip, r1
	mov sl, r7
_08004E8C:
	mov r2, sp
	ldrh r2, [r2, #0x10]
	strh r2, [r4]
	adds r4, #2
	strh r5, [r4]
	adds r4, #2
	mov r7, sb
	adds r0, r5, r7
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x18]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r2, r6, #0x10
	asrs r0, r2, #0x10
	mov r7, ip
	adds r3, #1
	mov r8, r3
	cmp r0, sl
	ble _08004ED6
	ldr r0, [sp, #0x24]
	asrs r3, r0, #0x18
_08004EBE:
	adds r0, r5, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r2, #0x10
	asrs r1, r7, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r2, r6, #0x10
	asrs r0, r2, #0x10
	cmp r0, r1
	bgt _08004EBE
_08004ED6:
	ldr r1, _08004EF8 @ =0x000001FF
	ands r5, r1
	mov r2, r8
	lsls r0, r2, #0x18
	lsrs r3, r0, #0x18
	ldr r7, [sp, #8]
	cmp r3, r7
	blo _08004E8C
_08004EE6:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004EF8: .4byte 0x000001FF

	thumb_func_start sub_8004EFC
sub_8004EFC: @ 0x08004EFC
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
	ldr r1, _08004F44 @ =gUnknown_03002320
	strb r7, [r1]
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _08004F4C
	ldr r0, _08004F48 @ =gUnknown_03001144
	ldr r0, [r0]
	adds r3, r0, #2
	b _08004F80
	.align 2, 0
_08004F40: .4byte gFlags
_08004F44: .4byte gUnknown_03002320
_08004F48: .4byte gUnknown_03001144
_08004F4C:
	ldr r0, _08004F54 @ =gUnknown_03001144
	ldr r3, [r0]
	b _08004F80
	.align 2, 0
_08004F54: .4byte gUnknown_03001144
_08004F58:
	ldr r1, _08004F70 @ =gUnknown_03002320
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08004F74 @ =gUnknown_03001144
	ldr r3, [r0]
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _08004F80
	ldr r1, _08004F78 @ =gUnknown_03002118
	ldr r0, _08004F7C @ =0x04000042
	b _08004F84
	.align 2, 0
_08004F70: .4byte gUnknown_03002320
_08004F74: .4byte gUnknown_03001144
_08004F78: .4byte gUnknown_03002118
_08004F7C: .4byte 0x04000042
_08004F80:
	ldr r1, _08004FE8 @ =gUnknown_03002118
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
	ldr r4, _08004FF0 @ =gUnknown_03002320
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
_08004FE8: .4byte gUnknown_03002118
_08004FEC: .4byte 0x04000040
_08004FF0: .4byte gUnknown_03002320
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
	ldr r1, _08005040 @ =gUnknown_03002320
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
_08005040: .4byte gUnknown_03002320
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
	ldr r1, _080050A0 @ =gUnknown_03002320
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
_080050A0: .4byte gUnknown_03002320
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
	ldr r1, _08005104 @ =gUnknown_03002320
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
_08005104: .4byte gUnknown_03002320
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
	ldr r1, _0800516C @ =gUnknown_03002320
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
_0800516C: .4byte gUnknown_03002320

	thumb_func_start sub_8005170
sub_8005170: @ 0x08005170
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, [sp, #0x20]
	ldr r5, [sp, #0x24]
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sl, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov ip, r5
	ldr r1, _080051C0 @ =gFlags
	ldr r0, [r1]
	movs r2, #4
	orrs r0, r2
	str r0, [r1]
	cmp r7, #1
	bls _080051D8
	ldr r1, _080051C4 @ =gUnknown_03002320
	strb r2, [r1]
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq _080051CC
	ldr r0, _080051C8 @ =gUnknown_03001144
	ldr r0, [r0]
	adds r3, r0, #2
	b _08005200
	.align 2, 0
_080051C0: .4byte gFlags
_080051C4: .4byte gUnknown_03002320
_080051C8: .4byte gUnknown_03001144
_080051CC:
	ldr r0, _080051D4 @ =gUnknown_03001144
	ldr r3, [r0]
	b _08005200
	.align 2, 0
_080051D4: .4byte gUnknown_03001144
_080051D8:
	ldr r1, _080051F0 @ =gUnknown_03002320
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080051F4 @ =gUnknown_03001144
	ldr r3, [r0]
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq _08005200
	ldr r1, _080051F8 @ =gUnknown_03002118
	ldr r0, _080051FC @ =0x04000042
	b _08005204
	.align 2, 0
_080051F0: .4byte gUnknown_03002320
_080051F4: .4byte gUnknown_03001144
_080051F8: .4byte gUnknown_03002118
_080051FC: .4byte 0x04000042
_08005200:
	ldr r1, _08005268 @ =gUnknown_03002118
	ldr r0, _0800526C @ =0x04000040
_08005204:
	str r0, [r1]
	mov r0, r8
	subs r1, r0, r6
	mov r2, sl
	subs r0, r4, r2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r5, r1, #0x10
	asrs r2, r5, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _0800521E
	rsbs r0, r2, #0
_0800521E:
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	adds r4, r1, #0
	mov sb, r0
	cmp r1, #0
	bge _08005232
	rsbs r4, r1, #0
_08005232:
	lsls r0, r4, #0x11
	lsrs r7, r0, #0x10
	ldr r4, _08005270 @ =gUnknown_03002320
	ldrb r0, [r4]
	mov r4, sl
	muls r4, r0, r4
	adds r0, r4, #0
	adds r3, r3, r0
	adds r4, r2, #0
	cmp r2, #0
	bge _0800524A
	rsbs r4, r2, #0
_0800524A:
	adds r0, r1, #0
	cmp r1, #0
	bge _08005252
	rsbs r0, r1, #0
_08005252:
	cmp r4, r0
	ble _08005324
	rsbs r0, r2, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r2, #0
	ble _080052C4
	mov r0, ip
	strb r0, [r3, #1]
	movs r2, #0
	b _080052AC
	.align 2, 0
_08005268: .4byte gUnknown_03002118
_0800526C: .4byte 0x04000040
_08005270: .4byte gUnknown_03002320
_08005274:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	blt _080052A6
	mov r4, r8
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	strb r6, [r3]
	ldr r1, _080052C0 @ =gUnknown_03002320
	ldrb r0, [r1]
	adds r3, r3, r0
	mov r0, ip
	strb r0, [r3, #1]
_080052A6:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080052AC:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	asrs r0, r5, #0x10
	cmp r0, #0
	bge _080052B8
	rsbs r0, r0, #0
_080052B8:
	cmp r2, r0
	blt _08005274
	strb r6, [r3]
	b _080053DE
	.align 2, 0
_080052C0: .4byte gUnknown_03002320
_080052C4:
	strb r6, [r3]
	adds r3, #1
	movs r2, #0
	b _08005308
_080052CC:
	subs r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	blt _08005302
	mov r4, r8
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r0, ip
	strb r0, [r3]
	ldr r1, _08005320 @ =gUnknown_03002320
	ldrb r0, [r1]
	adds r0, r0, r3
	subs r3, r0, #1
	strb r6, [r3]
	adds r3, #1
_08005302:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08005308:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	asrs r0, r5, #0x10
	cmp r0, #0
	bge _08005314
	rsbs r0, r0, #0
_08005314:
	cmp r2, r0
	blt _080052CC
	mov r2, ip
	strb r2, [r3]
	b _080053DE
	.align 2, 0
_08005320: .4byte gUnknown_03002320
_08005324:
	rsbs r0, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r2, #0
	ble _08005388
	movs r2, #0
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r7, #0x10
	asrs r7, r0, #0x10
	b _08005370
_0800533E:
	adds r2, r6, #1
	strb r2, [r3]
	adds r3, #1
	mov r0, ip
	strb r0, [r3]
	ldr r1, _08005384 @ =gUnknown_03002320
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
	blt _0800536A
	lsls r0, r2, #0x18
	lsrs r6, r0, #0x18
	subs r0, r1, r7
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0800536A:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08005370:
	lsls r0, r2, #0x10
	asrs r5, r0, #0x10
	mov r2, sb
	asrs r0, r2, #0x10
	cmp r0, #0
	bge _0800537E
	rsbs r0, r0, #0
_0800537E:
	cmp r5, r0
	blt _0800533E
	b _080053DE
	.align 2, 0
_08005384: .4byte gUnknown_03002320
_08005388:
	movs r2, #0
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r7, #0x10
	asrs r5, r0, #0x10
	b _080053CC
_08005398:
	adds r0, r6, #1
	strb r0, [r3]
	adds r3, #1
	mov r0, ip
	strb r0, [r3]
	ldr r1, _080053EC @ =gUnknown_03002320
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
	blt _080053C6
	subs r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	subs r0, r1, r5
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_080053C6:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080053CC:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	mov r1, sb
	asrs r0, r1, #0x10
	cmp r0, #0
	bge _080053DA
	rsbs r0, r0, #0
_080053DA:
	cmp r2, r0
	blt _08005398
_080053DE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080053EC: .4byte gUnknown_03002320

	thumb_func_start sub_80053F0
sub_80053F0: @ 0x080053F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, [sp, #0x20]
	ldr r5, [sp, #0x24]
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sl, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov ip, r5
	ldr r1, _08005440 @ =gFlags
	ldr r0, [r1]
	movs r2, #4
	orrs r0, r2
	str r0, [r1]
	cmp r7, #1
	bls _08005458
	ldr r1, _08005444 @ =gUnknown_03002320
	strb r2, [r1]
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq _0800544C
	ldr r0, _08005448 @ =gUnknown_03001144
	ldr r0, [r0]
	adds r3, r0, #2
	b _08005480
	.align 2, 0
_08005440: .4byte gFlags
_08005444: .4byte gUnknown_03002320
_08005448: .4byte gUnknown_03001144
_0800544C:
	ldr r0, _08005454 @ =gUnknown_03001144
	ldr r3, [r0]
	b _08005480
	.align 2, 0
_08005454: .4byte gUnknown_03001144
_08005458:
	ldr r1, _08005470 @ =gUnknown_03002320
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08005474 @ =gUnknown_03001144
	ldr r3, [r0]
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq _08005480
	ldr r1, _08005478 @ =gUnknown_03002118
	ldr r0, _0800547C @ =0x04000042
	b _08005484
	.align 2, 0
_08005470: .4byte gUnknown_03002320
_08005474: .4byte gUnknown_03001144
_08005478: .4byte gUnknown_03002118
_0800547C: .4byte 0x04000042
_08005480:
	ldr r1, _080054E8 @ =gUnknown_03002118
	ldr r0, _080054EC @ =0x04000040
_08005484:
	str r0, [r1]
	mov r0, r8
	subs r1, r0, r6
	mov r2, sl
	subs r0, r4, r2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r5, r1, #0x10
	asrs r2, r5, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _0800549E
	rsbs r0, r2, #0
_0800549E:
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	adds r4, r1, #0
	mov sb, r0
	cmp r1, #0
	bge _080054B2
	rsbs r4, r1, #0
_080054B2:
	lsls r0, r4, #0x11
	lsrs r7, r0, #0x10
	ldr r4, _080054F0 @ =gUnknown_03002320
	ldrb r0, [r4]
	mov r4, sl
	muls r4, r0, r4
	adds r0, r4, #0
	adds r3, r3, r0
	adds r4, r2, #0
	cmp r2, #0
	bge _080054CA
	rsbs r4, r2, #0
_080054CA:
	adds r0, r1, #0
	cmp r1, #0
	bge _080054D2
	rsbs r0, r1, #0
_080054D2:
	cmp r4, r0
	ble _080055A8
	rsbs r0, r2, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r2, #0
	ble _08005548
	strb r6, [r3, #1]
	movs r2, #0
	b _0800552C
	.align 2, 0
_080054E8: .4byte gUnknown_03002118
_080054EC: .4byte 0x04000040
_080054F0: .4byte gUnknown_03002320
_080054F4:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	blt _08005526
	mov r4, r8
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r0, ip
	strb r0, [r3]
	ldr r1, _08005544 @ =gUnknown_03002320
	ldrb r0, [r1]
	adds r3, r3, r0
	strb r6, [r3, #1]
_08005526:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0800552C:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	asrs r0, r5, #0x10
	cmp r0, #0
	bge _08005538
	rsbs r0, r0, #0
_08005538:
	cmp r2, r0
	blt _080054F4
	mov r2, ip
	strb r2, [r3]
	b _08005660
	.align 2, 0
_08005544: .4byte gUnknown_03002320
_08005548:
	mov r0, ip
	strb r0, [r3]
	adds r3, #1
	movs r2, #0
	b _0800558E
_08005552:
	subs r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	blt _08005588
	mov r4, r8
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	strb r6, [r3]
	ldr r1, _080055A4 @ =gUnknown_03002320
	ldrb r0, [r1]
	adds r0, r0, r3
	subs r3, r0, #1
	mov r0, ip
	strb r0, [r3]
	adds r3, #1
_08005588:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0800558E:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	asrs r0, r5, #0x10
	cmp r0, #0
	bge _0800559A
	rsbs r0, r0, #0
_0800559A:
	cmp r2, r0
	blt _08005552
	strb r6, [r3]
	b _08005660
	.align 2, 0
_080055A4: .4byte gUnknown_03002320
_080055A8:
	rsbs r0, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r2, #0
	ble _0800560C
	movs r2, #0
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r7, #0x10
	asrs r5, r0, #0x10
	b _080055F4
_080055C2:
	mov r0, ip
	strb r0, [r3]
	adds r3, #1
	strb r6, [r3]
	ldr r1, _08005608 @ =gUnknown_03002320
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
	blt _080055EE
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	subs r0, r1, r5
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_080055EE:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080055F4:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	mov r1, sb
	asrs r0, r1, #0x10
	cmp r0, #0
	bge _08005602
	rsbs r0, r0, #0
_08005602:
	cmp r2, r0
	blt _080055C2
	b _08005660
	.align 2, 0
_08005608: .4byte gUnknown_03002320
_0800560C:
	movs r2, #0
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r7, #0x10
	asrs r5, r0, #0x10
	b _0800564E
_0800561C:
	mov r0, ip
	strb r0, [r3]
	adds r3, #1
	strb r6, [r3]
	ldr r1, _08005670 @ =gUnknown_03002320
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
	blt _08005648
	subs r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	subs r0, r1, r5
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08005648:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0800564E:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	mov r1, sb
	asrs r0, r1, #0x10
	cmp r0, #0
	bge _0800565C
	rsbs r0, r0, #0
_0800565C:
	cmp r2, r0
	blt _0800561C
_08005660:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005670: .4byte gUnknown_03002320

	thumb_func_start sub_8005674
sub_8005674: @ 0x08005674
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	mov ip, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r1, _080056A8 @ =gFlags
	ldr r0, [r1]
	movs r3, #4
	orrs r0, r3
	str r0, [r1]
	cmp r2, #1
	bls _080056C0
	ldr r1, _080056AC @ =gUnknown_03002320
	strb r3, [r1]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _080056B4
	ldr r0, _080056B0 @ =gUnknown_03001144
	ldr r0, [r0]
	adds r7, r0, #2
	b _080056E8
	.align 2, 0
_080056A8: .4byte gFlags
_080056AC: .4byte gUnknown_03002320
_080056B0: .4byte gUnknown_03001144
_080056B4:
	ldr r0, _080056BC @ =gUnknown_03001144
	ldr r7, [r0]
	b _080056E8
	.align 2, 0
_080056BC: .4byte gUnknown_03001144
_080056C0:
	ldr r1, _080056D8 @ =gUnknown_03002320
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080056DC @ =gUnknown_03001144
	ldr r7, [r0]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _080056E8
	ldr r1, _080056E0 @ =gUnknown_03002118
	ldr r0, _080056E4 @ =0x04000042
	b _080056EC
	.align 2, 0
_080056D8: .4byte gUnknown_03002320
_080056DC: .4byte gUnknown_03001144
_080056E0: .4byte gUnknown_03002118
_080056E4: .4byte 0x04000042
_080056E8:
	ldr r1, _080057EC @ =gUnknown_03002118
	ldr r0, _080057F0 @ =0x04000040
_080056EC:
	str r0, [r1]
	mov r2, sp
	mov r1, ip
	ldrb r0, [r1, #2]
	ldrb r1, [r1]
	subs r0, r0, r1
	strh r0, [r2]
	add r2, sp, #4
	mov r3, ip
	ldrb r0, [r3, #3]
	ldrb r1, [r3, #1]
	subs r0, r0, r1
	strh r0, [r2]
	mov r0, sp
	movs r5, #0
	ldrsh r0, [r0, r5]
	ldrb r3, [r3]
	mov r1, ip
	ldrb r4, [r1, #1]
	adds r2, #8
	str r2, [sp, #0x24]
	cmp r0, #0
	bge _0800571C
	rsbs r0, r0, #0
_0800571C:
	lsls r0, r0, #1
	ldr r5, [sp, #0x24]
	strh r0, [r5]
	mov r1, sp
	movs r2, #4
	ldrsh r0, [r1, r2]
	adds r1, #0x10
	str r1, [sp, #0x28]
	cmp r0, #0
	bge _08005732
	rsbs r0, r0, #0
_08005732:
	lsls r0, r0, #1
	ldr r5, [sp, #0x28]
	strh r0, [r5]
	mov r1, sp
	mov r2, ip
	ldrb r0, [r2, #4]
	subs r0, r0, r3
	strh r0, [r1, #2]
	ldrb r0, [r2, #5]
	subs r0, r0, r4
	strh r0, [r1, #6]
	mov r0, sp
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r0, #0
	bge _08005754
	rsbs r0, r0, #0
_08005754:
	lsls r0, r0, #1
	ldr r5, [sp, #0x24]
	strh r0, [r5, #2]
	mov r1, sp
	movs r2, #6
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _08005766
	rsbs r0, r0, #0
_08005766:
	lsls r0, r0, #1
	ldr r3, [sp, #0x28]
	strh r0, [r3, #2]
	add r2, sp, #0x14
	mov r5, ip
	ldrb r0, [r5]
	strb r0, [r2, #1]
	strb r0, [r2]
	ldr r1, _080057F4 @ =gUnknown_03002320
	ldrb r0, [r1]
	muls r0, r4, r0
	adds r7, r7, r0
	add r1, sp, #8
	mov r3, sp
	ldrh r0, [r3, #4]
	rsbs r0, r0, #0
	strh r0, [r1]
	ldrh r0, [r3, #6]
	rsbs r0, r0, #0
	strh r0, [r1, #2]
	ldrb r0, [r5, #5]
	ldrb r3, [r5, #3]
	adds r6, r2, #0
	mov sb, r1
	cmp r0, r3
	bls _0800579C
	adds r0, r3, #0
_0800579C:
	str r0, [sp, #0x18]
	cmp r4, r0
	bhs _08005882
	mov r8, sb
_080057A4:
	ldrb r0, [r6, #1]
	strb r0, [r7]
	ldrb r0, [r6]
	strb r0, [r7, #1]
	mov r3, r8
	mov r5, sp
	ldrh r2, [r5, #0xc]
	ldrh r0, [r3]
	adds r2, r2, r0
	strh r2, [r3]
	ldrh r0, [r3, #2]
	ldrh r1, [r5, #0xe]
	adds r0, r0, r1
	strh r0, [r3, #2]
	lsls r2, r2, #0x10
	adds r4, #1
	mov sl, r4
	cmp r2, #0
	blt _0800581E
	str r6, [sp, #0x2c]
	ldr r4, [sp, #0x28]
	mov r2, sb
_080057D0:
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _080057F8
	ldr r5, [sp, #0x2c]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	ldrh r0, [r3]
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r3]
	b _08005814
	.align 2, 0
_080057EC: .4byte gUnknown_03002118
_080057F0: .4byte 0x04000040
_080057F4: .4byte gUnknown_03002320
_080057F8:
	ldrb r0, [r6]
	cmp r0, #0
	beq _08005802
	subs r0, #1
	strb r0, [r6]
_08005802:
	ldrh r0, [r2]
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _08005814
	ldrb r0, [r6]
	strb r0, [r7, #1]
_08005814:
	mov r3, sb
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bge _080057D0
_0800581E:
	mov r2, r8
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _08005870
	adds r3, r6, #0
	ldr r5, [sp, #0x28]
	mov r4, sb
_0800582E:
	mov r0, sp
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08005854
	ldrb r0, [r3, #1]
	adds r0, #1
	strb r0, [r3, #1]
	ldrh r0, [r2, #2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	strh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _08005866
	ldrb r0, [r6, #1]
	adds r0, #1
	strb r0, [r7]
	b _08005866
_08005854:
	ldrb r0, [r3, #1]
	cmp r0, #0
	beq _0800585E
	subs r0, #1
	strb r0, [r6, #1]
_0800585E:
	ldrh r0, [r4, #2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	strh r0, [r4, #2]
_08005866:
	mov r2, sb
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0800582E
_08005870:
	ldr r2, _08005934 @ =gUnknown_03002320
	ldrb r0, [r2]
	adds r7, r7, r0
	mov r3, sl
	lsls r0, r3, #0x18
	lsrs r4, r0, #0x18
	ldr r5, [sp, #0x18]
	cmp r4, r5
	blo _080057A4
_08005882:
	mov r1, ip
	ldrb r0, [r1, #3]
	ldrb r2, [r1, #5]
	cmp r0, r2
	bne _0800588E
	b _08005B78
_0800588E:
	ldr r3, [sp, #0x18]
	cmp r3, r0
	beq _08005896
	b _080059FC
_08005896:
	mov r2, sp
	ldrb r0, [r1, #6]
	ldrb r1, [r1, #2]
	subs r0, r0, r1
	strh r0, [r2]
	mov r5, ip
	ldrb r0, [r5, #7]
	ldrb r1, [r5, #3]
	subs r0, r0, r1
	strh r0, [r2, #4]
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _080058B6
	rsbs r0, r0, #0
_080058B6:
	lsls r0, r0, #1
	ldr r2, [sp, #0x24]
	strh r0, [r2]
	mov r3, sp
	movs r5, #4
	ldrsh r0, [r3, r5]
	cmp r0, #0
	bge _080058C8
	rsbs r0, r0, #0
_080058C8:
	lsls r0, r0, #1
	ldr r1, [sp, #0x28]
	strh r0, [r1]
	mov r2, sp
	ldrh r0, [r2, #4]
	rsbs r0, r0, #0
	mov r3, sb
	strh r0, [r3]
	mov r5, ip
	ldrb r0, [r5, #2]
	strb r0, [r6]
	ldrb r0, [r5, #5]
	str r0, [sp, #0x18]
	cmp r4, r0
	bhs _080059C2
	mov r8, sb
	ldr r1, [sp, #0x24]
	str r1, [sp, #0x1c]
_080058EC:
	ldrb r0, [r6, #1]
	strb r0, [r7]
	ldrb r0, [r6]
	strb r0, [r7, #1]
	mov r3, r8
	ldr r5, [sp, #0x1c]
	ldrh r2, [r5]
	ldrh r0, [r3]
	adds r2, r2, r0
	strh r2, [r3]
	ldrh r0, [r3, #2]
	ldrh r1, [r5, #2]
	adds r0, r0, r1
	strh r0, [r3, #2]
	lsls r2, r2, #0x10
	adds r4, #1
	mov sl, r4
	cmp r2, #0
	blt _0800595E
	str r6, [sp, #0x2c]
	ldr r4, [sp, #0x28]
	mov r2, sb
_08005918:
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _08005938
	ldr r5, [sp, #0x2c]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	ldrh r0, [r3]
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r3]
	b _08005954
	.align 2, 0
_08005934: .4byte gUnknown_03002320
_08005938:
	ldrb r0, [r6]
	cmp r0, #0
	beq _08005942
	subs r0, #1
	strb r0, [r6]
_08005942:
	ldrh r0, [r2]
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _08005954
	ldrb r0, [r6]
	strb r0, [r7, #1]
_08005954:
	mov r3, sb
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bge _08005918
_0800595E:
	mov r2, r8
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080059B0
	adds r3, r6, #0
	ldr r5, [sp, #0x28]
	mov r4, sb
_0800596E:
	mov r0, sp
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08005994
	ldrb r0, [r3, #1]
	adds r0, #1
	strb r0, [r3, #1]
	ldrh r0, [r2, #2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	strh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080059A6
	ldrb r0, [r6, #1]
	adds r0, #1
	strb r0, [r7]
	b _080059A6
_08005994:
	ldrb r0, [r3, #1]
	cmp r0, #0
	beq _0800599E
	subs r0, #1
	strb r0, [r6, #1]
_0800599E:
	ldrh r0, [r4, #2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	strh r0, [r4, #2]
_080059A6:
	mov r2, sb
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0800596E
_080059B0:
	ldr r2, _080059F8 @ =gUnknown_03002320
	ldrb r0, [r2]
	adds r7, r7, r0
	mov r3, sl
	lsls r0, r3, #0x18
	lsrs r4, r0, #0x18
	ldr r5, [sp, #0x18]
	cmp r4, r5
	blo _080058EC
_080059C2:
	mov r2, sp
	mov r1, ip
	ldrb r0, [r1, #6]
	ldrb r1, [r1, #4]
	subs r0, r0, r1
	strh r0, [r2, #2]
	mov r2, ip
	ldrb r0, [r2, #7]
	ldrb r1, [r2, #5]
	subs r0, r0, r1
	mov r3, sp
	strh r0, [r3, #6]
	mov r0, sp
	movs r5, #2
	ldrsh r0, [r0, r5]
	ldrb r3, [r2, #7]
	cmp r0, #0
	bge _080059E8
	rsbs r0, r0, #0
_080059E8:
	lsls r0, r0, #1
	ldr r1, [sp, #0x24]
	strh r0, [r1, #2]
	mov r2, sp
	movs r5, #6
	ldrsh r0, [r2, r5]
	b _08005BEC
	.align 2, 0
_080059F8: .4byte gUnknown_03002320
_080059FC:
	mov r2, sp
	mov r3, ip
	ldrb r0, [r3, #6]
	ldrb r1, [r3, #4]
	subs r0, r0, r1
	strh r0, [r2, #2]
	ldrb r0, [r3, #7]
	ldrb r1, [r3, #5]
	subs r0, r0, r1
	strh r0, [r2, #6]
	mov r0, sp
	movs r5, #2
	ldrsh r0, [r0, r5]
	cmp r0, #0
	bge _08005A1C
	rsbs r0, r0, #0
_08005A1C:
	lsls r0, r0, #1
	ldr r1, [sp, #0x24]
	strh r0, [r1, #2]
	mov r2, sp
	movs r3, #6
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bge _08005A2E
	rsbs r0, r0, #0
_08005A2E:
	lsls r0, r0, #1
	ldr r5, [sp, #0x28]
	strh r0, [r5, #2]
	mov r1, sp
	ldrh r0, [r1, #6]
	rsbs r0, r0, #0
	mov r2, sb
	strh r0, [r2, #2]
	mov r3, ip
	ldrb r0, [r3, #4]
	strb r0, [r6, #1]
	ldrb r5, [r3, #3]
	str r5, [sp, #0x18]
	cmp r4, r5
	bhs _08005B24
	mov r8, sb
	ldr r0, [sp, #0x24]
	str r0, [sp, #0x20]
_08005A52:
	ldrb r0, [r6, #1]
	strb r0, [r7]
	ldrb r0, [r6]
	strb r0, [r7, #1]
	mov r3, r8
	ldr r1, [sp, #0x20]
	ldrh r2, [r1]
	ldrh r5, [r3]
	adds r2, r2, r5
	strh r2, [r3]
	ldrh r0, [r3, #2]
	ldrh r1, [r1, #2]
	adds r0, r0, r1
	strh r0, [r3, #2]
	lsls r2, r2, #0x10
	adds r4, #1
	mov sl, r4
	cmp r2, #0
	blt _08005AC0
	str r6, [sp, #0x2c]
	ldr r4, [sp, #0x28]
	mov r2, sb
_08005A7E:
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _08005A9A
	ldr r5, [sp, #0x2c]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	ldrh r0, [r3]
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r3]
	b _08005AB6
_08005A9A:
	ldrb r0, [r6]
	cmp r0, #0
	beq _08005AA4
	subs r0, #1
	strb r0, [r6]
_08005AA4:
	ldrh r0, [r2]
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _08005AB6
	ldrb r0, [r6]
	strb r0, [r7, #1]
_08005AB6:
	mov r3, sb
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bge _08005A7E
_08005AC0:
	mov r2, r8
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _08005B12
	adds r3, r6, #0
	ldr r5, [sp, #0x28]
	mov r4, sb
_08005AD0:
	mov r0, sp
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08005AF6
	ldrb r0, [r3, #1]
	adds r0, #1
	strb r0, [r3, #1]
	ldrh r0, [r2, #2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	strh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _08005B08
	ldrb r0, [r6, #1]
	adds r0, #1
	strb r0, [r7]
	b _08005B08
_08005AF6:
	ldrb r0, [r3, #1]
	cmp r0, #0
	beq _08005B00
	subs r0, #1
	strb r0, [r6, #1]
_08005B00:
	ldrh r0, [r4, #2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	strh r0, [r4, #2]
_08005B08:
	mov r2, sb
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08005AD0
_08005B12:
	ldr r2, _08005B74 @ =gUnknown_03002320
	ldrb r0, [r2]
	adds r7, r7, r0
	mov r3, sl
	lsls r0, r3, #0x18
	lsrs r4, r0, #0x18
	ldr r5, [sp, #0x18]
	cmp r4, r5
	blo _08005A52
_08005B24:
	mov r2, sp
	mov r1, ip
	ldrb r0, [r1, #6]
	ldrb r1, [r1, #2]
	subs r0, r0, r1
	strh r0, [r2]
	mov r2, ip
	ldrb r0, [r2, #7]
	ldrb r1, [r2, #3]
	subs r0, r0, r1
	mov r3, sp
	strh r0, [r3, #4]
	mov r0, sp
	movs r5, #0
	ldrsh r0, [r0, r5]
	ldrb r3, [r2, #7]
	cmp r0, #0
	bge _08005B4A
	rsbs r0, r0, #0
_08005B4A:
	lsls r0, r0, #1
	ldr r1, [sp, #0x24]
	strh r0, [r1]
	mov r2, sp
	movs r5, #4
	ldrsh r0, [r2, r5]
	cmp r0, #0
	bge _08005B5C
	rsbs r0, r0, #0
_08005B5C:
	lsls r0, r0, #1
	ldr r1, [sp, #0x28]
	strh r0, [r1]
	mov r2, sp
	ldrh r0, [r2, #4]
	rsbs r0, r0, #0
	mov r5, sb
	strh r0, [r5]
	mov r1, ip
	ldrb r0, [r1, #2]
	strb r0, [r6]
	b _08005C08
	.align 2, 0
_08005B74: .4byte gUnknown_03002320
_08005B78:
	mov r2, sp
	mov r3, ip
	ldrb r0, [r3, #6]
	ldrb r1, [r3, #2]
	subs r0, r0, r1
	strh r0, [r2]
	add r2, sp, #4
	ldrb r0, [r3, #7]
	ldrb r1, [r3, #3]
	subs r0, r0, r1
	strh r0, [r2]
	mov r0, sp
	movs r5, #0
	ldrsh r0, [r0, r5]
	ldrb r1, [r3, #6]
	mov r8, r1
	ldrb r3, [r3, #7]
	cmp r0, #0
	bge _08005BA0
	rsbs r0, r0, #0
_08005BA0:
	lsls r0, r0, #1
	ldr r5, [sp, #0x24]
	strh r0, [r5]
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _08005BB0
	rsbs r0, r0, #0
_08005BB0:
	lsls r0, r0, #1
	ldr r5, [sp, #0x28]
	strh r0, [r5]
	ldrh r0, [r2]
	rsbs r0, r0, #0
	mov r1, sb
	strh r0, [r1]
	mov r5, ip
	ldrb r0, [r5, #2]
	strb r0, [r6]
	mov r1, sp
	ldrb r0, [r5, #4]
	mov r5, r8
	subs r0, r5, r0
	strh r0, [r1, #2]
	mov r1, ip
	ldrb r0, [r1, #5]
	subs r0, r3, r0
	strh r0, [r2, #2]
	mov r0, sp
	movs r5, #2
	ldrsh r0, [r0, r5]
	cmp r0, #0
	bge _08005BE2
	rsbs r0, r0, #0
_08005BE2:
	lsls r0, r0, #1
	ldr r1, [sp, #0x24]
	strh r0, [r1, #2]
	movs r5, #2
	ldrsh r0, [r2, r5]
_08005BEC:
	cmp r0, #0
	bge _08005BF2
	rsbs r0, r0, #0
_08005BF2:
	lsls r0, r0, #1
	ldr r1, [sp, #0x28]
	strh r0, [r1, #2]
	mov r2, sp
	ldrh r0, [r2, #6]
	rsbs r0, r0, #0
	mov r5, sb
	strh r0, [r5, #2]
	mov r1, ip
	ldrb r0, [r1, #4]
	strb r0, [r6, #1]
_08005C08:
	str r3, [sp, #0x18]
	cmp r4, r3
	bhs _08005CE6
	mov r8, sb
	ldr r2, [sp, #0x24]
	mov ip, r2
_08005C14:
	ldrb r0, [r6, #1]
	strb r0, [r7]
	ldrb r0, [r6]
	strb r0, [r7, #1]
	mov r3, r8
	mov r5, ip
	ldrh r2, [r5]
	ldrh r0, [r3]
	adds r2, r2, r0
	strh r2, [r3]
	ldrh r0, [r3, #2]
	ldrh r1, [r5, #2]
	adds r0, r0, r1
	strh r0, [r3, #2]
	lsls r2, r2, #0x10
	adds r4, #1
	mov sl, r4
	cmp r2, #0
	blt _08005C82
	str r6, [sp, #0x2c]
	ldr r4, [sp, #0x28]
	mov r2, sb
_08005C40:
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _08005C5C
	ldr r5, [sp, #0x2c]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	ldrh r0, [r3]
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r3]
	b _08005C78
_08005C5C:
	ldrb r0, [r6]
	cmp r0, #0
	beq _08005C66
	subs r0, #1
	strb r0, [r6]
_08005C66:
	ldrh r0, [r2]
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _08005C78
	ldrb r0, [r6]
	strb r0, [r7, #1]
_08005C78:
	mov r3, sb
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bge _08005C40
_08005C82:
	mov r2, r8
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _08005CD4
	adds r3, r6, #0
	ldr r5, [sp, #0x28]
	mov r4, sb
_08005C92:
	mov r0, sp
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08005CB8
	ldrb r0, [r3, #1]
	adds r0, #1
	strb r0, [r3, #1]
	ldrh r0, [r2, #2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	strh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _08005CCA
	ldrb r0, [r6, #1]
	adds r0, #1
	strb r0, [r7]
	b _08005CCA
_08005CB8:
	ldrb r0, [r3, #1]
	cmp r0, #0
	beq _08005CC2
	subs r0, #1
	strb r0, [r6, #1]
_08005CC2:
	ldrh r0, [r4, #2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	strh r0, [r4, #2]
_08005CCA:
	mov r2, sb
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08005C92
_08005CD4:
	ldr r2, _08005CF8 @ =gUnknown_03002320
	ldrb r0, [r2]
	adds r7, r7, r0
	mov r3, sl
	lsls r0, r3, #0x18
	lsrs r4, r0, #0x18
	ldr r5, [sp, #0x18]
	cmp r4, r5
	blo _08005C14
_08005CE6:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005CF8: .4byte gUnknown_03002320

	thumb_func_start sub_8005CFC
sub_8005CFC: @ 0x08005CFC
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
	bl sub_809B5BC
	add r5, sp, #0xc
	adds r0, r5, #0
	movs r1, #0
	movs r2, #4
	bl sub_809B61C
	add r4, sp, #0x10
	adds r0, r4, #0
	movs r1, #0
	movs r2, #4
	bl sub_809B61C
	ldr r1, _08005D5C @ =gFlags
	ldr r0, [r1]
	movs r2, #4
	orrs r0, r2
	str r0, [r1]
	cmp r7, #1
	bls _08005D74
	ldr r1, _08005D60 @ =gUnknown_03002320
	strb r2, [r1]
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq _08005D68
	ldr r0, _08005D64 @ =gUnknown_03001144
	ldr r0, [r0]
	adds r4, r0, #2
	b _08005D9C
	.align 2, 0
_08005D58: .4byte gUnknown_0809C138
_08005D5C: .4byte gFlags
_08005D60: .4byte gUnknown_03002320
_08005D64: .4byte gUnknown_03001144
_08005D68:
	ldr r0, _08005D70 @ =gUnknown_03001144
	ldr r4, [r0]
	b _08005D9C
	.align 2, 0
_08005D70: .4byte gUnknown_03001144
_08005D74:
	ldr r1, _08005D8C @ =gUnknown_03002320
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08005D90 @ =gUnknown_03001144
	ldr r4, [r0]
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq _08005D9C
	ldr r1, _08005D94 @ =gUnknown_03002118
	ldr r0, _08005D98 @ =0x04000042
	b _08005DA0
	.align 2, 0
_08005D8C: .4byte gUnknown_03002320
_08005D90: .4byte gUnknown_03001144
_08005D94: .4byte gUnknown_03002118
_08005D98: .4byte 0x04000042
_08005D9C:
	ldr r1, _08005EB0 @ =gUnknown_03002118
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
	ldr r2, _08005EB8 @ =gUnknown_03002320
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
_08005EB0: .4byte gUnknown_03002118
_08005EB4: .4byte 0x04000040
_08005EB8: .4byte gUnknown_03002320
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
	ldr r2, _08005EF4 @ =gUnknown_03002320
	ldrb r0, [r2]
	adds r4, r4, r0
	mov r1, ip
	lsls r0, r1, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r8
	blo _08005E70
	b _08005F74
	.align 2, 0
_08005EF4: .4byte gUnknown_03002320
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
	ldr r1, _08005FD8 @ =gUnknown_03002320
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
_08005FD8: .4byte gUnknown_03002320
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
	ldr r2, _080060D0 @ =gUnknown_03002320
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
_080060D0: .4byte gUnknown_03002320
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
	ldr r1, _08006100 @ =gUnknown_03002320
	ldrb r0, [r1]
	adds r4, r4, r0
	mov r2, ip
	lsls r0, r2, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r8
	blo _08006084
	b _08006180
	.align 2, 0
_08006100: .4byte gUnknown_03002320
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
	ldr r2, _08006190 @ =gUnknown_03002320
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
_08006190: .4byte gUnknown_03002320

	thumb_func_start sub_8006194
sub_8006194: @ 0x08006194
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
	bl sub_809B5BC
	add r5, sp, #0xc
	adds r0, r5, #0
	movs r1, #0
	movs r2, #4
	bl sub_809B61C
	add r4, sp, #0x10
	adds r0, r4, #0
	movs r1, #0
	movs r2, #4
	bl sub_809B61C
	ldr r1, _080061F4 @ =gFlags
	ldr r0, [r1]
	movs r2, #4
	orrs r0, r2
	str r0, [r1]
	mov r8, r6
	cmp r7, #1
	bls _0800620C
	ldr r1, _080061F8 @ =gUnknown_03002320
	strb r2, [r1]
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq _08006200
	ldr r0, _080061FC @ =gUnknown_03001144
	ldr r0, [r0]
	adds r5, r0, #2
	b _08006234
	.align 2, 0
_080061F0: .4byte gUnknown_0809C138
_080061F4: .4byte gFlags
_080061F8: .4byte gUnknown_03002320
_080061FC: .4byte gUnknown_03001144
_08006200:
	ldr r0, _08006208 @ =gUnknown_03001144
	ldr r5, [r0]
	b _08006234
	.align 2, 0
_08006208: .4byte gUnknown_03001144
_0800620C:
	ldr r1, _08006224 @ =gUnknown_03002320
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08006228 @ =gUnknown_03001144
	ldr r5, [r0]
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq _08006234
	ldr r1, _0800622C @ =gUnknown_03002118
	ldr r0, _08006230 @ =0x04000042
	b _08006238
	.align 2, 0
_08006224: .4byte gUnknown_03002320
_08006228: .4byte gUnknown_03001144
_0800622C: .4byte gUnknown_03002118
_08006230: .4byte 0x04000042
_08006234:
	ldr r1, _08006348 @ =gUnknown_03002118
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
	ldr r2, _08006350 @ =gUnknown_03002320
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
_08006348: .4byte gUnknown_03002118
_0800634C: .4byte 0x04000040
_08006350: .4byte gUnknown_03002320
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
	ldr r1, _0800638C @ =gUnknown_03002320
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
_0800638C: .4byte gUnknown_03002320
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
	ldr r2, _08006474 @ =gUnknown_03002320
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
_08006474: .4byte gUnknown_03002320
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
	ldr r3, _08006514 @ =gUnknown_03002320
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
_08006514: .4byte gUnknown_03002320

	thumb_func_start sub_8006518
sub_8006518: @ 0x08006518
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r4, [sp, #0x20]
	ldr r5, [sp, #0x24]
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov ip, r3
	lsls r4, r4, #0x10
	lsrs r3, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	adds r0, r5, #0
	muls r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r1, _08006570 @ =gFlags
	ldr r0, [r1]
	movs r2, #4
	orrs r0, r2
	str r0, [r1]
	cmp r7, #1
	bls _08006588
	ldr r1, _08006574 @ =gUnknown_03002320
	strb r2, [r1]
	movs r0, #1
	ands r0, r7
	adds r2, r1, #0
	cmp r0, #0
	beq _0800657C
	ldr r0, _08006578 @ =gUnknown_03001144
	ldr r0, [r0]
	adds r4, r0, #2
	b _080065B4
	.align 2, 0
_08006570: .4byte gFlags
_08006574: .4byte gUnknown_03002320
_08006578: .4byte gUnknown_03001144
_0800657C:
	ldr r0, _08006584 @ =gUnknown_03001144
	ldr r4, [r0]
	b _080065B4
	.align 2, 0
_08006584: .4byte gUnknown_03001144
_08006588:
	ldr r1, _080065A4 @ =gUnknown_03002320
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080065A8 @ =gUnknown_03001144
	ldr r4, [r0]
	movs r0, #1
	ands r0, r7
	adds r2, r1, #0
	cmp r0, #0
	beq _080065B4
	ldr r1, _080065AC @ =gUnknown_03002118
	ldr r0, _080065B0 @ =0x04000042
	b _080065B8
	.align 2, 0
_080065A4: .4byte gUnknown_03002320
_080065A8: .4byte gUnknown_03001144
_080065AC: .4byte gUnknown_03002118
_080065B0: .4byte 0x04000042
_080065B4:
	ldr r1, _08006620 @ =gUnknown_03002118
	ldr r0, _08006624 @ =0x04000040
_080065B8:
	str r0, [r1]
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	subs r0, r1, r6
	cmp r0, r5
	ble _080065CA
	subs r0, r3, r5
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080065CA:
	mov r7, r8
	subs r0, r7, r1
	cmp r0, r5
	ble _080065DA
	adds r0, r3, r5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080065DA:
	ldrb r0, [r2]
	muls r0, r6, r0
	adds r4, r4, r0
	cmp r6, r8
	bhs _0800666C
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r5, r0, #0x10
_080065EA:
	subs r0, r6, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r7, r0, #0
	muls r7, r0, r7
	adds r0, r7, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, sb
	subs r0, r1, r0
	str r3, [sp]
	bl sub_8099B10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, [sp]
	cmp r0, #0
	bge _08006628
	movs r0, #0
	strb r0, [r4]
	b _08006634
	.align 2, 0
_08006620: .4byte gUnknown_03002118
_08006624: .4byte 0x04000040
_08006628:
	cmp r0, #0xf0
	ble _08006632
	movs r0, #0xf0
	strb r0, [r4]
	b _08006634
_08006632:
	strb r1, [r4]
_08006634:
	adds r4, #1
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf0
	ble _0800664C
	movs r0, #0xf0
	strb r0, [r4]
	b _08006658
_0800664C:
	cmp r0, #0
	bge _08006656
	movs r0, #0
	strb r0, [r4]
	b _08006658
_08006656:
	strb r1, [r4]
_08006658:
	adds r4, #1
	ldr r0, _0800667C @ =gUnknown_03002320
	ldrb r0, [r0]
	subs r0, #2
	adds r4, r4, r0
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, r8
	blo _080065EA
_0800666C:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800667C: .4byte gUnknown_03002320

	thumb_func_start sub_8006680
sub_8006680: @ 0x08006680
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r4, [sp, #0x38]
	ldr r5, [sp, #0x3c]
	ldr r6, [sp, #0x40]
	ldr r7, [sp, #0x44]
	mov r8, r7
	ldr r7, [sp, #0x48]
	mov sb, r7
	ldr r7, [sp, #0x4c]
	mov sl, r7
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov ip, r3
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #4]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	str r5, [sp, #8]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r1, r8
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0xc]
	mov r2, sb
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x10]
	mov r5, sl
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r1, [sp, #0x50]
	lsls r1, r1, #0x10
	str r1, [sp, #0x14]
	lsrs r1, r1, #0x10
	mov r8, r1
	ldr r2, _08006780 @ =gFlags
	ldr r1, [r2]
	movs r3, #4
	orrs r1, r3
	str r1, [r2]
	ldr r1, _08006784 @ =gUnknown_03002118
	lsrs r0, r0, #0x16
	ldr r2, _08006788 @ =0x04000010
	adds r0, r0, r2
	str r0, [r1]
	ldr r0, _0800678C @ =gUnknown_03002320
	strb r3, [r0]
	ldr r0, _08006790 @ =gUnknown_03001144
	lsls r1, r7, #2
	ldr r0, [r0]
	adds r1, r0, r1
	ldr r0, [sp]
	cmp r7, r0
	bhs _0800676E
	ldr r4, _08006794 @ =gSineTable
	ldr r3, _08006798 @ =0x000003FF
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov sb, r0
	ldr r5, _0800679C @ =0x000001FF
	adds r2, r5, #0
	mov r5, r8
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
_0800671C:
	mov r0, ip
	ands r0, r3
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r5, #0
	ldrsh r0, [r0, r5]
	ldr r5, [sp, #4]
	muls r0, r5, r0
	asrs r0, r0, #0xe
	add r0, sb
	ands r0, r2
	strh r0, [r1]
	adds r1, #2
	adds r0, r6, #0
	ands r0, r3
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r5, #0
	ldrsh r0, [r0, r5]
	ldr r5, [sp, #0xc]
	muls r0, r5, r0
	asrs r0, r0, #0xe
	add r0, r8
	ands r0, r2
	strh r0, [r1]
	adds r1, #2
	ldr r0, [sp, #8]
	add r0, ip
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r5, [sp, #0x10]
	adds r0, r6, r5
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r0, [sp]
	cmp r7, r0
	blo _0800671C
_0800676E:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006780: .4byte gFlags
_08006784: .4byte gUnknown_03002118
_08006788: .4byte 0x04000010
_0800678C: .4byte gUnknown_03002320
_08006790: .4byte gUnknown_03001144
_08006794: .4byte gSineTable
_08006798: .4byte 0x000003FF
_0800679C: .4byte 0x000001FF

	thumb_func_start sub_80067A0
sub_80067A0: @ 0x080067A0
	push {r4, r5, r6, r7, lr}
	adds r7, r3, #0
	ldr r3, [sp, #0x14]
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	lsls r3, r3, #0x10
	lsrs r4, r3, #0x10
	ldr r2, _08006804 @ =gFlags
	ldr r1, [r2]
	movs r3, #4
	orrs r1, r3
	str r1, [r2]
	ldr r1, _08006808 @ =gUnknown_03002118
	lsrs r0, r0, #0x16
	ldr r2, _0800680C @ =0x04000010
	adds r0, r0, r2
	str r0, [r1]
	ldr r0, _08006810 @ =gUnknown_03002320
	strb r3, [r0]
	ldr r0, _08006814 @ =gUnknown_03001144
	lsls r1, r5, #2
	ldr r0, [r0]
	adds r2, r0, r1
	subs r4, r4, r5
	ldr r1, _08006818 @ =0x000001FF
	adds r0, r1, #0
	ands r4, r0
	ands r7, r0
	cmp r5, r6
	bhs _080067FC
_080067E2:
	strh r7, [r2]
	adds r2, #2
	adds r0, r4, #0
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	strh r0, [r2]
	adds r2, #2
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r6
	blo _080067E2
_080067FC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006804: .4byte gFlags
_08006808: .4byte gUnknown_03002118
_0800680C: .4byte 0x04000010
_08006810: .4byte gUnknown_03002320
_08006814: .4byte gUnknown_03001144
_08006818: .4byte 0x000001FF

	thumb_func_start sub_800681C
sub_800681C: @ 0x0800681C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r4, [sp, #0x18]
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r2, _08006884 @ =gFlags
	ldr r1, [r2]
	movs r3, #4
	orrs r1, r3
	str r1, [r2]
	ldr r1, _08006888 @ =gUnknown_03002118
	lsrs r0, r0, #0x16
	ldr r2, _0800688C @ =0x04000010
	adds r0, r0, r2
	str r0, [r1]
	ldr r0, _08006890 @ =gUnknown_03002320
	strb r3, [r0]
	cmp r5, r7
	bhs _0800687C
	ldr r2, _08006894 @ =0x000001FF
	adds r1, r6, #0
	ands r1, r2
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #0x10
	orrs r1, r0
	str r1, [sp]
	ldr r2, _08006898 @ =0x040000D4
	mov r0, sp
	str r0, [r2]
	ldr r0, _0800689C @ =gUnknown_03001144
	lsls r1, r5, #2
	ldr r0, [r0]
	adds r0, r0, r1
	str r0, [r2, #4]
	subs r0, r7, r5
	movs r1, #0x85
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0800687C:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006884: .4byte gFlags
_08006888: .4byte gUnknown_03002118
_0800688C: .4byte 0x04000010
_08006890: .4byte gUnknown_03002320
_08006894: .4byte 0x000001FF
_08006898: .4byte 0x040000D4
_0800689C: .4byte gUnknown_03001144

	thumb_func_start sub_80068A0
sub_80068A0: @ 0x080068A0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r4, [sp, #0x20]
	ldr r5, [sp, #0x24]
	ldr r6, [sp, #0x28]
	mov r8, r6
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov ip, r2
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov sb, r5
	mov r1, r8
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r2, _08006938 @ =gFlags
	ldr r1, [r2]
	movs r3, #4
	orrs r1, r3
	str r1, [r2]
	ldr r1, _0800693C @ =gUnknown_03002118
	lsrs r0, r0, #0x16
	ldr r2, _08006940 @ =0x04000010
	adds r0, r0, r2
	str r0, [r1]
	ldr r0, _08006944 @ =gUnknown_03002320
	strb r3, [r0]
	ldr r0, _08006948 @ =gUnknown_03001144
	lsls r1, r7, #2
	ldr r0, [r0]
	adds r2, r0, r1
	cmp r7, ip
	bhs _08006928
	ldr r0, _0800694C @ =0x000001FF
	adds r3, r0, #0
_080068FA:
	mov r1, sb
	adds r0, r1, r6
	ands r0, r3
	strh r0, [r2]
	adds r2, #2
	strh r5, [r2]
	adds r2, #2
	lsls r1, r4, #0x18
	asrs r1, r1, #0x18
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	rsbs r1, r1, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, ip
	blo _080068FA
_08006928:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006938: .4byte gFlags
_0800693C: .4byte gUnknown_03002118
_08006940: .4byte 0x04000010
_08006944: .4byte gUnknown_03002320
_08006948: .4byte gUnknown_03001144
_0800694C: .4byte 0x000001FF

	thumb_func_start sub_8006950
sub_8006950: @ 0x08006950
	push {r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x14]
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _0800698C @ =gFlags
	ldr r0, [r1]
	movs r2, #4
	orrs r0, r2
	str r0, [r1]
	cmp r6, #1
	bls _080069A4
	ldr r1, _08006990 @ =gUnknown_03002320
	strb r2, [r1]
	movs r0, #1
	ands r0, r6
	adds r6, r1, #0
	cmp r0, #0
	beq _08006998
	ldr r0, _08006994 @ =gUnknown_03001144
	ldr r0, [r0]
	adds r2, r0, #2
	b _080069D0
	.align 2, 0
_0800698C: .4byte gFlags
_08006990: .4byte gUnknown_03002320
_08006994: .4byte gUnknown_03001144
_08006998:
	ldr r0, _080069A0 @ =gUnknown_03001144
	ldr r2, [r0]
	b _080069D0
	.align 2, 0
_080069A0: .4byte gUnknown_03001144
_080069A4:
	ldr r1, _080069C0 @ =gUnknown_03002320
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080069C4 @ =gUnknown_03001144
	ldr r2, [r0]
	movs r0, #1
	ands r0, r6
	adds r6, r1, #0
	cmp r0, #0
	beq _080069D0
	ldr r1, _080069C8 @ =gUnknown_03002118
	ldr r0, _080069CC @ =0x04000042
	b _080069D4
	.align 2, 0
_080069C0: .4byte gUnknown_03002320
_080069C4: .4byte gUnknown_03001144
_080069C8: .4byte gUnknown_03002118
_080069CC: .4byte 0x04000042
_080069D0:
	ldr r1, _08006A00 @ =gUnknown_03002118
	ldr r0, _08006A04 @ =0x04000040
_080069D4:
	str r0, [r1]
	ldrb r0, [r6]
	muls r0, r5, r0
	adds r2, r2, r0
	cmp r5, r4
	bhs _080069F8
	adds r1, r6, #0
_080069E2:
	strb r3, [r2]
	adds r2, #1
	strb r7, [r2]
	ldrb r0, [r1]
	adds r0, r0, r2
	subs r2, r0, #1
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r4
	blo _080069E2
_080069F8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006A00: .4byte gUnknown_03002118
_08006A04: .4byte 0x04000040

	thumb_func_start sub_8006A08
sub_8006A08: @ 0x08006A08
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	ldr r3, _08006A5C @ =gFlags
	ldr r1, [r3]
	movs r2, #4
	orrs r1, r2
	str r1, [r3]
	ldr r2, _08006A60 @ =gUnknown_03002118
	lsrs r0, r0, #0x14
	subs r0, #0x20
	ldr r3, _08006A64 @ =0x04000020
	adds r1, r0, r3
	str r1, [r2]
	ldr r2, _08006A68 @ =gUnknown_03002320
	movs r1, #2
	strb r1, [r2]
	ldr r1, _08006A6C @ =gUnknown_03001144
	lsls r2, r4, #1
	ldr r1, [r1]
	adds r2, r1, r2
	ldr r1, _08006A70 @ =gBgAffineRegs
	adds r0, r0, r1
	ldrh r1, [r0]
	cmp r4, r5
	bhs _08006A56
_08006A42:
	subs r0, r5, r4
	lsls r0, r0, #2
	adds r0, r1, r0
	strh r0, [r2]
	adds r2, #2
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r5
	blo _08006A42
_08006A56:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08006A5C: .4byte gFlags
_08006A60: .4byte gUnknown_03002118
_08006A64: .4byte 0x04000020
_08006A68: .4byte gUnknown_03002320
_08006A6C: .4byte gUnknown_03001144
_08006A70: .4byte gBgAffineRegs

	thumb_func_start sub_8006A74
sub_8006A74: @ 0x08006A74
	ldr r0, _08006A80 @ =gUnknown_02002650
	movs r1, #0
	str r1, [r0]
	ldr r1, _08006A84 @ =0x00020080
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_08006A80: .4byte gUnknown_02002650
_08006A84: .4byte 0x00020080

	thumb_func_start sub_8006A88
sub_8006A88: @ 0x08006A88
	adds r2, r0, #0
	adds r0, r2, #3
	lsrs r2, r0, #2
	cmp r2, #0
	beq _08006ADE
	lsls r0, r2, #2
	adds r2, r0, #0
	adds r2, #8
	ldr r3, _08006AB0 @ =gUnknown_02002650
_08006A9A:
	ldr r1, [r3, #4]
	cmp r2, r1
	bhi _08006AD4
	cmp r2, r1
	bne _08006AB4
	rsbs r0, r2, #0
	str r0, [r3, #4]
	adds r0, r3, #0
	adds r0, #8
	b _08006AE2
	.align 2, 0
_08006AB0: .4byte gUnknown_02002650
_08006AB4:
	adds r0, r2, #0
	adds r0, #8
	cmp r0, r1
	bgt _08006AD4
	adds r1, r3, r2
	ldr r0, [r3]
	str r0, [r1]
	ldr r0, [r3, #4]
	subs r0, r0, r2
	str r0, [r1, #4]
	str r1, [r3]
	rsbs r0, r2, #0
	str r0, [r3, #4]
	adds r0, r3, #0
	adds r0, #8
	b _08006AE2
_08006AD4:
	ldr r0, [r3]
	cmp r0, #0
	beq _08006ADE
	adds r3, r0, #0
	b _08006A9A
_08006ADE:
	ldr r0, _08006AE4 @ =gUnknown_020226D0
	ldr r0, [r0]
_08006AE2:
	bx lr
	.align 2, 0
_08006AE4: .4byte gUnknown_020226D0

	thumb_func_start sub_8006AE8
sub_8006AE8: @ 0x08006AE8
	push {r4, lr}
	adds r1, r0, #0
	cmp r1, #0
	beq _08006B44
	ldr r0, _08006B4C @ =gUnknown_020226D0
	ldr r0, [r0]
	cmp r0, r1
	beq _08006B44
	subs r1, #8
	ldr r3, _08006B50 @ =gUnknown_02002650
	adds r4, r3, #0
	cmp r1, r3
	beq _08006B0A
_08006B02:
	adds r3, r4, #0
	ldr r4, [r3]
	cmp r1, r4
	bne _08006B02
_08006B0A:
	ldr r0, [r1, #4]
	cmp r0, #0
	bge _08006B14
	rsbs r0, r0, #0
	str r0, [r1, #4]
_08006B14:
	ldr r2, [r3, #4]
	adds r0, r3, r2
	cmp r0, r1
	bne _08006B2C
	cmp r2, #0
	ble _08006B2C
	ldr r0, [r4]
	str r0, [r3]
	ldr r0, [r1, #4]
	adds r0, r2, r0
	str r0, [r3, #4]
	adds r1, r3, #0
_08006B2C:
	ldr r3, [r1, #4]
	adds r2, r1, r3
	ldr r0, [r1]
	cmp r2, r0
	bne _08006B44
	ldr r0, [r2, #4]
	cmp r0, #0
	ble _08006B44
	adds r0, r3, r0
	str r0, [r1, #4]
	ldr r0, [r2]
	str r0, [r1]
_08006B44:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08006B4C: .4byte gUnknown_020226D0
_08006B50: .4byte gUnknown_02002650

	thumb_func_start sub_8006B54
sub_8006B54: @ 0x08006B54
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	adds r0, r5, #3
	lsrs r5, r0, #2
	movs r4, #0
	ldr r1, _08006B90 @ =gUnknown_03001148
	ldrh r0, [r1]
	lsrs r0, r0, #2
	mov sb, r1
	cmp r4, r0
	bhs _08006BF2
	ldr r0, _08006B94 @ =gUnknown_03004A30
	mov r8, r0
_08006B76:
	lsls r1, r4, #1
	mov r2, r8
	adds r0, r1, r2
	ldrh r2, [r0]
	cmp r2, #0
	bne _08006BD8
	movs r3, #0
	ldr r7, _08006B90 @ =gUnknown_03001148
	mov ip, r7
	ldr r0, _08006B94 @ =gUnknown_03004A30
	mov sl, r0
	ldr r6, _08006B98 @ =gUnknown_020226D0
	b _08006BA2
	.align 2, 0
_08006B90: .4byte gUnknown_03001148
_08006B94: .4byte gUnknown_03004A30
_08006B98: .4byte gUnknown_020226D0
_08006B9C:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08006BA2:
	cmp r3, r5
	bhs _08006BC0
	adds r2, r4, r3
	mov r7, ip
	ldrh r0, [r7]
	lsrs r0, r0, #2
	cmp r2, r0
	blt _08006BB6
	ldr r0, [r6]
	b _08006BF6
_08006BB6:
	lsls r0, r2, #1
	add r0, sl
	ldrh r0, [r0]
	cmp r0, #0
	beq _08006B9C
_08006BC0:
	cmp r3, r5
	bne _08006BE2
	mov r2, r8
	adds r0, r1, r2
	strh r5, [r0]
	ldr r0, _08006BD4 @ =gUnknown_03001200
	lsls r1, r4, #7
	ldr r0, [r0]
	adds r0, r0, r1
	b _08006BF6
	.align 2, 0
_08006BD4: .4byte gUnknown_03001200
_08006BD8:
	ldr r7, _08006C04 @ =0x0000FFFF
	adds r0, r4, r7
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08006BE2:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r1, sb
	ldrh r0, [r1]
	lsrs r0, r0, #2
	cmp r4, r0
	blo _08006B76
_08006BF2:
	ldr r0, _08006C08 @ =gUnknown_020226D0
	ldr r0, [r0]
_08006BF6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08006C04: .4byte 0x0000FFFF
_08006C08: .4byte gUnknown_020226D0

	thumb_func_start sub_8006C0C
sub_8006C0C: @ 0x08006C0C
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08006C28 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08006C2C @ =gUnknown_03004A30
	str r0, [r1, #4]
	ldr r0, _08006C30 @ =0x81000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #4
	bx lr
	.align 2, 0
_08006C28: .4byte 0x040000D4
_08006C2C: .4byte gUnknown_03004A30
_08006C30: .4byte 0x81000100

	thumb_func_start sub_8006C34
sub_8006C34: @ 0x08006C34
	adds r1, r0, #0
	ldr r0, _08006C54 @ =gUnknown_020226D0
	ldr r0, [r0]
	cmp r0, r1
	beq _08006C52
	ldr r0, _08006C58 @ =gUnknown_03001200
	ldr r0, [r0]
	subs r0, r1, r0
	lsls r0, r0, #9
	lsrs r0, r0, #0x10
	ldr r1, _08006C5C @ =gUnknown_03004A30
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
_08006C52:
	bx lr
	.align 2, 0
_08006C54: .4byte gUnknown_020226D0
_08006C58: .4byte gUnknown_03001200
_08006C5C: .4byte gUnknown_03004A30
