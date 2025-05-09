.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ --- Start of Sonic 1 - Green Hill Boss
	thumb_func_start CreateEntity_EggWrecker
CreateEntity_EggWrecker: @ 0x08034478
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x18
	lsrs r4, r3, #0x18
	ldr r0, _080344A8 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _080344AC
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	b _080345F4
	.align 2, 0
_080344A8: .4byte gGameMode
_080344AC:
	ldr r0, _08034604 @ =sub_8034644
	ldr r1, _08034608 @ =sub_80357FC
	str r1, [sp]
	movs r1, #0x90
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r5, r1
	movs r3, #0
	mov r2, r8
	strh r2, [r1, #4]
	mov r0, sb
	strh r0, [r1, #6]
	str r7, [r1]
	ldrb r0, [r7]
	strb r0, [r1, #8]
	strb r4, [r1, #9]
	ldr r4, _0803460C @ =0x03000084
	adds r2, r5, r4
	movs r0, #0x78
	strh r0, [r2]
	ldr r2, _08034610 @ =0x03000086
	adds r0, r5, r2
	strb r3, [r0]
	adds r4, #3
	adds r0, r5, r4
	strb r3, [r0]
	adds r2, #7
	adds r0, r5, r2
	strb r3, [r0]
	adds r4, #5
	adds r0, r5, r4
	strb r3, [r0]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r1, #0x6c]
	ldr r0, _08034614 @ =0xFFFFA000
	str r0, [r1, #0x70]
	movs r0, #0
	str r0, [r1, #0x74]
	str r0, [r1, #0x78]
	ldr r1, _08034618 @ =0x03000088
	adds r0, r5, r1
	movs r2, #0
	strh r2, [r0]
	subs r4, #2
	adds r0, r5, r4
	strh r2, [r0]
	ldrb r0, [r7]
	lsls r0, r0, #3
	mov r1, r8
	lsls r6, r1, #8
	adds r0, r0, r6
	subs r4, #0xe
	adds r2, r5, r4
	strh r0, [r2]
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	mov r1, sb
	lsls r1, r1, #8
	mov sl, r1
	add r0, sl
	adds r4, #2
	adds r1, r5, r4
	strh r0, [r1]
	ldr r0, _0803461C @ =0x0300000C
	adds r4, r5, r0
	ldrh r0, [r2]
	strh r0, [r4, #0x16]
	ldrh r0, [r1]
	strh r0, [r4, #0x18]
	movs r0, #0x1e
	str r3, [sp, #4]
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0xb0
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	movs r1, #0
	strh r1, [r4, #8]
	movs r0, #0xab
	lsls r0, r0, #2
	strh r0, [r4, #0xa]
	ldr r2, _08034620 @ =0x0300002C
	adds r0, r5, r2
	ldr r3, [sp, #4]
	strb r3, [r0]
	strh r1, [r4, #0x14]
	strh r1, [r4, #0x1c]
	ldr r0, _08034624 @ =0x0300002D
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08034628 @ =0x0300002E
	adds r0, r5, r1
	movs r2, #0x10
	mov sb, r2
	mov r1, sb
	strb r1, [r0]
	ldr r2, _0803462C @ =0x03000031
	adds r0, r5, r2
	strb r3, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	str r0, [r4, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r4, #0x10]
	adds r2, #0xb
	adds r4, r5, r2
	ldrb r0, [r7]
	lsls r0, r0, #3
	adds r0, r0, r6
	strh r0, [r4, #0x16]
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	add r0, sl
	strh r0, [r4, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	movs r0, #8
	str r3, [sp, #4]
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0xa8
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	movs r2, #0
	strh r2, [r4, #8]
	ldr r0, _08034630 @ =0x000002AE
	strh r0, [r4, #0xa]
	ldr r1, _08034634 @ =0x0300005C
	adds r0, r5, r1
	ldr r3, [sp, #4]
	strb r3, [r0]
	strh r2, [r4, #0x14]
	strh r2, [r4, #0x1c]
	ldr r2, _08034638 @ =0x0300005D
	adds r1, r5, r2
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _0803463C @ =0x0300005E
	adds r0, r5, r1
	mov r2, sb
	strb r2, [r0]
	ldr r0, _08034640 @ =0x03000061
	adds r5, r5, r0
	strb r3, [r5]
	mov r1, r8
	str r1, [r4, #0x28]
	movs r2, #0x80
	lsls r2, r2, #6
	str r2, [r4, #0x10]
_080345F4:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034604: .4byte sub_8034644
_08034608: .4byte sub_80357FC
_0803460C: .4byte 0x03000084
_08034610: .4byte 0x03000086
_08034614: .4byte 0xFFFFA000
_08034618: .4byte 0x03000088
_0803461C: .4byte 0x0300000C
_08034620: .4byte 0x0300002C
_08034624: .4byte 0x0300002D
_08034628: .4byte 0x0300002E
_0803462C: .4byte 0x03000031
_08034630: .4byte 0x000002AE
_08034634: .4byte 0x0300005C
_08034638: .4byte 0x0300005D
_0803463C: .4byte 0x0300005E
_08034640: .4byte 0x03000061

	thumb_func_start sub_8034644
sub_8034644: @ 0x08034644
	push {r4, r5, r6, lr}
	ldr r0, _08034664 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0x8d
	adds r4, r1, r0
	ldrb r0, [r4]
	cmp r0, #0
	beq _08034668
	cmp r0, #1
	beq _08034694
	b _080346BC
	.align 2, 0
_08034664: .4byte gCurTask
_08034668:
	ldr r2, _0803468C @ =0x0300007C
	adds r3, r1, r2
	movs r6, #0
	ldrsh r0, [r3, r6]
	subs r0, #0x78
	ldr r2, _08034690 @ =gCamera
	movs r6, #0
	ldrsh r1, [r2, r6]
	cmp r0, r1
	bgt _080346BC
	ldrh r0, [r3]
	adds r1, r0, #0
	subs r1, #0x78
	strh r1, [r2, #0x18]
	adds r0, #0x78
	strh r0, [r2, #0x1a]
	movs r0, #1
	b _080346BA
	.align 2, 0
_0803468C: .4byte 0x0300007C
_08034690: .4byte gCamera
_08034694:
	ldr r0, _08034704 @ =0x0300007E
	adds r2, r1, r0
	movs r1, #0
	ldrsh r3, [r2, r1]
	adds r0, r3, #0
	subs r0, #0x40
	ldr r1, _08034708 @ =gCamera
	movs r6, #2
	ldrsh r1, [r1, r6]
	cmp r0, r1
	bgt _080346BC
	ldrh r1, [r2]
	adds r1, #0xa0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r3, #0
	bl sub_80174DC
	movs r0, #2
_080346BA:
	strb r0, [r4]
_080346BC:
	ldr r2, _08034708 @ =gCamera
	movs r0, #0x18
	ldrsh r1, [r2, r0]
	adds r0, r5, #0
	adds r0, #0x7c
	movs r3, #0
	ldrsh r0, [r0, r3]
	subs r0, #0x78
	cmp r1, r0
	bne _080346FE
	movs r6, #0x16
	ldrsh r1, [r2, r6]
	adds r0, r5, #0
	adds r0, #0x7e
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, #0xa0
	cmp r1, r0
	bne _080346FE
	adds r1, r5, #0
	adds r1, #0x8d
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r5, #0x78]
	ldr r0, _0803470C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08034710 @ =sub_8034718
	str r0, [r1, #8]
	ldr r1, _08034714 @ =gMusicManagerState
	movs r0, #0x14
	strb r0, [r1, #1]
_080346FE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08034704: .4byte 0x0300007E
_08034708: .4byte gCamera
_0803470C: .4byte gCurTask
_08034710: .4byte sub_8034718
_08034714: .4byte gMusicManagerState

	thumb_func_start sub_8034718
sub_8034718: @ 0x08034718
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080347DC @ =gCurTask
	mov sl, r0
	ldr r4, [r0]
	ldrh r5, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	ldr r1, _080347E0 @ =0x0300000C
	adds r0, r5, r1
	ldr r2, _080347E4 @ =0x0300003C
	adds r2, r2, r5
	mov sb, r2
	ldr r1, [r6, #0x6c]
	ldr r2, [r6, #0x74]
	adds r1, r1, r2
	str r1, [r6, #0x6c]
	ldr r2, [r6, #0x70]
	ldr r3, [r6, #0x78]
	adds r2, r2, r3
	str r2, [r6, #0x70]
	ldr r7, _080347E8 @ =0x0300007C
	adds r3, r5, r7
	asrs r1, r1, #8
	ldrh r3, [r3]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r7, #2
	adds r3, r5, r7
	asrs r2, r2, #8
	ldrh r3, [r3]
	adds r2, r2, r3
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r7, #2
	adds r3, r5, r7
	strh r1, [r3]
	ldr r3, _080347EC @ =0x03000082
	strh r2, [r3, r5]
	ldrh r3, [r4, #6]
	ldr r4, _080347E0 @ =0x0300000C
	adds r3, r3, r4
	ldr r7, _080347F0 @ =gCamera
	mov r8, r7
	mov r4, r8
	ldrh r4, [r4]
	mov ip, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r7, ip
	subs r1, r1, r7
	strh r1, [r3, #0x16]
	mov r4, r8
	ldrh r1, [r4, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r1
	strh r2, [r3, #0x18]
	bl UpdateSpriteAnimation
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r7, sl
	ldr r0, [r7]
	ldrh r0, [r0, #6]
	ldr r2, _080347E0 @ =0x0300000C
	adds r1, r0, r2
	ldr r3, _080347E4 @ =0x0300003C
	adds r2, r0, r3
	ldrh r0, [r1, #0x16]
	strh r0, [r2, #0x16]
	ldrh r3, [r1, #0x18]
	strh r3, [r2, #0x18]
	ldrh r1, [r2, #0xa]
	ldr r0, _080347F4 @ =0x000002B6
	cmp r1, r0
	bne _080347C2
	subs r0, r3, #3
	strh r0, [r2, #0x18]
_080347C2:
	bl sub_80343E0
	ldr r7, _080347F8 @ =0x0300008D
	adds r4, r5, r7
	ldrb r0, [r4]
	cmp r0, #1
	beq _08034824
	cmp r0, #1
	bgt _080347FC
	cmp r0, #0
	beq _08034806
	b _080348FC
	.align 2, 0
_080347DC: .4byte gCurTask
_080347E0: .4byte 0x0300000C
_080347E4: .4byte 0x0300003C
_080347E8: .4byte 0x0300007C
_080347EC: .4byte 0x03000082
_080347F0: .4byte gCamera
_080347F4: .4byte 0x000002B6
_080347F8: .4byte 0x0300008D
_080347FC:
	cmp r0, #2
	beq _08034848
	cmp r0, #3
	beq _08034898
	b _080348FC
_08034806:
	ldr r1, [r6, #0x70]
	ldr r0, _0803481C @ =0x00001FFF
	cmp r1, r0
	ble _080348FC
	adds r0, #1
	str r0, [r6, #0x70]
	ldr r0, _08034820 @ =0xFFFFFF00
	str r0, [r6, #0x74]
	adds r0, #0xf0
	str r0, [r6, #0x78]
	b _0803483A
	.align 2, 0
_0803481C: .4byte 0x00001FFF
_08034820: .4byte 0xFFFFFF00
_08034824:
	ldr r0, [r6, #0x6c]
	cmp r0, #0
	bgt _080348FC
	movs r0, #0
	str r0, [r6, #0x6c]
	str r0, [r6, #0x74]
	str r0, [r6, #0x78]
	ldr r2, _08034844 @ =0x03000084
	adds r1, r5, r2
	movs r0, #4
	strh r0, [r1]
_0803483A:
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	b _080348FC
	.align 2, 0
_08034844: .4byte 0x03000084
_08034848:
	ldr r3, _08034888 @ =0x03000084
	adds r2, r5, r3
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080348FC
	ldr r7, _0803488C @ =0x0300005C
	adds r1, r5, r7
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08034890 @ =0x0300005D
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08034894 @ =0x03000088
	adds r0, r5, r1
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	adds r3, #6
	adds r0, r5, r3
	strh r1, [r0]
	movs r0, #0x40
	strh r0, [r2]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	bl sub_8035010
	b _080348FC
	.align 2, 0
_08034888: .4byte 0x03000084
_0803488C: .4byte 0x0300005C
_08034890: .4byte 0x0300005D
_08034894: .4byte 0x03000088
_08034898:
	ldr r7, _0803490C @ =0x03000084
	adds r2, r5, r7
	ldrh r0, [r2]
	cmp r0, #0
	beq _080348A6
	subs r0, #1
	strh r0, [r2]
_080348A6:
	mov r1, sb
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	ldr r7, _08034910 @ =0x0300005C
	adds r3, r5, r7
	cmp r0, #0
	beq _080348C4
	movs r0, #0
	strb r0, [r3]
	adds r7, #1
	adds r1, r5, r7
	movs r0, #0xff
	strb r0, [r1]
_080348C4:
	ldrb r0, [r3]
	cmp r0, #0
	bne _080348FC
	ldrh r0, [r2]
	cmp r0, #0
	bne _080348FC
	movs r0, #0x30
	rsbs r0, r0, #0
	str r0, [r6, #0x74]
	ldr r0, _08034914 @ =0x0300008C
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	movs r1, #0
	strb r1, [r4]
	mov r2, sl
	ldr r1, [r2]
	ldr r0, _08034918 @ =sub_803491C
	str r0, [r1, #8]
	mov r3, r8
	ldrh r0, [r3, #0x14]
	subs r0, #0x50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #0x16
	ldrsh r1, [r3, r4]
	bl sub_80174DC
_080348FC:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803490C: .4byte 0x03000084
_08034910: .4byte 0x0300005C
_08034914: .4byte 0x0300008C
_08034918: .4byte sub_803491C

	thumb_func_start sub_803491C
sub_803491C: @ 0x0803491C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08034A1C @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldr r1, _08034A20 @ =0x0300000C
	adds r1, r1, r5
	mov r8, r1
	ldr r2, _08034A24 @ =0x0300003C
	adds r2, r2, r5
	mov sb, r2
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r0, [r4, #0x70]
	ldr r1, [r4, #0x78]
	adds r0, r0, r1
	str r0, [r4, #0x70]
	ldr r3, _08034A28 @ =0x03000088
	adds r6, r5, r3
	ldrh r1, [r6]
	subs r1, #4
	ldr r2, _08034A2C @ =0x000003FF
	ands r1, r2
	strh r1, [r6]
	ldr r0, _08034A30 @ =0x000001FF
	ands r0, r1
	movs r7, #0x80
	lsls r7, r7, #1
	cmp r0, r7
	bne _08034980
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	eors r0, r1
	mov r3, r8
	str r0, [r3, #0x10]
	mov r3, sb
	ldr r0, [r3, #0x10]
	eors r0, r1
	str r0, [r3, #0x10]
_08034980:
	movs r1, #0
	ldrsh r0, [r6, r1]
	adds r0, r0, r7
	lsls r0, r0, #1
	ldr r3, _08034A34 @ =gSineTable
	ands r0, r2
	adds r0, r0, r7
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _08034A38 @ =0x0300007C
	adds r2, r5, r0
	ldr r0, [r4, #0x6c]
	asrs r0, r0, #8
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r0, _08034A3C @ =0x0300007E
	adds r2, r5, r0
	ldr r0, [r4, #0x70]
	asrs r0, r0, #8
	ldrh r2, [r2]
	adds r0, r0, r2
	asrs r1, r1, #0x1d
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	ldr r1, _08034A40 @ =0x03000080
	adds r0, r5, r1
	mov r1, ip
	strh r1, [r0]
	ldr r1, _08034A44 @ =0x03000082
	adds r0, r5, r1
	strh r2, [r0]
	movs r1, #0
	ldrsh r0, [r6, r1]
	adds r0, r0, r7
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r1, [r0]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _080349E6
	movs r1, #0xff
_080349E6:
	lsls r0, r1, #0x10
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r0, r0, r3
	lsrs r1, r0, #0x10
	adds r3, #0x8a
	adds r0, r5, r3
	strh r1, [r0]
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r6, r0, #0x10
	lsls r0, r2, #0x10
	asrs r7, r0, #0x10
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_80342A0
	ldr r2, _08034A48 @ =0x03000086
	adds r0, r5, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	ble _08034A4C
	bl sub_8034B7C
	b _08034B6C
	.align 2, 0
_08034A1C: .4byte gCurTask
_08034A20: .4byte 0x0300000C
_08034A24: .4byte 0x0300003C
_08034A28: .4byte 0x03000088
_08034A2C: .4byte 0x000003FF
_08034A30: .4byte 0x000001FF
_08034A34: .4byte gSineTable
_08034A38: .4byte 0x0300007C
_08034A3C: .4byte 0x0300007E
_08034A40: .4byte 0x03000080
_08034A44: .4byte 0x03000082
_08034A48: .4byte 0x03000086
_08034A4C:
	mov r0, sl
	ldr r3, [r0]
	ldrh r1, [r3, #6]
	ldr r2, _08034AD4 @ =0x0300000C
	adds r1, r1, r2
	ldr r2, _08034AD8 @ =gCamera
	ldrh r0, [r2]
	subs r0, r6, r0
	strh r0, [r1, #0x16]
	ldrh r0, [r2, #2]
	subs r0, r7, r0
	strh r0, [r1, #0x18]
	ldrh r3, [r3, #6]
	ldr r0, _08034ADC @ =0x0300003C
	adds r1, r3, r0
	adds r0, #0x20
	adds r2, r3, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _08034A8C
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08034A8C
	movs r0, #0
	strb r0, [r2]
	ldr r2, _08034AE0 @ =0x0300005D
	adds r1, r3, r2
	movs r0, #0xff
	strb r0, [r1]
_08034A8C:
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, sb
	bl UpdateSpriteAnimation
	ldr r0, _08034AE4 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r3, _08034AD4 @ =0x0300000C
	adds r1, r0, r3
	adds r3, #0x30
	adds r2, r0, r3
	ldrh r0, [r1, #0x16]
	movs r5, #0
	strh r0, [r2, #0x16]
	ldrh r3, [r1, #0x18]
	strh r3, [r2, #0x18]
	ldrh r1, [r2, #0xa]
	ldr r0, _08034AE8 @ =0x000002B6
	cmp r1, r0
	bne _08034ABC
	subs r0, r3, #3
	strh r0, [r2, #0x18]
_08034ABC:
	bl sub_80343E0
	adds r2, r4, #0
	adds r2, #0x8d
	ldrb r0, [r2]
	cmp r0, #1
	beq _08034B1C
	cmp r0, #1
	bgt _08034AEC
	cmp r0, #0
	beq _08034AF6
	b _08034B6C
	.align 2, 0
_08034AD4: .4byte 0x0300000C
_08034AD8: .4byte gCamera
_08034ADC: .4byte 0x0300003C
_08034AE0: .4byte 0x0300005D
_08034AE4: .4byte gCurTask
_08034AE8: .4byte 0x000002B6
_08034AEC:
	cmp r0, #2
	beq _08034B36
	cmp r0, #3
	beq _08034B4E
	b _08034B6C
_08034AF6:
	adds r0, r4, #0
	adds r0, #0x88
	ldr r3, _08034B14 @ =0xFFFFFEFF
	adds r1, r3, #0
	ldrh r0, [r0]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r0, _08034B18 @ =0x01FF0000
	cmp r1, r0
	bhi _08034B6C
	str r5, [r4, #0x74]
	ldrb r0, [r2]
	adds r0, #1
	b _08034B6A
	.align 2, 0
_08034B14: .4byte 0xFFFFFEFF
_08034B18: .4byte 0x01FF0000
_08034B1C:
	adds r0, r4, #0
	adds r0, #0x88
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	bgt _08034B6C
	movs r0, #0xc0
	str r0, [r4, #0x74]
	ldrb r0, [r2]
	adds r0, #1
	b _08034B6A
_08034B36:
	adds r0, r4, #0
	adds r0, #0x88
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bgt _08034B6C
	str r5, [r4, #0x74]
	ldrb r0, [r2]
	adds r0, #1
	b _08034B6A
_08034B4E:
	adds r0, r4, #0
	adds r0, #0x88
	movs r3, #0
	ldrsh r1, [r0, r3]
	cmp r1, #0
	beq _08034B62
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _08034B6C
_08034B62:
	movs r0, #0xc0
	rsbs r0, r0, #0
	str r0, [r4, #0x74]
	movs r0, #0
_08034B6A:
	strb r0, [r2]
_08034B6C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8034B7C
sub_8034B7C: @ 0x08034B7C
	push {r4, r5, r6, lr}
	ldr r0, _08034C50 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r3, r4
	ldr r0, _08034C54 @ =0x0300000C
	adds r6, r3, r0
	ldr r1, _08034C58 @ =0x0300008D
	adds r0, r3, r1
	movs r1, #0
	strb r1, [r0]
	ldr r5, _08034C5C @ =0x03000084
	adds r2, r3, r5
	movs r0, #0x3c
	strh r0, [r2]
	str r1, [r4, #0x74]
	str r1, [r4, #0x78]
	ldr r1, _08034C60 @ =0x03000088
	adds r0, r3, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r5, _08034C64 @ =0x000003FF
	adds r1, r5, #0
	ldr r5, _08034C68 @ =gSineTable
	ands r0, r1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1d
	lsls r0, r0, #8
	ldr r1, [r4, #0x70]
	adds r1, r1, r0
	str r1, [r4, #0x70]
	ldr r0, _08034C6C @ =0x0300005C
	adds r1, r3, r0
	movs r0, #2
	strb r0, [r1]
	ldr r1, _08034C70 @ =0x0300005D
	adds r3, r3, r1
	movs r0, #0xff
	strb r0, [r3]
	movs r0, #0x90
	bl m4aSongNumStart
	ldr r0, [r6, #0x10]
	ldr r1, _08034C74 @ =0xFFFFFE7F
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, _08034C78 @ =gPlayer
	ldr r3, [r0, #0x10]
	movs r0, #0x80
	ands r3, r0
	cmp r3, #0
	bne _08034C0C
	ldr r2, _08034C7C @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08034C80 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08034C84 @ =gWinRegs
	strh r3, [r0, #0xa]
	ldr r0, _08034C88 @ =gBldRegs
	strh r3, [r0]
	strh r3, [r0, #4]
_08034C0C:
	ldr r1, _08034C8C @ =gLevelScore
	ldr r6, [r1]
	movs r2, #0xfa
	lsls r2, r2, #2
	adds r0, r6, r2
	str r0, [r1]
	ldr r4, _08034C90 @ =0x0000C350
	adds r1, r4, #0
	bl Div
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl Div
	cmp r5, r0
	beq _08034C3E
	ldr r0, _08034C94 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _08034C3E
	ldr r1, _08034C98 @ =gNumLives
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08034C3E:
	bl sub_8034CA0
	ldr r0, _08034C50 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08034C9C @ =sub_8034CA0
	str r0, [r1, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08034C50: .4byte gCurTask
_08034C54: .4byte 0x0300000C
_08034C58: .4byte 0x0300008D
_08034C5C: .4byte 0x03000084
_08034C60: .4byte 0x03000088
_08034C64: .4byte 0x000003FF
_08034C68: .4byte gSineTable
_08034C6C: .4byte 0x0300005C
_08034C70: .4byte 0x0300005D
_08034C74: .4byte 0xFFFFFE7F
_08034C78: .4byte gPlayer
_08034C7C: .4byte gDispCnt
_08034C80: .4byte 0x00007FFF
_08034C84: .4byte gWinRegs
_08034C88: .4byte gBldRegs
_08034C8C: .4byte gLevelScore
_08034C90: .4byte 0x0000C350
_08034C94: .4byte gGameMode
_08034C98: .4byte gNumLives
_08034C9C: .4byte sub_8034CA0

	thumb_func_start sub_8034CA0
sub_8034CA0: @ 0x08034CA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r1, _08034D94 @ =gCurTask
	ldr r0, [r1]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	ldr r2, _08034D98 @ =0x0300000C
	adds r2, r2, r6
	mov sb, r2
	ldr r3, _08034D9C @ =0x0300003C
	adds r7, r6, r3
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, [r4, #0x70]
	ldr r2, [r4, #0x78]
	adds r1, r1, r2
	str r1, [r4, #0x70]
	adds r3, #0x40
	adds r2, r6, r3
	asrs r0, r0, #8
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	str r3, [sp]
	ldr r2, _08034DA0 @ =0x0300007E
	adds r0, r6, r2
	asrs r1, r1, #8
	ldrh r0, [r0]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	mov sl, r2
	ldr r1, _08034DA4 @ =0x03000080
	adds r0, r6, r1
	strh r3, [r0]
	adds r1, #2
	adds r0, r6, r1
	strh r2, [r0]
	ldr r0, _08034DA8 @ =0x03000084
	adds r5, r6, r0
	ldrh r1, [r5]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _08034D18
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	bl sub_8034EE0
_08034D18:
	mov r0, sb
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r1, _08034D94 @ =gCurTask
	ldr r3, [r1]
	ldrh r1, [r3, #6]
	ldr r2, _08034D98 @ =0x0300000C
	adds r1, r1, r2
	ldr r0, _08034DAC @ =gCamera
	mov r8, r0
	ldrh r2, [r0]
	mov ip, r2
	ldr r2, [sp]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov r2, ip
	subs r0, r0, r2
	strh r0, [r1, #0x16]
	mov r0, r8
	ldrh r0, [r0, #2]
	mov ip, r0
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov r2, ip
	subs r0, r0, r2
	strh r0, [r1, #0x18]
	ldrh r0, [r3, #6]
	ldr r3, _08034D98 @ =0x0300000C
	adds r1, r0, r3
	adds r3, #0x30
	adds r2, r0, r3
	ldrh r0, [r1, #0x16]
	strh r0, [r2, #0x16]
	ldrh r1, [r1, #0x18]
	strh r1, [r2, #0x18]
	ldrh r0, [r2, #0xa]
	ldr r3, _08034DB0 @ =0x000002B6
	mov sl, r3
	cmp r0, sl
	bne _08034D74
	subs r0, r1, #3
	strh r0, [r2, #0x18]
_08034D74:
	mov r0, sb
	bl DisplaySprite
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, _08034DB4 @ =0x0300008D
	adds r1, r6, r0
	ldrb r0, [r1]
	cmp r0, #1
	beq _08034E0C
	cmp r0, #1
	bgt _08034DB8
	cmp r0, #0
	beq _08034DC2
	b _08034EBA
	.align 2, 0
_08034D94: .4byte gCurTask
_08034D98: .4byte 0x0300000C
_08034D9C: .4byte 0x0300003C
_08034DA0: .4byte 0x0300007E
_08034DA4: .4byte 0x03000080
_08034DA8: .4byte 0x03000084
_08034DAC: .4byte gCamera
_08034DB0: .4byte 0x000002B6
_08034DB4: .4byte 0x0300008D
_08034DB8:
	cmp r0, #2
	beq _08034E2A
	cmp r0, #3
	beq _08034E80
	b _08034EBA
_08034DC2:
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08034EBA
	movs r0, #0x5a
	strh r0, [r5]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r4, #0x40]
	bl VramFree
	movs r0, #0xc
	bl VramMalloc
	str r0, [r7, #4]
	mov r1, sl
	strh r1, [r7, #0xa]
	ldr r2, _08034E04 @ =0x0300005C
	adds r1, r6, r2
	movs r0, #4
	strb r0, [r1]
	ldr r3, _08034E08 @ =0x0300005D
	adds r1, r6, r3
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0xb8
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	b _08034EBA
	.align 2, 0
_08034E04: .4byte 0x0300005C
_08034E08: .4byte 0x0300005D
_08034E0C:
	ldr r0, [r4, #0x78]
	adds r0, #3
	str r0, [r4, #0x78]
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08034EBA
	movs r0, #0x1e
	strh r0, [r5]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08034EBA
_08034E2A:
	ldr r0, [r4, #0x78]
	subs r0, #0x18
	str r0, [r4, #0x78]
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08034EBA
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r4, #0x74]
	movs r0, #0x40
	rsbs r0, r0, #0
	str r0, [r4, #0x78]
	movs r0, #1
	strh r0, [r5]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, _08034E78 @ =0x0300005C
	adds r1, r6, r0
	movs r0, #6
	strb r0, [r1]
	ldr r2, _08034E7C @ =0x0300005D
	adds r1, r6, r2
	movs r0, #0xff
	strb r0, [r1]
	mov r3, sb
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r0, [r7, #0x10]
	orrs r0, r1
	str r0, [r7, #0x10]
	b _08034EBA
	.align 2, 0
_08034E78: .4byte 0x0300005C
_08034E7C: .4byte 0x0300005D
_08034E80:
	ldr r1, [r4, #0x6c]
	movs r0, #0x98
	lsls r0, r0, #9
	cmp r1, r0
	ble _08034EBA
	ldr r2, _08034ECC @ =gRefCollision
	ldr r1, _08034ED0 @ =gCollisionTable
	ldr r0, _08034ED4 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	str r1, [r2]
	movs r0, #0
	mov r2, r8
	strh r0, [r2, #0x14]
	ldrh r0, [r1, #0x1e]
	strh r0, [r2, #0x16]
	ldrh r0, [r1, #0x1c]
	strh r0, [r2, #0x1a]
	ldr r1, _08034ED8 @ =gMusicManagerState
	movs r0, #0x34
	strb r0, [r1, #1]
	ldr r3, _08034EDC @ =gCurTask
	ldr r0, [r3]
	bl TaskDestroy
_08034EBA:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034ECC: .4byte gRefCollision
_08034ED0: .4byte gCollisionTable
_08034ED4: .4byte gCurrentLevel
_08034ED8: .4byte gMusicManagerState
_08034EDC: .4byte gCurTask

	thumb_func_start sub_8034EE0
sub_8034EE0: @ 0x08034EE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r0, _08034FE8 @ =gPseudoRandom
	mov sb, r0
	ldr r0, [r0]
	ldr r7, _08034FEC @ =0x00196225
	muls r0, r7, r0
	ldr r1, _08034FF0 @ =0x3C6EF35F
	mov sl, r1
	add r0, sl
	mov r2, sb
	str r0, [r2]
	movs r4, #7
	ands r4, r0
	ldr r0, _08034FF4 @ =gUnknown_080BB434
	adds r0, r4, r0
	ldrb r0, [r0]
	bl VramMalloc
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #6
	mov r8, r0
	ldr r2, _08034FF8 @ =gUnknown_080BB41C
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, _08034FFC @ =gUnknown_080BB42C
	adds r4, r4, r0
	ldrb r3, [r4]
	ldr r0, _08035000 @ =sub_80177EC
	str r0, [sp]
	mov r0, r8
	bl sub_801769C
	ldrh r1, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r1, r3
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r0, r5, #8
	str r0, [r3, #0x30]
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	mov ip, r6
	lsls r0, r6, #8
	str r0, [r3, #0x34]
	mov r2, r8
	str r2, [r3, #0x10]
	movs r0, #0xb8
	lsls r0, r0, #3
	strh r0, [r3, #0x1a]
	movs r0, #5
	strh r0, [r3, #0x3e]
	ldr r6, _08035004 @ =0x03000040
	adds r1, r1, r6
	movs r0, #0x20
	strh r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	adds r4, r0, #0
	muls r4, r7, r4
	add r4, sl
	str r4, [r1]
	ldr r2, _08035008 @ =gSineTable
	mov r8, r2
	ldr r1, _0803500C @ =0x000001FF
	ands r1, r4
	lsls r0, r1, #1
	add r0, r8
	movs r6, #0
	ldrsh r2, [r0, r6]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #9
	rsbs r0, r0, #0
	asrs r0, r0, #0xe
	strh r0, [r3, #0x3a]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	add r1, r8
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #9
	rsbs r0, r0, #0
	asrs r0, r0, #0xe
	strh r0, [r3, #0x38]
	adds r1, r4, #0
	muls r1, r7, r1
	add r1, sl
	mov r6, sb
	str r1, [r6]
	movs r0, #0x3f
	ands r0, r1
	adds r5, r5, r0
	subs r5, #0x20
	lsls r5, r5, #8
	movs r0, #0xfc
	lsls r0, r0, #0xe
	ands r1, r0
	asrs r1, r1, #0x10
	mov r0, ip
	subs r6, r0, r1
	lsls r6, r6, #8
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_8017540
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034FE8: .4byte gPseudoRandom
_08034FEC: .4byte 0x00196225
_08034FF0: .4byte 0x3C6EF35F
_08034FF4: .4byte gUnknown_080BB434
_08034FF8: .4byte gUnknown_080BB41C
_08034FFC: .4byte gUnknown_080BB42C
_08035000: .4byte sub_80177EC
_08035004: .4byte 0x03000040
_08035008: .4byte gSineTable
_0803500C: .4byte 0x000001FF

	thumb_func_start sub_8035010
sub_8035010: @ 0x08035010
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0803527C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	mov sl, r0
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r0, r0, r5
	mov sb, r0
	ldr r0, _08035280 @ =sub_80352C0
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08035284 @ =sub_8035818
	str r1, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	adds r2, r4, r5
	ldr r1, _08035288 @ =0x0300007C
	add r1, sl
	mov r3, sb
	ldr r0, [r3, #0x6c]
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	movs r5, #0
	strh r0, [r2, #0x3c]
	ldr r1, _0803528C @ =0x0300007E
	add r1, sl
	ldr r0, [r3, #0x70]
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r2, #0x3e]
	movs r0, #0x40
	strh r0, [r2, #0x30]
	adds r7, r2, #0
	movs r0, #2
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	strh r5, [r7, #8]
	ldr r0, _08035290 @ =0x000002AB
	strh r0, [r7, #0xa]
	ldr r0, _08035294 @ =0x03000020
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	strh r5, [r7, #0x14]
	strh r5, [r7, #0x1c]
	ldr r2, _08035298 @ =0x03000021
	adds r1, r4, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r3, _0803529C @ =0x03000022
	adds r1, r4, r3
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _080352A0 @ =0x03000025
	adds r4, r4, r0
	movs r1, #0
	strb r1, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x10]
	movs r6, #0
	movs r2, #0
	mov r8, r2
	adds r3, #0x5a
	add r3, sl
	str r3, [sp, #4]
	ldr r0, _0803528C @ =0x0300007E
	add r0, sl
	str r0, [sp, #8]
_080350BE:
	movs r1, #0x84
	lsls r1, r1, #6
	adds r0, r1, #0
	adds r2, r6, #0
	orrs r2, r0
	ldr r3, _08035284 @ =sub_8035818
	str r3, [sp]
	ldr r0, _080352A4 @ =sub_8035354
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r4, r0
	mov r1, sb
	adds r1, #0x7c
	mov r3, sb
	ldr r0, [r3, #0x6c]
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r2, #0x3c]
	mov r1, sb
	adds r1, #0x7e
	ldr r0, [r3, #0x70]
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r2, #0x3e]
	strh r5, [r2, #0x34]
	strh r5, [r2, #0x36]
	ldr r1, _080352A8 @ =0x03000040
	adds r0, r4, r1
	strb r6, [r0]
	movs r3, #0x40
	strh r3, [r2, #0x30]
	adds r7, r2, #0
	movs r0, #4
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0xc8
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	strh r5, [r7, #8]
	ldr r0, _08035290 @ =0x000002AB
	strh r0, [r7, #0xa]
	ldr r2, _08035294 @ =0x03000020
	adds r1, r4, r2
	movs r0, #2
	strb r0, [r1]
	strh r5, [r7, #0x14]
	strh r5, [r7, #0x1c]
	ldr r3, _08035298 @ =0x03000021
	adds r1, r4, r3
	subs r0, #3
	mov sl, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _0803529C @ =0x03000022
	adds r0, r4, r1
	movs r2, #0x10
	strb r2, [r0]
	adds r3, #4
	adds r4, r4, r3
	mov r0, r8
	strb r0, [r4]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r7, #0x28]
	movs r2, #0x80
	lsls r2, r2, #6
	str r2, [r7, #0x10]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _080350BE
	ldr r0, _080352AC @ =sub_80354F4
	ldr r2, _080352B0 @ =0x00002104
	ldr r3, _08035284 @ =sub_8035818
	str r3, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r4, r0
	mov r1, sb
	ldr r0, [r1, #0x6c]
	asrs r0, r0, #8
	ldr r3, [sp, #4]
	ldrh r3, [r3]
	adds r0, r0, r3
	movs r1, #0
	mov r8, r1
	movs r5, #0
	strh r0, [r2, #0x3c]
	mov r3, sb
	ldr r0, [r3, #0x70]
	asrs r0, r0, #8
	ldr r1, [sp, #8]
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r2, #0x3e]
	strh r5, [r2, #0x34]
	strh r5, [r2, #0x36]
	movs r3, #0x40
	strh r3, [r2, #0x30]
	adds r7, r2, #0
	movs r0, #0x10
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0xb8
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	strh r5, [r7, #8]
	ldr r0, _080352B4 @ =0x000002AD
	strh r0, [r7, #0xa]
	ldr r1, _08035294 @ =0x03000020
	adds r0, r4, r1
	mov r2, r8
	strb r2, [r0]
	strh r5, [r7, #0x14]
	strh r5, [r7, #0x1c]
	ldr r3, _08035298 @ =0x03000021
	adds r1, r4, r3
	ldrb r0, [r1]
	mov r2, sl
	orrs r0, r2
	strb r0, [r1]
	adds r3, #1
	adds r0, r4, r3
	movs r1, #0x10
	strb r1, [r0]
	ldr r2, _080352A0 @ =0x03000025
	adds r4, r4, r2
	mov r3, r8
	strb r3, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r7, #0x10]
	ldr r0, _080352B8 @ =sub_8035768
	ldr r2, _080352BC @ =0x00002105
	ldr r3, _08035284 @ =sub_8035818
	str r3, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r4, r0
	mov r1, sb
	ldr r0, [r1, #0x6c]
	asrs r0, r0, #8
	ldr r3, [sp, #4]
	ldrh r3, [r3]
	adds r0, r0, r3
	strh r0, [r2, #0x3c]
	ldr r0, [r1, #0x70]
	asrs r0, r0, #8
	ldr r1, [sp, #8]
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r2, #0x3e]
	movs r3, #0x40
	strh r3, [r2, #0x30]
	adds r7, r2, #0
	movs r0, #4
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	strh r5, [r7, #8]
	ldr r0, _08035290 @ =0x000002AB
	strh r0, [r7, #0xa]
	ldr r1, _08035294 @ =0x03000020
	adds r0, r4, r1
	mov r2, r8
	strb r2, [r0]
	strh r5, [r7, #0x14]
	strh r5, [r7, #0x1c]
	ldr r3, _08035298 @ =0x03000021
	adds r1, r4, r3
	ldrb r0, [r1]
	mov r2, sl
	orrs r0, r2
	strb r0, [r1]
	adds r3, #1
	adds r0, r4, r3
	movs r1, #0x10
	strb r1, [r0]
	ldr r2, _080352A0 @ =0x03000025
	adds r4, r4, r2
	mov r3, r8
	strb r3, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r7, #0x10]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803527C: .4byte gCurTask
_08035280: .4byte sub_80352C0
_08035284: .4byte sub_8035818
_08035288: .4byte 0x0300007C
_0803528C: .4byte 0x0300007E
_08035290: .4byte 0x000002AB
_08035294: .4byte 0x03000020
_08035298: .4byte 0x03000021
_0803529C: .4byte 0x03000022
_080352A0: .4byte 0x03000025
_080352A4: .4byte sub_8035354
_080352A8: .4byte 0x03000040
_080352AC: .4byte sub_80354F4
_080352B0: .4byte 0x00002104
_080352B4: .4byte 0x000002AD
_080352B8: .4byte sub_8035768
_080352BC: .4byte 0x00002105

	thumb_func_start sub_80352C0
sub_80352C0: @ 0x080352C0
	push {r4, r5, r6, r7, lr}
	movs r5, #0
	ldr r0, _0803534C @ =gCurTask
	ldr r2, [r0]
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r3, r0, r1
	ldrh r0, [r2]
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	adds r7, r0, r1
	adds r4, r3, #0
	ldrh r0, [r4, #0x30]
	cmp r0, #0
	beq _080352EA
	subs r0, #1
	strh r0, [r4, #0x30]
	ldrh r0, [r4, #0x30]
	lsls r0, r0, #8
	lsrs r5, r0, #0xb
_080352EA:
	lsls r1, r5, #0x10
	rsbs r1, r1, #0
	adds r0, r7, #0
	adds r0, #0x80
	ldrh r0, [r0]
	strh r0, [r3, #0x3c]
	adds r0, r7, #0
	adds r0, #0x82
	ldrh r0, [r0]
	strh r0, [r3, #0x3e]
	asrs r1, r1, #0x10
	adds r1, r1, r0
	ldr r2, _08035350 @ =gCamera
	ldrh r0, [r2]
	movs r5, #0x3c
	ldrsh r6, [r3, r5]
	subs r0, r6, r0
	strh r0, [r4, #0x16]
	ldrh r0, [r2, #2]
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	subs r0, r5, r0
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r7, #0
	adds r0, #0x86
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	ble _08035346
	lsls r0, r6, #8
	adds r1, r5, #0
	adds r1, #0x14
	lsls r1, r1, #8
	bl sub_8017540
	ldr r0, _0803534C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08035346:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803534C: .4byte gCurTask
_08035350: .4byte gCamera

	thumb_func_start sub_8035354
sub_8035354: @ 0x08035354
	push {r4, r5, r6, lr}
	ldr r0, _080353A0 @ =gCurTask
	ldr r3, [r0]
	ldrh r2, [r3, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r2, r1
	ldrh r0, [r3]
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	adds r6, r0, r1
	adds r4, r5, #0
	ldrh r0, [r4, #0x30]
	subs r0, #1
	strh r0, [r4, #0x30]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080353A4
	adds r1, #0x40
	adds r0, r2, r1
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r2, r0, #1
	adds r1, r2, #0
	adds r1, #0x15
	ldrh r0, [r4, #0x30]
	lsls r0, r0, #8
	asrs r0, r0, #6
	muls r0, r1, r0
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	subs r0, #0x23
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _080353C0
	.align 2, 0
_080353A0: .4byte gCurTask
_080353A4:
	ldr r1, _08035400 @ =0x03000040
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r1, r0, #3
	subs r0, r1, r0
	lsls r0, r0, #0x11
	movs r2, #0x8c
	lsls r2, r2, #0xe
	adds r0, r0, r2
	lsrs r2, r0, #0x10
	adds r1, #8
	strh r1, [r4, #0x30]
	ldr r0, _08035404 @ =sub_803540C
	str r0, [r3, #8]
_080353C0:
	adds r0, r6, #0
	adds r0, #0x80
	ldrh r0, [r0]
	strh r0, [r5, #0x3c]
	adds r0, r6, #0
	adds r0, #0x82
	ldrh r0, [r0]
	strh r0, [r5, #0x3e]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	ldr r3, _08035408 @ =gCamera
	ldrh r2, [r3]
	movs r6, #0x3c
	ldrsh r0, [r5, r6]
	subs r0, r0, r2
	strh r0, [r4, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08035400: .4byte 0x03000040
_08035404: .4byte sub_803540C
_08035408: .4byte gCamera

	thumb_func_start sub_803540C
sub_803540C: @ 0x0803540C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080354D8 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r6, r1, r2
	ldrh r0, [r0]
	adds r0, r0, r2
	ldrh r4, [r0, #6]
	adds r2, #0x40
	adds r1, r1, r2
	ldrb r0, [r1]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #0x11
	movs r3, #0xd0
	lsls r3, r3, #0xc
	adds r1, r1, r3
	asrs r1, r1, #0x10
	ldr r5, _080354DC @ =gSineTable
	ldr r0, _080354E0 @ =0x0300008A
	adds r3, r4, r0
	movs r2, #0
	ldrsh r0, [r3, r2]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r2, r1, #0
	muls r2, r0, r2
	lsls r2, r2, #2
	ldrh r3, [r3]
	ldr r0, _080354E4 @ =0x000001FF
	ands r0, r3
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r1, r0
	lsls r0, r0, #2
	ldr r5, _080354E8 @ =0x03000080
	adds r1, r4, r5
	ldrh r3, [r1]
	strh r3, [r6, #0x3c]
	adds r5, #2
	adds r1, r4, r5
	ldrh r1, [r1]
	strh r1, [r6, #0x3e]
	asrs r2, r2, #0x10
	adds r2, r2, r3
	asrs r0, r0, #0x10
	adds r0, #0x16
	adds r1, r1, r0
	ldr r3, _080354EC @ =gCamera
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r7, r2, #0x10
	subs r0, r7, r0
	strh r0, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	subs r0, r5, r0
	strh r0, [r6, #0x18]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	ldr r0, _080354F0 @ =0x03000086
	adds r4, r4, r0
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #3
	ble _080354CE
	ldrh r0, [r6, #0x30]
	subs r0, #1
	strh r0, [r6, #0x30]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080354CE
	lsls r0, r7, #8
	lsls r1, r5, #8
	bl sub_8017540
	mov r1, r8
	ldr r0, [r1]
	bl TaskDestroy
_080354CE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080354D8: .4byte gCurTask
_080354DC: .4byte gSineTable
_080354E0: .4byte 0x0300008A
_080354E4: .4byte 0x000001FF
_080354E8: .4byte 0x03000080
_080354EC: .4byte gCamera
_080354F0: .4byte 0x03000086

	thumb_func_start sub_80354F4
sub_80354F4: @ 0x080354F4
	push {r4, r5, r6, lr}
	ldr r0, _08035534 @ =gCurTask
	ldr r2, [r0]
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r0, r1
	ldrh r0, [r2]
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	adds r3, r0, r1
	adds r4, r5, #0
	ldrh r0, [r4, #0x30]
	subs r0, #1
	strh r0, [r4, #0x30]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08035538
	ldrh r0, [r4, #0x30]
	lsls r0, r0, #8
	asrs r0, r0, #6
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #8
	movs r1, #0x63
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	b _08035542
	.align 2, 0
_08035534: .4byte gCurTask
_08035538:
	movs r1, #0x63
	movs r0, #0x3c
	strh r0, [r4, #0x30]
	ldr r0, _08035580 @ =sub_8035588
	str r0, [r2, #8]
_08035542:
	adds r0, r3, #0
	adds r0, #0x80
	ldrh r0, [r0]
	strh r0, [r5, #0x3c]
	adds r0, r3, #0
	adds r0, #0x82
	ldrh r0, [r0]
	strh r0, [r5, #0x3e]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	ldr r3, _08035584 @ =gCamera
	ldrh r2, [r3]
	movs r6, #0x3c
	ldrsh r0, [r5, r6]
	subs r0, r0, r2
	strh r0, [r4, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08035580: .4byte sub_8035588
_08035584: .4byte gCamera

	thumb_func_start sub_8035588
sub_8035588: @ 0x08035588
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08035654 @ =gCurTask
	ldr r5, [r0]
	ldrh r0, [r5, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	mov r8, r0
	ldrh r0, [r5]
	adds r0, r0, r1
	ldrh r3, [r0, #6]
	adds r1, r3, r1
	str r1, [sp]
	mov sb, r8
	movs r0, #0x4d
	mov sl, r0
	ldr r4, _08035658 @ =gSineTable
	ldr r1, _0803565C @ =0x0300008A
	adds r2, r3, r1
	movs r6, #0
	ldrsh r0, [r2, r6]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r6, #0
	ldrsh r0, [r0, r6]
	mov r1, sl
	muls r1, r0, r1
	ldrh r2, [r2]
	ldr r0, _08035660 @ =0x000001FF
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov r2, sl
	muls r2, r0, r2
	ldr r4, _08035664 @ =0x03000080
	adds r0, r3, r4
	ldrh r4, [r0]
	mov r6, r8
	strh r4, [r6, #0x3c]
	ldr r6, _08035668 @ =0x03000082
	adds r0, r3, r6
	ldrh r0, [r0]
	mov r6, r8
	strh r0, [r6, #0x3e]
	asrs r1, r1, #0xe
	adds r1, r1, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	asrs r2, r2, #0xe
	adds r2, #0x16
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r0, _0803566C @ =0x03000086
	adds r3, r3, r0
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #3
	bgt _080356B0
	ldrh r0, [r5, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	ldr r2, [sp, #4]
	lsls r0, r2, #0x10
	asrs r5, r0, #0x10
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r4, r0, #0x10
	ldr r3, _08035670 @ =gPlayer
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	adds r7, r0, #0
	ldr r0, _08035674 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0803567C
	ldr r3, _08035678 @ =gPartner
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	b _0803567E
	.align 2, 0
_08035654: .4byte gCurTask
_08035658: .4byte gSineTable
_0803565C: .4byte 0x0300008A
_08035660: .4byte 0x000001FF
_08035664: .4byte 0x03000080
_08035668: .4byte 0x03000082
_0803566C: .4byte 0x03000086
_08035670: .4byte gPlayer
_08035674: .4byte gNumSingleplayerCharacters
_08035678: .4byte gPartner
_0803567C:
	movs r0, #0
_0803567E:
	cmp r7, #2
	beq _08035686
	cmp r0, #2
	bne _080356B0
_08035686:
	ldr r0, _08035744 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r0, r0, r4
	ldrh r1, [r0, #6]
	ldr r6, _08035748 @ =0x0300003C
	adds r3, r1, r6
	ldr r0, _0803574C @ =0x0300005C
	adds r2, r1, r0
	movs r0, #1
	strb r0, [r2]
	ldr r2, _08035750 @ =0x0300005D
	adds r1, r1, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _08035754 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
_080356B0:
	ldr r2, _08035758 @ =gCamera
	ldrh r0, [r2]
	ldr r3, [sp, #4]
	lsls r1, r3, #0x10
	asrs r4, r1, #0x10
	subs r0, r4, r0
	mov r6, sb
	strh r0, [r6, #0x16]
	ldrh r0, [r2, #2]
	mov r2, sl
	lsls r1, r2, #0x10
	asrs r5, r1, #0x10
	subs r0, r5, r0
	strh r0, [r6, #0x18]
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, sb
	bl DisplaySprite
	ldr r0, [sp]
	adds r0, #0x86
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	ble _08035732
	mov r3, r8
	ldrh r1, [r3, #0x30]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0803571C
	ldr r2, _0803575C @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _08035760 @ =0x00196225
	muls r1, r0, r1
	ldr r6, _08035764 @ =0x3C6EF35F
	adds r1, r1, r6
	str r1, [r2]
	movs r0, #0x1f
	ands r0, r1
	adds r0, r4, r0
	subs r0, #0xf
	lsls r0, r0, #8
	movs r2, #0xf8
	lsls r2, r2, #0xd
	ands r1, r2
	asrs r1, r1, #0x10
	adds r1, r5, r1
	subs r1, #0xf
	lsls r1, r1, #8
	bl sub_8017540
_0803571C:
	mov r1, r8
	ldrh r0, [r1, #0x30]
	subs r0, #1
	strh r0, [r1, #0x30]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08035732
	ldr r0, _08035744 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08035732:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035744: .4byte gCurTask
_08035748: .4byte 0x0300003C
_0803574C: .4byte 0x0300005C
_08035750: .4byte 0x0300005D
_08035754: .4byte 0xFFFFBFFF
_08035758: .4byte gCamera
_0803575C: .4byte gPseudoRandom
_08035760: .4byte 0x00196225
_08035764: .4byte 0x3C6EF35F

	thumb_func_start sub_8035768
sub_8035768: @ 0x08035768
	push {r4, r5, r6, lr}
	ldr r0, _080357A0 @ =gCurTask
	ldr r2, [r0]
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r0, r1
	ldrh r0, [r2]
	adds r0, r0, r1
	ldrh r6, [r0, #6]
	adds r3, r6, r1
	adds r1, #0x8c
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080357E4
	ldr r0, [r3, #0x74]
	cmp r0, #0
	beq _080357E4
	ldr r1, [r3, #0x6c]
	movs r0, #0x96
	lsls r0, r0, #9
	cmp r1, r0
	ble _080357A4
	adds r0, r2, #0
	bl TaskDestroy
	b _080357E4
	.align 2, 0
_080357A0: .4byte gCurTask
_080357A4:
	ldr r2, [r5, #0x10]
	ldr r0, _080357EC @ =0xFFFFFBFF
	ands r2, r0
	str r2, [r5, #0x10]
	ldr r0, [r3, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	orrs r2, r0
	str r2, [r5, #0x10]
	ldr r0, _080357F0 @ =0x03000080
	adds r4, r6, r0
	ldr r1, _080357F4 @ =0x03000082
	adds r0, r6, r1
	ldrh r1, [r0]
	ldr r3, _080357F8 @ =gCamera
	ldrh r2, [r3]
	movs r6, #0
	ldrsh r0, [r4, r6]
	subs r0, r0, r2
	strh r0, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_080357E4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080357EC: .4byte 0xFFFFFBFF
_080357F0: .4byte 0x03000080
_080357F4: .4byte 0x03000082
_080357F8: .4byte gCamera

	thumb_func_start sub_80357FC
sub_80357FC: @ 0x080357FC
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x10]
	bl VramFree
	ldr r0, [r4, #0x40]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8035818
sub_8035818: @ 0x08035818
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_803582C
sub_803582C: @ 0x0803582C
	push {r4, r5, r6, r7, lr}
	ldr r2, _0803586C @ =gCurTask
	ldr r2, [r2]
	ldrh r3, [r2, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r6, r3, r2
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	ldr r3, _08035870 @ =gPlayer
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	adds r7, r0, #0
	ldr r0, _08035874 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0803587C
	ldr r3, _08035878 @ =gPartner
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	b _0803587E
	.align 2, 0
_0803586C: .4byte gCurTask
_08035870: .4byte gPlayer
_08035874: .4byte gNumSingleplayerCharacters
_08035878: .4byte gPartner
_0803587C:
	movs r0, #0
_0803587E:
	cmp r7, #2
	beq _08035886
	cmp r0, #2
	bne _080358B0
_08035886:
	ldr r0, _080358B8 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldrh r1, [r0, #6]
	ldr r0, _080358BC @ =0x0300003C
	adds r3, r1, r0
	adds r0, #0x20
	adds r2, r1, r0
	movs r0, #1
	strb r0, [r2]
	ldr r0, _080358C0 @ =0x0300005D
	adds r1, r1, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _080358C4 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
_080358B0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080358B8: .4byte gCurTask
_080358BC: .4byte 0x0300003C
_080358C0: .4byte 0x0300005D
_080358C4: .4byte 0xFFFFBFFF

	thumb_func_start sub_80358C8
sub_80358C8: @ 0x080358C8
	ldr r0, _080358F8 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	ldr r0, _080358FC @ =0x0300003C
	adds r1, r2, r0
	adds r0, #0x20
	adds r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq _080358F4
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080358F4
	movs r0, #0
	strb r0, [r3]
	ldr r0, _08035900 @ =0x0300005D
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
_080358F4:
	bx lr
	.align 2, 0
_080358F8: .4byte gCurTask
_080358FC: .4byte 0x0300003C
_08035900: .4byte 0x0300005D

	thumb_func_start sub_8035904
sub_8035904: @ 0x08035904
	ldr r0, _08035928 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r2, _0803592C @ =0x0300000C
	adds r1, r0, r2
	ldr r3, _08035930 @ =0x0300003C
	adds r2, r0, r3
	ldrh r0, [r1, #0x16]
	strh r0, [r2, #0x16]
	ldrh r3, [r1, #0x18]
	strh r3, [r2, #0x18]
	ldrh r1, [r2, #0xa]
	ldr r0, _08035934 @ =0x000002B6
	cmp r1, r0
	bne _08035926
	subs r0, r3, #3
	strh r0, [r2, #0x18]
_08035926:
	bx lr
	.align 2, 0
_08035928: .4byte gCurTask
_0803592C: .4byte 0x0300000C
_08035930: .4byte 0x0300003C
_08035934: .4byte 0x000002B6

	thumb_func_start sub_8035938
sub_8035938: @ 0x08035938
	push {r4, lr}
	ldr r2, _08035960 @ =gCurTask
	ldr r2, [r2]
	ldrh r2, [r2, #6]
	ldr r3, _08035964 @ =0x0300000C
	adds r2, r2, r3
	ldr r4, _08035968 @ =gCamera
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
_08035960: .4byte gCurTask
_08035964: .4byte 0x0300000C
_08035968: .4byte gCamera

	thumb_func_start sub_803596C
sub_803596C: @ 0x0803596C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r0, _08035A30 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	ldr r0, _08035A34 @ =0x0300000C
	adds r5, r4, r0
	ldr r0, [r5, #0x10]
	ldr r1, _08035A38 @ =0xFFFFFE7F
	ands r0, r1
	str r0, [r5, #0x10]
	ldr r1, _08035A3C @ =gPlayer
	mov r8, r1
	ldr r3, [r1, #0x10]
	movs r0, #0x80
	ands r3, r0
	cmp r3, #0
	bne _080359B0
	ldr r2, _08035A40 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08035A44 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08035A48 @ =gWinRegs
	strh r3, [r0, #0xa]
	ldr r0, _08035A4C @ =gBldRegs
	strh r3, [r0]
	strh r3, [r0, #4]
_080359B0:
	ldr r0, _08035A50 @ =0x03000087
	adds r0, r0, r4
	mov sb, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08035A92
	lsls r0, r7, #0x10
	asrs r7, r0, #0x10
	lsls r0, r6, #0x10
	asrs r6, r0, #0x10
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	mov r3, r8
	bl Coll_Player_Boss
	mov r8, r0
	movs r1, #0
	ldr r0, _08035A54 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _080359F2
	ldr r3, _08035A58 @ =gPartner
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl Coll_Player_Boss
	adds r1, r0, #0
_080359F2:
	ldr r0, _08035A5C @ =0x0300003C
	adds r2, r4, r0
	mov r0, r8
	cmp r0, #1
	beq _08035A00
	cmp r1, #1
	bne _08035A70
_08035A00:
	ldr r0, _08035A60 @ =0x03000086
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0x20
	mov r1, sb
	strb r0, [r1]
	ldr r0, _08035A64 @ =0x0300005C
	adds r1, r4, r0
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08035A68 @ =0x0300005D
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r2, #0x10]
	ldr r1, _08035A6C @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x10]
	movs r0, #0x8f
	bl m4aSongNumStart
	b _08035A92
	.align 2, 0
_08035A30: .4byte gCurTask
_08035A34: .4byte 0x0300000C
_08035A38: .4byte 0xFFFFFE7F
_08035A3C: .4byte gPlayer
_08035A40: .4byte gDispCnt
_08035A44: .4byte 0x00007FFF
_08035A48: .4byte gWinRegs
_08035A4C: .4byte gBldRegs
_08035A50: .4byte 0x03000087
_08035A54: .4byte gNumSingleplayerCharacters
_08035A58: .4byte gPartner
_08035A5C: .4byte 0x0300003C
_08035A60: .4byte 0x03000086
_08035A64: .4byte 0x0300005C
_08035A68: .4byte 0x0300005D
_08035A6C: .4byte 0xFFFFBFFF
_08035A70:
	mov r0, r8
	cmp r0, #2
	beq _08035A7A
	cmp r1, #2
	bne _08035A92
_08035A7A:
	ldr r0, _08035AA0 @ =0x0300005C
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08035AA4 @ =0x0300005D
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r2, #0x10]
	ldr r1, _08035AA8 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x10]
_08035A92:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035AA0: .4byte 0x0300005C
_08035AA4: .4byte 0x0300005D
_08035AA8: .4byte 0xFFFFBFFF

	thumb_func_start sub_8035AAC
sub_8035AAC: @ 0x08035AAC
	push {r4, r5, lr}
	ldr r0, _08035B24 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _08035B28 @ =0x0300000C
	adds r3, r0, r1
	ldr r5, _08035B2C @ =0x0300003C
	adds r4, r0, r5
	adds r1, #0x7b
	adds r2, r0, r1
	ldrb r1, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _08035B10
	subs r1, #1
	strb r1, [r2]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x10
	ble _08035B10
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _08035B10
	ldr r0, _08035B30 @ =gPlayer
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08035B10
	ldr r0, [r3, #0x10]
	adds r1, #0x80
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r2, _08035B34 @ =gDispCnt
	ldrh r0, [r2]
	movs r5, #0x80
	lsls r5, r5, #8
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08035B38 @ =gWinRegs
	ldr r0, _08035B3C @ =0x00003F1F
	strh r0, [r1, #0xa]
	ldr r1, _08035B40 @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
_08035B10:
	adds r0, r3, #0
	bl DisplaySprite
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08035B24: .4byte gCurTask
_08035B28: .4byte 0x0300000C
_08035B2C: .4byte 0x0300003C
_08035B30: .4byte gPlayer
_08035B34: .4byte gDispCnt
_08035B38: .4byte gWinRegs
_08035B3C: .4byte 0x00003F1F
_08035B40: .4byte gBldRegs
