.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start Task_BoulderSpawnerMain
Task_BoulderSpawnerMain: @ 0x0808FE70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _0808FFE8 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r1, r8
	adds r6, r1, r0
	ldr r2, [r6]
	str r2, [sp, #0xc]
	ldrb r0, [r6, #8]
	lsls r0, r0, #3
	ldrh r1, [r6, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	mov r3, sl
	str r3, [sp, #4]
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	ldrh r1, [r6, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r4, sb
	str r4, [sp, #8]
	ldr r0, _0808FFEC @ =gStageTime
	ldr r0, [r0]
	movs r1, #0x78
	bl Mod
	adds r7, r0, #0
	cmp r7, #0
	bne _0808FF8E
	ldr r0, _0808FFF0 @ =Task_BoulderMain
	ldr r1, _0808FFF4 @ =TaskDestructor_Boulder
	str r1, [sp]
	movs r1, #0xbc
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r4, r0
	ldr r2, _0808FFF8 @ =0x0300000C
	adds r5, r4, r2
	ldrh r0, [r6, #4]
	strh r0, [r1, #4]
	ldrh r0, [r6, #6]
	strh r0, [r1, #6]
	ldrb r0, [r6, #8]
	strb r0, [r1, #8]
	ldr r0, _0808FFFC @ =0x030000BB
	add r0, r8
	ldrb r0, [r0]
	strb r0, [r1, #9]
	ldr r3, _08090000 @ =0x0300009C
	adds r0, r4, r3
	str r7, [r0]
	ldr r0, _08090004 @ =0x030000A0
	adds r1, r4, r0
	movs r0, #0x40
	str r0, [r1]
	ldr r1, _08090008 @ =0x030000A4
	adds r0, r4, r1
	str r7, [r0]
	adds r2, #0x9c
	adds r0, r4, r2
	str r7, [r0]
	adds r3, #0x10
	adds r0, r4, r3
	str r7, [r0]
	adds r1, #0xc
	adds r0, r4, r1
	movs r2, #0
	strb r2, [r0]
	ldr r0, _0809000C @ =0x030000B1
	add r0, r8
	ldrb r1, [r0]
	adds r3, #5
	adds r0, r4, r3
	strb r1, [r0]
	mov r0, sl
	strh r0, [r5, #0x16]
	ldr r1, _08090010 @ =0x030000B2
	adds r0, r4, r1
	mov r2, sl
	strh r2, [r0]
	mov r3, sb
	strh r3, [r5, #0x18]
	adds r1, #2
	adds r0, r4, r1
	strh r3, [r0]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	strh r7, [r5, #8]
	ldr r0, _08090014 @ =0x000001C9
	strh r0, [r5, #0xa]
	ldr r2, _08090018 @ =0x0300002C
	adds r0, r4, r2
	movs r3, #0
	strb r3, [r0]
	strh r7, [r5, #0x14]
	strh r7, [r5, #0x1c]
	ldr r0, _0809001C @ =0x0300002D
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	adds r2, #2
	adds r1, r4, r2
	movs r0, #0x10
	strb r0, [r1]
	ldr r3, _08090020 @ =0x03000031
	adds r4, r4, r3
	movs r0, #0
	strb r0, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
_0808FF8E:
	ldr r2, [sp, #4]
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	ldr r3, _08090024 @ =gCamera
	movs r4, #0
	ldrsh r1, [r3, r4]
	movs r4, #0xb8
	lsls r4, r4, #1
	adds r0, r1, r4
	cmp r2, r0
	bgt _0808FFC8
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _0808FFC8
	ldr r1, [sp, #8]
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	movs r4, #2
	ldrsh r1, [r3, r4]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r2, r0
	bgt _0808FFC8
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _0808FFD6
_0808FFC8:
	ldrb r0, [r6, #8]
	ldr r4, [sp, #0xc]
	strb r0, [r4]
	ldr r0, _0808FFE8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0808FFD6:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808FFE8: .4byte gCurTask
_0808FFEC: .4byte gStageTime
_0808FFF0: .4byte Task_BoulderMain
_0808FFF4: .4byte TaskDestructor_Boulder
_0808FFF8: .4byte 0x0300000C
_0808FFFC: .4byte 0x030000BB
_08090000: .4byte 0x0300009C
_08090004: .4byte 0x030000A0
_08090008: .4byte 0x030000A4
_0809000C: .4byte 0x030000B1
_08090010: .4byte 0x030000B2
_08090014: .4byte 0x000001C9
_08090018: .4byte 0x0300002C
_0809001C: .4byte 0x0300002D
_08090020: .4byte 0x03000031
_08090024: .4byte gCamera

	thumb_func_start Task_BoulderMain
Task_BoulderMain: @ 0x08090028
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r5, _080900C8 @ =gCurTask
	ldr r0, [r5]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r2
	mov sl, r0
	ldr r0, _080900CC @ =0x0300000C
	adds r7, r2, r0
	ldr r3, _080900D0 @ =0x030000B2
	adds r1, r2, r3
	ldr r4, _080900D4 @ =0x030000B4
	adds r0, r2, r4
	ldrh r6, [r0]
	subs r3, #0xa
	adds r0, r2, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	ldrh r4, [r1]
	mov r8, r4
	movs r4, #0
	ldrsh r3, [r1, r4]
	adds r0, r3, r0
	ldr r4, _080900D8 @ =gCamera
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r7, #0x16]
	ldr r0, _080900DC @ =0x030000AC
	adds r2, r2, r0
	ldr r0, [r2]
	asrs r0, r0, #8
	lsls r1, r6, #0x10
	asrs r2, r1, #0x10
	adds r0, r2, r0
	ldrh r1, [r4, #2]
	subs r0, r0, r1
	strh r0, [r7, #0x18]
	adds r3, #0x80
	lsls r3, r3, #0x10
	movs r0, #0xf8
	lsls r0, r0, #0x11
	cmp r3, r0
	bhi _0809009A
	adds r0, r2, #0
	adds r0, #0x80
	cmp r0, #0
	blt _0809009A
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r2, r0
	ble _080900E0
_0809009A:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080900BE
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _080900BE
	movs r2, #0x18
	ldrsh r1, [r7, r2]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _080900E0
_080900BE:
	ldr r0, [r5]
	bl TaskDestroy
	b _0809031C
	.align 2, 0
_080900C8: .4byte gCurTask
_080900CC: .4byte 0x0300000C
_080900D0: .4byte 0x030000B2
_080900D4: .4byte 0x030000B4
_080900D8: .4byte gCamera
_080900DC: .4byte 0x030000AC
_080900E0:
	movs r5, #0
	mov r3, r8
	lsls r3, r3, #0x10
	str r3, [sp, #0x18]
	lsls r6, r6, #0x10
	mov sb, r6
	mov r4, sl
	adds r4, #0xa8
	str r4, [sp, #0x10]
	movs r0, #0xac
	add r0, sl
	mov r8, r0
	mov r1, sl
	adds r1, #0xb0
	str r1, [sp, #0x14]
	mov r2, sl
	adds r2, #0xa4
	str r2, [sp, #0xc]
_08090104:
	cmp r5, #0
	beq _08090120
	ldr r0, _08090118 @ =gPartner
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0809016E
	ldr r6, _0809011C @ =gPlayer
	b _0809012E
	.align 2, 0
_08090118: .4byte gPartner
_0809011C: .4byte gPlayer
_08090120:
	ldr r2, _080901C0 @ =gPlayer
	ldr r1, [r2, #0x10]
	movs r0, #0x80
	ands r1, r0
	adds r6, r2, #0
	cmp r1, #0
	bne _0809016E
_0809012E:
	ldr r3, [sp, #0x10]
	ldr r1, [r3]
	asrs r1, r1, #8
	ldr r4, [sp, #0x18]
	asrs r0, r4, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	mov r0, r8
	ldr r1, [r0]
	asrs r1, r1, #8
	mov r2, sb
	asrs r0, r2, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r3, r6, #0
	cmp r5, #0
	beq _08090156
	ldr r3, _080901C4 @ =gPartner
_08090156:
	adds r0, r7, #0
	adds r1, r4, #0
	bl Coll_Player_Entity_Intersection
	cmp r0, #0
	beq _0809016E
	adds r0, r6, #0
	cmp r5, #0
	beq _0809016A
	ldr r0, _080901C4 @ =gPartner
_0809016A:
	bl Coll_DamagePlayer
_0809016E:
	adds r5, #1
	ldr r0, _080901C8 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	blt _08090104
	ldr r3, [sp, #0x14]
	ldrb r0, [r3]
	cmp r0, #0
	beq _08090258
	mov r4, sb
	asrs r4, r4, #0x10
	mov sb, r4
	mov r1, r8
	ldr r0, [r1]
	asrs r0, r0, #8
	add r0, sb
	ldr r2, [sp, #0x18]
	asrs r6, r2, #0x10
	ldr r3, [sp, #0x10]
	ldr r1, [r3]
	asrs r1, r1, #8
	adds r1, r6, r1
	movs r5, #0
	str r5, [sp]
	ldr r2, _080901CC @ =sa2__sub_801EE64
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F07C
	adds r4, r0, #0
	cmp r4, #0
	blt _080901D0
	ldr r4, [sp, #0xc]
	ldr r0, [r4]
	adds r0, #0x20
	str r0, [r4]
	b _080901E6
	.align 2, 0
_080901C0: .4byte gPlayer
_080901C4: .4byte gPartner
_080901C8: .4byte gNumSingleplayerCharacters
_080901CC: .4byte sa2__sub_801EE64
_080901D0:
	ldr r0, [sp, #0xc]
	str r5, [r0]
	ldr r1, [sp, #0x14]
	strb r5, [r1]
	mov r1, sl
	adds r1, #0xb1
	ldrb r0, [r1]
	cmp r0, #0
	beq _080901EC
	subs r0, #1
	strb r0, [r1]
_080901E6:
	mov r4, sl
	adds r4, #0xa0
	b _080902F8
_080901EC:
	ldr r1, _0809024C @ =sa2__gUnknown_0300194C
	ldrh r0, [r7, #0x16]
	strh r0, [r1]
	ldr r2, _08090250 @ =sa2__gUnknown_03002820
	ldrh r0, [r7, #0x18]
	strh r0, [r2]
	ldr r3, [sp, #0x10]
	ldr r0, [r3]
	asrs r0, r0, #8
	adds r0, r6, r0
	movs r4, #0
	ldrsh r1, [r1, r4]
	subs r0, r0, r1
	mov r3, r8
	ldr r1, [r3]
	asrs r1, r1, #8
	add r1, sb
	movs r4, #0
	ldrsh r2, [r2, r4]
	subs r1, r1, r2
	bl CreateBoulderDebris
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08090242
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08090242
	movs r2, #0x18
	ldrsh r1, [r7, r2]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	bgt _08090242
	movs r0, #0x90
	bl m4aSongNumStart
_08090242:
	ldr r0, _08090254 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0809031C
	.align 2, 0
_0809024C: .4byte sa2__gUnknown_0300194C
_08090250: .4byte sa2__gUnknown_03002820
_08090254: .4byte gCurTask
_08090258:
	mov r3, sb
	asrs r0, r3, #0x10
	mov r4, r8
	ldr r1, [r4]
	asrs r1, r1, #8
	adds r0, r0, r1
	ldr r2, [sp, #0x18]
	asrs r1, r2, #0x10
	ldr r3, [sp, #0x10]
	ldr r2, [r3]
	asrs r2, r2, #8
	adds r1, r1, r2
	add r4, sp, #8
	str r4, [sp]
	ldr r2, _080902AC @ =sa2__sub_801EE64
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F07C
	adds r4, r0, #0
	cmp r4, #5
	ble _080902C6
	ldr r6, [sp, #0xc]
	ldr r5, [r6]
	mov r4, sl
	adds r4, #0xa0
	ldr r0, [r4]
	lsls r0, r0, #1
	movs r1, #5
	bl Div
	cmp r0, #0
	bge _080902B0
	ldr r0, [r4]
	lsls r0, r0, #1
	movs r1, #5
	bl Div
	subs r0, r5, r0
	b _080902BC
	.align 2, 0
_080902AC: .4byte sa2__sub_801EE64
_080902B0:
	ldr r0, [r4]
	lsls r0, r0, #1
	movs r1, #5
	bl Div
	adds r0, r5, r0
_080902BC:
	str r0, [r6]
	movs r0, #1
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	b _080902F8
_080902C6:
	ldr r1, _0809032C @ =gSineTable
	add r0, sp, #8
	ldrb r0, [r0]
	lsls r0, r0, #3
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r1, _08090330 @ =0x000004E2
	bl Div
	mov r2, sl
	adds r2, #0xa0
	ldr r1, [r2]
	adds r1, r1, r0
	str r1, [r2]
	adds r1, r4, #2
	lsls r1, r1, #8
	mov r4, r8
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	adds r4, r2, #0
_080902F8:
	ldr r1, [sp, #0x10]
	ldr r0, [r1]
	ldr r1, [r4]
	adds r0, r0, r1
	ldr r2, [sp, #0x10]
	str r0, [r2]
	mov r3, r8
	ldr r0, [r3]
	ldr r4, [sp, #0xc]
	ldr r1, [r4]
	adds r0, r0, r1
	str r0, [r3]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_0809031C:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809032C: .4byte gSineTable
_08090330: .4byte 0x000004E2

	thumb_func_start CreateBoulderDebris
CreateBoulderDebris: @ 0x08090334
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	str r1, [sp, #4]
	ldr r0, _080904A0 @ =Task_BoulderDebris
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _080904A4 @ =TaskDestructor_BoulderDebris
	str r1, [sp]
	movs r1, #0xf4
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r6, r5
	ldr r0, _080904A8 @ =0x030000C0
	adds r2, r6, r0
	ldr r1, _080904AC @ =0x030000F0
	adds r0, r6, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	ldr r0, _080904B0 @ =0x030000F2
	adds r1, r6, r0
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r1]
	movs r0, #4
	str r2, [sp, #8]
	bl VramMalloc
	str r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r5, #0x1a]
	mov r0, r8
	strh r0, [r5, #8]
	ldr r0, _080904B4 @ =0x000001CB
	strh r0, [r5, #0xa]
	ldr r1, _080904B8 @ =0x03000020
	adds r0, r6, r1
	movs r1, #0
	strb r1, [r0]
	mov r0, r8
	strh r0, [r5, #0x14]
	strh r0, [r5, #0x1c]
	ldr r0, _080904BC @ =0x03000021
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _080904C0 @ =0x03000022
	adds r0, r6, r1
	movs r1, #0x10
	strb r1, [r0]
	ldr r1, _080904C4 @ =0x03000025
	adds r0, r6, r1
	movs r1, #0
	strb r1, [r0]
	movs r0, #0x70
	str r0, [r5, #0x10]
	ldr r2, [sp, #8]
	mov r0, r8
	strh r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	strh r4, [r2, #6]
	mov r1, sp
	ldrh r1, [r1, #4]
	strh r1, [r2, #8]
	adds r0, r5, #0
	str r2, [sp, #8]
	bl UpdateSpriteAnimation
	ldr r4, _080904C8 @ =0x040000D4
	str r5, [r4]
	ldr r0, _080904CC @ =0x03000030
	adds r7, r6, r0
	str r7, [r4, #4]
	ldr r1, _080904D0 @ =0x80000018
	mov sb, r1
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	ldr r2, [sp, #8]
	str r2, [r4]
	ldr r0, _080904D4 @ =0x030000CC
	adds r2, r6, r0
	str r2, [r4, #4]
	ldr r5, _080904D8 @ =0x80000006
	str r5, [r4, #8]
	ldr r0, [r4, #8]
	movs r0, #0x71
	str r0, [r7, #0x10]
	ldr r1, [sp, #4]
	subs r1, #0x10
	mov sl, r1
	strh r1, [r2, #8]
	ldr r0, _080904DC @ =0x03000060
	adds r7, r6, r0
	str r2, [r4]
	ldr r1, _080904E0 @ =0x030000D8
	adds r2, r6, r1
	str r2, [r4, #4]
	str r5, [r4, #8]
	ldr r0, [r4, #8]
	movs r0, #1
	str r2, [sp, #8]
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r7, #0x1a]
	mov r1, r8
	strh r1, [r7, #8]
	subs r0, #0x34
	strh r0, [r7, #0xa]
	ldr r1, _080904E4 @ =0x03000080
	adds r0, r6, r1
	movs r1, #0
	strb r1, [r0]
	mov r0, r8
	strh r0, [r7, #0x14]
	strh r0, [r7, #0x1c]
	ldr r0, _080904E8 @ =0x03000081
	adds r1, r6, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _080904EC @ =0x03000082
	adds r0, r6, r1
	movs r1, #0x10
	strb r1, [r0]
	ldr r1, _080904F0 @ =0x03000085
	adds r0, r6, r1
	movs r1, #0
	strb r1, [r0]
	movs r0, #0x72
	str r0, [r7, #0x10]
	ldr r2, [sp, #8]
	mov r0, sp
	ldrh r0, [r0, #4]
	strh r0, [r2, #8]
	adds r0, r7, #0
	str r2, [sp, #8]
	bl UpdateSpriteAnimation
	str r7, [r4]
	ldr r1, _080904F4 @ =0x03000090
	adds r7, r6, r1
	str r7, [r4, #4]
	mov r0, sb
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r2, [sp, #8]
	str r2, [r4]
	adds r1, #0x54
	adds r2, r6, r1
	str r2, [r4, #4]
	str r5, [r4, #8]
	ldr r0, [r4, #8]
	movs r0, #0x73
	str r0, [r7, #0x10]
	mov r0, sl
	strh r0, [r2, #8]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080904A0: .4byte Task_BoulderDebris
_080904A4: .4byte TaskDestructor_BoulderDebris
_080904A8: .4byte 0x030000C0
_080904AC: .4byte 0x030000F0
_080904B0: .4byte 0x030000F2
_080904B4: .4byte 0x000001CB
_080904B8: .4byte 0x03000020
_080904BC: .4byte 0x03000021
_080904C0: .4byte 0x03000022
_080904C4: .4byte 0x03000025
_080904C8: .4byte 0x040000D4
_080904CC: .4byte 0x03000030
_080904D0: .4byte 0x80000018
_080904D4: .4byte 0x030000CC
_080904D8: .4byte 0x80000006
_080904DC: .4byte 0x03000060
_080904E0: .4byte 0x030000D8
_080904E4: .4byte 0x03000080
_080904E8: .4byte 0x03000081
_080904EC: .4byte 0x03000082
_080904F0: .4byte 0x03000085
_080904F4: .4byte 0x03000090

.if 0
.endif
