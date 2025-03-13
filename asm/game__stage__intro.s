.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_80549FC
sub_80549FC: @ 0x080549FC
	movs r1, #0
	ldr r0, _08054A20 @ =gSelectedCharacter
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08054A1C
	ldr r0, _08054A24 @ =gPlayer
	adds r0, #0x40
	ldrb r0, [r0]
	subs r0, #0x46
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bhi _08054A1C
	movs r1, #1
_08054A1C:
	adds r0, r1, #0
	bx lr
	.align 2, 0
_08054A20: .4byte gSelectedCharacter
_08054A24: .4byte gPlayer

	thumb_func_start sub_8054A28
sub_8054A28: @ 0x08054A28
	movs r1, #0
	ldr r0, _08054A4C @ =gSelectedCharacter
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08054A48
	ldr r0, _08054A50 @ =gPlayer
	adds r0, #0x40
	ldrb r0, [r0]
	subs r0, #0x3e
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bhi _08054A48
	movs r1, #1
_08054A48:
	adds r0, r1, #0
	bx lr
	.align 2, 0
_08054A4C: .4byte gSelectedCharacter
_08054A50: .4byte gPlayer

	thumb_func_start sub_8054A54
sub_8054A54: @ 0x08054A54
	movs r1, #0
	ldr r0, _08054A78 @ =gSelectedCharacter
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	bne _08054A74
	ldr r0, _08054A7C @ =gPlayer
	adds r0, #0x40
	ldrb r0, [r0]
	subs r0, #0x5b
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _08054A74
	movs r1, #1
_08054A74:
	adds r0, r1, #0
	bx lr
	.align 2, 0
_08054A78: .4byte gSelectedCharacter
_08054A7C: .4byte gPlayer

.if 0
.endif
