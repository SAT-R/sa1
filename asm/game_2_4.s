.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_806968C
sub_806968C: @ 0x0806968C
	push {r4, lr}
	sub sp, #0x30
	bl UiGfxStackInit
	add r2, sp, #0x2c
	movs r4, #0
	movs r0, #0x80
	strb r0, [r2]
	mov r0, sp
	adds r0, #0x2b
	strb r4, [r0]
	movs r1, #0x2b
	strb r1, [r2]
	ldr r2, _080696FC @ =gUiGraphics
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	ldr r0, [r2]
	str r0, [sp, #0x14]
	movs r1, #0x20
	str r1, [sp, #0x18]
	ldr r0, _08069700 @ =gUnknown_086CC774
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	ldr r0, _08069704 @ =gUnknown_086CC834
	str r0, [sp, #0x10]
	movs r0, #0xa0
	lsls r0, r0, #3
	str r0, [sp, #0x1c]
	add r0, sp, #0x28
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	mov r1, sp
	adds r1, #0x2a
	movs r0, #5
	strb r0, [r1]
	mov r0, sp
	bl sub_80528AC
	ldr r1, _08069708 @ =sa2__gUnknown_03004D80
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0806970C @ =sa2__gUnknown_03002280
	strb r4, [r1]
	strb r4, [r1, #1]
	movs r0, #0xff
	strb r0, [r1, #2]
	movs r0, #0x14
	strb r0, [r1, #3]
	add sp, #0x30
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080696FC: .4byte gUiGraphics
_08069700: .4byte gUnknown_086CC774
_08069704: .4byte gUnknown_086CC834
_08069708: .4byte sa2__gUnknown_03004D80
_0806970C: .4byte sa2__gUnknown_03002280

	thumb_func_start sub_8069710
sub_8069710: @ 0x08069710
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	bl sub_80535FC
	ldr r1, _08069890 @ =gDispCnt
	movs r2, #0x8a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08069894 @ =gBgCntRegs
	movs r5, #0
	ldr r0, _08069898 @ =0x00001D03
	strh r0, [r1]
	ldr r0, _0806989C @ =gBgScrollRegs
	strh r5, [r0]
	strh r5, [r0, #2]
	bl sub_806968C
	ldr r0, _080698A0 @ =Task_80698F4
	str r5, [sp]
	movs r1, #0xa0
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldr r3, _080698A4 @ =0x03000090
	adds r6, r4, r3
	ldr r1, _080698A8 @ =0x06010000
	str r1, [r0, #4]
	ldr r2, _080698AC @ =gUnknown_0868B654
	ldr r3, _080698B0 @ =gLoadedSaveGame
	ldrb r1, [r3, #0x19]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0xa]
	ldr r2, _080698B4 @ =gUnknown_0868B658
	ldrb r1, [r3, #0x19]
	adds r1, r1, r2
	ldrb r2, [r1]
	ldr r3, _080698B8 @ =0x03000020
	adds r1, r4, r3
	strb r2, [r1]
	movs r1, #0x78
	strh r1, [r0, #0x16]
	strh r1, [r0, #0x18]
	strh r5, [r0, #8]
	strh r5, [r0, #0x14]
	strh r5, [r0, #0x1c]
	ldr r1, _080698BC @ =0x03000021
	adds r2, r4, r1
	movs r1, #0xff
	strb r1, [r2]
	ldr r2, _080698C0 @ =0x03000022
	adds r1, r4, r2
	movs r3, #0x10
	strb r3, [r1]
	adds r2, #3
	adds r1, r4, r2
	movs r3, #0
	strb r3, [r1]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0, #0x28]
	movs r2, #0x90
	lsls r2, r2, #3
	mov r8, r2
	mov r3, r8
	strh r3, [r0, #0x1a]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r0, #0x10]
	bl UpdateSpriteAnimation
	ldr r3, _080698C4 @ =0x03000030
	adds r2, r4, r3
	ldr r0, _080698C8 @ =0x06012000
	str r0, [r2, #4]
	ldr r7, _080698CC @ =0x000002E3
	strh r7, [r2, #0xa]
	ldr r1, _080698D0 @ =0x03000050
	adds r0, r4, r1
	movs r3, #0
	strb r3, [r0]
	movs r0, #0x88
	mov sb, r0
	mov r1, sb
	strh r1, [r2, #0x16]
	movs r3, #0x5a
	mov sl, r3
	mov r0, sl
	strh r0, [r2, #0x18]
	strh r5, [r2, #8]
	strh r5, [r2, #0x14]
	strh r5, [r2, #0x1c]
	ldr r3, _080698D4 @ =0x03000051
	adds r1, r4, r3
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _080698D8 @ =0x03000052
	adds r0, r4, r1
	movs r3, #0x10
	strb r3, [r0]
	adds r1, #3
	adds r0, r4, r1
	movs r3, #0
	strb r3, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2, #0x28]
	mov r1, r8
	strh r1, [r2, #0x1a]
	movs r3, #0x80
	lsls r3, r3, #6
	str r3, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	ldr r0, _080698DC @ =0x03000060
	adds r2, r4, r0
	ldr r0, _080698E0 @ =0x06014000
	str r0, [r2, #4]
	strh r7, [r2, #0xa]
	ldr r1, _080698E4 @ =0x03000080
	adds r0, r4, r1
	movs r7, #1
	strb r7, [r0]
	mov r3, sb
	strh r3, [r2, #0x16]
	mov r0, sl
	strh r0, [r2, #0x18]
	strh r5, [r2, #8]
	strh r5, [r2, #0x14]
	strh r5, [r2, #0x1c]
	ldr r3, _080698E8 @ =0x03000081
	adds r1, r4, r3
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _080698EC @ =0x03000082
	adds r0, r4, r1
	movs r3, #0x10
	strb r3, [r0]
	adds r1, #3
	adds r0, r4, r1
	movs r3, #0
	strb r3, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2, #0x28]
	mov r1, r8
	strh r1, [r2, #0x1a]
	movs r3, #0x80
	lsls r3, r3, #6
	str r3, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	ldr r0, _080698F0 @ =0x0300009C
	adds r4, r4, r0
	str r5, [r4]
	strh r5, [r6]
	strh r7, [r6, #2]
	movs r0, #2
	strh r0, [r6, #4]
	strh r5, [r6, #6]
	adds r0, #0xfe
	strh r0, [r6, #8]
	movs r0, #8
	strb r0, [r6, #0xa]
	adds r0, r6, #0
	bl sub_805423C
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08069890: .4byte gDispCnt
_08069894: .4byte gBgCntRegs
_08069898: .4byte 0x00001D03
_0806989C: .4byte gBgScrollRegs
_080698A0: .4byte Task_80698F4
_080698A4: .4byte 0x03000090
_080698A8: .4byte 0x06010000
_080698AC: .4byte gUnknown_0868B654
_080698B0: .4byte gLoadedSaveGame
_080698B4: .4byte gUnknown_0868B658
_080698B8: .4byte 0x03000020
_080698BC: .4byte 0x03000021
_080698C0: .4byte 0x03000022
_080698C4: .4byte 0x03000030
_080698C8: .4byte 0x06012000
_080698CC: .4byte 0x000002E3
_080698D0: .4byte 0x03000050
_080698D4: .4byte 0x03000051
_080698D8: .4byte 0x03000052
_080698DC: .4byte 0x03000060
_080698E0: .4byte 0x06014000
_080698E4: .4byte 0x03000080
_080698E8: .4byte 0x03000081
_080698EC: .4byte 0x03000082
_080698F0: .4byte 0x0300009C

	thumb_func_start Task_80698F4
Task_80698F4: @ 0x080698F4
	push {lr}
	ldr r0, _08069930 @ =gCurTask
	ldr r3, [r0]
	ldrh r0, [r3, #6]
	ldr r1, _08069934 @ =0x03000090
	adds r2, r0, r1
	adds r1, #0xc
	adds r0, r0, r1
	ldr r1, [r0]
	adds r1, #1
	str r1, [r0]
	movs r0, #0xc8
	lsls r0, r0, #1
	cmp r1, r0
	bls _08069944
	ldr r2, _08069938 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0806993C @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _08069940 @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	adds r0, r3, #0
	bl TaskDestroy
	bl CreateSegaLogo
	b _0806995E
	.align 2, 0
_08069930: .4byte gCurTask
_08069934: .4byte 0x03000090
_08069938: .4byte gDispCnt
_0806993C: .4byte 0x00001FFF
_08069940: .4byte gBldRegs
_08069944:
	movs r0, #0xaa
	lsls r0, r0, #1
	cmp r1, r0
	bne _08069954
	movs r0, #0
	strh r0, [r2, #6]
	movs r0, #1
	strh r0, [r2, #4]
_08069954:
	adds r0, r2, #0
	bl sub_805423C
	bl sub_8069964
_0806995E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8069964
sub_8069964: @ 0x08069964
	push {r4, r5, lr}
	ldr r0, _08069990 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	movs r4, #0
_08069974:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, r5, r0
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _08069974
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08069990: .4byte gCurTask
