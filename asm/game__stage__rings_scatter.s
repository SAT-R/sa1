.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start RingsScatterMultipak_FlippedGravity
RingsScatterMultipak_FlippedGravity: @ 0x080415F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	ldr r0, _08041644 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r0, [sp, #4]
	ldr r0, _08041648 @ =0x03000030
	adds r5, r1, r0
	ldr r2, [sp, #4]
	mov sl, r2
	ldr r3, _0804164C @ =0x03000330
	adds r0, r1, r3
	ldr r0, [r0]
	str r0, [sp, #8]
	ldr r4, _08041650 @ =0x03000334
	adds r1, r1, r4
	ldrh r1, [r1]
	str r1, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	mov r0, sl
	bl UpdateSpriteAnimation
	movs r1, #0
	str r1, [sp, #0x14]
_08041634:
	ldrh r0, [r5, #0xc]
	cmp r0, #0
	bne _08041654
	adds r5, #0x10
	ldr r2, [sp, #0x14]
	adds r2, #1
	mov sb, r2
	b _08041AAE
	.align 2, 0
_08041644: .4byte gCurTask
_08041648: .4byte 0x03000030
_0804164C: .4byte 0x03000330
_08041650: .4byte 0x03000334
_08041654:
	movs r3, #8
	ldrsh r0, [r5, r3]
	ldr r1, [r5]
	adds r1, r1, r0
	str r1, [r5]
	movs r4, #0xa
	ldrsh r2, [r5, r4]
	ldr r0, [r5, #4]
	adds r0, r0, r2
	str r0, [r5, #4]
	asrs r7, r1, #8
	asrs r0, r0, #8
	mov r8, r0
	ldr r1, _08041814 @ =gCamera
	movs r2, #0
	ldrsh r0, [r1, r2]
	subs r0, r7, r0
	str r0, [sp, #0x18]
	movs r3, #2
	ldrsh r0, [r1, r3]
	mov r4, r8
	subs r4, r4, r0
	str r4, [sp, #0x1c]
	ldr r6, _08041818 @ =gPlayer
	ldr r2, [r6, #0x64]
	ldrh r0, [r5, #0xc]
	mov ip, r0
	ldr r1, [sp, #0xc]
	cmp ip, r1
	bgt _08041706
	adds r0, r6, #0
	adds r0, #0x40
	movs r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #0xf
	bne _080416A4
	movs r3, #0x1c
	ldrsh r0, [r6, r3]
	cmp r0, #0
	bne _08041706
_080416A4:
	cmp r1, #0x28
	beq _08041706
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08041706
	adds r4, r2, #0
	adds r4, #0x38
	adds r2, r7, #0
	subs r2, #8
	ldr r0, [r6]
	asrs r0, r0, #8
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r1, r0, r3
	cmp r2, r1
	bgt _080416D4
	adds r0, r7, #0
	adds r0, #8
	cmp r0, r1
	bge _080416E0
	cmp r2, r1
	blt _08041706
_080416D4:
	movs r0, #2
	ldrsb r0, [r4, r0]
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	blt _08041706
_080416E0:
	mov r2, r8
	subs r2, #0x10
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	movs r3, #1
	ldrsb r3, [r4, r3]
	adds r1, r0, r3
	cmp r2, r1
	bgt _080416FA
	cmp r8, r1
	bge _080417A4
	cmp r2, r1
	blt _08041706
_080416FA:
	movs r0, #3
	ldrsb r0, [r4, r0]
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	bge _080417A4
_08041706:
	ldr r0, _0804181C @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	beq _08041714
	b _08041838
_08041714:
	ldr r6, _08041820 @ =gPartner
	ldr r2, [r6, #0x64]
	adds r1, r5, #0
	adds r1, #0x10
	str r1, [sp, #0x20]
	ldr r3, [sp, #0x14]
	adds r3, #1
	mov sb, r3
	ldr r4, [sp, #0xc]
	cmp ip, r4
	ble _0804172C
	b _08041958
_0804172C:
	adds r0, r6, #0
	adds r0, #0x40
	movs r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #0xf
	bne _08041742
	movs r3, #0x1c
	ldrsh r0, [r6, r3]
	cmp r0, #0
	beq _08041742
	b _08041838
_08041742:
	cmp r1, #0x28
	beq _08041838
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08041838
	adds r4, r2, #0
	adds r4, #0x38
	adds r2, r7, #0
	subs r2, #8
	ldr r0, [r6]
	asrs r0, r0, #8
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r1, r0, r3
	cmp r2, r1
	bgt _08041772
	adds r0, r7, #0
	adds r0, #8
	cmp r0, r1
	bge _0804177E
	cmp r2, r1
	blt _08041838
_08041772:
	movs r0, #2
	ldrsb r0, [r4, r0]
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	blt _08041838
_0804177E:
	mov r2, r8
	subs r2, #0x10
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	movs r3, #1
	ldrsb r3, [r4, r3]
	adds r1, r0, r3
	cmp r2, r1
	bgt _08041798
	cmp r8, r1
	bge _080417A4
	cmp r2, r1
	blt _08041838
_08041798:
	movs r0, #3
	ldrsb r0, [r4, r0]
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	blt _08041838
_080417A4:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	mov r4, r8
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	bl CreateCollectRingEffect
	ldr r1, _08041824 @ =gRingCount
	ldrh r6, [r1]
	adds r0, r6, #1
	strh r0, [r1]
	ldr r0, _08041828 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xd
	beq _080417F2
	ldrh r0, [r1]
	movs r1, #0x64
	bl Div
	adds r4, r0, #0
	adds r0, r6, #0
	movs r1, #0x64
	bl Div
	cmp r4, r0
	beq _080417F2
	ldr r0, _0804182C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _080417F2
	ldr r1, _08041830 @ =gNumLives
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _08041834 @ =gMusicManagerState
	movs r0, #0x10
	strb r0, [r1, #3]
_080417F2:
	ldr r0, _0804182C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _08041806
	ldr r1, _08041824 @ =gRingCount
	ldrh r0, [r1]
	cmp r0, #0xff
	bls _08041806
	movs r0, #0xff
	strh r0, [r1]
_08041806:
	movs r0, #0
	strh r0, [r5, #0xc]
	adds r5, #0x10
	ldr r0, [sp, #0x14]
	adds r0, #1
	mov sb, r0
	b _08041AAE
	.align 2, 0
_08041814: .4byte gCamera
_08041818: .4byte gPlayer
_0804181C: .4byte gNumSingleplayerCharacters
_08041820: .4byte gPartner
_08041824: .4byte gRingCount
_08041828: .4byte gCurrentLevel
_0804182C: .4byte gGameMode
_08041830: .4byte gNumLives
_08041834: .4byte gMusicManagerState
_08041838:
	adds r1, r5, #0
	adds r1, #0x10
	str r1, [sp, #0x20]
	ldr r2, [sp, #0x14]
	adds r2, #1
	mov sb, r2
	ldr r3, [sp, #0xc]
	cmp ip, r3
	ble _0804184C
	b _08041958
_0804184C:
	movs r6, #0
_0804184E:
	ldr r0, _08041880 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r6, r0
	beq _0804194C
	ldr r1, _08041884 @ =gMultiplayerPlayerTasks
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0804194C
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r4
	mov ip, r0
	ldr r0, _08041888 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _0804188C
	mov r1, ip
	ldrb r0, [r1, #0xa]
	b _080418AE
	.align 2, 0
_08041880: .4byte 0x04000128
_08041884: .4byte gMultiplayerPlayerTasks
_08041888: .4byte gGameMode
_0804188C:
	mov r2, ip
	ldrb r1, [r2, #0xa]
	ldr r2, _08041940 @ =gMultiplayerCharacters
	ldr r3, _08041944 @ =0x03000056
	adds r0, r4, r3
	ldrb r0, [r0]
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	ldr r4, _08041948 @ =gPlayerCharacterIdleAnims
	adds r0, r0, r4
	ldrb r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x18
	lsrs r0, r1, #0x18
_080418AE:
	cmp r0, #0x13
	beq _080418B6
	cmp r0, #0x15
	bne _080418C4
_080418B6:
	mov r0, ip
	adds r0, #0x54
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0804194C
_080418C4:
	adds r3, r7, #0
	subs r3, #8
	mov r0, ip
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	subs r0, #0x24
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r1, r1, r2
	cmp r3, r1
	bgt _080418E8
	adds r0, r7, #0
	adds r0, #8
	cmp r0, r1
	bge _080418FA
	cmp r3, r1
	blt _0804194C
_080418E8:
	mov r0, ip
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r2
	adds r0, r1, r0
	cmp r0, r3
	blt _0804194C
_080418FA:
	mov r3, r8
	subs r3, #0x10
	mov r0, ip
	adds r0, #0x52
	movs r4, #0
	ldrsh r0, [r0, r4]
	mov r1, ip
	adds r1, #0x2d
	movs r2, #0
	ldrsb r2, [r1, r2]
	adds r1, r0, r2
	cmp r3, r1
	bgt _0804191C
	cmp r8, r1
	bge _0804192E
	cmp r3, r1
	blt _0804194C
_0804191C:
	mov r0, ip
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r2
	adds r0, r1, r0
	cmp r0, r3
	blt _0804194C
_0804192E:
	lsls r0, r7, #0x10
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	bl CreateCollectRingEffect
	movs r0, #0
	b _08041AAA
	.align 2, 0
_08041940: .4byte gMultiplayerCharacters
_08041944: .4byte 0x03000056
_08041948: .4byte gPlayerCharacterIdleAnims
_0804194C:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bhi _08041958
	b _0804184E
_08041958:
	movs r3, #0xa
	ldrsh r0, [r5, r3]
	cmp r0, #0
	bge _0804198C
	mov r0, r8
	subs r0, #0x10
	movs r4, #0xe
	ldrsh r2, [r5, r4]
	ldr r1, _08041A2C @ =sa2__sub_801EC3C
	str r1, [sp]
	adds r1, r7, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sa2__sub_801F100
	cmp r0, #0
	bgt _0804198C
	lsls r1, r0, #8
	ldr r0, [r5, #4]
	subs r0, r0, r1
	str r0, [r5, #4]
	ldrh r1, [r5, #0xa]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x12
	subs r0, r0, r1
	strh r0, [r5, #0xa]
_0804198C:
	ldr r1, [sp, #4]
	ldr r2, _08041A30 @ =0x00000336
	adds r0, r1, r2
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080419CC
	movs r3, #0xa
	ldrsh r0, [r5, r3]
	cmp r0, #0
	ble _080419CC
	movs r4, #0xe
	ldrsh r2, [r5, r4]
	ldr r0, _08041A2C @ =sa2__sub_801EC3C
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	movs r3, #8
	bl sa2__sub_801F100
	cmp r0, #0
	bgt _080419CC
	lsls r1, r0, #8
	ldr r0, [r5, #4]
	adds r0, r0, r1
	str r0, [r5, #4]
	ldrh r1, [r5, #0xa]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x12
	subs r0, r0, r1
	strh r0, [r5, #0xa]
_080419CC:
	ldrh r0, [r5, #0xa]
	ldr r1, [sp, #8]
	subs r0, r0, r1
	strh r0, [r5, #0xa]
	ldr r0, [sp, #0x18]
	adds r0, #7
	cmp r0, #0xfe
	bhi _08041AA6
	movs r0, #8
	rsbs r0, r0, #0
	ldr r2, [sp, #0x1c]
	cmp r2, r0
	ble _08041AA6
	cmp r2, #0xa7
	bgt _08041AA6
	ldrh r0, [r5, #0xc]
	cmp r0, #0x1f
	bhi _080419FC
	ldr r0, _08041A34 @ =gStageTime
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08041AA6
_080419FC:
	mov r2, sl
	adds r2, #0x23
	ldr r3, [sp, #0x10]
	cmp r3, #0
	beq _08041A0E
	adds r1, r2, #0
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _08041A38
_08041A0E:
	movs r0, #0xff
	strb r0, [r2]
	mov r4, sp
	ldrh r0, [r4, #0x18]
	mov r4, sl
	strh r0, [r4, #0x16]
	mov r1, sp
	ldrh r1, [r1, #0x1c]
	strh r1, [r4, #0x18]
	mov r0, sl
	bl DisplaySprite
	movs r2, #1
	str r2, [sp, #0x10]
	b _08041AA6
	.align 2, 0
_08041A2C: .4byte sa2__sub_801EC3C
_08041A30: .4byte 0x00000336
_08041A34: .4byte gStageTime
_08041A38:
	ldrb r0, [r1]
	lsls r0, r0, #3
	ldr r1, _08041AC8 @ =gOamBuffer2
	adds r4, r0, r1
	mov r3, sl
	ldrh r0, [r3, #0x1a]
	movs r2, #0xf8
	lsls r2, r2, #3
	adds r1, r2, #0
	ands r0, r1
	lsrs r0, r0, #6
	bl OamMalloc
	adds r3, r0, #0
	ldr r0, _08041ACC @ =iwram_end
	ldr r0, [r0]
	cmp r0, r3
	beq _08041AA6
	ldr r1, _08041AD0 @ =0x040000D4
	str r4, [r1]
	str r3, [r1, #4]
	ldr r0, _08041AD4 @ =0x80000003
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r3]
	movs r4, #0xff
	lsls r4, r4, #8
	adds r0, r4, #0
	ands r2, r0
	strh r2, [r3]
	mov r1, sl
	ldr r0, [r1, #0xc]
	ldrh r0, [r0, #0xa]
	ldr r4, [sp, #0x1c]
	subs r0, r4, r0
	movs r1, #0xff
	ands r0, r1
	adds r2, r2, r0
	strh r2, [r3]
	ldrh r2, [r3, #2]
	movs r1, #0xfe
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r2, r0
	strh r2, [r3, #2]
	mov r4, sl
	ldr r0, [r4, #0xc]
	ldrh r0, [r0, #8]
	ldr r1, [sp, #0x18]
	subs r0, r1, r0
	ldr r4, _08041AD8 @ =0x000001FF
	adds r1, r4, #0
	ands r0, r1
	adds r2, r2, r0
	strh r2, [r3, #2]
_08041AA6:
	ldrh r0, [r5, #0xc]
	subs r0, #1
_08041AAA:
	strh r0, [r5, #0xc]
	ldr r5, [sp, #0x20]
_08041AAE:
	mov r0, sb
	str r0, [sp, #0x14]
	cmp r0, #0x2f
	bgt _08041AB8
	b _08041634
_08041AB8:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08041AC8: .4byte gOamBuffer2
_08041ACC: .4byte iwram_end
_08041AD0: .4byte 0x040000D4
_08041AD4: .4byte 0x80000003
_08041AD8: .4byte 0x000001FF

	thumb_func_start RingsScatterMultipak_NormalGravity
RingsScatterMultipak_NormalGravity: @ 0x08041ADC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	ldr r0, _08041B2C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r0, [sp, #4]
	ldr r0, _08041B30 @ =0x03000030
	adds r5, r1, r0
	ldr r2, [sp, #4]
	str r2, [sp, #8]
	ldr r3, _08041B34 @ =0x03000330
	adds r0, r1, r3
	ldr r0, [r0]
	str r0, [sp, #0xc]
	ldr r4, _08041B38 @ =0x03000334
	adds r1, r1, r4
	ldrh r1, [r1]
	str r1, [sp, #0x10]
	movs r0, #0
	str r0, [sp, #0x14]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	movs r1, #0
	str r1, [sp, #0x18]
_08041B1C:
	ldrh r0, [r5, #0xc]
	cmp r0, #0
	bne _08041B3C
	adds r5, #0x10
	ldr r2, [sp, #0x18]
	adds r2, #1
	mov sl, r2
	b _08041F9A
	.align 2, 0
_08041B2C: .4byte gCurTask
_08041B30: .4byte 0x03000030
_08041B34: .4byte 0x03000330
_08041B38: .4byte 0x03000334
_08041B3C:
	movs r3, #8
	ldrsh r0, [r5, r3]
	ldr r1, [r5]
	adds r1, r1, r0
	str r1, [r5]
	movs r4, #0xa
	ldrsh r2, [r5, r4]
	ldr r0, [r5, #4]
	adds r0, r0, r2
	str r0, [r5, #4]
	asrs r1, r1, #8
	mov sb, r1
	mov r8, sb
	asrs r7, r0, #8
	ldr r1, _08041D00 @ =gCamera
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r3, sb
	subs r3, r3, r0
	str r3, [sp, #0x1c]
	movs r4, #2
	ldrsh r0, [r1, r4]
	subs r0, r7, r0
	str r0, [sp, #0x20]
	ldr r6, _08041D04 @ =gPlayer
	ldr r2, [r6, #0x64]
	ldrh r0, [r5, #0xc]
	mov ip, r0
	ldr r1, [sp, #0x10]
	cmp ip, r1
	bgt _08041BF0
	adds r0, r6, #0
	adds r0, #0x40
	movs r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #0xf
	bne _08041B8E
	movs r3, #0x1c
	ldrsh r0, [r6, r3]
	cmp r0, #0
	bne _08041BF0
_08041B8E:
	cmp r1, #0x28
	beq _08041BF0
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08041BF0
	adds r4, r2, #0
	adds r4, #0x38
	mov r2, sb
	subs r2, #8
	ldr r0, [r6]
	asrs r0, r0, #8
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r1, r0, r3
	cmp r2, r1
	bgt _08041BBE
	mov r0, sb
	adds r0, #8
	cmp r0, r1
	bge _08041BCA
	cmp r2, r1
	blt _08041BF0
_08041BBE:
	movs r0, #2
	ldrsb r0, [r4, r0]
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	blt _08041BF0
_08041BCA:
	adds r2, r7, #0
	subs r2, #0x10
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	movs r3, #1
	ldrsb r3, [r4, r3]
	adds r1, r0, r3
	cmp r2, r1
	bgt _08041BE4
	cmp r7, r1
	bge _08041C8E
	cmp r2, r1
	blt _08041BF0
_08041BE4:
	movs r0, #3
	ldrsb r0, [r4, r0]
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	bge _08041C8E
_08041BF0:
	ldr r0, _08041D08 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	beq _08041BFE
	b _08041D24
_08041BFE:
	ldr r6, _08041D0C @ =gPartner
	ldr r2, [r6, #0x64]
	adds r1, r5, #0
	adds r1, #0x10
	str r1, [sp, #0x24]
	ldr r3, [sp, #0x18]
	adds r3, #1
	mov sl, r3
	ldr r4, [sp, #0x10]
	cmp ip, r4
	ble _08041C16
	b _08041E44
_08041C16:
	adds r0, r6, #0
	adds r0, #0x40
	movs r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #0xf
	bne _08041C2C
	movs r3, #0x1c
	ldrsh r0, [r6, r3]
	cmp r0, #0
	beq _08041C2C
	b _08041D24
_08041C2C:
	cmp r1, #0x28
	beq _08041D24
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08041D24
	adds r4, r2, #0
	adds r4, #0x38
	mov r2, r8
	subs r2, #8
	ldr r0, [r6]
	asrs r0, r0, #8
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r1, r0, r3
	cmp r2, r1
	bgt _08041C5C
	mov r0, r8
	adds r0, #8
	cmp r0, r1
	bge _08041C68
	cmp r2, r1
	blt _08041D24
_08041C5C:
	movs r0, #2
	ldrsb r0, [r4, r0]
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	blt _08041D24
_08041C68:
	adds r2, r7, #0
	subs r2, #0x10
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	movs r3, #1
	ldrsb r3, [r4, r3]
	adds r1, r0, r3
	cmp r2, r1
	bgt _08041C82
	cmp r7, r1
	bge _08041C8E
	cmp r2, r1
	blt _08041D24
_08041C82:
	movs r0, #3
	ldrsb r0, [r4, r0]
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	blt _08041D24
_08041C8E:
	mov r4, r8
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	bl CreateCollectRingEffect
	ldr r1, _08041D10 @ =gRingCount
	ldrh r6, [r1]
	adds r0, r6, #1
	strh r0, [r1]
	ldr r0, _08041D14 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xd
	beq _08041CDC
	ldrh r0, [r1]
	movs r1, #0x64
	bl Div
	adds r4, r0, #0
	adds r0, r6, #0
	movs r1, #0x64
	bl Div
	cmp r4, r0
	beq _08041CDC
	ldr r0, _08041D18 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _08041CDC
	ldr r1, _08041D1C @ =gNumLives
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _08041D20 @ =gMusicManagerState
	movs r0, #0x10
	strb r0, [r1, #3]
_08041CDC:
	ldr r0, _08041D18 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _08041CF0
	ldr r1, _08041D10 @ =gRingCount
	ldrh r0, [r1]
	cmp r0, #0xff
	bls _08041CF0
	movs r0, #0xff
	strh r0, [r1]
_08041CF0:
	movs r0, #0
	strh r0, [r5, #0xc]
	adds r5, #0x10
	ldr r0, [sp, #0x18]
	adds r0, #1
	mov sl, r0
	b _08041F9A
	.align 2, 0
_08041D00: .4byte gCamera
_08041D04: .4byte gPlayer
_08041D08: .4byte gNumSingleplayerCharacters
_08041D0C: .4byte gPartner
_08041D10: .4byte gRingCount
_08041D14: .4byte gCurrentLevel
_08041D18: .4byte gGameMode
_08041D1C: .4byte gNumLives
_08041D20: .4byte gMusicManagerState
_08041D24:
	adds r1, r5, #0
	adds r1, #0x10
	str r1, [sp, #0x24]
	ldr r2, [sp, #0x18]
	adds r2, #1
	mov sl, r2
	ldr r3, [sp, #0x10]
	cmp ip, r3
	ble _08041D38
	b _08041E44
_08041D38:
	movs r6, #0
_08041D3A:
	ldr r0, _08041D6C @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r6, r0
	beq _08041E38
	ldr r1, _08041D70 @ =gMultiplayerPlayerTasks
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08041E38
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r4
	mov ip, r0
	ldr r0, _08041D74 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _08041D78
	mov r1, ip
	ldrb r0, [r1, #0xa]
	b _08041D9A
	.align 2, 0
_08041D6C: .4byte 0x04000128
_08041D70: .4byte gMultiplayerPlayerTasks
_08041D74: .4byte gGameMode
_08041D78:
	mov r2, ip
	ldrb r1, [r2, #0xa]
	ldr r2, _08041E2C @ =gMultiplayerCharacters
	ldr r3, _08041E30 @ =0x03000056
	adds r0, r4, r3
	ldrb r0, [r0]
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	ldr r4, _08041E34 @ =gPlayerCharacterIdleAnims
	adds r0, r0, r4
	ldrb r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x18
	lsrs r0, r1, #0x18
_08041D9A:
	cmp r0, #0x13
	beq _08041DA2
	cmp r0, #0x15
	bne _08041DB0
_08041DA2:
	mov r0, ip
	adds r0, #0x54
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08041E38
_08041DB0:
	mov r3, r8
	subs r3, #8
	mov r0, ip
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	subs r0, #0x24
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r1, r1, r2
	cmp r3, r1
	bgt _08041DD4
	mov r0, r8
	adds r0, #8
	cmp r0, r1
	bge _08041DE6
	cmp r3, r1
	blt _08041E38
_08041DD4:
	mov r0, ip
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r2
	adds r0, r1, r0
	cmp r0, r3
	blt _08041E38
_08041DE6:
	adds r3, r7, #0
	subs r3, #0x10
	mov r0, ip
	adds r0, #0x52
	movs r4, #0
	ldrsh r0, [r0, r4]
	mov r1, ip
	adds r1, #0x2d
	movs r2, #0
	ldrsb r2, [r1, r2]
	adds r1, r0, r2
	cmp r3, r1
	bgt _08041E08
	cmp r7, r1
	bge _08041E1A
	cmp r3, r1
	blt _08041E38
_08041E08:
	mov r0, ip
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r2
	adds r0, r1, r0
	cmp r0, r3
	blt _08041E38
_08041E1A:
	mov r1, r8
	lsls r0, r1, #0x10
	lsls r1, r7, #0x10
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	bl CreateCollectRingEffect
	movs r0, #0
	b _08041F96
	.align 2, 0
_08041E2C: .4byte gMultiplayerCharacters
_08041E30: .4byte 0x03000056
_08041E34: .4byte gPlayerCharacterIdleAnims
_08041E38:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bhi _08041E44
	b _08041D3A
_08041E44:
	movs r2, #0xa
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble _08041E74
	movs r3, #0xe
	ldrsh r2, [r5, r3]
	ldr r0, _08041F18 @ =sa2__sub_801EC3C
	str r0, [sp]
	adds r0, r7, #0
	mov r1, sb
	movs r3, #8
	bl sa2__sub_801F100
	cmp r0, #0
	bgt _08041E74
	lsls r1, r0, #8
	ldr r0, [r5, #4]
	adds r0, r0, r1
	str r0, [r5, #4]
	ldrh r1, [r5, #0xa]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x12
	subs r0, r0, r1
	strh r0, [r5, #0xa]
_08041E74:
	ldr r4, [sp, #4]
	ldr r1, _08041F1C @ =0x00000336
	adds r0, r4, r1
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08041EB8
	movs r2, #0xa
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bge _08041EB8
	adds r0, r7, #0
	subs r0, #0x10
	movs r3, #0xe
	ldrsh r2, [r5, r3]
	ldr r1, _08041F18 @ =sa2__sub_801EC3C
	str r1, [sp]
	mov r1, sb
	movs r3, #8
	rsbs r3, r3, #0
	bl sa2__sub_801F100
	cmp r0, #0
	bgt _08041EB8
	lsls r1, r0, #8
	ldr r0, [r5, #4]
	subs r0, r0, r1
	str r0, [r5, #4]
	ldrh r1, [r5, #0xa]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x12
	subs r0, r0, r1
	strh r0, [r5, #0xa]
_08041EB8:
	ldrh r0, [r5, #0xa]
	ldr r4, [sp, #0xc]
	adds r0, r0, r4
	strh r0, [r5, #0xa]
	ldr r0, [sp, #0x1c]
	adds r0, #7
	cmp r0, #0xfe
	bhi _08041F92
	movs r0, #8
	rsbs r0, r0, #0
	ldr r1, [sp, #0x20]
	cmp r1, r0
	ble _08041F92
	cmp r1, #0xa7
	bgt _08041F92
	ldrh r0, [r5, #0xc]
	cmp r0, #0x1f
	bhi _08041EE8
	ldr r0, _08041F20 @ =gStageTime
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08041F92
_08041EE8:
	ldr r2, [sp, #8]
	adds r2, #0x23
	ldr r3, [sp, #0x14]
	cmp r3, #0
	beq _08041EFA
	adds r1, r2, #0
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _08041F24
_08041EFA:
	movs r0, #0xff
	strb r0, [r2]
	mov r4, sp
	ldrh r0, [r4, #0x1c]
	ldr r4, [sp, #8]
	strh r0, [r4, #0x16]
	mov r1, sp
	ldrh r1, [r1, #0x20]
	strh r1, [r4, #0x18]
	ldr r0, [sp, #8]
	bl DisplaySprite
	movs r2, #1
	str r2, [sp, #0x14]
	b _08041F92
	.align 2, 0
_08041F18: .4byte sa2__sub_801EC3C
_08041F1C: .4byte 0x00000336
_08041F20: .4byte gStageTime
_08041F24:
	ldrb r0, [r1]
	lsls r0, r0, #3
	ldr r1, _08041FB4 @ =gOamBuffer2
	adds r4, r0, r1
	ldr r3, [sp, #8]
	ldrh r0, [r3, #0x1a]
	movs r2, #0xf8
	lsls r2, r2, #3
	adds r1, r2, #0
	ands r0, r1
	lsrs r0, r0, #6
	bl OamMalloc
	adds r3, r0, #0
	ldr r0, _08041FB8 @ =iwram_end
	ldr r0, [r0]
	cmp r0, r3
	beq _08041F92
	ldr r1, _08041FBC @ =0x040000D4
	str r4, [r1]
	str r3, [r1, #4]
	ldr r0, _08041FC0 @ =0x80000003
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r3]
	movs r4, #0xff
	lsls r4, r4, #8
	adds r0, r4, #0
	ands r2, r0
	strh r2, [r3]
	ldr r1, [sp, #8]
	ldr r0, [r1, #0xc]
	ldrh r0, [r0, #0xa]
	ldr r4, [sp, #0x20]
	subs r0, r4, r0
	movs r1, #0xff
	ands r0, r1
	adds r2, r2, r0
	strh r2, [r3]
	ldrh r2, [r3, #2]
	movs r1, #0xfe
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r2, r0
	strh r2, [r3, #2]
	ldr r4, [sp, #8]
	ldr r0, [r4, #0xc]
	ldrh r0, [r0, #8]
	ldr r1, [sp, #0x1c]
	subs r0, r1, r0
	ldr r4, _08041FC4 @ =0x000001FF
	adds r1, r4, #0
	ands r0, r1
	adds r2, r2, r0
	strh r2, [r3, #2]
_08041F92:
	ldrh r0, [r5, #0xc]
	subs r0, #1
_08041F96:
	strh r0, [r5, #0xc]
	ldr r5, [sp, #0x24]
_08041F9A:
	mov r0, sl
	str r0, [sp, #0x18]
	cmp r0, #0x2f
	bgt _08041FA4
	b _08041B1C
_08041FA4:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08041FB4: .4byte gOamBuffer2
_08041FB8: .4byte iwram_end
_08041FBC: .4byte 0x040000D4
_08041FC0: .4byte 0x80000003
_08041FC4: .4byte 0x000001FF

	thumb_func_start DestroyRingsScatterTask
DestroyRingsScatterTask: @ 0x08041FC8
	push {r4, lr}
	ldr r4, _08041FDC @ =gRingsScatterTask
	ldr r0, [r4]
	bl TaskDestroy
	movs r0, #0
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08041FDC: .4byte gRingsScatterTask

	thumb_func_start Task_RingsScatter_Singleplayer
Task_RingsScatter_Singleplayer: @ 0x08041FE0
	push {lr}
	ldr r0, _08041FF4 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08041FF8
	bl RingsScatterSingleplayer_FlippedGravity
	b _08041FFC
	.align 2, 0
_08041FF4: .4byte gStageFlags
_08041FF8:
	bl RingsScatterSingleplayer_NormalGravity
_08041FFC:
	pop {r0}
	bx r0

	thumb_func_start Task_RingsScatter_MP_Multipak
Task_RingsScatter_MP_Multipak: @ 0x08042000
	push {lr}
	ldr r0, _08042014 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08042018
	bl RingsScatterMultipak_FlippedGravity
	b _0804201C
	.align 2, 0
_08042014: .4byte gStageFlags
_08042018:
	bl RingsScatterMultipak_NormalGravity
_0804201C:
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_RingsScatter
TaskDestructor_RingsScatter: @ 0x08042020
	ldr r1, _08042028 @ =gRingsScatterTask
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_08042028: .4byte gRingsScatterTask

@ --- End of game/stage/rings_scatter.c ---
