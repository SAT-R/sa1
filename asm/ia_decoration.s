.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

    @ Apparently only stone in SA1(?)
	thumb_func_start CreateEntity_Decoration
CreateEntity_Decoration: @ 0x08023180
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	adds r4, r1, #0
	adds r6, r2, #0
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _08023250 @ =Task_DecorationMain
	ldr r1, _08023254 @ =TaskDestructor_8009670
	str r1, [sp]
	movs r1, #0x3c
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r1, _08023258 @ =0x0300000C
	adds r5, r2, r1
	movs r7, #0
	movs r3, #0
	mov sl, r3
	strh r4, [r0, #4]
	strh r6, [r0, #6]
	mov r1, sb
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #8]
	mov r3, r8
	strb r3, [r0, #9]
	mov r1, sb
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r5, #0x16]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	lsls r6, r6, #8
	adds r0, r0, r6
	strh r0, [r5, #0x18]
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	strb r0, [r1]
	movs r0, #0x18
	str r2, [sp, #4]
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	mov r0, sl
	strh r0, [r5, #8]
	movs r0, #0xe5
	lsls r0, r0, #1
	strh r0, [r5, #0xa]
	ldr r2, [sp, #4]
	ldr r1, _0802325C @ =0x0300002C
	adds r0, r2, r1
	strb r7, [r0]
	mov r3, sl
	strh r3, [r5, #0x14]
	strh r3, [r5, #0x1c]
	ldr r0, _08023260 @ =0x0300002D
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r3, _08023264 @ =0x0300002E
	adds r1, r2, r3
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _08023268 @ =0x03000031
	adds r2, r2, r0
	strb r7, [r2]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023250: .4byte Task_DecorationMain
_08023254: .4byte TaskDestructor_8009670
_08023258: .4byte 0x0300000C
_0802325C: .4byte 0x0300002C
_08023260: .4byte 0x0300002D
_08023264: .4byte 0x0300002E
_08023268: .4byte 0x03000031

	thumb_func_start Task_DecorationMain
Task_DecorationMain: @ 0x0802326C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08023328 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov sl, r0
	ldr r0, _0802332C @ =0x0300000C
	adds r6, r1, r0
	mov r1, sl
	ldr r1, [r1]
	str r1, [sp]
	mov r3, sl
	ldrb r2, [r3, #8]
	lsls r2, r2, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _08023330 @ =gCamera
	ldrh r0, [r3]
	lsrs r7, r2, #0x10
	asrs r5, r2, #0x10
	subs r0, r5, r0
	strh r0, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsrs r2, r1, #0x10
	asrs r4, r1, #0x10
	subs r0, r4, r0
	strh r0, [r6, #0x18]
	ldr r0, _08023334 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _08023344
	ldr r0, [sp]
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #3
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08023344
	adds r0, r5, #0
	adds r1, r4, #0
	bl CreateDustCloud
	movs r0, #0x8a
	bl m4aSongNumStart
	ldr r1, _08023338 @ =sa2__gUnknown_0300194C
	ldrh r0, [r6, #0x16]
	strh r0, [r1]
	ldr r2, _0802333C @ =sa2__gUnknown_03002820
	ldrh r1, [r6, #0x18]
	strh r1, [r2]
	subs r0, r5, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, r4, r1
	subs r1, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_80234D0
	ldr r2, _08023340 @ =gPlayer
	ldr r1, [r2, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08023310
	b _0802349C
_08023310:
	ldr r0, [r2, #0x28]
	cmp r0, r6
	beq _08023318
	b _0802349C
_08023318:
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r2, #0x10]
	b _0802349C
	.align 2, 0
_08023328: .4byte gCurTask
_0802332C: .4byte 0x0300000C
_08023330: .4byte gCamera
_08023334: .4byte gGameMode
_08023338: .4byte sa2__gUnknown_0300194C
_0802333C: .4byte sa2__gUnknown_03002820
_08023340: .4byte gPlayer
_08023344:
	lsls r5, r7, #0x10
	asrs r1, r5, #0x10
	mov r8, r1
	lsls r4, r2, #0x10
	asrs r7, r4, #0x10
	ldr r3, _08023430 @ =gPlayer
	mov sb, r3
	adds r0, r6, #0
	adds r2, r7, #0
	bl sub_800C394
	cmp r0, #0
	bne _08023398
	mov r0, sb
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	bne _0802337C
	adds r0, r6, #0
	mov r1, r8
	adds r2, r7, #0
	mov r3, sb
	bl sub_800A768
	cmp r0, #0
	bne _08023398
_0802337C:
	ldr r0, _08023434 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08023448
	ldr r3, _08023438 @ =gUnknown_03005AB0
	adds r0, r6, #0
	mov r1, r8
	adds r2, r7, #0
	bl sub_800C394
	cmp r0, #0
	beq _08023448
_08023398:
	asrs r0, r5, #0x10
	asrs r1, r4, #0x10
	bl CreateDustCloud
	ldr r2, _08023430 @ =gPlayer
	ldr r1, [r2, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080233BE
	ldr r0, [r2, #0x28]
	cmp r0, r6
	bne _080233BE
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r2, #0x10]
_080233BE:
	ldr r0, _08023434 @ =gUnknown_03005088
	movs r3, #0
	ldrsb r3, [r0, r3]
	cmp r3, #2
	bne _080233E4
	ldr r2, _08023438 @ =gUnknown_03005AB0
	ldr r1, [r2, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080233E4
	ldr r0, [r2, #0x28]
	cmp r0, r6
	bne _080233E4
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	orrs r1, r3
	str r1, [r2, #0x10]
_080233E4:
	movs r0, #0x8a
	bl m4aSongNumStart
	ldr r0, _0802343C @ =sa2__gUnknown_0300194C
	ldrh r1, [r6, #0x16]
	strh r1, [r0]
	ldr r0, _08023440 @ =sa2__gUnknown_03002820
	ldrh r2, [r6, #0x18]
	strh r2, [r0]
	asrs r0, r5, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	asrs r1, r4, #0x10
	subs r1, r1, r2
	subs r1, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_80234D0
	ldr r0, _08023444 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0802349C
	bl sub_80182FC
	movs r2, #0
	movs r1, #1
	strb r1, [r0]
	mov r3, sl
	ldrh r1, [r3, #4]
	strb r1, [r0, #1]
	ldrh r1, [r3, #6]
	strb r1, [r0, #2]
	ldrb r1, [r3, #9]
	strb r1, [r0, #3]
	strb r2, [r0, #4]
	b _0802349C
	.align 2, 0
_08023430: .4byte gPlayer
_08023434: .4byte gUnknown_03005088
_08023438: .4byte gUnknown_03005AB0
_0802343C: .4byte sa2__gUnknown_0300194C
_08023440: .4byte sa2__gUnknown_03002820
_08023444: .4byte gGameMode
_08023448:
	asrs r5, r5, #0x10
	asrs r4, r4, #0x10
	ldr r3, _080234A8 @ =gPlayer
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80096B0
	ldr r0, _080234AC @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08023470
	ldr r3, _080234B0 @ =gUnknown_03005AB0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80096B0
_08023470:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08023494
	movs r1, #0x18
	ldrsh r0, [r6, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08023494
	movs r3, #0x18
	ldrsh r1, [r6, r3]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _080234B8
_08023494:
	mov r1, sl
	ldrb r0, [r1, #8]
	ldr r3, [sp]
	strb r0, [r3]
_0802349C:
	ldr r0, _080234B4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080234BE
	.align 2, 0
_080234A8: .4byte gPlayer
_080234AC: .4byte gUnknown_03005088
_080234B0: .4byte gUnknown_03005AB0
_080234B4: .4byte gCurTask
_080234B8:
	adds r0, r6, #0
	bl DisplaySprite
_080234BE:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80234D0
sub_80234D0: @ 0x080234D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	mov sb, r1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r0, sb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r0, _08023648 @ =sub_8023698
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _0802364C @ =sub_80238E0
	str r1, [sp]
	movs r1, #0xf4
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r6, r5
	ldr r1, _08023650 @ =0x030000C0
	adds r2, r6, r1
	adds r1, #0x30
	adds r0, r6, r1
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	ldr r0, _08023654 @ =0x030000F2
	adds r1, r6, r0
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r1]
	movs r0, #1
	str r2, [sp, #4]
	bl VramMalloc
	str r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r5, #0x1a]
	mov r0, r8
	strh r0, [r5, #8]
	ldr r0, _08023658 @ =0x000001CB
	strh r0, [r5, #0xa]
	ldr r1, _0802365C @ =0x03000020
	adds r0, r6, r1
	movs r1, #0
	strb r1, [r0]
	mov r0, r8
	strh r0, [r5, #0x14]
	strh r0, [r5, #0x1c]
	ldr r0, _08023660 @ =0x03000021
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08023664 @ =0x03000022
	adds r0, r6, r1
	movs r1, #0x10
	strb r1, [r0]
	ldr r1, _08023668 @ =0x03000025
	adds r0, r6, r1
	movs r1, #0
	strb r1, [r0]
	movs r0, #0x70
	str r0, [r5, #0x10]
	ldr r2, [sp, #4]
	mov r0, r8
	strh r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	strh r4, [r2, #6]
	mov r1, sb
	strh r1, [r2, #8]
	adds r0, r5, #0
	str r2, [sp, #4]
	bl UpdateSpriteAnimation
	ldr r4, _0802366C @ =0x040000D4
	str r5, [r4]
	ldr r0, _08023670 @ =0x03000030
	adds r7, r6, r0
	str r7, [r4, #4]
	ldr r1, _08023674 @ =0x80000018
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	ldr r2, [sp, #4]
	str r2, [r4]
	ldr r0, _08023678 @ =0x030000CC
	adds r2, r6, r0
	str r2, [r4, #4]
	subs r1, #0x12
	mov sl, r1
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	movs r0, #0x71
	str r0, [r7, #0x10]
	mov r0, sb
	lsls r5, r0, #0x10
	asrs r5, r5, #0x10
	subs r5, #0x10
	strh r5, [r2, #8]
	ldr r1, _0802367C @ =0x03000060
	adds r7, r6, r1
	str r2, [r4]
	ldr r0, _08023680 @ =0x030000D8
	adds r2, r6, r0
	str r2, [r4, #4]
	mov r1, sl
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	movs r0, #4
	str r2, [sp, #4]
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r7, #0x1a]
	mov r1, r8
	strh r1, [r7, #8]
	subs r0, #0x34
	strh r0, [r7, #0xa]
	ldr r1, _08023684 @ =0x03000080
	adds r0, r6, r1
	movs r1, #0
	strb r1, [r0]
	mov r0, r8
	strh r0, [r7, #0x14]
	strh r0, [r7, #0x1c]
	ldr r0, _08023688 @ =0x03000081
	adds r1, r6, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _0802368C @ =0x03000082
	adds r0, r6, r1
	movs r1, #0x10
	strb r1, [r0]
	ldr r1, _08023690 @ =0x03000085
	adds r0, r6, r1
	movs r1, #0
	strb r1, [r0]
	movs r0, #0x72
	str r0, [r7, #0x10]
	ldr r2, [sp, #4]
	mov r0, sb
	strh r0, [r2, #8]
	adds r0, r7, #0
	str r2, [sp, #4]
	bl UpdateSpriteAnimation
	str r7, [r4]
	ldr r1, _08023694 @ =0x03000090
	adds r7, r6, r1
	str r7, [r4, #4]
	ldr r0, _08023674 @ =0x80000018
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r2, [sp, #4]
	str r2, [r4]
	adds r1, #0x54
	adds r2, r6, r1
	str r2, [r4, #4]
	mov r0, sl
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r0, #0x73
	str r0, [r7, #0x10]
	strh r5, [r2, #8]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023648: .4byte sub_8023698
_0802364C: .4byte sub_80238E0
_08023650: .4byte 0x030000C0
_08023654: .4byte 0x030000F2
_08023658: .4byte 0x000001CB
_0802365C: .4byte 0x03000020
_08023660: .4byte 0x03000021
_08023664: .4byte 0x03000022
_08023668: .4byte 0x03000025
_0802366C: .4byte 0x040000D4
_08023670: .4byte 0x03000030
_08023674: .4byte 0x80000018
_08023678: .4byte 0x030000CC
_0802367C: .4byte 0x03000060
_08023680: .4byte 0x030000D8
_08023684: .4byte 0x03000080
_08023688: .4byte 0x03000081
_0802368C: .4byte 0x03000082
_08023690: .4byte 0x03000085
_08023694: .4byte 0x03000090

	thumb_func_start sub_8023698
sub_8023698: @ 0x08023698
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _080236D0 @ =gCurTask
	ldr r2, [r0]
	ldrh r0, [r2, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r1, r8
	adds r7, r1, r0
	ldr r3, _080236D4 @ =0x030000F0
	add r3, r8
	str r3, [sp]
	ldrh r0, [r3]
	adds r1, r0, #1
	strh r1, [r3]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bls _080236D8
	adds r0, r2, #0
	bl TaskDestroy
	b _080238A8
	.align 2, 0
_080236D0: .4byte gCurTask
_080236D4: .4byte 0x030000F0
_080236D8:
	ldr r0, _080238B8 @ =0x030000F2
	add r0, r8
	str r0, [sp, #4]
	ldrh r0, [r0]
	adds r0, #0x28
	ldr r1, [sp, #4]
	strh r0, [r1]
	ldr r6, _080238BC @ =0x030000C0
	add r6, r8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r2, [r6, #8]
	adds r0, r0, r2
	strh r0, [r6, #8]
	ldrh r5, [r6, #6]
	ldrh r3, [r6, #8]
	mov sb, r3
	ldr r1, _080238C0 @ =gCamera
	ldrh r2, [r1]
	subs r2, r5, r2
	strh r2, [r6, #6]
	ldrh r1, [r1, #2]
	subs r0, r0, r1
	strh r0, [r6, #8]
	ldr r3, [sp]
	ldrh r0, [r3]
	lsls r0, r0, #1
	subs r2, r2, r0
	strh r2, [r6, #6]
	ldrh r0, [r6, #2]
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #2
	cmp r0, r1
	ble _08023726
	adds r4, r1, #0
_08023726:
	strh r4, [r6, #2]
	strh r4, [r6, #4]
	ldrh r0, [r6]
	subs r0, #0x2a
	strh r0, [r6]
	ldr r0, [r7, #0x10]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	ldr r2, _080238C4 @ =gUnknown_0300504C
	mov sl, r2
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r7, #0x10]
	orrs r0, r1
	str r0, [r7, #0x10]
	adds r0, r7, #0
	adds r1, r6, #0
	bl sa2__sub_8004E14
	adds r0, r7, #0
	bl DisplaySprite
	strh r5, [r6, #6]
	mov r3, sb
	strh r3, [r6, #8]
	ldr r7, _080238C8 @ =0x03000030
	add r7, r8
	ldr r6, _080238CC @ =0x030000CC
	add r6, r8
	ldr r1, [sp, #4]
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r2, [r6, #8]
	adds r0, r0, r2
	strh r0, [r6, #8]
	ldrh r5, [r6, #6]
	ldrh r3, [r6, #8]
	mov sb, r3
	ldr r1, _080238C0 @ =gCamera
	ldrh r2, [r1]
	subs r2, r5, r2
	strh r2, [r6, #6]
	ldrh r1, [r1, #2]
	subs r0, r0, r1
	strh r0, [r6, #8]
	ldr r3, [sp]
	ldrh r0, [r3]
	adds r2, r2, r0
	strh r2, [r6, #6]
	strh r4, [r6, #2]
	strh r4, [r6, #4]
	ldrh r0, [r6]
	adds r0, #0x2a
	strh r0, [r6]
	ldr r0, [r7, #0x10]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	mov r2, sl
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r7, #0x10]
	orrs r0, r1
	str r0, [r7, #0x10]
	adds r0, r7, #0
	adds r1, r6, #0
	bl sa2__sub_8004E14
	adds r0, r7, #0
	bl DisplaySprite
	strh r5, [r6, #6]
	mov r3, sb
	strh r3, [r6, #8]
	ldr r7, _080238D0 @ =0x03000060
	add r7, r8
	ldr r6, _080238D4 @ =0x030000D8
	add r6, r8
	ldr r1, [sp, #4]
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r2, [r6, #8]
	adds r0, r0, r2
	strh r0, [r6, #8]
	ldrh r5, [r6, #6]
	ldrh r3, [r6, #8]
	mov sb, r3
	ldr r1, _080238C0 @ =gCamera
	ldrh r2, [r1]
	subs r2, r5, r2
	strh r2, [r6, #6]
	ldrh r1, [r1, #2]
	subs r0, r0, r1
	strh r0, [r6, #8]
	ldr r3, [sp]
	ldrh r0, [r3]
	lsls r0, r0, #1
	adds r2, r2, r0
	strh r2, [r6, #6]
	strh r4, [r6, #2]
	strh r4, [r6, #4]
	ldrh r0, [r6]
	adds r0, #0xe
	strh r0, [r6]
	ldr r0, [r7, #0x10]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	mov r2, sl
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r7, #0x10]
	orrs r0, r1
	str r0, [r7, #0x10]
	adds r0, r7, #0
	adds r1, r6, #0
	bl sa2__sub_8004E14
	adds r0, r7, #0
	bl DisplaySprite
	strh r5, [r6, #6]
	mov r3, sb
	strh r3, [r6, #8]
	ldr r7, _080238D8 @ =0x03000090
	add r7, r8
	ldr r6, _080238DC @ =0x030000E4
	add r6, r8
	ldr r1, [sp, #4]
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r2, [r6, #8]
	adds r0, r0, r2
	strh r0, [r6, #8]
	ldrh r5, [r6, #6]
	ldrh r3, [r6, #8]
	mov sb, r3
	ldr r1, _080238C0 @ =gCamera
	ldrh r2, [r1]
	subs r2, r5, r2
	strh r2, [r6, #6]
	ldrh r1, [r1, #2]
	subs r0, r0, r1
	strh r0, [r6, #8]
	ldr r3, [sp]
	ldrh r0, [r3]
	subs r2, r2, r0
	strh r2, [r6, #6]
	strh r4, [r6, #2]
	strh r4, [r6, #4]
	ldrh r0, [r6]
	subs r0, #0xe
	strh r0, [r6]
	ldr r0, [r7, #0x10]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	mov r2, sl
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r7, #0x10]
	orrs r0, r1
	str r0, [r7, #0x10]
	adds r0, r7, #0
	adds r1, r6, #0
	bl sa2__sub_8004E14
	adds r0, r7, #0
	bl DisplaySprite
	strh r5, [r6, #6]
	mov r3, sb
	strh r3, [r6, #8]
_080238A8:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080238B8: .4byte 0x030000F2
_080238BC: .4byte 0x030000C0
_080238C0: .4byte gCamera
_080238C4: .4byte gUnknown_0300504C
_080238C8: .4byte 0x03000030
_080238CC: .4byte 0x030000CC
_080238D0: .4byte 0x03000060
_080238D4: .4byte 0x030000D8
_080238D8: .4byte 0x03000090
_080238DC: .4byte 0x030000E4

	thumb_func_start sub_80238E0
sub_80238E0: @ 0x080238E0
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #4]
	bl VramFree
	ldr r0, [r4, #0x64]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0
