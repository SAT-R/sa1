.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_UnderwaterLavaPlatform
CreateEntity_UnderwaterLavaPlatform: @ 0x08092600
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	mov r8, r1
	mov sb, r2
	mov sl, r3
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r1, sb
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	mov r0, sl
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	ldr r0, _08092724 @ =Task_UnderwaterLavaPlatform
	ldr r1, _08092728 @ =TaskDestructor_UnderwaterLavaPlatform
	str r1, [sp]
	movs r1, #0x88
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldr r1, _0809272C @ =0x0300000C
	adds r5, r4, r1
	adds r1, #0x38
	adds r2, r4, r1
	movs r6, #0
	mov r1, r8
	strh r1, [r0, #4]
	mov r1, sb
	strh r1, [r0, #6]
	str r7, [r0]
	ldrb r1, [r7]
	strb r1, [r0, #8]
	mov r1, sl
	strb r1, [r0, #9]
	str r6, [r0, #0x78]
	str r6, [r0, #0x7c]
	ldr r1, _08092730 @ =0x03000074
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	ldr r1, _08092734 @ =0x03000080
	adds r0, r4, r1
	str r6, [r0]
	adds r1, #4
	adds r0, r4, r1
	str r6, [r0]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	movs r0, #0x10
	str r2, [sp, #4]
	bl VramMalloc
	str r0, [r5, #4]
	ldr r0, _08092738 @ =0x00000231
	strh r0, [r5, #0xa]
	ldr r1, _0809273C @ =0x0300002C
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	strh r6, [r5, #8]
	strh r6, [r5, #0x14]
	strh r6, [r5, #0x1c]
	ldr r0, _08092740 @ =0x0300002D
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08092744 @ =0x0300002E
	adds r0, r4, r1
	movs r1, #0x10
	mov sb, r1
	mov r1, sb
	strb r1, [r0]
	ldr r1, _08092748 @ =0x03000031
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	str r0, [r5, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r5, #0x10]
	movs r0, #0x12
	bl VramMalloc
	ldr r2, [sp, #4]
	str r0, [r2, #4]
	ldr r0, _0809274C @ =0x0000020D
	strh r0, [r2, #0xa]
	ldr r1, _08092750 @ =0x03000064
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r2, #0x1a]
	strh r6, [r2, #8]
	strh r6, [r2, #0x14]
	strh r6, [r2, #0x1c]
	ldr r0, _08092754 @ =0x03000065
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08092758 @ =0x03000066
	adds r0, r4, r1
	mov r1, sb
	strb r1, [r0]
	ldr r0, _0809275C @ =0x03000069
	adds r4, r4, r0
	movs r1, #0
	strb r1, [r4]
	mov r0, r8
	str r0, [r2, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r2, #0x10]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08092724: .4byte Task_UnderwaterLavaPlatform
_08092728: .4byte TaskDestructor_UnderwaterLavaPlatform
_0809272C: .4byte 0x0300000C
_08092730: .4byte 0x03000074
_08092734: .4byte 0x03000080
_08092738: .4byte 0x00000231
_0809273C: .4byte 0x0300002C
_08092740: .4byte 0x0300002D
_08092744: .4byte 0x0300002E
_08092748: .4byte 0x03000031
_0809274C: .4byte 0x0000020D
_08092750: .4byte 0x03000064
_08092754: .4byte 0x03000065
_08092758: .4byte 0x03000066
_0809275C: .4byte 0x03000069

	thumb_func_start Task_UnderwaterLavaPlatform
Task_UnderwaterLavaPlatform: @ 0x08092760
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _080927E8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov sl, r0
	ldr r0, [r0]
	str r0, [sp, #8]
	ldr r2, _080927EC @ =0x0300000C
	adds r2, r2, r1
	mov sb, r2
	ldr r3, _080927F0 @ =0x03000044
	adds r3, r1, r3
	str r3, [sp, #0xc]
	mov r4, sl
	ldrb r2, [r4, #8]
	lsls r2, r2, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldr r0, [sp, #8]
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _080927F4 @ =gCamera
	ldrh r0, [r3]
	lsrs r4, r2, #0x10
	str r4, [sp]
	asrs r2, r2, #0x10
	subs r0, r2, r0
	mov r4, sb
	strh r0, [r4, #0x16]
	ldrh r0, [r3, #2]
	lsrs r4, r1, #0x10
	str r4, [sp, #4]
	asrs r1, r1, #0x10
	subs r0, r1, r0
	subs r0, #3
	mov r4, sb
	strh r0, [r4, #0x18]
	ldrh r0, [r3]
	subs r2, r2, r0
	ldr r0, [sp, #0xc]
	strh r2, [r0, #0x16]
	ldrh r0, [r3, #2]
	subs r1, r1, r0
	ldr r2, [sp, #0xc]
	strh r1, [r2, #0x18]
	movs r5, #0
	ldr r3, _080927F8 @ =gPartner
	mov r8, r3
	ldr r7, _080927FC @ =gPlayer
_080927DE:
	cmp r5, #0
	beq _08092800
	mov r4, r8
	ldr r6, [r4]
	b _08092802
	.align 2, 0
_080927E8: .4byte gCurTask
_080927EC: .4byte 0x0300000C
_080927F0: .4byte 0x03000044
_080927F4: .4byte gCamera
_080927F8: .4byte gPartner
_080927FC: .4byte gPlayer
_08092800:
	ldr r6, [r7]
_08092802:
	ldr r0, [sp]
	lsls r1, r0, #0x10
	asrs r2, r1, #0x10
	ldr r3, [sp, #4]
	lsls r0, r3, #0x10
	asrs r4, r0, #0x10
	ldr r3, _0809283C @ =gPlayer
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	cmp r5, #0
	beq _0809281A
	ldr r3, _08092840 @ =gPartner
_0809281A:
	ldr r0, [sp, #0xc]
	adds r1, r2, #0
	adds r2, r4, #0
	bl Coll_Player_PlatformCrumbling
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	beq _08092864
	adds r0, r4, #0
	subs r0, #0x1b
	lsls r0, r0, #8
	cmp r5, #0
	beq _08092844
	mov r4, r8
	str r0, [r4, #4]
	b _08092846
	.align 2, 0
_0809283C: .4byte gPlayer
_08092840: .4byte gPartner
_08092844:
	str r0, [r7, #4]
_08092846:
	cmp r5, #0
	beq _0809285A
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, r8
	str r0, [r2, #0x10]
	b _08092864
_0809285A:
	ldr r0, [r7, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
_08092864:
	cmp r5, #0
	beq _0809286E
	mov r3, r8
	str r6, [r3]
	b _08092870
_0809286E:
	str r6, [r7]
_08092870:
	ldr r3, _08092900 @ =gPlayer
	ldr r0, [sp, #0x10]
	asrs r4, r0, #0x10
	ldr r1, [sp, #0x14]
	asrs r6, r1, #0x10
	cmp r5, #0
	beq _08092880
	ldr r3, _08092904 @ =gPartner
_08092880:
	mov r0, sb
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_80096B0
	adds r5, #1
	ldr r0, _08092908 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	blt _080927DE
	ldr r2, _0809290C @ =gCamera
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r3, #0xb8
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r4, r0
	bgt _080928C6
	adds r0, r1, #0
	subs r0, #0x80
	cmp r4, r0
	blt _080928C6
	movs r4, #2
	ldrsh r1, [r2, r4]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r6, r0
	bgt _080928C6
	adds r0, r1, #0
	subs r0, #0x80
	cmp r6, r0
	bge _08092914
_080928C6:
	mov r3, sb
	ldrh r0, [r3, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080928EC
	movs r4, #0x18
	ldrsh r0, [r3, r4]
	adds r0, #0x80
	cmp r0, #0
	blt _080928EC
	movs r0, #0x18
	ldrsh r1, [r3, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08092914
_080928EC:
	mov r1, sl
	ldrb r0, [r1, #8]
	ldr r2, [sp, #8]
	strb r0, [r2]
	ldr r0, _08092910 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0809297E
	.align 2, 0
_08092900: .4byte gPlayer
_08092904: .4byte gPartner
_08092908: .4byte gNumSingleplayerCharacters
_0809290C: .4byte gCamera
_08092910: .4byte gCurTask
_08092914:
	ldr r0, _08092990 @ =gStageTime
	ldr r0, [r0]
	movs r1, #0x66
	bl Mod
	adds r2, r0, #0
	cmp r2, #0
	bne _08092966
	mov r1, sl
	adds r1, #0x84
	movs r0, #0x66
	str r0, [r1]
	mov r0, sl
	adds r0, #0x74
	strb r2, [r0]
	ldr r0, _08092994 @ =0xFFFFFB00
	mov r3, sl
	str r0, [r3, #0x78]
	str r2, [r3, #0x7c]
	subs r1, #4
	movs r0, #3
	str r0, [r1]
	movs r1, #0
	movs r0, #0x8c
	lsls r0, r0, #2
	mov r4, sb
	strh r0, [r4, #0xa]
	mov r0, sb
	adds r0, #0x20
	strb r1, [r0]
	mov r1, sb
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0xb6
	bl m4aSongNumStart
	ldr r0, _08092998 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809299C @ =sub_80929A0
	str r0, [r1, #8]
_08092966:
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, sb
	bl DisplaySprite
	ldr r0, [sp, #0xc]
	bl UpdateSpriteAnimation
	ldr r0, [sp, #0xc]
	bl DisplaySprite
_0809297E:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08092990: .4byte gStageTime
_08092994: .4byte 0xFFFFFB00
_08092998: .4byte gCurTask
_0809299C: .4byte sub_80929A0

	thumb_func_start sub_80929A0
sub_80929A0: @ 0x080929A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r0, _08092A84 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r4
	mov sl, r0
	ldr r1, [r0]
	ldr r0, _08092A88 @ =0x0300000C
	adds r0, r0, r4
	mov sb, r0
	ldr r2, _08092A8C @ =0x03000044
	adds r2, r4, r2
	str r2, [sp, #8]
	mov r5, sl
	ldrb r3, [r5, #8]
	lsls r3, r3, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r3, r3, r0
	lsls r3, r3, #0x10
	ldrb r2, [r1, #1]
	lsls r2, r2, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldr r1, [r5, #0x78]
	adds r1, #0x25
	str r1, [r5, #0x78]
	ldr r0, [r5, #0x7c]
	adds r0, r0, r1
	str r0, [r5, #0x7c]
	ldr r1, _08092A90 @ =gCamera
	ldrh r0, [r1]
	lsrs r5, r3, #0x10
	str r5, [sp]
	asrs r3, r3, #0x10
	subs r0, r3, r0
	mov r5, sb
	strh r0, [r5, #0x16]
	ldrh r0, [r1, #2]
	lsrs r5, r2, #0x10
	str r5, [sp, #4]
	asrs r2, r2, #0x10
	subs r0, r2, r0
	subs r0, #3
	mov r5, sb
	strh r0, [r5, #0x18]
	ldrh r0, [r1]
	subs r3, r3, r0
	ldr r0, [sp, #8]
	strh r3, [r0, #0x16]
	ldrh r0, [r1, #2]
	subs r2, r2, r0
	mov r1, sl
	ldr r0, [r1, #0x7c]
	asrs r0, r0, #8
	adds r2, r2, r0
	ldr r3, [sp, #8]
	strh r2, [r3, #0x18]
	movs r6, #0
	ldr r5, _08092A94 @ =0x03000074
	adds r5, r5, r4
	mov r8, r5
	ldr r0, _08092A94 @ =0x03000074
	adds r0, r4, r0
	str r0, [sp, #0x10]
_08092A34:
	mov r1, r8
	ldrb r0, [r1]
	asrs r0, r6
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _08092AC8
	ldr r5, [sp]
	lsls r3, r5, #0x10
	asrs r7, r3, #0x10
	mov r0, sl
	ldr r1, [r0, #0x7c]
	asrs r1, r1, #8
	ldr r5, [sp, #4]
	lsls r2, r5, #0x10
	asrs r0, r2, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	ldr r5, _08092A98 @ =gPlayer
	str r3, [sp, #0x14]
	str r2, [sp, #0x18]
	cmp r6, #0
	beq _08092A66
	ldr r5, _08092A9C @ =gPartner
_08092A66:
	ldr r0, [sp, #8]
	adds r1, r7, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl Coll_Player_Entity_Intersection
	cmp r0, #0
	bne _08092AA0
	movs r1, #1
	lsls r1, r6
	mov r2, r8
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
	b _08092BE4
	.align 2, 0
_08092A84: .4byte gCurTask
_08092A88: .4byte 0x0300000C
_08092A8C: .4byte 0x03000044
_08092A90: .4byte gCamera
_08092A94: .4byte 0x03000074
_08092A98: .4byte gPlayer
_08092A9C: .4byte gPartner
_08092AA0:
	mov r3, sl
	ldr r1, [r3, #0x78]
	cmp r6, #0
	beq _08092AB8
	ldr r5, _08092AB4 @ =gPartner
	ldr r0, [r5, #4]
	adds r0, r0, r1
	str r0, [r5, #4]
	b _08092BE4
	.align 2, 0
_08092AB4: .4byte gPartner
_08092AB8:
	ldr r2, _08092AC4 @ =gPlayer
	ldr r0, [r2, #4]
	adds r0, r0, r1
	str r0, [r2, #4]
	b _08092BE4
	.align 2, 0
_08092AC4: .4byte gPlayer
_08092AC8:
	ldr r3, [sp]
	lsls r0, r3, #0x10
	asrs r7, r0, #0x10
	mov r5, sl
	ldr r1, [r5, #0x7c]
	asrs r1, r1, #8
	ldr r3, [sp, #4]
	lsls r2, r3, #0x10
	asrs r4, r2, #0x10
	adds r1, r4, r1
	lsls r1, r1, #0x10
	asrs r3, r1, #0x10
	ldr r5, _08092B14 @ =gPlayer
	str r0, [sp, #0x14]
	str r2, [sp, #0x18]
	cmp r6, #0
	beq _08092AEC
	ldr r5, _08092B18 @ =gPartner
_08092AEC:
	ldr r0, [sp, #8]
	adds r1, r7, #0
	adds r2, r3, #0
	adds r3, r5, #0
	bl Coll_Player_PlatformCrumbling
	cmp r0, #0
	beq _08092BD8
	mov r5, sl
	ldr r0, [r5, #0x7c]
	asrs r0, r0, #8
	adds r0, r4, r0
	subs r0, #0x1b
	lsls r0, r0, #8
	cmp r6, #0
	beq _08092B1C
	ldr r1, _08092B18 @ =gPartner
	str r0, [r1, #4]
	b _08092B20
	.align 2, 0
_08092B14: .4byte gPlayer
_08092B18: .4byte gPartner
_08092B1C:
	ldr r2, _08092B40 @ =gPlayer
	str r0, [r2, #4]
_08092B20:
	movs r0, #1
	lsls r0, r6
	ldr r3, [sp, #0x10]
	ldrb r1, [r3]
	orrs r0, r1
	strb r0, [r3]
	cmp r6, #0
	beq _08092B48
	ldr r5, _08092B44 @ =gPartner
	ldr r0, [r5, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08092B54
	b _08092B60
	.align 2, 0
_08092B40: .4byte gPlayer
_08092B44: .4byte gPartner
_08092B48:
	ldr r1, _08092B6C @ =gPlayer
	ldr r0, [r1, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08092B60
_08092B54:
	movs r1, #1
	lsls r1, r6
	ldr r2, [sp, #0x10]
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
_08092B60:
	cmp r6, #0
	beq _08092B74
	ldr r3, _08092B70 @ =gPartner
	movs r5, #0xa
	ldrsh r0, [r3, r5]
	b _08092B7A
	.align 2, 0
_08092B6C: .4byte gPlayer
_08092B70: .4byte gPartner
_08092B74:
	ldr r1, _08092B90 @ =gPlayer
	movs r2, #0xa
	ldrsh r0, [r1, r2]
_08092B7A:
	cmp r0, #0
	bne _08092BE4
	cmp r6, #0
	beq _08092B98
	ldr r3, _08092B94 @ =gPartner + 0x40
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #4
	bne _08092BA2
	b _08092BE4
	.align 2, 0
_08092B90: .4byte gPlayer
_08092B94: .4byte gPartner + 0x40
_08092B98:
	ldr r5, _08092BBC @ =gPlayer + 0x40
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #4
	beq _08092BE4
_08092BA2:
	ldr r0, _08092BC0 @ =gPlayer
	cmp r6, #0
	beq _08092BAA
	ldr r0, _08092BC4 @ =gPartner
_08092BAA:
	bl Player_TransitionCancelFlyingAndBoost
	cmp r6, #0
	beq _08092BCC
	movs r0, #4
	ldr r1, _08092BC8 @ =gPartner + 0x40
	strb r0, [r1]
	b _08092BE4
	.align 2, 0
_08092BBC: .4byte gPlayer + 0x40
_08092BC0: .4byte gPlayer
_08092BC4: .4byte gPartner
_08092BC8: .4byte gPartner + 0x40
_08092BCC:
	movs r0, #4
	ldr r2, _08092BD4 @ =gPlayer + 0x40
	strb r0, [r2]
	b _08092BE4
	.align 2, 0
_08092BD4: .4byte gPlayer + 0x40
_08092BD8:
	movs r1, #1
	lsls r1, r6
	mov r3, r8
	ldrb r0, [r3]
	bics r0, r1
	strb r0, [r3]
_08092BE4:
	adds r6, #1
	ldr r0, _08092C1C @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r6, r0
	bge _08092BF4
	b _08092A34
_08092BF4:
	mov r0, sl
	adds r0, #0x84
	ldr r2, [r0]
	subs r1, r2, #1
	str r1, [r0]
	cmp r1, #0x30
	bne _08092C24
	mov r1, sb
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	movs r1, #0
	ldr r0, _08092C20 @ =0x00000231
	mov r5, sb
	strh r0, [r5, #0xa]
	mov r0, sb
	adds r0, #0x20
	strb r1, [r0]
	b _08092E54
	.align 2, 0
_08092C1C: .4byte gNumSingleplayerCharacters
_08092C20: .4byte 0x00000231
_08092C24:
	adds r0, r2, #0
	subs r0, #0x32
	cmp r0, #0x2e
	bls _08092C2E
	b _08092E68
_08092C2E:
	movs r5, #0
	ldr r6, _08092C80 @ =gPlayerBodyPSI+0xC+0x28
	ldr r0, [sp, #0x14]
	asrs r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r4, _08092C84 @ =gPartner
	ldr r7, _08092C88 @ =gPlayer
	ldr r1, [sp, #0x18]
	asrs r1, r1, #0x10
	mov r8, r1
_08092C42:
	ldr r1, _08092C80 @ =gPlayerBodyPSI+0xC+0x28
	cmp r5, #0
	beq _08092C4A
	ldr r1, _08092C8C @ =gPartnerBodyPSI+0xC+0x28
_08092C4A:
	ldr r1, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08092C56
	b _08092E44
_08092C56:
	adds r0, r6, #0
	cmp r5, #0
	beq _08092C5E
	ldr r0, _08092C8C @ =gPartnerBodyPSI+0xC+0x28
_08092C5E:
	movs r3, #4
	ldrsb r3, [r0, r3]
	mov r1, sb
	adds r1, #0x34
	movs r2, #0
	ldrsb r2, [r1, r2]
	ldr r0, [sp, #0xc]
	adds r2, r0, r2
	cmp r5, #0
	beq _08092C90
	ldr r0, [r4]
	asrs r0, r0, #8
	adds r0, r0, r3
	cmp r2, r0
	ble _08092C9A
	b _08092CCA
	.align 2, 0
_08092C80: .4byte gPlayerBodyPSI+0xC+0x28
_08092C84: .4byte gPartner
_08092C88: .4byte gPlayer
_08092C8C: .4byte gPartnerBodyPSI+0xC+0x28
_08092C90:
	ldr r0, [r7]
	asrs r0, r0, #8
	adds r0, r0, r3
	cmp r2, r0
	bgt _08092CCA
_08092C9A:
	adds r0, r6, #0
	cmp r5, #0
	beq _08092CA2
	ldr r0, _08092CBC @ =gPartnerBodyPSI+0xC+0x28
_08092CA2:
	movs r3, #4
	ldrsb r3, [r0, r3]
	mov r0, sb
	adds r0, #0x36
	movs r2, #0
	ldrsb r2, [r0, r2]
	ldr r0, [sp, #0xc]
	adds r2, r2, r0
	cmp r5, #0
	beq _08092CC0
	ldr r0, [r4]
	b _08092CC2
	.align 2, 0
_08092CBC: .4byte gPartnerBodyPSI+0xC+0x28
_08092CC0:
	ldr r0, [r7]
_08092CC2:
	asrs r0, r0, #8
	adds r0, r0, r3
	cmp r2, r0
	bge _08092D56
_08092CCA:
	adds r0, r6, #0
	cmp r5, #0
	beq _08092CD2
	ldr r0, _08092CF0 @ =gPartnerBodyPSI+0xC+0x28
_08092CD2:
	movs r2, #4
	ldrsb r2, [r0, r2]
	movs r3, #0
	ldrsb r3, [r1, r3]
	ldr r0, [sp, #0xc]
	adds r3, r0, r3
	cmp r5, #0
	beq _08092CF4
	ldr r0, [r4]
	asrs r0, r0, #8
	adds r0, r0, r2
	cmp r3, r0
	bge _08092D00
	b _08092E44
	.align 2, 0
_08092CF0: .4byte gPartnerBodyPSI+0xC+0x28
_08092CF4:
	ldr r0, [r7]
	asrs r0, r0, #8
	adds r0, r0, r2
	cmp r3, r0
	bge _08092D00
	b _08092E44
_08092D00:
	adds r0, r6, #0
	cmp r5, #0
	beq _08092D08
	ldr r0, _08092D44 @ =gPartnerBodyPSI+0xC+0x28
_08092D08:
	movs r3, #4
	ldrsb r3, [r0, r3]
	adds r0, r6, #0
	cmp r5, #0
	beq _08092D14
	ldr r0, _08092D44 @ =gPartnerBodyPSI+0xC+0x28
_08092D14:
	movs r2, #6
	ldrsb r2, [r0, r2]
	adds r0, r6, #0
	cmp r5, #0
	beq _08092D20
	ldr r0, _08092D44 @ =gPartnerBodyPSI+0xC+0x28
_08092D20:
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r2, r2, r0
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldr r0, [sp, #0xc]
	adds r1, r0, r1
	cmp r5, #0
	beq _08092D48
	ldr r0, [r4]
	asrs r0, r0, #8
	adds r0, r0, r3
	adds r0, r0, r2
	cmp r0, r1
	bge _08092D56
	b _08092E44
	.align 2, 0
_08092D44: .4byte gPartnerBodyPSI+0xC+0x28
_08092D48:
	ldr r0, [r7]
	asrs r0, r0, #8
	adds r0, r0, r3
	adds r0, r0, r2
	cmp r0, r1
	bge _08092D56
	b _08092E44
_08092D56:
	adds r0, r6, #0
	cmp r5, #0
	beq _08092D5E
	ldr r0, _08092D7C @ =gPartnerBodyPSI+0xC+0x28
_08092D5E:
	movs r3, #5
	ldrsb r3, [r0, r3]
	mov r1, sb
	adds r1, #0x35
	movs r2, #0
	ldrsb r2, [r1, r2]
	add r2, r8
	cmp r5, #0
	beq _08092D80
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	adds r0, r0, r3
	cmp r2, r0
	ble _08092D8A
	b _08092DB6
	.align 2, 0
_08092D7C: .4byte gPartnerBodyPSI+0xC+0x28
_08092D80:
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	adds r0, r0, r3
	cmp r2, r0
	bgt _08092DB6
_08092D8A:
	adds r0, r6, #0
	cmp r5, #0
	beq _08092D92
	ldr r0, _08092DA8 @ =gPartnerBodyPSI+0xC+0x28
_08092D92:
	movs r3, #5
	ldrsb r3, [r0, r3]
	mov r0, sb
	adds r0, #0x37
	movs r2, #0
	ldrsb r2, [r0, r2]
	add r2, r8
	cmp r5, #0
	beq _08092DAC
	ldr r0, [r4, #4]
	b _08092DAE
	.align 2, 0
_08092DA8: .4byte gPartnerBodyPSI+0xC+0x28
_08092DAC:
	ldr r0, [r7, #4]
_08092DAE:
	asrs r0, r0, #8
	adds r0, r0, r3
	cmp r2, r0
	bge _08092E38
_08092DB6:
	adds r0, r6, #0
	cmp r5, #0
	beq _08092DBE
	ldr r0, _08092DD8 @ =gPartnerBodyPSI+0xC+0x28
_08092DBE:
	movs r2, #5
	ldrsb r2, [r0, r2]
	movs r3, #0
	ldrsb r3, [r1, r3]
	add r3, r8
	cmp r5, #0
	beq _08092DDC
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	adds r0, r0, r2
	cmp r3, r0
	bge _08092DE6
	b _08092E44
	.align 2, 0
_08092DD8: .4byte gPartnerBodyPSI+0xC+0x28
_08092DDC:
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	adds r0, r0, r2
	cmp r3, r0
	blt _08092E44
_08092DE6:
	adds r0, r6, #0
	cmp r5, #0
	beq _08092DEE
	ldr r0, _08092E28 @ =gPartnerBodyPSI+0xC+0x28
_08092DEE:
	movs r3, #5
	ldrsb r3, [r0, r3]
	adds r0, r6, #0
	cmp r5, #0
	beq _08092DFA
	ldr r0, _08092E28 @ =gPartnerBodyPSI+0xC+0x28
_08092DFA:
	movs r2, #7
	ldrsb r2, [r0, r2]
	adds r0, r6, #0
	cmp r5, #0
	beq _08092E06
	ldr r0, _08092E28 @ =gPartnerBodyPSI+0xC+0x28
_08092E06:
	ldrb r0, [r0, #5]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r2, r2, r0
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	add r1, r8
	cmp r5, #0
	beq _08092E2C
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	adds r0, r0, r3
	adds r0, r0, r2
	cmp r0, r1
	bge _08092E38
	b _08092E44
	.align 2, 0
_08092E28: .4byte gPartnerBodyPSI+0xC+0x28
_08092E2C:
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	adds r0, r0, r3
	adds r0, r0, r2
	cmp r0, r1
	blt _08092E44
_08092E38:
	ldr r0, _08092E5C @ =gPlayer
	cmp r5, #0
	beq _08092E40
	ldr r0, _08092E60 @ =gPartner
_08092E40:
	bl Coll_DamagePlayer
_08092E44:
	adds r5, #1
	ldr r0, _08092E64 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	bge _08092E54
	b _08092C42
_08092E54:
	mov r0, sb
	bl UpdateSpriteAnimation
	b _08092E92
	.align 2, 0
_08092E5C: .4byte gPlayer
_08092E60: .4byte gPartner
_08092E64: .4byte gNumSingleplayerCharacters
_08092E68:
	cmp r1, #0x2f
	bgt _08092E92
	mov r0, sb
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _08092E8C
	mov r1, sb
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	movs r1, #0
	ldr r0, _08092EC4 @ =0x00000231
	mov r2, sb
	strh r0, [r2, #0xa]
	mov r0, sb
	adds r0, #0x20
	strb r1, [r0]
_08092E8C:
	mov r0, sb
	bl UpdateSpriteAnimation
_08092E92:
	mov r3, sl
	ldr r0, [r3, #0x7c]
	cmp r0, #0
	blt _08092EE6
	mov r1, sl
	adds r1, #0x80
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	beq _08092EC8
	ldr r0, [r3, #0x78]
	lsls r0, r0, #1
	movs r1, #5
	bl Div
	rsbs r0, r0, #0
	mov r5, sl
	str r0, [r5, #0x78]
	movs r0, #0
	ldr r1, [sp, #0x10]
	strb r0, [r1]
	str r0, [r5, #0x7c]
	b _08092EE6
	.align 2, 0
_08092EC4: .4byte 0x00000231
_08092EC8:
	mov r1, sb
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	movs r1, #0
	ldr r0, _08092F08 @ =0x00000231
	mov r2, sb
	strh r0, [r2, #0xa]
	mov r0, sb
	adds r0, #0x20
	strb r1, [r0]
	ldr r0, _08092F0C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08092F10 @ =Task_UnderwaterLavaPlatform
	str r0, [r1, #8]
_08092EE6:
	mov r0, sb
	bl DisplaySprite
	ldr r0, [sp, #8]
	bl UpdateSpriteAnimation
	ldr r0, [sp, #8]
	bl DisplaySprite
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08092F08: .4byte 0x00000231
_08092F0C: .4byte gCurTask
_08092F10: .4byte Task_UnderwaterLavaPlatform

	thumb_func_start TaskDestructor_UnderwaterLavaPlatform
TaskDestructor_UnderwaterLavaPlatform: @ 0x08092F14
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
