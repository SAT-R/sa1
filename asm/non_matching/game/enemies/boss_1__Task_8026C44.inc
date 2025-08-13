.include "constants/constants.inc"

.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r1, _08026E6C @ =gCurTask
	ldr r0, [r1]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r2, r0
	ldr r3, _08026E70 @ =0x0300000C
	adds r3, r3, r2
	mov sl, r3
	adds r0, #0x44
	adds r0, r2, r0
	str r0, [sp, #4]
	ldr r4, [r7]
	ldr r1, _08026E74 @ =0x0300009E
	adds r6, r2, r1
	ldrh r0, [r6]
	adds r0, #0x28
	strh r0, [r6]
	ldr r3, _08026E78 @ =0x03000090
	adds r5, r2, r3
	movs r1, #0
	ldrsh r0, [r6, r1]
	ldr r3, [r5]
	adds r3, r3, r0
	str r3, [r5]
	ldrb r1, [r7, #8]
	lsls r1, r1, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, _08026E7C @ =0x0300008C
	adds r2, r2, r0
	ldr r0, [r2]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldrb r0, [r4, #1]
	lsls r0, r0, #3
	ldrh r2, [r7, #6]
	lsls r2, r2, #8
	adds r0, r0, r2
	asrs r3, r3, #8
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r8, r2
	asrs r0, r0, #0x10
	subs r0, #8
	lsrs r3, r1, #0x10
	mov sb, r3
	asrs r1, r1, #0x10
	ldr r2, _08026E80 @ =sa2__sub_801EC3C
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F100
	cmp r0, #0
	bge _08026CEE
	lsls r1, r0, #8
	ldr r0, [r5]
	adds r0, r0, r1
	str r0, [r5]
	ldrh r1, [r6]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x12
	subs r0, r0, r1
	strh r0, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _08026E84 @ =0xFFFFFF00
	cmp r0, r1
	ble _08026CEE
	movs r0, #0
	strh r0, [r6]
	ldr r0, _08026E6C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08026E88 @ =Task_8026ED0
	str r0, [r1, #8]
_08026CEE:
	mov r1, sl
	ldr r0, [r1, #0x10]
	ldr r1, _08026E8C @ =0xFFFFFE7F
	ands r0, r1
	mov r2, sl
	str r0, [r2, #0x10]
	ldr r0, _08026E90 @ =gPlayer
	ldr r3, [r0, #0x10]
	movs r0, #0x80
	ands r3, r0
	cmp r3, #0
	bne _08026D1A
	ldr r2, _08026E94 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08026E98 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08026E9C @ =gWinRegs
	strh r3, [r0, #0xa]
	ldr r0, _08026EA0 @ =gBldRegs
	strh r3, [r0]
	strh r3, [r0, #4]
_08026D1A:
	adds r1, r7, #0
	adds r1, #0x98
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r4, #7
	ands r0, r4
	mov r3, r8
	lsls r3, r3, #0x10
	str r3, [sp, #0xc]
	mov r7, sb
	lsls r7, r7, #0x10
	str r7, [sp, #8]
	cmp r0, #0
	bne _08026E12
	ldr r0, _08026EA4 @ =gPseudoRandom
	mov sb, r0
	ldr r0, [r0]
	ldr r1, _08026EA8 @ =0x00196225
	muls r0, r1, r0
	ldr r2, _08026EAC @ =0x3C6EF35F
	adds r0, r0, r2
	mov r3, sb
	str r0, [r3]
	ands r4, r0
	ldr r0, _08026EB0 @ =gUnknown_080BB434
	adds r0, r4, r0
	ldrb r0, [r0]
	bl VramMalloc
	adds r1, r0, #0
	movs r6, #0x80
	lsls r6, r6, #6
	ldr r2, _08026EB4 @ =gUnknown_080BB41C
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, _08026EB8 @ =gUnknown_080BB42C
	adds r4, r4, r0
	ldrb r3, [r4]
	ldr r0, _08026EBC @ =TaskDestructor_NutsAndBolts
	str r0, [sp]
	adds r0, r6, #0
	bl CreateNutsAndBoltsTask
	ldrh r3, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r3, r5
	asrs r0, r7, #0x10
	lsls r1, r0, #8
	str r1, [r5, #0x30]
	ldr r7, [sp, #0xc]
	asrs r1, r7, #0x10
	adds r2, r1, #0
	subs r2, #0x20
	lsls r2, r2, #8
	str r2, [r5, #0x34]
	str r6, [r5, #0x10]
	movs r2, #0x88
	lsls r2, r2, #3
	strh r2, [r5, #0x1a]
	movs r2, #0x28
	strh r2, [r5, #0x3e]
	ldr r2, _08026EC0 @ =0x03000040
	adds r3, r3, r2
	movs r2, #0x20
	strh r2, [r3]
	mov r3, sb
	ldr r2, [r3]
	ldr r7, _08026EA8 @ =0x00196225
	adds r6, r2, #0
	muls r6, r7, r6
	ldr r2, _08026EAC @ =0x3C6EF35F
	adds r6, r6, r2
	str r6, [r3]
	ldr r3, _08026EC4 @ =gSineTable
	mov r8, r3
	ldr r3, _08026EC8 @ =0x000001FF
	ands r3, r6
	lsls r2, r3, #1
	add r2, r8
	movs r7, #0
	ldrsh r4, [r2, r7]
	lsls r2, r4, #1
	adds r2, r2, r4
	lsls r2, r2, #9
	rsbs r2, r2, #0
	asrs r2, r2, #0xe
	strh r2, [r5, #0x3a]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r3, r3, r2
	lsls r3, r3, #1
	add r3, r8
	movs r7, #0
	ldrsh r3, [r3, r7]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #9
	rsbs r2, r2, #0
	asrs r2, r2, #0xe
	strh r2, [r5, #0x38]
	ldr r2, _08026EA8 @ =0x00196225
	adds r3, r6, #0
	muls r3, r2, r3
	ldr r7, _08026EAC @ =0x3C6EF35F
	adds r3, r3, r7
	mov r2, sb
	str r3, [r2]
	movs r2, #0x3f
	ands r2, r3
	adds r0, r0, r2
	subs r0, #0x20
	lsls r0, r0, #8
	movs r2, #0xfc
	lsls r2, r2, #0xe
	ands r3, r2
	asrs r3, r3, #0x10
	adds r3, #0x20
	subs r1, r1, r3
	lsls r1, r1, #8
	bl sub_8017540
_08026E12:
	ldr r2, _08026ECC @ =gCamera
	ldrh r0, [r2]
	ldr r3, [sp, #8]
	asrs r1, r3, #0x10
	subs r1, r1, r0
	mov r7, sl
	strh r1, [r7, #0x16]
	ldrh r2, [r2, #2]
	ldr r3, [sp, #0xc]
	asrs r0, r3, #0x10
	subs r0, r0, r2
	strh r0, [r7, #0x18]
	ldr r7, [sp, #4]
	strh r1, [r7, #0x16]
	mov r1, sl
	ldrh r0, [r1, #0x18]
	strh r0, [r7, #0x18]
	mov r0, sl
	bl UpdateSpriteAnimation
	ldr r0, [sp, #4]
	bl UpdateSpriteAnimation
	mov r0, sl
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #2
	bne _08026E50
	ldrh r0, [r7, #0x18]
	subs r0, #1
	strh r0, [r7, #0x18]
_08026E50:
	mov r0, sl
	bl DisplaySprite
	ldr r0, [sp, #4]
	bl DisplaySprite
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026E6C: .4byte gCurTask
_08026E70: .4byte 0x0300000C
_08026E74: .4byte 0x0300009E
_08026E78: .4byte 0x03000090
_08026E7C: .4byte 0x0300008C
_08026E80: .4byte sa2__sub_801EC3C
_08026E84: .4byte 0xFFFFFF00
_08026E88: .4byte Task_8026ED0
_08026E8C: .4byte 0xFFFFFE7F
_08026E90: .4byte gPlayer
_08026E94: .4byte gDispCnt
_08026E98: .4byte 0x00007FFF
_08026E9C: .4byte gWinRegs
_08026EA0: .4byte gBldRegs
_08026EA4: .4byte gPseudoRandom
_08026EA8: .4byte 0x00196225
_08026EAC: .4byte 0x3C6EF35F
_08026EB0: .4byte gUnknown_080BB434
_08026EB4: .4byte gUnknown_080BB41C
_08026EB8: .4byte gUnknown_080BB42C
_08026EBC: .4byte TaskDestructor_NutsAndBolts
_08026EC0: .4byte 0x03000040
_08026EC4: .4byte gSineTable
_08026EC8: .4byte 0x000001FF
_08026ECC: .4byte gCamera

.syntax divided
