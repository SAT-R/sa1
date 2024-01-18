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
	ldr r1, _0801E548 @ =song117
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
_0801E548: .4byte song117
_0801E54C: .4byte 0x0000FFFF
_0801E550:
	ldr r4, _0801E58C @ =gMPlayInfo_SE1
	ldr r1, _0801E590 @ =song117
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
_0801E590: .4byte song117
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
	bl CreateDustCloud
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
	bl CreateDustCloud
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
