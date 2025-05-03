.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 01
	thumb_func_start Task_IceBlockInit
Task_IceBlockInit: @ 0x08073270
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _08073308 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov ip, r0
	ldr r0, _0807330C @ =0x03000060
	adds r4, r1, r0
	ldr r3, _08073310 @ =0x03000090
	adds r0, r1, r3
	ldrh r6, [r0]
	ldr r5, _08073314 @ =0x03000092
	adds r1, r1, r5
	ldrh r7, [r1]
	mov r8, r7
	ldr r5, _08073318 @ =gCamera
	ldrh r0, [r5]
	subs r0, r6, r0
	strh r0, [r4, #0x16]
	ldrh r0, [r1]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	lsls r0, r6, #0x10
	asrs r3, r0, #0x10
	movs r0, #0
	ldrsh r1, [r5, r0]
	movs r7, #0xb8
	lsls r7, r7, #1
	adds r0, r1, r7
	cmp r3, r0
	bgt _080732DC
	adds r0, r1, #0
	subs r0, #0x80
	cmp r3, r0
	blt _080732DC
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r3, r0, #0x10
	movs r7, #2
	ldrsh r1, [r5, r7]
	movs r5, #0x90
	lsls r5, r5, #1
	adds r0, r1, r5
	cmp r3, r0
	bgt _080732DC
	adds r0, r1, #0
	subs r0, #0x80
	cmp r3, r0
	bge _0807331C
_080732DC:
	ldrh r0, [r4, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08073300
	movs r7, #0x18
	ldrsh r0, [r4, r7]
	adds r0, #0x80
	cmp r0, #0
	blt _08073300
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0807331C
_08073300:
	ldr r0, [r2]
	bl TaskDestroy
	b _08073350
	.align 2, 0
_08073308: .4byte gCurTask
_0807330C: .4byte 0x03000060
_08073310: .4byte 0x03000090
_08073314: .4byte 0x03000092
_08073318: .4byte gCamera
_0807331C:
	mov r0, ip
	adds r0, #0xbd
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807332C
	ldr r1, [r2]
	ldr r0, _0807335C @ =sub_8073364
	str r0, [r1, #8]
_0807332C:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r2, _08073360 @ =gCamera
	ldrh r1, [r2]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldrh r1, [r2, #2]
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl DisplaySprite
_08073350:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807335C: .4byte sub_8073364
_08073360: .4byte gCamera
.endif

	thumb_func_start sub_8073364
sub_8073364: @ 0x08073364
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r1, _0807339C @ =gCurTask
	ldr r0, [r1]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	str r0, [sp, #8]
	ldr r0, _080733A0 @ =0x03000030
	adds r6, r4, r0
	ldr r3, _080733A4 @ =0x030000BC
	adds r5, r4, r3
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x1d
	ble _080733A8
	ldr r0, [r1]
	bl TaskDestroy
	b _080734AE
	.align 2, 0
_0807339C: .4byte gCurTask
_080733A0: .4byte 0x03000030
_080733A4: .4byte 0x030000BC
_080733A8:
	ldr r0, [sp, #8]
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	ldrb r1, [r5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080734AE
	movs r5, #0
	ldr r7, _0807343C @ =0x030000A4
	adds r7, r4, r7
	str r7, [sp]
	ldr r0, _08073440 @ =0x030000AC
	adds r0, r4, r0
	str r0, [sp, #4]
	ldr r1, _08073444 @ =0x03000094
	adds r1, r1, r4
	mov sl, r1
	ldr r3, _08073448 @ =0x030000B4
	adds r3, r3, r4
	mov sb, r3
	ldr r7, _0807344C @ =0x0300009C
	adds r7, r7, r4
	mov r8, r7
	ldr r4, _08073450 @ =gCamera
_080733E0:
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _08073454
	lsls r2, r5, #1
	ldr r0, [sp]
	adds r1, r0, r2
	ldr r3, [sp, #4]
	adds r0, r3, r2
	ldrh r0, [r0]
	ldrh r7, [r1]
	adds r0, r0, r7
	strh r0, [r1]
	mov r0, sl
	adds r3, r0, r2
	movs r7, #0
	ldrsh r0, [r1, r7]
	cmp r0, #0
	bge _08073408
	adds r0, #3
_08073408:
	asrs r0, r0, #2
	strh r0, [r3]
	mov r0, sb
	adds r1, r0, r2
	ldrh r0, [r1]
	adds r0, #0x14
	strh r0, [r1]
	add r2, r8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldrh r0, [r3]
	ldrh r1, [r4]
	subs r0, r0, r1
	ldr r3, [sp, #8]
	strh r0, [r3, #0x16]
	ldrh r0, [r2]
	ldrh r1, [r4, #2]
	subs r0, r0, r1
	strh r0, [r3, #0x18]
	ldr r0, [sp, #8]
	bl DisplaySprite
	b _080734A4
	.align 2, 0
_0807343C: .4byte 0x030000A4
_08073440: .4byte 0x030000AC
_08073444: .4byte 0x03000094
_08073448: .4byte 0x030000B4
_0807344C: .4byte 0x0300009C
_08073450: .4byte gCamera
_08073454:
	lsls r2, r5, #1
	ldr r7, [sp]
	adds r1, r7, r2
	ldr r3, [sp, #4]
	adds r0, r3, r2
	ldrh r0, [r0]
	ldrh r7, [r1]
	adds r0, r0, r7
	strh r0, [r1]
	mov r0, sl
	adds r3, r0, r2
	movs r7, #0
	ldrsh r0, [r1, r7]
	cmp r0, #0
	bge _08073474
	adds r0, #3
_08073474:
	asrs r0, r0, #2
	strh r0, [r3]
	mov r0, sb
	adds r1, r0, r2
	ldrh r0, [r1]
	adds r0, #0x14
	strh r0, [r1]
	add r2, r8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldrh r0, [r3]
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r6, #0x16]
	ldrh r0, [r2]
	ldrh r1, [r4, #2]
	subs r0, r0, r1
	strh r0, [r6, #0x18]
	adds r0, r6, #0
	bl DisplaySprite
_080734A4:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _080733E0
_080734AE:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start TaskDestructor_IceBlock
TaskDestructor_IceBlock: @ 0x080734C0
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #4]
	bl VramFree
	ldr r0, [r4, #0x34]
	bl VramFree
	ldr r0, [r4, #0x64]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
