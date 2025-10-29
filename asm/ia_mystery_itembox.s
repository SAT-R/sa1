.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ Basically the old version of we called "Mystery Item Box" in SA2.

.if 0
.endif

	thumb_func_start sub_801C130
sub_801C130: @ 0x0801C130
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0801C1AC @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	ldr r4, [r6]
	adds r0, #0x7c
	adds r3, r5, r0
	ldrh r0, [r3]
	subs r0, #1
	strh r0, [r3]
	ldr r1, _0801C1B0 @ =0x03000080
	adds r0, r5, r1
	ldrb r2, [r0]
	adds r2, #1
	strb r2, [r0]
	ldrb r0, [r6, #8]
	lsls r0, r0, #3
	ldrh r1, [r6, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrb r0, [r4, #1]
	lsls r0, r0, #3
	ldrh r1, [r6, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	ldrh r3, [r3]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #0x3b
	bhi _0801C184
	b _0801C2C6
_0801C184:
	ldr r0, _0801C1B4 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _0801C1E4
	ldr r4, _0801C1B8 @ =0x03000081
	adds r0, r5, r4
	ldrb r4, [r0]
	cmp r4, #1
	beq _0801C1BC
	cmp r4, #1
	ble _0801C19E
	cmp r4, #2
	beq _0801C1CA
_0801C19E:
	bl CreateRoomEvent
	adds r1, r0, #0
	movs r0, #6
	strb r0, [r1]
	movs r0, #0
	b _0801C2B4
	.align 2, 0
_0801C1AC: .4byte gCurTask
_0801C1B0: .4byte 0x03000080
_0801C1B4: .4byte gGameMode
_0801C1B8: .4byte 0x03000081
_0801C1BC:
	bl CreateRoomEvent
	adds r1, r0, #0
	movs r0, #6
	strb r0, [r1]
	strb r4, [r1, #1]
	b _0801C2B6
_0801C1CA:
	ldr r2, _0801C1E0 @ =gPlayer
	adds r3, r2, #0
	adds r3, #0x26
	ldrb r0, [r3]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3]
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r2, #0x24]
	b _0801C2B6
	.align 2, 0
_0801C1E0: .4byte gPlayer
_0801C1E4:
	ldr r1, _0801C1F8 @ =0x03000081
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _0801C2A8
	cmp r0, #1
	bgt _0801C1FC
	cmp r0, #0
	beq _0801C206
	b _0801C2B6
	.align 2, 0
_0801C1F8: .4byte 0x03000081
_0801C1FC:
	cmp r0, #2
	beq _0801C206
	cmp r0, #3
	beq _0801C2A8
	b _0801C2B6
_0801C206:
	ldr r4, _0801C284 @ =ItemBox_RingAmountTable
	ldr r2, _0801C288 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _0801C28C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0801C290 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #6
	bl __umodsi3
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0801C294 @ =gRingCount
	ldrh r5, [r1]
	adds r0, r5, r0
	strh r0, [r1]
	ldr r0, _0801C298 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xd
	beq _0801C268
	ldrh r0, [r1]
	movs r1, #0x64
	bl Div
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #0x64
	bl Div
	cmp r4, r0
	beq _0801C268
	ldr r0, _0801C29C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801C268
	ldr r1, _0801C2A0 @ =gNumLives
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _0801C2A4 @ =gMusicManagerState
	movs r0, #0x10
	strb r0, [r1, #3]
_0801C268:
	ldr r0, _0801C29C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _0801C27C
	ldr r1, _0801C294 @ =gRingCount
	ldrh r0, [r1]
	cmp r0, #0xff
	bls _0801C27C
	movs r0, #0xff
	strh r0, [r1]
_0801C27C:
	movs r0, #0x75
	bl m4aSongNumStart
	b _0801C2B6
	.align 2, 0
_0801C284: .4byte ItemBox_RingAmountTable
_0801C288: .4byte gPseudoRandom
_0801C28C: .4byte 0x00196225
_0801C290: .4byte 0x3C6EF35F
_0801C294: .4byte gRingCount
_0801C298: .4byte gCurrentLevel
_0801C29C: .4byte gGameMode
_0801C2A0: .4byte gNumLives
_0801C2A4: .4byte gMusicManagerState
_0801C2A8:
	bl CreateRoomEvent
	adds r1, r0, #0
	movs r0, #6
	strb r0, [r1]
	movs r0, #3
_0801C2B4:
	strb r0, [r1, #1]
_0801C2B6:
	ldr r0, _0801C2F0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801C2F4 @ =sub_801C3A0
	str r0, [r1, #8]
	adds r1, r6, #0
	adds r1, #0x80
	movs r0, #0
	strb r0, [r1]
_0801C2C6:
	adds r0, r6, #0
	adds r0, #0x3c
	ldr r3, _0801C2F8 @ =gCamera
	ldrh r2, [r3]
	mov r4, r8
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r2
	strh r1, [r0, #0x16]
	ldrh r2, [r3, #2]
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r2
	strh r1, [r0, #0x18]
	bl DisplaySprite
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C2F0: .4byte gCurTask
_0801C2F4: .4byte sub_801C3A0
_0801C2F8: .4byte gCamera

	thumb_func_start sub_801C2FC
sub_801C2FC: @ 0x0801C2FC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0801C388 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r7, r3
	ldr r5, [r3]
	ldr r1, _0801C38C @ =0x0300007C
	adds r4, r7, r1
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	ldr r0, _0801C390 @ =0x03000080
	adds r6, r7, r0
	ldrb r2, [r6]
	adds r2, #1
	strb r2, [r6]
	ldrb r0, [r3, #8]
	lsls r0, r0, #3
	ldrh r1, [r3, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	ldrh r1, [r3, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	ldrh r4, [r4]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #0x3b
	bls _0801C35C
	mov r1, r8
	ldr r0, [r1]
	ldr r1, _0801C394 @ =sub_801C3A0
	str r1, [r0, #8]
	movs r0, #0
	strb r0, [r6]
_0801C35C:
	ldr r5, _0801C398 @ =0x0300003C
	adds r0, r7, r5
	ldr r3, _0801C39C @ =gCamera
	ldrh r2, [r3]
	mov r5, ip
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r2
	strh r1, [r0, #0x16]
	ldrh r2, [r3, #2]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r2
	strh r1, [r0, #0x18]
	bl DisplaySprite
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C388: .4byte gCurTask
_0801C38C: .4byte 0x0300007C
_0801C390: .4byte 0x03000080
_0801C394: .4byte sub_801C3A0
_0801C398: .4byte 0x0300003C
_0801C39C: .4byte gCamera

	thumb_func_start sub_801C3A0
sub_801C3A0: @ 0x0801C3A0
	push {r4, r5, lr}
	ldr r2, _0801C3CC @ =gCurTask
	ldr r0, [r2]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r4, r0
	ldr r5, [r3]
	adds r0, #0x80
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bls _0801C3D4
	ldr r1, [r2]
	ldr r0, _0801C3D0 @ =Task_MysteryItemBox_Main1
	str r0, [r1, #8]
	b _0801C40E
	.align 2, 0
_0801C3CC: .4byte gCurTask
_0801C3D0: .4byte Task_MysteryItemBox_Main1
_0801C3D4:
	ldrb r2, [r3, #8]
	lsls r2, r2, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r5, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	ldr r5, _0801C414 @ =0x0300007C
	adds r3, r4, r5
	adds r1, r1, r0
	ldrh r3, [r3]
	adds r1, r1, r3
	ldr r3, _0801C418 @ =0x0300003C
	adds r0, r4, r3
	ldr r4, _0801C41C @ =gCamera
	ldrh r3, [r4]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r3
	strh r2, [r0, #0x16]
	ldrh r2, [r4, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r2
	strh r1, [r0, #0x18]
	bl DisplaySprite
_0801C40E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801C414: .4byte 0x0300007C
_0801C418: .4byte 0x0300003C
_0801C41C: .4byte gCamera

	thumb_func_start sub_801C420
sub_801C420: @ 0x0801C420
	push {r4, r5, r6, r7, lr}
	ldr r0, _0801C474 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	adds r0, #0x6c
	adds r5, r3, r0
	ldr r0, _0801C478 @ =gMultiplayerPseudoRandom
	ldr r1, [r0]
	movs r0, #3
	ands r1, r0
	ldr r2, _0801C47C @ =0x03000081
	adds r4, r3, r2
	movs r2, #0
	strb r1, [r4]
	ldr r7, _0801C480 @ =0x0300007E
	adds r0, r3, r7
	movs r1, #0
	strh r2, [r0]
	subs r7, #2
	adds r0, r3, r7
	strh r2, [r0]
	ldr r2, _0801C484 @ =0x03000080
	adds r0, r3, r2
	strb r1, [r0]
	subs r7, #0x40
	adds r2, r3, r7
	ldr r0, _0801C488 @ =0x000002C2
	strh r0, [r2, #0xa]
	ldr r0, _0801C48C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _0801C498
	ldr r1, _0801C490 @ =gUnknown_080BB4D0
	ldrb r0, [r4]
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r4, _0801C494 @ =0x0300005C
	adds r0, r3, r4
	b _0801C4A4
	.align 2, 0
_0801C474: .4byte gCurTask
_0801C478: .4byte gMultiplayerPseudoRandom
_0801C47C: .4byte 0x03000081
_0801C480: .4byte 0x0300007E
_0801C484: .4byte 0x03000080
_0801C488: .4byte 0x000002C2
_0801C48C: .4byte gGameMode
_0801C490: .4byte gUnknown_080BB4D0
_0801C494: .4byte 0x0300005C
_0801C498:
	ldr r1, _0801C4DC @ =gUnknown_080BB4D4
	ldrb r0, [r4]
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r7, _0801C4E0 @ =0x0300005C
	adds r0, r3, r7
_0801C4A4:
	strb r1, [r0]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	ldr r0, [r6, #0x1c]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r6, #0x1c]
	ldr r0, [r6, #0x4c]
	orrs r0, r1
	str r0, [r6, #0x4c]
	movs r1, #0
	strh r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #2]
	strh r1, [r5, #4]
	strh r1, [r5, #6]
	strh r1, [r5, #8]
	ldr r0, _0801C4E4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801C4E8 @ =sub_801C4EC
	str r0, [r1, #8]
	bl _call_via_r0
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C4DC: .4byte gUnknown_080BB4D4
_0801C4E0: .4byte 0x0300005C
_0801C4E4: .4byte gCurTask
_0801C4E8: .4byte sub_801C4EC

	thumb_func_start sub_801C4EC
sub_801C4EC: @ 0x0801C4EC
	push {r4, r5, r6, r7, lr}
	ldr r0, _0801C558 @ =gCurTask
	ldr r7, [r0]
	ldrh r4, [r7, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r2, [r5]
	adds r0, #0x6c
	adds r6, r4, r0
	ldrb r1, [r5, #8]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r2, #1]
	lsls r2, r2, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _0801C55C @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #6]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r6, #8]
	ldrh r0, [r6, #4]
	adds r0, #8
	strh r0, [r6, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _0801C564
	ldr r0, [r5, #0x1c]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x4c]
	ands r0, r1
	str r0, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #4]
	ldr r0, _0801C560 @ =Task_MysteryItemBox_Main0
	str r0, [r7, #8]
	bl _call_via_r0
	b _0801C5B0
	.align 2, 0
_0801C558: .4byte gCurTask
_0801C55C: .4byte gCamera
_0801C560: .4byte Task_MysteryItemBox_Main0
_0801C564:
	ldr r0, [r5, #0x1c]
	movs r3, #0x20
	rsbs r3, r3, #0
	ands r0, r3
	str r0, [r5, #0x1c]
	ldr r2, _0801C5B8 @ =sa2__gUnknown_030054B8
	ldrb r1, [r2]
	orrs r0, r1
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x4c]
	ands r0, r3
	str r0, [r5, #0x4c]
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r5, #0x4c]
	orrs r0, r1
	str r0, [r5, #0x4c]
	ldr r0, _0801C5BC @ =0x0300000C
	adds r5, r4, r0
	adds r0, r5, #0
	adds r1, r6, #0
	bl TransformSprite
	ldr r0, _0801C5C0 @ =0x0300003C
	adds r4, r4, r0
	adds r0, r4, #0
	adds r1, r6, #0
	bl TransformSprite
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r4, #0
	bl DisplaySprite
_0801C5B0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C5B8: .4byte sa2__gUnknown_030054B8
_0801C5BC: .4byte 0x0300000C
_0801C5C0: .4byte 0x0300003C

	thumb_func_start sub_801C5C4
sub_801C5C4: @ 0x0801C5C4
	push {r4, r5, r6, r7, lr}
	ldr r0, _0801C630 @ =gCurTask
	ldr r7, [r0]
	ldrh r4, [r7, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r2, [r5]
	adds r0, #0x6c
	adds r6, r4, r0
	ldrb r1, [r5, #8]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r2, #1]
	lsls r2, r2, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _0801C634 @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #6]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r6, #8]
	ldrh r0, [r6, #4]
	subs r0, #8
	strh r0, [r6, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _0801C63C
	ldr r0, [r5, #0x1c]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x4c]
	ands r0, r1
	str r0, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #4]
	ldr r0, _0801C638 @ =Task_MysteryItemBox_Main1
	str r0, [r7, #8]
	bl _call_via_r0
	b _0801C688
	.align 2, 0
_0801C630: .4byte gCurTask
_0801C634: .4byte gCamera
_0801C638: .4byte Task_MysteryItemBox_Main1
_0801C63C:
	ldr r0, [r5, #0x1c]
	movs r3, #0x20
	rsbs r3, r3, #0
	ands r0, r3
	str r0, [r5, #0x1c]
	ldr r2, _0801C690 @ =sa2__gUnknown_030054B8
	ldrb r1, [r2]
	orrs r0, r1
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x4c]
	ands r0, r3
	str r0, [r5, #0x4c]
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r5, #0x4c]
	orrs r0, r1
	str r0, [r5, #0x4c]
	ldr r0, _0801C694 @ =0x0300000C
	adds r5, r4, r0
	adds r0, r5, #0
	adds r1, r6, #0
	bl TransformSprite
	ldr r0, _0801C698 @ =0x0300003C
	adds r4, r4, r0
	adds r0, r4, #0
	adds r1, r6, #0
	bl TransformSprite
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r4, #0
	bl DisplaySprite
_0801C688:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C690: .4byte sa2__gUnknown_030054B8
_0801C694: .4byte 0x0300000C
_0801C698: .4byte 0x0300003C

	thumb_func_start sub_801C69C
sub_801C69C: @ 0x0801C69C
	push {r4, lr}
	ldr r0, _0801C6DC @ =gCurTask
	ldr r4, [r0]
	ldrh r1, [r4, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r1, r2
	ldr r0, _0801C6E0 @ =0x0300006C
	adds r1, r1, r0
	ldr r0, [r2, #0x1c]
	movs r3, #0x20
	orrs r0, r3
	str r0, [r2, #0x1c]
	ldr r0, [r2, #0x4c]
	orrs r0, r3
	str r0, [r2, #0x4c]
	movs r2, #0
	strh r2, [r1]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r2, [r1, #6]
	strh r2, [r1, #8]
	ldr r0, _0801C6E4 @ =sub_801C5C4
	str r0, [r4, #8]
	bl _call_via_r0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801C6DC: .4byte gCurTask
_0801C6E0: .4byte 0x0300006C
_0801C6E4: .4byte sub_801C5C4

	thumb_func_start TaskDestructor_MysteryItemBox
TaskDestructor_MysteryItemBox: @ 0x0801C6E8
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x10]
	bl VramFree
	ldr r0, [r4, #0x40]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0
