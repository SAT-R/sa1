.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateStageEntitiesManager
CreateStageEntitiesManager: @ 0x08008784
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _080087A0 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _080087AC
	ldr r0, _080087A4 @ =Task_8008CEC
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _080087A8 @ =TaskDtor_8009684
	b _080087B4
	.align 2, 0
_080087A0: .4byte gGameMode
_080087A4: .4byte Task_8008CEC
_080087A8: .4byte TaskDtor_8009684
_080087AC:
	ldr r0, _08008850 @ =Task_8008CEC
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
_080087B4:
	str r1, [sp]
	movs r1, #0x14
	movs r3, #0
	bl TaskCreate
	mov r8, r0
	mov r0, r8
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r0, _08008854 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _08008868
	ldr r5, _08008858 @ =gSpritePosData_interactables
	ldr r4, _0800885C @ =gCurrentLevel
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldr r0, [r0]
	lsrs r0, r0, #8
	bl EwramMalloc
	adds r6, r0, #0
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	adds r1, r6, #0
	bl RLUnCompWram
	str r6, [r7]
	ldr r5, _08008860 @ =gSpritePosData_itemboxes
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldr r0, [r0]
	lsrs r0, r0, #8
	bl EwramMalloc
	adds r6, r0, #0
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	adds r1, r6, #0
	bl RLUnCompWram
	str r6, [r7, #4]
	ldr r5, _08008864 @ =gSpritePosData_enemies
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldr r0, [r0]
	lsrs r0, r0, #8
	bl EwramMalloc
	adds r6, r0, #0
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	adds r1, r6, #0
	bl RLUnCompWram
	str r6, [r7, #8]
	b _08008876
	.align 2, 0
_08008850: .4byte Task_8008CEC
_08008854: .4byte gGameMode
_08008858: .4byte gSpritePosData_interactables
_0800885C: .4byte gCurrentLevel
_08008860: .4byte gSpritePosData_itemboxes
_08008864: .4byte gSpritePosData_enemies
_08008868:
	ldr r6, _08008898 @ =gUnknown_0203F000
	ldr r0, _0800889C @ =gUnknown_0203300C
	ldr r0, [r0]
	adds r1, r6, #0
	bl RLUnCompWram
	str r6, [r7]
_08008876:
	ldr r1, _080088A0 @ =gCamera
	ldrh r0, [r1]
	strh r0, [r7, #0xc]
	ldrh r0, [r1, #2]
	strh r0, [r7, #0xe]
	movs r0, #1
	strb r0, [r7, #0x10]
	ldr r0, _080088A4 @ =gEntitiesManagerTask
	mov r1, r8
	str r1, [r0]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08008898: .4byte gUnknown_0203F000
_0800889C: .4byte gUnknown_0203300C
_080088A0: .4byte gCamera
_080088A4: .4byte gEntitiesManagerTask

	thumb_func_start sub_80088A8
sub_80088A8: @ 0x080088A8
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
	ldr r0, _08008CE8 @ =Task_8008CEC
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
_08008CE8: .4byte Task_8008CEC

@ SA2: Task_8008DCC
	thumb_func_start Task_8008CEC
Task_8008CEC: @ 0x08008CEC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	ldr r0, _08008D38 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08008D08
	bl _080095B4
_08008D08:
	ldr r0, _08008D3C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	str r1, [sp, #0x18]
	ldrb r0, [r1, #0x10]
	cmp r0, #0
	bne _08008DDC
	ldr r0, _08008D40 @ =gCamera
	movs r1, #0
	ldrsh r3, [r0, r1]
	ldr r4, [sp, #0x18]
	movs r5, #0xc
	ldrsh r2, [r4, r5]
	subs r1, r3, r2
	adds r6, r0, #0
	cmp r1, #0
	blt _08008D44
	cmp r1, #0xf8
	bgt _08008DDC
	b _08008D4A
	.align 2, 0
_08008D38: .4byte gStageFlags
_08008D3C: .4byte gCurTask
_08008D40: .4byte gCamera
_08008D44:
	subs r0, r2, r3
	cmp r0, #0xf8
	bgt _08008DDC
_08008D4A:
	movs r7, #2
	ldrsh r2, [r6, r7]
	ldr r1, [sp, #0x18]
	movs r3, #0xe
	ldrsh r0, [r1, r3]
	subs r1, r2, r0
	cmp r1, #0
	blt _08008D60
	cmp r1, #0xd0
	bgt _08008DDC
	b _08008D66
_08008D60:
	subs r0, r0, r2
	cmp r0, #0xd0
	bgt _08008DDC
_08008D66:
	ldr r4, [sp, #0x18]
	ldr r4, [r4]
	str r4, [sp, #0x1c]
	ldr r0, _08008DC0 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _08008D82
	ldr r5, [sp, #0x18]
	ldr r0, [r5, #8]
	adds r0, #0xc
	str r0, [sp, #0x24]
	ldr r0, [r5, #4]
	adds r0, #0xc
	str r0, [sp, #0x20]
_08008D82:
	ldr r7, [sp, #0x1c]
	adds r7, #4
	adds r1, r7, #0
	ldm r1!, {r0}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldm r1!, {r0}
	str r1, [sp, #0x1c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	ldrh r4, [r6]
	movs r2, #0
	ldrsh r1, [r6, r2]
	ldr r5, [sp, #0x18]
	ldrh r3, [r5, #0xc]
	movs r7, #0xc
	ldrsh r0, [r5, r7]
	cmp r1, r0
	ble _08008DC4
	mov r2, sp
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r0, r1, #0
	adds r1, r3, r0
	strh r1, [r2]
	mov r1, sp
	adds r0, r4, r0
	b _08008DD2
	.align 2, 0
_08008DC0: .4byte gGameMode
_08008DC4:
	mov r1, sp
	adds r0, r4, #0
	subs r0, #0x80
	strh r0, [r1]
	ldr r2, [sp, #0x18]
	ldrh r0, [r2, #0xc]
	subs r0, #0x80
_08008DD2:
	strh r0, [r1, #4]
	ldr r3, [sp, #0x18]
	ldrb r0, [r3, #0x10]
	cmp r0, #0
	beq _08008DE2
_08008DDC:
	bl sub_80088A8
	b _080095B4
_08008DE2:
	mov r1, sp
	ldrh r0, [r6, #2]
	adds r4, r0, #0
	subs r4, #0x80
	strh r4, [r1, #2]
	movs r7, #0x90
	lsls r7, r7, #1
	adds r5, r7, #0
	adds r2, r0, r5
	strh r2, [r1, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x18]
	ldrh r1, [r1, #0xe]
	mov r8, r1
	ldr r3, [sp, #0x18]
	movs r7, #0xe
	ldrsh r1, [r3, r7]
	cmp r0, r1
	ble _08008E16
	add r0, sp, #8
	mov r3, r8
	adds r1, r3, r5
	strh r1, [r0, #2]
	strh r2, [r0, #6]
	b _08008E22
_08008E16:
	add r1, sp, #8
	strh r4, [r1, #2]
	ldr r4, [sp, #0x18]
	ldrh r0, [r4, #0xe]
	subs r0, #0x80
	strh r0, [r1, #6]
_08008E22:
	add r4, sp, #8
	ldrh r1, [r6]
	adds r0, r1, #0
	subs r0, #0x80
	movs r5, #0
	mov r7, sp
	strh r0, [r7, #8]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	strh r0, [r7, #0xc]
	mov r0, sp
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	bge _08008E46
	mov r0, sp
	strh r5, [r0]
_08008E46:
	mov r0, sp
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08008E54
	mov r0, sp
	strh r5, [r0, #2]
_08008E54:
	mov r0, sp
	movs r7, #4
	ldrsh r0, [r0, r7]
	cmp r0, #0
	bge _08008E62
	mov r0, sp
	strh r5, [r0, #4]
_08008E62:
	mov r0, sp
	movs r1, #6
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _08008E70
	mov r0, sp
	strh r5, [r0, #6]
_08008E70:
	mov r0, sp
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldr r7, [sp, #0x10]
	lsls r3, r7, #8
	cmp r0, r3
	blo _08008E84
	mov r1, sp
	subs r0, r3, #1
	strh r0, [r1]
_08008E84:
	mov r0, sp
	movs r1, #2
	ldrsh r0, [r0, r1]
	ldr r7, [sp, #0x14]
	lsls r2, r7, #8
	cmp r0, r2
	blo _08008E98
	mov r1, sp
	subs r0, r2, #1
	strh r0, [r1, #2]
_08008E98:
	mov r0, sp
	movs r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, r3
	blo _08008EA8
	mov r1, sp
	subs r0, r3, #1
	strh r0, [r1, #4]
_08008EA8:
	mov r0, sp
	movs r7, #6
	ldrsh r0, [r0, r7]
	cmp r0, r2
	blo _08008EB8
	mov r1, sp
	subs r0, r2, #1
	strh r0, [r1, #6]
_08008EB8:
	mov r1, sp
	movs r7, #8
	ldrsh r0, [r1, r7]
	cmp r0, #0
	bge _08008EC4
	strh r5, [r1, #8]
_08008EC4:
	mov r1, sp
	ldrh r0, [r1, #0xa]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08008ED0
	strh r5, [r1, #0xa]
_08008ED0:
	movs r5, #4
	ldrsh r0, [r4, r5]
	cmp r0, #0
	bge _08008EDC
	movs r0, #0
	strh r0, [r4, #4]
_08008EDC:
	movs r7, #6
	ldrsh r0, [r4, r7]
	cmp r0, #0
	bge _08008EE8
	movs r0, #0
	strh r0, [r4, #6]
_08008EE8:
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, r3
	blo _08008EF4
	subs r0, r3, #1
	strh r0, [r4]
_08008EF4:
	movs r5, #2
	ldrsh r0, [r4, r5]
	cmp r0, r2
	blo _08008F00
	subs r0, r2, #1
	strh r0, [r4, #2]
_08008F00:
	movs r7, #4
	ldrsh r0, [r4, r7]
	cmp r0, r3
	blo _08008F0C
	subs r0, r3, #1
	strh r0, [r4, #4]
_08008F0C:
	movs r1, #6
	ldrsh r0, [r4, r1]
	cmp r0, r2
	blo _08008F18
	subs r0, r2, #1
	strh r0, [r4, #6]
_08008F18:
	movs r2, #0
	ldrsh r1, [r6, r2]
	ldr r3, [sp, #0x18]
	movs r4, #0xc
	ldrsh r0, [r3, r4]
	cmp r1, r0
	bne _08008F28
	b _0800926C
_08008F28:
	mov r0, sp
	mov r1, sp
	movs r5, #0
	ldrsh r2, [r0, r5]
	movs r7, #4
	ldrsh r0, [r1, r7]
	cmp r2, r0
	bne _08008F3A
	b _0800926C
_08008F3A:
	mov r0, sp
	mov r2, sp
	ldrh r0, [r0, #2]
	lsls r3, r0, #0x10
	asrs r1, r3, #0x10
	movs r4, #6
	ldrsh r0, [r2, r4]
	cmp r1, r0
	bne _08008F4E
	b _0800926C
_08008F4E:
	asrs r0, r3, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r1, r0, #8
	mov r0, sp
	movs r5, #6
	ldrsh r0, [r0, r5]
	cmp r1, r0
	blt _08008F64
	b _0800926C
_08008F64:
	ldr r7, [sp, #0x14]
	cmp sb, r7
	blo _08008F6C
	b _0800926C
_08008F6C:
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
	str r3, [sp, #0x2c]
	cmp r1, r0
	blt _08008F8E
	b _08009250
_08008F8E:
	ldr r4, [sp, #0x10]
	cmp r8, r4
	blo _08008F96
	b _08009250
_08008F96:
	mov r7, sp
_08008F98:
	ldr r0, _08008FD0 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _08008FA2
	b _0800918C
_08008FA2:
	ldr r5, [sp, #0x10]
	mov r0, sb
	muls r0, r5, r0
	mov r1, r8
	lsls r2, r1, #2
	lsls r1, r0, #2
	ldr r3, [sp, #0x1c]
	adds r1, r1, r3
	adds r1, r2, r1
	ldr r6, [r1]
	mov sl, r0
	str r2, [sp, #0x30]
	mov r4, r8
	adds r4, #1
	str r4, [sp, #0x28]
	cmp r6, #0
	beq _0800904A
	adds r0, r6, #0
	subs r0, #8
	adds r5, r3, r0
	movs r6, #0
	b _0800903C
	.align 2, 0
_08008FD0: .4byte gGameMode
_08008FD4:
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	movs r3, #2
	rsbs r3, r3, #0
	cmp r0, r3
	blt _08009038
	ldrb r2, [r5]
	lsls r2, r2, #3
	mov r4, r8
	lsls r0, r4, #8
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
	movs r4, #0
	ldrsh r0, [r7, r4]
	cmp r2, r0
	blt _08009038
	movs r3, #4
	ldrsh r0, [r7, r3]
	cmp r2, r0
	bgt _08009038
	ldrh r0, [r7, #2]
	lsls r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r2, r1, #0x10
	cmp r1, r0
	blt _08009038
	movs r4, #6
	ldrsh r0, [r7, r4]
	cmp r2, r0
	bgt _08009038
	ldr r1, _08009184 @ =gSpriteInits_Interactables
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
_08009038:
	adds r5, #7
	adds r6, #1
_0800903C:
	ldrb r1, [r5]
	movs r0, #0
	ldrsb r0, [r5, r0]
	movs r2, #1
	rsbs r2, r2, #0
	cmp r0, r2
	bne _08008FD4
_0800904A:
	mov r3, sl
	lsls r0, r3, #2
	ldr r4, [sp, #0x20]
	adds r0, r0, r4
	ldr r5, [sp, #0x30]
	adds r0, r5, r0
	ldr r6, [r0]
	cmp r6, #0
	beq _080090DE
	adds r0, r6, #0
	subs r0, #8
	adds r4, r4, r0
	movs r6, #0
	ldrb r1, [r4]
	movs r0, #0
	ldrsb r0, [r4, r0]
	movs r2, #1
	rsbs r2, r2, #0
	cmp r0, r2
	beq _080090DE
	movs r5, #2
	rsbs r5, r5, #0
_08009076:
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, r5
	blt _080090CC
	ldrb r2, [r4]
	lsls r2, r2, #3
	mov r3, r8
	lsls r0, r3, #8
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
	blt _080090CC
	movs r3, #4
	ldrsh r0, [r7, r3]
	cmp r2, r0
	bgt _080090CC
	ldrh r0, [r7, #2]
	lsls r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r2, r1, #0x10
	cmp r1, r0
	blt _080090CC
	movs r1, #6
	ldrsh r0, [r7, r1]
	cmp r2, r0
	bgt _080090CC
	lsls r3, r6, #0x18
	lsrs r3, r3, #0x18
	adds r0, r4, #0
	mov r1, r8
	mov r2, sb
	bl CreateEntity_ItemBox
_080090CC:
	adds r4, #3
	adds r6, #1
	ldrb r1, [r4]
	movs r0, #0
	ldrsb r0, [r4, r0]
	movs r2, #1
	rsbs r2, r2, #0
	cmp r0, r2
	bne _08009076
_080090DE:
	mov r3, sl
	lsls r0, r3, #2
	ldr r4, [sp, #0x24]
	adds r0, r0, r4
	ldr r5, [sp, #0x30]
	adds r0, r5, r0
	ldr r6, [r0]
	cmp r6, #0
	bne _080090F2
	b _08009236
_080090F2:
	adds r0, r6, #0
	subs r0, #8
	adds r5, r4, r0
	movs r6, #0
	ldrb r1, [r5]
	movs r0, #0
	ldrsb r0, [r5, r0]
	movs r2, #1
	rsbs r2, r2, #0
	cmp r0, r2
	bne _0800910A
	b _08009236
_0800910A:
	movs r3, #2
	rsbs r3, r3, #0
	mov sl, r3
_08009110:
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, sl
	blt _08009170
	ldrb r2, [r5]
	lsls r2, r2, #3
	mov r4, r8
	lsls r0, r4, #8
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
	movs r4, #0
	ldrsh r0, [r7, r4]
	cmp r2, r0
	blt _08009170
	movs r3, #4
	ldrsh r0, [r7, r3]
	cmp r2, r0
	bgt _08009170
	ldrh r0, [r7, #2]
	lsls r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r2, r1, #0x10
	cmp r1, r0
	blt _08009170
	movs r4, #6
	ldrsh r0, [r7, r4]
	cmp r2, r0
	bgt _08009170
	ldr r1, _08009188 @ =gSpriteInits_Enemies
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
_08009170:
	adds r5, #7
	adds r6, #1
	ldrb r1, [r5]
	movs r0, #0
	ldrsb r0, [r5, r0]
	movs r2, #1
	rsbs r2, r2, #0
	cmp r0, r2
	bne _08009110
	b _08009236
	.align 2, 0
_08009184: .4byte gSpriteInits_Interactables
_08009188: .4byte gSpriteInits_Enemies
_0800918C:
	ldr r3, [sp, #0x10]
	mov r0, sb
	muls r0, r3, r0
	mov r4, r8
	lsls r1, r4, #2
	lsls r0, r0, #2
	ldr r5, [sp, #0x1c]
	adds r0, r0, r5
	adds r1, r1, r0
	ldr r6, [r1]
	adds r4, #1
	str r4, [sp, #0x28]
	cmp r6, #0
	beq _08009236
	adds r0, r6, #0
	subs r0, #8
	adds r5, r5, r0
	movs r6, #0
	ldrb r1, [r5]
	movs r0, #0
	ldrsb r0, [r5, r0]
	movs r2, #1
	rsbs r2, r2, #0
	cmp r0, r2
	beq _08009236
	movs r3, #2
	rsbs r3, r3, #0
	mov sl, r3
_080091C4:
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, sl
	blt _08009224
	ldrb r2, [r5]
	lsls r2, r2, #3
	mov r4, r8
	lsls r0, r4, #8
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
	movs r4, #0
	ldrsh r0, [r7, r4]
	cmp r2, r0
	blt _08009224
	movs r3, #4
	ldrsh r0, [r7, r3]
	cmp r2, r0
	bgt _08009224
	ldrh r0, [r7, #2]
	lsls r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r2, r1, #0x10
	cmp r1, r0
	blt _08009224
	movs r4, #6
	ldrsh r0, [r7, r4]
	cmp r2, r0
	bgt _08009224
	ldr r1, _0800931C @ =gSpriteInits_InteractablesMultiplayer
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
_08009224:
	adds r5, #7
	adds r6, #1
	ldrb r1, [r5]
	movs r0, #0
	ldrsb r0, [r5, r0]
	movs r2, #1
	rsbs r2, r2, #0
	cmp r0, r2
	bne _080091C4
_08009236:
	ldr r3, [sp, #0x28]
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r0, #8
	movs r4, #4
	ldrsh r0, [r7, r4]
	cmp r1, r0
	bge _08009250
	ldr r5, [sp, #0x10]
	cmp r8, r5
	bhs _08009250
	b _08008F98
_08009250:
	ldr r7, [sp, #0x2c]
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r1, r0, #8
	mov r0, sp
	movs r2, #6
	ldrsh r0, [r0, r2]
	cmp r1, r0
	bge _0800926C
	ldr r3, [sp, #0x14]
	cmp sb, r3
	bhs _0800926C
	b _08008F6C
_0800926C:
	ldr r0, _08009320 @ =gCamera
	movs r4, #2
	ldrsh r1, [r0, r4]
	ldr r5, [sp, #0x18]
	movs r7, #0xe
	ldrsh r0, [r5, r7]
	cmp r1, r0
	bne _0800927E
	b _080095A8
_0800927E:
	mov r1, sp
	ldrh r0, [r1, #0xa]
	lsls r2, r0, #0x10
	asrs r1, r2, #0x10
	mov r3, sp
	movs r4, #0xe
	ldrsh r0, [r3, r4]
	cmp r1, r0
	bne _08009292
	b _080095A8
_08009292:
	movs r5, #8
	ldrsh r1, [r3, r5]
	movs r7, #0xc
	ldrsh r0, [r3, r7]
	cmp r1, r0
	bne _080092A0
	b _080095A8
_080092A0:
	asrs r0, r2, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r1, r0, #8
	movs r2, #0xe
	ldrsh r0, [r3, r2]
	cmp r1, r0
	blt _080092B4
	b _080095A8
_080092B4:
	ldr r3, [sp, #0x14]
	cmp sb, r3
	blo _080092BC
	b _080095A8
_080092BC:
	mov r4, sp
	ldrh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r0, #8
	movs r5, #0xc
	ldrsh r0, [r4, r5]
	mov r7, sb
	adds r7, #1
	str r7, [sp, #0x2c]
	cmp r1, r0
	blt _080092DC
	b _0800958C
_080092DC:
	ldr r0, [sp, #0x10]
	cmp r8, r0
	blo _080092E4
	b _0800958C
_080092E4:
	movs r7, #1
	rsbs r7, r7, #0
_080092E8:
	ldr r0, _08009324 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _080092F2
	b _080094CC
_080092F2:
	ldr r1, [sp, #0x10]
	mov r0, sb
	muls r0, r1, r0
	mov r3, r8
	lsls r2, r3, #2
	lsls r1, r0, #2
	ldr r4, [sp, #0x1c]
	adds r1, r1, r4
	adds r1, r2, r1
	ldr r6, [r1]
	mov sl, r0
	str r2, [sp, #0x30]
	adds r3, #1
	str r3, [sp, #0x28]
	cmp r6, #0
	beq _0800939C
	adds r0, r6, #0
	subs r0, #8
	adds r5, r4, r0
	movs r6, #0
	b _08009392
	.align 2, 0
_0800931C: .4byte gSpriteInits_InteractablesMultiplayer
_08009320: .4byte gCamera
_08009324: .4byte gGameMode
_08009328:
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	movs r1, #2
	rsbs r1, r1, #0
	cmp r0, r1
	blt _0800938E
	ldrb r2, [r5]
	lsls r2, r2, #3
	mov r3, r8
	lsls r0, r3, #8
	adds r2, r2, r0
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	mov r4, sb
	lsls r1, r4, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r3, sp
	movs r4, #8
	ldrsh r0, [r3, r4]
	cmp r2, r0
	blt _0800938E
	movs r4, #0xc
	ldrsh r0, [r3, r4]
	cmp r2, r0
	bgt _0800938E
	ldrh r0, [r3, #0xa]
	lsls r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r2, r1, #0x10
	cmp r1, r0
	blt _0800938E
	movs r1, #0xe
	ldrsh r0, [r3, r1]
	cmp r2, r0
	bgt _0800938E
	ldr r1, _080093B8 @ =gSpriteInits_Interactables
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
_0800938E:
	adds r5, #7
	adds r6, #1
_08009392:
	ldrb r1, [r5]
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, r7
	bne _08009328
_0800939C:
	mov r2, sl
	lsls r0, r2, #2
	ldr r3, [sp, #0x20]
	adds r0, r0, r3
	ldr r4, [sp, #0x30]
	adds r0, r4, r0
	ldr r6, [r0]
	cmp r6, #0
	beq _08009426
	adds r0, r6, #0
	subs r0, #8
	adds r4, r3, r0
	movs r6, #0
	b _0800941C
	.align 2, 0
_080093B8: .4byte gSpriteInits_Interactables
_080093BC:
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	movs r5, #2
	rsbs r5, r5, #0
	cmp r0, r5
	blt _08009418
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
	mov r5, sp
	movs r3, #8
	ldrsh r0, [r5, r3]
	cmp r2, r0
	blt _08009418
	movs r3, #0xc
	ldrsh r0, [r5, r3]
	cmp r2, r0
	bgt _08009418
	ldrh r0, [r5, #0xa]
	lsls r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r2, r1, #0x10
	cmp r1, r0
	blt _08009418
	movs r1, #0xe
	ldrsh r0, [r5, r1]
	cmp r2, r0
	bgt _08009418
	lsls r3, r6, #0x18
	lsrs r3, r3, #0x18
	adds r0, r4, #0
	mov r1, r8
	mov r2, sb
	bl CreateEntity_ItemBox
_08009418:
	adds r4, #3
	adds r6, #1
_0800941C:
	ldrb r1, [r4]
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, r7
	bne _080093BC
_08009426:
	mov r2, sl
	lsls r0, r2, #2
	ldr r3, [sp, #0x24]
	adds r0, r0, r3
	ldr r4, [sp, #0x30]
	adds r0, r4, r0
	ldr r6, [r0]
	cmp r6, #0
	bne _0800943A
	b _08009570
_0800943A:
	adds r0, r6, #0
	subs r0, #8
	adds r5, r3, r0
	movs r6, #0
	ldrb r1, [r5]
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, r7
	bne _0800944E
	b _08009570
_0800944E:
	movs r0, #2
	rsbs r0, r0, #0
	mov sl, r0
_08009454:
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, sl
	blt _080094B6
	ldrb r2, [r5]
	lsls r2, r2, #3
	mov r1, r8
	lsls r0, r1, #8
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
	mov r4, sp
	movs r3, #8
	ldrsh r0, [r4, r3]
	cmp r2, r0
	blt _080094B6
	movs r3, #0xc
	ldrsh r0, [r4, r3]
	cmp r2, r0
	bgt _080094B6
	ldrh r0, [r4, #0xa]
	lsls r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r2, r1, #0x10
	cmp r1, r0
	blt _080094B6
	movs r1, #0xe
	ldrsh r0, [r4, r1]
	cmp r2, r0
	bgt _080094B6
	ldr r1, _080094C8 @ =gSpriteInits_Enemies
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
_080094B6:
	adds r5, #7
	adds r6, #1
	ldrb r1, [r5]
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, r7
	bne _08009454
	b _08009570
	.align 2, 0
_080094C8: .4byte gSpriteInits_Enemies
_080094CC:
	ldr r2, [sp, #0x10]
	mov r0, sb
	muls r0, r2, r0
	mov r3, r8
	lsls r1, r3, #2
	lsls r0, r0, #2
	ldr r4, [sp, #0x1c]
	adds r0, r0, r4
	adds r1, r1, r0
	ldr r6, [r1]
	adds r3, #1
	str r3, [sp, #0x28]
	cmp r6, #0
	beq _08009570
	adds r0, r6, #0
	subs r0, #8
	adds r5, r4, r0
	movs r6, #0
	ldrb r1, [r5]
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, r7
	beq _08009570
	movs r0, #2
	rsbs r0, r0, #0
	mov sl, r0
_08009500:
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, sl
	blt _08009562
	ldrb r2, [r5]
	lsls r2, r2, #3
	mov r1, r8
	lsls r0, r1, #8
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
	mov r4, sp
	movs r3, #8
	ldrsh r0, [r4, r3]
	cmp r2, r0
	blt _08009562
	movs r3, #0xc
	ldrsh r0, [r4, r3]
	cmp r2, r0
	bgt _08009562
	ldrh r0, [r4, #0xa]
	lsls r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r2, r1, #0x10
	cmp r1, r0
	blt _08009562
	movs r1, #0xe
	ldrsh r0, [r4, r1]
	cmp r2, r0
	bgt _08009562
	ldr r1, _080095C4 @ =gSpriteInits_InteractablesMultiplayer
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
_08009562:
	adds r5, #7
	adds r6, #1
	ldrb r1, [r5]
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, r7
	bne _08009500
_08009570:
	ldr r2, [sp, #0x28]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r0, #8
	mov r3, sp
	movs r4, #0xc
	ldrsh r0, [r3, r4]
	cmp r1, r0
	bge _0800958C
	ldr r5, [sp, #0x10]
	cmp r8, r5
	bhs _0800958C
	b _080092E8
_0800958C:
	ldr r7, [sp, #0x2c]
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r1, r0, #8
	mov r2, sp
	movs r3, #0xe
	ldrsh r0, [r2, r3]
	cmp r1, r0
	bge _080095A8
	ldr r4, [sp, #0x14]
	cmp sb, r4
	bhs _080095A8
	b _080092BC
_080095A8:
	ldr r0, _080095C8 @ =gCamera
	ldrh r1, [r0]
	ldr r5, [sp, #0x18]
	strh r1, [r5, #0xc]
	ldrh r0, [r0, #2]
	strh r0, [r5, #0xe]
_080095B4:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080095C4: .4byte gSpriteInits_InteractablesMultiplayer
_080095C8: .4byte gCamera

	thumb_func_start CreateEnemyDefeatScoreAndManageLives
CreateEnemyDefeatScoreAndManageLives: @ 0x080095CC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	movs r0, #0x8a @ SE_ITEM_BOX?
	bl m4aSongNumStart
	ldr r2, _08009654 @ =gLevelScore
	ldr r6, [r2]
	ldr r1, _08009658 @ =enemyDefeatScores
	ldr r0, _0800965C @ =gPlayer
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, r6, r0
	str r0, [r2]
	ldr r4, _08009660 @ =0x0000C350
	adds r1, r4, #0
	bl Div
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl Div
	cmp r5, r0
	beq _08009628
	ldr r0, _08009664 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _08009628
	ldr r1, _08009668 @ =gNumLives
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _0800966C @ =gMusicManagerState
	movs r0, #0x10
	strb r0, [r1, #3]
_08009628:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	bl sub_8012728
	ldr r0, _0800965C @ =gPlayer
	adds r1, r0, #0
	adds r1, #0x58
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #3
	bgt _0800964A
	adds r0, r2, #1
	strb r0, [r1]
_0800964A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08009654: .4byte gLevelScore
_08009658: .4byte enemyDefeatScores
_0800965C: .4byte gPlayer
_08009660: .4byte 0x0000C350
_08009664: .4byte gGameMode
_08009668: .4byte gNumLives
_0800966C: .4byte gMusicManagerState

	thumb_func_start TaskDestructor_8009670
TaskDestructor_8009670: @ 0x08009670
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

@ SA2: sub_80095FC
	thumb_func_start TaskDtor_8009684
TaskDtor_8009684: @ 0x08009684
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4]
	bl EwramFree
	ldr r0, [r4, #4]
	bl EwramFree
	ldr r0, [r4, #8]
	bl EwramFree
	ldr r1, _080096AC @ =gEntitiesManagerTask
	movs r0, #0
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080096AC: .4byte gEntitiesManagerTask
