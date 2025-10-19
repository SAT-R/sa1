.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_8062CB4
Task_8062CB4: @ 0x08062CB4
	push {r4, r5, r6, r7, lr}
	ldr r0, _08062D2C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r0, _08062D30 @ =0x030002D4
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0x2f
	bls _08062D70
	movs r1, #0x30
	bl Div
	subs r0, #1
	lsls r0, r0, #0x18
	movs r7, #1
	lsrs r5, r0, #0x18
_08062CDA:
	cmp r5, #7
	bhi _08062D58
	lsls r3, r5, #1
	adds r1, r3, r5
	lsls r1, r1, #4
	adds r4, r6, r1
	movs r2, #0
	movs r0, #0xd4
	strh r0, [r4, #0x16]
	adds r0, r4, #0
	adds r0, #0x25
	strb r2, [r0]
	movs r2, #0xb5
	lsls r2, r2, #2
	adds r0, r6, r2
	ldrh r0, [r0]
	subs r0, #0x37
	subs r0, r1, r0
	strh r0, [r4, #0x18]
	cmp r5, #6
	bne _08062D08
	subs r0, #0xc
	strh r0, [r4, #0x18]
_08062D08:
	cmp r5, #7
	bne _08062D12
	ldrh r0, [r4, #0x18]
	subs r0, #0x24
	strh r0, [r4, #0x18]
_08062D12:
	ldr r1, _08062D34 @ =0x000002DA
	adds r0, r6, r1
	ldrb r1, [r0]
	adds r0, r3, #1
	cmp r1, r0
	ble _08062D38
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	b _08062D58
	.align 2, 0
_08062D2C: .4byte gCurTask
_08062D30: .4byte 0x030002D4
_08062D34: .4byte 0x000002DA
_08062D38:
	cmp r5, #7
	bne _08062D58
	ldr r0, _08062D6C @ =gSelectedCharacter
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08062D58
	cmp r1, #0xf
	bne _08062D58
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08062D58:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r7, #6
	bls _08062CDA
	b _08062E0C
	.align 2, 0
_08062D6C: .4byte gSelectedCharacter
_08062D70:
	ldrh r0, [r1]
	movs r1, #0x30
	bl Div
	lsls r0, r0, #0x18
	movs r7, #1
	lsrs r5, r0, #0x18
_08062D7E:
	cmp r5, #7
	bhi _08062DFC
	lsls r3, r5, #1
	adds r1, r3, r5
	lsls r1, r1, #4
	adds r4, r6, r1
	movs r2, #0
	movs r0, #0xd4
	strh r0, [r4, #0x16]
	adds r0, r4, #0
	adds r0, #0x25
	strb r2, [r0]
	movs r2, #0xb5
	lsls r2, r2, #2
	adds r0, r6, r2
	ldrh r0, [r0]
	subs r0, #0x37
	subs r0, r1, r0
	strh r0, [r4, #0x18]
	cmp r5, #6
	bne _08062DAC
	subs r0, #0xc
	strh r0, [r4, #0x18]
_08062DAC:
	cmp r5, #7
	bne _08062DE4
	ldrh r0, [r4, #0x18]
	subs r0, #0x24
	strh r0, [r4, #0x18]
	ldr r0, _08062DDC @ =gSelectedCharacter
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08062DFC
	ldr r1, _08062DE0 @ =0x000002DA
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0xf
	bhi _08062DFC
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	b _08062DFC
	.align 2, 0
_08062DDC: .4byte gSelectedCharacter
_08062DE0: .4byte 0x000002DA
_08062DE4:
	ldr r2, _08062E14 @ =0x000002DA
	adds r0, r6, r2
	ldrb r1, [r0]
	adds r0, r3, #1
	cmp r1, r0
	ble _08062DFC
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08062DFC:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r7, #5
	bls _08062D7E
_08062E0C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08062E14: .4byte 0x000002DA

	thumb_func_start Task_8062E18
Task_8062E18: @ 0x08062E18
	push {r4, r5, r6, r7, lr}
	ldr r0, _08062E84 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r6, r4, #0
	adds r0, #0x4c
	adds r7, r5, r0
	ldrh r3, [r7]
	cmp r3, #0x14
	beq _08062E94
	ldr r0, [r4, #0x10]
	ldr r1, _08062E88 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #0x10]
	movs r6, #0x30
	strh r6, [r4, #0x16]
	movs r0, #0x18
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, _08062E8C @ =0x03000051
	adds r1, r5, r0
	ldrb r0, [r1]
	cmp r0, #6
	bls _08062ECA
	ldr r0, _08062E90 @ =gUnknown_0868B220
	ldrb r1, [r1]
	subs r1, #1
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r7]
	ldrh r1, [r1]
	cmp r0, r1
	bhs _08062ECA
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #0x10]
	strh r6, [r4, #0x16]
	movs r0, #0x88
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl DisplaySprite
	b _08062ECA
	.align 2, 0
_08062E84: .4byte gCurTask
_08062E88: .4byte 0xFFFFF7FF
_08062E8C: .4byte 0x03000051
_08062E90: .4byte gUnknown_0868B220
_08062E94:
	ldr r0, _08062ED0 @ =0x03000051
	adds r2, r5, r0
	ldrb r0, [r2]
	cmp r0, #7
	bls _08062ECA
	ldr r1, _08062ED4 @ =gUnknown_0868B220
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r3, r0
	bhs _08062ECA
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r6, #0x10]
	movs r0, #0x30
	strh r0, [r6, #0x16]
	movs r0, #0x88
	strh r0, [r6, #0x18]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_08062ECA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08062ED0: .4byte 0x03000051
_08062ED4: .4byte gUnknown_0868B220

    thumb_func_start TaskDestructor_CourseSelect
TaskDestructor_CourseSelect: @ 0x08062ED8
    bx lr
    .align 2, 0
