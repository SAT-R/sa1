.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreatePlayerDataMenu
CreatePlayerDataMenu: @ 0x080117A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	ldr r1, _08011918 @ =gDispCnt
	movs r2, #0x8a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0801191C @ =gBgCntRegs
	movs r7, #0
	movs r5, #0
	ldr r0, _08011920 @ =0x00001B04
	strh r0, [r1]
	ldr r0, _08011924 @ =gBldRegs
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	ldr r0, _08011928 @ =gBgScrollRegs
	strh r5, [r0]
	strh r5, [r0, #2]
	ldr r0, _0801192C @ =Task_PlayerDataMenuInit
	movs r1, #0x8e
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r3, _08011930 @ =TaskDestructor_PlayerDataMenu
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r4
	mov sl, r0
	strh r5, [r0, #0x16]
	strh r5, [r0, #0x18]
	movs r0, #0x16
	bl VramMalloc
	mov r1, sl
	str r0, [r1, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r1, #0x1a]
	strh r5, [r1, #8]
	subs r0, #0x67
	strh r0, [r1, #0xa]
	ldr r2, _08011934 @ =0x03000020
	adds r0, r4, r2
	strb r7, [r0]
	strh r5, [r1, #0x14]
	strh r5, [r1, #0x1c]
	ldr r0, _08011938 @ =0x03000021
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	adds r2, #2
	adds r1, r4, r2
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _0801193C @ =0x03000025
	adds r4, r4, r0
	strb r7, [r4]
	mov r1, sl
	str r5, [r1, #0x10]
	mov r0, sl
	bl UpdateSpriteAnimation
	add r6, sp, #0x30
	movs r2, #0x2f
	add r2, sp
	mov sb, r2
	mov r0, sp
	adds r0, #0x2c
	str r0, [sp, #0x34]
	mov r1, sp
	adds r1, #0x2d
	str r1, [sp, #0x38]
	mov r2, sp
	adds r2, #0x2e
	str r2, [sp, #0x3c]
	movs r4, #0
_08011854:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #4
	adds r0, #0x30
	mov r1, sl
	adds r7, r1, r0
	movs r0, #0x19
	strh r0, [r7, #0x16]
	ldr r0, _08011940 @ =gUnknown_080BB3C7
	adds r0, r5, r0
	ldrb r0, [r0]
	strh r0, [r7, #0x18]
	ldr r0, _08011944 @ =gUnknown_080BB3CA
	adds r0, r5, r0
	ldrb r0, [r0]
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r7, #0x1a]
	strh r4, [r7, #8]
	ldr r1, _08011948 @ =gUnknown_080BB3C0
	ldr r2, _0801194C @ =gLoadedSaveGame
	mov r8, r2
	ldrb r0, [r2, #0x19]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
	ldr r0, _08011950 @ =gUnknown_080BB3C4
	adds r0, r5, r0
	ldrb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x20
	strb r1, [r0]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x25
	movs r1, #0
	strb r1, [r0]
	str r4, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08011854
	movs r0, #0x8b
	lsls r0, r0, #1
	add r0, sl
	movs r4, #0
	movs r1, #0
	strh r1, [r0]
	movs r0, #0x8c
	lsls r0, r0, #1
	add r0, sl
	strb r4, [r0]
	ldr r0, _08011954 @ =0x00000119
	add r0, sl
	strb r4, [r0]
	movs r0, #0x8a
	lsls r0, r0, #1
	add r0, sl
	strh r1, [r0]
	bl sub_80535FC
	bl UiGfxStackInit
	movs r0, #0x80
	strb r0, [r6]
	mov r2, sb
	strb r4, [r2]
	ldr r0, _08011958 @ =gUnknown_086CCD54
	str r0, [sp, #0x18]
	movs r0, #0xba
	lsls r0, r0, #4
	str r0, [sp, #0x1c]
	ldr r0, _0801195C @ =gUnknown_086CCD34
	str r0, [sp, #0x24]
	movs r0, #0x20
	str r0, [sp, #0x28]
	mov r1, r8
	ldrb r0, [r1, #0x19]
	cmp r0, #0
	bne _08011964
	ldr r0, _08011960 @ =gUnknown_086CDDF4
	b _08011966
	.align 2, 0
_08011918: .4byte gDispCnt
_0801191C: .4byte gBgCntRegs
_08011920: .4byte 0x00001B04
_08011924: .4byte gBldRegs
_08011928: .4byte gBgScrollRegs
_0801192C: .4byte Task_PlayerDataMenuInit
_08011930: .4byte TaskDestructor_PlayerDataMenu
_08011934: .4byte 0x03000020
_08011938: .4byte 0x03000021
_0801193C: .4byte 0x03000025
_08011940: .4byte gUnknown_080BB3C7
_08011944: .4byte gUnknown_080BB3CA
_08011948: .4byte gUnknown_080BB3C0
_0801194C: .4byte gLoadedSaveGame
_08011950: .4byte gUnknown_080BB3C4
_08011954: .4byte 0x00000119
_08011958: .4byte gUnknown_086CCD54
_0801195C: .4byte gUnknown_086CCD34
_08011960: .4byte gUnknown_086CDDF4
_08011964:
	ldr r0, _08011B5C @ =gUnknown_086CD8F4
_08011966:
	str r0, [sp, #0x14]
	movs r0, #0xa0
	lsls r0, r0, #3
	str r0, [sp, #0x20]
	movs r0, #0
	ldr r2, [sp, #0x34]
	strb r0, [r2]
	ldr r1, [sp, #0x38]
	strb r0, [r1]
	movs r0, #0x15
	ldr r2, [sp, #0x3c]
	strb r0, [r2]
	add r0, sp, #4
	bl sub_80528AC
	movs r0, #0
	strb r0, [r6]
	movs r5, #1
	mov r1, sb
	strb r5, [r1]
	ldr r3, _08011B60 @ =gUiGraphics
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	str r0, [sp, #0x18]
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _08011B64 @ =gUiGraphics + 0x4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [sp, #0x24]
	movs r0, #0xe0
	str r3, [sp, #0x40]
	bl VramMalloc
	str r0, [sp, #0x10]
	movs r0, #0xe0
	lsls r0, r0, #5
	str r0, [sp, #0x1c]
	movs r4, #0x20
	str r4, [sp, #0x28]
	ldr r0, [sp, #0x34]
	strb r5, [r0]
	movs r0, #0xd
	ldr r1, [sp, #0x3c]
	strb r0, [r1]
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r3, [sp, #0x40]
	ldr r2, _08011B68 @ =gUiGraphics + 0x8
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [sp, #8]
	add r2, sp, #4
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08011B6C @ =gUiGraphics + 0xC
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08011B70 @ =gUiGraphics + 0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08011B74 @ =gUiGraphics + 0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0x18
	adds r1, r1, r3
	mov r8, r1
	add r0, r8
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	adds r0, r2, #0
	str r3, [sp, #0x40]
	bl sub_80528AC
	mov r7, sl
	adds r7, #0xc0
	ldr r0, [sp, #0x10]
	str r0, [r7, #4]
	movs r0, #0x3c
	strb r0, [r6]
	movs r0, #2
	mov r2, sb
	strb r0, [r2]
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r3, [sp, #0x40]
	adds r0, r0, r3
	ldr r0, [r0]
	str r0, [sp, #0x18]
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08011B64 @ =gUiGraphics + 0x4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x24]
	ldr r0, [r7, #4]
	str r0, [sp, #0x10]
	str r4, [sp, #0x1c]
	str r4, [sp, #0x28]
	ldr r2, [sp, #0x34]
	strb r5, [r2]
	movs r0, #0xc
	ldr r1, [sp, #0x3c]
	strb r0, [r1]
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _08011B68 @ =gUiGraphics + 0x8
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [sp, #8]
	add r2, sp, #4
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08011B6C @ =gUiGraphics + 0xC
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08011B70 @ =gUiGraphics + 0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08011B74 @ =gUiGraphics + 0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	adds r0, r2, #0
	bl sub_80528AC
	movs r1, #0x83
	lsls r1, r1, #1
	add r1, sl
	movs r0, #0x8c
	strh r0, [r1]
	movs r1, #0x84
	lsls r1, r1, #1
	add r1, sl
	movs r0, #0x3d
	strh r0, [r1]
	adds r0, #0xcd
	add r0, sl
	movs r1, #1
	strh r5, [r0]
	movs r0, #0x86
	lsls r0, r0, #1
	add r0, sl
	strh r5, [r0]
	movs r0, #0x87
	lsls r0, r0, #1
	add r0, sl
	strh r5, [r0]
	movs r0, #0x89
	lsls r0, r0, #1
	add r0, sl
	strb r1, [r0]
	movs r0, #0x82
	lsls r0, r0, #1
	add r0, sl
	movs r2, #0
	strh r2, [r0]
	movs r5, #0
	mov r4, sl
	adds r4, #0xf0
	ldr r3, _08011B78 @ =gLoadedSaveGame + 0x10
	movs r2, #0x20
_08011B0E:
	adds r1, r5, r3
	ldrb r0, [r1]
	subs r0, #0x20
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x69
	bls _08011B1E
	strb r2, [r1]
_08011B1E:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #5
	bls _08011B0E
	movs r1, #0
	strh r1, [r4]
	movs r0, #1
	strh r0, [r4, #2]
	movs r0, #2
	strh r0, [r4, #4]
	strh r1, [r4, #6]
	adds r0, #0xfe
	strh r0, [r4, #8]
	movs r0, #0x10
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	bl sub_805423C
	movs r0, #0x30      @ MUS_PLAYER_DATA
	bl m4aSongNumStart
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011B5C: .4byte gUnknown_086CD8F4
_08011B60: .4byte gUiGraphics
_08011B64: .4byte gUiGraphics + 0x4
_08011B68: .4byte gUiGraphics + 0x8
_08011B6C: .4byte gUiGraphics + 0xC
_08011B70: .4byte gUiGraphics + 0x10
_08011B74: .4byte gUiGraphics + 0x14
_08011B78: .4byte gLoadedSaveGame + 0x10

	thumb_func_start Task_PlayerDataMenuInit
Task_PlayerDataMenuInit: @ 0x08011B7C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08011BD4 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r4
	mov r8, r0
	ldr r0, _08011BD8 @ =0x030000F0
	adds r5, r4, r0
	adds r0, r5, #0
	bl sub_805423C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08011C86
	movs r1, #4
	ldrsh r7, [r5, r1]
	cmp r7, #2
	bne _08011C40
	ldr r0, _08011BDC @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _08011BE4
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r2, _08011BE0 @ =0x03000118
	adds r1, r4, r2
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _08011C06
	strb r7, [r1]
	b _08011C06
	.align 2, 0
_08011BD4: .4byte gCurTask
_08011BD8: .4byte 0x030000F0
_08011BDC: .4byte gRepeatedKeys
_08011BE0: .4byte 0x03000118
_08011BE4:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08011C06
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r0, _08011C30 @ =0x03000118
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _08011C06
	strb r6, [r1]
_08011C06:
	ldr r0, _08011C34 @ =gPressedKeys
	ldrh r2, [r0]
	movs r0, #3
	ands r0, r2
	cmp r0, #0
	beq _08011C86
	movs r0, #0x8a
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0
	strh r2, [r0]
	movs r0, #1
	strh r0, [r5, #4]
	strh r1, [r5, #6]
	ands r0, r2
	cmp r0, #0
	beq _08011C38
	movs r0, #0x6a
	bl m4aSongNumStart
	b _08011C86
	.align 2, 0
_08011C30: .4byte 0x03000118
_08011C34: .4byte gPressedKeys
_08011C38:
	movs r0, #0x6b
	bl m4aSongNumStart
	b _08011C86
_08011C40:
	ldr r1, _08011C6C @ =0x03000114
	adds r0, r4, r1
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08011C78
	ldr r2, _08011C70 @ =0x03000119
	adds r1, r4, r2
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08011C74 @ =gUnknown_080BB3D0
	subs r2, #1
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	b _08011C8A
	.align 2, 0
_08011C6C: .4byte 0x03000114
_08011C70: .4byte 0x03000119
_08011C74: .4byte gUnknown_080BB3D0
_08011C78:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08011C86
	bl PlayerDataSelectOK
	b _08011C8A
_08011C86:
	bl sub_8011C94
_08011C8A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8011C94
sub_8011C94: @ 0x08011C94
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08011CF8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	movs r0, #9
	strh r0, [r5, #0x16]
	ldr r0, _08011CFC @ =gUnknown_080BB3C7
	ldr r2, _08011D00 @ =0x03000118
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r1, r1, r0
	ldr r3, _08011D04 @ =0x0000FFFE
	adds r0, r3, #0
	ldrb r1, [r1]
	adds r0, r0, r1
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl DisplaySprite
	movs r4, #0
_08011CC6:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, #0x30
	adds r2, r5, r0
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, r4
	bne _08011D14
	movs r1, #0
	movs r0, #0x1e
	strh r0, [r2, #0x16]
	ldr r3, _08011D08 @ =0x00000119
	adds r0, r5, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08011D0C
	adds r1, r2, #0
	adds r1, #0x25
	movs r0, #1
	strb r0, [r1]
	b _08011D18
	.align 2, 0
_08011CF8: .4byte gCurTask
_08011CFC: .4byte gUnknown_080BB3C7
_08011D00: .4byte 0x03000118
_08011D04: .4byte 0x0000FFFE
_08011D08: .4byte 0x00000119
_08011D0C:
	adds r0, r2, #0
	adds r0, #0x25
	strb r1, [r0]
	b _08011D18
_08011D14:
	movs r0, #0x19
	strh r0, [r2, #0x16]
_08011D18:
	ldr r0, _08011D80 @ =gUnknown_080BB3C7
	adds r0, r4, r0
	ldrb r0, [r0]
	strh r0, [r2, #0x18]
	adds r0, r2, #0
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _08011CC6
	movs r4, #0
	adds r7, r5, #0
	adds r7, #0xfc
	movs r0, #0x84
	lsls r0, r0, #1
	adds r6, r5, r0
	ldr r1, _08011D84 @ =gLoadedSaveGame + 0x10
	mov r8, r1
_08011D40:
	lsls r0, r4, #3
	adds r0, #0x9f
	movs r2, #0x83
	lsls r2, r2, #1
	adds r1, r5, r2
	strh r0, [r1]
	movs r0, #0x3c
	strh r0, [r6]
	mov r3, r8
	adds r1, r4, r3
	ldrb r0, [r1]
	subs r0, #0x70
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bhi _08011D64
	movs r0, #0x44
	strh r0, [r6]
_08011D64:
	adds r0, r1, #0
	adds r1, r7, #0
	bl sub_8052F78
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #5
	bls _08011D40
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011D80: .4byte gUnknown_080BB3C7
_08011D84: .4byte gLoadedSaveGame + 0x10

	thumb_func_start PlayerDataSelectName
PlayerDataSelectName: @ 0x08011D88
	push {lr}
	ldr r0, _08011D9C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl CreatePlayerNameInputMenu
	pop {r0}
	bx r0
	.align 2, 0
_08011D9C: .4byte gCurTask

	thumb_func_start PlayerDataSelectVsRecord
PlayerDataSelectVsRecord: @ 0x08011DA0
	push {lr}
	ldr r0, _08011DB4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl CreateVsRecord
	pop {r0}
	bx r0
	.align 2, 0
_08011DB4: .4byte gCurTask

	thumb_func_start PlayerDataSelectOK
PlayerDataSelectOK: @ 0x08011DB8
	push {lr}
	ldr r0, _08011DCC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl CreateOptionsMenu
	pop {r0}
	bx r0
	.align 2, 0
_08011DCC: .4byte gCurTask

	thumb_func_start TaskDestructor_PlayerDataMenu
TaskDestructor_PlayerDataMenu: @ 0x08011DD0
	push {r4, r5, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldr r0, [r0, #4]
	bl VramFree
	movs r5, #0
	ldr r0, _08011E04 @ =0x03000034
	adds r4, r4, r0
_08011DE6:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #4
	adds r0, r4, r0
	ldr r0, [r0]
	bl VramFree
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08011DE6
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011E04: .4byte 0x03000034
