.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start GameInit
GameInit: @ 0x080003EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r1, _08000444 @ =0x04000204
	ldr r2, _08000448 @ =0x00004014
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _0800044C @ =gFlags
	movs r1, #0
	str r1, [r2]
	ldr r0, _08000450 @ =gUnknown_03002030
	str r1, [r0]
	ldr r0, _08000454 @ =0x04000134
	ldrh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #8
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #8
	cmp r0, r1
	beq _08000432
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r2]
	ldr r1, _08000458 @ =0x040000D4
	ldr r0, _0800045C @ =0x06010000
	str r0, [r1]
	ldr r0, _08000460 @ =gUnknown_0203B000
	str r0, [r1, #4]
	ldr r0, _08000464 @ =0x80002800
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08000432:
	ldr r0, _08000468 @ =gInput
	ldrh r0, [r0]
	cmp r0, #0xf
	bne _0800046C
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	b _08000472
	.align 2, 0
_08000444: .4byte 0x04000204
_08000448: .4byte 0x00004014
_0800044C: .4byte gFlags
_08000450: .4byte gUnknown_03002030
_08000454: .4byte 0x04000134
_08000458: .4byte 0x040000D4
_0800045C: .4byte 0x06010000
_08000460: .4byte gUnknown_0203B000
_08000464: .4byte 0x80002800
_08000468: .4byte gInput
_0800046C:
	ldr r0, [r2]
	ldr r1, _080006E4 @ =0xFFFFEFFF
	ands r0, r1
_08000472:
	str r0, [r2]
	movs r2, #0
	str r2, [sp]
	ldr r0, _080006E8 @ =0x040000D4
	mov r3, sp
	str r3, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r1, _080006EC @ =0x85006000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r2, [sp]
	str r3, [r0]
	movs r1, #0xe0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r3, _080006F0 @ =0x85000100
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	str r2, [sp]
	mov r1, sp
	str r1, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	ldr r3, _080006F4 @ =gUnknown_03001F94
	movs r1, #0xff
	strb r1, [r3]
	ldr r1, _080006F8 @ =gUnknown_03002384
	strb r2, [r1]
	ldr r1, _080006FC @ =gUnknown_0300211C
	strb r2, [r1]
	ldr r1, _08000700 @ =gUnknown_03004C30
	strb r2, [r1]
	ldr r1, _08000704 @ =gUnknown_030045F8
	strb r2, [r1]
	ldr r1, _08000708 @ =gVramGraphicsCopyQueueIndex
	strb r2, [r1]
	str r2, [sp]
	mov r3, sp
	str r3, [r0]
	ldr r1, _0800070C @ =gUnknown_03001B40
	str r1, [r0, #4]
	ldr r3, _08000710 @ =0x85000004
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08000714 @ =gUnknown_03004620
	str r2, [r1]
	str r2, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _08000718 @ =gUnknown_030020D0
	str r1, [r0, #4]
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800071C @ =gUnknown_030010B4
	movs r4, #0
	strh r2, [r1]
	strh r2, [r1, #2]
	ldr r3, _08000720 @ =gDispCnt
	movs r1, #0x80
	strh r1, [r3]
	str r2, [sp]
	mov r3, sp
	str r3, [r0]
	ldr r1, _08000724 @ =gVramGraphicsCopyQueue
	str r1, [r0, #4]
	ldr r1, _08000728 @ =0x85000020
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800072C @ =gOamFreeIndex
	strb r4, [r1]
	ldr r1, _08000730 @ =gUnknown_03002380
	strb r4, [r1]
	add r3, sp, #4
	movs r1, #0x80
	lsls r1, r1, #2
	adds r5, r1, #0
	strh r5, [r3]
	str r3, [r0]
	ldr r1, _08000734 @ =gUnknown_03004630
	str r1, [r0, #4]
	ldr r4, _08000738 @ =0x81000200
	str r4, [r0, #8]
	ldr r1, [r0, #8]
	strh r5, [r3]
	str r3, [r0]
	ldr r1, _0800073C @ =gUnknown_03001B80
	str r1, [r0, #4]
	str r4, [r0, #8]
	ldr r1, [r0, #8]
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [sp]
	mov r3, sp
	str r3, [r0]
	ldr r1, _08000740 @ =gUnknown_03001110
	str r1, [r0, #4]
	ldr r3, _08000744 @ =0x85000008
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	str r4, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _08000748 @ =gUnknown_03004600
	str r1, [r0, #4]
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	str r2, [sp]
	mov r3, sp
	str r3, [r0]
	ldr r1, _0800074C @ =gObjPalette
	str r1, [r0, #4]
	ldr r3, _08000750 @ =0x85000080
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	str r2, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _08000754 @ =gUnknown_03002120
	str r1, [r0, #4]
	str r3, [r0, #8]
	ldr r0, [r0, #8]
	ldr r0, _08000758 @ =gBgAffineRegs
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	str r2, [r0, #8]
	str r2, [r0, #0xc]
	strh r1, [r0, #0x10]
	strh r2, [r0, #0x12]
	strh r2, [r0, #0x14]
	strh r1, [r0, #0x16]
	str r2, [r0, #0x18]
	str r2, [r0, #0x1c]
	ldr r0, _0800075C @ =gUnknown_03001204
	strh r2, [r0]
	ldr r0, _08000760 @ =gUnknown_030010B0
	strh r1, [r0]
	ldr r0, _08000764 @ =gUnknown_03004C34
	strh r1, [r0]
	ldr r0, _08000768 @ =gUnknown_0300232C
	strh r2, [r0]
	ldr r0, _0800076C @ =gUnknown_030045F4
	strh r2, [r0]
	ldr r0, _08000770 @ =gUnknown_0300120C
	strh r2, [r0]
	ldr r0, _08000774 @ =gUnknown_030020C0
	strh r2, [r0]
	ldr r0, _08000778 @ =gUnknown_03004C38
	strh r1, [r0]
	ldr r0, _0800077C @ =gUnknown_03001B30
	strh r2, [r0]
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	ldr r0, _08000780 @ =gBldRegs
	strh r2, [r0]
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	ldr r0, _08000784 @ =gUnknown_03004C58
	str r2, [r0]
	ldr r3, _08000788 @ =gInputRecorder
	mov r8, r3
	ldr r0, _0800078C @ =gPhysicalInput
	mov sb, r0
	ldr r1, _08000790 @ =gUnknown_03004C50
	mov sl, r1
	ldr r3, _08000794 @ =gFrameCount
	mov ip, r3
	ldr r7, _08000798 @ =gBgOffsetsBuffer
	ldr r6, _0800079C @ =gUnknown_03001FA0
	movs r5, #0x14
	ldr r4, _080007A0 @ =gUnknown_030020F0
	movs r3, #8
_080005E0:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, r6
	strb r5, [r1]
	adds r1, r0, r4
	strb r3, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	ble _080005E0
	movs r0, #0
	mov r1, r8
	strb r0, [r1, #8]
	mov r2, sb
	strh r0, [r2]
	mov r3, sl
	str r0, [r3]
	mov r1, ip
	str r0, [r1]
	movs r2, #0
	ldr r4, _080007A4 @ =gIntrTable
	ldr r3, _080007A8 @ =gIntrTableTemplate
_08000610:
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #2
	adds r2, r0, r4
	adds r0, r0, r3
	ldr r0, [r0]
	str r0, [r2]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0xe
	ble _08000610
	movs r2, #0
	str r2, [sp]
	ldr r0, _080006E8 @ =0x040000D4
	mov r3, sp
	str r3, [r0]
	str r7, [r0, #4]
	ldr r1, _080007AC @ =0x85000140
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _080007B0 @ =gUnknown_03001144
	str r7, [r1]
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r1, r7, r3
	ldr r3, _080007B4 @ =gUnknown_03001B6C
	str r1, [r3]
	ldr r1, _080007B8 @ =gUnknown_03002118
	str r2, [r1]
	ldr r3, _080007BC @ =gUnknown_03002320
	strb r2, [r3]
	ldr r1, _080007C0 @ =gUnknown_0300114C
	strb r2, [r1]
	ldr r3, _080007C4 @ =gNumHBlankIntrs
	strb r2, [r3]
	str r2, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r3, _080007C8 @ =gUnknown_03001F80
	str r3, [r0, #4]
	ldr r1, _08000710 @ =0x85000004
	str r1, [r0, #8]
	ldr r3, [r0, #8]
	str r2, [sp]
	mov r3, sp
	str r3, [r0]
	ldr r3, _080007CC @ =gHBlankIntrs
	str r3, [r0, #4]
	str r1, [r0, #8]
	ldr r3, [r0, #8]
	ldr r3, _080007D0 @ =gUnknown_030045F0
	strb r2, [r3]
	ldr r3, _080007D4 @ =gUnknown_03001208
	strb r2, [r3]
	str r2, [sp]
	mov r3, sp
	str r3, [r0]
	ldr r3, _080007D8 @ =gUnknown_03001130
	str r3, [r0, #4]
	str r1, [r0, #8]
	ldr r3, [r0, #8]
	str r2, [sp]
	mov r2, sp
	str r2, [r0]
	ldr r3, _080007DC @ =gUnknown_03004C40
	str r3, [r0, #4]
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	bl m4aSoundInit
	ldr r0, _080007E0 @ =0x0093F500
	bl m4aSoundMode
	ldr r1, _080007E4 @ =gExecSoundMain
	movs r0, #1
	strb r0, [r1]
	bl TasksInit
	bl EwramInitHeap
	ldr r1, _080007E8 @ =gUnknown_03001148
	movs r2, #0x9c
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _080007EC @ =gUnknown_03001200
	ldr r0, _080007F0 @ =0x06013200
	str r0, [r1]
	bl VramResetHeapState
	bl IdentifyFlash
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080006D4
	b _080007F8
_080006D4:
	ldr r0, _080007F4 @ =gFlags
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	orrs r1, r2
	str r1, [r0]
	b _08000800
	.align 2, 0
_080006E4: .4byte 0xFFFFEFFF
_080006E8: .4byte 0x040000D4
_080006EC: .4byte 0x85006000
_080006F0: .4byte 0x85000100
_080006F4: .4byte gUnknown_03001F94
_080006F8: .4byte gUnknown_03002384
_080006FC: .4byte gUnknown_0300211C
_08000700: .4byte gUnknown_03004C30
_08000704: .4byte gUnknown_030045F8
_08000708: .4byte gVramGraphicsCopyQueueIndex
_0800070C: .4byte gUnknown_03001B40
_08000710: .4byte 0x85000004
_08000714: .4byte gUnknown_03004620
_08000718: .4byte gUnknown_030020D0
_0800071C: .4byte gUnknown_030010B4
_08000720: .4byte gDispCnt
_08000724: .4byte gVramGraphicsCopyQueue
_08000728: .4byte 0x85000020
_0800072C: .4byte gOamFreeIndex
_08000730: .4byte gUnknown_03002380
_08000734: .4byte gUnknown_03004630
_08000738: .4byte 0x81000200
_0800073C: .4byte gUnknown_03001B80
_08000740: .4byte gUnknown_03001110
_08000744: .4byte 0x85000008
_08000748: .4byte gUnknown_03004600
_0800074C: .4byte gObjPalette
_08000750: .4byte 0x85000080
_08000754: .4byte gUnknown_03002120
_08000758: .4byte gBgAffineRegs
_0800075C: .4byte gUnknown_03001204
_08000760: .4byte gUnknown_030010B0
_08000764: .4byte gUnknown_03004C34
_08000768: .4byte gUnknown_0300232C
_0800076C: .4byte gUnknown_030045F4
_08000770: .4byte gUnknown_0300120C
_08000774: .4byte gUnknown_030020C0
_08000778: .4byte gUnknown_03004C38
_0800077C: .4byte gUnknown_03001B30
_08000780: .4byte gBldRegs
_08000784: .4byte gUnknown_03004C58
_08000788: .4byte gInputRecorder
_0800078C: .4byte gPhysicalInput
_08000790: .4byte gUnknown_03004C50
_08000794: .4byte gFrameCount
_08000798: .4byte gBgOffsetsBuffer
_0800079C: .4byte gUnknown_03001FA0
_080007A0: .4byte gUnknown_030020F0
_080007A4: .4byte gIntrTable
_080007A8: .4byte gIntrTableTemplate
_080007AC: .4byte 0x85000140
_080007B0: .4byte gUnknown_03001144
_080007B4: .4byte gUnknown_03001B6C
_080007B8: .4byte gUnknown_03002118
_080007BC: .4byte gUnknown_03002320
_080007C0: .4byte gUnknown_0300114C
_080007C4: .4byte gNumHBlankIntrs
_080007C8: .4byte gUnknown_03001F80
_080007CC: .4byte gHBlankIntrs
_080007D0: .4byte gUnknown_030045F0
_080007D4: .4byte gUnknown_03001208
_080007D8: .4byte gUnknown_03001130
_080007DC: .4byte gUnknown_03004C40
_080007E0: .4byte 0x0093F500
_080007E4: .4byte gExecSoundMain
_080007E8: .4byte gUnknown_03001148
_080007EC: .4byte gUnknown_03001200
_080007F0: .4byte 0x06013200
_080007F4: .4byte gFlags
_080007F8:
	ldr r1, _08000864 @ =0x03000484
	movs r0, #1
	bl SetFlashTimerIntr
_08000800:
	ldr r1, _08000868 @ =0x040000D4
	ldr r0, _0800086C @ =IntrMain
	str r0, [r1]
	ldr r2, _08000870 @ =gIntrMainBuf
	str r2, [r1, #4]
	ldr r0, _08000874 @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08000878 @ =INTR_VECTOR
	str r2, [r0]
	ldr r0, _0800087C @ =0x04000208
	movs r2, #1
	strh r2, [r0]
	subs r0, #8
	strh r2, [r0]
	ldr r2, _08000880 @ =0x04000004
	movs r0, #0x18
	strh r0, [r2]
	movs r2, #0
	str r2, [sp]
	mov r3, sp
	str r3, [r1]
	ldr r0, _08000884 @ =gUnknown_03002100
	str r0, [r1, #4]
	ldr r0, _08000888 @ =0x85000005
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	str r2, [sp]
	str r3, [r1]
	ldr r0, _0800088C @ =gUnknown_03001150
	str r0, [r1, #4]
	ldr r0, _08000890 @ =0x85000014
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08000894 @ =gUnknown_03001210
	str r2, [r0]
	ldr r0, _08000898 @ =gUnknown_03001214
	strb r2, [r0]
	movs r0, #0
	bl MultiSioInit
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000864: .4byte 0x03000484
_08000868: .4byte 0x040000D4
_0800086C: .4byte IntrMain
_08000870: .4byte gIntrMainBuf
_08000874: .4byte 0x84000080
_08000878: .4byte INTR_VECTOR
_0800087C: .4byte 0x04000208
_08000880: .4byte 0x04000004
_08000884: .4byte gUnknown_03002100
_08000888: .4byte 0x85000005
_0800088C: .4byte gUnknown_03001150
_08000890: .4byte 0x85000014
_08000894: .4byte gUnknown_03001210
_08000898: .4byte gUnknown_03001214

	thumb_func_start GameLoop
GameLoop: @ 0x0800089C
	push {r4, r5, r6, lr}
	ldr r6, _0800090C @ =gFlags
	movs r5, #0x80
	lsls r5, r5, #3
_080008A4:
	ldr r1, _08000910 @ =gExecSoundMain
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r6]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080008BA
	bl m4aSoundMain
_080008BA:
	ldr r0, _08000914 @ =gUnknown_03001F94
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _080008E0
	bl GetInput
	ldr r0, _08000918 @ =gUnknown_03001214
	ldrb r0, [r0]
	cmp r0, #0
	beq _080008DC
	ldr r0, _0800091C @ =gUnknown_03002100
	ldr r1, _08000920 @ =gUnknown_03001150
	movs r2, #0
	bl MultiSioMain
	ldr r1, _08000924 @ =gUnknown_03001210
	str r0, [r1]
_080008DC:
	bl TasksExec
_080008E0:
	ldr r1, _08000928 @ =gUnknown_03002030
	ldr r4, _0800090C @ =gFlags
	ldr r0, [r4]
	str r0, [r1]
	bl VBlankIntrWait
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0800092C
	bl sub_8000D34
	ldr r0, [r4]
	ands r0, r5
	cmp r0, #0
	bne _08000948
	bl ClearOamBufferCpuSet
	b _0800093C
	.align 2, 0
_0800090C: .4byte gFlags
_08000910: .4byte gExecSoundMain
_08000914: .4byte gUnknown_03001F94
_08000918: .4byte gUnknown_03001214
_0800091C: .4byte gUnknown_03002100
_08000920: .4byte gUnknown_03001150
_08000924: .4byte gUnknown_03001210
_08000928: .4byte gUnknown_03002030
_0800092C:
	bl sub_8000980
	ldr r0, [r4]
	ands r0, r5
	cmp r0, #0
	bne _08000948
	bl sub_8000C54
_0800093C:
	ldr r2, _08000954 @ =gFlags
	ldr r1, [r2]
	adds r0, r1, #0
	ands r0, r5
	cmp r0, #0
	beq _08000958
_08000948:
	ldr r0, [r6]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r6]
	b _0800095E
	.align 2, 0
_08000954: .4byte gFlags
_08000958:
	ldr r0, _08000978 @ =0xFFFFF7FF
	ands r1, r0
	str r1, [r2]
_0800095E:
	ldr r2, _0800097C @ =0x04000004
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080008A4
	movs r3, #1
_0800096C:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _0800096C
	b _080008A4
	.align 2, 0
_08000978: .4byte 0xFFFFF7FF
_0800097C: .4byte 0x04000004

	thumb_func_start sub_8000980
sub_8000980: @ 0x08000980
	push {r4, r5, r6, lr}
	sub sp, #4
	movs r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r0, _08000A60 @ =gDispCnt
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r3, _08000A64 @ =0x040000D4
	ldr r0, _08000A68 @ =gUnknown_03001B70
	str r0, [r3]
	ldr r0, _08000A6C @ =0x04000008
	str r0, [r3, #4]
	ldr r0, _08000A70 @ =0x84000002
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r1, _08000A74 @ =gFlags
	ldr r2, [r1]
	movs r5, #1
	adds r0, r2, #0
	ands r0, r5
	adds r6, r1, #0
	cmp r0, #0
	beq _080009C4
	ldr r0, _08000A78 @ =gUnknown_03002120
	str r0, [r3]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r3, #4]
	ldr r0, _08000A7C @ =0x84000080
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	eors r2, r5
	str r2, [r6]
_080009C4:
	ldr r0, [r6]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080009E2
	ldr r0, _08000A80 @ =gObjPalette
	str r0, [r3]
	ldr r0, _08000A84 @ =0x05000200
	str r0, [r3, #4]
	ldr r0, _08000A7C @ =0x84000080
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r6]
	eors r0, r1
	str r0, [r6]
_080009E2:
	ldr r0, _08000A88 @ =gUnknown_03001B30
	str r0, [r3]
	ldr r0, _08000A8C @ =0x04000040
	str r0, [r3, #4]
	ldr r0, _08000A90 @ =0x84000003
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _08000A94 @ =gBldRegs
	str r0, [r3]
	ldr r0, _08000A98 @ =0x04000050
	str r0, [r3, #4]
	ldr r0, _08000A9C @ =0x80000003
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _08000AA0 @ =gUnknown_030020D0
	str r0, [r3]
	ldr r0, _08000AA4 @ =0x04000010
	str r0, [r3, #4]
	ldr r0, _08000AA8 @ =0x80000008
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _08000AAC @ =gBgAffineRegs
	str r0, [r3]
	ldr r0, _08000AB0 @ =0x04000020
	str r0, [r3, #4]
	ldr r0, _08000AB4 @ =0x84000008
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r6]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08000AD0
	ldr r2, _08000AB8 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	str r4, [sp]
	mov r0, sp
	str r0, [r3]
	ldr r1, _08000ABC @ =gHBlankIntrs
	str r1, [r3, #4]
	ldr r0, _08000AC0 @ =0x85000004
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r2, _08000AC4 @ =gUnknown_0300114C
	ldrb r0, [r2]
	cmp r0, #0
	beq _08000A58
	ldr r0, _08000AC8 @ =gUnknown_03001F80
	str r0, [r3]
	str r1, [r3, #4]
	ldrb r0, [r2]
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
_08000A58:
	ldr r1, _08000ACC @ =gNumHBlankIntrs
	ldrb r0, [r2]
	strb r0, [r1]
	b _08000ADE
	.align 2, 0
_08000A60: .4byte gDispCnt
_08000A64: .4byte 0x040000D4
_08000A68: .4byte gUnknown_03001B70
_08000A6C: .4byte 0x04000008
_08000A70: .4byte 0x84000002
_08000A74: .4byte gFlags
_08000A78: .4byte gUnknown_03002120
_08000A7C: .4byte 0x84000080
_08000A80: .4byte gObjPalette
_08000A84: .4byte 0x05000200
_08000A88: .4byte gUnknown_03001B30
_08000A8C: .4byte 0x04000040
_08000A90: .4byte 0x84000003
_08000A94: .4byte gBldRegs
_08000A98: .4byte 0x04000050
_08000A9C: .4byte 0x80000003
_08000AA0: .4byte gUnknown_030020D0
_08000AA4: .4byte 0x04000010
_08000AA8: .4byte 0x80000008
_08000AAC: .4byte gBgAffineRegs
_08000AB0: .4byte 0x04000020
_08000AB4: .4byte 0x84000008
_08000AB8: .4byte 0x04000200
_08000ABC: .4byte gHBlankIntrs
_08000AC0: .4byte 0x85000004
_08000AC4: .4byte gUnknown_0300114C
_08000AC8: .4byte gUnknown_03001F80
_08000ACC: .4byte gNumHBlankIntrs
_08000AD0:
	ldr r2, _08000BBC @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08000BC0 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08000BC4 @ =gNumHBlankIntrs
	strb r4, [r0]
_08000ADE:
	ldr r0, [r6]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08000B06
	ldr r2, _08000BC8 @ =0x040000D4
	ldr r0, _08000BCC @ =gUnknown_03001144
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, _08000BD0 @ =gUnknown_03002118
	ldr r0, [r0]
	str r0, [r2, #4]
	ldr r0, _08000BD4 @ =gUnknown_03002320
	ldrb r0, [r0]
	lsrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_08000B06:
	ldr r0, _08000BD8 @ =gUnknown_03001F94
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08000B54
	bl CopyOamBufferToOam
	ldr r0, _08000BC8 @ =0x040000D4
	ldr r3, _08000BDC @ =gUnknown_03004630
	str r3, [r0]
	movs r1, #0xe0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r2, _08000BE0 @ =0x80000080
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r3, r4
	str r1, [r0]
	ldr r1, _08000BE4 @ =0x07000100
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	movs r4, #0x80
	lsls r4, r4, #2
	adds r1, r3, r4
	str r1, [r0]
	ldr r1, _08000BE8 @ =0x07000200
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	movs r4, #0xc0
	lsls r4, r4, #2
	adds r1, r3, r4
	str r1, [r0]
	ldr r1, _08000BEC @ =0x07000300
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
_08000B54:
	movs r4, #0
	ldr r0, _08000BF0 @ =gUnknown_03001208
	ldrb r1, [r0]
	cmp r4, r1
	bhs _08000B78
	ldr r6, _08000BF4 @ =gUnknown_03004C40
	adds r5, r0, #0
_08000B62:
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl _call_via_r0
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrb r0, [r5]
	cmp r4, r0
	blo _08000B62
_08000B78:
	ldr r0, _08000BF8 @ =gFlags
	ldr r1, [r0]
	movs r0, #0x10
	ands r1, r0
	cmp r1, #0
	beq _08000C08
	movs r0, #0
	str r0, [sp]
	ldr r2, _08000BC8 @ =0x040000D4
	mov r1, sp
	str r1, [r2]
	ldr r1, _08000BF4 @ =gUnknown_03004C40
	str r1, [r2, #4]
	ldr r0, _08000BFC @ =0x85000004
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r3, _08000C00 @ =gUnknown_030045F0
	ldrb r0, [r3]
	cmp r0, #0
	beq _08000BB2
	ldr r0, _08000C04 @ =gUnknown_03001130
	str r0, [r2]
	str r1, [r2, #4]
	ldrb r0, [r3]
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_08000BB2:
	ldr r1, _08000BF0 @ =gUnknown_03001208
	ldrb r0, [r3]
	strb r0, [r1]
	b _08000C0C
	.align 2, 0
_08000BBC: .4byte 0x04000200
_08000BC0: .4byte 0x0000FFFD
_08000BC4: .4byte gNumHBlankIntrs
_08000BC8: .4byte 0x040000D4
_08000BCC: .4byte gUnknown_03001144
_08000BD0: .4byte gUnknown_03002118
_08000BD4: .4byte gUnknown_03002320
_08000BD8: .4byte gUnknown_03001F94
_08000BDC: .4byte gUnknown_03004630
_08000BE0: .4byte 0x80000080
_08000BE4: .4byte 0x07000100
_08000BE8: .4byte 0x07000200
_08000BEC: .4byte 0x07000300
_08000BF0: .4byte gUnknown_03001208
_08000BF4: .4byte gUnknown_03004C40
_08000BF8: .4byte gFlags
_08000BFC: .4byte 0x85000004
_08000C00: .4byte gUnknown_030045F0
_08000C04: .4byte gUnknown_03001130
_08000C08:
	ldr r0, _08000C20 @ =gUnknown_03001208
	strb r1, [r0]
_08000C0C:
	ldr r1, _08000C24 @ =gUnknown_03001F94
	ldrb r4, [r1]
	cmp r4, #0xff
	bne _08000C16
	movs r4, #0
_08000C16:
	movs r0, #0xff
	strb r0, [r1]
	ldr r5, _08000C28 @ =spriteUpdateFuncs
	b _08000C32
	.align 2, 0
_08000C20: .4byte gUnknown_03001208
_08000C24: .4byte gUnknown_03001F94
_08000C28: .4byte spriteUpdateFuncs
_08000C2C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08000C32:
	cmp r4, #3
	bhi _08000C48
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl _call_via_r0
	cmp r0, #0
	bne _08000C2C
	ldr r0, _08000C50 @ =gUnknown_03001F94
	strb r4, [r0]
_08000C48:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08000C50: .4byte gUnknown_03001F94

	thumb_func_start sub_8000C54
sub_8000C54: @ 0x08000C54
	push {r4, lr}
	sub sp, #4
	ldr r1, _08000C8C @ =gUnknown_0300114C
	movs r0, #0
	strb r0, [r1]
	ldr r2, _08000C90 @ =gFlags
	ldr r0, [r2]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	movs r1, #0x20
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	bne _08000CAC
	ldr r1, _08000C94 @ =gUnknown_03001144
	ldr r0, [r1]
	ldr r2, _08000C98 @ =gBgOffsetsBuffer
	cmp r0, r2
	bne _08000CA0
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r0, r2, r3
	str r0, [r1]
	ldr r0, _08000C9C @ =gUnknown_03001B6C
	str r2, [r0]
	b _08000CAC
	.align 2, 0
_08000C8C: .4byte gUnknown_0300114C
_08000C90: .4byte gFlags
_08000C94: .4byte gUnknown_03001144
_08000C98: .4byte gBgOffsetsBuffer
_08000C9C: .4byte gUnknown_03001B6C
_08000CA0:
	str r2, [r1]
	ldr r1, _08000D20 @ =gUnknown_03001B6C
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r0, r2, r3
	str r0, [r1]
_08000CAC:
	ldr r0, [r4]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4]
	mov r0, sp
	movs r1, #0x80
	lsls r1, r1, #2
	adds r3, r1, #0
	strh r3, [r0]
	ldr r0, _08000D24 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _08000D28 @ =gUnknown_03004630
	mov ip, r1
	str r1, [r0, #4]
	ldr r2, _08000D2C @ =0x81000080
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	strh r3, [r1]
	str r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	add r1, ip
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	strh r3, [r1]
	str r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	add r1, ip
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	strh r3, [r1]
	str r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #2
	add r1, ip
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	ldr r1, _08000D30 @ =gUnknown_030045F0
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r4]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08000D20: .4byte gUnknown_03001B6C
_08000D24: .4byte 0x040000D4
_08000D28: .4byte gUnknown_03004630
_08000D2C: .4byte 0x81000080
_08000D30: .4byte gUnknown_030045F0

	thumb_func_start sub_8000D34
sub_8000D34: @ 0x08000D34
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	movs r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r0, _08000DEC @ =gDispCnt
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, _08000DF0 @ =gUnknown_03001B70
	ldr r7, _08000DF4 @ =0x04000008
	ldr r2, _08000DF8 @ =0x04000002
	adds r1, r7, #0
	bl CpuSet
	ldr r5, _08000DFC @ =gFlags
	ldr r0, [r5]
	movs r6, #1
	ands r0, r6
	cmp r0, #0
	beq _08000D6E
	ldr r0, _08000E00 @ =gUnknown_03002120
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	bl CpuFastSet
	ldr r0, [r5]
	eors r0, r6
	str r0, [r5]
_08000D6E:
	ldr r0, [r5]
	movs r6, #2
	ands r0, r6
	cmp r0, #0
	beq _08000D88
	ldr r0, _08000E04 @ =gObjPalette
	ldr r1, _08000E08 @ =0x05000200
	movs r2, #0x80
	bl CpuFastSet
	ldr r0, [r5]
	eors r0, r6
	str r0, [r5]
_08000D88:
	ldr r0, _08000E0C @ =gUnknown_03001B30
	ldr r1, _08000E10 @ =0x04000040
	ldr r2, _08000E14 @ =0x04000003
	bl CpuSet
	ldr r0, _08000E18 @ =gBldRegs
	ldr r1, _08000E1C @ =0x04000050
	movs r2, #3
	bl CpuSet
	ldr r0, _08000E20 @ =gUnknown_030020D0
	ldr r1, _08000E24 @ =0x04000010
	movs r2, #8
	bl CpuSet
	ldr r0, _08000E28 @ =gBgAffineRegs
	ldr r1, _08000E2C @ =0x04000020
	adds r2, r7, #0
	bl CpuSet
	ldr r0, [r5]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08000E48
	ldr r2, _08000E30 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	str r4, [sp]
	ldr r5, _08000E34 @ =gHBlankIntrs
	ldr r2, _08000E38 @ =0x01000004
	mov r0, sp
	adds r1, r5, #0
	bl CpuFastSet
	ldr r4, _08000E3C @ =gUnknown_0300114C
	ldrb r0, [r4]
	cmp r0, #0
	beq _08000DE4
	ldr r0, _08000E40 @ =gUnknown_03001F80
	ldrb r2, [r4]
	adds r1, r5, #0
	bl CpuFastSet
_08000DE4:
	ldr r1, _08000E44 @ =gNumHBlankIntrs
	ldrb r0, [r4]
	strb r0, [r1]
	b _08000E56
	.align 2, 0
_08000DEC: .4byte gDispCnt
_08000DF0: .4byte gUnknown_03001B70
_08000DF4: .4byte 0x04000008
_08000DF8: .4byte 0x04000002
_08000DFC: .4byte gFlags
_08000E00: .4byte gUnknown_03002120
_08000E04: .4byte gObjPalette
_08000E08: .4byte 0x05000200
_08000E0C: .4byte gUnknown_03001B30
_08000E10: .4byte 0x04000040
_08000E14: .4byte 0x04000003
_08000E18: .4byte gBldRegs
_08000E1C: .4byte 0x04000050
_08000E20: .4byte gUnknown_030020D0
_08000E24: .4byte 0x04000010
_08000E28: .4byte gBgAffineRegs
_08000E2C: .4byte 0x04000020
_08000E30: .4byte 0x04000200
_08000E34: .4byte gHBlankIntrs
_08000E38: .4byte 0x01000004
_08000E3C: .4byte gUnknown_0300114C
_08000E40: .4byte gUnknown_03001F80
_08000E44: .4byte gNumHBlankIntrs
_08000E48:
	ldr r2, _08000ECC @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08000ED0 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08000ED4 @ =gNumHBlankIntrs
	strb r4, [r0]
_08000E56:
	ldr r0, _08000ED8 @ =gUnknown_03001F94
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08000E70
	bl CopyOamBufferToOam
	ldr r0, _08000EDC @ =gUnknown_03004630
	movs r1, #0xe0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #1
	bl CpuFastSet
_08000E70:
	movs r4, #0
	ldr r0, _08000EE0 @ =gUnknown_03001208
	ldrb r1, [r0]
	cmp r4, r1
	bhs _08000E94
	ldr r6, _08000EE4 @ =gUnknown_03004C40
	adds r5, r0, #0
_08000E7E:
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl _call_via_r0
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrb r0, [r5]
	cmp r4, r0
	blo _08000E7E
_08000E94:
	ldr r0, _08000EE8 @ =gFlags
	ldr r1, [r0]
	movs r0, #0x10
	ands r1, r0
	cmp r1, #0
	beq _08000EF8
	movs r0, #0
	str r0, [sp, #4]
	add r0, sp, #4
	ldr r5, _08000EE4 @ =gUnknown_03004C40
	ldr r2, _08000EEC @ =0x01000004
	adds r1, r5, #0
	bl CpuFastSet
	ldr r4, _08000EF0 @ =gUnknown_030045F0
	ldrb r0, [r4]
	cmp r0, #0
	beq _08000EC2
	ldr r0, _08000EF4 @ =gUnknown_03001130
	ldrb r2, [r4]
	adds r1, r5, #0
	bl CpuFastSet
_08000EC2:
	ldr r1, _08000EE0 @ =gUnknown_03001208
	ldrb r0, [r4]
	strb r0, [r1]
	b _08000EFC
	.align 2, 0
_08000ECC: .4byte 0x04000200
_08000ED0: .4byte 0x0000FFFD
_08000ED4: .4byte gNumHBlankIntrs
_08000ED8: .4byte gUnknown_03001F94
_08000EDC: .4byte gUnknown_03004630
_08000EE0: .4byte gUnknown_03001208
_08000EE4: .4byte gUnknown_03004C40
_08000EE8: .4byte gFlags
_08000EEC: .4byte 0x01000004
_08000EF0: .4byte gUnknown_030045F0
_08000EF4: .4byte gUnknown_03001130
_08000EF8:
	ldr r0, _08000F10 @ =gUnknown_03001208
	strb r1, [r0]
_08000EFC:
	ldr r1, _08000F14 @ =gUnknown_03001F94
	ldrb r4, [r1]
	cmp r4, #0xff
	bne _08000F06
	movs r4, #0
_08000F06:
	movs r0, #0xff
	strb r0, [r1]
	ldr r5, _08000F18 @ =spriteUpdateFuncs
	b _08000F22
	.align 2, 0
_08000F10: .4byte gUnknown_03001208
_08000F14: .4byte gUnknown_03001F94
_08000F18: .4byte spriteUpdateFuncs
_08000F1C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08000F22:
	cmp r4, #3
	bhi _08000F38
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl _call_via_r0
	cmp r0, #0
	bne _08000F1C
	ldr r0, _08000F40 @ =gUnknown_03001F94
	strb r4, [r0]
_08000F38:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000F40: .4byte gUnknown_03001F94

	thumb_func_start VBlankIntr
VBlankIntr: @ 0x08000F44
	push {r4, r5, r6, lr}
	ldr r4, _08000FD0 @ =0x040000B0
	ldrh r1, [r4, #0xa]
	ldr r0, _08000FD4 @ =0x0000C5FF
	ands r0, r1
	strh r0, [r4, #0xa]
	ldrh r1, [r4, #0xa]
	ldr r0, _08000FD8 @ =0x00007FFF
	ands r0, r1
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0xa]
	bl sub_80973FC
	ldr r1, _08000FDC @ =gUnknown_03007FF8
	ldrh r0, [r1]
	movs r2, #1
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _08000FE0 @ =gExecSoundMain
	strb r2, [r0]
	ldr r5, _08000FE4 @ =gUnknown_03002030
	ldr r3, [r5]
	movs r0, #4
	ands r3, r0
	cmp r3, #0
	beq _08000FFC
	ldr r2, _08000FE8 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	adds r2, r4, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	adds r6, r5, #0
	ldr r4, _08000FEC @ =gUnknown_03001144
	ldr r5, _08000FF0 @ =gUnknown_03002118
	ldr r3, _08000FF4 @ =gUnknown_03002320
	cmp r0, #0
	bge _08000F9E
_08000F96:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08000F96
_08000F9E:
	ldr r2, _08000FD0 @ =0x040000B0
	ldr r0, [r4]
	str r0, [r2]
	ldr r0, [r5]
	str r0, [r2, #4]
	ldrb r0, [r3]
	lsrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrb r1, [r3]
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, [r5]
	str r0, [r2, #4]
	ldrb r0, [r3]
	lsrs r0, r0, #1
	ldr r1, _08000FF8 @ =0xA2600000
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	b _08001012
	.align 2, 0
_08000FD0: .4byte 0x040000B0
_08000FD4: .4byte 0x0000C5FF
_08000FD8: .4byte 0x00007FFF
_08000FDC: .4byte gUnknown_03007FF8
_08000FE0: .4byte gExecSoundMain
_08000FE4: .4byte gUnknown_03002030
_08000FE8: .4byte 0x04000200
_08000FEC: .4byte gUnknown_03001144
_08000FF0: .4byte gUnknown_03002118
_08000FF4: .4byte gUnknown_03002320
_08000FF8: .4byte 0xA2600000
_08000FFC:
	ldr r4, _08001054 @ =gUnknown_03002118
	ldr r0, [r4]
	adds r6, r5, #0
	cmp r0, #0
	beq _08001012
	ldr r2, _08001058 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _0800105C @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	str r3, [r4]
_08001012:
	ldr r0, [r6]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800106C
	ldr r2, _08001060 @ =0x04000004
	ldrh r0, [r2]
	movs r3, #0x20
	orrs r0, r3
	strh r0, [r2]
	ldrh r1, [r2]
	movs r0, #0xff
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08001064 @ =gUnknown_03002114
	ldrb r0, [r0]
	lsls r0, r0, #8
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	ldrh r1, [r2]
	ldr r0, _08001068 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	orrs r0, r3
	strh r0, [r2]
	ldr r2, _08001058 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #4
	orrs r0, r1
	strh r0, [r2]
	b _08001088
	.align 2, 0
_08001054: .4byte gUnknown_03002118
_08001058: .4byte 0x04000200
_0800105C: .4byte 0x0000FFFD
_08001060: .4byte 0x04000004
_08001064: .4byte gUnknown_03002114
_08001068: .4byte 0x0000FFFB
_0800106C:
	ldr r2, _08001138 @ =0x04000004
	ldrh r3, [r2]
	ldr r1, _0800113C @ =0x0000FFFB
	adds r0, r1, #0
	ands r0, r3
	strh r0, [r2]
	ldrh r3, [r2]
	ldr r0, _08001140 @ =0x0000FFDF
	ands r0, r3
	strh r0, [r2]
	ldr r2, _08001144 @ =0x04000200
	ldrh r0, [r2]
	ands r1, r0
	strh r1, [r2]
_08001088:
	ldr r2, [r6]
	movs r3, #0x80
	lsls r3, r3, #8
	ands r2, r3
	cmp r2, #0
	bne _08001122
	ldr r0, _08001148 @ =0x04000130
	ldrh r1, [r0]
	movs r0, #0xf
	adds r5, r0, #0
	bics r5, r1
	cmp r5, #0xf
	bne _08001122
	ldr r4, _0800114C @ =gFlags
	ldr r0, [r4]
	orrs r0, r3
	str r0, [r4]
	ldr r0, _08001144 @ =0x04000200
	strh r2, [r0]
	adds r0, #8
	strh r2, [r0]
	ldr r0, _08001138 @ =0x04000004
	strh r2, [r0]
	bl m4aMPlayAllStop
	bl m4aSoundVSyncOff
	ldr r0, [r4]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4]
	ldr r1, _08001150 @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r4, _08001154 @ =0x0000C5FF
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r3, _08001158 @ =0x00007FFF
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xc
	ldrh r2, [r1, #0xa]
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xc
	ldrh r2, [r1, #0xa]
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r0, _0800115C @ =0x040000D4
	ldrh r1, [r0, #0xa]
	ands r4, r1
	strh r4, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ands r3, r1
	strh r3, [r0, #0xa]
	ldrh r0, [r0, #0xa]
	ldr r0, _08001160 @ =gInput
	strh r5, [r0]
	movs r0, #0x20
	bl SoftReset
_08001122:
	ldr r1, _08001164 @ =gFrameCount
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r1, _08001168 @ =0x04000202
	movs r0, #1
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08001138: .4byte 0x04000004
_0800113C: .4byte 0x0000FFFB
_08001140: .4byte 0x0000FFDF
_08001144: .4byte 0x04000200
_08001148: .4byte 0x04000130
_0800114C: .4byte gFlags
_08001150: .4byte 0x040000B0
_08001154: .4byte 0x0000C5FF
_08001158: .4byte 0x00007FFF
_0800115C: .4byte 0x040000D4
_08001160: .4byte gInput
_08001164: .4byte gFrameCount
_08001168: .4byte 0x04000202

	thumb_func_start sub_800116C
sub_800116C: @ 0x0800116C
	push {r4, r5, r6, r7, lr}
	ldr r2, _080011B8 @ =gUnknown_030045F8
	ldr r0, _080011BC @ =gVramGraphicsCopyQueueIndex
	ldrb r1, [r2]
	adds r7, r0, #0
	ldrb r0, [r7]
	cmp r1, r0
	beq _0800121A
	ldr r1, _080011C0 @ =gVramGraphicsCopyQueue
	mov ip, r1
	adds r6, r2, #0
_08001182:
	ldrb r0, [r6]
	lsls r0, r0, #2
	add r0, ip
	ldr r2, [r0]
	ldrh r0, [r2, #8]
	cmp r0, #0
	beq _080011F6
	movs r4, #0
	movs r5, #0x80
	lsls r5, r5, #3
	ldr r3, _080011C4 @ =0x040000D4
_08001198:
	cmp r0, r5
	bls _080011D0
	ldr r0, [r2]
	adds r0, r0, r4
	str r0, [r3]
	ldr r0, [r2, #4]
	adds r0, r0, r4
	str r0, [r3, #4]
	ldr r0, _080011C8 @ =0x80000200
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r1, _080011CC @ =0xFFFFFC00
	adds r0, r1, #0
	ldrh r1, [r2, #8]
	adds r0, r0, r1
	b _080011EC
	.align 2, 0
_080011B8: .4byte gUnknown_030045F8
_080011BC: .4byte gVramGraphicsCopyQueueIndex
_080011C0: .4byte gVramGraphicsCopyQueue
_080011C4: .4byte 0x040000D4
_080011C8: .4byte 0x80000200
_080011CC: .4byte 0xFFFFFC00
_080011D0:
	ldr r0, [r2]
	adds r0, r0, r4
	str r0, [r3]
	ldr r0, [r2, #4]
	adds r0, r0, r4
	str r0, [r3, #4]
	ldrh r0, [r2, #8]
	lsrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r0, #0
_080011EC:
	strh r0, [r2, #8]
	adds r4, r4, r5
	ldrh r0, [r2, #8]
	cmp r0, #0
	bne _08001198
_080011F6:
	ldrb r0, [r6]
	adds r2, r0, #1
	movs r0, #0x1f
	ands r2, r0
	strb r2, [r6]
	ldr r0, _08001210 @ =0x04000004
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08001214
	movs r0, #0
	b _0800121C
	.align 2, 0
_08001210: .4byte 0x04000004
_08001214:
	ldrb r0, [r7]
	cmp r2, r0
	bne _08001182
_0800121A:
	movs r0, #1
_0800121C:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start GetInput
GetInput: @ 0x08001224
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r7, _08001258 @ =gUnknown_03001B60
	ldr r0, _0800125C @ =gUnknown_03001FA0
	mov sb, r0
	ldr r1, _08001260 @ =gUnknown_030020F0
	mov r8, r1
	ldr r4, _08001264 @ =gInput
	ldr r0, _08001268 @ =0x04000130
	ldrh r1, [r0]
	ldr r2, _0800126C @ =0x000003FF
	adds r0, r2, #0
	bics r0, r1
	strh r0, [r4]
	ldr r1, _08001270 @ =gPhysicalInput
	strh r0, [r1]
	ldr r0, _08001274 @ =gInputRecorder
	ldrb r0, [r0, #8]
	cmp r0, #1
	bne _08001278
	ldrh r0, [r4]
	bl InputRecorderWrite
	b _08001282
	.align 2, 0
_08001258: .4byte gUnknown_03001B60
_0800125C: .4byte gUnknown_03001FA0
_08001260: .4byte gUnknown_030020F0
_08001264: .4byte gInput
_08001268: .4byte 0x04000130
_0800126C: .4byte 0x000003FF
_08001270: .4byte gPhysicalInput
_08001274: .4byte gInputRecorder
_08001278:
	cmp r0, #2
	bne _08001282
	bl InputRecorderRead
	strh r0, [r4]
_08001282:
	ldr r2, _080012C8 @ =gPressedKeys
	ldr r6, _080012CC @ =gInput
	ldr r5, _080012D0 @ =gPrevInput
	ldrh r3, [r6]
	ldrh r4, [r5]
	adds r0, r3, #0
	eors r0, r4
	adds r1, r0, #0
	ands r1, r3
	strh r1, [r2]
	ldr r2, _080012D4 @ =gReleasedKeys
	ands r0, r4
	strh r0, [r2]
	strh r3, [r5]
	ldr r0, _080012D8 @ =gRepeatedKeys
	strh r1, [r0]
	movs r1, #0
	mov ip, r6
	movs r6, #1
	adds r5, r0, #0
_080012AA:
	mov r3, ip
	ldrh r0, [r3]
	lsls r1, r1, #0x18
	asrs r2, r1, #0x18
	asrs r0, r2
	ands r0, r6
	adds r4, r1, #0
	cmp r0, #0
	bne _080012DC
	adds r0, r7, r2
	mov r3, sb
	adds r1, r3, r2
	ldrb r1, [r1]
	strb r1, [r0]
	b _080012FA
	.align 2, 0
_080012C8: .4byte gPressedKeys
_080012CC: .4byte gInput
_080012D0: .4byte gPrevInput
_080012D4: .4byte gReleasedKeys
_080012D8: .4byte gRepeatedKeys
_080012DC:
	adds r3, r7, r2
	ldrb r0, [r3]
	cmp r0, #0
	beq _080012E8
	subs r0, #1
	b _080012F8
_080012E8:
	adds r0, r6, #0
	lsls r0, r2
	ldrh r1, [r5]
	orrs r0, r1
	strh r0, [r5]
	mov r1, r8
	adds r0, r1, r2
	ldrb r0, [r0]
_080012F8:
	strb r0, [r3]
_080012FA:
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r4, r2
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #9
	ble _080012AA
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start HBlankIntr
HBlankIntr: @ 0x08001314
	push {r4, r5, r6, lr}
	ldr r0, _08001354 @ =0x04000006
	ldrb r0, [r0]
	adds r5, r0, #0
	cmp r5, #0x9f
	bhi _08001346
	movs r4, #0
	ldr r0, _08001358 @ =gNumHBlankIntrs
	ldrb r0, [r0]
	cmp r4, r0
	bhs _08001346
	ldr r6, _0800135C @ =gHBlankIntrs
_0800132C:
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _08001358 @ =gNumHBlankIntrs
	ldrb r0, [r0]
	cmp r4, r0
	blo _0800132C
_08001346:
	ldr r1, _08001360 @ =0x04000202
	movs r0, #2
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08001354: .4byte 0x04000006
_08001358: .4byte gNumHBlankIntrs
_0800135C: .4byte gHBlankIntrs
_08001360: .4byte 0x04000202

	thumb_func_start VCountIntr
VCountIntr: @ 0x08001364
	ldr r1, _0800136C @ =0x04000202
	movs r0, #4
	strh r0, [r1]
	bx lr
	.align 2, 0
_0800136C: .4byte 0x04000202

	thumb_func_start Dma0Intr
Dma0Intr: @ 0x08001370
	ldr r1, _0800137C @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_0800137C: .4byte 0x04000202

	thumb_func_start Dma1Intr
Dma1Intr: @ 0x08001380
	ldr r1, _0800138C @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_0800138C: .4byte 0x04000202

	thumb_func_start Dma2Intr
Dma2Intr: @ 0x08001390
	ldr r1, _0800139C @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_0800139C: .4byte 0x04000202

	thumb_func_start Dma3Intr
Dma3Intr: @ 0x080013A0
	ldr r1, _080013AC @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_080013AC: .4byte 0x04000202

	thumb_func_start Timer0Intr
Timer0Intr: @ 0x080013B0
	ldr r1, _080013B8 @ =0x04000202
	movs r0, #8
	strh r0, [r1]
	bx lr
	.align 2, 0
_080013B8: .4byte 0x04000202

	thumb_func_start Timer1Intr
Timer1Intr: @ 0x080013BC
	ldr r1, _080013C4 @ =0x04000202
	movs r0, #0x10
	strh r0, [r1]
	bx lr
	.align 2, 0
_080013C4: .4byte 0x04000202

	thumb_func_start Timer2Intr
Timer2Intr: @ 0x080013C8
	ldr r1, _080013D0 @ =0x04000202
	movs r0, #0x20
	strh r0, [r1]
	bx lr
	.align 2, 0
_080013D0: .4byte 0x04000202

	thumb_func_start KeypadIntr
KeypadIntr: @ 0x080013D4
	ldr r1, _080013E0 @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_080013E0: .4byte 0x04000202

	thumb_func_start GamepakIntr
GamepakIntr: @ 0x080013E4
	ldr r1, _080013F0 @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_080013F0: .4byte 0x04000202

DummyFunc:
	bx lr
	.align 2, 0

	thumb_func_start ClearOamBufferCpuSet
ClearOamBufferCpuSet: @ 0x080013F8
	push {r4, lr}
	sub sp, #4
	ldr r1, _08001430 @ =gUnknown_0300114C
	movs r0, #0
	strb r0, [r1]
	ldr r2, _08001434 @ =gFlags
	ldr r0, [r2]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	movs r1, #0x20
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	bne _08001450
	ldr r1, _08001438 @ =gUnknown_03001144
	ldr r0, [r1]
	ldr r2, _0800143C @ =gBgOffsetsBuffer
	cmp r0, r2
	bne _08001444
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r0, r2, r3
	str r0, [r1]
	ldr r0, _08001440 @ =gUnknown_03001B6C
	str r2, [r0]
	b _08001450
	.align 2, 0
_08001430: .4byte gUnknown_0300114C
_08001434: .4byte gFlags
_08001438: .4byte gUnknown_03001144
_0800143C: .4byte gBgOffsetsBuffer
_08001440: .4byte gUnknown_03001B6C
_08001444:
	str r2, [r1]
	ldr r1, _08001484 @ =gUnknown_03001B6C
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r0, r2, r3
	str r0, [r1]
_08001450:
	ldr r0, [r4]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp]
	ldr r1, _08001488 @ =gUnknown_03004630
	ldr r2, _0800148C @ =0x01000100
	mov r0, sp
	bl CpuFastSet
	ldr r1, _08001490 @ =gUnknown_030045F0
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r4]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08001484: .4byte gUnknown_03001B6C
_08001488: .4byte gUnknown_03004630
_0800148C: .4byte 0x01000100
_08001490: .4byte gUnknown_030045F0
