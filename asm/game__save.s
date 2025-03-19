.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ --- Start of src/game/save.c ?
@ --- SA2 ver. is much bigger, so definitely not a copy-paste! ---

@ TODO: Is the name correct?
	thumb_func_start SaveGameExists
SaveGameExists: @ 0x08012CA8
	push {r4, r5, r6, r7, lr}
	movs r6, #0
	ldr r7, _08012CC8 @ =gUsedSaveSectorID
	movs r1, #1
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	ldr r0, _08012CCC @ =gFlags
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08012CD0
	movs r0, #0
	b _08012D8E
	.align 2, 0
_08012CC8: .4byte gUsedSaveSectorID
_08012CCC: .4byte gFlags
_08012CD0:
	ldr r5, _08012D00 @ =gLoadedSaveGame
	movs r3, #0x86
	lsls r3, r3, #3
	movs r0, #0
	movs r1, #0
	adds r2, r5, #0
	bl ReadFlash
	ldr r1, [r5]
	ldr r0, _08012D04 @ =0x4F524950
	cmp r1, r0
	bne _08012D0C
	ldr r2, _08012D08 @ =0x0000042C
	adds r4, r5, r2
	adds r0, r5, #0
	bl CalculateChecksum
	ldr r1, [r4]
	cmp r1, r0
	bne _08012D0E
	movs r0, #0
	strb r0, [r7]
	b _08012D0E
	.align 2, 0
_08012D00: .4byte gLoadedSaveGame
_08012D04: .4byte 0x4F524950
_08012D08: .4byte 0x0000042C
_08012D0C:
	movs r6, #1
_08012D0E:
	lsls r1, r6, #0x18
	asrs r0, r1, #0x18
	cmp r0, #9
	bgt _08012D54
	ldr r5, _08012D68 @ =gLoadedSaveGame
	ldr r0, _08012D6C @ =0x0000042C
	adds r7, r5, r0
_08012D1C:
	asrs r4, r1, #0x18
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0x86
	lsls r3, r3, #3
	bl ReadFlash
	ldr r1, [r5]
	ldr r0, _08012D70 @ =0x4F524950
	cmp r1, r0
	bne _08012D54
	adds r0, r5, #0
	bl CalculateChecksum
	ldr r1, [r7]
	cmp r1, r0
	bne _08012D46
	ldr r0, _08012D74 @ =gUsedSaveSectorID
	strb r6, [r0]
_08012D46:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r6, #0x18
	asrs r0, r1, #0x18
	cmp r0, #9
	ble _08012D1C
_08012D54:
	ldr r1, _08012D74 @ =gUsedSaveSectorID
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _08012D78
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r1]
	movs r0, #0
	b _08012D8E
	.align 2, 0
_08012D68: .4byte gLoadedSaveGame
_08012D6C: .4byte 0x0000042C
_08012D70: .4byte 0x4F524950
_08012D74: .4byte gUsedSaveSectorID
_08012D78:
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08012D94 @ =gLoadedSaveGame
	movs r3, #0x86
	lsls r3, r3, #3
	movs r1, #0
	bl ReadFlash
	movs r0, #1
_08012D8E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08012D94: .4byte gLoadedSaveGame

.if 0
.endif
