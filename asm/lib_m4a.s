.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
	thumb_func_start MidiKeyToFreq
MidiKeyToFreq: @ 0x080979B4
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r7, r2, #0x18
	cmp r6, #0xb2
	bls _080979C8
	movs r6, #0xb2
	movs r7, #0xff
	lsls r7, r7, #0x18
_080979C8:
	ldr r3, _08097A10 @ =gScaleTable
	adds r0, r6, r3
	ldrb r5, [r0]
	ldr r4, _08097A14 @ =gFreqTable
	movs r2, #0xf
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	lsrs r1, r5, #4
	ldr r5, [r0]
	lsrs r5, r1
	adds r0, r6, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	lsrs r1, r1, #4
	ldr r0, [r0]
	lsrs r0, r1
	mov r1, ip
	ldr r4, [r1, #4]
	subs r0, r0, r5
	adds r1, r7, #0
	bl umul3232H32
	adds r1, r0, #0
	adds r1, r5, r1
	adds r0, r4, #0
	bl umul3232H32
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08097A10: .4byte gScaleTable
_08097A14: .4byte gFreqTable
_08097A18:

DummyFunc:
	bx	lr
    .align 2 , 0

	thumb_func_start MPlayContinue
MPlayContinue: @ 0x08097A1C
	adds r2, r0, #0
	ldr r3, [r2, #0x34]
	ldr r0, _08097A30 @ =0x68736D53
	cmp r3, r0
	bne _08097A2E
	ldr r0, [r2, #4]
	ldr r1, _08097A34 @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r2, #4]
_08097A2E:
	bx lr
	.align 2, 0
_08097A30: .4byte 0x68736D53
_08097A34: .4byte 0x7FFFFFFF

	thumb_func_start MPlayFadeOut
MPlayFadeOut: @ 0x08097A38
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _08097A54 @ =0x68736D53
	cmp r3, r0
	bne _08097A50
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #0x28]
_08097A50:
	bx lr
	.align 2, 0
_08097A54: .4byte 0x68736D53

	thumb_func_start m4aSoundInit
m4aSoundInit: @ 0x08097A58
	push {r4, r5, r6, lr}
	ldr r0, _08097AAC @ =SoundMainRAM
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _08097AB0 @ =0x03000000
	ldr r2, _08097AB4 @ =0x04000100
	bl CpuSet
	ldr r0, _08097AB8 @ =gSoundInfo
	bl SoundInit
	ldr r0, _08097ABC @ =gCgbChans
	bl MPlayExtender
	ldr r0, _08097AC0 @ =0x0093F500
	bl m4aSoundMode
	ldr r0, _08097AC4 @ =0x00000004
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08097AA6
	ldr r5, _08097AC8 @ =gMPlayTable
	adds r6, r0, #0
_08097A8A:
	ldr r4, [r5]
	ldr r1, [r5, #4]
	ldrb r2, [r5, #8]
	adds r0, r4, #0
	bl MPlayOpen
	ldrh r0, [r5, #0xa]
	strb r0, [r4, #0xb]
	ldr r0, _08097ACC @ =gMPlayMemAccArea
	str r0, [r4, #0x18]
	adds r5, #0xc
	subs r6, #1
	cmp r6, #0
	bne _08097A8A
_08097AA6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08097AAC: .4byte SoundMainRAM
_08097AB0: .4byte 0x03000000
_08097AB4: .4byte 0x04000100
_08097AB8: .4byte gSoundInfo
_08097ABC: .4byte gCgbChans
_08097AC0: .4byte 0x0093F500
_08097AC4: .4byte 0x00000004
_08097AC8: .4byte gMPlayTable
_08097ACC: .4byte gMPlayMemAccArea

	thumb_func_start m4aSoundMain
m4aSoundMain: @ 0x08097AD0
	push {lr}
	bl SoundMain
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start m4aSongNumStart
m4aSongNumStart: @ 0x08097ADC
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08097B00 @ =gMPlayTable
	ldr r1, _08097B04 @ =gSongTable
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r0]
	adds r0, r2, #0
	bl MPlayStart
	pop {r0}
	bx r0
	.align 2, 0
_08097B00: .4byte gMPlayTable
_08097B04: .4byte gSongTable

	thumb_func_start m4aSongNumStartOrChange
m4aSongNumStartOrChange: @ 0x08097B08
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08097B34 @ =gMPlayTable
	ldr r1, _08097B38 @ =gSongTable
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r3, [r1]
	ldr r2, [r0]
	cmp r3, r2
	beq _08097B3C
	adds r0, r1, #0
	adds r1, r2, #0
	bl MPlayStart
	b _08097B50
	.align 2, 0
_08097B34: .4byte gMPlayTable
_08097B38: .4byte gSongTable
_08097B3C:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _08097B48
	cmp r2, #0
	bge _08097B50
_08097B48:
	adds r0, r1, #0
	adds r1, r3, #0
	bl MPlayStart
_08097B50:
	pop {r0}
	bx r0

	thumb_func_start m4aSongNumStartOrContinue
m4aSongNumStartOrContinue: @ 0x08097B54
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08097B80 @ =gMPlayTable
	ldr r1, _08097B84 @ =gSongTable
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r3, [r1]
	ldr r2, [r0]
	cmp r3, r2
	beq _08097B88
	adds r0, r1, #0
	adds r1, r2, #0
	bl MPlayStart
	b _08097BA4
	.align 2, 0
_08097B80: .4byte gMPlayTable
_08097B84: .4byte gSongTable
_08097B88:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	bne _08097B9A
	adds r0, r1, #0
	adds r1, r3, #0
	bl MPlayStart
	b _08097BA4
_08097B9A:
	cmp r2, #0
	bge _08097BA4
	adds r0, r1, #0
	bl MPlayContinue
_08097BA4:
	pop {r0}
	bx r0

	thumb_func_start m4aSongNumStop
m4aSongNumStop: @ 0x08097BA8
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08097BD4 @ =gMPlayTable
	ldr r1, _08097BD8 @ =gSongTable
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bne _08097BCE
	adds r0, r2, #0
	bl MPlayStop
_08097BCE:
	pop {r0}
	bx r0
	.align 2, 0
_08097BD4: .4byte gMPlayTable
_08097BD8: .4byte gSongTable

	thumb_func_start m4aSongNumContinue
m4aSongNumContinue: @ 0x08097BDC
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08097C08 @ =gMPlayTable
	ldr r1, _08097C0C @ =gSongTable
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bne _08097C02
	adds r0, r2, #0
	bl MPlayContinue
_08097C02:
	pop {r0}
	bx r0
	.align 2, 0
_08097C08: .4byte gMPlayTable
_08097C0C: .4byte gSongTable

	thumb_func_start m4aMPlayAllStop
m4aMPlayAllStop: @ 0x08097C10
	push {r4, r5, lr}
	ldr r0, _08097C34 @ =0x00000004
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08097C2E
	ldr r5, _08097C38 @ =gMPlayTable
	adds r4, r0, #0
_08097C20:
	ldr r0, [r5]
	bl MPlayStop
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _08097C20
_08097C2E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08097C34: .4byte 0x00000004
_08097C38: .4byte gMPlayTable

	thumb_func_start m4aMPlayContinue
m4aMPlayContinue: @ 0x08097C3C
	push {lr}
	bl MPlayContinue
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start m4aMPlayAllContinue
m4aMPlayAllContinue: @ 0x08097C48
	push {r4, r5, lr}
	ldr r0, _08097C6C @ =0x00000004
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08097C66
	ldr r5, _08097C70 @ =gMPlayTable
	adds r4, r0, #0
_08097C58:
	ldr r0, [r5]
	bl MPlayContinue
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _08097C58
_08097C66:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08097C6C: .4byte 0x00000004
_08097C70: .4byte gMPlayTable

	thumb_func_start m4aMPlayFadeOut
m4aMPlayFadeOut: @ 0x08097C74
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl MPlayFadeOut
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start m4aMPlayFadeOutTemporarily
m4aMPlayFadeOutTemporarily: @ 0x08097C84
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _08097C9C @ =0x68736D53
	cmp r3, r0
	bne _08097C9A
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	ldr r0, _08097CA0 @ =0x00000101
	strh r0, [r2, #0x28]
_08097C9A:
	bx lr
	.align 2, 0
_08097C9C: .4byte 0x68736D53
_08097CA0: .4byte 0x00000101

	thumb_func_start m4aMPlayFadeIn
m4aMPlayFadeIn: @ 0x08097CA4
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _08097CC4 @ =0x68736D53
	cmp r3, r0
	bne _08097CC2
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #2
	strh r0, [r2, #0x28]
	ldr r0, [r2, #4]
	ldr r1, _08097CC8 @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r2, #4]
_08097CC2:
	bx lr
	.align 2, 0
_08097CC4: .4byte 0x68736D53
_08097CC8: .4byte 0x7FFFFFFF

	thumb_func_start m4aMPlayImmInit
m4aMPlayImmInit: @ 0x08097CCC
	push {r4, r5, r6, r7, lr}
	ldrb r5, [r0, #8]
	ldr r4, [r0, #0x2c]
	cmp r5, #0
	ble _08097D0E
	movs r7, #0x80
_08097CD8:
	ldrb r1, [r4]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08097D06
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08097D06
	adds r0, r4, #0
	bl Clear64byte
	strb r7, [r4]
	movs r0, #2
	strb r0, [r4, #0xf]
	strb r6, [r4, #0x13]
	movs r0, #0x16
	strb r0, [r4, #0x19]
	adds r1, r4, #0
	adds r1, #0x24
	movs r0, #1
	strb r0, [r1]
_08097D06:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _08097CD8
_08097D0E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start MPlayExtender
MPlayExtender: @ 0x08097D14
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _08097DDC @ =0x04000084
	movs r0, #0x8f
	strh r0, [r1]
	ldr r3, _08097DE0 @ =0x04000080
	movs r2, #0
	strh r2, [r3]
	ldr r0, _08097DE4 @ =0x04000063
	movs r1, #8
	strb r1, [r0]
	adds r0, #6
	strb r1, [r0]
	adds r0, #0x10
	strb r1, [r0]
	subs r0, #0x14
	movs r1, #0x80
	strb r1, [r0]
	adds r0, #8
	strb r1, [r0]
	adds r0, #0x10
	strb r1, [r0]
	subs r0, #0xd
	strb r2, [r0]
	movs r0, #0x77
	strb r0, [r3]
	ldr r0, _08097DE8 @ =gUnknown_03007FF0
	ldr r4, [r0]
	ldr r6, [r4]
	ldr r0, _08097DEC @ =0x68736D53
	cmp r6, r0
	bne _08097DD4
	adds r0, r6, #1
	str r0, [r4]
	ldr r1, _08097DF0 @ =gMPlayJumpTable
	ldr r0, _08097DF4 @ =ply_memacc
	str r0, [r1, #0x20]
	ldr r0, _08097DF8 @ =ply_lfos
	str r0, [r1, #0x44]
	ldr r0, _08097DFC @ =ply_mod
	str r0, [r1, #0x4c]
	ldr r0, _08097E00 @ =ply_xcmd
	str r0, [r1, #0x70]
	ldr r0, _08097E04 @ =sub_8097924
	str r0, [r1, #0x74]
	ldr r0, _08097E08 @ =SampleFreqSet
	str r0, [r1, #0x78]
	ldr r0, _08097E0C @ =sub_80976B0
	str r0, [r1, #0x7c]
	adds r2, r1, #0
	adds r2, #0x80
	ldr r0, _08097E10 @ =FadeOutBody
	str r0, [r2]
	adds r1, #0x84
	ldr r0, _08097E14 @ =TrkVolPitSet
	str r0, [r1]
	str r5, [r4, #0x1c]
	ldr r0, _08097E18 @ =CgbSound
	str r0, [r4, #0x28]
	ldr r0, _08097E1C @ =CgbOscOff
	str r0, [r4, #0x2c]
	ldr r0, _08097E20 @ =MidiKeyToCgbFreq
	str r0, [r4, #0x30]
	ldr r0, _08097E24 @ =0x00000000
	movs r1, #0
	strb r0, [r4, #0xc]
	str r1, [sp]
	ldr r2, _08097E28 @ =0x05000040
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	movs r0, #1
	strb r0, [r5, #1]
	movs r0, #0x11
	strb r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x41
	movs r0, #2
	strb r0, [r1]
	adds r1, #0x1b
	movs r0, #0x22
	strb r0, [r1]
	adds r1, #0x25
	movs r0, #3
	strb r0, [r1]
	adds r1, #0x1b
	movs r0, #0x44
	strb r0, [r1]
	adds r1, #0x24
	movs r0, #4
	strb r0, [r1, #1]
	movs r0, #0x88
	strb r0, [r1, #0x1c]
	str r6, [r4]
_08097DD4:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08097DDC: .4byte 0x04000084
_08097DE0: .4byte 0x04000080
_08097DE4: .4byte 0x04000063
_08097DE8: .4byte gUnknown_03007FF0
_08097DEC: .4byte 0x68736D53
_08097DF0: .4byte gMPlayJumpTable
_08097DF4: .4byte ply_memacc
_08097DF8: .4byte ply_lfos
_08097DFC: .4byte ply_mod
_08097E00: .4byte ply_xcmd
_08097E04: .4byte sub_8097924
_08097E08: .4byte SampleFreqSet
_08097E0C: .4byte sub_80976B0
_08097E10: .4byte FadeOutBody
_08097E14: .4byte TrkVolPitSet
_08097E18: .4byte CgbSound
_08097E1C: .4byte CgbOscOff
_08097E20: .4byte MidiKeyToCgbFreq
_08097E24: .4byte 0x00000000
_08097E28: .4byte 0x05000040

MusicPlayerJumpTableCopy:
	.byte 0x2A, 0xDF, 0x70, 0x47

	thumb_func_start ClearChain
ClearChain: @ 0x08097E30
	push {lr}
	ldr r1, _08097E40 @ =gUnknown_02002438
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_08097E40: .4byte gUnknown_02002438

	thumb_func_start Clear64byte
Clear64byte: @ 0x08097E44
	push {lr}
	ldr r1, _08097E54 @ =gUnknown_0200243C
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_08097E54: .4byte gUnknown_0200243C

	thumb_func_start SoundInit
SoundInit: @ 0x08097E58
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r3, #0
	str r3, [r5]
	ldr r1, _08097F10 @ =0x040000C4
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x12
	ands r0, r2
	cmp r0, #0
	beq _08097E74
	ldr r0, _08097F14 @ =0x84400004
	str r0, [r1]
_08097E74:
	ldr r1, _08097F18 @ =0x040000D0
	ldr r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _08097E82
	ldr r0, _08097F14 @ =0x84400004
	str r0, [r1]
_08097E82:
	ldr r0, _08097F1C @ =0x040000C6
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	ldr r1, _08097F20 @ =0x04000084
	movs r0, #0x8f
	strh r0, [r1]
	subs r1, #2
	ldr r2, _08097F24 @ =0x0000A90E
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _08097F28 @ =0x04000089
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08097F2C @ =0x040000BC
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _08097F30 @ =0x040000A0
	str r0, [r1]
	adds r1, #8
	movs r2, #0x98
	lsls r2, r2, #4
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _08097F34 @ =0x040000A4
	str r0, [r1]
	ldr r0, _08097F38 @ =gUnknown_03007FF0
	str r5, [r0]
	str r3, [sp]
	ldr r2, _08097F3C @ =0x050003EC
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	movs r0, #8
	strb r0, [r5, #6]
	movs r0, #0xf
	strb r0, [r5, #7]
	ldr r0, _08097F40 @ =ply_note
	str r0, [r5, #0x38]
	ldr r0, _08097F44 @ =0x08098F49
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	str r0, [r5, #0x30]
	str r0, [r5, #0x3c]
	ldr r4, _08097F48 @ =gMPlayJumpTable
	adds r0, r4, #0
	bl MPlayJumpTableCopy
	str r4, [r5, #0x34]
	movs r0, #0x80
	lsls r0, r0, #0xb
	bl SampleFreqSet
	ldr r0, _08097F4C @ =0x68736D53
	str r0, [r5]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08097F10: .4byte 0x040000C4
_08097F14: .4byte 0x84400004
_08097F18: .4byte 0x040000D0
_08097F1C: .4byte 0x040000C6
_08097F20: .4byte 0x04000084
_08097F24: .4byte 0x0000A90E
_08097F28: .4byte 0x04000089
_08097F2C: .4byte 0x040000BC
_08097F30: .4byte 0x040000A0
_08097F34: .4byte 0x040000A4
_08097F38: .4byte gUnknown_03007FF0
_08097F3C: .4byte 0x050003EC
_08097F40: .4byte ply_note
_08097F44: .4byte DummyCallback
_08097F48: .4byte gMPlayJumpTable
_08097F4C: .4byte 0x68736D53

	thumb_func_start SampleFreqSet
SampleFreqSet: @ 0x08097F50
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, _08097FD0 @ =gUnknown_03007FF0
	ldr r4, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0xc
	ands r0, r2
	lsrs r2, r0, #0x10
	movs r6, #0
	strb r2, [r4, #8]
	ldr r1, _08097FD4 @ =gUnknown_086DB748
	subs r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r5, [r0]
	str r5, [r4, #0x10]
	movs r0, #0xc6
	lsls r0, r0, #3
	adds r1, r5, #0
	bl __divsi3
	strb r0, [r4, #0xb]
	ldr r0, _08097FD8 @ =0x00091D1B
	muls r0, r5, r0
	ldr r1, _08097FDC @ =0x00001388
	adds r0, r0, r1
	ldr r1, _08097FE0 @ =0x00002710
	bl __divsi3
	adds r1, r0, #0
	str r1, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0x11
	bl __divsi3
	adds r0, #1
	asrs r0, r0, #1
	str r0, [r4, #0x18]
	ldr r0, _08097FE4 @ =0x04000102
	strh r6, [r0]
	ldr r4, _08097FE8 @ =0x04000100
	ldr r0, _08097FEC @ =0x00044940
	adds r1, r5, #0
	bl __divsi3
	rsbs r0, r0, #0
	strh r0, [r4]
	bl m4aSoundVSyncOn
	ldr r1, _08097FF0 @ =0x04000006
_08097FB4:
	ldrb r0, [r1]
	cmp r0, #0x9f
	beq _08097FB4
	ldr r1, _08097FF0 @ =0x04000006
_08097FBC:
	ldrb r0, [r1]
	cmp r0, #0x9f
	bne _08097FBC
	ldr r1, _08097FE4 @ =0x04000102
	movs r0, #0x80
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08097FD0: .4byte gUnknown_03007FF0
_08097FD4: .4byte gUnknown_086DB748
_08097FD8: .4byte 0x00091D1B
_08097FDC: .4byte 0x00001388
_08097FE0: .4byte 0x00002710
_08097FE4: .4byte 0x04000102
_08097FE8: .4byte 0x04000100
_08097FEC: .4byte 0x00044940
_08097FF0: .4byte 0x04000006

	thumb_func_start m4aSoundMode
m4aSoundMode: @ 0x08097FF4
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, _08098080 @ =gUnknown_03007FF0
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _08098084 @ =0x68736D53
	cmp r1, r0
	bne _0809807A
	adds r0, r1, #1
	str r0, [r5]
	movs r4, #0xff
	ands r4, r3
	cmp r4, #0
	beq _08098016
	movs r0, #0x7f
	ands r4, r0
	strb r4, [r5, #5]
_08098016:
	movs r4, #0xf0
	lsls r4, r4, #4
	ands r4, r3
	cmp r4, #0
	beq _08098036
	lsrs r0, r4, #8
	strb r0, [r5, #6]
	movs r4, #0xc
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
_0809802C:
	strb r1, [r0]
	subs r4, #1
	adds r0, #0x40
	cmp r4, #0
	bne _0809802C
_08098036:
	movs r4, #0xf0
	lsls r4, r4, #8
	ands r4, r3
	cmp r4, #0
	beq _08098044
	lsrs r0, r4, #0xc
	strb r0, [r5, #7]
_08098044:
	movs r4, #0xb0
	lsls r4, r4, #0x10
	ands r4, r3
	cmp r4, #0
	beq _08098062
	movs r0, #0xc0
	lsls r0, r0, #0xe
	ands r0, r4
	lsrs r4, r0, #0xe
	ldr r2, _08098088 @ =0x04000089
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
_08098062:
	movs r4, #0xf0
	lsls r4, r4, #0xc
	ands r4, r3
	cmp r4, #0
	beq _08098076
	bl m4aSoundVSyncOff
	adds r0, r4, #0
	bl SampleFreqSet
_08098076:
	ldr r0, _08098084 @ =0x68736D53
	str r0, [r5]
_0809807A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08098080: .4byte gUnknown_03007FF0
_08098084: .4byte 0x68736D53
_08098088: .4byte 0x04000089

	thumb_func_start SoundClear
SoundClear: @ 0x0809808C
	push {r4, r5, r6, r7, lr}
	ldr r0, _080980D8 @ =gUnknown_03007FF0
	ldr r6, [r0]
	ldr r1, [r6]
	ldr r0, _080980DC @ =0x68736D53
	cmp r1, r0
	bne _080980D2
	adds r0, r1, #1
	str r0, [r6]
	movs r5, #0xc
	adds r4, r6, #0
	adds r4, #0x50
	movs r0, #0
_080980A6:
	strb r0, [r4]
	subs r5, #1
	adds r4, #0x40
	cmp r5, #0
	bgt _080980A6
	ldr r4, [r6, #0x1c]
	cmp r4, #0
	beq _080980CE
	movs r5, #1
	movs r7, #0
_080980BA:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	ldr r1, [r6, #0x2c]
	bl _call_via_r1
	strb r7, [r4]
	adds r5, #1
	adds r4, #0x40
	cmp r5, #4
	ble _080980BA
_080980CE:
	ldr r0, _080980DC @ =0x68736D53
	str r0, [r6]
_080980D2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080980D8: .4byte gUnknown_03007FF0
_080980DC: .4byte 0x68736D53

	thumb_func_start m4aSoundVSyncOff
m4aSoundVSyncOff: @ 0x080980E0
	push {lr}
	sub sp, #4
	ldr r0, _08098140 @ =gUnknown_03007FF0
	ldr r2, [r0]
	ldr r1, [r2]
	ldr r3, _08098144 @ =0x978C92AD
	adds r0, r1, r3
	cmp r0, #1
	bhi _08098138
	adds r0, r1, #0
	adds r0, #0xa
	str r0, [r2]
	ldr r1, _08098148 @ =0x040000C4
	ldr r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #0x12
	ands r0, r3
	cmp r0, #0
	beq _0809810A
	ldr r0, _0809814C @ =0x84400004
	str r0, [r1]
_0809810A:
	ldr r1, _08098150 @ =0x040000D0
	ldr r0, [r1]
	ands r0, r3
	cmp r0, #0
	beq _08098118
	ldr r0, _0809814C @ =0x84400004
	str r0, [r1]
_08098118:
	ldr r0, _08098154 @ =0x040000C6
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	movs r0, #0
	str r0, [sp]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r2, r0
	ldr r2, _08098158 @ =0x05000318
	mov r0, sp
	bl CpuSet
_08098138:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08098140: .4byte gUnknown_03007FF0
_08098144: .4byte 0x978C92AD
_08098148: .4byte 0x040000C4
_0809814C: .4byte 0x84400004
_08098150: .4byte 0x040000D0
_08098154: .4byte 0x040000C6
_08098158: .4byte 0x05000318

	thumb_func_start m4aSoundVSyncOn
m4aSoundVSyncOn: @ 0x0809815C
	push {r4, lr}
	ldr r0, _0809818C @ =gUnknown_03007FF0
	ldr r2, [r0]
	ldr r3, [r2]
	ldr r0, _08098190 @ =0x68736D53
	cmp r3, r0
	beq _08098184
	ldr r0, _08098194 @ =0x040000C6
	movs r4, #0xb6
	lsls r4, r4, #8
	adds r1, r4, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	ldrb r0, [r2, #4]
	movs r0, #0
	strb r0, [r2, #4]
	adds r0, r3, #0
	subs r0, #0xa
	str r0, [r2]
_08098184:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809818C: .4byte gUnknown_03007FF0
_08098190: .4byte 0x68736D53
_08098194: .4byte 0x040000C6

	thumb_func_start MPlayOpen
MPlayOpen: @ 0x08098198
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	cmp r4, #0
	beq _080981FC
	cmp r4, #0x10
	bls _080981AC
	movs r4, #0x10
_080981AC:
	ldr r0, _08098204 @ =gUnknown_03007FF0
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _08098208 @ =0x68736D53
	cmp r1, r0
	bne _080981FC
	adds r0, r1, #1
	str r0, [r5]
	adds r0, r7, #0
	bl Clear64byte
	str r6, [r7, #0x2c]
	strb r4, [r7, #8]
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	cmp r4, #0
	beq _080981E0
	movs r1, #0
_080981D2:
	strb r1, [r6]
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, #0x50
	cmp r4, #0
	bne _080981D2
_080981E0:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _080981F0
	str r0, [r7, #0x38]
	ldr r0, [r5, #0x24]
	str r0, [r7, #0x3c]
	movs r0, #0
	str r0, [r5, #0x20]
_080981F0:
	str r7, [r5, #0x24]
	ldr r0, _0809820C @ =MPlayMain
	str r0, [r5, #0x20]
	ldr r0, _08098208 @ =0x68736D53
	str r0, [r5]
	str r0, [r7, #0x34]
_080981FC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08098204: .4byte gUnknown_03007FF0
_08098208: .4byte 0x68736D53
_0809820C: .4byte MPlayMain

	thumb_func_start MPlayStart
MPlayStart: @ 0x08098210
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r1, [r5, #0x34]
	ldr r0, _080982F0 @ =0x68736D53
	cmp r1, r0
	bne _080982E6
	ldrb r0, [r5, #0xb]
	ldrb r2, [r7, #2]
	cmp r0, #0
	beq _08098252
	ldr r0, [r5]
	cmp r0, #0
	beq _0809823C
	ldr r1, [r5, #0x2c]
	movs r0, #0x40
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _08098248
_0809823C:
	ldr r1, [r5, #4]
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _08098252
	cmp r1, #0
	blt _08098252
_08098248:
	ldrb r0, [r7, #2]
	adds r2, r0, #0
	ldrb r0, [r5, #9]
	cmp r0, r2
	bhi _080982E6
_08098252:
	ldr r0, [r5, #0x34]
	adds r0, #1
	str r0, [r5, #0x34]
	movs r1, #0
	str r1, [r5, #4]
	str r7, [r5]
	ldr r0, [r7, #4]
	str r0, [r5, #0x30]
	strb r2, [r5, #9]
	str r1, [r5, #0xc]
	movs r0, #0x96
	strh r0, [r5, #0x1c]
	strh r0, [r5, #0x20]
	adds r0, #0x6a
	strh r0, [r5, #0x1e]
	strh r1, [r5, #0x22]
	strh r1, [r5, #0x24]
	movs r6, #0
	ldr r4, [r5, #0x2c]
	ldrb r1, [r7]
	cmp r6, r1
	bge _080982B2
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _080982D2
	mov r8, r6
_08098286:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_80976B0
	movs r0, #0xc0
	strb r0, [r4]
	mov r1, r8
	str r1, [r4, #0x20]
	lsls r1, r6, #2
	adds r0, r7, #0
	adds r0, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x40]
	adds r6, #1
	adds r4, #0x50
	ldrb r0, [r7]
	cmp r6, r0
	bge _080982B2
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _08098286
_080982B2:
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _080982D2
	movs r1, #0
	mov r8, r1
_080982BC:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_80976B0
	mov r0, r8
	strb r0, [r4]
	adds r6, #1
	adds r4, #0x50
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _080982BC
_080982D2:
	movs r0, #0x80
	ldrb r1, [r7, #3]
	ands r0, r1
	cmp r0, #0
	beq _080982E2
	ldrb r0, [r7, #3]
	bl m4aSoundMode
_080982E2:
	ldr r0, _080982F0 @ =0x68736D53
	str r0, [r5, #0x34]
_080982E6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080982F0: .4byte 0x68736D53

	thumb_func_start MPlayStop
MPlayStop: @ 0x080982F4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x34]
	ldr r0, _08098330 @ =0x68736D53
	cmp r1, r0
	bne _0809832A
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r6, #4]
	ldrb r4, [r6, #8]
	ldr r5, [r6, #0x2c]
	cmp r4, #0
	ble _08098326
_08098316:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_80976B0
	subs r4, #1
	adds r5, #0x50
	cmp r4, #0
	bgt _08098316
_08098326:
	ldr r0, _08098330 @ =0x68736D53
	str r0, [r6, #0x34]
_0809832A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08098330: .4byte 0x68736D53

	thumb_func_start FadeOutBody
FadeOutBody: @ 0x08098334
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrh r1, [r6, #0x24]
	cmp r1, #0
	beq _080983F6
	ldrh r0, [r6, #0x26]
	subs r0, #1
	strh r0, [r6, #0x26]
	ldr r3, _08098374 @ =0x0000FFFF
	adds r2, r3, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _080983F6
	strh r1, [r6, #0x26]
	ldrh r1, [r6, #0x28]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08098378
	adds r0, r1, #0
	adds r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	cmp r0, #0xff
	bls _080983CA
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #0x28]
	strh r3, [r6, #0x24]
	b _080983CA
	.align 2, 0
_08098374: .4byte 0x0000FFFF
_08098378:
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080983CA
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _080983AA
_0809838E:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_80976B0
	movs r0, #1
	ldrh r7, [r6, #0x28]
	ands r0, r7
	cmp r0, #0
	bne _080983A2
	strb r0, [r4]
_080983A2:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _0809838E
_080983AA:
	movs r0, #1
	ldrh r1, [r6, #0x28]
	ands r0, r1
	cmp r0, #0
	beq _080983BE
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	b _080983C2
_080983BE:
	movs r0, #0x80
	lsls r0, r0, #0x18
_080983C2:
	str r0, [r6, #4]
	movs r0, #0
	strh r0, [r6, #0x24]
	b _080983F6
_080983CA:
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _080983F6
	movs r3, #0x80
	movs r7, #0
	movs r2, #3
_080983D8:
	ldrb r1, [r4]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080983EE
	ldrh r7, [r6, #0x28]
	lsrs r0, r7, #2
	strb r0, [r4, #0x13]
	adds r0, r1, #0
	orrs r0, r2
	strb r0, [r4]
_080983EE:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _080983D8
_080983F6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start TrkVolPitSet
TrkVolPitSet: @ 0x080983FC
	push {r4, lr}
	adds r2, r1, #0
	movs r0, #1
	ldrb r1, [r2]
	ands r0, r1
	cmp r0, #0
	beq _08098460
	ldrb r3, [r2, #0x13]
	ldrb r1, [r2, #0x12]
	adds r0, r3, #0
	muls r0, r1, r0
	lsrs r3, r0, #5
	ldrb r4, [r2, #0x18]
	cmp r4, #1
	bne _08098424
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r3, r0, #7
_08098424:
	movs r0, #0x14
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	movs r1, #0x15
	ldrsb r1, [r2, r1]
	adds r1, r0, r1
	cmp r4, #2
	bne _0809843A
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
_0809843A:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _08098446
	adds r1, r0, #0
	b _0809844C
_08098446:
	cmp r1, #0x7f
	ble _0809844C
	movs r1, #0x7f
_0809844C:
	adds r0, r1, #0
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r0, r0, #8
	strb r0, [r2, #0x10]
	movs r0, #0x7f
	subs r0, r0, r1
	muls r0, r3, r0
	lsrs r0, r0, #8
	strb r0, [r2, #0x11]
_08098460:
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _080984A4
	movs r0, #0xe
	ldrsb r0, [r2, r0]
	ldrb r1, [r2, #0xf]
	muls r0, r1, r0
	movs r1, #0xc
	ldrsb r1, [r2, r1]
	adds r1, r1, r0
	lsls r1, r1, #2
	movs r0, #0xa
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	movs r0, #0xb
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r0, [r2, #0xd]
	adds r1, r0, r1
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	bne _0809849E
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	lsls r0, r0, #4
	adds r1, r1, r0
_0809849E:
	asrs r0, r1, #8
	strb r0, [r2, #8]
	strb r1, [r2, #9]
_080984A4:
	movs r0, #0xfa
	ands r0, r3
	strb r0, [r2]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start MidiKeyToCgbFreq
MidiKeyToCgbFreq: @ 0x080984B0
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov ip, r2
	cmp r0, #4
	bne _080984E8
	cmp r5, #0x14
	bhi _080984CC
	movs r5, #0
	b _080984DA
_080984CC:
	adds r0, r5, #0
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3b
	bls _080984DA
	movs r5, #0x3b
_080984DA:
	ldr r0, _080984E4 @ =gNoiseTable
	adds r0, r5, r0
	ldrb r0, [r0]
	b _0809854A
	.align 2, 0
_080984E4: .4byte gNoiseTable
_080984E8:
	cmp r5, #0x23
	bhi _080984F4
	movs r0, #0
	mov ip, r0
	movs r5, #0
	b _08098506
_080984F4:
	adds r0, r5, #0
	subs r0, #0x24
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x82
	bls _08098506
	movs r5, #0x82
	movs r1, #0xff
	mov ip, r1
_08098506:
	ldr r3, _08098550 @ =gUnknown_086DB760
	adds r0, r5, r3
	ldrb r6, [r0]
	ldr r4, _08098554 @ =gUnknown_086DB7E4
	movs r2, #0xf
	adds r0, r6, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r7, #0
	ldrsh r1, [r0, r7]
	asrs r0, r6, #4
	adds r6, r1, #0
	asrs r6, r0
	adds r0, r5, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	asrs r1, r1, #4
	asrs r0, r1
	subs r0, r0, r6
	mov r7, ip
	muls r7, r0, r7
	adds r0, r7, #0
	asrs r0, r0, #8
	adds r0, r6, r0
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
_0809854A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08098550: .4byte gUnknown_086DB760
_08098554: .4byte gUnknown_086DB7E4

	thumb_func_start CgbOscOff
CgbOscOff: @ 0x08098558
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, #2
	beq _08098580
	cmp r0, #2
	bgt _0809856C
	cmp r0, #1
	beq _08098572
	b _08098594
_0809856C:
	cmp r1, #3
	beq _08098588
	b _08098594
_08098572:
	ldr r1, _0809857C @ =0x04000063
	movs r0, #8
	strb r0, [r1]
	adds r1, #2
	b _0809859C
	.align 2, 0
_0809857C: .4byte 0x04000063
_08098580:
	ldr r1, _08098584 @ =0x04000069
	b _08098596
	.align 2, 0
_08098584: .4byte 0x04000069
_08098588:
	ldr r1, _08098590 @ =0x04000070
	movs r0, #0
	b _0809859E
	.align 2, 0
_08098590: .4byte 0x04000070
_08098594:
	ldr r1, _080985A4 @ =0x04000079
_08098596:
	movs r0, #8
	strb r0, [r1]
	adds r1, #4
_0809859C:
	movs r0, #0x80
_0809859E:
	strb r0, [r1]
	bx lr
	.align 2, 0
_080985A4: .4byte 0x04000079

	thumb_func_start CgbModVol
CgbModVol: @ 0x080985A8
	push {r4, lr}
	adds r1, r0, #0
	ldrb r0, [r1, #2]
	lsls r2, r0, #0x18
	lsrs r4, r2, #0x18
	ldrb r3, [r1, #3]
	lsls r0, r3, #0x18
	lsrs r3, r0, #0x18
	cmp r4, r3
	blo _080985C8
	lsrs r0, r2, #0x19
	cmp r0, r3
	blo _080985D4
	movs r0, #0xf
	strb r0, [r1, #0x1b]
	b _080985E2
_080985C8:
	lsrs r0, r0, #0x19
	cmp r0, r4
	blo _080985D4
	movs r0, #0xf0
	strb r0, [r1, #0x1b]
	b _080985E2
_080985D4:
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	adds r0, r2, r3
	lsrs r0, r0, #4
	b _080985F2
_080985E2:
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	adds r0, r2, r3
	lsrs r0, r0, #4
	strb r0, [r1, #0xa]
	cmp r0, #0xf
	bls _080985F4
	movs r0, #0xf
_080985F2:
	strb r0, [r1, #0xa]
_080985F4:
	ldrb r2, [r1, #6]
	ldrb r3, [r1, #0xa]
	adds r0, r2, #0
	muls r0, r3, r0
	adds r0, #0xf
	asrs r0, r0, #4
	strb r0, [r1, #0x19]
	ldrb r0, [r1, #0x1c]
	ldrb r2, [r1, #0x1b]
	ands r0, r2
	strb r0, [r1, #0x1b]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start CgbSound
CgbSound: @ 0x08098610
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r0, _08098630 @ =gUnknown_03007FF0
	ldr r0, [r0]
	str r0, [sp, #4]
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	beq _08098634
	subs r0, #1
	ldr r1, [sp, #4]
	strb r0, [r1, #0xa]
	b _0809863A
	.align 2, 0
_08098630: .4byte gUnknown_03007FF0
_08098634:
	movs r0, #0xe
	ldr r2, [sp, #4]
	strb r0, [r2, #0xa]
_0809863A:
	movs r6, #1
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
_08098640:
	ldrb r1, [r4]
	movs r0, #0xc7
	ands r0, r1
	adds r2, r6, #1
	mov sl, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	bne _08098656
	b _08098A40
_08098656:
	cmp r6, #2
	beq _08098688
	cmp r6, #2
	bgt _08098664
	cmp r6, #1
	beq _0809866A
	b _080986C0
_08098664:
	cmp r6, #3
	beq _080986A0
	b _080986C0
_0809866A:
	ldr r0, _0809867C @ =0x04000060
	str r0, [sp, #8]
	ldr r7, _08098680 @ =0x04000062
	ldr r2, _08098684 @ =0x04000063
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _080986D0
	.align 2, 0
_0809867C: .4byte 0x04000060
_08098680: .4byte 0x04000062
_08098684: .4byte 0x04000063
_08098688:
	ldr r0, _08098694 @ =0x04000061
	str r0, [sp, #8]
	ldr r7, _08098698 @ =0x04000068
	ldr r2, _0809869C @ =0x04000069
	b _080986C8
	.align 2, 0
_08098694: .4byte 0x04000061
_08098698: .4byte 0x04000068
_0809869C: .4byte 0x04000069
_080986A0:
	ldr r0, _080986B4 @ =0x04000070
	str r0, [sp, #8]
	ldr r7, _080986B8 @ =0x04000072
	ldr r2, _080986BC @ =0x04000073
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _080986D0
	.align 2, 0
_080986B4: .4byte 0x04000070
_080986B8: .4byte 0x04000072
_080986BC: .4byte 0x04000073
_080986C0:
	ldr r0, _08098720 @ =0x04000071
	str r0, [sp, #8]
	ldr r7, _08098724 @ =0x04000078
	ldr r2, _08098728 @ =0x04000079
_080986C8:
	str r2, [sp, #0xc]
	adds r0, #0xb
	str r0, [sp, #0x10]
	adds r2, #4
_080986D0:
	str r2, [sp, #0x14]
	ldr r0, [sp, #4]
	ldrb r0, [r0, #0xa]
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldrb r0, [r2]
	mov r8, r0
	adds r2, r1, #0
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _080987C6
	movs r3, #0x40
	adds r0, r3, #0
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r6, #1
	mov sl, r0
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r5, #0
	bne _080987EA
	movs r0, #3
	strb r0, [r4]
	strb r0, [r4, #0x1d]
	adds r0, r4, #0
	str r3, [sp, #0x18]
	bl CgbModVol
	ldr r3, [sp, #0x18]
	cmp r6, #2
	beq _08098738
	cmp r6, #2
	bgt _0809872C
	cmp r6, #1
	beq _08098732
	b _0809878C
	.align 2, 0
_08098720: .4byte 0x04000071
_08098724: .4byte 0x04000078
_08098728: .4byte 0x04000079
_0809872C:
	cmp r6, #3
	beq _08098744
	b _0809878C
_08098732:
	ldrb r0, [r4, #0x1f]
	ldr r2, [sp, #8]
	strb r0, [r2]
_08098738:
	ldr r0, [r4, #0x24]
	lsls r0, r0, #6
	ldrb r1, [r4, #0x1e]
	adds r0, r1, r0
	strb r0, [r7]
	b _08098798
_08098744:
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	beq _0809876C
	ldr r2, [sp, #8]
	strb r3, [r2]
	ldr r1, _08098780 @ =0x04000090
	ldr r2, [r4, #0x24]
	ldr r0, [r2]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #4]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #8]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #0xc]
	str r0, [r1]
	str r2, [r4, #0x28]
_0809876C:
	ldr r0, [sp, #8]
	strb r5, [r0]
	ldrb r0, [r4, #0x1e]
	strb r0, [r7]
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _08098784
	movs r0, #0xc0
	b _080987A6
	.align 2, 0
_08098780: .4byte 0x04000090
_08098784:
	movs r1, #0x80
	rsbs r1, r1, #0
	strb r1, [r4, #0x1a]
	b _080987A8
_0809878C:
	ldrb r0, [r4, #0x1e]
	strb r0, [r7]
	ldr r0, [r4, #0x24]
	lsls r0, r0, #3
	ldr r2, [sp, #0x10]
	strb r0, [r2]
_08098798:
	ldrb r0, [r4, #4]
	adds r0, #8
	mov r8, r0
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _080987A6
	movs r0, #0x40
_080987A6:
	strb r0, [r4, #0x1a]
_080987A8:
	ldrb r1, [r4, #4]
	movs r2, #0
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	adds r1, r6, #1
	mov sl, r1
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r0, #0
	bne _080987C2
	b _080988FE
_080987C2:
	strb r2, [r4, #9]
	b _0809892C
_080987C6:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _080987F8
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	movs r2, #0xff
	ands r0, r2
	lsls r0, r0, #0x18
	adds r1, r6, #1
	mov sl, r1
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	ble _080987EA
	b _0809893E
_080987EA:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl CgbOscOff
	movs r0, #0
	strb r0, [r4]
	b _08098A3C
_080987F8:
	movs r0, #0x40
	ands r0, r1
	adds r2, r6, #1
	mov sl, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	beq _08098838
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08098838
	movs r0, #0xfc
	ands r0, r1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #7]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _0809886A
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _0809892C
	ldrb r2, [r4, #7]
	mov r8, r2
	b _0809892C
_08098838:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _0809892C
	cmp r6, #3
	bne _0809884A
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
_0809884A:
	adds r0, r4, #0
	bl CgbModVol
	movs r0, #3
	ldrb r2, [r4]
	ands r0, r2
	cmp r0, #0
	bne _0809889E
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0809889A
_0809886A:
	ldrb r2, [r4, #0xc]
	ldrb r1, [r4, #0xa]
	adds r0, r2, #0
	muls r0, r1, r0
	adds r0, #0xff
	asrs r0, r0, #8
	movs r1, #0
	strb r0, [r4, #9]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080987EA
	movs r0, #4
	ldrb r2, [r4]
	orrs r0, r2
	strb r0, [r4]
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _0809893E
	movs r2, #8
	mov r8, r2
	b _0809893E
_0809889A:
	ldrb r0, [r4, #7]
	b _0809892A
_0809889E:
	cmp r0, #1
	bne _080988AA
_080988A2:
	ldrb r0, [r4, #0x19]
	strb r0, [r4, #9]
	movs r0, #7
	b _0809892A
_080988AA:
	cmp r0, #2
	bne _080988EE
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	ldrb r2, [r4, #0x19]
	lsls r1, r2, #0x18
	cmp r0, r1
	bgt _080988EA
_080988C2:
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _080988D2
	movs r0, #0xfc
	ldrb r1, [r4]
	ands r0, r1
	strb r0, [r4]
	b _0809886A
_080988D2:
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	orrs r0, r2
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _080988A2
	movs r0, #8
	mov r8, r0
	b _080988A2
_080988EA:
	ldrb r0, [r4, #5]
	b _0809892A
_080988EE:
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	ldrb r2, [r4, #0xa]
	cmp r0, r2
	blo _08098928
_080988FE:
	ldrb r0, [r4]
	subs r0, #1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #5]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _080988C2
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #9]
	cmp r6, #3
	beq _0809892C
	ldrb r2, [r4, #5]
	mov r8, r2
	b _0809892C
_08098928:
	ldrb r0, [r4, #4]
_0809892A:
	strb r0, [r4, #0xb]
_0809892C:
	ldrb r0, [r4, #0xb]
	subs r0, #1
	strb r0, [r4, #0xb]
	ldr r0, [sp]
	cmp r0, #0
	bne _0809893E
	subs r0, #1
	str r0, [sp]
	b _08098838
_0809893E:
	movs r0, #2
	ldrb r1, [r4, #0x1d]
	ands r0, r1
	cmp r0, #0
	beq _080989B6
	cmp r6, #3
	bgt _0809897E
	movs r0, #8
	ldrb r2, [r4, #1]
	ands r0, r2
	cmp r0, #0
	beq _0809897E
	ldr r0, _08098968 @ =0x04000089
	ldrb r0, [r0]
	cmp r0, #0x3f
	bgt _08098970
	ldr r0, [r4, #0x20]
	adds r0, #2
	ldr r1, _0809896C @ =0x000007FC
	b _0809897A
	.align 2, 0
_08098968: .4byte 0x04000089
_0809896C: .4byte 0x000007FC
_08098970:
	cmp r0, #0x7f
	bgt _0809897E
	ldr r0, [r4, #0x20]
	adds r0, #1
	ldr r1, _0809898C @ =0x000007FE
_0809897A:
	ands r0, r1
	str r0, [r4, #0x20]
_0809897E:
	cmp r6, #4
	beq _08098990
	ldr r0, [r4, #0x20]
	ldr r1, [sp, #0x10]
	strb r0, [r1]
	b _0809899E
	.align 2, 0
_0809898C: .4byte 0x000007FE
_08098990:
	ldr r2, [sp, #0x10]
	ldrb r0, [r2]
	movs r1, #8
	ands r1, r0
	ldr r0, [r4, #0x20]
	orrs r0, r1
	strb r0, [r2]
_0809899E:
	movs r0, #0xc0
	ldrb r1, [r4, #0x1a]
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x21
	ldrb r1, [r1]
	adds r0, r1, r0
	strb r0, [r4, #0x1a]
	movs r2, #0xff
	ands r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
_080989B6:
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	ands r0, r2
	cmp r0, #0
	beq _08098A3C
	ldr r1, _08098A00 @ =0x04000081
	ldrb r0, [r1]
	ldrb r2, [r4, #0x1c]
	bics r0, r2
	ldrb r2, [r4, #0x1b]
	orrs r0, r2
	strb r0, [r1]
	cmp r6, #3
	bne _08098A08
	ldr r0, _08098A04 @ =gUnknown_086DB838
	ldrb r1, [r4, #9]
	adds r0, r1, r0
	ldrb r0, [r0]
	ldr r2, [sp, #0xc]
	strb r0, [r2]
	movs r1, #0x80
	adds r0, r1, #0
	ldrb r2, [r4, #0x1a]
	ands r0, r2
	cmp r0, #0
	beq _08098A3C
	ldr r0, [sp, #8]
	strb r1, [r0]
	ldrb r0, [r4, #0x1a]
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	movs r0, #0x7f
	ldrb r2, [r4, #0x1a]
	ands r0, r2
	strb r0, [r4, #0x1a]
	b _08098A3C
	.align 2, 0
_08098A00: .4byte 0x04000081
_08098A04: .4byte gUnknown_086DB838
_08098A08:
	movs r0, #0xf
	mov r1, r8
	ands r1, r0
	mov r8, r1
	ldrb r2, [r4, #9]
	lsls r0, r2, #4
	add r0, r8
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	movs r2, #0x80
	ldrb r0, [r4, #0x1a]
	orrs r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	cmp r6, #1
	bne _08098A3C
	ldr r0, [sp, #8]
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08098A3C
	ldrb r0, [r4, #0x1a]
	orrs r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
_08098A3C:
	movs r0, #0
	strb r0, [r4, #0x1d]
_08098A40:
	mov r6, sl
	mov r4, sb
	cmp r6, #4
	bgt _08098A4A
	b _08098640
_08098A4A:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start m4aMPlayTempoControl
m4aMPlayTempoControl: @ 0x08098A5C
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _08098A80 @ =0x68736D53
	cmp r3, r0
	bne _08098A78
	strh r1, [r2, #0x1e]
	ldrh r4, [r2, #0x1c]
	adds r0, r1, #0
	muls r0, r4, r0
	asrs r0, r0, #8
	strh r0, [r2, #0x20]
_08098A78:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08098A80: .4byte 0x68736D53

	thumb_func_start m4aMPlayVolumeControl
m4aMPlayVolumeControl: @ 0x08098A84
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r6, r2, #0x10
	ldr r3, [r4, #0x34]
	ldr r0, _08098AE8 @ =0x68736D53
	cmp r3, r0
	bne _08098ADC
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _08098AD8
	movs r0, #0x80
	mov r8, r0
	lsrs r6, r6, #0x12
	movs r0, #3
	mov ip, r0
_08098AB4:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _08098ACE
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _08098ACE
	strb r6, [r1, #0x13]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_08098ACE:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _08098AB4
_08098AD8:
	ldr r0, _08098AE8 @ =0x68736D53
	str r0, [r4, #0x34]
_08098ADC:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08098AE8: .4byte 0x68736D53

	thumb_func_start m4aMPlayPitchControl
m4aMPlayPitchControl: @ 0x08098AEC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r3, [r4, #0x34]
	ldr r0, _08098B5C @ =0x68736D53
	cmp r3, r0
	bne _08098B4E
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r3, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _08098B4A
	movs r0, #0x80
	mov sb, r0
	lsls r0, r6, #0x10
	asrs r7, r0, #0x18
	movs r0, #0xc
	mov r8, r0
_08098B24:
	mov r0, ip
	ands r0, r5
	cmp r0, #0
	beq _08098B40
	ldrb r1, [r3]
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _08098B40
	strb r7, [r3, #0xb]
	strb r6, [r3, #0xd]
	mov r0, r8
	orrs r0, r1
	strb r0, [r3]
_08098B40:
	subs r2, #1
	adds r3, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _08098B24
_08098B4A:
	ldr r0, _08098B5C @ =0x68736D53
	str r0, [r4, #0x34]
_08098B4E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08098B5C: .4byte 0x68736D53

	thumb_func_start m4aMPlayPanpotControl
m4aMPlayPanpotControl: @ 0x08098B60
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	ldr r3, [r4, #0x34]
	ldr r0, _08098BC4 @ =0x68736D53
	cmp r3, r0
	bne _08098BB8
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _08098BB4
	movs r0, #0x80
	mov r8, r0
	movs r0, #3
	mov ip, r0
_08098B90:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _08098BAA
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _08098BAA
	strb r6, [r1, #0x15]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_08098BAA:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _08098B90
_08098BB4:
	ldr r0, _08098BC4 @ =0x68736D53
	str r0, [r4, #0x34]
_08098BB8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08098BC4: .4byte 0x68736D53

	thumb_func_start ClearModM
ClearModM: @ 0x08098BC8
	adds r1, r0, #0
	movs r2, #0
	movs r0, #0
	strb r0, [r1, #0x1a]
	strb r0, [r1, #0x16]
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	bne _08098BDC
	movs r0, #0xc
	b _08098BDE
_08098BDC:
	movs r0, #3
_08098BDE:
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	bx lr
	.align 2, 0

	thumb_func_start m4aMPlayModDepthSet
m4aMPlayModDepthSet: @ 0x08098BE8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, [r6, #0x34]
	ldr r0, _08098C58 @ =0x68736D53
	cmp r1, r0
	bne _08098C48
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _08098C44
	mov sb, r8
_08098C18:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _08098C3A
	movs r0, #0x80
	ldrb r1, [r4]
	ands r0, r1
	cmp r0, #0
	beq _08098C3A
	mov r0, r8
	strb r0, [r4, #0x17]
	mov r1, sb
	cmp r1, #0
	bne _08098C3A
	adds r0, r4, #0
	bl ClearModM
_08098C3A:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _08098C18
_08098C44:
	ldr r0, _08098C58 @ =0x68736D53
	str r0, [r6, #0x34]
_08098C48:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08098C58: .4byte 0x68736D53

	thumb_func_start m4aMPlayLFOSpeedSet
m4aMPlayLFOSpeedSet: @ 0x08098C5C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, [r6, #0x34]
	ldr r0, _08098CCC @ =0x68736D53
	cmp r1, r0
	bne _08098CBC
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _08098CB8
	mov sb, r8
_08098C8C:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _08098CAE
	movs r0, #0x80
	ldrb r1, [r4]
	ands r0, r1
	cmp r0, #0
	beq _08098CAE
	mov r0, r8
	strb r0, [r4, #0x19]
	mov r1, sb
	cmp r1, #0
	bne _08098CAE
	adds r0, r4, #0
	bl ClearModM
_08098CAE:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _08098C8C
_08098CB8:
	ldr r0, _08098CCC @ =0x68736D53
	str r0, [r6, #0x34]
_08098CBC:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08098CCC: .4byte 0x68736D53

	thumb_func_start ply_memacc
ply_memacc: @ 0x08098CD0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r1, [r6, #0x40]
	ldrb r5, [r1]
	adds r2, r1, #1
	str r2, [r6, #0x40]
	ldr r0, [r4, #0x18]
	ldrb r1, [r1, #1]
	adds r3, r1, r0
	adds r0, r2, #1
	str r0, [r6, #0x40]
	ldrb r2, [r2, #1]
	adds r0, #1
	str r0, [r6, #0x40]
	cmp r5, #0x11
	bls _08098CF4
	b _08098E22
_08098CF4:
	lsls r0, r5, #2
	ldr r1, _08098D00 @ =_08098D04
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08098D00: .4byte _08098D04
_08098D04: @ jump table
	.4byte _08098D4C @ case 0
	.4byte _08098D50 @ case 1
	.4byte _08098D58 @ case 2
	.4byte _08098D60 @ case 3
	.4byte _08098D6A @ case 4
	.4byte _08098D78 @ case 5
	.4byte _08098D86 @ case 6
	.4byte _08098D8E @ case 7
	.4byte _08098D96 @ case 8
	.4byte _08098D9E @ case 9
	.4byte _08098DA6 @ case 10
	.4byte _08098DAE @ case 11
	.4byte _08098DB6 @ case 12
	.4byte _08098DC4 @ case 13
	.4byte _08098DD2 @ case 14
	.4byte _08098DE0 @ case 15
	.4byte _08098DEE @ case 16
	.4byte _08098DFC @ case 17
_08098D4C:
	strb r2, [r3]
	b _08098E22
_08098D50:
	ldrb r1, [r3]
	adds r0, r1, r2
	strb r0, [r3]
	b _08098E22
_08098D58:
	ldrb r1, [r3]
	subs r0, r1, r2
	strb r0, [r3]
	b _08098E22
_08098D60:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r3]
	b _08098E22
_08098D6A:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	adds r0, r1, r0
	strb r0, [r3]
	b _08098E22
_08098D78:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	subs r0, r1, r0
	strb r0, [r3]
	b _08098E22
_08098D86:
	ldrb r3, [r3]
	cmp r3, r2
	beq _08098E08
	b _08098E1C
_08098D8E:
	ldrb r3, [r3]
	cmp r3, r2
	bne _08098E08
	b _08098E1C
_08098D96:
	ldrb r3, [r3]
	cmp r3, r2
	bhi _08098E08
	b _08098E1C
_08098D9E:
	ldrb r3, [r3]
	cmp r3, r2
	bhs _08098E08
	b _08098E1C
_08098DA6:
	ldrb r3, [r3]
	cmp r3, r2
	bls _08098E08
	b _08098E1C
_08098DAE:
	ldrb r3, [r3]
	cmp r3, r2
	blo _08098E08
	b _08098E1C
_08098DB6:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	beq _08098E08
	b _08098E1C
_08098DC4:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bne _08098E08
	b _08098E1C
_08098DD2:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhi _08098E08
	b _08098E1C
_08098DE0:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _08098E08
	b _08098E1C
_08098DEE:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bls _08098E08
	b _08098E1C
_08098DFC:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _08098E1C
_08098E08:
	ldr r0, _08098E18 @ =gUnknown_020023B4
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r6, #0
	bl _call_via_r2
	b _08098E22
	.align 2, 0
_08098E18: .4byte gUnknown_020023B4
_08098E1C:
	ldr r0, [r6, #0x40]
	adds r0, #4
	str r0, [r6, #0x40]
_08098E22:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start ply_xcmd
ply_xcmd: @ 0x08098E28
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	ldr r2, _08098E44 @ =gXcmdTable
	lsls r3, r3, #2
	adds r3, r3, r2
	ldr r2, [r3]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_08098E44: .4byte gXcmdTable

	thumb_func_start ply_xxx
ply_xxx: @ 0x08098E48
	push {lr}
	ldr r2, _08098E58 @ =gMPlayJumpTable
	ldr r2, [r2]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_08098E58: .4byte gMPlayJumpTable

	thumb_func_start ply_xwave
ply_xwave: @ 0x08098E5C
	push {r4, lr}
	ldr r2, [r1, #0x40]
	ldr r0, _08098E94 @ =0xFFFFFF00
	ands r4, r0
	ldrb r0, [r2]
	orrs r4, r0
	ldrb r0, [r2, #1]
	lsls r3, r0, #8
	ldr r0, _08098E98 @ =0xFFFF00FF
	ands r4, r0
	orrs r4, r3
	ldrb r0, [r2, #2]
	lsls r3, r0, #0x10
	ldr r0, _08098E9C @ =0xFF00FFFF
	ands r4, r0
	orrs r4, r3
	ldrb r0, [r2, #3]
	lsls r3, r0, #0x18
	ldr r0, _08098EA0 @ =0x00FFFFFF
	ands r4, r0
	orrs r4, r3
	str r4, [r1, #0x28]
	adds r2, #4
	str r2, [r1, #0x40]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08098E94: .4byte 0xFFFFFF00
_08098E98: .4byte 0xFFFF00FF
_08098E9C: .4byte 0xFF00FFFF
_08098EA0: .4byte 0x00FFFFFF

	thumb_func_start ply_xtype
ply_xtype: @ 0x08098EA4
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	adds r0, r1, #0
	adds r0, #0x24
	strb r2, [r0]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xatta
ply_xatta: @ 0x08098EB8
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	adds r0, r1, #0
	adds r0, #0x2c
	strb r2, [r0]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xdeca
ply_xdeca: @ 0x08098ECC
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2d
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xsust
ply_xsust: @ 0x08098EE0
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2e
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xrele
ply_xrele: @ 0x08098EF4
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2f
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xiecv
ply_xiecv: @ 0x08098F08
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1e]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	thumb_func_start ply_xiecl
ply_xiecl: @ 0x08098F14
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1f]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	thumb_func_start ply_xleng
ply_xleng: @ 0x08098F20
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x26
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xswee
ply_xswee: @ 0x08098F34
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x27
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

DummyCallback:
    bx lr
    .align 2 , 0
.endif
