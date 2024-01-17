.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_801E46C
sub_801E46C: @ 0x0801E46C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r0, _0801E520 @ =gActiveCollectRingEffectCount
	ldrb r0, [r0]
	cmp r0, #7
	bhi _0801E57E
	ldr r0, _0801E524 @ =sub_801E59C
	movs r1, #0x80
	lsls r1, r1, #6
	mov r8, r1
	movs r4, #0
	str r4, [sp]
	movs r1, #0x34
	mov r2, r8
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r3, r1
	ldr r2, _0801E528 @ =0x03000031
	adds r0, r3, r2
	strb r4, [r0]
	movs r5, #0
	strh r6, [r1, #0x16]
	strh r7, [r1, #0x18]
	ldr r0, _0801E52C @ =0x06011F00
	str r0, [r1, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r1, #0x1a]
	strh r4, [r1, #8]
	subs r0, #0xfc
	strh r0, [r1, #0xa]
	subs r2, #0x11
	adds r0, r3, r2
	strb r5, [r0]
	strh r4, [r1, #0x14]
	strh r4, [r1, #0x1c]
	ldr r0, _0801E530 @ =0x03000021
	adds r2, r3, r0
	movs r0, #0xff
	strb r0, [r2]
	ldr r0, _0801E534 @ =0x03000022
	adds r2, r3, r0
	movs r0, #0x10
	strb r0, [r2]
	ldr r2, _0801E538 @ =0x03000025
	adds r0, r3, r2
	strb r5, [r0]
	mov r0, r8
	str r0, [r1, #0x10]
	ldr r0, _0801E53C @ =gRingCount
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	ldr r1, _0801E540 @ =0x03000030
	adds r3, r3, r1
	strb r0, [r3]
	cmp r0, #0
	beq _0801E550
	ldr r4, _0801E544 @ =gMPlayInfo_SE2
	ldr r1, _0801E548 @ =0x87BC790
	adds r0, r4, #0
	bl MPlayStart
	adds r0, r4, #0
	bl m4aMPlayImmInit
	ldr r5, _0801E54C @ =0x0000FFFF
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl m4aMPlayVolumeControl
	movs r2, #0x40
	rsbs r2, r2, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl m4aMPlayPanpotControl
	b _0801E576
	.align 2, 0
_0801E520: .4byte gActiveCollectRingEffectCount
_0801E524: .4byte sub_801E59C
_0801E528: .4byte 0x03000031
_0801E52C: .4byte 0x06011F00
_0801E530: .4byte 0x03000021
_0801E534: .4byte 0x03000022
_0801E538: .4byte 0x03000025
_0801E53C: .4byte gRingCount
_0801E540: .4byte 0x03000030
_0801E544: .4byte gMPlayInfo_SE2
_0801E548: .4byte 0x87BC790
_0801E54C: .4byte 0x0000FFFF
_0801E550:
	ldr r4, _0801E58C @ =gMPlayInfo_SE1
	ldr r1, _0801E590 @ =0x87BC790
	adds r0, r4, #0
	bl MPlayStart
	adds r0, r4, #0
	bl m4aMPlayImmInit
	ldr r5, _0801E594 @ =0x0000FFFF
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl m4aMPlayVolumeControl
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x40
	bl m4aMPlayPanpotControl
_0801E576:
	ldr r1, _0801E598 @ =gActiveCollectRingEffectCount
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0801E57E:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801E58C: .4byte gMPlayInfo_SE1
_0801E590: .4byte 0x87BC790
_0801E594: .4byte 0x0000FFFF
_0801E598: .4byte gActiveCollectRingEffectCount

	thumb_func_start sub_801E59C
sub_801E59C: @ 0x0801E59C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0801E5FC @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r5, r4, #0
	ldrh r0, [r4, #0x16]
	adds r6, r0, #0
	ldrh r7, [r4, #0x18]
	ldr r1, _0801E600 @ =gCamera
	ldrh r0, [r1]
	subs r0, r6, r0
	strh r0, [r4, #0x16]
	ldrh r0, [r4, #0x18]
	ldrh r1, [r1, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _0801E5E8
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, _0801E604 @ =gActiveCollectRingEffectCount
	ldrb r1, [r0]
	subs r1, #1
	strb r1, [r0]
	mov r1, r8
	ldr r0, [r1]
	bl TaskDestroy
_0801E5E8:
	adds r0, r5, #0
	bl DisplaySprite
	strh r6, [r5, #0x16]
	strh r7, [r5, #0x18]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801E5FC: .4byte gCurTask
_0801E600: .4byte gCamera
_0801E604: .4byte gActiveCollectRingEffectCount

@ TODO: Compare with SA2 - should be very identical
	thumb_func_start CreateEntity_ItemBox
CreateEntity_ItemBox: @ 0x0801E608
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	lsls r3, r3, #0x18
	lsrs r4, r3, #0x18
	ldr r0, _0801E640 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bne _0801E644
	ldrb r0, [r7, #2]
	cmp r0, #0
	bne _0801E644
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	b _0801E76E
	.align 2, 0
_0801E640: .4byte gGameMode
_0801E644:
	ldr r0, _0801E780 @ =Task_ItemBoxMain
	ldr r1, _0801E784 @ =TaskDestructor_ItemBox
	str r1, [sp]
	movs r1, #0x74
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r6, r0
	ldr r2, _0801E788 @ =0x0300000C
	adds r5, r6, r2
	movs r1, #0
	mov r8, r1
	mov r2, sb
	strh r2, [r0, #4]
	mov r1, sl
	strh r1, [r0, #6]
	str r7, [r0]
	ldrb r1, [r7]
	strb r1, [r0, #8]
	strb r4, [r0, #9]
	ldr r2, _0801E78C @ =0x0300006E
	adds r0, r6, r2
	mov r1, r8
	strh r1, [r0]
	subs r2, #2
	adds r0, r6, r2
	strh r1, [r0]
	ldr r1, _0801E790 @ =0x03000070
	adds r0, r6, r1
	movs r2, #0
	strb r2, [r0]
	ldrb r0, [r7, #2]
	adds r1, #1
	adds r4, r6, r1
	strb r0, [r4]
	ldrb r0, [r7]
	lsls r0, r0, #3
	mov r2, sb
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r5, #0x16]
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	mov r2, sl
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r5, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	mov r2, r8
	strh r2, [r5, #8]
	ldr r0, _0801E794 @ =0x000002C1
	strh r0, [r5, #0xa]
	ldr r1, _0801E798 @ =0x0300002C
	adds r0, r6, r1
	movs r2, #0
	strb r2, [r0]
	mov r0, r8
	strh r0, [r5, #0x14]
	strh r0, [r5, #0x1c]
	ldr r2, _0801E79C @ =0x0300002D
	adds r1, r6, r2
	movs r0, #1
	rsbs r0, r0, #0
	adds r7, r0, #0
	movs r0, #0xff
	strb r0, [r1]
	adds r2, #1
	adds r1, r6, r2
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0801E7A0 @ =0x03000031
	adds r0, r6, r1
	movs r2, #0
	strb r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r1, r5, #0
	ldr r2, _0801E7A4 @ =0x0300003C
	adds r5, r6, r2
	ldr r0, _0801E7A8 @ =0x040000D4
	str r1, [r0]
	str r5, [r0, #4]
	ldr r1, _0801E7AC @ =0x80000018
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r0, #4
	bl VramMalloc
	str r0, [r5, #4]
	ldr r0, _0801E7B0 @ =0x000002C2
	strh r0, [r5, #0xa]
	ldr r1, _0801E7B4 @ =gUnknown_080BB4D8
	ldrb r0, [r4]
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r0, _0801E7B8 @ =0x0300005C
	adds r2, r6, r0
	strb r1, [r2]
	ldrb r0, [r4]
	cmp r0, #0
	bne _0801E73C
	ldr r0, _0801E7BC @ =gSelectedCharacter
	ldrb r0, [r0]
	adds r0, r1, r0
	strb r0, [r2]
_0801E73C:
	mov r1, r8
	strh r1, [r5, #8]
	strh r1, [r5, #0x14]
	strh r1, [r5, #0x1c]
	ldr r2, _0801E7C0 @ =0x0300005D
	adds r1, r6, r2
	ldrb r0, [r1]
	orrs r0, r7
	strb r0, [r1]
	ldr r1, _0801E7C4 @ =0x03000061
	adds r0, r6, r1
	movs r2, #0
	strb r2, [r0]
	movs r0, #0x98
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
_0801E76E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801E780: .4byte Task_ItemBoxMain
_0801E784: .4byte TaskDestructor_ItemBox
_0801E788: .4byte 0x0300000C
_0801E78C: .4byte 0x0300006E
_0801E790: .4byte 0x03000070
_0801E794: .4byte 0x000002C1
_0801E798: .4byte 0x0300002C
_0801E79C: .4byte 0x0300002D
_0801E7A0: .4byte 0x03000031
_0801E7A4: .4byte 0x0300003C
_0801E7A8: .4byte 0x040000D4
_0801E7AC: .4byte 0x80000018
_0801E7B0: .4byte 0x000002C2
_0801E7B4: .4byte gUnknown_080BB4D8
_0801E7B8: .4byte 0x0300005C
_0801E7BC: .4byte gSelectedCharacter
_0801E7C0: .4byte 0x0300005D
_0801E7C4: .4byte 0x03000061

	thumb_func_start Task_ItemBoxMain
Task_ItemBoxMain: @ 0x0801E7C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	movs r0, #0
	mov sl, r0
	ldr r1, _0801E874 @ =gCurTask
	mov sb, r1
	ldr r0, [r1]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	ldr r2, _0801E878 @ =0x0300000C
	adds r4, r5, r2
	ldr r3, [r6]
	str r3, [sp, #8]
	ldrb r0, [r6, #8]
	lsls r0, r0, #3
	ldrh r1, [r6, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrb r0, [r3, #1]
	lsls r0, r0, #3
	ldrh r1, [r6, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, _0801E87C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0801E890
	movs r1, #0
	ldrsb r1, [r3, r1]
	movs r0, #3
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0801E890
	movs r0, #0xa7
	bl m4aSongNumStart
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldr r3, _0801E880 @ =0x0300006C
	adds r2, r5, r3
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r2]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_801FED0
	mov r0, sb
	ldr r1, [r0]
	ldr r0, _0801E884 @ =sub_801F044
	str r0, [r1, #8]
	ldr r1, _0801E888 @ =0x03000070
	adds r0, r5, r1
	mov r2, sl
	strb r2, [r0]
	ldr r2, _0801E88C @ =gUnknown_03005A20
	ldr r1, [r2, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0801E85E
	b _0801EC0A
_0801E85E:
	ldr r0, [r2, #0x28]
	cmp r0, r4
	beq _0801E866
	b _0801EC0A
_0801E866:
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r2, #0x10]
	b _0801EC0A
	.align 2, 0
_0801E874: .4byte gCurTask
_0801E878: .4byte 0x0300000C
_0801E87C: .4byte gGameMode
_0801E880: .4byte 0x0300006C
_0801E884: .4byte sub_801F044
_0801E888: .4byte 0x03000070
_0801E88C: .4byte gUnknown_03005A20
_0801E890:
	adds r0, r6, #0
	adds r0, #0x70
	ldrb r1, [r0]
	mov r3, r8
	lsls r3, r3, #0x10
	mov r8, r3
	lsls r7, r7, #0x10
	mov sb, r7
	str r0, [sp, #0xc]
	adds r7, r6, #0
	adds r7, #0x6c
	cmp r1, #0
	beq _0801E8F0
	adds r1, r6, #0
	adds r1, #0x6e
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r5, [r7]
	adds r0, r0, r5
	movs r2, #0
	strh r0, [r7]
	ldrh r0, [r1]
	adds r0, #0x28
	strh r0, [r1]
	mov r1, sb
	asrs r0, r1, #0x10
	movs r3, #0
	ldrsh r1, [r7, r3]
	adds r0, r0, r1
	mov r5, r8
	asrs r1, r5, #0x10
	str r2, [sp]
	ldr r2, _0801E9DC @ =sub_803FF84
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_8040198
	adds r1, r0, #0
	cmp r1, #0
	bge _0801E8F0
	ldrh r0, [r7]
	adds r0, r0, r1
	strh r0, [r7]
	movs r0, #0
	ldr r1, [sp, #0xc]
	strb r0, [r1]
_0801E8F0:
	ldr r2, _0801E9E0 @ =gCamera
	ldrh r1, [r2]
	mov r3, r8
	asrs r0, r3, #0x10
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldrh r1, [r2, #2]
	mov r5, sb
	asrs r0, r5, #0x10
	subs r0, r0, r1
	ldrh r1, [r7]
	adds r0, r0, r1
	strh r0, [r4, #0x18]
	ldr r0, _0801E9E4 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _0801E916
	cmp r0, #5
	bne _0801E95E
_0801E916:
	movs r2, #0
	ldr r1, _0801E9E8 @ =gMultiplayerPlayerTasks
	ldr r0, [r1]
	cmp r0, #0
	beq _0801E95E
	adds r3, r1, #0
_0801E922:
	ldr r0, _0801E9EC @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r2, r0
	beq _0801E94A
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x5c]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0801E94A
	movs r5, #1
	mov sl, r5
_0801E94A:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bhi _0801E95E
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r0, [r0]
	cmp r0, #0
	bne _0801E922
_0801E95E:
	ldr r5, _0801E9F0 @ =gUnknown_03005A20
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0801E974
	mov r0, sl
	cmp r0, #0
	bne _0801E974
	b _0801EADC
_0801E974:
	ldr r0, _0801E9F4 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	ble _0801E998
	mov r2, r8
	asrs r1, r2, #0x10
	mov r3, sb
	asrs r2, r3, #0x10
	ldrh r0, [r7]
	adds r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldr r3, _0801E9F8 @ =gUnknown_03005AB0
	adds r0, r4, #0
	bl sub_80096B0
_0801E998:
	ldr r0, [r5, #0x10]
	movs r1, #8
	mov sl, r1
	ands r0, r1
	cmp r0, #0
	beq _0801E9AA
	ldr r0, [r5, #0x28]
	cmp r0, r4
	beq _0801E9B6
_0801E9AA:
	ldr r0, [r5, #0x64]
	ldr r1, [r0, #0x3c]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0801E9FC
_0801E9B6:
	mov r2, r8
	asrs r1, r2, #0x10
	mov r3, sb
	asrs r2, r3, #0x10
	ldrh r5, [r7]
	adds r2, r2, r5
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldr r3, _0801E9F0 @ =gUnknown_03005A20
	adds r0, r4, #0
	bl sub_80096B0
	movs r1, #0x80
	lsls r1, r1, #9
	ands r1, r0
	cmp r1, #0
	bne _0801E9DA
	b _0801EADC
_0801E9DA:
	b _0801EA20
	.align 2, 0
_0801E9DC: .4byte sub_803FF84
_0801E9E0: .4byte gCamera
_0801E9E4: .4byte gGameMode
_0801E9E8: .4byte gMultiplayerPlayerTasks
_0801E9EC: .4byte 0x04000128
_0801E9F0: .4byte gUnknown_03005A20
_0801E9F4: .4byte gUnknown_03005088
_0801E9F8: .4byte gUnknown_03005AB0
_0801E9FC:
	mov r2, r8
	asrs r1, r2, #0x10
	mov r3, sb
	asrs r2, r3, #0x10
	ldrh r0, [r7]
	adds r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	adds r3, r5, #0
	bl sub_800ABEC
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0801EA32
_0801EA20:
	adds r1, r6, #0
	adds r1, #0x6e
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r1]
	movs r0, #0xff
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	b _0801EADC
_0801EA32:
	movs r0, #0x28
	ands r0, r1
	cmp r0, #0
	beq _0801EADC
	ldr r2, _0801EAC8 @ =gUnknown_03005A20
	ldr r1, [r2, #0x10]
	adds r0, r1, #0
	mov r3, sl
	ands r0, r3
	cmp r0, #0
	beq _0801EA5E
	ldr r0, [r2, #0x28]
	cmp r0, r4
	bne _0801EA5E
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	subs r0, #0x18
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r2, #0x10]
_0801EA5E:
	ldr r2, _0801EACC @ =gUnknown_03005AB0
	ldr r1, [r2, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0801EA80
	ldr r0, [r2, #0x28]
	cmp r0, r4
	bne _0801EA80
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	subs r0, #0x18
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r2, #0x10]
_0801EA80:
	movs r0, #0xa7
	bl m4aSongNumStart
	mov r5, r8
	asrs r0, r5, #0x10
	mov r2, sb
	asrs r1, r2, #0x10
	ldrh r7, [r7]
	adds r1, r1, r7
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_801FED0
	ldr r0, _0801EAD0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801EAD4 @ =sub_801EC28
	str r0, [r1, #8]
	movs r0, #0
	ldr r3, [sp, #0xc]
	strb r0, [r3]
	ldr r0, _0801EAD8 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0801EAB2
	b _0801EC0A
_0801EAB2:
	bl sub_80182FC
	movs r1, #2
	strb r1, [r0]
	ldrh r1, [r6, #4]
	strb r1, [r0, #1]
	ldrh r1, [r6, #6]
	strb r1, [r0, #2]
	ldrb r1, [r6, #9]
	strb r1, [r0, #3]
	b _0801EC0A
	.align 2, 0
_0801EAC8: .4byte gUnknown_03005A20
_0801EACC: .4byte gUnknown_03005AB0
_0801EAD0: .4byte gCurTask
_0801EAD4: .4byte sub_801EC28
_0801EAD8: .4byte gGameMode
_0801EADC:
	mov r5, r8
	asrs r2, r5, #0x10
	ldr r3, _0801EB4C @ =gCamera
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r5, #0xb8
	lsls r5, r5, #1
	adds r0, r1, r5
	cmp r2, r0
	bgt _0801EB12
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _0801EB12
	mov r0, sb
	asrs r2, r0, #0x10
	movs r5, #2
	ldrsh r1, [r3, r5]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r2, r0
	bgt _0801EB12
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _0801EB54
_0801EB12:
	ldrh r0, [r4, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0801EB3C
	movs r5, #0x18
	ldrsh r1, [r4, r5]
	movs r2, #0
	ldrsh r0, [r7, r2]
	adds r0, #0x80
	adds r1, r1, r0
	cmp r1, #0
	blt _0801EB3C
	movs r3, #0x18
	ldrsh r1, [r4, r3]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0801EB54
_0801EB3C:
	ldrb r0, [r6, #8]
	ldr r5, [sp, #8]
	strb r0, [r5]
	ldr r0, _0801EB50 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0801EC0A
	.align 2, 0
_0801EB4C: .4byte gCamera
_0801EB50: .4byte gCurTask
_0801EB54:
	adds r0, r4, #0
	bl DisplaySprite
	adds r4, r6, #0
	adds r4, #0x3c
	ldr r0, _0801EBA8 @ =gGameMode
	ldrb r0, [r0]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0801EBEA
	ldr r0, _0801EBAC @ =gStageTime
	ldr r3, [r0]
	lsrs r0, r3, #5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801EBBC
	ldr r2, _0801EBB0 @ =gUnknown_080BB4F0
	ldr r0, _0801EBB4 @ =gUnknown_03005010
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	adds r0, r0, r2
	ldrb r3, [r0]
	adds r1, r6, #0
	adds r1, #0x71
	strb r3, [r1]
	ldr r0, _0801EBB8 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	adds r2, r1, #0
	cmp r0, #5
	bne _0801EBD6
	cmp r3, #8
	bne _0801EBD6
	movs r0, #0xa
	strb r0, [r2]
	b _0801EBD6
	.align 2, 0
_0801EBA8: .4byte gGameMode
_0801EBAC: .4byte gStageTime
_0801EBB0: .4byte gUnknown_080BB4F0
_0801EBB4: .4byte gUnknown_03005010
_0801EBB8: .4byte gCurrentLevel
_0801EBBC:
	ldr r2, _0801EC1C @ =gUnknown_080BB4E8
	lsrs r0, r3, #6
	ldr r1, [sp, #8]
	ldrb r1, [r1, #2]
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x71
	strb r1, [r0]
	adds r2, r0, #0
_0801EBD6:
	ldr r1, _0801EC20 @ =gUnknown_080BB4D8
	ldrb r0, [r2]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
_0801EBEA:
	ldr r2, _0801EC24 @ =gCamera
	ldrh r1, [r2]
	mov r3, r8
	asrs r0, r3, #0x10
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldrh r1, [r2, #2]
	mov r5, sb
	asrs r0, r5, #0x10
	subs r0, r0, r1
	ldrh r7, [r7]
	adds r0, r0, r7
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl DisplaySprite
_0801EC0A:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801EC1C: .4byte gUnknown_080BB4E8
_0801EC20: .4byte gUnknown_080BB4D8
_0801EC24: .4byte gCamera

	thumb_func_start sub_801EC28
sub_801EC28: @ 0x0801EC28
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0801ECA0 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r5, r0
	ldr r4, [r7]
	adds r0, #0x6c
	adds r3, r5, r0
	ldrh r0, [r3]
	subs r0, #1
	strh r0, [r3]
	ldr r1, _0801ECA4 @ =0x03000070
	adds r0, r5, r1
	ldrb r2, [r0]
	adds r2, #1
	strb r2, [r0]
	ldrb r0, [r7, #8]
	lsls r0, r0, #3
	ldrh r1, [r7, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldrb r0, [r4, #1]
	lsls r0, r0, #3
	ldrh r1, [r7, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	ldrh r3, [r3]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #0x3b
	bhi _0801EC84
	b _0801F006
_0801EC84:
	ldr r2, _0801ECA8 @ =0x03000071
	adds r0, r5, r2
	ldrb r0, [r0]
	ldr r3, _0801ECA4 @ =0x03000070
	adds r4, r5, r3
	cmp r0, #0xa
	bls _0801EC94
	b _0801EFFA
_0801EC94:
	lsls r0, r0, #2
	ldr r1, _0801ECAC @ =_0801ECB0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801ECA0: .4byte gCurTask
_0801ECA4: .4byte 0x03000070
_0801ECA8: .4byte 0x03000071
_0801ECAC: .4byte _0801ECB0
_0801ECB0: @ jump table
	.4byte _0801ECDC @ case 0
	.4byte _0801ECF4 @ case 1
	.4byte _0801ED18 @ case 2
	.4byte _0801ED3C @ case 3
	.4byte _0801ED78 @ case 4
	.4byte _0801EDBC @ case 5
	.4byte _0801EE60 @ case 6
	.4byte _0801EED0 @ case 7
	.4byte _0801EF44 @ case 8
	.4byte _0801EFD8 @ case 9
	.4byte _0801EFE8 @ case 10
_0801ECDC:
	ldr r1, _0801ECEC @ =gNumLives
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _0801ECF0 @ =gUnknown_03005040
	movs r0, #0x10
	strb r0, [r1, #3]
	b _0801EFF6
	.align 2, 0
_0801ECEC: .4byte gNumLives
_0801ECF0: .4byte gUnknown_03005040
_0801ECF4:
	ldr r2, _0801ED14 @ =gUnknown_03005A20
	adds r3, r2, #0
	adds r3, #0x26
	ldrb r1, [r3]
	movs r0, #1
	orrs r0, r1
	movs r1, #0xf7
	ands r0, r1
	strb r0, [r3]
	adds r2, #0x3c
	movs r0, #0
	ldrsb r0, [r2, r0]
	bl sub_804B5CC
	b _0801EFF6
	.align 2, 0
_0801ED14: .4byte gUnknown_03005A20
_0801ED18:
	ldr r2, _0801ED38 @ =gUnknown_03005A20
	adds r3, r2, #0
	adds r3, #0x26
	ldrb r1, [r3]
	movs r0, #0xfe
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r3]
	adds r2, #0x3c
	movs r0, #0
	ldrsb r0, [r2, r0]
	bl sub_804B71C
	b _0801EFF6
	.align 2, 0
_0801ED38: .4byte gUnknown_03005A20
_0801ED3C:
	ldr r4, _0801ED70 @ =gUnknown_03005A20
	adds r5, r4, #0
	adds r5, #0x26
	ldrb r1, [r5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0801ED60
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bl sub_804B678
	ldr r1, _0801ED74 @ =gUnknown_03005040
	movs r0, #0x10
	strb r0, [r1, #2]
_0801ED60:
	ldrb r0, [r5]
	movs r1, #2
	orrs r0, r1
	strb r0, [r5]
	movs r0, #0x96
	lsls r0, r0, #3
	strh r0, [r4, #0x1e]
	b _0801EFF6
	.align 2, 0
_0801ED70: .4byte gUnknown_03005A20
_0801ED74: .4byte gUnknown_03005040
_0801ED78:
	ldr r2, _0801EDB0 @ =gUnknown_03005A20
	adds r5, r2, #0
	adds r5, #0x26
	ldrb r1, [r5]
	movs r0, #4
	orrs r0, r1
	strb r0, [r5]
	movs r0, #0x96
	lsls r0, r0, #3
	strh r0, [r2, #0x20]
	ldr r0, _0801EDB4 @ =gMPlayInfo_BGM
	movs r1, #0x80
	lsls r1, r1, #2
	bl m4aMPlayTempoControl
	ldr r0, _0801EDB8 @ =gGameMode
	ldrb r0, [r0]
	adds r4, r7, #0
	adds r4, #0x70
	cmp r0, #1
	bhi _0801EDA4
	b _0801EFFA
_0801EDA4:
	ldrb r1, [r5]
	movs r0, #0xef
	ands r0, r1
	strb r0, [r5]
	b _0801EFFA
	.align 2, 0
_0801EDB0: .4byte gUnknown_03005A20
_0801EDB4: .4byte gMPlayInfo_BGM
_0801EDB8: .4byte gGameMode
_0801EDBC:
	ldr r4, _0801EE3C @ =gUnknown_080BB308
	ldr r2, _0801EE40 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _0801EE44 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0801EE48 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #6
	bl __umodsi3
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0801EE4C @ =gRingCount
	ldrh r5, [r1]
	adds r0, r5, r0
	strh r0, [r1]
	ldr r0, _0801EE50 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xd
	beq _0801EE1E
	ldrh r0, [r1]
	movs r1, #0x64
	bl Div
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #0x64
	bl Div
	cmp r4, r0
	beq _0801EE1E
	ldr r0, _0801EE54 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801EE1E
	ldr r1, _0801EE58 @ =gNumLives
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _0801EE5C @ =gUnknown_03005040
	movs r0, #0x10
	strb r0, [r1, #3]
_0801EE1E:
	ldr r0, _0801EE54 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _0801EE32
	ldr r1, _0801EE4C @ =gRingCount
	ldrh r0, [r1]
	cmp r0, #0xff
	bls _0801EE32
	movs r0, #0xff
	strh r0, [r1]
_0801EE32:
	movs r0, #0x75
	bl m4aSongNumStart
	b _0801EFF6
	.align 2, 0
_0801EE3C: .4byte gUnknown_080BB308
_0801EE40: .4byte gPseudoRandom
_0801EE44: .4byte 0x00196225
_0801EE48: .4byte 0x3C6EF35F
_0801EE4C: .4byte gRingCount
_0801EE50: .4byte gCurrentLevel
_0801EE54: .4byte gGameMode
_0801EE58: .4byte gNumLives
_0801EE5C: .4byte gUnknown_03005040
_0801EE60:
	ldr r1, _0801EEBC @ =gRingCount
	ldrh r5, [r1]
	adds r0, r5, #5
	strh r0, [r1]
	ldr r0, _0801EEC0 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xd
	beq _0801EEA0
	ldrh r0, [r1]
	movs r1, #0x64
	bl Div
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #0x64
	bl Div
	cmp r4, r0
	beq _0801EEA0
	ldr r0, _0801EEC4 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801EEA0
	ldr r1, _0801EEC8 @ =gNumLives
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _0801EECC @ =gUnknown_03005040
	movs r0, #0x10
	strb r0, [r1, #3]
_0801EEA0:
	ldr r0, _0801EEC4 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _0801EEB4
	ldr r1, _0801EEBC @ =gRingCount
	ldrh r0, [r1]
	cmp r0, #0xff
	bls _0801EEB4
	movs r0, #0xff
	strh r0, [r1]
_0801EEB4:
	movs r0, #0x75
	bl m4aSongNumStart
	b _0801EFF6
	.align 2, 0
_0801EEBC: .4byte gRingCount
_0801EEC0: .4byte gCurrentLevel
_0801EEC4: .4byte gGameMode
_0801EEC8: .4byte gNumLives
_0801EECC: .4byte gUnknown_03005040
_0801EED0:
	ldr r1, _0801EF30 @ =gRingCount
	ldrh r5, [r1]
	adds r0, r5, #0
	adds r0, #0xa
	strh r0, [r1]
	ldr r0, _0801EF34 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xd
	beq _0801EF12
	ldrh r0, [r1]
	movs r1, #0x64
	bl Div
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #0x64
	bl Div
	cmp r4, r0
	beq _0801EF12
	ldr r0, _0801EF38 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801EF12
	ldr r1, _0801EF3C @ =gNumLives
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _0801EF40 @ =gUnknown_03005040
	movs r0, #0x10
	strb r0, [r1, #3]
_0801EF12:
	ldr r0, _0801EF38 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _0801EF26
	ldr r1, _0801EF30 @ =gRingCount
	ldrh r0, [r1]
	cmp r0, #0xff
	bls _0801EF26
	movs r0, #0xff
	strh r0, [r1]
_0801EF26:
	movs r0, #0x75
	bl m4aSongNumStart
	b _0801EFF6
	.align 2, 0
_0801EF30: .4byte gRingCount
_0801EF34: .4byte gCurrentLevel
_0801EF38: .4byte gGameMode
_0801EF3C: .4byte gNumLives
_0801EF40: .4byte gUnknown_03005040
_0801EF44:
	movs r2, #0
	mov sb, r2
	mov r8, r2
	movs r5, #0
	ldr r1, _0801EFC4 @ =gMultiplayerPlayerTasks
	ldr r0, [r1]
	adds r4, r7, #0
	adds r4, #0x70
	cmp r0, #0
	beq _0801EFAE
	ldr r3, _0801EFC8 @ =gUnknown_03005A20
	mov ip, r3
	adds r6, r1, #0
_0801EF5E:
	ldr r0, _0801EFCC @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r5, r0
	beq _0801EFA0
	ldr r0, [r6]
	ldrh r2, [r0, #6]
	ldr r1, _0801EFD0 @ =0x03000050
	adds r0, r2, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	mov r3, ip
	ldr r0, [r3]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r3, r1, #0
	muls r3, r1, r3
	ldr r0, _0801EFD4 @ =0x03000052
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r2, ip
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r0, r1, #0
	muls r0, r1, r0
	adds r3, r3, r0
	cmp r8, r3
	bhs _0801EFA0
	mov r8, r3
	mov sb, r5
_0801EFA0:
	adds r6, #4
	adds r5, #1
	cmp r5, #3
	bhi _0801EFAE
	ldr r0, [r6]
	cmp r0, #0
	bne _0801EF5E
_0801EFAE:
	bl sub_80182FC
	adds r2, r0, #0
	movs r0, #6
	strb r0, [r2]
	movs r0, #4
	strb r0, [r2, #1]
	mov r3, sb
	strb r3, [r2, #2]
	b _0801EFFA
	.align 2, 0
_0801EFC4: .4byte gMultiplayerPlayerTasks
_0801EFC8: .4byte gUnknown_03005A20
_0801EFCC: .4byte 0x04000128
_0801EFD0: .4byte 0x03000050
_0801EFD4: .4byte 0x03000052
_0801EFD8:
	bl sub_80182FC
	adds r2, r0, #0
	movs r1, #0
	movs r0, #6
	strb r0, [r2]
	strb r1, [r2, #1]
	b _0801EFF6
_0801EFE8:
	bl sub_80182FC
	adds r2, r0, #0
	movs r0, #6
	strb r0, [r2]
	movs r0, #5
	strb r0, [r2, #1]
_0801EFF6:
	adds r4, r7, #0
	adds r4, #0x70
_0801EFFA:
	ldr r0, _0801F038 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801F03C @ =sub_801F0E8
	str r0, [r1, #8]
	movs r0, #0
	strb r0, [r4]
_0801F006:
	adds r0, r7, #0
	adds r0, #0x3c
	ldr r3, _0801F040 @ =gCamera
	ldrh r2, [r3]
	ldr r4, [sp]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r2
	strh r1, [r0, #0x16]
	ldrh r2, [r3, #2]
	mov r3, sl
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r2
	strh r1, [r0, #0x18]
	bl DisplaySprite
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801F038: .4byte gCurTask
_0801F03C: .4byte sub_801F0E8
_0801F040: .4byte gCamera

	thumb_func_start sub_801F044
sub_801F044: @ 0x0801F044
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0801F0D0 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r7, r3
	ldr r5, [r3]
	ldr r1, _0801F0D4 @ =0x0300006C
	adds r4, r7, r1
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	ldr r0, _0801F0D8 @ =0x03000070
	adds r6, r7, r0
	ldrb r2, [r6]
	adds r2, #1
	strb r2, [r6]
	ldrb r0, [r3, #8]
	lsls r0, r0, #3
	ldrh r1, [r3, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	ldrh r1, [r3, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	ldrh r4, [r4]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #0x3b
	bls _0801F0A4
	mov r1, r8
	ldr r0, [r1]
	ldr r1, _0801F0DC @ =sub_801F0E8
	str r1, [r0, #8]
	movs r0, #0
	strb r0, [r6]
_0801F0A4:
	ldr r5, _0801F0E0 @ =0x0300003C
	adds r0, r7, r5
	ldr r3, _0801F0E4 @ =gCamera
	ldrh r2, [r3]
	mov r5, ip
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r2
	strh r1, [r0, #0x16]
	ldrh r2, [r3, #2]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r2
	strh r1, [r0, #0x18]
	bl DisplaySprite
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801F0D0: .4byte gCurTask
_0801F0D4: .4byte 0x0300006C
_0801F0D8: .4byte 0x03000070
_0801F0DC: .4byte sub_801F0E8
_0801F0E0: .4byte 0x0300003C
_0801F0E4: .4byte gCamera

	thumb_func_start sub_801F0E8
sub_801F0E8: @ 0x0801F0E8
	push {r4, r5, lr}
	ldr r2, _0801F114 @ =gCurTask
	ldr r0, [r2]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r4, r0
	ldr r5, [r3]
	adds r0, #0x70
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bls _0801F118
	ldr r0, [r2]
	bl TaskDestroy
	b _0801F152
	.align 2, 0
_0801F114: .4byte gCurTask
_0801F118:
	ldrb r2, [r3, #8]
	lsls r2, r2, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r5, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	ldr r5, _0801F158 @ =0x0300006C
	adds r3, r4, r5
	adds r1, r1, r0
	ldrh r3, [r3]
	adds r1, r1, r3
	ldr r3, _0801F15C @ =0x0300003C
	adds r0, r4, r3
	ldr r4, _0801F160 @ =gCamera
	ldrh r3, [r4]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r3
	strh r2, [r0, #0x16]
	ldrh r2, [r4, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r2
	strh r1, [r0, #0x18]
	bl DisplaySprite
_0801F152:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801F158: .4byte 0x0300006C
_0801F15C: .4byte 0x0300003C
_0801F160: .4byte gCamera

	thumb_func_start TaskDestructor_ItemBox
TaskDestructor_ItemBox: @ 0x0801F164
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

	thumb_func_start CreateEntity_StageGoal
CreateEntity_StageGoal: @ 0x0801F180
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	movs r0, #4
	ldrsb r0, [r7, r0]
	cmp r0, #0
	bne _0801F1B8
	ldr r0, _0801F1B4 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0801F262
	b _0801F1CC
	.align 2, 0
_0801F1B4: .4byte gGameMode
_0801F1B8:
	ldr r0, _0801F274 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xa
	bne _0801F1CC
	ldr r0, _0801F278 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0801F262
_0801F1CC:
	ldr r0, _0801F27C @ =sub_801F298
	ldr r1, _0801F280 @ =TaskDestructor_8009670
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r5, r0
	ldr r1, _0801F284 @ =0x0300000C
	adds r4, r5, r1
	movs r6, #0
	mov r2, sl
	strh r2, [r0, #4]
	mov r1, sb
	strh r1, [r0, #6]
	str r7, [r0]
	ldrb r1, [r7]
	strb r1, [r0, #8]
	mov r2, r8
	strb r2, [r0, #9]
	ldrb r0, [r7]
	lsls r0, r0, #3
	mov r2, sl
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r4, #0x16]
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	mov r2, sb
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r4, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	movs r0, #0x24
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	strh r6, [r4, #8]
	ldr r0, _0801F288 @ =0x000001C5
	strh r0, [r4, #0xa]
	ldr r2, _0801F28C @ =0x0300002C
	adds r0, r5, r2
	movs r1, #0
	strb r1, [r0]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	adds r2, #1
	adds r1, r5, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0801F290 @ =0x0300002E
	adds r1, r5, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0801F294 @ =0x03000031
	adds r5, r5, r1
	movs r2, #0
	strb r2, [r5]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
_0801F262:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801F274: .4byte gCurrentLevel
_0801F278: .4byte gGameMode
_0801F27C: .4byte sub_801F298
_0801F280: .4byte TaskDestructor_8009670
_0801F284: .4byte 0x0300000C
_0801F288: .4byte 0x000001C5
_0801F28C: .4byte 0x0300002C
_0801F290: .4byte 0x0300002E
_0801F294: .4byte 0x03000031

	thumb_func_start sub_801F298
sub_801F298: @ 0x0801F298
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0801F360 @ =gGameMode
	ldrb r1, [r0]
	cmp r1, #1
	bls _0801F2C6
	ldr r1, _0801F364 @ =gMultiplayerPlayerTasks
	ldr r0, _0801F368 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov sl, r1
_0801F2C6:
	ldr r4, _0801F36C @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov sb, r0
	ldr r0, _0801F370 @ =0x0300000C
	adds r0, r0, r1
	mov r8, r0
	mov r1, sb
	ldr r1, [r1]
	str r1, [sp, #4]
	mov r2, sb
	ldrb r1, [r2, #8]
	lsls r1, r1, #3
	ldrh r0, [r2, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, [sp, #4]
	ldrb r2, [r3, #1]
	lsls r2, r2, #3
	mov r5, sb
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _0801F374 @ =gCamera
	ldrh r0, [r3]
	lsrs r5, r1, #0x10
	str r5, [sp]
	asrs r5, r1, #0x10
	subs r0, r5, r0
	mov r1, r8
	strh r0, [r1, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r6, r2, #0x10
	subs r0, r6, r0
	strh r0, [r1, #0x18]
	ldr r2, _0801F360 @ =gGameMode
	ldrb r7, [r2]
	cmp r7, #3
	beq _0801F324
	cmp r7, #5
	beq _0801F324
	b _0801F4D8
_0801F324:
	movs r3, #1
	str r3, [sp, #8]
	ldr r1, _0801F378 @ =gUnknown_03005A20
	ldr r0, [r1]
	asrs r3, r0, #8
	adds r4, r1, #0
	cmp r3, r5
	bgt _0801F336
	b _0801F4B8
_0801F336:
	ldr r0, _0801F37C @ =gCurrentLevel
	movs r2, #0
	ldrsb r2, [r0, r2]
	cmp r2, #7
	bne _0801F34C
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	adds r1, r6, #0
	subs r1, #0x50
	cmp r0, r1
	bgt _0801F3D2
_0801F34C:
	cmp r7, #1
	bls _0801F380
	cmp r2, #0xa
	bne _0801F3C4
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	cmp r0, r6
	blt _0801F3D2
	b _0801F3C4
	.align 2, 0
_0801F360: .4byte gGameMode
_0801F364: .4byte gMultiplayerPlayerTasks
_0801F368: .4byte 0x04000128
_0801F36C: .4byte gCurTask
_0801F370: .4byte 0x0300000C
_0801F374: .4byte gCamera
_0801F378: .4byte gUnknown_03005A20
_0801F37C: .4byte gCurrentLevel
_0801F380:
	cmp r2, #0xa
	bne _0801F3C4
	ldr r1, [r4, #0x64]
	adds r0, r1, #0
	adds r0, #0x38
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r3, r3, r2
	cmp r3, r5
	bgt _0801F3C4
	adds r0, #2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r2
	adds r0, r3, r0
	cmp r0, r5
	blt _0801F3C4
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	movs r5, #0x39
	ldrsb r2, [r5, r1]
	adds r3, r0, r2
	cmp r3, r6
	bgt _0801F3C4
	adds r0, r1, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r2
	adds r0, r3, r0
	cmp r0, r6
	bge _0801F3D2
_0801F3C4:
	ldr r1, _0801F494 @ =gCurrentLevel
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #7
	beq _0801F4B8
	cmp r0, #0xa
	beq _0801F4B8
_0801F3D2:
	mov r2, sl
	ldr r0, [r2, #0x5c]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x5c]
	ldr r3, [sp]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x78
	ldr r5, _0801F498 @ =gCamera
	strh r0, [r5, #0x1a]
	movs r4, #0
	ldr r1, _0801F49C @ =gMultiplayerPlayerTasks
	ldr r0, [r1]
	cmp r0, #0
	beq _0801F460
	ldr r6, _0801F4A0 @ =0x04000128
	adds r7, r1, #0
	movs r0, #0x10
	mov ip, r0
	ldr r1, _0801F4A4 @ =gUnknown_03005150
	mov sl, r1
_0801F3FE:
	ldr r0, [r6]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r4, r0
	beq _0801F44C
	lsls r0, r4, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	mov r2, sl
	ldrb r3, [r2]
	mov r2, ip
	lsls r2, r4
	ands r2, r3
	adds r0, r4, #4
	asrs r2, r0
	ldr r1, [r6]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	mov r0, ip
	lsls r0, r1
	ands r3, r0
	ldr r0, [r6]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, #4
	asrs r3, r0
	cmp r2, r3
	bne _0801F44C
	ldr r3, _0801F4A8 @ =0x03000054
	adds r0, r5, r3
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801F44C
	movs r5, #0
	str r5, [sp, #8]
_0801F44C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bhi _0801F460
	lsls r0, r4, #2
	adds r0, r0, r7
	ldr r0, [r0]
	cmp r0, #0
	bne _0801F3FE
_0801F460:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0801F468
	b _0801F620
_0801F468:
	ldr r1, _0801F4AC @ =gUnknown_03005048
	ldr r0, _0801F4A0 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0801F482
	b _0801F5DA
_0801F482:
	mov r1, r8
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	ldr r2, _0801F4B0 @ =gCurTask
	ldr r1, [r2]
	ldr r0, _0801F4B4 @ =sub_801FA28
	b _0801F606
	.align 2, 0
_0801F494: .4byte gCurrentLevel
_0801F498: .4byte gCamera
_0801F49C: .4byte gMultiplayerPlayerTasks
_0801F4A0: .4byte 0x04000128
_0801F4A4: .4byte gUnknown_03005150
_0801F4A8: .4byte 0x03000054
_0801F4AC: .4byte gUnknown_03005048
_0801F4B0: .4byte gCurTask
_0801F4B4: .4byte sub_801FA28
_0801F4B8:
	ldr r0, _0801F4D0 @ =gUnknown_03005A0C
	ldr r0, [r0]
	ldrh r0, [r0, #0x1c]
	ldr r1, _0801F4D4 @ =gCamera
	strh r0, [r1, #0x1a]
	mov r2, sl
	ldr r0, [r2, #0x5c]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x5c]
	b _0801F620
	.align 2, 0
_0801F4D0: .4byte gUnknown_03005A0C
_0801F4D4: .4byte gCamera
_0801F4D8:
	ldr r1, _0801F510 @ =gUnknown_03005A20
	ldr r0, [r1]
	asrs r2, r0, #8
	adds r4, r1, #0
	cmp r2, r5
	bgt _0801F4E6
	b _0801F620
_0801F4E6:
	ldr r0, _0801F514 @ =gCurrentLevel
	movs r3, #0
	ldrsb r3, [r0, r3]
	cmp r3, #7
	bne _0801F4FC
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	adds r1, r6, #0
	subs r1, #0x50
	cmp r0, r1
	bgt _0801F572
_0801F4FC:
	cmp r7, #1
	bls _0801F518
	cmp r3, #0xa
	bne _0801F564
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	cmp r0, r6
	blt _0801F572
	b _0801F564
	.align 2, 0
_0801F510: .4byte gUnknown_03005A20
_0801F514: .4byte gCurrentLevel
_0801F518:
	cmp r3, #0xa
	bne _0801F564
	ldr r3, [r4, #0x64]
	mov ip, r3
	mov r0, ip
	adds r0, #0x38
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r3, r2, r1
	cmp r3, r5
	bgt _0801F564
	adds r0, #2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r1
	adds r0, r3, r0
	cmp r0, r5
	blt _0801F564
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	mov r3, ip
	adds r3, #0x39
	ldrb r3, [r3]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r1, r0, r3
	cmp r1, r6
	bgt _0801F564
	mov r0, ip
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r6
	bge _0801F572
_0801F564:
	ldr r5, _0801F594 @ =gCurrentLevel
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #7
	beq _0801F620
	cmp r0, #0xa
	beq _0801F620
_0801F572:
	ldr r1, _0801F598 @ =gGameMode
	ldrb r0, [r1]
	cmp r0, #1
	bls _0801F5A4
	ldr r1, _0801F59C @ =gUnknown_03005048
	ldr r0, _0801F5A0 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0801F5B2
	b _0801F5DA
	.align 2, 0
_0801F594: .4byte gCurrentLevel
_0801F598: .4byte gGameMode
_0801F59C: .4byte gUnknown_03005048
_0801F5A0: .4byte 0x04000128
_0801F5A4:
	ldr r0, _0801F5C4 @ =gUnknown_03005048
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0801F5D0
_0801F5B2:
	mov r1, r8
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	ldr r2, _0801F5C8 @ =gCurTask
	ldr r1, [r2]
	ldr r0, _0801F5CC @ =sub_801FA28
	b _0801F606
	.align 2, 0
_0801F5C4: .4byte gUnknown_03005048
_0801F5C8: .4byte gCurTask
_0801F5CC: .4byte sub_801FA28
_0801F5D0:
	ldr r0, _0801F610 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r2, #3
	orrs r1, r2
	strh r1, [r0]
_0801F5DA:
	ldr r3, _0801F614 @ =gCurrentLevel
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0xa
	beq _0801F5EA
	movs r0, #0x87
	bl m4aSongNumStart
_0801F5EA:
	movs r1, #0
	movs r0, #0
	mov r5, sb
	strh r0, [r5, #0x3c]
	mov r0, sb
	adds r0, #0x3e
	strb r1, [r0]
	mov r1, r8
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0801F618 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801F61C @ =sub_801F680
_0801F606:
	str r0, [r1, #8]
	bl _call_via_r0
	b _0801F670
	.align 2, 0
_0801F610: .4byte gUnknown_03005004
_0801F614: .4byte gCurrentLevel
_0801F618: .4byte gCurTask
_0801F61C: .4byte sub_801F680
_0801F620:
	mov r1, r8
	ldrh r0, [r1, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0801F648
	mov r2, r8
	movs r3, #0x18
	ldrsh r0, [r2, r3]
	adds r0, #0x80
	cmp r0, #0
	blt _0801F648
	movs r5, #0x18
	ldrsh r1, [r2, r5]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0801F660
_0801F648:
	mov r1, sb
	ldrb r0, [r1, #8]
	ldr r2, [sp, #4]
	strb r0, [r2]
	ldr r3, _0801F65C @ =gCurTask
	ldr r0, [r3]
	bl TaskDestroy
	b _0801F670
	.align 2, 0
_0801F65C: .4byte gCurTask
_0801F660:
	ldr r5, [sp, #4]
	movs r0, #3
	ldrsb r0, [r5, r0]
	cmp r0, #0
	beq _0801F670
	mov r0, r8
	bl DisplaySprite
_0801F670:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_801F680
sub_801F680: @ 0x0801F680
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _0801F710 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r7, #0xc0
	lsls r7, r7, #0x12
	adds r4, r0, r7
	ldr r1, _0801F714 @ =0x0300000C
	adds r6, r0, r1
	ldr r2, [r4]
	mov r8, r2
	ldrb r1, [r4, #8]
	lsls r1, r1, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r2, #1]
	lsls r2, r2, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r5, _0801F718 @ =gCamera
	ldrh r0, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #0x16]
	ldrh r0, [r5, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r6, #0x18]
	ldr r0, _0801F71C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0801F6D2
	b _0801F7D0
_0801F6D2:
	ldr r0, _0801F720 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xa
	beq _0801F728
	ldr r2, _0801F724 @ =gUnknown_03005A20
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r2, #0x10]
	movs r0, #0x10
	strh r0, [r2, #0x38]
	ldrh r3, [r5, #0xe]
	movs r0, #0xe
	ldrsh r1, [r5, r0]
	movs r0, #0x38
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0801F700
	subs r0, r3, #1
	strh r0, [r5, #0xe]
_0801F700:
	movs r1, #0xc
	ldrsh r0, [r2, r1]
	movs r1, #0x90
	lsls r1, r1, #3
	cmp r0, r1
	ble _0801F73A
	strh r1, [r2, #0xc]
	b _0801F73A
	.align 2, 0
_0801F710: .4byte gCurTask
_0801F714: .4byte 0x0300000C
_0801F718: .4byte gCamera
_0801F71C: .4byte gGameMode
_0801F720: .4byte gCurrentLevel
_0801F724: .4byte gUnknown_03005A20
_0801F728:
	ldr r0, _0801F7B4 @ =gUnknown_03005A20
	ldr r1, [r0, #0x10]
	movs r2, #0x80
	lsls r2, r2, #0xf
	orrs r1, r2
	str r1, [r0, #0x10]
	movs r0, #0x78
	bl m4aSongNumStop
_0801F73A:
	ldr r0, _0801F7B8 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xa
	beq _0801F76C
	ldrh r0, [r4, #0x3c]
	cmp r0, #0x1e
	bls _0801F76C
	adds r1, r4, #0
	adds r1, #0x3e
	movs r3, #0
	ldrsb r3, [r1, r3]
	cmp r3, #0
	bne _0801F76C
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0801F7BC @ =sub_801FE84
	movs r2, #0x80
	lsls r2, r2, #6
	str r3, [sp]
	movs r1, #0
	movs r3, #0
	bl TaskCreate
_0801F76C:
	ldr r1, _0801F7C0 @ =gUnknown_03005048
	movs r0, #0
	strb r0, [r1]
	ldrh r0, [r4, #0x3c]
	adds r1, r0, #1
	strh r1, [r4, #0x3c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x78
	bhi _0801F782
	b _0801FA04
_0801F782:
	ldr r0, _0801F7B4 @ =gUnknown_03005A20
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x1c
	beq _0801F79E
	ldr r0, _0801F7B8 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xa
	beq _0801F79E
	b _0801FA04
_0801F79E:
	ldr r0, _0801F7C4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	ldr r0, _0801F7C8 @ =gRingCount
	ldrh r0, [r0]
	ldr r1, _0801F7CC @ =gCourseTime
	ldr r1, [r1]
	bl sub_80573D4
	b _0801FA1A
	.align 2, 0
_0801F7B4: .4byte gUnknown_03005A20
_0801F7B8: .4byte gCurrentLevel
_0801F7BC: .4byte sub_801FE84
_0801F7C0: .4byte gUnknown_03005048
_0801F7C4: .4byte gCurTask
_0801F7C8: .4byte gRingCount
_0801F7CC: .4byte gCourseTime
_0801F7D0:
	cmp r0, #2
	bne _0801F8A6
	movs r5, #0
	ldr r3, _0801F880 @ =gMultiplayerPlayerTasks
	ldr r0, _0801F884 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	adds r6, r0, r7
	ldr r2, _0801F888 @ =gUnknown_03005A20
	adds r4, r2, #0
	adds r4, #0x26
	ldrb r1, [r4]
	movs r0, #0xbf
	ands r0, r1
	strb r0, [r4]
	strh r5, [r2, #0x22]
	ldr r0, [r3]
	cmp r0, #0
	beq _0801F824
	adds r4, r7, #0
	adds r2, r3, #0
	adds r2, #0xc
	movs r1, #1
_0801F808:
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	adds r0, r0, r4
	ldr r0, [r0, #0x5c]
	ands r0, r1
	cmp r0, #0
	beq _0801F818
	adds r5, #1
_0801F818:
	adds r3, #4
	cmp r3, r2
	bhi _0801F824
	ldr r0, [r3]
	cmp r0, #0
	bne _0801F808
_0801F824:
	ldr r0, _0801F884 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r1, r5, #0x18
	lsrs r1, r1, #0x18
	bl sub_8019C14
	ldr r0, [r6, #0x5c]
	movs r1, #1
	orrs r0, r1
	str r0, [r6, #0x5c]
	cmp r5, #0
	bne _0801F852
	ldr r2, _0801F88C @ =gUnknown_03005004
	ldrh r0, [r2]
	movs r1, #4
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0801F890 @ =gCourseTime
	movs r0, #0xe1
	lsls r0, r0, #4
	str r0, [r1]
_0801F852:
	ldr r2, _0801F888 @ =gUnknown_03005A20
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r2, #0x10]
	movs r0, #0x10
	strh r0, [r2, #0x38]
	bl sub_80182FC
	movs r1, #7
	strb r1, [r0]
	ldr r0, _0801F894 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801F898 @ =sub_801FAB8
	str r0, [r1, #8]
	ldr r2, _0801F89C @ =gCamera
	ldrh r1, [r2, #0x26]
	movs r0, #4
	orrs r0, r1
	strh r0, [r2, #0x26]
	b _0801FA1A
	.align 2, 0
_0801F880: .4byte gMultiplayerPlayerTasks
_0801F884: .4byte 0x04000128
_0801F888: .4byte gUnknown_03005A20
_0801F88C: .4byte gUnknown_03005004
_0801F890: .4byte gCourseTime
_0801F894: .4byte gCurTask
_0801F898: .4byte sub_801FAB8
_0801F89C: .4byte gCamera
_0801F8A0:
	movs r2, #1
	mov r8, r2
	b _0801F916
_0801F8A6:
	movs r0, #0
	mov r8, r0
	ldr r3, _0801F970 @ =gMultiplayerPlayerTasks
	ldr r5, _0801F974 @ =0x04000128
	ldr r0, [r5]
	ldr r2, _0801F978 @ =gUnknown_03005A20
	adds r4, r2, #0
	adds r4, #0x26
	ldrb r1, [r4]
	movs r0, #0xbf
	ands r0, r1
	strb r0, [r4]
	mov r1, r8
	strh r1, [r2, #0x22]
	movs r4, #0
	ldr r0, [r3]
	mov ip, r3
	cmp r0, #0
	beq _0801F916
	ldr r0, _0801F97C @ =gUnknown_03005150
	ldrb r3, [r0]
	movs r7, #0x10
	adds r6, r5, #0
	mov r5, ip
_0801F8D6:
	adds r2, r7, #0
	lsls r2, r4
	ands r2, r3
	adds r0, r4, #4
	asrs r2, r0
	ldr r0, [r6]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r1, r7, #0
	lsls r1, r0
	ands r1, r3
	ldr r0, [r6]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, #4
	asrs r1, r0
	cmp r2, r1
	beq _0801F908
	ldr r0, _0801F980 @ =gUnknown_03005048
	adds r0, r4, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0801F8A0
_0801F908:
	adds r5, #4
	adds r4, #1
	cmp r4, #3
	bhi _0801F916
	ldr r0, [r5]
	cmp r0, #0
	bne _0801F8D6
_0801F916:
	movs r4, #0
	mov r2, ip
	ldr r0, [r2]
	cmp r0, #0
	beq _0801F9AC
	movs r0, #1
	rsbs r0, r0, #0
	mov sb, r0
	movs r7, #0x10
	ldr r6, _0801F974 @ =0x04000128
	movs r5, #0
_0801F92C:
	ldr r0, _0801F980 @ =gUnknown_03005048
	adds r0, r4, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, sb
	bne _0801F994
	ldr r0, _0801F97C @ =gUnknown_03005150
	ldrb r3, [r0]
	adds r2, r7, #0
	lsls r2, r4
	ands r2, r3
	adds r0, r4, #4
	asrs r2, r0
	ldr r1, [r6]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	adds r0, r7, #0
	lsls r0, r1
	ands r3, r0
	ldr r0, [r6]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, #4
	asrs r3, r0
	cmp r2, r3
	bne _0801F984
	lsrs r0, r5, #0x18
	mov r2, r8
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	bl sub_8019C14
	b _0801F994
	.align 2, 0
_0801F970: .4byte gMultiplayerPlayerTasks
_0801F974: .4byte 0x04000128
_0801F978: .4byte gUnknown_03005A20
_0801F97C: .4byte gUnknown_03005150
_0801F980: .4byte gUnknown_03005048
_0801F984:
	lsrs r0, r5, #0x18
	movs r2, #1
	mov r1, r8
	eors r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_8019C14
_0801F994:
	movs r0, #0x80
	lsls r0, r0, #0x11
	adds r5, r5, r0
	adds r4, #1
	cmp r4, #3
	bhi _0801F9AC
	ldr r0, _0801F9E8 @ =gMultiplayerPlayerTasks
	lsls r1, r4, #2
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	bne _0801F92C
_0801F9AC:
	ldr r1, _0801F9EC @ =gUnknown_03005004
	ldrh r0, [r1]
	movs r4, #4
	orrs r0, r4
	strh r0, [r1]
	ldr r1, _0801F9F0 @ =gCourseTime
	movs r0, #0xe1
	lsls r0, r0, #4
	str r0, [r1]
	ldr r2, _0801F9F4 @ =gUnknown_03005A20
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r2, #0x10]
	movs r0, #0x10
	strh r0, [r2, #0x38]
	bl sub_80182FC
	movs r1, #7
	strb r1, [r0]
	ldr r0, _0801F9F8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801F9FC @ =sub_801FAB8
	str r0, [r1, #8]
	ldr r1, _0801FA00 @ =gCamera
	ldrh r0, [r1, #0x26]
	orrs r4, r0
	strh r4, [r1, #0x26]
	b _0801FA1A
	.align 2, 0
_0801F9E8: .4byte gMultiplayerPlayerTasks
_0801F9EC: .4byte gUnknown_03005004
_0801F9F0: .4byte gCourseTime
_0801F9F4: .4byte gUnknown_03005A20
_0801F9F8: .4byte gCurTask
_0801F9FC: .4byte sub_801FAB8
_0801FA00: .4byte gCamera
_0801FA04:
	mov r1, r8
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0801FA1A
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_0801FA1A:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_801FA28
sub_801FA28: @ 0x0801FA28
	push {r4, r5, r6, lr}
	ldr r0, _0801FAA0 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r6, r3
	ldr r0, _0801FAA4 @ =0x0300000C
	adds r5, r6, r0
	ldr r4, [r3]
	ldrb r2, [r3, #8]
	lsls r2, r2, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r4, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _0801FAA8 @ =gCamera
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0x18]
	movs r0, #3
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _0801FA98
	ldr r0, _0801FAAC @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0801FA8C
	adds r1, r2, #0
	adds r1, #0x20
	ldr r0, _0801FAB0 @ =gUnknown_03005A20
	ldr r0, [r0]
	asrs r0, r0, #8
	cmp r1, r0
	bgt _0801FA8C
	ldr r0, _0801FAB4 @ =0x0300002C
	adds r1, r6, r0
	movs r0, #2
	strb r0, [r1]
_0801FA8C:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_0801FA98:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801FAA0: .4byte gCurTask
_0801FAA4: .4byte 0x0300000C
_0801FAA8: .4byte gCamera
_0801FAAC: .4byte gGameMode
_0801FAB0: .4byte gUnknown_03005A20
_0801FAB4: .4byte 0x0300002C

	thumb_func_start sub_801FAB8
sub_801FAB8: @ 0x0801FAB8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r7, _0801FD2C @ =0x04000128
	ldr r0, [r7]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	mov sl, r0
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _0801FD30 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r0, [sp]
	ldr r3, _0801FD34 @ =0x0300000C
	adds r3, r3, r1
	mov sb, r3
	ldr r5, [r0]
	ldrb r2, [r0, #8]
	lsls r2, r2, #3
	ldrh r0, [r0, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r5, #1]
	lsls r1, r1, #3
	ldr r3, [sp]
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r4, _0801FD38 @ =gCamera
	ldrh r3, [r4]
	lsls r2, r2, #0x10
	asrs r0, r2, #0x10
	subs r0, r0, r3
	mov r3, sb
	strh r0, [r3, #0x16]
	ldrh r0, [r4, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r3, #0x18]
	ldr r0, _0801FD3C @ =gUnknown_03005048
	mov r1, sl
	adds r3, r1, r0
	movs r1, #0
	ldrsb r1, [r3, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0801FB2A
	b _0801FD8E
_0801FB2A:
	adds r6, r1, #0
	ldr r0, _0801FD40 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _0801FB40
	mov r8, r2
	ldrb r1, [r5, #3]
	mov r3, sp
	strb r1, [r3, #8]
	cmp r0, #5
	bne _0801FB9A
_0801FB40:
	movs r3, #0
	ldr r0, _0801FD44 @ =gMultiplayerPlayerTasks
	ldr r1, [r0]
	mov r8, r2
	ldrb r5, [r5, #3]
	mov r0, sp
	strb r5, [r0, #8]
	cmp r1, #0
	beq _0801FB9A
	ldr r1, [sp, #4]
	cmp r1, sl
	beq _0801FB9A
	ldr r0, _0801FD48 @ =gUnknown_03005150
	ldrb r4, [r0]
	movs r0, #0x10
	mov ip, r0
	ldr r5, _0801FD44 @ =gMultiplayerPlayerTasks
_0801FB62:
	mov r2, ip
	lsls r2, r3
	ands r2, r4
	adds r0, r3, #4
	asrs r2, r0
	ldr r0, [r7]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	mov r1, ip
	lsls r1, r0
	ands r1, r4
	ldr r0, [r7]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, #4
	asrs r1, r0
	cmp r2, r1
	bne _0801FB88
	adds r6, #1
_0801FB88:
	adds r5, #4
	adds r3, #1
	cmp r3, #3
	bhi _0801FB9A
	ldr r0, [r5]
	cmp r0, #0
	beq _0801FB9A
	cmp r3, sl
	bne _0801FB62
_0801FB9A:
	adds r0, r6, #1
	lsls r0, r0, #0x15
	lsrs r4, r0, #0x10
	mov r1, sp
	ldrb r1, [r1, #8]
	cmp r1, #0
	beq _0801FBCC
	mov r3, r8
	asrs r1, r3, #0x10
	adds r1, #0x20
	ldr r0, _0801FD4C @ =gUnknown_03005A20
	ldr r0, [r0]
	asrs r0, r0, #8
	cmp r1, r0
	bgt _0801FBC0
	mov r1, sb
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
_0801FBC0:
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, sb
	bl DisplaySprite
_0801FBCC:
	ldr r5, _0801FD4C @ =gUnknown_03005A20
	movs r1, #8
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bgt _0801FBD8
	b _0801FD74
_0801FBD8:
	movs r0, #0x10
	strh r0, [r5, #0x38]
	mov r3, r8
	asrs r1, r3, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	ldr r0, [r5]
	asrs r0, r0, #8
	cmp r1, r0
	blt _0801FBF0
	b _0801FD8E
_0801FBF0:
	lsls r0, r1, #8
	str r0, [r5]
	adds r0, r5, #0
	bl sub_8046CEC
	ldr r0, [r5, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x18
	ands r0, r1
	adds r1, #0x1c
	ands r0, r1
	subs r1, #0xc
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	ldr r1, _0801FD50 @ =0xFFFFFBFF
	ands r0, r1
	ldr r1, _0801FD54 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #0x10]
	adds r4, r5, #0
	adds r4, #0x40
	movs r0, #0xf
	strb r0, [r4]
	adds r0, r5, #0
	movs r1, #0xe
	bl sub_804516C
	movs r0, #6
	strb r0, [r5, #0xe]
	movs r0, #0xe
	strb r0, [r5, #0xf]
	adds r0, r5, #0
	adds r0, #0x3d
	movs r2, #0
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	strh r2, [r5, #0xc]
	strh r2, [r5, #8]
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	strh r2, [r5, #0x38]
	movs r1, #1
	orrs r0, r1
	movs r1, #0x1d
	strb r1, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [r5, #0x10]
	movs r3, #0
	ldr r1, _0801FD44 @ =gMultiplayerPlayerTasks
	ldr r0, [r1]
	cmp r0, #0
	beq _0801FC94
	movs r4, #0x80
	lsls r4, r4, #1
	adds r2, r1, #0
_0801FC6E:
	ldr r0, [r2]
	ldrh r0, [r0, #6]
	ldr r1, _0801FD58 @ =0x03000054
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0801FC86
	ldr r0, [sp, #4]
	adds r0, #1
	str r0, [sp, #4]
_0801FC86:
	adds r2, #4
	adds r3, #1
	cmp r3, #3
	bhi _0801FC94
	ldr r0, [r2]
	cmp r0, #0
	bne _0801FC6E
_0801FC94:
	subs r3, #1
	mov r8, r3
	ldr r1, [sp, #4]
	cmp r1, r8
	bhs _0801FCAA
	ldr r0, _0801FD40 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _0801FCAA
	cmp r0, #5
	bne _0801FD60
_0801FCAA:
	movs r7, #0
	ldr r0, _0801FD44 @ =gMultiplayerPlayerTasks
	ldr r1, [r0]
	cmp r1, #0
	beq _0801FD18
	movs r3, #1
	mov sl, r3
	ldr r2, _0801FD4C @ =gUnknown_03005A20
	movs r6, #0
_0801FCBC:
	ldr r1, _0801FD44 @ =gMultiplayerPlayerTasks
	adds r0, r6, r1
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r5, r0, r3
	ldr r4, [r5, #0x5c]
	mov r0, sl
	ands r4, r0
	cmp r4, #0
	bne _0801FD06
	ldr r0, _0801FD40 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _0801FD06
	cmp r0, #5
	beq _0801FD06
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	mov r1, r8
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r2, [sp, #0xc]
	bl sub_8019C14
	ldr r0, [r5, #0x5c]
	mov r3, sl
	orrs r0, r3
	str r0, [r5, #0x5c]
	ldr r2, [sp, #0xc]
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r2, #0x10]
	strh r4, [r2, #0x38]
_0801FD06:
	adds r6, #4
	adds r7, #1
	cmp r7, #3
	bhi _0801FD18
	ldr r0, _0801FD44 @ =gMultiplayerPlayerTasks
	adds r1, r6, r0
	ldr r1, [r1]
	cmp r1, #0
	bne _0801FCBC
_0801FD18:
	movs r0, #0
	ldr r1, [sp]
	strh r0, [r1, #0x3c]
	ldr r0, _0801FD30 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801FD5C @ =sub_801FE00
	str r0, [r1, #8]
	bl sub_8019DB0
	b _0801FD8E
	.align 2, 0
_0801FD2C: .4byte 0x04000128
_0801FD30: .4byte gCurTask
_0801FD34: .4byte 0x0300000C
_0801FD38: .4byte gCamera
_0801FD3C: .4byte gUnknown_03005048
_0801FD40: .4byte gGameMode
_0801FD44: .4byte gMultiplayerPlayerTasks
_0801FD48: .4byte gUnknown_03005150
_0801FD4C: .4byte gUnknown_03005A20
_0801FD50: .4byte 0xFFFFFBFF
_0801FD54: .4byte 0xFFFFFEFF
_0801FD58: .4byte 0x03000054
_0801FD5C: .4byte sub_801FE00
_0801FD60:
	ldr r0, _0801FD6C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801FD70 @ =sub_801FDA0
	str r0, [r1, #8]
	b _0801FD8E
	.align 2, 0
_0801FD6C: .4byte gCurTask
_0801FD70: .4byte sub_801FDA0
_0801FD74:
	movs r0, #0x20
	strh r0, [r5, #0x38]
	mov r3, r8
	asrs r1, r3, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	ldr r0, [r5]
	asrs r0, r0, #8
	cmp r1, r0
	ble _0801FD8E
	movs r0, #0x10
	strh r0, [r5, #0x38]
_0801FD8E:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801FDA0
sub_801FDA0: @ 0x0801FDA0
	push {r4, r5, lr}
	ldr r0, _0801FDF4 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r0, r3
	ldr r1, _0801FDF8 @ =0x0300000C
	adds r5, r0, r1
	ldr r4, [r3]
	ldrb r1, [r3, #8]
	lsls r1, r1, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r4, #1]
	lsls r2, r2, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _0801FDFC @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r5, #0x18]
	movs r0, #3
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _0801FDEC
	adds r0, r5, #0
	bl DisplaySprite
_0801FDEC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801FDF4: .4byte gCurTask
_0801FDF8: .4byte 0x0300000C
_0801FDFC: .4byte gCamera

	thumb_func_start sub_801FE00
sub_801FE00: @ 0x0801FE00
	push {r4, r5, r6, lr}
	ldr r0, _0801FE70 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r6, r3
	ldr r0, _0801FE74 @ =0x0300000C
	adds r5, r6, r0
	ldr r4, [r3]
	ldrb r2, [r3, #8]
	lsls r2, r2, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r4, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _0801FE78 @ =gCamera
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0x18]
	movs r0, #3
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _0801FE68
	adds r1, r2, #0
	adds r1, #0x20
	ldr r0, _0801FE7C @ =gUnknown_03005A20
	ldr r0, [r0]
	asrs r0, r0, #8
	cmp r1, r0
	bgt _0801FE5C
	ldr r0, _0801FE80 @ =0x0300002C
	adds r1, r6, r0
	movs r0, #2
	strb r0, [r1]
_0801FE5C:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_0801FE68:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801FE70: .4byte gCurTask
_0801FE74: .4byte 0x0300000C
_0801FE78: .4byte gCamera
_0801FE7C: .4byte gUnknown_03005A20
_0801FE80: .4byte 0x0300002C

	thumb_func_start sub_801FE84
sub_801FE84: @ 0x0801FE84
	push {r4, lr}
	ldr r4, _0801FEC4 @ =gUnknown_03005A20
	ldr r0, [r4, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0801FEBC
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	ldr r0, _0801FEC8 @ =0x0000023F
	cmp r1, r0
	ble _0801FEBC
	adds r0, r4, #0
	bl sub_8042848
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x1c
	strb r0, [r1]
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [r4, #0x10]
	ldr r0, _0801FECC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0801FEBC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801FEC4: .4byte gUnknown_03005A20
_0801FEC8: .4byte 0x0000023F
_0801FECC: .4byte gCurTask

	thumb_func_start sub_801FED0
sub_801FED0: @ 0x0801FED0
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _0801FF54 @ =sub_801FF70
	movs r1, #0x80
	lsls r1, r1, #6
	mov sb, r1
	movs r6, #0
	str r6, [sp]
	movs r1, #0x30
	mov r2, sb
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r2, r1
	movs r3, #0
	mov r8, r3
	strh r4, [r1, #0x16]
	strh r5, [r1, #0x18]
	ldr r0, _0801FF58 @ =0x06011000
	str r0, [r1, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r1, #0x1a]
	strh r6, [r1, #8]
	ldr r0, _0801FF5C @ =0x00000197
	strh r0, [r1, #0xa]
	ldr r3, _0801FF60 @ =0x03000020
	adds r0, r2, r3
	mov r3, r8
	strb r3, [r0]
	strh r6, [r1, #0x14]
	strh r6, [r1, #0x1c]
	ldr r0, _0801FF64 @ =0x03000021
	adds r3, r2, r0
	movs r0, #0xff
	strb r0, [r3]
	ldr r0, _0801FF68 @ =0x03000022
	adds r3, r2, r0
	movs r0, #0x10
	strb r0, [r3]
	ldr r3, _0801FF6C @ =0x03000025
	adds r2, r2, r3
	mov r0, r8
	strb r0, [r2]
	mov r3, sb
	str r3, [r1, #0x10]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801FF54: .4byte sub_801FF70
_0801FF58: .4byte 0x06011000
_0801FF5C: .4byte 0x00000197
_0801FF60: .4byte 0x03000020
_0801FF64: .4byte 0x03000021
_0801FF68: .4byte 0x03000022
_0801FF6C: .4byte 0x03000025

	thumb_func_start sub_801FF70
sub_801FF70: @ 0x0801FF70
	push {r4, r5, r6, r7, lr}
	ldr r7, _0801FFBC @ =gCurTask
	ldr r0, [r7]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r0, [r4, #0x16]
	adds r5, r0, #0
	ldrh r6, [r4, #0x18]
	ldr r1, _0801FFC0 @ =gCamera
	ldrh r0, [r1]
	subs r0, r5, r0
	strh r0, [r4, #0x16]
	ldrh r0, [r4, #0x18]
	ldrh r1, [r1, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _0801FFAA
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, [r7]
	bl TaskDestroy
_0801FFAA:
	adds r0, r4, #0
	bl DisplaySprite
	strh r5, [r4, #0x16]
	strh r6, [r4, #0x18]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801FFBC: .4byte gCurTask
_0801FFC0: .4byte gCamera

	thumb_func_start CreateEntity_Spikes_Up
CreateEntity_Spikes_Up: @ 0x0801FFC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08020094 @ =sub_8020190
	movs r1, #0x80
	lsls r1, r1, #6
	mov sl, r1
	movs r2, #0
	mov r8, r2
	str r2, [sp]
	movs r1, #0x44
	mov r2, sl
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r3, r1
	ldr r7, _08020098 @ =0x0300000C
	adds r0, r3, r7
	mov r2, r8
	str r2, [r1, #0x40]
	str r2, [r1, #0x3c]
	movs r7, #0
	mov ip, r7
	strh r4, [r1, #4]
	strh r5, [r1, #6]
	mov r2, sb
	str r2, [r1]
	ldrb r2, [r2]
	strb r2, [r1, #8]
	strb r6, [r1, #9]
	mov r7, sb
	ldrb r1, [r7]
	lsls r1, r1, #3
	lsls r4, r4, #8
	adds r1, r1, r4
	strh r1, [r0, #0x16]
	ldrb r1, [r7, #1]
	lsls r1, r1, #3
	lsls r5, r5, #8
	adds r1, r1, r5
	strh r1, [r0, #0x18]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	strb r1, [r7]
	ldr r1, _0802009C @ =0x06011B00
	str r1, [r0, #4]
	movs r1, #0x88
	lsls r1, r1, #3
	strh r1, [r0, #0x1a]
	mov r7, r8
	strh r7, [r0, #8]
	movs r1, #0xe3
	lsls r1, r1, #1
	strh r1, [r0, #0xa]
	ldr r1, _080200A0 @ =0x0300002C
	adds r2, r3, r1
	movs r1, #2
	strb r1, [r2]
	mov r2, r8
	strh r2, [r0, #0x14]
	strh r2, [r0, #0x1c]
	ldr r7, _080200A4 @ =0x0300002D
	adds r2, r3, r7
	movs r1, #0xff
	strb r1, [r2]
	ldr r1, _080200A8 @ =0x0300002E
	adds r2, r3, r1
	movs r1, #0x10
	strb r1, [r2]
	ldr r2, _080200AC @ =0x03000031
	adds r3, r3, r2
	mov r7, ip
	strb r7, [r3]
	subs r1, #0x11
	str r1, [r0, #0x28]
	mov r1, sl
	str r1, [r0, #0x10]
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08020094: .4byte sub_8020190
_08020098: .4byte 0x0300000C
_0802009C: .4byte 0x06011B00
_080200A0: .4byte 0x0300002C
_080200A4: .4byte 0x0300002D
_080200A8: .4byte 0x0300002E
_080200AC: .4byte 0x03000031

	thumb_func_start CreateEntity_Interactable002
CreateEntity_Interactable002: @ 0x080200B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08020178 @ =sub_802035C
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	mov r8, r1
	str r1, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r3, r1
	ldr r2, _0802017C @ =0x0300000C
	adds r0, r3, r2
	mov r7, r8
	str r7, [r1, #0x40]
	str r7, [r1, #0x3c]
	movs r2, #0
	mov sl, r2
	strh r4, [r1, #4]
	strh r5, [r1, #6]
	mov r7, sb
	str r7, [r1]
	ldrb r2, [r7]
	strb r2, [r1, #8]
	strb r6, [r1, #9]
	ldrb r1, [r7]
	lsls r1, r1, #3
	lsls r4, r4, #8
	adds r1, r1, r4
	strh r1, [r0, #0x16]
	ldrb r1, [r7, #1]
	lsls r1, r1, #3
	lsls r5, r5, #8
	adds r1, r1, r5
	strh r1, [r0, #0x18]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	strb r1, [r7]
	ldr r1, _08020180 @ =0x06011B00
	str r1, [r0, #4]
	movs r1, #0x88
	lsls r1, r1, #3
	strh r1, [r0, #0x1a]
	movs r1, #0xe3
	lsls r1, r1, #1
	strh r1, [r0, #0xa]
	ldr r7, _08020184 @ =0x0300002C
	adds r2, r3, r7
	movs r1, #2
	strb r1, [r2]
	mov r1, r8
	strh r1, [r0, #0x14]
	strh r1, [r0, #0x1c]
	adds r7, #1
	adds r2, r3, r7
	movs r1, #0xff
	strb r1, [r2]
	ldr r1, _08020188 @ =0x0300002E
	adds r2, r3, r1
	movs r1, #0x10
	strb r1, [r2]
	ldr r2, _0802018C @ =0x03000031
	adds r3, r3, r2
	mov r7, sl
	strb r7, [r3]
	subs r1, #0x11
	str r1, [r0, #0x28]
	movs r1, #0xa0
	lsls r1, r1, #6
	str r1, [r0, #0x10]
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08020178: .4byte sub_802035C
_0802017C: .4byte 0x0300000C
_08020180: .4byte 0x06011B00
_08020184: .4byte 0x0300002C
_08020188: .4byte 0x0300002E
_0802018C: .4byte 0x03000031

	thumb_func_start sub_8020190
sub_8020190: @ 0x08020190
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08020218 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r7, r1, r0
	ldr r1, [r6]
	mov r8, r1
	ldrb r1, [r6, #8]
	lsls r1, r1, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r0, r8
	ldrb r2, [r0, #1]
	lsls r2, r2, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _0802021C @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r7, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r7, #0x18]
	ldr r0, _08020220 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _080201F4
	mov r1, r8
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _080201F4
	ldr r0, _08020224 @ =gUnknown_03004FE0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08020254
_080201F4:
	movs r4, #0
_080201F6:
	ldr r0, _08020228 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08020234
	ldr r3, _0802022C @ =gUnknown_03005A20
	cmp r4, #0
	beq _0802020A
	ldr r3, _08020230 @ =gUnknown_03005AB0
_0802020A:
	adds r0, r7, #0
	mov r1, r8
	adds r2, r6, #0
	bl sub_8020D44
	b _08020246
	.align 2, 0
_08020218: .4byte gCurTask
_0802021C: .4byte gCamera
_08020220: .4byte gGameMode
_08020224: .4byte gUnknown_03004FE0
_08020228: .4byte gUnknown_03005004
_0802022C: .4byte gUnknown_03005A20
_08020230: .4byte gUnknown_03005AB0
_08020234:
	ldr r3, _080202A0 @ =gUnknown_03005A20
	cmp r4, #0
	beq _0802023C
	ldr r3, _080202A4 @ =gUnknown_03005AB0
_0802023C:
	adds r0, r7, #0
	mov r1, r8
	adds r2, r6, #0
	bl sub_8020E98
_08020246:
	adds r4, #1
	ldr r0, _080202A8 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _080201F6
_08020254:
	ldr r0, _080202AC @ =gGameMode
	ldrb r1, [r0]
	cmp r1, #6
	bne _080202EA
	mov r1, r8
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _080202EA
	ldr r0, _080202B0 @ =gUnknown_03004FE0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080202EA
	movs r3, #0
	ldr r0, _080202A8 @ =gUnknown_03005088
	mov sl, r0
	ldr r5, _080202A4 @ =gUnknown_03005AB0
	movs r1, #0x21
	rsbs r1, r1, #0
	mov sb, r1
	ldr r4, _080202A0 @ =gUnknown_03005A20
	movs r0, #9
	rsbs r0, r0, #0
	mov ip, r0
	adds r2, r6, #0
	adds r2, #0x3c
_08020288:
	ldr r0, [r2]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080202BC
	cmp r3, #0
	beq _080202B4
	ldr r0, [r5, #0x10]
	mov r1, sb
	ands r0, r1
	str r0, [r5, #0x10]
	b _080202BC
	.align 2, 0
_080202A0: .4byte gUnknown_03005A20
_080202A4: .4byte gUnknown_03005AB0
_080202A8: .4byte gUnknown_03005088
_080202AC: .4byte gGameMode
_080202B0: .4byte gUnknown_03004FE0
_080202B4:
	ldr r0, [r4, #0x10]
	mov r1, sb
	ands r0, r1
	str r0, [r4, #0x10]
_080202BC:
	ldr r0, [r2]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080202DC
	cmp r3, #0
	beq _080202D4
	ldr r0, [r5, #0x10]
	mov r1, ip
	ands r0, r1
	str r0, [r5, #0x10]
	b _080202DC
_080202D4:
	ldr r0, [r4, #0x10]
	mov r1, ip
	ands r0, r1
	str r0, [r4, #0x10]
_080202DC:
	adds r2, #4
	adds r3, #1
	mov r1, sl
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r3, r0
	blt _08020288
_080202EA:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0802030E
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0802030E
	movs r0, #0x18
	ldrsh r1, [r7, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08020324
_0802030E:
	ldrb r0, [r6, #8]
	mov r1, r8
	strb r0, [r1]
	ldr r0, _08020320 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08020344
	.align 2, 0
_08020320: .4byte gCurTask
_08020324:
	ldr r1, _08020354 @ =gGameMode
	ldrb r0, [r1]
	cmp r0, #6
	bne _0802033E
	mov r1, r8
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0802033E
	ldr r0, _08020358 @ =gUnknown_03004FE0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08020344
_0802033E:
	adds r0, r7, #0
	bl DisplaySprite
_08020344:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08020354: .4byte gGameMode
_08020358: .4byte gUnknown_03004FE0

	thumb_func_start sub_802035C
sub_802035C: @ 0x0802035C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080203E4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r7, r1, r0
	ldr r1, [r6]
	mov r8, r1
	ldrb r1, [r6, #8]
	lsls r1, r1, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r0, r8
	ldrb r2, [r0, #1]
	lsls r2, r2, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _080203E8 @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r7, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r7, #0x18]
	ldr r0, _080203EC @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _080203C0
	mov r1, r8
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _080203C0
	ldr r0, _080203F0 @ =gUnknown_03004FE0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08020420
_080203C0:
	movs r4, #0
_080203C2:
	ldr r0, _080203F4 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08020400
	ldr r3, _080203F8 @ =gUnknown_03005A20
	cmp r4, #0
	beq _080203D6
	ldr r3, _080203FC @ =gUnknown_03005AB0
_080203D6:
	adds r0, r7, #0
	mov r1, r8
	adds r2, r6, #0
	bl sub_8020E98
	b _08020412
	.align 2, 0
_080203E4: .4byte gCurTask
_080203E8: .4byte gCamera
_080203EC: .4byte gGameMode
_080203F0: .4byte gUnknown_03004FE0
_080203F4: .4byte gUnknown_03005004
_080203F8: .4byte gUnknown_03005A20
_080203FC: .4byte gUnknown_03005AB0
_08020400:
	ldr r3, _0802046C @ =gUnknown_03005A20
	cmp r4, #0
	beq _08020408
	ldr r3, _08020470 @ =gUnknown_03005AB0
_08020408:
	adds r0, r7, #0
	mov r1, r8
	adds r2, r6, #0
	bl sub_8020D44
_08020412:
	adds r4, #1
	ldr r0, _08020474 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _080203C2
_08020420:
	ldr r0, _08020478 @ =gGameMode
	ldrb r1, [r0]
	cmp r1, #6
	bne _080204B6
	mov r1, r8
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _080204B6
	ldr r0, _0802047C @ =gUnknown_03004FE0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080204B6
	movs r3, #0
	ldr r0, _08020474 @ =gUnknown_03005088
	mov sl, r0
	ldr r5, _08020470 @ =gUnknown_03005AB0
	movs r1, #0x21
	rsbs r1, r1, #0
	mov sb, r1
	ldr r4, _0802046C @ =gUnknown_03005A20
	movs r0, #9
	rsbs r0, r0, #0
	mov ip, r0
	adds r2, r6, #0
	adds r2, #0x3c
_08020454:
	ldr r0, [r2]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08020488
	cmp r3, #0
	beq _08020480
	ldr r0, [r5, #0x10]
	mov r1, sb
	ands r0, r1
	str r0, [r5, #0x10]
	b _08020488
	.align 2, 0
_0802046C: .4byte gUnknown_03005A20
_08020470: .4byte gUnknown_03005AB0
_08020474: .4byte gUnknown_03005088
_08020478: .4byte gGameMode
_0802047C: .4byte gUnknown_03004FE0
_08020480:
	ldr r0, [r4, #0x10]
	mov r1, sb
	ands r0, r1
	str r0, [r4, #0x10]
_08020488:
	ldr r0, [r2]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080204A8
	cmp r3, #0
	beq _080204A0
	ldr r0, [r5, #0x10]
	mov r1, ip
	ands r0, r1
	str r0, [r5, #0x10]
	b _080204A8
_080204A0:
	ldr r0, [r4, #0x10]
	mov r1, ip
	ands r0, r1
	str r0, [r4, #0x10]
_080204A8:
	adds r2, #4
	adds r3, #1
	mov r1, sl
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r3, r0
	blt _08020454
_080204B6:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080204DA
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _080204DA
	movs r0, #0x18
	ldrsh r1, [r7, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _080204F0
_080204DA:
	ldrb r0, [r6, #8]
	mov r1, r8
	strb r0, [r1]
	ldr r0, _080204EC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08020510
	.align 2, 0
_080204EC: .4byte gCurTask
_080204F0:
	ldr r1, _08020520 @ =gGameMode
	ldrb r0, [r1]
	cmp r0, #6
	bne _0802050A
	mov r1, r8
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0802050A
	ldr r0, _08020524 @ =gUnknown_03004FE0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08020510
_0802050A:
	adds r0, r7, #0
	bl DisplaySprite
_08020510:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08020520: .4byte gGameMode
_08020524: .4byte gUnknown_03004FE0

	thumb_func_start CreateEntity_Spikes_Horizontal
CreateEntity_Spikes_Horizontal: @ 0x08020528
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	adds r4, r1, #0
	adds r5, r2, #0
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _080205FC @ =sub_8020644
	movs r1, #0x80
	lsls r1, r1, #6
	mov sb, r1
	ldr r1, _08020600 @ =sub_80214D8
	str r1, [sp]
	movs r1, #0x44
	mov r2, sb
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r6, r0
	ldr r3, _08020604 @ =0x0300000C
	adds r7, r6, r3
	movs r2, #0
	str r2, [r0, #0x40]
	str r2, [r0, #0x3c]
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, sl
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #8]
	mov r3, r8
	strb r3, [r0, #9]
	mov r1, sl
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r7, #0x16]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r7, #0x18]
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	strb r0, [r1]
	movs r0, #0x10
	str r2, [sp, #4]
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	ldr r2, [sp, #4]
	strh r2, [r7, #8]
	movs r0, #0xe3
	lsls r0, r0, #1
	strh r0, [r7, #0xa]
	ldr r0, _08020608 @ =0x0300002C
	adds r1, r6, r0
	movs r0, #3
	strb r0, [r1]
	strh r2, [r7, #0x14]
	strh r2, [r7, #0x1c]
	ldr r3, _0802060C @ =0x0300002D
	adds r1, r6, r3
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08020610 @ =0x0300002E
	adds r1, r6, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08020614 @ =0x03000031
	adds r6, r6, r1
	movs r3, #0
	strb r3, [r6]
	subs r0, #0x11
	str r0, [r7, #0x28]
	mov r0, sb
	str r0, [r7, #0x10]
	ldr r0, _08020618 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _0802061C
	mov r1, sl
	ldrb r0, [r1, #2]
	cmp r0, #2
	bne _0802062E
	b _08020624
	.align 2, 0
_080205FC: .4byte sub_8020644
_08020600: .4byte sub_80214D8
_08020604: .4byte 0x0300000C
_08020608: .4byte 0x0300002C
_0802060C: .4byte 0x0300002D
_08020610: .4byte 0x0300002E
_08020614: .4byte 0x03000031
_08020618: .4byte gGameMode
_0802061C:
	mov r1, sl
	ldrb r0, [r1, #2]
	cmp r0, #3
	bne _0802062E
_08020624:
	movs r0, #0x80
	lsls r0, r0, #3
	mov r3, sb
	orrs r0, r3
	str r0, [r7, #0x10]
_0802062E:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8020644
sub_8020644: @ 0x08020644
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _08020710 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov sl, r0
	ldr r0, _08020714 @ =0x0300000C
	adds r0, r0, r1
	mov r8, r0
	mov r1, sl
	ldr r1, [r1]
	mov sb, r1
	mov r3, sl
	ldrb r2, [r3, #8]
	lsls r2, r2, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _08020718 @ =gCamera
	ldrh r0, [r3]
	lsrs r5, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	mov r0, r8
	strh r2, [r0, #0x16]
	ldrh r0, [r3, #2]
	lsrs r2, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	mov r3, r8
	strh r1, [r3, #0x18]
	ldr r0, _0802071C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _080206BA
	mov r1, sb
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _080206BA
	ldr r0, _08020720 @ =gUnknown_03004FE0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080206BA
	b _08020858
_080206BA:
	movs r4, #0
	lsls r0, r5, #0x10
	lsls r2, r2, #0x10
	str r2, [sp, #8]
	asrs r7, r0, #0x10
	ldr r6, _08020724 @ =gUnknown_03005AB0
	ldr r5, _08020728 @ =gUnknown_03005A20
_080206C8:
	ldr r3, [sp, #8]
	asrs r2, r3, #0x10
	ldr r3, _08020728 @ =gUnknown_03005A20
	cmp r4, #0
	beq _080206D4
	ldr r3, _08020724 @ =gUnknown_03005AB0
_080206D4:
	mov r0, r8
	adds r1, r7, #0
	bl sub_80096B0
	adds r1, r0, #0
	ldr r0, _0802072C @ =0x00010008
	ands r0, r1
	cmp r0, #0
	beq _080206E8
	b _08020848
_080206E8:
	movs r2, #3
	ldr r0, _0802071C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _080206F4
	movs r2, #2
_080206F4:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r1
	cmp r0, #0
	beq _0802079A
	mov r0, sb
	ldrb r0, [r0, #2]
	cmp r2, r0
	beq _080207AE
	mov r3, sp
	cmp r4, #0
	beq _08020730
	ldrb r0, [r6, #0xe]
	b _08020732
	.align 2, 0
_08020710: .4byte gCurTask
_08020714: .4byte 0x0300000C
_08020718: .4byte gCamera
_0802071C: .4byte gGameMode
_08020720: .4byte gUnknown_03004FE0
_08020724: .4byte gUnknown_03005AB0
_08020728: .4byte gUnknown_03005A20
_0802072C: .4byte 0x00010008
_08020730:
	ldrb r0, [r5, #0xe]
_08020732:
	adds r0, #5
	rsbs r1, r0, #0
	add r0, sp, #4
	strb r1, [r0]
	adds r1, r0, #0
	cmp r4, #0
	beq _08020744
	ldrb r0, [r6, #0xf]
	b _08020746
_08020744:
	ldrb r0, [r5, #0xf]
_08020746:
	mvns r2, r0
	mov r0, sp
	adds r0, #5
	strb r2, [r0]
	cmp r4, #0
	beq _08020756
	ldrb r0, [r6, #0xe]
	b _08020758
_08020756:
	ldrb r0, [r5, #0xe]
_08020758:
	adds r2, r0, #5
	mov r0, sp
	adds r0, #6
	strb r2, [r0]
	cmp r4, #0
	beq _08020768
	ldrb r0, [r6, #0xf]
	b _0802076A
_08020768:
	ldrb r0, [r5, #0xf]
_0802076A:
	adds r2, r0, #1
	mov r0, sp
	adds r0, #7
	strb r2, [r0]
	adds r0, r3, #0
	movs r2, #4
	bl memcpy
	mov r0, r8
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r7, r0
	mov r1, sp
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	adds r0, #1
	lsls r0, r0, #8
	cmp r4, #0
	bne _08020842
	b _08020846
_0802079A:
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _08020848
	adds r0, r2, #1
	mov r1, sb
	ldrb r1, [r1, #2]
	cmp r0, r1
	bne _080207D0
_080207AE:
	ldr r0, _080207C8 @ =gUnknown_03005A20
	cmp r4, #0
	beq _080207B6
	ldr r0, _080207CC @ =gUnknown_03005AB0
_080207B6:
	bl sub_800C558
	cmp r0, #0
	beq _08020848
	movs r0, #0xab
	bl m4aSongNumStart
	b _08020848
	.align 2, 0
_080207C8: .4byte gUnknown_03005A20
_080207CC: .4byte gUnknown_03005AB0
_080207D0:
	mov r3, sp
	cmp r4, #0
	beq _080207DA
	ldrb r0, [r6, #0xe]
	b _080207DC
_080207DA:
	ldrb r0, [r5, #0xe]
_080207DC:
	adds r0, #5
	rsbs r1, r0, #0
	add r0, sp, #4
	strb r1, [r0]
	adds r1, r0, #0
	cmp r4, #0
	beq _080207EE
	ldrb r0, [r6, #0xf]
	b _080207F0
_080207EE:
	ldrb r0, [r5, #0xf]
_080207F0:
	mvns r2, r0
	mov r0, sp
	adds r0, #5
	strb r2, [r0]
	cmp r4, #0
	beq _08020800
	ldrb r0, [r6, #0xe]
	b _08020802
_08020800:
	ldrb r0, [r5, #0xe]
_08020802:
	adds r2, r0, #5
	mov r0, sp
	adds r0, #6
	strb r2, [r0]
	cmp r4, #0
	beq _08020812
	ldrb r0, [r6, #0xf]
	b _08020814
_08020812:
	ldrb r0, [r5, #0xf]
_08020814:
	adds r2, r0, #1
	mov r0, sp
	adds r0, #7
	strb r2, [r0]
	adds r0, r3, #0
	movs r2, #4
	bl memcpy
	mov r0, r8
	adds r0, #0x2c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r7, r0
	mov r1, sp
	ldrb r1, [r1, #2]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	subs r0, #1
	lsls r0, r0, #8
	cmp r4, #0
	beq _08020846
_08020842:
	str r0, [r6]
	b _08020848
_08020846:
	str r0, [r5]
_08020848:
	adds r4, #1
	ldr r0, _080208A0 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	bge _08020858
	b _080206C8
_08020858:
	ldr r0, _080208A4 @ =gGameMode
	ldrb r1, [r0]
	cmp r1, #6
	bne _080208E4
	mov r2, sb
	movs r0, #3
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne _080208E4
	ldr r0, _080208A8 @ =gUnknown_03004FE0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080208E4
	movs r3, #0
	ldr r0, _080208A0 @ =gUnknown_03005088
	mov ip, r0
	ldr r5, _080208AC @ =gUnknown_03005AB0
	movs r7, #0x21
	rsbs r7, r7, #0
	ldr r4, _080208B0 @ =gUnknown_03005A20
	movs r6, #9
	rsbs r6, r6, #0
	mov r2, sl
	adds r2, #0x3c
_08020888:
	ldr r0, [r2]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080208BA
	cmp r3, #0
	beq _080208B4
	ldr r0, [r5, #0x10]
	ands r0, r7
	str r0, [r5, #0x10]
	b _080208BA
	.align 2, 0
_080208A0: .4byte gUnknown_03005088
_080208A4: .4byte gGameMode
_080208A8: .4byte gUnknown_03004FE0
_080208AC: .4byte gUnknown_03005AB0
_080208B0: .4byte gUnknown_03005A20
_080208B4:
	ldr r0, [r4, #0x10]
	ands r0, r7
	str r0, [r4, #0x10]
_080208BA:
	ldr r0, [r2]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080208D6
	cmp r3, #0
	beq _080208D0
	ldr r0, [r5, #0x10]
	ands r0, r6
	str r0, [r5, #0x10]
	b _080208D6
_080208D0:
	ldr r0, [r4, #0x10]
	ands r0, r6
	str r0, [r4, #0x10]
_080208D6:
	adds r2, #4
	adds r3, #1
	mov r1, ip
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r3, r0
	blt _08020888
_080208E4:
	mov r2, r8
	ldrh r0, [r2, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0802090A
	movs r3, #0x18
	ldrsh r0, [r2, r3]
	adds r0, #0x80
	cmp r0, #0
	blt _0802090A
	movs r0, #0x18
	ldrsh r1, [r2, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08020920
_0802090A:
	mov r1, sl
	ldrb r0, [r1, #8]
	mov r2, sb
	strb r0, [r2]
	ldr r0, _0802091C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08020940
	.align 2, 0
_0802091C: .4byte gCurTask
_08020920:
	ldr r3, _08020950 @ =gGameMode
	ldrb r0, [r3]
	cmp r0, #6
	bne _0802093A
	mov r1, sb
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0802093A
	ldr r0, _08020954 @ =gUnknown_03004FE0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08020940
_0802093A:
	mov r0, r8
	bl DisplaySprite
_08020940:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08020950: .4byte gGameMode
_08020954: .4byte gUnknown_03004FE0

	thumb_func_start CreateEntity_Interactable005
CreateEntity_Interactable005: @ 0x08020958
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sb, r0
	adds r4, r1, #0
	adds r6, r2, #0
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _08020A2C @ =sub_8020A4C
	movs r1, #0x80
	lsls r1, r1, #6
	mov sl, r1
	ldr r1, _08020A30 @ =sub_80214D8
	str r1, [sp]
	movs r1, #0x44
	mov r2, sl
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r7, _08020A34 @ =0x0300000C
	adds r5, r2, r7
	movs r3, #0
	str r3, [r0, #0x40]
	str r3, [r0, #0x3c]
	strh r4, [r0, #4]
	strh r6, [r0, #6]
	mov r1, sb
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #8]
	mov r7, r8
	strb r7, [r0, #9]
	mov r1, sb
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r5, #0x16]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	lsls r6, r6, #8
	adds r0, r0, r6
	strh r0, [r5, #0x18]
	movs r7, #2
	rsbs r7, r7, #0
	adds r0, r7, #0
	strb r0, [r1]
	movs r0, #0x10
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	ldr r3, [sp, #8]
	strh r3, [r5, #8]
	ldr r0, _08020A38 @ =0x0000FFFF
	strh r0, [r5, #0xa]
	ldr r2, [sp, #4]
	ldr r0, _08020A3C @ =0x0300002C
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	strh r3, [r5, #0x14]
	strh r3, [r5, #0x1c]
	ldr r7, _08020A40 @ =0x0300002D
	adds r1, r2, r7
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r0, _08020A44 @ =0x0300002E
	adds r1, r2, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08020A48 @ =0x03000031
	adds r2, r2, r1
	movs r7, #0
	strb r7, [r2]
	subs r0, #0x11
	str r0, [r5, #0x28]
	mov r0, sl
	str r0, [r5, #0x10]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08020A2C: .4byte sub_8020A4C
_08020A30: .4byte sub_80214D8
_08020A34: .4byte 0x0300000C
_08020A38: .4byte 0x0000FFFF
_08020A3C: .4byte 0x0300002C
_08020A40: .4byte 0x0300002D
_08020A44: .4byte 0x0300002E
_08020A48: .4byte 0x03000031

	thumb_func_start sub_8020A4C
sub_8020A4C: @ 0x08020A4C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	movs r0, #0
	str r0, [sp, #4]
	ldr r4, _08020AC8 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0xc
	adds r6, r1, r0
	ldr r1, [r5]
	mov r8, r1
	ldrb r1, [r5, #8]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r0, r8
	ldrb r2, [r0, #1]
	lsls r2, r2, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _08020ACC @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r6, #0x18]
	adds r1, #0x80
	lsls r1, r1, #0x10
	movs r0, #0xf8
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _08020AB8
	movs r1, #0x18
	ldrsh r0, [r6, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08020AB8
	lsls r1, r2, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _08020AD0
_08020AB8:
	ldrb r0, [r5, #8]
	mov r1, r8
	strb r0, [r1]
	ldr r0, [r4]
	bl TaskDestroy
	b _08020B32
	.align 2, 0
_08020AC8: .4byte gCurTask
_08020ACC: .4byte gCamera
_08020AD0:
	movs r4, #0
	add r7, sp, #4
_08020AD4:
	ldr r0, _08020AF8 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08020B04
	ldr r3, _08020AFC @ =gUnknown_03005A20
	cmp r4, #0
	beq _08020AE8
	ldr r3, _08020B00 @ =gUnknown_03005AB0
_08020AE8:
	str r7, [sp]
	adds r0, r6, #0
	mov r1, r8
	adds r2, r5, #0
	bl sub_8020F2C
	b _08020B18
	.align 2, 0
_08020AF8: .4byte gUnknown_03005004
_08020AFC: .4byte gUnknown_03005A20
_08020B00: .4byte gUnknown_03005AB0
_08020B04:
	ldr r3, _08020B40 @ =gUnknown_03005A20
	cmp r4, #0
	beq _08020B0C
	ldr r3, _08020B44 @ =gUnknown_03005AB0
_08020B0C:
	str r7, [sp]
	adds r0, r6, #0
	mov r1, r8
	adds r2, r5, #0
	bl sub_8021208
_08020B18:
	adds r1, r0, #0
	adds r4, #1
	ldr r0, _08020B48 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _08020AD4
	cmp r1, #0
	beq _08020B32
	adds r0, r6, #0
	bl DisplaySprite
_08020B32:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08020B40: .4byte gUnknown_03005A20
_08020B44: .4byte gUnknown_03005AB0
_08020B48: .4byte gUnknown_03005088

	thumb_func_start CreateEntity_Interactable006
CreateEntity_Interactable006: @ 0x08020B4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sb, r0
	adds r4, r1, #0
	adds r6, r2, #0
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _08020C24 @ =sub_8020C44
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08020C28 @ =sub_80214D8
	str r1, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r1, _08020C2C @ =0x0300000C
	adds r5, r2, r1
	movs r3, #0
	str r3, [r0, #0x40]
	str r3, [r0, #0x3c]
	movs r7, #0
	mov sl, r7
	strh r4, [r0, #4]
	strh r6, [r0, #6]
	mov r1, sb
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #8]
	mov r7, r8
	strb r7, [r0, #9]
	mov r1, sb
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r5, #0x16]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	lsls r6, r6, #8
	adds r0, r0, r6
	strh r0, [r5, #0x18]
	movs r7, #2
	rsbs r7, r7, #0
	adds r0, r7, #0
	strb r0, [r1]
	movs r0, #0x10
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	ldr r3, [sp, #8]
	strh r3, [r5, #8]
	ldr r0, _08020C30 @ =0x0000FFFF
	strh r0, [r5, #0xa]
	ldr r2, [sp, #4]
	ldr r0, _08020C34 @ =0x0300002C
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	strh r3, [r5, #0x14]
	strh r3, [r5, #0x1c]
	ldr r7, _08020C38 @ =0x0300002D
	adds r1, r2, r7
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r0, _08020C3C @ =0x0300002E
	adds r1, r2, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08020C40 @ =0x03000031
	adds r2, r2, r1
	mov r7, sl
	strb r7, [r2]
	subs r0, #0x11
	str r0, [r5, #0x28]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08020C24: .4byte sub_8020C44
_08020C28: .4byte sub_80214D8
_08020C2C: .4byte 0x0300000C
_08020C30: .4byte 0x0000FFFF
_08020C34: .4byte 0x0300002C
_08020C38: .4byte 0x0300002D
_08020C3C: .4byte 0x0300002E
_08020C40: .4byte 0x03000031

	thumb_func_start sub_8020C44
sub_8020C44: @ 0x08020C44
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	movs r0, #0
	str r0, [sp, #4]
	ldr r4, _08020CC0 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0xc
	adds r6, r1, r0
	ldr r1, [r5]
	mov r8, r1
	ldrb r1, [r5, #8]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r0, r8
	ldrb r2, [r0, #1]
	lsls r2, r2, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _08020CC4 @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r6, #0x18]
	adds r1, #0x80
	lsls r1, r1, #0x10
	movs r0, #0xf8
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _08020CB0
	movs r1, #0x18
	ldrsh r0, [r6, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08020CB0
	lsls r1, r2, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _08020CC8
_08020CB0:
	ldrb r0, [r5, #8]
	mov r1, r8
	strb r0, [r1]
	ldr r0, [r4]
	bl TaskDestroy
	b _08020D2A
	.align 2, 0
_08020CC0: .4byte gCurTask
_08020CC4: .4byte gCamera
_08020CC8:
	movs r4, #0
	add r7, sp, #4
_08020CCC:
	ldr r0, _08020CF0 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08020CFC
	ldr r3, _08020CF4 @ =gUnknown_03005A20
	cmp r4, #0
	beq _08020CE0
	ldr r3, _08020CF8 @ =gUnknown_03005AB0
_08020CE0:
	str r7, [sp]
	adds r0, r6, #0
	mov r1, r8
	adds r2, r5, #0
	bl sub_8021208
	b _08020D10
	.align 2, 0
_08020CF0: .4byte gUnknown_03005004
_08020CF4: .4byte gUnknown_03005A20
_08020CF8: .4byte gUnknown_03005AB0
_08020CFC:
	ldr r3, _08020D38 @ =gUnknown_03005A20
	cmp r4, #0
	beq _08020D04
	ldr r3, _08020D3C @ =gUnknown_03005AB0
_08020D04:
	str r7, [sp]
	adds r0, r6, #0
	mov r1, r8
	adds r2, r5, #0
	bl sub_8020F2C
_08020D10:
	adds r1, r0, #0
	adds r4, #1
	ldr r0, _08020D40 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _08020CCC
	cmp r1, #0
	beq _08020D2A
	adds r0, r6, #0
	bl DisplaySprite
_08020D2A:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08020D38: .4byte gUnknown_03005A20
_08020D3C: .4byte gUnknown_03005AB0
_08020D40: .4byte gUnknown_03005088

	thumb_func_start sub_8020D44
sub_8020D44: @ 0x08020D44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	adds r4, r1, #0
	mov r8, r2
	adds r5, r3, #0
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #8]
	ldrb r2, [r2, #8]
	lsls r2, r2, #3
	mov r1, r8
	ldrh r0, [r1, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r4, #1]
	lsls r1, r1, #3
	mov r3, r8
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _08020E14 @ =gCamera
	ldrh r0, [r3]
	lsrs r6, r2, #0x10
	mov sl, r6
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r7, #0x16]
	ldrh r0, [r3, #2]
	lsrs r3, r1, #0x10
	mov sb, r3
	asrs r6, r1, #0x10
	subs r0, r6, r0
	strh r0, [r7, #0x18]
	ldr r0, _08020E18 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _08020E48
	movs r0, #3
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _08020E48
	ldr r0, _08020E1C @ =gUnknown_03004FE0
	ldrb r0, [r0]
	cmp r0, #0x1e
	bne _08020E48
	adds r0, r7, #0
	adds r1, r2, #0
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_800CE34
	movs r1, #0x80
	lsls r1, r1, #0xc
	cmp r0, r1
	bne _08020E48
	ldrb r4, [r5, #0xe]
	adds r4, #5
	rsbs r0, r4, #0
	add r1, sp, #4
	strb r0, [r1]
	ldrb r3, [r5, #0xf]
	movs r0, #1
	subs r0, r0, r3
	mov r2, sp
	adds r2, #5
	strb r0, [r2]
	mov r0, sp
	adds r0, #6
	strb r4, [r0]
	subs r3, #1
	adds r0, #1
	strb r3, [r0]
	mov r0, sp
	movs r2, #4
	bl memcpy
	ldr r0, _08020E20 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08020E24
	adds r0, r7, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r6, r0
	mov r1, sp
	ldrb r1, [r1, #3]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	b _08020E3A
	.align 2, 0
_08020E14: .4byte gCamera
_08020E18: .4byte gGameMode
_08020E1C: .4byte gUnknown_03004FE0
_08020E20: .4byte gUnknown_03005004
_08020E24:
	adds r0, r7, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r6, r0
	mov r1, sp
	ldrb r1, [r1, #3]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
_08020E3A:
	lsls r0, r0, #8
	str r0, [r5, #4]
	adds r0, r5, #0
	bl sub_800C558
	cmp r0, #0
	bne _08020E7A
_08020E48:
	mov r6, sl
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	mov r0, sb
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	adds r3, r5, #0
	bl sub_80096B0
	ldr r1, [sp, #8]
	lsls r2, r1, #2
	mov r1, r8
	adds r1, #0x3c
	adds r1, r1, r2
	str r0, [r1]
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	beq _08020E84
	adds r0, r5, #0
	bl sub_800C558
	cmp r0, #0
	beq _08020E84
_08020E7A:
	movs r0, #0xab
	bl m4aSongNumStart
	movs r0, #1
	b _08020E86
_08020E84:
	movs r0, #0
_08020E86:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8020E98
sub_8020E98: @ 0x08020E98
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r4, r2, #0
	adds r6, r3, #0
	adds r0, r6, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r8, r0
	ldrb r2, [r4, #8]
	lsls r2, r2, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _08020F1C @ =gCamera
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r7, r2, #0x10
	subs r0, r7, r0
	strh r0, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	subs r0, r2, r0
	strh r0, [r5, #0x18]
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08020F20
	adds r0, r5, #0
	adds r1, r7, #0
	adds r3, r6, #0
	bl sub_80096B0
	mov r1, r8
	lsls r2, r1, #2
	adds r1, r4, #0
	adds r1, #0x3c
	adds r1, r1, r2
	str r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r1, r0
	cmp r1, #0
	beq _08020F20
	adds r0, r6, #0
	bl sub_800C558
	cmp r0, #0
	beq _08020F20
	movs r0, #0xab
	bl m4aSongNumStart
	movs r0, #1
	b _08020F22
	.align 2, 0
_08020F1C: .4byte gCamera
_08020F20:
	movs r0, #0
_08020F22:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8020F2C
sub_8020F2C: @ 0x08020F2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	adds r7, r2, #0
	adds r5, r3, #0
	ldr r0, _08020FD0 @ =gStageTime
	ldr r4, [r0]
	movs r0, #0x7f
	ands r4, r0
	str r4, [sp, #0xc]
	movs r0, #0x3c
	adds r0, r0, r5
	mov ip, r0
	movs r2, #0
	ldrsb r2, [r0, r2]
	mov sl, r2
	ldrb r2, [r7, #8]
	lsls r2, r2, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _08020FD4 @ =gCamera
	ldrh r0, [r3]
	mov sb, r0
	lsrs r0, r2, #0x10
	str r0, [sp, #8]
	asrs r2, r2, #0x10
	mov r8, r2
	mov r0, sb
	subs r2, r2, r0
	strh r2, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsrs r2, r1, #0x10
	asrs r1, r1, #0x10
	mov sb, r1
	subs r0, r1, r0
	strh r0, [r6, #0x18]
	cmp r4, #0x3b
	bhi _08020FD8
	ldr r1, [r5, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08020FAC
	ldr r0, [r5, #0x28]
	cmp r0, r6
	bne _08020FAC
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r5, #0x10]
_08020FAC:
	mov r2, sl
	lsls r1, r2, #2
	adds r0, r7, #0
	adds r0, #0x3c
	adds r2, r0, r1
	ldr r0, [r2]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08020FCC
	ldr r0, [r5, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r5, #0x10]
	movs r0, #0
	str r0, [r2]
_08020FCC:
	movs r0, #0
	b _080211F8
	.align 2, 0
_08020FD0: .4byte gStageTime
_08020FD4: .4byte gCamera
_08020FD8:
	cmp r4, #0x3d
	bhi _08021026
	ldr r1, [r5, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08020FF8
	ldr r0, [r5, #0x28]
	cmp r0, r6
	bne _08020FF8
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r5, #0x10]
_08020FF8:
	mov r4, sl
	lsls r1, r4, #2
	adds r0, r7, #0
	adds r0, #0x3c
	adds r2, r0, r1
	ldr r0, [r2]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08021018
	ldr r0, [r5, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r5, #0x10]
	movs r0, #0
	str r0, [r2]
_08021018:
	movs r0, #0
	movs r1, #0xe3
	lsls r1, r1, #1
	strh r1, [r6, #0xa]
	adds r1, r6, #0
	adds r1, #0x20
	b _0802119C
_08021026:
	cmp r4, #0x3f
	bhi _0802104C
	ldr r1, [r5, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08021046
	ldr r0, [r5, #0x28]
	cmp r0, r6
	bne _08021046
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r5, #0x10]
_08021046:
	mov r0, sl
	lsls r1, r0, #2
	b _08021174
_0802104C:
	cmp r4, #0x7b
	bls _08021052
	b _0802114E
_08021052:
	adds r3, r6, #0
	adds r3, #0x20
	ldrb r0, [r3]
	mov r4, ip
	ldrb r1, [r4]
	cmp r0, #2
	bne _0802106C
	cmp r1, #0
	beq _08021116
	ldr r4, [sp, #0x30]
	ldr r0, [r4]
	cmp r0, #0
	beq _08021116
_0802106C:
	cmp r1, #0
	bne _08021076
	movs r0, #1
	ldr r1, [sp, #0x30]
	str r0, [r1]
_08021076:
	movs r0, #0xe3
	lsls r0, r0, #1
	strh r0, [r6, #0xa]
	movs r0, #2
	strb r0, [r3]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	mov r1, r8
	mov r2, sb
	adds r3, r5, #0
	bl sub_800CE34
	movs r1, #0x80
	lsls r1, r1, #0xc
	cmp r0, r1
	bne _08021108
	ldrb r4, [r5, #0xe]
	adds r4, #5
	rsbs r0, r4, #0
	add r1, sp, #4
	strb r0, [r1]
	ldrb r3, [r5, #0xf]
	movs r0, #1
	subs r0, r0, r3
	mov r2, sp
	adds r2, #5
	strb r0, [r2]
	mov r0, sp
	adds r0, #6
	strb r4, [r0]
	subs r3, #1
	adds r0, #1
	strb r3, [r0]
	mov r0, sp
	movs r2, #4
	bl memcpy
	ldr r0, _080210E8 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080210EC
	adds r0, r6, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, sb
	mov r1, sp
	ldrb r1, [r1, #3]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	b _08021102
	.align 2, 0
_080210E8: .4byte gUnknown_03005004
_080210EC:
	adds r0, r6, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, sb
	mov r1, sp
	ldrb r1, [r1, #3]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
_08021102:
	lsls r0, r0, #8
	str r0, [r5, #4]
	b _0802113C
_08021108:
	adds r0, r6, #0
	mov r1, r8
	mov r2, sb
	adds r3, r5, #0
	bl sub_80096B0
	b _08021134
_08021116:
	ldr r4, [sp, #8]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	adds r3, r5, #0
	bl sub_80096B0
	mov r1, sl
	lsls r2, r1, #2
	adds r1, r7, #0
	adds r1, #0x3c
	adds r1, r1, r2
	str r0, [r1]
_08021134:
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	beq _080211F6
_0802113C:
	adds r0, r5, #0
	bl sub_800C558
	cmp r0, #0
	beq _080211F6
	movs r0, #0xab
	bl m4aSongNumStart
	b _080211F6
_0802114E:
	ldr r2, [sp, #0xc]
	cmp r2, #0x7d
	bhi _080211A6
	ldr r1, [r5, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08021170
	ldr r0, [r5, #0x28]
	cmp r0, r6
	bne _08021170
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r5, #0x10]
_08021170:
	mov r4, sl
	lsls r1, r4, #2
_08021174:
	adds r0, r7, #0
	adds r0, #0x3c
	adds r2, r0, r1
	ldr r0, [r2]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08021190
	ldr r0, [r5, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r5, #0x10]
	movs r0, #0
	str r0, [r2]
_08021190:
	movs r0, #0xe3
	lsls r0, r0, #1
	strh r0, [r6, #0xa]
	adds r1, r6, #0
	adds r1, #0x20
	movs r0, #1
_0802119C:
	strb r0, [r1]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	b _080211F6
_080211A6:
	ldr r1, [r5, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080211C2
	ldr r0, [r5, #0x28]
	cmp r0, r6
	bne _080211C2
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r5, #0x10]
_080211C2:
	mov r0, sl
	lsls r1, r0, #2
	adds r0, r7, #0
	adds r0, #0x3c
	adds r2, r0, r1
	ldr r0, [r2]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080211E2
	ldr r0, [r5, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r5, #0x10]
	movs r0, #0
	str r0, [r2]
_080211E2:
	movs r0, #0
	movs r1, #0xe3
	lsls r1, r1, #1
	strh r1, [r6, #0xa]
	adds r1, r6, #0
	adds r1, #0x20
	strb r0, [r1]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
_080211F6:
	movs r0, #1
_080211F8:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8021208
sub_8021208: @ 0x08021208
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	adds r7, r2, #0
	adds r5, r3, #0
	ldr r0, _080212AC @ =gStageTime
	ldr r4, [r0]
	movs r0, #0x7f
	ands r4, r0
	str r4, [sp, #0xc]
	movs r0, #0x3c
	adds r0, r0, r5
	mov ip, r0
	movs r2, #0
	ldrsb r2, [r0, r2]
	mov sb, r2
	ldrb r2, [r7, #8]
	lsls r2, r2, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _080212B0 @ =gCamera
	ldrh r0, [r3]
	mov r8, r0
	lsrs r0, r2, #0x10
	str r0, [sp, #8]
	asrs r2, r2, #0x10
	mov sl, r2
	mov r0, r8
	subs r2, r2, r0
	strh r2, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsrs r2, r1, #0x10
	asrs r1, r1, #0x10
	mov r8, r1
	subs r0, r1, r0
	strh r0, [r6, #0x18]
	cmp r4, #0x3b
	bhi _080212B4
	ldr r1, [r5, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08021288
	ldr r0, [r5, #0x28]
	cmp r0, r6
	bne _08021288
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r5, #0x10]
_08021288:
	mov r2, sb
	lsls r1, r2, #2
	adds r0, r7, #0
	adds r0, #0x3c
	adds r2, r0, r1
	ldr r0, [r2]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080212A8
	ldr r0, [r5, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r5, #0x10]
	movs r0, #0
	str r0, [r2]
_080212A8:
	movs r0, #0
	b _080214C8
	.align 2, 0
_080212AC: .4byte gStageTime
_080212B0: .4byte gCamera
_080212B4:
	cmp r4, #0x3d
	bhi _08021302
	ldr r1, [r5, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080212D4
	ldr r0, [r5, #0x28]
	cmp r0, r6
	bne _080212D4
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r5, #0x10]
_080212D4:
	mov r4, sb
	lsls r1, r4, #2
	adds r0, r7, #0
	adds r0, #0x3c
	adds r2, r0, r1
	ldr r0, [r2]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080212F4
	ldr r0, [r5, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r5, #0x10]
	movs r0, #0
	str r0, [r2]
_080212F4:
	movs r0, #0
	movs r1, #0xe3
	lsls r1, r1, #1
	strh r1, [r6, #0xa]
	adds r1, r6, #0
	adds r1, #0x20
	b _0802146C
_08021302:
	cmp r4, #0x3f
	bhi _08021328
	ldr r1, [r5, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08021322
	ldr r0, [r5, #0x28]
	cmp r0, r6
	bne _08021322
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r5, #0x10]
_08021322:
	mov r0, sb
	lsls r1, r0, #2
	b _08021444
_08021328:
	cmp r4, #0x7b
	bhi _0802141E
	adds r3, r6, #0
	adds r3, #0x20
	ldrb r0, [r3]
	mov r4, ip
	ldrb r1, [r4]
	cmp r0, #2
	bne _08021346
	cmp r1, #0
	beq _080213E4
	ldr r4, [sp, #0x30]
	ldr r0, [r4]
	cmp r0, #0
	beq _080213E4
_08021346:
	cmp r1, #0
	bne _08021350
	movs r0, #1
	ldr r1, [sp, #0x30]
	str r0, [r1]
_08021350:
	movs r0, #0xe3
	lsls r0, r0, #1
	strh r0, [r6, #0xa]
	movs r0, #2
	strb r0, [r3]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	mov r1, sl
	mov r2, r8
	adds r3, r5, #0
	bl sub_800CE34
	movs r1, #0x80
	lsls r1, r1, #0xc
	cmp r0, r1
	beq _08021376
	b _080214C6
_08021376:
	ldrb r4, [r5, #0xe]
	adds r4, #5
	rsbs r0, r4, #0
	add r1, sp, #4
	strb r0, [r1]
	ldrb r3, [r5, #0xf]
	movs r0, #1
	subs r0, r0, r3
	mov r2, sp
	adds r2, #5
	strb r0, [r2]
	mov r0, sp
	adds r0, #6
	strb r4, [r0]
	subs r3, #1
	adds r0, #1
	strb r3, [r0]
	mov r0, sp
	movs r2, #4
	bl memcpy
	ldr r0, _080213C4 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080213C8
	adds r0, r6, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, r8
	mov r1, sp
	ldrb r1, [r1, #1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	b _080213DE
	.align 2, 0
_080213C4: .4byte gUnknown_03005004
_080213C8:
	adds r0, r6, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, r8
	mov r1, sp
	ldrb r1, [r1, #1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
_080213DE:
	lsls r0, r0, #8
	str r0, [r5, #4]
	b _0802140C
_080213E4:
	ldr r4, [sp, #8]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	adds r3, r5, #0
	bl sub_80096B0
	mov r1, sb
	lsls r2, r1, #2
	adds r1, r7, #0
	adds r1, #0x3c
	adds r1, r1, r2
	str r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r1, r0
	cmp r1, #0
	beq _080214C6
_0802140C:
	adds r0, r5, #0
	bl sub_800C558
	cmp r0, #0
	beq _080214C6
	movs r0, #0xab
	bl m4aSongNumStart
	b _080214C6
_0802141E:
	ldr r2, [sp, #0xc]
	cmp r2, #0x7d
	bhi _08021476
	ldr r1, [r5, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08021440
	ldr r0, [r5, #0x28]
	cmp r0, r6
	bne _08021440
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r5, #0x10]
_08021440:
	mov r4, sb
	lsls r1, r4, #2
_08021444:
	adds r0, r7, #0
	adds r0, #0x3c
	adds r2, r0, r1
	ldr r0, [r2]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08021460
	ldr r0, [r5, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r5, #0x10]
	movs r0, #0
	str r0, [r2]
_08021460:
	movs r0, #0xe3
	lsls r0, r0, #1
	strh r0, [r6, #0xa]
	adds r1, r6, #0
	adds r1, #0x20
	movs r0, #1
_0802146C:
	strb r0, [r1]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	b _080214C6
_08021476:
	ldr r1, [r5, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08021492
	ldr r0, [r5, #0x28]
	cmp r0, r6
	bne _08021492
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r5, #0x10]
_08021492:
	mov r0, sb
	lsls r1, r0, #2
	adds r0, r7, #0
	adds r0, #0x3c
	adds r2, r0, r1
	ldr r0, [r2]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080214B2
	ldr r0, [r5, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r5, #0x10]
	movs r0, #0
	str r0, [r2]
_080214B2:
	movs r0, #0
	movs r1, #0xe3
	lsls r1, r1, #1
	strh r1, [r6, #0xa]
	adds r1, r6, #0
	adds r1, #0x20
	strb r0, [r1]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
_080214C6:
	movs r0, #1
_080214C8:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80214D8
sub_80214D8: @ 0x080214D8
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Checkpoint
CreateEntity_Checkpoint: @ 0x080214EC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r5, r3, #0x18
	movs r1, #3
	ldrsb r1, [r6, r1]
	ldr r0, _08021528 @ =gUnknown_03005148
	ldrb r0, [r0]
	cmp r1, r0
	bgt _08021534
	ldr r0, _0802152C @ =sub_8021908
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08021530 @ =TaskDestructor_8009670
	str r1, [sp]
	movs r1, #0x3c
	movs r3, #0
	bl TaskCreate
	b _08021546
	.align 2, 0
_08021528: .4byte gUnknown_03005148
_0802152C: .4byte sub_8021908
_08021530: .4byte TaskDestructor_8009670
_08021534:
	ldr r0, _080215B0 @ =sub_8021608
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _080215B4 @ =TaskDestructor_8009670
	str r1, [sp]
	movs r1, #0x3c
	movs r3, #0
	bl TaskCreate
_08021546:
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r7, r0
	movs r1, #0
	mov sb, r1
	strh r4, [r0, #4]
	mov r2, r8
	strh r2, [r0, #6]
	str r6, [r0]
	ldrb r1, [r6]
	strb r1, [r0, #8]
	strb r5, [r0, #9]
	ldr r0, _080215B8 @ =0x0300000C
	adds r5, r7, r0
	ldrb r0, [r6]
	lsls r0, r0, #3
	lsls r1, r4, #8
	adds r0, r0, r1
	strh r0, [r5, #0x16]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	mov r2, r8
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r5, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	movs r0, #0x12
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	mov r2, sb
	strh r2, [r5, #8]
	movs r0, #0xe2
	lsls r0, r0, #1
	strh r0, [r5, #0xa]
	movs r1, #3
	ldrsb r1, [r6, r1]
	ldr r0, _080215BC @ =gUnknown_03005148
	ldrb r0, [r0]
	cmp r1, r0
	bgt _080215C4
	ldr r0, _080215C0 @ =0x0300002C
	adds r1, r7, r0
	movs r0, #2
	b _080215CA
	.align 2, 0
_080215B0: .4byte sub_8021608
_080215B4: .4byte TaskDestructor_8009670
_080215B8: .4byte 0x0300000C
_080215BC: .4byte gUnknown_03005148
_080215C0: .4byte 0x0300002C
_080215C4:
	ldr r2, _08021604 @ =0x0300002C
	adds r1, r7, r2
	movs r0, #0
_080215CA:
	strb r0, [r1]
	movs r1, #0
	movs r0, #0
	strh r0, [r5, #0x14]
	strh r0, [r5, #0x1c]
	adds r2, r5, #0
	adds r2, #0x21
	movs r0, #0xff
	strb r0, [r2]
	adds r2, #1
	movs r0, #0x10
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x25
	strb r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021604: .4byte 0x0300002C

	thumb_func_start sub_8021608
sub_8021608: @ 0x08021608
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r4, _080216DC @ =gCurTask
	ldr r0, [r4]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r5
	mov r8, r0
	ldr r0, _080216E0 @ =0x0300000C
	adds r6, r5, r0
	mov r1, r8
	ldr r1, [r1]
	mov sb, r1
	mov r3, r8
	ldrb r2, [r3, #8]
	lsls r2, r2, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _080216E4 @ =gCamera
	ldrh r0, [r3]
	lsrs r7, r2, #0x10
	str r7, [sp]
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsrs r3, r1, #0x10
	mov sl, r3
	asrs r1, r1, #0x10
	mov ip, r1
	subs r0, r1, r0
	strh r0, [r6, #0x18]
	ldr r0, _080216E8 @ =gCurrentLevel
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldr r7, _080216EC @ =gUnknown_03005A20
	cmp r1, #0xa
	beq _080216C2
	ldr r4, _080216F0 @ =0x03000038
	adds r0, r5, r4
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r2, r2, r3
	ldr r0, [r7]
	asrs r1, r0, #8
	cmp r2, r1
	bgt _080216B8
	adds r4, #2
	adds r0, r5, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	blt _080216B8
	ldr r1, _080216F4 @ =0x03000039
	adds r0, r5, r1
	movs r3, #0
	ldrsb r3, [r0, r3]
	mov r2, ip
	adds r1, r2, r3
	ldr r0, [r7, #4]
	asrs r2, r0, #8
	cmp r1, r2
	bgt _080216B8
	adds r4, #1
	adds r0, r5, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	bge _0802170E
_080216B8:
	ldr r1, _080216E8 @ =gCurrentLevel
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0xa
	bne _080217B0
_080216C2:
	mov r2, sb
	movs r0, #3
	ldrsb r0, [r2, r0]
	cmp r0, #1
	bne _080216F8
	ldr r1, [r7]
	asrs r1, r1, #8
	ldr r3, [sp]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bgt _0802170E
	b _080217B0
	.align 2, 0
_080216DC: .4byte gCurTask
_080216E0: .4byte 0x0300000C
_080216E4: .4byte gCamera
_080216E8: .4byte gCurrentLevel
_080216EC: .4byte gUnknown_03005A20
_080216F0: .4byte 0x03000038
_080216F4: .4byte 0x03000039
_080216F8:
	ldr r1, [r7, #4]
	asrs r1, r1, #8
	movs r0, #0xf
	ldrsb r0, [r7, r0]
	adds r1, r1, r0
	mov r4, sl
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r0, #4
	cmp r1, r0
	bge _080217B0
_0802170E:
	ldr r4, [r7, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r4, r0
	cmp r4, #0
	bne _080217B0
	ldr r5, _080217E8 @ =gUnknown_03005148
	mov r1, sb
	ldrb r0, [r1, #3]
	strb r0, [r5]
	adds r0, r7, #0
	adds r0, #0x48
	mov r2, sp
	ldrh r2, [r2]
	strh r2, [r0]
	movs r1, #0xf
	ldrsb r1, [r7, r1]
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	adds r1, r7, #0
	adds r1, #0x4a
	strh r0, [r1]
	ldr r0, _080217EC @ =gCheckpointTime
	ldr r0, [r0]
	str r0, [r7, #0x4c]
	adds r1, r6, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	ldr r0, _080217F0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080217F4 @ =sub_8021838
	str r0, [r1, #8]
	bl _call_via_r0
	ldr r0, _080217F8 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xa
	bne _080217B0
	ldrb r0, [r5]
	cmp r0, #1
	bne _08021772
	strh r4, [r7, #8]
	strh r4, [r7, #0xc]
	bl sub_8029860
_08021772:
	ldrb r0, [r5]
	cmp r0, #2
	bne _08021790
	ldr r0, _080217FC @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802178A
	ldr r0, _08021800 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r2, #1
	orrs r1, r2
	strh r1, [r0]
_0802178A:
	ldr r0, _08021804 @ =0x000015BF
	bl sub_8028C84
_08021790:
	ldr r0, _080217E8 @ =gUnknown_03005148
	ldrb r0, [r0]
	cmp r0, #3
	bne _080217B0
	ldr r0, _080217FC @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _080217AA
	ldr r0, _08021800 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r2, #1
	orrs r1, r2
	strh r1, [r0]
_080217AA:
	ldr r0, _08021808 @ =0x00000CBF
	bl sub_8028C84
_080217B0:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080217D4
	movs r1, #0x18
	ldrsh r0, [r6, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _080217D4
	movs r2, #0x18
	ldrsh r1, [r6, r2]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0802180C
_080217D4:
	mov r3, r8
	ldrb r0, [r3, #8]
	mov r4, sb
	strb r0, [r4]
	ldr r0, _080217F0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08021824
	.align 2, 0
_080217E8: .4byte gUnknown_03005148
_080217EC: .4byte gCheckpointTime
_080217F0: .4byte gCurTask
_080217F4: .4byte sub_8021838
_080217F8: .4byte gCurrentLevel
_080217FC: .4byte gGameMode
_08021800: .4byte gUnknown_03005004
_08021804: .4byte 0x000015BF
_08021808: .4byte 0x00000CBF
_0802180C:
	ldr r0, _08021834 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xa
	beq _08021824
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_08021824:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021834: .4byte gCurrentLevel

	thumb_func_start sub_8021838
sub_8021838: @ 0x08021838
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080218AC @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	ldr r1, _080218B0 @ =0x0300000C
	adds r5, r6, r1
	ldr r7, [r4]
	ldrb r1, [r4, #8]
	lsls r1, r1, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r7, #1]
	lsls r2, r2, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _080218B4 @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r5, #0x18]
	adds r1, #0x80
	lsls r1, r1, #0x10
	movs r0, #0xf8
	lsls r0, r0, #0x11
	mov r3, r8
	cmp r1, r0
	bhi _0802189E
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0802189E
	lsls r1, r2, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _080218B8
_0802189E:
	ldrb r0, [r4, #8]
	strb r0, [r7]
	ldr r0, [r3]
	bl TaskDestroy
	b _080218F0
	.align 2, 0
_080218AC: .4byte gCurTask
_080218B0: .4byte 0x0300000C
_080218B4: .4byte gCamera
_080218B8:
	ldr r0, _080218FC @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xa
	beq _080218CE
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _080218DE
_080218CE:
	ldr r0, _08021900 @ =0x0300002C
	adds r1, r6, r0
	movs r0, #2
	strb r0, [r1]
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _08021904 @ =sub_8021908
	str r0, [r1, #8]
_080218DE:
	ldr r0, _080218FC @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xa
	beq _080218F0
	adds r0, r5, #0
	bl DisplaySprite
_080218F0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080218FC: .4byte gCurrentLevel
_08021900: .4byte 0x0300002C
_08021904: .4byte sub_8021908

	thumb_func_start sub_8021908
sub_8021908: @ 0x08021908
	push {r4, r5, r6, r7, lr}
	ldr r4, _08021974 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0xc
	adds r6, r1, r0
	ldr r7, [r5]
	ldrb r1, [r5, #8]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r7, #1]
	lsls r2, r2, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _08021978 @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r6, #0x18]
	adds r1, #0x80
	lsls r1, r1, #0x10
	movs r0, #0xf8
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _08021966
	movs r1, #0x18
	ldrsh r0, [r6, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08021966
	lsls r1, r2, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _0802197C
_08021966:
	ldrb r0, [r5, #8]
	strb r0, [r7]
	ldr r0, [r4]
	bl TaskDestroy
	b _08021994
	.align 2, 0
_08021974: .4byte gCurTask
_08021978: .4byte gCamera
_0802197C:
	ldr r0, _0802199C @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xa
	beq _08021994
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_08021994:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802199C: .4byte gCurrentLevel

	thumb_func_start CreateEntity_Spring_Normal_Up
CreateEntity_Spring_Normal_Up: @ 0x080219A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08021A94 @ =sub_8021AE4
	ldr r1, _08021A98 @ =sub_802316C
	str r1, [sp]
	movs r1, #0x3c
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r1, _08021A9C @ =0x0300000C
	adds r7, r2, r1
	movs r3, #0
	mov sl, r3
	movs r1, #0
	mov r8, r1
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r3, sb
	str r3, [r0]
	ldrb r1, [r3]
	strb r1, [r0, #8]
	strb r6, [r0, #9]
	ldrb r0, [r3]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r7, #0x16]
	ldrb r0, [r3, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r7, #0x18]
	movs r4, #2
	rsbs r4, r4, #0
	adds r0, r4, #0
	strb r0, [r3]
	movs r0, #0x10
	str r2, [sp, #4]
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	mov r0, r8
	strh r0, [r7, #8]
	ldr r0, _08021AA0 @ =0x000001C7
	strh r0, [r7, #0xa]
	ldr r2, [sp, #4]
	ldr r1, _08021AA4 @ =0x0300002C
	adds r0, r2, r1
	mov r3, sl
	strb r3, [r0]
	mov r4, r8
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	ldr r0, _08021AA8 @ =0x0300002D
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r3, _08021AAC @ =0x0300002E
	adds r1, r2, r3
	movs r0, #0x10
	strb r0, [r1]
	ldr r4, _08021AB0 @ =0x03000031
	adds r2, r2, r4
	mov r0, sl
	strb r0, [r2]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	mov r3, sb
	ldrb r1, [r3, #3]
	movs r3, #2
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08021AC8
	ldr r1, _08021AB4 @ =0x040000D4
	ldr r0, _08021AB8 @ =gUnknown_03002034
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	movs r4, #0x90
	lsls r4, r4, #3
	adds r0, r0, r4
	str r0, [r1]
	ldr r0, _08021ABC @ =gObjPalette+0x100
	str r0, [r1, #4]
	ldr r0, _08021AC0 @ =0x84000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _08021AC4 @ =gFlags
	ldr r0, [r1]
	orrs r0, r3
	str r0, [r1]
	movs r0, #0x84
	lsls r0, r0, #0xb
	str r0, [r7, #0x10]
	movs r0, #1
	strb r0, [r2]
	b _08021ACE
	.align 2, 0
_08021A94: .4byte sub_8021AE4
_08021A98: .4byte sub_802316C
_08021A9C: .4byte 0x0300000C
_08021AA0: .4byte 0x000001C7
_08021AA4: .4byte 0x0300002C
_08021AA8: .4byte 0x0300002D
_08021AAC: .4byte 0x0300002E
_08021AB0: .4byte 0x03000031
_08021AB4: .4byte 0x040000D4
_08021AB8: .4byte gUnknown_03002034
_08021ABC: .4byte gObjPalette+0x100
_08021AC0: .4byte 0x84000008
_08021AC4: .4byte gFlags
_08021AC8:
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x10]
_08021ACE:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8021AE4
sub_8021AE4: @ 0x08021AE4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _08021B28 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r4, r1, r0
	ldr r7, [r6]
	movs r5, #0
	mov sb, r2
	ldr r1, _08021B2C @ =sub_8021BC0
	mov r8, r1
_08021B06:
	ldr r0, _08021B30 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08021B3C
	ldr r3, _08021B34 @ =gUnknown_03005A20
	cmp r5, #0
	beq _08021B1A
	ldr r3, _08021B38 @ =gUnknown_03005AB0
_08021B1A:
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_8022640
	b _08021B4E
	.align 2, 0
_08021B28: .4byte gCurTask
_08021B2C: .4byte sub_8021BC0
_08021B30: .4byte gUnknown_03005004
_08021B34: .4byte gUnknown_03005A20
_08021B38: .4byte gUnknown_03005AB0
_08021B3C:
	ldr r3, _08021B9C @ =gUnknown_03005A20
	cmp r5, #0
	beq _08021B44
	ldr r3, _08021BA0 @ =gUnknown_03005AB0
_08021B44:
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_8022804
_08021B4E:
	cmp r0, #0
	beq _08021B5A
	mov r1, sb
	ldr r0, [r1]
	mov r1, r8
	str r1, [r0, #8]
_08021B5A:
	adds r5, #1
	ldr r0, _08021BA4 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	blt _08021B06
	ldrh r0, [r4, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08021B8C
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08021B8C
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08021BAC
_08021B8C:
	ldrb r0, [r6, #8]
	strb r0, [r7]
	ldr r0, _08021BA8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08021BB2
	.align 2, 0
_08021B9C: .4byte gUnknown_03005A20
_08021BA0: .4byte gUnknown_03005AB0
_08021BA4: .4byte gUnknown_03005088
_08021BA8: .4byte gCurTask
_08021BAC:
	adds r0, r4, #0
	bl DisplaySprite
_08021BB2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8021BC0
sub_8021BC0: @ 0x08021BC0
	push {r4, r5, r6, r7, lr}
	ldr r0, _08021BF8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r4, r1, r0
	ldr r7, [r6]
	movs r5, #0
_08021BD6:
	ldr r0, _08021BFC @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08021C08
	ldr r3, _08021C00 @ =gUnknown_03005A20
	cmp r5, #0
	beq _08021BEA
	ldr r3, _08021C04 @ =gUnknown_03005AB0
_08021BEA:
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_8022640
	b _08021C1A
	.align 2, 0
_08021BF8: .4byte gCurTask
_08021BFC: .4byte gUnknown_03005004
_08021C00: .4byte gUnknown_03005A20
_08021C04: .4byte gUnknown_03005AB0
_08021C08:
	ldr r3, _08021C5C @ =gUnknown_03005A20
	cmp r5, #0
	beq _08021C10
	ldr r3, _08021C60 @ =gUnknown_03005AB0
_08021C10:
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_8022804
_08021C1A:
	adds r5, #1
	ldr r0, _08021C64 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	blt _08021BD6
	ldrh r0, [r4, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08021C4C
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08021C4C
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08021C6C
_08021C4C:
	ldrb r0, [r6, #8]
	strb r0, [r7]
	ldr r0, _08021C68 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08021C92
	.align 2, 0
_08021C5C: .4byte gUnknown_03005A20
_08021C60: .4byte gUnknown_03005AB0
_08021C64: .4byte gUnknown_03005088
_08021C68: .4byte gCurTask
_08021C6C:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r1, r0, #0
	cmp r1, #0
	bne _08021C8C
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r0, _08021C98 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08021C9C @ =sub_8021AE4
	str r0, [r1, #8]
_08021C8C:
	adds r0, r4, #0
	bl DisplaySprite
_08021C92:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021C98: .4byte gCurTask
_08021C9C: .4byte sub_8021AE4

	thumb_func_start CreateEntity_Spring_Normal_Down
CreateEntity_Spring_Normal_Down: @ 0x08021CA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	adds r4, r1, #0
	adds r6, r2, #0
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _08021D74 @ =sub_8021D94
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08021D78 @ =sub_802316C
	str r1, [sp]
	movs r1, #0x3c
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r1, _08021D7C @ =0x0300000C
	adds r5, r2, r1
	movs r7, #0
	movs r3, #0
	mov sl, r3
	strh r4, [r0, #4]
	strh r6, [r0, #6]
	mov r1, sb
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #8]
	mov r3, r8
	strb r3, [r0, #9]
	mov r1, sb
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r5, #0x16]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	lsls r6, r6, #8
	adds r0, r0, r6
	strh r0, [r5, #0x18]
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	strb r0, [r1]
	movs r0, #0x10
	str r2, [sp, #4]
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	mov r0, sl
	strh r0, [r5, #8]
	ldr r0, _08021D80 @ =0x000001C7
	strh r0, [r5, #0xa]
	ldr r2, [sp, #4]
	ldr r1, _08021D84 @ =0x0300002C
	adds r0, r2, r1
	strb r7, [r0]
	mov r3, sl
	strh r3, [r5, #0x14]
	strh r3, [r5, #0x1c]
	ldr r0, _08021D88 @ =0x0300002D
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r3, _08021D8C @ =0x0300002E
	adds r1, r2, r3
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _08021D90 @ =0x03000031
	adds r2, r2, r0
	strb r7, [r2]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021D74: .4byte sub_8021D94
_08021D78: .4byte sub_802316C
_08021D7C: .4byte 0x0300000C
_08021D80: .4byte 0x000001C7
_08021D84: .4byte 0x0300002C
_08021D88: .4byte 0x0300002D
_08021D8C: .4byte 0x0300002E
_08021D90: .4byte 0x03000031

	thumb_func_start sub_8021D94
sub_8021D94: @ 0x08021D94
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _08021DD8 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r4, r1, r0
	ldr r7, [r6]
	movs r5, #0
	mov sb, r2
	ldr r1, _08021DDC @ =sub_8021E70
	mov r8, r1
_08021DB6:
	ldr r0, _08021DE0 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08021DEC
	ldr r3, _08021DE4 @ =gUnknown_03005A20
	cmp r5, #0
	beq _08021DCA
	ldr r3, _08021DE8 @ =gUnknown_03005AB0
_08021DCA:
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_8022804
	b _08021DFE
	.align 2, 0
_08021DD8: .4byte gCurTask
_08021DDC: .4byte sub_8021E70
_08021DE0: .4byte gUnknown_03005004
_08021DE4: .4byte gUnknown_03005A20
_08021DE8: .4byte gUnknown_03005AB0
_08021DEC:
	ldr r3, _08021E4C @ =gUnknown_03005A20
	cmp r5, #0
	beq _08021DF4
	ldr r3, _08021E50 @ =gUnknown_03005AB0
_08021DF4:
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_8022640
_08021DFE:
	cmp r0, #0
	beq _08021E0A
	mov r1, sb
	ldr r0, [r1]
	mov r1, r8
	str r1, [r0, #8]
_08021E0A:
	adds r5, #1
	ldr r0, _08021E54 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	blt _08021DB6
	ldrh r0, [r4, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08021E3C
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08021E3C
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08021E5C
_08021E3C:
	ldrb r0, [r6, #8]
	strb r0, [r7]
	ldr r0, _08021E58 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08021E62
	.align 2, 0
_08021E4C: .4byte gUnknown_03005A20
_08021E50: .4byte gUnknown_03005AB0
_08021E54: .4byte gUnknown_03005088
_08021E58: .4byte gCurTask
_08021E5C:
	adds r0, r4, #0
	bl DisplaySprite
_08021E62:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8021E70
sub_8021E70: @ 0x08021E70
	push {r4, r5, r6, r7, lr}
	ldr r0, _08021EA8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r4, r1, r0
	ldr r7, [r6]
	movs r5, #0
_08021E86:
	ldr r0, _08021EAC @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08021EB8
	ldr r3, _08021EB0 @ =gUnknown_03005A20
	cmp r5, #0
	beq _08021E9A
	ldr r3, _08021EB4 @ =gUnknown_03005AB0
_08021E9A:
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_8022804
	b _08021ECA
	.align 2, 0
_08021EA8: .4byte gCurTask
_08021EAC: .4byte gUnknown_03005004
_08021EB0: .4byte gUnknown_03005A20
_08021EB4: .4byte gUnknown_03005AB0
_08021EB8:
	ldr r3, _08021F0C @ =gUnknown_03005A20
	cmp r5, #0
	beq _08021EC0
	ldr r3, _08021F10 @ =gUnknown_03005AB0
_08021EC0:
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_8022640
_08021ECA:
	adds r5, #1
	ldr r0, _08021F14 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	blt _08021E86
	ldrh r0, [r4, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08021EFC
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08021EFC
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08021F1C
_08021EFC:
	ldrb r0, [r6, #8]
	strb r0, [r7]
	ldr r0, _08021F18 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08021F42
	.align 2, 0
_08021F0C: .4byte gUnknown_03005A20
_08021F10: .4byte gUnknown_03005AB0
_08021F14: .4byte gUnknown_03005088
_08021F18: .4byte gCurTask
_08021F1C:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r1, r0, #0
	cmp r1, #0
	bne _08021F3C
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r0, _08021F48 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08021F4C @ =sub_8021D94
	str r0, [r1, #8]
_08021F3C:
	adds r0, r4, #0
	bl DisplaySprite
_08021F42:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021F48: .4byte gCurTask
_08021F4C: .4byte sub_8021D94

@ Note: IA_010 = Left, IA_011 = Right
	thumb_func_start CreateEntity_Spring_Horizontal
CreateEntity_Spring_Horizontal: @ 0x08021F50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	adds r4, r1, #0
	adds r5, r2, #0
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _0802201C @ =sub_8022068
	ldr r1, _08022020 @ =sub_802316C
	str r1, [sp]
	movs r1, #0x3c
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r6, r0
	ldr r1, _08022024 @ =0x0300000C
	adds r7, r6, r1
	movs r2, #0
	mov sb, r2
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, sl
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #8]
	mov r2, r8
	strb r2, [r0, #9]
	mov r1, sl
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r7, #0x16]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r7, #0x18]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r1]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	mov r0, sb
	strh r0, [r7, #8]
	ldr r0, _08022028 @ =0x000001C7
	strh r0, [r7, #0xa]
	ldr r2, _0802202C @ =0x0300002C
	adds r1, r6, r2
	movs r0, #2
	strb r0, [r1]
	mov r0, sb
	strh r0, [r7, #0x14]
	strh r0, [r7, #0x1c]
	adds r2, #1
	adds r1, r6, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08022030 @ =0x0300002E
	adds r1, r6, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08022034 @ =0x03000031
	adds r6, r6, r1
	movs r2, #0
	strb r2, [r6]
	subs r0, #0x11
	str r0, [r7, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x10]
	ldr r0, _08022038 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _0802203C
	mov r1, sl
	ldrb r0, [r1, #2]
	cmp r0, #8
	bne _08022050
	b _08022044
	.align 2, 0
_0802201C: .4byte sub_8022068
_08022020: .4byte sub_802316C
_08022024: .4byte 0x0300000C
_08022028: .4byte 0x000001C7
_0802202C: .4byte 0x0300002C
_08022030: .4byte 0x0300002E
_08022034: .4byte 0x03000031
_08022038: .4byte gGameMode
_0802203C:
	mov r1, sl
	ldrb r0, [r1, #2]
	cmp r0, #0xa
	bne _08022050
_08022044:
	movs r0, #0x80
	lsls r0, r0, #3
	movs r2, #0x80
	lsls r2, r2, #6
	orrs r0, r2
	str r0, [r7, #0x10]
_08022050:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8022068
sub_8022068: @ 0x08022068
	push {r4, r5, r6, r7, lr}
	ldr r0, _080220DC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r7, [r6]
	movs r4, #0
_0802207E:
	ldr r3, _080220E0 @ =gUnknown_03005A20
	cmp r4, #0
	beq _08022086
	ldr r3, _080220E4 @ =gUnknown_03005AB0
_08022086:
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_80228D0
	cmp r0, #0
	beq _0802209C
	ldr r0, _080220DC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080220E8 @ =sub_80220FC
	str r0, [r1, #8]
_0802209C:
	adds r4, #1
	ldr r0, _080220EC @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _0802207E
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080220CE
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _080220CE
	movs r0, #0x18
	ldrsh r1, [r5, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _080220F0
_080220CE:
	ldrb r0, [r6, #8]
	strb r0, [r7]
	ldr r0, _080220DC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080220F6
	.align 2, 0
_080220DC: .4byte gCurTask
_080220E0: .4byte gUnknown_03005A20
_080220E4: .4byte gUnknown_03005AB0
_080220E8: .4byte sub_80220FC
_080220EC: .4byte gUnknown_03005088
_080220F0:
	adds r0, r5, #0
	bl DisplaySprite
_080220F6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80220FC
sub_80220FC: @ 0x080220FC
	push {r4, r5, r6, r7, lr}
	ldr r0, _08022164 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r7, [r6]
	movs r4, #0
_08022112:
	ldr r3, _08022168 @ =gUnknown_03005A20
	cmp r4, #0
	beq _0802211A
	ldr r3, _0802216C @ =gUnknown_03005AB0
_0802211A:
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_80228D0
	adds r4, #1
	ldr r0, _08022170 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _08022112
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08022156
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08022156
	movs r0, #0x18
	ldrsh r1, [r5, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08022174
_08022156:
	ldrb r0, [r6, #8]
	strb r0, [r7]
	ldr r0, _08022164 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0802219A
	.align 2, 0
_08022164: .4byte gCurTask
_08022168: .4byte gUnknown_03005A20
_0802216C: .4byte gUnknown_03005AB0
_08022170: .4byte gUnknown_03005088
_08022174:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _08022194
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	ldr r0, _080221A0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080221A4 @ =sub_8022068
	str r0, [r1, #8]
_08022194:
	adds r0, r5, #0
	bl DisplaySprite
_0802219A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080221A0: .4byte gCurTask
_080221A4: .4byte sub_8022068

	thumb_func_start CreateEntity_Spring_Big_Up
CreateEntity_Spring_Big_Up: @ 0x080221A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	adds r4, r1, #0
	adds r5, r2, #0
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _08022274 @ =sub_80222C0
	ldr r1, _08022278 @ =sub_802316C
	str r1, [sp]
	movs r1, #0x44
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r6, r0
	ldr r1, _0802227C @ =0x0300000C
	adds r7, r6, r1
	movs r2, #0
	mov sb, r2
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, sl
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #8]
	mov r2, r8
	strb r2, [r0, #9]
	mov r1, sl
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r7, #0x16]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r7, #0x18]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r1]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	mov r0, sb
	strh r0, [r7, #8]
	ldr r0, _08022280 @ =0x000001C7
	strh r0, [r7, #0xa]
	ldr r2, _08022284 @ =0x0300002C
	adds r1, r6, r2
	movs r0, #4
	strb r0, [r1]
	mov r0, sb
	strh r0, [r7, #0x14]
	strh r0, [r7, #0x1c]
	adds r2, #1
	adds r1, r6, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08022288 @ =0x0300002E
	adds r1, r6, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0802228C @ =0x03000031
	adds r6, r6, r1
	movs r2, #0
	strb r2, [r6]
	subs r0, #0x11
	str r0, [r7, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x10]
	ldr r0, _08022290 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _08022294
	mov r1, sl
	ldrb r0, [r1, #2]
	cmp r0, #0xa
	bne _080222A8
	b _0802229C
	.align 2, 0
_08022274: .4byte sub_80222C0
_08022278: .4byte sub_802316C
_0802227C: .4byte 0x0300000C
_08022280: .4byte 0x000001C7
_08022284: .4byte 0x0300002C
_08022288: .4byte 0x0300002E
_0802228C: .4byte 0x03000031
_08022290: .4byte gGameMode
_08022294:
	mov r1, sl
	ldrb r0, [r1, #2]
	cmp r0, #0xc
	bne _080222A8
_0802229C:
	movs r0, #0x80
	lsls r0, r0, #3
	movs r2, #0x80
	lsls r2, r2, #6
	orrs r0, r2
	str r0, [r7, #0x10]
_080222A8:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80222C0
sub_80222C0: @ 0x080222C0
	push {r4, r5, r6, r7, lr}
	ldr r0, _08022334 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r7, [r6]
	movs r4, #0
_080222D6:
	ldr r3, _08022338 @ =gUnknown_03005A20
	cmp r4, #0
	beq _080222DE
	ldr r3, _0802233C @ =gUnknown_03005AB0
_080222DE:
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_8022AB4
	cmp r0, #0
	beq _080222F4
	ldr r0, _08022334 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08022340 @ =sub_8022354
	str r0, [r1, #8]
_080222F4:
	adds r4, #1
	ldr r0, _08022344 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _080222D6
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08022326
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08022326
	movs r0, #0x18
	ldrsh r1, [r5, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08022348
_08022326:
	ldrb r0, [r6, #8]
	strb r0, [r7]
	ldr r0, _08022334 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0802234E
	.align 2, 0
_08022334: .4byte gCurTask
_08022338: .4byte gUnknown_03005A20
_0802233C: .4byte gUnknown_03005AB0
_08022340: .4byte sub_8022354
_08022344: .4byte gUnknown_03005088
_08022348:
	adds r0, r5, #0
	bl DisplaySprite
_0802234E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8022354
sub_8022354: @ 0x08022354
	push {r4, r5, r6, r7, lr}
	ldr r0, _080223BC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r7, [r6]
	movs r4, #0
_0802236A:
	ldr r3, _080223C0 @ =gUnknown_03005A20
	cmp r4, #0
	beq _08022372
	ldr r3, _080223C4 @ =gUnknown_03005AB0
_08022372:
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_8022AB4
	adds r4, #1
	ldr r0, _080223C8 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _0802236A
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080223AE
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _080223AE
	movs r0, #0x18
	ldrsh r1, [r5, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _080223CC
_080223AE:
	ldrb r0, [r6, #8]
	strb r0, [r7]
	ldr r0, _080223BC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080223F2
	.align 2, 0
_080223BC: .4byte gCurTask
_080223C0: .4byte gUnknown_03005A20
_080223C4: .4byte gUnknown_03005AB0
_080223C8: .4byte gUnknown_03005088
_080223CC:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _080223EC
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #4
	strb r0, [r1]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	ldr r0, _080223F8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080223FC @ =sub_80222C0
	str r0, [r1, #8]
_080223EC:
	adds r0, r5, #0
	bl DisplaySprite
_080223F2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080223F8: .4byte gCurTask
_080223FC: .4byte sub_80222C0

	thumb_func_start CreateEntity_Spring_Small_Up
CreateEntity_Spring_Small_Up: @ 0x08022400
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	adds r4, r1, #0
	adds r5, r2, #0
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _080224E4 @ =sub_8022500
	ldr r1, _080224E8 @ =sub_802316C
	str r1, [sp]
	movs r1, #0x44
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r6, r0
	ldr r1, _080224EC @ =0x0300000C
	adds r7, r6, r1
	movs r2, #0
	mov sb, r2
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, sl
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #8]
	mov r2, r8
	strb r2, [r0, #9]
	mov r1, sl
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r7, #0x16]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r7, #0x18]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r1]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	mov r0, sb
	strh r0, [r7, #8]
	ldr r0, _080224F0 @ =0x000001C7
	strh r0, [r7, #0xa]
	ldr r2, _080224F4 @ =0x0300002C
	adds r1, r6, r2
	movs r0, #6
	strb r0, [r1]
	mov r0, sb
	strh r0, [r7, #0x14]
	strh r0, [r7, #0x1c]
	adds r2, #1
	adds r1, r6, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _080224F8 @ =0x0300002E
	adds r1, r6, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _080224FC @ =0x03000031
	adds r6, r6, r1
	movs r2, #0
	strb r2, [r6]
	subs r0, #0x11
	str r0, [r7, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x10]
	mov r1, sl
	ldrb r0, [r1, #2]
	cmp r0, #0xe
	bne _080224CE
	movs r0, #0x80
	lsls r0, r0, #3
	movs r2, #0x80
	lsls r2, r2, #6
	orrs r0, r2
	str r0, [r7, #0x10]
_080224CE:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080224E4: .4byte sub_8022500
_080224E8: .4byte sub_802316C
_080224EC: .4byte 0x0300000C
_080224F0: .4byte 0x000001C7
_080224F4: .4byte 0x0300002C
_080224F8: .4byte 0x0300002E
_080224FC: .4byte 0x03000031

	thumb_func_start sub_8022500
sub_8022500: @ 0x08022500
	push {r4, r5, r6, r7, lr}
	ldr r0, _08022574 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r7, [r6]
	movs r4, #0
_08022516:
	ldr r3, _08022578 @ =gUnknown_03005A20
	cmp r4, #0
	beq _0802251E
	ldr r3, _0802257C @ =gUnknown_03005AB0
_0802251E:
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_8022E14
	cmp r0, #0
	beq _08022534
	ldr r0, _08022574 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08022580 @ =sub_8022594
	str r0, [r1, #8]
_08022534:
	adds r4, #1
	ldr r0, _08022584 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _08022516
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08022566
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08022566
	movs r0, #0x18
	ldrsh r1, [r5, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08022588
_08022566:
	ldrb r0, [r6, #8]
	strb r0, [r7]
	ldr r0, _08022574 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0802258E
	.align 2, 0
_08022574: .4byte gCurTask
_08022578: .4byte gUnknown_03005A20
_0802257C: .4byte gUnknown_03005AB0
_08022580: .4byte sub_8022594
_08022584: .4byte gUnknown_03005088
_08022588:
	adds r0, r5, #0
	bl DisplaySprite
_0802258E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8022594
sub_8022594: @ 0x08022594
	push {r4, r5, r6, r7, lr}
	ldr r0, _080225FC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r7, [r6]
	movs r4, #0
_080225AA:
	ldr r3, _08022600 @ =gUnknown_03005A20
	cmp r4, #0
	beq _080225B2
	ldr r3, _08022604 @ =gUnknown_03005AB0
_080225B2:
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_8022E14
	adds r4, #1
	ldr r0, _08022608 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _080225AA
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080225EE
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _080225EE
	movs r0, #0x18
	ldrsh r1, [r5, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0802260C
_080225EE:
	ldrb r0, [r6, #8]
	strb r0, [r7]
	ldr r0, _080225FC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08022632
	.align 2, 0
_080225FC: .4byte gCurTask
_08022600: .4byte gUnknown_03005A20
_08022604: .4byte gUnknown_03005AB0
_08022608: .4byte gUnknown_03005088
_0802260C:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _0802262C
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #6
	strb r0, [r1]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	ldr r0, _08022638 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802263C @ =sub_8022500
	str r0, [r1, #8]
_0802262C:
	adds r0, r5, #0
	bl DisplaySprite
_08022632:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08022638: .4byte gCurTask
_0802263C: .4byte sub_8022500

	thumb_func_start sub_8022640
sub_8022640: @ 0x08022640
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	adds r7, r1, #0
	adds r4, r3, #0
	movs r0, #0
	mov sb, r0
	movs r6, #0
	ldrb r3, [r2, #8]
	lsls r3, r3, #3
	ldrh r0, [r2, #4]
	lsls r0, r0, #8
	adds r3, r3, r0
	lsls r3, r3, #0x10
	ldrb r1, [r7, #1]
	lsls r1, r1, #3
	ldrh r0, [r2, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r2, _08022764 @ =gCamera
	ldrh r0, [r2]
	lsrs r5, r3, #0x10
	mov sl, r5
	asrs r3, r3, #0x10
	subs r3, r3, r0
	mov r0, r8
	strh r3, [r0, #0x16]
	ldrh r0, [r2, #2]
	lsrs r2, r1, #0x10
	mov ip, r2
	asrs r1, r1, #0x10
	subs r1, r1, r0
	mov r5, r8
	strh r1, [r5, #0x18]
	ldr r0, _08022768 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _0802269A
	ldr r3, [r4, #0x10]
	cmp r0, #5
	bne _080226E2
_0802269A:
	movs r2, #0
	ldr r1, _0802276C @ =gMultiplayerPlayerTasks
	ldr r0, [r1]
	ldr r3, [r4, #0x10]
	cmp r0, #0
	beq _080226E2
	adds r5, r1, #0
_080226A8:
	ldr r0, _08022770 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r2, r0
	beq _080226CE
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x5c]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080226CE
	movs r6, #1
_080226CE:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bhi _080226E2
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r0, #0
	bne _080226A8
_080226E2:
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r3, r0
	cmp r3, #0
	beq _080226F2
	cmp r6, #0
	bne _080226F2
	b _080227F2
_080226F2:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r6, r0, #0x10
	mov r2, ip
	lsls r0, r2, #0x10
	asrs r5, r0, #0x10
	mov r0, r8
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_80096B0
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	bne _08022724
	mov r0, r8
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_800A768
	mov sb, r0
	cmp r0, #0
	beq _080227F2
_08022724:
	ldr r0, _08022768 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _08022730
	cmp r0, #5
	bne _08022734
_08022730:
	movs r0, #2
	strh r0, [r4, #0x1c]
_08022734:
	adds r0, r4, #0
	bl sub_8042848
	ldr r0, [r4, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	ldr r1, _08022774 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0
	strb r0, [r1]
	ldrb r2, [r7, #3]
	movs r0, #3
	ldrsb r0, [r7, r0]
	cmp r0, #3
	ble _08022778
	ldrb r0, [r7, #4]
	lsls r0, r0, #4
	b _08022784
	.align 2, 0
_08022764: .4byte gCamera
_08022768: .4byte gGameMode
_0802276C: .4byte gMultiplayerPlayerTasks
_08022770: .4byte 0x04000128
_08022774: .4byte 0xFFFFFEFF
_08022778:
	ldr r0, _080227B0 @ =gUnknown_080BB4F4
	movs r1, #3
	ands r1, r2
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
_08022784:
	rsbs r0, r0, #0
	strh r0, [r4, #0xa]
	mov r5, sb
	cmp r5, #0
	beq _08022798
	ldrh r1, [r4, #0xa]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x11
	adds r0, r0, r1
	strh r0, [r4, #0xa]
_08022798:
	ldrb r1, [r7, #3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080227B4
	adds r0, r4, #0
	bl sub_8046CEC
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x15
	b _080227C0
	.align 2, 0
_080227B0: .4byte gUnknown_080BB4F4
_080227B4:
	adds r0, r4, #0
	bl sub_8046CEC
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x11
_080227C0:
	strb r0, [r1]
	ldr r0, [r4, #0x64]
	adds r0, #0x2d
	movs r1, #0xff
	strb r1, [r0]
	mov r1, r8
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0xe
	bl sub_804516C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
	movs r0, #0xaa
	bl m4aSongNumStart
	movs r0, #1
	b _080227F4
_080227F2:
	movs r0, #0
_080227F4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8022804
sub_8022804: @ 0x08022804
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	adds r5, r3, #0
	ldrb r1, [r4, #8]
	lsls r1, r1, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r6, #1]
	lsls r2, r2, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _08022880 @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r1, r0
	strh r0, [r7, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	adds r3, r5, #0
	bl sub_80096B0
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _080228B8
	ldr r0, _08022884 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _08022858
	cmp r0, #5
	bne _0802285C
_08022858:
	movs r0, #2
	strh r0, [r5, #0x1c]
_0802285C:
	ldr r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	ldr r1, _08022888 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #0x10]
	adds r1, r5, #0
	adds r1, #0x3d
	movs r0, #0
	strb r0, [r1]
	ldrb r2, [r6, #3]
	movs r0, #3
	ldrsb r0, [r6, r0]
	cmp r0, #3
	ble _0802288C
	ldrb r0, [r6, #4]
	lsls r0, r0, #4
	b _08022898
	.align 2, 0
_08022880: .4byte gCamera
_08022884: .4byte gGameMode
_08022888: .4byte 0xFFFFFEFF
_0802288C:
	ldr r0, _080228B4 @ =gUnknown_080BB4F4
	movs r1, #3
	ands r1, r2
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
_08022898:
	strh r0, [r5, #0xa]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0xaa
	bl m4aSongNumStart
	movs r0, #1
	b _080228C8
	.align 2, 0
_080228B4: .4byte gUnknown_080BB4F4
_080228B8:
	movs r0, #0x28
	ands r0, r1
	cmp r0, #0
	beq _080228C6
	adds r0, r5, #0
	bl sub_8042848
_080228C6:
	movs r0, #0
_080228C8:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80228D0
sub_80228D0: @ 0x080228D0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	adds r6, r1, #0
	adds r4, r2, #0
	adds r5, r3, #0
	ldrb r1, [r4, #8]
	lsls r1, r1, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r6, #1]
	lsls r2, r2, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _0802295C @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r1, r0
	movs r4, #0
	mov sb, r4
	mov r4, r8
	strh r0, [r4, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r4, #0x18]
	mov r0, r8
	adds r3, r5, #0
	bl sub_800A850
	adds r4, r0, #0
	movs r7, #0x80
	lsls r7, r7, #0xa
	ands r7, r4
	cmp r7, #0
	beq _080229D2
	movs r1, #0xa
	ldr r0, _08022960 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _08022930
	movs r1, #8
_08022930:
	ldrb r2, [r6, #2]
	cmp r1, r2
	bne _080229B6
	cmp r0, #3
	beq _0802293E
	cmp r0, #5
	bne _08022942
_0802293E:
	movs r0, #2
	strh r0, [r5, #0x1c]
_08022942:
	ldrb r3, [r6, #3]
	movs r0, #3
	ldrsb r0, [r6, r0]
	cmp r0, #3
	ble _08022964
	ldrb r0, [r6, #4]
	lsls r0, r0, #4
	rsbs r0, r0, #0
	strh r0, [r5, #8]
	ldrb r0, [r6, #4]
	lsls r0, r0, #4
	b _08022980
	.align 2, 0
_0802295C: .4byte gCamera
_08022960: .4byte gGameMode
_08022964:
	ldr r2, _080229A0 @ =gUnknown_080BB4F4
	movs r1, #3
	adds r0, r1, #0
	ands r0, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	rsbs r0, r0, #0
	strh r0, [r5, #8]
	ldrb r0, [r6, #3]
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
_08022980:
	rsbs r0, r0, #0
	strh r0, [r5, #0xc]
	adds r0, r5, #0
	bl sub_8046CEC
	ldr r0, [r5, #0x10]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080229A4
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #5
	strb r0, [r1]
	b _080229AA
	.align 2, 0
_080229A0: .4byte gUnknown_080BB4F4
_080229A4:
	adds r0, r5, #0
	adds r0, #0x40
	strb r1, [r0]
_080229AA:
	movs r0, #0
	strb r0, [r5, #0x14]
	ldr r0, [r5, #0x10]
	movs r1, #1
	orrs r0, r1
	b _08022A62
_080229B6:
	adds r0, r5, #0
	bl sub_8042848
	movs r1, #0x20
	ands r4, r1
	cmp r4, #0
	beq _08022AA4
	ldr r0, [r5, #0x10]
	orrs r0, r1
	str r0, [r5, #0x10]
	mov r3, sb
	strh r3, [r5, #8]
	strh r3, [r5, #0xc]
	b _08022A94
_080229D2:
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r4
	cmp r0, #0
	beq _08022AA4
	movs r1, #0xb
	ldr r0, _08022A10 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _080229E8
	movs r1, #9
_080229E8:
	ldrb r2, [r6, #2]
	cmp r1, r2
	bne _08022A7C
	cmp r0, #3
	beq _080229F6
	cmp r0, #5
	bne _080229FA
_080229F6:
	movs r0, #2
	strh r0, [r5, #0x1c]
_080229FA:
	ldrb r3, [r6, #3]
	movs r0, #3
	ldrsb r0, [r6, r0]
	cmp r0, #3
	ble _08022A14
	ldrb r0, [r6, #4]
	lsls r0, r0, #4
	strh r0, [r5, #8]
	ldrb r0, [r6, #4]
	lsls r0, r0, #4
	b _08022A2E
	.align 2, 0
_08022A10: .4byte gGameMode
_08022A14:
	ldr r2, _08022A4C @ =gUnknown_080BB4F4
	movs r1, #3
	adds r0, r1, #0
	ands r0, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r5, #8]
	ldrb r0, [r6, #3]
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
_08022A2E:
	strh r0, [r5, #0xc]
	adds r0, r5, #0
	bl sub_8046CEC
	ldr r0, [r5, #0x10]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08022A50
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #5
	strb r0, [r1]
	b _08022A56
	.align 2, 0
_08022A4C: .4byte gUnknown_080BB4F4
_08022A50:
	adds r0, r5, #0
	adds r0, #0x40
	strb r1, [r0]
_08022A56:
	movs r0, #0
	strb r0, [r5, #0x14]
	ldr r0, [r5, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_08022A62:
	str r0, [r5, #0x10]
	mov r1, r8
	adds r1, #0x20
	movs r0, #3
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0xaa
	bl m4aSongNumStart
	movs r0, #1
	b _08022AA6
_08022A7C:
	adds r0, r5, #0
	bl sub_8042848
	movs r1, #0x20
	ands r4, r1
	cmp r4, #0
	beq _08022AA4
	ldr r0, [r5, #0x10]
	orrs r0, r1
	str r0, [r5, #0x10]
	strh r7, [r5, #8]
	strh r7, [r5, #0xc]
_08022A94:
	adds r0, r5, #0
	movs r1, #0xe
	bl sub_804516C
	movs r0, #6
	strb r0, [r5, #0xe]
	movs r0, #0xe
	strb r0, [r5, #0xf]
_08022AA4:
	movs r0, #0
_08022AA6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8022AB4
sub_8022AB4: @ 0x08022AB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sb, r0
	mov r8, r1
	adds r5, r2, #0
	adds r6, r3, #0
	ldrb r4, [r6, #0xe]
	adds r4, #6
	rsbs r0, r4, #0
	add r1, sp, #4
	strb r0, [r1]
	ldrb r2, [r6, #0xf]
	adds r2, #1
	rsbs r3, r2, #0
	mov r0, sp
	adds r0, #5
	strb r3, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r2, [r0]
	mov r0, sp
	movs r2, #4
	bl memcpy
	ldrb r2, [r5, #8]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	mov r1, r8
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	ldrh r1, [r5, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r1, _08022C5C @ =gCamera
	ldrh r0, [r1]
	lsrs r3, r2, #0x10
	mov sl, r3
	asrs r4, r2, #0x10
	subs r0, r4, r0
	mov r2, sb
	strh r0, [r2, #0x16]
	ldrh r0, [r1, #2]
	ldr r3, [sp, #8]
	lsls r5, r3, #0x10
	asrs r2, r5, #0x10
	subs r0, r2, r0
	mov r1, sb
	strh r0, [r1, #0x18]
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08022B36
	b _08022E00
_08022B36:
	mov r0, sb
	adds r1, r4, #0
	adds r3, r6, #0
	bl sub_800A768
	mov ip, r0
	cmp r0, #0
	bne _08022BDA
	mov r0, sb
	adds r0, #0x34
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r2, r4, r3
	ldr r0, [r6]
	asrs r0, r0, #8
	mov r1, sp
	movs r7, #0
	ldrsb r7, [r1, r7]
	adds r1, r0, r7
	cmp r2, r1
	bgt _08022B7A
	mov r0, sb
	adds r0, #0x36
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _08022B8E
	adds r4, r5, #0
	cmp r2, r1
	bge _08022B7A
	b _08022DF0
_08022B7A:
	mov r0, sp
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r1, r0
	adds r4, r5, #0
	cmp r0, r2
	bge _08022B8E
	b _08022DF0
_08022B8E:
	ldr r3, [sp, #8]
	lsls r2, r3, #0x10
	asrs r0, r2, #0x10
	mov r1, sb
	adds r1, #0x35
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r3, r0, r5
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	mov r1, sp
	movs r7, #1
	ldrsb r7, [r1, r7]
	adds r1, r0, r7
	adds r4, r2, #0
	cmp r3, r1
	bgt _08022BC8
	mov r0, sb
	adds r0, #0x37
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r3, r0
	cmp r0, r1
	bge _08022BDA
	cmp r3, r1
	bge _08022BC8
	b _08022DF0
_08022BC8:
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r1, r0
	cmp r0, r3
	bge _08022BDA
	b _08022DF0
_08022BDA:
	movs r3, #0xc
	ldr r0, [r6, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0xc
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, _08022C60 @ =gGameMode
	ldrb r2, [r0]
	adds r4, r0, #0
	cmp r2, #6
	bne _08022BF6
	movs r3, #0xa
_08022BF6:
	mov r0, r8
	ldrb r0, [r0, #2]
	cmp r3, r0
	bne _08022CD8
	mov r1, ip
	cmp r1, #0
	bne _08022C16
	mov r3, sl
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r6]
	asrs r0, r0, #8
	adds r0, #0x14
	subs r1, r1, r0
	cmp r1, #0
	ble _08022CD8
_08022C16:
	cmp r2, #3
	beq _08022C1E
	cmp r2, #5
	bne _08022C22
_08022C1E:
	movs r0, #2
	strh r0, [r6, #0x1c]
_08022C22:
	ldr r0, [r6, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	ldr r1, _08022C64 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r6, #0x10]
	adds r1, r6, #0
	adds r1, #0x3d
	movs r0, #0
	strb r0, [r1]
	mov r0, r8
	ldrb r3, [r0, #3]
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	ble _08022C68
	mov r1, r8
	ldrb r0, [r1, #4]
	lsls r0, r0, #4
	rsbs r0, r0, #0
	strh r0, [r6, #0xa]
	ldrb r0, [r1, #4]
	lsls r0, r0, #4
	b _08022C86
	.align 2, 0
_08022C5C: .4byte gCamera
_08022C60: .4byte gGameMode
_08022C64: .4byte 0xFFFFFEFF
_08022C68:
	ldr r2, _08022CD0 @ =gUnknown_080BB4F4
	movs r1, #3
	adds r0, r1, #0
	ands r0, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	rsbs r0, r0, #0
	strh r0, [r6, #0xa]
	mov r3, r8
	ldrb r0, [r3, #3]
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
_08022C86:
	rsbs r0, r0, #0
	strh r0, [r6, #8]
	mov r0, ip
	cmp r0, #0
	beq _08022CA4
	ldrh r1, [r6, #8]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x11
	adds r1, r1, r0
	strh r1, [r6, #8]
	ldrh r1, [r6, #0xa]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x11
	adds r1, r1, r0
	strh r1, [r6, #0xa]
_08022CA4:
	ldr r0, _08022CD4 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08022CB6
	ldrh r0, [r6, #0xa]
	rsbs r0, r0, #0
	strh r0, [r6, #0xa]
_08022CB6:
	mov r2, r8
	ldrb r1, [r2, #3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08022DA8
	adds r0, r6, #0
	bl sub_8046CEC
	adds r1, r6, #0
	adds r1, #0x40
	movs r0, #0x15
	b _08022DB4
	.align 2, 0
_08022CD0: .4byte gUnknown_080BB4F4
_08022CD4: .4byte gUnknown_03005004
_08022CD8:
	mov r3, ip
	cmp r3, #0
	bne _08022CF0
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	ldr r0, [r6]
	asrs r0, r0, #8
	subs r0, r1, r0
	adds r0, #0x14
	cmp r0, #0
	bge _08022DE0
_08022CF0:
	ldrb r0, [r4]
	cmp r0, #3
	beq _08022CFA
	cmp r0, #5
	bne _08022CFE
_08022CFA:
	movs r0, #2
	strh r0, [r6, #0x1c]
_08022CFE:
	ldr r0, [r6, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	ldr r1, _08022D34 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r6, #0x10]
	adds r1, r6, #0
	adds r1, #0x3d
	movs r0, #0
	strb r0, [r1]
	mov r2, r8
	ldrb r3, [r2, #3]
	movs r0, #3
	ldrsb r0, [r2, r0]
	cmp r0, #3
	ble _08022D38
	ldrb r0, [r2, #4]
	lsls r0, r0, #4
	rsbs r0, r0, #0
	strh r0, [r6, #0xa]
	ldrb r0, [r2, #4]
	lsls r0, r0, #4
	b _08022D56
	.align 2, 0
_08022D34: .4byte 0xFFFFFEFF
_08022D38:
	ldr r2, _08022DA0 @ =gUnknown_080BB4F4
	movs r1, #3
	adds r0, r1, #0
	ands r0, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	rsbs r0, r0, #0
	strh r0, [r6, #0xa]
	mov r3, r8
	ldrb r0, [r3, #3]
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
_08022D56:
	strh r0, [r6, #8]
	mov r0, ip
	cmp r0, #0
	beq _08022D72
	ldrh r1, [r6, #8]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x11
	adds r1, r1, r0
	strh r1, [r6, #8]
	ldrh r1, [r6, #0xa]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x11
	adds r1, r1, r0
	strh r1, [r6, #0xa]
_08022D72:
	ldr r0, _08022DA4 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08022D84
	ldrh r0, [r6, #0xa]
	rsbs r0, r0, #0
	strh r0, [r6, #0xa]
_08022D84:
	mov r2, r8
	ldrb r1, [r2, #3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08022DA8
	adds r0, r6, #0
	bl sub_8046CEC
	adds r1, r6, #0
	adds r1, #0x40
	movs r0, #0x15
	b _08022DB4
	.align 2, 0
_08022DA0: .4byte gUnknown_080BB4F4
_08022DA4: .4byte gUnknown_03005004
_08022DA8:
	adds r0, r6, #0
	bl sub_8046CEC
	adds r1, r6, #0
	adds r1, #0x40
	movs r0, #0x11
_08022DB4:
	strb r0, [r1]
	ldr r0, [r6, #0x64]
	adds r0, #0x2d
	movs r1, #0xff
	strb r1, [r0]
	mov r1, sb
	adds r1, #0x20
	movs r0, #5
	strb r0, [r1]
	adds r0, r6, #0
	movs r1, #0xe
	bl sub_804516C
	movs r0, #6
	strb r0, [r6, #0xe]
	movs r0, #0xe
	strb r0, [r6, #0xf]
	movs r0, #0xaa
	bl m4aSongNumStart
	movs r0, #1
	b _08022E02
_08022DE0:
	ldr r3, [sp, #8]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	mov r0, sb
	adds r3, r6, #0
	bl sub_80096B0
	b _08022E00
_08022DF0:
	mov r0, sl
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	asrs r2, r4, #0x10
	mov r0, sb
	adds r3, r6, #0
	bl sub_80096B0
_08022E00:
	movs r0, #0
_08022E02:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8022E14
sub_8022E14: @ 0x08022E14
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sb, r0
	mov r8, r1
	adds r5, r2, #0
	adds r6, r3, #0
	ldrb r4, [r6, #0xe]
	adds r4, #6
	rsbs r0, r4, #0
	add r1, sp, #4
	strb r0, [r1]
	ldrb r2, [r6, #0xf]
	adds r2, #1
	rsbs r3, r2, #0
	mov r0, sp
	adds r0, #5
	strb r3, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r2, [r0]
	mov r0, sp
	movs r2, #4
	bl memcpy
	ldrb r2, [r5, #8]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	mov r1, r8
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	ldrh r1, [r5, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r1, _08022FB0 @ =gCamera
	ldrh r0, [r1]
	lsrs r3, r2, #0x10
	mov sl, r3
	asrs r4, r2, #0x10
	subs r0, r4, r0
	mov r2, sb
	strh r0, [r2, #0x16]
	ldrh r0, [r1, #2]
	ldr r3, [sp, #8]
	lsls r5, r3, #0x10
	asrs r2, r5, #0x10
	subs r0, r2, r0
	mov r1, sb
	strh r0, [r1, #0x18]
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08022E96
	b _08023158
_08022E96:
	mov r0, sb
	adds r1, r4, #0
	adds r3, r6, #0
	bl sub_800A768
	mov ip, r0
	cmp r0, #0
	bne _08022F3A
	mov r0, sb
	adds r0, #0x34
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r2, r4, r3
	ldr r0, [r6]
	asrs r0, r0, #8
	mov r1, sp
	movs r7, #0
	ldrsb r7, [r1, r7]
	adds r1, r0, r7
	cmp r2, r1
	bgt _08022EDA
	mov r0, sb
	adds r0, #0x36
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _08022EEE
	adds r4, r5, #0
	cmp r2, r1
	bge _08022EDA
	b _08023148
_08022EDA:
	mov r0, sp
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r1, r0
	adds r4, r5, #0
	cmp r0, r2
	bge _08022EEE
	b _08023148
_08022EEE:
	ldr r3, [sp, #8]
	lsls r2, r3, #0x10
	asrs r0, r2, #0x10
	mov r1, sb
	adds r1, #0x35
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r3, r0, r5
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	mov r1, sp
	movs r7, #1
	ldrsb r7, [r1, r7]
	adds r1, r0, r7
	adds r4, r2, #0
	cmp r3, r1
	bgt _08022F28
	mov r0, sb
	adds r0, #0x37
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r3, r0
	cmp r0, r1
	bge _08022F3A
	cmp r3, r1
	bge _08022F28
	b _08023148
_08022F28:
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r1, r0
	cmp r0, r3
	bge _08022F3A
	b _08023148
_08022F3A:
	ldr r0, [r6, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0xc
	ands r0, r1
	str r0, [r6, #0x10]
	mov r1, r8
	ldrb r0, [r1, #2]
	cmp r0, #0xe
	bne _0802302C
	mov r2, ip
	cmp r2, #0
	bne _08022F68
	mov r3, sl
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r6]
	asrs r0, r0, #8
	adds r0, #0x14
	subs r1, r1, r0
	cmp r1, #0
	ble _0802302C
_08022F68:
	ldr r0, _08022FB4 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _08022F74
	cmp r0, #5
	bne _08022F78
_08022F74:
	movs r0, #2
	strh r0, [r6, #0x1c]
_08022F78:
	ldr r0, [r6, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	ldr r1, _08022FB8 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r6, #0x10]
	adds r1, r6, #0
	adds r1, #0x3d
	movs r0, #0
	strb r0, [r1]
	mov r0, r8
	ldrb r3, [r0, #3]
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	ble _08022FBC
	mov r1, r8
	ldrb r0, [r1, #4]
	lsls r0, r0, #4
	rsbs r0, r0, #0
	strh r0, [r6, #0xa]
	ldrb r0, [r1, #4]
	lsls r0, r0, #4
	b _08022FDA
	.align 2, 0
_08022FB0: .4byte gCamera
_08022FB4: .4byte gGameMode
_08022FB8: .4byte 0xFFFFFEFF
_08022FBC:
	ldr r2, _08023024 @ =gUnknown_080BB4F4
	movs r1, #3
	adds r0, r1, #0
	ands r0, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	rsbs r0, r0, #0
	strh r0, [r6, #0xa]
	mov r3, r8
	ldrb r0, [r3, #3]
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
_08022FDA:
	rsbs r0, r0, #0
	strh r0, [r6, #8]
	mov r0, ip
	cmp r0, #0
	beq _08022FF8
	ldrh r1, [r6, #8]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x11
	adds r1, r1, r0
	strh r1, [r6, #8]
	ldrh r1, [r6, #0xa]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x11
	adds r1, r1, r0
	strh r1, [r6, #0xa]
_08022FF8:
	ldr r0, _08023028 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802300A
	ldrh r0, [r6, #0xa]
	rsbs r0, r0, #0
	strh r0, [r6, #0xa]
_0802300A:
	mov r2, r8
	ldrb r1, [r2, #3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08023100
	adds r0, r6, #0
	bl sub_8046CEC
	adds r1, r6, #0
	adds r1, #0x40
	movs r0, #0x15
	b _0802310C
	.align 2, 0
_08023024: .4byte gUnknown_080BB4F4
_08023028: .4byte gUnknown_03005004
_0802302C:
	mov r3, ip
	cmp r3, #0
	bne _08023044
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	ldr r0, [r6]
	asrs r0, r0, #8
	subs r0, r1, r0
	adds r0, #0x14
	cmp r0, #0
	bge _08023138
_08023044:
	ldr r0, _08023088 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _08023050
	cmp r0, #5
	bne _08023054
_08023050:
	movs r0, #2
	strh r0, [r6, #0x1c]
_08023054:
	ldr r0, [r6, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	ldr r1, _0802308C @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r6, #0x10]
	adds r1, r6, #0
	adds r1, #0x3d
	movs r0, #0
	strb r0, [r1]
	mov r2, r8
	ldrb r3, [r2, #3]
	movs r0, #3
	ldrsb r0, [r2, r0]
	cmp r0, #3
	ble _08023090
	ldrb r0, [r2, #4]
	lsls r0, r0, #4
	rsbs r0, r0, #0
	strh r0, [r6, #0xa]
	ldrb r0, [r2, #4]
	lsls r0, r0, #4
	b _080230AE
	.align 2, 0
_08023088: .4byte gGameMode
_0802308C: .4byte 0xFFFFFEFF
_08023090:
	ldr r2, _080230F8 @ =gUnknown_080BB4F4
	movs r1, #3
	adds r0, r1, #0
	ands r0, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	rsbs r0, r0, #0
	strh r0, [r6, #0xa]
	mov r3, r8
	ldrb r0, [r3, #3]
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
_080230AE:
	strh r0, [r6, #8]
	mov r0, ip
	cmp r0, #0
	beq _080230CA
	ldrh r1, [r6, #8]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x11
	adds r1, r1, r0
	strh r1, [r6, #8]
	ldrh r1, [r6, #0xa]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x11
	adds r1, r1, r0
	strh r1, [r6, #0xa]
_080230CA:
	ldr r0, _080230FC @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080230DC
	ldrh r0, [r6, #0xa]
	rsbs r0, r0, #0
	strh r0, [r6, #0xa]
_080230DC:
	mov r2, r8
	ldrb r1, [r2, #3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08023100
	adds r0, r6, #0
	bl sub_8046CEC
	adds r1, r6, #0
	adds r1, #0x40
	movs r0, #0x15
	b _0802310C
	.align 2, 0
_080230F8: .4byte gUnknown_080BB4F4
_080230FC: .4byte gUnknown_03005004
_08023100:
	adds r0, r6, #0
	bl sub_8046CEC
	adds r1, r6, #0
	adds r1, #0x40
	movs r0, #0x11
_0802310C:
	strb r0, [r1]
	ldr r0, [r6, #0x64]
	adds r0, #0x2d
	movs r1, #0xff
	strb r1, [r0]
	mov r1, sb
	adds r1, #0x20
	movs r0, #7
	strb r0, [r1]
	adds r0, r6, #0
	movs r1, #0xe
	bl sub_804516C
	movs r0, #6
	strb r0, [r6, #0xe]
	movs r0, #0xe
	strb r0, [r6, #0xf]
	movs r0, #0xaa
	bl m4aSongNumStart
	movs r0, #1
	b _0802315A
_08023138:
	ldr r3, [sp, #8]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	mov r0, sb
	adds r3, r6, #0
	bl sub_80096B0
	b _08023158
_08023148:
	mov r0, sl
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	asrs r2, r4, #0x10
	mov r0, sb
	adds r3, r6, #0
	bl sub_80096B0
_08023158:
	movs r0, #0
_0802315A:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_802316C
sub_802316C: @ 0x0802316C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

    @ Apparently only stone in SA1(?)
	thumb_func_start CreateEntity_Decoration
CreateEntity_Decoration: @ 0x08023180
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	adds r4, r1, #0
	adds r6, r2, #0
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _08023250 @ =sub_802326C
	ldr r1, _08023254 @ =TaskDestructor_8009670
	str r1, [sp]
	movs r1, #0x3c
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r1, _08023258 @ =0x0300000C
	adds r5, r2, r1
	movs r7, #0
	movs r3, #0
	mov sl, r3
	strh r4, [r0, #4]
	strh r6, [r0, #6]
	mov r1, sb
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #8]
	mov r3, r8
	strb r3, [r0, #9]
	mov r1, sb
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r5, #0x16]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	lsls r6, r6, #8
	adds r0, r0, r6
	strh r0, [r5, #0x18]
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	strb r0, [r1]
	movs r0, #0x18
	str r2, [sp, #4]
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	mov r0, sl
	strh r0, [r5, #8]
	movs r0, #0xe5
	lsls r0, r0, #1
	strh r0, [r5, #0xa]
	ldr r2, [sp, #4]
	ldr r1, _0802325C @ =0x0300002C
	adds r0, r2, r1
	strb r7, [r0]
	mov r3, sl
	strh r3, [r5, #0x14]
	strh r3, [r5, #0x1c]
	ldr r0, _08023260 @ =0x0300002D
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r3, _08023264 @ =0x0300002E
	adds r1, r2, r3
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _08023268 @ =0x03000031
	adds r2, r2, r0
	strb r7, [r2]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023250: .4byte sub_802326C
_08023254: .4byte TaskDestructor_8009670
_08023258: .4byte 0x0300000C
_0802325C: .4byte 0x0300002C
_08023260: .4byte 0x0300002D
_08023264: .4byte 0x0300002E
_08023268: .4byte 0x03000031

	thumb_func_start sub_802326C
sub_802326C: @ 0x0802326C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08023328 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov sl, r0
	ldr r0, _0802332C @ =0x0300000C
	adds r6, r1, r0
	mov r1, sl
	ldr r1, [r1]
	str r1, [sp]
	mov r3, sl
	ldrb r2, [r3, #8]
	lsls r2, r2, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _08023330 @ =gCamera
	ldrh r0, [r3]
	lsrs r7, r2, #0x10
	asrs r5, r2, #0x10
	subs r0, r5, r0
	strh r0, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsrs r2, r1, #0x10
	asrs r4, r1, #0x10
	subs r0, r4, r0
	strh r0, [r6, #0x18]
	ldr r0, _08023334 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _08023344
	ldr r0, [sp]
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #3
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08023344
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_801FED0
	movs r0, #0x8a
	bl m4aSongNumStart
	ldr r1, _08023338 @ =gUnknown_0300120C
	ldrh r0, [r6, #0x16]
	strh r0, [r1]
	ldr r2, _0802333C @ =gUnknown_030020C0
	ldrh r1, [r6, #0x18]
	strh r1, [r2]
	subs r0, r5, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, r4, r1
	subs r1, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_80234D0
	ldr r2, _08023340 @ =gUnknown_03005A20
	ldr r1, [r2, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08023310
	b _0802349C
_08023310:
	ldr r0, [r2, #0x28]
	cmp r0, r6
	beq _08023318
	b _0802349C
_08023318:
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r2, #0x10]
	b _0802349C
	.align 2, 0
_08023328: .4byte gCurTask
_0802332C: .4byte 0x0300000C
_08023330: .4byte gCamera
_08023334: .4byte gGameMode
_08023338: .4byte gUnknown_0300120C
_0802333C: .4byte gUnknown_030020C0
_08023340: .4byte gUnknown_03005A20
_08023344:
	lsls r5, r7, #0x10
	asrs r1, r5, #0x10
	mov r8, r1
	lsls r4, r2, #0x10
	asrs r7, r4, #0x10
	ldr r3, _08023430 @ =gUnknown_03005A20
	mov sb, r3
	adds r0, r6, #0
	adds r2, r7, #0
	bl sub_800C394
	cmp r0, #0
	bne _08023398
	mov r0, sb
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	bne _0802337C
	adds r0, r6, #0
	mov r1, r8
	adds r2, r7, #0
	mov r3, sb
	bl sub_800A768
	cmp r0, #0
	bne _08023398
_0802337C:
	ldr r0, _08023434 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08023448
	ldr r3, _08023438 @ =gUnknown_03005AB0
	adds r0, r6, #0
	mov r1, r8
	adds r2, r7, #0
	bl sub_800C394
	cmp r0, #0
	beq _08023448
_08023398:
	asrs r0, r5, #0x10
	asrs r1, r4, #0x10
	bl sub_801FED0
	ldr r2, _08023430 @ =gUnknown_03005A20
	ldr r1, [r2, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080233BE
	ldr r0, [r2, #0x28]
	cmp r0, r6
	bne _080233BE
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r2, #0x10]
_080233BE:
	ldr r0, _08023434 @ =gUnknown_03005088
	movs r3, #0
	ldrsb r3, [r0, r3]
	cmp r3, #2
	bne _080233E4
	ldr r2, _08023438 @ =gUnknown_03005AB0
	ldr r1, [r2, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080233E4
	ldr r0, [r2, #0x28]
	cmp r0, r6
	bne _080233E4
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	orrs r1, r3
	str r1, [r2, #0x10]
_080233E4:
	movs r0, #0x8a
	bl m4aSongNumStart
	ldr r0, _0802343C @ =gUnknown_0300120C
	ldrh r1, [r6, #0x16]
	strh r1, [r0]
	ldr r0, _08023440 @ =gUnknown_030020C0
	ldrh r2, [r6, #0x18]
	strh r2, [r0]
	asrs r0, r5, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	asrs r1, r4, #0x10
	subs r1, r1, r2
	subs r1, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_80234D0
	ldr r0, _08023444 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0802349C
	bl sub_80182FC
	movs r2, #0
	movs r1, #1
	strb r1, [r0]
	mov r3, sl
	ldrh r1, [r3, #4]
	strb r1, [r0, #1]
	ldrh r1, [r3, #6]
	strb r1, [r0, #2]
	ldrb r1, [r3, #9]
	strb r1, [r0, #3]
	strb r2, [r0, #4]
	b _0802349C
	.align 2, 0
_08023430: .4byte gUnknown_03005A20
_08023434: .4byte gUnknown_03005088
_08023438: .4byte gUnknown_03005AB0
_0802343C: .4byte gUnknown_0300120C
_08023440: .4byte gUnknown_030020C0
_08023444: .4byte gGameMode
_08023448:
	asrs r5, r5, #0x10
	asrs r4, r4, #0x10
	ldr r3, _080234A8 @ =gUnknown_03005A20
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80096B0
	ldr r0, _080234AC @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08023470
	ldr r3, _080234B0 @ =gUnknown_03005AB0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80096B0
_08023470:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08023494
	movs r1, #0x18
	ldrsh r0, [r6, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08023494
	movs r3, #0x18
	ldrsh r1, [r6, r3]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _080234B8
_08023494:
	mov r1, sl
	ldrb r0, [r1, #8]
	ldr r3, [sp]
	strb r0, [r3]
_0802349C:
	ldr r0, _080234B4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080234BE
	.align 2, 0
_080234A8: .4byte gUnknown_03005A20
_080234AC: .4byte gUnknown_03005088
_080234B0: .4byte gUnknown_03005AB0
_080234B4: .4byte gCurTask
_080234B8:
	adds r0, r6, #0
	bl DisplaySprite
_080234BE:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80234D0
sub_80234D0: @ 0x080234D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	mov sb, r1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r0, sb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r0, _08023648 @ =sub_8023698
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _0802364C @ =sub_80238E0
	str r1, [sp]
	movs r1, #0xf4
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r6, r5
	ldr r1, _08023650 @ =0x030000C0
	adds r2, r6, r1
	adds r1, #0x30
	adds r0, r6, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	ldr r0, _08023654 @ =0x030000F2
	adds r1, r6, r0
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r1]
	movs r0, #1
	str r2, [sp, #4]
	bl VramMalloc
	str r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r5, #0x1a]
	mov r0, r8
	strh r0, [r5, #8]
	ldr r0, _08023658 @ =0x000001CB
	strh r0, [r5, #0xa]
	ldr r1, _0802365C @ =0x03000020
	adds r0, r6, r1
	movs r1, #0
	strb r1, [r0]
	mov r0, r8
	strh r0, [r5, #0x14]
	strh r0, [r5, #0x1c]
	ldr r0, _08023660 @ =0x03000021
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08023664 @ =0x03000022
	adds r0, r6, r1
	movs r1, #0x10
	strb r1, [r0]
	ldr r1, _08023668 @ =0x03000025
	adds r0, r6, r1
	movs r1, #0
	strb r1, [r0]
	movs r0, #0x70
	str r0, [r5, #0x10]
	ldr r2, [sp, #4]
	mov r0, r8
	strh r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	strh r4, [r2, #6]
	mov r1, sb
	strh r1, [r2, #8]
	adds r0, r5, #0
	str r2, [sp, #4]
	bl UpdateSpriteAnimation
	ldr r4, _0802366C @ =0x040000D4
	str r5, [r4]
	ldr r0, _08023670 @ =0x03000030
	adds r7, r6, r0
	str r7, [r4, #4]
	ldr r1, _08023674 @ =0x80000018
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	ldr r2, [sp, #4]
	str r2, [r4]
	ldr r0, _08023678 @ =0x030000CC
	adds r2, r6, r0
	str r2, [r4, #4]
	subs r1, #0x12
	mov sl, r1
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	movs r0, #0x71
	str r0, [r7, #0x10]
	mov r0, sb
	lsls r5, r0, #0x10
	asrs r5, r5, #0x10
	subs r5, #0x10
	strh r5, [r2, #8]
	ldr r1, _0802367C @ =0x03000060
	adds r7, r6, r1
	str r2, [r4]
	ldr r0, _08023680 @ =0x030000D8
	adds r2, r6, r0
	str r2, [r4, #4]
	mov r1, sl
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	movs r0, #4
	str r2, [sp, #4]
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r7, #0x1a]
	mov r1, r8
	strh r1, [r7, #8]
	subs r0, #0x34
	strh r0, [r7, #0xa]
	ldr r1, _08023684 @ =0x03000080
	adds r0, r6, r1
	movs r1, #0
	strb r1, [r0]
	mov r0, r8
	strh r0, [r7, #0x14]
	strh r0, [r7, #0x1c]
	ldr r0, _08023688 @ =0x03000081
	adds r1, r6, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _0802368C @ =0x03000082
	adds r0, r6, r1
	movs r1, #0x10
	strb r1, [r0]
	ldr r1, _08023690 @ =0x03000085
	adds r0, r6, r1
	movs r1, #0
	strb r1, [r0]
	movs r0, #0x72
	str r0, [r7, #0x10]
	ldr r2, [sp, #4]
	mov r0, sb
	strh r0, [r2, #8]
	adds r0, r7, #0
	str r2, [sp, #4]
	bl UpdateSpriteAnimation
	str r7, [r4]
	ldr r1, _08023694 @ =0x03000090
	adds r7, r6, r1
	str r7, [r4, #4]
	ldr r0, _08023674 @ =0x80000018
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r2, [sp, #4]
	str r2, [r4]
	adds r1, #0x54
	adds r2, r6, r1
	str r2, [r4, #4]
	mov r0, sl
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r0, #0x73
	str r0, [r7, #0x10]
	strh r5, [r2, #8]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023648: .4byte sub_8023698
_0802364C: .4byte sub_80238E0
_08023650: .4byte 0x030000C0
_08023654: .4byte 0x030000F2
_08023658: .4byte 0x000001CB
_0802365C: .4byte 0x03000020
_08023660: .4byte 0x03000021
_08023664: .4byte 0x03000022
_08023668: .4byte 0x03000025
_0802366C: .4byte 0x040000D4
_08023670: .4byte 0x03000030
_08023674: .4byte 0x80000018
_08023678: .4byte 0x030000CC
_0802367C: .4byte 0x03000060
_08023680: .4byte 0x030000D8
_08023684: .4byte 0x03000080
_08023688: .4byte 0x03000081
_0802368C: .4byte 0x03000082
_08023690: .4byte 0x03000085
_08023694: .4byte 0x03000090

	thumb_func_start sub_8023698
sub_8023698: @ 0x08023698
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _080236D0 @ =gCurTask
	ldr r2, [r0]
	ldrh r0, [r2, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r1, r8
	adds r7, r1, r0
	ldr r3, _080236D4 @ =0x030000F0
	add r3, r8
	str r3, [sp]
	ldrh r0, [r3]
	adds r1, r0, #1
	strh r1, [r3]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bls _080236D8
	adds r0, r2, #0
	bl TaskDestroy
	b _080238A8
	.align 2, 0
_080236D0: .4byte gCurTask
_080236D4: .4byte 0x030000F0
_080236D8:
	ldr r0, _080238B8 @ =0x030000F2
	add r0, r8
	str r0, [sp, #4]
	ldrh r0, [r0]
	adds r0, #0x28
	ldr r1, [sp, #4]
	strh r0, [r1]
	ldr r6, _080238BC @ =0x030000C0
	add r6, r8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r2, [r6, #8]
	adds r0, r0, r2
	strh r0, [r6, #8]
	ldrh r5, [r6, #6]
	ldrh r3, [r6, #8]
	mov sb, r3
	ldr r1, _080238C0 @ =gCamera
	ldrh r2, [r1]
	subs r2, r5, r2
	strh r2, [r6, #6]
	ldrh r1, [r1, #2]
	subs r0, r0, r1
	strh r0, [r6, #8]
	ldr r3, [sp]
	ldrh r0, [r3]
	lsls r0, r0, #1
	subs r2, r2, r0
	strh r2, [r6, #6]
	ldrh r0, [r6, #2]
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #2
	cmp r0, r1
	ble _08023726
	adds r4, r1, #0
_08023726:
	strh r4, [r6, #2]
	strh r4, [r6, #4]
	ldrh r0, [r6]
	subs r0, #0x2a
	strh r0, [r6]
	ldr r0, [r7, #0x10]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	ldr r2, _080238C4 @ =gUnknown_0300504C
	mov sl, r2
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r7, #0x10]
	orrs r0, r1
	str r0, [r7, #0x10]
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_8003D84
	adds r0, r7, #0
	bl DisplaySprite
	strh r5, [r6, #6]
	mov r3, sb
	strh r3, [r6, #8]
	ldr r7, _080238C8 @ =0x03000030
	add r7, r8
	ldr r6, _080238CC @ =0x030000CC
	add r6, r8
	ldr r1, [sp, #4]
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r2, [r6, #8]
	adds r0, r0, r2
	strh r0, [r6, #8]
	ldrh r5, [r6, #6]
	ldrh r3, [r6, #8]
	mov sb, r3
	ldr r1, _080238C0 @ =gCamera
	ldrh r2, [r1]
	subs r2, r5, r2
	strh r2, [r6, #6]
	ldrh r1, [r1, #2]
	subs r0, r0, r1
	strh r0, [r6, #8]
	ldr r3, [sp]
	ldrh r0, [r3]
	adds r2, r2, r0
	strh r2, [r6, #6]
	strh r4, [r6, #2]
	strh r4, [r6, #4]
	ldrh r0, [r6]
	adds r0, #0x2a
	strh r0, [r6]
	ldr r0, [r7, #0x10]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	mov r2, sl
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r7, #0x10]
	orrs r0, r1
	str r0, [r7, #0x10]
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_8003D84
	adds r0, r7, #0
	bl DisplaySprite
	strh r5, [r6, #6]
	mov r3, sb
	strh r3, [r6, #8]
	ldr r7, _080238D0 @ =0x03000060
	add r7, r8
	ldr r6, _080238D4 @ =0x030000D8
	add r6, r8
	ldr r1, [sp, #4]
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r2, [r6, #8]
	adds r0, r0, r2
	strh r0, [r6, #8]
	ldrh r5, [r6, #6]
	ldrh r3, [r6, #8]
	mov sb, r3
	ldr r1, _080238C0 @ =gCamera
	ldrh r2, [r1]
	subs r2, r5, r2
	strh r2, [r6, #6]
	ldrh r1, [r1, #2]
	subs r0, r0, r1
	strh r0, [r6, #8]
	ldr r3, [sp]
	ldrh r0, [r3]
	lsls r0, r0, #1
	adds r2, r2, r0
	strh r2, [r6, #6]
	strh r4, [r6, #2]
	strh r4, [r6, #4]
	ldrh r0, [r6]
	adds r0, #0xe
	strh r0, [r6]
	ldr r0, [r7, #0x10]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	mov r2, sl
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r7, #0x10]
	orrs r0, r1
	str r0, [r7, #0x10]
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_8003D84
	adds r0, r7, #0
	bl DisplaySprite
	strh r5, [r6, #6]
	mov r3, sb
	strh r3, [r6, #8]
	ldr r7, _080238D8 @ =0x03000090
	add r7, r8
	ldr r6, _080238DC @ =0x030000E4
	add r6, r8
	ldr r1, [sp, #4]
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r2, [r6, #8]
	adds r0, r0, r2
	strh r0, [r6, #8]
	ldrh r5, [r6, #6]
	ldrh r3, [r6, #8]
	mov sb, r3
	ldr r1, _080238C0 @ =gCamera
	ldrh r2, [r1]
	subs r2, r5, r2
	strh r2, [r6, #6]
	ldrh r1, [r1, #2]
	subs r0, r0, r1
	strh r0, [r6, #8]
	ldr r3, [sp]
	ldrh r0, [r3]
	subs r2, r2, r0
	strh r2, [r6, #6]
	strh r4, [r6, #2]
	strh r4, [r6, #4]
	ldrh r0, [r6]
	subs r0, #0xe
	strh r0, [r6]
	ldr r0, [r7, #0x10]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	mov r2, sl
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r7, #0x10]
	orrs r0, r1
	str r0, [r7, #0x10]
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_8003D84
	adds r0, r7, #0
	bl DisplaySprite
	strh r5, [r6, #6]
	mov r3, sb
	strh r3, [r6, #8]
_080238A8:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080238B8: .4byte 0x030000F2
_080238BC: .4byte 0x030000C0
_080238C0: .4byte gCamera
_080238C4: .4byte gUnknown_0300504C
_080238C8: .4byte 0x03000030
_080238CC: .4byte 0x030000CC
_080238D0: .4byte 0x03000060
_080238D4: .4byte 0x030000D8
_080238D8: .4byte 0x03000090
_080238DC: .4byte 0x030000E4

	thumb_func_start sub_80238E0
sub_80238E0: @ 0x080238E0
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #4]
	bl VramFree
	ldr r0, [r4, #0x64]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80238FC
sub_80238FC: @ 0x080238FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r3, _08023970 @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	ldr r6, [r0]
	ldr r2, _08023974 @ =0x03000008
	adds r0, r1, r2
	ldrb r0, [r0]
	str r0, [sp]
	ldr r4, _08023978 @ =0x03000004
	adds r0, r1, r4
	ldrh r0, [r0]
	subs r2, #2
	adds r1, r1, r2
	ldrh r1, [r1]
	ldr r4, [sp]
	lsls r2, r4, #3
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r4, #0
	lsls r2, r2, #0x10
	asrs r0, r2, #0x10
	mov sb, r0
	str r2, [sp, #8]
	ldr r7, _0802397C @ =gUnknown_03005AB0
	ldr r2, _08023980 @ =gUnknown_03005A20
	mov r1, sb
	str r1, [sp, #4]
	movs r3, #0x27
	adds r3, r3, r7
	mov r8, r3
	movs r0, #0x27
	adds r0, r0, r2
	mov ip, r0
	movs r1, #0xfe
	mov sl, r1
_08023960:
	cmp r4, #0
	beq _08023984
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp sb, r0
	ble _0802398E
	lsls r3, r5, #0x10
	b _08023A36
	.align 2, 0
_08023970: .4byte gCurTask
_08023974: .4byte 0x03000008
_08023978: .4byte 0x03000004
_0802397C: .4byte gUnknown_03005AB0
_08023980: .4byte gUnknown_03005A20
_08023984:
	ldr r0, [r2]
	asrs r0, r0, #8
	lsls r3, r5, #0x10
	cmp sb, r0
	bgt _08023A36
_0802398E:
	ldrb r0, [r6, #5]
	lsls r0, r0, #3
	ldr r3, [sp, #4]
	adds r1, r3, r0
	cmp r4, #0
	beq _080239A6
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r1, r0
	bge _080239B0
	lsls r3, r5, #0x10
	b _08023A36
_080239A6:
	ldr r0, [r2]
	asrs r0, r0, #8
	lsls r3, r5, #0x10
	cmp r1, r0
	blt _08023A36
_080239B0:
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	adds r3, r0, #0
	cmp r4, #0
	beq _080239C4
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r1, r0
	ble _080239CC
	b _08023A36
_080239C4:
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bgt _08023A36
_080239CC:
	asrs r1, r3, #0x10
	ldrb r0, [r6, #6]
	lsls r0, r0, #3
	adds r1, r1, r0
	cmp r4, #0
	beq _080239E2
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _080239EA
	b _08023A36
_080239E2:
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	cmp r1, r0
	blt _08023A36
_080239EA:
	movs r1, #0x11
	ldr r0, _08023A0C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _080239F6
	movs r1, #0xc
_080239F6:
	ldrb r0, [r6, #2]
	cmp r1, r0
	bne _08023A1A
	cmp r4, #0
	beq _08023A10
	mov r0, r8
	ldrb r1, [r0]
	mov r0, sl
	ands r0, r1
	mov r1, r8
	b _08023A34
	.align 2, 0
_08023A0C: .4byte gGameMode
_08023A10:
	mov r0, ip
	ldrb r1, [r0]
	mov r0, sl
	ands r0, r1
	b _08023A32
_08023A1A:
	cmp r4, #0
	beq _08023A2A
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #1
	orrs r0, r1
	mov r1, r8
	b _08023A34
_08023A2A:
	mov r0, ip
	ldrb r1, [r0]
	movs r0, #1
	orrs r0, r1
_08023A32:
	mov r1, ip
_08023A34:
	strb r0, [r1]
_08023A36:
	adds r4, #1
	ldr r1, _08023A98 @ =gUnknown_03005088
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r4, r0
	blt _08023960
	ldr r2, _08023A9C @ =gCamera
	ldrh r0, [r2]
	ldr r4, [sp, #8]
	asrs r1, r4, #0x10
	subs r1, r1, r0
	ldrh r2, [r2, #2]
	asrs r0, r3, #0x10
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x10
	adds r1, r1, r0
	movs r0, #0xf8
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _08023A7A
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	adds r0, #0x80
	cmp r0, #0
	blt _08023A7A
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08023A88
_08023A7A:
	mov r1, sp
	ldrb r1, [r1]
	strb r1, [r6]
	ldr r2, _08023AA0 @ =gCurTask
	ldr r0, [r2]
	bl TaskDestroy
_08023A88:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023A98: .4byte gUnknown_03005088
_08023A9C: .4byte gCamera
_08023AA0: .4byte gCurTask

	thumb_func_start CreateEntity_Toggle_PlayerLayer
CreateEntity_Toggle_PlayerLayer: @ 0x08023AA4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _08023AFC @ =sub_80238FC
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #9
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	ldr r2, _08023B00 @ =0x03000004
	adds r1, r1, r2
	strh r4, [r1]
	ldrh r1, [r0, #6]
	adds r2, #2
	adds r1, r1, r2
	strh r5, [r1]
	ldrh r1, [r0, #6]
	subs r2, #6
	adds r1, r1, r2
	str r6, [r1]
	ldrh r0, [r0, #6]
	ldr r1, _08023B04 @ =0x03000008
	adds r0, r0, r1
	ldrb r1, [r6]
	strb r1, [r0]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r6]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08023AFC: .4byte sub_80238FC
_08023B00: .4byte 0x03000004
_08023B04: .4byte 0x03000008

	thumb_func_start Task_GrindRailStart
Task_GrindRailStart: @ 0x08023B08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _08023C04 @ =gUnknown_03005A20
	adds r0, r3, #0
	adds r0, #0x59
	ldrb r0, [r0]
	mov ip, r0
	mov r0, ip
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08023B2A
	b _08023C70
_08023B2A:
	ldr r0, _08023C08 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r7, [r0]
	ldr r1, _08023C0C @ =0x03000008
	adds r0, r2, r1
	ldrb r0, [r0]
	mov sl, r0
	ldr r4, _08023C10 @ =0x03000004
	adds r0, r2, r4
	ldrh r1, [r0]
	ldr r0, _08023C14 @ =0x03000006
	adds r2, r2, r0
	ldrh r2, [r2]
	mov r4, sl
	lsls r0, r4, #3
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	lsls r2, r2, #8
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r6, [r3, #0x10]
	movs r0, #0x80
	ands r0, r6
	cmp r0, #0
	beq _08023B70
	b _08023C70
_08023B70:
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	ldr r0, [r3]
	asrs r4, r0, #8
	mov sb, r1
	lsls r2, r2, #0x10
	mov r8, r2
	cmp r5, r4
	bgt _08023C2A
	ldrb r0, [r7, #5]
	lsls r0, r0, #3
	adds r0, r5, r0
	cmp r0, r4
	blt _08023C2A
	asrs r2, r2, #0x10
	ldr r0, [r3, #4]
	asrs r1, r0, #8
	cmp r2, r1
	bgt _08023C2A
	ldrb r0, [r7, #6]
	lsls r0, r0, #3
	adds r0, r2, r0
	cmp r0, r1
	blt _08023C2A
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r6, #0
	ands r0, r2
	cmp r0, #0
	bne _08023C2A
	movs r1, #0xa
	ldrsh r0, [r3, r1]
	cmp r0, #0
	blt _08023C2A
	ldrh r1, [r3, #8]
	movs r4, #8
	ldrsh r0, [r3, r4]
	cmp r0, #0
	ble _08023C2A
	cmp r0, #0x80
	bge _08023BC4
	movs r1, #0x80
_08023BC4:
	strh r1, [r3, #8]
	orrs r6, r2
	str r6, [r3, #0x10]
	adds r2, r3, #0
	adds r2, #0x27
	ldrb r0, [r2]
	movs r1, #1
	eors r0, r1
	strb r0, [r2]
	ldr r2, _08023C18 @ =gUnknown_03005BE0
	ldr r0, [r2, #0x1c]
	ldr r1, _08023C1C @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r2, #0x1c]
	adds r2, r3, #0
	adds r2, #0x26
	ldrb r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2]
	mov r1, ip
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	bne _08023C20
	movs r0, #0x86
	bl m4aSongNumStart
	b _08023C26
	.align 2, 0
_08023C04: .4byte gUnknown_03005A20
_08023C08: .4byte gCurTask
_08023C0C: .4byte 0x03000008
_08023C10: .4byte 0x03000004
_08023C14: .4byte 0x03000006
_08023C18: .4byte gUnknown_03005BE0
_08023C1C: .4byte 0xFFFFCFFF
_08023C20:
	movs r0, #0x72
	bl m4aSongNumStart
_08023C26:
	bl sub_80408C0
_08023C2A:
	ldr r2, _08023C80 @ =gCamera
	ldrh r0, [r2]
	mov r3, sb
	asrs r1, r3, #0x10
	subs r1, r1, r0
	ldrh r2, [r2, #2]
	mov r4, r8
	asrs r0, r4, #0x10
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x10
	adds r1, r1, r0
	movs r0, #0xf8
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _08023C64
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	adds r0, #0x80
	cmp r0, #0
	blt _08023C64
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08023C70
_08023C64:
	mov r1, sl
	strb r1, [r7]
	ldr r0, _08023C84 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08023C70:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023C80: .4byte gCamera
_08023C84: .4byte gCurTask

	thumb_func_start Task_GrindRailEnd
Task_GrindRailEnd: @ 0x08023C88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08023D60 @ =gUnknown_03005A20
	mov ip, r0
	adds r0, #0x59
	ldrb r7, [r0]
	subs r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08023CA8
	b _08023EA6
_08023CA8:
	ldr r0, _08023D64 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r0, [r0]
	mov r8, r0
	ldr r1, _08023D68 @ =0x03000008
	adds r0, r2, r1
	ldrb r0, [r0]
	mov sl, r0
	ldr r3, _08023D6C @ =0x03000004
	adds r0, r2, r3
	ldrh r1, [r0]
	ldr r4, _08023D70 @ =0x03000006
	adds r2, r2, r4
	ldrh r2, [r2]
	mov r6, sl
	lsls r0, r6, #3
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov r3, r8
	ldrb r0, [r3, #1]
	lsls r0, r0, #3
	lsls r2, r2, #8
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r4, ip
	ldr r3, [r4, #0x10]
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	beq _08023CF4
	b _08023EA6
_08023CF4:
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	ldr r0, [r4]
	asrs r4, r0, #8
	str r1, [sp]
	lsls r2, r2, #0x10
	mov sb, r2
	cmp r5, r4
	ble _08023D08
	b _08023E5E
_08023D08:
	mov r6, r8
	ldrb r0, [r6, #5]
	lsls r0, r0, #3
	str r0, [sp, #4]
	adds r0, r5, r0
	cmp r0, r4
	bge _08023D18
	b _08023E5E
_08023D18:
	asrs r2, r2, #0x10
	mov r1, ip
	ldr r0, [r1, #4]
	asrs r1, r0, #8
	cmp r2, r1
	ble _08023D26
	b _08023E5E
_08023D26:
	ldrb r0, [r6, #6]
	lsls r0, r0, #3
	adds r0, r2, r0
	cmp r0, r1
	bge _08023D32
	b _08023E5E
_08023D32:
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r3, r0
	cmp r3, #0
	bne _08023D3E
	b _08023E5E
_08023D3E:
	ldr r3, [sp, #4]
	asrs r0, r3, #1
	adds r0, r5, r0
	cmp r4, r0
	ble _08023DD8
	ldr r0, _08023D74 @ =0x0000FB20
	mov r4, ip
	strh r0, [r4, #0xa]
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	bne _08023D78
	movs r0, #0x86
	bl m4aSongNumStop
	b _08023D7E
	.align 2, 0
_08023D60: .4byte gUnknown_03005A20
_08023D64: .4byte gCurTask
_08023D68: .4byte 0x03000008
_08023D6C: .4byte 0x03000004
_08023D70: .4byte 0x03000006
_08023D74: .4byte 0x0000FB20
_08023D78:
	movs r0, #0x72
	bl m4aSongNumStop
_08023D7E:
	movs r0, #0x74
	bl m4aSongNumStart
	ldr r4, _08023DC8 @ =gUnknown_03005A20
	adds r0, r4, #0
	bl sub_8046CEC
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x11
	strb r0, [r1]
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	ldr r1, _08023DCC @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	adds r2, r4, #0
	adds r2, #0x27
	ldrb r0, [r2]
	movs r1, #1
	eors r0, r1
	strb r0, [r2]
	adds r4, #0x26
	ldrb r1, [r4]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4]
	ldr r2, _08023DD0 @ =gUnknown_03005BE0
	ldr r0, [r2, #0x1c]
	ldr r1, _08023DD4 @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r2, #0x1c]
	b _08023E5E
	.align 2, 0
_08023DC8: .4byte gUnknown_03005A20
_08023DCC: .4byte 0xFEFFFFFF
_08023DD0: .4byte gUnknown_03005BE0
_08023DD4: .4byte 0xFFFFCFFF
_08023DD8:
	ldr r0, _08023E00 @ =gInput
	ldr r1, _08023E04 @ =gUnknown_030060E0
	ldrh r2, [r0]
	ldrh r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _08023E5E
	movs r0, #0xf9
	lsls r0, r0, #8
	mov r6, ip
	strh r0, [r6, #0xa]
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	bne _08023E08
	movs r0, #0x86
	bl m4aSongNumStop
	b _08023E0E
	.align 2, 0
_08023E00: .4byte gInput
_08023E04: .4byte gUnknown_030060E0
_08023E08:
	movs r0, #0x72
	bl m4aSongNumStop
_08023E0E:
	movs r0, #0x74
	bl m4aSongNumStart
	ldr r4, _08023EB8 @ =gUnknown_03005A20
	adds r0, r4, #0
	bl sub_8046CEC
	adds r1, r4, #0
	adds r1, #0x40
	movs r2, #0
	movs r0, #0x14
	strb r0, [r1]
	ldr r3, _08023EBC @ =gUnknown_03005BE0
	adds r0, r3, #0
	adds r0, #0x2c
	strb r2, [r0]
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	ldr r1, _08023EC0 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	adds r2, r4, #0
	adds r2, #0x27
	ldrb r0, [r2]
	movs r1, #1
	eors r0, r1
	strb r0, [r2]
	adds r4, #0x26
	ldrb r1, [r4]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4]
	ldr r0, [r3, #0x1c]
	ldr r1, _08023EC4 @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r3, #0x1c]
_08023E5E:
	ldr r2, _08023EC8 @ =gCamera
	ldrh r0, [r2]
	ldr r3, [sp]
	asrs r1, r3, #0x10
	subs r1, r1, r0
	ldrh r2, [r2, #2]
	mov r4, sb
	asrs r0, r4, #0x10
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	movs r6, #0x80
	lsls r6, r6, #0x10
	adds r1, r1, r6
	movs r0, #0xf8
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _08023E98
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	adds r0, #0x80
	cmp r0, #0
	blt _08023E98
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08023EA6
_08023E98:
	mov r1, sl
	mov r0, r8
	strb r1, [r0]
	ldr r0, _08023ECC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08023EA6:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023EB8: .4byte gUnknown_03005A20
_08023EBC: .4byte gUnknown_03005BE0
_08023EC0: .4byte 0xFEFFFFFF
_08023EC4: .4byte 0xFFFFCFFF
_08023EC8: .4byte gCamera
_08023ECC: .4byte gCurTask

@ Unused?
	thumb_func_start sub_8023ED0
sub_8023ED0: @ 0x08023ED0
	push {r4, lr}
	sub sp, #4
	ldr r0, _08023EF8 @ =Task_8023EFC
	movs r2, #0x80
	lsls r2, r2, #6
	movs r4, #0
	str r4, [sp]
	movs r1, #2
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	strh r4, [r0]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08023EF8: .4byte Task_8023EFC

	thumb_func_start Task_8023EFC
Task_8023EFC: @ 0x08023EFC
	push {r4, lr}
	ldr r4, _08023F2C @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bls _08023F24
	movs r0, #0x72
	bl m4aSongNumStart
	ldr r0, [r4]
	bl TaskDestroy
_08023F24:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08023F2C: .4byte gCurTask

	thumb_func_start CreateEntity_GrindRail_Start
CreateEntity_GrindRail_Start: @ 0x08023F30
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _08023F88 @ =Task_GrindRailStart
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #9
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	ldr r2, _08023F8C @ =0x03000004
	adds r1, r1, r2
	strh r4, [r1]
	ldrh r1, [r0, #6]
	adds r2, #2
	adds r1, r1, r2
	strh r5, [r1]
	ldrh r1, [r0, #6]
	subs r2, #6
	adds r1, r1, r2
	str r6, [r1]
	ldrh r0, [r0, #6]
	ldr r1, _08023F90 @ =0x03000008
	adds r0, r0, r1
	ldrb r1, [r6]
	strb r1, [r0]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r6]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08023F88: .4byte Task_GrindRailStart
_08023F8C: .4byte 0x03000004
_08023F90: .4byte 0x03000008

	thumb_func_start CreateEntity_GrindRail_End
CreateEntity_GrindRail_End: @ 0x08023F94
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _08023FEC @ =Task_GrindRailEnd
	movs r2, #0x90
	lsls r2, r2, #4
	movs r1, #0
	str r1, [sp]
	movs r1, #9
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	ldr r2, _08023FF0 @ =0x03000004
	adds r1, r1, r2
	strh r4, [r1]
	ldrh r1, [r0, #6]
	adds r2, #2
	adds r1, r1, r2
	strh r5, [r1]
	ldrh r1, [r0, #6]
	subs r2, #6
	adds r1, r1, r2
	str r6, [r1]
	ldrh r0, [r0, #6]
	ldr r1, _08023FF4 @ =0x03000008
	adds r0, r0, r1
	ldrb r1, [r6]
	strb r1, [r0]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r6]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08023FEC: .4byte Task_GrindRailEnd
_08023FF0: .4byte 0x03000004
_08023FF4: .4byte 0x03000008

	thumb_func_start CreateEntity_CommonThinPlatform
CreateEntity_CommonThinPlatform: @ 0x08023FF8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r3, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0802406C @ =sub_802417C
	ldr r2, _08024070 @ =0x00002010
	ldr r1, _08024074 @ =sub_8024B1C
	str r1, [sp]
	movs r1, #0x50
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	adds r0, #0xc
	adds r5, r2, r0
	movs r7, #0
	mov r1, r8
	strh r1, [r3, #4]
	mov r0, sb
	strh r0, [r3, #6]
	str r6, [r3]
	ldrb r0, [r6]
	strb r0, [r3, #8]
	strb r4, [r3, #9]
	str r7, [r3, #0x40]
	str r7, [r3, #0x44]
	ldr r1, _08024078 @ =0x0300004C
	adds r0, r2, r1
	strh r7, [r0]
	ldrb r0, [r6, #5]
	ldrb r1, [r6, #6]
	cmp r0, r1
	bls _0802409C
	movs r0, #3
	ldrsb r0, [r6, r0]
	cmp r0, #0
	blt _08024080
	ldr r1, _0802407C @ =0x03000048
	adds r0, r2, r1
	movs r1, #4
	strh r1, [r0]
	strh r7, [r3, #0x3c]
	b _0802408C
	.align 2, 0
_0802406C: .4byte sub_802417C
_08024070: .4byte 0x00002010
_08024074: .4byte sub_8024B1C
_08024078: .4byte 0x0300004C
_0802407C: .4byte 0x03000048
_08024080:
	ldr r0, _08024094 @ =0x03000048
	adds r1, r2, r0
	movs r0, #4
	strh r0, [r1]
	movs r0, #0x80
	strh r0, [r3, #0x3c]
_0802408C:
	ldr r1, _08024098 @ =0x0300004A
	adds r0, r2, r1
	strh r7, [r0]
	b _080240D2
	.align 2, 0
_08024094: .4byte 0x03000048
_08024098: .4byte 0x0300004A
_0802409C:
	movs r0, #4
	ldrsb r0, [r6, r0]
	cmp r0, #0
	blt _080240C0
	ldr r1, _080240B8 @ =0x03000048
	adds r0, r2, r1
	strh r7, [r0]
	ldr r0, _080240BC @ =0x0300004A
	adds r1, r2, r0
	movs r0, #4
	strh r0, [r1]
	strh r7, [r3, #0x3c]
	b _080240D2
	.align 2, 0
_080240B8: .4byte 0x03000048
_080240BC: .4byte 0x0300004A
_080240C0:
	ldr r1, _0802411C @ =0x03000048
	adds r0, r2, r1
	strh r7, [r0]
	ldr r0, _08024120 @ =0x0300004A
	adds r1, r2, r0
	movs r0, #4
	strh r0, [r1]
	movs r0, #0x80
	strh r0, [r3, #0x3c]
_080240D2:
	ldrb r0, [r6]
	lsls r0, r0, #3
	mov r2, r8
	lsls r1, r2, #8
	adds r0, r0, r1
	movs r4, #0
	strh r0, [r5, #0x16]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	mov r2, sb
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r5, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	movs r0, #0x12
	bl VramMalloc
	str r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0x20
	strb r4, [r0]
	ldr r0, _08024124 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _08024130
	ldr r1, _08024128 @ =gUnknown_080BB4FC
	ldr r0, _0802412C @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	b _08024132
	.align 2, 0
_0802411C: .4byte 0x03000048
_08024120: .4byte 0x0300004A
_08024124: .4byte gGameMode
_08024128: .4byte gUnknown_080BB4FC
_0802412C: .4byte gCurrentLevel
_08024130:
	ldr r0, _08024178 @ =0x000001CF
_08024132:
	strh r0, [r5, #0xa]
	movs r2, #0
	movs r1, #0
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	strh r1, [r5, #8]
	strh r1, [r5, #0x14]
	strh r1, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x25
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024178: .4byte 0x000001CF

	thumb_func_start sub_802417C
sub_802417C: @ 0x0802417C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r0, #0
	str r0, [sp]
	movs r1, #0
	str r1, [sp, #4]
	mov sb, r1
	ldr r0, _08024294 @ =gCurTask
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r7, r0
	ldr r2, _08024298 @ =0x0300000C
	adds r2, r2, r7
	mov r8, r2
	ldr r3, [r6]
	mov sl, r3
	ldr r4, _0802429C @ =0x03000048
	adds r1, r7, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _080241E2
	ldr r5, [r6, #0x40]
	ldrb r2, [r3, #5]
	lsls r2, r2, #0xb
	ldr r4, _080242A0 @ =gSineTable
	adds r3, r0, #0
	ldr r0, _080242A4 @ =gStageTime
	ldrh r1, [r6, #0x3c]
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	muls r0, r3, r0
	ldr r1, _080242A8 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	str r0, [r6, #0x40]
	subs r5, r0, r5
	str r5, [sp]
_080241E2:
	ldr r2, _080242AC @ =0x0300004A
	adds r1, r7, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0802421E
	ldr r5, [r6, #0x44]
	mov r4, sl
	ldrb r2, [r4, #6]
	lsls r2, r2, #0xb
	ldr r4, _080242A0 @ =gSineTable
	adds r3, r0, #0
	ldr r0, _080242A4 @ =gStageTime
	ldrh r1, [r6, #0x3c]
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	muls r0, r3, r0
	ldr r1, _080242A8 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	str r0, [r6, #0x44]
	subs r5, r0, r5
	str r5, [sp, #4]
_0802421E:
	ldrb r1, [r6, #8]
	lsls r1, r1, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	mov r3, sl
	ldrb r2, [r3, #1]
	lsls r2, r2, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldr r3, _080242B0 @ =gCamera
	ldrh r0, [r3]
	lsrs r7, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	ldr r0, [r6, #0x40]
	asrs r0, r0, #8
	adds r1, r1, r0
	mov r4, r8
	strh r1, [r4, #0x16]
	ldrh r0, [r3, #2]
	lsrs r5, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	ldr r0, [r6, #0x44]
	asrs r0, r0, #8
	adds r2, r2, r0
	strh r2, [r4, #0x18]
_0802425C:
	ldr r3, _080242B4 @ =gUnknown_03005A20
	mov r0, sb
	cmp r0, #0
	beq _08024266
	ldr r3, _080242B8 @ =gUnknown_03005AB0
_08024266:
	ldr r1, [r3, #0x10]
	movs r0, #8
	ands r0, r1
	adds r2, r1, #0
	cmp r0, #0
	beq _080242CC
	ldr r0, [r3, #0x28]
	cmp r0, r8
	bne _080242CC
	ldr r0, [r3]
	ldr r1, [sp]
	adds r0, r0, r1
	str r0, [r3]
	ldr r0, _080242BC @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080242C0
	ldr r0, [r3, #4]
	movs r4, #0x80
	lsls r4, r4, #1
	b _080242C4
	.align 2, 0
_08024294: .4byte gCurTask
_08024298: .4byte 0x0300000C
_0802429C: .4byte 0x03000048
_080242A0: .4byte gSineTable
_080242A4: .4byte gStageTime
_080242A8: .4byte 0x000003FF
_080242AC: .4byte 0x0300004A
_080242B0: .4byte gCamera
_080242B4: .4byte gUnknown_03005A20
_080242B8: .4byte gUnknown_03005AB0
_080242BC: .4byte gUnknown_03005004
_080242C0:
	ldr r0, [r3, #4]
	ldr r4, _08024374 @ =0xFFFFFE00
_080242C4:
	adds r0, r0, r4
	ldr r1, [sp, #4]
	adds r0, r0, r1
	str r0, [r3, #4]
_080242CC:
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r0, r2
	lsls r4, r7, #0x10
	cmp r0, #0
	bne _080242F8
	ldr r0, [r6, #0x40]
	asrs r0, r0, #8
	asrs r1, r4, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r6, #0x44]
	asrs r0, r0, #8
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	adds r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r0, r8
	bl sub_800B2BC
_080242F8:
	movs r2, #1
	add sb, r2
	ldr r0, _08024378 @ =gUnknown_03005088
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov ip, r0
	cmp sb, r1
	blt _0802425C
	asrs r1, r4, #0x10
	ldr r3, _0802437C @ =gCamera
	movs r4, #0
	ldrsh r2, [r3, r4]
	movs r4, #0xb8
	lsls r4, r4, #1
	adds r0, r2, r4
	cmp r1, r0
	bgt _0802433C
	adds r0, r2, #0
	subs r0, #0x80
	cmp r1, r0
	blt _0802433C
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
	movs r0, #2
	ldrsh r1, [r3, r0]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r2, r0
	bgt _0802433C
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _08024384
_0802433C:
	mov r4, r8
	ldrh r0, [r4, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08024362
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08024362
	movs r2, #0x18
	ldrsh r1, [r4, r2]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08024384
_08024362:
	ldrb r0, [r6, #8]
	mov r3, sl
	strb r0, [r3]
	ldr r0, _08024380 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08024434
	.align 2, 0
_08024374: .4byte 0xFFFFFE00
_08024378: .4byte gUnknown_03005088
_0802437C: .4byte gCamera
_08024380: .4byte gCurTask
_08024384:
	ldr r2, _080243D0 @ =gUnknown_03005A20
	ldr r1, [r2, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0802442E
	movs r3, #8
	ands r1, r3
	cmp r1, #0
	beq _080243A0
	ldr r0, [r2, #0x28]
	cmp r0, r8
	beq _080243BA
_080243A0:
	mov r4, ip
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #2
	bne _080243D8
	ldr r1, _080243D4 @ =gUnknown_03005AB0
	ldr r0, [r1, #0x10]
	ands r0, r3
	cmp r0, #0
	beq _080243D8
	ldr r0, [r1, #0x28]
	cmp r0, r8
	bne _080243D8
_080243BA:
	adds r0, r6, #0
	adds r0, #0x4c
	ldrh r3, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r0, #0
	cmp r3, r1
	beq _080243EA
	adds r0, r3, #0
	adds r0, #0x10
	b _080243E8
	.align 2, 0
_080243D0: .4byte gUnknown_03005A20
_080243D4: .4byte gUnknown_03005AB0
_080243D8:
	adds r0, r6, #0
	adds r0, #0x4c
	ldrh r1, [r0]
	adds r2, r0, #0
	cmp r1, #0
	beq _080243EA
	adds r0, r1, #0
	subs r0, #0x10
_080243E8:
	strh r0, [r2]
_080243EA:
	ldr r0, _08024410 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08024418
	ldr r1, _08024414 @ =gSineTable
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	mov r1, r8
	ldrh r1, [r1, #0x18]
	adds r0, r0, r1
	mov r2, r8
	strh r0, [r2, #0x18]
	b _0802442E
	.align 2, 0
_08024410: .4byte gUnknown_03005004
_08024414: .4byte gSineTable
_08024418:
	ldr r1, _08024444 @ =gSineTable
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x1c
	mov r3, r8
	ldrh r0, [r3, #0x18]
	subs r0, r0, r1
	strh r0, [r3, #0x18]
_0802442E:
	mov r0, r8
	bl DisplaySprite
_08024434:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024444: .4byte gSineTable

	thumb_func_start CreateEntity_Interactable022
CreateEntity_Interactable022: @ 0x08024448
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r8, r3
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _08024500 @ =sub_8024574
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08024504 @ =sub_8024B1C
	str r1, [sp]
	movs r1, #0x50
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldr r1, _08024508 @ =0x0300000C
	adds r7, r4, r1
	movs r3, #0
	mov sl, r3
	movs r2, #0
	strh r5, [r0, #4]
	strh r6, [r0, #6]
	mov r1, sb
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #8]
	mov r3, r8
	strb r3, [r0, #9]
	str r2, [r0, #0x40]
	str r2, [r0, #0x44]
	ldr r1, _0802450C @ =0x0300004C
	adds r0, r4, r1
	strh r2, [r0]
	ldr r3, _08024510 @ =0x03000048
	adds r0, r4, r3
	strh r2, [r0]
	subs r1, #2
	adds r0, r4, r1
	strh r2, [r0]
	mov r3, sb
	ldrb r0, [r3]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r7, #0x16]
	ldrb r0, [r3, #1]
	lsls r0, r0, #3
	lsls r6, r6, #8
	adds r0, r0, r6
	strh r0, [r7, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r3]
	movs r0, #0x12
	bl VramMalloc
	str r0, [r7, #4]
	ldr r3, _08024514 @ =0x0300002C
	adds r4, r4, r3
	mov r0, sl
	strb r0, [r4]
	ldr r0, _08024518 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _08024524
	ldr r1, _0802451C @ =gUnknown_080BB4FC
	ldr r0, _08024520 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	b _08024526
	.align 2, 0
_08024500: .4byte sub_8024574
_08024504: .4byte sub_8024B1C
_08024508: .4byte 0x0300000C
_0802450C: .4byte 0x0300004C
_08024510: .4byte 0x03000048
_08024514: .4byte 0x0300002C
_08024518: .4byte gGameMode
_0802451C: .4byte gUnknown_080BB4FC
_08024520: .4byte gCurrentLevel
_08024524:
	ldr r0, _08024570 @ =0x000001CF
_08024526:
	strh r0, [r7, #0xa]
	movs r2, #0
	movs r1, #0
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	strh r1, [r7, #8]
	strh r1, [r7, #0x14]
	strh r1, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x25
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024570: .4byte 0x000001CF

	thumb_func_start sub_8024574
sub_8024574: @ 0x08024574
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r1, _0802468C @ =gCurTask
	ldr r0, [r1]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r2, _08024690 @ =0x0300000C
	adds r6, r1, r2
	ldr r3, [r7]
	mov sb, r3
	ldrb r2, [r7, #8]
	lsls r2, r2, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _08024694 @ =gCamera
	ldrh r0, [r3]
	lsrs r4, r2, #0x10
	mov sl, r4
	asrs r5, r2, #0x10
	subs r0, r5, r0
	strh r0, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsrs r2, r1, #0x10
	str r2, [sp]
	asrs r4, r1, #0x10
	subs r0, r4, r0
	strh r0, [r6, #0x18]
	ldr r3, _08024698 @ =gUnknown_03005A20
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800B2BC
	movs r3, #8
	mov r8, r3
	ands r0, r3
	cmp r0, #0
	bne _080245F0
	ldr r3, _0802469C @ =gUnknown_03005AB0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800B2BC
	mov r4, r8
	ands r0, r4
	cmp r0, #0
	beq _080245FC
_080245F0:
	ldr r1, _0802468C @ =gCurTask
	ldr r0, [r1]
	ldr r1, _080246A0 @ =sub_802473C
	str r1, [r0, #8]
	movs r0, #0x1e
	strh r0, [r7, #0x3c]
_080245FC:
	ldr r0, _080246A4 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0802461E
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	movs r0, #3
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0802461E
	movs r0, #0
	strh r0, [r7, #0x3c]
	ldr r0, _0802468C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080246A8 @ =sub_802492C
	str r0, [r1, #8]
_0802461E:
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	ldr r3, _08024694 @ =gCamera
	movs r4, #0
	ldrsh r1, [r3, r4]
	movs r4, #0xb8
	lsls r4, r4, #1
	adds r0, r1, r4
	cmp r2, r0
	bgt _08024658
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _08024658
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	movs r4, #2
	ldrsh r2, [r3, r4]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r2, r3
	cmp r1, r0
	bgt _08024658
	adds r0, r2, #0
	subs r0, #0x80
	cmp r1, r0
	bge _080246AC
_08024658:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0802467C
	movs r4, #0x18
	ldrsh r0, [r6, r4]
	adds r0, #0x80
	cmp r0, #0
	blt _0802467C
	movs r0, #0x18
	ldrsh r1, [r6, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _080246AC
_0802467C:
	ldrb r0, [r7, #8]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _0802468C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08024728
	.align 2, 0
_0802468C: .4byte gCurTask
_08024690: .4byte 0x0300000C
_08024694: .4byte gCamera
_08024698: .4byte gUnknown_03005A20
_0802469C: .4byte gUnknown_03005AB0
_080246A0: .4byte sub_802473C
_080246A4: .4byte gGameMode
_080246A8: .4byte sub_802492C
_080246AC:
	ldr r1, _080246F0 @ =gUnknown_03005A20
	ldr r0, [r1, #0x10]
	movs r2, #8
	ands r0, r2
	cmp r0, #0
	beq _080246BE
	ldr r0, [r1, #0x28]
	cmp r0, r6
	beq _080246DA
_080246BE:
	ldr r0, _080246F4 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _080246FC
	ldr r1, _080246F8 @ =gUnknown_03005AB0
	ldr r0, [r1, #0x10]
	ands r0, r2
	cmp r0, #0
	beq _080246FC
	ldr r0, [r1, #0x28]
	cmp r0, r6
	bne _080246FC
_080246DA:
	adds r0, r7, #0
	adds r0, #0x4c
	ldrh r3, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r0, #0
	cmp r3, r1
	beq _0802470E
	adds r0, r3, #0
	adds r0, #0x10
	b _0802470C
	.align 2, 0
_080246F0: .4byte gUnknown_03005A20
_080246F4: .4byte gUnknown_03005088
_080246F8: .4byte gUnknown_03005AB0
_080246FC:
	adds r0, r7, #0
	adds r0, #0x4c
	ldrh r1, [r0]
	adds r2, r0, #0
	cmp r1, #0
	beq _0802470E
	adds r0, r1, #0
	subs r0, #0x10
_0802470C:
	strh r0, [r2]
_0802470E:
	ldr r1, _08024738 @ =gSineTable
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	ldrh r2, [r6, #0x18]
	adds r0, r0, r2
	strh r0, [r6, #0x18]
	adds r0, r6, #0
	bl DisplaySprite
_08024728:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024738: .4byte gSineTable

	thumb_func_start sub_802473C
sub_802473C: @ 0x0802473C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _080247CC @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r2, _080247D0 @ =0x0300000C
	adds r7, r1, r2
	ldr r3, [r6]
	mov r8, r3
	ldrb r5, [r6, #8]
	lsls r5, r5, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r5, r5, r0
	lsls r5, r5, #0x10
	ldrb r4, [r3, #1]
	lsls r4, r4, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r4, r4, r0
	lsls r4, r4, #0x10
	ldr r1, _080247D4 @ =gCamera
	ldrh r0, [r1]
	lsrs r2, r5, #0x10
	mov sl, r2
	asrs r5, r5, #0x10
	subs r0, r5, r0
	strh r0, [r7, #0x16]
	ldrh r0, [r1, #2]
	lsrs r3, r4, #0x10
	str r3, [sp]
	asrs r4, r4, #0x10
	subs r0, r4, r0
	strh r0, [r7, #0x18]
	ldr r3, _080247D8 @ =gUnknown_03005A20
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800B2BC
	ldr r3, _080247DC @ =gUnknown_03005AB0
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800B2BC
	ldr r0, _080247E0 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _080247E8
	mov r0, r8
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #3
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080247E8
	movs r0, #0
	strh r0, [r6, #0x3c]
	mov r2, sb
	ldr r1, [r2]
	ldr r0, _080247E4 @ =sub_802492C
	str r0, [r1, #8]
	b _0802481E
	.align 2, 0
_080247CC: .4byte gCurTask
_080247D0: .4byte 0x0300000C
_080247D4: .4byte gCamera
_080247D8: .4byte gUnknown_03005A20
_080247DC: .4byte gUnknown_03005AB0
_080247E0: .4byte gGameMode
_080247E4: .4byte sub_802492C
_080247E8:
	ldrh r0, [r6, #0x3c]
	subs r0, #1
	strh r0, [r6, #0x3c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _0802481E
	strh r0, [r6, #0x3c]
	ldr r0, _0802488C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08024890 @ =sub_802492C
	str r0, [r1, #8]
	ldr r0, _08024894 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0802481E
	bl sub_80182FC
	movs r2, #1
	strb r2, [r0]
	ldrh r1, [r6, #4]
	strb r1, [r0, #1]
	ldrh r1, [r6, #6]
	strb r1, [r0, #2]
	ldrb r1, [r6, #9]
	strb r1, [r0, #3]
	strb r2, [r0, #4]
_0802481E:
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r5, r0, #0x10
	ldr r2, _08024898 @ =gCamera
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r3, #0xb8
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r5, r0
	bgt _08024858
	adds r0, r1, #0
	subs r0, #0x80
	cmp r5, r0
	blt _08024858
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	movs r3, #2
	ldrsh r1, [r2, r3]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r4, r0
	bgt _08024858
	adds r0, r1, #0
	subs r0, #0x80
	cmp r4, r0
	bge _0802489C
_08024858:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0802487C
	movs r3, #0x18
	ldrsh r0, [r7, r3]
	adds r0, #0x80
	cmp r0, #0
	blt _0802487C
	movs r0, #0x18
	ldrsh r1, [r7, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0802489C
_0802487C:
	ldrb r0, [r6, #8]
	mov r1, r8
	strb r0, [r1]
	ldr r0, _0802488C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08024918
	.align 2, 0
_0802488C: .4byte gCurTask
_08024890: .4byte sub_802492C
_08024894: .4byte gGameMode
_08024898: .4byte gCamera
_0802489C:
	ldr r1, _080248E0 @ =gUnknown_03005A20
	ldr r0, [r1, #0x10]
	movs r2, #8
	ands r0, r2
	cmp r0, #0
	beq _080248AE
	ldr r0, [r1, #0x28]
	cmp r0, r7
	beq _080248CA
_080248AE:
	ldr r0, _080248E4 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _080248EC
	ldr r1, _080248E8 @ =gUnknown_03005AB0
	ldr r0, [r1, #0x10]
	ands r0, r2
	cmp r0, #0
	beq _080248EC
	ldr r0, [r1, #0x28]
	cmp r0, r7
	bne _080248EC
_080248CA:
	adds r0, r6, #0
	adds r0, #0x4c
	ldrh r3, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r0, #0
	cmp r3, r1
	beq _080248FE
	adds r0, r3, #0
	adds r0, #0x10
	b _080248FC
	.align 2, 0
_080248E0: .4byte gUnknown_03005A20
_080248E4: .4byte gUnknown_03005088
_080248E8: .4byte gUnknown_03005AB0
_080248EC:
	adds r0, r6, #0
	adds r0, #0x4c
	ldrh r1, [r0]
	adds r2, r0, #0
	cmp r1, #0
	beq _080248FE
	adds r0, r1, #0
	subs r0, #0x10
_080248FC:
	strh r0, [r2]
_080248FE:
	ldr r1, _08024928 @ =gSineTable
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	ldrh r2, [r7, #0x18]
	adds r0, r0, r2
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
_08024918:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024928: .4byte gSineTable

	thumb_func_start sub_802492C
sub_802492C: @ 0x0802492C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r0, #0
	mov r8, r0
	ldr r0, _080249F0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r2, _080249F4 @ =0x0300000C
	adds r7, r1, r2
	ldr r3, [r5]
	str r3, [sp, #4]
	adds r0, #0x4a
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #0x2a
	strh r0, [r1]
	movs r2, #0
	ldrsh r1, [r1, r2]
	ldr r0, [r5, #0x44]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldrb r2, [r5, #8]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r4, _080249F8 @ =gCamera
	ldrh r3, [r4]
	lsls r2, r2, #0x10
	asrs r0, r2, #0x10
	subs r0, r0, r3
	strh r0, [r7, #0x16]
	ldrh r0, [r4, #2]
	lsrs r3, r1, #0x10
	str r3, [sp]
	asrs r1, r1, #0x10
	subs r1, r1, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r7, #0x18]
	ldrh r0, [r5, #0x3c]
	adds r0, #1
	strh r0, [r5, #0x3c]
	ldr r0, _080249FC @ =gUnknown_03005A20
	mov sb, r0
	mov sl, r2
_080249A4:
	ldr r4, _080249FC @ =gUnknown_03005A20
	mov r1, r8
	cmp r1, #0
	beq _080249AE
	ldr r4, _08024A00 @ =gUnknown_03005AB0
_080249AE:
	ldr r0, [r4, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08024A26
	ldr r0, [r4, #0x28]
	cmp r0, r7
	bne _08024A26
	mov r6, sb
	adds r6, #0x40
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0xe
	bne _080249D4
	mov r0, sb
	bl sub_8046CEC
	movs r0, #4
	strb r0, [r6]
_080249D4:
	ldrh r0, [r5, #0x3c]
	cmp r0, #0x20
	bls _08024A04
	ldr r1, [r4, #0x10]
	movs r0, #2
	orrs r1, r0
	subs r0, #0xb
	ands r1, r0
	str r1, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x4a
	ldrh r0, [r0]
	strh r0, [r4, #0xa]
	b _08024A26
	.align 2, 0
_080249F0: .4byte gCurTask
_080249F4: .4byte 0x0300000C
_080249F8: .4byte gCamera
_080249FC: .4byte gUnknown_03005A20
_08024A00: .4byte gUnknown_03005AB0
_08024A04:
	adds r0, r5, #0
	adds r0, #0x48
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	ldr r1, [r4, #4]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r1, r3
	adds r0, r5, #0
	adds r0, #0x4a
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, r1, r0
	str r1, [r4, #4]
_08024A26:
	ldrh r0, [r5, #0x3c]
	cmp r0, #0x1f
	bhi _08024A48
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	ldr r3, [sp]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	adds r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	mov r3, sl
	asrs r1, r3, #0x10
	adds r3, r4, #0
	bl sub_800B2BC
_08024A48:
	movs r0, #1
	add r8, r0
	ldr r2, _08024A8C @ =gUnknown_03005088
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r8, r0
	blt _080249A4
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08024A7A
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08024A7A
	movs r3, #0x18
	ldrsh r1, [r7, r3]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08024A94
_08024A7A:
	ldrb r0, [r5, #8]
	ldr r1, [sp, #4]
	strb r0, [r1]
	ldr r0, _08024A90 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08024B08
	.align 2, 0
_08024A8C: .4byte gUnknown_03005088
_08024A90: .4byte gCurTask
_08024A94:
	ldr r1, _08024AD4 @ =gUnknown_03005A20
	ldr r0, [r1, #0x10]
	movs r3, #8
	ands r0, r3
	cmp r0, #0
	beq _08024AA6
	ldr r0, [r1, #0x28]
	cmp r0, r7
	beq _08024ABE
_08024AA6:
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #2
	bne _08024ADC
	ldr r1, _08024AD8 @ =gUnknown_03005AB0
	ldr r0, [r1, #0x10]
	ands r0, r3
	cmp r0, #0
	beq _08024ADC
	ldr r0, [r1, #0x28]
	cmp r0, r7
	bne _08024ADC
_08024ABE:
	adds r0, r5, #0
	adds r0, #0x4c
	ldrh r3, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r0, #0
	cmp r3, r1
	beq _08024AEE
	adds r0, r3, #0
	adds r0, #0x10
	b _08024AEC
	.align 2, 0
_08024AD4: .4byte gUnknown_03005A20
_08024AD8: .4byte gUnknown_03005AB0
_08024ADC:
	adds r0, r5, #0
	adds r0, #0x4c
	ldrh r1, [r0]
	adds r2, r0, #0
	cmp r1, #0
	beq _08024AEE
	adds r0, r1, #0
	subs r0, #0x10
_08024AEC:
	strh r0, [r2]
_08024AEE:
	ldr r1, _08024B18 @ =gSineTable
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	ldrh r2, [r7, #0x18]
	adds r0, r0, r2
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
_08024B08:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024B18: .4byte gSineTable

	thumb_func_start sub_8024B1C
sub_8024B1C: @ 0x08024B1C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8024B30
sub_8024B30: @ 0x08024B30
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _08024BB0 @ =sub_8024BC8
	movs r2, #0x80
	lsls r2, r2, #6
	movs r6, #0
	str r6, [sp]
	movs r1, #0x34
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r3, r1
	movs r0, #0
	mov r8, r0
	strh r6, [r1, #0x30]
	strh r4, [r1, #0x16]
	strh r5, [r1, #0x18]
	ldr r0, _08024BB4 @ =0x06011D00
	str r0, [r1, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r1, #0x1a]
	strh r6, [r1, #8]
	subs r0, #0xfd
	strh r0, [r1, #0xa]
	ldr r2, _08024BB8 @ =0x03000020
	adds r0, r3, r2
	mov r2, r8
	strb r2, [r0]
	strh r6, [r1, #0x14]
	strh r6, [r1, #0x1c]
	ldr r0, _08024BBC @ =0x03000021
	adds r2, r3, r0
	movs r0, #0xff
	strb r0, [r2]
	ldr r0, _08024BC0 @ =0x03000022
	adds r2, r3, r0
	movs r0, #0x10
	strb r0, [r2]
	ldr r2, _08024BC4 @ =0x03000025
	adds r3, r3, r2
	mov r0, r8
	strb r0, [r3]
	movs r0, #0xc2
	lsls r0, r0, #0xc
	str r0, [r1, #0x10]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08024BB0: .4byte sub_8024BC8
_08024BB4: .4byte 0x06011D00
_08024BB8: .4byte 0x03000020
_08024BBC: .4byte 0x03000021
_08024BC0: .4byte 0x03000022
_08024BC4: .4byte 0x03000025

	thumb_func_start sub_8024BC8
sub_8024BC8: @ 0x08024BC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08024D30 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r4, _08024D34 @ =gUnknown_03005A20
	ldr r1, [r4]
	asrs r1, r1, #8
	ldrh r0, [r5, #0x16]
	subs r1, r1, r0
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	ldrh r2, [r5, #0x18]
	subs r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_800338C
	ldrh r1, [r5, #0x30]
	adds r1, #0x40
	strh r1, [r5, #0x30]
	movs r1, #0x30
	ldrsh r2, [r5, r1]
	ldr r3, _08024D38 @ =gSineTable
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r6, #0x80
	lsls r6, r6, #1
	adds r1, r0, r6
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r6, #0
	ldrsh r1, [r1, r6]
	muls r1, r2, r1
	asrs r1, r1, #0x16
	ldrh r2, [r5, #0x16]
	adds r1, r1, r2
	strh r1, [r5, #0x16]
	movs r6, #0x30
	ldrsh r1, [r5, r6]
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r1, r0
	asrs r0, r0, #0x16
	ldrh r3, [r5, #0x18]
	adds r0, r0, r3
	strh r0, [r5, #0x18]
	ldrh r6, [r5, #0x18]
	mov r8, r6
	ldrh r0, [r5, #0x16]
	mov sl, r0
	movs r1, #0x16
	ldrsh r3, [r5, r1]
	adds r2, r3, #0
	subs r2, #8
	ldr r1, [r4]
	asrs r1, r1, #8
	ldr r6, _08024D3C @ =gUnknown_03005BE0
	adds r0, r6, #0
	adds r0, #0x38
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r1, r1, r4
	cmp r2, r1
	bgt _08024C6A
	adds r0, r3, #0
	adds r0, #8
	cmp r0, r1
	bge _08024C7C
	cmp r2, r1
	blt _08024D54
_08024C6A:
	adds r0, r6, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	blt _08024D54
_08024C7C:
	mov r3, r8
	lsls r2, r3, #0x10
	asrs r7, r2, #0x10
	adds r4, r7, #0
	subs r4, #0x10
	ldr r1, _08024D34 @ =gUnknown_03005A20
	ldr r0, [r1, #4]
	asrs r0, r0, #8
	ldr r6, _08024D3C @ =gUnknown_03005BE0
	mov ip, r6
	mov r3, ip
	adds r3, #0x39
	movs r6, #0
	ldrsb r6, [r3, r6]
	adds r3, r0, r6
	mov sb, r2
	cmp r4, r3
	bgt _08024CA8
	cmp r7, r3
	bge _08024CBA
	cmp r4, r3
	blt _08024D54
_08024CA8:
	mov r0, ip
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r6
	adds r0, r3, r0
	cmp r0, r4
	blt _08024D54
_08024CBA:
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08024D26
	ldr r1, _08024D40 @ =gRingCount
	ldrh r5, [r1]
	adds r0, r5, #1
	strh r0, [r1]
	ldr r0, _08024D44 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xd
	beq _08024D04
	ldrh r0, [r1]
	movs r1, #0x64
	bl Div
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #0x64
	bl Div
	cmp r4, r0
	beq _08024D04
	ldr r0, _08024D48 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _08024D04
	ldr r1, _08024D4C @ =gNumLives
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _08024D50 @ =gUnknown_03005040
	movs r0, #0x10
	strb r0, [r1, #3]
_08024D04:
	ldr r0, _08024D48 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _08024D18
	ldr r1, _08024D40 @ =gRingCount
	ldrh r0, [r1]
	cmp r0, #0xff
	bls _08024D18
	movs r0, #0xff
	strh r0, [r1]
_08024D18:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r2, sb
	asrs r1, r2, #0x10
	bl sub_801E46C
_08024D26:
	ldr r0, _08024D30 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08024D7A
	.align 2, 0
_08024D30: .4byte gCurTask
_08024D34: .4byte gUnknown_03005A20
_08024D38: .4byte gSineTable
_08024D3C: .4byte gUnknown_03005BE0
_08024D40: .4byte gRingCount
_08024D44: .4byte gCurrentLevel
_08024D48: .4byte gGameMode
_08024D4C: .4byte gNumLives
_08024D50: .4byte gUnknown_03005040
_08024D54:
	ldr r2, _08024D88 @ =gCamera
	ldrh r0, [r5, #0x16]
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r5, #0x16]
	ldrh r0, [r5, #0x18]
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	mov r3, sl
	strh r3, [r5, #0x16]
	mov r6, r8
	strh r6, [r5, #0x18]
_08024D7A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024D88: .4byte gCamera

	thumb_func_start CreateEntity_Interactable024
CreateEntity_Interactable024: @ 0x08024D8C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	adds r4, r1, #0
	adds r5, r2, #0
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _08024E7C @ =sub_8024EA0
	ldr r1, _08024E80 @ =sub_80255DC
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r6, r0
	ldr r1, _08024E84 @ =0x0300000C
	adds r7, r6, r1
	movs r3, #0
	mov sl, r3
	movs r2, #0
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, sb
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #8]
	mov r3, r8
	strb r3, [r0, #9]
	movs r3, #2
	rsbs r3, r3, #0
	adds r1, r3, #0
	mov r3, sb
	strb r1, [r3]
	strh r2, [r0, #0x3c]
	ldrb r0, [r3]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r7, #0x16]
	ldrb r0, [r3, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r7, #0x18]
	movs r0, #0x20
	str r2, [sp, #4]
	bl VramMalloc
	str r0, [r7, #4]
	ldr r1, _08024E88 @ =gUnknown_080BB520
	ldr r0, _08024E8C @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
	ldr r1, _08024E90 @ =0x0300002C
	adds r0, r6, r1
	mov r3, sl
	strb r3, [r0]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	ldr r2, [sp, #4]
	strh r2, [r7, #8]
	strh r2, [r7, #0x14]
	strh r2, [r7, #0x1c]
	ldr r0, _08024E94 @ =0x0300002D
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r3, _08024E98 @ =0x0300002E
	adds r1, r6, r3
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _08024E9C @ =0x03000031
	adds r6, r6, r0
	mov r1, sl
	strb r1, [r6]
	movs r3, #0x80
	lsls r3, r3, #6
	str r3, [r7, #0x10]
	mov r1, sb
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08024E66
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r3
	str r0, [r7, #0x10]
_08024E66:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024E7C: .4byte sub_8024EA0
_08024E80: .4byte sub_80255DC
_08024E84: .4byte 0x0300000C
_08024E88: .4byte gUnknown_080BB520
_08024E8C: .4byte gCurrentLevel
_08024E90: .4byte 0x0300002C
_08024E94: .4byte 0x0300002D
_08024E98: .4byte 0x0300002E
_08024E9C: .4byte 0x03000031

	thumb_func_start sub_8024EA0
sub_8024EA0: @ 0x08024EA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r1, _08024FCC @ =gCurTask
	ldr r0, [r1]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r2, _08024FD0 @ =0x0300000C
	adds r6, r1, r2
	ldr r3, [r7]
	mov sb, r3
	ldrb r2, [r7, #8]
	lsls r2, r2, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _08024FD4 @ =gCamera
	ldrh r0, [r3]
	lsrs r4, r2, #0x10
	mov sl, r4
	asrs r5, r2, #0x10
	subs r0, r5, r0
	strh r0, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsrs r2, r1, #0x10
	str r2, [sp]
	asrs r4, r1, #0x10
	subs r0, r4, r0
	strh r0, [r6, #0x18]
	ldr r3, _08024FD8 @ =gUnknown_03005A20
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800B2BC
	movs r3, #8
	mov r8, r3
	ands r0, r3
	cmp r0, #0
	bne _08024F28
	ldr r0, _08024FDC @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08024F34
	ldr r3, _08024FE0 @ =gUnknown_03005AB0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800B2BC
	mov r4, r8
	ands r0, r4
	cmp r0, #0
	beq _08024F34
_08024F28:
	ldr r1, _08024FCC @ =gCurTask
	ldr r0, [r1]
	ldr r1, _08024FE4 @ =sub_8025008
	str r1, [r0, #8]
	movs r0, #0
	strh r0, [r7, #0x3c]
_08024F34:
	ldr r0, _08024FE8 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _08024F5C
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	movs r0, #3
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08024F5C
	movs r0, #0
	strh r0, [r7, #0x3c]
	ldr r0, _08024FCC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08024FEC @ =sub_8025190
	str r0, [r1, #8]
	movs r0, #0xad
	bl m4aSongNumStart
_08024F5C:
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	ldr r3, _08024FD4 @ =gCamera
	movs r4, #0
	ldrsh r1, [r3, r4]
	movs r4, #0xb8
	lsls r4, r4, #1
	adds r0, r1, r4
	cmp r2, r0
	bgt _08024F96
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _08024F96
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	movs r4, #2
	ldrsh r2, [r3, r4]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r2, r3
	cmp r1, r0
	bgt _08024F96
	adds r0, r2, #0
	subs r0, #0x80
	cmp r1, r0
	bge _08024FF0
_08024F96:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08024FBA
	movs r4, #0x18
	ldrsh r0, [r6, r4]
	adds r0, #0x80
	cmp r0, #0
	blt _08024FBA
	movs r0, #0x18
	ldrsh r1, [r6, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08024FF0
_08024FBA:
	ldrb r0, [r7, #8]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _08024FCC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08024FF6
	.align 2, 0
_08024FCC: .4byte gCurTask
_08024FD0: .4byte 0x0300000C
_08024FD4: .4byte gCamera
_08024FD8: .4byte gUnknown_03005A20
_08024FDC: .4byte gUnknown_03005088
_08024FE0: .4byte gUnknown_03005AB0
_08024FE4: .4byte sub_8025008
_08024FE8: .4byte gGameMode
_08024FEC: .4byte sub_8025190
_08024FF0:
	adds r0, r6, #0
	bl DisplaySprite
_08024FF6:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8025008
sub_8025008: @ 0x08025008
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _080250A0 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r2, _080250A4 @ =0x0300000C
	adds r7, r1, r2
	ldr r3, [r6]
	mov r8, r3
	ldrb r5, [r6, #8]
	lsls r5, r5, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r5, r5, r0
	lsls r5, r5, #0x10
	ldrb r4, [r3, #1]
	lsls r4, r4, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r4, r4, r0
	lsls r4, r4, #0x10
	ldr r1, _080250A8 @ =gCamera
	ldrh r0, [r1]
	lsrs r2, r5, #0x10
	mov sl, r2
	asrs r5, r5, #0x10
	subs r0, r5, r0
	strh r0, [r7, #0x16]
	ldrh r0, [r1, #2]
	lsrs r3, r4, #0x10
	str r3, [sp]
	asrs r4, r4, #0x10
	subs r0, r4, r0
	strh r0, [r7, #0x18]
	ldr r3, _080250AC @ =gUnknown_03005A20
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800B2BC
	ldr r3, _080250B0 @ =gUnknown_03005AB0
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800B2BC
	ldr r0, _080250B4 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _080250BC
	mov r0, r8
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #3
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080250BC
	movs r0, #0
	strh r0, [r6, #0x3c]
	mov r2, sb
	ldr r1, [r2]
	ldr r0, _080250B8 @ =sub_8025190
	str r0, [r1, #8]
	movs r0, #0xad
	bl m4aSongNumStart
	b _080250FA
	.align 2, 0
_080250A0: .4byte gCurTask
_080250A4: .4byte 0x0300000C
_080250A8: .4byte gCamera
_080250AC: .4byte gUnknown_03005A20
_080250B0: .4byte gUnknown_03005AB0
_080250B4: .4byte gGameMode
_080250B8: .4byte sub_8025190
_080250BC:
	ldrh r0, [r6, #0x3c]
	adds r1, r0, #1
	strh r1, [r6, #0x3c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1e
	ble _080250FA
	movs r0, #0
	strh r0, [r6, #0x3c]
	ldr r0, _08025168 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802516C @ =sub_8025190
	str r0, [r1, #8]
	movs r0, #0xad
	bl m4aSongNumStart
	ldr r0, _08025170 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _080250FA
	bl sub_80182FC
	movs r2, #1
	strb r2, [r0]
	ldrh r1, [r6, #4]
	strb r1, [r0, #1]
	ldrh r1, [r6, #6]
	strb r1, [r0, #2]
	ldrb r1, [r6, #9]
	strb r1, [r0, #3]
	strb r2, [r0, #4]
_080250FA:
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r5, r0, #0x10
	ldr r2, _08025174 @ =gCamera
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r3, #0xb8
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r5, r0
	bgt _08025134
	adds r0, r1, #0
	subs r0, #0x80
	cmp r5, r0
	blt _08025134
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	movs r3, #2
	ldrsh r1, [r2, r3]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r4, r0
	bgt _08025134
	adds r0, r1, #0
	subs r0, #0x80
	cmp r4, r0
	bge _08025178
_08025134:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08025158
	movs r3, #0x18
	ldrsh r0, [r7, r3]
	adds r0, #0x80
	cmp r0, #0
	blt _08025158
	movs r0, #0x18
	ldrsh r1, [r7, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08025178
_08025158:
	ldrb r0, [r6, #8]
	mov r1, r8
	strb r0, [r1]
	ldr r0, _08025168 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0802517E
	.align 2, 0
_08025168: .4byte gCurTask
_0802516C: .4byte sub_8025190
_08025170: .4byte gGameMode
_08025174: .4byte gCamera
_08025178:
	adds r0, r7, #0
	bl DisplaySprite
_0802517E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8025190
sub_8025190: @ 0x08025190
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08025244 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0
	ldr r2, _08025248 @ =0x0300000C
	adds r6, r1, r2
	ldr r0, [r0]
	mov sb, r0
	mov r2, r8
	ldrb r1, [r2, #8]
	lsls r1, r1, #3
	ldrh r0, [r2, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r0, sb
	ldrb r4, [r0, #1]
	lsls r4, r4, #3
	ldrh r0, [r2, #6]
	lsls r0, r0, #8
	adds r4, r4, r0
	ldr r5, _0802524C @ =gCamera
	ldrh r0, [r5, #2]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	subs r0, r0, r4
	adds r0, #0xa0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldrh r0, [r5]
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
	subs r0, r7, r0
	strh r0, [r6, #0x16]
	ldrh r0, [r5, #2]
	subs r0, r4, r0
	strh r0, [r6, #0x18]
	ldrh r0, [r2, #0x3c]
	adds r0, #1
	strh r0, [r2, #0x3c]
	ldr r3, _08025250 @ =gUnknown_03005A20
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl sub_800B2BC
	ldr r3, _08025254 @ =gUnknown_03005AB0
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl sub_800B2BC
	movs r2, #0
	ldrsh r1, [r5, r2]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r7, r0
	bgt _08025222
	adds r0, r1, #0
	subs r0, #0x80
	cmp r7, r0
	bge _08025258
_08025222:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bls _08025258
	mov r1, r8
	ldrb r0, [r1, #8]
	mov r2, sb
	strb r0, [r2]
	mov r1, sl
	ldr r0, [r1]
	bl TaskDestroy
	b _080253E4
	.align 2, 0
_08025244: .4byte gCurTask
_08025248: .4byte 0x0300000C
_0802524C: .4byte gCamera
_08025250: .4byte gUnknown_03005A20
_08025254: .4byte gUnknown_03005AB0
_08025258:
	ldr r0, _0802530C @ =gUnknown_03002034
	ldr r1, [r0]
	ldrh r0, [r6, #0xa]
	ldr r1, [r1, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r6, #0xc]
	ldrb r1, [r0, #1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, r2, r0
	mov sl, r2
	movs r5, #0
	mov sb, r5
_08025278:
	movs r7, #0
_0802527A:
	ldr r2, _08025310 @ =0x0000FFE1
	adds r0, r5, r2
	mov r1, r8
	ldrh r1, [r1, #0x3c]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	ble _08025328
	cmp r5, #0
	bne _080252E2
	cmp r0, #1
	bne _080252E2
	ldr r2, _08025314 @ =gUnknown_03005A20
	ldr r1, [r2, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080252B4
	ldr r0, [r2, #0x28]
	cmp r0, r6
	bne _080252B4
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r2, #0x10]
_080252B4:
	ldr r0, _08025318 @ =gUnknown_03005088
	movs r2, #0
	ldrsb r2, [r0, r2]
	cmp r2, #2
	bne _080252DA
	ldr r3, _0802531C @ =gUnknown_03005AB0
	ldr r1, [r3, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080252DA
	ldr r0, [r3, #0x28]
	cmp r0, r6
	bne _080252DA
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	orrs r1, r2
	str r1, [r3, #0x10]
_080252DA:
	ldr r0, _08025320 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08025324 @ =sub_8025400
	str r0, [r1, #8]
_080252E2:
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r0, #0x2a
	muls r0, r1, r0
	muls r1, r0, r1
	lsls r1, r1, #8
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, [sp]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _0802532A
	cmp r5, #0
	bne _080253E4
	ldr r0, _08025320 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080253E4
	.align 2, 0
_0802530C: .4byte gUnknown_03002034
_08025310: .4byte 0x0000FFE1
_08025314: .4byte gUnknown_03005A20
_08025318: .4byte gUnknown_03005088
_0802531C: .4byte gUnknown_03005AB0
_08025320: .4byte gCurTask
_08025324: .4byte sub_8025400
_08025328:
	movs r4, #0
_0802532A:
	ldrh r0, [r6, #0x1a]
	movs r2, #0xf8
	lsls r2, r2, #3
	adds r1, r2, #0
	ands r0, r1
	lsrs r0, r0, #6
	bl OamMalloc
	adds r3, r0, #0
	ldr r0, _08025380 @ =iwram_end
	ldr r0, [r0]
	cmp r0, r3
	beq _080253E4
	mov r0, sb
	lsls r1, r0, #3
	ldrh r2, [r6, #0x18]
	adds r1, r1, r2
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	movs r2, #0
	strh r0, [r3]
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08025388
	lsls r1, r7, #3
	ldrh r0, [r6, #0x16]
	subs r0, r0, r1
	subs r0, #8
	ldr r2, _08025384 @ =0x000001FF
	adds r1, r2, #0
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r0, r1
	b _08025394
	.align 2, 0
_08025380: .4byte iwram_end
_08025384: .4byte 0x000001FF
_08025388:
	lsls r0, r7, #3
	ldrh r1, [r6, #0x16]
	adds r0, r0, r1
	ldr r2, _080253F4 @ =0x000001FF
	adds r1, r2, #0
	ands r0, r1
_08025394:
	strh r0, [r3, #2]
	adds r0, r6, #0
	adds r0, #0x25
	ldrb r0, [r0]
	mov r1, sl
	ldrh r2, [r1, #4]
	adds r2, r2, r0
	ldr r1, _080253F8 @ =0xFFFFF000
	adds r0, r1, #0
	ands r2, r0
	ldr r0, [r6, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #6
	ands r0, r1
	lsrs r0, r0, #2
	orrs r2, r0
	ldr r0, [r6, #4]
	ldr r1, _080253FC @ =0xF9FF0000
	adds r0, r0, r1
	lsrs r0, r0, #5
	adds r0, r0, r5
	orrs r2, r0
	strh r2, [r3, #4]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #7
	bhi _080253D4
	b _0802527A
_080253D4:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #3
	bhi _080253E4
	b _08025278
_080253E4:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080253F4: .4byte 0x000001FF
_080253F8: .4byte 0xFFFFF000
_080253FC: .4byte 0xF9FF0000

	thumb_func_start sub_8025400
sub_8025400: @ 0x08025400
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r6, _08025498 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0
	ldr r0, _0802549C @ =0x0300000C
	adds r5, r1, r0
	mov r1, r8
	ldr r1, [r1]
	str r1, [sp]
	mov r3, r8
	ldrb r2, [r3, #8]
	lsls r2, r2, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _080254A0 @ =gCamera
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	adds r0, #0xa0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r5, #0x16]
	ldrh r0, [r3, #2]
	subs r1, r1, r0
	strh r1, [r5, #0x18]
	mov r1, r8
	ldrh r0, [r1, #0x3c]
	adds r0, #1
	strh r0, [r1, #0x3c]
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r3, #0xb8
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r2, r0
	bgt _08025478
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _080254A4
_08025478:
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bls _080254A4
	mov r1, r8
	ldrb r0, [r1, #8]
	ldr r2, [sp]
	strb r0, [r2]
	ldr r0, [r6]
	bl TaskDestroy
	b _080255C0
	.align 2, 0
_08025498: .4byte gCurTask
_0802549C: .4byte 0x0300000C
_080254A0: .4byte gCamera
_080254A4:
	ldr r0, _08025504 @ =gUnknown_03002034
	ldr r1, [r0]
	ldrh r0, [r5, #0xa]
	ldr r1, [r1, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r5, #0xc]
	ldrb r1, [r0, #1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, r2, r0
	str r2, [sp, #4]
	movs r7, #0
	movs r3, #0
	mov sb, r3
	lsls r4, r4, #0x10
	mov sl, r4
_080254CA:
	movs r6, #0
_080254CC:
	ldr r1, _08025508 @ =0x0000FFE1
	adds r0, r7, r1
	mov r2, r8
	ldrh r2, [r2, #0x3c]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x2a
	muls r1, r0, r1
	muls r0, r1, r0
	lsls r0, r0, #8
	asrs r4, r0, #0x10
	mov r3, sl
	asrs r0, r3, #0x10
	cmp r4, r0
	ble _08025510
	cmp r7, #0
	bne _080255C0
	ldr r0, _0802550C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	mov r1, r8
	ldrb r0, [r1, #8]
	ldr r2, [sp]
	strb r0, [r2]
	b _080255C0
	.align 2, 0
_08025504: .4byte gUnknown_03002034
_08025508: .4byte 0x0000FFE1
_0802550C: .4byte gCurTask
_08025510:
	ldrh r0, [r5, #0x1a]
	movs r3, #0xf8
	lsls r3, r3, #3
	adds r1, r3, #0
	ands r0, r1
	lsrs r0, r0, #6
	bl OamMalloc
	adds r3, r0, #0
	ldr r0, _08025560 @ =iwram_end
	ldr r0, [r0]
	cmp r0, r3
	beq _080255C0
	mov r1, sb
	lsls r0, r1, #3
	ldrh r2, [r5, #0x18]
	adds r0, r0, r2
	adds r0, r4, r0
	movs r1, #0xff
	ands r0, r1
	movs r2, #0
	strh r0, [r3]
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08025568
	lsls r1, r6, #3
	ldrh r0, [r5, #0x16]
	subs r0, r0, r1
	subs r0, #8
	ldr r2, _08025564 @ =0x000001FF
	adds r1, r2, #0
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r0, r1
	b _08025574
	.align 2, 0
_08025560: .4byte iwram_end
_08025564: .4byte 0x000001FF
_08025568:
	lsls r0, r6, #3
	ldrh r1, [r5, #0x16]
	adds r0, r0, r1
	ldr r2, _080255D0 @ =0x000001FF
	adds r1, r2, #0
	ands r0, r1
_08025574:
	strh r0, [r3, #2]
	adds r0, r5, #0
	adds r0, #0x25
	ldrb r0, [r0]
	ldr r1, [sp, #4]
	ldrh r2, [r1, #4]
	adds r2, r2, r0
	ldr r1, _080255D4 @ =0xFFFFF000
	adds r0, r1, #0
	ands r2, r0
	ldr r0, [r5, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #6
	ands r0, r1
	lsrs r0, r0, #2
	orrs r2, r0
	ldr r0, [r5, #4]
	ldr r1, _080255D8 @ =0xF9FF0000
	adds r0, r0, r1
	lsrs r0, r0, #5
	adds r0, r0, r7
	orrs r2, r0
	strh r2, [r3, #4]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #7
	bls _080254CC
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #3
	bls _080254CA
_080255C0:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080255D0: .4byte 0x000001FF
_080255D4: .4byte 0xFFFFF000
_080255D8: .4byte 0xF9FF0000

	thumb_func_start sub_80255DC
sub_80255DC: @ 0x080255DC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80255F0
sub_80255F0: @ 0x080255F0
	push {r4, r5, r6, r7, lr}
	ldr r3, _08025668 @ =gCurTask
	ldr r6, [r3]
	ldrh r1, [r6, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r7, [r4]
	ldrb r2, [r4, #8]
	lsls r2, r2, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	ldrh r1, [r4, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _0802566C @ =gUnknown_03005A20
	ldr r0, [r0]
	asrs r0, r0, #8
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov ip, r3
	cmp r0, r2
	ble _0802568C
	ldr r2, _08025670 @ =gUnknown_03005004
	ldrh r0, [r2]
	movs r1, #1
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _08025674 @ =gBldRegs
	movs r1, #0
	movs r0, #0xff
	strh r0, [r2]
	strh r1, [r2, #4]
	strh r1, [r4, #0xc]
	strh r1, [r4, #0xa]
	ldr r0, _08025678 @ =sub_80256D4
	str r0, [r6, #8]
	ldr r0, _0802567C @ =gMPlayInfo_BGM
	movs r1, #4
	bl m4aMPlayFadeOut
	ldr r0, _08025680 @ =gMPlayInfo_SE1
	movs r1, #4
	bl m4aMPlayFadeOut
	ldr r0, _08025684 @ =gMPlayInfo_SE2
	movs r1, #4
	bl m4aMPlayFadeOut
	ldr r0, _08025688 @ =gMPlayInfo_SE3
	movs r1, #4
	bl m4aMPlayFadeOut
	b _080256CA
	.align 2, 0
_08025668: .4byte gCurTask
_0802566C: .4byte gUnknown_03005A20
_08025670: .4byte gUnknown_03005004
_08025674: .4byte gBldRegs
_08025678: .4byte sub_80256D4
_0802567C: .4byte gMPlayInfo_BGM
_08025680: .4byte gMPlayInfo_SE1
_08025684: .4byte gMPlayInfo_SE2
_08025688: .4byte gMPlayInfo_SE3
_0802568C:
	ldr r3, _080256D0 @ =gCamera
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r6, #0xb8
	lsls r6, r6, #1
	adds r0, r1, r6
	cmp r2, r0
	bgt _080256BE
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _080256BE
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
	movs r0, #2
	ldrsh r1, [r3, r0]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r2, r0
	bgt _080256BE
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _080256CA
_080256BE:
	ldrb r0, [r4, #8]
	strb r0, [r7]
	mov r6, ip
	ldr r0, [r6]
	bl TaskDestroy
_080256CA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080256D0: .4byte gCamera

	thumb_func_start sub_80256D4
sub_80256D4: @ 0x080256D4
	ldr r0, _08025704 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1, #0xc]
	adds r0, #0x40
	strh r0, [r1, #0xc]
	ldr r3, _08025708 @ =gBldRegs
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	strh r0, [r3, #4]
	movs r0, #0xc
	ldrsh r1, [r1, r0]
	ldr r0, _0802570C @ =0x00000FFF
	cmp r1, r0
	ble _08025700
	movs r0, #0x10
	strh r0, [r3, #4]
	ldr r0, _08025710 @ =sub_8025714
	str r0, [r2, #8]
_08025700:
	bx lr
	.align 2, 0
_08025704: .4byte gCurTask
_08025708: .4byte gBldRegs
_0802570C: .4byte 0x00000FFF
_08025710: .4byte sub_8025714

	thumb_func_start sub_8025714
sub_8025714: @ 0x08025714
	push {lr}
	ldr r1, _0802573C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08025740 @ =gUnknown_03002384
	ldr r0, _08025744 @ =gUnknown_0300211C
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08025748 @ =gUnknown_03004C30
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0802574C @ =gVramGraphicsCopyCursor
	ldr r0, _08025750 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl sub_80122E4
	pop {r0}
	bx r0
	.align 2, 0
_0802573C: .4byte 0x0000FFFF
_08025740: .4byte gUnknown_03002384
_08025744: .4byte gUnknown_0300211C
_08025748: .4byte gUnknown_03004C30
_0802574C: .4byte gVramGraphicsCopyCursor
_08025750: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start CreateEntity_Interactable041
CreateEntity_Interactable041: @ 0x08025754
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _0802579C @ =sub_80255F0
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x10
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	str r6, [r0]
	ldrb r1, [r6]
	strb r1, [r0, #8]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802579C: .4byte sub_80255F0

	thumb_func_start sub_80257A0
sub_80257A0: @ 0x080257A0
	push {r4, r5, r6, r7, lr}
	ldr r7, _0802581C @ =gCurTask
	ldr r0, [r7]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r6, [r4]
	ldr r1, [r6, #4]
	cmp r1, #0
	blt _080257BE
	ldr r0, _08025820 @ =0x0000FFFF
	ands r1, r0
	cmp r1, #0
	bne _08025870
_080257BE:
	ldr r3, _08025824 @ =gMPlayTable
	ldr r5, _08025828 @ =gSongTable
	ldrh r2, [r4, #8]
	lsls r2, r2, #3
	adds r2, r2, r5
	ldrh r1, [r2, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r0, [r2]
	cmp r1, r0
	bne _08025870
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r2, [r4, #4]
	cmp r2, r0
	bne _08025830
	ldr r0, _0802582C @ =gUnknown_03005A20
	adds r0, #0x26
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08025830
	adds r0, r6, #0
	adds r1, r2, #0
	bl MPlayStart
	ldr r0, [r4]
	bl m4aMPlayImmInit
	ldr r0, [r4]
	movs r1, #0xff
	movs r2, #4
	bl m4aMPlayVolumeControl
	ldr r0, [r4]
	bl MPlayStop
	ldr r0, [r7]
	bl TaskDestroy
	b _08025870
	.align 2, 0
_0802581C: .4byte gCurTask
_08025820: .4byte 0x0000FFFF
_08025824: .4byte gMPlayTable
_08025828: .4byte gSongTable
_0802582C: .4byte gUnknown_03005A20
_08025830:
	ldr r0, [r4]
	adds r1, r2, #0
	bl MPlayStart
	ldr r0, [r4]
	bl m4aMPlayImmInit
	ldr r0, _08025878 @ =gUnknown_03005A20
	adds r0, #0x26
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08025856
	ldr r0, _0802587C @ =gMPlayInfo_BGM
	movs r1, #0x80
	lsls r1, r1, #2
	bl m4aMPlayTempoControl
_08025856:
	ldr r0, [r4]
	movs r1, #0xff
	movs r2, #4
	bl m4aMPlayVolumeControl
	ldr r0, [r4]
	movs r1, #4
	bl m4aMPlayFadeIn
	ldr r0, _08025880 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08025870:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025878: .4byte gUnknown_03005A20
_0802587C: .4byte gMPlayInfo_BGM
_08025880: .4byte gCurTask

	thumb_func_start sub_8025884
sub_8025884: @ 0x08025884
	ldr r0, _08025890 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08025894 @ =sub_80257A0
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_08025890: .4byte gCurTask
_08025894: .4byte sub_80257A0

	thumb_func_start sub_8025898
sub_8025898: @ 0x08025898
	ldr r0, _080258A4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080258A8 @ =sub_80258AC
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_080258A4: .4byte gCurTask
_080258A8: .4byte sub_80258AC

	thumb_func_start sub_80258AC
sub_80258AC: @ 0x080258AC
	push {r4, r5, lr}
	ldr r5, _0802590C @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4]
	ldr r1, [r0, #4]
	cmp r1, #0
	blt _080258CA
	ldr r0, _08025910 @ =0x0000FFFF
	ands r1, r0
	cmp r1, #0
	bne _08025904
_080258CA:
	ldrh r0, [r4, #0xa]
	bl m4aSongNumStartOrContinue
	ldr r2, _08025914 @ =gMPlayTable
	ldr r1, _08025918 @ =gSongTable
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r4, [r0]
	adds r0, r4, #0
	movs r1, #0xff
	movs r2, #4
	bl m4aMPlayVolumeControl
	adds r0, r4, #0
	movs r1, #4
	bl m4aMPlayFadeIn
	ldr r0, [r5]
	bl TaskDestroy
	ldr r1, _0802591C @ =gUnknown_03005730
	movs r0, #0
	strb r0, [r1]
_08025904:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802590C: .4byte gCurTask
_08025910: .4byte 0x0000FFFF
_08025914: .4byte gMPlayTable
_08025918: .4byte gSongTable
_0802591C: .4byte gUnknown_03005730

	thumb_func_start sub_8025920
sub_8025920: @ 0x08025920
	push {r4, r5, r6, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r3, _08025974 @ =gMPlayTable
	ldr r0, _08025978 @ =gSongTable
	lsls r2, r4, #3
	adds r2, r2, r0
	ldrh r1, [r2, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r5, [r0]
	ldr r6, [r5]
	ldr r0, [r2]
	cmp r6, r0
	beq _0802596A
	ldr r0, _0802597C @ =sub_8025884
	movs r2, #0xc0
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r5, [r0]
	str r6, [r0, #4]
	strh r4, [r0, #8]
	adds r0, r4, #0
	bl m4aSongNumStart
_0802596A:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08025974: .4byte gMPlayTable
_08025978: .4byte gSongTable
_0802597C: .4byte sub_8025884

	thumb_func_start sub_8025980
sub_8025980: @ 0x08025980
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r0, _080259D8 @ =gMPlayTable
	ldr r4, [r0, #0x24]
	ldr r5, [r4]
	ldr r1, _080259DC @ =gSongTable
	lsls r0, r6, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r5, r0
	beq _080259CE
	ldr r0, _080259E0 @ =sub_8025898
	movs r2, #0xc0
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r4, [r0]
	str r5, [r0, #4]
	strh r6, [r0, #8]
	strh r7, [r0, #0xa]
	ldr r1, _080259E4 @ =gUnknown_03005730
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _080259E8 @ =gMPlayInfo_SE3
	ldr r1, _080259EC @ =0x087B8F20
	bl MPlayStart
_080259CE:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080259D8: .4byte gMPlayTable
_080259DC: .4byte gSongTable
_080259E0: .4byte sub_8025898
_080259E4: .4byte gUnknown_03005730
_080259E8: .4byte gMPlayInfo_SE3
_080259EC: .4byte 0x087B8F20
