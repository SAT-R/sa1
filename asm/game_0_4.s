.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_8015C5C
sub_8015C5C: @ 0x08015C5C
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
	ldr r0, _08015D4C @ =Task_8015D88
	movs r7, #0x80
	lsls r7, r7, #6
	movs r4, #0
	str r4, [sp]
	movs r1, #0x6c
	adds r2, r7, #0
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r2, r1
	ldr r3, _08015D50 @ =0x03000060
	adds r0, r2, r3
	movs r3, #0
	mov r8, r3
	strh r5, [r0]
	ldr r3, _08015D54 @ =0x03000062
	adds r0, r2, r3
	strh r6, [r0]
	adds r3, #2
	adds r0, r2, r3
	strh r4, [r0]
	adds r3, #2
	adds r0, r2, r3
	strh r4, [r0]
	adds r3, #2
	adds r0, r2, r3
	strh r4, [r0]
	strh r5, [r1, #0x16]
	strh r6, [r1, #0x18]
	ldr r0, _08015D58 @ =0x06012580
	str r0, [r1, #4]
	movs r0, #0xa8
	lsls r0, r0, #3
	strh r0, [r1, #0x1a]
	strh r4, [r1, #8]
	ldr r0, _08015D5C @ =0x000002B5
	strh r0, [r1, #0xa]
	subs r3, #0x48
	adds r0, r2, r3
	mov r3, r8
	strb r3, [r0]
	strh r4, [r1, #0x14]
	strh r4, [r1, #0x1c]
	ldr r0, _08015D60 @ =0x03000021
	adds r3, r2, r0
	movs r0, #0xff
	strb r0, [r3]
	ldr r3, _08015D64 @ =0x03000022
	adds r0, r2, r3
	movs r3, #0x10
	mov sl, r3
	mov r3, sl
	strb r3, [r0]
	ldr r3, _08015D68 @ =0x03000025
	adds r0, r2, r3
	mov r3, r8
	strb r3, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	mov sb, r0
	str r0, [r1, #0x28]
	str r7, [r1, #0x10]
	ldr r3, _08015D6C @ =0x03000030
	adds r1, r2, r3
	strh r5, [r1, #0x16]
	strh r6, [r1, #0x18]
	ldr r0, _08015D70 @ =0x06012E40
	str r0, [r1, #4]
	movs r0, #0x98
	lsls r0, r0, #3
	strh r0, [r1, #0x1a]
	strh r4, [r1, #8]
	ldr r0, _08015D74 @ =0x000002B6
	strh r0, [r1, #0xa]
	ldr r0, _08015D78 @ =0x03000050
	adds r3, r2, r0
	movs r0, #4
	strb r0, [r3]
	strh r4, [r1, #0x14]
	strh r4, [r1, #0x1c]
	ldr r0, _08015D7C @ =0x03000051
	adds r3, r2, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r3]
	ldr r3, _08015D80 @ =0x03000052
	adds r0, r2, r3
	mov r3, sl
	strb r3, [r0]
	ldr r0, _08015D84 @ =0x03000055
	adds r2, r2, r0
	mov r3, r8
	strb r3, [r2]
	mov r0, sb
	str r0, [r1, #0x28]
	str r7, [r1, #0x10]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08015D4C: .4byte Task_8015D88
_08015D50: .4byte 0x03000060
_08015D54: .4byte 0x03000062
_08015D58: .4byte 0x06012580
_08015D5C: .4byte 0x000002B5
_08015D60: .4byte 0x03000021
_08015D64: .4byte 0x03000022
_08015D68: .4byte 0x03000025
_08015D6C: .4byte 0x03000030
_08015D70: .4byte 0x06012E40
_08015D74: .4byte 0x000002B6
_08015D78: .4byte 0x03000050
_08015D7C: .4byte 0x03000051
_08015D80: .4byte 0x03000052
_08015D84: .4byte 0x03000055

	thumb_func_start Task_8015D88
Task_8015D88: @ 0x08015D88
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08015E2C @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r1, _08015E30 @ =0x03000030
	adds r7, r4, r1
	adds r1, #0x30
	adds r0, r4, r1
	ldr r3, _08015E34 @ =gCamera
	ldrh r2, [r0]
	ldrh r0, [r3]
	subs r2, r2, r0
	strh r2, [r5, #0x16]
	ldr r0, _08015E38 @ =0x03000062
	adds r1, r4, r0
	adds r0, #4
	adds r6, r4, r0
	ldrh r0, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r1, [r1]
	adds r0, r0, r1
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	strh r0, [r5, #0x18]
	strh r2, [r7, #0x16]
	ldrh r0, [r5, #0x18]
	strh r0, [r7, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, _08015E3C @ =0x03000068
	adds r1, r4, r0
	ldrh r0, [r1]
	cmp r0, #0x2d
	bls _08015E5C
	ldr r1, _08015E40 @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r1, [r6]
	adds r0, r0, r1
	strh r0, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _08015E44 @ =0xFFFFB000
	cmp r0, r1
	bgt _08015E60
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _08015E48 @ =Task_8015E6C
	str r0, [r1, #8]
	ldr r0, _08015E4C @ =0x000002B5
	strh r0, [r5, #0xa]
	ldr r0, _08015E50 @ =0x03000020
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08015E54 @ =0x000002B6
	strh r0, [r7, #0xa]
	ldr r0, _08015E58 @ =0x03000050
	adds r1, r4, r0
	movs r0, #9
	strb r0, [r1]
	ldrh r0, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	strh r0, [r6]
	b _08015E60
	.align 2, 0
_08015E2C: .4byte gCurTask
_08015E30: .4byte 0x03000030
_08015E34: .4byte gCamera
_08015E38: .4byte 0x03000062
_08015E3C: .4byte 0x03000068
_08015E40: .4byte 0xFFFFFF00
_08015E44: .4byte 0xFFFFB000
_08015E48: .4byte Task_8015E6C
_08015E4C: .4byte 0x000002B5
_08015E50: .4byte 0x03000020
_08015E54: .4byte 0x000002B6
_08015E58: .4byte 0x03000050
_08015E5C:
	adds r0, #1
	strh r0, [r1]
_08015E60:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Task_8015E6C
Task_8015E6C: @ 0x08015E6C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08015F30 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r7, r0
	ldr r1, _08015F34 @ =0x03000030
	adds r6, r7, r1
	ldr r3, _08015F38 @ =0x03000060
	adds r3, r3, r7
	mov r8, r3
	ldr r3, _08015F3C @ =gCamera
	mov r4, r8
	ldrh r2, [r4]
	ldrh r0, [r3]
	subs r2, r2, r0
	movs r0, #0
	mov sl, r0
	strh r2, [r5, #0x16]
	ldr r4, _08015F40 @ =0x03000062
	adds r1, r7, r4
	adds r4, #4
	adds r0, r7, r4
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	strh r0, [r5, #0x18]
	strh r2, [r6, #0x16]
	ldrh r0, [r5, #0x18]
	strh r0, [r6, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r4, r0, #0
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	cmp r4, #0
	bne _08015F20
	mov r0, sb
	ldr r1, [r0]
	ldr r0, _08015F44 @ =Task_8015E6C
	str r0, [r1, #8]
	ldr r0, _08015F48 @ =0x000002B5
	strh r0, [r5, #0xa]
	ldr r1, _08015F4C @ =0x03000020
	adds r0, r7, r1
	mov r3, sl
	strb r3, [r0]
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5, #0x10]
	ldr r0, [r6, #0x10]
	orrs r0, r1
	str r0, [r6, #0x10]
	ldr r0, _08015F50 @ =0x000002B6
	strh r0, [r6, #0xa]
	ldr r4, _08015F54 @ =0x03000050
	adds r2, r7, r4
	strb r3, [r2]
	ldr r0, _08015F58 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xc
	bne _08015F20
	mov r0, r8
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, _08015F5C @ =0x000007FF
	cmp r1, r0
	ble _08015F20
	movs r0, #8
	strb r0, [r2]
_08015F20:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08015F30: .4byte gCurTask
_08015F34: .4byte 0x03000030
_08015F38: .4byte 0x03000060
_08015F3C: .4byte gCamera
_08015F40: .4byte 0x03000062
_08015F44: .4byte Task_8015F60
_08015F48: .4byte 0x000002B5
_08015F4C: .4byte 0x03000020
_08015F50: .4byte 0x000002B6
_08015F54: .4byte 0x03000050
_08015F58: .4byte gCurrentLevel
_08015F5C: .4byte 0x000007FF

	thumb_func_start Task_8015F60
Task_8015F60: @ 0x08015F60
	push {r4, r5, r6, r7, lr}
	ldr r0, _08015FC4 @ =gCurTask
	ldr r7, [r0]
	ldrh r2, [r7, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	adds r0, #0x30
	adds r6, r2, r0
	ldr r3, _08015FC8 @ =0x03000064
	adds r1, r2, r3
	ldrh r0, [r1]
	adds r0, #4
	strh r0, [r1]
	subs r3, #4
	adds r1, r2, r3
	ldrh r3, [r1]
	adds r3, r3, r0
	ldr r4, _08015FCC @ =gCamera
	ldrh r0, [r4]
	subs r3, r3, r0
	strh r3, [r5, #0x16]
	ldr r0, _08015FD0 @ =0x03000062
	adds r1, r2, r0
	adds r0, #4
	adds r2, r2, r0
	ldrh r0, [r2]
	ldrh r1, [r1]
	adds r0, r0, r1
	ldrh r1, [r4, #2]
	subs r0, r0, r1
	strh r0, [r5, #0x18]
	strh r3, [r6, #0x16]
	ldrh r0, [r5, #0x18]
	strh r0, [r6, #0x18]
	movs r1, #0x16
	ldrsh r0, [r5, r1]
	bl __floatsidf
	ldr r2, _08015FD4 @ =0x40768000
	ldr r3, _08015FD8 @ =0x00000000
	bl __gtdf2
	cmp r0, #0
	ble _08015FDC
	adds r0, r7, #0
	bl TaskDestroy
	b _08015FF4
	.align 2, 0
_08015FC4: .4byte gCurTask
_08015FC8: .4byte 0x03000064
_08015FCC: .4byte gCamera
_08015FD0: .4byte 0x03000062
_08015FD4: .4byte 0x40768000
_08015FD8: .4byte 0x00000000
_08015FDC:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_08015FF4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateBossCapsule
CreateBossCapsule: @ 0x08015FFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	mov sb, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	ldr r0, _08016114 @ =sub_801615C
	ldr r1, _08016118 @ =sub_80175A8
	str r1, [sp]
	movs r1, #0x78
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	ldr r1, _0801611C @ =0x0300006C
	adds r0, r5, r1
	movs r6, #0
	mov r1, r8
	strh r1, [r0]
	ldr r1, _08016120 @ =0x0300006E
	adds r0, r5, r1
	mov r1, sb
	strh r1, [r0]
	ldr r1, _08016124 @ =0x03000070
	adds r0, r5, r1
	strh r6, [r0]
	adds r1, #2
	adds r0, r5, r1
	strh r6, [r0]
	ldr r0, _08016128 @ =0x03000074
	adds r1, r5, r0
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r1]
	mov r1, r8
	strh r1, [r4, #0x16]
	mov r0, sb
	strh r0, [r4, #0x18]
	movs r0, #0x51
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0x98
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	strh r6, [r4, #8]
	ldr r0, _0801612C @ =0x00000242
	strh r0, [r4, #0xa]
	ldr r1, _08016130 @ =0x03000020
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	ldr r0, _08016134 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08016138 @ =0x03000022
	adds r0, r5, r1
	movs r1, #0x10
	mov sl, r1
	mov r1, sl
	strb r1, [r0]
	ldr r1, _0801613C @ =0x03000025
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	movs r7, #1
	rsbs r7, r7, #0
	str r7, [r4, #0x28]
	ldr r0, _08016140 @ =0x00002030
	str r0, [r4, #0x10]
	ldr r0, _08016144 @ =0x03000030
	adds r4, r5, r0
	mov r1, r8
	strh r1, [r4, #0x16]
	mov r0, sb
	strh r0, [r4, #0x18]
	movs r0, #6
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	strh r6, [r4, #8]
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r4, #0xa]
	ldr r1, _08016148 @ =0x03000050
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	ldr r0, _0801614C @ =0x03000051
	adds r1, r5, r0
	adds r0, r7, #0
	strb r0, [r1]
	ldr r1, _08016150 @ =0x03000052
	adds r0, r5, r1
	mov r1, sl
	strb r1, [r0]
	ldr r1, _08016154 @ =0x03000055
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	str r7, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	ldr r1, _08016158 @ =0x03000060
	adds r5, r5, r1
	strh r6, [r5]
	movs r0, #0x40
	strh r0, [r5, #2]
	strh r0, [r5, #4]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016114: .4byte sub_801615C
_08016118: .4byte sub_80175A8
_0801611C: .4byte 0x0300006C
_08016120: .4byte 0x0300006E
_08016124: .4byte 0x03000070
_08016128: .4byte 0x03000074
_0801612C: .4byte 0x00000242
_08016130: .4byte 0x03000020
_08016134: .4byte 0x03000021
_08016138: .4byte 0x03000022
_0801613C: .4byte 0x03000025
_08016140: .4byte 0x00002030
_08016144: .4byte 0x03000030
_08016148: .4byte 0x03000050
_0801614C: .4byte 0x03000051
_08016150: .4byte 0x03000052
_08016154: .4byte 0x03000055
_08016158: .4byte 0x03000060

	thumb_func_start sub_801615C
sub_801615C: @ 0x0801615C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08016210 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r7, #0xc0
	lsls r7, r7, #0x12
	orrs r7, r5
	ldr r1, _08016214 @ =0x03000060
	adds r4, r5, r1
	ldr r2, _08016218 @ =0x0300006C
	adds r0, r5, r2
	ldr r2, _0801621C @ =gCamera
	ldrh r0, [r0]
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #6]
	ldr r1, _08016220 @ =0x0300006E
	adds r0, r5, r1
	ldrh r0, [r0]
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	ldr r2, _08016224 @ =0x03000072
	adds r6, r5, r2
	ldrh r1, [r6]
	subs r0, r0, r1
	strh r0, [r4, #8]
	ldrh r1, [r4, #2]
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, #0xff
	bgt _080161A8
	adds r0, r1, #0
	adds r0, #8
	strh r0, [r4, #2]
	strh r0, [r4, #4]
_080161A8:
	ldrh r0, [r4]
	adds r0, #0x10
	strh r0, [r4]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r1, r4, #0
	bl TransformSprite
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, _08016228 @ =0x03000074
	adds r1, r5, r0
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r1, [r6]
	adds r0, r0, r1
	strh r0, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe0
	ble _08016204
	mov r2, r8
	ldr r1, [r2]
	ldr r0, _0801622C @ =Task_801623C
	str r0, [r1, #8]
	ldr r0, _08016230 @ =0x03000076
	adds r1, r5, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08016234 @ =0x0000023F
	strh r0, [r7, #0xa]
	ldr r2, _08016238 @ =0x03000020
	adds r1, r5, r2
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r7, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
_08016204:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016210: .4byte gCurTask
_08016214: .4byte 0x03000060
_08016218: .4byte 0x0300006C
_0801621C: .4byte gCamera
_08016220: .4byte 0x0300006E
_08016224: .4byte 0x03000072
_08016228: .4byte 0x03000074
_0801622C: .4byte Task_801623C
_08016230: .4byte 0x03000076
_08016234: .4byte 0x0000023F
_08016238: .4byte 0x03000020

	thumb_func_start Task_801623C
Task_801623C: @ 0x0801623C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _080163AC @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r5, r0
	ldr r1, _080163B0 @ =0x03000030
	adds r1, r5, r1
	str r1, [sp, #4]
	movs r2, #0x78
	strh r2, [r7, #0x16]
	ldr r3, _080163B4 @ =0x0300006E
	adds r6, r5, r3
	ldr r0, _080163B8 @ =gCamera
	mov r8, r0
	ldrh r0, [r6]
	mov r3, r8
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	ldr r1, _080163BC @ =0x03000072
	adds r4, r5, r1
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r7, #0x18]
	ldr r3, [sp, #4]
	strh r2, [r3, #0x16]
	ldrh r0, [r7, #0x18]
	strh r0, [r3, #0x18]
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	cmp r0, #0
	blt _080162A2
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r0, [sp, #4]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, [sp, #4]
	bl DisplaySprite
_080162A2:
	ldr r2, _080163C0 @ =0x03000074
	adds r0, r5, r2
	ldrh r1, [r0]
	subs r1, #0x10
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	ldrh r3, [r4]
	adds r1, r1, r3
	strh r1, [r4]
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	cmp r0, #0x5f
	bgt _080162C0
	b _08016470
_080162C0:
	mov r2, r8
	movs r3, #2
	ldrsh r0, [r2, r3]
	movs r2, #0x18
	ldrsh r1, [r7, r2]
	adds r0, r0, r1
	adds r0, #8
	mov r3, r8
	movs r2, #0
	ldrsh r1, [r3, r2]
	movs r3, #0x16
	ldrsh r2, [r7, r3]
	adds r1, r1, r2
	ldr r2, _080163C4 @ =sa2__sub_801EC3C
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F100
	adds r2, r0, #0
	cmp r2, #0
	ble _080162EE
	b _08016470
_080162EE:
	ldrh r0, [r6]
	ldrh r1, [r4]
	subs r0, r0, r1
	adds r0, r0, r2
	strh r0, [r6]
	mov r0, sb
	ldr r1, [r0]
	ldr r0, _080163C8 @ =Task_BossCapsuleUpdate
	str r0, [r1, #8]
	mov r1, r8
	ldrh r0, [r1]
	adds r0, #0x78
	ldr r2, _080163CC @ =0x0300006C
	adds r4, r5, r2
	strh r0, [r4]
	movs r0, #0x80
	lsls r0, r0, #4
	movs r2, #0x80
	lsls r2, r2, #1
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x80
	str r1, [sp]
	movs r1, #0x40
	bl CreateScreenShake
	movs r0, #0x88
	bl m4aSongNumStart
	movs r3, #0
	mov r8, r3
	mov sl, r4
	ldr r0, _080163B4 @ =0x0300006E
	adds r0, r0, r5
	mov sb, r0
_08016334:
	ldr r4, _080163D0 @ =gPlayer
	mov r1, r8
	cmp r1, #0
	beq _0801633E
	ldr r4, _080163D4 @ =gPartner
_0801633E:
	mov r5, sl
	movs r2, #0
	ldrsh r1, [r5, r2]
	mov r3, sb
	movs r0, #0
	ldrsh r2, [r3, r0]
	adds r0, r7, #0
	adds r3, r4, #0
	bl Coll_Player_Entity_Intersection
	movs r6, #0x80
	lsls r6, r6, #0xc
	ands r0, r6
	cmp r0, #0
	bne _08016374
	movs r2, #0
	ldrsh r1, [r5, r2]
	mov r3, sb
	movs r0, #0
	ldrsh r2, [r3, r0]
	ldr r0, [sp, #4]
	adds r3, r4, #0
	bl Coll_Player_Entity_Intersection
	ands r0, r6
	cmp r0, #0
	beq _0801645E
_08016374:
	movs r0, #0x78
	strh r0, [r4, #0x1c]
	ldr r0, [r4]
	asrs r2, r0, #8
	ldr r0, _080163B8 @ =gCamera
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, #0x78
	cmp r2, r0
	bge _080163D8
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r4, #8]
	movs r3, #0
	ldrsh r1, [r5, r3]
	adds r0, r7, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	movs r0, #0xe
	ldrsb r0, [r4, r0]
	subs r0, r1, r0
	cmp r2, r0
	ble _080163FE
	b _080163FA
	.align 2, 0
_080163AC: .4byte gCurTask
_080163B0: .4byte 0x03000030
_080163B4: .4byte 0x0300006E
_080163B8: .4byte gCamera
_080163BC: .4byte 0x03000072
_080163C0: .4byte 0x03000074
_080163C4: .4byte sa2__sub_801EC3C
_080163C8: .4byte Task_BossCapsuleUpdate
_080163CC: .4byte 0x0300006C
_080163D0: .4byte gPlayer
_080163D4: .4byte gPartner
_080163D8:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #8]
	mov r0, sl
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r0, r7, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	movs r0, #0xe
	ldrsb r0, [r4, r0]
	adds r0, r1, r0
	cmp r2, r0
	bge _080163FE
_080163FA:
	lsls r0, r0, #8
	str r0, [r4]
_080163FE:
	ldr r1, [r4, #0x10]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08016410
	ldr r0, _0801640C @ =0x0000FD60
	b _08016412
	.align 2, 0
_0801640C: .4byte 0x0000FD60
_08016410:
	ldr r0, _08016480 @ =0x0000FB20
_08016412:
	strh r0, [r4, #0xa]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #2
	orrs r0, r1
	ldr r1, _08016484 @ =0xFFFFFBFF
	ands r1, r0
	ldr r0, _08016488 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0xf
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0xe
	bl sa2__sub_8023B5C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x3d
	movs r1, #0
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
_0801645E:
	movs r0, #1
	add r8, r0
	ldr r0, _0801648C @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r8, r0
	bge _08016470
	b _08016334
_08016470:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016480: .4byte 0x0000FB20
_08016484: .4byte 0xFFFFFBFF
_08016488: .4byte 0xFFFFFEFF
_0801648C: .4byte gNumSingleplayerCharacters

	thumb_func_start Task_BossCapsuleUpdate
Task_BossCapsuleUpdate: @ 0x08016490
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _08016624 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0
	adds r2, r0, #0
	str r2, [sp]
	ldr r2, _08016628 @ =0x03000030
	adds r2, r2, r1
	mov sb, r2
	ldr r2, _0801662C @ =0x0300006C
	adds r0, r1, r2
	ldr r3, _08016630 @ =gCamera
	ldrh r2, [r0]
	ldrh r0, [r3]
	subs r2, r2, r0
	mov r0, r8
	strh r2, [r0, #0x16]
	ldr r0, _08016634 @ =0x0300006E
	adds r1, r1, r0
	ldrh r0, [r1]
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	mov r1, r8
	strh r0, [r1, #0x18]
	mov r0, sb
	strh r2, [r0, #0x16]
	ldrh r0, [r1, #0x18]
	mov r1, sb
	strh r0, [r1, #0x18]
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, r8
	bl DisplaySprite
	mov r0, sb
	bl DisplaySprite
	movs r2, #0
	mov sl, r2
_080164FC:
	ldr r6, _08016638 @ =gPlayer
	mov r0, sl
	cmp r0, #0
	beq _08016506
	ldr r6, _0801663C @ =gPartner
_08016506:
	adds r0, r6, #0
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xf
	beq _080165AC
	ldr r1, _08016638 @ =gPlayer
	ldr r0, [r1, #4]
	lsls r0, r0, #8
	lsrs r7, r0, #0x10
	ldr r5, [sp]
	adds r5, #0x6c
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r4, [sp]
	adds r4, #0x6e
	movs r0, #0
	ldrsh r2, [r4, r0]
	mov r0, r8
	adds r3, r6, #0
	bl sub_80096B0
	ldr r2, _08016638 @ =gPlayer
	ldr r1, [r2, #0x10]
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	bne _0801657C
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r2, #4]
	asrs r2, r0, #8
	cmp r1, r2
	blt _08016554
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, r2
	bge _0801657C
_08016554:
	movs r2, #0
	ldrsh r0, [r5, r2]
	mov r1, r8
	adds r1, #0x2c
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	movs r1, #0xe
	ldrsb r1, [r6, r1]
	subs r0, r0, r1
	lsls r0, r0, #8
	str r0, [r6]
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r1, #0xf
	ldrsb r1, [r6, r1]
	subs r0, r0, r1
	lsls r0, r0, #8
	str r0, [r6, #4]
_0801657C:
	movs r2, #0
	ldrsh r1, [r5, r2]
	movs r0, #0
	ldrsh r2, [r4, r0]
	mov r0, sb
	adds r3, r6, #0
	bl sub_80096B0
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	bne _080165A8
	movs r2, #0
	ldrsh r1, [r5, r2]
	movs r0, #0
	ldrsh r2, [r4, r0]
	mov r0, sb
	adds r3, r6, #0
	bl Coll_AmyHammer_Spring
	cmp r0, #0
	beq _080165AC
_080165A8:
	movs r1, #1
	str r1, [sp, #4]
_080165AC:
	movs r2, #1
	add sl, r2
	ldr r0, _08016640 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp sl, r0
	blt _080164FC
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _08016614
	ldr r0, _08016624 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08016644 @ =sub_8016650
	str r0, [r1, #8]
	ldr r2, _08016648 @ =gStageFlags
	ldrh r0, [r2]
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0801664C @ =0x0000023F
	mov r1, r8
	strh r0, [r1, #0xa]
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x89
	bl m4aSongNumStart
	movs r4, #0
	movs r5, #0
_080165EA:
	ldr r2, _08016638 @ =gPlayer
	cmp r4, #0
	beq _080165F2
	ldr r2, _0801663C @ =gPartner
_080165F2:
	strh r5, [r2, #0xc]
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r2, #0x10]
	strh r5, [r2, #0x38]
	adds r0, r2, #0
	bl sub_801766C
	adds r4, #1
	ldr r0, _08016640 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _080165EA
_08016614:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016624: .4byte gCurTask
_08016628: .4byte 0x03000030
_0801662C: .4byte 0x0300006C
_08016630: .4byte gCamera
_08016634: .4byte 0x0300006E
_08016638: .4byte gPlayer
_0801663C: .4byte gPartner
_08016640: .4byte gNumSingleplayerCharacters
_08016644: .4byte sub_8016650
_08016648: .4byte gStageFlags
_0801664C: .4byte 0x0000023F

	thumb_func_start sub_8016650
sub_8016650: @ 0x08016650
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _08016820 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	str r7, [sp, #4]
	adds r0, #0x30
	adds r0, r0, r4
	mov r8, r0
	ldr r1, _08016824 @ =0x0300006C
	adds r0, r4, r1
	ldr r1, _08016828 @ =gCamera
	ldrh r2, [r0]
	ldrh r0, [r1]
	subs r2, r2, r0
	strh r2, [r7, #0x16]
	ldr r3, _0801682C @ =0x0300006E
	adds r0, r4, r3
	ldrh r0, [r0]
	ldrh r1, [r1, #2]
	subs r0, r0, r1
	strh r0, [r7, #0x18]
	mov r5, r8
	strh r2, [r5, #0x16]
	ldrh r0, [r7, #0x18]
	adds r0, #4
	strh r0, [r5, #0x18]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	mov sl, r0
	mov r0, r8
	bl UpdateSpriteAnimation
	movs r6, #0
	ldr r0, _08016824 @ =0x0300006C
	adds r0, r0, r4
	mov sb, r0
	ldr r1, _0801682C @ =0x0300006E
	adds r4, r4, r1
_080166AE:
	ldr r5, _08016830 @ =gPlayer
	cmp r6, #0
	beq _080166B6
	ldr r5, _08016834 @ =gPartner
_080166B6:
	adds r0, r5, #0
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xf
	beq _080166EC
	mov r2, sb
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r0, #0
	ldrsh r2, [r4, r0]
	adds r0, r7, #0
	adds r3, r5, #0
	bl sub_80096B0
	mov r2, sb
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldrh r2, [r4]
	adds r2, #4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r0, r8
	adds r3, r5, #0
	bl sub_80096B0
_080166EC:
	adds r6, #1
	ldr r5, _08016838 @ =gNumSingleplayerCharacters
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r6, r0
	blt _080166AE
	adds r0, r7, #0
	bl DisplaySprite
	mov r0, r8
	bl DisplaySprite
	mov r0, sl
	cmp r0, #0
	beq _0801670C
	b _08016810
_0801670C:
	movs r3, #0
	ldr r1, [sp, #4]
	adds r1, #0x6c
	str r1, [sp, #8]
	ldr r2, [sp, #4]
	adds r2, #0x6e
	str r2, [sp, #0xc]
	movs r0, #0x20
	adds r0, r0, r7
	mov ip, r0
	movs r1, #8
	mov sl, r1
	movs r2, #9
	rsbs r2, r2, #0
	mov sb, r2
	movs r6, #2
	adds r4, r5, #0
_0801672E:
	ldr r2, _08016830 @ =gPlayer
	cmp r3, #0
	beq _08016736
	ldr r2, _08016834 @ =gPartner
_08016736:
	ldr r1, [r2, #0x10]
	adds r0, r1, #0
	mov r5, sl
	ands r0, r5
	cmp r0, #0
	beq _08016750
	ldr r0, [r2, #0x28]
	cmp r0, r8
	bne _08016750
	mov r0, sb
	ands r1, r0
	orrs r1, r6
	str r1, [r2, #0x10]
_08016750:
	adds r3, #1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r3, r0
	blt _0801672E
	ldr r1, _08016820 @ =gCurTask
	ldr r0, [r1]
	ldr r2, _0801683C @ =sub_801685C
	str r2, [r0, #8]
	movs r5, #0
	ldr r0, _08016840 @ =0x0000023F
	strh r0, [r7, #0xa]
	movs r0, #2
	mov r3, ip
	strb r0, [r3]
	ldr r1, [sp, #8]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0xc]
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r3, _08016844 @ =0x00000241
	mov sl, r3
	str r5, [sp]
	movs r2, #0x40
	bl sub_80168F0
	ldrh r1, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	ldr r2, _08016848 @ =0x03000044
	adds r0, r1, r2
	movs r7, #0xff
	lsls r7, r7, #8
	strh r7, [r0]
	ldr r3, _0801684C @ =0x03000046
	adds r0, r1, r3
	movs r2, #0xfe
	lsls r2, r2, #8
	mov sb, r2
	mov r3, sb
	strh r3, [r0]
	ldr r2, _08016850 @ =0x03000048
	adds r0, r1, r2
	strh r5, [r0]
	ldr r3, _08016854 @ =0x03000042
	adds r0, r1, r3
	movs r6, #4
	strh r6, [r0]
	ldr r0, _08016858 @ =0x03000040
	adds r1, r1, r0
	movs r2, #0x3c
	mov r8, r2
	mov r3, r8
	strh r3, [r1]
	ldr r1, [sp, #8]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0xc]
	movs r2, #0
	ldrsh r1, [r3, r2]
	str r5, [sp]
	movs r2, #0x40
	mov r3, sl
	bl sub_80168F0
	ldrh r0, [r0, #6]
	adds r4, r0, r4
	ldr r3, _08016848 @ =0x03000044
	adds r2, r0, r3
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r2]
	ldr r2, _0801684C @ =0x03000046
	adds r1, r0, r2
	mov r3, sb
	strh r3, [r1]
	adds r2, #2
	adds r1, r0, r2
	strh r5, [r1]
	ldr r3, _08016854 @ =0x03000042
	adds r1, r0, r3
	strh r6, [r1]
	strh r7, [r4, #0x32]
	ldr r5, _08016858 @ =0x03000040
	adds r0, r0, r5
	mov r1, r8
	strh r1, [r0]
	ldr r2, [sp, #8]
	movs r3, #0
	ldrsh r0, [r2, r3]
	ldr r5, [sp, #0xc]
	movs r2, #0
	ldrsh r1, [r5, r2]
	bl sub_801749C
_08016810:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016820: .4byte gCurTask
_08016824: .4byte 0x0300006C
_08016828: .4byte gCamera
_0801682C: .4byte 0x0300006E
_08016830: .4byte gPlayer
_08016834: .4byte gPartner
_08016838: .4byte gNumSingleplayerCharacters
_0801683C: .4byte sub_801685C
_08016840: .4byte 0x0000023F
_08016844: .4byte 0x00000241
_08016848: .4byte 0x03000044
_0801684C: .4byte 0x03000046
_08016850: .4byte 0x03000048
_08016854: .4byte 0x03000042
_08016858: .4byte 0x03000040

	thumb_func_start sub_801685C
sub_801685C: @ 0x0801685C
	push {r4, r5, r6, r7, lr}
	ldr r0, _080168D4 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	adds r6, r4, #0
	ldr r1, _080168D8 @ =0x0300006C
	adds r0, r2, r1
	ldr r3, _080168DC @ =gCamera
	ldrh r0, [r0]
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldr r7, _080168E0 @ =0x0300006E
	adds r2, r2, r7
	ldrh r0, [r2]
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	movs r5, #0
_0801688E:
	ldr r3, _080168E4 @ =gPlayer
	cmp r5, #0
	beq _08016896
	ldr r3, _080168E8 @ =gPartner
_08016896:
	adds r0, r3, #0
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xf
	beq _080168B8
	adds r0, r6, #0
	adds r0, #0x6c
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, #2
	movs r7, #0
	ldrsh r2, [r0, r7]
	adds r0, r4, #0
	bl sub_80096B0
_080168B8:
	adds r5, #1
	ldr r0, _080168EC @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	blt _0801688E
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080168D4: .4byte gCurTask
_080168D8: .4byte 0x0300006C
_080168DC: .4byte gCamera
_080168E0: .4byte 0x0300006E
_080168E4: .4byte gPlayer
_080168E8: .4byte gPartner
_080168EC: .4byte gNumSingleplayerCharacters

@ --- Start of Task___sub_80168F0 ---
	thumb_func_start sub_80168F0
sub_80168F0: @ 0x080168F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r6, r2, #0
	mov sb, r3
	ldr r2, [sp, #0x34]
	mov sl, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #8]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, sb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r1, sl
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	ldr r0, _080169EC @ =Task_8016A14
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _080169F0 @ =TaskDestructor_sub_80168F0
	str r1, [sp]
	movs r1, #0x4c
	movs r3, #0
	bl TaskCreate
	adds r7, r0, #0
	ldrh r4, [r7, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r4, r5
	ldr r0, _080169F4 @ =0x03000030
	adds r2, r4, r0
	adds r0, #0x10
	adds r1, r4, r0
	movs r3, #0
	movs r0, #0x3c
	strh r0, [r1]
	mov r1, sp
	ldrh r1, [r1, #4]
	strh r1, [r5, #0x3c]
	mov r0, sp
	ldrh r0, [r0, #8]
	strh r0, [r5, #0x3e]
	ldr r1, _080169F8 @ =0x03000044
	adds r0, r4, r1
	movs r1, #0x80
	lsls r1, r1, #1
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	ldr r0, _080169FC @ =0x03000046
	adds r1, r4, r0
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r1]
	ldr r0, _08016A00 @ =0x03000048
	adds r1, r4, r0
	movs r0, #8
	strh r0, [r1]
	adds r0, r6, #0
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	ldr r3, [sp, #0x10]
	strh r3, [r5, #8]
	mov r1, sb
	strh r1, [r5, #0xa]
	ldr r1, _08016A04 @ =0x03000020
	adds r0, r4, r1
	mov r1, sl
	strb r1, [r0]
	strh r3, [r5, #0x14]
	strh r3, [r5, #0x1c]
	ldr r0, _08016A08 @ =0x03000021
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08016A0C @ =0x03000022
	adds r1, r4, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08016A10 @ =0x03000025
	adds r4, r4, r1
	movs r0, #0
	strb r0, [r4]
	movs r0, #0x70
	str r0, [r5, #0x10]
	ldr r2, [sp, #0xc]
	strh r3, [r2]
	mov r1, r8
	strh r1, [r2, #2]
	strh r1, [r2, #4]
	mov r0, sp
	ldrh r0, [r0, #4]
	strh r0, [r2, #6]
	mov r1, sp
	ldrh r1, [r1, #8]
	strh r1, [r2, #8]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080169EC: .4byte Task_8016A14
_080169F0: .4byte TaskDestructor_sub_80168F0
_080169F4: .4byte 0x03000030
_080169F8: .4byte 0x03000044
_080169FC: .4byte 0x03000046
_08016A00: .4byte 0x03000048
_08016A04: .4byte 0x03000020
_08016A08: .4byte 0x03000021
_08016A0C: .4byte 0x03000022
_08016A10: .4byte 0x03000025

	thumb_func_start Task_8016A14
Task_8016A14: @ 0x08016A14
	push {r4, r5, r6, lr}
	ldr r0, _08016A40 @ =gCurTask
	ldr r2, [r0]
	ldrh r5, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	adds r0, #0x30
	adds r4, r5, r0
	adds r0, #0x10
	adds r1, r5, r0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	ldr r1, _08016A44 @ =0xFFFF0000
	cmp r0, r1
	bne _08016A48
	adds r0, r2, #0
	bl TaskDestroy
	b _08016B66
	.align 2, 0
_08016A40: .4byte gCurTask
_08016A44: .4byte 0xFFFF0000
_08016A48:
	ldr r1, _08016ABC @ =0x03000046
	adds r2, r5, r1
	ldrh r0, [r2]
	adds r0, #0x28
	strh r0, [r2]
	ldr r0, _08016AC0 @ =0x03000044
	adds r3, r5, r0
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	ldrh r0, [r6, #0x3c]
	adds r1, r1, r0
	strh r1, [r6, #0x3c]
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r2, [r6, #0x3e]
	adds r0, r0, r2
	strh r0, [r6, #0x3e]
	ldr r2, _08016AC4 @ =gCamera
	ldrh r0, [r2]
	subs r1, r1, r0
	strh r1, [r4, #6]
	ldrh r0, [r6, #0x3e]
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r4, #8]
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	ble _08016AD8
	ldr r2, _08016AC8 @ =0x03000042
	adds r0, r5, r2
	ldrh r0, [r0]
	ldrh r1, [r4]
	adds r0, r0, r1
	ldr r2, _08016ACC @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r4]
	ldrh r2, [r4, #2]
	movs r0, #2
	ldrsh r1, [r4, r0]
	ldr r0, _08016AD0 @ =0xFFFFFE00
	cmp r1, r0
	ble _08016AAE
	ldr r1, _08016AD4 @ =0x03000048
	adds r0, r5, r1
	ldrh r0, [r0]
	subs r0, r2, r0
	strh r0, [r4, #2]
_08016AAE:
	ldrh r1, [r4, #2]
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _08016B0A
	b _08016B20
	.align 2, 0
_08016ABC: .4byte 0x03000046
_08016AC0: .4byte 0x03000044
_08016AC4: .4byte gCamera
_08016AC8: .4byte 0x03000042
_08016ACC: .4byte 0x000003FF
_08016AD0: .4byte 0xFFFFFE00
_08016AD4: .4byte 0x03000048
_08016AD8:
	ldr r0, _08016B10 @ =0x03000042
	adds r1, r5, r0
	ldrh r0, [r4]
	ldrh r1, [r1]
	subs r0, r0, r1
	ldr r2, _08016B14 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r4]
	ldrh r2, [r4, #2]
	movs r0, #2
	ldrsh r1, [r4, r0]
	ldr r0, _08016B18 @ =0x000001FF
	cmp r1, r0
	bgt _08016B00
	ldr r1, _08016B1C @ =0x03000048
	adds r0, r5, r1
	ldrh r0, [r0]
	adds r0, r2, r0
	strh r0, [r4, #2]
_08016B00:
	ldrh r1, [r4, #2]
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, #0
	blt _08016B20
_08016B0A:
	strh r1, [r4, #4]
	b _08016B24
	.align 2, 0
_08016B10: .4byte 0x03000042
_08016B14: .4byte 0x000003FF
_08016B18: .4byte 0x000001FF
_08016B1C: .4byte 0x03000048
_08016B20:
	rsbs r0, r1, #0
	strh r0, [r4, #4]
_08016B24:
	ldr r1, [r6, #0x10]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08016B58
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r6, #0x10]
	ldr r2, _08016B54 @ =sa2__gUnknown_030054B8
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r6, #0x10]
	orrs r0, r1
	str r0, [r6, #0x10]
	adds r0, r6, #0
	adds r1, r4, #0
	bl TransformSprite
	b _08016B60
	.align 2, 0
_08016B54: .4byte sa2__gUnknown_030054B8
_08016B58:
	ldrh r0, [r4, #6]
	strh r0, [r6, #0x16]
	ldrh r0, [r4, #8]
	strh r0, [r6, #0x18]
_08016B60:
	adds r0, r6, #0
	bl DisplaySprite
_08016B66:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

    @ Task struct size 0xC
	thumb_func_start Task_8016B6C
Task_8016B6C: @ 0x08016B6C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08016D54 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r7, #0xc0
	lsls r7, r7, #0x12
	adds r5, r0, r7
	ldrh r1, [r5, #4]
	adds r2, r1, #1
	strh r2, [r5, #4]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08016B92
	b _08016D2E
_08016B92:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	beq _08016C00
	movs r1, #0
	ldrsh r0, [r5, r1]
	ldrh r1, [r5, #2]
	subs r1, #0x20
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r4, _08016D58 @ =gUnknown_080BB43C
	ldr r2, _08016D5C @ =gCurrentLevel
	ldrb r3, [r2]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x19
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #1
	adds r2, r2, r4
	ldrh r2, [r2]
	movs r3, #0
	bl sub_8016D80
	ldrh r6, [r0, #6]
	adds r3, r6, r7
	ldr r2, _08016D60 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _08016D64 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08016D68 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	adds r4, r0, #0
	movs r1, #0xff
	ands r0, r1
	ldrh r1, [r3, #0x3e]
	adds r2, r0, r1
	strh r2, [r3, #0x3e]
	ldrh r1, [r5, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08016BEC
	rsbs r0, r2, #0
	strh r0, [r3, #0x3e]
_08016BEC:
	movs r0, #0xf8
	lsls r0, r0, #5
	ands r0, r4
	lsrs r0, r0, #4
	ldrh r2, [r3, #0x3c]
	adds r0, r0, r2
	strh r0, [r3, #0x3c]
	ldr r2, _08016D6C @ =0x03000040
	adds r1, r6, r2
	strh r0, [r1]
_08016C00:
	movs r1, #0
	ldrsh r0, [r5, r1]
	ldrh r1, [r5, #2]
	subs r1, #0x20
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r4, _08016D58 @ =gUnknown_080BB43C
	ldr r2, _08016D5C @ =gCurrentLevel
	ldrb r3, [r2]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x19
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #1
	adds r4, #2
	adds r2, r2, r4
	ldrh r2, [r2]
	movs r3, #0
	bl sub_8016D80
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r6, r0
	ldr r7, _08016D60 @ =gPseudoRandom
	ldr r0, [r7]
	ldr r2, _08016D64 @ =0x00196225
	mov sb, r2
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r2, _08016D68 @ =0x3C6EF35F
	mov r8, r2
	add r0, r8
	str r0, [r7]
	adds r4, r0, #0
	movs r1, #0xff
	ands r0, r1
	ldrh r1, [r3, #0x3e]
	adds r2, r0, r1
	strh r2, [r3, #0x3e]
	ldrh r1, [r5, #8]
	movs r0, #1
	mov sl, r0
	ands r0, r1
	cmp r0, #0
	bne _08016C62
	rsbs r0, r2, #0
	strh r0, [r3, #0x3e]
_08016C62:
	movs r0, #0xf8
	lsls r0, r0, #5
	ands r0, r4
	lsrs r0, r0, #4
	ldrh r1, [r3, #0x3c]
	adds r0, r0, r1
	strh r0, [r3, #0x3c]
	ldr r2, _08016D6C @ =0x03000040
	adds r1, r6, r2
	strh r0, [r1]
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #5
	beq _08016CDA
	movs r2, #0
	ldrsh r0, [r5, r2]
	ldrh r1, [r5, #2]
	subs r1, #0x20
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xe0
	lsls r2, r2, #1
	movs r3, #0
	bl sub_8016F44
	ldrh r6, [r0, #6]
	ldr r0, [r7]
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	add r0, r8
	str r0, [r7]
	adds r4, r0, #0
	ldr r0, _08016D70 @ =0x03000052
	adds r2, r6, r0
	movs r1, #7
	adds r0, r4, #0
	ands r0, r1
	ldrh r1, [r2]
	adds r3, r0, r1
	strh r3, [r2]
	ldrh r1, [r5, #8]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _08016CCC
	rsbs r0, r3, #0
	strh r0, [r2]
	ldr r2, _08016D74 @ =0x03000050
	adds r1, r6, r2
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
_08016CCC:
	ldr r0, _08016D78 @ =gPlayer
	ldr r0, [r0, #4]
	asrs r0, r0, #8
	subs r0, #0x20
	ldr r2, _08016D7C @ =0x0300004E
	adds r1, r6, r2
	strh r0, [r1]
_08016CDA:
	movs r1, #0
	ldrsh r0, [r5, r1]
	ldrh r1, [r5, #2]
	subs r1, #0x20
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xdd
	lsls r2, r2, #1
	movs r3, #0
	bl sub_8016F44
	ldrh r3, [r0, #6]
	asrs r4, r4, #8
	ldr r0, _08016D70 @ =0x03000052
	adds r2, r3, r0
	movs r0, #7
	ands r4, r0
	ldrh r1, [r2]
	adds r4, r4, r1
	strh r4, [r2]
	ldrh r1, [r5, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08016D1A
	rsbs r0, r4, #0
	strh r0, [r2]
	ldr r2, _08016D74 @ =0x03000050
	adds r1, r3, r2
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
_08016D1A:
	ldr r0, _08016D78 @ =gPlayer
	ldr r0, [r0, #4]
	asrs r0, r0, #8
	subs r0, #0x20
	ldr r2, _08016D7C @ =0x0300004E
	adds r1, r3, r2
	strh r0, [r1]
	ldrh r0, [r5, #8]
	adds r0, #1
	strh r0, [r5, #8]
_08016D2E:
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #0xc
	ble _08016D44
	movs r0, #0
	strh r0, [r5, #4]
	strh r0, [r5, #6]
	ldr r0, _08016D54 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08016D44:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016D54: .4byte gCurTask
_08016D58: .4byte gUnknown_080BB43C
_08016D5C: .4byte gCurrentLevel
_08016D60: .4byte gPseudoRandom
_08016D64: .4byte 0x00196225
_08016D68: .4byte 0x3C6EF35F
_08016D6C: .4byte 0x03000040
_08016D70: .4byte 0x03000052
_08016D74: .4byte 0x03000050
_08016D78: .4byte gPlayer
_08016D7C: .4byte 0x0300004E

	thumb_func_start sub_8016D80
sub_8016D80: @ 0x08016D80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	mov sb, r1
	mov sl, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #4]
	ldr r0, _08016E38 @ =sub_8016E54
	ldr r1, _08016E3C @ =TaskDestructor_sub_8017658
	str r1, [sp]
	movs r1, #0x44
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	adds r7, r0, #0
	ldrh r5, [r7, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	movs r6, #0
	mov r0, r8
	strh r0, [r4, #0x38]
	mov r1, sb
	strh r1, [r4, #0x3a]
	movs r1, #0xfc
	lsls r1, r1, #8
	strh r1, [r4, #0x3c]
	ldr r2, _08016E40 @ =0x03000040
	adds r0, r5, r2
	strh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x3e]
	str r6, [r4, #0x34]
	str r6, [r4, #0x30]
	movs r0, #4
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x1a]
	strh r6, [r4, #8]
	mov r0, sl
	strh r0, [r4, #0xa]
	ldr r1, _08016E44 @ =0x03000020
	adds r0, r5, r1
	mov r2, sp
	ldrb r2, [r2, #4]
	strb r2, [r0]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	ldr r0, _08016E48 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r2, _08016E4C @ =0x03000022
	adds r1, r5, r2
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _08016E50 @ =0x03000025
	adds r5, r5, r0
	movs r1, #0
	strb r1, [r5]
	movs r2, #0x80
	lsls r2, r2, #6
	str r2, [r4, #0x10]
	adds r0, r7, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08016E38: .4byte sub_8016E54
_08016E3C: .4byte TaskDestructor_sub_8017658
_08016E40: .4byte 0x03000040
_08016E44: .4byte 0x03000020
_08016E48: .4byte 0x03000021
_08016E4C: .4byte 0x03000022
_08016E50: .4byte 0x03000025

	thumb_func_start sub_8016E54
sub_8016E54: @ 0x08016E54
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _08016ECC @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	adds r5, r4, #0
	ldrh r1, [r4, #0x3c]
	adds r1, #0x28
	strh r1, [r4, #0x3c]
	movs r0, #0x3c
	ldrsh r2, [r4, r0]
	ldr r0, [r4, #0x34]
	adds r3, r0, r2
	str r3, [r4, #0x34]
	movs r0, #0x3e
	ldrsh r2, [r4, r0]
	ldr r0, [r4, #0x30]
	adds r2, r0, r2
	str r2, [r4, #0x30]
	lsls r1, r1, #0x10
	cmp r1, #0
	ble _08016EEE
	movs r1, #0x3a
	ldrsh r0, [r4, r1]
	asrs r1, r3, #8
	adds r0, r0, r1
	movs r3, #0x38
	ldrsh r1, [r4, r3]
	asrs r2, r2, #8
	adds r1, r1, r2
	ldr r2, _08016ED0 @ =sa2__sub_801EC3C
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F100
	cmp r0, #0
	bge _08016EEE
	ldr r1, _08016ED4 @ =0x03000040
	adds r0, r6, r1
	ldrh r0, [r0]
	strh r0, [r4, #0x3c]
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	movs r1, #0x20
	rsbs r1, r1, #0
	cmp r0, r1
	bge _08016ED8
	ldrh r1, [r4, #0x3e]
	movs r2, #0x3e
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _08016ED8
	rsbs r0, r1, #0
	strh r0, [r4, #0x3e]
	b _08016EEE
	.align 2, 0
_08016ECC: .4byte gCurTask
_08016ED0: .4byte sa2__sub_801EC3C
_08016ED4: .4byte 0x03000040
_08016ED8:
	ldr r0, [r5, #0x30]
	asrs r0, r0, #8
	cmp r0, #0x20
	ble _08016EEE
	ldrh r1, [r5, #0x3e]
	movs r3, #0x3e
	ldrsh r0, [r5, r3]
	cmp r0, #0
	ble _08016EEE
	rsbs r0, r1, #0
	strh r0, [r5, #0x3e]
_08016EEE:
	movs r1, #0x3e
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _08016F04
	ldr r0, [r4, #0x10]
	ldr r1, _08016F00 @ =0xFFFFFBFF
	ands r0, r1
	b _08016F0C
	.align 2, 0
_08016F00: .4byte 0xFFFFFBFF
_08016F04:
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
_08016F0C:
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x30]
	asrs r0, r0, #8
	ldrh r2, [r5, #0x38]
	adds r0, r0, r2
	ldr r2, _08016F40 @ =gCamera
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldr r0, [r5, #0x34]
	asrs r0, r0, #8
	ldrh r5, [r5, #0x3a]
	adds r0, r0, r5
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08016F40: .4byte gCamera

	thumb_func_start sub_8016F44
sub_8016F44: @ 0x08016F44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov r8, r0
	mov sb, r1
	mov sl, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #4]
	ldr r0, _08017024 @ =sub_8017054
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08017028 @ =TaskDestructor_sub_8017658
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #8]
	ldrh r4, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r4, r5
	ldr r0, _0801702C @ =0x03000030
	adds r7, r4, r0
	ldr r1, _08017030 @ =0x03000044
	adds r0, r4, r1
	movs r6, #0
	mov r2, r8
	strh r2, [r0]
	adds r1, #2
	adds r0, r4, r1
	mov r2, sb
	strh r2, [r0]
	ldr r0, _08017034 @ =0x03000048
	adds r1, r4, r0
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r1]
	str r6, [r5, #0x40]
	str r6, [r5, #0x3c]
	ldr r1, _08017038 @ =0x0300004C
	adds r0, r4, r1
	strh r6, [r0]
	ldr r2, _0801703C @ =0x0300004E
	adds r0, r4, r2
	strh r6, [r0]
	adds r1, #4
	adds r0, r4, r1
	strh r6, [r0]
	adds r2, #4
	adds r1, r4, r2
	movs r0, #1
	strh r0, [r1]
	movs r0, #4
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	strh r6, [r5, #8]
	mov r0, sl
	strh r0, [r5, #0xa]
	ldr r1, _08017040 @ =0x03000020
	adds r0, r4, r1
	mov r2, sp
	ldrb r2, [r2, #4]
	strb r2, [r0]
	strh r6, [r5, #0x14]
	strh r6, [r5, #0x1c]
	ldr r0, _08017044 @ =0x03000021
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r2, _08017048 @ =0x03000022
	adds r1, r4, r2
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _0801704C @ =0x03000025
	adds r4, r4, r0
	movs r1, #0
	strb r1, [r4]
	ldr r0, _08017050 @ =0x00002070
	str r0, [r5, #0x10]
	strh r6, [r7]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r7, #2]
	strh r0, [r7, #4]
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08017024: .4byte sub_8017054
_08017028: .4byte TaskDestructor_sub_8017658
_0801702C: .4byte 0x03000030
_08017030: .4byte 0x03000044
_08017034: .4byte 0x03000048
_08017038: .4byte 0x0300004C
_0801703C: .4byte 0x0300004E
_08017040: .4byte 0x03000020
_08017044: .4byte 0x03000021
_08017048: .4byte 0x03000022
_0801704C: .4byte 0x03000025
_08017050: .4byte 0x00002070

	thumb_func_start sub_8017054
sub_8017054: @ 0x08017054
	push {r4, r5, r6, lr}
	ldr r0, _080170D0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	mov ip, r5
	adds r0, #0x30
	adds r6, r1, r0
	ldr r3, _080170D4 @ =0x0300004C
	adds r2, r1, r3
	ldrh r0, [r2]
	adds r0, #0x10
	ldr r3, _080170D8 @ =0x000003FF
	adds r4, r3, #0
	ands r0, r4
	strh r0, [r2]
	ldr r0, _080170DC @ =0x03000050
	adds r3, r1, r0
	adds r0, #2
	adds r1, r1, r0
	ldrh r0, [r1]
	ldrh r1, [r3]
	adds r0, r0, r1
	ands r0, r4
	strh r0, [r3]
	ldr r4, _080170E0 @ =gSineTable
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	asrs r0, r0, #2
	str r0, [r5, #0x40]
	ldrh r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	str r0, [r5, #0x3c]
	ldrh r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	asrs r0, r0, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	strh r2, [r6, #4]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	ble _080170E4
	movs r0, #0xf0
	lsls r0, r0, #2
	b _080170E8
	.align 2, 0
_080170D0: .4byte gCurTask
_080170D4: .4byte 0x0300004C
_080170D8: .4byte 0x000003FF
_080170DC: .4byte 0x03000050
_080170E0: .4byte gSineTable
_080170E4:
	movs r0, #0x88
	lsls r0, r0, #3
_080170E8:
	strh r0, [r5, #0x1a]
	mov r0, ip
	adds r0, #0x52
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	ble _08017110
	mov r0, ip
	adds r0, #0x50
	ldrh r0, [r0]
	ldr r1, _0801710C @ =0xFFFFFF00
	adds r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0801712C
	b _08017124
	.align 2, 0
_0801710C: .4byte 0xFFFFFF00
_08017110:
	mov r0, ip
	adds r0, #0x50
	ldrh r0, [r0]
	ldr r3, _08017128 @ =0xFFFFFF00
	adds r0, r0, r3
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0801712C
_08017124:
	strh r2, [r6, #2]
	b _08017134
	.align 2, 0
_08017128: .4byte 0xFFFFFF00
_0801712C:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	strh r0, [r6, #2]
_08017134:
	mov r1, ip
	adds r1, #0x46
	mov r0, ip
	adds r0, #0x4e
	ldrh r2, [r1]
	ldrh r0, [r0]
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r3, r1, #0
	cmp r0, #0
	ble _08017150
	subs r0, r2, #1
	b _08017156
_08017150:
	cmp r0, #0
	bge _08017158
	adds r0, r2, #1
_08017156:
	strh r0, [r3]
_08017158:
	mov r1, ip
	adds r1, #0x44
	mov r2, ip
	ldr r0, [r2, #0x3c]
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r2, _080171B4 @ =gCamera
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r6, #6]
	mov r1, ip
	ldr r0, [r1, #0x40]
	asrs r0, r0, #8
	ldrh r3, [r3]
	adds r0, r0, r3
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r6, #8]
	ldr r0, [r5, #0x10]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	ldr r2, _080171B8 @ =sa2__gUnknown_030054B8
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r5, #0x10]
	orrs r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	adds r1, r6, #0
	bl TransformSprite
	adds r0, r5, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080171B4: .4byte gCamera
_080171B8: .4byte sa2__gUnknown_030054B8

	thumb_func_start sub_80171BC
sub_80171BC: @ 0x080171BC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, _0801723C @ =sub_8017244
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r7, r0, #0
	ldrh r2, [r7, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
	strh r4, [r2]
	strh r5, [r2, #2]
	strh r6, [r2, #4]
	mov r1, r8
	strh r1, [r2, #6]
	ldr r3, _08017240 @ =gCamera
	ldrh r4, [r3, #2]
	strh r4, [r3, #0x14]
	adds r1, r4, #0
	adds r1, #0xa0
	strh r1, [r3, #0x16]
	ldrh r0, [r3]
	strh r0, [r3, #0x18]
	mov r5, r8
	strh r5, [r3, #0x1a]
	movs r5, #2
	ldrsh r0, [r2, r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r0, r1
	ble _0801722E
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r4, r1
	strh r0, [r3, #0x16]
_0801722E:
	adds r0, r7, #0
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801723C: .4byte sub_8017244
_08017240: .4byte gCamera

	thumb_func_start sub_8017244
sub_8017244: @ 0x08017244
	push {r4, r5, r6, lr}
	ldr r2, _0801726C @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, _08017270 @ =gCamera
	movs r1, #0
	ldrsh r3, [r5, r1]
	ldrh r4, [r0, #0x14]
	movs r6, #0x14
	ldrsh r1, [r0, r6]
	adds r6, r2, #0
	adds r2, r0, #0
	cmp r3, r1
	ble _08017274
	adds r0, r4, #1
	b _0801727A
	.align 2, 0
_0801726C: .4byte gCurTask
_08017270: .4byte gCamera
_08017274:
	cmp r3, r1
	bge _0801727C
	subs r0, r4, #1
_0801727A:
	strh r0, [r2, #0x14]
_0801727C:
	movs r0, #2
	ldrsh r3, [r5, r0]
	ldrh r0, [r2, #0x16]
	movs r4, #0x16
	ldrsh r1, [r2, r4]
	cmp r3, r1
	ble _0801728E
	adds r0, #1
	b _08017294
_0801728E:
	cmp r3, r1
	bge _08017296
	subs r0, #1
_08017294:
	strh r0, [r2, #0x16]
_08017296:
	movs r0, #4
	ldrsh r3, [r5, r0]
	ldrh r0, [r2, #0x18]
	movs r4, #0x18
	ldrsh r1, [r2, r4]
	cmp r3, r1
	ble _080172A8
	adds r0, #1
	b _080172AE
_080172A8:
	cmp r3, r1
	bge _080172B0
	subs r0, #1
_080172AE:
	strh r0, [r2, #0x18]
_080172B0:
	ldr r1, [r5]
	ldr r0, [r2, #0x14]
	cmp r1, r0
	bne _080172C6
	ldr r1, [r5, #4]
	ldr r0, [r2, #0x18]
	cmp r1, r0
	bne _080172C6
	ldr r0, [r6]
	bl TaskDestroy
_080172C6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start Task_80172CC
Task_80172CC: @ 0x080172CC
	push {r4, r5, r6, lr}
	ldr r2, _080172F4 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, _080172F8 @ =gCamera
	movs r3, #0
	ldrsh r1, [r5, r3]
	ldrh r4, [r0, #0x14]
	movs r6, #0x14
	ldrsh r3, [r0, r6]
	adds r6, r2, #0
	adds r2, r0, #0
	cmp r1, r3
	ble _080172FC
	adds r0, r4, #1
	b _08017302
	.align 2, 0
_080172F4: .4byte gCurTask
_080172F8: .4byte gCamera
_080172FC:
	cmp r1, r3
	bge _08017304
	subs r0, r4, #1
_08017302:
	strh r0, [r2, #0x14]
_08017304:
	movs r1, #2
	ldrsh r0, [r5, r1]
	ldrh r1, [r2, #0x16]
	movs r4, #0x16
	ldrsh r3, [r2, r4]
	cmp r0, r3
	ble _08017316
	adds r0, r1, #1
	b _0801731C
_08017316:
	cmp r0, r3
	bge _0801731E
	subs r0, r1, #1
_0801731C:
	strh r0, [r2, #0x16]
_0801731E:
	ldr r1, [r5]
	ldr r0, [r2, #0x14]
	cmp r1, r0
	bne _0801732C
	ldr r0, [r6]
	bl TaskDestroy
_0801732C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Task_8017334
Task_8017334: @ 0x08017334
	push {r4, r5, r6, r7, lr}
	ldr r0, _080173A0 @ =gCurTask
	mov ip, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r2, [r6, #4]
	ldr r0, [r2]
	asrs r0, r0, #8
	ldr r1, _080173A4 @ =gCamera
	ldrh r1, [r1]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0x78
	ble _080173A8
	ldr r3, [r2, #0x10]
	movs r7, #0x80
	lsls r7, r7, #0xe
	orrs r3, r7
	str r3, [r2, #0x10]
	movs r5, #0
	movs r0, #0x10
	strh r0, [r2, #0x38]
	adds r0, r2, #0
	adds r0, #0x3c
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #3
	movs r0, #0xc8
	subs r0, r0, r1
	cmp r0, r4
	bge _080173F6
	strh r5, [r2, #0xc]
	strh r5, [r2, #8]
	orrs r3, r7
	strh r5, [r2, #0x38]
	movs r0, #1
	orrs r3, r0
	str r3, [r2, #0x10]
	adds r1, r2, #0
	adds r1, #0x40
	movs r0, #0x1d
	strb r0, [r1]
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x10]
	strh r5, [r6]
	strh r5, [r6, #2]
	b _080173EE
	.align 2, 0
_080173A0: .4byte gCurTask
_080173A4: .4byte gCamera
_080173A8:
	ldr r1, [r2, #0x10]
	movs r5, #0x80
	lsls r5, r5, #0xe
	orrs r1, r5
	str r1, [r2, #0x10]
	movs r3, #0
	movs r0, #0x20
	strh r0, [r2, #0x38]
	adds r0, r2, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #3
	adds r0, #0x28
	cmp r0, r4
	ble _080173F6
	strh r3, [r2, #0xc]
	strh r3, [r2, #8]
	orrs r1, r5
	strh r3, [r2, #0x38]
	movs r0, #1
	orrs r1, r0
	str r1, [r2, #0x10]
	adds r1, r2, #0
	adds r1, #0x40
	movs r0, #0x1d
	strb r0, [r1]
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x10]
	strh r3, [r6]
	strh r3, [r6, #2]
_080173EE:
	mov r0, ip
	ldr r1, [r0]
	ldr r0, _080173FC @ =sub_8017400
	str r0, [r1, #8]
_080173F6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080173FC: .4byte sub_8017400

	thumb_func_start sub_8017400
sub_8017400: @ 0x08017400
	push {r4, r5, lr}
	ldr r5, _08017490 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, [r4, #4]
	ldr r0, [r2, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08017422
	adds r1, r2, #0
	adds r1, #0x40
	movs r0, #0x1d
	strb r0, [r1]
_08017422:
	adds r0, r2, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08017488
	ldr r0, [r2, #0x64]
	ldr r0, [r0, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801745E
	ldrh r0, [r4]
	adds r1, r0, #1
	strh r1, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	ble _0801745E
	ldr r0, _08017494 @ =gRingCount
	ldrh r0, [r0]
	ldr r1, _08017498 @ =gCourseTime
	ldr r1, [r1]
	bl CreateStageResults
	ldr r0, [r5]
	bl TaskDestroy
_0801745E:
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08017488
	ldrh r0, [r4, #2]
	adds r1, r0, #1
	strh r1, [r4, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf0
	ble _08017488
	ldr r0, _08017494 @ =gRingCount
	ldrh r0, [r0]
	ldr r1, _08017498 @ =gCourseTime
	ldr r1, [r1]
	bl CreateStageResults
	ldr r0, _08017490 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08017488:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017490: .4byte gCurTask
_08017494: .4byte gRingCount
_08017498: .4byte gCourseTime

	thumb_func_start sub_801749C
sub_801749C: @ 0x0801749C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r0, _080174D8 @ =Task_8016B6C
	movs r2, #0x80
	lsls r2, r2, #6
	movs r4, #0
	str r4, [sp]
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r1, r1, r2
	strh r4, [r1, #4]
	strh r4, [r1, #8]
	strh r5, [r1]
	strh r6, [r1, #2]
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080174D8: .4byte Task_8016B6C

	thumb_func_start sub_80174DC
sub_80174DC: @ 0x080174DC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _08017538 @ =Task_80172CC
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r6, r0, #0
	ldrh r1, [r6, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	strh r4, [r1]
	strh r5, [r1, #2]
	ldr r3, _0801753C @ =gCamera
	ldrh r2, [r3, #2]
	strh r2, [r3, #0x14]
	adds r0, r2, #0
	adds r0, #0xa0
	strh r0, [r3, #0x16]
	movs r4, #2
	ldrsh r1, [r1, r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _0801752C
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r2, r1
	strh r0, [r3, #0x16]
_0801752C:
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08017538: .4byte Task_80172CC
_0801753C: .4byte gCamera

	thumb_func_start sub_8017540
sub_8017540: @ 0x08017540
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	movs r7, #0
	movs r4, #0x80
	lsls r4, r4, #6
	ldr r1, _08017594 @ =0x06011000
	ldr r2, _08017598 @ =0x00000263
	str r7, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl CreateNutsAndBoltsTask
	adds r7, r0, #0
	ldrh r2, [r7, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
	str r5, [r2, #0x30]
	str r6, [r2, #0x34]
	str r4, [r2, #0x10]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r2, #0x1a]
	ldr r3, _0801759C @ =gPseudoRandom
	ldr r1, [r3]
	ldr r0, _080175A0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080175A4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r3]
	movs r1, #0xc0
	lsls r1, r1, #4
	ands r0, r1
	orrs r0, r4
	str r0, [r2, #0x10]
	adds r0, r7, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08017594: .4byte 0x06011000
_08017598: .4byte 0x00000263
_0801759C: .4byte gPseudoRandom
_080175A0: .4byte 0x00196225
_080175A4: .4byte 0x3C6EF35F

	thumb_func_start sub_80175A8
sub_80175A8: @ 0x080175A8
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #4]
	bl VramFree
	ldr r0, [r4, #0x34]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_sub_80168F0
TaskDestructor_sub_80168F0: @ 0x080175C4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80175D8
sub_80175D8: @ 0x080175D8
	push {r4, r5, lr}
	ldr r5, _08017648 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _0801764C @ =gPlayer
	ldr r0, [r0, #0x64]
	ldr r0, [r0, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08017616
	ldrh r0, [r4, #4]
	adds r1, r0, #1
	strh r1, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	ble _08017616
	ldr r0, _08017650 @ =gRingCount
	ldrh r0, [r0]
	ldr r1, _08017654 @ =gCourseTime
	ldr r1, [r1]
	bl CreateStageResults
	ldr r0, [r5]
	bl TaskDestroy
_08017616:
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08017640
	ldrh r0, [r4, #6]
	adds r1, r0, #1
	strh r1, [r4, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf0
	ble _08017640
	ldr r0, _08017650 @ =gRingCount
	ldrh r0, [r0]
	ldr r1, _08017654 @ =gCourseTime
	ldr r1, [r1]
	bl CreateStageResults
	ldr r0, _08017648 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08017640:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017648: .4byte gCurTask
_0801764C: .4byte gPlayer
_08017650: .4byte gRingCount
_08017654: .4byte gCourseTime

	thumb_func_start TaskDestructor_sub_8017658
TaskDestructor_sub_8017658: @ 0x08017658
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_801766C
sub_801766C: @ 0x0801766C
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _08017698 @ =Task_8017334
	movs r2, #0x80
	lsls r2, r2, #6
	movs r4, #0
	str r4, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	strh r4, [r0]
	str r5, [r0, #4]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017698: .4byte Task_8017334
@ --- End of Task___sub_80168F0 ---
