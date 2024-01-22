.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_ItemBox_ChaoHunt
CreateEntity_ItemBox_ChaoHunt: @ 0x0801BACC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sb, r3
	ldr r0, _0801BB08 @ =gUnknown_03005074
	ldrb r2, [r0]
	movs r0, #7
	ands r0, r2
	movs r1, #3
	ldrsb r1, [r6, r1]
	cmp r0, r1
	bne _0801BB10
	movs r1, #4
	ldrsb r1, [r6, r1]
	lsrs r0, r2, #4
	cmp r1, r0
	bgt _0801BB10
	ldr r0, _0801BB0C @ =Task_Interactable115_Main0
	b _0801BB12
	.align 2, 0
_0801BB08: .4byte gUnknown_03005074
_0801BB0C: .4byte Task_Interactable115_Main0
_0801BB10:
	ldr r0, _0801BC4C @ =Task_Interactable115_Main1
_0801BB12:
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _0801BC50 @ =TaskDestructor_Interactable115
	str r1, [sp]
	movs r1, #0x84
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	movs r0, #4
	ldrsb r0, [r6, r0]
	ldr r1, _0801BC54 @ =gUnknown_03005074
	ldrb r1, [r1]
	lsrs r1, r1, #4
	cmp r0, r1
	bgt _0801BB34
	strb r1, [r6, #4]
_0801BB34:
	ldrh r2, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r1, _0801BC58 @ =0x0300000C
	adds r7, r2, r1
	strh r5, [r0, #4]
	mov r3, r8
	strh r3, [r0, #6]
	str r6, [r0]
	ldrb r1, [r6]
	strb r1, [r0, #8]
	mov r1, sb
	strb r1, [r0, #9]
	ldr r3, _0801BC5C @ =0x0300007E
	adds r0, r2, r3
	movs r1, #0
	strh r1, [r0]
	subs r3, #2
	adds r0, r2, r3
	strh r1, [r0]
	ldr r1, _0801BC60 @ =0x03000080
	adds r0, r2, r1
	movs r3, #0
	strb r3, [r0]
	ldr r0, _0801BC64 @ =gUnknown_03005010
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	ldr r1, _0801BC68 @ =0x03000081
	adds r1, r1, r2
	mov sb, r1
	strb r0, [r1]
	ldrb r0, [r6]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r7, #0x16]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	mov r3, r8
	lsls r3, r3, #8
	mov sl, r3
	add r0, sl
	strh r0, [r7, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	movs r0, #0x10
	str r2, [sp, #4]
	bl VramMalloc
	str r0, [r7, #4]
	movs r3, #0x90
	lsls r3, r3, #3
	strh r3, [r7, #0x1a]
	movs r0, #0
	strh r0, [r7, #8]
	ldr r0, _0801BC6C @ =0x000002C1
	strh r0, [r7, #0xa]
	ldr r2, [sp, #4]
	ldr r1, _0801BC70 @ =0x0300002C
	adds r0, r2, r1
	movs r3, #0
	strb r3, [r0]
	movs r0, #0
	strh r0, [r7, #0x14]
	strh r0, [r7, #0x1c]
	ldr r3, _0801BC74 @ =0x0300002D
	adds r1, r2, r3
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _0801BC78 @ =0x0300002E
	adds r0, r2, r1
	movs r4, #0x10
	strb r4, [r0]
	adds r3, #4
	adds r0, r2, r3
	movs r1, #0
	strb r1, [r0]
	movs r3, #0x80
	lsls r3, r3, #6
	mov r8, r3
	str r3, [r7, #0x10]
	adds r0, r7, #0
	str r2, [sp, #4]
	bl UpdateSpriteAnimation
	ldr r2, [sp, #4]
	ldr r0, _0801BC7C @ =0x0300003C
	adds r7, r2, r0
	movs r0, #4
	bl VramMalloc
	str r0, [r7, #4]
	ldrb r0, [r6]
	lsls r0, r0, #3
	adds r0, r0, r5
	strh r0, [r7, #0x16]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	add r0, sl
	strh r0, [r7, #0x18]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r7, #0x1a]
	ldr r2, [sp, #4]
	ldr r3, _0801BC80 @ =0x0300005E
	adds r0, r2, r3
	strb r4, [r0]
	movs r0, #0
	strh r0, [r7, #8]
	strh r0, [r7, #0x14]
	strh r0, [r7, #0x1c]
	subs r3, #1
	adds r1, r2, r3
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _0801BC84 @ =0x03000061
	adds r0, r2, r1
	movs r3, #0
	strb r3, [r0]
	movs r0, #0x98
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	mov r0, r8
	str r0, [r7, #0x10]
	ldr r0, _0801BC88 @ =0x000002C2
	strh r0, [r7, #0xa]
	ldr r0, _0801BC8C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _0801BC94
	ldr r1, _0801BC90 @ =gUnknown_080BB4D0
	b _0801BC96
	.align 2, 0
_0801BC4C: .4byte Task_Interactable115_Main1
_0801BC50: .4byte TaskDestructor_Interactable115
_0801BC54: .4byte gUnknown_03005074
_0801BC58: .4byte 0x0300000C
_0801BC5C: .4byte 0x0300007E
_0801BC60: .4byte 0x03000080
_0801BC64: .4byte gUnknown_03005010
_0801BC68: .4byte 0x03000081
_0801BC6C: .4byte 0x000002C1
_0801BC70: .4byte 0x0300002C
_0801BC74: .4byte 0x0300002D
_0801BC78: .4byte 0x0300002E
_0801BC7C: .4byte 0x0300003C
_0801BC80: .4byte 0x0300005E
_0801BC84: .4byte 0x03000061
_0801BC88: .4byte 0x000002C2
_0801BC8C: .4byte gGameMode
_0801BC90: .4byte gUnknown_080BB4D0
_0801BC94:
	ldr r1, _0801BCBC @ =gUnknown_080BB4D4
_0801BC96:
	mov r3, sb
	ldrb r0, [r3]
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r3, _0801BCC0 @ =0x0300005C
	adds r0, r2, r3
	strb r1, [r0]
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
_0801BCBC: .4byte gUnknown_080BB4D4
_0801BCC0: .4byte 0x0300005C

	thumb_func_start Task_Interactable115_Main1
Task_Interactable115_Main1: @ 0x0801BCC4
	push {r4, r5, r6, r7, lr}
	ldr r2, _0801BD14 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r5, [r4]
	ldrb r0, [r4, #8]
	lsls r0, r0, #3
	ldrh r1, [r4, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	ldrh r1, [r4, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r1, #3
	ldrsb r1, [r5, r1]
	ldr r0, _0801BD18 @ =gUnknown_03005074
	ldrb r3, [r0]
	movs r0, #7
	ands r0, r3
	cmp r1, r0
	bne _0801BD20
	movs r0, #4
	ldrsb r0, [r5, r0]
	lsrs r1, r3, #4
	cmp r0, r1
	bgt _0801BD20
	strb r1, [r5, #4]
	ldr r1, [r2]
	ldr r0, _0801BD1C @ =sub_801C420
	str r0, [r1, #8]
	b _0801BD5A
	.align 2, 0
_0801BD14: .4byte gCurTask
_0801BD18: .4byte gUnknown_03005074
_0801BD1C: .4byte sub_801C420
_0801BD20:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	ldr r3, _0801BD60 @ =gCamera
	movs r6, #0
	ldrsh r1, [r3, r6]
	subs r0, r0, r1
	adds r0, #0x80
	movs r1, #0xf8
	lsls r1, r1, #1
	cmp r0, r1
	bhi _0801BD50
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	movs r6, #2
	ldrsh r1, [r3, r6]
	subs r1, r0, r1
	adds r0, r1, #0
	adds r0, #0x80
	cmp r0, #0
	blt _0801BD50
	movs r0, #0xb8
	lsls r0, r0, #1
	cmp r1, r0
	ble _0801BD5A
_0801BD50:
	ldrb r0, [r4, #8]
	strb r0, [r5]
	ldr r0, [r2]
	bl TaskDestroy
_0801BD5A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801BD60: .4byte gCamera

	thumb_func_start Task_Interactable115_Main0
Task_Interactable115_Main0: @ 0x0801BD64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	movs r0, #0
	str r0, [sp, #8]
	ldr r1, _0801BE04 @ =gCurTask
	mov sl, r1
	ldr r0, [r1]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	ldr r2, _0801BE08 @ =0x0300000C
	adds r7, r5, r2
	ldr r3, [r6]
	mov sb, r3
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
	lsrs r4, r0, #0x10
	movs r1, #3
	ldrsb r1, [r3, r1]
	ldr r0, _0801BE0C @ =gUnknown_03005074
	ldrb r2, [r0]
	movs r0, #7
	ands r0, r2
	mov r3, sl
	cmp r1, r0
	beq _0801BE18
	ldr r1, _0801BE10 @ =gPlayer
	ldr r2, [r1, #0x10]
	movs r0, #8
	ands r0, r2
	mov sl, r1
	cmp r0, #0
	beq _0801BDDA
	ldr r0, [r1, #0x28]
	cmp r0, r7
	bne _0801BDDA
	movs r0, #9
	rsbs r0, r0, #0
	ands r2, r0
	movs r0, #2
	orrs r2, r0
	str r2, [r1, #0x10]
_0801BDDA:
	ldr r0, [r6, #0x78]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801BDF6
	mov r1, sl
	ldr r0, [r1, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, sl
	str r0, [r2, #0x10]
	movs r0, #0
	str r0, [r6, #0x78]
_0801BDF6:
	ldr r1, [r3]
	ldr r0, _0801BE14 @ =sub_801C69C
	str r0, [r1, #8]
	bl _call_via_r0
	b _0801C11A
	.align 2, 0
_0801BE04: .4byte gCurTask
_0801BE08: .4byte 0x0300000C
_0801BE0C: .4byte gUnknown_03005074
_0801BE10: .4byte gPlayer
_0801BE14: .4byte sub_801C69C
_0801BE18:
	mov r3, sb
	movs r1, #4
	ldrsb r1, [r3, r1]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x1c
	cmp r1, r0
	ble _0801BEA4
	movs r0, #0xa7
	bl m4aSongNumStart
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldr r3, _0801BE94 @ =0x0300007C
	adds r2, r5, r3
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r2]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl CreateDustCloud
	mov r0, sl
	ldr r1, [r0]
	ldr r0, _0801BE98 @ =sub_801C2FC
	str r0, [r1, #8]
	ldr r1, _0801BE9C @ =0x03000080
	adds r0, r5, r1
	mov r2, sp
	ldrb r2, [r2, #8]
	strb r2, [r0]
	ldr r2, _0801BEA0 @ =gPlayer
	ldr r1, [r2, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0801BE76
	ldr r0, [r2, #0x28]
	cmp r0, r7
	bne _0801BE76
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r2, #0x10]
_0801BE76:
	ldr r0, [r6, #0x78]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0801BE82
	b _0801C11A
_0801BE82:
	ldr r2, _0801BEA0 @ =gPlayer
	ldr r0, [r2, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r2, #0x10]
	movs r0, #0
	str r0, [r6, #0x78]
	b _0801C11A
	.align 2, 0
_0801BE94: .4byte 0x0300007C
_0801BE98: .4byte sub_801C2FC
_0801BE9C: .4byte 0x03000080
_0801BEA0: .4byte gPlayer
_0801BEA4:
	ldr r3, _0801BFD8 @ =0x03000080
	adds r3, r3, r5
	mov sl, r3
	ldrb r0, [r3]
	mov r1, r8
	lsls r1, r1, #0x10
	mov r8, r1
	lsls r4, r4, #0x10
	str r4, [sp, #0xc]
	cmp r0, #0
	beq _0801BF04
	ldr r2, _0801BFDC @ =0x0300007C
	adds r4, r5, r2
	ldr r3, _0801BFE0 @ =0x0300007E
	adds r1, r5, r3
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r2, [r4]
	adds r0, r0, r2
	strh r0, [r4]
	ldrh r0, [r1]
	adds r0, #0x28
	strh r0, [r1]
	ldr r3, [sp, #0xc]
	asrs r0, r3, #0x10
	movs r2, #0
	ldrsh r1, [r4, r2]
	adds r0, r0, r1
	mov r3, r8
	asrs r1, r3, #0x10
	ldr r2, [sp, #8]
	str r2, [sp]
	ldr r2, _0801BFE4 @ =sub_803FF84
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_8040198
	adds r1, r0, #0
	cmp r1, #0
	bge _0801BF04
	ldrh r0, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	movs r0, #0
	mov r3, sl
	strb r0, [r3]
_0801BF04:
	ldr r2, _0801BFE8 @ =gCamera
	ldrh r1, [r2]
	mov r3, r8
	asrs r0, r3, #0x10
	subs r0, r0, r1
	strh r0, [r7, #0x16]
	ldrh r1, [r2, #2]
	ldr r2, [sp, #0xc]
	asrs r0, r2, #0x10
	adds r2, r6, #0
	adds r2, #0x7c
	subs r0, r0, r1
	ldrh r3, [r2]
	adds r0, r0, r3
	strh r0, [r7, #0x18]
	ldr r0, _0801BFEC @ =gGameMode
	ldrb r0, [r0]
	adds r4, r2, #0
	cmp r0, #3
	beq _0801BF34
	ldr r1, _0801BFF0 @ =gPlayer
	mov sl, r1
	cmp r0, #5
	bne _0801BF80
_0801BF34:
	movs r2, #0
	ldr r1, _0801BFF4 @ =gMultiplayerPlayerTasks
	ldr r0, [r1]
	ldr r3, _0801BFF0 @ =gPlayer
	mov sl, r3
	cmp r0, #0
	beq _0801BF80
	adds r3, r1, #0
_0801BF44:
	ldr r0, _0801BFF8 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r2, r0
	beq _0801BF6C
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
	beq _0801BF6C
	movs r0, #1
	str r0, [sp, #8]
_0801BF6C:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bhi _0801BF80
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r0, [r0]
	cmp r0, #0
	bne _0801BF44
_0801BF80:
	mov r3, sl
	ldr r1, [r3, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0801BF96
	ldr r2, [sp, #8]
	cmp r2, #0
	bne _0801BF96
	b _0801C0B2
_0801BF96:
	movs r5, #8
	ands r1, r5
	cmp r1, #0
	beq _0801BFA4
	ldr r0, [r3, #0x28]
	cmp r0, r7
	beq _0801BFB0
_0801BFA4:
	ldr r0, [r3, #0x64]
	ldr r1, [r0, #0x3c]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0801BFFC
_0801BFB0:
	mov r3, r8
	asrs r1, r3, #0x10
	ldr r0, [sp, #0xc]
	asrs r2, r0, #0x10
	ldrh r3, [r4]
	adds r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	mov r3, sl
	bl sub_80096B0
	adds r2, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _0801C0B0
	b _0801C01E
	.align 2, 0
_0801BFD8: .4byte 0x03000080
_0801BFDC: .4byte 0x0300007C
_0801BFE0: .4byte 0x0300007E
_0801BFE4: .4byte sub_803FF84
_0801BFE8: .4byte gCamera
_0801BFEC: .4byte gGameMode
_0801BFF0: .4byte gPlayer
_0801BFF4: .4byte gMultiplayerPlayerTasks
_0801BFF8: .4byte 0x04000128
_0801BFFC:
	mov r0, r8
	asrs r1, r0, #0x10
	ldr r0, [sp, #0xc]
	asrs r2, r0, #0x10
	ldrh r0, [r4]
	adds r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_800ABEC
	adds r2, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _0801C030
_0801C01E:
	adds r1, r6, #0
	adds r1, #0x7e
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xff
	strb r0, [r1]
	b _0801C0B0
_0801C030:
	movs r0, #0x28
	ands r0, r2
	cmp r0, #0
	beq _0801C0B0
	mov r2, sl
	ldr r1, [r2, #0x10]
	adds r0, r1, #0
	ands r0, r5
	cmp r0, #0
	beq _0801C05A
	ldr r0, [r2, #0x28]
	cmp r0, r7
	bne _0801C05A
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	subs r0, #0x18
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r2, #0x10]
_0801C05A:
	movs r0, #0xa7
	bl m4aSongNumStart
	mov r3, r8
	asrs r0, r3, #0x10
	ldr r2, [sp, #0xc]
	asrs r1, r2, #0x10
	ldrh r4, [r4]
	adds r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl CreateDustCloud
	ldr r0, _0801C0A8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801C0AC @ =sub_801C130
	str r0, [r1, #8]
	adds r1, r6, #0
	adds r1, #0x80
	movs r0, #0
	strb r0, [r1]
	mov r3, sb
	ldrb r0, [r3, #4]
	adds r0, #1
	strb r0, [r3, #4]
	bl sub_80182FC
	movs r1, #5
	strb r1, [r0]
	ldrh r1, [r6, #4]
	strb r1, [r0, #1]
	ldrh r1, [r6, #6]
	strb r1, [r0, #2]
	ldrb r1, [r6, #9]
	strb r1, [r0, #3]
	mov r2, sb
	ldrb r1, [r2, #4]
	strb r1, [r0, #4]
	b _0801C11A
	.align 2, 0
_0801C0A8: .4byte gCurTask
_0801C0AC: .4byte sub_801C130
_0801C0B0:
	str r2, [r6, #0x78]
_0801C0B2:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0801C0DC
	movs r3, #0x18
	ldrsh r2, [r7, r3]
	movs r0, #0
	ldrsh r1, [r4, r0]
	adds r0, r1, #0
	adds r0, #0x80
	adds r0, r2, r0
	cmp r0, #0
	blt _0801C0DC
	adds r1, r2, r1
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0801C0F0
_0801C0DC:
	ldrb r0, [r6, #8]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _0801C0EC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0801C11A
	.align 2, 0
_0801C0EC: .4byte gCurTask
_0801C0F0:
	adds r0, r7, #0
	bl DisplaySprite
	adds r7, r6, #0
	adds r7, #0x3c
	ldr r2, _0801C12C @ =gCamera
	ldrh r1, [r2]
	mov r3, r8
	asrs r0, r3, #0x10
	subs r0, r0, r1
	strh r0, [r7, #0x16]
	ldrh r1, [r2, #2]
	ldr r2, [sp, #0xc]
	asrs r0, r2, #0x10
	subs r0, r0, r1
	ldrh r4, [r4]
	adds r0, r0, r4
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
_0801C11A:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C12C: .4byte gCamera

	thumb_func_start sub_801C130
sub_801C130: @ 0x0801C130
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0801C1AC @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	ldr r4, [r6]
	adds r0, #0x7c
	adds r3, r5, r0
	ldrh r0, [r3]
	subs r0, #1
	strh r0, [r3]
	ldr r1, _0801C1B0 @ =0x03000080
	adds r0, r5, r1
	ldrb r2, [r0]
	adds r2, #1
	strb r2, [r0]
	ldrb r0, [r6, #8]
	lsls r0, r0, #3
	ldrh r1, [r6, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrb r0, [r4, #1]
	lsls r0, r0, #3
	ldrh r1, [r6, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	ldrh r3, [r3]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #0x3b
	bhi _0801C184
	b _0801C2C6
_0801C184:
	ldr r0, _0801C1B4 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _0801C1E4
	ldr r4, _0801C1B8 @ =0x03000081
	adds r0, r5, r4
	ldrb r4, [r0]
	cmp r4, #1
	beq _0801C1BC
	cmp r4, #1
	ble _0801C19E
	cmp r4, #2
	beq _0801C1CA
_0801C19E:
	bl sub_80182FC
	adds r1, r0, #0
	movs r0, #6
	strb r0, [r1]
	movs r0, #0
	b _0801C2B4
	.align 2, 0
_0801C1AC: .4byte gCurTask
_0801C1B0: .4byte 0x03000080
_0801C1B4: .4byte gGameMode
_0801C1B8: .4byte 0x03000081
_0801C1BC:
	bl sub_80182FC
	adds r1, r0, #0
	movs r0, #6
	strb r0, [r1]
	strb r4, [r1, #1]
	b _0801C2B6
_0801C1CA:
	ldr r2, _0801C1E0 @ =gPlayer
	adds r3, r2, #0
	adds r3, #0x26
	ldrb r0, [r3]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3]
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r2, #0x24]
	b _0801C2B6
	.align 2, 0
_0801C1E0: .4byte gPlayer
_0801C1E4:
	ldr r1, _0801C1F8 @ =0x03000081
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _0801C2A8
	cmp r0, #1
	bgt _0801C1FC
	cmp r0, #0
	beq _0801C206
	b _0801C2B6
	.align 2, 0
_0801C1F8: .4byte 0x03000081
_0801C1FC:
	cmp r0, #2
	beq _0801C206
	cmp r0, #3
	beq _0801C2A8
	b _0801C2B6
_0801C206:
	ldr r4, _0801C284 @ =gUnknown_080BB308
	ldr r2, _0801C288 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _0801C28C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0801C290 @ =0x3C6EF35F
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
	ldr r1, _0801C294 @ =gRingCount
	ldrh r5, [r1]
	adds r0, r5, r0
	strh r0, [r1]
	ldr r0, _0801C298 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xd
	beq _0801C268
	ldrh r0, [r1]
	movs r1, #0x64
	bl Div
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #0x64
	bl Div
	cmp r4, r0
	beq _0801C268
	ldr r0, _0801C29C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801C268
	ldr r1, _0801C2A0 @ =gNumLives
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _0801C2A4 @ =gUnknown_03005040
	movs r0, #0x10
	strb r0, [r1, #3]
_0801C268:
	ldr r0, _0801C29C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _0801C27C
	ldr r1, _0801C294 @ =gRingCount
	ldrh r0, [r1]
	cmp r0, #0xff
	bls _0801C27C
	movs r0, #0xff
	strh r0, [r1]
_0801C27C:
	movs r0, #0x75
	bl m4aSongNumStart
	b _0801C2B6
	.align 2, 0
_0801C284: .4byte gUnknown_080BB308
_0801C288: .4byte gPseudoRandom
_0801C28C: .4byte 0x00196225
_0801C290: .4byte 0x3C6EF35F
_0801C294: .4byte gRingCount
_0801C298: .4byte gCurrentLevel
_0801C29C: .4byte gGameMode
_0801C2A0: .4byte gNumLives
_0801C2A4: .4byte gUnknown_03005040
_0801C2A8:
	bl sub_80182FC
	adds r1, r0, #0
	movs r0, #6
	strb r0, [r1]
	movs r0, #3
_0801C2B4:
	strb r0, [r1, #1]
_0801C2B6:
	ldr r0, _0801C2F0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801C2F4 @ =sub_801C3A0
	str r0, [r1, #8]
	adds r1, r6, #0
	adds r1, #0x80
	movs r0, #0
	strb r0, [r1]
_0801C2C6:
	adds r0, r6, #0
	adds r0, #0x3c
	ldr r3, _0801C2F8 @ =gCamera
	ldrh r2, [r3]
	mov r4, r8
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r2
	strh r1, [r0, #0x16]
	ldrh r2, [r3, #2]
	lsls r1, r7, #0x10
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
_0801C2F0: .4byte gCurTask
_0801C2F4: .4byte sub_801C3A0
_0801C2F8: .4byte gCamera

	thumb_func_start sub_801C2FC
sub_801C2FC: @ 0x0801C2FC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0801C388 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r7, r3
	ldr r5, [r3]
	ldr r1, _0801C38C @ =0x0300007C
	adds r4, r7, r1
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	ldr r0, _0801C390 @ =0x03000080
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
	bls _0801C35C
	mov r1, r8
	ldr r0, [r1]
	ldr r1, _0801C394 @ =sub_801C3A0
	str r1, [r0, #8]
	movs r0, #0
	strb r0, [r6]
_0801C35C:
	ldr r5, _0801C398 @ =0x0300003C
	adds r0, r7, r5
	ldr r3, _0801C39C @ =gCamera
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
_0801C388: .4byte gCurTask
_0801C38C: .4byte 0x0300007C
_0801C390: .4byte 0x03000080
_0801C394: .4byte sub_801C3A0
_0801C398: .4byte 0x0300003C
_0801C39C: .4byte gCamera

	thumb_func_start sub_801C3A0
sub_801C3A0: @ 0x0801C3A0
	push {r4, r5, lr}
	ldr r2, _0801C3CC @ =gCurTask
	ldr r0, [r2]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r4, r0
	ldr r5, [r3]
	adds r0, #0x80
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bls _0801C3D4
	ldr r1, [r2]
	ldr r0, _0801C3D0 @ =Task_Interactable115_Main1
	str r0, [r1, #8]
	b _0801C40E
	.align 2, 0
_0801C3CC: .4byte gCurTask
_0801C3D0: .4byte Task_Interactable115_Main1
_0801C3D4:
	ldrb r2, [r3, #8]
	lsls r2, r2, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r5, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	ldr r5, _0801C414 @ =0x0300007C
	adds r3, r4, r5
	adds r1, r1, r0
	ldrh r3, [r3]
	adds r1, r1, r3
	ldr r3, _0801C418 @ =0x0300003C
	adds r0, r4, r3
	ldr r4, _0801C41C @ =gCamera
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
_0801C40E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801C414: .4byte 0x0300007C
_0801C418: .4byte 0x0300003C
_0801C41C: .4byte gCamera

	thumb_func_start sub_801C420
sub_801C420: @ 0x0801C420
	push {r4, r5, r6, r7, lr}
	ldr r0, _0801C474 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	adds r0, #0x6c
	adds r5, r3, r0
	ldr r0, _0801C478 @ =gUnknown_03005010
	ldr r1, [r0]
	movs r0, #3
	ands r1, r0
	ldr r2, _0801C47C @ =0x03000081
	adds r4, r3, r2
	movs r2, #0
	strb r1, [r4]
	ldr r7, _0801C480 @ =0x0300007E
	adds r0, r3, r7
	movs r1, #0
	strh r2, [r0]
	subs r7, #2
	adds r0, r3, r7
	strh r2, [r0]
	ldr r2, _0801C484 @ =0x03000080
	adds r0, r3, r2
	strb r1, [r0]
	subs r7, #0x40
	adds r2, r3, r7
	ldr r0, _0801C488 @ =0x000002C2
	strh r0, [r2, #0xa]
	ldr r0, _0801C48C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _0801C498
	ldr r1, _0801C490 @ =gUnknown_080BB4D0
	ldrb r0, [r4]
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r4, _0801C494 @ =0x0300005C
	adds r0, r3, r4
	b _0801C4A4
	.align 2, 0
_0801C474: .4byte gCurTask
_0801C478: .4byte gUnknown_03005010
_0801C47C: .4byte 0x03000081
_0801C480: .4byte 0x0300007E
_0801C484: .4byte 0x03000080
_0801C488: .4byte 0x000002C2
_0801C48C: .4byte gGameMode
_0801C490: .4byte gUnknown_080BB4D0
_0801C494: .4byte 0x0300005C
_0801C498:
	ldr r1, _0801C4DC @ =gUnknown_080BB4D4
	ldrb r0, [r4]
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r7, _0801C4E0 @ =0x0300005C
	adds r0, r3, r7
_0801C4A4:
	strb r1, [r0]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	ldr r0, [r6, #0x1c]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r6, #0x1c]
	ldr r0, [r6, #0x4c]
	orrs r0, r1
	str r0, [r6, #0x4c]
	movs r1, #0
	strh r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #2]
	strh r1, [r5, #4]
	strh r1, [r5, #6]
	strh r1, [r5, #8]
	ldr r0, _0801C4E4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801C4E8 @ =sub_801C4EC
	str r0, [r1, #8]
	bl _call_via_r0
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C4DC: .4byte gUnknown_080BB4D4
_0801C4E0: .4byte 0x0300005C
_0801C4E4: .4byte gCurTask
_0801C4E8: .4byte sub_801C4EC

	thumb_func_start sub_801C4EC
sub_801C4EC: @ 0x0801C4EC
	push {r4, r5, r6, r7, lr}
	ldr r0, _0801C558 @ =gCurTask
	ldr r7, [r0]
	ldrh r4, [r7, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r2, [r5]
	adds r0, #0x6c
	adds r6, r4, r0
	ldrb r1, [r5, #8]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r2, #1]
	lsls r2, r2, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _0801C55C @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #6]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r6, #8]
	ldrh r0, [r6, #4]
	adds r0, #8
	strh r0, [r6, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _0801C564
	ldr r0, [r5, #0x1c]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x4c]
	ands r0, r1
	str r0, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #4]
	ldr r0, _0801C560 @ =Task_Interactable115_Main0
	str r0, [r7, #8]
	bl _call_via_r0
	b _0801C5B0
	.align 2, 0
_0801C558: .4byte gCurTask
_0801C55C: .4byte gCamera
_0801C560: .4byte Task_Interactable115_Main0
_0801C564:
	ldr r0, [r5, #0x1c]
	movs r3, #0x20
	rsbs r3, r3, #0
	ands r0, r3
	str r0, [r5, #0x1c]
	ldr r2, _0801C5B8 @ =gUnknown_0300504C
	ldrb r1, [r2]
	orrs r0, r1
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x4c]
	ands r0, r3
	str r0, [r5, #0x4c]
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r5, #0x4c]
	orrs r0, r1
	str r0, [r5, #0x4c]
	ldr r0, _0801C5BC @ =0x0300000C
	adds r5, r4, r0
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_80037D0
	ldr r0, _0801C5C0 @ =0x0300003C
	adds r4, r4, r0
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_80037D0
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r4, #0
	bl DisplaySprite
_0801C5B0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C5B8: .4byte gUnknown_0300504C
_0801C5BC: .4byte 0x0300000C
_0801C5C0: .4byte 0x0300003C

	thumb_func_start sub_801C5C4
sub_801C5C4: @ 0x0801C5C4
	push {r4, r5, r6, r7, lr}
	ldr r0, _0801C630 @ =gCurTask
	ldr r7, [r0]
	ldrh r4, [r7, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r2, [r5]
	adds r0, #0x6c
	adds r6, r4, r0
	ldrb r1, [r5, #8]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r2, #1]
	lsls r2, r2, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _0801C634 @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #6]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r6, #8]
	ldrh r0, [r6, #4]
	subs r0, #8
	strh r0, [r6, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _0801C63C
	ldr r0, [r5, #0x1c]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x4c]
	ands r0, r1
	str r0, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #4]
	ldr r0, _0801C638 @ =Task_Interactable115_Main1
	str r0, [r7, #8]
	bl _call_via_r0
	b _0801C688
	.align 2, 0
_0801C630: .4byte gCurTask
_0801C634: .4byte gCamera
_0801C638: .4byte Task_Interactable115_Main1
_0801C63C:
	ldr r0, [r5, #0x1c]
	movs r3, #0x20
	rsbs r3, r3, #0
	ands r0, r3
	str r0, [r5, #0x1c]
	ldr r2, _0801C690 @ =gUnknown_0300504C
	ldrb r1, [r2]
	orrs r0, r1
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x4c]
	ands r0, r3
	str r0, [r5, #0x4c]
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r5, #0x4c]
	orrs r0, r1
	str r0, [r5, #0x4c]
	ldr r0, _0801C694 @ =0x0300000C
	adds r5, r4, r0
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_80037D0
	ldr r0, _0801C698 @ =0x0300003C
	adds r4, r4, r0
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_80037D0
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r4, #0
	bl DisplaySprite
_0801C688:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C690: .4byte gUnknown_0300504C
_0801C694: .4byte 0x0300000C
_0801C698: .4byte 0x0300003C

	thumb_func_start sub_801C69C
sub_801C69C: @ 0x0801C69C
	push {r4, lr}
	ldr r0, _0801C6DC @ =gCurTask
	ldr r4, [r0]
	ldrh r1, [r4, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r1, r2
	ldr r0, _0801C6E0 @ =0x0300006C
	adds r1, r1, r0
	ldr r0, [r2, #0x1c]
	movs r3, #0x20
	orrs r0, r3
	str r0, [r2, #0x1c]
	ldr r0, [r2, #0x4c]
	orrs r0, r3
	str r0, [r2, #0x4c]
	movs r2, #0
	strh r2, [r1]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r2, [r1, #6]
	strh r2, [r1, #8]
	ldr r0, _0801C6E4 @ =sub_801C5C4
	str r0, [r4, #8]
	bl _call_via_r0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801C6DC: .4byte gCurTask
_0801C6E0: .4byte 0x0300006C
_0801C6E4: .4byte sub_801C5C4

	thumb_func_start TaskDestructor_Interactable115
TaskDestructor_Interactable115: @ 0x0801C6E8
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
