.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ Exclusively used by enemies
	thumb_func_start sa2__sub_800C4FC
sa2__sub_800C4FC: @ 0x0800B4F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r1, [r6, #0x28]
	subs r0, #1
	cmp r1, r0
	bne _0800B540
	b _0800B782
_0800B520:
	mov r1, sl
	lsls r5, r1, #0x10
	asrs r5, r5, #0x10
	ldr r2, [sp]
	lsls r4, r2, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl CreateDustCloud
	adds r0, r5, #0
	adds r1, r4, #0
	bl CreateTrappedAnimal
	movs r0, #1
	b _0800B784
_0800B540:
	ldr r0, _0800B664 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov r8, r1
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r2, [sp]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0xc]
_0800B55E:
	ldr r7, _0800B668 @ =gPlayer
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0800B568
	ldr r7, _0800B66C @ =gPartner
_0800B568:
	ldr r5, [r7, #0x64]
	movs r1, #0xc
	adds r1, r1, r5
	mov ip, r1
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800B57C
	b _0800B76E
_0800B57C:
	ldr r0, _0800B670 @ =gGameMode
	ldrb r1, [r0]
	cmp r1, #1
	bls _0800B594
	mov r2, r8
	ldr r0, [r2]
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #3
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800B520
_0800B594:
	mov r0, ip
	ldr r1, [r0, #0x30]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800B674
	adds r0, r6, #0
	adds r0, #0x2c
	movs r3, #0
	ldrsb r3, [r0, r3]
	ldr r1, [sp, #8]
	adds r2, r1, r3
	ldr r1, [r7]
	asrs r1, r1, #8
	adds r0, r5, #0
	adds r0, #0x40
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r1, r1, r4
	mov r0, sl
	lsls r0, r0, #0x10
	mov sb, r0
	cmp r2, r1
	bgt _0800B5DA
	adds r0, r6, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0800B5EC
	cmp r2, r1
	blt _0800B674
_0800B5DA:
	adds r0, r5, #0
	adds r0, #0x42
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	blt _0800B674
_0800B5EC:
	adds r0, r6, #0
	adds r0, #0x2d
	movs r3, #0
	ldrsb r3, [r0, r3]
	ldr r1, [sp, #0xc]
	adds r2, r1, r3
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	mov r1, ip
	adds r1, #0x35
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r1, r0, r4
	ldr r0, [sp]
	lsls r5, r0, #0x10
	cmp r2, r1
	bgt _0800B624
	adds r0, r6, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0800B636
	cmp r2, r1
	blt _0800B674
_0800B624:
	mov r0, ip
	adds r0, #0x37
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	blt _0800B674
_0800B636:
	ldr r1, _0800B670 @ =gGameMode
	ldrb r0, [r1]
	cmp r0, #1
	bls _0800B654
	bl CreateRoomEvent
	movs r1, #3
	strb r1, [r0]
	mov r2, r8
	ldrh r1, [r2, #4]
	strb r1, [r0, #1]
	ldrh r1, [r2, #6]
	strb r1, [r0, #2]
	ldrb r1, [r2, #9]
	strb r1, [r0, #3]
_0800B654:
	ldrh r1, [r7, #0xa]
	movs r2, #0xa
	ldrsh r0, [r7, r2]
	cmp r0, #0
	ble _0800B742
	rsbs r0, r1, #0
	strh r0, [r7, #0xa]
	b _0800B742
	.align 2, 0
_0800B664: .4byte gCurTask
_0800B668: .4byte gPlayer
_0800B66C: .4byte gPartner
_0800B670: .4byte gGameMode
_0800B674:
	mov r2, ip
	ldr r1, [r2, #0x28]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800B76E
	adds r0, r6, #0
	adds r0, #0x2c
	movs r3, #0
	ldrsb r3, [r0, r3]
	ldr r0, [sp, #8]
	adds r2, r0, r3
	ldr r1, [r7]
	asrs r1, r1, #8
	mov r0, ip
	adds r0, #0x2c
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r1, r1, r4
	mov r0, sl
	lsls r0, r0, #0x10
	mov sb, r0
	cmp r2, r1
	bgt _0800B6BA
	adds r0, r6, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0800B6CC
	cmp r2, r1
	blt _0800B76E
_0800B6BA:
	mov r0, ip
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	blt _0800B76E
_0800B6CC:
	adds r0, r6, #0
	adds r0, #0x2d
	movs r3, #0
	ldrsb r3, [r0, r3]
	ldr r1, [sp, #0xc]
	adds r2, r1, r3
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	mov r1, ip
	adds r1, #0x2d
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r1, r0, r4
	ldr r0, [sp]
	lsls r5, r0, #0x10
	cmp r2, r1
	bgt _0800B704
	adds r0, r6, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0800B716
	cmp r2, r1
	blt _0800B76E
_0800B704:
	mov r0, ip
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	blt _0800B76E
_0800B716:
	adds r0, r7, #0
	adds r0, #0x26
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800B768
	ldr r1, _0800B764 @ =gGameMode
	ldrb r0, [r1]
	cmp r0, #1
	bls _0800B742
	bl CreateRoomEvent
	movs r1, #3
	strb r1, [r0]
	mov r2, r8
	ldrh r1, [r2, #4]
	strb r1, [r0, #1]
	ldrh r1, [r2, #6]
	strb r1, [r0, #2]
	ldrb r1, [r2, #9]
	strb r1, [r0, #3]
_0800B742:
	mov r0, sb
	asrs r4, r0, #0x10
	asrs r5, r5, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl CreateDustCloud
	adds r0, r4, #0
	adds r1, r5, #0
	bl CreateTrappedAnimal
	adds r0, r4, #0
	adds r1, r5, #0
	bl CreateEnemyDefeatScoreAndManageLives
	movs r0, #1
	b _0800B784
	.align 2, 0
_0800B764: .4byte gGameMode
_0800B768:
	adds r0, r7, #0
	bl sa2__sub_800CBA4
_0800B76E:
	ldr r1, [sp, #4]
	adds r1, #1
	str r1, [sp, #4]
	ldr r0, _0800B794 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	bge _0800B782
	b _0800B55E
_0800B782:
	movs r0, #0
_0800B784:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800B794: .4byte gNumSingleplayerCharacters

@ Exclusively used by enemies
	thumb_func_start sub_800B798
sub_800B798: @ 0x0800B798
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r0, #0
	mov sb, r0
	ldr r1, [r6, #0x28]
	subs r0, #1
	cmp r1, r0
	beq _0800B896
	movs r0, #0
	mov r8, r0
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov sl, r0
_0800B7CA:
	ldr r7, _0800B8A8 @ =gPlayer
	mov r0, r8
	cmp r0, #0
	beq _0800B7D4
	ldr r7, _0800B8AC @ =gPartner
_0800B7D4:
	ldr r0, [r7, #0x64]
	mov ip, r0
	mov r5, ip
	adds r5, #0xc
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0800B886
	ldr r1, [r5, #0x28]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800B886
	adds r0, r6, #0
	adds r0, #0x2c
	movs r3, #0
	ldrsb r3, [r0, r3]
	ldr r0, [sp]
	adds r2, r0, r3
	ldr r1, [r7]
	asrs r1, r1, #8
	mov r0, ip
	adds r0, #0x38
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r1, r1, r4
	cmp r2, r1
	bgt _0800B824
	adds r0, r6, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0800B836
	cmp r2, r1
	blt _0800B886
_0800B824:
	mov r0, ip
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	blt _0800B886
_0800B836:
	adds r0, r6, #0
	adds r0, #0x2d
	movs r3, #0
	ldrsb r3, [r0, r3]
	mov r0, sl
	adds r2, r0, r3
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0x2d
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r1, r0, r4
	cmp r2, r1
	bgt _0800B86A
	adds r0, r6, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0800B87C
	cmp r2, r1
	blt _0800B886
_0800B86A:
	adds r0, r5, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	blt _0800B886
_0800B87C:
	adds r0, r7, #0
	bl sa2__sub_800CBA4
	movs r0, #1
	mov sb, r0
_0800B886:
	movs r0, #1
	add r8, r0
	ldr r0, _0800B8B0 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r8, r0
	blt _0800B7CA
_0800B896:
	mov r0, sb
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800B8A8: .4byte gPlayer
_0800B8AC: .4byte gPartner
_0800B8B0: .4byte gNumSingleplayerCharacters

@ Exclusively used by enemies
	thumb_func_start sub_800B8B4
sub_800B8B4: @ 0x0800B8B4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	ldr r0, [r3, #0x64]
	mov ip, r0
	mov r6, ip
	adds r6, #0xc
	ldr r0, [r4, #0x28]
	movs r5, #1
	rsbs r5, r5, #0
	cmp r0, r5
	bne _0800B8DE
	b _0800BA4E
_0800B8DE:
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800B8EA
	b _0800BA4E
_0800B8EA:
	ldr r0, [r6, #0x30]
	cmp r0, r5
	beq _0800B9AA
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x2c
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r2, r0, r5
	ldr r0, [r3]
	asrs r0, r0, #8
	mov r1, ip
	adds r1, #0x40
	movs r7, #0
	ldrsb r7, [r1, r7]
	adds r1, r0, r7
	cmp r2, r1
	bgt _0800B928
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r1
	bge _0800B93A
	cmp r2, r1
	blt _0800B9AA
_0800B928:
	mov r0, ip
	adds r0, #0x42
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r1, r0
	cmp r0, r2
	blt _0800B9AA
_0800B93A:
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x2d
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r2, r0, r5
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0x35
	movs r7, #0
	ldrsb r7, [r1, r7]
	adds r1, r0, r7
	cmp r2, r1
	bgt _0800B972
	adds r0, r4, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r1
	bge _0800B984
	cmp r2, r1
	blt _0800B9AA
_0800B972:
	adds r0, r6, #0
	adds r0, #0x37
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r1, r0
	cmp r0, r2
	blt _0800B9AA
_0800B984:
	adds r0, r3, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	beq _0800B998
	ldrh r0, [r3, #8]
	rsbs r0, r0, #0
	b _0800B99E
_0800B998:
	ldrh r0, [r3, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
_0800B99E:
	strh r0, [r3, #8]
	ldrh r0, [r3, #0xa]
	rsbs r0, r0, #0
	strh r0, [r3, #0xa]
	movs r0, #1
	b _0800BA50
_0800B9AA:
	ldr r1, [r6, #0x28]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800BA4E
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x2c
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r2, r0, r5
	ldr r0, [r3]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0x2c
	movs r7, #0
	ldrsb r7, [r1, r7]
	adds r1, r0, r7
	cmp r2, r1
	bgt _0800B9EC
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r1
	bge _0800B9FE
	cmp r2, r1
	blt _0800BA4E
_0800B9EC:
	adds r0, r6, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r1, r0
	cmp r0, r2
	blt _0800BA4E
_0800B9FE:
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x2d
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r2, r0, r5
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	movs r1, #0x2d
	ldrsb r7, [r1, r6]
	adds r1, r0, r7
	cmp r2, r1
	bgt _0800BA32
	adds r0, r4, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r1
	bge _0800BA44
	cmp r2, r1
	blt _0800BA4E
_0800BA32:
	adds r0, r6, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r1, r0
	cmp r0, r2
	blt _0800BA4E
_0800BA44:
	adds r0, r3, #0
	bl sa2__sub_800CBA4
	movs r0, #2
	b _0800BA50
_0800BA4E:
	movs r0, #0
_0800BA50:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
    
@ Exclusively used by Boss 1
	thumb_func_start sub_800BA5C
sub_800BA5C: @ 0x0800BA5C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	adds r5, r3, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	ldr r0, [r5, #0x64]
	mov r8, r0
	mov r7, r8
	adds r7, #0xc
	ldr r0, [r6, #0x28]
	movs r2, #1
	rsbs r2, r2, #0
	cmp r0, r2
	bne _0800BA8C
	b _0800BCAA
_0800BA8C:
	ldr r0, [r6, #0x30]
	cmp r0, r2
	bne _0800BA94
	b _0800BCAA
_0800BA94:
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800BAA0
	b _0800BCAA
_0800BAA0:
	ldr r0, [r7, #0x30]
	cmp r0, r2
	bne _0800BAA8
	b _0800BC00
_0800BAA8:
	ldr r1, [sp]
	lsls r3, r1, #0x10
	asrs r1, r3, #0x10
	adds r0, r6, #0
	adds r0, #0x34
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov ip, r0
	adds r4, r1, r0
	ldr r2, [r5]
	asrs r1, r2, #8
	mov r0, r8
	adds r0, #0x38
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov sb, r0
	add r1, sb
	str r3, [sp, #8]
	str r2, [sp, #4]
	cmp r4, r1
	bgt _0800BAEE
	adds r0, r6, #0
	adds r0, #0x36
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r2, ip
	subs r0, r0, r2
	adds r0, r4, r0
	cmp r0, r1
	bge _0800BB02
	cmp r4, r1
	blt _0800BB48
_0800BAEE:
	mov r0, r8
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r2, sb
	subs r0, r0, r2
	adds r0, r1, r0
	cmp r0, r4
	blt _0800BB48
_0800BB02:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x35
	ldrsb r4, [r2, r6]
	adds r2, r0, r4
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	movs r1, #0x2d
	ldrsb r3, [r1, r7]
	adds r1, r0, r3
	cmp r2, r1
	bgt _0800BB34
	adds r0, r6, #0
	adds r0, #0x37
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r2, r0
	cmp r0, r1
	blt _0800BB30
	b _0800BCA0
_0800BB30:
	cmp r2, r1
	blt _0800BB48
_0800BB34:
	adds r0, r7, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	blt _0800BB48
	b _0800BCA0
_0800BB48:
	ldr r2, [sp, #8]
	asrs r1, r2, #0x10
	adds r0, r6, #0
	adds r0, #0x2c
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r3, r1, r4
	ldr r0, [sp, #4]
	asrs r1, r0, #8
	adds r0, r7, #0
	adds r0, #0x34
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r1, r1, r2
	cmp r3, r1
	bgt _0800BB7E
	adds r0, r6, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r3, r0
	cmp r0, r1
	bge _0800BB90
	cmp r3, r1
	blt _0800BC00
_0800BB7E:
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r2
	adds r0, r1, r0
	cmp r0, r3
	blt _0800BC00
_0800BB90:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	adds r1, #0x2d
	movs r3, #0
	ldrsb r3, [r1, r3]
	adds r2, r0, r3
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	adds r1, r7, #0
	adds r1, #0x35
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r1, r0, r4
	cmp r2, r1
	bgt _0800BBC8
	adds r0, r6, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0800BBDA
	cmp r2, r1
	blt _0800BC00
_0800BBC8:
	adds r0, r7, #0
	adds r0, #0x37
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	blt _0800BC00
_0800BBDA:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	beq _0800BBEE
	ldrh r0, [r5, #8]
	rsbs r0, r0, #0
	b _0800BBF4
_0800BBEE:
	ldrh r0, [r5, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
_0800BBF4:
	strh r0, [r5, #8]
	ldrh r0, [r5, #0xa]
	rsbs r0, r0, #0
	strh r0, [r5, #0xa]
	movs r0, #1
	b _0800BCAC
_0800BC00:
	ldr r1, [r7, #0x28]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800BCAA
	ldr r2, [sp]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	adds r1, #0x2c
	movs r2, #0
	ldrsb r2, [r1, r2]
	adds r3, r0, r2
	ldr r0, [r5]
	asrs r0, r0, #8
	adds r1, r7, #0
	adds r1, #0x2c
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r1, r0, r4
	cmp r3, r1
	bgt _0800BC42
	adds r0, r6, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r2
	adds r0, r3, r0
	cmp r0, r1
	bge _0800BC54
	cmp r3, r1
	blt _0800BCAA
_0800BC42:
	adds r0, r7, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r3
	blt _0800BCAA
_0800BC54:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	adds r1, #0x2d
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	adds r3, r7, #0
	adds r3, #0x2d
	movs r4, #0
	ldrsb r4, [r3, r4]
	adds r3, r0, r4
	cmp r2, r3
	bgt _0800BC8E
	adds r0, r6, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r1
	adds r0, r2, r0
	cmp r0, r3
	bge _0800BCA0
	cmp r2, r3
	blt _0800BCAA
_0800BC8E:
	adds r0, r7, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r3, r0
	cmp r0, r2
	blt _0800BCAA
_0800BCA0:
	adds r0, r5, #0
	bl sa2__sub_800CBA4
	movs r0, #2
	b _0800BCAC
_0800BCAA:
	movs r0, #0
_0800BCAC:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
    
@ Exclusively used by Bosses 2 and 6
	thumb_func_start sub_800BCBC
sub_800BCBC: @ 0x0800BCBC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	ldr r0, [r3, #0x64]
	mov ip, r0
	mov r6, ip
	adds r6, #0xc
	ldr r1, [r3, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800BCE6
	b _0800BF02
_0800BCE6:
	ldr r0, [r6, #0x30]
	movs r2, #1
	rsbs r2, r2, #0
	cmp r0, r2
	beq _0800BDB8
	ldr r0, [r4, #0x28]
	cmp r0, r2
	beq _0800BDB8
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _0800BDB8
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x2c
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r2, r0, r5
	ldr r0, [r3]
	asrs r0, r0, #8
	mov r1, ip
	adds r1, #0x40
	movs r7, #0
	ldrsb r7, [r1, r7]
	adds r1, r0, r7
	cmp r2, r1
	bgt _0800BD36
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r1
	bge _0800BD48
	cmp r2, r1
	blt _0800BDB8
_0800BD36:
	mov r0, ip
	adds r0, #0x42
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r1, r0
	cmp r0, r2
	blt _0800BDB8
_0800BD48:
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x2d
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r2, r0, r5
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0x35
	movs r7, #0
	ldrsb r7, [r1, r7]
	adds r1, r0, r7
	cmp r2, r1
	bgt _0800BD80
	adds r0, r4, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r1
	bge _0800BD92
	cmp r2, r1
	blt _0800BDB8
_0800BD80:
	adds r0, r6, #0
	adds r0, #0x37
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r1, r0
	cmp r0, r2
	blt _0800BDB8
_0800BD92:
	adds r0, r3, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	beq _0800BDA6
	ldrh r0, [r3, #8]
	rsbs r0, r0, #0
	b _0800BDAC
_0800BDA6:
	ldrh r0, [r3, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
_0800BDAC:
	strh r0, [r3, #8]
	ldrh r0, [r3, #0xa]
	rsbs r0, r0, #0
	strh r0, [r3, #0xa]
	movs r0, #1
	b _0800BF04
_0800BDB8:
	ldr r0, [r6, #0x28]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0800BDC4
	b _0800BF02
_0800BDC4:
	ldr r0, [r4, #0x28]
	cmp r0, r1
	beq _0800BE5E
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x2c
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r2, r0, r5
	ldr r0, [r3]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0x2c
	movs r7, #0
	ldrsb r7, [r1, r7]
	adds r1, r0, r7
	cmp r2, r1
	bgt _0800BE02
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r1
	bge _0800BE14
	cmp r2, r1
	blt _0800BE5E
_0800BE02:
	adds r0, r6, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r1, r0
	cmp r0, r2
	blt _0800BE5E
_0800BE14:
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x2d
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r2, r0, r5
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0x2d
	movs r7, #0
	ldrsb r7, [r1, r7]
	adds r1, r0, r7
	cmp r2, r1
	bgt _0800BE4C
	adds r0, r4, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r1
	bge _0800BEF8
	cmp r2, r1
	blt _0800BE5E
_0800BE4C:
	adds r0, r6, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r1, r0
	cmp r0, r2
	bge _0800BEF8
_0800BE5E:
	ldr r1, [r4, #0x30]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800BF02
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x34
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r2, r0, r5
	ldr r0, [r3]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0x2c
	movs r7, #0
	ldrsb r7, [r1, r7]
	adds r1, r0, r7
	cmp r2, r1
	bgt _0800BEA0
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r1
	bge _0800BEB2
	cmp r2, r1
	blt _0800BF02
_0800BEA0:
	adds r0, r6, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r1, r0
	cmp r0, r2
	blt _0800BF02
_0800BEB2:
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x35
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r2, r0, r5
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	movs r1, #0x2d
	ldrsb r7, [r1, r6]
	adds r1, r0, r7
	cmp r2, r1
	bgt _0800BEE6
	adds r0, r4, #0
	adds r0, #0x37
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r1
	bge _0800BEF8
	cmp r2, r1
	blt _0800BF02
_0800BEE6:
	adds r0, r6, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r1, r0
	cmp r0, r2
	blt _0800BF02
_0800BEF8:
	adds r0, r3, #0
	bl sa2__sub_800CBA4
	movs r0, #2
	b _0800BF04
_0800BF02:
	movs r0, #0
_0800BF04:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
    
@ Exclusively used by Bosses 3, 5, Egg X and throwback bosses
	thumb_func_start sub_800BF10
sub_800BF10: @ 0x0800BF10
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r3, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	ldr r0, [r6, #0x64]
	mov ip, r0
	mov r7, ip
	adds r7, #0xc
	ldr r0, [r5, #0x28]
	movs r3, #1
	rsbs r3, r3, #0
	cmp r0, r3
	beq _0800BFDE
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0800BFDE
	ldr r0, [r7, #0x28]
	cmp r0, r3
	beq _0800BFDE
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x2c
	movs r3, #0
	ldrsb r3, [r1, r3]
	adds r2, r0, r3
	ldr r0, [r6]
	asrs r0, r0, #8
	mov r1, ip
	adds r1, #0x38
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r1, r0, r4
	cmp r2, r1
	bgt _0800BF7C
	adds r0, r5, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0800BF8E
	cmp r2, r1
	blt _0800BFDE
_0800BF7C:
	mov r0, ip
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	blt _0800BFDE
_0800BF8E:
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x2d
	movs r3, #0
	ldrsb r3, [r1, r3]
	adds r2, r0, r3
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	movs r1, #0x2d
	ldrsb r4, [r1, r7]
	adds r1, r0, r4
	cmp r2, r1
	bgt _0800BFC2
	adds r0, r5, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0800BFD4
	cmp r2, r1
	blt _0800BFDE
_0800BFC2:
	adds r0, r7, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	blt _0800BFDE
_0800BFD4:
	adds r0, r6, #0
	bl sa2__sub_800CBA4
	movs r0, #2
	b _0800BFE0
_0800BFDE:
	movs r0, #0
_0800BFE0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
    
.if 0
.endif
