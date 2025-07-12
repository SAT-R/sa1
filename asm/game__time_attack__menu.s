.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ --- Start of Time Attack Menu (TODO: different to SA2?) ---
	thumb_func_start CreateTimeAttackMenu
CreateTimeAttackMenu: @ 0x080100A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	ldr r1, _080101D4 @ =gDispCnt
	movs r2, #0x8a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _080101D8 @ =gBgCntRegs
	movs r3, #0
	mov r8, r3
	movs r5, #0
	ldr r0, _080101DC @ =0x00000F84
	strh r0, [r1]
	ldr r0, _080101E0 @ =gBgScrollRegs
	strh r5, [r0, #2]
	ldr r0, _080101E4 @ =Task_TimeAttackMenu
	movs r2, #0x80
	lsls r2, r2, #6
	str r5, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	str r5, [r7, #0x70]
	ldr r1, _080101E8 @ =0x0300006C
	adds r0, r4, r1
	strh r5, [r0]
	ldr r2, _080101EC @ =0x03000074
	adds r0, r4, r2
	mov r3, r8
	strb r3, [r0]
	adds r1, #0xa
	adds r0, r4, r1
	strh r5, [r0]
	ldr r3, _080101F0 @ =0x0300000C
	adds r2, r4, r3
	movs r0, #0xe0
	strh r0, [r2, #0x16]
	movs r0, #0x40
	mov sl, r0
	mov r1, sl
	strh r1, [r2, #0x18]
	ldr r0, _080101F4 @ =0x06010000
	str r0, [r2, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r2, #0x1a]
	strh r5, [r2, #8]
	ldr r1, _080101F8 @ =gUnknown_080BB35C
	ldr r6, _080101FC @ =gLoadedSaveGame
	ldrb r0, [r6, #0x19]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xa]
	ldr r1, _08010200 @ =gUnknown_080BB360
	ldrb r0, [r6, #0x19]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r3, #0x20
	adds r0, r4, r3
	strb r1, [r0]
	strh r5, [r2, #0x14]
	strh r5, [r2, #0x1c]
	ldr r0, _08010204 @ =0x0300002D
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08010208 @ =0x0300002E
	adds r0, r4, r1
	movs r3, #0x10
	mov sb, r3
	mov r1, sb
	strb r1, [r0]
	ldr r3, _0801020C @ =0x03000031
	adds r0, r4, r3
	mov r1, r8
	strb r1, [r0]
	str r5, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	ldr r3, _08010210 @ =0x0300003C
	adds r2, r4, r3
	strh r5, [r2, #0x16]
	mov r0, sl
	strh r0, [r2, #0x18]
	ldr r0, _08010214 @ =0x06012000
	str r0, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r2, #0x1a]
	strh r5, [r2, #8]
	subs r0, #0xa4
	strh r0, [r2, #0xa]
	ldr r1, _08010218 @ =0x0300005C
	adds r0, r4, r1
	mov r3, r8
	strb r3, [r0]
	strh r5, [r2, #0x14]
	strh r5, [r2, #0x1c]
	ldr r0, _0801021C @ =0x0300005D
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08010220 @ =0x0300005E
	adds r0, r4, r1
	mov r3, sb
	strb r3, [r0]
	ldr r0, _08010224 @ =0x03000061
	adds r4, r4, r0
	mov r1, r8
	strb r1, [r4]
	str r5, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	bl sub_80535FC
	bl UiGfxStackInit
	add r1, sp, #0x30
	movs r0, #0x80
	strb r0, [r1]
	mov r0, sp
	adds r0, #0x2f
	mov r2, r8
	strb r2, [r0]
	ldrb r0, [r6, #0x19]
	cmp r0, #0
	beq _08010234
	ldr r0, _08010228 @ =gUnknown_0869F034
	str r0, [sp, #0x18]
	ldr r0, _0801022C @ =gUnknown_0869EE34
	str r0, [sp, #0x24]
	ldr r0, _08010230 @ =gUnknown_086A10F4
	str r0, [sp, #0x14]
	movs r0, #0x83
	lsls r0, r0, #6
	b _08010244
	.align 2, 0
_080101D4: .4byte gDispCnt
_080101D8: .4byte gBgCntRegs
_080101DC: .4byte 0x00000F84
_080101E0: .4byte gBgScrollRegs
_080101E4: .4byte Task_TimeAttackMenu
_080101E8: .4byte 0x0300006C
_080101EC: .4byte 0x03000074
_080101F0: .4byte 0x0300000C
_080101F4: .4byte 0x06010000
_080101F8: .4byte gUnknown_080BB35C
_080101FC: .4byte gLoadedSaveGame
_08010200: .4byte gUnknown_080BB360
_08010204: .4byte 0x0300002D
_08010208: .4byte 0x0300002E
_0801020C: .4byte 0x03000031
_08010210: .4byte 0x0300003C
_08010214: .4byte 0x06012000
_08010218: .4byte 0x0300005C
_0801021C: .4byte 0x0300005D
_08010220: .4byte 0x0300005E
_08010224: .4byte 0x03000061
_08010228: .4byte gUnknown_0869F034
_0801022C: .4byte gUnknown_0869EE34
_08010230: .4byte gUnknown_086A10F4
_08010234:
	ldr r0, _0801029C @ =gUnknown_0869CCF4
	str r0, [sp, #0x18]
	ldr r0, _080102A0 @ =gUnknown_0869CAF4
	str r0, [sp, #0x24]
	ldr r0, _080102A4 @ =gUnknown_0869E934
	str r0, [sp, #0x14]
	movs r0, #0xe2
	lsls r0, r0, #5
_08010244:
	str r0, [sp, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x28]
	movs r0, #0xa0
	lsls r0, r0, #3
	str r0, [sp, #0x20]
	add r0, sp, #0x2c
	movs r4, #0
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	mov r1, sp
	adds r1, #0x2e
	movs r0, #0x15
	strb r0, [r1]
	add r0, sp, #4
	bl sub_80528AC
	strh r4, [r7]
	movs r0, #1
	strh r0, [r7, #2]
	movs r0, #2
	strh r0, [r7, #4]
	strh r4, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r7, #8]
	movs r0, #0x10
	strb r0, [r7, #0xa]
	adds r0, r7, #0
	bl sub_805423C
	movs r0, #3     @ MUS_CHARACTER_SELECTION
	bl m4aSongNumStartOrContinue
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801029C: .4byte gUnknown_0869CCF4
_080102A0: .4byte gUnknown_0869CAF4
_080102A4: .4byte gUnknown_0869E934

	thumb_func_start Task_TimeAttackMenu
Task_TimeAttackMenu: @ 0x080102A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08010394 @ =gCurTask
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r7
	mov r8, r0
	ldr r2, [r0, #0x70]
	adds r1, r2, #0
	adds r1, #0x80
	str r1, [r0, #0x70]
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	ble _080102D8
	ldr r1, _08010398 @ =0xFFFF8080
	adds r0, r2, r1
	mov r2, r8
	str r0, [r2, #0x70]
_080102D8:
	ldr r0, _0801039C @ =0x0300000C
	adds r6, r7, r0
	ldr r1, _080103A0 @ =0x03000074
	adds r4, r7, r1
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x40
	strh r0, [r6, #0x18]
	ldr r2, _080103A4 @ =gUnknown_080BB360
	ldr r1, _080103A8 @ =gLoadedSaveGame
	ldrb r0, [r4]
	lsls r0, r0, #1
	ldrb r1, [r1, #0x19]
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r1, [r0]
	ldr r2, _080103AC @ =0x0300002C
	adds r0, r7, r2
	strb r1, [r0]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	mov r1, r8
	ldr r0, [r1, #0x70]
	asrs r0, r0, #8
	adds r5, r0, #0
	subs r5, #0x80
	movs r0, #0xe0
	subs r0, r0, r5
	ldr r2, _080103B0 @ =0x0300003C
	adds r2, r2, r7
	mov sl, r2
	mov sb, r4
	cmp r0, #0
	ble _08010338
	movs r4, #0xe0
	movs r7, #0xe0
_08010326:
	subs r0, r4, r5
	strh r0, [r6, #0x16]
	adds r0, r6, #0
	bl DisplaySprite
	adds r5, #0x80
	subs r0, r7, r5
	cmp r0, #0
	bgt _08010326
_08010338:
	mov r6, sl
	mov r0, sb
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x36
	strh r0, [r6, #0x18]
	movs r4, #0
_0801034A:
	lsls r0, r4, #5
	strh r0, [r6, #0x16]
	adds r0, r6, #0
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _0801034A
	mov r0, r8
	bl sub_805423C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08010384
	ldr r2, _080103B4 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _080103B8 @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _080103BC @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	ldr r0, _08010394 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080103C0 @ =Task_80103C4
	str r0, [r1, #8]
_08010384:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010394: .4byte gCurTask
_08010398: .4byte 0xFFFF8080
_0801039C: .4byte 0x0300000C
_080103A0: .4byte 0x03000074
_080103A4: .4byte gUnknown_080BB360
_080103A8: .4byte gLoadedSaveGame
_080103AC: .4byte 0x0300002C
_080103B0: .4byte 0x0300003C
_080103B4: .4byte gDispCnt
_080103B8: .4byte 0x00001FFF
_080103BC: .4byte gBldRegs
_080103C0: .4byte Task_80103C4

	thumb_func_start Task_80103C4
Task_80103C4: @ 0x080103C4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08010414 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r5, r0
	adds r6, r7, #0
	movs r0, #4
	ldrsh r4, [r7, r0]
	cmp r4, #1
	beq _0801048C
	ldr r0, _08010418 @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08010420
	movs r0, #0
	str r0, [r7, #0x70]
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r2, _0801041C @ =0x03000074
	adds r1, r5, r2
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08010444
	movs r0, #1
	strb r0, [r1]
	b _08010444
	.align 2, 0
_08010414: .4byte gCurTask
_08010418: .4byte gRepeatedKeys
_0801041C: .4byte 0x03000074
_08010420:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08010444
	str r4, [r7, #0x70]
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r0, _08010468 @ =0x03000074
	adds r1, r5, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08010444
	strb r4, [r1]
_08010444:
	ldr r0, _0801046C @ =gPressedKeys
	ldrh r2, [r0]
	movs r3, #1
	adds r1, r3, #0
	ands r1, r2
	cmp r1, #0
	beq _08010470
	movs r0, #0
	strh r3, [r6, #4]
	strh r0, [r6, #6]
	adds r0, r7, #0
	adds r0, #0x76
	strh r3, [r0]
	movs r0, #0x6a
	bl m4aSongNumStart
	b _080104D0
	.align 2, 0
_08010468: .4byte 0x03000074
_0801046C: .4byte gPressedKeys
_08010470:
	movs r4, #2
	adds r0, r4, #0
	ands r0, r2
	cmp r0, #0
	beq _080104D0
	strh r3, [r6, #4]
	strh r1, [r6, #6]
	adds r0, r7, #0
	adds r0, #0x76
	strh r4, [r0]
	movs r0, #0x6b
	bl m4aSongNumStart
	b _080104D0
_0801048C:
	adds r0, r7, #0
	bl sub_805423C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080104D0
	ldr r1, _080104B8 @ =0x03000076
	adds r0, r5, r1
	ldrh r0, [r0]
	ands r4, r0
	cmp r4, #0
	beq _080104C4
	ldr r1, _080104BC @ =gUnknown_080BB364
	ldr r2, _080104C0 @ =0x03000074
	adds r0, r5, r2
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	b _08010568
	.align 2, 0
_080104B8: .4byte 0x03000076
_080104BC: .4byte gUnknown_080BB364
_080104C0: .4byte 0x03000074
_080104C4:
	bl sub_8010580
	movs r0, #3
	bl m4aSongNumStop
	b _08010568
_080104D0:
	ldr r2, [r7, #0x70]
	adds r1, r2, #0
	adds r1, #0x80
	str r1, [r7, #0x70]
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	ble _080104E6
	ldr r1, _08010574 @ =0xFFFF8080
	adds r0, r2, r1
	str r0, [r7, #0x70]
_080104E6:
	adds r6, r7, #0
	adds r6, #0xc
	adds r4, r7, #0
	adds r4, #0x74
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x40
	strh r0, [r6, #0x18]
	ldr r2, _08010578 @ =gUnknown_080BB360
	ldr r1, _0801057C @ =gLoadedSaveGame
	ldrb r0, [r4]
	lsls r0, r0, #1
	ldrb r1, [r1, #0x19]
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x2c
	strb r1, [r0]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	ldr r0, [r7, #0x70]
	asrs r0, r0, #8
	adds r5, r0, #0
	subs r5, #0x80
	movs r0, #0xe0
	subs r0, r0, r5
	mov sb, r4
	adds r7, #0x3c
	mov r8, r7
	cmp r0, #0
	ble _08010542
	movs r4, #0xe0
	movs r7, #0xe0
_08010530:
	subs r0, r4, r5
	strh r0, [r6, #0x16]
	adds r0, r6, #0
	bl DisplaySprite
	adds r5, #0x80
	subs r0, r7, r5
	cmp r0, #0
	bgt _08010530
_08010542:
	mov r6, r8
	mov r2, sb
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x36
	strh r0, [r6, #0x18]
	movs r4, #0
_08010554:
	lsls r0, r4, #5
	strh r0, [r6, #0x16]
	adds r0, r6, #0
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _08010554
_08010568:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010574: .4byte 0xFFFF8080
_08010578: .4byte gUnknown_080BB360
_0801057C: .4byte gLoadedSaveGame

	thumb_func_start sub_8010580
sub_8010580: @ 0x08010580
	push {lr}
	ldr r2, _080105BC @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _080105C0 @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _080105C4 @ =gBldRegs
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	ldr r0, _080105C8 @ =sa2__gUnknown_03004D80
	strb r2, [r0]
	ldr r1, _080105CC @ =sa2__gUnknown_03002280
	strb r2, [r1]
	strb r2, [r1, #1]
	movs r0, #0xff
	strb r0, [r1, #2]
	movs r0, #0x20
	strb r0, [r1, #3]
	ldr r0, _080105D0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	movs r0, #1
	bl CreateMainMenu
	pop {r0}
	bx r0
	.align 2, 0
_080105BC: .4byte gDispCnt
_080105C0: .4byte 0x00001FFF
_080105C4: .4byte gBldRegs
_080105C8: .4byte sa2__gUnknown_03004D80
_080105CC: .4byte sa2__gUnknown_03002280
_080105D0: .4byte gCurTask

	thumb_func_start TimeAttack_CreateStartMenu
TimeAttack_CreateStartMenu: @ 0x080105D4
	push {lr}
	ldr r1, _080105F0 @ =gGameMode
	movs r0, #1
	strb r0, [r1]
	ldr r0, _080105F4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	movs r0, #0
	bl CreateCharacterSelectionScreen
	pop {r0}
	bx r0
	.align 2, 0
_080105F0: .4byte gGameMode
_080105F4: .4byte gCurTask

	thumb_func_start TimeAttack_CreateRecordsMenu
TimeAttack_CreateRecordsMenu: @ 0x080105F8
	push {lr}
	ldr r1, _08010614 @ =gGameMode
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08010618 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	movs r0, #1
	bl sub_8061948
	pop {r0}
	bx r0
	.align 2, 0
_08010614: .4byte gGameMode
_08010618: .4byte gCurTask
