.include "constants/constants.inc"

.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x1c
	ldr r7, _0804C698 @ =gWater
	ldr r5, _0804C69C @ =gCamera
	ldr r0, _0804C6A0 @ =gStageTime
	ldr r1, [r0]
	movs r2, #1
	ands r1, r2
	adds r6, r0, #0
	cmp r1, #0
	beq _0804C6AC
	ldrh r0, [r7, #2]
	movs r1, #2
	ldrsh r2, [r7, r1]
	movs r3, #4
	ldrsh r1, [r7, r3]
	cmp r2, r1
	beq _0804C6AC
	cmp r2, r1
	bge _0804C6A4
	adds r0, #1
	b _0804C6AA
	.align 2, 0
_0804C698: .4byte gWater
_0804C69C: .4byte gCamera
_0804C6A0: .4byte gStageTime
_0804C6A4:
	cmp r2, r1
	ble _0804C6AC
	subs r0, #1
_0804C6AA:
	strh r0, [r7, #2]
_0804C6AC:
	ldrh r2, [r7, #2]
	movs r4, #2
	ldrsh r1, [r7, r4]
	ldrh r3, [r5, #2]
	movs r4, #2
	ldrsh r0, [r5, r4]
	cmp r1, r0
	bgt _0804C6C0
	movs r0, #0
	b _0804C6D4
_0804C6C0:
	movs r0, #2
	ldrsh r1, [r7, r0]
	movs r4, #2
	ldrsh r0, [r5, r4]
	adds r0, #0xa0
	cmp r1, r0
	bge _0804C6D2
	subs r0, r2, r3
	b _0804C6D4
_0804C6D2:
	movs r0, #0xff
_0804C6D4:
	strb r0, [r7, #1]
	ldr r3, _0804C77C @ =gVBlankCallbacks
	ldr r2, _0804C780 @ =gNumVBlankCallbacks
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	ldr r1, _0804C784 @ =sa2__sub_8011A4C
	str r1, [r0]
	ldr r2, _0804C788 @ =gFlags
	ldr r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2]
	ldrb r0, [r7]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x9e
	bhi _0804C756
	adds r4, r7, #0
	adds r4, #0x14
	ldr r0, [r6]
	adds r0, #1
	lsrs r0, r0, #2
	ldrh r5, [r5]
	adds r0, r0, r5
	movs r1, #0xf
	ands r0, r1
	rsbs r0, r0, #0
	strh r0, [r4, #0x16]
	ldrb r0, [r7, #1]
	adds r0, #1
	strh r0, [r4, #0x18]
	ldr r0, [r4, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r0, [r6]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0804C756
	ldrh r0, [r4, #0x18]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xee
	bhi _0804C756
	movs r5, #0x10
_0804C744:
	adds r0, r4, #0
	bl DisplaySprite
	ldrh r0, [r4, #0x16]
	adds r0, #0x10
	strh r0, [r4, #0x16]
	subs r5, #1
	cmp r5, #0
	bge _0804C744
_0804C756:
	ldrb r1, [r7, #1]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r3, r1, #0
	cmp r0, #0x9e
	bhi _0804C798
	ldr r1, _0804C78C @ =gIntrTable
	ldr r0, _0804C790 @ =sa2__VCountIntr_8011ACC
	str r0, [r1, #0xc]
	ldr r1, _0804C794 @ =sa2__gUnknown_03002874
	subs r0, r3, #1
	strb r0, [r1]
	ldr r2, _0804C788 @ =gFlags
	ldr r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	b _0804C7AA
	.align 2, 0
_0804C77C: .4byte gVBlankCallbacks
_0804C780: .4byte gNumVBlankCallbacks
_0804C784: .4byte sa2__sub_8011A4C
_0804C788: .4byte gFlags
_0804C78C: .4byte gIntrTable
_0804C790: .4byte sa2__VCountIntr_8011ACC
_0804C794: .4byte sa2__gUnknown_03002874
_0804C798:
	ldr r1, _0804C7C0 @ =gIntrTable
	ldr r0, _0804C7C4 @ =gIntrTableTemplate
	ldr r0, [r0, #0xc]
	str r0, [r1, #0xc]
	ldr r2, _0804C7C8 @ =gFlags
	ldr r0, [r2]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
_0804C7AA:
	str r0, [r2]
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x9f
	bls _0804C7CC
	ldr r0, [r2]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	b _0804C86C
	.align 2, 0
_0804C7C0: .4byte gIntrTable
_0804C7C4: .4byte gIntrTableTemplate
_0804C7C8: .4byte gFlags
_0804C7CC:
	ldr r0, _0804C878 @ =gStageTime
	ldr r1, [r0]
	lsls r3, r1, #2
	ldr r2, _0804C87C @ =gBgScrollRegs
	movs r6, #0xe
	ldrsh r0, [r2, r6]
	ldrb r4, [r7, #1]
	adds r0, r0, r4
	movs r4, #0x1f
	ands r0, r4
	lsls r0, r0, #6
	adds r3, r3, r0
	ldr r6, _0804C880 @ =0x000003FF
	adds r5, r6, #0
	ands r3, r5
	movs r0, #2
	str r0, [sp]
	movs r0, #0x40
	str r0, [sp, #4]
	lsls r1, r1, #1
	movs r6, #0xe
	ldrsh r0, [r2, r6]
	ldrb r6, [r7, #1]
	adds r0, r0, r6
	ands r0, r4
	lsls r0, r0, #5
	adds r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	ands r1, r5
	str r1, [sp, #8]
	movs r0, #0xa
	str r0, [sp, #0xc]
	movs r0, #0x20
	str r0, [sp, #0x10]
	movs r1, #0xc
	ldrsh r0, [r2, r1]
	str r0, [sp, #0x14]
	movs r4, #0xe
	ldrsh r0, [r2, r4]
	str r0, [sp, #0x18]
	movs r0, #3
	movs r1, #0
	movs r2, #0x20
	bl sa2__sub_8007738
	movs r5, #0x20
	ldr r2, _0804C884 @ =0x040000D4
	ldr r0, _0804C888 @ =gBgOffsetsHBlank
	ldr r4, [r0]
	ldr r0, _0804C88C @ =sa2__gUnknown_03002A80
	ldrb r3, [r0]
	lsls r0, r3, #5
	adds r1, r0, r4
	movs r6, #0x84
	lsls r6, r6, #0x18
	mov ip, r6
	mov r8, r0
_0804C842:
	str r4, [r2]
	str r1, [r2, #4]
	lsls r0, r3, #5
	asrs r0, r0, #2
	mov r6, ip
	orrs r0, r6
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	add r1, r8
	adds r5, #0x20
	cmp r5, #0x9f
	bls _0804C842
	ldrb r0, [r7, #1]
	cmp r0, #0
	beq _0804C86C
	ldr r0, _0804C890 @ =gFlags
	ldr r1, [r0]
	movs r2, #5
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0]
_0804C86C:
	add sp, #0x1c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804C878: .4byte gStageTime
_0804C87C: .4byte gBgScrollRegs
_0804C880: .4byte 0x000003FF
_0804C884: .4byte 0x040000D4
_0804C888: .4byte gBgOffsetsHBlank
_0804C88C: .4byte sa2__gUnknown_03002A80
_0804C890: .4byte gFlags

.syntax divided
