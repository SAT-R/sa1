.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ R0: VRAM-Pointer
	thumb_func_start sub_8069994
sub_8069994: @ 0x08069994
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	adds r6, r0, #0
	bl UiGfxStackInit
	add r4, sp, #0x2c
	movs r0, #0x20
	strb r0, [r4]
	movs r1, #0x2b
	add r1, sp
	mov r8, r1
	movs r0, #0xf
	strb r0, [r1]
	ldr r7, _08069B10 @ =gUiGraphics
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08069B14 @ =gUiGraphics + 0x4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0xb0
	lsls r0, r0, #3
	str r0, [sp, #0x18]
	movs r0, #0x20
	str r0, [sp, #0x24]
	add r1, sp, #0x28
	mov sb, r1
	movs r0, #6
	strb r0, [r1]
	str r6, [sp, #0xc]
	mov r6, sp
	adds r6, #0x2a
	movs r0, #0xd
	strb r0, [r6]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08069B18 @ =gUiGraphics + 0x8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08069B1C @ =gUiGraphics + 0xC
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0x10
	adds r1, r1, r7
	mov sl, r1
	add r0, sl
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r5, r7, #0
	adds r5, #0x14
	adds r0, r0, r5
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08069B20 @ =gUiGraphics + 0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r0, #0x10
	strb r0, [r4]
	mov r1, r8
	strb r0, [r1]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08069B14 @ =gUiGraphics + 0x4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x18]
	movs r0, #0x20
	str r0, [sp, #0x24]
	movs r0, #0xc
	mov r1, sb
	strb r0, [r1]
	ldr r0, _08069B24 @ =0x06011000
	str r0, [sp, #0xc]
	movs r0, #0xd
	strb r0, [r6]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08069B18 @ =gUiGraphics + 0x8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08069B1C @ =gUiGraphics + 0xC
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08069B20 @ =gUiGraphics + 0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r0, #0x22
	strb r0, [r4]
	movs r0, #2
	mov r1, r8
	strb r0, [r1]
	ldr r0, _08069B28 @ =gCurrentLevel
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	adds r3, r4, #0
	cmp r0, #0
	beq _08069B2C
	ldrb r0, [r3]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r7
	ldr r0, [r1]
	movs r1, #0xa0
	lsls r1, r1, #4
	adds r0, r0, r1
	b _08069B38
	.align 2, 0
_08069B10: .4byte gUiGraphics
_08069B14: .4byte gUiGraphics + 0x4
_08069B18: .4byte gUiGraphics + 0x8
_08069B1C: .4byte gUiGraphics + 0xC
_08069B20: .4byte gUiGraphics + 0x18
_08069B24: .4byte 0x06011000
_08069B28: .4byte gCurrentLevel
_08069B2C:
	ldrb r0, [r3]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r7
	ldr r0, [r1]
_08069B38:
	str r0, [sp, #0x14]
	ldr r7, _08069C7C @ =gUiGraphics
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08069C80 @ =gUiGraphics + 0x4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0x20
	str r0, [sp, #0x24]
	movs r0, #0xb
	add r1, sp, #0x28
	strb r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, _08069C84 @ =0x06011800
	str r0, [sp, #0xc]
	movs r0, #0xd
	movs r1, #0x2a
	add r1, sp
	strb r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	movs r1, #8
	adds r1, r1, r7
	mov sb, r1
	add r0, sb
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0xc
	adds r1, r1, r7
	mov r8, r1
	add r0, r8
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r6, r7, #0
	adds r6, #0x10
	adds r0, r0, r6
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08069C88 @ =gUiGraphics + 0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r4, r7, #0
	adds r4, #0x18
	adds r0, r0, r4
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	str r3, [sp, #0x30]
	bl sub_80528AC
	ldr r0, _08069C8C @ =gSelectedCharacter
	ldrb r0, [r0]
	adds r0, #0xb
	ldr r3, [sp, #0x30]
	strb r0, [r3]
	movs r0, #2
	movs r1, #0x2b
	add r1, sp
	strb r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08069C80 @ =gUiGraphics + 0x4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0xc0
	lsls r0, r0, #3
	str r0, [sp, #0x18]
	movs r0, #0xc
	str r0, [sp, #0x24]
	movs r0, #0xb
	add r1, sp, #0x28
	strb r0, [r1]
	ldr r0, _08069C90 @ =0x06011200
	str r0, [sp, #0xc]
	movs r0, #0xd
	movs r1, #0x2a
	add r1, sp
	strb r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08069C88 @ =gUiGraphics + 0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	bl sub_80528AC
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08069C7C: .4byte gUiGraphics
_08069C80: .4byte gUiGraphics + 0x4
_08069C84: .4byte 0x06011800
_08069C88: .4byte gUiGraphics + 0x14
_08069C8C: .4byte gSelectedCharacter
_08069C90: .4byte 0x06011200

@ Input:
@ R0; TimeRecord record
	thumb_func_start sub_8069C94
sub_8069C94: @ 0x08069C94
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #4]
	bl sub_80535FC
	movs r0, #0x2c
	bl VramMalloc
	adds r7, r0, #0
	bl sub_8069994
	ldr r0, _08069CF8 @ =Task_8069E50
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08069CFC @ =TaskDestructor_806A124
	str r1, [sp]
	movs r1, #0xd0
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #8]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r5
	mov sl, r0
	ldr r0, _08069D00 @ =0x030000A8
	adds r6, r5, r0
	ldr r0, [sp, #4]
	bl RegisterTimeRecord
	adds r4, r0, #0
	ldr r1, _08069D04 @ =0x030000C4
	adds r0, r5, r1
	str r4, [r0]
	cmp r4, #0
	beq _08069D10
	ldr r0, _08069D08 @ =0x00000131
	bl m4aSongNumStart
	ldr r0, _08069D0C @ =0x030000CC
	adds r1, r5, r0
	movs r0, #1
	strb r0, [r1]
	b _08069D1E
	.align 2, 0
_08069CF8: .4byte Task_8069E50
_08069CFC: .4byte TaskDestructor_806A124
_08069D00: .4byte 0x030000A8
_08069D04: .4byte 0x030000C4
_08069D08: .4byte 0x00000131
_08069D0C: .4byte 0x030000CC
_08069D10:
	movs r0, #0x99
	lsls r0, r0, #1
	bl m4aSongNumStart
	ldr r1, _08069E48 @ =0x030000CC
	adds r0, r5, r1
	strb r4, [r0]
_08069D1E:
	ldr r1, _08069E4C @ =gMusicManagerState
	movs r0, #0xff
	strb r0, [r1]
	mov r0, sl
	adds r0, #0xbc
	movs r5, #0
	str r5, [r0]
	adds r0, #4
	str r5, [r0]
	adds r0, #8
	str r7, [r0]
	movs r0, #0x18
	bl VramMalloc
	mov r1, sl
	str r0, [r1, #4]
	movs r7, #0
	movs r0, #0xdd
	lsls r0, r0, #2
	mov sb, r0
	mov r0, sb
	strh r0, [r1, #0xa]
	adds r1, #0x20
	movs r0, #4
	strb r0, [r1]
	movs r0, #0x78
	mov r1, sl
	strh r0, [r1, #0x16]
	strh r0, [r1, #0x18]
	strh r5, [r1, #8]
	strh r5, [r1, #0x14]
	strh r5, [r1, #0x1c]
	adds r1, #0x21
	subs r0, #0x79
	strb r0, [r1]
	mov r0, sl
	adds r0, #0x22
	movs r1, #0x10
	strb r1, [r0]
	adds r0, #3
	strb r7, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	mov r1, sl
	str r0, [r1, #0x28]
	strh r5, [r1, #0x1a]
	str r5, [r1, #0x10]
	mov r0, sl
	bl UpdateSpriteAnimation
	mov r4, sl
	adds r4, #0x30
	movs r0, #8
	bl VramMalloc
	str r0, [r4, #4]
	mov r0, sb
	strh r0, [r4, #0xa]
	mov r1, sl
	adds r1, #0x50
	movs r0, #3
	strb r0, [r1]
	movs r0, #0x28
	strh r0, [r4, #0x16]
	movs r0, #0x58
	strh r0, [r4, #0x18]
	strh r5, [r4, #8]
	strh r5, [r4, #0x14]
	strh r5, [r4, #0x1c]
	adds r1, #1
	subs r0, #0x59
	strb r0, [r1]
	mov r0, sl
	adds r0, #0x52
	movs r1, #0x10
	strb r1, [r0]
	adds r0, #3
	strb r7, [r0]
	mov r0, r8
	str r0, [r4, #0x28]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	mov r7, sl
	adds r7, #0x60
	movs r3, #0xf0
	strh r3, [r7, #0xa]
	movs r2, #0x8c
	strh r2, [r7, #0xc]
	movs r0, #8
	strh r0, [r7, #0xe]
	movs r4, #0x10
	strh r4, [r7, #0x10]
	movs r0, #0xc
	strh r0, [r7, #0x12]
	movs r1, #1
	strb r1, [r7, #0x16]
	movs r0, #0x18
	strh r0, [r7, #8]
	adds r7, #0x18
	strh r3, [r7, #0xa]
	strh r2, [r7, #0xc]
	movs r0, #9
	strh r0, [r7, #0xe]
	movs r0, #2
	strh r0, [r7, #0x10]
	movs r0, #0xb
	strh r0, [r7, #0x12]
	strb r1, [r7, #0x16]
	strh r5, [r7, #8]
	adds r7, #0x18
	movs r0, #0x50
	strh r0, [r7, #0xa]
	strh r0, [r7, #0xc]
	movs r0, #7
	strh r0, [r7, #0xe]
	movs r0, #0xf
	strh r0, [r7, #0x10]
	movs r0, #6
	strh r0, [r7, #0x12]
	strb r1, [r7, #0x16]
	strh r5, [r7, #8]
	strh r5, [r6]
	strh r1, [r6, #2]
	strh r1, [r6, #4]
	strh r5, [r6, #6]
	adds r0, #0xfa
	strh r0, [r6, #8]
	strb r4, [r6, #0xa]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	bl sub_806A02C
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08069E48: .4byte 0x030000CC
_08069E4C: .4byte gMusicManagerState

	thumb_func_start Task_8069E50
Task_8069E50: @ 0x08069E50
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r2, _08069E80 @ =gCurTask
	ldr r0, [r2]
	ldrh r0, [r0, #6]
	ldr r1, _08069E84 @ =0x030000A8
	adds r4, r0, r1
	ldr r3, _08069E88 @ =0x030000BC
	adds r1, r0, r3
	ldr r3, [r1]
	adds r3, #1
	str r3, [r1]
	ldr r1, _08069E8C @ =0x030000CC
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r6, r2, #0
	cmp r0, #0
	beq _08069E90
	movs r0, #0x96
	lsls r0, r0, #2
	movs r1, #0x87
	lsls r1, r1, #2
	b _08069E98
	.align 2, 0
_08069E80: .4byte gCurTask
_08069E84: .4byte 0x030000A8
_08069E88: .4byte 0x030000BC
_08069E8C: .4byte 0x030000CC
_08069E90:
	movs r0, #0xa5
	lsls r0, r0, #1
	movs r1, #0x87
	lsls r1, r1, #1
_08069E98:
	cmp r3, r0
	bls _08069EC8
	ldr r2, _08069EBC @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08069EC0 @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _08069EC4 @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	ldr r0, [r6]
	bl TaskDestroy
	bl GoToNextLevel
	b _08069EDE
	.align 2, 0
_08069EBC: .4byte gDispCnt
_08069EC0: .4byte 0x00001FFF
_08069EC4: .4byte gBldRegs
_08069EC8:
	cmp r3, r1
	bls _08069ED4
	adds r0, r4, #0
	bl sub_805423C
	movs r5, #1
_08069ED4:
	bl sub_8069FDC
	adds r0, r5, #0
	bl sub_8069EE4
_08069EDE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8069EE4
sub_8069EE4: @ 0x08069EE4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r7, r0, #0
	ldr r1, _08069F38 @ =gUnknown_0868B65C
	mov r0, sp
	movs r2, #0x19
	bl memcpy
	ldr r0, _08069F3C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	ldr r1, _08069F40 @ =0x030000BC
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0x3c
	bls _08069F5A
	adds r1, #8
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08069F1A
	adds r0, r6, #0
	bl DisplaySprite
_08069F1A:
	ldr r1, _08069F44 @ =0x03000030
	adds r0, r4, r1
	bl DisplaySprite
	ldr r0, _08069F48 @ =0x03000090
	adds r5, r4, r0
	cmp r7, #0
	beq _08069F50
	ldr r1, _08069F4C @ =0x030000B4
	adds r0, r4, r1
	adds r1, r5, #0
	bl sub_8052F78
	b _08069F5A
	.align 2, 0
_08069F38: .4byte gUnknown_0868B65C
_08069F3C: .4byte gCurTask
_08069F40: .4byte 0x030000BC
_08069F44: .4byte 0x03000030
_08069F48: .4byte 0x03000090
_08069F4C: .4byte 0x030000B4
_08069F50:
	ldr r1, _08069F70 @ =0x030000B4
	adds r0, r4, r1
	adds r1, r5, #0
	bl sub_80530CC
_08069F5A:
	adds r5, r6, #0
	adds r5, #0x60
	ldrh r4, [r5, #0xc]
	cmp r7, #0
	beq _08069F78
	ldr r0, _08069F74 @ =gUnknown_0868B678
	adds r1, r5, #0
	bl sub_8052F78
	b _08069F80
	.align 2, 0
_08069F70: .4byte 0x030000B4
_08069F74: .4byte gUnknown_0868B678
_08069F78:
	ldr r0, _08069FC4 @ =gUnknown_0868B678
	adds r1, r5, #0
	bl sub_80530CC
_08069F80:
	adds r5, r6, #0
	adds r5, #0x78
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r0, #2
	strh r0, [r5, #0xc]
	ldrh r2, [r5, #0xa]
	subs r0, r2, #2
	strh r0, [r5, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x1f
	rsbs r1, r1, #0
	adds r4, r6, #0
	adds r4, #0xc0
	cmp r0, r1
	bge _08069FB4
	adds r0, r2, #0
	adds r0, #0x1e
	strh r0, [r5, #0xa]
	ldr r0, [r4]
	adds r0, #1
	movs r1, #8
	bl Mod
	str r0, [r4]
_08069FB4:
	cmp r7, #0
	beq _08069FC8
	ldr r0, [r4]
	add r0, sp
	adds r1, r5, #0
	bl sub_8052F78
	b _08069FD2
	.align 2, 0
_08069FC4: .4byte gUnknown_0868B678
_08069FC8:
	ldr r0, [r4]
	add r0, sp
	adds r1, r5, #0
	bl sub_80530CC
_08069FD2:
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8069FDC
sub_8069FDC: @ 0x08069FDC
	ldr r0, _0806A008 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _0806A00C @ =0x03000060
	adds r2, r0, r1
	adds r1, #0x5c
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r1, #0
	subs r0, #0x1f
	cmp r0, #8
	bhi _0806A010
	ldrh r0, [r2, #0xc]
	subs r0, #0xc
	strh r0, [r2, #0xc]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x13
	bgt _0806A028
	movs r0, #0x14
	strh r0, [r2, #0xc]
	b _0806A028
	.align 2, 0
_0806A008: .4byte gCurTask
_0806A00C: .4byte 0x03000060
_0806A010:
	cmp r1, #0x14
	bhi _0806A028
	cmp r1, #0xa
	bls _0806A028
	ldrh r0, [r2, #0xa]
	subs r0, #0x18
	strh r0, [r2, #0xa]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0806A028
	movs r0, #0
	strh r0, [r2, #0xa]
_0806A028:
	bx lr
	.align 2, 0

	thumb_func_start sub_806A02C
sub_806A02C: @ 0x0806A02C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldrh r6, [r1, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r6
	mov r8, r0
	ldr r0, _0806A068 @ =0x00008C9F
	cmp r4, r0
	bls _0806A080
	ldr r1, _0806A06C @ =0x030000BA
	adds r0, r6, r1
	movs r1, #0x29
	strb r1, [r0]
	ldr r2, _0806A070 @ =0x030000B9
	adds r0, r6, r2
	strb r1, [r0]
	ldr r3, _0806A074 @ =0x030000B7
	adds r0, r6, r3
	strb r1, [r0]
	ldr r4, _0806A078 @ =0x030000B6
	adds r2, r6, r4
	movs r0, #0x25
	strb r0, [r2]
	ldr r7, _0806A07C @ =0x030000B4
	adds r0, r6, r7
	b _0806A0EA
	.align 2, 0
_0806A068: .4byte 0x00008C9F
_0806A06C: .4byte 0x030000BA
_0806A070: .4byte 0x030000B9
_0806A074: .4byte 0x030000B7
_0806A078: .4byte 0x030000B6
_0806A07C: .4byte 0x030000B4
_0806A080:
	adds r0, r4, #0
	movs r1, #0x3c
	bl Div
	adds r5, r0, #0
	movs r1, #0x3c
	bl Div
	ldr r2, _0806A104 @ =sZoneTimeSecondsTable
	lsls r0, r0, #1
	adds r1, r0, r2
	movs r3, #0
	ldrsh r1, [r1, r3]
	subs r5, r5, r1
	lsls r5, r5, #1
	adds r2, r5, r2
	movs r7, #0
	ldrsh r2, [r2, r7]
	subs r2, r4, r2
	ldr r1, _0806A108 @ =sZoneTimeMinutesTable
	adds r1, r0, r1
	ldrh r1, [r1]
	subs r2, r2, r1
	lsls r2, r2, #1
	ldr r4, _0806A10C @ =gMillisUnpackTable
	adds r1, r2, #1
	adds r1, r1, r4
	ldrb r3, [r1]
	ldr r7, _0806A110 @ =0x030000BA
	adds r1, r6, r7
	strb r3, [r1]
	adds r2, r2, r4
	ldrb r2, [r2]
	ldr r3, _0806A114 @ =0x030000B9
	adds r1, r6, r3
	strb r2, [r1]
	ldr r3, _0806A118 @ =gSecondsTable
	adds r1, r5, #1
	adds r1, r1, r3
	ldrb r2, [r1]
	ldr r4, _0806A11C @ =0x030000B7
	adds r1, r6, r4
	strb r2, [r1]
	adds r1, r5, r3
	ldrb r2, [r1]
	subs r7, #4
	adds r1, r6, r7
	strb r2, [r1]
	adds r0, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	ldr r2, _0806A120 @ =0x030000B4
	adds r0, r6, r2
_0806A0EA:
	strb r1, [r0]
	mov r0, r8
	adds r0, #0xb5
	movs r1, #0x2a
	strb r1, [r0]
	adds r0, #3
	strb r1, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806A104: .4byte sZoneTimeSecondsTable
_0806A108: .4byte sZoneTimeMinutesTable
_0806A10C: .4byte gMillisUnpackTable
_0806A110: .4byte 0x030000BA
_0806A114: .4byte 0x030000B9
_0806A118: .4byte gSecondsTable
_0806A11C: .4byte 0x030000B7
_0806A120: .4byte 0x030000B4

	thumb_func_start TaskDestructor_806A124
TaskDestructor_806A124: @ 0x0806A124
	push {r4, r5, lr}
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	ldr r0, [r4, #4]
	bl VramFree
	ldr r0, [r4, #0x34]
	bl VramFree
	ldr r0, _0806A14C @ =0x030000C8
	adds r5, r5, r0
	ldr r0, [r5]
	bl VramFree
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806A14C: .4byte 0x030000C8
