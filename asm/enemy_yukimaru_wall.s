.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ NOTE: Merge this with regular Yukimaru module!

	thumb_func_start CreateEntity_Yukimaru_Wall
CreateEntity_Yukimaru_Wall: @ 0x08071F44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #4]
	movs r0, #3
	ldrsb r0, [r7, r0]
	cmp r0, #0
	beq _08071F88
	ldr r0, _08071F80 @ =Task_YukimaruWallInit
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08071F84 @ =TaskDestructor_YukimaruWall
	str r1, [sp]
	movs r1, #0x84
	movs r3, #0
	bl TaskCreate
	b _08071F9A
	.align 2, 0
_08071F80: .4byte Task_YukimaruWallInit
_08071F84: .4byte TaskDestructor_YukimaruWall
_08071F88:
	ldr r0, _08072138 @ =sub_8072578
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _0807213C @ =TaskDestructor_YukimaruWall
	str r1, [sp]
	movs r1, #0x84
	movs r3, #0
	bl TaskCreate
_08071F9A:
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r5
	mov r8, r0
	ldr r0, _08072140 @ =0x0300000C
	adds r4, r5, r0
	movs r0, #8
	bl VramMalloc
	str r0, [r4, #4]
	movs r6, #0
	mov r2, sb
	mov r1, r8
	strh r2, [r1, #4]
	mov r3, sl
	strh r3, [r1, #6]
	str r7, [r1]
	ldrb r0, [r7]
	strb r0, [r1, #8]
	mov r0, sp
	ldrb r0, [r0, #4]
	strb r0, [r1, #9]
	ldr r1, _08072144 @ =0x03000078
	adds r1, r5, r1
	str r1, [sp, #8]
	movs r2, #0xa0
	rsbs r2, r2, #0
	strh r2, [r1]
	ldr r3, _08072148 @ =0x0300007A
	adds r3, r5, r3
	str r3, [sp, #0xc]
	strh r6, [r3]
	ldr r0, _0807214C @ =0x0300007C
	adds r0, r5, r0
	str r0, [sp, #0x10]
	strh r6, [r0]
	ldr r1, _08072150 @ =0x0300007E
	adds r1, r5, r1
	str r1, [sp, #0x14]
	strh r6, [r1]
	ldr r2, _08072154 @ =0x03000080
	adds r0, r5, r2
	strh r6, [r0]
	ldrb r1, [r7, #3]
	ldr r3, _08072158 @ =0x03000082
	adds r0, r5, r3
	strb r1, [r0]
	ldrb r0, [r7]
	lsls r0, r0, #3
	mov r1, sb
	lsls r1, r1, #8
	str r1, [sp, #0x18]
	adds r0, r0, r1
	strh r0, [r4, #0x16]
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	mov r2, sl
	lsls r2, r2, #8
	str r2, [sp, #0x1c]
	adds r0, r0, r2
	strh r0, [r4, #0x18]
	movs r3, #2
	rsbs r3, r3, #0
	strb r3, [r7]
	strh r6, [r4, #0x1a]
	strh r6, [r4, #8]
	ldr r0, _0807215C @ =0x000001A7
	strh r0, [r4, #0xa]
	ldr r1, _08072160 @ =0x0300002C
	adds r0, r5, r1
	movs r2, #1
	strb r2, [r0]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	ldr r3, _08072164 @ =0x0300002D
	adds r1, r5, r3
	movs r0, #1
	rsbs r0, r0, #0
	add r2, sp, #0x20
	strb r0, [r2]
	movs r0, #0xff
	strb r0, [r1]
	adds r3, #1
	adds r0, r5, r3
	movs r1, #0x10
	strb r1, [r0]
	ldr r2, _08072168 @ =0x03000031
	adds r0, r5, r2
	movs r3, #0
	strb r3, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	movs r0, #3
	ldrsb r0, [r7, r0]
	cmp r0, #1
	beq _08072074
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #0x10]
_08072074:
	ldr r2, _0807216C @ =0x03000048
	adds r4, r5, r2
	movs r0, #8
	bl VramMalloc
	str r0, [r4, #4]
	ldr r3, _08072170 @ =0x03000040
	adds r0, r5, r3
	mov r1, sb
	strh r1, [r0]
	ldr r2, _08072174 @ =0x03000042
	adds r0, r5, r2
	mov r3, sl
	strh r3, [r0]
	mov r0, r8
	str r7, [r0, #0x3c]
	ldrb r1, [r7]
	adds r2, #2
	adds r0, r5, r2
	strb r1, [r0]
	ldr r3, _08072178 @ =0x03000045
	adds r0, r5, r3
	mov r1, sp
	ldrb r1, [r1, #4]
	strb r1, [r0]
	movs r3, #0xa0
	rsbs r3, r3, #0
	ldr r2, [sp, #8]
	strh r3, [r2]
	ldr r0, [sp, #0xc]
	strh r6, [r0]
	ldr r1, [sp, #0x10]
	strh r6, [r1]
	ldr r2, [sp, #0x14]
	strh r6, [r2]
	ldrb r0, [r7]
	lsls r0, r0, #3
	ldr r3, [sp, #0x18]
	adds r0, r0, r3
	strh r0, [r4, #0x16]
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	ldr r1, [sp, #0x1c]
	adds r0, r0, r1
	strh r0, [r4, #0x18]
	movs r2, #2
	rsbs r2, r2, #0
	strb r2, [r7]
	strh r6, [r4, #0x1a]
	strh r6, [r4, #8]
	ldr r3, _0807215C @ =0x000001A7
	strh r3, [r4, #0xa]
	ldr r1, _0807217C @ =0x03000068
	adds r0, r5, r1
	movs r2, #1
	strb r2, [r0]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	ldr r3, _08072180 @ =0x03000069
	adds r1, r5, r3
	ldrb r0, [r1]
	add r2, sp, #0x20
	ldrb r2, [r2]
	orrs r0, r2
	strb r0, [r1]
	adds r3, #1
	adds r0, r5, r3
	movs r1, #0x10
	strb r1, [r0]
	ldr r2, _08072184 @ =0x0300006D
	adds r0, r5, r2
	movs r3, #0
	strb r3, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r4, #0x10]
	movs r0, #3
	ldrsb r0, [r7, r0]
	cmp r0, #1
	beq _08072122
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r4, #0x10]
_08072122:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08072138: .4byte sub_8072578
_0807213C: .4byte TaskDestructor_YukimaruWall
_08072140: .4byte 0x0300000C
_08072144: .4byte 0x03000078
_08072148: .4byte 0x0300007A
_0807214C: .4byte 0x0300007C
_08072150: .4byte 0x0300007E
_08072154: .4byte 0x03000080
_08072158: .4byte 0x03000082
_0807215C: .4byte 0x000001A7
_08072160: .4byte 0x0300002C
_08072164: .4byte 0x0300002D
_08072168: .4byte 0x03000031
_0807216C: .4byte 0x03000048
_08072170: .4byte 0x03000040
_08072174: .4byte 0x03000042
_08072178: .4byte 0x03000045
_0807217C: .4byte 0x03000068
_08072180: .4byte 0x03000069
_08072184: .4byte 0x0300006D

	thumb_func_start Task_YukimaruWallInit
Task_YukimaruWallInit: @ 0x08072188
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r1, _0807227C @ =gCurTask
	ldr r0, [r1]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
	ldr r2, _08072280 @ =0x0300000C
	adds r7, r3, r2
	ldr r4, _08072284 @ =0x03000048
	adds r4, r4, r3
	mov r8, r4
	ldr r0, [r5]
	mov sb, r0
	ldrb r2, [r5, #8]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	mov r4, sb
	ldrb r1, [r4, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r6, r2, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov ip, r1
	ldr r0, _08072288 @ =0x0300007C
	adds r1, r3, r0
	ldr r2, _0807228C @ =0x03000078
	adds r0, r3, r2
	ldrh r0, [r0]
	ldrh r4, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	add r0, ip
	lsls r0, r0, #0x10
	ldr r1, _08072290 @ =0x0300007A
	adds r3, r3, r1
	ldrh r1, [r3]
	adds r1, r6, r1
	lsls r1, r1, #0x10
	ldr r3, _08072294 @ =gCamera
	lsrs r2, r1, #0x10
	mov sl, r2
	asrs r1, r1, #0x10
	ldrh r4, [r3]
	subs r4, r1, r4
	str r4, [sp, #0xc]
	strh r4, [r7, #0x16]
	lsrs r4, r0, #0x10
	str r4, [sp, #8]
	asrs r0, r0, #0x10
	ldrh r2, [r3, #2]
	subs r2, r0, r2
	str r2, [sp, #0xc]
	strh r2, [r7, #0x18]
	ldrh r2, [r3]
	subs r1, r1, r2
	mov r2, r8
	strh r1, [r2, #0x16]
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	strh r0, [r2, #0x18]
	movs r4, #0
	ldrsh r1, [r3, r4]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	ldr r4, _0807227C @ =gCurTask
	cmp r6, r0
	bgt _0807224A
	adds r0, r1, #0
	subs r0, #0x80
	cmp r6, r0
	blt _0807224A
	movs r0, #2
	ldrsh r2, [r3, r0]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp ip, r0
	bgt _0807224A
	adds r0, r2, #0
	subs r0, #0x80
	cmp ip, r0
	bge _08072298
_0807224A:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0807226E
	movs r2, #0x18
	ldrsh r0, [r7, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _0807226E
	movs r3, #0x18
	ldrsh r1, [r7, r3]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08072298
_0807226E:
	ldrb r0, [r5, #8]
	mov r1, sb
	strb r0, [r1]
	ldr r0, [r4]
	bl TaskDestroy
	b _0807239E
	.align 2, 0
_0807227C: .4byte gCurTask
_08072280: .4byte 0x0300000C
_08072284: .4byte 0x03000048
_08072288: .4byte 0x0300007C
_0807228C: .4byte 0x03000078
_08072290: .4byte 0x0300007A
_08072294: .4byte gCamera
_08072298:
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r6, r0, #0x10
	ldr r3, [sp, #8]
	lsls r0, r3, #0x10
	asrs r4, r0, #0x10
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl Coll_Player_Enemy_Attack
	cmp r0, #0
	beq _080722C0
	ldr r0, _080722BC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0807239E
	.align 2, 0
_080722BC: .4byte gCurTask
_080722C0:
	str r0, [sp]
	ldr r0, _08072300 @ =sa2__sub_801ED24
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F07C
	adds r2, r5, #0
	adds r2, #0x7a
	ldrh r1, [r2]
	adds r1, r1, r0
	movs r0, #0
	mov ip, r0
	strh r1, [r2]
	adds r0, r5, #0
	adds r0, #0x7c
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x18
	mov r3, sb
	movs r1, #4
	ldrsb r1, [r3, r1]
	lsls r0, r1, #3
	cmp r2, r0
	bgt _08072304
	adds r1, r5, #0
	adds r1, #0x78
	movs r0, #0xa0
	strh r0, [r1]
	b _08072370
	.align 2, 0
_08072300: .4byte sa2__sub_801ED24
_08072304:
	mov r3, sb
	ldrb r0, [r3, #6]
	adds r0, r1, r0
	lsls r0, r0, #3
	cmp r2, r0
	blt _08072320
	adds r1, r5, #0
	adds r1, #0x78
	ldr r0, _0807231C @ =0x0000FF60
	strh r0, [r1]
	b _08072370
	.align 2, 0
_0807231C: .4byte 0x0000FF60
_08072320:
	adds r2, r5, #0
	adds r2, #0x80
	ldrh r0, [r2]
	movs r1, #0
	ldrsh r3, [r2, r1]
	cmp r3, #0
	beq _08072334
	subs r0, #1
	strh r0, [r2]
	b _08072370
_08072334:
	ldr r1, _080723B0 @ =gPlayer
	ldr r0, [r1]
	asrs r0, r0, #8
	cmp r0, r6
	bgt _08072370
	ldr r0, [r1, #4]
	asrs r1, r0, #8
	adds r0, r4, #0
	adds r0, #8
	cmp r1, r0
	bgt _08072370
	subs r0, #0x10
	cmp r0, r1
	bgt _08072370
	movs r0, #0x3c
	strh r0, [r2]
	adds r0, r5, #0
	adds r0, #0x7e
	strh r3, [r0]
	adds r0, r7, #0
	adds r0, #0x20
	mov r2, ip
	strb r2, [r0]
	mov r0, r8
	adds r0, #0x20
	strb r2, [r0]
	ldr r0, _080723B4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080723B8 @ =sub_80723C0
	str r0, [r1, #8]
_08072370:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	mov r0, r8
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	mov r3, r8
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r3, #0x10]
	mov r0, r8
	bl DisplaySprite
	mov r4, r8
	ldr r0, [r4, #0x10]
	ldr r1, _080723BC @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #0x10]
_0807239E:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080723B0: .4byte gPlayer
_080723B4: .4byte gCurTask
_080723B8: .4byte sub_80723C0
_080723BC: .4byte 0xFFFFF7FF

	thumb_func_start sub_80723C0
sub_80723C0: @ 0x080723C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r4, _080724AC @ =gCurTask
	ldr r0, [r4]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r3
	mov sb, r0
	ldr r0, _080724B0 @ =0x0300000C
	adds r5, r3, r0
	ldr r1, _080724B4 @ =0x03000048
	adds r6, r3, r1
	mov r2, sb
	ldr r2, [r2]
	mov r8, r2
	mov r7, sb
	ldrb r2, [r7, #8]
	lsls r2, r2, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	mov r0, r8
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	str r2, [sp, #4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov ip, r1
	ldr r1, _080724B8 @ =0x0300007A
	adds r0, r3, r1
	ldrh r2, [r0]
	ldr r7, [sp, #4]
	adds r2, r7, r2
	lsls r2, r2, #0x10
	ldr r0, _080724BC @ =0x0300007C
	adds r3, r3, r0
	ldrh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	add r0, ip
	lsls r0, r0, #0x10
	ldr r3, _080724C0 @ =gCamera
	ldrh r1, [r3]
	lsrs r7, r2, #0x10
	str r7, [sp]
	asrs r2, r2, #0x10
	subs r1, r2, r1
	strh r1, [r5, #0x16]
	ldrh r1, [r3, #2]
	lsrs r7, r0, #0x10
	mov sl, r7
	asrs r0, r0, #0x10
	subs r1, r0, r1
	strh r1, [r5, #0x18]
	ldrh r1, [r3]
	subs r2, r2, r1
	strh r2, [r6, #0x16]
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	strh r0, [r6, #0x18]
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	ldr r7, [sp, #4]
	cmp r7, r0
	bgt _08072478
	adds r0, r1, #0
	subs r0, #0x80
	cmp r7, r0
	blt _08072478
	movs r0, #2
	ldrsh r1, [r3, r0]
	subs r2, #0x50
	adds r0, r1, r2
	cmp ip, r0
	bgt _08072478
	adds r0, r1, #0
	subs r0, #0x80
	cmp ip, r0
	bge _080724C4
_08072478:
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0807249C
	movs r7, #0x18
	ldrsh r0, [r5, r7]
	adds r0, #0x80
	cmp r0, #0
	blt _0807249C
	movs r0, #0x18
	ldrsh r1, [r5, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _080724C4
_0807249C:
	mov r1, sb
	ldrb r0, [r1, #8]
	mov r2, r8
	strb r0, [r2]
	ldr r0, [r4]
	bl TaskDestroy
	b _0807255A
	.align 2, 0
_080724AC: .4byte gCurTask
_080724B0: .4byte 0x0300000C
_080724B4: .4byte 0x03000048
_080724B8: .4byte 0x0300007A
_080724BC: .4byte 0x0300007C
_080724C0: .4byte gCamera
_080724C4:
	ldr r7, [sp]
	lsls r0, r7, #0x10
	asrs r7, r0, #0x10
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	adds r0, r5, #0
	adds r1, r7, #0
	mov r2, r8
	bl Coll_Player_Enemy_Attack
	cmp r0, #0
	beq _080724F0
	ldr r0, _080724EC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0807255A
	.align 2, 0
_080724EC: .4byte gCurTask
_080724F0:
	mov r4, sb
	adds r4, #0x7e
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	bne _08072512
	adds r0, r7, #0
	subs r0, #0xa
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, r8
	movs r2, #0
	bl sub_8072964
_08072512:
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0x12
	bne _08072530
	adds r0, r5, #0
	adds r0, #0x20
	movs r1, #1
	strb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x20
	strb r1, [r0]
	ldr r0, _0807256C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08072570 @ =Task_YukimaruWallInit
	str r0, [r1, #8]
_08072530:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r6, #0x10]
	adds r0, r6, #0
	bl DisplaySprite
	ldr r0, [r6, #0x10]
	ldr r1, _08072574 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r6, #0x10]
_0807255A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807256C: .4byte gCurTask
_08072570: .4byte Task_YukimaruWallInit
_08072574: .4byte 0xFFFFF7FF

	thumb_func_start sub_8072578
sub_8072578: @ 0x08072578
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r1, _0807266C @ =gCurTask
	ldr r0, [r1]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
	ldr r2, _08072670 @ =0x0300000C
	adds r7, r3, r2
	ldr r4, _08072674 @ =0x03000048
	adds r4, r4, r3
	mov r8, r4
	ldr r0, [r5]
	mov sb, r0
	ldrb r2, [r5, #8]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	mov r4, sb
	ldrb r1, [r4, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r6, r2, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov ip, r1
	ldr r0, _08072678 @ =0x0300007C
	adds r1, r3, r0
	ldr r2, _0807267C @ =0x03000078
	adds r0, r3, r2
	ldrh r0, [r0]
	ldrh r4, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	add r0, ip
	lsls r0, r0, #0x10
	ldr r1, _08072680 @ =0x0300007A
	adds r3, r3, r1
	ldrh r1, [r3]
	adds r1, r6, r1
	lsls r1, r1, #0x10
	ldr r3, _08072684 @ =gCamera
	lsrs r2, r1, #0x10
	mov sl, r2
	asrs r1, r1, #0x10
	ldrh r4, [r3]
	subs r4, r1, r4
	str r4, [sp, #0xc]
	strh r4, [r7, #0x16]
	lsrs r4, r0, #0x10
	str r4, [sp, #8]
	asrs r0, r0, #0x10
	ldrh r2, [r3, #2]
	subs r2, r0, r2
	str r2, [sp, #0xc]
	strh r2, [r7, #0x18]
	ldrh r2, [r3]
	subs r1, r1, r2
	mov r2, r8
	strh r1, [r2, #0x16]
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	strh r0, [r2, #0x18]
	movs r4, #0
	ldrsh r1, [r3, r4]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	ldr r4, _0807266C @ =gCurTask
	cmp r6, r0
	bgt _0807263A
	adds r0, r1, #0
	subs r0, #0x80
	cmp r6, r0
	blt _0807263A
	movs r0, #2
	ldrsh r2, [r3, r0]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp ip, r0
	bgt _0807263A
	adds r0, r2, #0
	subs r0, #0x80
	cmp ip, r0
	bge _08072688
_0807263A:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0807265E
	movs r2, #0x18
	ldrsh r0, [r7, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _0807265E
	movs r3, #0x18
	ldrsh r1, [r7, r3]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08072688
_0807265E:
	ldrb r0, [r5, #8]
	mov r1, sb
	strb r0, [r1]
	ldr r0, [r4]
	bl TaskDestroy
	b _08072792
	.align 2, 0
_0807266C: .4byte gCurTask
_08072670: .4byte 0x0300000C
_08072674: .4byte 0x03000048
_08072678: .4byte 0x0300007C
_0807267C: .4byte 0x03000078
_08072680: .4byte 0x0300007A
_08072684: .4byte gCamera
_08072688:
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r6, r0, #0x10
	ldr r3, [sp, #8]
	lsls r0, r3, #0x10
	asrs r4, r0, #0x10
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl Coll_Player_Enemy_Attack
	cmp r0, #0
	beq _080726B0
	ldr r0, _080726AC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08072792
	.align 2, 0
_080726AC: .4byte gCurTask
_080726B0:
	movs r3, #8
	rsbs r3, r3, #0
	str r0, [sp]
	ldr r0, _080726F4 @ =sa2__sub_801ED24
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #1
	bl sa2__sub_801F07C
	adds r2, r5, #0
	adds r2, #0x7a
	ldrh r1, [r2]
	subs r1, r1, r0
	movs r0, #0
	mov ip, r0
	strh r1, [r2]
	adds r0, r5, #0
	adds r0, #0x7c
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x18
	mov r3, sb
	movs r1, #4
	ldrsb r1, [r3, r1]
	lsls r0, r1, #3
	cmp r2, r0
	bgt _080726F8
	adds r1, r5, #0
	adds r1, #0x78
	movs r0, #0xa0
	strh r0, [r1]
	b _08072764
	.align 2, 0
_080726F4: .4byte sa2__sub_801ED24
_080726F8:
	mov r3, sb
	ldrb r0, [r3, #6]
	adds r0, r1, r0
	lsls r0, r0, #3
	cmp r2, r0
	blt _08072714
	adds r1, r5, #0
	adds r1, #0x78
	ldr r0, _08072710 @ =0x0000FF60
	strh r0, [r1]
	b _08072764
	.align 2, 0
_08072710: .4byte 0x0000FF60
_08072714:
	adds r2, r5, #0
	adds r2, #0x80
	ldrh r0, [r2]
	movs r1, #0
	ldrsh r3, [r2, r1]
	cmp r3, #0
	beq _08072728
	subs r0, #1
	strh r0, [r2]
	b _08072764
_08072728:
	ldr r1, _080727A4 @ =gPlayer
	ldr r0, [r1]
	asrs r0, r0, #8
	cmp r0, r6
	blt _08072764
	ldr r0, [r1, #4]
	asrs r1, r0, #8
	adds r0, r4, #0
	adds r0, #8
	cmp r1, r0
	bgt _08072764
	subs r0, #0x10
	cmp r0, r1
	bgt _08072764
	movs r0, #0x3c
	strh r0, [r2]
	adds r0, r5, #0
	adds r0, #0x7e
	strh r3, [r0]
	adds r0, r7, #0
	adds r0, #0x20
	mov r2, ip
	strb r2, [r0]
	mov r0, r8
	adds r0, #0x20
	strb r2, [r0]
	ldr r0, _080727A8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080727AC @ =sub_80727B4
	str r0, [r1, #8]
_08072764:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	mov r0, r8
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	mov r3, r8
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r3, #0x10]
	mov r0, r8
	bl DisplaySprite
	mov r4, r8
	ldr r0, [r4, #0x10]
	ldr r1, _080727B0 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #0x10]
_08072792:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080727A4: .4byte gPlayer
_080727A8: .4byte gCurTask
_080727AC: .4byte sub_80727B4
_080727B0: .4byte 0xFFFFF7FF

	thumb_func_start sub_80727B4
sub_80727B4: @ 0x080727B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _080728BC @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r3
	mov sl, r0
	ldr r0, _080728C0 @ =0x0300000C
	adds r5, r3, r0
	ldr r1, _080728C4 @ =0x03000048
	adds r6, r3, r1
	mov r2, sl
	ldr r2, [r2]
	str r2, [sp]
	mov r4, sl
	ldrb r2, [r4, #8]
	lsls r2, r2, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r0, [sp]
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r8, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov sb, r1
	ldr r1, _080728C8 @ =0x0300007A
	adds r0, r3, r1
	ldrh r2, [r0]
	add r2, r8
	lsls r2, r2, #0x10
	ldr r4, _080728CC @ =0x0300007C
	adds r0, r3, r4
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	add r0, sb
	lsls r0, r0, #0x10
	ldr r7, _080728D0 @ =gCamera
	ldrh r1, [r7]
	lsrs r4, r2, #0x10
	str r4, [sp, #8]
	asrs r4, r2, #0x10
	subs r1, r4, r1
	strh r1, [r5, #0x16]
	ldrh r1, [r7, #2]
	lsrs r2, r0, #0x10
	str r2, [sp, #4]
	asrs r2, r0, #0x10
	subs r1, r2, r1
	strh r1, [r5, #0x18]
	ldrh r0, [r7]
	subs r0, r4, r0
	strh r0, [r6, #0x16]
	ldrh r0, [r7, #2]
	subs r0, r2, r0
	strh r0, [r6, #0x18]
	ldr r0, _080728D4 @ =0x0300007E
	adds r3, r3, r0
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	bne _08072860
	adds r0, r4, #0
	adds r0, #0xa
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r2, #0
	movs r2, #1
	bl sub_8072964
_08072860:
	movs r2, #0
	ldrsh r1, [r7, r2]
	movs r4, #0xb8
	lsls r4, r4, #1
	adds r0, r1, r4
	cmp r8, r0
	bgt _0807288C
	adds r0, r1, #0
	subs r0, #0x80
	cmp r8, r0
	blt _0807288C
	movs r0, #2
	ldrsh r1, [r7, r0]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp sb, r0
	bgt _0807288C
	adds r0, r1, #0
	subs r0, #0x80
	cmp sb, r0
	bge _080728D8
_0807288C:
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080728B0
	movs r4, #0x18
	ldrsh r0, [r5, r4]
	adds r0, #0x80
	cmp r0, #0
	blt _080728B0
	movs r0, #0x18
	ldrsh r1, [r5, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _080728D8
_080728B0:
	mov r1, sl
	ldrb r0, [r1, #8]
	ldr r2, [sp]
	strb r0, [r2]
	b _080728EE
	.align 2, 0
_080728BC: .4byte gCurTask
_080728C0: .4byte 0x0300000C
_080728C4: .4byte 0x03000048
_080728C8: .4byte 0x0300007A
_080728CC: .4byte 0x0300007C
_080728D0: .4byte gCamera
_080728D4: .4byte 0x0300007E
_080728D8:
	ldr r4, [sp, #8]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	ldr r0, [sp, #4]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	bl Coll_Player_Enemy_Attack
	cmp r0, #0
	beq _080728FC
_080728EE:
	ldr r0, _080728F8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08072948
	.align 2, 0
_080728F8: .4byte gCurTask
_080728FC:
	mov r0, sl
	adds r0, #0x7e
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x12
	bne _0807291E
	adds r0, r5, #0
	adds r0, #0x20
	movs r1, #1
	strb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x20
	strb r1, [r0]
	ldr r0, _08072958 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0807295C @ =sub_8072578
	str r0, [r1, #8]
_0807291E:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r6, #0x10]
	adds r0, r6, #0
	bl DisplaySprite
	ldr r0, [r6, #0x10]
	ldr r1, _08072960 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r6, #0x10]
_08072948:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08072958: .4byte gCurTask
_0807295C: .4byte sub_8072578
_08072960: .4byte 0xFFFFF7FF

	thumb_func_start sub_8072964
sub_8072964: @ 0x08072964
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r2, #0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _080729A8 @ =sub_8072A1C
	movs r2, #0xc0
	lsls r2, r2, #6
	movs r5, #0
	str r5, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov ip, r1
	mov r6, ip
	strh r5, [r6, #0x34]
	cmp r4, #0
	beq _080729B0
	ldr r0, _080729AC @ =0x0000FFFD
	strh r0, [r6, #0x32]
	b _080729B6
	.align 2, 0
_080729A8: .4byte sub_8072A1C
_080729AC: .4byte 0x0000FFFD
_080729B0:
	movs r0, #3
	mov r1, ip
	strh r0, [r1, #0x32]
_080729B6:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	movs r3, #0
	movs r2, #0
	strh r1, [r6, #0x30]
	subs r0, #8
	mov r1, ip
	strh r0, [r1, #0x16]
	mov r0, r8
	strh r0, [r1, #0x18]
	ldr r0, _08072A14 @ =0x06012580
	str r0, [r1, #4]
	movs r0, #0x40
	strh r0, [r1, #0x1a]
	strh r2, [r1, #8]
	ldr r0, _08072A18 @ =0x000001AB
	strh r0, [r1, #0xa]
	mov r0, ip
	adds r0, #0x20
	strb r3, [r0]
	strh r2, [r1, #0x14]
	strh r2, [r1, #0x1c]
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x25
	strb r3, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	mov r1, ip
	str r0, [r1, #0x28]
	str r2, [r1, #0x10]
	mov r0, ip
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08072A14: .4byte 0x06012580
_08072A18: .4byte 0x000001AB

	thumb_func_start sub_8072A1C
sub_8072A1C: @ 0x08072A1C
	push {r4, r5, r6, r7, lr}
	ldr r0, _08072A94 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r5, r4, #0
	ldrh r0, [r4, #0x16]
	ldrh r1, [r4, #0x32]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldrh r0, [r4, #0x34]
	adds r0, #0x17
	strh r0, [r4, #0x34]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x18]
	adds r0, r0, r1
	strh r0, [r4, #0x18]
	ldrh r0, [r4, #0x16]
	adds r7, r0, #0
	ldrh r0, [r4, #0x18]
	adds r6, r0, #0
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	bl Coll_Player_Projectile
	ldr r3, _08072A98 @ =gCamera
	ldrh r0, [r4, #0x16]
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldrh r2, [r4, #0x18]
	ldrh r1, [r3, #2]
	subs r2, r2, r1
	strh r2, [r4, #0x18]
	adds r0, #0x14
	lsls r0, r0, #0x10
	movs r1, #0x8a
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08072A8A
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x14
	cmp r0, #0
	blt _08072A8A
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf0
	ble _08072A9C
_08072A8A:
	ldr r0, _08072A94 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08072AAC
	.align 2, 0
_08072A94: .4byte gCurTask
_08072A98: .4byte gCamera
_08072A9C:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	strh r7, [r5, #0x16]
	strh r6, [r5, #0x18]
_08072AAC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start TaskDestructor_YukimaruWall
TaskDestructor_YukimaruWall: @ 0x08072AB4
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x10]
	bl VramFree
	ldr r0, [r4, #0x4c]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0
