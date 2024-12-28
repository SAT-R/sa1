.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start Task_Interactable096
Task_Interactable096: @ 0x0809221C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08092284 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r0, [r7]
	mov sl, r0
	ldrb r1, [r7, #8]
	lsls r1, r1, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	mov r4, sl
	ldrb r2, [r4, #1]
	lsls r2, r2, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldr r3, _08092288 @ =gCamera
	ldrh r0, [r3]
	lsrs r4, r1, #0x10
	mov sb, r4
	asrs r1, r1, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp]
	ldrh r0, [r3, #2]
	lsrs r1, r2, #0x10
	mov r8, r1
	asrs r2, r2, #0x10
	subs r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #4]
	movs r4, #0
	ldr r5, _0809228C @ =gPartner
	ldr r6, _08092290 @ =gPlayer
_0809227A:
	cmp r4, #0
	beq _08092294
	ldr r0, [r5, #0x10]
	b _08092296
	.align 2, 0
_08092284: .4byte gCurTask
_08092288: .4byte gCamera
_0809228C: .4byte gPartner
_08092290: .4byte gPlayer
_08092294:
	ldr r0, [r6, #0x10]
_08092296:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08092380
	mov r0, sb
	lsls r1, r0, #0x10
	asrs r0, r1, #0x10
	adds r2, r0, #0
	subs r2, #8
	cmp r4, #0
	beq _080922B6
	ldr r0, [r5]
	asrs r0, r0, #8
	cmp r2, r0
	ble _080922BE
	b _08092380
_080922B6:
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r2, r0
	bgt _08092380
_080922BE:
	asrs r0, r1, #0x10
	adds r1, r0, #0
	adds r1, #8
	cmp r4, #0
	beq _080922D2
	ldr r0, [r5]
	asrs r0, r0, #8
	cmp r1, r0
	bge _080922DA
	b _08092380
_080922D2:
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r1, r0
	blt _08092380
_080922DA:
	mov r0, r8
	lsls r1, r0, #0x10
	asrs r0, r1, #0x10
	adds r2, r0, #0
	subs r2, #8
	cmp r4, #0
	beq _080922F2
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _080922FA
	b _08092380
_080922F2:
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	cmp r2, r0
	bgt _08092380
_080922FA:
	asrs r0, r1, #0x10
	adds r1, r0, #0
	adds r1, #8
	cmp r4, #0
	beq _0809230E
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08092316
	b _08092380
_0809230E:
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	cmp r1, r0
	blt _08092380
_08092316:
	ldr r0, _08092330 @ =gPlayer
	cmp r4, #0
	beq _0809231E
	ldr r0, _08092334 @ =gPartner
_0809231E:
	bl sub_8046CEC
	cmp r4, #0
	beq _08092338
	ldr r0, [r5, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #0x10]
	b _08092340
	.align 2, 0
_08092330: .4byte gPlayer
_08092334: .4byte gPartner
_08092338:
	ldr r0, [r6, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r6, #0x10]
_08092340:
	ldr r1, _0809234C @ =gPlayer
	cmp r4, #0
	beq _08092354
	movs r0, #5
	ldr r1, _08092350 @ =gUnknown_03005AF0
	b _08092358
	.align 2, 0
_0809234C: .4byte gPlayer
_08092350: .4byte gUnknown_03005AF0
_08092354:
	adds r1, #0x40
	movs r0, #5
_08092358:
	strb r0, [r1]
	ldr r0, _080923D8 @ =gPlayer
	cmp r4, #0
	beq _08092362
	ldr r0, _080923DC @ =gPartner
_08092362:
	movs r1, #9
	bl sub_804516C
	ldr r1, _080923D8 @ =gPlayer
	cmp r4, #0
	beq _08092370
	ldr r1, _080923DC @ =gPartner
_08092370:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _080923D8 @ =gPlayer
	cmp r4, #0
	beq _0809237C
	ldr r1, _080923DC @ =gPartner
_0809237C:
	movs r0, #9
	strb r0, [r1, #0xf]
_08092380:
	adds r4, #1
	ldr r0, _080923E0 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	bge _08092390
	b _0809227A
_08092390:
	ldr r4, [sp]
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x10
	adds r0, r0, r1
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080923B8
	ldr r4, [sp, #4]
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	adds r0, #0x80
	cmp r0, #0
	blt _080923B8
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r2, r0
	ble _080923C6
_080923B8:
	ldrb r0, [r7, #8]
	mov r1, sl
	strb r0, [r1]
	ldr r0, _080923E4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080923C6:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080923D8: .4byte gPlayer
_080923DC: .4byte gPartner
_080923E0: .4byte gNumSingleplayerCharacters
_080923E4: .4byte gCurTask

	thumb_func_start CreateEntity_Interactable096
CreateEntity_Interactable096: @ 0x080923E8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0809244C @ =Task_Interactable096
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	movs r3, #0
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, r8
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #8]
	strb r6, [r0, #9]
	ldr r4, _08092450 @ =0x0300003C
	adds r2, r2, r4
	strb r3, [r2]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r4, r8
	strb r0, [r4]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809244C: .4byte Task_Interactable096
_08092450: .4byte 0x0300003C
