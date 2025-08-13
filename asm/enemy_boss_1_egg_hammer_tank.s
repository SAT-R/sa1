.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 01
	thumb_func_start CreateEHTHammer
CreateEHTHammer: @ 0x080273E4
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	ldr r0, _08027484 @ =Task_EHTHammer
	ldr r2, _08027488 @ =0x00002005
	ldr r1, _0802748C @ =TaskDestructor_EHTHammer
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	mov sb, r0
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	ldr r0, _08027490 @ =0x03000030
	adds r2, r5, r0
	movs r1, #0
	mov r8, r1
	movs r6, #0
	strh r6, [r4, #0x16]
	strh r6, [r4, #0x18]
	movs r0, #0x40
	str r2, [sp, #4]
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	strh r6, [r4, #8]
	ldr r0, _08027494 @ =0x00000261
	strh r0, [r4, #0xa]
	ldr r1, _08027498 @ =0x03000020
	adds r0, r5, r1
	mov r1, r8
	strb r1, [r0]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	ldr r0, _0802749C @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _080274A0 @ =0x03000022
	adds r1, r5, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _080274A4 @ =0x03000025
	adds r5, r5, r1
	mov r0, r8
	strb r0, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	ldr r0, _080274A8 @ =0x00002030
	str r0, [r4, #0x10]
	ldr r2, [sp, #4]
	strh r6, [r2]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	movs r0, #0x60
	strh r0, [r2, #6]
	strh r6, [r2, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	mov r0, sb
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08027484: .4byte Task_EHTHammer
_08027488: .4byte 0x00002005
_0802748C: .4byte TaskDestructor_EHTHammer
_08027490: .4byte 0x03000030
_08027494: .4byte 0x00000261
_08027498: .4byte 0x03000020
_0802749C: .4byte 0x03000021
_080274A0: .4byte 0x03000022
_080274A4: .4byte 0x03000025
_080274A8: .4byte 0x00002030
.endif

	thumb_func_start Task_EHTHammer
Task_EHTHammer: @ 0x080274AC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080274F4 @ =gCurTask
	ldr r2, [r0]
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r0, r1
	ldr r4, _080274F8 @ =0x03000030
	adds r3, r0, r4
	ldrh r0, [r2]
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	adds r5, r0, r1
	adds r1, #0x44
	adds r1, r1, r0
	mov r8, r1
	movs r1, #0
	strh r1, [r3]
	ldr r2, _080274FC @ =0x03000094
	adds r0, r0, r2
	ldrh r1, [r0]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	bge _08027504
	ldr r2, _08027500 @ =0xFFFFFE00
	adds r0, r2, #0
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	ble _0802750C
	strh r1, [r3]
	b _0802750C
	.align 2, 0
_080274F4: .4byte gCurTask
_080274F8: .4byte 0x03000030
_080274FC: .4byte 0x03000094
_08027500: .4byte 0xFFFFFE00
_08027504:
	cmp r0, #0
	ble _0802750C
	rsbs r0, r1, #0
	strh r0, [r3]
_0802750C:
	adds r0, r7, #0
	adds r1, r3, #0
	bl UnusedTransform
	ldr r3, _0802759C @ =gSineTable
	ldr r0, _080275A0 @ =sa2__gUnknown_03001944
	ldrh r2, [r0]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r2, r4
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r2, r2, #1
	adds r2, r2, r3
	movs r3, #0
	ldrsh r0, [r2, r3]
	lsls r2, r0, #1
	adds r2, r2, r0
	ldr r3, _080275A4 @ =sa2__gUnknown_0300194C
	ldr r4, _080275A8 @ =gCamera
	ldrh r0, [r4]
	ldrh r3, [r3]
	adds r0, r0, r3
	asrs r1, r1, #9
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldr r1, _080275AC @ =sa2__gUnknown_03002820
	ldrh r0, [r4, #2]
	ldrh r1, [r1]
	adds r0, r0, r1
	asrs r2, r2, #9
	adds r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r5, #0
	adds r0, #0x9b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080275E6
	lsls r0, r3, #0x10
	asrs r5, r0, #0x10
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	ldr r3, _080275B0 @ =gPlayer
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl Coll_Player_Entity_Intersection
	adds r6, r0, #0
	ldr r0, _080275B4 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _080275BC
	ldr r3, _080275B8 @ =gPartner
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl Coll_Player_Entity_Intersection
	adds r4, r0, #0
	b _080275BE
	.align 2, 0
_0802759C: .4byte gSineTable
_080275A0: .4byte sa2__gUnknown_03001944
_080275A4: .4byte sa2__gUnknown_0300194C
_080275A8: .4byte gCamera
_080275AC: .4byte sa2__gUnknown_03002820
_080275B0: .4byte gPlayer
_080275B4: .4byte gNumSingleplayerCharacters
_080275B8: .4byte gPartner
_080275BC:
	movs r4, #0
_080275BE:
	movs r5, #0x80
	lsls r5, r5, #0xc
	cmp r6, r5
	bne _080275D4
	ldr r0, _080275F8 @ =gPlayer
	bl Coll_DamagePlayer
	mov r1, r8
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
_080275D4:
	cmp r4, r5
	bne _080275E6
	ldr r0, _080275FC @ =gPartner
	bl Coll_DamagePlayer
	mov r1, r8
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
_080275E6:
	adds r0, r7, #0
	bl DisplaySprite
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080275F8: .4byte gPlayer
_080275FC: .4byte gPartner

	thumb_func_start Task_8027600
Task_8027600: @ 0x08027600
	push {r4, r5, lr}
	ldr r3, _08027640 @ =gCurTask
	ldr r2, [r3]
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	mov ip, r4
	ldr r5, _08027644 @ =0x03000030
	adds r4, r0, r5
	ldrh r0, [r2]
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	movs r1, #0
	strh r1, [r4]
	ldr r1, _08027648 @ =0x03000094
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r5, r3, #0
	cmp r0, #0
	bge _08027650
	ldr r3, _0802764C @ =0xFFFFFE00
	adds r0, r3, #0
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	ble _08027658
	strh r1, [r4]
	b _08027658
	.align 2, 0
_08027640: .4byte gCurTask
_08027644: .4byte 0x03000030
_08027648: .4byte 0x03000094
_0802764C: .4byte 0xFFFFFE00
_08027650:
	cmp r0, #0
	ble _08027658
	rsbs r0, r1, #0
	strh r0, [r4]
_08027658:
	ldr r1, _080276C0 @ =sa2__gUnknown_03001944
	ldrh r0, [r1]
	ldrh r2, [r4]
	adds r0, r0, r2
	strh r0, [r4]
	ldr r3, _080276C4 @ =gSineTable
	ldrh r2, [r1]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r2, r4
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r2, r2, #1
	adds r2, r2, r3
	movs r3, #0
	ldrsh r0, [r2, r3]
	lsls r2, r0, #1
	adds r2, r2, r0
	ldr r3, _080276C8 @ =sa2__gUnknown_0300194C
	ldr r4, _080276CC @ =gCamera
	ldrh r0, [r4]
	ldrh r3, [r3]
	adds r0, r0, r3
	asrs r1, r1, #9
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, _080276D0 @ =sa2__gUnknown_03002820
	ldrh r0, [r4, #2]
	ldrh r3, [r3]
	adds r0, r0, r3
	asrs r2, r2, #9
	adds r2, r2, r0
	mov r0, ip
	strh r1, [r0, #0x3c]
	strh r2, [r0, #0x3e]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0
	ldrsh r0, [r4, r2]
	adds r0, #0x78
	cmp r1, r0
	bge _080276D4
	mov r1, ip
	adds r1, #0x4c
	movs r0, #0x80
	lsls r0, r0, #2
	b _080276DC
	.align 2, 0
_080276C0: .4byte sa2__gUnknown_03001944
_080276C4: .4byte gSineTable
_080276C8: .4byte sa2__gUnknown_0300194C
_080276CC: .4byte gCamera
_080276D0: .4byte sa2__gUnknown_03002820
_080276D4:
	mov r1, ip
	adds r1, #0x4c
	movs r0, #0xfe
	lsls r0, r0, #8
_080276DC:
	strh r0, [r1]
	mov r2, ip
	adds r2, #0x4e
	movs r1, #0
	movs r0, #0xfa
	lsls r0, r0, #8
	strh r0, [r2]
	mov r3, ip
	str r1, [r3, #0x44]
	str r1, [r3, #0x48]
	mov r0, ip
	adds r0, #0x40
	strh r1, [r0]
	mov r1, ip
	adds r1, #0x42
	movs r0, #0x2a
	strh r0, [r1]
	ldr r1, [r5]
	ldr r0, _08027710 @ =sub_8027714
	str r0, [r1, #8]
	bl _call_via_r0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08027710: .4byte sub_8027714

	thumb_func_start sub_8027714
sub_8027714: @ 0x08027714
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _0802774C @ =gCurTask
	ldr r3, [r0]
	ldrh r7, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r7, r0
	adds r5, r4, #0
	adds r0, #0x30
	adds r0, r0, r7
	mov r8, r0
	ldr r1, _08027750 @ =0x03000040
	adds r2, r7, r1
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xb4
	bls _08027754
	adds r0, r3, #0
	bl TaskDestroy
	b _08027828
	.align 2, 0
_0802774C: .4byte gCurTask
_08027750: .4byte 0x03000040
_08027754:
	ldr r2, _08027834 @ =0x0300004E
	adds r6, r7, r2
	ldrh r0, [r6]
	adds r0, #0x28
	strh r0, [r6]
	ldr r3, _08027838 @ =0x0300004C
	adds r0, r7, r3
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r4, #0x44]
	adds r2, r0, r1
	str r2, [r4, #0x44]
	movs r3, #0
	ldrsh r1, [r6, r3]
	ldr r0, [r4, #0x48]
	adds r1, r0, r1
	str r1, [r4, #0x48]
	movs r3, #0
	ldrsh r0, [r6, r3]
	cmp r0, #0
	ble _080277BA
	movs r3, #0x3e
	ldrsh r0, [r4, r3]
	asrs r1, r1, #8
	adds r0, r0, r1
	movs r3, #0x3c
	ldrsh r1, [r4, r3]
	asrs r2, r2, #8
	adds r1, r1, r2
	ldr r2, _0802783C @ =sa2__sub_801EC3C
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F100
	cmp r0, #0
	bge _080277BA
	lsls r1, r0, #8
	ldr r0, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x48]
	ldrh r1, [r6]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x12
	subs r0, r0, r1
	strh r0, [r6]
	ldr r0, _08027840 @ =0x03000042
	adds r1, r7, r0
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080277BA:
	adds r0, r5, #0
	adds r0, #0x40
	ldrh r1, [r0]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080277E0
	movs r1, #0x3c
	ldrsh r0, [r5, r1]
	lsls r0, r0, #8
	ldr r1, [r5, #0x44]
	adds r0, r0, r1
	movs r2, #0x3e
	ldrsh r1, [r5, r2]
	lsls r1, r1, #8
	ldr r2, [r5, #0x48]
	adds r1, r1, r2
	bl sub_8017540
_080277E0:
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	ldrh r3, [r5, #0x3c]
	adds r0, r0, r3
	ldr r2, _08027844 @ =gCamera
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldr r0, [r5, #0x48]
	asrs r0, r0, #8
	ldrh r1, [r5, #0x3e]
	adds r0, r0, r1
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	mov r2, r8
	ldrh r2, [r2]
	adds r0, r0, r2
	ldr r3, _08027848 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	mov r1, r8
	strh r0, [r1]
	ldrh r0, [r4, #0x16]
	strh r0, [r1, #6]
	ldrh r0, [r4, #0x18]
	strh r0, [r1, #8]
	adds r0, r4, #0
	bl TransformSprite
	adds r0, r4, #0
	bl DisplaySprite
_08027828:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08027834: .4byte 0x0300004E
_08027838: .4byte 0x0300004C
_0802783C: .4byte sa2__sub_801EC3C
_08027840: .4byte 0x03000042
_08027844: .4byte gCamera
_08027848: .4byte 0x000003FF

	thumb_func_start sub_802784C
sub_802784C: @ 0x0802784C
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

	thumb_func_start Task_EggHammerTankMain
Task_EggHammerTankMain: @ 0x08027868
	push {r4, r5, r6, lr}
	ldr r0, _080278BC @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	adds r0, #0x98
	adds r2, r3, r0
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x78
	bls _080278B6
	movs r4, #0
	ldr r0, _080278C0 @ =0x03000078
	adds r5, r3, r0
_0802788E:
	adds r0, r4, #0
	bl CreateEHTArm
	lsls r1, r4, #2
	adds r1, r5, r1
	str r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0802788E
	bl CreateEHTHammer
	str r0, [r6, #0x74]
	ldr r0, _080278BC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080278C4 @ =Task_802611C
	str r0, [r1, #8]
	bl _call_via_r0
_080278B6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080278BC: .4byte gCurTask
_080278C0: .4byte 0x03000078
_080278C4: .4byte Task_802611C

	thumb_func_start TaskDestructor_EggHammerTank
TaskDestructor_EggHammerTank: @ 0x080278C8
	push {r4, lr}
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _08027904 @ =gPlayer
	ldr r3, [r0, #0x10]
	movs r0, #0x80
	ands r3, r0
	cmp r3, #0
	bne _080278F2
	ldr r2, _08027908 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0802790C @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08027910 @ =gWinRegs
	strh r3, [r0, #0xa]
	ldr r0, _08027914 @ =gBldRegs
	strh r3, [r0]
	strh r3, [r0, #4]
_080278F2:
	ldr r0, [r4, #0x10]
	bl VramFree
	ldr r0, [r4, #0x48]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08027904: .4byte gPlayer
_08027908: .4byte gDispCnt
_0802790C: .4byte 0x00007FFF
_08027910: .4byte gWinRegs
_08027914: .4byte gBldRegs

	thumb_func_start Task_EHTArm
Task_EHTArm: @ 0x08027918
	push {r4, lr}
	ldr r0, _08027940 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r1, r4
	ldr r0, _08027944 @ =0x03000030
	adds r1, r1, r0
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	bl UnusedTransform
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08027940: .4byte gCurTask
_08027944: .4byte 0x03000030

	thumb_func_start TaskDestructor_EHTArm
TaskDestructor_EHTArm: @ 0x08027948
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_EHTHammer
TaskDestructor_EHTHammer: @ 0x0802795C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0
