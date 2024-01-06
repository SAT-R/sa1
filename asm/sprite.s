.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ SA2: sub_8004418
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
	bl memcpy
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
	bl __divsi3
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

	thumb_func_start numToTileIndices
numToTileIndices: @ 0x0800344C
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

@ SA2: sub_8004518
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
	bl Div
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

	thumb_func_start UpdateSpriteAnimation
UpdateSpriteAnimation: @ 0x080034CC
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
	bl _call_via_r2
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

	thumb_func_start animCmd_AddHitbox
animCmd_AddHitbox: @ 0x08003660
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

@ SA2: sub_80047A0
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
	bl Div
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
	bl Div
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
	bl Div
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
	bl Div
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

@ SA2: sub_8004860
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
	bl Div
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
	bl Div
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
	bl Div
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
	bl Div
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

@ SA2: sub_8004ABC
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
	bl Div
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
	bl Div
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
	bl Div
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
	bl Div
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

@ SA2: sub_8004E14
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
	bl Div
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
	bl Div
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
	bl Div
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
	bl Div
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

	thumb_func_start DisplaySprite
DisplaySprite: @ 0x08004158
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
	bl OamMalloc
	adds r4, r0, #0
	ldr r0, _08004334 @ =iwram_end
	ldr r0, [r0]
	cmp r0, r4
	bne _08004292
	b _08004430
_08004292:
	ldr r3, [sp, #0xc]
	cmp r3, #0
	bne _080042A4
	ldr r0, _08004338 @ =gOamFreeIndex
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
_08004334: .4byte iwram_end
_08004338: .4byte gOamFreeIndex
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

@ SA2: sub_800550C
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
	bl OamMalloc
	adds r6, r0, #0
	ldr r0, _08004648 @ =iwram_end
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
_08004648: .4byte iwram_end
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
	bl OamMalloc
	adds r5, r0, #0
	ldr r0, _080047F4 @ =iwram_end
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
_080047F4: .4byte iwram_end
_080047F8: .4byte 0x80000003

	thumb_func_start OamMalloc
OamMalloc: @ 0x080047FC
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x1f
	bls _08004808
	movs r5, #0x1f
_08004808:
	ldr r0, _0800481C @ =gOamFreeIndex
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r4, r0, #0
	cmp r1, #0
	bge _08004824
	ldr r0, _08004820 @ =iwram_end
	ldr r0, [r0]
	b _08004880
	.align 2, 0
_0800481C: .4byte gOamFreeIndex
_08004820: .4byte iwram_end
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

	thumb_func_start CopyOamBufferToOam
CopyOamBufferToOam: @ 0x08004894
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
	ldr r0, _08004964 @ =gOamFreeIndex
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
_08004964: .4byte gOamFreeIndex
_08004968: .4byte 0x81000003
_0800496C:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080049F4
	ldr r1, _080049E0 @ =gOamFreeIndex
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
	ldr r2, _080049E0 @ =gOamFreeIndex
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
_080049E0: .4byte gOamFreeIndex
_080049E4: .4byte gUnknown_03004630
_080049E8: .4byte 0x040000D4
_080049EC: .4byte 0x80000003
_080049F0: .4byte 0x81000003
_080049F4:
	mov r1, sl
	strb r0, [r1]
_080049F8:
	movs r0, #0
	ldr r2, _08004A2C @ =gOamFreeIndex
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
	bl CpuSet
	str r4, [sp, #8]
	ldr r1, _08004A3C @ =gUnknown_03004600
	ldr r0, [sp, #0xc]
	adds r2, r5, #0
	bl CpuSet
	b _08004A64
	.align 2, 0
_08004A2C: .4byte gOamFreeIndex
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
