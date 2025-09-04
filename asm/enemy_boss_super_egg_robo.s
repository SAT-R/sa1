.include "asm/macros.inc"
.include "constants/constants.inc"

.section .rodata
    .global gUnknown_084AE560
gUnknown_084AE560:
    .byte 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0

.text
.syntax unified
.arm

	thumb_func_start Task_SuperEggRobotInit
Task_SuperEggRobotInit: @ 0x0804FE54
	push {r4, r5, r6, r7, lr}
	ldr r0, _0804FE8C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r1, [r4, #0x58]
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0804FE9C
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _0804FE90
	adds r0, r4, #0
	bl sub_8052424
	adds r0, r4, #0
	bl sub_8052468
	adds r0, r4, #0
	bl sub_80523F8
	b _0804FE9C
	.align 2, 0
_0804FE8C: .4byte gCurTask
_0804FE90:
	adds r0, r4, #0
	bl sub_80523D4
	adds r0, r4, #0
	bl sub_8052424
_0804FE9C:
	adds r0, r4, #0
	adds r0, #0x6e
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r7, r0, #0
	cmp r1, #0xe
	bls _0804FEAC
	b _08050054
_0804FEAC:
	lsls r0, r1, #2
	ldr r1, _0804FEB8 @ =_0804FEBC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804FEB8: .4byte _0804FEBC
_0804FEBC: @ jump table
	.4byte _0804FF80 @ case 0
	.4byte _0804FFC0 @ case 1
	.4byte _0804FEF8 @ case 2
	.4byte _0804FF06 @ case 3
	.4byte _0804FF40 @ case 4
	.4byte _0804FF40 @ case 5
	.4byte _0804FF40 @ case 6
	.4byte _0804FF40 @ case 7
	.4byte _0804FF40 @ case 8
	.4byte _0804FF1C @ case 9
	.4byte _0804FF40 @ case 10
	.4byte _0804FF40 @ case 11
	.4byte _0804FF54 @ case 12
	.4byte _08050004 @ case 13
	.4byte _08050014 @ case 14
_0804FEF8:
	ldr r0, [r4, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0804FF04
	b _08050060
_0804FF04:
	b _0804FF48
_0804FF06:
	adds r0, r4, #0
	adds r0, #0x54
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x3b
	bgt _0804FF1A
	b _08050060
_0804FF1A:
	b _0804FF48
_0804FF1C:
	adds r2, r4, #0
	adds r2, #0x54
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	ldr r1, _0804FF3C @ =0x012B0000
	cmp r0, r1
	bgt _0804FF30
	b _08050060
_0804FF30:
	adds r1, r4, #0
	adds r1, #0x56
	movs r0, #0
	strh r0, [r1]
	adds r1, #0x19
	b _0804FF4C
	.align 2, 0
_0804FF3C: .4byte 0x012B0000
_0804FF40:
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	bne _0804FF48
	b _08050060
_0804FF48:
	adds r1, r4, #0
	adds r1, #0x6f
_0804FF4C:
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08050060
_0804FF54:
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	bne _0804FF5C
	b _08050060
_0804FF5C:
	adds r1, r4, #0
	adds r1, #0x56
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	bgt _0804FF76
	adds r1, #0x19
	movs r0, #0xb
	strb r0, [r1]
	b _08050060
_0804FF76:
	adds r1, r4, #0
	adds r1, #0x6f
	movs r0, #3
	strb r0, [r1]
	b _08050060
_0804FF80:
	ldr r1, [r4, #0x44]
	ldr r0, _0804FFA0 @ =0x00019FFF
	cmp r1, r0
	bgt _0804FFA8
	ldr r0, _0804FFA4 @ =0xFFFF8000
	str r0, [r4, #0x48]
	adds r1, r4, #0
	adds r1, #0x4e
	movs r0, #0
	strh r0, [r1]
	subs r1, #2
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1]
	b _08050060
	.align 2, 0
_0804FFA0: .4byte 0x00019FFF
_0804FFA4: .4byte 0xFFFF8000
_0804FFA8:
	adds r0, r4, #0
	adds r0, #0x50
	ldr r1, _0804FFBC @ =0x0000FFF0
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x6f
	movs r0, #1
	strb r0, [r1]
	b _08050060
	.align 2, 0
_0804FFBC: .4byte 0x0000FFF0
_0804FFC0:
	ldr r1, [r4, #0x44]
	ldr r0, _0804FFE4 @ =0x00019FFF
	cmp r1, r0
	bgt _0804FFE8
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	subs r0, #4
	strh r1, [r0]
	movs r0, #0xd0
	lsls r0, r0, #9
	str r0, [r4, #0x44]
	adds r1, r4, #0
	adds r1, #0x6f
	movs r0, #2
	strb r0, [r1]
	b _08050060
	.align 2, 0
_0804FFE4: .4byte 0x00019FFF
_0804FFE8:
	adds r3, r4, #0
	adds r3, #0x4c
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r2, r0, #0
	ldr r1, _08050000 @ =0xFFFFFE00
	cmp r0, r1
	bge _0804FFFA
	adds r2, r1, #0
_0804FFFA:
	strh r2, [r3]
	b _08050060
	.align 2, 0
_08050000: .4byte 0xFFFFFE00
_08050004:
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	beq _08050060
	adds r1, r4, #0
	adds r1, #0x6f
	movs r0, #0xe
	strb r0, [r1]
	b _08050060
_08050014:
	ldr r3, [r4, #0x58]
	movs r0, #2
	ands r3, r0
	cmp r3, #0
	bne _08050060
	adds r5, r4, #0
	adds r5, #0x50
	ldr r0, _08050048 @ =0x0000FFF0
	strh r0, [r5]
	adds r2, r4, #0
	adds r2, #0x4c
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, _0805004C @ =0xFFFFFA00
	cmp r1, r0
	bge _0805003C
	movs r0, #0xfa
	lsls r0, r0, #8
	strh r0, [r2]
	strh r3, [r5]
_0805003C:
	ldr r1, [r4, #0x44]
	ldr r0, _08050050 @ =0xFFFF8800
	cmp r1, r0
	bgt _08050060
	strh r3, [r2]
	b _08050060
	.align 2, 0
_08050048: .4byte 0x0000FFF0
_0805004C: .4byte 0xFFFFFA00
_08050050: .4byte 0xFFFF8800
_08050054:
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #0
	strh r1, [r0]
	adds r0, #4
	strh r1, [r0]
_08050060:
	ldr r0, [r4, #0x58]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08050116
	adds r1, r4, #0
	adds r1, #0x54
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r3, r0, #0
	subs r3, #0x78
	adds r5, r1, #0
	cmp r3, #0
	bge _0805007E
	movs r3, #0
_0805007E:
	asrs r3, r3, #2
	cmp r3, #0x10
	ble _08050086
	movs r3, #0x10
_08050086:
	adds r0, r4, #0
	adds r0, #0x69
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080500AC
	ldr r2, _080500D4 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _080500D8 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _080500DC @ =gWinRegs
	ldr r0, _080500E0 @ =0x00003F3F
	strh r0, [r1, #0xa]
	ldr r1, _080500E4 @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	strh r3, [r1, #4]
_080500AC:
	cmp r3, #0x10
	bne _08050100
	ldr r1, _080500E8 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080500EC @ =gBackgroundsCopyQueueCursor
	ldr r0, _080500F0 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080500F4 @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080500F8 @ =gVramGraphicsCopyCursor
	ldr r0, _080500FC @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl CreateExtraStageResults
	b _08050182
	.align 2, 0
_080500D4: .4byte gDispCnt
_080500D8: .4byte 0x00007FFF
_080500DC: .4byte gWinRegs
_080500E0: .4byte 0x00003F3F
_080500E4: .4byte gBldRegs
_080500E8: .4byte 0x0000FFFF
_080500EC: .4byte gBackgroundsCopyQueueCursor
_080500F0: .4byte gBackgroundsCopyQueueIndex
_080500F4: .4byte sa2__gUnknown_03005390
_080500F8: .4byte gVramGraphicsCopyCursor
_080500FC: .4byte gVramGraphicsCopyQueueIndex
_08050100:
	adds r0, r4, #0
	bl sub_80520B8
	ldrh r1, [r5]
	adds r0, r1, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0805014E
	strh r1, [r5]
	b _0805014E
_08050116:
	movs r0, #0
	ldrsb r0, [r7, r0]
	cmp r0, #1
	ble _0805014E
	adds r1, r4, #0
	adds r1, #0x6c
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _0805014E
	movs r0, #0xf0
	strh r0, [r1]
	ldr r0, [r4, #0x60]
	lsls r0, r0, #8
	ldr r1, [r4, #0x44]
	adds r0, r0, r1
	ldr r1, _08050188 @ =0xFFFFEB00
	adds r0, r0, r1
	ldr r1, [r4, #0x64]
	lsls r1, r1, #8
	ldr r2, [r4, #0x48]
	adds r1, r1, r2
	ldr r2, _0805018C @ =0xFFFFF600
	adds r1, r1, r2
	bl sub_804B2BC
_0805014E:
	adds r0, r4, #0
	adds r0, #0x6f
	movs r2, #0
	ldrsb r2, [r7, r2]
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r6, r0, #0
	cmp r2, r1
	beq _08050182
	adds r5, r4, #0
	adds r5, #0x54
	ldr r0, _08050190 @ =gExtraBossTaskData
	movs r2, #0
	adds r3, r0, #4
	movs r1, #0x11
_0805016C:
	ldm r3!, {r0}
	strb r2, [r0, #2]
	str r2, [r0, #4]
	subs r1, #1
	cmp r1, #0
	bge _0805016C
	movs r0, #0
	str r0, [r4, #0x5c]
	strh r0, [r5]
	ldrb r0, [r6]
	strb r0, [r7]
_08050182:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08050188: .4byte 0xFFFFEB00
_0805018C: .4byte 0xFFFFF600
_08050190: .4byte gExtraBossTaskData

	thumb_func_start sub_8050194
sub_8050194: @ 0x08050194
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	str r0, [sp, #4]
	ldr r1, _080504B8 @ =gExtraBossTaskData
	ldr r0, [r1, #0x3c]
	mov r8, r0
	adds r0, #0x70
	ldrh r5, [r0]
	ldr r0, [r1, #0x38]
	adds r0, #0x70
	ldrh r0, [r0]
	str r0, [sp, #8]
	mov r1, r8
	ldr r0, [r1, #0x50]
	asrs r7, r0, #8
	ldr r2, _080504BC @ =gStageTime
	ldr r0, [r2]
	lsls r0, r0, #3
	adds r7, r7, r0
	adds r1, r7, #0
	subs r1, #0x48
	ldr r0, _080504C0 @ =0x00000A7F
	cmp r1, r0
	ble _080501DC
	adds r7, r1, #0
	movs r1, #0xa8
	lsls r1, r1, #4
	adds r0, r7, #0
	bl Mod
	adds r7, r0, #0
	adds r7, #0x48
_080501DC:
	mov r0, r8
	ldr r3, [r0, #0x54]
	asrs r3, r3, #8
	ldr r4, _080504C4 @ =gSineTable
	lsrs r1, r5, #6
	lsls r0, r1, #1
	adds r0, r0, r4
	ldrh r2, [r0]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x16
	lsls r2, r2, #0xc
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #8
	subs r0, r0, r2
	asrs r0, r0, #0x10
	adds r0, #6
	adds r6, r3, r0
	adds r1, r7, #0
	adds r1, #0x10
	ldr r2, _080504C8 @ =sa2__sub_801EC3C
	mov sl, r2
	str r2, [sp]
	adds r0, r6, #0
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F100
	mov sb, r0
	mov r0, r8
	ldr r3, [r0, #0x54]
	asrs r3, r3, #8
	ldr r1, [sp, #8]
	lsrs r2, r1, #6
	lsls r0, r2, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #8
	movs r0, #0x80
	lsls r0, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #1
	adds r2, r2, r4
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #0xb
	adds r1, r1, r0
	asrs r1, r1, #0x10
	adds r1, #6
	adds r4, r3, r1
	adds r1, r7, #0
	adds r1, #0x15
	mov r2, sl
	str r2, [sp]
	adds r0, r4, #0
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F100
	mov sl, r0
	cmp sl, sb
	ble _08050278
	mov sl, sb
_08050278:
	mov r0, sl
	cmp r0, #0
	bgt _080502D2
	ldr r0, [sp, #4]
	adds r0, #0x6e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _080502D2
	ldr r1, _080504BC @ =gStageTime
	ldr r0, [r1]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080502D2
	ldr r2, _080504CC @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080504D0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080504D4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0xc0
	lsls r1, r1, #0xa
	ands r0, r1
	cmp r0, #0
	bne _080502D2
	mov r2, r8
	ldr r0, [r2, #0x50]
	asrs r2, r0, #8
	adds r0, r4, #0
	cmp r0, r6
	bge _080502BE
	adds r0, r6, #0
_080502BE:
	subs r1, r0, #2
	adds r0, r2, #0
	bl CreateBrakingDustEffect
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r1, _080504D8 @ =0x0000FFFC
	strh r1, [r0, #4]
_080502D2:
	ldr r1, _080504B8 @ =gExtraBossTaskData
	ldr r0, [r1, #0x48]
	mov r8, r0
	adds r0, #0x70
	ldrh r5, [r0]
	ldr r0, [r1, #0x44]
	adds r0, #0x70
	ldrh r0, [r0]
	str r0, [sp, #0xc]
	mov r1, r8
	ldr r0, [r1, #0x50]
	asrs r7, r0, #8
	ldr r2, _080504BC @ =gStageTime
	ldr r0, [r2]
	lsls r0, r0, #3
	adds r7, r7, r0
	adds r1, r7, #0
	subs r1, #0x48
	ldr r0, _080504C0 @ =0x00000A7F
	cmp r1, r0
	ble _0805030C
	adds r7, r1, #0
	movs r1, #0xa8
	lsls r1, r1, #4
	adds r0, r7, #0
	bl Mod
	adds r7, r0, #0
	adds r7, #0x48
_0805030C:
	mov r0, r8
	ldr r3, [r0, #0x54]
	asrs r3, r3, #8
	ldr r4, _080504C4 @ =gSineTable
	lsrs r1, r5, #6
	lsls r0, r1, #1
	adds r0, r0, r4
	ldrh r2, [r0]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x16
	lsls r2, r2, #0xc
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #8
	subs r0, r0, r2
	asrs r0, r0, #0x10
	adds r0, #6
	adds r5, r3, r0
	adds r1, r7, #0
	adds r1, #0x10
	ldr r2, _080504C8 @ =sa2__sub_801EC3C
	str r2, [sp]
	adds r0, r5, #0
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F100
	mov sb, r0
	mov r0, r8
	ldr r3, [r0, #0x54]
	asrs r3, r3, #8
	ldr r1, [sp, #0xc]
	lsrs r2, r1, #6
	lsls r0, r2, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #8
	movs r0, #0x80
	lsls r0, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #1
	adds r2, r2, r4
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #0xb
	adds r1, r1, r0
	asrs r1, r1, #0x10
	adds r1, #6
	adds r4, r3, r1
	adds r1, r7, #0
	adds r1, #0x15
	ldr r2, _080504C8 @ =sa2__sub_801EC3C
	str r2, [sp]
	adds r0, r4, #0
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F100
	adds r6, r0, #0
	cmp r6, sb
	ble _080503A6
	mov r6, sb
_080503A6:
	cmp r6, #0
	bgt _080503FE
	ldr r0, [sp, #4]
	adds r0, #0x6e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _080503FE
	ldr r1, _080504BC @ =gStageTime
	ldr r0, [r1]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080503FE
	ldr r2, _080504CC @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080504D0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080504D4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0xc0
	lsls r1, r1, #0xa
	ands r0, r1
	cmp r0, #0
	bne _080503FE
	mov r2, r8
	ldr r0, [r2, #0x50]
	asrs r2, r0, #8
	adds r0, r4, #0
	cmp r0, r5
	bge _080503EA
	adds r0, r5, #0
_080503EA:
	subs r1, r0, #2
	adds r0, r2, #0
	bl CreateBrakingDustEffect
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r1, _080504D8 @ =0x0000FFFC
	strh r1, [r0, #4]
_080503FE:
	ldr r0, _080504B8 @ =gExtraBossTaskData
	ldr r0, [r0, #4]
	str r0, [sp, #0x10]
	adds r0, #0x70
	ldrh r1, [r0]
	ldr r3, _080504C4 @ =gSineTable
	lsrs r1, r1, #6
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r2, [r0]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x16
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r3, [r1]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x16
	ldr r0, [sp, #0x10]
	ldr r4, [r0, #0x54]
	asrs r4, r4, #8
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	subs r1, r1, r3
	lsls r1, r1, #8
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	subs r0, r0, r2
	lsls r0, r0, #9
	subs r1, r1, r0
	asrs r1, r1, #0x10
	adds r7, r4, r1
	ldr r1, [sp, #0x10]
	ldr r4, [r1, #0x50]
	asrs r4, r4, #8
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	subs r1, r1, r2
	lsls r1, r1, #8
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	subs r0, r0, r3
	lsls r0, r0, #9
	adds r1, r1, r0
	asrs r1, r1, #0x10
	adds r4, r4, r1
	ldr r0, _080504BC @ =gStageTime
	ldr r0, [r0]
	lsls r0, r0, #3
	adds r4, r4, r0
	adds r1, r4, #0
	subs r1, #0x48
	ldr r0, _080504C0 @ =0x00000A7F
	cmp r1, r0
	ble _08050488
	adds r4, r1, #0
	movs r1, #0xa8
	lsls r1, r1, #4
	adds r0, r4, #0
	bl Mod
	adds r4, r0, #0
	adds r4, #0x48
_08050488:
	ldr r0, _080504C8 @ =sa2__sub_801EC3C
	str r0, [sp]
	adds r0, r7, #0
	adds r1, r4, #0
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F100
	adds r1, r6, #0
	cmp r1, sl
	ble _080504A0
	mov r1, sl
_080504A0:
	cmp r0, r1
	ble _080504A6
	adds r0, r1, #0
_080504A6:
	adds r1, r0, #0
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080504B8: .4byte gExtraBossTaskData
_080504BC: .4byte gStageTime
_080504C0: .4byte 0x00000A7F
_080504C4: .4byte gSineTable
_080504C8: .4byte sa2__sub_801EC3C
_080504CC: .4byte gPseudoRandom
_080504D0: .4byte 0x00196225
_080504D4: .4byte 0x3C6EF35F
_080504D8: .4byte 0x0000FFFC

@ Input:
@ R0 = (SuperEggRobo *)robo
@ R1 = (MapEntity *)me
	thumb_func_start sub_80504DC
sub_80504DC: @ 0x080504DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov sl, r0      @ sl = r0 = robo
	movs r4, #0
	str r4, [r0, #0x60]
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r0, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r0, sl      @ r0 = sl = robo
	str r1, [r0, #0x64]
	ldr r1, _08050848 @ =0xFFFF0000
	str r1, [r0, #0x44]
	ldr r0, _0805084C @ =0xFFFFCA00
	mov r2, sl      @ r2 = sl = robo
	str r0, [r2, #0x48]
	mov r0, sl      @ r0 = sl = robo
	adds r0, #0x4c
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	ldr r0, _08050850 @ =0x00400002
	str r0, [r2, #0x58]
	str r4, [r2, #0x5c]
	mov r0, sl      @ r0 = sl = robo
	adds r0, #0x54
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	mov r1, sl      @ r1 = sl = robo
	adds r1, #0x6c
	movs r0, #0xf0
	strh r0, [r1]
	subs r1, #4
	ldr r0, _08050854 @ =gLoadedSaveGame
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #1
	movs r3, #8
	subs r0, r3, r0
	strb r0, [r1]
	mov r0, sl      @ r0 = sl = robo
	adds r0, #0x69
	movs r1, #0
	strb r1, [r0]
	mov r1, sl      @ r1 = sl = robo
	adds r1, #0x6a
	movs r0, #0x24
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x36
	strb r0, [r1]
	mov r0, sl      @ r0 = sl = robo
	adds r0, #0x6e
	movs r2, #0
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	ldr r6, _08050858 @ =gExtraBossTaskData
	mov r0, sl      @ r0 = sl = robo
	movs r1, #0
	movs r2, #0
	movs r3, #0x15
	bl sub_8052838
	adds r5, r6, #4
	str r0, [r6, #4]
	strh r4, [r0]
	movs r7, #1
	movs r1, #0x80
	lsls r1, r1, #3
	ldr r2, _0805085C @ =0xFFFFE400
	movs r3, #0x16
	bl sub_8052474
	movs r3, #4
	mov sb, r3
	str r0, [r5, #4]
	strh r7, [r0]
	movs r7, #2
	ldr r0, [r6, #4]
	ldr r2, _08050860 @ =0xFFFFE900
	movs r1, #0xb0
	lsls r1, r1, #4
	movs r3, #0xf
	bl sub_80524F0
	str r0, [r6, #0xc]
	strh r7, [r0]
	ldr r2, [r6, #0xc]
	ldr r1, [r2, #0x28]
	ldr r3, _08050864 @ =0xFFFFCFFF
	mov r8, r3
	ands r1, r3
	movs r5, #0x80
	lsls r5, r5, #5
	orrs r1, r5
	str r1, [r2, #0x28]
	movs r7, #3
	movs r1, #0
	movs r2, #0xa0
	lsls r2, r2, #5
	movs r3, #0x10
	bl sub_8052578
	str r0, [r6, #0x10]
	strh r7, [r0]
	ldr r2, [r6, #0x10]
	ldr r1, [r2, #0x28]
	mov r3, r8
	ands r1, r3
	orrs r1, r5
	str r1, [r2, #0x28]
	movs r4, #0x90
	lsls r4, r4, #5
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0xf
	bl sub_80525E0
	str r0, [r6, #0x14]
	mov r1, sb
	strh r1, [r0]
	ldr r2, [r6, #0x14]
	ldr r1, [r2, #0x28]
	mov r3, r8
	ands r1, r3
	orrs r1, r5
	str r1, [r2, #0x28]
	movs r7, #5
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0x10
	bl sub_8052578
	str r0, [r6, #0x18]
	strh r7, [r0]
	ldr r2, [r6, #0x18]
	ldr r1, [r2, #0x28]
	mov r3, r8
	ands r1, r3
	orrs r1, r5
	str r1, [r2, #0x28]
	movs r7, #6
	movs r1, #0x80
	lsls r1, r1, #4
	mov sb, r1
	movs r1, #0
	mov r2, sb
	movs r3, #0xe
	bl sub_805265C
	str r0, [r6, #0x1c]
	strh r7, [r0]
	ldr r1, [r6, #0x1c]
	ldr r0, [r1, #0x28]
	mov r2, r8
	ands r0, r2
	orrs r0, r5
	str r0, [r1, #0x28]
	movs r7, #7
	ldr r0, [r6, #4]
	ldr r1, _08050868 @ =0xFFFFFB00
	ldr r2, _0805086C @ =0xFFFFE700
	movs r3, #0x1b
	bl sub_80524F0
	str r0, [r6, #0x20]
	strh r7, [r0]
	movs r1, #0
	movs r2, #0xa0
	lsls r2, r2, #5
	movs r3, #0x1c
	bl sub_8052578
	str r0, [r6, #0x24]
	movs r3, #8
	strh r3, [r0]
	movs r7, #9
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0x1b
	bl sub_80525E0
	str r0, [r6, #0x28]
	strh r7, [r0]
	movs r7, #0xa
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0x1c
	bl sub_8052578
	str r0, [r6, #0x2c]
	strh r7, [r0]
	movs r7, #0xb
	movs r1, #0
	mov r2, sb
	movs r3, #0x1a
	bl sub_805265C
	str r0, [r6, #0x30]
	strh r7, [r0]
	ldr r0, [sp, #4]
	ldr r1, _08050848 @ =0xFFFF0000
	ands r0, r1
	ldr r2, _08050870 @ =0x0000029B
	orrs r0, r2
	ldr r3, _08050874 @ =0xFF00FFFF
	ands r0, r3
	str r0, [sp, #4]
	movs r0, #0x10
	bl VramMalloc
	add r1, sp, #4
	mov sb, r1
	str r0, [sp, #8]
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #2
	movs r2, #0x14
	str r2, [sp]
	movs r2, #0xa0
	lsls r2, r2, #3
	add r3, sp, #4
	bl sub_80526C4
	adds r4, r0, #0
	str r4, [r6, #0x34]
	movs r3, #0xc
	strh r3, [r4]
	ldr r0, [r6, #0x34]
	adds r0, #0x76
	movs r1, #0xe0
	lsls r1, r1, #8
	strh r1, [r0]
	ldr r0, [r6, #0x34]
	adds r0, #0x72
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	ldr r1, [r6, #0x34]
	ldr r0, [r1, #0x28]
	mov r2, r8
	ands r0, r2
	orrs r0, r5
	str r0, [r1, #0x28]
	ldr r1, _08050878 @ =0x0000029D
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #0
	mov r3, sb
	strb r0, [r3, #2]
	movs r0, #9
	bl VramMalloc
	str r0, [sp, #8]
	movs r0, #0x13
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	add r3, sp, #4
	bl sub_8052724
	ldr r1, [r0, #0x28]
	mov r2, r8
	ands r1, r2
	orrs r1, r5
	str r1, [r0, #0x28]
	add r0, sp, #4
	movs r3, #0xa7
	lsls r3, r3, #2
	strh r3, [r0]
	movs r1, #0
	mov r0, sb
	strb r1, [r0, #2]
	movs r0, #0x40
	bl VramMalloc
	str r0, [sp, #8]
	movs r7, #0xd
	movs r2, #0xc0
	lsls r2, r2, #4
	movs r0, #0x12
	str r0, [sp]
	adds r0, r4, #0
	ldr r1, _0805087C @ =0xFFFFF700
	add r3, sp, #4
	bl sub_8052780
	adds r4, r0, #0
	str r4, [r6, #0x38]
	strh r7, [r4]
	ldr r1, [r6, #0x38]
	ldr r0, [r1, #0x28]
	mov r2, r8
	ands r0, r2
	orrs r0, r5
	str r0, [r1, #0x28]
	add r0, sp, #4
	ldr r3, _08050870 @ =0x0000029B
	strh r3, [r0]
	movs r1, #2
	mov r0, sb
	strb r1, [r0, #2]
	movs r0, #0x10
	bl VramMalloc
	str r0, [sp, #8]
	movs r7, #0xe
	movs r2, #0xc0
	lsls r2, r2, #2
	mov sb, r2
	movs r3, #0x11
	str r3, [sp]
	adds r0, r4, #0
	mov r1, sb
	movs r2, #0xd8
	lsls r2, r2, #5
	add r3, sp, #4
	bl sub_80527DC
	str r0, [r6, #0x3c]
	strh r7, [r0]
	ldr r1, [r6, #0x3c]
	ldr r0, [r1, #0x28]
	mov r2, r8
	ands r0, r2
	orrs r0, r5
	str r0, [r1, #0x28]
	ldr r0, [sp, #0xc]
	ldr r3, _08050848 @ =0xFFFF0000
	ands r0, r3
	ldr r1, _08050870 @ =0x0000029B
	orrs r0, r1
	ldr r2, _08050874 @ =0xFF00FFFF
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [sp, #0xc]
	movs r0, #0x10
	bl VramMalloc
	add r5, sp, #0xc
	str r0, [r5, #4]
	movs r7, #0xf
	ldr r0, [r6, #4]
	ldr r1, _08050880 @ =0xFFFFFA00
	movs r2, #0x17
	str r2, [sp]
	movs r2, #0xa0
	lsls r2, r2, #3
	adds r3, r5, #0
	bl sub_80526C4
	adds r4, r0, #0
	str r4, [r6, #0x40]
	strh r7, [r4]
	ldr r0, [r6, #0x40]
	adds r0, #0x76
	movs r1, #0x80
	lsls r1, r1, #6
	strh r1, [r0]
	ldr r0, [r6, #0x40]
	adds r0, #0x72
	movs r1, #0xff
	lsls r1, r1, #8
	strh r1, [r0]
	movs r3, #0xa7
	lsls r3, r3, #2
	strh r3, [r5]
	movs r0, #1
	strb r0, [r5, #2]
	movs r0, #0x40
	bl VramMalloc
	str r0, [r5, #4]
	movs r7, #0x10
	movs r0, #0x16
	str r0, [sp]
	adds r0, r4, #0
	ldr r1, _0805087C @ =0xFFFFF700
	movs r2, #0xb0
	lsls r2, r2, #4
	adds r3, r5, #0
	bl sub_8052780
	adds r4, r0, #0
	str r4, [r6, #0x44]
	strh r7, [r4]
	ldr r0, _08050870 @ =0x0000029B
	strh r0, [r5]
	movs r0, #3
	strb r0, [r5, #2]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x18
	str r0, [sp]
	adds r0, r4, #0
	mov r1, sb
	movs r2, #0xd8
	lsls r2, r2, #5
	adds r3, r5, #0
	bl sub_80527DC
	str r0, [r6, #0x48]
	movs r1, #0x11
	strh r1, [r0]
	ldr r0, _08050884 @ =gInput
	ldrh r0, [r0]
	cmp r0, #0xfa
	bne _08050836
	mov r2, sl      @ r2 = sl = robo
	ldr r0, [r2, #0x58]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #0x58]
_08050836:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08050848: .4byte 0xFFFF0000
_0805084C: .4byte 0xFFFFCA00
_08050850: .4byte 0x00400002
_08050854: .4byte gLoadedSaveGame
_08050858: .4byte gExtraBossTaskData
_0805085C: .4byte 0xFFFFE400
_08050860: .4byte 0xFFFFE900
_08050864: .4byte 0xFFFFCFFF
_08050868: .4byte 0xFFFFFB00
_0805086C: .4byte 0xFFFFE700
_08050870: .4byte 0x0000029B
_08050874: .4byte 0xFF00FFFF
_08050878: .4byte 0x0000029D
_0805087C: .4byte 0xFFFFF700
_08050880: .4byte 0xFFFFFA00
_08050884: .4byte gInput

	thumb_func_start sub_8050888
sub_8050888: @ 0x08050888
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	ldr r0, _08050974 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	ldr r0, _08050978 @ =gExtraBossTaskData
	ldr r7, [r0]
	ldr r0, _0805097C @ =0x03000018
	adds r6, r2, r0
	ldr r1, _08050980 @ =gPlayer
	mov ip, r1
	ldr r3, _08050984 @ =gCamera
	ldr r1, [r7, #0x60]
	lsls r1, r1, #8
	ldr r0, [r7, #0x44]
	adds r1, r1, r0
	ldr r0, [r5, #0x60]
	adds r0, r0, r1
	str r0, [r5, #0x50]
	ldr r1, [r7, #0x64]
	lsls r1, r1, #8
	ldr r0, [r7, #0x48]
	adds r1, r1, r0
	ldr r0, [r5, #0x64]
	adds r0, r0, r1
	str r0, [r5, #0x54]
	ldr r1, _08050988 @ =0x03000076
	adds r0, r2, r1
	ldrh r0, [r0]
	subs r1, #6
	adds r2, r2, r1
	strh r0, [r2]
	ldr r0, [r5, #0x50]
	asrs r4, r0, #8
	movs r1, #0
	ldrsh r0, [r3, r1]
	subs r0, r4, r0
	mov sb, r0
	ldr r0, [r5, #0x54]
	asrs r2, r0, #8
	movs r1, #2
	ldrsh r0, [r3, r1]
	subs r0, r2, r0
	mov r8, r0
	mov r3, ip
	movs r1, #0x1c
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bne _0805090E
	ldr r0, [r7, #0x58]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0805090E
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_800BFEC
_0805090E:
	movs r4, #0x80
	strh r4, [r6, #0x16]
	strh r4, [r6, #0x18]
	ldr r0, [r6, #0x10]
	ldr r1, _0805098C @ =0xFFFE7FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [r6, #0x10]
	adds r0, r6, #0
	bl sa2__sub_80036E0
	adds r0, r6, #0
	bl sa2__sub_8003914
	adds r0, r5, #0
	adds r0, #0x70
	ldrh r0, [r0]
	lsrs r0, r0, #6
	movs r2, #0x80
	lsls r2, r2, #1
	str r4, [sp]
	mov r3, sb
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #4]
	mov r3, r8
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #8]
	ldr r1, _08050990 @ =gBgAffineRegs
	str r1, [sp, #0xc]
	adds r1, r2, #0
	movs r3, #0x7c
	bl sa2__sub_8003EE4
	adds r0, r7, #0
	adds r0, #0x6e
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r2, r0, #0
	cmp r1, #0xe
	bls _08050968
	b _08050A6C
_08050968:
	lsls r0, r1, #2
	ldr r1, _08050994 @ =_08050998
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08050974: .4byte gCurTask
_08050978: .4byte gExtraBossTaskData
_0805097C: .4byte 0x03000018
_08050980: .4byte gPlayer
_08050984: .4byte gCamera
_08050988: .4byte 0x03000076
_0805098C: .4byte 0xFFFE7FFF
_08050990: .4byte gBgAffineRegs
_08050994: .4byte _08050998
_08050998: @ jump table
	.4byte _08050A38 @ case 0
	.4byte _08050A42 @ case 1
	.4byte _08050A6C @ case 2
	.4byte _08050A6C @ case 3
	.4byte _080509D4 @ case 4
	.4byte _080509D4 @ case 5
	.4byte _080509FC @ case 6
	.4byte _080509FC @ case 7
	.4byte _08050A6C @ case 8
	.4byte _08050A6C @ case 9
	.4byte _08050A6C @ case 10
	.4byte _08050A6C @ case 11
	.4byte _08050A6C @ case 12
	.4byte _08050A4C @ case 13
	.4byte _08050A5A @ case 14
_080509D4:
	ldr r0, _080509F4 @ =gExtraBossTaskData
	ldr r1, [r0, #0xc]
	adds r1, #0x76
	ldr r3, _080509F8 @ =0xFFFFC000
	adds r0, r3, #0
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #4
	beq _08050A1A
	b _08050A30
	.align 2, 0
_080509F4: .4byte gExtraBossTaskData
_080509F8: .4byte 0xFFFFC000
_080509FC:
	ldr r0, _08050A28 @ =gExtraBossTaskData
	ldr r1, [r0, #0x20]
	adds r1, #0x76
	ldr r3, _08050A2C @ =0xFFFFC000
	adds r0, r3, #0
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #6
	bne _08050A30
_08050A1A:
	adds r0, r5, #0
	adds r0, #0x76
	movs r2, #0x40
	bl sub_804CFE0
	b _08050A78
	.align 2, 0
_08050A28: .4byte gExtraBossTaskData
_08050A2C: .4byte 0xFFFFC000
_08050A30:
	adds r0, r5, #0
	adds r0, #0x76
	strh r1, [r0]
	b _08050A78
_08050A38:
	adds r0, r5, #0
	adds r0, #0x76
	movs r1, #0x80
	lsls r1, r1, #4
	b _08050A52
_08050A42:
	adds r0, r5, #0
	adds r0, #0x76
	movs r1, #0xf8
	lsls r1, r1, #8
	b _08050A52
_08050A4C:
	adds r0, r5, #0
	adds r0, #0x76
	movs r1, #0
_08050A52:
	movs r2, #0x80
	bl sub_804CFE0
	b _08050A78
_08050A5A:
	adds r0, r5, #0
	adds r0, #0x76
	movs r1, #0x80
	lsls r1, r1, #7
	movs r2, #0x80
	lsls r2, r2, #2
	bl sub_804CFE0
	b _08050A78
_08050A6C:
	adds r0, r5, #0
	adds r0, #0x76
	movs r1, #0
	movs r2, #0x80
	bl sub_804CFE0
_08050A78:
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8050A88
sub_8050A88: @ 0x08050A88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _08050C44 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	ldr r0, [r7, #8]
	mov ip, r0
	ldr r0, _08050C48 @ =gExtraBossTaskData
	ldr r0, [r0]
	mov sl, r0
	ldr r1, _08050C4C @ =0x03000018
	adds r1, r1, r4
	mov sb, r1      @ sb = s
	ldr r2, _08050C50 @ =0x0300000C
	adds r2, r4, r2
	str r2, [sp]
	ldr r5, _08050C54 @ =gSineTable
	mov r6, ip
	adds r6, #0x70
	ldrh r1, [r6]
	lsrs r1, r1, #6
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r1, r3
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r2, [r7, #0x68]
	adds r3, r2, #0
	muls r3, r0, r3
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r1, [r7, #0x6c]
	mov r8, r1
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	subs r3, r3, r0
	asrs r3, r3, #8
	str r3, [r7, #0x60]
	ldrh r1, [r6]
	lsrs r1, r1, #6
	lsls r0, r1, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r2, r0, r2
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	adds r2, r2, r0
	asrs r2, r2, #8
	str r2, [r7, #0x64]
	mov r1, ip
	ldr r0, [r1, #0x50]
	adds r3, r3, r0
	str r3, [r7, #0x50]
	ldr r0, [r1, #0x54]
	adds r2, r2, r0
	str r2, [r7, #0x54]
	ldr r2, _08050C58 @ =0x03000076
	adds r1, r4, r2
	ldrh r0, [r6]
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r3, _08050C5C @ =0x03000070
	adds r4, r4, r3
	strh r0, [r4]
	ldr r0, [r7, #0x50]
	asrs r1, r0, #8
	ldr r4, _08050C60 @ =gCamera
	movs r2, #0
	ldrsh r0, [r4, r2]
	subs r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r7, #0x54]
	asrs r2, r0, #8
	movs r3, #2
	ldrsh r0, [r4, r3]
	subs r0, r2, r0
	str r0, [sp, #8]
	ldr r4, _08050C64 @ =gPlayer
	adds r4, #0x3e
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _08050B62
	b _08050C8C
_08050B62:
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r0, sb
	ldr r3, _08050C64 @ =gPlayer
	bl sub_800C0E0
	cmp r0, #0
	bne _08050B78
	b _08050C8C
_08050B78:
	mov r0, sl
	ldr r3, [r0, #0x58]
	movs r5, #0x80
	ands r3, r5
	movs r1, #0x69
	add r1, sl
	mov r8, r1
	adds r0, #0x6e
	str r0, [sp, #0xc]
	cmp r3, #0
	beq _08050B90
	b _08050CC2
_08050B90:
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	ble _08050B9A
	b _08050CC2
_08050B9A:
	movs r0, #0x20
	strb r0, [r1]
	movs r0, #0
	strb r0, [r4]
	movs r0, #8
	ldr r2, _08050C64 @ =gPlayer
	strh r0, [r2, #0x1c]
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r2, #8]
	strh r0, [r2, #0xc]
	mov r1, sl
	adds r1, #0x68
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08050BC2
	b _08050CC2
_08050BC2:
	ldr r2, _08050C68 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08050C6C @ =0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08050C70 @ =gBldRegs
	strh r3, [r0]
	ldr r2, _08050C74 @ =gFlags
	ldr r0, [r2]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	movs r0, #0xd
	ldr r4, [sp, #0xc]
	strb r0, [r4]
	mov r1, sl
	adds r1, #0x6f
	strb r0, [r1]
	subs r1, #0x23
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r1]
	mov r1, sl
	ldr r0, [r1, #0x58]
	orrs r0, r5
	str r0, [r1, #0x58]
	mov r0, sl
	adds r0, #0x54
	strh r3, [r0]
	ldr r2, _08050C78 @ =gStageFlags
	ldrh r0, [r2]
	movs r1, #1
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08050C7C @ =gLevelScore
	ldr r6, [r1]
	movs r2, #0xfa
	lsls r2, r2, #2
	adds r0, r6, r2
	str r0, [r1]
	ldr r4, _08050C80 @ =0x0000C350
	adds r1, r4, #0
	bl Div
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl Div
	cmp r5, r0
	beq _08050CC2
	ldr r0, _08050C84 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _08050CC2
	ldr r1, _08050C88 @ =gNumLives
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08050CC2
	.align 2, 0
_08050C44: .4byte gCurTask
_08050C48: .4byte gExtraBossTaskData
_08050C4C: .4byte 0x03000018
_08050C50: .4byte 0x0300000C
_08050C54: .4byte gSineTable
_08050C58: .4byte 0x03000076
_08050C5C: .4byte 0x03000070
_08050C60: .4byte gCamera
_08050C64: .4byte gPlayer
_08050C68: .4byte gDispCnt
_08050C6C: .4byte 0x0000DFFF
_08050C70: .4byte gBldRegs
_08050C74: .4byte gFlags
_08050C78: .4byte gStageFlags
_08050C7C: .4byte gLevelScore
_08050C80: .4byte 0x0000C350
_08050C84: .4byte gGameMode
_08050C88: .4byte gNumLives
_08050C8C:
	ldr r3, _08050DB0 @ =gPlayer
	movs r4, #0x1c
	ldrsh r0, [r3, r4]
	movs r1, #0x69
	add r1, sl
	mov r8, r1
	mov r2, sl
	adds r2, #0x6e
	str r2, [sp, #0xc]
	cmp r0, #0
	bne _08050CC2
	mov r3, sl
	ldr r0, [r3, #0x58]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08050CC2
	ldr r1, [r7, #0x50]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r2, [r7, #0x54]
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	mov r0, sb
	ldr r3, _08050DB0 @ =gPlayer
	bl sub_800BFEC
_08050CC2:
	mov r4, sb
	ldr r0, [r4, #0x10]
	ldr r1, _08050DB4 @ =0xFFFFFE7F
	ands r0, r1
	str r0, [r4, #0x10]
	mov r1, sl
	ldr r0, [r1, #0x58]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08050CE2
	mov r2, r8
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _08050D46
_08050CE2:
	ldr r0, _08050DB0 @ =gPlayer
	ldr r3, [r0, #0x10]
	ands r3, r1
	cmp r3, #0
	bne _08050D00
	ldr r2, _08050DB8 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08050DBC @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08050DC0 @ =gWinRegs
	strh r3, [r0, #0xa]
	ldr r0, _08050DC4 @ =gBldRegs
	strh r3, [r0]
	strh r3, [r0, #4]
_08050D00:
	mov r3, r8
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	beq _08050D46
	ldr r0, _08050DC8 @ =gStageTime
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08050D3E
	mov r4, sb
	ldr r0, [r4, #0x10]
	adds r1, #0xfe
	orrs r0, r1
	str r0, [r4, #0x10]
	ldr r2, _08050DB8 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08050DC0 @ =gWinRegs
	ldr r0, _08050DCC @ =0x00003F1F
	strh r0, [r1, #0xa]
	ldr r1, _08050DC4 @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
_08050D3E:
	mov r4, r8
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
_08050D46:
	mov r0, sp
	ldrh r1, [r0, #4]
	ldr r0, [sp]
	strh r1, [r0, #6]
	mov r2, sp
	ldrh r2, [r2, #8]
	strh r2, [r0, #8]
	adds r0, r7, #0
	adds r0, #0x70
	ldrh r0, [r0]
	lsrs r0, r0, #6
	ldr r3, [sp]
	strh r0, [r3]
	mov r4, sb
	ldr r0, [r4, #0x10]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r2, _08050DD0 @ =sa2__gUnknown_030054B8
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	movs r0, #0x20
	orrs r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r4, #0x10]
	orrs r0, r1
	str r0, [r4, #0x10]
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, sb
	ldr r1, [sp]
	bl TransformSprite
	mov r0, sb
	bl DisplaySprite
	ldr r1, [sp, #0xc]
	ldrb r0, [r1]
	subs r0, #2
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xc
	bls _08050DA6
	b _08050F94
_08050DA6:
	lsls r0, r0, #2
	ldr r1, _08050DD4 @ =_08050DD8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08050DB0: .4byte gPlayer
_08050DB4: .4byte 0xFFFFFE7F
_08050DB8: .4byte gDispCnt
_08050DBC: .4byte 0x00007FFF
_08050DC0: .4byte gWinRegs
_08050DC4: .4byte gBldRegs
_08050DC8: .4byte gStageTime
_08050DCC: .4byte 0x00003F1F
_08050DD0: .4byte sa2__gUnknown_030054B8
_08050DD4: .4byte _08050DD8
_08050DD8: @ jump table
	.4byte _08050E0C @ case 0
	.4byte _08050E0C @ case 1
	.4byte _08050F94 @ case 2
	.4byte _08050F94 @ case 3
	.4byte _08050F94 @ case 4
	.4byte _08050F94 @ case 5
	.4byte _08050F94 @ case 6
	.4byte _08050F94 @ case 7
	.4byte _08050E1C @ case 8
	.4byte _08050E44 @ case 9
	.4byte _08050F30 @ case 10
	.4byte _08050F78 @ case 11
	.4byte _08050F82 @ case 12
_08050E0C:
	adds r0, r7, #0
	adds r0, #0x76
	movs r2, #0x80
	lsls r2, r2, #2
	movs r1, #0
	bl sub_804CFE0
	b _08050FA2
_08050E1C:
	adds r0, r7, #0
	adds r0, #0x76
	movs r1, #0xf0
	lsls r1, r1, #8
	movs r2, #0x80
	lsls r2, r2, #2
	bl sub_804CFE0
	cmp r0, #0
	bne _08050E32
	b _08050FA2
_08050E32:
	movs r2, #0
	ldrsh r0, [r7, r2]
	movs r1, #1
	lsls r1, r0
	mov r3, sl
	ldr r0, [r3, #0x5c]
	orrs r0, r1
	str r0, [r3, #0x5c]
	b _08050FA2
_08050E44:
	ldr r2, _08050EBC @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08050EC0 @ =0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, [r7, #4]
	cmp r0, #0
	bne _08050E6E
	ldr r0, _08050EC4 @ =0x00000299
	mov r4, sb
	strh r0, [r4, #0xa]
	mov r1, sb
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0x9b
	bl m4aSongNumStart
_08050E6E:
	ldr r0, [r7, #4]
	cmp r0, #0xa
	bne _08050E7A
	movs r0, #0x9b
	bl m4aSongNumStop
_08050E7A:
	ldr r0, [r7, #4]
	cmp r0, #0xf
	ble _08050ED0
	movs r1, #0
	ldrsh r0, [r7, r1]
	movs r1, #1
	lsls r1, r0
	mov r2, sl
	ldr r0, [r2, #0x5c]
	orrs r0, r1
	str r0, [r2, #0x5c]
	ldr r1, _08050EC8 @ =gBldRegs
	movs r3, #0
	movs r0, #0
	strh r0, [r1]
	ldr r2, _08050ECC @ =gFlags
	ldr r0, [r2]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	ldr r0, _08050EC4 @ =0x00000299
	mov r4, sb
	strh r0, [r4, #0xa]
	mov r0, sb
	adds r0, #0x20
	strb r3, [r0]
	mov r1, sb
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	b _08050FA2
	.align 2, 0
_08050EBC: .4byte gDispCnt
_08050EC0: .4byte 0x0000DFFF
_08050EC4: .4byte 0x00000299
_08050EC8: .4byte gBldRegs
_08050ECC: .4byte gFlags
_08050ED0:
	ldr r2, _08050F20 @ =gSineTable
	lsls r0, r0, #0xa
	asrs r0, r0, #6
	ldr r1, _08050F24 @ =0x000003FF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	subs r1, r1, r0
	lsls r1, r1, #0x15
	movs r0, #0xb8
	lsls r0, r0, #0x17
	adds r1, r1, r0
	lsrs r2, r1, #0x10
	ldr r0, _08050F28 @ =gPlayer
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08050F70
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	adds r3, r7, #0
	bl sub_8052150
	cmp r0, #0
	bne _08050F70
	ldr r0, _08050F2C @ =gFlags
	ldr r1, [r0]
	movs r2, #5
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0]
	b _08050F70
	.align 2, 0
_08050F20: .4byte gSineTable
_08050F24: .4byte 0x000003FF
_08050F28: .4byte gPlayer
_08050F2C: .4byte gFlags
_08050F30:
	ldr r1, [r7, #4]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _08050F70
	lsls r0, r1, #0xa
	ldr r1, [r7, #0x50]
	subs r1, r1, r0
	ldr r3, _08050F5C @ =0xFFFF9C00
	adds r2, r1, r3
	ldr r0, _08050F60 @ =0xFFFFE000
	cmp r2, r0
	bge _08050F64
	movs r4, #0
	ldrsh r0, [r7, r4]
	movs r1, #1
	lsls r1, r0
	mov r2, sl
	ldr r0, [r2, #0x5c]
	orrs r0, r1
	str r0, [r2, #0x5c]
	b _08050F70
	.align 2, 0
_08050F5C: .4byte 0xFFFF9C00
_08050F60: .4byte 0xFFFFE000
_08050F64:
	mov r3, sl
	ldr r1, [r3, #0x64]
	lsls r1, r1, #8
	adds r0, r2, #0
	bl sub_804B570
_08050F70:
	ldr r0, [r7, #4]
	adds r0, #1
	str r0, [r7, #4]
	b _08050FA2
_08050F78:
	adds r0, r7, #0
	adds r0, #0x76
	movs r1, #0xc0
	lsls r1, r1, #5
	b _08050F8A
_08050F82:
	adds r0, r7, #0
	adds r0, #0x76
	movs r1, #0x80
	lsls r1, r1, #6
_08050F8A:
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_804CFE0
	b _08050FA2
_08050F94:
	adds r0, r7, #0
	adds r0, #0x76
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	bl sub_804CFE0
_08050FA2:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8050FB4
sub_8050FB4: @ 0x08050FB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _080510D0 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	ldr r0, _080510D4 @ =gExtraBossTaskData
	ldr r0, [r0]
	mov sb, r0
	ldr r0, _080510D8 @ =0x03000018
	adds r6, r4, r0
	ldr r1, _080510DC @ =0x0300000C
	adds r1, r4, r1
	str r1, [sp]
	ldr r5, _080510E0 @ =gSineTable
	ldr r2, [r7, #8]
	adds r2, #0x70
	mov r8, r2
	ldrh r1, [r2]
	lsrs r1, r1, #6
	movs r3, #0x80
	lsls r3, r3, #1
	mov ip, r3
	adds r0, r1, r3
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r2, [r7, #0x68]
	adds r3, r2, #0
	muls r3, r0, r3
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r1, [r7, #0x6c]
	mov sl, r1
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	subs r3, r3, r0
	asrs r3, r3, #8
	str r3, [r7, #0x60]
	mov r0, r8
	ldrh r1, [r0]
	lsrs r1, r1, #6
	lsls r0, r1, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r2, r0, r2
	add r1, ip
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	adds r2, r2, r0
	asrs r2, r2, #8
	str r2, [r7, #0x64]
	ldr r1, [r7, #8]
	ldr r0, [r1, #0x50]
	adds r3, r3, r0
	str r3, [r7, #0x50]
	ldr r0, [r1, #0x54]
	adds r2, r2, r0
	str r2, [r7, #0x54]
	ldr r2, _080510E4 @ =0x03000076
	adds r1, r4, r2
	mov r3, r8
	ldrh r0, [r3]
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r1, _080510E8 @ =0x03000070
	adds r4, r4, r1
	strh r0, [r4]
	ldr r2, [r7, #0x50]
	asrs r2, r2, #8
	ldr r3, _080510EC @ =gCamera
	movs r4, #0
	ldrsh r0, [r3, r4]
	subs r2, r2, r0
	ldr r0, [r7, #0x54]
	asrs r0, r0, #8
	movs r4, #2
	ldrsh r1, [r3, r4]
	subs r0, r0, r1
	ldr r1, [sp]
	strh r2, [r1, #6]
	strh r0, [r1, #8]
	ldr r0, [r6, #0x10]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r2, _080510F0 @ =sa2__gUnknown_030054B8
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	movs r0, #0x20
	orrs r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r6, #0x10]
	orrs r0, r1
	str r0, [r6, #0x10]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	ldr r1, [sp]
	bl TransformSprite
	adds r0, r6, #0
	bl DisplaySprite
	mov r0, sb
	adds r0, #0x6e
	ldrb r0, [r0]
	subs r0, #2
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xc
	bls _080510C6
	b _08051324
_080510C6:
	lsls r0, r0, #2
	ldr r1, _080510F4 @ =_080510F8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080510D0: .4byte gCurTask
_080510D4: .4byte gExtraBossTaskData
_080510D8: .4byte 0x03000018
_080510DC: .4byte 0x0300000C
_080510E0: .4byte gSineTable
_080510E4: .4byte 0x03000076
_080510E8: .4byte 0x03000070
_080510EC: .4byte gCamera
_080510F0: .4byte sa2__gUnknown_030054B8
_080510F4: .4byte _080510F8
_080510F8: @ jump table
	.4byte _0805112C @ case 0
	.4byte _0805113C @ case 1
	.4byte _0805116E @ case 2
	.4byte _080511BC @ case 3
	.4byte _08051204 @ case 4
	.4byte _08051250 @ case 5
	.4byte _080512C8 @ case 6
	.4byte _080512C8 @ case 7
	.4byte _08051324 @ case 8
	.4byte _08051324 @ case 9
	.4byte _08051324 @ case 10
	.4byte _08051300 @ case 11
	.4byte _08051312 @ case 12
_0805112C:
	adds r0, r7, #0
	adds r0, #0x76
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	bl sub_804CFE0
	b _08051332
_0805113C:
	ldr r1, _08051158 @ =gUnknown_084AE560
	movs r2, #0
	ldrsh r0, [r7, r2]
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805115C
	adds r0, r7, #0
	adds r0, #0x76
	movs r1, #0x80
	lsls r1, r1, #5
	b _08051164
	.align 2, 0
_08051158: .4byte gUnknown_084AE560
_0805115C:
	adds r0, r7, #0
	adds r0, #0x76
	movs r1, #0x80
	lsls r1, r1, #6
_08051164:
	movs r2, #0x80
	lsls r2, r2, #2
	bl sub_804CFE0
	b _08051332
_0805116E:
	ldr r1, _080511B8 @ =gUnknown_084AE560
	movs r3, #0
	ldrsh r0, [r7, r3]
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _08051184
	b _08051332
_08051184:
	movs r5, #0xc0
	lsls r5, r5, #7
	adds r4, r7, #0
	adds r4, #0x76
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_804CFE0
	ldrh r0, [r4]
	cmp r0, r5
	beq _080511A0
	b _08051332
_080511A0:
	ldr r0, [r7, #4]
	adds r1, r0, #0
	adds r0, #1
	str r0, [r7, #4]
	cmp r1, #0x1d
	bgt _080511AE
	b _08051332
_080511AE:
	movs r4, #0
	ldrsh r0, [r7, r4]
	adds r1, r6, #0
	b _080512B2
	.align 2, 0
_080511B8: .4byte gUnknown_084AE560
_080511BC:
	ldr r1, _080511FC @ =gUnknown_084AE560
	movs r3, #0
	ldrsh r0, [r7, r3]
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _080511D2
	b _08051332
_080511D2:
	ldr r0, [r7, #4]
	cmp r0, #0x10
	ble _080511DA
	movs r0, #0x10
_080511DA:
	lsls r0, r0, #0x1a
	ldr r1, _08051200 @ =gSineTable
	lsrs r0, r0, #0x16
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	subs r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0xa
	movs r0, #0xb0
	lsls r0, r0, #7
	b _0805128C
	.align 2, 0
_080511FC: .4byte gUnknown_084AE560
_08051200: .4byte gSineTable
_08051204:
	ldr r1, _0805124C @ =gUnknown_084AE560
	movs r3, #0
	ldrsh r0, [r7, r3]
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0805121A
	b _08051332
_0805121A:
	movs r5, #0xc0
	lsls r5, r5, #7
	adds r4, r7, #0
	adds r4, #0x76
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_804CFE0
	ldrh r0, [r4]
	cmp r0, r5
	beq _08051236
	b _08051332
_08051236:
	ldr r0, [r7, #4]
	adds r1, r0, #0
	adds r0, #1
	str r0, [r7, #4]
	cmp r1, #0x1d
	ble _08051332
	movs r4, #0
	ldrsh r0, [r7, r4]
	adds r1, r6, #0
	b _080512B2
	.align 2, 0
_0805124C: .4byte gUnknown_084AE560
_08051250:
	ldr r1, _080512C0 @ =gUnknown_084AE560
	movs r3, #0
	ldrsh r0, [r7, r3]
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _08051332
	ldr r0, [r7, #4]
	cmp r0, #0x10
	ble _0805126C
	movs r0, #0x10
_0805126C:
	lsls r0, r0, #0x1a
	ldr r1, _080512C4 @ =gSineTable
	lsrs r0, r0, #0x16
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	subs r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0xa
	movs r0, #0xc0
	lsls r0, r0, #7
_0805128C:
	adds r1, r0, #0
	subs r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r7, #0
	adds r0, #0x76
	movs r2, #0x80
	lsls r2, r2, #4
	bl sub_804CFE0
	ldr r0, [r7, #4]
	adds r1, r0, #0
	adds r0, #1
	str r0, [r7, #4]
	cmp r1, #0x4b
	ble _08051332
	movs r1, #0
	ldrsh r0, [r7, r1]
	adds r1, r4, #0
_080512B2:
	lsls r1, r0
	mov r2, sb
	ldr r0, [r2, #0x5c]
	orrs r0, r1
	str r0, [r2, #0x5c]
	b _08051332
	.align 2, 0
_080512C0: .4byte gUnknown_084AE560
_080512C4: .4byte gSineTable
_080512C8:
	adds r0, r7, #0
	adds r0, #0x76
	movs r1, #0xf0
	lsls r1, r1, #8
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_804CFE0
	cmp r0, #0
	beq _08051332
	mov r0, sb
	adds r0, #0x54
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x3b
	ble _08051332
	movs r3, #0
	ldrsh r0, [r7, r3]
	movs r1, #1
	lsls r1, r0
	mov r4, sb
	ldr r0, [r4, #0x5c]
	orrs r0, r1
	str r0, [r4, #0x5c]
	b _08051332
_08051300:
	adds r0, r7, #0
	adds r0, #0x76
	movs r1, #0xd0
	lsls r1, r1, #8
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_804CFE0
	b _08051332
_08051312:
	adds r0, r7, #0
	adds r0, #0x76
	movs r1, #0xf0
	lsls r1, r1, #8
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_804CFE0
	b _08051332
_08051324:
	adds r0, r7, #0
	adds r0, #0x76
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	bl sub_804CFE0
_08051332:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8051344
sub_8051344: @ 0x08051344
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08051460 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	ldr r0, _08051464 @ =gExtraBossTaskData
	ldr r0, [r0]
	str r0, [sp]
	ldr r0, _08051468 @ =0x03000018
	adds r6, r4, r0
	ldr r1, _0805146C @ =0x0300000C
	adds r1, r1, r4
	mov sb, r1
	ldr r5, _08051470 @ =gSineTable
	ldr r2, [r7, #8]
	adds r2, #0x70
	mov r8, r2
	ldrh r1, [r2]
	lsrs r1, r1, #6
	movs r3, #0x80
	lsls r3, r3, #1
	mov ip, r3
	adds r0, r1, r3
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r2, [r7, #0x68]
	adds r3, r2, #0
	muls r3, r0, r3
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r1, [r7, #0x6c]
	mov sl, r1
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	subs r3, r3, r0
	asrs r3, r3, #8
	str r3, [r7, #0x60]
	mov r0, r8
	ldrh r1, [r0]
	lsrs r1, r1, #6
	lsls r0, r1, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r2, r0, r2
	add r1, ip
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	adds r2, r2, r0
	asrs r2, r2, #8
	str r2, [r7, #0x64]
	ldr r1, [r7, #8]
	ldr r0, [r1, #0x50]
	adds r3, r3, r0
	str r3, [r7, #0x50]
	ldr r0, [r1, #0x54]
	adds r2, r2, r0
	str r2, [r7, #0x54]
	ldr r2, _08051474 @ =0x03000076
	adds r1, r4, r2
	mov r3, r8
	ldrh r0, [r3]
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r1, _08051478 @ =0x03000070
	adds r4, r4, r1
	strh r0, [r4]
	ldr r2, [r7, #0x50]
	asrs r2, r2, #8
	ldr r3, _0805147C @ =gCamera
	movs r4, #0
	ldrsh r0, [r3, r4]
	subs r2, r2, r0
	ldr r0, [r7, #0x54]
	asrs r0, r0, #8
	movs r4, #2
	ldrsh r1, [r3, r4]
	subs r0, r0, r1
	mov r1, sb
	strh r2, [r1, #6]
	strh r0, [r1, #8]
	ldr r0, [r6, #0x10]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r2, _08051480 @ =sa2__gUnknown_030054B8
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	movs r0, #0x20
	orrs r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r6, #0x10]
	orrs r0, r1
	str r0, [r6, #0x10]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	mov r1, sb
	bl TransformSprite
	adds r0, r6, #0
	bl DisplaySprite
	ldr r0, [sp]
	adds r0, #0x6e
	ldrb r0, [r0]
	subs r0, #2
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xc
	bls _08051456
	b _080515E4
_08051456:
	lsls r0, r0, #2
	ldr r1, _08051484 @ =_08051488
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08051460: .4byte gCurTask
_08051464: .4byte gExtraBossTaskData
_08051468: .4byte 0x03000018
_0805146C: .4byte 0x0300000C
_08051470: .4byte gSineTable
_08051474: .4byte 0x03000076
_08051478: .4byte 0x03000070
_0805147C: .4byte gCamera
_08051480: .4byte sa2__gUnknown_030054B8
_08051484: .4byte _08051488
_08051488: @ jump table
	.4byte _080514BC @ case 0
	.4byte _080514CC @ case 1
	.4byte _080514F6 @ case 2
	.4byte _08051518 @ case 3
	.4byte _08051538 @ case 4
	.4byte _08051558 @ case 5
	.4byte _08051578 @ case 6
	.4byte _0805158A @ case 7
	.4byte _080515E4 @ case 8
	.4byte _080515E4 @ case 9
	.4byte _080515E4 @ case 10
	.4byte _080515C0 @ case 11
	.4byte _080515D2 @ case 12
_080514BC:
	adds r0, r7, #0
	adds r0, #0x76
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	bl sub_804CFE0
	b _080515F2
_080514CC:
	ldr r1, _080514E8 @ =gUnknown_084AE560
	movs r2, #0
	ldrsh r0, [r7, r2]
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080514EC
	adds r0, r7, #0
	adds r0, #0x76
	movs r1, #0xc0
	lsls r1, r1, #7
	b _08051580
	.align 2, 0
_080514E8: .4byte gUnknown_084AE560
_080514EC:
	adds r0, r7, #0
	adds r0, #0x76
	movs r1, #0xd0
	lsls r1, r1, #7
	b _08051580
_080514F6:
	ldr r1, _08051514 @ =gUnknown_084AE560
	movs r3, #0
	ldrsh r0, [r7, r3]
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080515F2
	adds r0, r7, #0
	adds r0, #0x76
	movs r1, #0xc0
	lsls r1, r1, #7
	b _080515DA
	.align 2, 0
_08051514: .4byte gUnknown_084AE560
_08051518:
	ldr r1, _08051534 @ =gUnknown_084AE560
	movs r4, #0
	ldrsh r0, [r7, r4]
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080515F2
	adds r0, r7, #0
	adds r0, #0x76
	movs r1, #0x80
	lsls r1, r1, #5
	b _080515C8
	.align 2, 0
_08051534: .4byte gUnknown_084AE560
_08051538:
	ldr r1, _08051554 @ =gUnknown_084AE560
	movs r2, #0
	ldrsh r0, [r7, r2]
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080515F2
	adds r0, r7, #0
	adds r0, #0x76
	movs r1, #0xc0
	lsls r1, r1, #7
	b _080515DA
	.align 2, 0
_08051554: .4byte gUnknown_084AE560
_08051558:
	ldr r1, _08051574 @ =gUnknown_084AE560
	movs r3, #0
	ldrsh r0, [r7, r3]
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080515F2
	adds r0, r7, #0
	adds r0, #0x76
	movs r1, #0x80
	lsls r1, r1, #5
	b _080515C8
	.align 2, 0
_08051574: .4byte gUnknown_084AE560
_08051578:
	adds r0, r7, #0
	adds r0, #0x76
	movs r1, #0x80
	lsls r1, r1, #7
_08051580:
	movs r2, #0x80
	lsls r2, r2, #2
	bl sub_804CFE0
	b _080515F2
_0805158A:
	movs r1, #0x80
	lsls r1, r1, #7
	ldr r3, _080515B4 @ =gPseudoRandom
	ldr r2, [r3]
	ldr r0, _080515B8 @ =0x00196225
	muls r0, r2, r0
	ldr r4, _080515BC @ =0x3C6EF35F
	adds r0, r0, r4
	str r0, [r3]
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x14
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r7, #0
	adds r0, #0x76
	movs r2, #0x80
	lsls r2, r2, #5
	bl sub_804CFE0
	b _080515F2
	.align 2, 0
_080515B4: .4byte gPseudoRandom
_080515B8: .4byte 0x00196225
_080515BC: .4byte 0x3C6EF35F
_080515C0:
	adds r0, r7, #0
	adds r0, #0x76
	movs r1, #0x80
	lsls r1, r1, #6
_080515C8:
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_804CFE0
	b _080515F2
_080515D2:
	adds r0, r7, #0
	adds r0, #0x76
	movs r1, #0x80
	lsls r1, r1, #5
_080515DA:
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_804CFE0
	b _080515F2
_080515E4:
	adds r0, r7, #0
	adds r0, #0x76
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	bl sub_804CFE0
_080515F2:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8051604
sub_8051604: @ 0x08051604
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _080517AC @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	ldr r0, [r7, #8]
	mov sl, r0
	ldr r0, _080517B0 @ =gExtraBossTaskData
	ldr r0, [r0]
	str r0, [sp]
	ldr r1, _080517B4 @ =0x03000018
	adds r1, r1, r4
	mov sb, r1
	ldr r2, _080517B8 @ =0x0300000C
	adds r2, r2, r4
	mov r8, r2
	ldr r5, _080517BC @ =gSineTable
	mov ip, r5
	mov r5, sl
	adds r5, #0x70
	ldrh r1, [r5]
	lsrs r1, r1, #6
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r1, r6
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r2, [r7, #0x68]
	adds r3, r2, #0
	muls r3, r0, r3
	lsls r1, r1, #1
	add r1, ip
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r1, [r7, #0x6c]
	muls r0, r1, r0
	subs r3, r3, r0
	asrs r3, r3, #8
	str r3, [r7, #0x60]
	ldrh r1, [r5]
	ldr r0, _080517C0 @ =0x000003FF
	mov r6, sp
	strh r0, [r6, #4]
	lsrs r1, r1, #6
	lsls r0, r1, #1
	add r0, ip
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r2, r0, r2
	movs r6, #0x80
	lsls r6, r6, #1
	adds r1, r1, r6
	lsls r1, r1, #1
	add r1, ip
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r1, [r7, #0x6c]
	muls r0, r1, r0
	adds r2, r2, r0
	asrs r2, r2, #8
	str r2, [r7, #0x64]
	mov r6, sl
	ldr r0, [r6, #0x50]
	adds r3, r3, r0
	str r3, [r7, #0x50]
	ldr r0, [r6, #0x54]
	adds r2, r2, r0
	str r2, [r7, #0x54]
	ldr r0, _080517C4 @ =0x03000076
	adds r1, r4, r0
	ldrh r0, [r5]
	ldrh r1, [r1]
	adds r2, r0, r1
	ldr r1, _080517C8 @ =0x03000070
	adds r4, r4, r1
	strh r2, [r4]
	ldr r0, [r7, #0x50]
	asrs r3, r0, #8
	ldr r4, _080517CC @ =gCamera
	movs r5, #0
	ldrsh r0, [r4, r5]
	subs r0, r3, r0
	str r0, [sp, #8]
	ldr r0, [r7, #0x54]
	asrs r4, r0, #8
	ldr r6, _080517CC @ =gCamera
	movs r1, #2
	ldrsh r0, [r6, r1]
	subs r5, r4, r0
	ldr r6, _080517D0 @ =gPlayer
	movs r1, #0x1c
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bne _0805173E
	ldr r6, [sp]
	ldr r0, [r6, #0x58]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0805173E
	ldr r0, _080517D4 @ =0xFFFFC000
	adds r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x16
	mov r1, sp
	ldrh r1, [r1, #4]
	ands r2, r1
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r2, r6
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	subs r1, r1, r0
	lsls r1, r1, #8
	rsbs r1, r1, #0
	asrs r1, r1, #0x10
	adds r1, r3, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #1
	add r2, ip
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #3
	subs r2, r2, r0
	lsls r2, r2, #8
	rsbs r2, r2, #0
	asrs r2, r2, #0x10
	adds r2, r4, r2
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r0, sb
	ldr r3, _080517D0 @ =gPlayer
	bl sub_800BFEC
_0805173E:
	mov r0, sp
	ldrh r1, [r0, #8]
	mov r0, r8
	strh r1, [r0, #6]
	strh r5, [r0, #8]
	adds r0, r7, #0
	adds r0, #0x70
	ldrh r0, [r0]
	ldr r2, _080517D4 @ =0xFFFFC000
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	mov r4, r8
	strh r0, [r4]
	mov r5, sb
	ldr r0, [r5, #0x10]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	ldr r2, _080517D8 @ =sa2__gUnknown_030054B8
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	movs r0, #0x20
	orrs r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r5, #0x10]
	orrs r0, r1
	str r0, [r5, #0x10]
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, sb
	mov r1, r8
	bl TransformSprite
	mov r0, sb
	bl DisplaySprite
	ldr r0, [sp]
	adds r0, #0x6e
	ldrb r0, [r0]
	subs r0, #2
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xc
	bls _080517A2
	b _080518CA
_080517A2:
	lsls r0, r0, #2
	ldr r1, _080517DC @ =_080517E0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080517AC: .4byte gCurTask
_080517B0: .4byte gExtraBossTaskData
_080517B4: .4byte 0x03000018
_080517B8: .4byte 0x0300000C
_080517BC: .4byte gSineTable
_080517C0: .4byte 0x000003FF
_080517C4: .4byte 0x03000076
_080517C8: .4byte 0x03000070
_080517CC: .4byte gCamera
_080517D0: .4byte gPlayer
_080517D4: .4byte 0xFFFFC000
_080517D8: .4byte sa2__gUnknown_030054B8
_080517DC: .4byte _080517E0
_080517E0: @ jump table
	.4byte _08051814 @ case 0
	.4byte _0805181E @ case 1
	.4byte _080518CA @ case 2
	.4byte _080518CA @ case 3
	.4byte _080518CA @ case 4
	.4byte _080518CA @ case 5
	.4byte _08051828 @ case 6
	.4byte _08051842 @ case 7
	.4byte _080518CA @ case 8
	.4byte _080518CA @ case 9
	.4byte _080518CA @ case 10
	.4byte _080518A8 @ case 11
	.4byte _080518BA @ case 12
_08051814:
	adds r0, r7, #0
	adds r0, #0x76
	movs r1, #0x80
	lsls r1, r1, #7
	b _08051838
_0805181E:
	adds r0, r7, #0
	adds r0, #0x76
	movs r2, #0x80
	lsls r2, r2, #2
	b _080518C2
_08051828:
	adds r0, r7, #0
	adds r0, #0x76
	mov r1, sl
	adds r1, #0x70
	ldrh r1, [r1]
	rsbs r1, r1, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
_08051838:
	movs r2, #0x80
	lsls r2, r2, #2
	bl sub_804CFE0
	b _080518D8
_08051842:
	adds r0, r7, #0
	adds r0, #0x76
	mov r1, sl
	adds r1, #0x70
	ldrh r1, [r1]
	rsbs r1, r1, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	bl sub_804CFE0
	ldr r0, _08051898 @ =gStageTime
	ldr r0, [r0]
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _080518D8
	ldr r3, [r7, #0x50]
	ldr r0, [r7, #0x54]
	movs r6, #0xb8
	lsls r6, r6, #5
	adds r4, r0, r6
	ldr r2, _0805189C @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080518A0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080518A4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r2, #0
	movs r1, #0xc0
	lsls r1, r1, #0xa
	ands r0, r1
	cmp r0, #0
	bne _0805188C
	movs r2, #1
_0805188C:
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_804A8A8
	b _080518D8
	.align 2, 0
_08051898: .4byte gStageTime
_0805189C: .4byte gPseudoRandom
_080518A0: .4byte 0x00196225
_080518A4: .4byte 0x3C6EF35F
_080518A8:
	adds r0, r7, #0
	adds r0, #0x76
	movs r1, #0xb0
	lsls r1, r1, #8
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_804CFE0
	b _080518D8
_080518BA:
	adds r0, r7, #0
	adds r0, #0x76
	movs r2, #0x80
	lsls r2, r2, #1
_080518C2:
	movs r1, #0
	bl sub_804CFE0
	b _080518D8
_080518CA:
	adds r0, r7, #0
	adds r0, #0x76
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	bl sub_804CFE0
_080518D8:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80518E8
sub_80518E8: @ 0x080518E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080519D4 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r6, r4
	ldr r0, [r4, #8]
	mov r8, r0
	ldr r1, _080519D8 @ =0x03000018
	adds r7, r6, r1
	ldr r2, _080519DC @ =gCamera
	mov ip, r2
	ldr r5, _080519E0 @ =gSineTable
	movs r3, #0x70
	add r3, r8
	mov sb, r3
	ldrh r1, [r3]
	lsrs r1, r1, #6
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r2, [r4, #0x68]
	adds r3, r2, #0
	muls r3, r0, r3
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r1, [r4, #0x6c]
	mov sl, r1
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	subs r3, r3, r0
	asrs r3, r3, #8
	str r3, [r4, #0x60]
	mov r0, sb
	ldrh r1, [r0]
	lsrs r1, r1, #6
	lsls r0, r1, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r2, r0, r2
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	adds r2, r2, r0
	asrs r2, r2, #8
	str r2, [r4, #0x64]
	mov r1, r8
	ldr r0, [r1, #0x50]
	adds r3, r3, r0
	str r3, [r4, #0x50]
	ldr r0, [r1, #0x54]
	adds r2, r2, r0
	str r2, [r4, #0x54]
	ldr r2, _080519E4 @ =0x03000076
	adds r5, r6, r2
	mov r3, sb
	ldrh r0, [r3]
	ldrh r1, [r5]
	adds r0, r0, r1
	subs r2, #6
	adds r6, r6, r2
	strh r0, [r6]
	ldr r2, [r4, #0x50]
	asrs r2, r2, #8
	mov r3, ip
	movs r1, #0
	ldrsh r0, [r3, r1]
	subs r2, r2, r0
	ldr r0, [r4, #0x54]
	asrs r0, r0, #8
	movs r4, #2
	ldrsh r1, [r3, r4]
	subs r0, r0, r1
	strh r2, [r7, #0x16]
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_804CFE0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080519D4: .4byte gCurTask
_080519D8: .4byte 0x03000018
_080519DC: .4byte gCamera
_080519E0: .4byte gSineTable
_080519E4: .4byte 0x03000076

	thumb_func_start sub_80519E8
sub_80519E8: @ 0x080519E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08051B0C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	ldr r0, [r7, #8]
	str r0, [sp]
	ldr r0, _08051B10 @ =gExtraBossTaskData
	ldr r0, [r0]
	str r0, [sp, #4]
	ldr r1, _08051B14 @ =0x03000018
	adds r6, r4, r1
	ldr r2, _08051B18 @ =0x0300000C
	adds r2, r2, r4
	mov sl, r2
	ldr r5, _08051B1C @ =gSineTable
	ldr r3, [sp]
	adds r3, #0x70
	mov r8, r3
	ldrh r1, [r3]
	lsrs r1, r1, #6
	movs r0, #0x80
	lsls r0, r0, #1
	mov ip, r0
	adds r0, r1, r0
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r2, [r7, #0x68]
	adds r3, r2, #0
	muls r3, r0, r3
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r1, [r7, #0x6c]
	mov sb, r1
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	subs r3, r3, r0
	asrs r3, r3, #8
	str r3, [r7, #0x60]
	mov r0, r8
	ldrh r1, [r0]
	lsrs r1, r1, #6
	lsls r0, r1, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r2, r0, r2
	add r1, ip
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	adds r2, r2, r0
	asrs r2, r2, #8
	str r2, [r7, #0x64]
	ldr r5, [sp]
	ldr r0, [r5, #0x50]
	adds r3, r3, r0
	str r3, [r7, #0x50]
	ldr r0, [r5, #0x54]
	adds r2, r2, r0
	str r2, [r7, #0x54]
	ldr r0, _08051B20 @ =0x03000076
	adds r1, r4, r0
	mov r2, r8
	ldrh r0, [r2]
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r3, _08051B24 @ =0x03000070
	adds r4, r4, r3
	strh r0, [r4]
	ldr r2, [r7, #0x50]
	asrs r2, r2, #8
	ldr r5, _08051B28 @ =gCamera
	movs r1, #0
	ldrsh r0, [r5, r1]
	subs r2, r2, r0
	ldr r0, [r7, #0x54]
	asrs r0, r0, #8
	movs r3, #2
	ldrsh r1, [r5, r3]
	subs r0, r0, r1
	mov r5, sl
	strh r2, [r5, #6]
	strh r0, [r5, #8]
	ldrh r0, [r4]
	lsrs r0, r0, #6
	strh r0, [r5]
	ldr r0, [r6, #0x10]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r2, _08051B2C @ =sa2__gUnknown_030054B8
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	movs r0, #0x20
	orrs r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r6, #0x10]
	orrs r0, r1
	str r0, [r6, #0x10]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	mov r1, sl
	bl TransformSprite
	adds r0, r6, #0
	bl DisplaySprite
	ldr r0, [sp, #4]
	adds r0, #0x6e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xe
	bls _08051B02
	b _08051C28
_08051B02:
	lsls r0, r0, #2
	ldr r1, _08051B30 @ =_08051B34
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08051B0C: .4byte gCurTask
_08051B10: .4byte gExtraBossTaskData
_08051B14: .4byte 0x03000018
_08051B18: .4byte 0x0300000C
_08051B1C: .4byte gSineTable
_08051B20: .4byte 0x03000076
_08051B24: .4byte 0x03000070
_08051B28: .4byte gCamera
_08051B2C: .4byte sa2__gUnknown_030054B8
_08051B30: .4byte _08051B34
_08051B34: @ jump table
	.4byte _08051BCC @ case 0
	.4byte _08051C28 @ case 1
	.4byte _08051B70 @ case 2
	.4byte _08051B70 @ case 3
	.4byte _08051B80 @ case 4
	.4byte _08051B8C @ case 5
	.4byte _08051C34 @ case 6
	.4byte _08051BA4 @ case 7
	.4byte _08051C28 @ case 8
	.4byte _08051C28 @ case 9
	.4byte _08051C28 @ case 10
	.4byte _08051C28 @ case 11
	.4byte _08051C28 @ case 12
	.4byte _08051BDC @ case 13
	.4byte _08051C16 @ case 14
_08051B70:
	adds r0, r7, #0
	adds r0, #0x76
	movs r2, #0x80
	lsls r2, r2, #2
	movs r1, #0
	bl sub_804CFE0
	b _08051C34
_08051B80:
	adds r0, r7, #0
	adds r0, #0x76
	ldr r1, [sp]
	adds r1, #0x76
	ldrh r1, [r1]
	b _08051C1E
_08051B8C:
	ldr r1, _08051BA0 @ =gUnknown_084AE560
	movs r2, #0
	ldrsh r0, [r7, r2]
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08051C34
	b _08051BB6
	.align 2, 0
_08051BA0: .4byte gUnknown_084AE560
_08051BA4:
	ldr r1, _08051BC8 @ =gUnknown_084AE560
	movs r3, #0
	ldrsh r0, [r7, r3]
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08051C34
_08051BB6:
	adds r0, r7, #0
	adds r0, #0x76
	movs r1, #0xe8
	lsls r1, r1, #8
	movs r2, #0x80
	lsls r2, r2, #2
	bl sub_804CFE0
	b _08051C34
	.align 2, 0
_08051BC8: .4byte gUnknown_084AE560
_08051BCC:
	adds r0, r7, #0
	adds r0, #0x76
	movs r1, #0x80
	lsls r1, r1, #5
	movs r2, #0x80
	bl sub_804CFE0
	b _08051C34
_08051BDC:
	adds r4, r7, #0
	adds r4, #0x76
	movs r5, #0x80
	lsls r5, r5, #7
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_804CFE0
	ldr r0, [sp, #4]
	adds r0, #0x69
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08051C34
	ldrh r0, [r4]
	cmp r0, r5
	bne _08051C34
	movs r5, #0
	ldrsh r0, [r7, r5]
	movs r1, #1
	lsls r1, r0
	ldr r2, [sp, #4]
	ldr r0, [r2, #0x5c]
	orrs r0, r1
	str r0, [r2, #0x5c]
	b _08051C34
_08051C16:
	adds r0, r7, #0
	adds r0, #0x76
	movs r1, #0xe8
	lsls r1, r1, #8
_08051C1E:
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_804CFE0
	b _08051C34
_08051C28:
	adds r0, r7, #0
	adds r0, #0x76
	movs r1, #0
	movs r2, #0x80
	bl sub_804CFE0
_08051C34:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8051C44
sub_8051C44: @ 0x08051C44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08051D64 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	ldr r0, _08051D68 @ =gExtraBossTaskData
	ldr r0, [r0]
	str r0, [sp]
	ldr r0, _08051D6C @ =0x03000018
	adds r6, r4, r0
	ldr r1, _08051D70 @ =0x0300000C
	adds r1, r1, r4
	mov sb, r1
	ldr r5, _08051D74 @ =gSineTable
	ldr r2, [r7, #8]
	adds r2, #0x70
	mov r8, r2
	ldrh r1, [r2]
	lsrs r1, r1, #6
	movs r3, #0x80
	lsls r3, r3, #1
	mov ip, r3
	adds r0, r1, r3
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r2, [r7, #0x68]
	adds r3, r2, #0
	muls r3, r0, r3
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r1, [r7, #0x6c]
	mov sl, r1
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	subs r3, r3, r0
	asrs r3, r3, #8
	str r3, [r7, #0x60]
	mov r0, r8
	ldrh r1, [r0]
	lsrs r1, r1, #6
	lsls r0, r1, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r2, r0, r2
	add r1, ip
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	adds r2, r2, r0
	asrs r2, r2, #8
	str r2, [r7, #0x64]
	ldr r5, [r7, #8]
	ldr r0, [r5, #0x50]
	adds r3, r3, r0
	str r3, [r7, #0x50]
	ldr r0, [r5, #0x54]
	adds r2, r2, r0
	str r2, [r7, #0x54]
	ldr r0, _08051D78 @ =0x03000076
	adds r1, r4, r0
	mov r2, r8
	ldrh r0, [r2]
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r3, _08051D7C @ =0x03000070
	adds r4, r4, r3
	strh r0, [r4]
	ldr r2, [r7, #0x50]
	asrs r2, r2, #8
	ldr r5, _08051D80 @ =gCamera
	movs r1, #0
	ldrsh r0, [r5, r1]
	subs r2, r2, r0
	ldr r0, [r7, #0x54]
	asrs r0, r0, #8
	movs r3, #2
	ldrsh r1, [r5, r3]
	subs r0, r0, r1
	mov r5, sb
	strh r2, [r5, #6]
	strh r0, [r5, #8]
	ldrh r0, [r4]
	lsrs r0, r0, #6
	strh r0, [r5]
	ldr r0, [r6, #0x10]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r2, _08051D84 @ =sa2__gUnknown_030054B8
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	movs r0, #0x20
	orrs r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r6, #0x10]
	orrs r0, r1
	str r0, [r6, #0x10]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	mov r1, sb
	bl TransformSprite
	adds r0, r6, #0
	bl DisplaySprite
	ldr r0, [sp]
	adds r0, #0x6e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xe
	bhi _08051E18
	lsls r0, r0, #2
	ldr r1, _08051D88 @ =_08051D8C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08051D64: .4byte gCurTask
_08051D68: .4byte gExtraBossTaskData
_08051D6C: .4byte 0x03000018
_08051D70: .4byte 0x0300000C
_08051D74: .4byte gSineTable
_08051D78: .4byte 0x03000076
_08051D7C: .4byte 0x03000070
_08051D80: .4byte gCamera
_08051D84: .4byte sa2__gUnknown_030054B8
_08051D88: .4byte _08051D8C
_08051D8C: @ jump table
	.4byte _08051DDC @ case 0
	.4byte _08051DE6 @ case 1
	.4byte _08051DC8 @ case 2
	.4byte _08051E18 @ case 3
	.4byte _08051E18 @ case 4
	.4byte _08051E18 @ case 5
	.4byte _08051E18 @ case 6
	.4byte _08051E18 @ case 7
	.4byte _08051DD2 @ case 8
	.4byte _08051DD2 @ case 9
	.4byte _08051E18 @ case 10
	.4byte _08051E18 @ case 11
	.4byte _08051E18 @ case 12
	.4byte _08051DF6 @ case 13
	.4byte _08051E06 @ case 14
_08051DC8:
	adds r0, r7, #0
	adds r0, #0x76
	movs r2, #0x80
	lsls r2, r2, #2
	b _08051DFE
_08051DD2:
	adds r0, r7, #0
	adds r0, #0x76
	movs r2, #0x80
	lsls r2, r2, #2
	b _08051DFE
_08051DDC:
	adds r0, r7, #0
	adds r0, #0x76
	movs r1, #0x80
	lsls r1, r1, #6
	b _08051DEE
_08051DE6:
	adds r0, r7, #0
	adds r0, #0x76
	movs r1, #0xe0
	lsls r1, r1, #8
_08051DEE:
	movs r2, #0x80
	bl sub_804CFE0
	b _08051E28
_08051DF6:
	adds r0, r7, #0
	adds r0, #0x76
	movs r2, #0x80
	lsls r2, r2, #3
_08051DFE:
	movs r1, #0
	bl sub_804CFE0
	b _08051E28
_08051E06:
	adds r0, r7, #0
	adds r0, #0x76
	movs r1, #0xc0
	lsls r1, r1, #5
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_804CFE0
	b _08051E28
_08051E18:
	adds r0, r7, #0
	adds r0, #0x76
	movs r1, #0x80
	lsls r1, r1, #6
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_804CFE0
_08051E28:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8051E38
sub_8051E38: @ 0x08051E38
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08051F58 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	ldr r0, _08051F5C @ =gExtraBossTaskData
	ldr r0, [r0]
	str r0, [sp]
	ldr r0, _08051F60 @ =0x03000018
	adds r6, r4, r0
	ldr r1, _08051F64 @ =0x0300000C
	adds r1, r1, r4
	mov sb, r1
	ldr r5, _08051F68 @ =gSineTable
	ldr r2, [r7, #8]
	adds r2, #0x70
	mov r8, r2
	ldrh r1, [r2]
	lsrs r1, r1, #6
	movs r3, #0x80
	lsls r3, r3, #1
	mov ip, r3
	adds r0, r1, r3
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r2, [r7, #0x68]
	adds r3, r2, #0
	muls r3, r0, r3
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r1, [r7, #0x6c]
	mov sl, r1
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	subs r3, r3, r0
	asrs r3, r3, #8
	str r3, [r7, #0x60]
	mov r0, r8
	ldrh r1, [r0]
	lsrs r1, r1, #6
	lsls r0, r1, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r2, r0, r2
	add r1, ip
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	adds r2, r2, r0
	asrs r2, r2, #8
	str r2, [r7, #0x64]
	ldr r5, [r7, #8]
	ldr r0, [r5, #0x50]
	adds r3, r3, r0
	str r3, [r7, #0x50]
	ldr r0, [r5, #0x54]
	adds r2, r2, r0
	str r2, [r7, #0x54]
	ldr r0, _08051F6C @ =0x03000076
	adds r1, r4, r0
	mov r2, r8
	ldrh r0, [r2]
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r3, _08051F70 @ =0x03000070
	adds r4, r4, r3
	strh r0, [r4]
	ldr r2, [r7, #0x50]
	asrs r2, r2, #8
	ldr r5, _08051F74 @ =gCamera
	movs r1, #0
	ldrsh r0, [r5, r1]
	subs r2, r2, r0
	ldr r0, [r7, #0x54]
	asrs r0, r0, #8
	movs r3, #2
	ldrsh r1, [r5, r3]
	subs r0, r0, r1
	mov r5, sb
	strh r2, [r5, #6]
	strh r0, [r5, #8]
	ldrh r0, [r4]
	lsrs r0, r0, #6
	strh r0, [r5]
	ldr r0, [r6, #0x10]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r2, _08051F78 @ =sa2__gUnknown_030054B8
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	movs r0, #0x20
	orrs r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r6, #0x10]
	orrs r0, r1
	str r0, [r6, #0x10]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	mov r1, sb
	bl TransformSprite
	adds r0, r6, #0
	bl DisplaySprite
	ldr r0, [sp]
	adds r0, #0x6e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xe
	bhi _0805200C
	lsls r0, r0, #2
	ldr r1, _08051F7C @ =_08051F80
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08051F58: .4byte gCurTask
_08051F5C: .4byte gExtraBossTaskData
_08051F60: .4byte 0x03000018
_08051F64: .4byte 0x0300000C
_08051F68: .4byte gSineTable
_08051F6C: .4byte 0x03000076
_08051F70: .4byte 0x03000070
_08051F74: .4byte gCamera
_08051F78: .4byte sa2__gUnknown_030054B8
_08051F7C: .4byte _08051F80
_08051F80: @ jump table
	.4byte _08051FD8 @ case 0
	.4byte _0805200C @ case 1
	.4byte _0805201A @ case 2
	.4byte _0805201A @ case 3
	.4byte _08051FBC @ case 4
	.4byte _08051FBC @ case 5
	.4byte _08051FBC @ case 6
	.4byte _08051FBC @ case 7
	.4byte _0805200C @ case 8
	.4byte _0805200C @ case 9
	.4byte _0805200C @ case 10
	.4byte _08051FD8 @ case 11
	.4byte _08051FD8 @ case 12
	.4byte _08051FEA @ case 13
	.4byte _08051FFC @ case 14
_08051FBC:
	adds r0, r7, #0
	adds r0, #0x70
	ldrh r1, [r0]
	ldr r0, _08051FD4 @ =0x00000FFF
	cmp r1, r0
	bhi _08051FFC
	adds r0, r7, #0
	adds r0, #0x76
	rsbs r1, r1, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	b _08051FE0
	.align 2, 0
_08051FD4: .4byte 0x00000FFF
_08051FD8:
	adds r0, r7, #0
	adds r0, #0x76
	movs r1, #0xe0
	lsls r1, r1, #8
_08051FE0:
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_804CFE0
	b _0805201A
_08051FEA:
	adds r0, r7, #0
	adds r0, #0x76
	movs r1, #0xf8
	lsls r1, r1, #8
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_804CFE0
	b _0805201A
_08051FFC:
	adds r0, r7, #0
	adds r0, #0x76
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	bl sub_804CFE0
	b _0805201A
_0805200C:
	adds r0, r7, #0
	adds r0, #0x76
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	bl sub_804CFE0
_0805201A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_805202C
sub_805202C: @ 0x0805202C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r0, _080520A4 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r4, r3
	ldr r2, [r3, #8]
	ldr r0, _080520A8 @ =0x03000018
	adds r5, r4, r0
	ldr r6, _080520AC @ =gCamera
	ldr r0, [r3, #0x60]
	ldr r1, [r2, #0x50]
	adds r0, r0, r1
	str r0, [r3, #0x50]
	ldr r0, [r3, #0x64]
	ldr r1, [r2, #0x54]
	adds r0, r0, r1
	str r0, [r3, #0x54]
	ldr r1, _080520B0 @ =0x03000076
	adds r1, r1, r4
	mov r8, r1
	adds r2, #0x70
	ldrh r0, [r2]
	ldrh r2, [r1]
	adds r0, r0, r2
	ldr r1, _080520B4 @ =0x03000070
	adds r4, r4, r1
	strh r0, [r4]
	ldr r2, [r3, #0x50]
	asrs r2, r2, #8
	movs r1, #0
	ldrsh r0, [r6, r1]
	subs r2, r2, r0
	ldr r0, [r3, #0x54]
	asrs r0, r0, #8
	movs r3, #2
	ldrsh r1, [r6, r3]
	subs r0, r0, r1
	strh r2, [r5, #0x16]
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	movs r2, #0x80
	lsls r2, r2, #1
	mov r0, r8
	movs r1, #0
	bl sub_804CFE0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080520A4: .4byte gCurTask
_080520A8: .4byte 0x03000018
_080520AC: .4byte gCamera
_080520B0: .4byte 0x03000076
_080520B4: .4byte 0x03000070

	thumb_func_start sub_80520B8
sub_80520B8: @ 0x080520B8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r2, #0
	ldr r0, _08052138 @ =gStageTime
	ldr r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080520E0
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xe
	bne _08052130
	movs r0, #7
	ands r1, r0
	cmp r1, #0
	bne _08052130
_080520E0:
	ldr r4, _0805213C @ =gPseudoRandom
	ldr r0, [r4]
	ldr r3, _08052140 @ =0x00196225
	muls r0, r3, r0
	ldr r1, _08052144 @ =0x3C6EF35F
	adds r0, r0, r1
	lsls r2, r0, #0xa
	lsrs r2, r2, #0x12
	ldr r6, _08052148 @ =0xFFFFE000
	adds r2, r2, r6
	muls r3, r0, r3
	adds r3, r3, r1
	str r3, [r4]
	lsls r3, r3, #9
	lsrs r3, r3, #0x11
	ldr r0, _0805214C @ =0xFFFFC000
	adds r3, r3, r0
	ldr r1, [r5, #0x60]
	lsls r1, r1, #8
	ldr r0, [r5, #0x44]
	adds r0, r0, r1
	adds r0, r0, r2
	ldr r2, [r5, #0x64]
	lsls r2, r2, #8
	ldr r1, [r5, #0x48]
	adds r1, r1, r2
	adds r1, r1, r3
	bl sub_8017540
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r1, #0x10]
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r1, #0x1a]
	movs r2, #1
_08052130:
	adds r0, r2, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08052138: .4byte gStageTime
_0805213C: .4byte gPseudoRandom
_08052140: .4byte 0x00196225
_08052144: .4byte 0x3C6EF35F
_08052148: .4byte 0xFFFFE000
_0805214C: .4byte 0xFFFFC000

	thumb_func_start sub_8052150
sub_8052150: @ 0x08052150
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	lsls r2, r2, #0x10
	ldr r4, _08052238 @ =gSineTable
	mov r8, r4
	adds r3, #0x70
	ldrh r4, [r3]
	lsrs r4, r4, #6
	movs r5, #0x80
	lsls r5, r5, #1
	mov sb, r5
	adds r3, r4, r5
	lsls r3, r3, #1
	add r3, r8
	ldrh r5, [r3]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x16
	lsls r4, r4, #1
	add r4, r8
	ldrh r6, [r4]
	lsls r6, r6, #0x10
	asrs r6, r6, #0x16
	lsls r4, r5, #4
	subs r4, r4, r5
	lsls r4, r4, #8
	lsls r3, r6, #0xc
	subs r3, r3, r4
	asrs r3, r3, #0x10
	adds r7, r0, r3
	lsls r0, r6, #4
	subs r0, r0, r6
	lsls r0, r0, #8
	lsls r5, r5, #0xc
	rsbs r5, r5, #0
	subs r5, r5, r0
	asrs r5, r5, #0x10
	adds r5, r1, r5
	adds r6, r5, #3
	movs r0, #0
	mov sl, r0
	movs r1, #0
	str r1, [sp, #8]
	lsrs r2, r2, #0x16
	lsls r0, r2, #1
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #8
	add r2, sb
	lsls r2, r2, #1
	add r2, r8
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	bl Div
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r4, #0
	bl Div
	adds r2, r0, #0
	adds r0, r7, #0
	muls r0, r4, r0
	asrs r0, r0, #8
	subs r1, r5, r0
	adds r3, r1, #3
	mov r8, r3
	cmp r7, #0xef
	ble _080521F8
	movs r0, #0xf0
	subs r0, r0, r7
	muls r0, r4, r0
	asrs r0, r0, #8
	adds r5, r5, r0
	adds r6, r6, r0
	movs r7, #0xef
_080521F8:
	cmp r5, #0x9e
	bgt _08052282
	mov sb, r7
	adds r4, r7, #0
	cmp r5, #0
	bge _0805221E
	adds r0, r5, #0
	muls r0, r2, r0
	asrs r0, r0, #8
	subs r4, r7, r0
	movs r5, #0
	cmp r6, #0
	bge _0805221E
	adds r0, r6, #0
	muls r0, r2, r0
	asrs r0, r0, #8
	subs r0, r7, r0
	mov sb, r0
	movs r6, #0
_0805221E:
	adds r0, r5, #0
	cmp r0, #0x9f
	ble _08052226
	movs r0, #0x9f
_08052226:
	adds r5, r0, #0
	cmp r6, #0
	blt _0805223C
	adds r0, r6, #0
	cmp r0, #0x9f
	ble _0805223E
	movs r0, #0x9f
	b _0805223E
	.align 2, 0
_08052238: .4byte gSineTable
_0805223C:
	movs r0, #0
_0805223E:
	adds r6, r0, #0
	mov r0, r8
	cmp r0, #0x9f
	ble _0805226C
	movs r3, #0xa0
	subs r0, r3, r0
	mov r8, r0
	mov r0, r8
	muls r0, r2, r0
	asrs r0, r0, #8
	mov r8, r0
	ldr r0, [sp, #8]
	add r0, r8
	str r0, [sp, #8]
	movs r0, #0x9f
	mov r8, r0
	cmp r1, #0x9f
	ble _0805226C
	subs r0, r3, r1
	muls r0, r2, r0
	asrs r0, r0, #8
	add sl, r0
	movs r1, #0x9f
_0805226C:
	mov r3, sl
	cmp r3, #0xee
	bgt _08052282
	cmp r5, #0x9e
	bgt _08052282
	cmp r7, sl
	beq _08052282
	cmp r5, r1
	beq _08052282
	cmp r6, r8
	bne _08052286
_08052282:
	movs r0, #0
	b _0805231A
_08052286:
	mov r0, sl
	cmp r0, #0
	blt _08052294
	cmp r0, #0xef
	ble _08052296
	movs r0, #0xef
	b _08052296
_08052294:
	movs r0, #0
_08052296:
	mov sl, r0
	ldr r3, [sp, #8]
	cmp r3, #0
	blt _080522A8
	adds r2, r3, #0
	cmp r2, #0xef
	ble _080522AA
	movs r2, #0xef
	b _080522AA
_080522A8:
	movs r2, #0
_080522AA:
	mov r0, sp
	strb r4, [r0]
	strb r5, [r0, #1]
	mov r4, sl
	strb r4, [r0, #2]
	strb r1, [r0, #3]
	mov r1, sb
	strb r1, [r0, #4]
	strb r6, [r0, #5]
	strb r2, [r0, #6]
	mov r3, r8
	strb r3, [r0, #7]
	adds r3, r7, #1
	movs r0, #0
	mov r1, sp
	movs r2, #0
	bl sa2__sub_8006DB4
	cmp r5, #0
	blt _080522DC
	adds r4, r5, #0
	cmp r4, #0x9f
	ble _080522DE
	movs r4, #0x9f
	b _080522DE
_080522DC:
	movs r4, #0
_080522DE:
	mov r5, r8
	cmp r5, #0
	blt _080522EE
	mov r3, r8
	cmp r3, #0x9f
	ble _080522F0
	movs r3, #0x9f
	b _080522F0
_080522EE:
	movs r3, #0
_080522F0:
	ldr r2, _0805232C @ =gDispCnt
	ldrh r0, [r2]
	movs r5, #0x80
	lsls r5, r5, #6
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08052330 @ =gWinRegs
	lsls r0, r4, #8
	orrs r0, r3
	strh r0, [r1, #4]
	ldr r0, _08052334 @ =0x00001F1F
	strh r0, [r1, #0xa]
	ldr r0, _08052338 @ =0x00003F3F
	strh r0, [r1, #8]
	ldr r1, _0805233C @ =gBldRegs
	adds r0, #0x80
	strh r0, [r1]
	movs r0, #0xe
	strh r0, [r1, #4]
	movs r0, #1
_0805231A:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805232C: .4byte gDispCnt
_08052330: .4byte gWinRegs
_08052334: .4byte 0x00001F1F
_08052338: .4byte 0x00003F3F
_0805233C: .4byte gBldRegs

@ Moon Zone Boss / Extra Boss
	thumb_func_start CreateEntity_SuperEggRobot
CreateEntity_SuperEggRobot: @ 0x08052340
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	ldr r0, _0805236C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _08052370
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r5]
	b _080523AC
	.align 2, 0
_0805236C: .4byte gGameMode
_08052370:
	ldr r0, _080523B8 @ =Task_SuperEggRobotInit
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x70
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	strh r7, [r4, #4]
	strh r6, [r4, #6]
	str r5, [r4]
	ldrb r0, [r5]
	strb r0, [r4, #8]
	mov r0, r8
	strb r0, [r4, #9]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r5]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_80504DC
	ldr r0, _080523BC @ =gExtraBossTaskData
	str r4, [r0]
_080523AC:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080523B8: .4byte Task_SuperEggRobotInit
_080523BC: .4byte gExtraBossTaskData

	thumb_func_start sub_80523C0
sub_80523C0: @ 0x080523C0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80523D4
sub_80523D4: @ 0x080523D4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8050194
	cmp r0, #3
	bgt _080523EA
	lsls r1, r0, #8
	adds r0, r4, #0
	adds r0, #0x4e
	strh r1, [r0]
	b _080523F2
_080523EA:
	ldr r0, [r4, #0x58]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x58]
_080523F2:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80523F8
sub_80523F8: @ 0x080523F8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8050194
	cmp r0, #0
	bge _0805241E
	lsls r1, r0, #8
	ldr r0, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x48]
	ldr r0, [r4, #0x58]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x58]
	adds r1, r4, #0
	adds r1, #0x4e
	movs r0, #0
	strh r0, [r1]
_0805241E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8052424
sub_8052424: @ 0x08052424
	push {r4, lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x4c
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, [r3, #0x44]
	adds r0, r0, r1
	str r0, [r3, #0x44]
	movs r1, #0x4e
	adds r1, r1, r3
	mov ip, r1
	movs r4, #0
	ldrsh r1, [r1, r4]
	ldr r0, [r3, #0x48]
	adds r0, r0, r1
	str r0, [r3, #0x48]
	adds r0, r3, #0
	adds r0, #0x50
	ldrh r0, [r0]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	adds r0, r3, #0
	adds r0, #0x52
	ldrh r0, [r0]
	mov r2, ip
	ldrh r2, [r2]
	adds r0, r0, r2
	mov r4, ip
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8052468
sub_8052468: @ 0x08052468
	adds r0, #0x4e
	ldrh r1, [r0]
	adds r1, #0x10
	strh r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_8052474
sub_8052474: @ 0x08052474
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r4, r3, #0
	ldr r1, _080524D4 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	ldr r1, _080524D8 @ =0x00000299
	orrs r0, r1
	ldr r1, _080524DC @ =0xFF00FFFF
	ands r0, r1
	str r0, [sp]
	movs r0, #0x40
	bl VramMalloc
	str r0, [sp, #4]
	ldr r1, _080524E0 @ =sub_8050A88
	ldr r2, _080524E4 @ =TaskDestructor_SomeTaskManager_60_Common
	mov r0, sp
	bl CreateSomeTaskManager_7C_Task
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	str r5, [r0, #8]
	str r6, [r0, #0x68]
	mov r1, r8
	str r1, [r0, #0x6c]
	ldr r1, _080524E8 @ =0x03000072
	adds r2, r2, r1
	ldr r1, _080524EC @ =0x0000FFC0
	strh r1, [r2]
	lsls r4, r4, #6
	strh r4, [r0, #0x32]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r0, #0x28]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080524D4: .4byte 0xFFFF0000
_080524D8: .4byte 0x00000299
_080524DC: .4byte 0xFF00FFFF
_080524E0: .4byte sub_8050A88
_080524E4: .4byte TaskDestructor_SomeTaskManager_60_Common
_080524E8: .4byte 0x03000072
_080524EC: .4byte 0x0000FFC0

	thumb_func_start sub_80524F0
sub_80524F0: @ 0x080524F0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r4, r3, #0
	ldr r1, _0805255C @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	ldr r1, _08052560 @ =0x000002A2
	orrs r0, r1
	ldr r1, _08052564 @ =0xFF00FFFF
	ands r0, r1
	str r0, [sp]
	ldr r0, _08052568 @ =0x06012E00
	str r0, [sp, #4]
	ldr r1, _0805256C @ =sub_8050FB4
	mov r0, sp
	movs r2, #0
	bl CreateSomeTaskManager_7C_Task
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	str r5, [r0, #8]
	str r6, [r0, #0x68]
	mov r1, r8
	str r1, [r0, #0x6c]
	ldr r1, _08052570 @ =0x03000076
	adds r3, r2, r1
	movs r1, #0
	strh r1, [r3]
	ldr r1, _08052574 @ =0x03000072
	adds r2, r2, r1
	movs r1, #0x80
	strh r1, [r2]
	lsls r4, r4, #6
	strh r4, [r0, #0x32]
	movs r1, #0x81
	lsls r1, r1, #6
	str r1, [r0, #0x28]
	movs r1, #0xc0
	lsls r1, r1, #1
	strh r1, [r0, #0xe]
	strh r1, [r0, #0x10]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0805255C: .4byte 0xFFFF0000
_08052560: .4byte 0x000002A2
_08052564: .4byte 0xFF00FFFF
_08052568: .4byte 0x06012E00
_0805256C: .4byte sub_8050FB4
_08052570: .4byte 0x03000076
_08052574: .4byte 0x03000072

	thumb_func_start sub_8052578
sub_8052578: @ 0x08052578
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r4, r3, #0
	ldr r1, _080525CC @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	ldr r1, _080525D0 @ =0x000002A2
	orrs r0, r1
	ldr r1, _080525D4 @ =0xFF00FFFF
	ands r0, r1
	str r0, [sp]
	ldr r0, _080525D8 @ =0x06012E00
	str r0, [sp, #4]
	ldr r1, _080525DC @ =sub_80518E8
	mov r0, sp
	movs r2, #0
	bl CreateSomeTaskManager_7C_Task
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r5, [r0, #8]
	str r6, [r0, #0x68]
	mov r1, r8
	str r1, [r0, #0x6c]
	lsls r4, r4, #6
	strh r4, [r0, #0x32]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r0, #0x28]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080525CC: .4byte 0xFFFF0000
_080525D0: .4byte 0x000002A2
_080525D4: .4byte 0xFF00FFFF
_080525D8: .4byte 0x06012E00
_080525DC: .4byte sub_80518E8

	thumb_func_start sub_80525E0
sub_80525E0: @ 0x080525E0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r4, r3, #0
	ldr r1, _08052644 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	ldr r1, _08052648 @ =0x000002A2
	orrs r0, r1
	ldr r1, _0805264C @ =0xFF00FFFF
	ands r0, r1
	str r0, [sp]
	ldr r0, _08052650 @ =0x06012E00
	str r0, [sp, #4]
	ldr r1, _08052654 @ =sub_8051344
	mov r0, sp
	movs r2, #0
	bl CreateSomeTaskManager_7C_Task
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	str r5, [r0, #8]
	ldr r1, _08052658 @ =0x03000072
	adds r2, r2, r1
	movs r1, #0x80
	strh r1, [r2]
	str r6, [r0, #0x68]
	mov r1, r8
	str r1, [r0, #0x6c]
	lsls r4, r4, #6
	strh r4, [r0, #0x32]
	movs r1, #0x81
	lsls r1, r1, #6
	str r1, [r0, #0x28]
	movs r1, #0xa0
	lsls r1, r1, #1
	strh r1, [r0, #0xe]
	strh r1, [r0, #0x10]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08052644: .4byte 0xFFFF0000
_08052648: .4byte 0x000002A2
_0805264C: .4byte 0xFF00FFFF
_08052650: .4byte 0x06012E00
_08052654: .4byte sub_8051344
_08052658: .4byte 0x03000072

	thumb_func_start sub_805265C
sub_805265C: @ 0x0805265C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r4, r3, #0
	ldr r1, _080526B0 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	ldr r1, _080526B4 @ =0x000002A1
	orrs r0, r1
	ldr r1, _080526B8 @ =0xFF00FFFF
	ands r0, r1
	str r0, [sp]
	ldr r0, _080526BC @ =0x06012600
	str r0, [sp, #4]
	ldr r1, _080526C0 @ =sub_8051604
	mov r0, sp
	movs r2, #0
	bl CreateSomeTaskManager_7C_Task
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r5, [r0, #8]
	str r6, [r0, #0x68]
	mov r1, r8
	str r1, [r0, #0x6c]
	lsls r4, r4, #6
	strh r4, [r0, #0x32]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r0, #0x28]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080526B0: .4byte 0xFFFF0000
_080526B4: .4byte 0x000002A1
_080526B8: .4byte 0xFF00FFFF
_080526BC: .4byte 0x06012600
_080526C0: .4byte sub_8051604

	thumb_func_start sub_80526C4
sub_80526C4: @ 0x080526C4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r0, r3, #0
	ldr r4, [sp, #0x14]
	ldr r1, _08052714 @ =sub_80519E8
	ldr r2, _08052718 @ =TaskDestructor_SomeTaskManager_60_Common
	bl CreateSomeTaskManager_7C_Task
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	str r5, [r0, #8]
	str r6, [r0, #0x68]
	mov r1, r8
	str r1, [r0, #0x6c]
	ldr r1, _0805271C @ =0x03000076
	adds r3, r2, r1
	movs r1, #0
	strh r1, [r3]
	ldr r1, _08052720 @ =0x03000072
	adds r2, r2, r1
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r2]
	lsls r4, r4, #6
	strh r4, [r0, #0x32]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r0, #0x28]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08052714: .4byte sub_80519E8
_08052718: .4byte TaskDestructor_SomeTaskManager_60_Common
_0805271C: .4byte 0x03000076
_08052720: .4byte 0x03000072

	thumb_func_start sub_8052724
sub_8052724: @ 0x08052724
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r0, r3, #0
	ldr r4, [sp, #0x14]
	ldr r1, _08052770 @ =sub_805202C
	ldr r2, _08052774 @ =TaskDestructor_SomeTaskManager_60_Common
	bl CreateSomeTaskManager_7C_Task
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r5, [r0, #8]
	str r6, [r0, #0x68]
	mov r2, r8
	str r2, [r0, #0x6c]
	ldr r3, _08052778 @ =0x03000076
	adds r2, r1, r3
	movs r3, #0
	strh r3, [r2]
	ldr r2, _0805277C @ =0x03000072
	adds r1, r1, r2
	strh r3, [r1]
	lsls r4, r4, #6
	strh r4, [r0, #0x32]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r0, #0x28]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08052770: .4byte sub_805202C
_08052774: .4byte TaskDestructor_SomeTaskManager_60_Common
_08052778: .4byte 0x03000076
_0805277C: .4byte 0x03000072

	thumb_func_start sub_8052780
sub_8052780: @ 0x08052780
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r0, r3, #0
	ldr r4, [sp, #0x14]
	ldr r1, _080527CC @ =sub_8051C44
	ldr r2, _080527D0 @ =TaskDestructor_SomeTaskManager_60_Common
	bl CreateSomeTaskManager_7C_Task
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	str r5, [r0, #8]
	str r6, [r0, #0x68]
	mov r1, r8
	str r1, [r0, #0x6c]
	ldr r1, _080527D4 @ =0x03000076
	adds r3, r2, r1
	movs r1, #0
	strh r1, [r3]
	ldr r1, _080527D8 @ =0x03000072
	adds r2, r2, r1
	movs r1, #0x80
	strh r1, [r2]
	lsls r4, r4, #6
	strh r4, [r0, #0x32]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r0, #0x28]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080527CC: .4byte sub_8051C44
_080527D0: .4byte TaskDestructor_SomeTaskManager_60_Common
_080527D4: .4byte 0x03000076
_080527D8: .4byte 0x03000072

	thumb_func_start sub_80527DC
sub_80527DC: @ 0x080527DC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r0, r3, #0
	ldr r4, [sp, #0x14]
	ldr r1, _08052828 @ =sub_8051E38
	ldr r2, _0805282C @ =TaskDestructor_SomeTaskManager_60_Common
	bl CreateSomeTaskManager_7C_Task
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	str r5, [r0, #8]
	str r6, [r0, #0x68]
	mov r1, r8
	str r1, [r0, #0x6c]
	ldr r1, _08052830 @ =0x03000076
	adds r3, r2, r1
	movs r1, #0
	strh r1, [r3]
	ldr r1, _08052834 @ =0x03000072
	adds r2, r2, r1
	movs r1, #0x80
	strh r1, [r2]
	lsls r4, r4, #6
	strh r4, [r0, #0x32]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r0, #0x28]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08052828: .4byte sub_8051E38
_0805282C: .4byte TaskDestructor_SomeTaskManager_60_Common
_08052830: .4byte 0x03000076
_08052834: .4byte 0x03000072

	thumb_func_start sub_8052838
sub_8052838: @ 0x08052838
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r4, r3, #0
	ldr r1, _08052894 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	ldr r1, _08052898 @ =0x0000029A
	orrs r0, r1
	ldr r1, _0805289C @ =0xFF00FFFF
	ands r0, r1
	str r0, [sp]
	ldr r0, _080528A0 @ =0x06004040
	str r0, [sp, #4]
	ldr r1, _080528A4 @ =sub_8050888
	mov r0, sp
	movs r2, #0
	bl CreateSomeTaskManager_7C_Task
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	str r5, [r0, #8]
	str r6, [r0, #0x60]
	mov r1, r8
	str r1, [r0, #0x64]
	ldr r1, _080528A8 @ =0x03000072
	adds r2, r2, r1
	movs r1, #0
	strh r1, [r2]
	lsls r4, r4, #6
	strh r4, [r0, #0x32]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r0, #0x28]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08052894: .4byte 0xFFFF0000
_08052898: .4byte 0x0000029A
_0805289C: .4byte 0xFF00FFFF
_080528A0: .4byte 0x06004040
_080528A4: .4byte sub_8050888
_080528A8: .4byte 0x03000072
