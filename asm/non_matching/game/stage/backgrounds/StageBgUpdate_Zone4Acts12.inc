.include "constants/constants.inc"

.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0     @ r4 = x
	adds r5, r1, #0     @ r5 = y
	ldr r0, _0803EE24 @ =gCamera
	mov sb, r0          @ sb = cam
	ldr r1, _0803EE28 @ =gBldRegs
	ldr r0, _0803EE2C @ =0x00003F41
	strh r0, [r1]
	ldr r0, _0803EE30 @ =0x00001010
	strh r0, [r1, #2]
	mov r1, sb
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	subs r4, r4, r0     @ r4 = x -= cam->sa2__unk20;
	movs r2, #0x12
	ldrsh r0, [r1, r2]
	subs r5, r5, r0     @ r5 = y -= cam->sa2__unk24;
	ldr r0, _0803EE34 @ =gStageBackgroundsRam 
	mov r8, r0
	ldr r6, _0803EE38 @ =gBgScrollRegs
	asrs r0, r4, #2
	adds r0, r4, r0
	ldr r1, _0803EE3C @ =gStageTime
	ldr r2, [r1]
	lsrs r1, r2, #2
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	strh r0, [r6]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r7, r0, #0
	adds r0, r5, r7
	subs r0, r0, r2
	ands r0, r1
	strh r0, [r6, #2]
	mov r0, r8
	bl DrawBackground
	mov r0, r8
	bl UpdateBgAnimationTiles
	ldr r0, _0803EE40 @ =gRefCollision
	ldr r0, [r0]
	mov r8, r0      @ r8 = coll;
	lsls r4, r4, #4
	ldrh r1, [r0, #0x1c]
	subs r1, #0xf0
	adds r0, r4, #0
	bl Div
	mov r1, sb
	strh r0, [r1, #0x28]
	strh r0, [r6, #0xc]
	lsls r0, r5, #8
	lsls r1, r5, #6
	adds r0, r0, r1
	lsls r5, r5, #5
	adds r0, r0, r5
	mov r2, r8
	ldrh r1, [r2, #0x1e]
	subs r1, #0xa0
	bl Div
	mov r1, sb
	strh r0, [r1, #0x2a]
	strh r0, [r6, #0xe]
	ldr r0, _0803EE44 @ =gWater
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803EE50
	ldr r2, _0803EE48 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0803EE4C @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	b _0803EE58
	.align 2, 0
_0803EE24: .4byte gCamera
_0803EE28: .4byte gBldRegs
_0803EE2C: .4byte 0x00003F41
_0803EE30: .4byte 0x00001010
_0803EE34: .4byte gStageBackgroundsRam 
_0803EE38: .4byte gBgScrollRegs
_0803EE3C: .4byte gStageTime
_0803EE40: .4byte gRefCollision
_0803EE44: .4byte gWater
_0803EE48: .4byte gDispCnt
_0803EE4C: .4byte 0x0000FEFF
_0803EE50:
	ldr r1, _0803EE78 @ =gDispCnt
	ldrh r0, [r1]
	orrs r0, r7
	strh r0, [r1]
_0803EE58:
	ldr r0, _0803EE7C @ =gWater
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803EE6C
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _0803EE80 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
_0803EE6C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803EE78: .4byte gDispCnt
_0803EE7C: .4byte gWater
_0803EE80: .4byte 0x0000FEFF

.syntax divided
