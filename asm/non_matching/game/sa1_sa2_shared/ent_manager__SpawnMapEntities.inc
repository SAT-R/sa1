.include "constants/constants.inc"

.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	ldr r0, _08008A30 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _080088C6
	b _08008CCA
_080088C6:
	ldr r0, _08008A34 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	str r1, [sp, #0x10]
	ldr r0, [r1]
	str r0, [sp, #0x14]
	ldr r0, _08008A38 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _080088EC
	ldr r0, [r1, #8]
	adds r0, #0xc
	str r0, [sp, #0x1c]
	ldr r0, [r1, #4]
	adds r0, #0xc
	str r0, [sp, #0x18]
_080088EC:
	ldr r1, [sp, #0x14]
	adds r1, #4
	ldm r1!, {r0}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldm r1!, {r0}
	str r1, [sp, #0x14]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	mov r1, sp
	ldr r2, _08008A3C @ =gCamera
	ldrh r3, [r2]
	adds r0, r3, #0
	subs r0, #0x80
	strh r0, [r1]
	movs r5, #0xb8
	lsls r5, r5, #1
	adds r0, r3, r5
	strh r0, [r1, #4]
	ldrh r2, [r2, #2]
	adds r0, r2, #0
	subs r0, #0x80
	strh r0, [r1, #2]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r2, r3
	strh r0, [r1, #6]
	mov r0, sp
	movs r5, #0
	ldrsh r0, [r0, r5]
	cmp r0, #0
	bge _08008934
	mov r0, sp
	strh r4, [r0]
_08008934:
	mov r0, sp
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08008942
	mov r0, sp
	strh r4, [r0, #2]
_08008942:
	mov r0, sp
	movs r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _08008950
	mov r0, sp
	strh r4, [r0, #4]
_08008950:
	mov r0, sp
	movs r2, #6
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bge _0800895E
	mov r0, sp
	strh r4, [r0, #6]
_0800895E:
	mov r0, sp
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r5, [sp, #8]
	lsls r3, r5, #8
	cmp r0, r3
	blo _08008972
	mov r1, sp
	subs r0, r3, #1
	strh r0, [r1]
_08008972:
	mov r0, sp
	movs r1, #2
	ldrsh r0, [r0, r1]
	ldr r5, [sp, #0xc]
	lsls r2, r5, #8
	cmp r0, r2
	blo _08008986
	mov r1, sp
	subs r0, r2, #1
	strh r0, [r1, #2]
_08008986:
	mov r0, sp
	movs r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, r3
	blo _08008996
	mov r1, sp
	subs r0, r3, #1
	strh r0, [r1, #4]
_08008996:
	mov r0, sp
	movs r3, #6
	ldrsh r0, [r0, r3]
	cmp r0, r2
	blo _080089A6
	mov r1, sp
	subs r0, r2, #1
	strh r0, [r1, #6]
_080089A6:
	mov r0, sp
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r1, r0, #8
	mov r0, sp
	movs r5, #6
	ldrsh r0, [r0, r5]
	cmp r1, r0
	blt _080089C2
	b _08008CB2
_080089C2:
	ldr r0, [sp, #0xc]
	cmp sb, r0
	blo _080089CA
	b _08008CB2
_080089CA:
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r0, #8
	mov r0, sp
	movs r2, #4
	ldrsh r0, [r0, r2]
	mov r3, sb
	adds r3, #1
	str r3, [sp, #0x24]
	cmp r1, r0
	blt _080089EC
	b _08008C96
_080089EC:
	ldr r5, [sp, #8]
	cmp r8, r5
	blo _080089F4
	b _08008C96
_080089F4:
	movs r0, #1
	rsbs r0, r0, #0
	mov sl, r0
	mov r7, sp
_080089FC:
	ldr r0, _08008A38 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _08008A06
	b _08008BE4
_08008A06:
	ldr r1, [sp, #8]
	mov r0, sb
	muls r0, r1, r0
	mov r3, r8
	lsls r2, r3, #2
	lsls r1, r0, #2
	ldr r5, [sp, #0x14]
	adds r1, r1, r5
	adds r1, r2, r1
	ldr r6, [r1]
	str r0, [sp, #0x2c]
	str r2, [sp, #0x28]
	adds r3, #1
	str r3, [sp, #0x20]
	cmp r6, #0
	beq _08008AB2
	adds r0, r6, #0
	subs r0, #8
	adds r5, r5, r0
	movs r6, #0
	b _08008AA8
	.align 2, 0
_08008A30: .4byte gStageFlags
_08008A34: .4byte gCurTask
_08008A38: .4byte gGameMode
_08008A3C: .4byte gCamera
_08008A40:
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	movs r1, #2
	rsbs r1, r1, #0
	cmp r0, r1
	blt _08008AA4
	ldrb r2, [r5]
	lsls r2, r2, #3
	mov r3, r8
	lsls r0, r3, #8
	adds r2, r2, r0
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	mov r3, sb
	lsls r1, r3, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r3, #0
	ldrsh r0, [r7, r3]
	cmp r2, r0
	blt _08008AA4
	movs r3, #4
	ldrsh r0, [r7, r3]
	cmp r2, r0
	bgt _08008AA4
	ldrh r0, [r7, #2]
	lsls r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r2, r1, #0x10
	cmp r1, r0
	blt _08008AA4
	movs r1, #6
	ldrsh r0, [r7, r1]
	cmp r2, r0
	bgt _08008AA4
	ldr r1, _08008BDC @ =gSpriteInits_Interactables
	ldrb r0, [r5, #2]
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r3, r6, #0x18
	lsrs r3, r3, #0x18
	ldr r4, [r0]
	adds r0, r5, #0
	mov r1, r8
	mov r2, sb
	bl _call_via_r4
_08008AA4:
	adds r5, #7
	adds r6, #1
_08008AA8:
	ldrb r1, [r5]
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, sl
	bne _08008A40
_08008AB2:
	ldr r2, [sp, #0x2c]
	lsls r0, r2, #2
	ldr r3, [sp, #0x18]
	adds r0, r0, r3
	ldr r5, [sp, #0x28]
	adds r0, r5, r0
	ldr r6, [r0]
	cmp r6, #0
	beq _08008B3E
	adds r0, r6, #0
	subs r0, #8
	adds r4, r3, r0
	movs r6, #0
	ldrb r1, [r4]
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, sl
	beq _08008B3E
	movs r5, #2
	rsbs r5, r5, #0
_08008ADA:
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, r5
	blt _08008B30
	ldrb r2, [r4]
	lsls r2, r2, #3
	mov r1, r8
	lsls r0, r1, #8
	adds r2, r2, r0
	ldrb r0, [r4, #1]
	lsls r0, r0, #3
	mov r3, sb
	lsls r1, r3, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r3, #0
	ldrsh r0, [r7, r3]
	cmp r2, r0
	blt _08008B30
	movs r3, #4
	ldrsh r0, [r7, r3]
	cmp r2, r0
	bgt _08008B30
	ldrh r0, [r7, #2]
	lsls r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r2, r1, #0x10
	cmp r1, r0
	blt _08008B30
	movs r1, #6
	ldrsh r0, [r7, r1]
	cmp r2, r0
	bgt _08008B30
	lsls r3, r6, #0x18
	lsrs r3, r3, #0x18
	adds r0, r4, #0
	mov r1, r8
	mov r2, sb
	bl CreateEntity_ItemBox
_08008B30:
	adds r4, #3
	adds r6, #1
	ldrb r1, [r4]
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, sl
	bne _08008ADA
_08008B3E:
	ldr r2, [sp, #0x2c]
	lsls r0, r2, #2
	ldr r3, [sp, #0x1c]
	adds r0, r0, r3
	ldr r5, [sp, #0x28]
	adds r0, r5, r0
	ldr r6, [r0]
	cmp r6, #0
	bne _08008B52
	b _08008C7C
_08008B52:
	adds r0, r6, #0
	subs r0, #8
	adds r5, r3, r0
	movs r6, #0
	ldrb r1, [r5]
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, sl
	bne _08008B66
	b _08008C7C
_08008B66:
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	movs r1, #2
	rsbs r1, r1, #0
	cmp r0, r1
	blt _08008BCA
	ldrb r2, [r5]
	lsls r2, r2, #3
	mov r3, r8
	lsls r0, r3, #8
	adds r2, r2, r0
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	mov r3, sb
	lsls r1, r3, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r3, #0
	ldrsh r0, [r7, r3]
	cmp r2, r0
	blt _08008BCA
	movs r3, #4
	ldrsh r0, [r7, r3]
	cmp r2, r0
	bgt _08008BCA
	ldrh r0, [r7, #2]
	lsls r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r2, r1, #0x10
	cmp r1, r0
	blt _08008BCA
	movs r1, #6
	ldrsh r0, [r7, r1]
	cmp r2, r0
	bgt _08008BCA
	ldr r1, _08008BE0 @ =gSpriteInits_Enemies
	ldrb r0, [r5, #2]
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r3, r6, #0x18
	lsrs r3, r3, #0x18
	ldr r4, [r0]
	adds r0, r5, #0
	mov r1, r8
	mov r2, sb
	bl _call_via_r4
_08008BCA:
	adds r5, #7
	adds r6, #1
	ldrb r1, [r5]
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, sl
	bne _08008B66
	b _08008C7C
	.align 2, 0
_08008BDC: .4byte gSpriteInits_Interactables
_08008BE0: .4byte gSpriteInits_Enemies
_08008BE4:
	ldr r2, [sp, #8]
	mov r0, sb
	muls r0, r2, r0
	mov r3, r8
	lsls r1, r3, #2
	lsls r0, r0, #2
	ldr r5, [sp, #0x14]
	adds r0, r0, r5
	adds r1, r1, r0
	ldr r6, [r1]
	adds r3, #1
	str r3, [sp, #0x20]
	cmp r6, #0
	beq _08008C7C
	adds r0, r6, #0
	subs r0, #8
	adds r5, r5, r0
	movs r6, #0
	b _08008C72
_08008C0A:
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	movs r1, #2
	rsbs r1, r1, #0
	cmp r0, r1
	blt _08008C6E
	ldrb r2, [r5]
	lsls r2, r2, #3
	mov r3, r8
	lsls r0, r3, #8
	adds r2, r2, r0
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	mov r3, sb
	lsls r1, r3, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r3, #0
	ldrsh r0, [r7, r3]
	cmp r2, r0
	blt _08008C6E
	movs r3, #4
	ldrsh r0, [r7, r3]
	cmp r2, r0
	bgt _08008C6E
	ldrh r0, [r7, #2]
	lsls r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r2, r1, #0x10
	cmp r1, r0
	blt _08008C6E
	movs r1, #6
	ldrsh r0, [r7, r1]
	cmp r2, r0
	bgt _08008C6E
	ldr r1, _08008CDC @ =gSpriteInits_InteractablesMultiplayer
	ldrb r0, [r5, #2]
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r3, r6, #0x18
	lsrs r3, r3, #0x18
	ldr r4, [r0]
	adds r0, r5, #0
	mov r1, r8
	mov r2, sb
	bl _call_via_r4
_08008C6E:
	adds r5, #7
	adds r6, #1
_08008C72:
	ldrb r1, [r5]
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, sl
	bne _08008C0A
_08008C7C:
	ldr r2, [sp, #0x20]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r0, #8
	movs r3, #4
	ldrsh r0, [r7, r3]
	cmp r1, r0
	bge _08008C96
	ldr r5, [sp, #8]
	cmp r8, r5
	bhs _08008C96
	b _080089FC
_08008C96:
	ldr r1, [sp, #0x24]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r1, r0, #8
	mov r0, sp
	movs r2, #6
	ldrsh r0, [r0, r2]
	cmp r1, r0
	bge _08008CB2
	ldr r3, [sp, #0xc]
	cmp sb, r3
	bhs _08008CB2
	b _080089CA
_08008CB2:
	ldr r1, _08008CE0 @ =gCamera
	ldrh r0, [r1]
	movs r2, #0
	ldr r5, [sp, #0x10]
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #2]
	strh r0, [r5, #0xe]
	strb r2, [r5, #0x10]
	ldr r0, _08008CE4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08008CE8 @ =sa2__Task_8008DCC
	str r0, [r1, #8]
_08008CCA:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08008CDC: .4byte gSpriteInits_InteractablesMultiplayer
_08008CE0: .4byte gCamera
_08008CE4: .4byte gCurTask
_08008CE8: .4byte sa2__Task_8008DCC

.syntax divided
