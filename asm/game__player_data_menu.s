.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

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
	ldr r0, _08011CFC @ =sPlayerDataMenuYOffsets
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
_08011CFC: .4byte sPlayerDataMenuYOffsets
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
	ldr r0, _08011D80 @ =sPlayerDataMenuYOffsets
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
_08011D80: .4byte sPlayerDataMenuYOffsets
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
