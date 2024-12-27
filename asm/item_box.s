.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

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
	ldr r0, _0801E884 @ =Task_Itembox3
	str r0, [r1, #8]
	ldr r1, _0801E888 @ =0x03000070
	adds r0, r5, r1
	mov r2, sl
	strb r2, [r0]
	ldr r2, _0801E88C @ =gPlayer
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
_0801E884: .4byte Task_Itembox3
_0801E888: .4byte 0x03000070
_0801E88C: .4byte gPlayer
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
	ldr r5, _0801E9F0 @ =gPlayer
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
	ldr r3, _0801E9F8 @ =gPartner
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
	ldr r3, _0801E9F0 @ =gPlayer
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
_0801E9F0: .4byte gPlayer
_0801E9F4: .4byte gUnknown_03005088
_0801E9F8: .4byte gPartner
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
	ldr r2, _0801EAC8 @ =gPlayer
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
	ldr r2, _0801EACC @ =gPartner
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
	ldr r0, _0801EAD4 @ =Task_Itembox2
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
_0801EAC8: .4byte gPlayer
_0801EACC: .4byte gPartner
_0801EAD0: .4byte gCurTask
_0801EAD4: .4byte Task_Itembox2
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

	thumb_func_start Task_Itembox2
Task_Itembox2: @ 0x0801EC28
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
	.4byte _0801ED78 @ case 4 - Speed Shoes
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
	ldr r2, _0801ED14 @ =gPlayer
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
_0801ED14: .4byte gPlayer
_0801ED18:
	ldr r2, _0801ED38 @ =gPlayer
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
_0801ED38: .4byte gPlayer
_0801ED3C:
	ldr r4, _0801ED70 @ =gPlayer
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
_0801ED70: .4byte gPlayer
_0801ED74: .4byte gUnknown_03005040
_0801ED78:
	ldr r2, _0801EDB0 @ =gPlayer
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
_0801EDB0: .4byte gPlayer
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
	ldr r3, _0801EFC8 @ =gPlayer
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
_0801EFC8: .4byte gPlayer
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
	ldr r0, _0801F03C @ =Task_Itembox4
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
_0801F03C: .4byte Task_Itembox4
_0801F040: .4byte gCamera

	thumb_func_start Task_Itembox3
Task_Itembox3: @ 0x0801F044
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
	ldr r1, _0801F0DC @ =Task_Itembox4
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
_0801F0DC: .4byte Task_Itembox4
_0801F0E0: .4byte 0x0300003C
_0801F0E4: .4byte gCamera

	thumb_func_start Task_Itembox4
Task_Itembox4: @ 0x0801F0E8
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
