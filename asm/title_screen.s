.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateSegaLogo
CreateSegaLogo: @ 0x0800CFB8
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r0, _0800D060 @ =gBldRegs
	movs r5, #0
	movs r4, #0
	strh r4, [r0]
	strh r4, [r0, #4]
	ldr r2, _0800D064 @ =gFlags
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r2]
	ldr r0, _0800D068 @ =gDispCnt
	movs r2, #0x40
	strh r2, [r0]
	ldr r1, _0800D06C @ =gBgCntRegs
	ldr r0, _0800D070 @ =0x00005E01
	strh r0, [r1, #4]
	ldr r0, _0800D074 @ =gBgScrollRegs
	strh r4, [r0, #8]
	strh r4, [r0, #0xa]
	str r4, [sp, #4]
	ldr r1, _0800D078 @ =0x040000D4
	add r0, sp, #4
	str r0, [r1]
	movs r6, #0xc0
	lsls r6, r6, #0x13
	str r6, [r1, #4]
	ldr r0, _0800D07C @ =0x85000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0800D080 @ =sa2__gUnknown_03004D80
	strb r5, [r0, #2]
	ldr r0, _0800D084 @ =sa2__gUnknown_03002280
	strb r5, [r0, #8]
	strb r5, [r0, #9]
	movs r1, #0xff
	strb r1, [r0, #0xa]
	strb r2, [r0, #0xb]
	ldr r0, _0800D088 @ =sub_800D3C4
	movs r2, #0x80
	lsls r2, r2, #6
	str r4, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	strh r4, [r0]
	ldr r1, _0800D08C @ =0x03000004
	adds r0, r2, r1
	str r6, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _0800D090 @ =0x0600F000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	movs r1, #0x56
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	movs r1, #5
	strh r1, [r0, #0x22]
	strh r1, [r0, #0x24]
	movs r1, #0x14
	strh r1, [r0, #0x26]
	movs r1, #0xa
	strh r1, [r0, #0x28]
	ldr r1, _0800D094 @ =0x0300002E
	adds r2, r2, r1
	strb r5, [r2]
	movs r1, #2
	strh r1, [r0, #0x2e]
	bl DrawBackground
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800D060: .4byte gBldRegs
_0800D064: .4byte gFlags
_0800D068: .4byte gDispCnt
_0800D06C: .4byte gBgCntRegs
_0800D070: .4byte 0x00005E01
_0800D074: .4byte gBgScrollRegs
_0800D078: .4byte 0x040000D4
_0800D07C: .4byte 0x85000010
_0800D080: .4byte sa2__gUnknown_03004D80
_0800D084: .4byte sa2__gUnknown_03002280
_0800D088: .4byte sub_800D3C4
_0800D08C: .4byte 0x03000004
_0800D090: .4byte 0x0600F000
_0800D094: .4byte 0x0300002E

	thumb_func_start Task_800D098
Task_800D098: @ 0x0800D098
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r7, _0800D10C @ =gCurTask
	ldr r0, [r7]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r2, _0800D110 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldrh r1, [r6]
	adds r1, #1
	strh r1, [r6]
	movs r4, #0xa0
	subs r2, r4, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r5, _0800D114 @ =gBgScrollRegs
	ldrh r3, [r5, #8]
	ldrh r0, [r5, #0xa]
	adds r0, #0xa0
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #2
	movs r1, #0
	bl sa2__sub_8007858
	ldrb r0, [r6]
	subs r4, r4, r0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldrh r3, [r5, #8]
	ldrh r0, [r5, #0xa]
	str r0, [sp]
	movs r0, #2
	adds r1, r4, #0
	movs r2, #0xa0
	bl sa2__sub_80078D4
	ldrh r0, [r6]
	cmp r0, #0xa0
	bne _0800D104
	ldr r0, [r7]
	ldr r1, _0800D118 @ =sub_800D3E0
	str r1, [r0, #8]
	movs r0, #0
	strh r0, [r6]
_0800D104:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D10C: .4byte gCurTask
_0800D110: .4byte gDispCnt
_0800D114: .4byte gBgScrollRegs
_0800D118: .4byte sub_800D3E0

	thumb_func_start sub_800D11C
sub_800D11C: @ 0x0800D11C
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _0800D188 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r6, r0
	ldrh r2, [r6]
	adds r2, #1
	strh r2, [r6]
	movs r4, #0xa0
	subs r2, r4, r2
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r5, _0800D18C @ =gBgScrollRegs
	ldrh r3, [r5, #8]
	ldrh r0, [r5, #0xa]
	str r0, [sp]
	movs r0, #2
	movs r1, #0
	bl sa2__sub_80078D4
	ldrh r1, [r6]
	subs r4, r4, r1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldrh r3, [r5, #8]
	ldrh r0, [r5, #0xa]
	adds r0, #0xa0
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #2
	adds r1, r4, #0
	movs r2, #0xa0
	bl sa2__sub_8007858
	ldrh r0, [r6]
	cmp r0, #0xa0
	bne _0800D17E
	ldr r0, _0800D190 @ =gFlags
	ldr r1, [r0]
	ldr r2, _0800D194 @ =0xFFFF7FFF
	ands r1, r2
	str r1, [r0]
	bl sub_800D40C
_0800D17E:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800D188: .4byte gCurTask
_0800D18C: .4byte gBgScrollRegs
_0800D190: .4byte gFlags
_0800D194: .4byte 0xFFFF7FFF

	thumb_func_start CreateSonicTeamLogo
CreateSonicTeamLogo: @ 0x0800D198
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r0, _0800D234 @ =gBldRegs
	movs r5, #0
	movs r4, #0
	strh r4, [r0]
	strh r4, [r0, #4]
	ldr r0, _0800D238 @ =gDispCnt
	movs r2, #0x40
	strh r2, [r0]
	ldr r1, _0800D23C @ =gBgCntRegs
	ldr r0, _0800D240 @ =0x00005E01
	strh r0, [r1, #4]
	ldr r0, _0800D244 @ =gBgScrollRegs
	strh r4, [r0, #8]
	strh r4, [r0, #0xa]
	str r4, [sp, #4]
	ldr r1, _0800D248 @ =0x040000D4
	add r0, sp, #4
	str r0, [r1]
	movs r6, #0xc0
	lsls r6, r6, #0x13
	str r6, [r1, #4]
	ldr r0, _0800D24C @ =0x85000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0800D250 @ =sa2__gUnknown_03004D80
	strb r5, [r0, #2]
	ldr r0, _0800D254 @ =sa2__gUnknown_03002280
	strb r5, [r0, #8]
	strb r5, [r0, #9]
	movs r1, #0xff
	strb r1, [r0, #0xa]
	strb r2, [r0, #0xb]
	ldr r0, _0800D258 @ =Task_SonicTeamLogoInit
	movs r2, #0x80
	lsls r2, r2, #6
	str r4, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	strh r4, [r0]
	ldr r1, _0800D25C @ =0x03000004
	adds r0, r2, r1
	str r6, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _0800D260 @ =0x0600F000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	movs r1, #0x57
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	movs r1, #5
	strh r1, [r0, #0x22]
	strh r1, [r0, #0x24]
	movs r1, #0x14
	strh r1, [r0, #0x26]
	movs r1, #0xa
	strh r1, [r0, #0x28]
	ldr r1, _0800D264 @ =0x0300002E
	adds r2, r2, r1
	strb r5, [r2]
	movs r1, #2
	strh r1, [r0, #0x2e]
	bl DrawBackground
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800D234: .4byte gBldRegs
_0800D238: .4byte gDispCnt
_0800D23C: .4byte gBgCntRegs
_0800D240: .4byte 0x00005E01
_0800D244: .4byte gBgScrollRegs
_0800D248: .4byte 0x040000D4
_0800D24C: .4byte 0x85000010
_0800D250: .4byte sa2__gUnknown_03004D80
_0800D254: .4byte sa2__gUnknown_03002280
_0800D258: .4byte Task_SonicTeamLogoInit
_0800D25C: .4byte 0x03000004
_0800D260: .4byte 0x0600F000
_0800D264: .4byte 0x0300002E

	thumb_func_start Task_800D268
Task_800D268: @ 0x0800D268
	push {r4, r5, r6, lr}
	sub sp, #0xc
	ldr r4, _0800D2E4 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r2, _0800D2E8 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldrh r0, [r6]
	adds r0, #2
	strh r0, [r6]
	lsls r0, r0, #0x10
	ldr r1, _0800D2EC @ =0x01170000
	cmp r0, r1
	bhi _0800D338
	ldr r5, _0800D2F0 @ =gBgScrollRegs
	ldrh r3, [r5, #8]
	ldrh r0, [r5, #0xa]
	str r0, [sp]
	movs r0, #2
	movs r1, #0
	movs r2, #0x28
	bl sa2__sub_80078D4
	ldrh r3, [r5, #8]
	ldrh r0, [r5, #0xa]
	str r0, [sp]
	movs r0, #2
	movs r1, #0x78
	movs r2, #0xa0
	bl sa2__sub_80078D4
	ldrh r0, [r6]
	cmp r0, #0xc7
	bhi _0800D2F4
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r3, r1, #0
	subs r3, r3, r0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldrh r0, [r5, #8]
	str r0, [sp, #4]
	ldrh r0, [r5, #0xa]
	str r0, [sp, #8]
	movs r0, #2
	movs r1, #0x28
	movs r2, #0x78
	bl sa2__sub_8007958
	b _0800D354
	.align 2, 0
_0800D2E4: .4byte gCurTask
_0800D2E8: .4byte gDispCnt
_0800D2EC: .4byte 0x01170000
_0800D2F0: .4byte gBgScrollRegs
_0800D2F4:
	movs r4, #0x40
	subs r2, r4, r0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r3, r1, #0
	subs r3, r3, r0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldrh r0, [r5, #8]
	str r0, [sp, #4]
	ldrh r0, [r5, #0xa]
	str r0, [sp, #8]
	movs r0, #2
	movs r1, #0x28
	bl sa2__sub_8007958
	ldrb r0, [r6]
	subs r4, r4, r0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldrh r3, [r5, #8]
	ldrh r0, [r5, #0xa]
	str r0, [sp]
	movs r0, #2
	adds r1, r4, #0
	movs r2, #0x78
	bl sa2__sub_80078D4
	b _0800D354
_0800D338:
	movs r0, #0x66      @ SE_RING
	bl m4aSongNumStart
	ldr r2, _0800D35C @ =gFlags
	ldr r0, [r2]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	ldr r1, [r4]
	ldr r0, _0800D360 @ =Task_800D450
	str r0, [r1, #8]
	movs r0, #0
	strh r0, [r6]
_0800D354:
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800D35C: .4byte gFlags
_0800D360: .4byte Task_800D450

	thumb_func_start sub_800D364
sub_800D364: @ 0x0800D364
	push {lr}
	ldr r0, _0800D380 @ =gCurTask
	ldr r2, [r0]
	ldrh r3, [r2, #6]
	ldr r0, _0800D384 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0800D38C
	ldr r0, _0800D388 @ =sub_800D4B0
	str r0, [r2, #8]
	b _0800D3BA
	.align 2, 0
_0800D380: .4byte gCurTask
_0800D384: .4byte gPressedKeys
_0800D388: .4byte sub_800D4B0
_0800D38C:
	ldr r1, _0800D3AC @ =0x03000044
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r1, #0x80
	strh r1, [r0]
	lsls r2, r1, #0x10
	asrs r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #5
	cmp r0, r1
	ble _0800D3B4
	ldr r0, _0800D3B0 @ =gBldRegs
	strh r1, [r0, #4]
	bl sub_800D498
	b _0800D3BA
	.align 2, 0
_0800D3AC: .4byte 0x03000044
_0800D3B0: .4byte gBldRegs
_0800D3B4:
	ldr r1, _0800D3C0 @ =gBldRegs
	asrs r0, r2, #0x18
	strh r0, [r1, #4]
_0800D3BA:
	pop {r0}
	bx r0
	.align 2, 0
_0800D3C0: .4byte gBldRegs

	thumb_func_start sub_800D3C4
sub_800D3C4: @ 0x0800D3C4
	push {lr}
	ldr r0, _0800D3D8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0800D3DC @ =Task_800D098
	str r0, [r1, #8]
	bl _call_via_r0
	pop {r0}
	bx r0
	.align 2, 0
_0800D3D8: .4byte gCurTask
_0800D3DC: .4byte Task_800D098

	thumb_func_start sub_800D3E0
sub_800D3E0: @ 0x0800D3E0
	ldr r0, _0800D404 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x78
	bne _0800D402
	ldr r0, _0800D408 @ =sub_800D11C
	str r0, [r2, #8]
	movs r0, #0
	strh r0, [r1]
_0800D402:
	bx lr
	.align 2, 0
_0800D404: .4byte gCurTask
_0800D408: .4byte sub_800D11C

	thumb_func_start sub_800D40C
sub_800D40C: @ 0x0800D40C
	push {lr}
	ldr r2, _0800D42C @ =gFlags
	ldr r0, [r2]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	ldr r0, _0800D430 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl CreateSonicTeamLogo
	pop {r0}
	bx r0
	.align 2, 0
_0800D42C: .4byte gFlags
_0800D430: .4byte gCurTask

	thumb_func_start Task_SonicTeamLogoInit
Task_SonicTeamLogoInit: @ 0x0800D434
	push {lr}
	ldr r0, _0800D448 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0800D44C @ =Task_800D268
	str r0, [r1, #8]
	bl _call_via_r0
	pop {r0}
	bx r0
	.align 2, 0
_0800D448: .4byte gCurTask
_0800D44C: .4byte Task_800D268

	thumb_func_start Task_800D450
Task_800D450: @ 0x0800D450
	push {r4, lr}
	ldr r0, _0800D488 @ =gCurTask
	ldr r4, [r0]
	ldrh r3, [r4, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r3, r1
	ldrh r0, [r1]
	adds r2, r0, #1
	strh r2, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x78
	bls _0800D480
	ldr r1, _0800D48C @ =0x03000044
	adds r0, r3, r1
	movs r2, #0
	strh r2, [r0]
	ldr r0, _0800D490 @ =sub_800D364
	str r0, [r4, #8]
	ldr r1, _0800D494 @ =gBldRegs
	movs r0, #0xff
	strh r0, [r1]
	strh r2, [r1, #4]
_0800D480:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800D488: .4byte gCurTask
_0800D48C: .4byte 0x03000044
_0800D490: .4byte sub_800D364
_0800D494: .4byte gBldRegs

	thumb_func_start sub_800D498
sub_800D498: @ 0x0800D498
	push {lr}
	ldr r0, _0800D4AC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl sub_8063918
	pop {r0}
	bx r0
	.align 2, 0
_0800D4AC: .4byte gCurTask

	thumb_func_start sub_800D4B0
sub_800D4B0: @ 0x0800D4B0
	push {lr}
	ldr r2, _0800D4D4 @ =gFlags
	ldr r0, [r2]
	ldr r1, _0800D4D8 @ =0xFFFF7FFF
	ands r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	ldr r0, _0800D4DC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	movs r0, #1
	bl CreateTitleScreen
	pop {r0}
	bx r0
	.align 2, 0
_0800D4D4: .4byte gFlags
_0800D4D8: .4byte 0xFFFF7FFF
_0800D4DC: .4byte gCurTask

@ R0 = bool32 playMusic
	thumb_func_start CreateTitleScreen
CreateTitleScreen: @ 0x0800D4E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sl, r0
	ldr r1, _0800D6A8 @ =gUnknown_080BB33C
	add r0, sp, #4
	movs r2, #4
	bl memcpy
	ldr r1, _0800D6AC @ =gDispCnt
	movs r0, #0x41
	strh r0, [r1]
	ldr r1, _0800D6B0 @ =gBgCntRegs
	movs r0, #0
	mov r8, r0
	movs r6, #0
	ldr r0, _0800D6B4 @ =0x0000568D
	strh r0, [r1, #4]
	ldr r0, _0800D6B8 @ =0x00001482
	strh r0, [r1]
	ldr r0, _0800D6BC @ =gBgScrollRegs
	strh r6, [r0]
	strh r6, [r0, #2]
	strh r6, [r0, #4]
	strh r6, [r0, #6]
	strh r6, [r0, #8]
	strh r6, [r0, #0xa]
	ldr r3, _0800D6C0 @ =sa2__gUnknown_03004D80
	mov r1, r8
	strb r1, [r3]
	ldr r0, _0800D6C4 @ =sa2__gUnknown_03002280
	strb r1, [r0]
	strb r1, [r0, #1]
	movs r1, #0xff
	strb r1, [r0, #2]
	movs r2, #0x20
	strb r2, [r0, #3]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r3, #2]
	mov r1, r8
	strb r1, [r0, #8]
	strb r1, [r0, #9]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0xa]
	strb r2, [r0, #0xb]
	str r6, [sp, #8]
	ldr r1, _0800D6C8 @ =0x040000D4
	add r2, sp, #8
	str r2, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _0800D6CC @ =0x85000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	str r6, [sp, #8]
	str r2, [r1]
	ldr r0, _0800D6D0 @ =0x0600FFC0
	str r0, [r1, #4]
	ldr r0, _0800D6D4 @ =0x85000020
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0800D6D8 @ =Task_LoadGameLogo
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _0800D6DC @ =TaskDestructor_TitleScreen
	str r1, [sp]
	movs r1, #0xec
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	ldr r1, _0800D6E0 @ =0x030000E2
	adds r0, r5, r1
	strh r6, [r0]
	ldr r0, _0800D6E4 @ =0x030000E0
	adds r2, r5, r0
	movs r1, #0x80
	lsls r1, r1, #5
	strh r1, [r2]
	adds r0, #8
	adds r0, r0, r5
	mov sb, r0
	mov r1, sl
	strb r1, [r0]   @ titlescreen->playSound (0xE8 bool8)
	ldr r1, _0800D6E8 @ =gBldRegs
	ldr r0, _0800D6EC @ =0x000020A5
	strh r0, [r1]
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	strh r0, [r1, #4]
	movs r0, #0x78
	strh r0, [r4, #0x16]
	movs r0, #0x71
	strh r0, [r4, #0x18]
	movs r0, #0x2e
	bl VramMalloc
	str r0, [r4, #4]
	strh r6, [r4, #8]
	ldr r0, _0800D6F0 @ =gLoadedSaveGame
	ldrb r0, [r0, #0x19]
	lsls r0, r0, #1
	add r0, sp
	adds r0, #4
	ldrh r0, [r0]
	strh r0, [r4, #0xa]
	ldr r1, _0800D6F4 @ =0x03000020
	adds r0, r5, r1
	mov r1, r8
	strb r1, [r0]
	strh r6, [r4, #0x14]
	ldr r0, _0800D6F8 @ =0x03000021
	adds r1, r5, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	strh r6, [r4, #0x1c]
	ldr r1, _0800D6FC @ =0x03000022
	adds r0, r5, r1
	movs r7, #0x10
	strb r7, [r0]
	adds r1, #3
	adds r0, r5, r1
	mov r1, r8
	strb r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	mov sl, r0
	mov r1, sl
	strh r1, [r4, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r1, _0800D700 @ =0x03000030
	adds r4, r5, r1
	strh r6, [r4, #0x16]
	movs r0, #0x86
	strh r0, [r4, #0x18]
	movs r0, #0x5a
	bl VramMalloc
	str r0, [r4, #4]
	strh r6, [r4, #8]
	movs r0, #0xc3
	lsls r0, r0, #2
	strh r0, [r4, #0xa]
	ldr r0, _0800D704 @ =0x03000050
	adds r1, r5, r0
	movs r0, #1
	strb r0, [r1]
	strh r6, [r4, #0x14]
	ldr r0, _0800D708 @ =0x03000051
	adds r1, r5, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	strh r6, [r4, #0x1c]
	ldr r1, _0800D70C @ =0x03000052
	adds r0, r5, r1
	strb r7, [r0]
	adds r1, #3
	adds r0, r5, r1
	mov r1, r8
	strb r1, [r0]
	mov r0, sl
	strh r0, [r4, #0x1a]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r1, _0800D710 @ =0x03000060
	adds r0, r5, r1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	strh r6, [r0, #0xa]
	ldr r1, _0800D714 @ =0x0600A000
	str r1, [r0, #0xc]
	strh r6, [r0, #0x18]
	strh r6, [r0, #0x1a]
	movs r1, #0x4b
	strh r1, [r0, #0x1c]
	strh r6, [r0, #0x1e]
	strh r6, [r0, #0x20]
	strh r6, [r0, #0x22]
	strh r6, [r0, #0x24]
	movs r1, #0x1e
	strh r1, [r0, #0x26]
	movs r1, #0x14
	strh r1, [r0, #0x28]
	ldr r1, _0800D718 @ =0x0300008A
	adds r5, r5, r1
	mov r1, r8
	strb r1, [r5]
	movs r1, #4
	strh r1, [r0, #0x2e]
	bl DrawBackground       @ Title Screen Background
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800D698
	movs r0, #2     @ MUS_TITLE_FANFARE
	bl m4aSongNumStart
_0800D698:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D6A8: .4byte gUnknown_080BB33C
_0800D6AC: .4byte gDispCnt
_0800D6B0: .4byte gBgCntRegs
_0800D6B4: .4byte 0x0000568D
_0800D6B8: .4byte 0x00001482
_0800D6BC: .4byte gBgScrollRegs
_0800D6C0: .4byte sa2__gUnknown_03004D80
_0800D6C4: .4byte sa2__gUnknown_03002280
_0800D6C8: .4byte 0x040000D4
_0800D6CC: .4byte 0x85000010
_0800D6D0: .4byte 0x0600FFC0
_0800D6D4: .4byte 0x85000020
_0800D6D8: .4byte Task_LoadGameLogo
_0800D6DC: .4byte TaskDestructor_TitleScreen
_0800D6E0: .4byte 0x030000E2
_0800D6E4: .4byte 0x030000E0
_0800D6E8: .4byte gBldRegs
_0800D6EC: .4byte 0x000020A5
_0800D6F0: .4byte gLoadedSaveGame
_0800D6F4: .4byte 0x03000020
_0800D6F8: .4byte 0x03000021
_0800D6FC: .4byte 0x03000022
_0800D700: .4byte 0x03000030
_0800D704: .4byte 0x03000050
_0800D708: .4byte 0x03000051
_0800D70C: .4byte 0x03000052
_0800D710: .4byte 0x03000060
_0800D714: .4byte 0x0600A000
_0800D718: .4byte 0x0300008A

	thumb_func_start Task_LoadGameLogo
Task_LoadGameLogo: @ 0x0800D71C
	push {r4, r5, r6, lr}
	ldr r2, _0800D7B8 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x88
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r6, _0800D7BC @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	ldr r0, _0800D7C0 @ =0x030000E0
	adds r5, r4, r0
	movs r2, #0
	ldrsh r1, [r5, r2]
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r1, r0
	bne _0800D77E
	ldr r3, _0800D7C4 @ =0x030000A0
	adds r0, r4, r3
	ldr r1, _0800D7C8 @ =0x0600C000
	str r1, [r0, #4]
	movs r3, #0
	movs r2, #0
	strh r2, [r0, #0xa]
	ldr r1, _0800D7CC @ =0x0600B000
	str r1, [r0, #0xc]
	strh r2, [r0, #0x18]
	strh r2, [r0, #0x1a]
	ldr r1, _0800D7D0 @ =gLoadedSaveGame
	ldrb r1, [r1, #0x19]
	adds r1, #0x49
	strh r1, [r0, #0x1c]
	strh r2, [r0, #0x1e]
	strh r2, [r0, #0x20]
	strh r2, [r0, #0x22]
	strh r2, [r0, #0x24]
	movs r1, #0x18
	strh r1, [r0, #0x26]
	movs r1, #0xa
	strh r1, [r0, #0x28]
	ldr r2, _0800D7D4 @ =0x030000CA
	adds r1, r4, r2
	strb r3, [r1]
	movs r1, #6
	strh r1, [r0, #0x2e]
	bl DrawBackground       @ Title Screen Game Logo
_0800D77E:
	ldrh r0, [r5]
	subs r0, #0x55
	strh r0, [r5]
	ldr r2, _0800D7D8 @ =gBldRegs
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	strh r0, [r2, #4]
	movs r3, #0
	ldrsh r0, [r5, r3]
	cmp r0, #0
	bgt _0800D7B0
	ldr r0, _0800D7DC @ =0x030000E4
	adds r1, r4, r0
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1]
	ldr r3, _0800D7E0 @ =0x030000E6
	adds r1, r4, r3
	ldr r0, _0800D7E4 @ =0x0000FFF0
	strh r0, [r1]
	movs r0, #0
	strh r0, [r2, #4]
	ldr r1, [r6]
	ldr r0, _0800D7E8 @ =sub_800D7EC
	str r0, [r1, #8]
_0800D7B0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800D7B8: .4byte gDispCnt
_0800D7BC: .4byte gCurTask
_0800D7C0: .4byte 0x030000E0
_0800D7C4: .4byte 0x030000A0
_0800D7C8: .4byte 0x0600C000
_0800D7CC: .4byte 0x0600B000
_0800D7D0: .4byte gLoadedSaveGame
_0800D7D4: .4byte 0x030000CA
_0800D7D8: .4byte gBldRegs
_0800D7DC: .4byte 0x030000E4
_0800D7E0: .4byte 0x030000E6
_0800D7E4: .4byte 0x0000FFF0
_0800D7E8: .4byte sub_800D7EC

	thumb_func_start sub_800D7EC
sub_800D7EC: @ 0x0800D7EC
	push {r4, r5, lr}
	sub sp, #0x10
	ldr r0, _0800D85C @ =gCurTask
	ldr r4, [r0]
	ldrh r3, [r4, #6]
	ldr r2, _0800D860 @ =gDispCnt
	ldrh r0, [r2]
	movs r5, #0x80
	lsls r5, r5, #3
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0800D864 @ =0x030000E4
	adds r2, r3, r0
	ldr r5, _0800D868 @ =0x030000E6
	adds r1, r3, r5
	ldrh r0, [r1]
	ldrh r5, [r2]
	adds r0, r0, r5
	strh r0, [r2]
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0xff
	bgt _0800D834
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2]
	ldr r5, _0800D86C @ =0x030000E2
	adds r1, r3, r5
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0800D870 @ =sub_800D878
	str r0, [r4, #8]
_0800D834:
	movs r0, #0
	ldrsh r2, [r2, r0]
	movs r0, #0x1a
	str r0, [sp]
	movs r0, #0xc0
	str r0, [sp, #4]
	movs r0, #0x1e
	str r0, [sp, #8]
	ldr r0, _0800D874 @ =gBgAffineRegs
	str r0, [sp, #0xc]
	movs r0, #0
	adds r1, r2, #0
	movs r3, #0x8d
	bl sa2__sub_8003EE4
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800D85C: .4byte gCurTask
_0800D860: .4byte gDispCnt
_0800D864: .4byte 0x030000E4
_0800D868: .4byte 0x030000E6
_0800D86C: .4byte 0x030000E2
_0800D870: .4byte sub_800D878
_0800D874: .4byte gBgAffineRegs

	thumb_func_start sub_800D878
sub_800D878: @ 0x0800D878
	push {r4, r5, lr}
	ldr r5, _0800D8B0 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0xe2
	adds r2, r1, r0
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bls _0800D8CE
	ldr r0, _0800D8B4 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800D8BC
	movs r0, #0x6a
	bl m4aSongNumStart
	ldr r1, [r5]
	ldr r0, _0800D8B8 @ =sub_800E008
	b _0800D8EA
	.align 2, 0
_0800D8B0: .4byte gCurTask
_0800D8B4: .4byte gPressedKeys
_0800D8B8: .4byte sub_800E008
_0800D8BC:
	ldrh r0, [r2]
	subs r0, #0x3c
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0800D8CE
	adds r0, r4, #0
	bl DisplaySprite
_0800D8CE:
	adds r0, r4, #0
	adds r0, #0x30
	bl DisplaySprite
	adds r0, r4, #0
	adds r0, #0xe2
	ldrh r1, [r0]
	movs r0, #0xe1
	lsls r0, r0, #2
	cmp r1, r0
	bls _0800D8EC
	ldr r0, _0800D8F4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0800D8F8 @ =sub_800DF88
_0800D8EA:
	str r0, [r1, #8]
_0800D8EC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800D8F4: .4byte gCurTask
_0800D8F8: .4byte sub_800DF88

	thumb_func_start CreateMainMenu
CreateMainMenu: @ 0x0800D8FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r4, r0, #0
	ldr r0, _0800DAEC @ =gGameMode
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0800DAF0 @ =sa2__gUnknown_0300543C
	strb r1, [r0]
	ldr r1, _0800DAF4 @ =gDispCnt
	ldr r2, _0800DAF8 @ =0x00001541
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0800DAFC @ =gBgCntRegs
	mov sb, r0
	movs r7, #0
	movs r5, #0
	ldr r0, _0800DB00 @ =0x0000568D
	mov r1, sb
	strh r0, [r1, #4]
	ldr r0, _0800DB04 @ =0x00001482
	strh r0, [r1]
	ldr r0, _0800DB08 @ =gBgScrollRegs
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	strh r5, [r0, #0xa]
	ldr r0, _0800DB0C @ =Task_MainMenuInit
	movs r1, #0xda
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #6
	str r5, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r6, r1
	ldr r2, _0800DB10 @ =0x030001AC
	adds r0, r6, r2
	strh r5, [r0]
	ldr r0, _0800DB14 @ =0x030001AF
	adds r0, r0, r6
	mov r8, r0
	strb r4, [r0]
	movs r0, #0x78
	strh r0, [r1, #0x16]
	movs r0, #0x50
	strh r0, [r1, #0x18]
	ldr r0, _0800DB18 @ =0x06000040
	str r0, [r1, #4]
	strh r5, [r1, #8]
	movs r2, #1
	mov sl, r2
	mov r0, sl
	strh r0, [r1, #0xa]
	ldr r2, _0800DB1C @ =0x03000020
	adds r0, r6, r2
	strb r7, [r0]
	strh r5, [r1, #0x14]
	ldr r0, _0800DB20 @ =0x03000021
	adds r2, r6, r0
	movs r0, #1
	rsbs r0, r0, #0
	adds r4, r0, #0
	movs r0, #0xff
	strb r0, [r2]
	strh r5, [r1, #0x1c]
	ldr r0, _0800DB24 @ =0x03000022
	adds r2, r6, r0
	movs r0, #0x10
	strb r0, [r2]
	ldr r2, _0800DB28 @ =0x03000025
	adds r0, r6, r2
	strb r7, [r0]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r1, #0x10]
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800DA10
	ldr r2, _0800DB2C @ =sa2__gUnknown_03004D80
	strb r7, [r2]
	ldr r1, _0800DB30 @ =sa2__gUnknown_03002280
	strb r7, [r1]
	strb r7, [r1, #1]
	ldrb r0, [r1, #2]
	orrs r0, r4
	strb r0, [r1, #2]
	movs r3, #0x20
	strb r3, [r1, #3]
	ldrb r0, [r2, #2]
	orrs r0, r4
	strb r0, [r2, #2]
	strb r7, [r1, #8]
	strb r7, [r1, #9]
	ldrb r0, [r1, #0xa]
	orrs r0, r4
	strb r0, [r1, #0xa]
	strb r3, [r1, #0xb]
	str r5, [sp, #0x10]
	ldr r3, _0800DB34 @ =0x040000D4
	add r2, sp, #0x10
	str r2, [r3]
	mov r0, sb
	ldrh r1, [r0]
	movs r2, #0xc
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r3, #4]
	ldr r0, _0800DB38 @ =0x85000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	str r5, [sp, #0x10]
	add r1, sp, #0x10
	str r1, [r3]
	mov r1, sb
	ldrh r0, [r1, #4]
	ands r2, r0
	lsls r2, r2, #0xc
	ldr r0, _0800DB3C @ =0x06003FC0
	adds r2, r2, r0
	str r2, [r3, #4]
	ldr r0, _0800DB40 @ =0x85000020
	str r0, [r3, #8]
	ldr r0, [r3, #8]
_0800DA10:
	ldr r2, _0800DB44 @ =0x030001AE
	adds r0, r6, r2
	strb r7, [r0]
	ldr r0, _0800DB48 @ =0x03000120
	adds r1, r6, r0
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	strh r5, [r1, #0xa]
	ldr r0, _0800DB4C @ =0x0600A000
	str r0, [r1, #0xc]
	strh r5, [r1, #0x18]
	strh r5, [r1, #0x1a]
	movs r0, #0x4b
	strh r0, [r1, #0x1c]
	strh r5, [r1, #0x1e]
	strh r5, [r1, #0x20]
	strh r5, [r1, #0x22]
	strh r5, [r1, #0x24]
	movs r4, #0x1e
	strh r4, [r1, #0x26]
	movs r0, #0x14
	strh r0, [r1, #0x28]
	subs r2, #0x64
	adds r0, r6, r2
	strb r7, [r0]
	movs r0, #4
	strh r0, [r1, #0x2e]
	mov r2, r8
	ldrb r0, [r2]
	cmp r0, #0
	beq _0800DA56
	adds r0, r1, #0
	bl DrawBackground
_0800DA56:
	ldr r0, _0800DB50 @ =0x03000160
	adds r1, r6, r0
	ldr r0, _0800DB54 @ =0x0600C000
	str r0, [r1, #4]
	strh r5, [r1, #0xa]
	ldr r0, _0800DB58 @ =0x0600B000
	str r0, [r1, #0xc]
	strh r5, [r1, #0x18]
	strh r5, [r1, #0x1a]
	ldr r0, _0800DB5C @ =gLoadedSaveGame
	ldrb r0, [r0, #0x19]
	adds r0, #0x49
	strh r0, [r1, #0x1c]
	strh r5, [r1, #0x1e]
	strh r5, [r1, #0x20]
	strh r5, [r1, #0x22]
	strh r5, [r1, #0x24]
	movs r0, #0x18
	strh r0, [r1, #0x26]
	movs r0, #0xa
	strh r0, [r1, #0x28]
	ldr r2, _0800DB60 @ =0x0300018A
	adds r0, r6, r2
	strb r7, [r0]
	movs r0, #6
	strh r0, [r1, #0x2e]
	mov r2, r8
	ldrb r0, [r2]
	cmp r0, #0
	beq _0800DA98
	adds r0, r1, #0
	bl DrawBackground
_0800DA98:
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0x1a
	str r0, [sp]
	movs r0, #0xc0
	str r0, [sp, #4]
	str r4, [sp, #8]
	ldr r0, _0800DB64 @ =gBgAffineRegs
	str r0, [sp, #0xc]
	movs r0, #0
	adds r1, r2, #0
	movs r3, #0x8d
	bl sa2__sub_8003EE4
	ldr r0, _0800DB68 @ =0x030001A0
	adds r1, r6, r0
	strh r5, [r1]
	mov r2, sl
	strh r2, [r1, #2]
	movs r0, #2
	strh r0, [r1, #4]
	strh r5, [r1, #6]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1, #8]
	movs r0, #1
	strb r0, [r1, #0xa]
	mov r2, r8
	ldrb r0, [r2]
	cmp r0, #0
	beq _0800DADC
	adds r0, r1, #0
	bl sub_805423C
_0800DADC:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800DAEC: .4byte gGameMode
_0800DAF0: .4byte sa2__gUnknown_0300543C
_0800DAF4: .4byte gDispCnt
_0800DAF8: .4byte 0x00001541
_0800DAFC: .4byte gBgCntRegs
_0800DB00: .4byte 0x0000568D
_0800DB04: .4byte 0x00001482
_0800DB08: .4byte gBgScrollRegs
_0800DB0C: .4byte Task_MainMenuInit
_0800DB10: .4byte 0x030001AC
_0800DB14: .4byte 0x030001AF
_0800DB18: .4byte 0x06000040
_0800DB1C: .4byte 0x03000020
_0800DB20: .4byte 0x03000021
_0800DB24: .4byte 0x03000022
_0800DB28: .4byte 0x03000025
_0800DB2C: .4byte sa2__gUnknown_03004D80
_0800DB30: .4byte sa2__gUnknown_03002280
_0800DB34: .4byte 0x040000D4
_0800DB38: .4byte 0x85000010
_0800DB3C: .4byte 0x06003FC0
_0800DB40: .4byte 0x85000020
_0800DB44: .4byte 0x030001AE
_0800DB48: .4byte 0x03000120
_0800DB4C: .4byte 0x0600A000
_0800DB50: .4byte 0x03000160
_0800DB54: .4byte 0x0600C000
_0800DB58: .4byte 0x0600B000
_0800DB5C: .4byte gLoadedSaveGame
_0800DB60: .4byte 0x0300018A
_0800DB64: .4byte gBgAffineRegs
_0800DB68: .4byte 0x030001A0

	thumb_func_start Task_MainMenuInit
Task_MainMenuInit: @ 0x0800DB6C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r6, _0800DCB4 @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	mov sb, r5
	ldr r0, _0800DCB8 @ =0x030001A0
	adds r2, r4, r0
	movs r1, #1
	ldr r3, _0800DCBC @ =0x030001AF
	adds r0, r4, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800DBA4
	adds r0, r2, #0
	bl sub_805423C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
_0800DBA4:
	cmp r1, #0
	beq _0800DCA4
	ldrh r1, [r5, #8]
	cmp r1, #0
	bne _0800DBF0
	movs r2, #0
	strh r1, [r5, #0x16]
	strh r1, [r5, #0x18]
	ldr r0, _0800DCC0 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x1a]
	strh r1, [r5, #8]
	ldr r0, _0800DCC4 @ =0x000002BB
	strh r0, [r5, #0xa]
	ldr r3, _0800DCC8 @ =0x03000020
	adds r0, r4, r3
	strb r2, [r0]
	strh r1, [r5, #0x14]
	strh r1, [r5, #0x1c]
	ldr r0, _0800DCCC @ =0x03000021
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	adds r3, #2
	adds r1, r4, r3
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0800DCD0 @ =0x03000025
	adds r0, r4, r1
	strb r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r5, #0x10]
	ldr r1, [r6]
	ldr r0, _0800DCD4 @ =Task_SwitchTo_Task_800DCFC
	str r0, [r1, #8]
_0800DBF0:
	movs r6, #0
	movs r2, #0
	mov sl, r2
	movs r7, #0
	ldr r3, _0800DCD8 @ =gLoadedSaveGame
	mov r8, r3
_0800DBFC:
	lsls r4, r6, #1
	adds r0, r4, r6
	lsls r0, r0, #4
	adds r0, #0x30
	mov r1, sb
	adds r5, r1, r0
	movs r0, #0x78
	strh r0, [r5, #0x16]
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #1
	adds r0, #0x5d
	strh r0, [r5, #0x18]
	ldr r0, _0800DCDC @ =gUnknown_080BB31E
	adds r0, r6, r0
	ldrb r0, [r0]
	bl VramMalloc
	str r0, [r5, #4]
	strh r7, [r5, #8]
	ldr r1, _0800DCE0 @ =gUnknown_080BB310
	mov r2, r8
	ldrb r0, [r2, #0x19]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5, #0xa]
	ldr r1, _0800DCE4 @ =gUnknown_080BB314
	ldrb r0, [r2, #0x19]
	adds r0, r0, r4
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x20
	strb r1, [r0]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x1a]
	strh r7, [r5, #8]
	strh r7, [r5, #0x14]
	strh r7, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x25
	mov r3, sl
	strb r3, [r0]
	str r7, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bls _0800DBFC
	movs r6, #0
	ldr r5, _0800DCE8 @ =gDispCnt
	ldr r7, _0800DCEC @ =gBldRegs
	ldr r4, _0800DCF0 @ =gKeysFirstRepeatIntervals
	movs r3, #0x14
	ldr r2, _0800DCF4 @ =gKeysContinuedRepeatIntervals
	movs r1, #8
_0800DC84:
	adds r0, r6, r4
	strb r3, [r0]
	adds r0, r6, r2
	strb r1, [r0]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #9
	bls _0800DC84
	ldrh r0, [r5]
	ldr r1, _0800DCF8 @ =0x00009FFF
	ands r1, r0
	strh r1, [r5]
	movs r0, #0
	strh r0, [r7]
	strh r0, [r7, #4]
_0800DCA4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800DCB4: .4byte gCurTask
_0800DCB8: .4byte 0x030001A0
_0800DCBC: .4byte 0x030001AF
_0800DCC0: .4byte 0x06010000
_0800DCC4: .4byte 0x000002BB
_0800DCC8: .4byte 0x03000020
_0800DCCC: .4byte 0x03000021
_0800DCD0: .4byte 0x03000025
_0800DCD4: .4byte Task_SwitchTo_Task_800DCFC
_0800DCD8: .4byte gLoadedSaveGame
_0800DCDC: .4byte gUnknown_080BB31E
_0800DCE0: .4byte gUnknown_080BB310
_0800DCE4: .4byte gUnknown_080BB314
_0800DCE8: .4byte gDispCnt
_0800DCEC: .4byte gBldRegs
_0800DCF0: .4byte gKeysFirstRepeatIntervals
_0800DCF4: .4byte gKeysContinuedRepeatIntervals
_0800DCF8: .4byte 0x00009FFF

	thumb_func_start Task_800DCFC
Task_800DCFC: @ 0x0800DCFC
	push {r4, r5, r6, r7, lr}
	ldr r0, _0800DD3C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	adds r5, r6, #0
	ldr r0, _0800DD40 @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0
	beq _0800DD48
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r0, _0800DD44 @ =0x030001AE
	adds r1, r4, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _0800DD6A
	movs r0, #4
	strb r0, [r1]
	b _0800DD6A
	.align 2, 0
_0800DD3C: .4byte gCurTask
_0800DD40: .4byte gRepeatedKeys
_0800DD44: .4byte 0x030001AE
_0800DD48:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800DD6A
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r0, _0800DDB4 @ =0x030001AE
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _0800DD6A
	strb r7, [r1]
_0800DD6A:
	movs r0, #0x48
	strh r0, [r5, #0x16]
	movs r1, #0xd7
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #1
	adds r0, #0x6b
	strh r0, [r5, #0x18]
_0800DD80:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	cmp r0, #1
	beq _0800DD8E
	cmp r0, #0
	bne _0800DD80
_0800DD8E:
	movs r4, #0
_0800DD90:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, #0x30
	adds r5, r6, r0
	movs r1, #0xd7
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r4, r0
	bne _0800DDC0
	cmp r4, #0
	beq _0800DDB8
	adds r1, r5, #0
	adds r1, #0x25
	movs r0, #1
	b _0800DDD2
	.align 2, 0
_0800DDB4: .4byte 0x030001AE
_0800DDB8:
	adds r0, r5, #0
	adds r0, #0x25
	strb r4, [r0]
	b _0800DDD4
_0800DDC0:
	cmp r4, #0
	beq _0800DDCC
	adds r1, r5, #0
	adds r1, #0x25
	movs r0, #0
	b _0800DDD2
_0800DDCC:
	adds r1, r5, #0
	adds r1, #0x25
	movs r0, #0xff
_0800DDD2:
	strb r0, [r1]
_0800DDD4:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0800DD90
	ldr r0, _0800DE20 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800DE3A
	movs r0, #0x6a
	bl m4aSongNumStart
	ldr r0, _0800DE24 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0800DE28 @ =sub_800DE44
	str r0, [r1, #8]
	movs r0, #0xd8
	lsls r0, r0, #1
	adds r1, r6, r0
	movs r0, #0
	strh r0, [r1]
	movs r1, #0xd7
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #4
	bne _0800DE30
	ldr r1, _0800DE2C @ =gBldRegs
	movs r0, #0xbf
	b _0800DE34
	.align 2, 0
_0800DE20: .4byte gPressedKeys
_0800DE24: .4byte gCurTask
_0800DE28: .4byte sub_800DE44
_0800DE2C: .4byte gBldRegs
_0800DE30:
	ldr r1, _0800DE40 @ =gBldRegs
	movs r0, #0xff
_0800DE34:
	strh r0, [r1]
	movs r0, #0
	strh r0, [r1, #4]
_0800DE3A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800DE40: .4byte gBldRegs

	thumb_func_start sub_800DE44
sub_800DE44: @ 0x0800DE44
	push {r4, r5, r6, lr}
	ldr r0, _0800DEC4 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r0, _0800DEC8 @ =0x030001B0
	adds r5, r1, r0
	ldrh r0, [r5]
	adds r0, #0x55
	movs r4, #0
	strh r0, [r5]
	lsls r0, r0, #0x10
	ldr r1, _0800DECC @ =0x0FFF0000
	cmp r0, r1
	ble _0800DE9A
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r5]
	ldr r0, _0800DED0 @ =sub_800DEE4
	str r0, [r2, #8]
	ldr r3, _0800DED4 @ =sa2__gUnknown_03004D80
	strb r4, [r3]
	ldr r0, _0800DED8 @ =sa2__gUnknown_03002280
	strb r4, [r0]
	strb r4, [r0, #1]
	movs r1, #0xff
	strb r1, [r0, #2]
	movs r2, #0x20
	strb r2, [r0, #3]
	strb r4, [r3, #2]
	strb r4, [r0, #8]
	strb r4, [r0, #9]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0xa]
	strb r2, [r0, #0xb]
	ldr r2, _0800DEDC @ =gFlags
	ldr r0, [r2]
	subs r1, #4
	ands r0, r1
	str r0, [r2]
_0800DE9A:
	ldr r1, _0800DEE0 @ =gBldRegs
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	strh r0, [r1, #4]
	movs r4, #0
_0800DEA6:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, #0x30
	adds r0, r6, r0
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0800DEA6
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800DEC4: .4byte gCurTask
_0800DEC8: .4byte 0x030001B0
_0800DECC: .4byte 0x0FFF0000
_0800DED0: .4byte sub_800DEE4
_0800DED4: .4byte sa2__gUnknown_03004D80
_0800DED8: .4byte sa2__gUnknown_03002280
_0800DEDC: .4byte gFlags
_0800DEE0: .4byte gBldRegs

	thumb_func_start sub_800DEE4
sub_800DEE4: @ 0x0800DEE4
	push {r4, r5, r6, lr}
	ldr r0, _0800DF3C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	ldr r2, _0800DF40 @ =0x030001AE
	adds r0, r1, r2
	ldrb r6, [r0]
	movs r4, #0
	ldr r0, _0800DF44 @ =0x03000034
	adds r5, r1, r0
_0800DEF8:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, r5, r0
	ldr r0, [r0]
	bl VramFree
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0800DEF8
	ldr r0, _0800DF3C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	movs r0, #0x1d      @ MUS_BOSS_FIGHT
	bl m4aSongNumStart
	ldr r0, _0800DF48 @ =gMPlayInfo_BGM
	bl m4aMPlayImmInit
	movs r0, #0x1d
	bl m4aSongNumStop
	cmp r6, #0
	bne _0800DF50
	ldr r0, _0800DF4C @ =gGameMode
	strb r6, [r0]
	movs r0, #0
	bl CreateCharacterSelectionScreen
	b _0800DF70
	.align 2, 0
_0800DF3C: .4byte gCurTask
_0800DF40: .4byte 0x030001AE
_0800DF44: .4byte 0x03000034
_0800DF48: .4byte gMPlayInfo_BGM
_0800DF4C: .4byte gGameMode
_0800DF50:
	ldr r2, _0800DF78 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0800DF7C @ =0x00009FFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _0800DF80 @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	ldr r1, _0800DF84 @ =gUnknown_080BB32C
	subs r0, r6, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
_0800DF70:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800DF78: .4byte gDispCnt
_0800DF7C: .4byte 0x00009FFF
_0800DF80: .4byte gBldRegs
_0800DF84: .4byte gUnknown_080BB32C

	thumb_func_start sub_800DF88
sub_800DF88: @ 0x0800DF88
	push {r4, lr}
	ldr r0, _0800DFE0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	ldr r1, _0800DFE4 @ =gInputRecorder
	movs r4, #0
	movs r0, #2
	strb r0, [r1, #8]
	ldr r3, _0800DFE8 @ =gInputPlaybackData
	ldr r1, _0800DFEC @ =gUnknown_087BF8CC
	ldr r2, _0800DFF0 @ =gDemoPlayCounter
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _0800DFF4 @ =gSelectedCharacter
	ldr r1, _0800DFF8 @ =gUnknown_080BB327
	ldrb r0, [r2]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r3]
	ldr r3, _0800DFFC @ =gCurrentLevel
	ldr r1, _0800E000 @ =gUnknown_080BB323
	ldrb r0, [r2]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r3]
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r2]
	ldr r0, _0800E004 @ =gGameMode
	strb r4, [r0]
	bl sub_80128C0
	bl ApplyGameStageSettings
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800DFE0: .4byte gCurTask
_0800DFE4: .4byte gInputRecorder
_0800DFE8: .4byte gInputPlaybackData
_0800DFEC: .4byte gUnknown_087BF8CC
_0800DFF0: .4byte gDemoPlayCounter
_0800DFF4: .4byte gSelectedCharacter
_0800DFF8: .4byte gUnknown_080BB327
_0800DFFC: .4byte gCurrentLevel
_0800E000: .4byte gUnknown_080BB323
_0800E004: .4byte gGameMode

	thumb_func_start sub_800E008
sub_800E008: @ 0x0800E008
	push {lr}
	ldr r0, _0800E01C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	movs r0, #0
	bl CreateMainMenu
	pop {r0}
	bx r0
	.align 2, 0
_0800E01C: .4byte gCurTask

	thumb_func_start TaskDestructor_TitleScreen
TaskDestructor_TitleScreen: @ 0x0800E020
	push {r4, lr}
	ldr r0, _0800E040 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #4]
	bl VramFree
	ldr r0, [r4, #0x34]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E040: .4byte gCurTask

	thumb_func_start Task_SwitchTo_Task_800DCFC
Task_SwitchTo_Task_800DCFC: @ 0x0800E044
	push {lr}
	ldr r0, _0800E058 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0800E05C @ =Task_800DCFC
	str r0, [r1, #8]
	bl _call_via_r0
	pop {r0}
	bx r0
	.align 2, 0
_0800E058: .4byte gCurTask
_0800E05C: .4byte Task_800DCFC

	thumb_func_start LoadTinyChaoGarden
LoadTinyChaoGarden: @ 0x0800E060
	push {lr}
	ldr r2, _0800E0B0 @ =gFlags
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r2]
	movs r0, #3
	bl m4aSongNumStop
	bl m4aSoundVSyncOff
	ldr r0, _0800E0B4 @ =gMultiBootProgram_TinyChaoGarden
	movs r1, #0x80
	lsls r1, r1, #0x12
	bl LZ77UnCompWram
	ldr r2, _0800E0B8 @ =EWRAM_START + 8
	ldr r1, _0800E0BC @ =gLoadedSaveGame
	movs r3, #0x85
	lsls r3, r3, #3
	adds r0, r1, r3
	ldr r0, [r0]
	str r0, [r2]
	adds r2, #4
	ldrb r0, [r1, #0x1a]
	str r0, [r2]
	adds r2, #4
	ldr r0, _0800E0C0 @ =gFrameCount
	adds r3, #4
	adds r1, r1, r3
	ldr r0, [r0]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2]
	movs r0, #0
	bl SoftResetExram
	pop {r0}
	bx r0
	.align 2, 0
_0800E0B0: .4byte gFlags
_0800E0B4: .4byte gMultiBootProgram_TinyChaoGarden
_0800E0B8: .4byte EWRAM_START + 8
_0800E0BC: .4byte gLoadedSaveGame
_0800E0C0: .4byte gFrameCount
