.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_IceBlock
CreateEntity_IceBlock: @ 0x08091700
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
	ldr r0, _080917D0 @ =Task_IceBlock
	ldr r1, _080917D4 @ =TaskDestructor_8009670
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
	ldr r1, _080917D8 @ =0x0300000C
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
	movs r0, #0x19
	str r2, [sp, #4]
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5, #0x1a]
	mov r0, sl
	strh r0, [r5, #8]
	ldr r0, _080917DC @ =0x0000022B
	strh r0, [r5, #0xa]
	ldr r2, [sp, #4]
	ldr r1, _080917E0 @ =0x0300002C
	adds r0, r2, r1
	strb r7, [r0]
	mov r3, sl
	strh r3, [r5, #0x14]
	strh r3, [r5, #0x1c]
	ldr r0, _080917E4 @ =0x0300002D
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r3, _080917E8 @ =0x0300002E
	adds r1, r2, r3
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _080917EC @ =0x03000031
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
_080917D0: .4byte Task_IceBlock
_080917D4: .4byte TaskDestructor_8009670
_080917D8: .4byte 0x0300000C
_080917DC: .4byte 0x0000022B
_080917E0: .4byte 0x0300002C
_080917E4: .4byte 0x0300002D
_080917E8: .4byte 0x0300002E
_080917EC: .4byte 0x03000031

	thumb_func_start Task_IceBlock
Task_IceBlock: @ 0x080917F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	movs r0, #0
	str r0, [sp, #8]
	ldr r1, _08091894 @ =gCurTask
	mov r8, r1
	ldr r0, [r1]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r0, [sp, #4]
	ldr r2, _08091898 @ =0x0300000C
	adds r7, r1, r2
	ldr r3, [r0]
	str r3, [sp]
	ldrb r2, [r0, #8]
	lsls r2, r2, #3
	ldrh r0, [r0, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldr r3, [sp, #4]
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _0809189C @ =gCamera
	ldrh r0, [r3]
	lsrs r6, r2, #0x10
	asrs r5, r2, #0x10
	subs r0, r5, r0
	strh r0, [r7, #0x16]
	ldrh r0, [r3, #2]
	lsrs r2, r1, #0x10
	asrs r4, r1, #0x10
	subs r0, r4, r0
	strh r0, [r7, #0x18]
	ldr r0, _080918A0 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _080918AC
	ldr r0, [sp]
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #3
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080918AC
	adds r0, r5, #0
	adds r1, r4, #0
	bl CreateDustCloud
	movs r0, #0x8a
	bl m4aSongNumStart
	ldr r1, _080918A4 @ =sa2__gUnknown_0300194C
	ldrh r0, [r7, #0x16]
	strh r0, [r1]
	ldr r2, _080918A8 @ =sa2__gUnknown_03002820
	ldrh r1, [r7, #0x18]
	strh r1, [r2]
	subs r0, r5, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, #0x10
	subs r1, r4, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_8091A78
	mov r1, r8
	ldr r0, [r1]
	bl TaskDestroy
	b _08091A66
	.align 2, 0
_08091894: .4byte gCurTask
_08091898: .4byte 0x0300000C
_0809189C: .4byte gCamera
_080918A0: .4byte gGameMode
_080918A4: .4byte sa2__gUnknown_0300194C
_080918A8: .4byte sa2__gUnknown_03002820
_080918AC:
	lsls r6, r6, #0x10
	mov sl, r6
	lsls r2, r2, #0x10
	mov sb, r2
	mov r2, sl
	asrs r2, r2, #0x10
	str r2, [sp, #0xc]
	mov r3, sb
	asrs r3, r3, #0x10
	str r3, [sp, #0x10]
_080918C0:
	ldr r6, _08091914 @ =gPlayer
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _080918CA
	ldr r6, _08091918 @ =gPartner
_080918CA:
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080918D6
	b _080919FC
_080918D6:
	adds r0, r6, #0
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #5
	bne _0809191C
	adds r0, r7, #0
	mov r2, sl
	asrs r1, r2, #0x10
	mov r3, sb
	asrs r2, r3, #0x10
	adds r3, r6, #0
	bl sub_80096B0
	adds r1, r0, #0
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r2, #0
	mov r8, r2
	cmp r0, #3
	beq _08091920
	movs r0, #8
	ands r0, r1
	rsbs r0, r0, #0
	lsrs r0, r0, #0x1f
	mov r8, r0
	b _08091920
	.align 2, 0
_08091914: .4byte gPlayer
_08091918: .4byte gPartner
_0809191C:
	movs r3, #0
	mov r8, r3
_08091920:
	mov r0, sl
	asrs r4, r0, #0x10
	mov r1, sb
	asrs r5, r1, #0x10
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_800C394
	cmp r0, #0
	bne _0809194E
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_8091E88
	cmp r0, #0
	bne _0809194E
	mov r2, r8
	cmp r2, #0
	beq _080919FC
_0809194E:
	movs r3, #0
	ldr r0, _080919E4 @ =gPlayer
	mov sb, r0
	ldr r1, _080919E8 @ =gUnknown_03005088
	mov r8, r1
	movs r6, #8
	movs r5, #9
	rsbs r5, r5, #0
	movs r4, #2
_08091960:
	mov r2, sb
	cmp r3, #0
	beq _08091968
	ldr r2, _080919EC @ =gPartner
_08091968:
	ldr r1, [r2, #0x10]
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	beq _0809197E
	ldr r0, [r2, #0x28]
	cmp r0, r7
	bne _0809197E
	ands r1, r5
	orrs r1, r4
	str r1, [r2, #0x10]
_0809197E:
	adds r3, #1
	mov r2, r8
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r3, r0
	blt _08091960
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	bl CreateDustCloud
	movs r0, #0x8a
	bl m4aSongNumStart
	ldr r1, _080919F0 @ =sa2__gUnknown_0300194C
	ldrh r0, [r7, #0x16]
	strh r0, [r1]
	ldr r2, _080919F4 @ =sa2__gUnknown_03002820
	ldrh r1, [r7, #0x18]
	strh r1, [r2]
	ldr r3, [sp, #0xc]
	subs r0, r3, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, #0x10
	ldr r2, [sp, #0x10]
	subs r1, r2, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_8091A78
	ldr r0, _080919F8 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _080919DC
	bl sub_80182FC
	movs r2, #0
	movs r1, #1
	strb r1, [r0]
	ldr r3, [sp, #4]
	ldrh r1, [r3, #4]
	strb r1, [r0, #1]
	ldrh r1, [r3, #6]
	strb r1, [r0, #2]
	ldrb r1, [r3, #9]
	strb r1, [r0, #3]
	strb r2, [r0, #4]
_080919DC:
	movs r0, #0xc1
	bl m4aSongNumStart
	b _08091A4E
	.align 2, 0
_080919E4: .4byte gPlayer
_080919E8: .4byte gUnknown_03005088
_080919EC: .4byte gPartner
_080919F0: .4byte sa2__gUnknown_0300194C
_080919F4: .4byte sa2__gUnknown_03002820
_080919F8: .4byte gGameMode
_080919FC:
	adds r0, r7, #0
	mov r2, sl
	asrs r1, r2, #0x10
	mov r3, sb
	asrs r2, r3, #0x10
	adds r3, r6, #0
	bl sub_80096B0
	ldr r0, [sp, #8]
	adds r0, #1
	str r0, [sp, #8]
	ldr r0, _08091A58 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, [sp, #8]
	cmp r1, r0
	bge _08091A22
	b _080918C0
_08091A22:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08091A46
	movs r2, #0x18
	ldrsh r0, [r7, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _08091A46
	movs r3, #0x18
	ldrsh r1, [r7, r3]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08091A60
_08091A46:
	ldr r1, [sp, #4]
	ldrb r0, [r1, #8]
	ldr r2, [sp]
	strb r0, [r2]
_08091A4E:
	ldr r0, _08091A5C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08091A66
	.align 2, 0
_08091A58: .4byte gUnknown_03005088
_08091A5C: .4byte gCurTask
_08091A60:
	adds r0, r7, #0
	bl DisplaySprite
_08091A66:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8091A78
sub_8091A78: @ 0x08091A78
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
	ldr r0, _08091BF0 @ =Task_IceBlockShards
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08091BF4 @ =TaskDestructor_IceBlockShards
	str r1, [sp]
	movs r1, #0xf4
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r6, r5
	ldr r1, _08091BF8 @ =0x030000C0
	adds r2, r6, r1
	adds r1, #0x30
	adds r0, r6, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	ldr r0, _08091BFC @ =0x030000F2
	adds r1, r6, r0
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r1]
	movs r0, #4
	str r2, [sp, #4]
	bl VramMalloc
	str r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r5, #0x1a]
	mov r0, r8
	strh r0, [r5, #8]
	ldr r0, _08091C00 @ =0x0000022D
	strh r0, [r5, #0xa]
	ldr r1, _08091C04 @ =0x03000020
	adds r0, r6, r1
	movs r1, #0
	strb r1, [r0]
	mov r0, r8
	strh r0, [r5, #0x14]
	strh r0, [r5, #0x1c]
	ldr r0, _08091C08 @ =0x03000021
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08091C0C @ =0x03000022
	adds r0, r6, r1
	movs r1, #0x10
	strb r1, [r0]
	ldr r1, _08091C10 @ =0x03000025
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
	ldr r4, _08091C14 @ =0x040000D4
	str r5, [r4]
	ldr r0, _08091C18 @ =0x03000030
	adds r7, r6, r0
	str r7, [r4, #4]
	ldr r1, _08091C1C @ =0x80000018
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	ldr r2, [sp, #4]
	str r2, [r4]
	ldr r0, _08091C20 @ =0x030000CC
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
	ldr r1, _08091C24 @ =0x03000060
	adds r7, r6, r1
	str r2, [r4]
	ldr r0, _08091C28 @ =0x030000D8
	adds r2, r6, r0
	str r2, [r4, #4]
	mov r1, sl
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	movs r0, #0x40
	str r2, [sp, #4]
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r7, #0x1a]
	mov r1, r8
	strh r1, [r7, #8]
	adds r0, #0x2c
	strh r0, [r7, #0xa]
	ldr r1, _08091C2C @ =0x03000080
	adds r0, r6, r1
	movs r1, #0
	strb r1, [r0]
	mov r0, r8
	strh r0, [r7, #0x14]
	strh r0, [r7, #0x1c]
	ldr r0, _08091C30 @ =0x03000081
	adds r1, r6, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08091C34 @ =0x03000082
	adds r0, r6, r1
	movs r1, #0x10
	strb r1, [r0]
	ldr r1, _08091C38 @ =0x03000085
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
	ldr r1, _08091C3C @ =0x03000090
	adds r7, r6, r1
	str r7, [r4, #4]
	ldr r0, _08091C1C @ =0x80000018
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
_08091BF0: .4byte Task_IceBlockShards
_08091BF4: .4byte TaskDestructor_IceBlockShards
_08091BF8: .4byte 0x030000C0
_08091BFC: .4byte 0x030000F2
_08091C00: .4byte 0x0000022D
_08091C04: .4byte 0x03000020
_08091C08: .4byte 0x03000021
_08091C0C: .4byte 0x03000022
_08091C10: .4byte 0x03000025
_08091C14: .4byte 0x040000D4
_08091C18: .4byte 0x03000030
_08091C1C: .4byte 0x80000018
_08091C20: .4byte 0x030000CC
_08091C24: .4byte 0x03000060
_08091C28: .4byte 0x030000D8
_08091C2C: .4byte 0x03000080
_08091C30: .4byte 0x03000081
_08091C34: .4byte 0x03000082
_08091C38: .4byte 0x03000085
_08091C3C: .4byte 0x03000090

	thumb_func_start Task_IceBlockShards
Task_IceBlockShards: @ 0x08091C40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08091C78 @ =gCurTask
	ldr r2, [r0]
	ldrh r0, [r2, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r1, r8
	adds r7, r1, r0
	ldr r3, _08091C7C @ =0x030000F0
	add r3, r8
	str r3, [sp]
	ldrh r0, [r3]
	adds r1, r0, #1
	strh r1, [r3]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x50
	bls _08091C80
	adds r0, r2, #0
	bl TaskDestroy
	b _08091E50
	.align 2, 0
_08091C78: .4byte gCurTask
_08091C7C: .4byte 0x030000F0
_08091C80:
	ldr r0, _08091E60 @ =0x030000F2
	add r0, r8
	str r0, [sp, #4]
	ldrh r0, [r0]
	adds r0, #0x28
	ldr r1, [sp, #4]
	strh r0, [r1]
	ldr r6, _08091E64 @ =0x030000C0
	add r6, r8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r2, [r6, #8]
	adds r0, r0, r2
	strh r0, [r6, #8]
	ldrh r5, [r6, #6]
	ldrh r3, [r6, #8]
	mov sb, r3
	ldr r1, _08091E68 @ =gCamera
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
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #2
	cmp r0, r1
	ble _08091CCE
	adds r4, r1, #0
_08091CCE:
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
	ldr r2, _08091E6C @ =gUnknown_0300504C
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
	bl sa2__sub_8004E14
	adds r0, r7, #0
	bl DisplaySprite
	strh r5, [r6, #6]
	mov r3, sb
	strh r3, [r6, #8]
	ldr r7, _08091E70 @ =0x03000030
	add r7, r8
	ldr r6, _08091E74 @ =0x030000CC
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
	ldr r1, _08091E68 @ =gCamera
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
	bl sa2__sub_8004E14
	adds r0, r7, #0
	bl DisplaySprite
	strh r5, [r6, #6]
	mov r3, sb
	strh r3, [r6, #8]
	ldr r7, _08091E78 @ =0x03000060
	add r7, r8
	ldr r6, _08091E7C @ =0x030000D8
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
	ldr r1, _08091E68 @ =gCamera
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
	bl sa2__sub_8004E14
	adds r0, r7, #0
	bl DisplaySprite
	strh r5, [r6, #6]
	mov r3, sb
	strh r3, [r6, #8]
	ldr r7, _08091E80 @ =0x03000090
	add r7, r8
	ldr r6, _08091E84 @ =0x030000E4
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
	ldr r1, _08091E68 @ =gCamera
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
	bl sa2__sub_8004E14
	adds r0, r7, #0
	bl DisplaySprite
	strh r5, [r6, #6]
	mov r3, sb
	strh r3, [r6, #8]
_08091E50:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08091E60: .4byte 0x030000F2
_08091E64: .4byte 0x030000C0
_08091E68: .4byte gCamera
_08091E6C: .4byte gUnknown_0300504C
_08091E70: .4byte 0x03000030
_08091E74: .4byte 0x030000CC
_08091E78: .4byte 0x03000060
_08091E7C: .4byte 0x030000D8
_08091E80: .4byte 0x03000090
_08091E84: .4byte 0x030000E4

	thumb_func_start sub_8091E88
sub_8091E88: @ 0x08091E88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	mov ip, r3
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	movs r0, #0
	mov sl, r0
	mov r0, ip
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	bne _08091F7C
	mov r0, ip
	adds r0, #0x40
	ldrb r1, [r0]
	adds r0, r1, #0
	subs r0, #0x57
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _08091ED0
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x5c
	beq _08091ED0
	cmp r0, #0x5a
	bne _08091F7C
_08091ED0:
	mov r1, ip
	ldr r3, [r1, #0x64]
	ldr r1, [r3, #0x3c]
	movs r0, #1
	rsbs r0, r0, #0
	adds r4, r3, #0
	cmp r1, r0
	beq _08091F7C
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	adds r1, #0x2c
	movs r2, #0
	ldrsb r2, [r1, r2]
	adds r3, r0, r2
	mov r1, ip
	ldr r0, [r1]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x40
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r1, r0, r5
	cmp r3, r1
	bgt _08091F18
	adds r0, r6, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r2
	adds r0, r3, r0
	cmp r0, r1
	bge _08091F2A
	cmp r3, r1
	blt _08091F7C
_08091F18:
	adds r0, r4, #0
	adds r0, #0x42
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r3
	blt _08091F7C
_08091F2A:
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	adds r1, #0x2d
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r2, r0, r5
	mov r1, ip
	ldr r0, [r1, #4]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x41
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r3, r0, r1
	cmp r2, r3
	bgt _08091F68
	adds r0, r6, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r3
	blt _08091F64
	b _08092114
_08091F64:
	cmp r2, r3
	blt _08091F7C
_08091F68:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r1
	adds r0, r3, r0
	cmp r0, r2
	blt _08091F7C
	b _08092114
_08091F7C:
	mov r0, ip
	adds r0, #0x59
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov sb, r0
	cmp r1, #1
	bne _08092052
	subs r0, #0x19
	ldrb r1, [r0]
	adds r0, r1, #0
	subs r0, #0x35
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08091FAA
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, #5
	beq _08091FAA
	cmp r0, #6
	beq _08091FAA
	cmp r0, #7
	bne _08092052
_08091FAA:
	mov r0, ip
	ldr r3, [r0, #0x64]
	ldr r1, [r3, #0x3c]
	movs r0, #1
	rsbs r0, r0, #0
	adds r4, r3, #0
	cmp r1, r0
	beq _08092052
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	adds r1, #0x2c
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r3, r0, r5
	mov r1, ip
	ldr r0, [r1]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x40
	movs r2, #0
	ldrsb r2, [r1, r2]
	adds r1, r0, r2
	cmp r3, r1
	bgt _08091FF2
	adds r0, r6, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r3, r0
	cmp r0, r1
	bge _08092004
	cmp r3, r1
	blt _08092052
_08091FF2:
	adds r0, r4, #0
	adds r0, #0x42
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r2
	adds r0, r1, r0
	cmp r0, r3
	blt _08092052
_08092004:
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	adds r1, #0x2d
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r2, r0, r5
	mov r1, ip
	ldr r0, [r1, #4]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x41
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r3, r0, r1
	cmp r2, r3
	bgt _08092040
	adds r0, r6, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r3
	bge _08092114
	cmp r2, r3
	blt _08092052
_08092040:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r1
	adds r0, r3, r0
	cmp r0, r2
	bge _08092114
_08092052:
	mov r1, sb
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0809211A
	mov r0, ip
	adds r0, #0x40
	ldrb r0, [r0]
	subs r0, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0809211A
	mov r0, ip
	ldr r3, [r0, #0x64]
	ldr r1, [r3, #0x3c]
	movs r0, #1
	rsbs r0, r0, #0
	adds r4, r3, #0
	cmp r1, r0
	beq _0809211A
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	adds r1, #0x2c
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r3, r0, r5
	mov r1, ip
	ldr r0, [r1]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x40
	movs r2, #0
	ldrsb r2, [r1, r2]
	adds r1, r0, r2
	cmp r3, r1
	bgt _080920B4
	adds r0, r6, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r3, r0
	cmp r0, r1
	bge _080920C6
	cmp r3, r1
	blt _0809211A
_080920B4:
	adds r0, r4, #0
	adds r0, #0x42
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r2
	adds r0, r1, r0
	cmp r0, r3
	blt _0809211A
_080920C6:
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	adds r1, #0x2d
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r2, r0, r5
	mov r1, ip
	ldr r0, [r1, #4]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x41
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r3, r0, r1
	cmp r2, r3
	bgt _08092102
	adds r0, r6, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r3
	bge _08092114
	cmp r2, r3
	blt _0809211A
_08092102:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r1
	adds r0, r3, r0
	cmp r0, r2
	blt _0809211A
_08092114:
	movs r3, #1
	mov sl, r3
	b _080921EE
_0809211A:
	mov r1, sb
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #2
	bne _080921EE
	mov r0, ip
	adds r0, #0x40
	ldrb r1, [r0]
	adds r0, r1, #0
	subs r0, #0x3e
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _08092146
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, #5
	beq _08092146
	cmp r0, #6
	beq _08092146
	cmp r0, #7
	bne _080921EE
_08092146:
	mov r0, ip
	ldr r3, [r0, #0x64]
	ldr r1, [r3, #0x3c]
	movs r0, #1
	rsbs r0, r0, #0
	adds r4, r3, #0
	cmp r1, r0
	beq _080921EE
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	adds r1, #0x2c
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r3, r0, r5
	mov r1, ip
	ldr r0, [r1]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x40
	movs r2, #0
	ldrsb r2, [r1, r2]
	adds r1, r0, r2
	cmp r3, r1
	bgt _0809218E
	adds r0, r6, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r3, r0
	cmp r0, r1
	bge _080921A0
	cmp r3, r1
	blt _080921EE
_0809218E:
	adds r0, r4, #0
	adds r0, #0x42
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r2
	adds r0, r1, r0
	cmp r0, r3
	blt _080921EE
_080921A0:
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	adds r1, #0x2d
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	mov r3, ip
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	movs r3, #0x41
	ldrsb r5, [r3, r4]
	adds r3, r0, r5
	cmp r2, r3
	bgt _080921D8
	adds r0, r6, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r1
	adds r0, r2, r0
	cmp r0, r3
	bge _080921EA
	cmp r2, r3
	blt _080921EE
_080921D8:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r3, r0
	cmp r0, r2
	blt _080921EE
_080921EA:
	movs r0, #1
	mov sl, r0
_080921EE:
	mov r0, sl
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start TaskDestructor_IceBlockShards
TaskDestructor_IceBlockShards: @ 0x08092200
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
