.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start TaskDestructor_EggWrecker
TaskDestructor_EggWrecker: @ 0x080357FC
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

	thumb_func_start TaskDestructor_8035818
TaskDestructor_8035818: @ 0x08035818
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

    @ inline
	thumb_func_start sub_803582C
sub_803582C: @ 0x0803582C
	push {r4, r5, r6, r7, lr}
	ldr r2, _0803586C @ =gCurTask
	ldr r2, [r2]
	ldrh r3, [r2, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r6, r3, r2
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	ldr r3, _08035870 @ =gPlayer
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	adds r7, r0, #0
	ldr r0, _08035874 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0803587C
	ldr r3, _08035878 @ =gPartner
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	b _0803587E
	.align 2, 0
_0803586C: .4byte gCurTask
_08035870: .4byte gPlayer
_08035874: .4byte gNumSingleplayerCharacters
_08035878: .4byte gPartner
_0803587C:
	movs r0, #0
_0803587E:
	cmp r7, #2
	beq _08035886
	cmp r0, #2
	bne _080358B0
_08035886:
	ldr r0, _080358B8 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldrh r1, [r0, #6]
	ldr r0, _080358BC @ =0x0300003C
	adds r3, r1, r0
	adds r0, #0x20
	adds r2, r1, r0
	movs r0, #1
	strb r0, [r2]
	ldr r0, _080358C0 @ =0x0300005D
	adds r1, r1, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _080358C4 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
_080358B0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080358B8: .4byte gCurTask
_080358BC: .4byte 0x0300003C
_080358C0: .4byte 0x0300005D
_080358C4: .4byte 0xFFFFBFFF

	thumb_func_start sub_80358C8
sub_80358C8: @ 0x080358C8
	ldr r0, _080358F8 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	ldr r0, _080358FC @ =0x0300003C
	adds r1, r2, r0
	adds r0, #0x20
	adds r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq _080358F4
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080358F4
	movs r0, #0
	strb r0, [r3]
	ldr r0, _08035900 @ =0x0300005D
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
_080358F4:
	bx lr
	.align 2, 0
_080358F8: .4byte gCurTask
_080358FC: .4byte 0x0300003C
_08035900: .4byte 0x0300005D

	thumb_func_start sub_8035904
sub_8035904: @ 0x08035904
	ldr r0, _08035928 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r2, _0803592C @ =0x0300000C
	adds r1, r0, r2
	ldr r3, _08035930 @ =0x0300003C
	adds r2, r0, r3
	ldrh r0, [r1, #0x16]
	strh r0, [r2, #0x16]
	ldrh r3, [r1, #0x18]
	strh r3, [r2, #0x18]
	ldrh r1, [r2, #0xa]
	ldr r0, _08035934 @ =0x000002B6
	cmp r1, r0
	bne _08035926
	subs r0, r3, #3
	strh r0, [r2, #0x18]
_08035926:
	bx lr
	.align 2, 0
_08035928: .4byte gCurTask
_0803592C: .4byte 0x0300000C
_08035930: .4byte 0x0300003C
_08035934: .4byte 0x000002B6

	thumb_func_start sub_8035938
sub_8035938: @ 0x08035938
	push {r4, lr}
	ldr r2, _08035960 @ =gCurTask
	ldr r2, [r2]
	ldrh r2, [r2, #6]
	ldr r3, _08035964 @ =0x0300000C
	adds r2, r2, r3
	ldr r4, _08035968 @ =gCamera
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
_08035960: .4byte gCurTask
_08035964: .4byte 0x0300000C
_08035968: .4byte gCamera
