.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateChaoMessageMP
CreateChaoMessageMP: @ 0x0803A950
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r1, _0803AAA4 @ =gUnknown_030058B8
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	ldr r1, _0803AAA8 @ =gMultiplayerMissingHeartbeats
	strb r0, [r1, #3]
	strb r0, [r1, #2]
	strb r0, [r1, #1]
	strb r0, [r1]
	ldr r1, _0803AAAC @ =gUnknown_030058B4
	strb r0, [r1]
	movs r2, #0
	ldr r6, _0803AAB0 @ =Task_ChaoMessageInit
	ldr r0, _0803AAB4 @ =gMultiplayerConnections
	ldrb r3, [r0]
	movs r4, #1
_0803A984:
	adds r0, r3, #0
	asrs r0, r2
	ands r0, r4
	cmp r0, #0
	beq _0803A994
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0803A994:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _0803A984
	movs r2, #0x80
	lsls r2, r2, #6
	movs r5, #0
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #0x58
	movs r3, #0
	bl TaskCreate
	ldrh r7, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r7, r4
	ldr r0, _0803AAB8 @ =0x03000055
	adds r0, r0, r7
	mov sb, r0
	mov r1, r8
	strb r1, [r0]
	ldr r0, _0803AAAC @ =gUnknown_030058B4
	ldrb r1, [r0]
	ldr r2, _0803AABC @ =0x03000054
	adds r0, r7, r2
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_803AB60
	ldr r6, _0803AAC0 @ =0x03000048
	adds r0, r7, r6
	movs r3, #0
	ldr r1, _0803AAC4 @ =0x0000FF10
	strh r1, [r0]
	ldr r2, _0803AAC8 @ =0x0300004A
	adds r0, r7, r2
	movs r2, #0xf0
	strh r2, [r0]
	adds r6, #4
	adds r0, r7, r6
	strh r1, [r0]
	ldr r1, _0803AACC @ =0x0300004E
	adds r0, r7, r1
	strh r2, [r0]
	ldr r1, _0803AAD0 @ =gDispCnt
	movs r6, #0xc5
	lsls r6, r6, #6
	adds r0, r6, #0
	strh r0, [r1]
	ldr r1, _0803AAD4 @ =gBgCntRegs
	ldr r0, _0803AAD8 @ =0x00004803
	strh r0, [r1]
	ldr r1, _0803AADC @ =gBgScrollRegs
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	strh r5, [r1, #2]
	ldr r1, _0803AAE0 @ =gWinRegs
	strh r2, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	movs r0, #0x31
	strh r0, [r1, #8]
	strh r0, [r1, #0xa]
	ldr r1, _0803AAE4 @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	str r5, [sp, #4]
	ldr r1, _0803AAE8 @ =0x040000D4
	add r0, sp, #4
	str r0, [r1]
	ldr r0, _0803AAEC @ =0x06001FE0
	str r0, [r1, #4]
	ldr r0, _0803AAF0 @ =0x85000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _0803AAF4 @ =sa2__gUnknown_03004D80
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _0803AAF8 @ =sa2__gUnknown_03002280
	strb r3, [r1]
	strb r3, [r1, #1]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #2]
	movs r0, #0x40
	strb r0, [r1, #3]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r4, #4]
	movs r0, #0xff
	strh r0, [r4, #0xa]
	ldr r0, _0803AAFC @ =0x06004000
	str r0, [r4, #0xc]
	strh r5, [r4, #0x18]
	strh r5, [r4, #0x1a]
	movs r0, #0x58
	strh r0, [r4, #0x1c]
	strh r5, [r4, #0x1e]
	strh r5, [r4, #0x20]
	strh r5, [r4, #0x22]
	strh r5, [r4, #0x24]
	movs r0, #0x1e
	strh r0, [r4, #0x26]
	movs r0, #0x14
	strh r0, [r4, #0x28]
	ldr r1, _0803AB00 @ =0x0300002A
	adds r0, r7, r1
	strb r3, [r0]
	strh r5, [r4, #0x2e]
	adds r0, r4, #0
	bl DrawBackground
	ldr r1, _0803AB04 @ =gBgPalette
	ldr r2, _0803AB08 @ =0x00007B60
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _0803AB0C @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	mov r6, sb
	ldrb r0, [r6]
	cmp r0, #1
	beq _0803AB1E
	cmp r0, #1
	bgt _0803AB10
	cmp r0, #0
	beq _0803AB16
	b _0803AB4E
	.align 2, 0
_0803AAA4: .4byte gUnknown_030058B8
_0803AAA8: .4byte gMultiplayerMissingHeartbeats
_0803AAAC: .4byte gUnknown_030058B4
_0803AAB0: .4byte Task_ChaoMessageInit
_0803AAB4: .4byte gMultiplayerConnections
_0803AAB8: .4byte 0x03000055
_0803AABC: .4byte 0x03000054
_0803AAC0: .4byte 0x03000048
_0803AAC4: .4byte 0x0000FF10
_0803AAC8: .4byte 0x0300004A
_0803AACC: .4byte 0x0300004E
_0803AAD0: .4byte gDispCnt
_0803AAD4: .4byte gBgCntRegs
_0803AAD8: .4byte 0x00004803
_0803AADC: .4byte gBgScrollRegs
_0803AAE0: .4byte gWinRegs
_0803AAE4: .4byte gBldRegs
_0803AAE8: .4byte 0x040000D4
_0803AAEC: .4byte 0x06001FE0
_0803AAF0: .4byte 0x85000010
_0803AAF4: .4byte sa2__gUnknown_03004D80
_0803AAF8: .4byte sa2__gUnknown_03002280
_0803AAFC: .4byte 0x06004000
_0803AB00: .4byte 0x0300002A
_0803AB04: .4byte gBgPalette
_0803AB08: .4byte 0x00007B60
_0803AB0C: .4byte gFlags
_0803AB10:
	cmp r0, #2
	beq _0803AB48
	b _0803AB4E
_0803AB16:
	movs r0, #6
	bl m4aSongNumStart
	b _0803AB4E
_0803AB1E:
	ldr r1, _0803AB30 @ =0x03000056
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803AB34
	movs r0, #7
	bl m4aSongNumStart
	b _0803AB4E
	.align 2, 0
_0803AB30: .4byte 0x03000056
_0803AB34:
	cmp r0, #1
	bne _0803AB40
	movs r0, #8
	bl m4aSongNumStart
	b _0803AB4E
_0803AB40:
	movs r0, #9
	bl m4aSongNumStart
	b _0803AB4E
_0803AB48:
	ldr r0, _0803AB5C @ =0x0000012F @ SE_VS_MULTIPAK_CONN_CLOSE
	bl m4aSongNumStart
_0803AB4E:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803AB5C: .4byte 0x0000012F

	thumb_func_start sub_803AB60
sub_803AB60: @ 0x0803AB60
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov ip, r0
	adds r0, #0x54
	ldrb r0, [r0]
	cmp r0, #4
	bhi _0803ABA8
	lsls r0, r0, #2
	ldr r1, _0803AB80 @ =_0803AB84
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803AB80: .4byte _0803AB84
_0803AB84: @ jump table
	.4byte _0803ABA8 @ case 0
	.4byte _0803ABA8 @ case 1
	.4byte _0803AB98 @ case 2
	.4byte _0803ABA0 @ case 3
	.4byte _0803ABA8 @ case 4
_0803AB98:
	mov r1, ip
	adds r1, #0x50
	movs r0, #0x28
	b _0803ABAE
_0803ABA0:
	mov r1, ip
	adds r1, #0x50
	movs r0, #0x14
	b _0803ABAE
_0803ABA8:
	mov r1, ip
	adds r1, #0x50
	movs r0, #0
_0803ABAE:
	strh r0, [r1]
	mov r0, ip
	adds r0, #0x55
	ldrb r0, [r0]
	cmp r0, #1
	bne _0803ABBC
	b _0803AD28
_0803ABBC:
	cmp r0, #1
	bgt _0803ABC8
	cmp r0, #0
	beq _0803ABD4
	bl _0803B55E
_0803ABC8:
	cmp r0, #2
	bne _0803ABD0
	bl sub_803B534
_0803ABD0:
	bl _0803B55E
_0803ABD4:
	movs r0, #0
	str r0, [sp]
	movs r1, #0
	str r1, [sp, #4]
	movs r4, #0
	mov r0, ip
	adds r0, #0x54
	mov r8, r0
	movs r2, #0x44
	add r2, ip
	mov sb, r2
	mov r3, ip
	adds r3, #0x40
	str r3, [sp, #8]
	ldrb r0, [r0]
	cmp r4, r0
	bhs _0803ACBE
	ldr r1, _0803AC44 @ =gUnknown_030058A8
	mov ip, r1
	movs r2, #1
	add r2, ip
	mov sl, r2
	movs r7, #0
	mov r6, sb
	adds r5, r3, #0
_0803AC06:
	ldr r3, _0803AC48 @ =gUnknown_03005008
	adds r0, r4, r3
	ldrb r1, [r0]
	ldr r0, _0803AC4C @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r4, r0
	beq _0803ACB0
	cmp r1, #9
	bhi _0803AC58
	lsls r3, r4, #1
	mov r0, ip
	adds r0, r3, r0
	str r0, [sp, #0x10]
	lsls r1, r1, #4
	ldr r2, _0803AC50 @ =gLoadedSaveGame
	adds r1, r1, r2
	movs r2, #0xe3
	lsls r2, r2, #2
	adds r0, r1, r2
	ldrb r0, [r0]
	ldr r2, [sp, #0x10]
	strb r0, [r2]
	mov r0, sl
	adds r2, r3, r0
	ldr r0, _0803AC54 @ =0x0000038D
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2]
	b _0803AC68
	.align 2, 0
_0803AC44: .4byte gUnknown_030058A8
_0803AC48: .4byte gUnknown_03005008
_0803AC4C: .4byte 0x04000128
_0803AC50: .4byte gLoadedSaveGame
_0803AC54: .4byte 0x0000038D
_0803AC58:
	lsls r0, r4, #1
	mov r2, ip
	adds r1, r0, r2
	strb r7, [r1]
	mov r3, sl
	adds r1, r0, r3
	strb r7, [r1]
	adds r3, r0, #0
_0803AC68:
	mov r1, ip
	adds r0, r3, r1
	mov r2, sl
	adds r1, r3, r2
	ldrb r2, [r0]
	ldrb r0, [r1]
	cmp r2, r0
	bls _0803AC8E
	adds r0, r6, r4
	movs r1, #6
	strb r1, [r0]
	adds r0, r5, r4
	strb r1, [r0]
	ldr r0, [sp]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	b _0803ACB0
_0803AC8E:
	cmp r2, r0
	bhs _0803ACA8
	adds r0, r6, r4
	movs r1, #1
	strb r1, [r0]
	adds r0, r5, r4
	strb r1, [r0]
	ldr r0, [sp, #4]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	b _0803ACB0
_0803ACA8:
	adds r0, r6, r4
	strb r7, [r0]
	adds r0, r5, r4
	strb r7, [r0]
_0803ACB0:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	mov r3, r8
	ldrb r3, [r3]
	cmp r4, r3
	blo _0803AC06
_0803ACBE:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	cmp r0, r1
	bls _0803ACD8
	ldr r2, _0803ACD4 @ =0x04000128
	ldr r0, [r2]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	add r0, sb
	movs r1, #1
	b _0803ACEC
	.align 2, 0
_0803ACD4: .4byte 0x04000128
_0803ACD8:
	ldr r3, [sp]
	ldr r0, [sp, #4]
	cmp r3, r0
	bhs _0803AD04
	ldr r2, _0803AD00 @ =0x04000128
	ldr r0, [r2]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	add r0, sb
	movs r1, #6
_0803ACEC:
	strb r1, [r0]
	ldr r0, [r2]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	ldr r2, [sp, #8]
	adds r0, r2, r0
	strb r1, [r0]
	bl _0803B55E
	.align 2, 0
_0803AD00: .4byte 0x04000128
_0803AD04:
	ldr r2, _0803AD24 @ =0x04000128
	ldr r0, [r2]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	add r0, sb
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r2]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	ldr r3, [sp, #8]
	adds r0, r3, r0
	strb r1, [r0]
	bl _0803B55E
	.align 2, 0
_0803AD24: .4byte 0x04000128
_0803AD28:
	ldr r0, _0803AD78 @ =gUnknown_030058B4
	ldrb r0, [r0]
	cmp r0, #2
	beq _0803AD3E
	ldr r0, _0803AD7C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _0803AD3E
	cmp r0, #5
	beq _0803AD3E
	b _0803AF88
_0803AD3E:
	movs r4, #0
	mov r0, ip
	adds r0, #0x54
	mov r8, r0
	adds r0, #2
	str r0, [sp, #0xc]
	mov r1, r8
	ldrb r1, [r1]
	cmp r4, r1
	blo _0803AD54
	b _0803AF08
_0803AD54:
	ldr r6, _0803AD80 @ =gLoadedSaveGame
	ldr r2, _0803AD84 @ =gUnknown_03005008
	mov sl, r2
	ldr r7, _0803AD88 @ =0x0000038E
	movs r3, #0x63
	mov sb, r3
_0803AD60:
	ldr r1, _0803AD8C @ =sa2__gUnknown_030054B4
	adds r0, r4, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #1
	beq _0803AE10
	cmp r1, #1
	bgt _0803AD90
	cmp r1, #0
	beq _0803AD96
	b _0803AE10
	.align 2, 0
_0803AD78: .4byte gUnknown_030058B4
_0803AD7C: .4byte gGameMode
_0803AD80: .4byte gLoadedSaveGame
_0803AD84: .4byte gUnknown_03005008
_0803AD88: .4byte 0x0000038E
_0803AD8C: .4byte sa2__gUnknown_030054B4
_0803AD90:
	cmp r1, #4
	beq _0803AE84
	b _0803AE10
_0803AD96:
	mov r0, ip
	adds r0, #0x44
	adds r0, r0, r4
	movs r1, #2
	strb r1, [r0]
	mov r0, ip
	adds r0, #0x40
	adds r0, r0, r4
	strb r1, [r0]
	ldr r1, _0803ADE0 @ =0x04000128
	ldr r0, [r1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r4, r0
	bne _0803ADB6
	b _0803AEF8
_0803ADB6:
	ldr r0, [r1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	ldr r2, _0803ADE4 @ =sa2__gUnknown_030054B4
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0803ADEC
	ldr r3, _0803ADE8 @ =gGameMode
	ldrb r0, [r3]
	cmp r0, #3
	bne _0803ADD4
	b _0803AEF8
_0803ADD4:
	cmp r0, #5
	bne _0803ADDA
	b _0803AEF8
_0803ADDA:
	mov r0, sl
	adds r2, r4, r0
	b _0803AED8
	.align 2, 0
_0803ADE0: .4byte 0x04000128
_0803ADE4: .4byte sa2__gUnknown_030054B4
_0803ADE8: .4byte gGameMode
_0803ADEC:
	mov r0, sl
	adds r3, r4, r0
	ldrb r1, [r3]
	lsls r1, r1, #4
	adds r1, r1, r6
	ldr r2, _0803AE0C @ =0x0000038D
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r6
	adds r1, r0, r2
	b _0803AEEE
	.align 2, 0
_0803AE0C: .4byte 0x0000038D
_0803AE10:
	mov r0, ip
	adds r0, #0x44
	adds r0, r0, r4
	movs r1, #3
	strb r1, [r0]
	mov r0, ip
	adds r0, #0x40
	adds r0, r0, r4
	strb r1, [r0]
	ldr r1, _0803AE64 @ =0x04000128
	ldr r0, [r1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r4, r0
	beq _0803AEF8
	ldr r0, [r1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	ldr r3, _0803AE68 @ =sa2__gUnknown_030054B4
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0803AE6C
	mov r0, sl
	adds r3, r4, r0
	ldrb r1, [r3]
	lsls r1, r1, #4
	adds r1, r1, r6
	movs r2, #0xe3
	lsls r2, r2, #2
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r6
	adds r1, r0, r2
	b _0803AEEE
	.align 2, 0
_0803AE64: .4byte 0x04000128
_0803AE68: .4byte sa2__gUnknown_030054B4
_0803AE6C:
	ldr r3, _0803AE80 @ =gGameMode
	ldrb r0, [r3]
	cmp r0, #3
	beq _0803AEF8
	cmp r0, #5
	beq _0803AEF8
	mov r0, sl
	adds r2, r4, r0
	b _0803AED8
	.align 2, 0
_0803AE80: .4byte gGameMode
_0803AE84:
	mov r0, ip
	adds r0, #0x44
	adds r0, r0, r4
	strb r1, [r0]
	mov r0, ip
	adds r0, #0x40
	adds r0, r0, r4
	strb r1, [r0]
	ldr r5, _0803AF28 @ =0x04000128
	ldr r0, [r5]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r4, r0
	beq _0803AEF8
	ldr r3, _0803AF2C @ =gGameMode
	ldrb r0, [r3]
	cmp r0, #3
	beq _0803AEAC
	cmp r0, #5
	bne _0803AED4
_0803AEAC:
	ldr r0, _0803AF30 @ =gMultiplayerConnections
	ldrb r3, [r0]
	movs r2, #0x10
	lsls r2, r4
	ands r2, r3
	adds r0, r4, #4
	asrs r2, r0
	ldr r1, [r5]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	movs r0, #0x10
	lsls r0, r1
	ands r3, r0
	ldr r0, [r5]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, #4
	asrs r3, r0
	cmp r2, r3
	beq _0803AEF8
_0803AED4:
	mov r1, sl
	adds r2, r4, r1
_0803AED8:
	ldrb r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r6
	adds r0, r0, r7
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r6
	adds r1, r0, r7
_0803AEEE:
	ldrb r0, [r1]
	cmp r0, #0x63
	bls _0803AEF8
	mov r2, sb
	strb r2, [r1]
_0803AEF8:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	mov r3, r8
	ldrb r3, [r3]
	cmp r4, r3
	bhs _0803AF08
	b _0803AD60
_0803AF08:
	ldr r1, _0803AF28 @ =0x04000128
	ldr r0, [r1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	ldr r2, _0803AF34 @ =sa2__gUnknown_030054B4
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0803AF40
	ldr r3, [sp, #0xc]
	strb r0, [r3]
	ldr r0, _0803AF38 @ =gLoadedSaveGame
	ldr r2, _0803AF3C @ =0x00000425
	b _0803B516
	.align 2, 0
_0803AF28: .4byte 0x04000128
_0803AF2C: .4byte gGameMode
_0803AF30: .4byte gMultiplayerConnections
_0803AF34: .4byte sa2__gUnknown_030054B4
_0803AF38: .4byte gLoadedSaveGame
_0803AF3C: .4byte 0x00000425
_0803AF40:
	ldr r0, [r1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	ldr r3, _0803AF64 @ =sa2__gUnknown_030054B4
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	bne _0803AF70
	movs r0, #2
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	ldr r2, _0803AF68 @ =gLoadedSaveGame
	ldr r3, _0803AF6C @ =0x00000427
	adds r1, r2, r3
	b _0803B518
	.align 2, 0
_0803AF64: .4byte sa2__gUnknown_030054B4
_0803AF68: .4byte gLoadedSaveGame
_0803AF6C: .4byte 0x00000427
_0803AF70:
	movs r0, #1
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	ldr r2, _0803AF80 @ =gLoadedSaveGame
	ldr r3, _0803AF84 @ =0x00000426
	adds r1, r2, r3
	b _0803B518
	.align 2, 0
_0803AF80: .4byte gLoadedSaveGame
_0803AF84: .4byte 0x00000426
_0803AF88:
	cmp r0, #4
	beq _0803AF8E
	b _0803B2C8
_0803AF8E:
	movs r4, #0
	movs r2, #0
	mov r0, ip
	adds r0, #0x54
	ldrb r1, [r0]
	mov r8, r0
	adds r0, #2
	str r0, [sp, #0xc]
	cmp r4, r1
	bhs _0803AFC0
	ldr r3, _0803B028 @ =sa2__gUnknown_030054B4
_0803AFA4:
	adds r0, r4, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0803AFB6
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_0803AFB6:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r1
	blo _0803AFA4
_0803AFC0:
	cmp r2, #1
	beq _0803AFC6
	b _0803B0E4
_0803AFC6:
	movs r4, #0
	mov r1, r8
	ldrb r1, [r1]
	cmp r4, r1
	bhs _0803B098
	ldr r2, _0803B028 @ =sa2__gUnknown_030054B4
	mov sl, r2
	ldr r3, _0803B02C @ =gLoadedSaveGame
	ldr r0, _0803B030 @ =0x0000038D
	mov sb, r0
	movs r7, #0xe3
	lsls r7, r7, #2
	ldr r6, _0803B034 @ =gUnknown_03005008
	mov r5, ip
	adds r5, #0x44
_0803AFE4:
	mov r1, sl
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0803B03C
	adds r0, r5, r4
	movs r1, #2
	strb r1, [r0]
	mov r0, ip
	adds r0, #0x40
	adds r0, r0, r4
	strb r1, [r0]
	ldr r0, _0803B038 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r4, r0
	beq _0803B08A
	adds r2, r4, r6
	ldrb r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r3
	add r0, sb
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r3
	mov r2, sb
	adds r1, r0, r2
	b _0803B080
	.align 2, 0
_0803B028: .4byte sa2__gUnknown_030054B4
_0803B02C: .4byte gLoadedSaveGame
_0803B030: .4byte 0x0000038D
_0803B034: .4byte gUnknown_03005008
_0803B038: .4byte 0x04000128
_0803B03C:
	adds r0, r5, r4
	movs r1, #3
	strb r1, [r0]
	mov r0, ip
	adds r0, #0x40
	adds r0, r0, r4
	strb r1, [r0]
	ldr r1, _0803B0BC @ =0x04000128
	ldr r0, [r1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r4, r0
	beq _0803B08A
	ldr r0, [r1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	add r0, sl
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0803B08A
	adds r2, r4, r6
	ldrb r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, r0, r7
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r1, r0, r7
_0803B080:
	ldrb r0, [r1]
	cmp r0, #0x63
	bls _0803B08A
	movs r0, #0x63
	strb r0, [r1]
_0803B08A:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	mov r0, r8
	ldrb r0, [r0]
	cmp r4, r0
	blo _0803AFE4
_0803B098:
	ldr r0, _0803B0BC @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	ldr r1, _0803B0C0 @ =sa2__gUnknown_030054B4
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0803B0CC
	ldr r2, [sp, #0xc]
	strb r0, [r2]
	ldr r3, _0803B0C4 @ =gLoadedSaveGame
	ldr r0, _0803B0C8 @ =0x00000425
	adds r1, r3, r0
	b _0803B518
	.align 2, 0
_0803B0BC: .4byte 0x04000128
_0803B0C0: .4byte sa2__gUnknown_030054B4
_0803B0C4: .4byte gLoadedSaveGame
_0803B0C8: .4byte 0x00000425
_0803B0CC:
	movs r0, #1
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	ldr r2, _0803B0DC @ =gLoadedSaveGame
	ldr r3, _0803B0E0 @ =0x00000426
	adds r1, r2, r3
	b _0803B518
	.align 2, 0
_0803B0DC: .4byte gLoadedSaveGame
_0803B0E0: .4byte 0x00000426
_0803B0E4:
	cmp r2, #0
	bne _0803B168
	movs r4, #0
	mov r0, r8
	ldrb r0, [r0]
	cmp r4, r0
	bhs _0803B146
	movs r6, #4
	ldr r5, _0803B154 @ =gLoadedSaveGame
	ldr r3, _0803B158 @ =0x0000038E
	ldr r7, _0803B15C @ =gUnknown_03005008
_0803B0FA:
	mov r0, ip
	adds r0, #0x44
	adds r0, r0, r4
	strb r6, [r0]
	mov r0, ip
	adds r0, #0x40
	adds r0, r0, r4
	strb r6, [r0]
	ldr r0, _0803B160 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r4, r0
	beq _0803B138
	adds r2, r4, r7
	ldrb r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r5
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r5
	adds r1, r0, r3
	ldrb r0, [r1]
	cmp r0, #0x63
	bls _0803B138
	movs r0, #0x63
	strb r0, [r1]
_0803B138:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	mov r1, r8
	ldrb r1, [r1]
	cmp r4, r1
	blo _0803B0FA
_0803B146:
	movs r0, #2
	ldr r2, [sp, #0xc]
	strb r0, [r2]
	ldr r3, _0803B154 @ =gLoadedSaveGame
	ldr r0, _0803B164 @ =0x00000427
	adds r1, r3, r0
	b _0803B518
	.align 2, 0
_0803B154: .4byte gLoadedSaveGame
_0803B158: .4byte 0x0000038E
_0803B15C: .4byte gUnknown_03005008
_0803B160: .4byte 0x04000128
_0803B164: .4byte 0x00000427
_0803B168:
	movs r4, #0
	mov r1, r8
	ldrb r1, [r1]
	cmp r4, r1
	blo _0803B174
	b _0803B27A
_0803B174:
	ldr r2, _0803B1E4 @ =sa2__gUnknown_030054B4
	mov sb, r2
	ldr r3, _0803B1E8 @ =gLoadedSaveGame
	ldr r7, _0803B1EC @ =gUnknown_03005008
	ldr r6, _0803B1F0 @ =0x0000038E
	movs r5, #0x63
	movs r0, #0xe3
	lsls r0, r0, #2
	mov sl, r0
_0803B186:
	mov r1, sb
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0803B1FC
	mov r0, ip
	adds r0, #0x44
	adds r0, r0, r4
	movs r1, #4
	strb r1, [r0]
	mov r0, ip
	adds r0, #0x40
	adds r0, r0, r4
	strb r1, [r0]
	ldr r1, _0803B1F4 @ =0x04000128
	ldr r0, [r1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r4, r0
	beq _0803B26C
	ldr r0, [r1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	add r0, sb
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0803B24C
	adds r2, r4, r7
	ldrb r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r3
	ldr r1, _0803B1F8 @ =0x0000038D
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r3
	ldr r2, _0803B1F8 @ =0x0000038D
	adds r1, r0, r2
	b _0803B264
	.align 2, 0
_0803B1E4: .4byte sa2__gUnknown_030054B4
_0803B1E8: .4byte gLoadedSaveGame
_0803B1EC: .4byte gUnknown_03005008
_0803B1F0: .4byte 0x0000038E
_0803B1F4: .4byte 0x04000128
_0803B1F8: .4byte 0x0000038D
_0803B1FC:
	mov r0, ip
	adds r0, #0x44
	adds r0, r0, r4
	movs r1, #3
	strb r1, [r0]
	mov r0, ip
	adds r0, #0x40
	adds r0, r0, r4
	strb r1, [r0]
	ldr r1, _0803B248 @ =0x04000128
	ldr r0, [r1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r4, r0
	beq _0803B26C
	ldr r0, [r1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	add r0, sb
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0803B24C
	adds r2, r4, r7
	ldrb r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r3
	add r0, sl
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r3
	mov r2, sl
	adds r1, r0, r2
	b _0803B264
	.align 2, 0
_0803B248: .4byte 0x04000128
_0803B24C:
	adds r2, r4, r7
	ldrb r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, r0, r6
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r1, r0, r6
_0803B264:
	ldrb r0, [r1]
	cmp r0, #0x63
	bls _0803B26C
	strb r5, [r1]
_0803B26C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	mov r0, r8
	ldrb r0, [r0]
	cmp r4, r0
	blo _0803B186
_0803B27A:
	ldr r0, _0803B2A0 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	ldr r1, _0803B2A4 @ =sa2__gUnknown_030054B4
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0803B2B0
	movs r0, #2
	ldr r2, [sp, #0xc]
	strb r0, [r2]
	ldr r3, _0803B2A8 @ =gLoadedSaveGame
	ldr r0, _0803B2AC @ =0x00000427
	adds r1, r3, r0
	b _0803B518
	.align 2, 0
_0803B2A0: .4byte 0x04000128
_0803B2A4: .4byte sa2__gUnknown_030054B4
_0803B2A8: .4byte gLoadedSaveGame
_0803B2AC: .4byte 0x00000427
_0803B2B0:
	movs r0, #1
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	ldr r2, _0803B2C0 @ =gLoadedSaveGame
	ldr r3, _0803B2C4 @ =0x00000426
	adds r1, r2, r3
	b _0803B518
	.align 2, 0
_0803B2C0: .4byte gLoadedSaveGame
_0803B2C4: .4byte 0x00000426
_0803B2C8:
	movs r6, #0
	movs r4, #0
	mov r0, ip
	adds r0, #0x54
	ldrb r1, [r0]
	mov r8, r0
	adds r0, #2
	str r0, [sp, #0xc]
	cmp r4, r1
	bhs _0803B2FA
	ldr r2, _0803B32C @ =sa2__gUnknown_030054B4
_0803B2DE:
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	bne _0803B2F0
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0803B2F0:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r1
	blo _0803B2DE
_0803B2FA:
	mov r5, r8
	ldrb r0, [r5]
	cmp r6, r0
	bne _0803B330
	movs r4, #0
	cmp r4, r6
	blo _0803B30A
	b _0803B49E
_0803B30A:
	mov r3, ip
	adds r3, #0x44
	movs r2, #4
	mov r1, ip
	adds r1, #0x40
_0803B314:
	adds r0, r3, r4
	strb r2, [r0]
	adds r0, r1, r4
	strb r2, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrb r0, [r5]
	cmp r4, r0
	blo _0803B314
	b _0803B49E
	.align 2, 0
_0803B32C: .4byte sa2__gUnknown_030054B4
_0803B330:
	movs r4, #0
	cmp r4, r0
	blo _0803B338
	b _0803B49E
_0803B338:
	ldr r1, _0803B350 @ =sa2__gUnknown_030054B4
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #5
	bhi _0803B3E4
	lsls r0, r0, #2
	ldr r1, _0803B354 @ =_0803B358
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803B350: .4byte sa2__gUnknown_030054B4
_0803B354: .4byte _0803B358
_0803B358: @ jump table
	.4byte _0803B370 @ case 0
	.4byte _0803B384 @ case 1
	.4byte _0803B398 @ case 2
	.4byte _0803B3BE @ case 3
	.4byte _0803B3D2 @ case 4
	.4byte _0803B3D2 @ case 5
_0803B370:
	mov r0, ip
	adds r0, #0x44
	adds r0, r0, r4
	movs r1, #7
	strb r1, [r0]
	mov r0, ip
	adds r0, #0x40
	adds r0, r0, r4
	movs r1, #2
	b _0803B3E2
_0803B384:
	mov r0, ip
	adds r0, #0x44
	adds r0, r0, r4
	movs r1, #8
	strb r1, [r0]
	mov r0, ip
	adds r0, #0x40
	adds r0, r0, r4
	movs r1, #4
	b _0803B3E2
_0803B398:
	mov r0, ip
	adds r0, #0x44
	adds r0, r0, r4
	movs r1, #9
	strb r1, [r0]
	mov r2, r8
	ldrb r0, [r2]
	cmp r0, #3
	bne _0803B3B4
	mov r0, ip
	adds r0, #0x40
	adds r0, r0, r4
	movs r1, #3
	b _0803B3E2
_0803B3B4:
	mov r0, ip
	adds r0, #0x40
	adds r0, r0, r4
	movs r1, #4
	b _0803B3E2
_0803B3BE:
	mov r0, ip
	adds r0, #0x44
	adds r0, r0, r4
	movs r1, #0xa
	strb r1, [r0]
	mov r0, ip
	adds r0, #0x40
	adds r0, r0, r4
	movs r1, #3
	b _0803B3E2
_0803B3D2:
	mov r0, ip
	adds r0, #0x44
	adds r0, r0, r4
	movs r1, #3
	strb r1, [r0]
	mov r0, ip
	adds r0, #0x40
	adds r0, r0, r4
_0803B3E2:
	strb r1, [r0]
_0803B3E4:
	ldr r2, _0803B420 @ =0x04000128
	ldr r0, [r2]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r4, r0
	beq _0803B48E
	ldr r0, [r2]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	ldr r3, _0803B424 @ =sa2__gUnknown_030054B4
	adds r0, r0, r3
	adds r1, r4, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	bge _0803B430
	ldr r2, _0803B428 @ =gUnknown_03005008
	adds r2, r4, r2
	ldrb r1, [r2]
	lsls r1, r1, #4
	ldr r0, _0803B42C @ =gLoadedSaveGame
	adds r1, r1, r0
	movs r3, #0xe3
	lsls r3, r3, #2
	b _0803B472
	.align 2, 0
_0803B420: .4byte 0x04000128
_0803B424: .4byte sa2__gUnknown_030054B4
_0803B428: .4byte gUnknown_03005008
_0803B42C: .4byte gLoadedSaveGame
_0803B430:
	ldr r0, [r2]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	ldr r2, _0803B454 @ =sa2__gUnknown_030054B4
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r1
	bne _0803B464
	ldr r2, _0803B458 @ =gUnknown_03005008
	adds r2, r4, r2
	ldrb r1, [r2]
	lsls r1, r1, #4
	ldr r3, _0803B45C @ =gLoadedSaveGame
	adds r1, r1, r3
	ldr r3, _0803B460 @ =0x0000038E
	b _0803B472
	.align 2, 0
_0803B454: .4byte sa2__gUnknown_030054B4
_0803B458: .4byte gUnknown_03005008
_0803B45C: .4byte gLoadedSaveGame
_0803B460: .4byte 0x0000038E
_0803B464:
	ldr r2, _0803B4C0 @ =gUnknown_03005008
	adds r2, r4, r2
	ldrb r1, [r2]
	lsls r1, r1, #4
	ldr r3, _0803B4C4 @ =gLoadedSaveGame
	adds r1, r1, r3
	ldr r3, _0803B4C8 @ =0x0000038D
_0803B472:
	adds r1, r1, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r1, _0803B4C4 @ =gLoadedSaveGame
	adds r0, r0, r1
	adds r1, r0, r3
	ldrb r0, [r1]
	cmp r0, #0x63
	bls _0803B48E
	movs r0, #0x63
	strb r0, [r1]
_0803B48E:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	mov r2, r8
	ldrb r2, [r2]
	cmp r4, r2
	bhs _0803B49E
	b _0803B338
_0803B49E:
	ldr r1, _0803B4CC @ =0x04000128
	ldr r0, [r1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	ldr r3, _0803B4D0 @ =sa2__gUnknown_030054B4
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0803B4D8
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	ldr r2, _0803B4C4 @ =gLoadedSaveGame
	ldr r3, _0803B4D4 @ =0x00000425
	adds r1, r2, r3
	b _0803B518
	.align 2, 0
_0803B4C0: .4byte gUnknown_03005008
_0803B4C4: .4byte gLoadedSaveGame
_0803B4C8: .4byte 0x0000038D
_0803B4CC: .4byte 0x04000128
_0803B4D0: .4byte sa2__gUnknown_030054B4
_0803B4D4: .4byte 0x00000425
_0803B4D8:
	ldr r0, [r1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	ldr r1, _0803B500 @ =sa2__gUnknown_030054B4
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	bne _0803B4F4
	mov r2, r8
	ldrb r2, [r2]
	cmp r6, r2
	beq _0803B50C
_0803B4F4:
	movs r0, #1
	ldr r3, [sp, #0xc]
	strb r0, [r3]
	ldr r0, _0803B504 @ =gLoadedSaveGame
	ldr r2, _0803B508 @ =0x00000426
	b _0803B516
	.align 2, 0
_0803B500: .4byte sa2__gUnknown_030054B4
_0803B504: .4byte gLoadedSaveGame
_0803B508: .4byte 0x00000426
_0803B50C:
	movs r0, #2
	ldr r3, [sp, #0xc]
	strb r0, [r3]
	ldr r0, _0803B52C @ =gLoadedSaveGame
	ldr r2, _0803B530 @ =0x00000427
_0803B516:
	adds r1, r0, r2
_0803B518:
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x63
	bls _0803B55E
	movs r0, #0x63
	strb r0, [r1]
	b _0803B55E
	.align 2, 0
_0803B52C: .4byte gLoadedSaveGame
_0803B530: .4byte 0x00000427

	thumb_func_start sub_803B534
sub_803B534: @ 0x0803B534
	movs r4, #0
	mov r2, ip
	adds r2, #0x54
	ldrb r3, [r2]
	cmp r4, r3
	bhs _0803B55E
	mov r5, ip
	adds r5, #0x44
	movs r3, #5
	mov r1, ip
	adds r1, #0x40
_0803B54A:
	adds r0, r5, r4
	strb r3, [r0]
	adds r0, r1, r4
	strb r3, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrb r0, [r2]
	cmp r4, r0
	blo _0803B54A
_0803B55E:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Task_ChaoMessageInit
Task_ChaoMessageInit: @ 0x0803B570
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0803B5D8 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0803B616
	movs r3, #0
	ldr r0, _0803B5DC @ =gMultiplayerConnections
	ldrb r1, [r0]
	movs r2, #1
	ands r1, r2
	adds r6, r0, #0
	cmp r1, #0
	beq _0803B616
	movs r5, #1
	ldr r2, _0803B5E0 @ =gMultiplayerMissingHeartbeats
_0803B598:
	ldr r1, _0803B5E4 @ =gMultiSioStatusFlags
	adds r0, r5, #0
	lsls r0, r3
	ldr r4, [r1]
	ands r4, r0
	cmp r4, #0
	bne _0803B600
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _0803B604
	movs r0, #0
	ldr r1, _0803B5E8 @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _0803B5EC @ =gBackgroundsCopyQueueCursor
	ldr r0, _0803B5F0 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0803B5F4 @ =sa2__gUnknown_03005390
	strb r4, [r0]
	ldr r1, _0803B5F8 @ =gVramGraphicsCopyCursor
	ldr r0, _0803B5FC @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl MultiPakCommunicationError
	b _0803B790
	.align 2, 0
_0803B5D8: .4byte gGameMode
_0803B5DC: .4byte gMultiplayerConnections
_0803B5E0: .4byte gMultiplayerMissingHeartbeats
_0803B5E4: .4byte gMultiSioStatusFlags
_0803B5E8: .4byte 0x0000FFFF
_0803B5EC: .4byte gBackgroundsCopyQueueCursor
_0803B5F0: .4byte gBackgroundsCopyQueueIndex
_0803B5F4: .4byte sa2__gUnknown_03005390
_0803B5F8: .4byte gVramGraphicsCopyCursor
_0803B5FC: .4byte gVramGraphicsCopyQueueIndex
_0803B600:
	movs r0, #0
	strb r0, [r2]
_0803B604:
	adds r2, #1
	adds r3, #1
	cmp r3, #3
	bhi _0803B616
	ldrb r0, [r6]
	asrs r0, r3
	ands r0, r5
	cmp r0, #0
	bne _0803B598
_0803B616:
	ldr r0, _0803B6F4 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r2, r0, r1
	mov r8, r2
	movs r7, #0
	ldr r2, _0803B6F8 @ =0x03000054
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r7, r0
	blo _0803B632
	b _0803B774
_0803B632:
	movs r0, #0
	mov sl, r0
	movs r1, #0
	mov sb, r1
_0803B63A:
	ldr r2, _0803B6FC @ =TaskDestructor_803C184
	str r2, [sp]
	ldr r0, _0803B700 @ =Task_803C130
	movs r1, #0x38
	movs r2, #0x84
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r4, r0
	movs r0, #0x2d
	strh r0, [r2, #0x30]
	lsls r5, r7, #2
	adds r5, r5, r7
	lsls r5, r5, #3
	adds r0, r5, #2
	strh r0, [r2, #0x32]
	ldr r1, _0803B704 @ =0x03000034
	adds r0, r4, r1
	strb r7, [r0]
	adds r6, r2, #0
	movs r0, #0x28
	bl VramMalloc
	str r0, [r6, #4]
	ldr r0, _0803B708 @ =0x00000377
	strh r0, [r6, #0xa]
	mov r0, r8
	adds r0, #0x40
	adds r0, r0, r7
	ldrb r1, [r0]
	ldr r2, _0803B70C @ =0x03000020
	adds r0, r4, r2
	strb r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r6, #0x1a]
	mov r0, sb
	strh r0, [r6, #8]
	strh r0, [r6, #0x14]
	strh r0, [r6, #0x1c]
	adds r2, #1
	adds r1, r4, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0803B710 @ =0x03000022
	adds r1, r4, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0803B714 @ =0x03000025
	adds r4, r4, r1
	mov r2, sl
	strb r2, [r4]
	subs r0, #0x11
	str r0, [r6, #0x28]
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [r6, #0x10]
	ldr r0, _0803B6FC @ =TaskDestructor_803C184
	str r0, [sp]
	ldr r0, _0803B700 @ =Task_803C130
	movs r1, #0x38
	movs r2, #0x84
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	movs r0, #0xa9
	strh r0, [r2, #0x30]
	adds r5, #0x14
	strh r5, [r2, #0x32]
	ldr r0, _0803B704 @ =0x03000034
	adds r1, r1, r0
	strb r7, [r1]
	adds r6, r2, #0
	movs r0, #0x1a
	bl VramMalloc
	str r0, [r6, #4]
	ldr r0, _0803B718 @ =gLoadedSaveGame
	ldrb r0, [r0, #0x19]
	cmp r0, #0
	bne _0803B720
	ldr r0, _0803B71C @ =0x00000383
	b _0803B722
	.align 2, 0
_0803B6F4: .4byte gCurTask
_0803B6F8: .4byte 0x03000054
_0803B6FC: .4byte TaskDestructor_803C184
_0803B700: .4byte Task_803C130
_0803B704: .4byte 0x03000034
_0803B708: .4byte 0x00000377
_0803B70C: .4byte 0x03000020
_0803B710: .4byte 0x03000022
_0803B714: .4byte 0x03000025
_0803B718: .4byte gLoadedSaveGame
_0803B71C: .4byte 0x00000383
_0803B720:
	ldr r0, _0803B7A0 @ =0x00000375
_0803B722:
	strh r0, [r6, #0xa]
	mov r0, r8
	adds r0, #0x44
	adds r0, r0, r7
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x20
	strb r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r6, #0x1a]
	mov r1, sb
	strh r1, [r6, #8]
	strh r1, [r6, #0x14]
	strh r1, [r6, #0x1c]
	adds r1, r6, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x25
	mov r2, sl
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x28]
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [r6, #0x10]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	mov r0, r8
	adds r0, #0x54
	ldrb r0, [r0]
	cmp r7, r0
	bhs _0803B774
	b _0803B63A
_0803B774:
	bl sub_80535FC
	bl sub_803BEB8
	mov r1, r8
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0803B7A4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803B7A8 @ =sub_803B7AC
	str r0, [r1, #8]
	bl _call_via_r0
_0803B790:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803B7A0: .4byte 0x00000375
_0803B7A4: .4byte gCurTask
_0803B7A8: .4byte sub_803B7AC

	thumb_func_start sub_803B7AC
sub_803B7AC: @ 0x0803B7AC
	push {r4, r5, r6, r7, lr}
	movs r6, #0
	ldr r0, _0803B80C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0803B84A
	movs r3, #0
	ldr r0, _0803B810 @ =gMultiplayerConnections
	ldrb r1, [r0]
	movs r2, #1
	ands r1, r2
	adds r7, r0, #0
	cmp r1, #0
	beq _0803B84A
	movs r5, #1
	ldr r2, _0803B814 @ =gMultiplayerMissingHeartbeats
_0803B7CC:
	ldr r1, _0803B818 @ =gMultiSioStatusFlags
	adds r0, r5, #0
	lsls r0, r3
	ldr r4, [r1]
	ands r4, r0
	cmp r4, #0
	bne _0803B834
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _0803B838
	movs r0, #0
	ldr r1, _0803B81C @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _0803B820 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0803B824 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0803B828 @ =sa2__gUnknown_03005390
	strb r4, [r0]
	ldr r1, _0803B82C @ =gVramGraphicsCopyCursor
	ldr r0, _0803B830 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl MultiPakCommunicationError
	b _0803B936
	.align 2, 0
_0803B80C: .4byte gGameMode
_0803B810: .4byte gMultiplayerConnections
_0803B814: .4byte gMultiplayerMissingHeartbeats
_0803B818: .4byte gMultiSioStatusFlags
_0803B81C: .4byte 0x0000FFFF
_0803B820: .4byte gBackgroundsCopyQueueCursor
_0803B824: .4byte gBackgroundsCopyQueueIndex
_0803B828: .4byte sa2__gUnknown_03005390
_0803B82C: .4byte gVramGraphicsCopyCursor
_0803B830: .4byte gVramGraphicsCopyQueueIndex
_0803B834:
	movs r0, #0
	strb r0, [r2]
_0803B838:
	adds r2, #1
	adds r3, #1
	cmp r3, #3
	bhi _0803B84A
	ldrb r0, [r7]
	asrs r0, r3
	ands r0, r5
	cmp r0, #0
	bne _0803B7CC
_0803B84A:
	ldr r2, _0803B894 @ =gCurTask
	ldr r0, [r2]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
	adds r0, #0x52
	adds r1, r3, r0
	ldrh r0, [r1]
	adds r4, r0, #1
	strh r4, [r1]
	ldr r1, _0803B898 @ =0x03000054
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #2
	beq _0803B8CC
	cmp r0, #2
	ble _0803B916
	cmp r0, #3
	beq _0803B8A6
	cmp r0, #4
	bne _0803B916
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _0803B8A6
	ldr r4, _0803B89C @ =0x0300004E
	adds r1, r3, r4
	ldrh r3, [r1]
	movs r7, #0
	ldrsh r0, [r1, r7]
	cmp r0, #0
	beq _0803B8A0
	adds r0, r3, #0
	subs r0, #0x10
	strh r0, [r1]
	b _0803B8A6
	.align 2, 0
_0803B894: .4byte gCurTask
_0803B898: .4byte 0x03000054
_0803B89C: .4byte 0x0300004E
_0803B8A0:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0803B8A6:
	adds r0, r5, #0
	adds r0, #0x52
	ldrh r0, [r0]
	cmp r0, #0xa
	bls _0803B8CC
	adds r1, r5, #0
	adds r1, #0x4c
	ldrh r3, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	beq _0803B8C6
	adds r0, r3, #0
	adds r0, #0x10
	strh r0, [r1]
	b _0803B8CC
_0803B8C6:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0803B8CC:
	adds r0, r5, #0
	adds r0, #0x52
	ldrh r1, [r0]
	adds r4, r0, #0
	cmp r1, #5
	bls _0803B8F4
	adds r1, r5, #0
	adds r1, #0x4a
	ldrh r3, [r1]
	movs r7, #0
	ldrsh r0, [r1, r7]
	cmp r0, #0
	beq _0803B8EE
	adds r0, r3, #0
	subs r0, #0x10
	strh r0, [r1]
	b _0803B8F4
_0803B8EE:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0803B8F4:
	ldrh r0, [r4]
	cmp r0, #0
	beq _0803B916
	adds r1, r5, #0
	adds r1, #0x48
	ldrh r3, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	beq _0803B910
	adds r0, r3, #0
	adds r0, #0x10
	strh r0, [r1]
	b _0803B916
_0803B910:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0803B916:
	adds r0, r5, #0
	adds r0, #0x54
	ldrb r0, [r0]
	cmp r6, r0
	bne _0803B926
	ldr r1, [r2]
	ldr r0, _0803B93C @ =sub_803B944
	str r0, [r1, #8]
_0803B926:
	ldr r1, _0803B940 @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _0803B932
	subs r0, #1
	strh r0, [r1, #4]
_0803B932:
	bl sub_803BE0C
_0803B936:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803B93C: .4byte sub_803B944
_0803B940: .4byte gBldRegs

	thumb_func_start sub_803B944
sub_803B944: @ 0x0803B944
	push {r4, r5, r6, r7, lr}
	movs r6, #0
	ldr r0, _0803B9A4 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0803B9E2
	movs r3, #0
	ldr r0, _0803B9A8 @ =gMultiplayerConnections
	ldrb r1, [r0]
	movs r2, #1
	ands r1, r2
	adds r7, r0, #0
	cmp r1, #0
	beq _0803B9E2
	movs r5, #1
	ldr r2, _0803B9AC @ =gMultiplayerMissingHeartbeats
_0803B964:
	ldr r1, _0803B9B0 @ =gMultiSioStatusFlags
	adds r0, r5, #0
	lsls r0, r3
	ldr r4, [r1]
	ands r4, r0
	cmp r4, #0
	bne _0803B9CC
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _0803B9D0
	movs r0, #0
	ldr r1, _0803B9B4 @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _0803B9B8 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0803B9BC @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0803B9C0 @ =sa2__gUnknown_03005390
	strb r4, [r0]
	ldr r1, _0803B9C4 @ =gVramGraphicsCopyCursor
	ldr r0, _0803B9C8 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl MultiPakCommunicationError
	b _0803BACE
	.align 2, 0
_0803B9A4: .4byte gGameMode
_0803B9A8: .4byte gMultiplayerConnections
_0803B9AC: .4byte gMultiplayerMissingHeartbeats
_0803B9B0: .4byte gMultiSioStatusFlags
_0803B9B4: .4byte 0x0000FFFF
_0803B9B8: .4byte gBackgroundsCopyQueueCursor
_0803B9BC: .4byte gBackgroundsCopyQueueIndex
_0803B9C0: .4byte sa2__gUnknown_03005390
_0803B9C4: .4byte gVramGraphicsCopyCursor
_0803B9C8: .4byte gVramGraphicsCopyQueueIndex
_0803B9CC:
	movs r0, #0
	strb r0, [r2]
_0803B9D0:
	adds r2, #1
	adds r3, #1
	cmp r3, #3
	bhi _0803B9E2
	ldrb r0, [r7]
	asrs r0, r3
	ands r0, r5
	cmp r0, #0
	bne _0803B964
_0803B9E2:
	ldr r0, _0803BA28 @ =gCurTask
	ldr r3, [r0]
	ldrh r2, [r3, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r2, r1
	adds r1, #0x55
	adds r4, r2, r1
	ldrb r1, [r4]
	adds r7, r0, #0
	cmp r1, #1
	beq _0803BA3C
	ldr r0, _0803BA2C @ =0x03000052
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xef
	bls _0803BA14
	ldr r0, _0803BA30 @ =sub_803BAD4
	str r0, [r3, #8]
	movs r0, #0
	strh r0, [r1]
_0803BA14:
	ldrh r0, [r1]
	cmp r0, #0x2d
	bne _0803BACA
	ldrb r0, [r4]
	cmp r0, #0
	bne _0803BA34
	movs r0, #0x9c
	bl m4aSongNumStart
	b _0803BACA
	.align 2, 0
_0803BA28: .4byte gCurTask
_0803BA2C: .4byte 0x03000052
_0803BA30: .4byte sub_803BAD4
_0803BA34:
	movs r0, #0xa0
	bl m4aSongNumStart
	b _0803BACA
_0803BA3C:
	ldr r0, _0803BAA0 @ =0x03000052
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r2, #0
	ldr r4, _0803BAA4 @ =gPressedKeys
	adds r3, r1, #0
	ldr r1, _0803BAA8 @ =gMultiSioRecv
_0803BA4E:
	ldrh r0, [r1]
	cmp r0, #0xb0
	bne _0803BA56
	movs r6, #1
_0803BA56:
	adds r1, #0x14
	adds r2, #1
	cmp r2, #3
	bls _0803BA4E
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0803BA74
	ldrh r1, [r3]
	ldr r0, _0803BAAC @ =0x00000707
	cmp r1, r0
	bhi _0803BA74
	cmp r6, #0
	beq _0803BA88
_0803BA74:
	ldr r0, [r7]
	ldr r1, _0803BAB0 @ =sub_803BAD4
	str r1, [r0, #8]
	movs r0, #0
	strh r0, [r3]
	cmp r6, #0
	bne _0803BA88
	ldr r1, _0803BAB4 @ =gMultiSioSend
	movs r0, #0xb0
	strh r0, [r1]
_0803BA88:
	ldrh r0, [r3]
	cmp r0, #0x2d
	bne _0803BACA
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803BAB8
	movs r0, #0x9d
	bl m4aSongNumStart
	b _0803BACA
	.align 2, 0
_0803BAA0: .4byte 0x03000052
_0803BAA4: .4byte gPressedKeys
_0803BAA8: .4byte gMultiSioRecv
_0803BAAC: .4byte 0x00000707
_0803BAB0: .4byte sub_803BAD4
_0803BAB4: .4byte gMultiSioSend
_0803BAB8:
	cmp r0, #1
	bne _0803BAC4
	movs r0, #0x9e
	bl m4aSongNumStart
	b _0803BACA
_0803BAC4:
	movs r0, #0x9f
	bl m4aSongNumStart
_0803BACA:
	bl sub_803BE0C
_0803BACE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_803BAD4
sub_803BAD4: @ 0x0803BAD4
	push {r4, r5, r6, r7, lr}
	movs r6, #0
	ldr r0, _0803BB34 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0803BB72
	movs r3, #0
	ldr r0, _0803BB38 @ =gMultiplayerConnections
	ldrb r1, [r0]
	movs r2, #1
	ands r1, r2
	adds r7, r0, #0
	cmp r1, #0
	beq _0803BB72
	movs r5, #1
	ldr r2, _0803BB3C @ =gMultiplayerMissingHeartbeats
_0803BAF4:
	ldr r1, _0803BB40 @ =gMultiSioStatusFlags
	adds r0, r5, #0
	lsls r0, r3
	ldr r4, [r1]
	ands r4, r0
	cmp r4, #0
	bne _0803BB5C
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _0803BB60
	movs r0, #0
	ldr r1, _0803BB44 @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _0803BB48 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0803BB4C @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0803BB50 @ =sa2__gUnknown_03005390
	strb r4, [r0]
	ldr r1, _0803BB54 @ =gVramGraphicsCopyCursor
	ldr r0, _0803BB58 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl MultiPakCommunicationError
	b _0803BC5A
	.align 2, 0
_0803BB34: .4byte gGameMode
_0803BB38: .4byte gMultiplayerConnections
_0803BB3C: .4byte gMultiplayerMissingHeartbeats
_0803BB40: .4byte gMultiSioStatusFlags
_0803BB44: .4byte 0x0000FFFF
_0803BB48: .4byte gBackgroundsCopyQueueCursor
_0803BB4C: .4byte gBackgroundsCopyQueueIndex
_0803BB50: .4byte sa2__gUnknown_03005390
_0803BB54: .4byte gVramGraphicsCopyCursor
_0803BB58: .4byte gVramGraphicsCopyQueueIndex
_0803BB5C:
	movs r0, #0
	strb r0, [r2]
_0803BB60:
	adds r2, #1
	adds r3, #1
	cmp r3, #3
	bhi _0803BB72
	ldrb r0, [r7]
	asrs r0, r3
	ands r0, r5
	cmp r0, #0
	bne _0803BAF4
_0803BB72:
	ldr r2, _0803BBBC @ =gCurTask
	ldr r0, [r2]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
	adds r0, #0x52
	adds r1, r3, r0
	ldrh r0, [r1]
	adds r4, r0, #1
	strh r4, [r1]
	ldr r1, _0803BBC0 @ =0x03000054
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #2
	beq _0803BBF8
	cmp r0, #2
	ble _0803BC46
	cmp r0, #3
	beq _0803BBCE
	cmp r0, #4
	bne _0803BC46
	lsls r0, r4, #0x10
	cmp r0, #0
	beq _0803BBCE
	ldr r4, _0803BBC4 @ =0x0300004E
	adds r1, r3, r4
	ldrh r3, [r1]
	movs r7, #0
	ldrsh r0, [r1, r7]
	cmp r0, #0xf0
	beq _0803BBC8
	adds r0, r3, #0
	adds r0, #0x10
	strh r0, [r1]
	b _0803BBCE
	.align 2, 0
_0803BBBC: .4byte gCurTask
_0803BBC0: .4byte 0x03000054
_0803BBC4: .4byte 0x0300004E
_0803BBC8:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0803BBCE:
	adds r0, r5, #0
	adds r0, #0x52
	ldrh r0, [r0]
	cmp r0, #5
	bls _0803BBF8
	adds r3, r5, #0
	adds r3, #0x4c
	ldrh r4, [r3]
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r0, #0xf0
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0803BBF2
	adds r0, r4, #0
	subs r0, #0x10
	strh r0, [r3]
	b _0803BBF8
_0803BBF2:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0803BBF8:
	adds r0, r5, #0
	adds r0, #0x52
	ldrh r1, [r0]
	adds r4, r0, #0
	cmp r1, #0xa
	bls _0803BC20
	adds r1, r5, #0
	adds r1, #0x4a
	ldrh r3, [r1]
	movs r7, #0
	ldrsh r0, [r1, r7]
	cmp r0, #0xf0
	beq _0803BC1A
	adds r0, r3, #0
	adds r0, #0x10
	strh r0, [r1]
	b _0803BC20
_0803BC1A:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0803BC20:
	ldrh r0, [r4]
	cmp r0, #0xf
	bls _0803BC46
	adds r3, r5, #0
	adds r3, #0x48
	ldrh r4, [r3]
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r0, #0xf0
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0803BC40
	adds r0, r4, #0
	subs r0, #0x10
	strh r0, [r3]
	b _0803BC46
_0803BC40:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0803BC46:
	adds r0, r5, #0
	adds r0, #0x54
	ldrb r0, [r0]
	cmp r6, r0
	bne _0803BC56
	ldr r1, [r2]
	ldr r0, _0803BC60 @ =sub_803BC64
	str r0, [r1, #8]
_0803BC56:
	bl sub_803BE0C
_0803BC5A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803BC60: .4byte sub_803BC64

	thumb_func_start sub_803BC64
sub_803BC64: @ 0x0803BC64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0803BC8C @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	ldr r3, _0803BC90 @ =gBldRegs
	ldrh r1, [r3, #4]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0xf
	bhi _0803BC94
	adds r0, r1, #1
	strh r0, [r3, #4]
	bl sub_803BE0C
	b _0803BDF4
	.align 2, 0
_0803BC8C: .4byte gCurTask
_0803BC90: .4byte gBldRegs
_0803BC94:
	ldr r0, _0803BCC4 @ =0x03000055
	adds r5, r2, r0
	ldrb r4, [r5]
	ldr r1, _0803BCC8 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0803BCCC @ =gBackgroundsCopyQueueCursor
	ldr r0, _0803BCD0 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0803BCD4 @ =sa2__gUnknown_03005390
	movs r2, #0
	strb r2, [r0]
	ldr r1, _0803BCD8 @ =gVramGraphicsCopyCursor
	ldr r0, _0803BCDC @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	cmp r4, #0
	bne _0803BCE0
	bl sub_8018538
	b _0803BDE8
	.align 2, 0
_0803BCC4: .4byte 0x03000055
_0803BCC8: .4byte 0x0000FFFF
_0803BCCC: .4byte gBackgroundsCopyQueueCursor
_0803BCD0: .4byte gBackgroundsCopyQueueIndex
_0803BCD4: .4byte sa2__gUnknown_03005390
_0803BCD8: .4byte gVramGraphicsCopyCursor
_0803BCDC: .4byte gVramGraphicsCopyQueueIndex
_0803BCE0:
	ldrb r0, [r5]
	cmp r0, #1
	bne _0803BDD4
	bl m4aMPlayAllStop
	bl m4aSoundVSyncOff
	ldr r2, _0803BDB0 @ =gFlags
	ldr r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r1, r0
	ldr r3, _0803BDB4 @ =0x04000200
	mov r8, r3
	ldrh r0, [r3]
	mov sl, r0
	ldr r6, _0803BDB8 @ =0x04000208
	ldrh r0, [r6]
	adds r7, r0, #0
	ldr r5, _0803BDBC @ =0x04000004
	ldrh r0, [r5]
	mov sb, r0
	movs r0, #0
	strh r0, [r3]
	ldrh r2, [r3]
	strh r0, [r6]
	ldrh r2, [r6]
	strh r0, [r5]
	ldrh r0, [r5]
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	ldr r2, _0803BDB0 @ =gFlags
	str r1, [r2]
	ldr r1, _0803BDC0 @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r4, _0803BDC4 @ =0x0000C5FF
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r3, _0803BDC8 @ =0x00007FFF
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xc
	ldrh r2, [r1, #0xa]
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xc
	ldrh r2, [r1, #0xa]
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r0, _0803BDCC @ =0x040000D4
	ldrh r1, [r0, #0xa]
	ands r4, r1
	strh r4, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ands r3, r1
	strh r3, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ldrh r0, [r0, #0xa]
	bl sub_8012D98
	mov r0, sl
	mov r3, r8
	strh r0, [r3]
	ldrh r0, [r3]
	strh r7, [r6]
	ldrh r0, [r6]
	mov r1, sb
	strh r1, [r5]
	ldrh r0, [r5]
	bl m4aSoundVSyncOn
	ldr r2, _0803BDB0 @ =gFlags
	ldr r0, [r2]
	ldr r1, _0803BDD0 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r2]
	bl sub_806AFA4
	b _0803BDE8
	.align 2, 0
_0803BDB0: .4byte gFlags
_0803BDB4: .4byte 0x04000200
_0803BDB8: .4byte 0x04000208
_0803BDBC: .4byte 0x04000004
_0803BDC0: .4byte 0x040000B0
_0803BDC4: .4byte 0x0000C5FF
_0803BDC8: .4byte 0x00007FFF
_0803BDCC: .4byte 0x040000D4
_0803BDD0: .4byte 0xFFFF7FFF
_0803BDD4:
	ldr r0, _0803BE04 @ =gMultiSioEnabled
	strb r2, [r0]
	bl MultiSioStop
	movs r0, #0
	bl MultiSioInit
	movs r0, #1
	bl CreateTitleScreen
_0803BDE8:
	ldr r0, _0803BE08 @ =gFlags
	ldr r1, [r0]
	movs r2, #5
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0]
_0803BDF4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803BE04: .4byte gMultiSioEnabled
_0803BE08: .4byte gFlags

	thumb_func_start sub_803BE0C
sub_803BE0C: @ 0x0803BE0C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _0803BEA8 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r5, r0
	ldr r1, _0803BEAC @ =0x03000050
	adds r0, r5, r1
	ldrh r4, [r0]
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0803BE3A
	lsls r2, r4, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0
	str r0, [sp]
	movs r1, #0
	movs r3, #0xf0
	bl sa2__sub_80078D4
_0803BE3A:
	movs r6, #0
	ldr r1, _0803BEB0 @ =0x03000054
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r6, r0
	bhs _0803BE88
	ldr r5, _0803BEB4 @ =0x000001FF
_0803BE48:
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	adds r2, #0x28
	lsls r0, r2, #0x10
	lsrs r4, r0, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r6, #1
	adds r0, r7, #0
	adds r0, #0x48
	adds r0, r0, r3
	ldrh r0, [r0]
	adds r3, r5, #0
	bics r3, r0
	adds r0, r7, #0
	adds r0, #0x50
	ldrh r0, [r0]
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0
	bl sa2__sub_80078D4
	adds r6, #1
	adds r0, r7, #0
	adds r0, #0x54
	ldrb r0, [r0]
	cmp r6, r0
	blo _0803BE48
_0803BE88:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	bgt _0803BEA0
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0
	str r0, [sp]
	movs r2, #0xa0
	movs r3, #0xf0
	bl sa2__sub_80078D4
_0803BEA0:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803BEA8: .4byte gCurTask
_0803BEAC: .4byte 0x03000050
_0803BEB0: .4byte 0x03000054
_0803BEB4: .4byte 0x000001FF

	thumb_func_start sub_803BEB8
sub_803BEB8: @ 0x0803BEB8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x34
	ldr r0, _0803BFD0 @ =sub_803BFE8
	movs r2, #0x88
	lsls r2, r2, #6
	ldr r1, _0803BFD4 @ =sub_803C198
	str r1, [sp]
	movs r1, #0x68
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r5
	mov r8, r0
	add r4, sp, #0x30
	movs r0, #0
	strb r0, [r4]
	mov r0, sp
	adds r0, #0x2f
	movs r6, #1
	strb r6, [r0]
	ldr r7, _0803BFD8 @ =gUnknown_08687B3C
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	str r0, [sp, #0x18]
	ldr r1, _0803BFDC @ =0x00000694
	adds r0, r7, r1
	ldr r0, [r0]
	str r0, [sp, #0x24]
	movs r0, #0xe0
	bl VramMalloc
	str r0, [sp, #0x10]
	movs r0, #0xe0
	lsls r0, r0, #5
	str r0, [sp, #0x1c]
	movs r0, #0x20
	str r0, [sp, #0x28]
	add r0, sp, #0x2c
	strb r6, [r0]
	mov r1, sp
	adds r1, #0x2e
	movs r0, #0xd
	strb r0, [r1]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #8]
	add r2, sp, #4
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	adds r0, r2, #0
	bl sub_80528AC
	ldr r0, [sp, #0x10]
	mov r1, r8
	str r0, [r1, #0x64]
	ldr r0, _0803BFE0 @ =0x03000060
	adds r1, r5, r0
	movs r0, #0xa
	strh r0, [r1]
	ldr r1, _0803BFE4 @ =0x03000062
	adds r5, r5, r1
	movs r0, #0x14
	strh r0, [r5]
	movs r1, #0
	movs r6, #0
	movs r5, #0xa
	movs r4, #1
	movs r2, #1
	movs r3, #0x14
_0803BFA4:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, r8
	strh r5, [r0, #0xa]
	strh r3, [r0, #0xc]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	strb r4, [r0, #0x16]
	strh r6, [r0, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0803BFA4
	add sp, #0x34
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803BFD0: .4byte sub_803BFE8
_0803BFD4: .4byte sub_803C198
_0803BFD8: .4byte gUnknown_08687B3C
_0803BFDC: .4byte 0x00000694
_0803BFE0: .4byte 0x03000060
_0803BFE4: .4byte 0x03000062

	thumb_func_start sub_803BFE8
sub_803BFE8: @ 0x0803BFE8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	ldr r0, _0803C0AC @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r3, r2, r1
	str r3, [sp]
	ldrh r0, [r0]
	adds r0, r0, r1
	ldrh r1, [r0, #6]
	movs r6, #0
	ldr r4, _0803C0B0 @ =0x03000054
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r6, r0
	blo _0803C016
	b _0803C11C
_0803C016:
	ldr r7, _0803C0B4 @ =0x03000048
	adds r7, r1, r7
	str r7, [sp, #0x14]
	ldr r0, _0803C0B8 @ =0x03000060
	adds r0, r2, r0
	str r0, [sp, #8]
	ldr r3, _0803C0BC @ =0x03000050
	adds r3, r1, r3
	str r3, [sp, #0x18]
	adds r4, #0xe
	adds r4, r2, r4
	str r4, [sp, #0xc]
	ldr r7, _0803C0B0 @ =0x03000054
	adds r7, r1, r7
	str r7, [sp, #0x1c]
	ldr r0, _0803C0C0 @ =gLoadedSaveGame
	str r0, [sp, #4]
_0803C038:
	movs r5, #0
	lsls r0, r6, #2
	lsls r1, r6, #0x10
	mov sl, r1
	adds r2, r6, #1
	str r2, [sp, #0x10]
	lsls r3, r6, #1
	str r3, [sp, #0x20]
	ldr r4, [sp, #0x14]
	adds r4, r4, r3
	mov sb, r4
	adds r0, r0, r6
	lsls r0, r0, #3
	mov r8, r0
_0803C054:
	ldr r7, [sp, #0x20]
	adds r0, r7, r6
	lsls r0, r0, #3
	ldr r1, [sp]
	adds r2, r1, r0
	ldr r3, [sp, #8]
	ldrh r0, [r3]
	mov r4, sb
	ldrh r4, [r4]
	adds r0, r0, r4
	lsls r1, r5, #3
	adds r0, r0, r1
	strh r0, [r2, #0xa]
	ldr r7, [sp, #0x18]
	ldrh r0, [r7]
	add r0, r8
	ldr r1, [sp, #0xc]
	ldrh r1, [r1]
	adds r3, r0, r1
	strh r3, [r2, #0xc]
	ldr r0, _0803C0C4 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	mov r4, sl
	lsrs r1, r4, #0x10
	cmp r0, r1
	bne _0803C0CC
	ldr r7, _0803C0C8 @ =gUnknown_03005170
	adds r1, r5, r7
	ldrb r0, [r1]
	subs r0, #0x70
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bhi _0803C0A2
	adds r0, r3, #0
	adds r0, #8
	strh r0, [r2, #0xc]
_0803C0A2:
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_8052F78
	b _0803C104
	.align 2, 0
_0803C0AC: .4byte gCurTask
_0803C0B0: .4byte 0x03000054
_0803C0B4: .4byte 0x03000048
_0803C0B8: .4byte 0x03000060
_0803C0BC: .4byte 0x03000050
_0803C0C0: .4byte gLoadedSaveGame
_0803C0C4: .4byte 0x04000128
_0803C0C8: .4byte gUnknown_03005170
_0803C0CC:
	ldr r0, _0803C12C @ =gUnknown_03005008
	adds r1, r6, r0
	ldrb r0, [r1]
	lsls r0, r0, #4
	adds r0, r0, r5
	mov ip, r0
	ldr r0, [sp, #4]
	movs r7, #0xe1
	lsls r7, r7, #2
	adds r4, r0, r7
	mov r7, ip
	adds r0, r7, r4
	ldrb r0, [r0]
	subs r0, #0x70
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bhi _0803C0F6
	adds r0, r3, #0
	adds r0, #8
	strh r0, [r2, #0xc]
_0803C0F6:
	ldrb r0, [r1]
	lsls r0, r0, #4
	adds r0, r0, r4
	adds r0, r0, r5
	adds r1, r2, #0
	bl sub_8052F78
_0803C104:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #5
	bls _0803C054
	ldr r1, [sp, #0x10]
	lsls r0, r1, #0x18
	lsrs r6, r0, #0x18
	ldr r2, [sp, #0x1c]
	ldrb r2, [r2]
	cmp r6, r2
	blo _0803C038
_0803C11C:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C12C: .4byte gUnknown_03005008

	thumb_func_start Task_803C130
Task_803C130: @ 0x0803C130
	push {r4, lr}
	ldr r0, _0803C178 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r4, r1, r2
	ldrh r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0, #6]
	ldr r0, _0803C17C @ =0x03000034
	adds r1, r1, r0
	ldrb r1, [r1]
	lsls r1, r1, #1
	ldr r3, _0803C180 @ =0x03000048
	adds r0, r2, r3
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrh r1, [r4, #0x30]
	adds r0, r0, r1
	strh r0, [r4, #0x16]
	adds r3, #8
	adds r2, r2, r3
	ldrh r0, [r2]
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803C178: .4byte gCurTask
_0803C17C: .4byte 0x03000034
_0803C180: .4byte 0x03000048

	thumb_func_start TaskDestructor_803C184
TaskDestructor_803C184: @ 0x0803C184
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_803C198
sub_803C198: @ 0x0803C198
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x64]
	bl VramFree
	pop {r0}
	bx r0
