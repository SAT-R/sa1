.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
	thumb_func_start StageBgUpdate_Zone6Act1
StageBgUpdate_Zone6Act1: @ 0x0803EE84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r3, r0, #0
	ldr r0, _0803EEF4 @ =gCamera
	mov r8, r0
	movs r1, #0x10
	ldrsh r0, [r0, r1]
	subs r3, r3, r0
	mov r2, r8          @ r2 = r8 = gCamera
	ldrh r4, [r2, #0x26]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0
	beq _0803EEB0
	b _0803F3F0_return
_0803EEB0:
	ldr r0, _0803EEF8 @ =gBossIndex
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803EF0C
	ldr r2, _0803EEFC @ =gBgCntRegs
	ldrh r1, [r2, #6]
	ldr r0, _0803EF00 @ =0x00003FFF
	ands r0, r1
	movs r4, #0x80
	lsls r4, r4, #8
	adds r1, r4, #0
	orrs r0, r1
	ldr r1, _0803EF04 @ =0x0000E0FF
	ands r0, r1
	movs r5, #0xe0
	lsls r5, r5, #5
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2, #6]
	lsls r0, r3, #4
	movs r1, #0xcc
	lsls r1, r1, #2
	bl Div
	ldr r1, _0803EF08 @ =gBgScrollRegs
	mov r6, r8          @ r6 = r8 = gCamera
	strh r0, [r6, #0x28]
	strh r0, [r1, #0xc]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #0x2a]
	strh r0, [r1, #0xe]
	b _0803F3F0_return
	.align 2, 0
_0803EEF4: .4byte gCamera
_0803EEF8: .4byte gBossIndex
_0803EEFC: .4byte gBgCntRegs
_0803EF00: .4byte 0x00003FFF
_0803EF04: .4byte 0x0000E0FF
_0803EF08: .4byte gBgScrollRegs
_0803EF0C:
	cmp r0, #2
	bhi _0803EFFC
	movs r5, #0x80
	lsls r5, r5, #8
	adds r0, r5, #0
	ands r0, r4
	cmp r0, #0
	bne _0803EF80
	ldr r2, _0803EF68 @ =gBgCntRegs
	ldrh r1, [r2, #6]
	ldr r0, _0803EF6C @ =0x00003FFF
	ands r0, r1
	orrs r0, r5
	ldr r1, _0803EF70 @ =0x0000E0FF
	ands r0, r1
	movs r4, #0xe0
	lsls r4, r4, #5
	adds r1, r4, #0
	movs r4, #0
	orrs r0, r1
	strh r0, [r2, #6]
	lsls r0, r3, #4
	movs r1, #0xcc
	lsls r1, r1, #2
	bl Div
	ldr r2, _0803EF74 @ =gBgScrollRegs
	mov r6, r8          @ r6 = r8 = gCamera
	strh r0, [r6, #0x28]
	strh r0, [r2, #0xc]
	ldr r0, _0803EF78 @ =gStageTime
	ldr r0, [r0]
	lsls r0, r0, #1
	rsbs r0, r0, #0
	ldr r1, _0803EF7C @ =0x000001FF
	ands r0, r1
	movs r3, #0xe
	ldrsh r1, [r2, r3]
	cmp r0, r1
	beq _0803EF5E
	b _0803F3F0_return
_0803EF5E:
	ldrh r1, [r6, #0x26]
	adds r0, r5, #0
	orrs r0, r1
	strh r0, [r6, #0x26]
	b _0803F3F0_return
	.align 2, 0
_0803EF68: .4byte gBgCntRegs
_0803EF6C: .4byte 0x00003FFF
_0803EF70: .4byte 0x0000E0FF
_0803EF74: .4byte gBgScrollRegs
_0803EF78: .4byte gStageTime
_0803EF7C: .4byte 0x000001FF
_0803EF80:
	ldr r3, _0803EFD4 @ =gStageTime
	ldr r0, [r3]
	lsls r0, r0, #1
	rsbs r0, r0, #0
	ldr r4, _0803EFD8 @ =0x000001FF
	ands r0, r4
	ldr r5, _0803EFDC @ =gBgCntRegs
	mov ip, r5
	cmp r0, #0
	bne _0803EF9C
	ldrh r1, [r5, #6]
	ldr r0, _0803EFE0 @ =0x00003FFF
	ands r0, r1
	strh r0, [r5, #6]
_0803EF9C:
	mov r6, ip      @ r6 = ip = gBgCntRegs
	ldrh r1, [r6, #6]
	ldr r0, _0803EFE4 @ =0x0000E0FF
	ands r0, r1
	movs r2, #0xe0
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r6, #6]
	ldr r2, _0803EFE8 @ =gBgScrollRegs
	mov r5, r8          @ r5 = r8 = gCamera
	strh r7, [r5, #0x28]    @ r7 = 0
	strh r7, [r2, #0xc]
	ldrh r1, [r6, #6]
	movs r0, #0xc0
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0803EFEC
	ldr r0, [r3]
	lsls r0, r0, #1
	rsbs r0, r0, #0
	movs r1, #0xff
	ands r0, r1
	strh r0, [r5, #0x2a]
	strh r0, [r2, #0xe]
	b _0803F3F0_return
	.align 2, 0
_0803EFD4: .4byte gStageTime
_0803EFD8: .4byte 0x000001FF
_0803EFDC: .4byte gBgCntRegs
_0803EFE0: .4byte 0x00003FFF
_0803EFE4: .4byte 0x0000E0FF
_0803EFE8: .4byte gBgScrollRegs
_0803EFEC:
	ldr r0, [r3]
	lsls r0, r0, #1
	rsbs r0, r0, #0
	ands r0, r4
	mov r6, r8          @ r6 = r8 = gCamera
	strh r0, [r6, #0x2a]
	strh r0, [r2, #0xe]
	b _0803F3F0_return
_0803EFFC:
	cmp r0, #3
	beq _0803F002_chkpt_3
	b _0803F3F0_return
_0803F002_chkpt_3:
	ldr r0, _0803F078 @ =gBgCntRegs
	mov sb, r0
	ldrh r5, [r0, #6]
	movs r1, #0xf8
	lsls r1, r1, #5
	ands r1, r5
	movs r0, #0xe0
	lsls r0, r0, #5
	mov ip, sb
	cmp r1, r0
	bne _0803F090
	ldr r3, _0803F07C @ =gBgScrollRegs
	mov r1, r8          @ r1 = r8 = gCamera
	strh r7, [r1, #0x28]    @ r7 = 0
	strh r7, [r3, #0xc]
	ldr r0, _0803F080 @ =gStageTime
	ldr r1, [r0]
	lsls r1, r1, #1
	rsbs r1, r1, #0
	movs r2, #0xff
	adds r0, r1, #0
	ands r0, r2
	mov r2, r8          @ r2 = r8 = gCamera
	strh r0, [r2, #0x2a]
	strh r0, [r3, #0xe]
	ldr r2, _0803F084 @ =0x000001FF
	ands r2, r1
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	beq _0803F042
	b _0803F3F0_return
_0803F042:
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r4
	cmp r0, #0
	bne _0803F04E
	b _0803F3F0_return
_0803F04E:
	mov r4, r8          @ r4 = r8 = gCamera
	strh r2, [r4, #0x2a]
	strh r2, [r3, #0xe]
	ldr r0, _0803F088 @ =0x00003FFF
	ands r0, r5
	movs r5, #0x80
	lsls r5, r5, #8
	adds r1, r5, #0
	orrs r0, r1
	movs r1, #0
	orrs r0, r1
	ldr r1, _0803F08C @ =0x0000E0FF
	ands r0, r1
	movs r6, #0xd8
	lsls r6, r6, #5
	adds r1, r6, #0
	orrs r0, r1
	mov r1, sb
	strh r0, [r1, #6]
	b _0803F3F0_return
	.align 2, 0
_0803F078: .4byte gBgCntRegs
_0803F07C: .4byte gBgScrollRegs
_0803F080: .4byte gStageTime
_0803F084: .4byte 0x000001FF
_0803F088: .4byte 0x00003FFF
_0803F08C: .4byte 0x0000E0FF
_0803F090:
	movs r0, #0xd8
	lsls r0, r0, #5
	cmp r1, r0
	bne _0803F104
	ldr r4, _0803F0F0 @ =gBgScrollRegs
	mov r2, r8          @ r2 = r8 = gCamera
	strh r7, [r2, #0x28]    @ r7 = 0
	strh r7, [r4, #0xc]
	ldr r0, _0803F0F4 @ =gStageTime
	ldr r0, [r0]
	lsls r3, r0, #1
	rsbs r1, r3, #0
	ldr r6, _0803F0F8 @ =0x000001FF
	adds r2, r6, #0
	adds r0, r1, #0
	ands r0, r2
	mov r2, r8          @ r2 = r8 = gCamera
	strh r0, [r2, #0x2a]
	strh r0, [r4, #0xe]
	adds r2, r6, #0
	ands r1, r2
	cmp r1, #0
	beq _0803F0C0
	b _0803F3F0_return
_0803F0C0:
	subs r6, #0xff
	adds r0, r3, r6
	rsbs r0, r0, #0
	ands r0, r2
	mov r1, r8          @ r1 = r8 = gCamera
	strh r0, [r1, #0x2a]
	strh r0, [r4, #0xe]
	ldr r0, _0803F0FC @ =0x00003FFF
	ands r0, r5
	movs r2, #0x80
	lsls r2, r2, #8
	adds r1, r2, #0
	orrs r0, r1
	movs r1, #0
	orrs r0, r1
	ldr r1, _0803F100 @ =0x0000E0FF
	ands r0, r1
	movs r3, #0xd0
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	mov r4, sb
	strh r0, [r4, #6]
	b _0803F3F0_return
	.align 2, 0
_0803F0F0: .4byte gBgScrollRegs
_0803F0F4: .4byte gStageTime
_0803F0F8: .4byte 0x000001FF
_0803F0FC: .4byte 0x00003FFF
_0803F100: .4byte 0x0000E0FF
_0803F104:
	movs r0, #0xc0
	lsls r0, r0, #8
	ands r0, r5
	movs r6, #0x80
	lsls r6, r6, #8
	cmp r0, r6
	beq _0803F114
	b _0803F2A2
_0803F114:
	ldr r2, _0803F1A4 @ =gBgScrollRegs
	mov r0, r8          @ r0 = r8 = gCamera
	strh r7, [r0, #0x28]    @ r7 = 0
	strh r7, [r2, #0xc]
	ldr r3, _0803F1A8 @ =gStageTime
	ldr r4, [r3]
	lsls r0, r4, #1
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	rsbs r0, r0, #0
	ldr r6, _0803F1AC @ =0x000001FF
	adds r1, r6, #0
	ands r0, r1
	mov r1, r8          @ r1 = r8 = gCamera
	strh r0, [r1, #0x2a]
	strh r0, [r2, #0xe]
	mov sl, r2          @ sl = r2 = gBgScrollRegs
	cmp r0, #0x9f
	bgt _0803F1EA
	ldr r1, _0803F1B0 @ =gDispCnt
	ldrh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	orrs r0, r2
	strh r0, [r1]
	ldr r2, _0803F1B4 @ =0x00003FFF
	adds r0, r2, #0
	ands r0, r5
	ldr r1, _0803F1B8 @ =0x0000E0FF
	ands r0, r1
	movs r3, #0xd0
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	mov r5, sb
	strh r0, [r5]
	mov r6, r8          @ r6 = r8 = gCamera
	strh r7, [r6, #0x28]    @ r7 = 0
	mov r0, sl
	strh r7, [r0]
	lsrs r0, r4, #3
	movs r1, #0xff
	ands r0, r1
	strh r0, [r6, #0x2a]
	mov r1, sl          @ r1 = sl = gBgScrollRegs
	strh r0, [r1, #2]
	ldr r1, _0803F1BC @ =gBldRegs
	movs r0, #0x81
	strh r0, [r1]
	strh r7, [r1, #4]
	ldr r0, _0803F1C0 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0803F1D4
	ldr r3, _0803F1C4 @ =gHBlankCallbacks
	ldr r2, _0803F1C8 @ =gNumHBlankCallbacks
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	ldr r1, _0803F1CC @ =HBlankCallback_803FA1C
	str r1, [r0]
	ldr r2, _0803F1D0 @ =gFlags
	ldr r0, [r2]
	movs r1, #8
	orrs r0, r1
	str r0, [r2]
	b _0803F1EA
	.align 2, 0
_0803F1A4: .4byte gBgScrollRegs
_0803F1A8: .4byte gStageTime
_0803F1AC: .4byte 0x000001FF
_0803F1B0: .4byte gDispCnt
_0803F1B4: .4byte 0x00003FFF
_0803F1B8: .4byte 0x0000E0FF
_0803F1BC: .4byte gBldRegs
_0803F1C0: .4byte gGameMode
_0803F1C4: .4byte gHBlankCallbacks
_0803F1C8: .4byte gNumHBlankCallbacks
_0803F1CC: .4byte HBlankCallback_803FA1C
_0803F1D0: .4byte gFlags
_0803F1D4:
	mov r3, sb          @ r3 = sb = gBgCntRegs
	ldrh r0, [r3]
	adds r1, r2, #0
	ands r1, r0
	movs r4, #0x80
	lsls r4, r4, #8
	orrs r1, r4
	strh r1, [r3]
	movs r0, #0xa0
	mov r5, sl          @ r5 = sl = gBgScrollRegs
	strh r0, [r5, #2]
_0803F1EA:
	mov r6, sl
	movs r0, #0xe
	ldrsh r4, [r6, r0]
	cmp r4, #0
	beq _0803F1F6
	b _0803F3F0_return
_0803F1F6:
	ldr r1, _0803F264 @ =gStageTime
	ldr r2, [r1]
	lsls r0, r2, #1
	rsbs r0, r0, #0
	movs r3, #0xff
	ands r0, r3
	mov r5, r8          @ r5 = r8 = gCamera
	strh r0, [r5, #0x2a]
	strh r0, [r6, #0xe]
	mov r6, ip
	ldrh r1, [r6, #6]
	ldr r6, _0803F268 @ =0x00003FFF
	adds r0, r6, #0
	ands r0, r1
	ldr r1, _0803F26C @ =0x0000E0FF
	ands r0, r1
	movs r5, #0xd0
	lsls r5, r5, #5
	adds r1, r5, #0
	movs r5, #0
	orrs r0, r1
	mov r1, ip
	strh r0, [r1, #6]
	mov r0, r8          @ r0 = r8 = gCamera
	strh r4, [r0, #0x28]
	mov r1, sl
	strh r4, [r1]
	lsrs r2, r2, #1
	ands r2, r3
	strh r2, [r0, #0x2a]
	strh r2, [r1, #2]
	ldr r1, _0803F270 @ =gBldRegs
	movs r0, #0x81
	strh r0, [r1]
	strh r4, [r1, #4]
	ldr r0, _0803F274 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0803F288
	ldr r3, _0803F278 @ =gHBlankCallbacks
	ldr r2, _0803F27C @ =gNumHBlankCallbacks
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	ldr r1, _0803F280 @ =HBlankCallback_803FA1C
	str r1, [r0]
	ldr r2, _0803F284 @ =gFlags
	ldr r0, [r2]
	movs r1, #8
	orrs r0, r1
	str r0, [r2]
	b _0803F3F0_return
	.align 2, 0
_0803F264: .4byte gStageTime
_0803F268: .4byte 0x00003FFF
_0803F26C: .4byte 0x0000E0FF
_0803F270: .4byte gBldRegs
_0803F274: .4byte gGameMode
_0803F278: .4byte gHBlankCallbacks
_0803F27C: .4byte gNumHBlankCallbacks
_0803F280: .4byte HBlankCallback_803FA1C
_0803F284: .4byte gFlags
_0803F288:
	mov r2, ip
	ldrh r1, [r2]
	adds r0, r6, #0
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #8
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0xa0
	mov r4, sl
	strh r0, [r4, #2]
	b _0803F3F0_return
_0803F2A2:
	ldr r6, _0803F31C @ =0x00003FFF
	mov ip, r6
	mov r0, ip
	ands r0, r5
	ldr r5, _0803F320 @ =0x0000E0FF
	ands r0, r5
	movs r1, #0xd0
	lsls r1, r1, #5
	adds r4, r1, #0
	orrs r0, r4
	mov r2, sb
	strh r0, [r2, #6]
	ldr r2, _0803F324 @ =gBgScrollRegs
	strh r7, [r2, #0xc]    @ r7 = 0
	ldr r0, _0803F328 @ =gStageTime
	ldr r1, [r0]
	lsrs r0, r1, #6
	movs r3, #0xff
	ands r0, r3
	strh r0, [r2, #0xe]
	mov r6, sb
	ldrh r0, [r6]
	mov r6, ip
	ands r6, r0
	ands r6, r5
	orrs r6, r4
	mov r0, sb
	strh r6, [r0]
	movs r0, #0x74
	mov r4, r8          @ r4 = r8 = gCamera
	strh r0, [r4, #0x28]
	strh r0, [r2]
	lsrs r1, r1, #3
	ands r1, r3
	strh r1, [r4, #0x2a]
	strh r1, [r2, #2]
	ldr r1, _0803F32C @ =gBldRegs
	movs r0, #0x81
	strh r0, [r1]
	strh r7, [r1, #4]
	ldr r0, _0803F330 @ =gGameMode
	ldrb r0, [r0]
	mov sl, r2
	cmp r0, #1
	bhi _0803F344
	ldr r3, _0803F334 @ =gHBlankCallbacks
	ldr r2, _0803F338 @ =gNumHBlankCallbacks
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	ldr r1, _0803F33C @ =HBlankCallback_803FA1C
	str r1, [r0]
	ldr r2, _0803F340 @ =gFlags
	ldr r0, [r2]
	movs r1, #8
	orrs r0, r1
	str r0, [r2]
	b _0803F358
	.align 2, 0
_0803F31C: .4byte 0x00003FFF
_0803F320: .4byte 0x0000E0FF
_0803F324: .4byte gBgScrollRegs
_0803F328: .4byte gStageTime
_0803F32C: .4byte gBldRegs
_0803F330: .4byte gGameMode
_0803F334: .4byte gHBlankCallbacks
_0803F338: .4byte gNumHBlankCallbacks
_0803F33C: .4byte HBlankCallback_803FA1C
_0803F340: .4byte gFlags
_0803F344:
	mov r5, ip
	ands r6, r5
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r6, r0
	mov r1, sb
	strh r6, [r1]
	movs r0, #0xa0
	mov r2, sl
	strh r0, [r2, #2]
_0803F358:
	mov r3, r8          @ r3 = r8 = gCamera
	ldrh r1, [r3, #0x26]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0803F3F0_return
	mov r4, sl          @ r4 = sl = 
	ldrh r3, [r4]
	ldrh r0, [r4, #2]
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0x64
	bl sa2__sub_80078D4
	movs r0, #0xa0
	str r0, [sp]
	movs r0, #0
	movs r1, #0x64
	movs r2, #0x68
	movs r3, #0
	bl sa2__sub_80078D4
	ldr r6, _0803F3B4 @ =gStageTime
	ldr r0, [r6]
	lsrs r2, r0, #5
	movs r1, #0x7f
	ands r1, r2
	movs r0, #0x80
	subs r0, r0, r1
	cmp r0, #0x38
	bls _0803F3B8
	movs r0, #0x7f
	ands r2, r0
	adds r0, r2, #0
	adds r0, #0xa0
	str r0, [sp]
	movs r0, #0
	movs r1, #0x68
	movs r2, #0xa0
	movs r3, #0
	bl sa2__sub_80078D4
	b _0803F3F0_return
	.align 2, 0
_0803F3B4: .4byte gStageTime
_0803F3B8:
	movs r5, #0x7f
	adds r0, r2, #0
	ands r0, r5
	movs r4, #0xe8
	subs r2, r4, r0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, #0xa0
	str r0, [sp]
	movs r0, #0
	movs r1, #0x68
	movs r3, #0
	bl sa2__sub_80078D4
	ldr r0, [r6]
	lsrs r0, r0, #5
	ands r0, r5
	subs r4, r4, r0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, #0x20
	str r0, [sp]
	movs r0, #0
	adds r1, r4, #0
	movs r2, #0xa0
	movs r3, #0
	bl sa2__sub_80078D4
_0803F3F0_return:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
.endif
