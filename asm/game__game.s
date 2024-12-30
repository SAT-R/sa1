.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start GameInit
GameInit: @ 0x0803CBC0
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r1, _0803CC68 @ =gTilemapsRef
	ldr r0, _0803CC6C @ =gTilemaps
	str r0, [r1]
	ldr r1, _0803CC70 @ =gRefSpriteTables
	ldr r0, _0803CC74 @ =gSpriteTables
	str r0, [r1]
	ldr r1, _0803CC78 @ =gStageFlags
	ldr r0, _0803CC7C @ =gUnknown_0300502C
	movs r2, #0
	strh r4, [r0]
	strh r4, [r1]
	ldr r0, _0803CC80 @ =gTailsEnabled
	strb r2, [r0]
	ldr r0, _0803CC84 @ =gRingsScatterTask
	str r4, [r0]
	ldr r0, _0803CC88 @ =gDummyTask
	str r4, [r0]
	ldr r0, _0803CC8C @ =gUnknown_030058C0
	str r4, [r0]
	ldr r0, _0803CC90 @ =gPlayer
	str r4, [r0, #0x60]
	ldr r0, _0803CC94 @ =gPartner
	str r4, [r0, #0x60]
	ldr r0, _0803CC98 @ =gCamera
	str r4, [r0, #0x30]
	ldr r0, _0803CC9C @ =gUnknown_03005A10
	str r4, [r0, #4]
	ldr r0, _0803CCA0 @ =gUnknown_03006080
	str r4, [r0, #0x10]
	ldr r0, _0803CCA4 @ =gUnknown_03005018
	strb r2, [r0]
	ldr r0, _0803CCA8 @ =gGameMode
	strb r2, [r0]
	ldr r0, _0803CCAC @ =gEntitiesManagerTask
	str r4, [r0]
	ldr r0, _0803CCB0 @ =gUnknown_03005C78
	strb r2, [r0]
	ldr r0, _0803CCB4 @ =gUnknown_03005054
	strb r2, [r0]
	ldr r0, _0803CCB8 @ =gUnknown_0300506C
	strb r2, [r0]
	movs r1, #0
	ldr r3, _0803CCBC @ =gUnknown_03006240
	movs r0, #0
	ldr r2, _0803CCC0 @ =gMultiplayerPlayerTasks
_0803CC1E:
	stm r2!, {r0}
	adds r1, #1
	cmp r1, #3
	bls _0803CC1E
	movs r0, #0
	str r0, [r3]
	movs r1, #0
	ldr r6, _0803CCC4 @ =gMultiplayerCharacters
	movs r2, #0
	ldr r5, _0803CCC8 @ =gUnknown_03005048
	ldr r3, _0803CCCC @ =gMultiplayerMissingHeartbeats
_0803CC34:
	adds r0, r1, r6
	strb r2, [r0]
	adds r0, r1, r5
	strb r2, [r0]
	adds r0, r1, r3
	strb r2, [r0]
	adds r1, #1
	cmp r1, #3
	bls _0803CC34
	bl sub_8012CA8
	cmp r0, #1
	beq _0803CC54
	bl sub_803CD34
	movs r4, #1
_0803CC54:
	ldr r5, _0803CCD0 @ =gFlags
	ldr r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803CCD4
	bl sub_800FEB0
	b _0803CD2C
	.align 2, 0
_0803CC68: .4byte gTilemapsRef
_0803CC6C: .4byte gTilemaps
_0803CC70: .4byte gRefSpriteTables
_0803CC74: .4byte gSpriteTables
_0803CC78: .4byte gStageFlags
_0803CC7C: .4byte gUnknown_0300502C
_0803CC80: .4byte gTailsEnabled
_0803CC84: .4byte gRingsScatterTask
_0803CC88: .4byte gDummyTask
_0803CC8C: .4byte gUnknown_030058C0
_0803CC90: .4byte gPlayer
_0803CC94: .4byte gPartner
_0803CC98: .4byte gCamera
_0803CC9C: .4byte gUnknown_03005A10
_0803CCA0: .4byte gUnknown_03006080
_0803CCA4: .4byte gUnknown_03005018
_0803CCA8: .4byte gGameMode
_0803CCAC: .4byte gEntitiesManagerTask
_0803CCB0: .4byte gUnknown_03005C78
_0803CCB4: .4byte gUnknown_03005054
_0803CCB8: .4byte gUnknown_0300506C
_0803CCBC: .4byte gUnknown_03006240
_0803CCC0: .4byte gMultiplayerPlayerTasks
_0803CCC4: .4byte gMultiplayerCharacters
_0803CCC8: .4byte gUnknown_03005048
_0803CCCC: .4byte gMultiplayerMissingHeartbeats
_0803CCD0: .4byte gFlags
_0803CCD4:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803CCFC
	bl CreateSegaLogo
	movs r1, #0
	ldr r0, _0803CCF8 @ =gLoadedSaveGame
	movs r2, #0xf
	adds r0, #8
_0803CCEA:
	strh r2, [r0]
	adds r0, #2
	adds r1, #1
	cmp r1, #3
	bls _0803CCEA
	b _0803CD2C
	.align 2, 0
_0803CCF8: .4byte gLoadedSaveGame
_0803CCFC:
	cmp r4, #0
	beq _0803CD08
	movs r0, #1
	bl sub_806A6DC
	b _0803CD2C
_0803CD08:
	movs r0, #0x80
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	beq _0803CD28
	movs r0, #1
	bl CreateTitleScreen
	ldr r0, [r5]
	ldr r1, _0803CD24 @ =0xFFFFEFFF
	ands r0, r1
	str r0, [r5]
	b _0803CD2C
	.align 2, 0
_0803CD24: .4byte 0xFFFFEFFF
_0803CD28:
	bl CreateSegaLogo
_0803CD2C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803CD34
sub_803CD34: @ 0x0803CD34
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	movs r3, #0
	str r3, [sp]
	ldr r1, _0803CDE8 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r2, _0803CDEC @ =gLoadedSaveGame
	str r2, [r1, #4]
	ldr r0, _0803CDF0 @ =0x8500010C
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	str r3, [r2, #4]
	movs r7, #0x84
	lsls r7, r7, #3
	adds r1, r2, r7
	ldr r0, _0803CDF4 @ =0x0000C350
	str r0, [r1]
	strb r3, [r2, #0x18]
	adds r6, r2, #0
	adds r6, #0x20
	movs r0, #0
	adds r2, #8
_0803CD68:
	strh r0, [r2]
	adds r2, #2
	adds r3, #1
	cmp r3, #3
	bls _0803CD68
	movs r3, #0
	ldr r5, _0803CDEC @ =gLoadedSaveGame
	movs r4, #0x20
	movs r0, #0xe3
	lsls r0, r0, #2
	mov r8, r0
	movs r1, #0xff
	mov ip, r1
	movs r2, #0xe1
	lsls r2, r2, #2
	adds r2, r2, r5
	mov sb, r2
_0803CD8A:
	lsls r2, r3, #4
	adds r1, r2, r5
	add r1, r8
	ldrb r0, [r1]
	mov r7, ip
	orrs r0, r7
	strb r0, [r1]
	movs r0, #0
	adds r1, r3, #1
	add r2, sb
_0803CD9E:
	strb r4, [r2]
	adds r2, #1
	adds r0, #1
	cmp r0, #7
	bls _0803CD9E
	adds r3, r1, #0
	cmp r3, #9
	bls _0803CD8A
	ldr r0, _0803CDF8 @ =0x00008CA0
	str r0, [sp]
	ldr r0, _0803CDE8 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	str r6, [r0, #4]
	ldr r1, _0803CDFC @ =0x850000D8
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	adds r2, r6, #0
	subs r2, #0x20
	movs r1, #0
	movs r0, #1
	strb r0, [r2, #0x19]
	strb r0, [r2, #0x1a]
	strb r1, [r2, #0x1b]
	strb r1, [r2, #0x1c]
	movs r2, #0x81
	lsls r2, r2, #3
	adds r0, r6, r2
	str r1, [r0]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803CDE8: .4byte 0x040000D4
_0803CDEC: .4byte gLoadedSaveGame
_0803CDF0: .4byte 0x8500010C
_0803CDF4: .4byte 0x0000C350
_0803CDF8: .4byte 0x00008CA0
_0803CDFC: .4byte 0x850000D8
