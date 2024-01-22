.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_SteamExhaust
CreateEntity_SteamExhaust: @ 0x08089068
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	mov r8, r1
	mov sb, r2
	mov sl, r3
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r1, sb
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	mov r0, sl
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	ldr r0, _08089190 @ =Task_SteamExhaust
	ldr r1, _08089194 @ =TaskDestructor_SteamExhaust
	str r1, [sp]
	movs r1, #0x88
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldr r1, _08089198 @ =0x0300000C
	adds r5, r4, r1
	adds r1, #0x38
	adds r2, r4, r1
	movs r6, #0
	mov r1, r8
	strh r1, [r0, #4]
	mov r1, sb
	strh r1, [r0, #6]
	str r7, [r0]
	ldrb r1, [r7]
	strb r1, [r0, #8]
	mov r1, sl
	strb r1, [r0, #9]
	str r6, [r0, #0x78]
	str r6, [r0, #0x7c]
	ldr r1, _0808919C @ =0x03000074
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	ldr r1, _080891A0 @ =0x03000080
	adds r0, r4, r1
	str r6, [r0]
	adds r1, #4
	adds r0, r4, r1
	str r6, [r0]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	movs r0, #0x18
	str r2, [sp, #4]
	bl VramMalloc
	str r0, [r5, #4]
	ldr r0, _080891A4 @ =0x000001F5
	mov sb, r0
	mov r1, sb
	strh r1, [r5, #0xa]
	ldr r1, _080891A8 @ =0x0300002C
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	strh r6, [r5, #8]
	strh r6, [r5, #0x14]
	strh r6, [r5, #0x1c]
	ldr r0, _080891AC @ =0x0300002D
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _080891B0 @ =0x0300002E
	adds r0, r4, r1
	movs r1, #0x10
	mov sl, r1
	mov r1, sl
	strb r1, [r0]
	ldr r1, _080891B4 @ =0x03000031
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	str r0, [r5, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r5, #0x10]
	movs r0, #8
	bl VramMalloc
	ldr r2, [sp, #4]
	str r0, [r2, #4]
	mov r0, sb
	strh r0, [r2, #0xa]
	ldr r0, _080891B8 @ =0x03000064
	adds r1, r4, r0
	movs r0, #2
	strb r0, [r1]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r2, #0x1a]
	strh r6, [r2, #8]
	strh r6, [r2, #0x14]
	strh r6, [r2, #0x1c]
	ldr r0, _080891BC @ =0x03000065
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _080891C0 @ =0x03000066
	adds r0, r4, r1
	mov r1, sl
	strb r1, [r0]
	ldr r0, _080891C4 @ =0x03000069
	adds r4, r4, r0
	movs r1, #0
	strb r1, [r4]
	mov r0, r8
	str r0, [r2, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r2, #0x10]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08089190: .4byte Task_SteamExhaust
_08089194: .4byte TaskDestructor_SteamExhaust
_08089198: .4byte 0x0300000C
_0808919C: .4byte 0x03000074
_080891A0: .4byte 0x03000080
_080891A4: .4byte 0x000001F5
_080891A8: .4byte 0x0300002C
_080891AC: .4byte 0x0300002D
_080891B0: .4byte 0x0300002E
_080891B4: .4byte 0x03000031
_080891B8: .4byte 0x03000064
_080891BC: .4byte 0x03000065
_080891C0: .4byte 0x03000066
_080891C4: .4byte 0x03000069

	thumb_func_start Task_SteamExhaust
Task_SteamExhaust: @ 0x080891C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _08089264 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0
	ldr r0, [r0]
	str r0, [sp, #8]
	ldr r3, _08089268 @ =0x0300000C
	adds r7, r1, r3
	ldr r4, _0808926C @ =0x03000044
	adds r4, r4, r1
	mov sb, r4
	mov r6, r8
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r0, [sp, #8]
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _08089270 @ =gCamera
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r4, r2, #0x10
	subs r0, r4, r0
	strh r0, [r7, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	subs r0, r5, r0
	strh r0, [r7, #0x18]
	ldrh r0, [r3]
	subs r0, r4, r0
	mov r6, sb
	strh r0, [r6, #0x16]
	ldrh r0, [r3, #2]
	subs r0, r5, r0
	strh r0, [r6, #0x18]
	movs r6, #0
	str r4, [sp, #0xc]
	mov sl, r2
	str r1, [sp, #0x14]
	ldr r4, _08089274 @ =gUnknown_03005AB0
	str r5, [sp, #0x10]
	ldr r5, _08089278 @ =gUnknown_03005A47
	subs r5, #0x27
_0808923C:
	ldr r3, _0808927C @ =gPlayer
	cmp r6, #0
	beq _08089244
	ldr r3, _08089274 @ =gUnknown_03005AB0
_08089244:
	mov r0, sb
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	bl sub_80096B0
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	beq _0808928A
	cmp r6, #0
	beq _08089280
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	b _080893DE
	.align 2, 0
_08089264: .4byte gCurTask
_08089268: .4byte 0x0300000C
_0808926C: .4byte 0x03000044
_08089270: .4byte gCamera
_08089274: .4byte gUnknown_03005AB0
_08089278: .4byte gUnknown_03005A47
_0808927C: .4byte gPlayer
_08089280:
	ldr r0, [r5, #4]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	b _080893F0
_0808928A:
	cmp r6, #0
	beq _08089292
	ldr r0, [r4, #0x28]
	b _08089294
_08089292:
	ldr r0, [r5, #0x28]
_08089294:
	cmp r0, r7
	beq _080892B4
	cmp r6, #0
	beq _080892AC
	ldr r0, [r4, #0x28]
	cmp r0, r7
	beq _080892B4
	ldr r3, _080892A8 @ =gPlayer
	b _08089378
	.align 2, 0
_080892A8: .4byte gPlayer
_080892AC:
	ldr r0, [r5, #0x28]
	ldr r3, _080892C8 @ =gPlayer
	cmp r0, r7
	bne _08089378
_080892B4:
	cmp r6, #0
	beq _080892CC
	ldr r0, [r4, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _080892D8
	ldr r3, _080892C8 @ =gPlayer
	b _08089378
	.align 2, 0
_080892C8: .4byte gPlayer
_080892CC:
	ldr r1, [r5, #0x10]
	movs r0, #8
	ands r1, r0
	ldr r3, _080892EC @ =gPlayer
	cmp r1, #0
	beq _08089378
_080892D8:
	ldr r0, _080892F0 @ =gUnknown_030060E0
	ldrh r1, [r0]
	cmp r6, #0
	beq _080892F4
	ldrh r0, [r4, #0x3a]
	ands r0, r1
	cmp r0, #0
	bne _080892FC
	b _08089322
	.align 2, 0
_080892EC: .4byte gPlayer
_080892F0: .4byte gUnknown_030060E0
_080892F4:
	ldrh r0, [r5, #0x3a]
	ands r0, r1
	cmp r0, #0
	beq _08089322
_080892FC:
	cmp r6, #0
	beq _0808930C
	ldr r0, [r4, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _08089316
_0808930C:
	ldr r0, [r5, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_08089316:
	cmp r6, #0
	beq _08089320
	movs r0, #0
	str r0, [r4, #0x28]
	b _08089322
_08089320:
	str r6, [r5, #0x28]
_08089322:
	cmp r6, #0
	beq _0808932A
	ldr r0, [r4, #4]
	b _0808932C
_0808932A:
	ldr r0, [r5, #4]
_0808932C:
	asrs r0, r0, #8
	adds r3, r0, #0
	subs r3, #0x13
	cmp r6, #0
	beq _0808933A
	ldr r0, [r4]
	b _0808933C
_0808933A:
	ldr r0, [r5]
_0808933C:
	asrs r1, r0, #8
	cmp r6, #0
	beq _0808934C
	ldr r0, _08089348 @ =gUnknown_03005AD7
	b _0808934E
	.align 2, 0
_08089348: .4byte gUnknown_03005AD7
_0808934C:
	ldr r0, _08089370 @ =gUnknown_03005A47
_0808934E:
	ldrb r2, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r0, _08089374 @ =sub_803FF84
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_803FA74
	cmp r0, #0
	bge _080893F2
	lsls r1, r0, #8
	cmp r6, #0
	bne _080893DC
	b _080893EC
	.align 2, 0
_08089370: .4byte gUnknown_03005A47
_08089374: .4byte sub_803FF84
_08089378:
	mov r0, sl
	asrs r1, r0, #0x10
	ldr r0, [sp, #0x14]
	asrs r2, r0, #0x10
	cmp r6, #0
	beq _08089386
	ldr r3, _08089398 @ =gUnknown_03005AB0
_08089386:
	adds r0, r7, #0
	bl sub_80096B0
	cmp r0, #0
	beq _080893F2
	cmp r6, #0
	beq _0808939C
	ldr r0, [r4, #4]
	b _0808939E
	.align 2, 0
_08089398: .4byte gUnknown_03005AB0
_0808939C:
	ldr r0, [r5, #4]
_0808939E:
	asrs r0, r0, #8
	adds r3, r0, #0
	subs r3, #0x13
	cmp r6, #0
	beq _080893AC
	ldr r0, [r4]
	b _080893AE
_080893AC:
	ldr r0, [r5]
_080893AE:
	asrs r1, r0, #8
	cmp r6, #0
	beq _080893BC
	ldr r0, _080893B8 @ =gUnknown_03005AD7
	b _080893BE
	.align 2, 0
_080893B8: .4byte gUnknown_03005AD7
_080893BC:
	ldr r0, _080893E4 @ =gUnknown_03005A47
_080893BE:
	ldrb r2, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r0, _080893E8 @ =sub_803FF84
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_803FA74
	cmp r0, #0
	bge _080893F2
	lsls r1, r0, #8
	cmp r6, #0
	beq _080893EC
_080893DC:
	ldr r0, [r4, #4]
_080893DE:
	adds r0, r0, r1
	str r0, [r4, #4]
	b _080893F2
	.align 2, 0
_080893E4: .4byte gUnknown_03005A47
_080893E8: .4byte sub_803FF84
_080893EC:
	ldr r0, [r5, #4]
	adds r0, r0, r1
_080893F0:
	str r0, [r5, #4]
_080893F2:
	adds r6, #1
	ldr r0, _0808946C @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r6, r0
	bge _08089402
	b _0808923C
_08089402:
	mov r1, sl
	asrs r2, r1, #0x10
	ldr r3, _08089470 @ =gCamera
	movs r4, #0
	ldrsh r1, [r3, r4]
	movs r6, #0xb8
	lsls r6, r6, #1
	adds r0, r1, r6
	cmp r2, r0
	bgt _08089436
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _08089436
	ldr r0, [sp, #0x14]
	asrs r1, r0, #0x10
	movs r4, #2
	ldrsh r2, [r3, r4]
	subs r6, #0x50
	adds r0, r2, r6
	cmp r1, r0
	bgt _08089436
	adds r0, r2, #0
	subs r0, #0x80
	cmp r1, r0
	bge _08089478
_08089436:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0808945A
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0808945A
	movs r3, #0x18
	ldrsh r1, [r7, r3]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08089478
_0808945A:
	mov r4, r8
	ldrb r0, [r4, #8]
	ldr r6, [sp, #8]
	strb r0, [r6]
	ldr r0, _08089474 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080894DE
	.align 2, 0
_0808946C: .4byte gUnknown_03005088
_08089470: .4byte gCamera
_08089474: .4byte gCurTask
_08089478:
	ldr r0, _080894F0 @ =gStageTime
	ldr r0, [r0]
	movs r1, #0xa0
	bl Mod
	adds r2, r0, #0
	cmp r2, #0
	bne _080894C6
	mov r1, r8
	adds r1, #0x84
	movs r0, #0x66
	str r0, [r1]
	mov r0, r8
	adds r0, #0x74
	strb r2, [r0]
	ldr r0, _080894F4 @ =0xFFFFFB00
	mov r1, r8
	str r0, [r1, #0x78]
	str r2, [r1, #0x7c]
	adds r1, #0x80
	movs r0, #3
	str r0, [r1]
	movs r1, #0
	ldr r0, _080894F8 @ =0x00000237
	strh r0, [r7, #0xa]
	adds r0, r7, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r1, r7, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0xb6
	bl m4aSongNumStart
	ldr r0, _080894FC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08089500 @ =Task_SteamExhaust2
	str r0, [r1, #8]
_080894C6:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, sb
	bl DisplaySprite
_080894DE:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080894F0: .4byte gStageTime
_080894F4: .4byte 0xFFFFFB00
_080894F8: .4byte 0x00000237
_080894FC: .4byte gCurTask
_08089500: .4byte Task_SteamExhaust2

	thumb_func_start Task_SteamExhaust2
Task_SteamExhaust2: @ 0x08089504
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r0, _080895C0 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	ldr r1, [r7]
	adds r0, #0xc
	adds r0, r4, r0
	str r0, [sp, #8]
	ldr r2, _080895C4 @ =0x03000044
	adds r2, r4, r2
	str r2, [sp, #0xc]
	ldrb r3, [r7, #8]
	lsls r3, r3, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r3, r3, r0
	lsls r3, r3, #0x10
	ldrb r2, [r1, #1]
	lsls r2, r2, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldr r1, [r7, #0x78]
	adds r1, #0x25
	str r1, [r7, #0x78]
	ldr r0, [r7, #0x7c]
	adds r0, r0, r1
	str r0, [r7, #0x7c]
	ldr r1, _080895C8 @ =gCamera
	ldrh r0, [r1]
	lsrs r5, r3, #0x10
	str r5, [sp]
	asrs r3, r3, #0x10
	subs r0, r3, r0
	ldr r5, [sp, #8]
	strh r0, [r5, #0x16]
	ldrh r0, [r1, #2]
	lsrs r5, r2, #0x10
	str r5, [sp, #4]
	asrs r2, r2, #0x10
	subs r0, r2, r0
	ldr r5, [sp, #8]
	strh r0, [r5, #0x18]
	ldrh r0, [r1]
	subs r3, r3, r0
	ldr r0, [sp, #0xc]
	strh r3, [r0, #0x16]
	ldrh r0, [r1, #2]
	subs r2, r2, r0
	ldr r0, [r7, #0x7c]
	asrs r0, r0, #8
	adds r2, r2, r0
	ldr r1, [sp, #0xc]
	strh r2, [r1, #0x18]
	movs r2, #0
	mov r8, r2
	ldr r5, _080895CC @ =0x03000074
	adds r5, r5, r4
	mov sb, r5
_0808958C:
	adds r0, r7, #0
	adds r0, #0x74
	ldrb r0, [r0]
	mov r1, r8
	asrs r0, r1
	movs r2, #1
	ands r0, r2
	ldr r5, [sp]
	lsls r5, r5, #0x10
	mov sl, r5
	ldr r1, [sp, #4]
	lsls r1, r1, #0x10
	str r1, [sp, #0x10]
	cmp r0, #0
	beq _0808965A
	ldr r1, [r7, #0x78]
	mov r2, r8
	cmp r2, #0
	beq _080895D8
	ldr r5, _080895D0 @ =gUnknown_03005AB0
	ldr r0, [r5, #4]
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r0, _080895D4 @ =gPlayer
	b _080895E2
	.align 2, 0
_080895C0: .4byte gCurTask
_080895C4: .4byte 0x03000044
_080895C8: .4byte gCamera
_080895CC: .4byte 0x03000074
_080895D0: .4byte gUnknown_03005AB0
_080895D4: .4byte gPlayer
_080895D8:
	ldr r2, _080895F8 @ =gPlayer
	ldr r0, [r2, #4]
	adds r0, r0, r1
	str r0, [r2, #4]
	adds r0, r2, #0
_080895E2:
	mov r5, r8
	cmp r5, #0
	beq _08089600
	ldr r1, _080895FC @ =gUnknown_03005AB0
	ldr r0, [r1, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0808960A
	b _08089618
	.align 2, 0
_080895F8: .4byte gPlayer
_080895FC: .4byte gUnknown_03005AB0
_08089600:
	ldr r0, [r0, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08089618
_0808960A:
	movs r1, #1
	mov r2, r8
	lsls r1, r2
	mov r5, sb
	ldrb r0, [r5]
	bics r0, r1
	strb r0, [r5]
_08089618:
	ldr r0, [sp]
	lsls r3, r0, #0x10
	asrs r6, r3, #0x10
	ldr r1, [r7, #0x7c]
	asrs r1, r1, #8
	ldr r5, [sp, #4]
	lsls r2, r5, #0x10
	asrs r0, r2, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	ldr r5, _080896A4 @ =gPlayer
	mov sl, r3
	str r2, [sp, #0x10]
	mov r0, r8
	cmp r0, #0
	beq _0808963C
	ldr r5, _080896A8 @ =gUnknown_03005AB0
_0808963C:
	ldr r0, [sp, #0xc]
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_800CE34
	cmp r0, #0
	bne _0808965A
	movs r1, #1
	mov r2, r8
	lsls r1, r2
	mov r5, sb
	ldrb r0, [r5]
	bics r0, r1
	strb r0, [r5]
_0808965A:
	mov r0, sl
	asrs r4, r0, #0x10
	ldr r1, [r7, #0x7c]
	asrs r1, r1, #8
	ldr r2, [sp, #0x10]
	asrs r0, r2, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r3, _080896A4 @ =gPlayer
	mov r5, r8
	cmp r5, #0
	beq _08089676
	ldr r3, _080896A8 @ =gUnknown_03005AB0
_08089676:
	ldr r0, [sp, #0xc]
	adds r1, r4, #0
	bl sub_800B2BC
	cmp r0, #0
	beq _080896B8
	movs r0, #1
	mov r1, r8
	lsls r0, r1
	mov r2, sb
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	mov r5, r8
	cmp r5, #0
	beq _080896AC
	ldr r1, _080896A8 @ =gUnknown_03005AB0
	ldr r0, [r1, #4]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1, #4]
	b _080896B8
	.align 2, 0
_080896A4: .4byte gPlayer
_080896A8: .4byte gUnknown_03005AB0
_080896AC:
	ldr r5, _08089710 @ =gPlayer
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r5, #4]
_080896B8:
	mov r2, sl
	asrs r1, r2, #0x10
	ldr r5, [sp, #0x10]
	asrs r2, r5, #0x10
	ldr r3, _08089710 @ =gPlayer
	mov r0, r8
	cmp r0, #0
	beq _080896CA
	ldr r3, _08089714 @ =gUnknown_03005AB0
_080896CA:
	ldr r0, [sp, #8]
	bl sub_80096B0
	movs r1, #1
	add r8, r1
	ldr r0, _08089718 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r8, r0
	bge _080896E2
	b _0808958C
_080896E2:
	ldr r0, [r7, #0x7c]
	cmp r0, #0
	blt _0808973A
	adds r1, r7, #0
	adds r1, #0x80
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	beq _0808971C
	ldr r0, [r7, #0x78]
	lsls r0, r0, #1
	movs r1, #5
	bl Div
	rsbs r0, r0, #0
	str r0, [r7, #0x78]
	movs r0, #0
	mov r2, sb
	strb r0, [r2]
	str r0, [r7, #0x7c]
	b _0808973A
	.align 2, 0
_08089710: .4byte gPlayer
_08089714: .4byte gUnknown_03005AB0
_08089718: .4byte gUnknown_03005088
_0808971C:
	ldr r1, [sp, #8]
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	movs r1, #0
	adds r0, #0xf6
	ldr r5, [sp, #8]
	strh r0, [r5, #0xa]
	adds r0, r5, #0
	adds r0, #0x20
	strb r1, [r0]
	ldr r0, _08089760 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08089764 @ =Task_SteamExhaust
	str r0, [r1, #8]
_0808973A:
	adds r0, r7, #0
	adds r0, #0x84
	ldr r1, [r0]
	subs r2, r1, #1
	str r2, [r0]
	cmp r2, #0x30
	bne _0808976C
	ldr r1, [sp, #8]
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08089768 @ =0x00000237
	ldr r1, [sp, #8]
	strh r0, [r1, #0xa]
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	b _080899B2
	.align 2, 0
_08089760: .4byte gCurTask
_08089764: .4byte Task_SteamExhaust
_08089768: .4byte 0x00000237
_0808976C:
	adds r0, r1, #0
	subs r0, #0x32
	cmp r0, #0x2e
	bls _08089776
	b _080899C8
_08089776:
	movs r4, #0
	ldr r5, _080897C4 @ =gUnknown_03005C14
	mov r2, sl
	asrs r2, r2, #0x10
	mov sb, r2
	ldr r7, _080897C8 @ =gUnknown_03005AB0
	ldr r6, _080897CC @ =gPlayer
	ldr r0, [sp, #0x10]
	asrs r0, r0, #0x10
	mov r8, r0
_0808978A:
	ldr r1, _080897C4 @ =gUnknown_03005C14
	cmp r4, #0
	beq _08089792
	ldr r1, _080897D0 @ =gUnknown_03005C64
_08089792:
	ldr r1, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0808979E
	b _080899A2
_0808979E:
	adds r0, r5, #0
	cmp r4, #0
	beq _080897A6
	ldr r0, _080897D0 @ =gUnknown_03005C64
_080897A6:
	movs r3, #4
	ldrsb r3, [r0, r3]
	ldr r1, [sp, #8]
	adds r1, #0x34
	movs r2, #0
	ldrsb r2, [r1, r2]
	add r2, sb
	cmp r4, #0
	beq _080897D4
	ldr r0, [r7]
	asrs r0, r0, #8
	adds r0, r0, r3
	cmp r2, r0
	ble _080897DE
	b _0808980A
	.align 2, 0
_080897C4: .4byte gUnknown_03005C14
_080897C8: .4byte gUnknown_03005AB0
_080897CC: .4byte gPlayer
_080897D0: .4byte gUnknown_03005C64
_080897D4:
	ldr r0, [r6]
	asrs r0, r0, #8
	adds r0, r0, r3
	cmp r2, r0
	bgt _0808980A
_080897DE:
	adds r0, r5, #0
	cmp r4, #0
	beq _080897E6
	ldr r0, _080897FC @ =gUnknown_03005C64
_080897E6:
	movs r3, #4
	ldrsb r3, [r0, r3]
	ldr r0, [sp, #8]
	adds r0, #0x36
	movs r2, #0
	ldrsb r2, [r0, r2]
	add r2, sb
	cmp r4, #0
	beq _08089800
	ldr r0, [r7]
	b _08089802
	.align 2, 0
_080897FC: .4byte gUnknown_03005C64
_08089800:
	ldr r0, [r6]
_08089802:
	asrs r0, r0, #8
	adds r0, r0, r3
	cmp r2, r0
	bge _08089892
_0808980A:
	adds r0, r5, #0
	cmp r4, #0
	beq _08089812
	ldr r0, _0808982C @ =gUnknown_03005C64
_08089812:
	movs r2, #4
	ldrsb r2, [r0, r2]
	movs r3, #0
	ldrsb r3, [r1, r3]
	add r3, sb
	cmp r4, #0
	beq _08089830
	ldr r0, [r7]
	asrs r0, r0, #8
	adds r0, r0, r2
	cmp r3, r0
	bge _0808983C
	b _080899A2
	.align 2, 0
_0808982C: .4byte gUnknown_03005C64
_08089830:
	ldr r0, [r6]
	asrs r0, r0, #8
	adds r0, r0, r2
	cmp r3, r0
	bge _0808983C
	b _080899A2
_0808983C:
	adds r0, r5, #0
	cmp r4, #0
	beq _08089844
	ldr r0, _08089880 @ =gUnknown_03005C64
_08089844:
	movs r3, #4
	ldrsb r3, [r0, r3]
	adds r0, r5, #0
	cmp r4, #0
	beq _08089850
	ldr r0, _08089880 @ =gUnknown_03005C64
_08089850:
	movs r2, #6
	ldrsb r2, [r0, r2]
	adds r0, r5, #0
	cmp r4, #0
	beq _0808985C
	ldr r0, _08089880 @ =gUnknown_03005C64
_0808985C:
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r2, r2, r0
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	add r1, sb
	cmp r4, #0
	beq _08089884
	ldr r0, [r7]
	asrs r0, r0, #8
	adds r0, r0, r3
	adds r0, r0, r2
	cmp r0, r1
	bge _08089892
	b _080899A2
	.align 2, 0
_08089880: .4byte gUnknown_03005C64
_08089884:
	ldr r0, [r6]
	asrs r0, r0, #8
	adds r0, r0, r3
	adds r0, r0, r2
	cmp r0, r1
	bge _08089892
	b _080899A2
_08089892:
	adds r0, r5, #0
	cmp r4, #0
	beq _0808989A
	ldr r0, _080898B8 @ =gUnknown_03005C64
_0808989A:
	movs r3, #5
	ldrsb r3, [r0, r3]
	ldr r1, [sp, #8]
	adds r1, #0x35
	movs r2, #0
	ldrsb r2, [r1, r2]
	add r2, r8
	cmp r4, #0
	beq _080898BC
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	adds r0, r0, r3
	cmp r2, r0
	ble _080898C6
	b _080898F2
	.align 2, 0
_080898B8: .4byte gUnknown_03005C64
_080898BC:
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	adds r0, r0, r3
	cmp r2, r0
	bgt _080898F2
_080898C6:
	adds r0, r5, #0
	cmp r4, #0
	beq _080898CE
	ldr r0, _080898E4 @ =gUnknown_03005C64
_080898CE:
	movs r3, #5
	ldrsb r3, [r0, r3]
	ldr r0, [sp, #8]
	adds r0, #0x37
	movs r2, #0
	ldrsb r2, [r0, r2]
	add r2, r8
	cmp r4, #0
	beq _080898E8
	ldr r0, [r7, #4]
	b _080898EA
	.align 2, 0
_080898E4: .4byte gUnknown_03005C64
_080898E8:
	ldr r0, [r6, #4]
_080898EA:
	asrs r0, r0, #8
	adds r0, r0, r3
	cmp r2, r0
	bge _08089974
_080898F2:
	adds r0, r5, #0
	cmp r4, #0
	beq _080898FA
	ldr r0, _08089914 @ =gUnknown_03005C64
_080898FA:
	movs r2, #5
	ldrsb r2, [r0, r2]
	movs r3, #0
	ldrsb r3, [r1, r3]
	add r3, r8
	cmp r4, #0
	beq _08089918
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	adds r0, r0, r2
	cmp r3, r0
	bge _08089922
	b _080899A2
	.align 2, 0
_08089914: .4byte gUnknown_03005C64
_08089918:
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	adds r0, r0, r2
	cmp r3, r0
	blt _080899A2
_08089922:
	adds r0, r5, #0
	cmp r4, #0
	beq _0808992A
	ldr r0, _08089964 @ =gUnknown_03005C64
_0808992A:
	movs r3, #5
	ldrsb r3, [r0, r3]
	adds r0, r5, #0
	cmp r4, #0
	beq _08089936
	ldr r0, _08089964 @ =gUnknown_03005C64
_08089936:
	movs r2, #7
	ldrsb r2, [r0, r2]
	adds r0, r5, #0
	cmp r4, #0
	beq _08089942
	ldr r0, _08089964 @ =gUnknown_03005C64
_08089942:
	ldrb r0, [r0, #5]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r2, r2, r0
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	add r1, r8
	cmp r4, #0
	beq _08089968
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	adds r0, r0, r3
	adds r0, r0, r2
	cmp r0, r1
	bge _08089974
	b _080899A2
	.align 2, 0
_08089964: .4byte gUnknown_03005C64
_08089968:
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	adds r0, r0, r3
	adds r0, r0, r2
	cmp r0, r1
	blt _080899A2
_08089974:
	cmp r4, #0
	beq _0808998C
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080899A2
	ldr r0, _08089988 @ =gPlayer
	b _08089998
	.align 2, 0
_08089988: .4byte gPlayer
_0808998C:
	ldr r1, [r6, #0x10]
	movs r0, #0x80
	ands r1, r0
	ldr r0, _080899BC @ =gPlayer
	cmp r1, #0
	bne _080899A2
_08089998:
	cmp r4, #0
	beq _0808999E
	ldr r0, _080899C0 @ =gUnknown_03005AB0
_0808999E:
	bl sub_800C558
_080899A2:
	adds r4, #1
	ldr r0, _080899C4 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	bge _080899B2
	b _0808978A
_080899B2:
	ldr r0, [sp, #8]
	bl UpdateSpriteAnimation
	b _080899F2
	.align 2, 0
_080899BC: .4byte gPlayer
_080899C0: .4byte gUnknown_03005AB0
_080899C4: .4byte gUnknown_03005088
_080899C8:
	cmp r2, #0x2f
	bgt _080899F2
	ldr r0, [sp, #8]
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _080899EC
	ldr r1, [sp, #8]
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	movs r1, #0
	adds r0, #0xf6
	ldr r2, [sp, #8]
	strh r0, [r2, #0xa]
	adds r0, r2, #0
	adds r0, #0x20
	strb r1, [r0]
_080899EC:
	ldr r0, [sp, #8]
	bl UpdateSpriteAnimation
_080899F2:
	ldr r0, [sp, #8]
	bl DisplaySprite
	ldr r0, [sp, #0xc]
	bl UpdateSpriteAnimation
	ldr r0, [sp, #0xc]
	bl DisplaySprite
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_SteamExhaust
TaskDestructor_SteamExhaust: @ 0x08089A14
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x10]
	bl VramFree
	ldr r0, [r4, #0x48]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0
