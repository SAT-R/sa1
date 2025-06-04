.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_8081C04
sub_8081C04: @ 0x08081C04
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r0, [sp, #4]
	mov sl, r1
	mov r8, r2
	mov sb, r3
	movs r0, #0
	str r0, [sp, #8]
	movs r4, #0
	ldr r7, _08081C2C @ =gPartner
	ldr r6, _08081C30 @ =gPlayer
_08081C22:
	cmp r4, #0
	beq _08081C34
	ldr r1, [r7, #4]
	str r1, [sp, #0xc]
	b _08081C38
	.align 2, 0
_08081C2C: .4byte gPartner
_08081C30: .4byte gPlayer
_08081C34:
	ldr r2, [r6, #4]
	str r2, [sp, #0xc]
_08081C38:
	mov r1, sl
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08081C48
	b _08081D9E
_08081C48:
	cmp r4, #0
	beq _08081C56
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r8, r0
	ble _08081C60
	b _08081F1A
_08081C56:
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r8, r0
	ble _08081C60
	b _08081F1A
_08081C60:
	mov r2, r8
	adds r2, #0x20
	cmp r4, #0
	beq _08081C72
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r2, r0
	bge _08081C7C
	b _08081F1A
_08081C72:
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r2, r0
	bge _08081C7C
	b _08081F1A
_08081C7C:
	mov r1, sb
	subs r1, #0x28
	cmp r4, #0
	beq _08081C8E
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r1, r0
	ble _08081C98
	b _08081F1A
_08081C8E:
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	cmp r1, r0
	ble _08081C98
	b _08081F1A
_08081C98:
	mov r1, sb
	adds r1, #0x28
	cmp r4, #0
	beq _08081CAA
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08081CB4
	b _08081F1A
_08081CAA:
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08081CB4
	b _08081F1A
_08081CB4:
	cmp r4, #0
	beq _08081CC2
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r8, r0
	ble _08081CCA
	b _08081D4C
_08081CC2:
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r8, r0
	bgt _08081D4C
_08081CCA:
	cmp r4, #0
	beq _08081CD8
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r2, r0
	bge _08081CE0
	b _08081D4C
_08081CD8:
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r2, r0
	blt _08081D4C
_08081CE0:
	cmp r4, #0
	beq _08081CF4
	movs r2, #8
	ldrsh r0, [r7, r2]
	ldr r3, _08081CF0 @ =gPlayer
	cmp r0, #0
	blt _08081D00
	b _08081EA4
	.align 2, 0
_08081CF0: .4byte gPlayer
_08081CF4:
	movs r1, #8
	ldrsh r0, [r6, r1]
	ldr r3, _08081D44 @ =gPlayer
	cmp r0, #0
	blt _08081D00
	b _08081EA4
_08081D00:
	ldr r1, [sp, #4]
	adds r1, #0x3c
	movs r0, #0x7d
	strb r0, [r1]
	mov r1, sl
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08081D44 @ =gPlayer
	cmp r4, #0
	beq _08081D18
	ldr r0, _08081D48 @ =gPartner
_08081D18:
	movs r1, #0xe
	bl sa2__sub_8023B5C
	ldr r1, _08081D44 @ =gPlayer
	cmp r4, #0
	beq _08081D26
	ldr r1, _08081D48 @ =gPartner
_08081D26:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _08081D44 @ =gPlayer
	cmp r4, #0
	beq _08081D32
	ldr r1, _08081D48 @ =gPartner
_08081D32:
	movs r0, #0xe
	strb r0, [r1, #0xf]
	movs r0, #0xb9
	bl m4aSongNumStart
	movs r2, #1
	str r2, [sp, #8]
	b _08081F1A
	.align 2, 0
_08081D44: .4byte gPlayer
_08081D48: .4byte gPartner
_08081D4C:
	cmp r4, #0
	beq _08081D5A
	movs r1, #8
	ldrsh r0, [r7, r1]
	cmp r0, #0
	blt _08081D64
	b _08081F1A
_08081D5A:
	movs r2, #8
	ldrsh r0, [r6, r2]
	cmp r0, #0
	blt _08081D64
	b _08081F1A
_08081D64:
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	ldr r3, _08081D8C @ =gPlayer
	cmp r4, #0
	beq _08081D78
	ldr r3, _08081D90 @ =gPartner
_08081D78:
	movs r5, #0
	str r5, [sp]
	mov r0, sl
	bl sub_800AFDC
	cmp r4, #0
	beq _08081D94
	strh r5, [r7, #0xc]
	b _08081D96
	.align 2, 0
_08081D8C: .4byte gPlayer
_08081D90: .4byte gPartner
_08081D94:
	strh r4, [r6, #0xc]
_08081D96:
	cmp r4, #0
	beq _08081D9C
	b _08081F12
_08081D9C:
	b _08081F18
_08081D9E:
	mov r2, r8
	subs r2, #0x20
	cmp r4, #0
	beq _08081DB0
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08081DBA
	b _08081F1A
_08081DB0:
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08081DBA
	b _08081F1A
_08081DBA:
	mov r1, r8
	adds r1, #0x10
	cmp r4, #0
	beq _08081DCC
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08081DD6
	b _08081F1A
_08081DCC:
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08081DD6
	b _08081F1A
_08081DD6:
	mov r1, sb
	subs r1, #0x28
	cmp r4, #0
	beq _08081DE8
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r1, r0
	ble _08081DF2
	b _08081F1A
_08081DE8:
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	cmp r1, r0
	ble _08081DF2
	b _08081F1A
_08081DF2:
	mov r1, sb
	adds r1, #0x28
	cmp r4, #0
	beq _08081E04
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08081E0E
	b _08081F1A
_08081E04:
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08081E0E
	b _08081F1A
_08081E0E:
	cmp r4, #0
	beq _08081E1C
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08081E24
	b _08081EC8
_08081E1C:
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r2, r0
	bgt _08081EC8
_08081E24:
	cmp r4, #0
	beq _08081E32
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r8, r0
	bge _08081E3A
	b _08081EC8
_08081E32:
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r8, r0
	blt _08081EC8
_08081E3A:
	cmp r4, #0
	beq _08081E50
	movs r1, #8
	ldrsh r0, [r7, r1]
	ldr r3, _08081E4C @ =gPlayer
	cmp r0, #0
	bgt _08081E5A
	b _08081EA4
	.align 2, 0
_08081E4C: .4byte gPlayer
_08081E50:
	movs r2, #8
	ldrsh r0, [r6, r2]
	ldr r3, _08081E9C @ =gPlayer
	cmp r0, #0
	ble _08081EA4
_08081E5A:
	ldr r1, [sp, #4]
	adds r1, #0x3c
	movs r0, #0x7d
	strb r0, [r1]
	mov r1, sl
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08081E9C @ =gPlayer
	cmp r4, #0
	beq _08081E72
	ldr r0, _08081EA0 @ =gPartner
_08081E72:
	movs r1, #0xe
	bl sa2__sub_8023B5C
	ldr r1, _08081E9C @ =gPlayer
	cmp r4, #0
	beq _08081E80
	ldr r1, _08081EA0 @ =gPartner
_08081E80:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _08081E9C @ =gPlayer
	cmp r4, #0
	beq _08081E8C
	ldr r1, _08081EA0 @ =gPartner
_08081E8C:
	movs r0, #0xe
	strb r0, [r1, #0xf]
	movs r0, #0xb9
	bl m4aSongNumStart
	movs r0, #1
	str r0, [sp, #8]
	b _08081F1A
	.align 2, 0
_08081E9C: .4byte gPlayer
_08081EA0: .4byte gPartner
_08081EA4:
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	cmp r4, #0
	beq _08081EB6
	ldr r3, _08081EC4 @ =gPartner
_08081EB6:
	movs r0, #0
	str r0, [sp]
	mov r0, sl
	bl sub_800AFDC
	b _08081F1A
	.align 2, 0
_08081EC4: .4byte gPartner
_08081EC8:
	cmp r4, #0
	beq _08081ED6
	movs r1, #8
	ldrsh r0, [r7, r1]
	cmp r0, #0
	blt _08081EDE
	b _08081F1A
_08081ED6:
	movs r2, #8
	ldrsh r0, [r6, r2]
	cmp r0, #0
	bge _08081F1A
_08081EDE:
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	ldr r3, _08081F04 @ =gPlayer
	cmp r4, #0
	beq _08081EF2
	ldr r3, _08081F08 @ =gPartner
_08081EF2:
	movs r5, #0
	str r5, [sp]
	mov r0, sl
	bl sub_800AFDC
	cmp r4, #0
	beq _08081F0C
	strh r5, [r7, #0xc]
	b _08081F0E
	.align 2, 0
_08081F04: .4byte gPlayer
_08081F08: .4byte gPartner
_08081F0C:
	strh r4, [r6, #0xc]
_08081F0E:
	cmp r4, #0
	beq _08081F18
_08081F12:
	movs r0, #0
	strh r0, [r7, #8]
	b _08081F1A
_08081F18:
	strh r4, [r6, #8]
_08081F1A:
	cmp r4, #0
	beq _08081F24
	ldr r0, [sp, #0xc]
	str r0, [r7, #4]
	b _08081F28
_08081F24:
	ldr r1, [sp, #0xc]
	str r1, [r6, #4]
_08081F28:
	adds r4, #1
	ldr r0, _08081F4C @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	bge _08081F38
	b _08081C22
_08081F38:
	ldr r0, [sp, #8]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08081F4C: .4byte gNumSingleplayerCharacters

	thumb_func_start sub_8081F50
sub_8081F50: @ 0x08081F50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	adds r7, r1, #0
	adds r6, r2, #0
	adds r5, r3, #0
	movs r0, #0
	mov sl, r0
	movs r4, #0
	ldr r1, _08081F8C @ =gPartner
	mov r8, r1
_08081F6C:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08082064
	cmp r4, #0
	beq _08081F94
	mov r2, r8
	ldr r0, [r2]
	asrs r0, r0, #8
	ldr r3, _08081F90 @ =gPlayer
	cmp r6, r0
	ble _08081FA2
	b _08082140
	.align 2, 0
_08081F8C: .4byte gPartner
_08081F90: .4byte gPlayer
_08081F94:
	ldr r1, _08081FB8 @ =gPlayer
	ldr r0, [r1]
	asrs r0, r0, #8
	adds r3, r1, #0
	cmp r6, r0
	ble _08081FA2
	b _08082140
_08081FA2:
	adds r2, r6, #0
	adds r2, #0x20
	cmp r4, #0
	beq _08081FBC
	mov r1, r8
	ldr r0, [r1]
	asrs r0, r0, #8
	cmp r2, r0
	bge _08081FC6
	b _08082140
	.align 2, 0
_08081FB8: .4byte gPlayer
_08081FBC:
	ldr r0, [r3]
	asrs r0, r0, #8
	cmp r2, r0
	bge _08081FC6
	b _08082140
_08081FC6:
	cmp r4, #0
	beq _08081FD6
	mov r2, r8
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	cmp r5, r0
	ble _08081FE0
	b _08082140
_08081FD6:
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	cmp r5, r0
	ble _08081FE0
	b _08082140
_08081FE0:
	adds r2, r5, #0
	adds r2, #0x1c
	cmp r4, #0
	beq _08081FF4
	mov r1, r8
	ldr r0, [r1, #4]
	asrs r0, r0, #8
	cmp r2, r0
	bge _08081FFE
	b _08082140
_08081FF4:
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	cmp r2, r0
	bge _08081FFE
	b _08082140
_08081FFE:
	cmp r4, #0
	beq _0808200E
	mov r2, r8
	movs r1, #0xa
	ldrsh r0, [r2, r1]
	cmp r0, #0
	blt _08082018
	b _08082140
_0808200E:
	movs r2, #0xa
	ldrsh r0, [r3, r2]
	cmp r0, #0
	blt _08082018
	b _08082140
_08082018:
	mov r1, sb
	adds r1, #0x3c
	movs r2, #0
	movs r0, #0x7d
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x20
	strb r2, [r0]
	ldr r0, _0808205C @ =gPlayer
	cmp r4, #0
	beq _08082030
	ldr r0, _08082060 @ =gPartner
_08082030:
	movs r1, #0xe
	bl sa2__sub_8023B5C
	ldr r1, _0808205C @ =gPlayer
	cmp r4, #0
	beq _0808203E
	ldr r1, _08082060 @ =gPartner
_0808203E:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _0808205C @ =gPlayer
	cmp r4, #0
	beq _0808204A
	ldr r1, _08082060 @ =gPartner
_0808204A:
	movs r0, #0xe
	strb r0, [r1, #0xf]
	movs r0, #0xb9
	bl m4aSongNumStart
	movs r0, #1
	mov sl, r0
	b _08082170
	.align 2, 0
_0808205C: .4byte gPlayer
_08082060: .4byte gPartner
_08082064:
	cmp r4, #0
	beq _0808207C
	mov r1, r8
	ldr r0, [r1]
	asrs r0, r0, #8
	ldr r3, _08082078 @ =gPlayer
	cmp r6, r0
	ble _08082088
	b _0808215C
	.align 2, 0
_08082078: .4byte gPlayer
_0808207C:
	ldr r1, _0808209C @ =gPlayer
	ldr r0, [r1]
	asrs r0, r0, #8
	adds r3, r1, #0
	cmp r6, r0
	bgt _0808215C
_08082088:
	adds r2, r6, #0
	adds r2, #0x20
	cmp r4, #0
	beq _080820A0
	mov r1, r8
	ldr r0, [r1]
	asrs r0, r0, #8
	cmp r2, r0
	bge _080820A8
	b _0808215C
	.align 2, 0
_0808209C: .4byte gPlayer
_080820A0:
	ldr r0, [r3]
	asrs r0, r0, #8
	cmp r2, r0
	blt _0808215C
_080820A8:
	adds r2, r5, #0
	subs r2, #0x1c
	cmp r4, #0
	beq _080820BC
	mov r1, r8
	ldr r0, [r1, #4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _080820C4
	b _0808215C
_080820BC:
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	cmp r2, r0
	bgt _0808215C
_080820C4:
	cmp r4, #0
	beq _080820D4
	mov r2, r8
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	cmp r5, r0
	bge _080820DC
	b _0808215C
_080820D4:
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	cmp r5, r0
	blt _0808215C
_080820DC:
	cmp r4, #0
	beq _080820EC
	mov r1, r8
	movs r2, #0xa
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bgt _080820F4
	b _08082140
_080820EC:
	movs r1, #0xa
	ldrsh r0, [r3, r1]
	cmp r0, #0
	ble _08082140
_080820F4:
	mov r1, sb
	adds r1, #0x3c
	movs r2, #0
	movs r0, #0x7d
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x20
	strb r2, [r0]
	ldr r0, _08082138 @ =gPlayer
	cmp r4, #0
	beq _0808210C
	ldr r0, _0808213C @ =gPartner
_0808210C:
	movs r1, #0xe
	bl sa2__sub_8023B5C
	ldr r1, _08082138 @ =gPlayer
	cmp r4, #0
	beq _0808211A
	ldr r1, _0808213C @ =gPartner
_0808211A:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _08082138 @ =gPlayer
	cmp r4, #0
	beq _08082126
	ldr r1, _0808213C @ =gPartner
_08082126:
	movs r0, #0xe
	strb r0, [r1, #0xf]
	movs r0, #0xb9
	bl m4aSongNumStart
	movs r2, #1
	mov sl, r2
	b _08082170
	.align 2, 0
_08082138: .4byte gPlayer
_0808213C: .4byte gPartner
_08082140:
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
	cmp r4, #0
	beq _0808214E
	ldr r3, _08082158 @ =gPartner
_0808214E:
	adds r0, r7, #0
	bl sub_80096B0
	b _08082170
	.align 2, 0
_08082158: .4byte gPartner
_0808215C:
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
	cmp r4, #0
	beq _0808216A
	ldr r3, _08082190 @ =gPartner
_0808216A:
	adds r0, r7, #0
	bl sub_80096B0
_08082170:
	adds r4, #1
	ldr r0, _08082194 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	bge _08082180
	b _08081F6C
_08082180:
	mov r0, sl
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08082190: .4byte gPartner
_08082194: .4byte gNumSingleplayerCharacters

	thumb_func_start TaskDestructor_PanelGate
TaskDestructor_PanelGate: @ 0x08082198
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0
