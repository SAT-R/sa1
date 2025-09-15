.include "constants/constants.inc"

.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	ldr r0, _08011130 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	ldr r0, _08011134 @ =0x03000270
	adds r5, r4, r0
	ldr r0, _08011138 @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08011140
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r7, _0801113C @ =0x0300033F
	adds r1, r4, r7
	movs r0, #1
	b _08011154
	.align 2, 0
_08011130: .4byte gCurTask
_08011134: .4byte 0x03000270
_08011138: .4byte gRepeatedKeys
_0801113C: .4byte 0x0300033F
_08011140:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08011156
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r0, _080111C4 @ =0x0300033F
	adds r1, r4, r0
	movs r0, #2
_08011154:
	strb r0, [r1]
_08011156:
	ldr r2, _080111C8 @ =gWinRegs
	ldr r1, _080111CC @ =gUnknown_080BB38E
	ldr r7, _080111D0 @ =0x0000033F
	adds r4, r6, r7
	ldr r3, _080111D4 @ =gLoadedSaveGame
	ldrb r0, [r3, #0x19]
	lsls r0, r0, #1
	subs r0, #1
	ldrb r6, [r4]
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r6, #0
	strh r0, [r2, #2]
	ldrb r0, [r3, #0x19]
	lsls r0, r0, #1
	subs r0, #1
	ldrb r7, [r4]
	adds r0, r0, r7
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #6]
	ldr r0, _080111D8 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080111A2
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08011220
	ldrb r0, [r4]
	cmp r0, #1
	beq _080111F0
_080111A2:
	ldr r2, _080111DC @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _080111E0 @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _080111E4 @ =gBldRegs
	strh r6, [r0]
	strh r6, [r0, #4]
	movs r0, #0
	strb r0, [r4]
	movs r0, #0x6b
	bl m4aSongNumStart
	ldr r0, _080111E8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080111EC @ =Task_OptionsMenuMain
	b _0801121E
	.align 2, 0
_080111C4: .4byte 0x0300033F
_080111C8: .4byte gWinRegs
_080111CC: .4byte gUnknown_080BB38E
_080111D0: .4byte 0x0000033F
_080111D4: .4byte gLoadedSaveGame
_080111D8: .4byte gPressedKeys
_080111DC: .4byte gDispCnt
_080111E0: .4byte 0x00001FFF
_080111E4: .4byte gBldRegs
_080111E8: .4byte gCurTask
_080111EC: .4byte Task_OptionsMenuMain
_080111F0:
	ldr r1, _08011230 @ =gUnknown_080BB38A
	ldrb r0, [r3, #0x19]
	adds r0, #2
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	movs r0, #2
	strb r0, [r4]
	movs r0, #0x6a
	bl m4aSongNumStart
	ldr r0, _08011234 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08011238 @ =sub_801123C
_0801121E:
	str r0, [r1, #8]
_08011220:
	adds r0, r5, #0
	bl DisplaySprite
	bl sub_8010CB4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011230: .4byte gUnknown_080BB38A
_08011234: .4byte gCurTask
_08011238: .4byte sub_801123C

.syntax divided
