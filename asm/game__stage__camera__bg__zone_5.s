.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start StageBgUpdate_Zone5Acts12
StageBgUpdate_Zone5Acts12: @ 0x0803F8C0
	push {r4, lr}
	ldr r2, _0803F904 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _0803F908 @ =gBldRegs
	movs r3, #0
	ldr r0, _0803F90C @ =0x00003F41
	strh r0, [r2]
	ldr r0, _0803F910 @ =0x0000100C
	strh r0, [r2, #2]
	ldr r4, _0803F914 @ =gStageBackgroundsRam 
	ldr r2, _0803F918 @ =gBgScrollRegs
	ldr r0, _0803F91C @ =gStageTime
	ldr r0, [r0]
	lsrs r0, r0, #2
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	strh r1, [r2]
	strh r3, [r2, #2]
	adds r0, r4, #0
	bl DrawBackground
	adds r0, r4, #0
	bl UpdateBgAnimationTiles
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803F904: .4byte gDispCnt
_0803F908: .4byte gBldRegs
_0803F90C: .4byte 0x00003F41
_0803F910: .4byte 0x0000100C
_0803F914: .4byte gStageBackgroundsRam 
_0803F918: .4byte gBgScrollRegs
_0803F91C: .4byte gStageTime
