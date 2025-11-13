.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

@ Used for scaling and displaying objects in Special Stages
	thumb_func_start sub_802C934
sub_802C934: @ 0x0802C934
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r2, _0802CA4C @ =gUnknown_087BF8DC
	ldr r1, _0802CA50 @ =gUnknown_08487134
	ldr r0, _0802CA54 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	mov ip, r0
	movs r4, #0
	movs r2, #0
	ldr r0, _0802CA58 @ =0x0000FFFF
	mov sb, r0
	ldr r1, _0802CA5C @ =gUnknown_03005840
	mov r8, r1
_0802C964:
	lsls r3, r2, #0xc
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	mov r5, ip
	adds r1, r0, r5
	ldr r0, [r1, #4]
	movs r5, #0xc0
	lsls r5, r5, #2
	adds r0, r0, r5
	lsls r6, r2, #1
	adds r2, #1
	mov sl, r2
	cmp r3, r0
	bls _0802C9AA
	ldrh r0, [r1, #8]
	cmp r0, sb
	beq _0802C9AA
	adds r2, r3, #0
	ldr r3, _0802CA58 @ =0x0000FFFF
_0802C98C:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	mov r7, ip
	adds r1, r0, r7
	ldr r0, [r1, #4]
	adds r0, r0, r5
	cmp r2, r0
	bls _0802C9AA
	ldrh r0, [r1, #8]
	cmp r0, r3
	bne _0802C98C
_0802C9AA:
	mov r1, r8
	adds r0, r6, r1
	strh r4, [r0]
	mov r3, sl
	lsls r0, r3, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xf
	bls _0802C964
	lsrs r4, r4, #3
	adds r4, #4
	ldr r0, _0802CA60 @ =0x0000FFFC
	ands r4, r0
	adds r0, r4, #0
	bl EwramMalloc
	adds r6, r0, #0
	movs r5, #0
	str r5, [sp, #4]
	ldr r1, _0802CA64 @ =0x040000D4
	add r7, sp, #4
	str r7, [r1]
	str r6, [r1, #4]
	lsrs r4, r4, #2
	movs r0, #0x85
	lsls r0, r0, #0x18
	orrs r4, r0
	str r4, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0802CA68 @ =Task_802CA90
	movs r2, #0x98
	lsls r2, r2, #5
	ldr r1, _0802CA6C @ =sub_802D578
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	str r6, [r0, #0x3c]
	ldr r0, _0802CA70 @ =0x0300000C
	adds r1, r2, r0
	movs r4, #0
	strh r5, [r1, #0x16]
	strh r5, [r1, #0x18]
	ldr r0, _0802CA74 @ =0x06010800
	str r0, [r1, #4]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r1, #0x1a]
	strh r5, [r1, #8]
	ldr r0, _0802CA78 @ =0x0000031B @ SA1_ANIM_RING
	strh r0, [r1, #0xa]
	ldr r3, _0802CA7C @ =0x0300002C
	adds r0, r2, r3
	strb r4, [r0]
	strh r5, [r1, #0x14]
	strh r5, [r1, #0x1c]
	ldr r5, _0802CA80 @ =0x0300002D
	adds r3, r2, r5
	movs r0, #0xff
	strb r0, [r3]
	ldr r7, _0802CA84 @ =0x0300002E
	adds r3, r2, r7
	movs r0, #0x10
	strb r0, [r3]
	ldr r0, _0802CA88 @ =0x03000031
	adds r2, r2, r0
	strb r4, [r2]
	ldr r0, _0802CA8C @ =0x00002030
	str r0, [r1, #0x10]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802CA4C: .4byte gUnknown_087BF8DC
_0802CA50: .4byte gUnknown_08487134
_0802CA54: .4byte gCurrentLevel
_0802CA58: .4byte 0x0000FFFF
_0802CA5C: .4byte gUnknown_03005840
_0802CA60: .4byte 0x0000FFFC
_0802CA64: .4byte 0x040000D4
_0802CA68: .4byte Task_802CA90
_0802CA6C: .4byte sub_802D578
_0802CA70: .4byte 0x0300000C
_0802CA74: .4byte 0x06010800
_0802CA78: .4byte 0x0000031B
_0802CA7C: .4byte 0x0300002C
_0802CA80: .4byte 0x0300002D
_0802CA84: .4byte 0x0300002E
_0802CA88: .4byte 0x03000031
_0802CA8C: .4byte 0x00002030

	thumb_func_start Task_802CA90
Task_802CA90: @ 0x0802CA90
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	ldr r0, _0802CB88 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	str r0, [sp, #0x14]
	ldr r2, _0802CB8C @ =gUnknown_087BF8DC
	ldr r1, _0802CB90 @ =gUnknown_08487134
	ldr r0, _0802CB94 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [sp, #8]
	ldr r1, _0802CB98 @ =gUnknown_03005690
	str r1, [sp, #0xc]
	ldr r2, _0802CB9C @ =gUnknown_030055F0+0xC
	str r2, [sp, #0x10]
	ldr r4, _0802CBA0 @ =0x0300000C
	adds r4, r4, r3
	mov r8, r4
	ldr r5, [sp, #0x14]
	orrs r5, r3
	str r5, [sp, #0x14]
	movs r6, #0
	str r6, [sp, #0x20]
	mov r2, sp
	adds r2, #6
	ldr r7, _0802CBA4 @ =0x00007FFF
	adds r0, r7, #0
	strh r0, [r2]
	ldr r0, _0802CBA8 @ =0x040000D4
	str r2, [r0]
	ldr r1, _0802CBAC @ =gUnknown_03005670
	str r1, [r0, #4]
	ldr r1, _0802CBB0 @ =0x81000010
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	strh r6, [r2]
	str r2, [r0]
	ldr r1, _0802CBB4 @ =gUnknown_030057E0
	str r1, [r0, #4]
	ldr r1, _0802CBB8 @ =0x81000008
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r2, [r5, #0x3c]
	str r2, [sp, #0x1c]
	mov r0, r8
	bl UpdateSpriteAnimation
	ldr r3, [r4, #0xc]
	str r3, [sp, #0x18]
	ldr r4, [sp, #0xc]
	ldr r1, [r4, #8]
	asrs r1, r1, #8
	movs r5, #0xc0
	lsls r5, r5, #2
	adds r3, r1, r5
	asrs r0, r3, #0xc
	lsls r0, r0, #0x18
	ldr r2, _0802CBBC @ =gUnknown_03005840
	lsrs r0, r0, #0x17
	adds r0, r0, r2
	ldrh r0, [r0]
	mov sb, r0
	subs r1, #0xc0
	str r1, [sp, #0x34]
	str r3, [sp, #0x38]
	lsls r0, r0, #1
	add r0, sb
	lsls r0, r0, #2
	ldr r6, [sp, #8]
	adds r0, r0, r6
	ldr r0, [r0, #4]
	cmp r0, r3
	blt _0802CB3E
	b _0802D12A
_0802CB3E:
	mov r7, sp
	adds r7, #4
	str r7, [sp, #0x3c]
_0802CB44:
	mov r1, sb
	lsls r0, r1, #1
	add r0, sb
	lsls r0, r0, #2
	ldr r2, [sp, #8]
	adds r3, r0, r2
	ldrh r1, [r3, #8]
	ldr r0, _0802CBC0 @ =0x0000FFFF
	cmp r1, r0
	bne _0802CB5A
	b _0802D12A
_0802CB5A:
	cmp r1, #0
	bne _0802CB80
	ldr r4, [r3, #4]
	ldr r5, [sp, #0x34]
	cmp r4, r5
	blt _0802CB80
	mov r6, sb
	lsrs r2, r6, #3
	ldr r7, [sp, #0x1c]
	adds r0, r7, r2
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r6
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	str r2, [sp, #0x40]
	cmp r1, #0
	beq _0802CBC4
_0802CB80:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	b _0802CE5C
	.align 2, 0
_0802CB88: .4byte gCurTask
_0802CB8C: .4byte gUnknown_087BF8DC
_0802CB90: .4byte gUnknown_08487134
_0802CB94: .4byte gCurrentLevel
_0802CB98: .4byte gUnknown_03005690
_0802CB9C: .4byte gUnknown_030055F0+0xC
_0802CBA0: .4byte 0x0300000C
_0802CBA4: .4byte 0x00007FFF
_0802CBA8: .4byte 0x040000D4
_0802CBAC: .4byte gUnknown_03005670
_0802CBB0: .4byte 0x81000010
_0802CBB4: .4byte gUnknown_030057E0
_0802CBB8: .4byte 0x81000008
_0802CBBC: .4byte gUnknown_03005840
_0802CBC0: .4byte 0x0000FFFF
_0802CBC4:
	movs r1, #0
	ldrsh r0, [r3, r1]
	lsls r0, r0, #8
	str r0, [sp, #0x24]
	movs r2, #2
	ldrsh r0, [r3, r2]
	lsls r0, r0, #8
	str r0, [sp, #0x28]
	lsls r3, r4, #8
	str r3, [sp, #0x2c]
	ldr r5, [sp, #0xc]
	ldr r0, [r5, #8]
	asrs r7, r0, #8
	subs r0, r7, r4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	str r6, [sp, #0x30]
	asrs r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r6, r0, r1
	asrs r6, r6, #3
	cmp r6, #0
	bne _0802CBF6
	movs r6, #1
_0802CBF6:
	adds r0, r6, #0
	muls r0, r6, r0
	muls r0, r6, r0
	muls r6, r0, r6
	adds r0, r6, #0
	movs r1, #0xcc
	lsls r1, r1, #1
	bl __divsi3
	adds r6, r0, #0
	adds r4, r6, #0
	cmp r6, #0
	bge _0802CC14
	ldr r2, _0802CE64 @ =0x000001FF
	adds r4, r6, r2
_0802CC14:
	asrs r4, r4, #9
	adds r4, #0x38
	ldr r3, [sp, #0x24]
	adds r0, r3, #0
	muls r0, r4, r0
	movs r5, #0xa0
	lsls r5, r5, #2
	adds r1, r5, #0
	bl __divsi3
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r1, [sp, #0x28]
	adds r0, r1, #0
	muls r0, r4, r0
	adds r1, r5, #0
	bl __divsi3
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r0, [sp, #0xc]
	adds r0, #0x29
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802CC50
	b _0802CEA0
_0802CC50:
	ldr r0, [sp, #0xc]
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #2
	bne _0802CC5C
	b _0802CEA0
_0802CC5C:
	ldr r2, [sp, #0x2c]
	asrs r1, r2, #8
	adds r0, r1, #0
	subs r0, #0x20
	cmp r7, r0
	bge _0802CC6A
	b _0802CEA0
_0802CC6A:
	cmp r7, r1
	ble _0802CC70
	b _0802CEA0
_0802CC70:
	mov r3, sl
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	adds r0, #0x2c
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r2, r1, r3
	ldr r4, [sp, #0xc]
	ldr r1, [r4]
	asrs r1, r1, #8
	ldr r0, [sp, #0x10]
	adds r0, #0x2c
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r1, r1, r4
	cmp r2, r1
	bgt _0802CCAC
	mov r0, r8
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0802CCC0
	cmp r2, r1
	bge _0802CCAC
	b _0802CEA0
_0802CCAC:
	ldr r0, [sp, #0x10]
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	bge _0802CCC0
	b _0802CEA0
_0802CCC0:
	mov r5, ip
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r1, r8
	adds r1, #0x2d
	movs r3, #0
	ldrsb r3, [r1, r3]
	adds r2, r0, r3
	ldr r7, [sp, #0xc]
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	ldr r1, [sp, #0x10]
	adds r1, #0x2d
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r1, r0, r4
	cmp r2, r1
	bgt _0802CCFC
	mov r0, r8
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0802CD10
	cmp r2, r1
	bge _0802CCFC
	b _0802CEA0
_0802CCFC:
	ldr r0, [sp, #0x10]
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	bge _0802CD10
	b _0802CEA0
_0802CD10:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0802CE68 @ =sub_802D3E4
	movs r1, #0x74
	movs r2, #0xa8
	lsls r2, r2, #5
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r2, r1
	ldr r3, _0802CE6C @ =0x03000060
	adds r4, r2, r3
	movs r6, #1
	strh r6, [r4]
	ldr r7, [sp, #0x24]
	str r7, [r5, #0x3c]
	ldr r0, [sp, #0x28]
	str r0, [r5, #0x40]
	ldr r1, [sp, #0x2c]
	str r1, [r5, #0x44]
	subs r3, #0x10
	adds r0, r2, r3
	movs r6, #0
	strh r6, [r0]
	ldr r7, _0802CE70 @ =0x03000052
	adds r0, r2, r7
	strh r6, [r0]
	ldr r1, _0802CE74 @ =0x03000054
	adds r0, r2, r1
	strh r6, [r0]
	adds r3, #6
	adds r0, r2, r3
	strh r6, [r0]
	ldr r6, _0802CE78 @ =0x03000058
	adds r0, r2, r6
	movs r7, #0
	strh r7, [r0]
	adds r1, #6
	adds r0, r2, r1
	movs r3, #0
	strh r3, [r0]
	adds r6, #4
	adds r0, r2, r6
	strh r3, [r0]
	ldr r3, _0802CE7C @ =gUnknown_0848728C
	ldrh r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrh r1, [r0]
	ldr r7, _0802CE80 @ =0x03000062
	adds r0, r2, r7
	strh r1, [r0]
	ldrh r0, [r4]
	lsls r0, r0, #2
	adds r3, #2
	adds r0, r0, r3
	ldrh r0, [r0]
	ldr r1, _0802CE84 @ =0x03000064
	adds r2, r2, r1
	strh r0, [r2]
	ldr r2, [sp, #0x30]
	lsls r0, r2, #0x10
	asrs r3, r0, #0x10
	movs r2, #0
	ldr r1, _0802CE88 @ =gUnknown_03005670
	movs r4, #0
	ldrsh r0, [r1, r4]
	mov r4, sb
	adds r4, #1
	ldr r6, _0802CE8C @ =0x00007FFF
	cmp r0, r6
	beq _0802CDCC
_0802CDA6:
	ldr r1, _0802CE88 @ =gUnknown_03005670
	lsls r0, r2, #1
	adds r0, r0, r1
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r0, r3
	beq _0802CDCE
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xf
	bhi _0802CDCE
	lsls r0, r2, #1
	adds r1, r0, r1
	movs r6, #0
	ldrsh r0, [r1, r6]
	ldr r7, _0802CE8C @ =0x00007FFF
	cmp r0, r7
	bne _0802CDA6
_0802CDCC:
	strh r3, [r1]
_0802CDCE:
	adds r0, r2, #1
	adds r3, r5, #0
	adds r3, #0x66
	strb r0, [r3]
	adds r0, r5, #0
	adds r0, #0x67
	movs r1, #1
	strb r1, [r0]
	adds r2, r5, #0
	adds r2, #0xc
    @ inline of sub_802D6FC
	ldr r1, _0802CE90 @ =gUnknown_084872C4
	subs r0, #7
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r6, _0802CE94 @ =0x06010000
	adds r0, r0, r6
	str r0, [r2, #4]
	movs r7, #0
	strh r7, [r2, #8]
	adds r0, r5, #0
	adds r0, #0x62
	ldrh r0, [r0]
	strh r0, [r2, #0xa]
	adds r0, r5, #0
	adds r0, #0x64
	ldrh r1, [r0]
	subs r0, #0x38
	strb r1, [r0]
	adds r1, r5, #0
	adds r1, #0x2d
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0
	strh r0, [r2, #0x1c]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	movs r6, #0
	strh r6, [r2, #0x1c]
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x31
	strb r7, [r0]
	ldrb r0, [r3]
	ldr r1, _0802CE98 @ =0x00002020
	orrs r0, r1
	str r0, [r2, #0x10]
	movs r0, #0xf8
	lsls r0, r0, #3
	strh r0, [r2, #0x1a]
	ldr r1, _0802CE9C @ =gSpecialStageCollectedRings
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	bl SpStage_PlayRingSoundeffect
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x40]
	adds r2, r0, r1
	movs r0, #7
	mov r3, sb
	ands r3, r0
	movs r0, #1
	lsls r0, r3
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	lsls r0, r4, #0x10
_0802CE5C:
	lsrs r0, r0, #0x10
	mov sb, r0
	b _0802D114
	.align 2, 0
_0802CE64: .4byte 0x000001FF
_0802CE68: .4byte sub_802D3E4
_0802CE6C: .4byte 0x03000060
_0802CE70: .4byte 0x03000052
_0802CE74: .4byte 0x03000054
_0802CE78: .4byte 0x03000058
_0802CE7C: .4byte gUnknown_0848728C
_0802CE80: .4byte 0x03000062
_0802CE84: .4byte 0x03000064
_0802CE88: .4byte gUnknown_03005670
_0802CE8C: .4byte 0x00007FFF
_0802CE90: .4byte gUnknown_084872C4
_0802CE94: .4byte 0x06010000
_0802CE98: .4byte 0x00002020
_0802CE9C: .4byte gSpecialStageCollectedRings
_0802CEA0:
	ldr r4, [sp, #0x30]
	lsls r0, r4, #0x10
	asrs r3, r0, #0x10
	movs r2, #0
	ldr r0, _0802CECC @ =gUnknown_03005670
	movs r5, #0
	ldrsh r1, [r0, r5]
	adds r4, r0, #0
	mov r7, sl
	lsls r5, r7, #0x10
	mov r0, ip
	lsls r0, r0, #0x10
	mov ip, r0
	movs r7, #0x23
	add r7, r8
	mov sl, r7
	ldr r0, _0802CED0 @ =0x00007FFF
	cmp r1, r0
	bne _0802CED4
	strh r3, [r4]
	b _0802CEFA
	.align 2, 0
_0802CECC: .4byte gUnknown_03005670
_0802CED0: .4byte 0x00007FFF
_0802CED4:
	lsls r0, r2, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r3
	beq _0802CEFA
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xf
	bhi _0802CEFA
	lsls r0, r2, #1
	adds r1, r0, r4
	movs r7, #0
	ldrsh r0, [r1, r7]
	ldr r7, _0802D008 @ =0x00007FFF
	cmp r0, r7
	bne _0802CED4
	strh r3, [r1]
_0802CEFA:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	asrs r0, r5, #0x10
	ldr r1, _0802D00C @ =gUnknown_03005780
	ldrh r1, [r1, #4]
	adds r0, r0, r1
	adds r0, #0x78
	ldr r2, [sp, #0x14]
	strh r0, [r2, #6]
	ldr r4, _0802D00C @ =gUnknown_03005780
	ldrh r1, [r4, #6]
	movs r0, #0x50
	subs r0, r0, r1
	mov r5, ip
	asrs r1, r5, #0x10
	subs r0, r0, r1
	strh r0, [r2, #8]
	adds r0, r6, #0
	cmp r0, #0
	bge _0802CF28
	ldr r6, _0802D010 @ =0x000003FF
	adds r0, r0, r6
_0802CF28:
	asrs r0, r0, #0xa
	adds r0, #0x40
	ldr r7, [sp, #0x14]
	strh r0, [r7, #2]
	strh r0, [r7, #4]
	ldr r2, _0802D014 @ =0x00002020
	orrs r2, r3
	mov r0, r8
	str r2, [r0, #0x10]
	movs r3, #2
	ldrsh r1, [r7, r3]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _0802CF4E
	movs r0, #0x40
	orrs r2, r0
	mov r4, r8
	str r2, [r4, #0x10]
_0802CF4E:
	ldr r5, [sp, #0x14]
	movs r6, #2
	ldrsh r2, [r5, r6]
	ldr r7, [sp, #0x18]
	movs r0, #8
	ldrsh r1, [r7, r0]
	ldrh r0, [r7, #4]
	lsrs r0, r0, #1
	subs r1, r1, r0
	muls r1, r2, r1
	lsls r0, r0, #8
	adds r1, r1, r0
	asrs r1, r1, #8
	ldrh r0, [r5, #6]
	subs r3, r0, r1
	mov r1, r8
	strh r3, [r1, #0x16]
	movs r4, #4
	ldrsh r2, [r5, r4]
	movs r5, #0xa
	ldrsh r1, [r7, r5]
	ldrh r0, [r7, #6]
	lsrs r0, r0, #1
	subs r1, r1, r0
	muls r1, r2, r1
	lsls r0, r0, #8
	adds r1, r1, r0
	asrs r1, r1, #8
	ldr r6, [sp, #0x14]
	ldrh r0, [r6, #8]
	subs r2, r0, r1
	mov r7, r8
	strh r2, [r7, #0x18]
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _0802CF9E
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _0802D020
_0802CF9E:
	movs r3, #1
	rsbs r3, r3, #0
	adds r2, r3, #0
	movs r0, #0xff
	mov r4, sl
	strb r0, [r4]
	mov r5, r8
	ldr r0, [r5, #0x10]
	movs r1, #0x1f
	ands r0, r1
	ldr r6, [sp, #0x3c]
	strh r0, [r6]
	ldrh r0, [r6]
	ldr r7, _0802D018 @ =gUnknown_030057E0
	adds r0, r0, r7
	movs r6, #0
	ldrsb r6, [r0, r6]
	cmp r6, #0
	bne _0802CFFE
	ldr r0, [sp, #0x3c]
	ldrh r1, [r0]
	adds r1, r1, r7
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
	ldr r1, [sp, #0x3c]
	ldrh r0, [r1]
	lsls r0, r0, #5
	ldr r1, _0802D01C @ =gOamBuffer+0x6
	adds r5, r0, r1
	movs r4, #0x80
	lsls r4, r4, #9
	ldr r2, [sp, #0x14]
	movs r3, #2
	ldrsh r1, [r2, r3]
	adds r0, r4, #0
	bl Div
	strh r0, [r5]
	strh r6, [r5, #8]
	strh r6, [r5, #0x10]
	ldr r6, [sp, #0x14]
	movs r7, #4
	ldrsh r1, [r6, r7]
	adds r0, r4, #0
	bl Div
	strh r0, [r5, #0x18]
_0802CFFE:
	mov r0, r8
	bl DisplaySprite
	b _0802D100
	.align 2, 0
_0802D008: .4byte 0x00007FFF
_0802D00C: .4byte gUnknown_03005780
_0802D010: .4byte 0x000003FF
_0802D014: .4byte 0x00002020
_0802D018: .4byte gUnknown_030057E0
_0802D01C: .4byte gOamBuffer+0x6
_0802D020:
	mov r0, r8
	ldr r1, [r0, #0x10]
	adds r0, r1, #0
	movs r4, #0x40
	ands r0, r4
	cmp r0, #0
	beq _0802D042
	ldr r5, [sp, #0x18]
	ldrh r0, [r5, #4]
	lsrs r0, r0, #1
	subs r0, r3, r0
	mov r6, r8
	strh r0, [r6, #0x16]
	ldrh r0, [r5, #6]
	lsrs r0, r0, #1
	subs r0, r2, r0
	strh r0, [r6, #0x18]
_0802D042:
	movs r7, #0x1f
	ands r1, r7
	ldr r0, [sp, #0x3c]
	strh r1, [r0]
	ldrh r0, [r0]
	ldr r1, _0802D13C @ =gUnknown_030057E0
	adds r0, r0, r1
	movs r6, #0
	ldrsb r6, [r0, r6]
	cmp r6, #0
	bne _0802D08E
	ldr r2, [sp, #0x3c]
	ldrh r0, [r2]
	adds r0, r0, r1
	movs r1, #0xff
	strb r1, [r0]
	ldrh r0, [r2]
	lsls r0, r0, #5
	ldr r1, _0802D140 @ =gOamBuffer+0x6
	adds r5, r0, r1
	movs r4, #0x80
	lsls r4, r4, #9
	ldr r3, [sp, #0x14]
	movs r0, #2
	ldrsh r1, [r3, r0]
	adds r0, r4, #0
	bl Div
	strh r0, [r5]
	strh r6, [r5, #8]
	strh r6, [r5, #0x10]
	ldr r2, [sp, #0x14]
	movs r3, #4
	ldrsh r1, [r2, r3]
	adds r0, r4, #0
	bl Div
	strh r0, [r5, #0x18]
_0802D08E:
	mov r4, sl
	ldrb r0, [r4]
	lsls r0, r0, #3
	ldr r1, _0802D144 @ =gOamBuffer2
	adds r5, r0, r1
	mov r6, r8
	ldrh r0, [r6, #0x1a]
	movs r2, #0xf8
	lsls r2, r2, #3
	adds r1, r2, #0
	ands r0, r1
	lsrs r0, r0, #6
	bl OamMalloc
	adds r4, r0, #0
	ldr r0, _0802D148 @ =iwram_end
	ldr r0, [r0]
	cmp r0, r4
	beq _0802D12A
	ldr r1, _0802D14C @ =0x040000D4
	str r5, [r1]
	str r4, [r1, #4]
	ldr r0, _0802D150 @ =0x80000003
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r4]
	movs r3, #0xfd
	lsls r3, r3, #8
	adds r0, r3, #0
	ands r2, r0
	strh r2, [r4]
	ldrh r3, [r4, #2]
	movs r5, #0xc0
	lsls r5, r5, #8
	adds r0, r5, #0
	ands r3, r0
	strh r3, [r4, #2]
	ldrb r1, [r6, #0x18]
	ldr r0, [r6, #0x10]
	movs r6, #0x40
	ands r0, r6
	lsls r0, r0, #3
	orrs r1, r0
	orrs r1, r2
	strh r1, [r4]
	mov r0, r8
	ldrh r1, [r0, #0x16]
	ldr r2, _0802D154 @ =0x000001FF
	adds r0, r2, #0
	ands r1, r0
	mov r5, r8
	ldr r0, [r5, #0x10]
	ands r0, r7
	lsls r0, r0, #9
	orrs r1, r0
	orrs r1, r3
	strh r1, [r4, #2]
_0802D100:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r0, [sp, #0x20]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x20]
_0802D114:
	mov r6, sb
	lsls r0, r6, #1
	add r0, sb
	lsls r0, r0, #2
	ldr r7, [sp, #8]
	adds r0, r0, r7
	ldr r0, [r0, #4]
	ldr r1, [sp, #0x38]
	cmp r0, r1
	bge _0802D12A
	b _0802CB44
_0802D12A:
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802D13C: .4byte gUnknown_030057E0
_0802D140: .4byte gOamBuffer+0x6
_0802D144: .4byte gOamBuffer2
_0802D148: .4byte iwram_end
_0802D14C: .4byte 0x040000D4
_0802D150: .4byte 0x80000003
_0802D154: .4byte 0x000001FF

	thumb_func_start sub_802D158
sub_802D158: @ 0x0802D158
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _0802D188 @ =Task_SpStageInitializeSomethingAndStartMusic
	movs r5, #0x80
	lsls r5, r5, #5
	movs r4, #0
	str r4, [sp]
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0
	bl TaskCreate
	ldr r0, _0802D18C @ =sub_802D680
	str r4, [sp]
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0
	bl TaskCreate
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802D188: .4byte Task_SpStageInitializeSomethingAndStartMusic
_0802D18C: .4byte sub_802D680

	thumb_func_start sub_802D190
sub_802D190: @ 0x0802D190
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _0802D1D0 @ =gSelectedCharacter
	movs r4, #0
	ldrsb r4, [r0, r4]
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	bl sub_8029E0C
	adds r0, r4, #0
	bl sub_8029EA8
	ldr r0, _0802D1D4 @ =Task_802A560
	movs r2, #0x88
	lsls r2, r2, #5
	movs r1, #0
	str r1, [sp]
	movs r1, #1
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	strb r5, [r0]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802D1D0: .4byte gSelectedCharacter
_0802D1D4: .4byte Task_802A560

	thumb_func_start sub_802D1D8
sub_802D1D8: @ 0x0802D1D8
	push {r4, lr}
	sub sp, #4
	ldr r0, _0802D208 @ =sub_802B3E4
	movs r2, #0xa0
	lsls r2, r2, #5
	movs r4, #0
	str r4, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r1, #0
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strb r1, [r0, #6]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802D208: .4byte sub_802B3E4

	thumb_func_start Task_SpStageInitializeSomethingAndStartMusic
Task_SpStageInitializeSomethingAndStartMusic: @ 0x0802D20C
	push {lr}
	ldr r1, _0802D22C @ =gUnknown_030055E0
	movs r2, #0
	strb r2, [r1]
	movs r0, #0xf0
	strh r0, [r1, #2]
	strh r2, [r1, #4]
	ldr r0, _0802D230 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802D234 @ =Task_802D238
	str r0, [r1, #8]
	movs r0, #0x2a @ MUS_SPECIAL_STAGE
	bl m4aSongNumStart
	pop {r0}
	bx r0
	.align 2, 0
_0802D22C: .4byte gUnknown_030055E0
_0802D230: .4byte gCurTask
_0802D234: .4byte Task_802D238

	thumb_func_start Task_802D238
Task_802D238: @ 0x0802D238
	push {lr}
	ldr r2, _0802D264 @ =gUnknown_03005690
	ldr r1, _0802D268 @ =gUnknown_030055E0
	ldrh r0, [r1, #2]
	subs r0, #1
	strh r0, [r1, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _0802D260
	ldr r0, _0802D26C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802D270 @ =Task_80299B0
	str r0, [r1, #8]
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	bl sub_802D560
_0802D260:
	pop {r0}
	bx r0
	.align 2, 0
_0802D264: .4byte gUnknown_03005690
_0802D268: .4byte gUnknown_030055E0
_0802D26C: .4byte gCurTask
_0802D270: .4byte Task_80299B0

	thumb_func_start sub_802D274
sub_802D274: @ 0x0802D274
	ldr r1, _0802D298 @ =gUnknown_030055E0
	ldrh r0, [r1, #2]
	subs r0, #1
	strh r0, [r1, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _0802D294
	ldr r2, _0802D29C @ =gStageFlags
	ldrh r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0802D2A0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802D2A4 @ =Task_8029AC4
	str r0, [r1, #8]
_0802D294:
	bx lr
	.align 2, 0
_0802D298: .4byte gUnknown_030055E0
_0802D29C: .4byte gStageFlags
_0802D2A0: .4byte gCurTask
_0802D2A4: .4byte Task_8029AC4

	thumb_func_start sub_802D2A8
sub_802D2A8: @ 0x0802D2A8
	ldr r0, _0802D2B8 @ =gDispCnt
	ldrh r1, [r0]
	movs r3, #0xf0
	lsls r3, r3, #5
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0]
	bx lr
	.align 2, 0
_0802D2B8: .4byte gDispCnt

	thumb_func_start Task_802D2BC
Task_802D2BC: @ 0x0802D2BC
	push {lr}
	ldr r3, _0802D2E0 @ =gUnknown_03005780
	ldr r1, _0802D2E4 @ =gBldRegs
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	strb r2, [r3, #0x12]
	movs r0, #8
	strb r0, [r3, #0x13]
	bl sub_8029CDC
	ldr r0, _0802D2E8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802D2EC @ =sub_8029CDC
	str r0, [r1, #8]
	pop {r0}
	bx r0
	.align 2, 0
_0802D2E0: .4byte gUnknown_03005780
_0802D2E4: .4byte gBldRegs
_0802D2E8: .4byte gCurTask
_0802D2EC: .4byte sub_8029CDC

    .align 2 , 0
    thumb_func_start nullsub_802D2F0
nullsub_802D2F0:
    bx lr
	.align 2 , 0

	thumb_func_start sub_802D2F4
sub_802D2F4: @ 0x0802D2F4
	adds r3, r0, #0
	ldr r2, [r3]
	ldr r0, _0802D304 @ =0xFFFFD800
	cmp r2, r0
	bge _0802D308
	movs r1, #1
	b _0802D314
	.align 2, 0
_0802D304: .4byte 0xFFFFD800
_0802D308:
	movs r0, #0xa0
	lsls r0, r0, #6
	movs r1, #3
	cmp r2, r0
	bgt _0802D314
	movs r1, #2
_0802D314:
	ldr r2, [r3, #4]
	ldr r0, _0802D328 @ =0x00001DFF
	cmp r2, r0
	bgt _0802D336
	ldr r0, _0802D32C @ =0xFFFFE200
	cmp r2, r0
	ble _0802D330
	adds r0, r1, #3
	b _0802D332
	.align 2, 0
_0802D328: .4byte 0x00001DFF
_0802D32C: .4byte 0xFFFFE200
_0802D330:
	adds r0, r1, #6
_0802D332:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_0802D336:
	adds r0, r1, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_802D33C
sub_802D33C: @ 0x0802D33C
	push {r4, lr}
	ldr r1, _0802D36C @ =gUnknown_03005690
	ldr r4, _0802D370 @ =gUnknown_030055E0
	ldr r0, _0802D374 @ =gCurTask
	ldr r3, [r0]
	ldrh r2, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r1, [r1, #8]
	ldr r0, [r0, #0x44]
	cmp r1, r0
	blt _0802D364
	ldr r1, _0802D378 @ =0x03000060
	adds r0, r2, r1
	ldrh r0, [r0]
	strb r0, [r4]
	adds r0, r3, #0
	bl TaskDestroy
_0802D364:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802D36C: .4byte gUnknown_03005690
_0802D370: .4byte gUnknown_030055E0
_0802D374: .4byte gCurTask
_0802D378: .4byte 0x03000060

@ 0x74
	thumb_func_start Task_802D37C
Task_802D37C: @ 0x0802D37C
	push {r4, r5, r6, lr}
	ldr r0, _0802D3B4 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r6, #0xc0
	lsls r6, r6, #0x12
	ldr r0, _0802D3B8 @ =0x0300000C
	adds r5, r4, r0
	orrs r6, r4
	bl sub_802D464
	bl sub_802BBF0
	bl sub_802BC6C
	cmp r0, #0
	beq _0802D3DE
	ldr r3, _0802D3BC @ =0x03000070
	adds r1, r4, r3
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0802D3C0
	subs r0, r2, #1
	strh r0, [r1]
	b _0802D3C4
	.align 2, 0
_0802D3B4: .4byte gCurTask
_0802D3B8: .4byte 0x0300000C
_0802D3BC: .4byte 0x03000070
_0802D3C0:
	bl sub_802B884
_0802D3C4:
	adds r0, r5, #0
	bl sub_802B5DC
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_802BE0C
	adds r0, r5, #0
	bl DisplaySprite
_0802D3DE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_802D3E4
sub_802D3E4: @ 0x0802D3E4
	push {r4, r5, r6, lr}
	ldr r5, _0802D418 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r4, r1, r0
	bl sub_802BBF0
	bl sub_802BC6C
	cmp r0, #0
	beq _0802D444
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0802D420
	ldr r1, [r5]
	ldr r0, _0802D41C @ =sub_802D450
	str r0, [r1, #8]
	b _0802D444
	.align 2, 0
_0802D418: .4byte gCurTask
_0802D41C: .4byte sub_802D450
_0802D420:
	adds r0, r4, #0
	bl sub_802B5DC
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _0802D436
	ldr r1, [r5]
	ldr r0, _0802D44C @ =sub_802D450
	str r0, [r1, #8]
_0802D436:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_802BE0C
	adds r0, r4, #0
	bl DisplaySprite
_0802D444:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802D44C: .4byte sub_802D450

	thumb_func_start sub_802D450
sub_802D450: @ 0x0802D450
	push {lr}
	ldr r0, _0802D460 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_0802D460: .4byte gCurTask

@ 0x74
	thumb_func_start sub_802D464
sub_802D464: @ 0x0802D464
	push {r4, r5, lr}
	ldr r0, _0802D4A4 @ =gCurTask
	ldr r2, [r0]
	ldrh r4, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	ldrh r0, [r2]
	adds r0, r0, r1
	ldrh r1, [r0, #6]
	ldr r0, _0802D4A8 @ =0x03000060
	adds r3, r4, r0
	ldrh r0, [r3]
	cmp r0, #3
	bne _0802D4BE
	ldr r5, _0802D4AC @ =0x0300006D
	adds r0, r1, r5
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802D4BC
	ldr r0, _0802D4B0 @ =gUnknown_03005690
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #4
	bne _0802D4BE
	ldr r0, _0802D4B4 @ =sub_802C0CC
	str r0, [r2, #8]
	ldr r0, _0802D4B8 @ =0x03000052
	adds r1, r4, r0
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r1]
	b _0802D4BE
	.align 2, 0
_0802D4A4: .4byte gCurTask
_0802D4A8: .4byte 0x03000060
_0802D4AC: .4byte 0x0300006D
_0802D4B0: .4byte gUnknown_03005690
_0802D4B4: .4byte sub_802C0CC
_0802D4B8: .4byte 0x03000052
_0802D4BC:
	strh r0, [r3]
_0802D4BE:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_802D4C4
sub_802D4C4: @ 0x0802D4C4
	push {r4, r5, r6, lr}
	ldr r6, _0802D4F8 @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	ldr r0, _0802D4FC @ =0x0300000C
	adds r5, r4, r0
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0802D500 @ =0x0300006D
	adds r4, r4, r0
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802D4F2
	ldr r1, [r6]
	ldr r0, _0802D504 @ =sub_802D66C
	str r0, [r1, #8]
_0802D4F2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802D4F8: .4byte gCurTask
_0802D4FC: .4byte 0x0300000C
_0802D500: .4byte 0x0300006D
_0802D504: .4byte sub_802D66C

	thumb_func_start Task_802D508
Task_802D508: @ 0x0802D508
	push {r4, r5, lr}
	ldr r0, _0802D55C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r0, r1
	adds r1, #0xc
	adds r4, r0, r1
	adds r1, #0x62
	adds r2, r0, r1
	ldrh r3, [r2]
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #0xa0
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0802D556
	subs r0, r3, #1
	strh r0, [r2]
	bl sub_802BBF0
	bl sub_802BC6C
	cmp r0, #0
	beq _0802D556
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r4, #0x1a]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_802BE0C
	adds r0, r4, #0
	bl DisplaySprite
_0802D556:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802D55C: .4byte gCurTask

	thumb_func_start sub_802D560
sub_802D560: @ 0x0802D560
	movs r2, #0
	ldr r0, _0802D574 @ =gUnknown_030056F0
	movs r1, #0xf
_0802D566:
	strh r2, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	subs r1, #1
	cmp r1, #0
	bge _0802D566
	bx lr
	.align 2, 0
_0802D574: .4byte gUnknown_030056F0

	thumb_func_start sub_802D578
sub_802D578: @ 0x0802D578
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x3c]
	bl EwramFree
	pop {r0}
	bx r0

	thumb_func_start sub_802D58C
sub_802D58C: @ 0x0802D58C
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r3, #0
	ldr r0, _0802D5A8 @ =gUnknown_03005670
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r1, _0802D5AC @ =0x00007FFF
	adds r5, r0, #0
	cmp r2, r1
	bne _0802D5B0
	strh r4, [r5]
	b _0802D5DA
	.align 2, 0
_0802D5A8: .4byte gUnknown_03005670
_0802D5AC: .4byte 0x00007FFF
_0802D5B0:
	lsls r0, r3, #1
	adds r0, r0, r5
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	beq _0802D5DA
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xf
	bhi _0802D5DA
	lsls r0, r3, #1
	adds r2, r0, r5
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, _0802D5E8 @ =0x00007FFF
	cmp r1, r0
	bne _0802D5B0
	strh r4, [r2]
_0802D5DA:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r0, r3, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0802D5E8: .4byte 0x00007FFF

	thumb_func_start SpStage_PlayRingSoundeffect
SpStage_PlayRingSoundeffect: @ 0x0802D5EC
	push {r4, r5, lr}
	ldr r0, _0802D624 @ =gSpecialStageCollectedRings
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802D634
	ldr r4, _0802D628 @ =gMPlayInfo_SE2
	ldr r1, _0802D62C @ =se_ring_copy
	adds r0, r4, #0
	bl MPlayStart
	adds r0, r4, #0
	bl m4aMPlayImmInit
	ldr r5, _0802D630 @ =0x0000FFFF
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl m4aMPlayVolumeControl
	movs r2, #0x40
	rsbs r2, r2, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl m4aMPlayPanpotControl
	b _0802D65A
	.align 2, 0
_0802D624: .4byte gSpecialStageCollectedRings
_0802D628: .4byte gMPlayInfo_SE2
_0802D62C: .4byte se_ring_copy
_0802D630: .4byte 0x0000FFFF
_0802D634:
	ldr r4, _0802D660 @ =gMPlayInfo_SE1
	ldr r1, _0802D664 @ =se_ring_copy
	adds r0, r4, #0
	bl MPlayStart
	adds r0, r4, #0
	bl m4aMPlayImmInit
	ldr r5, _0802D668 @ =0x0000FFFF
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl m4aMPlayVolumeControl
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x40
	bl m4aMPlayPanpotControl
_0802D65A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802D660: .4byte gMPlayInfo_SE1
_0802D664: .4byte se_ring_copy
_0802D668: .4byte 0x0000FFFF

	thumb_func_start sub_802D66C
sub_802D66C: @ 0x0802D66C
	push {lr}
	ldr r0, _0802D67C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_0802D67C: .4byte gCurTask

	thumb_func_start sub_802D680
sub_802D680: @ 0x0802D680
	push {lr}
	ldr r0, _0802D6AC @ =gStageFlags
	ldrh r2, [r0]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	bne _0802D6A6
	ldr r0, _0802D6B0 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0802D6A6
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	bne _0802D6A6
	bl CreatePauseMenu
_0802D6A6:
	pop {r0}
	bx r0
	.align 2, 0
_0802D6AC: .4byte gStageFlags
_0802D6B0: .4byte gPressedKeys

@ inline?
	thumb_func_start sub_802D6B4
sub_802D6B4: @ 0x0802D6B4
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x42
	ldr r0, _0802D6DC @ =gPlayerControls
	ldrh r1, [r1]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _0802D6E0
	adds r0, r2, #0
	adds r0, #0x29
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0802D6E0
	movs r0, #0x80
	lsls r0, r0, #1
	b _0802D6F6
	.align 2, 0
_0802D6DC: .4byte gPlayerControls
_0802D6E0:
	adds r0, r2, #0
	adds r0, #0x29
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0802D6F6
	movs r0, #0xff
	lsls r0, r0, #8
_0802D6F6:
	strh r0, [r2, #0x20]
	bx lr
	.align 2, 0

@ inline?
	thumb_func_start sub_802D6FC
sub_802D6FC: @ 0x0802D6FC
	mov ip, r0
	adds r3, r1, #0
	ldr r1, _0802D740 @ =gUnknown_084872C4
	adds r0, #0x60
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0802D744 @ =0x06010000
	adds r0, r0, r1
	str r0, [r3, #4]
	movs r2, #0
	strh r2, [r3, #8]
	mov r0, ip
	adds r0, #0x62
	ldrh r0, [r0]
	strh r0, [r3, #0xa]
	mov r0, ip
	adds r0, #0x64
	ldrh r1, [r0]
	adds r0, r3, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r1, r3, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	strh r2, [r3, #0x1c]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	bx lr
	.align 2, 0
_0802D740: .4byte gUnknown_084872C4
_0802D744: .4byte 0x06010000
