.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

@ Moon Zone Boss / Extra Boss
	thumb_func_start CreateEntity_SuperEggRobot
CreateEntity_SuperEggRobot: @ 0x08052340
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	ldr r0, _0805236C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _08052370
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r5]
	b _080523AC
	.align 2, 0
_0805236C: .4byte gGameMode
_08052370:
	ldr r0, _080523B8 @ =Task_SuperEggRobotInit
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x70
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	strh r7, [r4, #4]
	strh r6, [r4, #6]
	str r5, [r4]
	ldrb r0, [r5]
	strb r0, [r4, #8]
	mov r0, r8
	strb r0, [r4, #9]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r5]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_80504DC
	ldr r0, _080523BC @ =gExtraBossTaskData
	str r4, [r0]
_080523AC:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080523B8: .4byte Task_SuperEggRobotInit
_080523BC: .4byte gExtraBossTaskData

	thumb_func_start sub_80523C0
sub_80523C0: @ 0x080523C0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80523D4
sub_80523D4: @ 0x080523D4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8050194
	cmp r0, #3
	bgt _080523EA
	lsls r1, r0, #8
	adds r0, r4, #0
	adds r0, #0x4e
	strh r1, [r0]
	b _080523F2
_080523EA:
	ldr r0, [r4, #0x58]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x58]
_080523F2:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80523F8
sub_80523F8: @ 0x080523F8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8050194
	cmp r0, #0
	bge _0805241E
	lsls r1, r0, #8
	ldr r0, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x48]
	ldr r0, [r4, #0x58]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x58]
	adds r1, r4, #0
	adds r1, #0x4e
	movs r0, #0
	strh r0, [r1]
_0805241E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8052424
sub_8052424: @ 0x08052424
	push {r4, lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x4c
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, [r3, #0x44]
	adds r0, r0, r1
	str r0, [r3, #0x44]
	movs r1, #0x4e
	adds r1, r1, r3
	mov ip, r1
	movs r4, #0
	ldrsh r1, [r1, r4]
	ldr r0, [r3, #0x48]
	adds r0, r0, r1
	str r0, [r3, #0x48]
	adds r0, r3, #0
	adds r0, #0x50
	ldrh r0, [r0]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	adds r0, r3, #0
	adds r0, #0x52
	ldrh r0, [r0]
	mov r2, ip
	ldrh r2, [r2]
	adds r0, r0, r2
	mov r4, ip
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8052468
sub_8052468: @ 0x08052468
	adds r0, #0x4e
	ldrh r1, [r0]
	adds r1, #0x10
	strh r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_8052474
sub_8052474: @ 0x08052474
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r4, r3, #0
	ldr r1, _080524D4 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	ldr r1, _080524D8 @ =0x00000299
	orrs r0, r1
	ldr r1, _080524DC @ =0xFF00FFFF
	ands r0, r1
	str r0, [sp]
	movs r0, #0x40
	bl VramMalloc
	str r0, [sp, #4]
	ldr r1, _080524E0 @ =sub_8050A88
	ldr r2, _080524E4 @ =TaskDestructor_SomeTaskManager_60_Common
	mov r0, sp
	bl CreateSomeTaskManager_7C_Task
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	str r5, [r0, #8]
	str r6, [r0, #0x68]
	mov r1, r8
	str r1, [r0, #0x6c]
	ldr r1, _080524E8 @ =0x03000072
	adds r2, r2, r1
	ldr r1, _080524EC @ =0x0000FFC0
	strh r1, [r2]
	lsls r4, r4, #6
	strh r4, [r0, #0x32]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r0, #0x28]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080524D4: .4byte 0xFFFF0000
_080524D8: .4byte 0x00000299
_080524DC: .4byte 0xFF00FFFF
_080524E0: .4byte sub_8050A88
_080524E4: .4byte TaskDestructor_SomeTaskManager_60_Common
_080524E8: .4byte 0x03000072
_080524EC: .4byte 0x0000FFC0

	thumb_func_start sub_80524F0
sub_80524F0: @ 0x080524F0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r4, r3, #0
	ldr r1, _0805255C @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	ldr r1, _08052560 @ =0x000002A2
	orrs r0, r1
	ldr r1, _08052564 @ =0xFF00FFFF
	ands r0, r1
	str r0, [sp]
	ldr r0, _08052568 @ =0x06012E00
	str r0, [sp, #4]
	ldr r1, _0805256C @ =sub_8050FB4
	mov r0, sp
	movs r2, #0
	bl CreateSomeTaskManager_7C_Task
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	str r5, [r0, #8]
	str r6, [r0, #0x68]
	mov r1, r8
	str r1, [r0, #0x6c]
	ldr r1, _08052570 @ =0x03000076
	adds r3, r2, r1
	movs r1, #0
	strh r1, [r3]
	ldr r1, _08052574 @ =0x03000072
	adds r2, r2, r1
	movs r1, #0x80
	strh r1, [r2]
	lsls r4, r4, #6
	strh r4, [r0, #0x32]
	movs r1, #0x81
	lsls r1, r1, #6
	str r1, [r0, #0x28]
	movs r1, #0xc0
	lsls r1, r1, #1
	strh r1, [r0, #0xe]
	strh r1, [r0, #0x10]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0805255C: .4byte 0xFFFF0000
_08052560: .4byte 0x000002A2
_08052564: .4byte 0xFF00FFFF
_08052568: .4byte 0x06012E00
_0805256C: .4byte sub_8050FB4
_08052570: .4byte 0x03000076
_08052574: .4byte 0x03000072

	thumb_func_start sub_8052578
sub_8052578: @ 0x08052578
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r4, r3, #0
	ldr r1, _080525CC @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	ldr r1, _080525D0 @ =0x000002A2
	orrs r0, r1
	ldr r1, _080525D4 @ =0xFF00FFFF
	ands r0, r1
	str r0, [sp]
	ldr r0, _080525D8 @ =0x06012E00
	str r0, [sp, #4]
	ldr r1, _080525DC @ =sub_80518E8
	mov r0, sp
	movs r2, #0
	bl CreateSomeTaskManager_7C_Task
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r5, [r0, #8]
	str r6, [r0, #0x68]
	mov r1, r8
	str r1, [r0, #0x6c]
	lsls r4, r4, #6
	strh r4, [r0, #0x32]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r0, #0x28]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080525CC: .4byte 0xFFFF0000
_080525D0: .4byte 0x000002A2
_080525D4: .4byte 0xFF00FFFF
_080525D8: .4byte 0x06012E00
_080525DC: .4byte sub_80518E8

	thumb_func_start sub_80525E0
sub_80525E0: @ 0x080525E0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r4, r3, #0
	ldr r1, _08052644 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	ldr r1, _08052648 @ =0x000002A2
	orrs r0, r1
	ldr r1, _0805264C @ =0xFF00FFFF
	ands r0, r1
	str r0, [sp]
	ldr r0, _08052650 @ =0x06012E00
	str r0, [sp, #4]
	ldr r1, _08052654 @ =sub_8051344
	mov r0, sp
	movs r2, #0
	bl CreateSomeTaskManager_7C_Task
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	str r5, [r0, #8]
	ldr r1, _08052658 @ =0x03000072
	adds r2, r2, r1
	movs r1, #0x80
	strh r1, [r2]
	str r6, [r0, #0x68]
	mov r1, r8
	str r1, [r0, #0x6c]
	lsls r4, r4, #6
	strh r4, [r0, #0x32]
	movs r1, #0x81
	lsls r1, r1, #6
	str r1, [r0, #0x28]
	movs r1, #0xa0
	lsls r1, r1, #1
	strh r1, [r0, #0xe]
	strh r1, [r0, #0x10]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08052644: .4byte 0xFFFF0000
_08052648: .4byte 0x000002A2
_0805264C: .4byte 0xFF00FFFF
_08052650: .4byte 0x06012E00
_08052654: .4byte sub_8051344
_08052658: .4byte 0x03000072

	thumb_func_start sub_805265C
sub_805265C: @ 0x0805265C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r4, r3, #0
	ldr r1, _080526B0 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	ldr r1, _080526B4 @ =0x000002A1
	orrs r0, r1
	ldr r1, _080526B8 @ =0xFF00FFFF
	ands r0, r1
	str r0, [sp]
	ldr r0, _080526BC @ =0x06012600
	str r0, [sp, #4]
	ldr r1, _080526C0 @ =sub_8051604
	mov r0, sp
	movs r2, #0
	bl CreateSomeTaskManager_7C_Task
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r5, [r0, #8]
	str r6, [r0, #0x68]
	mov r1, r8
	str r1, [r0, #0x6c]
	lsls r4, r4, #6
	strh r4, [r0, #0x32]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r0, #0x28]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080526B0: .4byte 0xFFFF0000
_080526B4: .4byte 0x000002A1
_080526B8: .4byte 0xFF00FFFF
_080526BC: .4byte 0x06012600
_080526C0: .4byte sub_8051604

	thumb_func_start sub_80526C4
sub_80526C4: @ 0x080526C4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r0, r3, #0
	ldr r4, [sp, #0x14]
	ldr r1, _08052714 @ =sub_80519E8
	ldr r2, _08052718 @ =TaskDestructor_SomeTaskManager_60_Common
	bl CreateSomeTaskManager_7C_Task
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	str r5, [r0, #8]
	str r6, [r0, #0x68]
	mov r1, r8
	str r1, [r0, #0x6c]
	ldr r1, _0805271C @ =0x03000076
	adds r3, r2, r1
	movs r1, #0
	strh r1, [r3]
	ldr r1, _08052720 @ =0x03000072
	adds r2, r2, r1
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r2]
	lsls r4, r4, #6
	strh r4, [r0, #0x32]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r0, #0x28]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08052714: .4byte sub_80519E8
_08052718: .4byte TaskDestructor_SomeTaskManager_60_Common
_0805271C: .4byte 0x03000076
_08052720: .4byte 0x03000072

	thumb_func_start sub_8052724
sub_8052724: @ 0x08052724
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r0, r3, #0
	ldr r4, [sp, #0x14]
	ldr r1, _08052770 @ =sub_805202C
	ldr r2, _08052774 @ =TaskDestructor_SomeTaskManager_60_Common
	bl CreateSomeTaskManager_7C_Task
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r5, [r0, #8]
	str r6, [r0, #0x68]
	mov r2, r8
	str r2, [r0, #0x6c]
	ldr r3, _08052778 @ =0x03000076
	adds r2, r1, r3
	movs r3, #0
	strh r3, [r2]
	ldr r2, _0805277C @ =0x03000072
	adds r1, r1, r2
	strh r3, [r1]
	lsls r4, r4, #6
	strh r4, [r0, #0x32]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r0, #0x28]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08052770: .4byte sub_805202C
_08052774: .4byte TaskDestructor_SomeTaskManager_60_Common
_08052778: .4byte 0x03000076
_0805277C: .4byte 0x03000072

	thumb_func_start sub_8052780
sub_8052780: @ 0x08052780
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r0, r3, #0
	ldr r4, [sp, #0x14]
	ldr r1, _080527CC @ =sub_8051C44
	ldr r2, _080527D0 @ =TaskDestructor_SomeTaskManager_60_Common
	bl CreateSomeTaskManager_7C_Task
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	str r5, [r0, #8]
	str r6, [r0, #0x68]
	mov r1, r8
	str r1, [r0, #0x6c]
	ldr r1, _080527D4 @ =0x03000076
	adds r3, r2, r1
	movs r1, #0
	strh r1, [r3]
	ldr r1, _080527D8 @ =0x03000072
	adds r2, r2, r1
	movs r1, #0x80
	strh r1, [r2]
	lsls r4, r4, #6
	strh r4, [r0, #0x32]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r0, #0x28]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080527CC: .4byte sub_8051C44
_080527D0: .4byte TaskDestructor_SomeTaskManager_60_Common
_080527D4: .4byte 0x03000076
_080527D8: .4byte 0x03000072

	thumb_func_start sub_80527DC
sub_80527DC: @ 0x080527DC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r0, r3, #0
	ldr r4, [sp, #0x14]
	ldr r1, _08052828 @ =sub_8051E38
	ldr r2, _0805282C @ =TaskDestructor_SomeTaskManager_60_Common
	bl CreateSomeTaskManager_7C_Task
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	str r5, [r0, #8]
	str r6, [r0, #0x68]
	mov r1, r8
	str r1, [r0, #0x6c]
	ldr r1, _08052830 @ =0x03000076
	adds r3, r2, r1
	movs r1, #0
	strh r1, [r3]
	ldr r1, _08052834 @ =0x03000072
	adds r2, r2, r1
	movs r1, #0x80
	strh r1, [r2]
	lsls r4, r4, #6
	strh r4, [r0, #0x32]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r0, #0x28]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08052828: .4byte sub_8051E38
_0805282C: .4byte TaskDestructor_SomeTaskManager_60_Common
_08052830: .4byte 0x03000076
_08052834: .4byte 0x03000072

	thumb_func_start sub_8052838
sub_8052838: @ 0x08052838
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r4, r3, #0
	ldr r1, _08052894 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	ldr r1, _08052898 @ =0x0000029A
	orrs r0, r1
	ldr r1, _0805289C @ =0xFF00FFFF
	ands r0, r1
	str r0, [sp]
	ldr r0, _080528A0 @ =0x06004040
	str r0, [sp, #4]
	ldr r1, _080528A4 @ =sub_8050888
	mov r0, sp
	movs r2, #0
	bl CreateSomeTaskManager_7C_Task
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	str r5, [r0, #8]
	str r6, [r0, #0x60]
	mov r1, r8
	str r1, [r0, #0x64]
	ldr r1, _080528A8 @ =0x03000072
	adds r2, r2, r1
	movs r1, #0
	strh r1, [r2]
	lsls r4, r4, #6
	strh r4, [r0, #0x32]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r0, #0x28]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08052894: .4byte 0xFFFF0000
_08052898: .4byte 0x0000029A
_0805289C: .4byte 0xFF00FFFF
_080528A0: .4byte 0x06004040
_080528A4: .4byte sub_8050888
_080528A8: .4byte 0x03000072
