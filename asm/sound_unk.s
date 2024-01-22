.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_80257A0
sub_80257A0: @ 0x080257A0
	push {r4, r5, r6, r7, lr}
	ldr r7, _0802581C @ =gCurTask
	ldr r0, [r7]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r6, [r4]
	ldr r1, [r6, #4]
	cmp r1, #0
	blt _080257BE
	ldr r0, _08025820 @ =0x0000FFFF
	ands r1, r0
	cmp r1, #0
	bne _08025870
_080257BE:
	ldr r3, _08025824 @ =gMPlayTable
	ldr r5, _08025828 @ =gSongTable
	ldrh r2, [r4, #8]
	lsls r2, r2, #3
	adds r2, r2, r5
	ldrh r1, [r2, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r0, [r2]
	cmp r1, r0
	bne _08025870
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r2, [r4, #4]
	cmp r2, r0
	bne _08025830
	ldr r0, _0802582C @ =gPlayer
	adds r0, #0x26
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08025830
	adds r0, r6, #0
	adds r1, r2, #0
	bl MPlayStart
	ldr r0, [r4]
	bl m4aMPlayImmInit
	ldr r0, [r4]
	movs r1, #0xff
	movs r2, #4
	bl m4aMPlayVolumeControl
	ldr r0, [r4]
	bl MPlayStop
	ldr r0, [r7]
	bl TaskDestroy
	b _08025870
	.align 2, 0
_0802581C: .4byte gCurTask
_08025820: .4byte 0x0000FFFF
_08025824: .4byte gMPlayTable
_08025828: .4byte gSongTable
_0802582C: .4byte gPlayer
_08025830:
	ldr r0, [r4]
	adds r1, r2, #0
	bl MPlayStart
	ldr r0, [r4]
	bl m4aMPlayImmInit
	ldr r0, _08025878 @ =gPlayer
	adds r0, #0x26
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08025856
	ldr r0, _0802587C @ =gMPlayInfo_BGM
	movs r1, #0x80
	lsls r1, r1, #2
	bl m4aMPlayTempoControl
_08025856:
	ldr r0, [r4]
	movs r1, #0xff
	movs r2, #4
	bl m4aMPlayVolumeControl
	ldr r0, [r4]
	movs r1, #4
	bl m4aMPlayFadeIn
	ldr r0, _08025880 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08025870:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025878: .4byte gPlayer
_0802587C: .4byte gMPlayInfo_BGM
_08025880: .4byte gCurTask

	thumb_func_start sub_8025884
sub_8025884: @ 0x08025884
	ldr r0, _08025890 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08025894 @ =sub_80257A0
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_08025890: .4byte gCurTask
_08025894: .4byte sub_80257A0

	thumb_func_start sub_8025898
sub_8025898: @ 0x08025898
	ldr r0, _080258A4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080258A8 @ =sub_80258AC
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_080258A4: .4byte gCurTask
_080258A8: .4byte sub_80258AC

	thumb_func_start sub_80258AC
sub_80258AC: @ 0x080258AC
	push {r4, r5, lr}
	ldr r5, _0802590C @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4]
	ldr r1, [r0, #4]
	cmp r1, #0
	blt _080258CA
	ldr r0, _08025910 @ =0x0000FFFF
	ands r1, r0
	cmp r1, #0
	bne _08025904
_080258CA:
	ldrh r0, [r4, #0xa]
	bl m4aSongNumStartOrContinue
	ldr r2, _08025914 @ =gMPlayTable
	ldr r1, _08025918 @ =gSongTable
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r4, [r0]
	adds r0, r4, #0
	movs r1, #0xff
	movs r2, #4
	bl m4aMPlayVolumeControl
	adds r0, r4, #0
	movs r1, #4
	bl m4aMPlayFadeIn
	ldr r0, [r5]
	bl TaskDestroy
	ldr r1, _0802591C @ =gUnknown_03005730
	movs r0, #0
	strb r0, [r1]
_08025904:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802590C: .4byte gCurTask
_08025910: .4byte 0x0000FFFF
_08025914: .4byte gMPlayTable
_08025918: .4byte gSongTable
_0802591C: .4byte gUnknown_03005730

	thumb_func_start sub_8025920
sub_8025920: @ 0x08025920
	push {r4, r5, r6, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r3, _08025974 @ =gMPlayTable
	ldr r0, _08025978 @ =gSongTable
	lsls r2, r4, #3
	adds r2, r2, r0
	ldrh r1, [r2, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r5, [r0]
	ldr r6, [r5]
	ldr r0, [r2]
	cmp r6, r0
	beq _0802596A
	ldr r0, _0802597C @ =sub_8025884
	movs r2, #0xc0
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r5, [r0]
	str r6, [r0, #4]
	strh r4, [r0, #8]
	adds r0, r4, #0
	bl m4aSongNumStart
_0802596A:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08025974: .4byte gMPlayTable
_08025978: .4byte gSongTable
_0802597C: .4byte sub_8025884

	thumb_func_start sub_8025980
sub_8025980: @ 0x08025980
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r0, _080259D8 @ =gMPlayTable
	ldr r4, [r0, #0x24]
	ldr r5, [r4]
	ldr r1, _080259DC @ =gSongTable
	lsls r0, r6, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r5, r0
	beq _080259CE
	ldr r0, _080259E0 @ =sub_8025898
	movs r2, #0xc0
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r4, [r0]
	str r5, [r0, #4]
	strh r6, [r0, #8]
	strh r7, [r0, #0xa]
	ldr r1, _080259E4 @ =gUnknown_03005730
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _080259E8 @ =gMPlayInfo_SE3
	ldr r1, _080259EC @ =song043
	bl MPlayStart
_080259CE:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080259D8: .4byte gMPlayTable
_080259DC: .4byte gSongTable
_080259E0: .4byte sub_8025898
_080259E4: .4byte gUnknown_03005730
_080259E8: .4byte gMPlayInfo_SE3
_080259EC: .4byte song043
