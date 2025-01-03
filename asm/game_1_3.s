.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ TODO: Maybe sa2__Task_801F214 ?
@       But that comes after sub_801F15C in SA2...
	thumb_func_start sub_8040278
sub_8040278: @ 0x08040278
	push {r4, lr}
	ldr r0, _080402A0 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r0, #0x18
	adds r4, r1, r0
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080402A4
	adds r0, r2, #0
	bl TaskDestroy
	b _080403D0
	.align 2, 0
_080402A0: .4byte gCurTask
_080402A4:
	ldrh r1, [r3, #0x14]
	movs r0, #3
	ands r0, r1
	cmp r0, #1
	beq _08040344
	cmp r0, #1
	bgt _080402B8
	cmp r0, #0
	beq _080402BE
	b _08040364
_080402B8:
	cmp r0, #2
	beq _0804035C
	b _08040364
_080402BE:
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0x10
	beq _08040320
	cmp r0, #0x20
	bne _08040328
	ldrb r2, [r3, #0x16]
	ldr r0, _080402F4 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _08040304
	ldr r1, _080402F8 @ =gMultiplayerPlayerTasks
	lsls r0, r2, #0x18
	asrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r2, _080402FC @ =0x03000050
	adds r1, r0, r2
	ldrh r1, [r1]
	strh r1, [r4, #0x16]
	ldr r1, _08040300 @ =0x03000052
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0x18]
	b _08040328
	.align 2, 0
_080402F4: .4byte gGameMode
_080402F8: .4byte gMultiplayerPlayerTasks
_080402FC: .4byte 0x03000050
_08040300: .4byte 0x03000052
_08040304:
	ldr r1, _08040318 @ =gPlayer
	cmp r2, #0
	beq _0804030C
	ldr r1, _0804031C @ =gPartner
_0804030C:
	ldr r0, [r1]
	asrs r0, r0, #8
	str r0, [r3]
	ldr r0, [r1, #4]
	asrs r0, r0, #8
	b _08040326
	.align 2, 0
_08040318: .4byte gPlayer
_0804031C: .4byte gPartner
_08040320:
	ldr r0, _0804033C @ =gWater
	movs r2, #2
	ldrsh r0, [r0, r2]
_08040326:
	str r0, [r3, #4]
_08040328:
	ldr r2, _08040340 @ =gCamera
	ldr r0, [r3]
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldr r0, [r3, #4]
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	b _08040362
	.align 2, 0
_0804033C: .4byte gWater
_08040340: .4byte gCamera
_08040344:
	ldr r2, _08040358 @ =gCamera
	ldr r0, [r3]
	ldrh r1, [r2, #0x28]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldr r0, [r3, #4]
	ldrh r1, [r2, #0x2a]
	subs r0, r0, r1
	b _08040362
	.align 2, 0
_08040358: .4byte gCamera
_0804035C:
	ldr r0, [r3]
	strh r0, [r4, #0x16]
	ldr r0, [r3, #4]
_08040362:
	strh r0, [r4, #0x18]
_08040364:
	ldrh r1, [r3, #0x14]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08040390
	ldr r0, _08040384 @ =gPlayer
	ldr r0, [r0, #0x10]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08040388
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _0804038E
	.align 2, 0
_08040384: .4byte gPlayer
_08040388:
	ldr r0, [r4, #0x10]
	ldr r1, _080403B4 @ =0xFFFFFBFF
	ands r0, r1
_0804038E:
	str r0, [r4, #0x10]
_08040390:
	ldrh r1, [r3, #0x14]
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080403C4
	ldr r0, _080403B8 @ =gStageFlags
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080403BC
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _080403C2
	.align 2, 0
_080403B4: .4byte 0xFFFFFBFF
_080403B8: .4byte gStageFlags
_080403BC:
	ldr r0, [r4, #0x10]
	ldr r1, _080403D8 @ =0xFFFFF7FF
	ands r0, r1
_080403C2:
	str r0, [r4, #0x10]
_080403C4:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080403D0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080403D8: .4byte 0xFFFFF7FF

	thumb_func_start sa2__sub_801F15C
sa2__sub_801F15C: @ 0x080403DC
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	mov r8, r2
	mov sb, r3
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	mov r2, sb
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sb, r2
	ldr r2, _08040470 @ =0x00004001
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r3, r1
	ldr r2, _08040474 @ =0x03000018
	adds r6, r3, r2
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	str r4, [r1]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	str r5, [r1, #4]
	movs r5, #0
	movs r4, #0
	mov r2, r8
	strh r2, [r1, #0x14]
	mov r2, sb
	strb r2, [r1, #0x16]
	str r4, [r6, #4]
	strh r4, [r6, #8]
	strh r4, [r6, #0xa]
	ldr r2, _08040478 @ =0x03000038
	adds r1, r3, r2
	strb r5, [r1]
	ldr r1, _0804047C @ =0x03000039
	adds r2, r3, r1
	movs r1, #0xff
	strb r1, [r2]
	strh r4, [r6, #0x1a]
	strh r4, [r6, #0x1c]
	ldr r1, _08040480 @ =0x0300003A
	adds r2, r3, r1
	movs r1, #0x10
	strb r1, [r2]
	ldr r2, _08040484 @ =0x0300003D
	adds r3, r3, r2
	strb r5, [r3]
	str r4, [r6, #0x10]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08040470: .4byte 0x00004001
_08040474: .4byte 0x03000018
_08040478: .4byte 0x03000038
_0804047C: .4byte 0x03000039
_08040480: .4byte 0x0300003A
_08040484: .4byte 0x0300003D

@ NOTE: More functions here in SA2!

	thumb_func_start sa2__TaskDestructor_801F550
sa2__TaskDestructor_801F550: @ 0x08040488
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _0804049C @ =0x03000018
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0
	.align 2, 0
_0804049C: .4byte 0x03000018
