.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_808B7A0
sub_808B7A0: @ 0x0808B7A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov sl, r0              @ sl = spring
	mov sb, r1              @ sb = s
	str r2, [sp, #0xc]      @ sp0C = worldX
	str r3, [sp, #0x10]     @ sp10 = worldY
	movs r0, #0
	str r0, [sp, #0x14]
	movs r4, #0
	ldr r1, _0808B7CC @ =gPartner
	mov r8, r1
	ldr r7, _0808B7D0 @ =gPlayer
_0808B7C0_loop:
	cmp r4, #0
	beq _0808B7D4
	mov r2, r8
	ldr r0, [r2, #0x10]
	b _0808B7D6
	.align 2, 0
_0808B7CC: .4byte gPartner
_0808B7D0: .4byte gPlayer
_0808B7D4:
	ldr r0, [r7, #0x10]
_0808B7D6:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808B7E0
	b _0808BB1A
_0808B7E0:
	add r2, sp, #4
	cmp r4, #0
	beq _0808B7EC
	mov r3, r8
	ldrb r0, [r3, #0xe]
	b _0808B7EE
_0808B7EC:
	ldrb r0, [r7, #0xe]
_0808B7EE:
	adds r0, #5
	rsbs r1, r0, #0
	add r0, sp, #8
	strb r1, [r0]
	adds r3, r0, #0
	cmp r4, #0
	beq _0808B802
	mov r0, r8
	ldrb r1, [r0, #0xf]
	b _0808B804
_0808B802:
	ldrb r1, [r7, #0xf]
_0808B804:
	movs r0, #1
	subs r1, r0, r1
	mov r0, sp
	adds r0, #9
	strb r1, [r0]
	cmp r4, #0
	beq _0808B818
	mov r1, r8
	ldrb r0, [r1, #0xe]
	b _0808B81A
_0808B818:
	ldrb r0, [r7, #0xe]
_0808B81A:
	adds r1, r0, #5
	mov r0, sp
	adds r0, #0xa
	strb r1, [r0]
	cmp r4, #0
	beq _0808B82C
	mov r1, r8
	ldrb r0, [r1, #0xf]
	b _0808B82E
_0808B82C:
	ldrb r0, [r7, #0xf]
_0808B82E:
	subs r1, r0, #1
	mov r0, sp
	adds r0, #0xb
	strb r1, [r0]
	adds r0, r2, #0
	adds r1, r3, #0
	movs r2, #4
	bl memcpy
	mov r2, sl
	ldr r0, [r2, #0x40]
	asrs r0, r0, #8
	ldr r3, [sp, #0xc]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, [r2, #0x44]
	asrs r0, r0, #8
	ldr r2, [sp, #0x10]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r3, _0808B87C @ =gPlayer
	cmp r4, #0
	beq _0808B862
	ldr r3, _0808B880 @ =gPartner
_0808B862:
	mov r0, sb
	bl sub_800A768
	adds r5, r0, #0
	cmp r4, #0
	beq _0808B884
	mov r3, r8
	ldr r0, [r3, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0808B88E
	b _0808B89E
	.align 2, 0
_0808B87C: .4byte gPlayer
_0808B880: .4byte gPartner
_0808B884:
	ldr r0, [r7, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0808B89E
_0808B88E:
	cmp r4, #0
	beq _0808B898
	mov r1, r8
	ldr r0, [r1, #0x28]
	b _0808B89A
_0808B898:
	ldr r0, [r7, #0x28]
_0808B89A:
	cmp r0, sb
	beq _0808B8A4
_0808B89E:
	cmp r5, #0
	bne _0808B8A4
	b _0808B9AA
_0808B8A4:
	ldr r0, _0808B8CC @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, _0808B8D0 @ =gPlayer
	cmp r4, #0
	beq _0808B8B8
	ldr r0, _0808B8D4 @ =gPartner
_0808B8B8:
	bl Player_TransitionCancelFlyingAndBoost
	cmp r4, #0
	beq _0808B8D8
	mov r2, r8
	ldr r0, [r2, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x10]
	b _0808B8E0
	.align 2, 0
_0808B8CC: .4byte gCurrentLevel
_0808B8D0: .4byte gPlayer
_0808B8D4: .4byte gPartner
_0808B8D8:
	ldr r0, [r7, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r7, #0x10]
_0808B8E0:
	cmp r4, #0
	beq _0808B8F0
	movs r0, #0x11
	ldr r3, _0808B8EC @ =gPartner + 0x40
	strb r0, [r3]
	b _0808B8F6
	.align 2, 0
_0808B8EC: .4byte gPartner + 0x40
_0808B8F0:
	movs r0, #0x11
	ldr r1, _0808B900 @ =gPlayer + 0x40
	strb r0, [r1]
_0808B8F6:
	cmp r4, #0
	beq _0808B908
	ldr r0, _0808B904 @ =gPartnerBodyPSI
	b _0808B90A
	.align 2, 0
_0808B900: .4byte gPlayer + 0x40
_0808B904: .4byte gPartnerBodyPSI
_0808B908:
	ldr r0, _0808B91C @ =gPlayerBodyPSI
_0808B90A:
	adds r0, #0x2d
	movs r1, #0xff
	strb r1, [r0]
	cmp r4, #0
	beq _0808B924
	ldr r0, _0808B920 @ =0x0000F880
	mov r2, r8
	strh r0, [r2, #0xa]
	b _0808B928
	.align 2, 0
_0808B91C: .4byte gPlayerBodyPSI
_0808B920: .4byte 0x0000F880
_0808B924:
	ldr r0, _0808B938 @ =0x0000F880
	strh r0, [r7, #0xa]
_0808B928:
	cmp r5, #0
	beq _0808B96C
	cmp r4, #0
	beq _0808B93C
	mov r3, r8
	ldr r0, [r3, #0x10]
	b _0808B93E
	.align 2, 0
_0808B938: .4byte 0x0000F880
_0808B93C:
	ldr r0, [r7, #0x10]
_0808B93E:
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0808B96C
	cmp r4, #0
	beq _0808B952
	mov r1, r8
	movs r2, #0xa
	ldrsh r0, [r1, r2]
	b _0808B956
_0808B952:
	movs r3, #0xa
	ldrsh r0, [r7, r3]
_0808B956:
	asrs r1, r0, #1
	cmp r4, #0
	beq _0808B966
	mov r2, r8
	ldrh r0, [r2, #0xa]
	adds r0, r0, r1
	strh r0, [r2, #0xa]
	b _0808B96C
_0808B966:
	ldrh r0, [r7, #0xa]
	adds r0, r0, r1
	strh r0, [r7, #0xa]
_0808B96C:
	mov r1, sl
	adds r1, #0x4c
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	cmp r6, #3
	beq _0808B98A
	cmp r6, #5
	beq _0808B98A
	ldr r0, _0808B994 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x11
	bne _0808B998
_0808B98A:
	mov r0, sb
	adds r0, #0x20
	strb r2, [r0]
	b _0808B9A0
	.align 2, 0
_0808B994: .4byte gCurrentLevel
_0808B998:
	mov r1, sb
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
_0808B9A0:
	movs r0, #0xaa
	bl m4aSongNumStart
	movs r3, #1
	str r3, [sp, #0x14]
_0808B9AA:
	cmp r4, #0
	beq _0808B9B4
	mov r0, r8
	ldr r6, [r0]
	b _0808B9B6
_0808B9B4:
	ldr r6, [r7]
_0808B9B6:
	mov r1, sl
	ldr r0, [r1, #0x40]
	asrs r0, r0, #8
	ldr r2, [sp, #0xc]
	adds r1, r2, r0
	mov r3, sl
	ldr r0, [r3, #0x44]
	asrs r0, r0, #8
	ldr r3, [sp, #0x10]
	adds r2, r3, r0
	add r3, sp, #4
	cmp r4, #0
	beq _0808B9D6
	mov r0, r8
	str r0, [sp]
	b _0808B9D8
_0808B9D6:
	str r7, [sp]
_0808B9D8:
	mov r0, sb
	bl sub_808BB44
	mov r1, sl
	ldr r0, [r1, #0x40]
	asrs r0, r0, #8
	ldr r2, [sp, #0xc]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	mov r3, sl
	ldr r0, [r3, #0x44]
	asrs r0, r0, #8
	ldr r2, [sp, #0x10]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r3, _0808BA1C @ =gPlayer
	cmp r4, #0
	beq _0808BA02
	ldr r3, _0808BA20 @ =gPartner
_0808BA02:
	mov r0, sb
	bl sub_80096B0
	adds r5, r0, #0
	cmp r4, #0
	beq _0808BA28
	ldr r3, _0808BA24 @ =gPartner + 0x40
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0x11
	beq _0808BA32
	b _0808BA42
	.align 2, 0
_0808BA1C: .4byte gPlayer
_0808BA20: .4byte gPartner
_0808BA24: .4byte gPartner + 0x40
_0808BA28:
	ldr r1, _0808BA3C @ =gPlayer + 0x40
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0x11
	bne _0808BA42
_0808BA32:
	cmp r4, #0
	beq _0808BA40
	mov r2, r8
	str r6, [r2]
	b _0808BA42
	.align 2, 0
_0808BA3C: .4byte gPlayer + 0x40
_0808BA40:
	str r6, [r7]
_0808BA42:
	movs r0, #0xb8
	lsls r0, r0, #0xd
	ands r0, r5
	cmp r0, #0
	beq _0808BAB4
	bl sub_80549FC
	cmp r0, #0
	beq _0808BAB4
	ldr r0, _0808BA6C @ =gPlayer
	cmp r4, #0
	beq _0808BA5C
	ldr r0, _0808BA70 @ =gPartner
_0808BA5C:
	bl Player_TransitionCancelFlyingAndBoost
	cmp r4, #0
	beq _0808BA78
	movs r0, #5
	ldr r3, _0808BA74 @ =gPartner + 0x40
	strb r0, [r3]
	b _0808BA7E
	.align 2, 0
_0808BA6C: .4byte gPlayer
_0808BA70: .4byte gPartner
_0808BA74: .4byte gPartner + 0x40
_0808BA78:
	movs r0, #5
	ldr r1, _0808BA90 @ =gPlayer + 0x40
	strb r0, [r1]
_0808BA7E:
	cmp r4, #0
	beq _0808BA94
	mov r2, r8
	ldr r0, [r2, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #0x10]
	b _0808BA9C
	.align 2, 0
_0808BA90: .4byte gPlayer + 0x40
_0808BA94:
	ldr r0, [r7, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r7, #0x10]
_0808BA9C:
	cmp r4, #0
	beq _0808BAAC
	mov r3, r8
	ldr r0, [r3, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r3, #0x10]
	b _0808BAB4
_0808BAAC:
	ldr r0, [r7, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r7, #0x10]
_0808BAB4:
	movs r1, #0x20
	ands r5, r1
	cmp r5, #0
	bne _0808BB1A
	cmp r4, #0
	beq _0808BACC
	mov r2, r8
	ldr r0, [r2, #0x10]
	ands r0, r1
	cmp r0, #0
	bne _0808BAD4
	b _0808BB1A
_0808BACC:
	ldr r0, [r7, #0x10]
	ands r0, r1
	cmp r0, #0
	beq _0808BB1A
_0808BAD4:
	cmp r4, #0
	beq _0808BAE6
	mov r3, r8
	ldr r0, [r3, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #0x10]
	b _0808BAF0
_0808BAE6:
	ldr r0, [r7, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
_0808BAF0:
	ldr r0, _0808BB08 @ =gPlayer
	cmp r4, #0
	beq _0808BAF8
	ldr r0, _0808BB0C @ =gPartner
_0808BAF8:
	bl Player_TransitionCancelFlyingAndBoost
	cmp r4, #0
	beq _0808BB14
	movs r0, #4
	ldr r1, _0808BB10 @ =gPartner + 0x40
	strb r0, [r1]
	b _0808BB1A
	.align 2, 0
_0808BB08: .4byte gPlayer
_0808BB0C: .4byte gPartner
_0808BB10: .4byte gPartner + 0x40
_0808BB14:
	movs r0, #4
	ldr r2, _0808BB3C @ =gPlayer + 0x40
	strb r0, [r2]
_0808BB1A:
	adds r4, #1
	ldr r0, _0808BB40 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	bge _0808BB2A
	b _0808B7C0_loop
_0808BB2A:
	ldr r0, [sp, #0x14]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0808BB3C: .4byte gPlayer + 0x40
_0808BB40: .4byte gNumSingleplayerCharacters

	thumb_func_start sub_808BB44
sub_808BB44: @ 0x0808BB44
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov ip, r0
	adds r7, r1, #0
	mov r8, r2
	adds r5, r3, #0
	ldr r4, [sp, #0x20]
	adds r0, #0x2c
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r2, r7, r3
	ldr r0, [r4]
	asrs r0, r0, #8
	movs r6, #0
	ldrsb r6, [r5, r6]
	adds r1, r0, r6
	cmp r2, r1
	bgt _0808BB82
	mov r0, ip
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0808BB8E
	cmp r2, r1
	blt _0808BC6C
_0808BB82:
	movs r0, #2
	ldrsb r0, [r5, r0]
	subs r0, r0, r6
	adds r0, r1, r0
	cmp r0, r2
	blt _0808BC6C
_0808BB8E:
	mov r0, ip
	adds r0, #0x2d
	movs r3, #0
	ldrsb r3, [r0, r3]
	mov r0, r8
	adds r2, r0, r3
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	movs r6, #1
	ldrsb r6, [r5, r6]
	adds r1, r0, r6
	cmp r2, r1
	bgt _0808BBBE
	mov r0, ip
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0808BBCA
	cmp r2, r1
	blt _0808BC6C
_0808BBBE:
	movs r0, #3
	ldrsb r0, [r5, r0]
	subs r0, r0, r6
	adds r0, r1, r0
	cmp r0, r2
	blt _0808BC6C
_0808BBCA:
	mov r0, ip
	adds r0, #0x2c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r7, r0
	movs r1, #2
	ldrsb r1, [r5, r1]
	subs r1, r0, r1
	adds r2, r1, #0
	adds r2, #8
	ldr r0, [r4]
	asrs r3, r0, #8
	cmp r3, r2
	bgt _0808BBEC
	lsls r1, r1, #8
	b _0808BC08
_0808BBEC:
	mov r0, ip
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r7, r0
	movs r1, #0
	ldrsb r1, [r5, r1]
	subs r0, r0, r1
	adds r2, r0, #0
	subs r2, #8
	cmp r3, r2
	blt _0808BC6C
	lsls r1, r0, #8
_0808BC08:
	str r1, [r4]
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	adds r0, #9
	asrs r1, r1, #8
	adds r5, r4, #0
	adds r5, #0x27
	ldrb r2, [r5]
	movs r7, #0
	str r7, [sp]
	ldr r6, _0808BC68 @ =sa2__sub_801EE64
	str r6, [sp, #4]
	movs r3, #8
	bl sa2__sub_801E4E4
	cmp r0, #0
	bge _0808BC32
	lsls r1, r0, #8
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
_0808BC32:
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	ldr r1, [r4]
	asrs r1, r1, #8
	ldrb r2, [r5]
	movs r3, #8
	rsbs r3, r3, #0
	str r7, [sp]
	str r6, [sp, #4]
	bl sa2__sub_801E4E4
	cmp r0, #0
	bge _0808BC54
	lsls r1, r0, #8
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
_0808BC54:
	ldr r0, [r4, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	adds r1, #0x18
	ands r0, r1
	str r0, [r4, #0x10]
	movs r0, #1
	b _0808BC6E
	.align 2, 0
_0808BC68: .4byte sa2__sub_801EE64
_0808BC6C:
	movs r0, #0
_0808BC6E:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start TaskDestructor_MovingSpring
TaskDestructor_MovingSpring: @ 0x0808BC7C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0
