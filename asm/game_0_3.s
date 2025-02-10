.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ --- Start of src/game/save.c ? ---

@ TODO: Is the name correct?
	thumb_func_start SaveGameExists
SaveGameExists: @ 0x08012CA8
	push {r4, r5, r6, r7, lr}
	movs r6, #0
	ldr r7, _08012CC8 @ =gUnknown_0300508C
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
_08012CC8: .4byte gUnknown_0300508C
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
	bl sub_8012FC4
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
	bl sub_8012FC4
	ldr r1, [r7]
	cmp r1, r0
	bne _08012D46
	ldr r0, _08012D74 @ =gUnknown_0300508C
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
	ldr r1, _08012D74 @ =gUnknown_0300508C
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
_08012D74: .4byte gUnknown_0300508C
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

@ Very different from SA2, this has less checks.
	thumb_func_start WriteSaveGame
WriteSaveGame: @ 0x08012D98
	push {r4, r5, r6, lr}
	ldr r0, _08012DE0 @ =gFlags
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08012E0E
	ldr r6, _08012DE4 @ =gUnknown_0300508C
	movs r1, #0
	ldrsb r1, [r6, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08012E1C
	movs r4, #0x86
	lsls r4, r4, #3
	adds r0, r4, #0
	bl EwramMalloc
	adds r5, r0, #0
	movs r0, #0
	ldrsb r0, [r6, r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl ReadFlash
	movs r4, #1
	movs r2, #0
	ldr r0, _08012DE8 @ =gLoadedSaveGame
	ldrb r1, [r5]
	b _08012DFC
	.align 2, 0
_08012DE0: .4byte gFlags
_08012DE4: .4byte gUnknown_0300508C
_08012DE8: .4byte gLoadedSaveGame
_08012DEC:
	adds r2, #1
	ldr r0, _08012E14 @ =0x0000042F
	cmp r2, r0
	bhi _08012E04
	adds r1, r5, r2
	ldr r0, _08012E18 @ =gLoadedSaveGame
	adds r0, r2, r0
	ldrb r1, [r1]
_08012DFC:
	ldrb r0, [r0]
	cmp r1, r0
	beq _08012DEC
	movs r4, #0
_08012E04:
	adds r0, r5, #0
	bl EwramFree
	cmp r4, #0
	beq _08012E1C
_08012E0E:
	movs r0, #0
	b _08012E8A
	.align 2, 0
_08012E14: .4byte 0x0000042F
_08012E18: .4byte gLoadedSaveGame
_08012E1C:
	ldr r0, _08012E34 @ =gUnknown_0300508C
	ldrb r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #9
	bne _08012E3C
	ldr r0, _08012E38 @ =EraseFlashSector
	ldr r1, [r0]
	movs r0, #0
	b _08012E52
	.align 2, 0
_08012E34: .4byte gUnknown_0300508C
_08012E38: .4byte EraseFlashSector
_08012E3C:
	cmp r0, #9
	ble _08012E42
	movs r5, #0
_08012E42:
	ldr r1, _08012E90 @ =EraseFlashSector
	lsls r0, r5, #0x18
	asrs r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	ldr r1, [r1]
_08012E52:
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _08012E8A
	ldr r4, _08012E94 @ =gLoadedSaveGame
	ldr r0, _08012E98 @ =0x4F524950
	str r0, [r4]
	adds r0, r4, #0
	bl sub_8012FC4
	ldr r2, _08012E9C @ =0x0000042C
	adds r1, r4, r2
	str r0, [r1]
	ldr r0, _08012EA0 @ =gUnknown_0300508C
	strb r5, [r0]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r2, #4
	adds r1, r4, #0
	bl ProgramFlashSectorAndVerifyNBytes
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_08012E8A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08012E90: .4byte EraseFlashSector
_08012E94: .4byte gLoadedSaveGame
_08012E98: .4byte 0x4F524950
_08012E9C: .4byte 0x0000042C
_08012EA0: .4byte gUnknown_0300508C

	thumb_func_start sub_8012EA4
sub_8012EA4: @ 0x08012EA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r3, r0, #0
	movs r0, #0
	mov sb, r0
	mov r8, r0
	ldr r6, _08012F44 @ =gCurrentLevel
	ldr r5, _08012F48 @ =gSelectedCharacter
	ldr r4, _08012F4C @ =gLoadedSaveGame + 0x20
	adds r7, r6, #0
	mov sl, r5
_08012EC0:
	movs r1, #0
	ldrsb r1, [r6, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	add r0, r8
	lsls r0, r0, #2
	movs r2, #0
	ldrsb r2, [r5, r2]
	movs r1, #0xd8
	muls r1, r2, r1
	adds r0, r0, r1
	adds r0, r0, r4
	ldr r1, [r0]
	cmp r3, r1
	bhs _08012F50
	adds r4, r1, #0
	str r3, [r0]
	mov r3, r8
	adds r3, #1
	cmp r3, #2
	bhi _08012F38
	mov ip, r7
	mov r7, sl
	movs r6, #0xd8
	ldr r5, _08012F4C @ =gLoadedSaveGame + 0x20
_08012EF2:
	lsls r2, r3, #2
	mov r0, ip
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r2, r0
	movs r1, #0
	ldrsb r1, [r7, r1]
	muls r1, r6, r1
	adds r0, r0, r1
	adds r0, r0, r5
	ldr r1, [r0]
	eors r1, r4
	str r1, [r0]
	mov r0, ip
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r0, #0
	ldrsb r0, [r7, r0]
	muls r0, r6, r0
	adds r2, r2, r0
	adds r2, r2, r5
	ldr r0, [r2]
	eors r4, r0
	eors r0, r4
	str r0, [r2]
	adds r3, #1
	cmp r3, #2
	bls _08012EF2
_08012F38:
	mov r0, r8
	cmp r0, #0
	bne _08012F5A
	movs r0, #1
	mov sb, r0
	b _08012F5A
	.align 2, 0
_08012F44: .4byte gCurrentLevel
_08012F48: .4byte gSelectedCharacter
_08012F4C: .4byte gLoadedSaveGame + 0x20
_08012F50:
	movs r0, #1
	add r8, r0
	mov r0, r8
	cmp r0, #2
	bls _08012EC0
_08012F5A:
	mov r0, sb
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8012F6C
sub_8012F6C: @ 0x08012F6C
	push {r4, r5, lr}
	ldr r0, _08012F80 @ =gFlags
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08012F88
	b _08012FB2
	.align 2, 0
_08012F80: .4byte gFlags
_08012F84:
	adds r0, r1, #0
	b _08012FB4
_08012F88:
	movs r2, #0
	ldr r5, _08012FBC @ =EraseFlashSector
_08012F8C:
	lsls r0, r2, #0x18
	asrs r4, r0, #0x18
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [r5]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08012F84
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #9
	ble _08012F8C
	ldr r0, _08012FC0 @ =gUnknown_0300508C
	strb r1, [r0]
_08012FB2:
	movs r0, #0
_08012FB4:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08012FBC: .4byte EraseFlashSector
_08012FC0: .4byte gUnknown_0300508C

	thumb_func_start sub_8012FC4
sub_8012FC4: @ 0x08012FC4
	push {r4, lr}
	adds r3, r0, #0
	movs r2, #0
	movs r1, #0
	ldr r4, _08012FE4 @ =0x0000042B
_08012FCE:
	adds r0, r3, r1
	ldr r0, [r0]
	adds r2, r2, r0
	adds r1, #4
	cmp r1, r4
	bls _08012FCE
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08012FE4: .4byte 0x0000042B

	thumb_func_start sub_8012FE8
sub_8012FE8: @ 0x08012FE8
	push {r4, lr}
	sub sp, #8
	ldr r1, _0801304C @ =gDispCnt
	movs r2, #0x88
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08013050 @ =gBgCntRegs
	movs r4, #0
	movs r3, #0
	ldr r0, _08013054 @ =0x00001E01
	strh r0, [r1, #4]
	str r3, [sp, #4]
	ldr r1, _08013058 @ =0x040000D4
	add r0, sp, #4
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _0801305C @ =0x85000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08013060 @ =sa2__gUnknown_03004D80
	strb r4, [r0, #2]
	ldr r1, _08013064 @ =sa2__gUnknown_03002280
	strb r4, [r1, #8]
	strb r4, [r1, #9]
	movs r0, #0xff
	strb r0, [r1, #0xa]
	movs r0, #0x40
	strb r0, [r1, #0xb]
	ldr r0, _08013068 @ =sub_8013078
	movs r2, #0x80
	lsls r2, r2, #5
	str r3, [sp]
	movs r1, #0
	bl TaskCreate
	ldr r1, _0801306C @ =gBgPalette
	ldr r0, _08013070 @ =0x00007FFF
	strh r0, [r1, #2]
	ldr r2, _08013074 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801304C: .4byte gDispCnt
_08013050: .4byte gBgCntRegs
_08013054: .4byte 0x00001E01
_08013058: .4byte 0x040000D4
_0801305C: .4byte 0x85000010
_08013060: .4byte sa2__gUnknown_03004D80
_08013064: .4byte sa2__gUnknown_03002280
_08013068: .4byte sub_8013078
_0801306C: .4byte gBgPalette
_08013070: .4byte 0x00007FFF
_08013074: .4byte gFlags

	thumb_func_start sub_8013078
sub_8013078: @ 0x08013078
	push {lr}
	sub sp, #0xc
	ldr r0, _080130AC @ =0x06000020
	ldr r1, _080130B0 @ =gMultiBootProgram_TinyChaoGarden
	movs r2, #2
	str r2, [sp]
	ldr r2, _080130B4 @ =gUnknown_080BB3E0
	str r2, [sp, #4]
	movs r2, #0
	str r2, [sp, #8]
	movs r2, #1
	movs r3, #0xa
	bl RenderText
	ldr r0, _080130B8 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080130A4
	bl sub_80130BC
_080130A4:
	add sp, #0xc
	pop {r0}
	bx r0
	.align 2, 0
_080130AC: .4byte 0x06000020
_080130B0: .4byte gMultiBootProgram_TinyChaoGarden
_080130B4: .4byte gUnknown_080BB3E0
_080130B8: .4byte gPressedKeys

	thumb_func_start sub_80130BC
sub_80130BC: @ 0x080130BC
	push {lr}
	ldr r1, _080130E4 @ =sa2__gUnknown_03004D80
	movs r0, #0
	strb r0, [r1, #2]
	ldr r1, _080130E8 @ =sa2__gUnknown_03002280
	strb r0, [r1, #8]
	strb r0, [r1, #9]
	movs r0, #0xff
	strb r0, [r1, #0xa]
	movs r0, #0x20
	strb r0, [r1, #0xb]
	ldr r0, _080130EC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl CreateSegaLogo
	pop {r0}
	bx r0
	.align 2, 0
_080130E4: .4byte sa2__gUnknown_03004D80
_080130E8: .4byte sa2__gUnknown_03002280
_080130EC: .4byte gCurTask
