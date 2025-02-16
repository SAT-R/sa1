.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
	thumb_func_start Task_Item_Invincibility
Task_Item_Invincibility: @ 0x0804BB98
.endif

	thumb_func_start Task_Item_Confusion
Task_Item_Confusion: @ 0x0804BD70
	push {r4, r5, r6, r7, lr}
	ldr r0, _0804BDBC @ =gCurTask
	ldr r4, [r0]
	ldrh r1, [r4, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	ldr r2, _0804BDC0 @ =0x03000030
	adds r0, r1, r2
	ldrb r2, [r0]
	orrs r5, r1
	ldr r0, _0804BDC4 @ =gCamera
	mov ip, r0
	ldr r0, _0804BDC8 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0804BE5C
	ldr r1, _0804BDCC @ =gMultiplayerPlayerTasks
	lsls r2, r2, #0x18
	asrs r0, r2, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r3, r1
	adds r1, #0x57
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #0x50
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	bne _0804BDD0
	adds r0, r4, #0
	bl TaskDestroy
	b _0804BE62
	.align 2, 0
_0804BDBC: .4byte gCurTask
_0804BDC0: .4byte 0x03000030
_0804BDC4: .4byte gCamera
_0804BDC8: .4byte gGameMode
_0804BDCC: .4byte gMultiplayerPlayerTasks
_0804BDD0:
	ldr r2, _0804BE14 @ =0x03000050
	adds r0, r3, r2
	ldrh r0, [r0]
	mov r2, ip
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r5, #0x16]
	ldr r1, _0804BE18 @ =0x03000052
	adds r0, r3, r1
	ldrh r0, [r0]
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r5, #0x18]
	ldr r1, [r5, #0x10]
	ldr r0, _0804BE1C @ =0xFFFFCFFF
	ands r1, r0
	str r1, [r5, #0x10]
	ldr r2, [r6, #0x10]
	movs r0, #0xc0
	lsls r0, r0, #6
	ands r2, r0
	orrs r2, r1
	str r2, [r5, #0x10]
	ldr r0, _0804BE20 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804BE24
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r2, r0
	b _0804BE28
	.align 2, 0
_0804BE14: .4byte 0x03000050
_0804BE18: .4byte 0x03000052
_0804BE1C: .4byte 0xFFFFCFFF
_0804BE20: .4byte gStageFlags
_0804BE24:
	ldr r0, _0804BE48 @ =0xFFFFF7FF
	ands r2, r0
_0804BE28:
	str r2, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	asrs r2, r7, #0x18
	movs r3, #1
	ands r2, r3
	ldr r0, _0804BE4C @ =gStageTime
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0804BE50
	cmp r2, r3
	bne _0804BE54
	b _0804BE62
	.align 2, 0
_0804BE48: .4byte 0xFFFFF7FF
_0804BE4C: .4byte gStageTime
_0804BE50:
	cmp r2, #0
	beq _0804BE62
_0804BE54:
	adds r0, r5, #0
	bl DisplaySprite
	b _0804BE62
_0804BE5C:
	adds r0, r4, #0
	bl TaskDestroy
_0804BE62:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_ItemTasks
TaskDestructor_ItemTasks: @ 0x0804BE68
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0
