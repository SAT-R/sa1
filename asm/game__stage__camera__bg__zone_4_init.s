.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateStageBg_Zone4
CreateStageBg_Zone4: @ 0x0803F714
	push {r4, lr}
	ldr r4, _0803F750 @ =gStageBackgroundsRam 
	ldr r1, _0803F754 @ =gBldRegs
	ldr r0, _0803F758 @ =0x00001010
	strh r0, [r1, #2]
	ldr r1, _0803F75C @ =gBgCntRegs
	ldr r0, _0803F760 @ =0x00001B0C
	strh r0, [r1]
	ldr r1, _0803F764 @ =gStageCameraBgTemplates 
	adds r1, #0xc0
	adds r0, r4, #0
	movs r2, #0x40
	bl memcpy
	movs r0, #0x47
	strh r0, [r4, #0x1c]
	ldr r0, _0803F768 @ =0x0600C000
	str r0, [r4, #4]
	ldr r0, _0803F76C @ =0x0600D800
	str r0, [r4, #0xc]
	movs r0, #0x20
	strh r0, [r4, #0x26]
	strh r0, [r4, #0x28]
	adds r0, r4, #0
	bl DrawBackground
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803F750: .4byte gStageBackgroundsRam 
_0803F754: .4byte gBldRegs
_0803F758: .4byte 0x00001010
_0803F75C: .4byte gBgCntRegs
_0803F760: .4byte 0x00001B0C
_0803F764: .4byte gStageCameraBgTemplates 
_0803F768: .4byte 0x0600C000
_0803F76C: .4byte 0x0600D800
