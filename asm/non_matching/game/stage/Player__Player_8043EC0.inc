.include "constants/constants.inc"

.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0     @ r4 = p
	ldr r5, _08043FD0 @ =gCamera
	ldr r7, [r4]        @ r7 = qWorldX
	ldr r6, [r4, #4]    @ r6 = qWorldY
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov sb, r5          @ sb = r5 = cam
	cmp r0, #0
	bne _08043F9C
	ldr r1, _08043FD4 @ =gUnknown_084ADF78
	ldr r2, _08043FD8 @ =gCurrentLevel
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	mov sl, r0          @ sl = gCurrentLevel * 4
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov ip, r1
	mov r8, r2
	cmp r0, #0
	blt _08043F3E
	lsls r0, r0, #8
	cmp r7, r0
	blt _08043F3E
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _08043F3E
	ldrh r1, [r5, #0x26]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08043F3E
	ldr r0, _08043FDC @ =gUnknown_084ADFC0
	add r0, sl
	movs r2, #0
	ldrsh r3, [r0, r2]
	lsls r2, r3, #8
	adds r7, r7, r2
	ldr r0, _08043FE0 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08043F32
	ldr r1, _08043FE4 @ =gPartner
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
_08043F32:
	ldrh r0, [r5]
	adds r0, r0, r3
	strh r0, [r5]
	ldrh r0, [r5, #0x10]
	adds r0, r0, r3
	strh r0, [r5, #0x10]
_08043F3E:
	mov r3, r8
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r2, r0, #2
	mov r0, ip
	adds r0, #2
	adds r0, r2, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	blt _08043F9C
	lsls r0, r0, #8
	cmp r6, r0
	blt _08043F9C
	movs r3, #6
	ldrsh r0, [r5, r3]
	cmp r0, #0
	beq _08043F9C
	ldrh r1, [r5, #0x26]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08043F9C
	ldr r0, _08043FDC @ =gUnknown_084ADFC0
	adds r0, #2
	adds r0, r2, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r3, r0, #8
	lsls r2, r0, #0x10
	adds r6, r6, r2
	ldr r0, _08043FE0 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08043F90
	ldr r1, _08043FE4 @ =gPartner
	ldr r0, [r1, #4]
	adds r0, r0, r2
	str r0, [r1, #4]
_08043F90:
	ldrh r0, [r5, #2]
	adds r0, r0, r3
	strh r0, [r5, #2]
	ldrh r0, [r5, #0x12]
	adds r0, r0, r3
	strh r0, [r5, #0x12]
_08043F9C:
	ldr r1, [r4, #0x10]
	ldr r0, _08043FE8 @ =0x80000080
	ands r0, r1
	mov ip, r1
	cmp r0, #0x80
	beq _08044096_return
	mov r8, sb          @ r8 = sb = cam
	ldr r3, [r4, #4]    @ r3 = p->qWorldY
	cmp r1, #0
	blt _08044042
	ldr r2, _08043FEC @ =gStageFlags
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	mov sl, r2          @ sl = r2 = gStageFlags
	cmp r0, #0
	bne _08043FF0
	mov r2, r8
	movs r1, #0x16
	ldrsh r0, [r2, r1]
	lsls r0, r0, #8
	subs r0, #1
	cmp r3, r0
	blt _08043FFE
	b _08044004
	.align 2, 0
_08043FD0: .4byte gCamera
_08043FD4: .4byte gUnknown_084ADF78
_08043FD8: .4byte gCurrentLevel
_08043FDC: .4byte gUnknown_084ADFC0
_08043FE0: .4byte gNumSingleplayerCharacters
_08043FE4: .4byte gPartner
_08043FE8: .4byte 0x80000080
_08043FEC: .4byte gStageFlags
_08043FF0:
	mov r2, sb
	movs r1, #0x14
	ldrsh r0, [r2, r1]
	lsls r0, r0, #8
	movs r1, #1
	cmp r3, r0
	ble _08044000
_08043FFE:
	movs r1, #0
_08044000:
	cmp r1, #0
	beq _08044042
_08044004:
	movs r0, #0x80
	mov r2, ip          @ r2 = ip = &p->moveState
	orrs r0, r2
	str r0, [r4, #0x10]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0804401C
	ldr r0, _08044018 @ =0x0000FD60
	b _0804401E
	.align 2, 0
_08044018: .4byte 0x0000FD60
_0804401C:
	ldr r0, _08044038 @ =0x0000FB20
_0804401E:
	strh r0, [r4, #0xa]
	mov r3, sl      @ r3 = sl = gStageFlags
	ldrh r1, [r3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0804403C
	movs r1, #0x16
	ldrsh r0, [r5, r1]
	lsls r0, r0, #8
	subs r6, r0, #1
	b _08044042
	.align 2, 0
_08044038: .4byte 0x0000FB20
_0804403C:
	movs r2, #0x14
	ldrsh r0, [r5, r2]
	lsls r6, r0, #8
_08044042:
	adds r2, r7, #0     @ r2 = r7 = qWorldX
	adds r3, r6, #0     @ r3 = r6 = qWorldY
	movs r1, #0x18
	ldrsh r0, [r5, r1]  @ r0 = cam->minX
	lsls r0, r0, #8
	cmp r7, r0
	blt _08044060
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	lsls r0, r0, #8
	subs r1, r0, #1
	adds r0, r7, #0
	cmp r0, r1
	ble _08044060
	adds r0, r1, #0
_08044060:
	adds r7, r0, #0
	movs r1, #0x14
	ldrsh r0, [r5, r1]
	lsls r0, r0, #8
	cmp r6, r0
	blt _0804407C
	movs r1, #0x16
	ldrsh r0, [r5, r1]
	lsls r0, r0, #8
	subs r1, r0, #1
	adds r0, r6, #0
	cmp r0, r1
	ble _0804407C
	adds r0, r1, #0
_0804407C:
	adds r6, r0, #0
	cmp r7, r2
	beq _08044088
	movs r0, #0
	strh r0, [r4, #8]
	strh r0, [r4, #0xc]
_08044088:
	cmp r6, r3
	beq _08044092
	movs r0, #0
	strh r0, [r4, #0xa]
	strh r0, [r4, #0xc]
_08044092:
	str r7, [r4]
	str r6, [r4, #4]
_08044096_return:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

.syntax divided
