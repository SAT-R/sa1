.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ --- Start of game/sa1_sa2_shared/music_manager.c
	thumb_func_start Task_StageMusicManager
Task_StageMusicManager: @ 0x0803C974
	push {r4, r5, r6, lr}
	ldr r0, _0803C9C0 @ =gMPlayTable
	ldr r0, [r0]
	ldr r3, [r0]
	ldr r0, _0803C9C4 @ =sa2__gUnknown_030054A8
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	beq _0803C988
	b _0803CB38
_0803C988:
	ldr r0, _0803C9C8 @ =gPlayer
	ldr r1, [r0, #0x10]
	movs r2, #0x80
	ands r1, r2
	adds r4, r0, #0
	cmp r1, #0
	beq _0803C998
	b _0803CB38
_0803C998:
	ldr r0, _0803C9CC @ =gSongTable
	adds r1, r0, #0
	adds r1, #0xd8  @ MUS_DROWNING * sizeof(struct Song)
	ldr r1, [r1]
	adds r2, r0, #0
	cmp r3, r1
	bne _0803C9D4
	ldr r0, _0803C9D0 @ =gMPlayInfo_BGM
	ldr r1, [r0, #4]
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _0803C9D4
	movs r0, #0x80
	lsls r0, r0, #0x18
	ands r0, r1
	cmp r0, #0
	bne _0803C9D4
	strb r0, [r5, #2]
	strb r0, [r5, #3]
	b _0803CB38
	.align 2, 0
_0803C9C0: .4byte gMPlayTable
_0803C9C4: .4byte sa2__gUnknown_030054A8
_0803C9C8: .4byte gPlayer
_0803C9CC: .4byte gSongTable
_0803C9D0: .4byte gMPlayInfo_BGM
_0803C9D4:
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _0803C9E6
	movs r0, #0
	strb r0, [r5, #4]
	movs r0, #0x1b
	bl m4aSongNumStart
	b _0803CB38
_0803C9E6:
	adds r0, r2, #0
	adds r0, #0xe0
	ldr r0, [r0]
	cmp r3, r0
	bne _0803CA18
	ldr r0, _0803CA14 @ =gMPlayInfo_BGM
	ldr r1, [r0, #4]
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _0803CA18
	cmp r1, #0
	blt _0803CA18
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0803CA18
	movs r0, #0x1c
	bl m4aSongNumStop
	b _0803CB38
	.align 2, 0
_0803CA14: .4byte gMPlayInfo_BGM
_0803CA18:
	ldr r1, _0803CA48 @ =0x00000998
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r3, r0
	beq _0803CA4C
	adds r0, r2, #0
	adds r0, #0xe0
	ldr r0, [r0]
	cmp r3, r0
	beq _0803CA4C
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803CA4C
	ldrb r0, [r5, #2]
	cmp r0, #0
	bne _0803CA54
	strb r0, [r5, #2]
	movs r0, #0x1c
	b _0803CB0E
	.align 2, 0
_0803CA48: .4byte 0x00000998
_0803CA4C:
	adds r4, r5, #0
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _0803CA60
_0803CA54:
	movs r0, #0
	strb r0, [r5, #2]
	movs r0, #0x1c
	bl m4aSongNumStart
	b _0803CB38
_0803CA60:
	ldrb r6, [r4, #3]
	cmp r6, #0
	beq _0803CA74
	strb r0, [r4, #3]
	ldr r0, _0803CA70 @ =0x00000133
	bl m4aSongNumStart
	b _0803CB38
	.align 2, 0
_0803CA70: .4byte 0x00000133
_0803CA74:
	ldrb r2, [r4, #1]
	movs r1, #0xf0
	ands r1, r2
	cmp r1, #0x10
	bne _0803CAA0
	movs r0, #0xf
	ands r0, r2
	strb r0, [r4, #1]
	ldr r1, _0803CA9C @ =gUnknown_084ADB08
	ldrb r0, [r4, #1]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl m4aSongNumStart
	ldrb r1, [r4, #1]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r4, #1]
	b _0803CB38
	.align 2, 0
_0803CA9C: .4byte gUnknown_084ADB08
_0803CAA0:
	cmp r1, #0x30
	bne _0803CAF0
	movs r0, #0xf
	ands r0, r2
	strb r0, [r4, #1]
	ldr r1, _0803CAE4 @ =gUnknown_084ADB08
	ldrb r0, [r4, #1]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl m4aSongNumStop
	ldr r1, _0803CAE8 @ =gUnknown_084ADAE4
	ldr r0, _0803CAEC @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl m4aSongNumStart
	bl sub_803CB7C
	ldrb r0, [r4, #1]
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0803CAE0
	movs r0, #0xff
	strb r0, [r4]
_0803CAE0:
	strb r6, [r5, #1]
	b _0803CB38
	.align 2, 0
_0803CAE4: .4byte gUnknown_084ADB08
_0803CAE8: .4byte gUnknown_084ADAE4
_0803CAEC: .4byte gCurrentLevel
_0803CAF0:
	ldr r0, _0803CB18 @ =gMPlayInfo_BGM
	ldr r3, [r0, #4]
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _0803CAFE
	cmp r3, #0
	bge _0803CB38
_0803CAFE:
	cmp r1, #0x20
	bne _0803CB20
	ldr r0, _0803CB1C @ =gUnknown_084ADB08
	movs r1, #0xf
	ands r1, r2
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
_0803CB0E:
	bl m4aSongNumStart
	bl sub_803CB7C
	b _0803CB38
	.align 2, 0
_0803CB18: .4byte gMPlayInfo_BGM
_0803CB1C: .4byte gUnknown_084ADB08
_0803CB20:
	ldr r1, _0803CB40 @ =gUnknown_084ADAE4
	ldr r0, _0803CB44 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl m4aSongNumStart
	bl sub_803CB7C
_0803CB38:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803CB40: .4byte gUnknown_084ADAE4
_0803CB44: .4byte gCurrentLevel

	thumb_func_start CreateStageMusicManager
CreateStageMusicManager: @ 0x0803CB48
	push {r4, lr}
	sub sp, #4
	ldr r0, _0803CB74 @ =Task_StageMusicManager
	movs r2, #0x80
	lsls r2, r2, #7
	movs r4, #0
	str r4, [sp]
	movs r1, #0
	movs r3, #0
	bl TaskCreate
	ldr r0, _0803CB78 @ =sa2__gUnknown_030054A8
	strb r4, [r0]
	strb r4, [r0, #1]
	strb r4, [r0, #2]
	strb r4, [r0, #3]
	strb r4, [r0, #4]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803CB74: .4byte Task_StageMusicManager
_0803CB78: .4byte sa2__gUnknown_030054A8

	thumb_func_start sub_803CB7C
sub_803CB7C: @ 0x0803CB7C
	push {r4, lr}
	ldr r4, _0803CBB8 @ =gMPlayInfo_BGM
	adds r0, r4, #0
	bl m4aMPlayImmInit
	adds r0, r4, #0
	movs r1, #0xff
	movs r2, #4
	bl m4aMPlayVolumeControl
	adds r0, r4, #0
	movs r1, #4
	bl m4aMPlayFadeIn
	ldr r0, _0803CBBC @ =gPlayer
	adds r0, #0x26
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0803CBB0
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r4, #0
	bl m4aMPlayTempoControl
_0803CBB0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803CBB8: .4byte gMPlayInfo_BGM
_0803CBBC: .4byte gPlayer
