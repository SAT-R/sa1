.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateStageBg_Zone5
CreateStageBg_Zone5: @ 0x0803F770
	push {r4, lr}
	ldr r4, _0803F798 @ =gStageBackgroundsRam 
	ldr r1, _0803F79C @ =gBgCntRegs
	ldr r0, _0803F7A0 @ =0x00001C0F
	strh r0, [r1]
	ldr r1, _0803F7A4 @ =gStageCameraBgTemplates 
	adds r1, #0xc0
	adds r0, r4, #0
	movs r2, #0x40
	bl memcpy
	movs r0, #0x48
	strh r0, [r4, #0x1c]
	adds r0, r4, #0
	bl DrawBackground
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803F798: .4byte gStageBackgroundsRam 
_0803F79C: .4byte gBgCntRegs
_0803F7A0: .4byte 0x00001C0F
_0803F7A4: .4byte gStageCameraBgTemplates 
