.include "constants/constants.inc"

.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	movs r0, #0
	str r0, [sp, #0x14] @ sp14 = layer = 0
	ldr r0, _0808CD34 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov sl, r0          @ sl = r0 = stone
	ldr r2, _0808CD38 @ =0x0300000C
	adds r2, r1, r2
	str r2, [sp, #0xc]  @ sp0C = r2 = s
	ldr r3, [r0]
	str r3, [sp, #0x10]
	ldrb r3, [r0, #8]
	lsls r3, r3, #3
	ldrh r0, [r0, #4]
	lsls r0, r0, #8
	adds r3, r3, r0
	lsls r3, r3, #0x10  @ r3 = worldX << 16
	ldr r4, [sp, #0x10]
	ldrb r2, [r4, #1]
	lsls r2, r2, #3
	mov r7, sl
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10  @ r2 = worldY << 16
	ldr r0, _0808CD3C @ =0x030000AC
	adds r4, r1, r0
	ldr r7, _0808CD40 @ =0x030000A4
	adds r1, r1, r7
	ldr r0, [r4]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r4]
	asrs r0, r0, #8
	lsrs r5, r2, #0x10  @ r5 = r2 = worldY
	asrs r2, r2, #0x10
	adds r0, r2, r0
	ldr r4, _0808CD44 @ =gCamera
	ldrh r1, [r4, #2]
	subs r0, r0, r1
	ldr r1, [sp, #0xc]  @ r1 = sp0C = s
	strh r0, [r1, #0x18]
	lsrs r6, r3, #0x10  @ r6 = worldX
	asrs r3, r3, #0x10
	movs r7, #0
	ldrsh r1, [r4, r7]
	movs r7, #0xb8
	lsls r7, r7, #1
	adds r0, r1, r7
	cmp r3, r0
	bgt _0808CCFE
	adds r0, r1, #0
	subs r0, #0x80
	cmp r3, r0
	blt _0808CCFE
	movs r0, #2
	ldrsh r1, [r4, r0]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r2, r0
	bgt _0808CCFE
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _0808CD48
_0808CCFE:
	ldr r4, [sp, #0xc]  @ r4 = sp0C = s
	ldrh r0, [r4, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0808CD24
	movs r7, #0x18
	ldrsh r0, [r4, r7]
	adds r0, #0x80
	cmp r0, #0
	blt _0808CD24
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808CD48
_0808CD24:
	movs r0, #0xc6
	bl m4aSongNumStop
	mov r1, sl
	ldrb r0, [r1, #8]
	ldr r2, [sp, #0x10]
	strb r0, [r2]
	b _0808D2F8_destroy_task
	.align 2, 0
_0808CD34: .4byte gCurTask
_0808CD38: .4byte 0x0300000C
_0808CD3C: .4byte 0x030000AC
_0808CD40: .4byte 0x030000A4
_0808CD44: .4byte gCamera
_0808CD48:
	movs r2, #0         @ r2 = i
	lsls r5, r5, #0x10
	str r5, [sp, #0x20] @ sp20 = worldY << 16
	lsls r6, r6, #0x10
	str r6, [sp, #0x1c] @ sp1C = worldX << 16
	mov r3, sl
	adds r3, #0xac
	str r3, [sp, #0x28] @ sp28 = &stone->qUnkAC
	ldr r4, _0808CD84 @ =gNumSingleplayerCharacters
	mov ip, r4
	mov r7, sl
	adds r7, #0xb0
	str r7, [sp, #0x2c] @ sp2C = &stone->qUnkB0
	mov r0, sl
	adds r0, #0xa8
	str r0, [sp, #0x24] @ sp24 = &stone->qUnkA8
	ldr r4, _0808CD88 @ =gPartner
	movs r1, #0x80
	mov r8, r1          @ r8 = 0x80
	ldr r3, _0808CD8C @ =gPlayer
	movs r7, #0x27
	adds r7, r7, r3
	mov sb, r7          @ sb = &gPlayer.layer
	asrs r6, r5, #8     @ r6 = Q(worldY)
	ldr r7, _0808CD90 @ =0x00000404
	ldr r5, [sp, #0x28]
_0808CD7C_loop:
	cmp r2, #0
	beq _0808CD94
	ldr r0, [r4, #0x10]
	b _0808CD96
	.align 2, 0
_0808CD84: .4byte gNumSingleplayerCharacters
_0808CD88: .4byte gPartner
_0808CD8C: .4byte gPlayer
_0808CD90: .4byte 0x00000404
_0808CD94:
	ldr r0, [r3, #0x10]
_0808CD96:
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	bne _0808CDF2_continue
	cmp r2, #0
	bne _0808CDA8
	mov r0, sb          @ r0 = sb = &gPlayer.layer
	ldrb r0, [r0]
	str r0, [sp, #0x14] @ sp14 = gPlayer.layer
_0808CDA8:
	mov r0, sl
	adds r0, #0xb2
	ldrb r0, [r0]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0808CDF2_continue
	cmp r2, #0
	beq _0808CDC0
	ldr r0, [r4, #0x10]
	b _0808CDC2
_0808CDC0:
	ldr r0, [r3, #0x10]
_0808CDC2:
	ands r0, r7     @ r0 & 0x404
	cmp r0, #0
	bne _0808CDDC
	ldr r0, [r5]
	adds r0, r6, r0
	ldr r1, _0808CDD8 @ =0xFFFFD200
	adds r0, r0, r1
	cmp r2, #0
	bne _0808CDE8
	b _0808CDF0
	.align 2, 0
_0808CDD8: .4byte 0xFFFFD200
_0808CDDC:
	ldr r0, [r5]
	adds r0, r6, r0
	ldr r1, _0808CDEC @ =0xFFFFD600
	adds r0, r0, r1
	cmp r2, #0
	beq _0808CDF0
_0808CDE8:
	str r0, [r4, #4]
	b _0808CDF2_continue
	.align 2, 0
_0808CDEC: .4byte 0xFFFFD600
_0808CDF0:
	str r0, [r3, #4]
_0808CDF2_continue:
	adds r2, #1
	mov r1, ip
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	blt _0808CD7C_loop
	ldr r2, [sp, #0x2c] @ r2 = sp2C = &stone->qUnkB0
	ldrb r0, [r2]
	cmp r0, #0
	bne _0808CE08
	b _0808CF88
_0808CE08:
	ldr r3, [sp, #0x20] @ r3 = sp20 = worldY << 16
	asrs r0, r3, #0x10
	ldr r4, [sp, #0x28] @ r4 = sp28 = &stone->qUnkAC
	ldr r1, [r4]
	asrs r1, r1, #8
	adds r0, r0, r1
	ldr r7, [sp, #0x1c] @ r7 = sp1C = worldX
	asrs r1, r7, #0x10
	ldr r3, [sp, #0x24] @ r3 = sp24 = &stone->qUnkA8
	ldr r2, [r3]
	asrs r2, r2, #8
	adds r1, r1, r2
	movs r4, #0
	str r4, [sp]
	ldr r7, _0808CE40 @ =sa2__sub_801EE64
	str r7, [sp, #4]
	ldr r2, [sp, #0x14] @ r2 = sp14 = layer
	movs r3, #8
	bl sa2__sub_801F07C
	cmp r0, #0
	blt _0808CE44
	mov r1, sl
	adds r1, #0xa4
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	b _0808D15E
	.align 2, 0
_0808CE40: .4byte sa2__sub_801EE64
_0808CE44:
	mov r0, sl
	adds r0, #0xa4
	str r4, [r0]
	ldr r0, [sp, #0x2c] @ r0 = sp2C = &stone->qUnkB0
	strb r4, [r0]
	mov r4, sl
	adds r4, #0xb1
	ldrb r0, [r4]
	cmp r0, #0
	beq _0808CE66
	movs r0, #0xc6
	bl m4aSongNumStart
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	b _0808D15E
_0808CE66:
	movs r5, #0
	ldr r6, _0808CE7C @ =gPartner
	ldr r7, _0808CE80 @ =gPlayer
	adds r3, r6, #0
	adds r3, #0x40  @ r3 = &gPartner->charState
	adds r4, r7, #0
	adds r4, #0x40  @ r4 = &gPlayer->charState
_0808CE74_loop:
	cmp r5, #0
	beq _0808CE84
	ldr r0, [r6, #0x10]
	b _0808CE86
	.align 2, 0
_0808CE7C: .4byte gPartner
_0808CE80: .4byte gPlayer
_0808CE84:
	ldr r0, [r7, #0x10]
_0808CE86:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0808CF72_continue
	mov r2, sl
	adds r2, #0xb2
	ldrb r1, [r2]
	asrs r1, r5
	movs r0, #1
	ands r1, r0
	mov r8, r2
	cmp r1, #0
	beq _0808CF72_continue
	cmp r5, #0
	beq _0808CEAC
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r6, #0xa]
	b _0808CEB2
_0808CEAC:
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r7, #0xa]
_0808CEB2:
	ldr r2, _0808CEC4 @ =gPlayer
	mov r0, sl
	adds r0, #0xa0
	ldr r1, [r0]
	mov sb, r0      @ sb = &stone->qUnkA0
	cmp r5, #0
	beq _0808CEC8
	strh r1, [r6, #8]
	b _0808CECA
	.align 2, 0
_0808CEC4: .4byte gPlayer
_0808CEC8:
	strh r1, [r2, #8]
_0808CECA:
	mov r1, sb      @ r1 = sb = &stone->qUnkA0
	ldr r0, [r1]
	cmp r5, #0
	beq _0808CED6
	strh r0, [r6, #0xc]
	b _0808CED8
_0808CED6:
	strh r0, [r2, #0xc]
_0808CED8:
	adds r0, r2, #0
	cmp r5, #0
	beq _0808CEE0
	ldr r0, _0808CEF8 @ =gPartner
_0808CEE0:
	str r3, [sp, #0x30]
	bl Player_TransitionCancelFlyingAndBoost
	ldr r3, [sp, #0x30] @ sp30 = &gPartner->charState
	cmp r5, #0
	beq _0808CEFC
	ldr r0, [r6, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
	b _0808CF06
	.align 2, 0
_0808CEF8: .4byte gPartner
_0808CEFC:
	ldr r0, [r7, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
_0808CF06:
	cmp r5, #0
	beq _0808CF14
	ldr r0, [r6, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r6, #0x10]
	b _0808CF1C
_0808CF14:
	ldr r0, [r7, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r7, #0x10]
_0808CF1C:
	cmp r5, #0
	beq _0808CF26
	movs r0, #0
	str r0, [r6, #0x28]
	b _0808CF28
_0808CF26:
	str r5, [r7, #0x28]
_0808CF28:
	cmp r5, #0
	beq _0808CF3C
	ldr r2, _0808CF38 @ =gPartner + 0x59
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #3
	bne _0808CF46
	b _0808CF58
	.align 2, 0
_0808CF38: .4byte gPartner + 0x59
_0808CF3C:
	ldr r1, _0808CF50 @ =gPlayer + 0x59
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #3
	beq _0808CF58
_0808CF46:
	cmp r5, #0
	beq _0808CF54
	movs r0, #5
	strb r0, [r3]
	b _0808CF66
	.align 2, 0
_0808CF50: .4byte gPlayer + 0x59
_0808CF54:
	movs r0, #5
	b _0808CF64
_0808CF58:
	cmp r5, #0
	beq _0808CF62
	movs r0, #0x55
	strb r0, [r3]
	b _0808CF66
_0808CF62:
	movs r0, #0x55
_0808CF64:
	strb r0, [r4]
_0808CF66:
	movs r1, #1
	lsls r1, r5
	mov r2, r8
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
_0808CF72_continue:
	adds r5, #1
	ldr r0, _0808CF84 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	bge _0808CF82
	b _0808CE74_loop
_0808CF82:
	b _0808D2B2
	.align 2, 0
_0808CF84: .4byte gNumSingleplayerCharacters
_0808CF88:
	ldr r2, [sp, #0x20] @ r2 = sp20 = worldY << 16
	asrs r0, r2, #0x10
	ldr r3, [sp, #0x28] @ r3 = sp28 = &stone->qUnkAC
	ldr r1, [r3]
	asrs r1, r1, #8
	adds r0, r0, r1
	ldr r4, [sp, #0x1c] @ r4 = sp1C = worldX << 16
	asrs r1, r4, #0x10
	ldr r7, [sp, #0x24] @ r7 = &stone->qUnkA8
	ldr r2, [r7]
	asrs r2, r2, #8
	adds r1, r1, r2
	add r2, sp, #8
	str r2, [sp]
	ldr r3, _0808CFEC @ =sa2__sub_801EE64
	str r3, [sp, #4]
	ldr r2, [sp, #0x14] @ r2 = sp14 = layer
	movs r3, #8
	bl sa2__sub_801E4E4
	cmp r0, #5
	ble _0808D03E
	movs r0, #0xc6
	bl m4aSongNumStop
	ldr r0, _0808CFF0 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	cmp r0, #3
	beq _0808D006
	mov r6, sl
	adds r6, #0xa4
	ldr r5, [r6]
	mov r4, sl
	adds r4, #0xa0
	ldr r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	movs r1, #5
	bl Div
	mov sb, r4      @ sb = r4 = qUnkA0
	cmp r0, #0
	bge _0808CFF4
	ldr r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	b _0808D02C
	.align 2, 0
_0808CFEC: .4byte sa2__sub_801EE64
_0808CFF0: .4byte gCurrentLevel
_0808CFF4:
	mov r4, sb
	ldr r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
_0808CFFC:
	movs r1, #5
	bl Div
	subs r0, r5, r0
	b _0808D034
_0808D006:
	mov r6, sl
	adds r6, #0xa4
	ldr r5, [r6]
	mov r4, sl
	adds r4, #0xa0
	ldr r0, [r4]
	lsls r0, r0, #1
	movs r1, #5
	bl Div
	mov sb, r4
	cmp r0, #0
	bge _0808D026
	ldr r0, [r4]
	lsls r0, r0, #1
	b _0808CFFC
_0808D026:
	mov r7, sb
	ldr r0, [r7]
	lsls r0, r0, #1
_0808D02C:
	movs r1, #5
	bl Div
	adds r0, r5, r0
_0808D034:
	str r0, [r6]
	movs r0, #1
	ldr r1, [sp, #0x2c]
	strb r0, [r1]
	b _0808D15E
_0808D03E:
	movs r5, #0
	movs r2, #0xa0
	add r2, sl
	mov sb, r2      @ sb = &stone->qUnkA0
	mov r4, sl
	adds r4, #0xb3  @ r4 = &stone->unkB3
	ldr r2, _0808D060 @ =gSineTable
	adds r0, #3
	str r0, [sp, #0x18]
	ldr r7, _0808D064 @ =gPartner
	ldr r6, _0808D068 @ =gPlayer
	mov r8, r2      @ r8 = r2 = gSineTable
_0808D056_loop:
	cmp r5, #0
	beq _0808D06C
	ldr r0, [r7, #0x10]
	b _0808D06E
	.align 2, 0
_0808D060: .4byte gSineTable
_0808D064: .4byte gPartner
_0808D068: .4byte gPlayer
_0808D06C:
	ldr r0, [r6, #0x10]
_0808D06E:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0808D0F0
	mov r0, sl
	adds r0, #0xb2
	ldrb r0, [r0]
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0808D0F0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0808D0BE
	add r0, sp, #8
	ldrb r0, [r0]
	lsls r0, r0, #3
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _0808D0B4 @ =0x000017B6
	bl Div
	adds r1, r0, #0
	cmp r5, #0
	beq _0808D0B8
	ldr r0, [r7]
	adds r0, r0, r1
	str r0, [r7]
	b _0808D0EE
	.align 2, 0
_0808D0B4: .4byte 0x000017B6
_0808D0B8:
	ldr r0, [r6]
	adds r0, r0, r1
	b _0808D0EC
_0808D0BE:
	add r0, sp, #8
	ldrb r0, [r0]
	lsls r0, r0, #3
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	add r0, r8
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r1, _0808D0E4 @ =0x000017B6
	bl Div
	adds r1, r0, #0
	cmp r5, #0
	beq _0808D0E8
	ldr r0, [r7]
	subs r0, r0, r1
	str r0, [r7]
	b _0808D0EE
	.align 2, 0
_0808D0E4: .4byte 0x000017B6
_0808D0E8:
	ldr r0, [r6]
	subs r0, r0, r1
_0808D0EC:
	str r0, [r6]
_0808D0EE:
	ldr r2, _0808D128 @ =gSineTable
_0808D0F0:
	adds r5, #1
	ldr r0, _0808D12C @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	blt _0808D056_loop
	ldrb r0, [r4]
	cmp r0, #0
	beq _0808D130
	add r0, sp, #8
	ldrb r0, [r0]
	lsls r0, r0, #3
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r0, r4
	adds r0, r0, r2
	movs r7, #0
	ldrsh r0, [r0, r7]
	movs r1, #0xb4
	lsls r1, r1, #3
	bl Div
	mov r2, sb
	ldr r1, [r2]
	subs r1, r1, r0
	str r1, [r2]
	b _0808D152
	.align 2, 0
_0808D128: .4byte gSineTable
_0808D12C: .4byte gNumSingleplayerCharacters
_0808D130:
	add r0, sp, #8
	ldrb r0, [r0]
	lsls r0, r0, #3
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r0, r0, r2
	movs r4, #0
	ldrsh r0, [r0, r4]
	movs r1, #0xb4
	lsls r1, r1, #3
	bl Div
	mov r7, sb
	ldr r1, [r7]
	adds r1, r1, r0
	str r1, [r7]
_0808D152:
	ldr r0, [sp, #0x18]
	lsls r1, r0, #8
	ldr r2, [sp, #0x28]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
_0808D15E:
	ldr r3, [sp, #0x1c]     @ r3 = sp1C = worldX << 16
	asrs r0, r3, #0x10
	ldr r4, [sp, #0x24]     @ r4 = sp24 = &stone->qUnkA8
	ldr r1, [r4]
	asrs r1, r1, #8
	adds r0, r0, r1
	adds r0, #0x12
	ldr r7, [sp, #0x20] @ r7 = sp20 = worldY << 16
	asrs r1, r7, #0x10
	ldr r3, [sp, #0x28]
	ldr r2, [r3]
	asrs r2, r2, #8
	adds r1, r1, r2
	subs r1, #0x1e
	add r4, sp, #8
	str r4, [sp]
	ldr r2, _0808D1A8 @ =sa2__sub_801ED24
	str r2, [sp, #4]
	ldr r2, [sp, #0x14] @ r2 = sp14 = layer
	movs r3, #8
	bl sa2__sub_801F07C
	cmp r0, #0
	blt _0808D190
	b _0808D314
_0808D190:
	movs r5, #0
	ldr r6, _0808D1AC @ =gPartner
	ldr r7, _0808D1B0 @ =gPlayer
	adds r3, r6, #0
	adds r3, #0x40
	adds r4, r7, #0
	adds r4, #0x40
_0808D19E_loop:
	cmp r5, #0
	beq _0808D1B4
	ldr r0, [r6, #0x10]
	b _0808D1B6
	.align 2, 0
_0808D1A8: .4byte sa2__sub_801ED24
_0808D1AC: .4byte gPartner
_0808D1B0: .4byte gPlayer
_0808D1B4:
	ldr r0, [r7, #0x10]
_0808D1B6:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0808D2A2
	mov r2, sl
	adds r2, #0xb2
	ldrb r1, [r2]
	asrs r1, r5
	movs r0, #1
	ands r1, r0
	mov r8, r2
	cmp r1, #0
	beq _0808D2A2
	cmp r5, #0
	beq _0808D1DC
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r6, #0xa]
	b _0808D1E2
_0808D1DC:
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r7, #0xa]
_0808D1E2:
	ldr r2, _0808D1F4 @ =gPlayer
	mov r0, sl
	adds r0, #0xa0
	ldr r1, [r0]
	mov sb, r0
	cmp r5, #0
	beq _0808D1F8
	strh r1, [r6, #8]
	b _0808D1FA
	.align 2, 0
_0808D1F4: .4byte gPlayer
_0808D1F8:
	strh r1, [r2, #8]
_0808D1FA:
	mov r1, sb
	ldr r0, [r1]
	cmp r5, #0
	beq _0808D206
	strh r0, [r6, #0xc]
	b _0808D208
_0808D206:
	strh r0, [r2, #0xc]
_0808D208:
	adds r0, r2, #0
	cmp r5, #0
	beq _0808D210
	ldr r0, _0808D228 @ =gPartner
_0808D210:
	str r3, [sp, #0x30]
	bl Player_TransitionCancelFlyingAndBoost
	ldr r3, [sp, #0x30]
	cmp r5, #0
	beq _0808D22C
	ldr r0, [r6, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
	b _0808D236
	.align 2, 0
_0808D228: .4byte gPartner
_0808D22C:
	ldr r0, [r7, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
_0808D236:
	cmp r5, #0
	beq _0808D244
	ldr r0, [r6, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r6, #0x10]
	b _0808D24C
_0808D244:
	ldr r0, [r7, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r7, #0x10]
_0808D24C:
	cmp r5, #0
	beq _0808D256
	movs r0, #0
	str r0, [r6, #0x28]
	b _0808D258
_0808D256:
	str r5, [r7, #0x28]
_0808D258:
	cmp r5, #0
	beq _0808D26C
	ldr r2, _0808D268 @ =gPartner + 0x59
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #3
	bne _0808D276
	b _0808D288
	.align 2, 0
_0808D268: .4byte gPartner + 0x59
_0808D26C:
	ldr r1, _0808D280 @ =gPlayer + 0x59
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #3
	beq _0808D288
_0808D276:
	cmp r5, #0
	beq _0808D284
	movs r0, #5
	strb r0, [r3]
	b _0808D296
	.align 2, 0
_0808D280: .4byte gPlayer + 0x59
_0808D284:
	movs r0, #5
	b _0808D294
_0808D288:
	cmp r5, #0
	beq _0808D292
	movs r0, #0x55
	strb r0, [r3]
	b _0808D296
_0808D292:
	movs r0, #0x55
_0808D294:
	strb r0, [r4]
_0808D296:
	movs r1, #1
	lsls r1, r5
	mov r2, r8
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
_0808D2A2:
	adds r5, #1
	ldr r0, _0808D304 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	bge _0808D2B2
	b _0808D19E_loop
_0808D2B2:
	movs r0, #0xc6
	bl m4aSongNumStop
	ldr r0, _0808D308 @ =sa2__gUnknown_0300194C
	ldr r3, [sp, #0xc]
	ldrh r2, [r3, #0x16]
	strh r2, [r0]
	ldr r0, _0808D30C @ =sa2__gUnknown_03002820
	ldrh r3, [r3, #0x18]
	strh r3, [r0]
	ldr r4, [sp, #0x24] @ r4 = sp24 = &stone->qUnkA8
	ldr r1, [r4]
	asrs r1, r1, #8     @ r1 = I(stone->qUnkA8)
	ldr r7, [sp, #0x1c] @ r7 = sp1C = worldX << 16
	asrs r0, r7, #0x10
	adds r0, r0, r1
	subs r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x28] @ r1 = sp28 = &stone->qUnkAC
	ldr r2, [r1]
	asrs r2, r2, #8
	ldr r4, [sp, #0x20] @ r4 = sp20 = worldY << 16
	asrs r1, r4, #0x10
	adds r1, r1, r2
	adds r3, #0x14
	subs r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl CreateSkatingStoneDebris
	mov r7, sl
	ldrb r0, [r7, #8]
	ldr r1, [sp, #0x10]
	strb r0, [r1]
_0808D2F8_destroy_task:
	ldr r0, _0808D310 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0808D9C0_return
	.align 2, 0
_0808D304: .4byte gNumSingleplayerCharacters
_0808D308: .4byte sa2__gUnknown_0300194C
_0808D30C: .4byte sa2__gUnknown_03002820
_0808D310: .4byte gCurTask
_0808D314:
	movs r6, #0
	movs r2, #0xa0
	add r2, sl
	mov sb, r2
	ldr r5, _0808D328 @ =gPartner
	ldr r4, _0808D32C @ =gPlayer
_0808D320_loop:
	cmp r6, #0
	beq _0808D330
	ldr r0, [r5, #0x10]
	b _0808D332
	.align 2, 0
_0808D328: .4byte gPartner
_0808D32C: .4byte gPlayer
_0808D330:
	ldr r0, [r4, #0x10]
_0808D332:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808D33C
	b _0808D984_continue
_0808D33C:
	mov r1, sl
	adds r1, #0xb2
	ldrb r0, [r1]
	asrs r0, r6
	movs r3, #1
	ands r0, r3
	mov r8, r1
	cmp r0, #0
	bne _0808D350
	b _0808D84A
_0808D350:
	cmp r6, #0
	beq _0808D360
	ldr r0, [r5, #0x10]
	movs r7, #2
	ands r0, r7
	cmp r0, #0
	bne _0808D36A
	b _0808D378
_0808D360:
	ldr r0, [r4, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0808D378
_0808D36A:
	movs r1, #1
	lsls r1, r6
	mov r2, r8
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
	b _0808D984_continue
_0808D378:
	cmp r6, #0
	beq _0808D388
	ldr r0, [r5, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _0808D392
_0808D388:
	ldr r0, [r4, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
_0808D392:
	cmp r6, #0
	beq _0808D3A4
	ldr r0, [r5, #0x10]
	ldr r1, _0808D3A0 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #0x10]
	b _0808D3AC
	.align 2, 0
_0808D3A0: .4byte 0xFFFFFEFF
_0808D3A4:
	ldr r0, [r4, #0x10]
	ldr r1, _0808D3BC @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #0x10]
_0808D3AC:
	cmp r6, #0
	beq _0808D3C0
	ldr r0, [r5, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _0808D3CA
	.align 2, 0
_0808D3BC: .4byte 0xFFFFFEFF
_0808D3C0:
	ldr r0, [r4, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
_0808D3CA:
	cmp r6, #0
	beq _0808D3D2
	ldr r0, [r5]
	b _0808D3D4
_0808D3D2:
	ldr r0, [r4]
_0808D3D4:
	asrs r3, r0, #8
	cmp r6, #0
	beq _0808D3DE
	ldr r0, [r5, #4]
	b _0808D3E0
_0808D3DE:
	ldr r0, [r4, #4]
_0808D3E0:
	asrs r1, r0, #8
	cmp r6, #0
	beq _0808D3F0
	ldr r7, _0808D3EC @ =gPartner + 0x27
	ldrb r2, [r7]
	b _0808D3F4
	.align 2, 0
_0808D3EC: .4byte gPartner + 0x27
_0808D3F0:
	ldr r0, _0808D41C @ =gPlayer + 0x27
	ldrb r2, [r0]
_0808D3F4:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0808D420 @ =sa2__sub_801ED24
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	bl sa2__sub_801F07C
	adds r7, r0, #0
	cmp r7, #0
	bge _0808D464
	cmp r6, #0
	beq _0808D424
	ldr r0, [r5, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _0808D42E
	.align 2, 0
_0808D41C: .4byte gPlayer + 0x27
_0808D420: .4byte sa2__sub_801ED24
_0808D424:
	ldr r0, [r4, #0x10]
	movs r2, #9
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r4, #0x10]
_0808D42E:
	cmp r6, #0
	beq _0808D43C
	ldr r0, [r5, #0x10]
	movs r3, #2
	orrs r0, r3
	str r0, [r5, #0x10]
	b _0808D444
_0808D43C:
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
_0808D444:
	movs r1, #1
	lsls r1, r6
	mov r2, r8
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
	lsls r1, r7, #8
	cmp r6, #0
	beq _0808D45E
	ldr r0, [r5]
	adds r0, r0, r1
	str r0, [r5]
	b _0808D464
_0808D45E:
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
_0808D464:
	cmp r6, #0
	beq _0808D46C
	ldr r0, [r5]
	b _0808D46E
_0808D46C:
	ldr r0, [r4]
_0808D46E:
	asrs r3, r0, #8
	cmp r6, #0
	beq _0808D478
	ldr r0, [r5, #4]
	b _0808D47A
_0808D478:
	ldr r0, [r4, #4]
_0808D47A:
	asrs r1, r0, #8
	cmp r6, #0
	beq _0808D48C
	ldr r7, _0808D488 @ =gPartner + 0x27
	ldrb r2, [r7]
	b _0808D490
	.align 2, 0
_0808D488: .4byte gPartner + 0x27
_0808D48C:
	ldr r0, _0808D4B8 @ =gPlayer + 0x27
	ldrb r2, [r0]
_0808D490:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0808D4BC @ =sa2__sub_801ED24
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sa2__sub_801F07C
	adds r7, r0, #0
	cmp r7, #0
	bge _0808D500
	cmp r6, #0
	beq _0808D4C0
	ldr r0, [r5, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _0808D4CA
	.align 2, 0
_0808D4B8: .4byte gPlayer + 0x27
_0808D4BC: .4byte sa2__sub_801ED24
_0808D4C0:
	ldr r0, [r4, #0x10]
	movs r2, #9
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r4, #0x10]
_0808D4CA:
	cmp r6, #0
	beq _0808D4D8
	ldr r0, [r5, #0x10]
	movs r3, #2
	orrs r0, r3
	str r0, [r5, #0x10]
	b _0808D4E0
_0808D4D8:
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
_0808D4E0:
	movs r1, #1
	lsls r1, r6
	mov r2, r8
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
	lsls r1, r7, #8
	cmp r6, #0
	beq _0808D4FA
	ldr r0, [r5]
	subs r0, r0, r1
	str r0, [r5]
	b _0808D500
_0808D4FA:
	ldr r0, [r4]
	subs r0, r0, r1
	str r0, [r4]
_0808D500:
	ldr r3, [sp, #0x24] @ r3 = sp24 = &stone->qUnkA8
	ldr r1, [r3]
	asrs r1, r1, #8
	ldr r7, [sp, #0x1c] @ r7 = sp1C = worldX << 16
	asrs r0, r7, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10  @ r7 = worldX + I(stone->qUnkA8)
	ldr r0, [sp, #0x28] @ r0 = sp28 = &stone->qUnkAC
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r2, [sp, #0x20] @ r2 = sp20 = worldY << 16
	asrs r0, r2, #0x10
	adds r0, r0, r1
	subs r0, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r3, _0808D54C @ =gPlayer
	cmp r6, #0
	beq _0808D52A
	ldr r3, _0808D550 @ =gPartner
_0808D52A:
	ldr r0, [sp, #0xc]
	adds r1, r7, #0
	bl Coll_Player_Entity_Intersection
	cmp r0, #0
	bne _0808D538
	b _0808D7F6
_0808D538:
	mov r3, sb      @ r3 = sb = &stone->qUnkA0
	ldr r0, [r3]
	lsls r1, r0, #1
	cmp r6, #0
	beq _0808D554
	ldr r0, [r5]
	adds r0, r0, r1
	str r0, [r5]
	b _0808D55A
	.align 2, 0
_0808D54C: .4byte gPlayer
_0808D550: .4byte gPartner
_0808D554:
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
_0808D55A:
	mov r7, sb      @ r7 = sb = &stone->qUnkA0
	ldr r0, [r7]
	lsls r1, r0, #1
	cmp r6, #0
	beq _0808D568
	ldr r0, [r5]
	b _0808D56A
_0808D568:
	ldr r0, [r4]
_0808D56A:
	adds r0, r0, r1
	asrs r3, r0, #8
	cmp r6, #0
	beq _0808D576
	ldr r0, [r5, #4]
	b _0808D578
_0808D576:
	ldr r0, [r4, #4]
_0808D578:
	asrs r1, r0, #8
	cmp r6, #0
	beq _0808D588
	ldr r0, _0808D584 @ =gPartner + 0x27
	ldrb r2, [r0]
	b _0808D58C
	.align 2, 0
_0808D584: .4byte gPartner + 0x27
_0808D588:
	ldr r7, _0808D5C0 @ =gPlayer + 0x27
	ldrb r2, [r7]
_0808D58C:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0808D5C4 @ =sa2__sub_801ED24
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	bl sa2__sub_801E4E4
	adds r7, r0, #0
	cmp r7, #0
	bge _0808D67A
	ldr r0, _0808D5C8 @ =gPlayer
	cmp r6, #0
	beq _0808D5AA
	ldr r0, _0808D5CC @ =gPartner
_0808D5AA:
	bl Player_TransitionCancelFlyingAndBoost
	cmp r6, #0
	beq _0808D5D0
	ldr r0, [r5, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _0808D5DA
	.align 2, 0
_0808D5C0: .4byte gPlayer + 0x27
_0808D5C4: .4byte sa2__sub_801ED24
_0808D5C8: .4byte gPlayer
_0808D5CC: .4byte gPartner
_0808D5D0:
	ldr r0, [r4, #0x10]
	movs r2, #9
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r4, #0x10]
_0808D5DA:
	cmp r6, #0
	beq _0808D5E8
	ldr r0, [r5, #0x10]
	movs r3, #2
	orrs r0, r3
	str r0, [r5, #0x10]
	b _0808D5F0
_0808D5E8:
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
_0808D5F0:
	cmp r6, #0
	beq _0808D604
	ldr r2, _0808D600 @ =gPartner + 0x59
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #3
	bne _0808D60E
	b _0808D62C
	.align 2, 0
_0808D600: .4byte gPartner + 0x59
_0808D604:
	ldr r3, _0808D618 @ =gPlayer + 0x59
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #3
	beq _0808D62C
_0808D60E:
	cmp r6, #0
	beq _0808D620
	movs r0, #5
	ldr r1, _0808D61C @ =gPartner + 0x40
	b _0808D640
	.align 2, 0
_0808D618: .4byte gPlayer + 0x59
_0808D61C: .4byte gPartner + 0x40
_0808D620:
	movs r0, #5
	ldr r2, _0808D628 @ =gPlayer + 0x40
	strb r0, [r2]
	b _0808D642
	.align 2, 0
_0808D628: .4byte gPlayer + 0x40
_0808D62C:
	cmp r6, #0
	beq _0808D63C
	movs r0, #0x55
	ldr r3, _0808D638 @ =gPartner + 0x40
	strb r0, [r3]
	b _0808D642
	.align 2, 0
_0808D638: .4byte gPartner + 0x40
_0808D63C:
	movs r0, #0x55
	ldr r1, _0808D64C @ =gPlayer + 0x40
_0808D640:
	strb r0, [r1]
_0808D642:
	cmp r6, #0
	beq _0808D650
	movs r0, #0
	str r0, [r5, #0x28]
	b _0808D652
	.align 2, 0
_0808D64C: .4byte gPlayer + 0x40
_0808D650:
	str r6, [r4, #0x28]
_0808D652:
	movs r1, #1
	lsls r1, r6
	mov r2, r8
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
	lsls r1, r7, #8
	cmp r6, #0
	beq _0808D66C
	ldr r0, [r5]
	adds r0, r0, r1
	str r0, [r5]
	b _0808D672
_0808D66C:
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
_0808D672:
	cmp r6, #0
	beq _0808D678
	b _0808D796
_0808D678:
	b _0808D79C
_0808D67A:
	mov r3, sb      @ r3 = sb = &stone->qUnkA0
	ldr r0, [r3]
	lsls r1, r0, #1
	cmp r6, #0
	beq _0808D688
	ldr r0, [r5]
	b _0808D68A
_0808D688:
	ldr r0, [r4]
_0808D68A:
	adds r0, r0, r1
	asrs r3, r0, #8
	cmp r6, #0
	beq _0808D696
	ldr r0, [r5, #4]
	b _0808D698
_0808D696:
	ldr r0, [r4, #4]
_0808D698:
	asrs r1, r0, #8
	cmp r6, #0
	beq _0808D6A8
	ldr r7, _0808D6A4 @ =gPartner + 0x27
	ldrb r2, [r7]
	b _0808D6AC
	.align 2, 0
_0808D6A4: .4byte gPartner + 0x27
_0808D6A8:
	ldr r0, _0808D6E0 @ =gPlayer + 0x27
	ldrb r2, [r0]
_0808D6AC:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0808D6E4 @ =sa2__sub_801ED24
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sa2__sub_801E4E4
	adds r7, r0, #0
	cmp r7, #0
	bge _0808D79E
	ldr r0, _0808D6E8 @ =gPlayer
	cmp r6, #0
	beq _0808D6CC
	ldr r0, _0808D6EC @ =gPartner
_0808D6CC:
	bl Player_TransitionCancelFlyingAndBoost
	cmp r6, #0
	beq _0808D6F0
	ldr r0, [r5, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _0808D6FA
	.align 2, 0
_0808D6E0: .4byte gPlayer + 0x27
_0808D6E4: .4byte sa2__sub_801ED24
_0808D6E8: .4byte gPlayer
_0808D6EC: .4byte gPartner
_0808D6F0:
	ldr r0, [r4, #0x10]
	movs r2, #9
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r4, #0x10]
_0808D6FA:
	cmp r6, #0
	beq _0808D708
	ldr r0, [r5, #0x10]
	movs r3, #2
	orrs r0, r3
	str r0, [r5, #0x10]
	b _0808D710
_0808D708:
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
_0808D710:
	cmp r6, #0
	beq _0808D724
	ldr r2, _0808D720 @ =gPartner + 0x59
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #3
	bne _0808D72E
	b _0808D74C
	.align 2, 0
_0808D720: .4byte gPartner + 0x59
_0808D724:
	ldr r3, _0808D738 @ =gPlayer + 0x59
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #3
	beq _0808D74C
_0808D72E:
	cmp r6, #0
	beq _0808D740
	movs r0, #5
	ldr r1, _0808D73C @ =gPartner + 0x40
	b _0808D760
	.align 2, 0
_0808D738: .4byte gPlayer + 0x59
_0808D73C: .4byte gPartner + 0x40
_0808D740:
	movs r0, #5
	ldr r2, _0808D748 @ =gPlayer + 0x40
	strb r0, [r2]
	b _0808D762
	.align 2, 0
_0808D748: .4byte gPlayer + 0x40
_0808D74C:
	cmp r6, #0
	beq _0808D75C
	movs r0, #0x55
	ldr r3, _0808D758 @ =gPartner + 0x40
	strb r0, [r3]
	b _0808D762
	.align 2, 0
_0808D758: .4byte gPartner + 0x40
_0808D75C:
	movs r0, #0x55
	ldr r1, _0808D76C @ =gPlayer + 0x40
_0808D760:
	strb r0, [r1]
_0808D762:
	cmp r6, #0
	beq _0808D770
	movs r0, #0
	str r0, [r5, #0x28]
	b _0808D772
	.align 2, 0
_0808D76C: .4byte gPlayer + 0x40
_0808D770:
	str r6, [r4, #0x28]
_0808D772:
	movs r1, #1
	lsls r1, r6
	mov r2, r8
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
	lsls r1, r7, #8
	cmp r6, #0
	beq _0808D78C
	ldr r0, [r5]
	subs r0, r0, r1
	str r0, [r5]
	b _0808D792
_0808D78C:
	ldr r0, [r4]
	subs r0, r0, r1
	str r0, [r4]
_0808D792:
	cmp r6, #0
	beq _0808D79C
_0808D796:
	movs r0, #0
	strh r0, [r5, #8]
	b _0808D79E
_0808D79C:
	strh r6, [r4, #8]
_0808D79E:
	cmp r6, #0
	beq _0808D7A6
	ldr r0, [r5, #0x10]
	b _0808D7A8
_0808D7A6:
	ldr r0, [r4, #0x10]
_0808D7A8:
	ldr r1, _0808D7C0 @ =0x00000404
	ands r0, r1
	cmp r0, #0
	bne _0808D7D6
	ldr r0, _0808D7C4 @ =gCamera
	movs r3, #2
	ldrsh r1, [r0, r3]
	cmp r6, #0
	beq _0808D7C8
	ldr r0, [r5, #4]
	b _0808D7CA
	.align 2, 0
_0808D7C0: .4byte 0x00000404
_0808D7C4: .4byte gCamera
_0808D7C8:
	ldr r0, [r4, #4]
_0808D7CA:
	asrs r0, r0, #8
	subs r0, r0, r1
	adds r0, #0x2e
	ldr r7, [sp, #0xc]
	strh r0, [r7, #0x18]
	b _0808D984_continue
_0808D7D6:
	ldr r0, _0808D7E4 @ =gCamera
	movs r2, #2
	ldrsh r1, [r0, r2]
	cmp r6, #0
	beq _0808D7E8
	ldr r0, [r5, #4]
	b _0808D7EA
	.align 2, 0
_0808D7E4: .4byte gCamera
_0808D7E8:
	ldr r0, [r4, #4]
_0808D7EA:
	asrs r0, r0, #8
	subs r0, r0, r1
	adds r0, #0x2a
	ldr r3, [sp, #0xc]
	strh r0, [r3, #0x18]
	b _0808D984_continue
_0808D7F6:
	ldr r0, _0808D814 @ =gPlayer
	cmp r6, #0
	beq _0808D7FE
	ldr r0, _0808D818 @ =gPartner
_0808D7FE:
	bl Player_TransitionCancelFlyingAndBoost
	cmp r6, #0
	beq _0808D81C
	ldr r0, [r5, #0x10]
	movs r7, #9
	rsbs r7, r7, #0
	ands r0, r7
	str r0, [r5, #0x10]
	b _0808D826
	.align 2, 0
_0808D814: .4byte gPlayer
_0808D818: .4byte gPartner
_0808D81C:
	ldr r0, [r4, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
_0808D826:
	cmp r6, #0
	beq _0808D834
	ldr r0, [r5, #0x10]
	movs r2, #2
	orrs r0, r2
	str r0, [r5, #0x10]
	b _0808D83C
_0808D834:
	ldr r0, [r4, #0x10]
	movs r3, #2
	orrs r0, r3
	str r0, [r4, #0x10]
_0808D83C:
	movs r1, #1
	lsls r1, r6
	mov r7, r8
	ldrb r0, [r7]
	bics r0, r1
	strb r0, [r7]
	b _0808D984_continue
_0808D84A:
	ldr r0, [sp, #0x24] @ r0 = sp24 = &stone->qUnkA8
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r2, [sp, #0x1c] @ r2 = sp1C = worldX << 16
	asrs r0, r2, #0x10
	adds r0, r0, r1     @ r0 = worldX + I(stone->qUnkA8)
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	ldr r3, [sp, #0x28] @ r3 = sp28 = &stone->qUnkAC
	ldr r1, [r3]
	asrs r1, r1, #8     @ r1 = I(stone->qUnkAC)
	ldr r2, [sp, #0x20] @ r2 = sp20 = worldY << 16
	asrs r0, r2, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r3, _0808D894 @ =gPlayer
	cmp r6, #0
	beq _0808D872
	ldr r3, _0808D898 @ =gPartner
_0808D872:
	ldr r0, [sp, #0xc]
	adds r1, r7, #0
	bl Coll_Player_PlatformCrumbling
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	bne _0808D884
	b _0808D984_continue
_0808D884:
	cmp r6, #0
	beq _0808D89C
	ldr r0, [r5, #4]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r5, #4]
	b _0808D8A6
	.align 2, 0
_0808D894: .4byte gPlayer
_0808D898: .4byte gPartner
_0808D89C:
	ldr r0, [r4, #4]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r0, r7
	str r0, [r4, #4]
_0808D8A6:
	movs r0, #1
	lsls r0, r6
	mov r2, r8
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0808D8CC @ =gPlayer
	cmp r6, #0
	beq _0808D8BA
	ldr r0, _0808D8D0 @ =gPartner
_0808D8BA:
	bl Player_TransitionCancelFlyingAndBoost
	cmp r6, #0
	beq _0808D8D4
	ldr r0, [r5, #0x10]
	movs r1, #8
	orrs r0, r1
	str r0, [r5, #0x10]
	b _0808D8DC
	.align 2, 0
_0808D8CC: .4byte gPlayer
_0808D8D0: .4byte gPartner
_0808D8D4:
	ldr r0, [r4, #0x10]
	movs r1, #8
	orrs r0, r1
	str r0, [r4, #0x10]
_0808D8DC:
	cmp r6, #0
	beq _0808D8EC
	ldr r0, [r5, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _0808D8F6
_0808D8EC:
	ldr r0, [r4, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
_0808D8F6:
	cmp r6, #0
	beq _0808D908
	ldr r0, [r5, #0x10]
	ldr r1, _0808D904 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #0x10]
	b _0808D910
	.align 2, 0
_0808D904: .4byte 0xFFFFFEFF
_0808D908:
	ldr r0, [r4, #0x10]
	ldr r1, _0808D920 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #0x10]
_0808D910:
	cmp r6, #0
	beq _0808D924
	ldr r0, [r5, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _0808D92E
	.align 2, 0
_0808D920: .4byte 0xFFFFFEFF
_0808D924:
	ldr r0, [r4, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
_0808D92E:
	cmp r6, #0
	beq _0808D93E
	ldr r0, [r5, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _0808D948
_0808D93E:
	ldr r0, [r4, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
_0808D948:
	cmp r6, #0
	beq _0808D958
	movs r0, #4
	ldr r3, _0808D954 @ =gPartner + 0x40
	strb r0, [r3]
	b _0808D95E
	.align 2, 0
_0808D954: .4byte gPartner + 0x40
_0808D958:
	movs r0, #4
	ldr r7, _0808D9D0 @ =gPlayer + 0x40
	strb r0, [r7]
_0808D95E:
	ldr r0, _0808D9D4 @ =gPlayer
	cmp r6, #0
	beq _0808D966
	ldr r0, _0808D9D8 @ =gPartner
_0808D966:
	movs r1, #0xe
	bl sa2__sub_8023B5C
	ldr r1, _0808D9D4 @ =gPlayer
	cmp r6, #0
	beq _0808D974
	ldr r1, _0808D9D8 @ =gPartner
_0808D974:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _0808D9D4 @ =gPlayer
	cmp r6, #0
	beq _0808D980
	ldr r1, _0808D9D8 @ =gPartner
_0808D980:
	movs r0, #0xe
	strb r0, [r1, #0xf]
_0808D984_continue:
	adds r6, #1
	ldr r0, _0808D9DC @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r6, r0
	bge _0808D994
	b _0808D320_loop
_0808D994:
	mov r0, sb          @ r0 = &stone->qUnkA0
	ldr r1, [r0]
	lsls r1, r1, #1
	ldr r2, [sp, #0x24] @ r2 = sp24 = &stone->qUnkA8
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	asrs r0, r0, #8
	ldr r3, [sp, #0x1c] @ r3 = sp1C = worldX << 16
	asrs r1, r3, #0x10
	adds r1, r1, r0
	ldr r0, _0808D9E0 @ =gCamera
	ldrh r0, [r0]
	subs r1, r1, r0
	ldr r4, [sp, #0xc]
	strh r1, [r4, #0x16]
	ldr r0, [sp, #0xc]
	bl UpdateSpriteAnimation
	ldr r0, [sp, #0xc]
	bl DisplaySprite
_0808D9C0_return:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808D9D0: .4byte gPlayer + 0x40
_0808D9D4: .4byte gPlayer
_0808D9D8: .4byte gPartner
_0808D9DC: .4byte gNumSingleplayerCharacters
_0808D9E0: .4byte gCamera

.syntax divided
