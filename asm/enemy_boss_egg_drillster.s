.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_80365AC
sub_80365AC: @ 0x080365AC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _080366B4 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r6, #0xc0
	lsls r6, r6, #0x12
	adds r7, r5, r6
	ldr r0, _080366B8 @ =sub_8036994
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _080366BC @ =sub_8036CE0
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	adds r3, r4, r6
	ldr r0, _080366C0 @ =0x0300007C
	adds r1, r5, r0
	ldr r0, [r7, #0x6c]
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r2, _080366C4 @ =0x03000040
	adds r1, r4, r2
	movs r2, #0
	mov r8, r2
	movs r6, #0
	strh r0, [r1]
	ldr r0, _080366C8 @ =0x0300007E
	adds r5, r5, r0
	ldr r0, [r7, #0x70]
	asrs r0, r0, #8
	ldrh r5, [r5]
	adds r0, r0, r5
	ldr r2, _080366CC @ =0x03000042
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0x3c
	strh r0, [r3, #0x30]
	adds r5, r3, #0
	movs r0, #0x10
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	strh r6, [r5, #8]
	ldr r0, _080366D0 @ =0x000002A7
	strh r0, [r5, #0xa]
	ldr r1, _080366D4 @ =0x03000020
	adds r0, r4, r1
	mov r2, r8
	strb r2, [r0]
	strh r6, [r5, #0x14]
	strh r6, [r5, #0x1c]
	ldr r0, _080366D8 @ =0x03000021
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r2, _080366DC @ =0x03000022
	adds r1, r4, r2
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _080366E0 @ =0x03000025
	adds r4, r4, r0
	mov r1, r8
	strb r1, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	movs r4, #0
_0803664C:
	movs r2, #0x84
	lsls r2, r2, #6
	adds r0, r2, #0
	adds r2, r4, #0
	orrs r2, r0
	ldr r0, _080366BC @ =sub_8036CE0
	str r0, [sp]
	ldr r0, _080366E4 @ =sub_803673C
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r3, r2, r5
	adds r1, r7, #0
	adds r1, #0x7c
	ldr r0, [r7, #0x6c]
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r5, #0x40
	adds r1, r2, r5
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x7e
	ldr r0, [r7, #0x70]
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r5, #2
	adds r1, r2, r5
	strh r0, [r1]
	str r6, [r3, #0x34]
	str r6, [r3, #0x38]
	ldr r0, _080366E8 @ =0x03000044
	adds r2, r2, r0
	strb r4, [r2]
	adds r5, r3, #0
	movs r0, #0x10
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _080366EC
	movs r0, #0xb8
	lsls r0, r0, #3
	b _080366F0
	.align 2, 0
_080366B4: .4byte gCurTask
_080366B8: .4byte sub_8036994
_080366BC: .4byte sub_8036CE0
_080366C0: .4byte 0x0300007C
_080366C4: .4byte 0x03000040
_080366C8: .4byte 0x0300007E
_080366CC: .4byte 0x03000042
_080366D0: .4byte 0x000002A7
_080366D4: .4byte 0x03000020
_080366D8: .4byte 0x03000021
_080366DC: .4byte 0x03000022
_080366E0: .4byte 0x03000025
_080366E4: .4byte sub_803673C
_080366E8: .4byte 0x03000044
_080366EC:
	movs r0, #0x98
	lsls r0, r0, #3
_080366F0:
	strh r0, [r5, #0x1a]
	strh r6, [r5, #8]
	ldr r0, _08036738 @ =0x000002A9
	strh r0, [r5, #0xa]
	adds r0, r5, #0
	adds r0, #0x20
	strb r4, [r0]
	strh r6, [r5, #0x14]
	strh r6, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x25
	strb r6, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0803664C
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036738: .4byte 0x000002A9

	thumb_func_start sub_803673C
sub_803673C: @ 0x0803673C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _080367EC @ =gCurTask
	ldr r0, [r1]
	ldrh r2, [r0, #6]
	mov r8, r2
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r5, r2, r4
	ldrh r0, [r0]
	adds r0, r0, r4
	ldrh r6, [r0, #6]
	adds r4, r6, r4
	ldr r2, [r5, #0x10]
	ldr r0, _080367F0 @ =0xFFFFFA7F
	ands r2, r0
	str r2, [r5, #0x10]
	ldr r0, [r4, #0x1c]
	movs r1, #0xb0
	lsls r1, r1, #3
	ands r0, r1
	orrs r2, r0
	str r2, [r5, #0x10]
	ldr r7, _080367F4 @ =0x03000080
	adds r7, r7, r6
	mov sb, r7
	ldr r0, _080367F8 @ =0x03000082
	adds r0, r0, r6
	mov sl, r0
	ldrh r1, [r0]
	ldr r3, _080367FC @ =gCamera
	ldrh r2, [r3]
	mov ip, r2
	movs r2, #0
	ldrsh r0, [r7, r2]
	mov r7, ip
	subs r0, r0, r7
	movs r7, #0
	strh r0, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0x18]
	ldr r0, [r4, #0x74]
	cmp r0, #0
	beq _080367A6
	adds r0, r5, #0
	bl UpdateSpriteAnimation
_080367A6:
	adds r0, r5, #0
	bl DisplaySprite
	ldr r1, _08036800 @ =0x03000086
	adds r0, r6, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	ble _080367DE
	mov r2, sb
	ldrh r1, [r2]
	ldr r0, _08036804 @ =0x03000040
	add r0, r8
	strh r1, [r0]
	mov r0, sl
	ldrh r1, [r0]
	ldr r0, _08036808 @ =0x03000042
	add r0, r8
	strh r1, [r0]
	str r7, [r5, #0x34]
	str r7, [r5, #0x38]
	strh r7, [r5, #0x3c]
	strh r7, [r5, #0x3e]
	ldr r2, _080367EC @ =gCurTask
	ldr r1, [r2]
	ldr r0, _0803680C @ =sub_8036810
	str r0, [r1, #8]
_080367DE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080367EC: .4byte gCurTask
_080367F0: .4byte 0xFFFFFA7F
_080367F4: .4byte 0x03000080
_080367F8: .4byte 0x03000082
_080367FC: .4byte gCamera
_08036800: .4byte 0x03000086
_08036804: .4byte 0x03000040
_08036808: .4byte 0x03000042
_0803680C: .4byte sub_8036810

	thumb_func_start sub_8036810
sub_8036810: @ 0x08036810
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _08036860 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r2, r1
	ldrh r0, [r0]
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	adds r6, r0, r1
	adds r5, r4, #0
	adds r1, #0x8d
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803683A
	b _08036948
_0803683A:
	movs r3, #0x3c
	ldrsh r0, [r5, r3]
	cmp r0, #0
	bne _080368B6
	movs r3, #0
	movs r1, #0xff
	lsls r1, r1, #8
	strh r1, [r5, #0x3e]
	ldr r7, _08036864 @ =0x03000044
	adds r0, r2, r7
	ldrb r0, [r0]
	cmp r0, #1
	beq _08036880
	cmp r0, #1
	bgt _08036868
	cmp r0, #0
	beq _08036872
	b _080368A4
	.align 2, 0
_08036860: .4byte gCurTask
_08036864: .4byte 0x03000044
_08036868:
	cmp r0, #2
	beq _0803688C
	cmp r0, #3
	beq _0803689C
	b _080368A4
_08036872:
	ldr r0, _0803687C @ =0x0000FF40
	strh r0, [r5, #0x3c]
	subs r0, #0xf0
	b _080368A2
	.align 2, 0
_0803687C: .4byte 0x0000FF40
_08036880:
	strh r1, [r5, #0x3c]
	ldr r0, _08036888 @ =0x0000FE80
	b _080368A2
	.align 2, 0
_08036888: .4byte 0x0000FE80
_0803688C:
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #0x3c]
	ldr r0, _08036898 @ =0x0000FE70
	b _080368A2
	.align 2, 0
_08036898: .4byte 0x0000FE70
_0803689C:
	movs r0, #0xe0
	strh r0, [r5, #0x3c]
	ldr r0, _08036938 @ =0x0000FE60
_080368A2:
	strh r0, [r5, #0x3e]
_080368A4:
	ldr r0, [r6, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080368B6
	ldrh r0, [r4, #0x3c]
	rsbs r0, r0, #0
	strh r0, [r4, #0x3c]
_080368B6:
	ldrh r0, [r4, #0x3e]
	adds r0, #0x18
	strh r0, [r4, #0x3e]
	movs r1, #0x3c
	ldrsh r0, [r4, r1]
	ldr r1, [r4, #0x34]
	adds r1, r1, r0
	str r1, [r4, #0x34]
	movs r3, #0x3e
	ldrsh r2, [r4, r3]
	ldr r0, [r4, #0x38]
	adds r0, r0, r2
	str r0, [r4, #0x38]
	adds r2, r4, #0
	adds r2, #0x40
	asrs r1, r1, #8
	ldrh r2, [r2]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	adds r2, r4, #0
	adds r2, #0x42
	asrs r0, r0, #8
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x1e
	lsrs r2, r1, #0x10
	mov r8, r2
	asrs r6, r1, #0x10
	ldr r1, _0803693C @ =sa2__sub_801EC3C
	str r1, [sp]
	adds r1, r6, #0
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F100
	cmp r0, #0
	bge _08036956
	lsls r1, r0, #8
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	ldrh r0, [r4, #0x3e]
	rsbs r0, r0, #0
	adds r0, #4
	strh r0, [r4, #0x3e]
	ldr r0, _08036940 @ =gCamera
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r0, r1, #0
	subs r0, #0x20
	cmp r6, r0
	blt _0803692E
	movs r2, #0x88
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r6, r0
	ble _08036956
_0803692E:
	ldr r0, _08036944 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0803697A
	.align 2, 0
_08036938: .4byte 0x0000FE60
_0803693C: .4byte sa2__sub_801EC3C
_08036940: .4byte gCamera
_08036944: .4byte gCurTask
_08036948:
	ldr r3, _08036988 @ =0x03000040
	adds r0, r2, r3
	ldrh r0, [r0]
	mov r8, r0
	ldr r7, _0803698C @ =0x03000042
	adds r0, r2, r7
	ldrh r7, [r0]
_08036956:
	ldr r2, _08036990 @ =gCamera
	ldrh r1, [r2]
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r5, #0x16]
	ldrh r1, [r2, #2]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_0803697A:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036988: .4byte 0x03000040
_0803698C: .4byte 0x03000042
_08036990: .4byte gCamera

	thumb_func_start sub_8036994
sub_8036994: @ 0x08036994
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _08036A44 @ =gCurTask
	ldr r6, [r0]
	ldrh r0, [r6, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldrh r0, [r6]
	adds r0, r0, r1
	ldrh r5, [r0, #6]
	adds r1, r1, r5
	mov sb, r1
	mov sl, r4
	ldr r2, [r4, #0x10]
	ldr r0, _08036A48 @ =0xFFFFFA7F
	ands r2, r0
	str r2, [r4, #0x10]
	ldr r0, [r1, #0x1c]
	movs r1, #0xb0
	lsls r1, r1, #3
	ands r0, r1
	orrs r2, r0
	str r2, [r4, #0x10]
	ldr r1, _08036A4C @ =0x03000080
	adds r2, r5, r1
	ldr r7, _08036A50 @ =0x03000082
	adds r0, r5, r7
	ldrh r0, [r0]
	mov r8, r0
	ldr r3, _08036A54 @ =gCamera
	ldrh r0, [r3]
	ldrh r1, [r2]
	str r1, [sp]
	movs r1, #0
	ldrsh r7, [r2, r1]
	mov ip, r7
	subs r0, r7, r0
	strh r0, [r4, #0x16]
	ldrh r0, [r3, #2]
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r2, r1, #0x10
	subs r0, r2, r0
	strh r0, [r4, #0x18]
	ldr r7, _08036A58 @ =0x0300008C
	adds r0, r5, r7
	ldrb r0, [r0]
	cmp r0, #0
	beq _08036AA2
	ldr r1, _08036A5C @ =0x03000086
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	bgt _08036AA2
	ldrh r0, [r6, #6]
	subs r1, #0x86
	adds r7, r0, r1
	mov r6, ip
	adds r5, r2, #0
	ldr r3, _08036A60 @ =gPlayer
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_800BF10
	mov r8, r0
	ldr r0, _08036A64 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08036A6C
	ldr r3, _08036A68 @ =gPartner
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_800BF10
	b _08036A6E
	.align 2, 0
_08036A44: .4byte gCurTask
_08036A48: .4byte 0xFFFFFA7F
_08036A4C: .4byte 0x03000080
_08036A50: .4byte 0x03000082
_08036A54: .4byte gCamera
_08036A58: .4byte 0x0300008C
_08036A5C: .4byte 0x03000086
_08036A60: .4byte gPlayer
_08036A64: .4byte gNumSingleplayerCharacters
_08036A68: .4byte gPartner
_08036A6C:
	movs r0, #0
_08036A6E:
	mov r2, r8
	cmp r2, #2
	beq _08036A78
	cmp r0, #2
	bne _08036AA2
_08036A78:
@ inline of sub_8036D90
	ldr r0, _08036AC8 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r7, #0xc0
	lsls r7, r7, #0x12
	adds r0, r0, r7
	ldrh r2, [r0, #6]
	ldr r0, _08036ACC @ =0x0300003C
	adds r3, r2, r0
	adds r7, #0x5c
	adds r1, r2, r7
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _08036AD0 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r0, _08036AD4 @ =0x0300005D
	adds r2, r2, r0
	movs r0, #0xff
	strb r0, [r2]
_08036AA2:
	mov r0, sl
	bl UpdateSpriteAnimation
	mov r0, sl
	bl DisplaySprite
	mov r0, sb
	adds r0, #0x86
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r2, r0, #0
	cmp r1, #2
	ble _08036B7A
	ldrh r0, [r4, #0x30]
	cmp r0, #0
	beq _08036AD8
	subs r0, #1
	strh r0, [r4, #0x30]
	b _08036B1A
	.align 2, 0
_08036AC8: .4byte gCurTask
_08036ACC: .4byte 0x0300003C
_08036AD0: .4byte 0xFFFFBFFF
_08036AD4: .4byte 0x0300005D
_08036AD8:
	mov r1, sl
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08036B04
	ldr r7, [sp]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x10
	ldr r1, _08036B00 @ =gPlayer
	ldr r1, [r1]
	asrs r1, r1, #8
	cmp r0, r1
	bge _08036B1A
	movs r0, #1
	str r0, [sp, #4]
	b _08036B1A
	.align 2, 0
_08036B00: .4byte gPlayer
_08036B04:
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	subs r0, #0x10
	ldr r1, _08036B68 @ =gPlayer
	ldr r1, [r1]
	asrs r1, r1, #8
	cmp r0, r1
	ble _08036B1A
	movs r7, #1
	str r7, [sp, #4]
_08036B1A:
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #3
	ble _08036B26
	movs r0, #1
	str r0, [sp, #4]
_08036B26:
	ldr r1, [sp, #4]
	cmp r1, #0
	beq _08036B7A
	mov r2, sb
	ldr r0, [r2, #0x6c]
	str r0, [r4, #0x34]
	ldr r0, [r2, #0x70]
	str r0, [r4, #0x38]
	mov r0, sb
	adds r0, #0x7c
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x40
	movs r2, #0
	strh r1, [r0]
	mov r0, sb
	adds r0, #0x7e
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	strh r2, [r4, #0x3e]
	mov r7, sl
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08036B6C
	movs r0, #0xc0
	lsls r0, r0, #2
	b _08036B70
	.align 2, 0
_08036B68: .4byte gPlayer
_08036B6C:
	movs r0, #0xfd
	lsls r0, r0, #8
_08036B70:
	strh r0, [r4, #0x3c]
	ldr r0, _08036B8C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08036B90 @ =sub_8036B94
	str r0, [r1, #8]
_08036B7A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036B8C: .4byte gCurTask
_08036B90: .4byte sub_8036B94

	thumb_func_start sub_8036B94
sub_8036B94: @ 0x08036B94
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08036C2C @ =gCurTask
	ldr r7, [r0]
	ldrh r3, [r7, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r3, r1
	ldrh r0, [r7]
	adds r0, r0, r1
	ldrh r4, [r0, #6]
	mov sb, r5
	movs r0, #0x3c
	ldrsh r1, [r5, r0]
	ldr r0, [r5, #0x34]
	adds r0, r0, r1
	str r0, [r5, #0x34]
	movs r2, #0x3e
	ldrsh r1, [r5, r2]
	ldr r2, [r5, #0x38]
	adds r2, r2, r1
	str r2, [r5, #0x38]
	ldr r6, _08036C30 @ =0x03000040
	adds r1, r3, r6
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r1, _08036C34 @ =0x03000042
	adds r3, r3, r1
	asrs r2, r2, #8
	ldrh r3, [r3]
	adds r2, r2, r3
	ldr r3, _08036C38 @ =gCamera
	ldrh r1, [r3]
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	subs r1, r6, r1
	strh r1, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r5, #0x18]
	ldr r0, _08036C3C @ =0x03000086
	adds r4, r4, r0
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #3
	bgt _08036C82
	ldrh r0, [r7, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r0, r1
	adds r4, r2, #0
	ldr r3, _08036C40 @ =gPlayer
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_800BF10
	mov r8, r0
	ldr r0, _08036C44 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08036C4C
	ldr r3, _08036C48 @ =gPartner
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_800BF10
	b _08036C4E
	.align 2, 0
_08036C2C: .4byte gCurTask
_08036C30: .4byte 0x03000040
_08036C34: .4byte 0x03000042
_08036C38: .4byte gCamera
_08036C3C: .4byte 0x03000086
_08036C40: .4byte gPlayer
_08036C44: .4byte gNumSingleplayerCharacters
_08036C48: .4byte gPartner
_08036C4C:
	movs r0, #0
_08036C4E:
	mov r2, r8
	cmp r2, #2
	beq _08036C58
	cmp r0, #2
	bne _08036C82
_08036C58:
@ inline of sub_8036D90
	ldr r0, _08036CB4 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r6, #0xc0
	lsls r6, r6, #0x12
	adds r0, r0, r6
	ldrh r2, [r0, #6]
	ldr r0, _08036CB8 @ =0x0300003C
	adds r3, r2, r0
	adds r6, #0x5c
	adds r1, r2, r6
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _08036CBC @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r0, _08036CC0 @ =0x0300005D
	adds r2, r2, r0
	movs r0, #0xff
	strb r0, [r2]
_08036C82:
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, sb
	bl DisplaySprite
	ldr r0, [r5, #0x34]
	movs r1, #0xc0
	lsls r1, r1, #8
	adds r0, r0, r1
	movs r1, #0xc0
	lsls r1, r1, #9
	cmp r0, r1
	bls _08036CA6
	ldr r0, _08036CB4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08036CA6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036CB4: .4byte gCurTask
_08036CB8: .4byte 0x0300003C
_08036CBC: .4byte 0xFFFFBFFF
_08036CC0: .4byte 0x0300005D

	thumb_func_start TaskDestructor_EggDrillster
TaskDestructor_EggDrillster: @ 0x08036CC4
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

	thumb_func_start sub_8036CE0
sub_8036CE0: @ 0x08036CE0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8036CF4
sub_8036CF4: @ 0x08036CF4
	push {r4, r5, r6, r7, lr}
	ldr r2, _08036D34 @ =gCurTask
	ldr r2, [r2]
	ldrh r3, [r2, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r6, r3, r2
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	ldr r3, _08036D38 @ =gPlayer
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	adds r7, r0, #0
	ldr r0, _08036D3C @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08036D44
	ldr r3, _08036D40 @ =gPartner
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	b _08036D46
	.align 2, 0
_08036D34: .4byte gCurTask
_08036D38: .4byte gPlayer
_08036D3C: .4byte gNumSingleplayerCharacters
_08036D40: .4byte gPartner
_08036D44:
	movs r0, #0
_08036D46:
	cmp r7, #2
	beq _08036D4E
	cmp r0, #2
	bne _08036D78
_08036D4E:
	ldr r0, _08036D80 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldrh r2, [r0, #6]
	ldr r0, _08036D84 @ =0x0300003C
	adds r3, r2, r0
	adds r0, #0x20
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _08036D88 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r0, _08036D8C @ =0x0300005D
	adds r2, r2, r0
	movs r0, #0xff
	strb r0, [r2]
_08036D78:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036D80: .4byte gCurTask
_08036D84: .4byte 0x0300003C
_08036D88: .4byte 0xFFFFBFFF
_08036D8C: .4byte 0x0300005D

	thumb_func_start sub_8036D90
sub_8036D90: @ 0x08036D90
	ldr r0, _08036DC0 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	ldr r0, _08036DC4 @ =0x0300003C
	adds r1, r2, r0
	adds r0, #0x20
	adds r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq _08036DBC
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08036DBC
	movs r0, #0
	strb r0, [r3]
	ldr r0, _08036DC8 @ =0x0300005D
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
_08036DBC:
	bx lr
	.align 2, 0
_08036DC0: .4byte gCurTask
_08036DC4: .4byte 0x0300003C
_08036DC8: .4byte 0x0300005D

	thumb_func_start sub_8036DCC
sub_8036DCC: @ 0x08036DCC
	ldr r0, _08036DE4 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _08036DE8 @ =0x0300000C
	adds r2, r0, r1
	adds r1, #0x30
	adds r0, r0, r1
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	bx lr
	.align 2, 0
_08036DE4: .4byte gCurTask
_08036DE8: .4byte 0x0300000C

	thumb_func_start sub_8036DEC
sub_8036DEC: @ 0x08036DEC
	push {r4, lr}
	ldr r2, _08036E14 @ =gCurTask
	ldr r2, [r2]
	ldrh r2, [r2, #6]
	ldr r3, _08036E18 @ =0x0300000C
	adds r2, r2, r3
	ldr r4, _08036E1C @ =gCamera
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
_08036E14: .4byte gCurTask
_08036E18: .4byte 0x0300000C
_08036E1C: .4byte gCamera
