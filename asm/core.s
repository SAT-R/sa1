.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
	thumb_func_start EngineInit
EngineInit: @ 0x080003EC
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
	ldr r0, _08000450 @ =gFlagsPreVBlank
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
_08000450: .4byte gFlagsPreVBlank
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
	ldr r3, _080006F4 @ =sLastCalledVblankFuncId
	movs r1, #0xff
	strb r1, [r3]
	ldr r1, _080006F8 @ =gBackgroundsCopyQueueCursor
	strb r2, [r1]
	ldr r1, _080006FC @ =gBackgroundsCopyQueueIndex
	strb r2, [r1]
	ldr r1, _08000700 @ =sa2__gUnknown_03005390
	strb r2, [r1]
	ldr r1, _08000704 @ =gVramGraphicsCopyCursor
	strb r2, [r1]
	ldr r1, _08000708 @ =gVramGraphicsCopyQueueIndex
	strb r2, [r1]
	str r2, [sp]
	mov r3, sp
	str r3, [r0]
	ldr r1, _0800070C @ =sa2__gUnknown_03002280
	str r1, [r0, #4]
	ldr r3, _08000710 @ =0x85000004
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08000714 @ =sa2__gUnknown_03004D80
	str r2, [r1]
	str r2, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _08000718 @ =gBgScrollRegs
	str r1, [r0, #4]
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800071C @ =sa2__gUnknown_030017F4
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
	ldr r1, _08000730 @ =gOamFirstPausedIndex
	strb r4, [r1]
	add r3, sp, #4
	movs r1, #0x80
	lsls r1, r1, #2
	adds r5, r1, #0
	strh r5, [r3]
	str r3, [r0]
	ldr r1, _08000734 @ =gOamBuffer
	str r1, [r0, #4]
	ldr r4, _08000738 @ =0x81000200
	str r4, [r0, #8]
	ldr r1, [r0, #8]
	strh r5, [r3]
	str r3, [r0]
	ldr r1, _0800073C @ =gOamBuffer2
	str r1, [r0, #4]
	str r4, [r0, #8]
	ldr r1, [r0, #8]
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [sp]
	mov r3, sp
	str r3, [r0]
	ldr r1, _08000740 @ =sa2__gUnknown_03001850
	str r1, [r0, #4]
	ldr r3, _08000744 @ =0x85000008
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	str r4, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _08000748 @ =sa2__gUnknown_03004D60
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
	ldr r1, _08000754 @ =gBgPalette
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
	ldr r0, _0800075C @ =sa2__gUnknown_03001944
	strh r2, [r0]
	ldr r0, _08000760 @ =sa2__gUnknown_030017F0
	strh r1, [r0]
	ldr r0, _08000764 @ =sa2__gUnknown_03005394
	strh r1, [r0]
	ldr r0, _08000768 @ =sa2__gUnknown_03002A8C
	strh r2, [r0]
	ldr r0, _0800076C @ =sa2__gUnknown_03004D58
	strh r2, [r0]
	ldr r0, _08000770 @ =sa2__gUnknown_0300194C
	strh r2, [r0]
	ldr r0, _08000774 @ =sa2__gUnknown_03002820
	strh r2, [r0]
	ldr r0, _08000778 @ =sa2__gUnknown_03005398
	strh r1, [r0]
	ldr r0, _0800077C @ =gWinRegs
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
	ldr r0, _08000784 @ =gPseudoRandom
	str r2, [r0]
	ldr r3, _08000788 @ =gInputRecorder
	mov r8, r3
	ldr r0, _0800078C @ =gPhysicalInput
	mov sb, r0
	ldr r1, _08000790 @ =gInputPlaybackData
	mov sl, r1
	ldr r3, _08000794 @ =gFrameCount
	mov ip, r3
	ldr r7, _08000798 @ =gBgOffsetsBuffer
	ldr r6, _0800079C @ =gKeysFirstRepeatIntervals
	movs r5, #0x14
	ldr r4, _080007A0 @ =gKeysContinuedRepeatIntervals
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
	ldr r1, _080007B0 @ =gBgOffsetsHBlank
	str r7, [r1]
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r1, r7, r3
	ldr r3, _080007B4 @ =sa2__gUnknown_030022AC
	str r1, [r3]
	ldr r1, _080007B8 @ =sa2__gUnknown_03002878
	str r2, [r1]
	ldr r3, _080007BC @ =sa2__gUnknown_03002A80
	strb r2, [r3]
	ldr r1, _080007C0 @ =gNumHBlankCallbacks
	strb r2, [r1]
	ldr r3, _080007C4 @ =gNumHBlankIntrs
	strb r2, [r3]
	str r2, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r3, _080007C8 @ =gHBlankCallbacks
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
	ldr r3, _080007D0 @ =sa2__gUnknown_03004D50
	strb r2, [r3]
	ldr r3, _080007D4 @ =sa2__gUnknown_03001948
	strb r2, [r3]
	str r2, [sp]
	mov r3, sp
	str r3, [r0]
	ldr r3, _080007D8 @ =sa2__gUnknown_03001870
	str r3, [r0, #4]
	str r1, [r0, #8]
	ldr r3, [r0, #8]
	str r2, [sp]
	mov r2, sp
	str r2, [r0]
	ldr r3, _080007DC @ =sa2__gUnknown_030053A0
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
	ldr r1, _080007E8 @ =gVramHeapMaxTileSlots
	movs r2, #0x9c
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _080007EC @ =gVramHeapStartAddr
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
_080006F4: .4byte sLastCalledVblankFuncId
_080006F8: .4byte gBackgroundsCopyQueueCursor
_080006FC: .4byte gBackgroundsCopyQueueIndex
_08000700: .4byte sa2__gUnknown_03005390
_08000704: .4byte gVramGraphicsCopyCursor
_08000708: .4byte gVramGraphicsCopyQueueIndex
_0800070C: .4byte sa2__gUnknown_03002280
_08000710: .4byte 0x85000004
_08000714: .4byte sa2__gUnknown_03004D80
_08000718: .4byte gBgScrollRegs
_0800071C: .4byte sa2__gUnknown_030017F4
_08000720: .4byte gDispCnt
_08000724: .4byte gVramGraphicsCopyQueue
_08000728: .4byte 0x85000020
_0800072C: .4byte gOamFreeIndex
_08000730: .4byte gOamFirstPausedIndex
_08000734: .4byte gOamBuffer
_08000738: .4byte 0x81000200
_0800073C: .4byte gOamBuffer2
_08000740: .4byte sa2__gUnknown_03001850
_08000744: .4byte 0x85000008
_08000748: .4byte sa2__gUnknown_03004D60
_0800074C: .4byte gObjPalette
_08000750: .4byte 0x85000080
_08000754: .4byte gBgPalette
_08000758: .4byte gBgAffineRegs
_0800075C: .4byte sa2__gUnknown_03001944
_08000760: .4byte sa2__gUnknown_030017F0
_08000764: .4byte sa2__gUnknown_03005394
_08000768: .4byte sa2__gUnknown_03002A8C
_0800076C: .4byte sa2__gUnknown_03004D58
_08000770: .4byte sa2__gUnknown_0300194C
_08000774: .4byte sa2__gUnknown_03002820
_08000778: .4byte sa2__gUnknown_03005398
_0800077C: .4byte gWinRegs
_08000780: .4byte gBldRegs
_08000784: .4byte gPseudoRandom
_08000788: .4byte gInputRecorder
_0800078C: .4byte gPhysicalInput
_08000790: .4byte gInputPlaybackData
_08000794: .4byte gFrameCount
_08000798: .4byte gBgOffsetsBuffer
_0800079C: .4byte gKeysFirstRepeatIntervals
_080007A0: .4byte gKeysContinuedRepeatIntervals
_080007A4: .4byte gIntrTable
_080007A8: .4byte gIntrTableTemplate
_080007AC: .4byte 0x85000140
_080007B0: .4byte gBgOffsetsHBlank
_080007B4: .4byte sa2__gUnknown_030022AC
_080007B8: .4byte sa2__gUnknown_03002878
_080007BC: .4byte sa2__gUnknown_03002A80
_080007C0: .4byte gNumHBlankCallbacks
_080007C4: .4byte gNumHBlankIntrs
_080007C8: .4byte gHBlankCallbacks
_080007CC: .4byte gHBlankIntrs
_080007D0: .4byte sa2__gUnknown_03004D50
_080007D4: .4byte sa2__gUnknown_03001948
_080007D8: .4byte sa2__gUnknown_03001870
_080007DC: .4byte sa2__gUnknown_030053A0
_080007E0: .4byte 0x0093F500
_080007E4: .4byte gExecSoundMain
_080007E8: .4byte gVramHeapMaxTileSlots
_080007EC: .4byte gVramHeapStartAddr
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
	ldr r0, _08000884 @ =gMultiSioSend
	str r0, [r1, #4]
	ldr r0, _08000888 @ =0x85000005
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	str r2, [sp]
	str r3, [r1]
	ldr r0, _0800088C @ =gMultiSioRecv
	str r0, [r1, #4]
	ldr r0, _08000890 @ =0x85000014
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08000894 @ =gMultiSioStatusFlags
	str r2, [r0]
	ldr r0, _08000898 @ =gMultiSioEnabled
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
_08000884: .4byte gMultiSioSend
_08000888: .4byte 0x85000005
_0800088C: .4byte gMultiSioRecv
_08000890: .4byte 0x85000014
_08000894: .4byte gMultiSioStatusFlags
_08000898: .4byte gMultiSioEnabled

.endif
