.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ NOTE: Only move SA2 versions of animation_commands.s and animation_commands_bg.s
@       over, once they are not using non-matches.

	thumb_func_start animCmd_GetPalette
animCmd_GetPalette: @ 0x08004A84
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	ldrh r0, [r3, #0x14]
	adds r0, #3
	strh r0, [r3, #0x14]
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	bne _08004AD8
	ldr r1, [r4, #4]
	ldr r2, _08004AE0 @ =0x040000D4
	ldr r0, _08004AE4 @ =gUnknown_03002034
	ldr r0, [r0]
	lsls r1, r1, #5
	ldr r0, [r0, #0xc]
	adds r0, r0, r1
	str r0, [r2]
	adds r0, r3, #0
	adds r0, #0x25
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldrh r1, [r4, #0xa]
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _08004AE8 @ =gObjPalette
	adds r0, r0, r1
	str r0, [r2, #4]
	ldrh r0, [r4, #8]
	asrs r0, r0, #1
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r2, _08004AEC @ =gFlags
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
_08004AD8:
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08004AE0: .4byte 0x040000D4
_08004AE4: .4byte gUnknown_03002034
_08004AE8: .4byte gObjPalette
_08004AEC: .4byte gFlags

	thumb_func_start animCmd_JumpBack
animCmd_JumpBack: @ 0x08004AF0
	ldr r2, [r0, #4]
	ldrh r0, [r1, #0x14]
	subs r0, r0, r2
	strh r0, [r1, #0x14]
	movs r0, #1
	bx lr

	thumb_func_start animCmd_End
animCmd_End: @ 0x08004AFC
	ldr r0, [r1, #0x10]
	movs r2, #0x80
	lsls r2, r2, #7
	orrs r0, r2
	str r0, [r1, #0x10]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start animCmd_PlaySoundEffect
animCmd_PlaySoundEffect: @ 0x08004B0C
	push {lr}
	ldrh r2, [r1, #0x14]
	adds r2, #2
	strh r2, [r1, #0x14]
	ldrh r0, [r0, #4]
	bl m4aSongNumStart
	movs r0, #1
	pop {r1}
	bx r1

	thumb_func_start animCmd_TranslateSprite
animCmd_TranslateSprite: @ 0x08004B20
	ldrh r2, [r1, #0x14]
	adds r2, #2
	strh r2, [r1, #0x14]
	ldrh r2, [r0, #4]
	ldrh r3, [r1, #0x16]
	adds r2, r2, r3
	strh r2, [r1, #0x16]
	ldrh r0, [r0, #6]
	ldrh r2, [r1, #0x18]
	adds r0, r0, r2
	strh r0, [r1, #0x18]
	movs r0, #1
	bx lr
	.align 2, 0

	thumb_func_start animCmd_8
animCmd_8: @ 0x08004B3C
	ldrh r0, [r1, #0x14]
	adds r0, #3
	strh r0, [r1, #0x14]
	movs r0, #1
	bx lr
	.align 2, 0

	thumb_func_start animCmd_SetIdAndVariant
animCmd_SetIdAndVariant: @ 0x08004B48
	ldrh r2, [r1, #0x14]
	adds r2, #2
	strh r2, [r1, #0x14]
	ldrh r2, [r0, #4]
	strh r2, [r1, #0xa]
	adds r3, r1, #0
	adds r3, #0x21
	movs r2, #0xff
	strb r2, [r3]
	ldrh r0, [r0, #6]
	adds r1, #0x20
	strb r0, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	bx lr
	.align 2, 0

	thumb_func_start animCmd_10
animCmd_10: @ 0x08004B68
	ldrh r2, [r1, #0x14]
	adds r2, #4
	strh r2, [r1, #0x14]
	bx lr

	thumb_func_start animCmd_SetSpritePriority
animCmd_SetSpritePriority: @ 0x08004B70
	ldrh r2, [r1, #0x14]
	adds r2, #2
	strh r2, [r1, #0x14]
	ldr r2, [r1, #0x10]
	ldr r3, _08004B88 @ =0xFFFFCFFF
	ands r2, r3
	ldr r0, [r0, #4]
	lsls r0, r0, #0xc
	orrs r2, r0
	str r2, [r1, #0x10]
	movs r0, #1
	bx lr
	.align 2, 0
_08004B88: .4byte 0xFFFFCFFF

	thumb_func_start animCmd_SetOamOrder
animCmd_SetOamOrder: @ 0x08004B8C
	ldrh r2, [r1, #0x14]
	adds r2, #2
	strh r2, [r1, #0x14]
	ldr r0, [r0, #4]
	lsls r0, r0, #6
	strh r0, [r1, #0x1a]
	movs r0, #1
	bx lr
