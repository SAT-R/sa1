.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ --- Start of Sonic 2 - Emerald Hill Boss
	thumb_func_start CreateEntity_EggDrillster
CreateEntity_EggDrillster: @ 0x08035B44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	lsls r3, r3, #0x18
	lsrs r4, r3, #0x18
	ldr r0, _08035B80 @ =gBossIndex
	ldrb r7, [r0]
	cmp r7, #0
	beq _08035B6C
	b _08035CC2
_08035B6C:
	ldr r0, _08035B84 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _08035B88
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	b _08035CC2
	.align 2, 0
_08035B80: .4byte gBossIndex
_08035B84: .4byte gGameMode
_08035B88:
	ldr r0, _08035CD4 @ =sub_8035D18
	ldr r1, _08035CD8 @ =sub_8036CC4
	str r1, [sp]
	movs r1, #0x90
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r5, r1
	movs r3, #0
	mov r2, r8
	strh r2, [r1, #4]
	mov r0, sl
	strh r0, [r1, #6]
	str r6, [r1]
	ldrb r0, [r6]
	strb r0, [r1, #8]
	strb r4, [r1, #9]
	ldr r4, _08035CDC @ =0x03000084
	adds r2, r5, r4
	movs r0, #0x78
	strh r0, [r2]
	ldr r2, _08035CE0 @ =0x03000086
	adds r0, r5, r2
	strb r3, [r0]
	adds r4, #3
	adds r0, r5, r4
	strb r3, [r0]
	adds r2, #7
	adds r0, r5, r2
	strb r3, [r0]
	adds r4, #5
	adds r0, r5, r4
	strb r3, [r0]
	ldr r0, _08035CE4 @ =0x0000C020
	str r0, [r1, #0x6c]
	ldr r0, _08035CE8 @ =0xFFFFD800
	str r0, [r1, #0x70]
	str r7, [r1, #0x74]
	str r7, [r1, #0x78]
	ldr r1, _08035CEC @ =0x03000088
	adds r0, r5, r1
	strh r7, [r0]
	subs r2, #3
	adds r0, r5, r2
	strh r7, [r0]
	ldrb r0, [r6]
	lsls r0, r0, #3
	mov r4, r8
	lsls r4, r4, #8
	mov sb, r4
	add r0, sb
	subs r1, #0xc
	adds r2, r5, r1
	strh r0, [r2]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	mov r4, sl
	lsls r4, r4, #8
	mov sl, r4
	add r0, sl
	ldr r4, _08035CF0 @ =0x0300007E
	adds r1, r5, r4
	strh r0, [r1]
	ldr r0, _08035CF4 @ =0x0300000C
	adds r4, r5, r0
	ldrh r0, [r2]
	strh r0, [r4, #0x16]
	ldrh r0, [r1]
	strh r0, [r4, #0x18]
	movs r0, #0x36
	str r3, [sp, #4]
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0xb0
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	strh r7, [r4, #8]
	ldr r0, _08035CF8 @ =0x000002AA
	strh r0, [r4, #0xa]
	ldr r1, _08035CFC @ =0x0300002C
	adds r0, r5, r1
	ldr r3, [sp, #4]
	strb r3, [r0]
	strh r7, [r4, #0x14]
	strh r7, [r4, #0x1c]
	ldr r2, _08035D00 @ =0x0300002D
	adds r1, r5, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08035D04 @ =0x0300002E
	adds r0, r5, r1
	movs r2, #0x10
	strb r2, [r0]
	adds r1, #3
	adds r0, r5, r1
	strb r3, [r0]
	movs r2, #1
	rsbs r2, r2, #0
	mov r8, r2
	str r2, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	adds r1, #0xb
	adds r4, r5, r1
	ldrb r0, [r6]
	lsls r0, r0, #3
	add r0, sb
	strh r0, [r4, #0x16]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	add r0, sl
	strh r0, [r4, #0x18]
	subs r2, #1
	adds r0, r2, #0
	strb r0, [r6]
	movs r0, #8
	str r3, [sp, #4]
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0xa8
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	strh r7, [r4, #8]
	movs r0, #0xaa
	lsls r0, r0, #2
	strh r0, [r4, #0xa]
	ldr r1, _08035D08 @ =0x0300005C
	adds r0, r5, r1
	ldr r3, [sp, #4]
	strb r3, [r0]
	strh r7, [r4, #0x14]
	strh r7, [r4, #0x1c]
	ldr r2, _08035D0C @ =0x0300005D
	adds r1, r5, r2
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08035D10 @ =0x0300005E
	adds r0, r5, r1
	movs r2, #0x10
	strb r2, [r0]
	ldr r0, _08035D14 @ =0x03000061
	adds r5, r5, r0
	strb r3, [r5]
	mov r1, r8
	str r1, [r4, #0x28]
	movs r2, #0x80
	lsls r2, r2, #6
	str r2, [r4, #0x10]
_08035CC2:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035CD4: .4byte sub_8035D18
_08035CD8: .4byte sub_8036CC4
_08035CDC: .4byte 0x03000084
_08035CE0: .4byte 0x03000086
_08035CE4: .4byte 0x0000C020
_08035CE8: .4byte 0xFFFFD800
_08035CEC: .4byte 0x03000088
_08035CF0: .4byte 0x0300007E
_08035CF4: .4byte 0x0300000C
_08035CF8: .4byte 0x000002AA
_08035CFC: .4byte 0x0300002C
_08035D00: .4byte 0x0300002D
_08035D04: .4byte 0x0300002E
_08035D08: .4byte 0x0300005C
_08035D0C: .4byte 0x0300005D
_08035D10: .4byte 0x0300005E
_08035D14: .4byte 0x03000061

	thumb_func_start sub_8035D18
sub_8035D18: @ 0x08035D18
	push {r4, r5, r6, lr}
	ldr r0, _08035D38 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0x8d
	adds r4, r1, r0
	ldrb r0, [r4]
	cmp r0, #0
	beq _08035D3C
	cmp r0, #1
	beq _08035D68
	b _08035D90
	.align 2, 0
_08035D38: .4byte gCurTask
_08035D3C:
	ldr r6, _08035D60 @ =0x0300007C
	adds r2, r1, r6
	movs r1, #0
	ldrsh r0, [r2, r1]
	subs r0, #0x78
	ldr r3, _08035D64 @ =gCamera
	movs r6, #0
	ldrsh r1, [r3, r6]
	cmp r0, r1
	bgt _08035D90
	ldrh r0, [r2]
	subs r0, #0x98
	strh r0, [r3, #0x18]
	ldrh r0, [r2]
	adds r0, #0x98
	strh r0, [r3, #0x1a]
	movs r0, #1
	b _08035D8E
	.align 2, 0
_08035D60: .4byte 0x0300007C
_08035D64: .4byte gCamera
_08035D68:
	ldr r0, _08035DBC @ =0x0300007E
	adds r2, r1, r0
	movs r1, #0
	ldrsh r3, [r2, r1]
	adds r0, r3, #0
	subs r0, #0xe0
	ldr r1, _08035DC0 @ =gCamera
	movs r6, #2
	ldrsh r1, [r1, r6]
	cmp r0, r1
	bgt _08035D90
	ldrh r0, [r2]
	subs r0, #0xa0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r3, #0
	bl sub_80174DC
	movs r0, #2
_08035D8E:
	strb r0, [r4]
_08035D90:
	adds r1, r5, #0
	adds r1, #0x8d
	ldrb r0, [r1]
	cmp r0, #2
	bne _08035DB4
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08035DC4 @ =0xFFFFFE80
	str r0, [r5, #0x74]
	bl sub_80365AC
	ldr r0, _08035DC8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08035DCC @ =sub_8035DD4
	str r0, [r1, #8]
	ldr r1, _08035DD0 @ =gMusicManagerState
	movs r0, #0x15
	strb r0, [r1, #1]
_08035DB4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08035DBC: .4byte 0x0300007E
_08035DC0: .4byte gCamera
_08035DC4: .4byte 0xFFFFFE80
_08035DC8: .4byte gCurTask
_08035DCC: .4byte sub_8035DD4
_08035DD0: .4byte gMusicManagerState

	thumb_func_start sub_8035DD4
sub_8035DD4: @ 0x08035DD4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08035E88 @ =gCurTask
	mov sb, r0
	ldr r4, [r0]
	ldrh r6, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r6, r0
	ldr r1, _08035E8C @ =0x0300000C
	adds r0, r6, r1
	ldr r5, _08035E90 @ =0x0300003C
	adds r5, r5, r6
	mov r8, r5
	ldr r1, [r7, #0x6c]
	ldr r2, [r7, #0x74]
	adds r1, r1, r2
	str r1, [r7, #0x6c]
	ldr r2, [r7, #0x70]
	ldr r3, [r7, #0x78]
	adds r2, r2, r3
	str r2, [r7, #0x70]
	ldr r5, _08035E94 @ =0x0300007C
	adds r3, r6, r5
	asrs r1, r1, #8
	ldrh r3, [r3]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r5, #2
	adds r3, r6, r5
	asrs r2, r2, #8
	ldrh r3, [r3]
	adds r2, r2, r3
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r5, #2
	adds r3, r6, r5
	movs r5, #0
	mov sl, r5
	strh r1, [r3]
	ldr r5, _08035E98 @ =0x03000082
	adds r3, r6, r5
	strh r2, [r3]
	ldrh r3, [r4, #6]
	ldr r4, _08035E8C @ =0x0300000C
	adds r3, r3, r4
	ldr r5, _08035E9C @ =gCamera
	ldrh r4, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r4
	strh r1, [r3, #0x16]
	ldrh r1, [r5, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r1
	strh r2, [r3, #0x18]
	bl UpdateSpriteAnimation
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r5, sb
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	ldr r1, _08035E8C @ =0x0300000C
	adds r2, r0, r1
	ldr r4, _08035E90 @ =0x0300003C
	adds r0, r0, r4
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	bl sub_8035AAC
	ldr r5, _08035EA0 @ =0x0300008D
	adds r3, r6, r5
	ldrb r2, [r3]
	cmp r2, #1
	beq _08035EC4
	cmp r2, #1
	bgt _08035EA4
	cmp r2, #0
	beq _08035EAE
	b _08035F50
	.align 2, 0
_08035E88: .4byte gCurTask
_08035E8C: .4byte 0x0300000C
_08035E90: .4byte 0x0300003C
_08035E94: .4byte 0x0300007C
_08035E98: .4byte 0x03000082
_08035E9C: .4byte gCamera
_08035EA0: .4byte 0x0300008D
_08035EA4:
	cmp r2, #2
	beq _08035EF0
	cmp r2, #3
	beq _08035F28
	b _08035F50
_08035EAE:
	ldr r0, [r7, #0x6c]
	cmp r0, #0
	bgt _08035F50
	str r2, [r7, #0x6c]
	str r2, [r7, #0x74]
	str r2, [r7, #0x78]
	ldr r0, _08035EC0 @ =0x03000084
	adds r1, r6, r0
	b _08035F12
	.align 2, 0
_08035EC0: .4byte 0x03000084
_08035EC4:
	ldr r4, _08035EE4 @ =0x03000084
	adds r1, r6, r4
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08035F50
	ldr r5, _08035EE8 @ =0x0300005C
	adds r0, r6, r5
	strb r2, [r0]
	ldr r0, _08035EEC @ =0x0300005D
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
	b _08035F16
	.align 2, 0
_08035EE4: .4byte 0x03000084
_08035EE8: .4byte 0x0300005C
_08035EEC: .4byte 0x0300005D
_08035EF0:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08035F50
	ldr r4, _08035F20 @ =0x0300005C
	adds r0, r6, r4
	mov r5, sl
	strb r5, [r0]
	ldr r0, _08035F24 @ =0x0300005D
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
	adds r4, #0x28
	adds r1, r6, r4
_08035F12:
	movs r0, #0xf
	strh r0, [r1]
_08035F16:
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	b _08035F50
	.align 2, 0
_08035F20: .4byte 0x0300005C
_08035F24: .4byte 0x0300005D
_08035F28:
	ldr r5, _08035F60 @ =0x03000084
	adds r1, r6, r5
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08035F50
	ldr r0, _08035F64 @ =0xFFFFFE00
	str r0, [r7, #0x74]
	ldr r0, _08035F68 @ =0x0300008C
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
	mov r1, sl
	strb r1, [r3]
	mov r4, sb
	ldr r1, [r4]
	ldr r0, _08035F6C @ =sub_8035F70
	str r0, [r1, #8]
_08035F50:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035F60: .4byte 0x03000084
_08035F64: .4byte 0xFFFFFE00
_08035F68: .4byte 0x0300008C
_08035F6C: .4byte sub_8035F70

	thumb_func_start sub_8035F70
sub_8035F70: @ 0x08035F70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08035FF0 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r1, _08035FF4 @ =0x0300000C
	adds r1, r1, r4
	mov r8, r1
	ldr r3, _08035FF8 @ =0x0300003C
	adds r3, r3, r4
	mov sb, r3
	ldr r1, [r5, #0x6c]
	ldr r0, [r5, #0x74]
	adds r1, r1, r0
	str r1, [r5, #0x6c]
	ldr r0, [r5, #0x70]
	ldr r2, [r5, #0x78]
	adds r0, r0, r2
	str r0, [r5, #0x70]
	ldr r3, _08035FFC @ =0x0300007C
	adds r2, r4, r3
	asrs r1, r1, #8
	ldrh r2, [r2]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r3, #2
	adds r2, r4, r3
	asrs r0, r0, #8
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, #2
	adds r2, r4, r3
	strh r1, [r2]
	adds r3, #2
	adds r2, r4, r3
	strh r0, [r2]
	lsls r1, r1, #0x10
	asrs r6, r1, #0x10
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_803596C
	ldr r0, _08036000 @ =0x03000086
	adds r4, r4, r0
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #3
	ble _08036004
	bl sub_8036150
	b _08036138
	.align 2, 0
_08035FF0: .4byte gCurTask
_08035FF4: .4byte 0x0300000C
_08035FF8: .4byte 0x0300003C
_08035FFC: .4byte 0x0300007C
_08036000: .4byte 0x03000086
_08036004:
	mov r1, sl
	ldr r3, [r1]
	ldrh r1, [r3, #6]
	ldr r0, _08036080 @ =0x0300000C
	adds r1, r1, r0
	ldr r2, _08036084 @ =gCamera
	ldrh r0, [r2]
	subs r0, r6, r0
	strh r0, [r1, #0x16]
	ldrh r0, [r2, #2]
	subs r0, r7, r0
	strh r0, [r1, #0x18]
	ldrh r3, [r3, #6]
	ldr r0, _08036088 @ =0x0300003C
	adds r1, r3, r0
	adds r0, #0x20
	adds r2, r3, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _08036044
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08036044
	movs r0, #0
	strb r0, [r2]
	ldr r0, _0803608C @ =0x0300005D
	adds r1, r3, r0
	movs r0, #0xff
	strb r0, [r1]
_08036044:
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, sb
	bl UpdateSpriteAnimation
	ldr r0, _08036090 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	ldr r3, _08036080 @ =0x0300000C
	adds r2, r1, r3
	ldr r0, _08036088 @ =0x0300003C
	adds r1, r1, r0
	ldrh r0, [r2, #0x16]
	movs r4, #0
	strh r0, [r1, #0x16]
	ldrh r0, [r2, #0x18]
	strh r0, [r1, #0x18]
	bl sub_8035AAC
	adds r2, r5, #0
	adds r2, #0x8d
	ldrb r0, [r2]
	cmp r0, #1
	beq _080360BC
	cmp r0, #1
	bgt _08036094
	cmp r0, #0
	beq _0803609E
	b _08036138
	.align 2, 0
_08036080: .4byte 0x0300000C
_08036084: .4byte gCamera
_08036088: .4byte 0x0300003C
_0803608C: .4byte 0x0300005D
_08036090: .4byte gCurTask
_08036094:
	cmp r0, #2
	beq _080360EE
	cmp r0, #3
	beq _0803610C
	b _08036138
_0803609E:
	ldr r1, [r5, #0x6c]
	ldr r0, _080360B8 @ =0xFFFF4000
	cmp r1, r0
	bgt _08036138
	str r4, [r5, #0x74]
	adds r1, r5, #0
	adds r1, #0x84
	movs r0, #0x1e
	strh r0, [r1]
	ldrb r0, [r2]
	adds r0, #1
	b _08036136
	.align 2, 0
_080360B8: .4byte 0xFFFF4000
_080360BC:
	adds r1, r5, #0
	adds r1, #0x84
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08036138
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r5, #0x74]
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	mov r3, r8
	str r0, [r3, #0x10]
	mov r3, sb
	ldr r0, [r3, #0x10]
	orrs r0, r1
	str r0, [r3, #0x10]
	ldrb r0, [r2]
	adds r0, #1
	b _08036136
_080360EE:
	ldr r1, [r5, #0x6c]
	ldr r0, _08036108 @ =0x0000BFFF
	cmp r1, r0
	ble _08036138
	str r4, [r5, #0x74]
	adds r1, r5, #0
	adds r1, #0x84
	movs r0, #0x1e
	strh r0, [r1]
	ldrb r0, [r2]
	adds r0, #1
	b _08036136
	.align 2, 0
_08036108: .4byte 0x0000BFFF
_0803610C:
	adds r1, r5, #0
	adds r1, #0x84
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08036138
	ldr r0, _08036148 @ =0xFFFFFE00
	str r0, [r5, #0x74]
	mov r1, r8
	ldr r0, [r1, #0x10]
	ldr r1, _0803614C @ =0xFFFFFBFF
	ands r0, r1
	mov r3, r8
	str r0, [r3, #0x10]
	mov r3, sb
	ldr r0, [r3, #0x10]
	ands r0, r1
	str r0, [r3, #0x10]
	movs r0, #0
_08036136:
	strb r0, [r2]
_08036138:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036148: .4byte 0xFFFFFE00
_0803614C: .4byte 0xFFFFFBFF

	thumb_func_start sub_8036150
sub_8036150: @ 0x08036150
	push {r4, r5, r6, lr}
	ldr r0, _080361FC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r1, r2
	ldr r0, _08036200 @ =0x0300000C
	adds r4, r1, r0
	adds r0, #0x81
	adds r3, r1, r0
	movs r0, #0
	strb r0, [r3]
	str r0, [r2, #0x74]
	str r0, [r2, #0x78]
	ldr r0, _08036204 @ =0x0300005C
	adds r2, r1, r0
	movs r0, #2
	strb r0, [r2]
	ldr r2, _08036208 @ =0x0300005D
	adds r1, r1, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _0803620C @ =gCamera
	ldrh r0, [r1]
	strh r0, [r1, #0x18]
	adds r0, #0xf0
	strh r0, [r1, #0x1a]
	movs r0, #0x90
	bl m4aSongNumStart
	ldr r0, [r4, #0x10]
	ldr r1, _08036210 @ =0xFFFFFE7F
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r0, _08036214 @ =gPlayer
	ldr r3, [r0, #0x10]
	movs r0, #0x80
	ands r3, r0
	cmp r3, #0
	bne _080361B6
	ldr r2, _08036218 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0803621C @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08036220 @ =gWinRegs
	strh r3, [r0, #0xa]
	ldr r0, _08036224 @ =gBldRegs
	strh r3, [r0]
	strh r3, [r0, #4]
_080361B6:
	ldr r1, _08036228 @ =gLevelScore
	ldr r6, [r1]
	movs r2, #0xfa
	lsls r2, r2, #2
	adds r0, r6, r2
	str r0, [r1]
	ldr r4, _0803622C @ =0x0000C350
	adds r1, r4, #0
	bl Div
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl Div
	cmp r5, r0
	beq _080361E8
	ldr r0, _08036230 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _080361E8
	ldr r1, _08036234 @ =gNumLives
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_080361E8:
	bl sub_803623C
	ldr r0, _080361FC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08036238 @ =sub_803623C
	str r0, [r1, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080361FC: .4byte gCurTask
_08036200: .4byte 0x0300000C
_08036204: .4byte 0x0300005C
_08036208: .4byte 0x0300005D
_0803620C: .4byte gCamera
_08036210: .4byte 0xFFFFFE7F
_08036214: .4byte gPlayer
_08036218: .4byte gDispCnt
_0803621C: .4byte 0x00007FFF
_08036220: .4byte gWinRegs
_08036224: .4byte gBldRegs
_08036228: .4byte gLevelScore
_0803622C: .4byte 0x0000C350
_08036230: .4byte gGameMode
_08036234: .4byte gNumLives
_08036238: .4byte sub_803623C

	thumb_func_start sub_803623C
sub_803623C: @ 0x0803623C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r4, _08036334 @ =gCurTask
	ldr r0, [r4]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
	adds r0, #0xc
	adds r6, r3, r0
	ldr r1, _08036338 @ =0x0300003C
	adds r1, r1, r3
	mov r8, r1
	ldr r2, _0803633C @ =0x0300008D
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0803631C
	cmp r0, #0
	bne _08036272
	ldr r0, [r5, #0x78]
	adds r0, #0x10
	str r0, [r5, #0x78]
_08036272:
	ldr r0, [r5, #0x6c]
	ldr r1, [r5, #0x74]
	adds r0, r0, r1
	str r0, [r5, #0x6c]
	ldr r1, [r5, #0x70]
	ldr r2, [r5, #0x78]
	adds r1, r1, r2
	str r1, [r5, #0x70]
	ldr r7, _08036340 @ =0x0300007C
	adds r2, r3, r7
	asrs r0, r0, #8
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r2, _08036344 @ =0x0300007E
	adds r0, r3, r2
	asrs r1, r1, #8
	ldrh r0, [r0]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	adds r7, #4
	adds r0, r3, r7
	mov r1, sl
	strh r1, [r0]
	adds r2, #4
	adds r0, r3, r2
	mov r7, sb
	strh r7, [r0]
	ldr r1, _08036348 @ =0x03000084
	adds r0, r3, r1
	ldrh r1, [r0]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080362D0
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov r3, sb
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	bl sub_8036478
_080362D0:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	mov r0, r8
	bl UpdateSpriteAnimation
	ldr r4, [r4]
	ldrh r1, [r4, #6]
	ldr r7, _0803634C @ =0x0300000C
	adds r1, r1, r7
	ldr r3, _08036350 @ =gCamera
	ldrh r2, [r3]
	mov r7, sl
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	strh r0, [r1, #0x16]
	ldrh r2, [r3, #2]
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	strh r0, [r1, #0x18]
	ldrh r0, [r4, #6]
	ldr r7, _0803634C @ =0x0300000C
	adds r2, r0, r7
	ldr r1, _08036338 @ =0x0300003C
	adds r0, r0, r1
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	adds r0, r6, #0
	bl DisplaySprite
	mov r0, r8
	bl DisplaySprite
_0803631C:
	movs r2, #0x8d
	adds r2, r2, r5
	mov r8, r2
	ldrb r4, [r2]
	cmp r4, #1
	beq _080363A0
	cmp r4, #1
	bgt _08036354
	cmp r4, #0
	beq _0803635A
	b _08036452
	.align 2, 0
_08036334: .4byte gCurTask
_08036338: .4byte 0x0300003C
_0803633C: .4byte 0x0300008D
_08036340: .4byte 0x0300007C
_08036344: .4byte 0x0300007E
_08036348: .4byte 0x03000084
_0803634C: .4byte 0x0300000C
_08036350: .4byte gCamera
_08036354:
	cmp r4, #2
	beq _08036418
	b _08036452
_0803635A:
	adds r6, r5, #0
	adds r6, #0x84
	ldrh r0, [r6]
	subs r0, #1
	strh r0, [r6]
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x14
	mov r7, sl
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	ldr r2, _0803639C @ =sa2__sub_801EC3C
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F100
	cmp r0, #0
	bge _08036452
	lsls r1, r0, #8
	ldr r0, [r5, #0x70]
	adds r0, r0, r1
	str r0, [r5, #0x70]
	str r4, [r5, #0x78]
	movs r0, #0xf0
	strh r0, [r6]
	mov r1, r8
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08036452
	.align 2, 0
_0803639C: .4byte sa2__sub_801EC3C
_080363A0:
	adds r7, r5, #0
	adds r7, #0x84
	ldrh r0, [r7]
	subs r0, #1
	strh r0, [r7]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08036452
	mov r2, sl
	lsls r5, r2, #0x10
	asrs r5, r5, #0x10
	mov r3, sb
	lsls r6, r3, #0x10
	asrs r6, r6, #0x10
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_8015C5C
	ldr r1, _08036414 @ =gMusicManagerState
	movs r0, #0x35
	strb r0, [r1, #1]
	adds r0, r5, #0
	adds r0, #0x10
	lsls r0, r0, #8
	adds r4, r6, #0
	subs r4, #0x10
	lsls r4, r4, #8
	adds r1, r4, #0
	bl sub_8017540
	adds r0, r5, #0
	subs r0, #0x10
	lsls r0, r0, #8
	adds r1, r4, #0
	bl sub_8017540
	adds r0, r5, #0
	adds r0, #0x14
	lsls r0, r0, #8
	adds r6, #0x10
	lsls r6, r6, #8
	adds r1, r6, #0
	bl sub_8017540
	subs r5, #0x14
	lsls r5, r5, #8
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_8017540
	movs r0, #0xf0
	strh r0, [r7]
	mov r7, r8
	ldrb r0, [r7]
	adds r0, #1
	strb r0, [r7]
	b _08036452
	.align 2, 0
_08036414: .4byte gMusicManagerState
_08036418:
	adds r1, r5, #0
	adds r1, #0x84
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _08036452
	ldr r3, _08036464 @ =gRefCollision
	ldr r1, _08036468 @ =gCollisionTable
	ldr r0, _0803646C @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	str r2, [r3]
	ldr r1, _08036470 @ =gCamera
	strh r4, [r1, #0x14]
	ldrh r0, [r2, #0x1e]
	strh r0, [r1, #0x16]
	ldrh r0, [r2, #0x1c]
	strh r0, [r1, #0x1a]
	ldr r0, _08036474 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08036452:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036464: .4byte gRefCollision
_08036468: .4byte gCollisionTable
_0803646C: .4byte gCurrentLevel
_08036470: .4byte gCamera
_08036474: .4byte gCurTask

	thumb_func_start sub_8036478
sub_8036478: @ 0x08036478
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r0, _08036584 @ =gPseudoRandom
	mov sb, r0
	ldr r0, [r0]
	ldr r7, _08036588 @ =0x00196225
	muls r0, r7, r0
	ldr r1, _0803658C @ =0x3C6EF35F
	mov sl, r1
	add r0, sl
	mov r1, sb
	str r0, [r1]
	movs r4, #7
	ands r4, r0
	ldr r0, _08036590 @ =gUnknown_080BB434
	adds r0, r4, r0
	ldrb r0, [r0]
	bl VramMalloc
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #6
	mov r8, r0
	ldr r2, _08036594 @ =gUnknown_080BB41C
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, _08036598 @ =gUnknown_080BB42C
	adds r4, r4, r0
	ldrb r3, [r4]
	ldr r0, _0803659C @ =TaskDestructor_80177EC
	str r0, [sp]
	mov r0, r8
	bl sub_801769C
	ldrh r1, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r1, r3
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r0, r5, #8
	str r0, [r3, #0x30]
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	mov ip, r6
	mov r0, ip
	adds r0, #0x10
	lsls r0, r0, #8
	str r0, [r3, #0x34]
	mov r6, r8
	str r6, [r3, #0x10]
	movs r0, #0xb8
	lsls r0, r0, #3
	strh r0, [r3, #0x1a]
	movs r0, #5
	strh r0, [r3, #0x3e]
	ldr r0, _080365A0 @ =0x03000040
	adds r1, r1, r0
	movs r0, #0x20
	strh r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	adds r4, r0, #0
	muls r4, r7, r4
	add r4, sl
	str r4, [r1]
	ldr r6, _080365A4 @ =gSineTable
	mov r8, r6
	ldr r1, _080365A8 @ =0x000001FF
	ands r1, r4
	lsls r0, r1, #1
	add r0, r8
	movs r6, #0
	ldrsh r2, [r0, r6]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #9
	rsbs r0, r0, #0
	asrs r0, r0, #0xe
	strh r0, [r3, #0x3a]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	add r1, r8
	movs r6, #0
	ldrsh r1, [r1, r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #9
	rsbs r0, r0, #0
	asrs r0, r0, #0xe
	strh r0, [r3, #0x38]
	adds r1, r4, #0
	muls r1, r7, r1
	add r1, sl
	mov r0, sb
	str r1, [r0]
	movs r0, #0x3f
	ands r0, r1
	adds r5, r5, r0
	subs r5, #0x20
	lsls r5, r5, #8
	movs r0, #0xfc
	lsls r0, r0, #0xe
	ands r1, r0
	asrs r1, r1, #0x10
	subs r1, #0x20
	mov r0, ip
	subs r6, r0, r1
	lsls r6, r6, #8
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_8017540
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036584: .4byte gPseudoRandom
_08036588: .4byte 0x00196225
_0803658C: .4byte 0x3C6EF35F
_08036590: .4byte gUnknown_080BB434
_08036594: .4byte gUnknown_080BB41C
_08036598: .4byte gUnknown_080BB42C
_0803659C: .4byte TaskDestructor_80177EC
_080365A0: .4byte 0x03000040
_080365A4: .4byte gSineTable
_080365A8: .4byte 0x000001FF

	thumb_func_start sub_80365AC
sub_80365AC: @ 0x080365AC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _080366B4 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r6, #0xc0
	lsls r6, r6, #0x12
	adds r7, r5, r6
	ldr r0, _080366B8 @ =sub_8036994
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _080366BC @ =sub_8036CE0
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	adds r3, r4, r6
	ldr r0, _080366C0 @ =0x0300007C
	adds r1, r5, r0
	ldr r0, [r7, #0x6c]
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r2, _080366C4 @ =0x03000040
	adds r1, r4, r2
	movs r2, #0
	mov r8, r2
	movs r6, #0
	strh r0, [r1]
	ldr r0, _080366C8 @ =0x0300007E
	adds r5, r5, r0
	ldr r0, [r7, #0x70]
	asrs r0, r0, #8
	ldrh r5, [r5]
	adds r0, r0, r5
	ldr r2, _080366CC @ =0x03000042
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0x3c
	strh r0, [r3, #0x30]
	adds r5, r3, #0
	movs r0, #0x10
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	strh r6, [r5, #8]
	ldr r0, _080366D0 @ =0x000002A7
	strh r0, [r5, #0xa]
	ldr r1, _080366D4 @ =0x03000020
	adds r0, r4, r1
	mov r2, r8
	strb r2, [r0]
	strh r6, [r5, #0x14]
	strh r6, [r5, #0x1c]
	ldr r0, _080366D8 @ =0x03000021
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r2, _080366DC @ =0x03000022
	adds r1, r4, r2
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _080366E0 @ =0x03000025
	adds r4, r4, r0
	mov r1, r8
	strb r1, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	movs r4, #0
_0803664C:
	movs r2, #0x84
	lsls r2, r2, #6
	adds r0, r2, #0
	adds r2, r4, #0
	orrs r2, r0
	ldr r0, _080366BC @ =sub_8036CE0
	str r0, [sp]
	ldr r0, _080366E4 @ =sub_803673C
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r3, r2, r5
	adds r1, r7, #0
	adds r1, #0x7c
	ldr r0, [r7, #0x6c]
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r5, #0x40
	adds r1, r2, r5
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x7e
	ldr r0, [r7, #0x70]
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r5, #2
	adds r1, r2, r5
	strh r0, [r1]
	str r6, [r3, #0x34]
	str r6, [r3, #0x38]
	ldr r0, _080366E8 @ =0x03000044
	adds r2, r2, r0
	strb r4, [r2]
	adds r5, r3, #0
	movs r0, #0x10
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _080366EC
	movs r0, #0xb8
	lsls r0, r0, #3
	b _080366F0
	.align 2, 0
_080366B4: .4byte gCurTask
_080366B8: .4byte sub_8036994
_080366BC: .4byte sub_8036CE0
_080366C0: .4byte 0x0300007C
_080366C4: .4byte 0x03000040
_080366C8: .4byte 0x0300007E
_080366CC: .4byte 0x03000042
_080366D0: .4byte 0x000002A7
_080366D4: .4byte 0x03000020
_080366D8: .4byte 0x03000021
_080366DC: .4byte 0x03000022
_080366E0: .4byte 0x03000025
_080366E4: .4byte sub_803673C
_080366E8: .4byte 0x03000044
_080366EC:
	movs r0, #0x98
	lsls r0, r0, #3
_080366F0:
	strh r0, [r5, #0x1a]
	strh r6, [r5, #8]
	ldr r0, _08036738 @ =0x000002A9
	strh r0, [r5, #0xa]
	adds r0, r5, #0
	adds r0, #0x20
	strb r4, [r0]
	strh r6, [r5, #0x14]
	strh r6, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x25
	strb r6, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0803664C
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036738: .4byte 0x000002A9

	thumb_func_start sub_803673C
sub_803673C: @ 0x0803673C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _080367EC @ =gCurTask
	ldr r0, [r1]
	ldrh r2, [r0, #6]
	mov r8, r2
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r5, r2, r4
	ldrh r0, [r0]
	adds r0, r0, r4
	ldrh r6, [r0, #6]
	adds r4, r6, r4
	ldr r2, [r5, #0x10]
	ldr r0, _080367F0 @ =0xFFFFFA7F
	ands r2, r0
	str r2, [r5, #0x10]
	ldr r0, [r4, #0x1c]
	movs r1, #0xb0
	lsls r1, r1, #3
	ands r0, r1
	orrs r2, r0
	str r2, [r5, #0x10]
	ldr r7, _080367F4 @ =0x03000080
	adds r7, r7, r6
	mov sb, r7
	ldr r0, _080367F8 @ =0x03000082
	adds r0, r0, r6
	mov sl, r0
	ldrh r1, [r0]
	ldr r3, _080367FC @ =gCamera
	ldrh r2, [r3]
	mov ip, r2
	movs r2, #0
	ldrsh r0, [r7, r2]
	mov r7, ip
	subs r0, r0, r7
	movs r7, #0
	strh r0, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0x18]
	ldr r0, [r4, #0x74]
	cmp r0, #0
	beq _080367A6
	adds r0, r5, #0
	bl UpdateSpriteAnimation
_080367A6:
	adds r0, r5, #0
	bl DisplaySprite
	ldr r1, _08036800 @ =0x03000086
	adds r0, r6, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	ble _080367DE
	mov r2, sb
	ldrh r1, [r2]
	ldr r0, _08036804 @ =0x03000040
	add r0, r8
	strh r1, [r0]
	mov r0, sl
	ldrh r1, [r0]
	ldr r0, _08036808 @ =0x03000042
	add r0, r8
	strh r1, [r0]
	str r7, [r5, #0x34]
	str r7, [r5, #0x38]
	strh r7, [r5, #0x3c]
	strh r7, [r5, #0x3e]
	ldr r2, _080367EC @ =gCurTask
	ldr r1, [r2]
	ldr r0, _0803680C @ =sub_8036810
	str r0, [r1, #8]
_080367DE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080367EC: .4byte gCurTask
_080367F0: .4byte 0xFFFFFA7F
_080367F4: .4byte 0x03000080
_080367F8: .4byte 0x03000082
_080367FC: .4byte gCamera
_08036800: .4byte 0x03000086
_08036804: .4byte 0x03000040
_08036808: .4byte 0x03000042
_0803680C: .4byte sub_8036810

	thumb_func_start sub_8036810
sub_8036810: @ 0x08036810
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _08036860 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r2, r1
	ldrh r0, [r0]
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	adds r6, r0, r1
	adds r5, r4, #0
	adds r1, #0x8d
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803683A
	b _08036948
_0803683A:
	movs r3, #0x3c
	ldrsh r0, [r5, r3]
	cmp r0, #0
	bne _080368B6
	movs r3, #0
	movs r1, #0xff
	lsls r1, r1, #8
	strh r1, [r5, #0x3e]
	ldr r7, _08036864 @ =0x03000044
	adds r0, r2, r7
	ldrb r0, [r0]
	cmp r0, #1
	beq _08036880
	cmp r0, #1
	bgt _08036868
	cmp r0, #0
	beq _08036872
	b _080368A4
	.align 2, 0
_08036860: .4byte gCurTask
_08036864: .4byte 0x03000044
_08036868:
	cmp r0, #2
	beq _0803688C
	cmp r0, #3
	beq _0803689C
	b _080368A4
_08036872:
	ldr r0, _0803687C @ =0x0000FF40
	strh r0, [r5, #0x3c]
	subs r0, #0xf0
	b _080368A2
	.align 2, 0
_0803687C: .4byte 0x0000FF40
_08036880:
	strh r1, [r5, #0x3c]
	ldr r0, _08036888 @ =0x0000FE80
	b _080368A2
	.align 2, 0
_08036888: .4byte 0x0000FE80
_0803688C:
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #0x3c]
	ldr r0, _08036898 @ =0x0000FE70
	b _080368A2
	.align 2, 0
_08036898: .4byte 0x0000FE70
_0803689C:
	movs r0, #0xe0
	strh r0, [r5, #0x3c]
	ldr r0, _08036938 @ =0x0000FE60
_080368A2:
	strh r0, [r5, #0x3e]
_080368A4:
	ldr r0, [r6, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080368B6
	ldrh r0, [r4, #0x3c]
	rsbs r0, r0, #0
	strh r0, [r4, #0x3c]
_080368B6:
	ldrh r0, [r4, #0x3e]
	adds r0, #0x18
	strh r0, [r4, #0x3e]
	movs r1, #0x3c
	ldrsh r0, [r4, r1]
	ldr r1, [r4, #0x34]
	adds r1, r1, r0
	str r1, [r4, #0x34]
	movs r3, #0x3e
	ldrsh r2, [r4, r3]
	ldr r0, [r4, #0x38]
	adds r0, r0, r2
	str r0, [r4, #0x38]
	adds r2, r4, #0
	adds r2, #0x40
	asrs r1, r1, #8
	ldrh r2, [r2]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	adds r2, r4, #0
	adds r2, #0x42
	asrs r0, r0, #8
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x1e
	lsrs r2, r1, #0x10
	mov r8, r2
	asrs r6, r1, #0x10
	ldr r1, _0803693C @ =sa2__sub_801EC3C
	str r1, [sp]
	adds r1, r6, #0
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F100
	cmp r0, #0
	bge _08036956
	lsls r1, r0, #8
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	ldrh r0, [r4, #0x3e]
	rsbs r0, r0, #0
	adds r0, #4
	strh r0, [r4, #0x3e]
	ldr r0, _08036940 @ =gCamera
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r0, r1, #0
	subs r0, #0x20
	cmp r6, r0
	blt _0803692E
	movs r2, #0x88
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r6, r0
	ble _08036956
_0803692E:
	ldr r0, _08036944 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0803697A
	.align 2, 0
_08036938: .4byte 0x0000FE60
_0803693C: .4byte sa2__sub_801EC3C
_08036940: .4byte gCamera
_08036944: .4byte gCurTask
_08036948:
	ldr r3, _08036988 @ =0x03000040
	adds r0, r2, r3
	ldrh r0, [r0]
	mov r8, r0
	ldr r7, _0803698C @ =0x03000042
	adds r0, r2, r7
	ldrh r7, [r0]
_08036956:
	ldr r2, _08036990 @ =gCamera
	ldrh r1, [r2]
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r5, #0x16]
	ldrh r1, [r2, #2]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_0803697A:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036988: .4byte 0x03000040
_0803698C: .4byte 0x03000042
_08036990: .4byte gCamera

	thumb_func_start sub_8036994
sub_8036994: @ 0x08036994
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _08036A44 @ =gCurTask
	ldr r6, [r0]
	ldrh r0, [r6, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldrh r0, [r6]
	adds r0, r0, r1
	ldrh r5, [r0, #6]
	adds r1, r1, r5
	mov sb, r1
	mov sl, r4
	ldr r2, [r4, #0x10]
	ldr r0, _08036A48 @ =0xFFFFFA7F
	ands r2, r0
	str r2, [r4, #0x10]
	ldr r0, [r1, #0x1c]
	movs r1, #0xb0
	lsls r1, r1, #3
	ands r0, r1
	orrs r2, r0
	str r2, [r4, #0x10]
	ldr r1, _08036A4C @ =0x03000080
	adds r2, r5, r1
	ldr r7, _08036A50 @ =0x03000082
	adds r0, r5, r7
	ldrh r0, [r0]
	mov r8, r0
	ldr r3, _08036A54 @ =gCamera
	ldrh r0, [r3]
	ldrh r1, [r2]
	str r1, [sp]
	movs r1, #0
	ldrsh r7, [r2, r1]
	mov ip, r7
	subs r0, r7, r0
	strh r0, [r4, #0x16]
	ldrh r0, [r3, #2]
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r2, r1, #0x10
	subs r0, r2, r0
	strh r0, [r4, #0x18]
	ldr r7, _08036A58 @ =0x0300008C
	adds r0, r5, r7
	ldrb r0, [r0]
	cmp r0, #0
	beq _08036AA2
	ldr r1, _08036A5C @ =0x03000086
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	bgt _08036AA2
	ldrh r0, [r6, #6]
	subs r1, #0x86
	adds r7, r0, r1
	mov r6, ip
	adds r5, r2, #0
	ldr r3, _08036A60 @ =gPlayer
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_800BF10
	mov r8, r0
	ldr r0, _08036A64 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08036A6C
	ldr r3, _08036A68 @ =gPartner
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_800BF10
	b _08036A6E
	.align 2, 0
_08036A44: .4byte gCurTask
_08036A48: .4byte 0xFFFFFA7F
_08036A4C: .4byte 0x03000080
_08036A50: .4byte 0x03000082
_08036A54: .4byte gCamera
_08036A58: .4byte 0x0300008C
_08036A5C: .4byte 0x03000086
_08036A60: .4byte gPlayer
_08036A64: .4byte gNumSingleplayerCharacters
_08036A68: .4byte gPartner
_08036A6C:
	movs r0, #0
_08036A6E:
	mov r2, r8
	cmp r2, #2
	beq _08036A78
	cmp r0, #2
	bne _08036AA2
_08036A78:
	ldr r0, _08036AC8 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r7, #0xc0
	lsls r7, r7, #0x12
	adds r0, r0, r7
	ldrh r2, [r0, #6]
	ldr r0, _08036ACC @ =0x0300003C
	adds r3, r2, r0
	adds r7, #0x5c
	adds r1, r2, r7
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _08036AD0 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r0, _08036AD4 @ =0x0300005D
	adds r2, r2, r0
	movs r0, #0xff
	strb r0, [r2]
_08036AA2:
	mov r0, sl
	bl UpdateSpriteAnimation
	mov r0, sl
	bl DisplaySprite
	mov r0, sb
	adds r0, #0x86
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r2, r0, #0
	cmp r1, #2
	ble _08036B7A
	ldrh r0, [r4, #0x30]
	cmp r0, #0
	beq _08036AD8
	subs r0, #1
	strh r0, [r4, #0x30]
	b _08036B1A
	.align 2, 0
_08036AC8: .4byte gCurTask
_08036ACC: .4byte 0x0300003C
_08036AD0: .4byte 0xFFFFBFFF
_08036AD4: .4byte 0x0300005D
_08036AD8:
	mov r1, sl
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08036B04
	ldr r7, [sp]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x10
	ldr r1, _08036B00 @ =gPlayer
	ldr r1, [r1]
	asrs r1, r1, #8
	cmp r0, r1
	bge _08036B1A
	movs r0, #1
	str r0, [sp, #4]
	b _08036B1A
	.align 2, 0
_08036B00: .4byte gPlayer
_08036B04:
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	subs r0, #0x10
	ldr r1, _08036B68 @ =gPlayer
	ldr r1, [r1]
	asrs r1, r1, #8
	cmp r0, r1
	ble _08036B1A
	movs r7, #1
	str r7, [sp, #4]
_08036B1A:
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #3
	ble _08036B26
	movs r0, #1
	str r0, [sp, #4]
_08036B26:
	ldr r1, [sp, #4]
	cmp r1, #0
	beq _08036B7A
	mov r2, sb
	ldr r0, [r2, #0x6c]
	str r0, [r4, #0x34]
	ldr r0, [r2, #0x70]
	str r0, [r4, #0x38]
	mov r0, sb
	adds r0, #0x7c
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x40
	movs r2, #0
	strh r1, [r0]
	mov r0, sb
	adds r0, #0x7e
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	strh r2, [r4, #0x3e]
	mov r7, sl
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08036B6C
	movs r0, #0xc0
	lsls r0, r0, #2
	b _08036B70
	.align 2, 0
_08036B68: .4byte gPlayer
_08036B6C:
	movs r0, #0xfd
	lsls r0, r0, #8
_08036B70:
	strh r0, [r4, #0x3c]
	ldr r0, _08036B8C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08036B90 @ =sub_8036B94
	str r0, [r1, #8]
_08036B7A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036B8C: .4byte gCurTask
_08036B90: .4byte sub_8036B94

	thumb_func_start sub_8036B94
sub_8036B94: @ 0x08036B94
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08036C2C @ =gCurTask
	ldr r7, [r0]
	ldrh r3, [r7, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r3, r1
	ldrh r0, [r7]
	adds r0, r0, r1
	ldrh r4, [r0, #6]
	mov sb, r5
	movs r0, #0x3c
	ldrsh r1, [r5, r0]
	ldr r0, [r5, #0x34]
	adds r0, r0, r1
	str r0, [r5, #0x34]
	movs r2, #0x3e
	ldrsh r1, [r5, r2]
	ldr r2, [r5, #0x38]
	adds r2, r2, r1
	str r2, [r5, #0x38]
	ldr r6, _08036C30 @ =0x03000040
	adds r1, r3, r6
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r1, _08036C34 @ =0x03000042
	adds r3, r3, r1
	asrs r2, r2, #8
	ldrh r3, [r3]
	adds r2, r2, r3
	ldr r3, _08036C38 @ =gCamera
	ldrh r1, [r3]
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	subs r1, r6, r1
	strh r1, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r5, #0x18]
	ldr r0, _08036C3C @ =0x03000086
	adds r4, r4, r0
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #3
	bgt _08036C82
	ldrh r0, [r7, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r0, r1
	adds r4, r2, #0
	ldr r3, _08036C40 @ =gPlayer
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_800BF10
	mov r8, r0
	ldr r0, _08036C44 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08036C4C
	ldr r3, _08036C48 @ =gPartner
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_800BF10
	b _08036C4E
	.align 2, 0
_08036C2C: .4byte gCurTask
_08036C30: .4byte 0x03000040
_08036C34: .4byte 0x03000042
_08036C38: .4byte gCamera
_08036C3C: .4byte 0x03000086
_08036C40: .4byte gPlayer
_08036C44: .4byte gNumSingleplayerCharacters
_08036C48: .4byte gPartner
_08036C4C:
	movs r0, #0
_08036C4E:
	mov r2, r8
	cmp r2, #2
	beq _08036C58
	cmp r0, #2
	bne _08036C82
_08036C58:
	ldr r0, _08036CB4 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r6, #0xc0
	lsls r6, r6, #0x12
	adds r0, r0, r6
	ldrh r2, [r0, #6]
	ldr r0, _08036CB8 @ =0x0300003C
	adds r3, r2, r0
	adds r6, #0x5c
	adds r1, r2, r6
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _08036CBC @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r0, _08036CC0 @ =0x0300005D
	adds r2, r2, r0
	movs r0, #0xff
	strb r0, [r2]
_08036C82:
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, sb
	bl DisplaySprite
	ldr r0, [r5, #0x34]
	movs r1, #0xc0
	lsls r1, r1, #8
	adds r0, r0, r1
	movs r1, #0xc0
	lsls r1, r1, #9
	cmp r0, r1
	bls _08036CA6
	ldr r0, _08036CB4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08036CA6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036CB4: .4byte gCurTask
_08036CB8: .4byte 0x0300003C
_08036CBC: .4byte 0xFFFFBFFF
_08036CC0: .4byte 0x0300005D

	thumb_func_start sub_8036CC4
sub_8036CC4: @ 0x08036CC4
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x10]
	bl VramFree
	ldr r0, [r4, #0x40]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8036CE0
sub_8036CE0: @ 0x08036CE0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8036CF4
sub_8036CF4: @ 0x08036CF4
	push {r4, r5, r6, r7, lr}
	ldr r2, _08036D34 @ =gCurTask
	ldr r2, [r2]
	ldrh r3, [r2, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r6, r3, r2
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	ldr r3, _08036D38 @ =gPlayer
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	adds r7, r0, #0
	ldr r0, _08036D3C @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08036D44
	ldr r3, _08036D40 @ =gPartner
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	b _08036D46
	.align 2, 0
_08036D34: .4byte gCurTask
_08036D38: .4byte gPlayer
_08036D3C: .4byte gNumSingleplayerCharacters
_08036D40: .4byte gPartner
_08036D44:
	movs r0, #0
_08036D46:
	cmp r7, #2
	beq _08036D4E
	cmp r0, #2
	bne _08036D78
_08036D4E:
	ldr r0, _08036D80 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldrh r2, [r0, #6]
	ldr r0, _08036D84 @ =0x0300003C
	adds r3, r2, r0
	adds r0, #0x20
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _08036D88 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r0, _08036D8C @ =0x0300005D
	adds r2, r2, r0
	movs r0, #0xff
	strb r0, [r2]
_08036D78:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036D80: .4byte gCurTask
_08036D84: .4byte 0x0300003C
_08036D88: .4byte 0xFFFFBFFF
_08036D8C: .4byte 0x0300005D

	thumb_func_start sub_8036D90
sub_8036D90: @ 0x08036D90
	ldr r0, _08036DC0 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	ldr r0, _08036DC4 @ =0x0300003C
	adds r1, r2, r0
	adds r0, #0x20
	adds r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq _08036DBC
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08036DBC
	movs r0, #0
	strb r0, [r3]
	ldr r0, _08036DC8 @ =0x0300005D
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
_08036DBC:
	bx lr
	.align 2, 0
_08036DC0: .4byte gCurTask
_08036DC4: .4byte 0x0300003C
_08036DC8: .4byte 0x0300005D

	thumb_func_start sub_8036DCC
sub_8036DCC: @ 0x08036DCC
	ldr r0, _08036DE4 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _08036DE8 @ =0x0300000C
	adds r2, r0, r1
	adds r1, #0x30
	adds r0, r0, r1
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	bx lr
	.align 2, 0
_08036DE4: .4byte gCurTask
_08036DE8: .4byte 0x0300000C

	thumb_func_start sub_8036DEC
sub_8036DEC: @ 0x08036DEC
	push {r4, lr}
	ldr r2, _08036E14 @ =gCurTask
	ldr r2, [r2]
	ldrh r2, [r2, #6]
	ldr r3, _08036E18 @ =0x0300000C
	adds r2, r2, r3
	ldr r4, _08036E1C @ =gCamera
	ldrh r3, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r3
	strh r0, [r2, #0x16]
	ldrh r0, [r4, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r2, #0x18]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08036E14: .4byte gCurTask
_08036E18: .4byte 0x0300000C
_08036E1C: .4byte gCamera

	thumb_func_start sub_8036E20
sub_8036E20: @ 0x08036E20
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	str r6, [sp]
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	str r5, [sp, #4]
	ldr r0, _08036F3C @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	str r0, [sp, #8]
	ldr r0, _08036F40 @ =0x0300000C
	adds r7, r2, r0
	ldr r1, _08036F44 @ =gPlayer
	mov sl, r1
	ldr r1, [r1, #0x10]
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	bne _08036E5E
	ldr r3, _08036F48 @ =0x03000031
	adds r0, r2, r3
	strb r1, [r0]
_08036E5E:
	ldr r1, _08036F4C @ =0x03000095
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08036E6E
	b _08036F86
_08036E6E:
	movs r3, #0
	mov sb, r3
	mov r8, r3
	ldr r0, _08036F50 @ =0x03000044
	adds r4, r2, r0
	adds r1, #7
	adds r0, r2, r1
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r3, _08036F54 @ =0x0300007A
	adds r3, r0, r3
	str r3, [sp, #0xc]
	ldrb r1, [r3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08036EA2
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	mov r3, sl
	bl Coll_Player_Boss
	mov sb, r0
_08036EA2:
	mov r0, sb
	cmp r0, #0
	bne _08036EBA
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	mov r3, sl
	bl sub_800BFEC
	mov sb, r0
_08036EBA:
	ldr r0, _08036F58 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08036F00
	ldr r3, [sp, #0xc]
	ldrb r1, [r3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08036EE4
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	ldr r3, _08036F5C @ =gPartner
	adds r0, r7, #0
	bl Coll_Player_Boss
	mov r8, r0
_08036EE4:
	mov r0, r8
	cmp r0, #0
	bne _08036F00
	ldr r3, [sp]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	ldr r0, [sp, #4]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	ldr r3, _08036F5C @ =gPartner
	adds r0, r7, #0
	bl sub_800BFEC
	mov r8, r0
_08036F00:
	mov r1, sb
	cmp r1, #1
	beq _08036F0C
	mov r3, r8
	cmp r3, #1
	bne _08036F64
_08036F0C:
	ldr r1, [sp, #8]
	adds r1, #0x94
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, [sp, #8]
	adds r1, #0x95
	movs r0, #0x20
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r4, #0x10]
	ldr r1, _08036F60 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r4, #0x10]
	movs r0, #0x8f
	bl m4aSongNumStart
	b _08036F86
	.align 2, 0
_08036F3C: .4byte gCurTask
_08036F40: .4byte 0x0300000C
_08036F44: .4byte gPlayer
_08036F48: .4byte 0x03000031
_08036F4C: .4byte 0x03000095
_08036F50: .4byte 0x03000044
_08036F54: .4byte 0x0300007A
_08036F58: .4byte gNumSingleplayerCharacters
_08036F5C: .4byte gPartner
_08036F60: .4byte 0xFFFFBFFF
_08036F64:
	mov r0, sb
	cmp r0, #2
	beq _08036F70
	mov r1, r8
	cmp r1, #2
	bne _08036F86
_08036F70:
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #3
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r4, #0x10]
	ldr r1, _08036F98 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r4, #0x10]
_08036F86:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036F98: .4byte 0xFFFFBFFF

	thumb_func_start sub_8036F9C
sub_8036F9C: @ 0x08036F9C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r0, _08036FF4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r7, r4, #0
	cmp r2, #0
	bne _08037004
	lsls r0, r3, #0x10
	asrs r7, r0, #0x10
	lsls r0, r5, #0x10
	asrs r6, r0, #0x10
	ldr r3, _08036FF8 @ =gPlayer
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_800BF10
	adds r5, r0, #0
	ldr r0, _08036FFC @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08037040
	ldr r3, _08037000 @ =gPartner
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_800BF10
	b _08037042
	.align 2, 0
_08036FF4: .4byte gCurTask
_08036FF8: .4byte gPlayer
_08036FFC: .4byte gNumSingleplayerCharacters
_08037000: .4byte gPartner
_08037004:
	lsls r0, r3, #0x10
	asrs r6, r0, #0x10
	lsls r0, r5, #0x10
	asrs r4, r0, #0x10
	ldr r3, _08037034 @ =gPlayer
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_800C2B8
	adds r5, r0, #0
	ldr r0, _08037038 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08037040
	ldr r3, _0803703C @ =gPartner
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_800BF10
	b _08037042
	.align 2, 0
_08037034: .4byte gPlayer
_08037038: .4byte gNumSingleplayerCharacters
_0803703C: .4byte gPartner
_08037040:
	movs r0, #0
_08037042:
	cmp r5, #2
	beq _0803704A
	cmp r0, #2
	bne _08037074
_0803704A:
	ldr r0, _0803709C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldrh r2, [r0, #6]
	ldr r0, _080370A0 @ =0x03000044
	adds r3, r2, r0
	adds r0, #0x20
	adds r1, r2, r0
	movs r0, #3
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _080370A4 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r0, _080370A8 @ =0x03000065
	adds r2, r2, r0
	movs r0, #0xff
	strb r0, [r2]
_08037074:
	mov r0, r8
	cmp r0, #0
	beq _0803708E
	cmp r5, #2
	bne _0803708E
	ldr r0, _080370AC @ =gRingCount
	ldrh r0, [r0]
	cmp r0, #0
	bne _0803708E
	ldr r0, _080370B0 @ =gPlayer
	bl Coll_DamagePlayer
	movs r5, #0
_0803708E:
	adds r0, r5, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803709C: .4byte gCurTask
_080370A0: .4byte 0x03000044
_080370A4: .4byte 0xFFFFBFFF
_080370A8: .4byte 0x03000065
_080370AC: .4byte gRingCount
_080370B0: .4byte gPlayer

	thumb_func_start sub_80370B4
sub_80370B4: @ 0x080370B4
	push {r4, r5, lr}
	ldr r0, _0803710C @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	ldr r0, _08037110 @ =0x0300000C
	adds r4, r3, r0
	adds r0, #0x38
	adds r5, r3, r0
	adds r0, #0x51
	adds r2, r3, r0
	ldrb r1, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _080370FA
	subs r1, #1
	strb r1, [r2]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x10
	ble _080370FA
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _080370FA
	ldr r0, _08037114 @ =gPlayer
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080370FA
	ldr r0, _08037118 @ =0x03000031
	adds r1, r3, r0
	movs r0, #0xfd
	strb r0, [r1]
_080370FA:
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803710C: .4byte gCurTask
_08037110: .4byte 0x0300000C
_08037114: .4byte gPlayer
_08037118: .4byte 0x03000031

	thumb_func_start sub_803711C
sub_803711C: @ 0x0803711C
	push {r4, lr}
	ldr r3, _08037154 @ =gPlayer
	ldr r1, [r3]
	asrs r1, r1, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0
	bge _0803713A
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803713A:
	ldr r0, [r3, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08037160
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	ldr r4, _08037158 @ =gUnknown_084ACF24
	cmp r0, #0x78
	ble _0803716C
	ldr r4, _0803715C @ =gUnknown_084ACF34
	b _0803716C
	.align 2, 0
_08037154: .4byte gPlayer
_08037158: .4byte gUnknown_084ACF24
_0803715C: .4byte gUnknown_084ACF34
_08037160:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	ldr r4, _0803718C @ =gUnknown_084ACF1C
	cmp r0, #0x78
	ble _0803716C
	ldr r4, _08037190 @ =gUnknown_084ACF2C
_0803716C:
	ldr r2, _08037194 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _08037198 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0803719C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0x64
	bl __umodsi3
	adds r1, r0, #0
	movs r2, #0
	movs r3, #0
	ldrsh r0, [r4, r3]
	b _080371B2
	.align 2, 0
_0803718C: .4byte gUnknown_084ACF1C
_08037190: .4byte gUnknown_084ACF2C
_08037194: .4byte gPseudoRandom
_08037198: .4byte 0x00196225
_0803719C: .4byte 0x3C6EF35F
_080371A0:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bhi _080371B8
	lsls r0, r2, #1
	adds r0, r0, r4
	movs r3, #0
	ldrsh r0, [r0, r3]
_080371B2:
	subs r1, r1, r0
	cmp r1, #0
	bgt _080371A0
_080371B8:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
