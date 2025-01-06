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

.if 0
.endif
