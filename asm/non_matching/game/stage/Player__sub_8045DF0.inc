.include "constants/constants.inc"

.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov ip, r0              @ ip = p
	ldrh r4, [r0, #0x38]
	adds r6, r4, #0
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	ands r0, r1
	cmp r0, #0
	bne _08045EEE
	ldr r0, _08045E3C @ =gUnknown_030060F0
	ldrh r4, [r0, #0x28]
	mov r1, ip
	ldrb r0, [r1, #0x14]
	adds r0, #0x20
	movs r1, #0xc0
	ands r0, r1
	cmp r0, #0
	bne _08045EEE
	mov r2, ip
	ldr r3, [r2]
	movs r0, #0x80
	lsls r0, r0, #5
	adds r1, r3, r0
	ldr r0, _08045E40 @ =gPlayer
	ldr r2, [r0]
	adds r7, r0, #0
	cmp r1, r2
	bge _08045E48
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	bne _08045E74
	movs r0, #0x10
	orrs r4, r0
	lsls r1, r4, #0x10
	ldr r0, _08045E44 @ =0xFFDF0000
	b _08045E60
	.align 2, 0
_08045E3C: .4byte gUnknown_030060F0
_08045E40: .4byte gPlayer
_08045E44: .4byte 0xFFDF0000
_08045E48:
	ldr r1, _08045E68 @ =0xFFFFF000
	adds r0, r3, r1
	cmp r0, r2
	ble _08045E70
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	bne _08045E74
	movs r0, #0x20
	orrs r4, r0
	lsls r1, r4, #0x10
	ldr r0, _08045E6C @ =0xFFEF0000
_08045E60:
	ands r0, r1
	lsrs r4, r0, #0x10
	b _08045E74
	.align 2, 0
_08045E68: .4byte 0xFFFFF000
_08045E6C: .4byte 0xFFEF0000
_08045E70:
	ldr r0, _08045ED0 @ =0x0000FFCF
	ands r4, r0
_08045E74:
	movs r0, #0x30
	ands r0, r4
	cmp r0, #0
	bne _08045EEE
	mov r2, ip
	movs r3, #0xc
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bne _08045EEE
	ldr r1, [r2, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08045EEE
	mov r0, ip
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08045EEE
	mov r3, ip
	adds r3, #0x40
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #4
	beq _08045EAE
	cmp r0, #0
	bne _08045EEE
_08045EAE:
	ldr r0, _08045ED4 @ =0x00808608
	ands r0, r1
	cmp r0, #0
	bne _08045EEE
	ldr r0, [r7, #0x10]
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _08045ED8
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _08045EEE
	orrs r1, r2
	mov r0, ip
	str r1, [r0, #0x10]
	b _08045EEA
	.align 2, 0
_08045ED0: .4byte 0x0000FFCF
_08045ED4: .4byte 0x00808608
_08045ED8:
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08045EEE
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	mov r2, ip
	str r1, [r2, #0x10]
_08045EEA:
	movs r0, #8
	strb r0, [r3]
_08045EEE:
	adds r5, r4, #0
	bics r5, r6
	mov r3, ip
	ldr r1, [r3, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r0, r1
	cmp r0, #0
	bne _08045FDA
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08045F0E
	cmp r0, #2
	beq _08045F50
	b _08045FDA
_08045F0E:
	ldr r0, _08045F2C @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08045F38
	mov r6, ip
	ldr r0, [r6, #4]
	ldr r1, _08045F30 @ =0xFFFFB000
	adds r0, r0, r1
	ldr r1, _08045F34 @ =gPlayer
	ldr r1, [r1, #4]
	cmp r0, r1
	bgt _08045FC6
	b _08045FDA
	.align 2, 0
_08045F2C: .4byte gStageFlags
_08045F30: .4byte 0xFFFFB000
_08045F34: .4byte gPlayer
_08045F38:
	mov r2, ip
	ldr r0, [r2, #4]
	movs r3, #0xa0
	lsls r3, r3, #7
	adds r0, r0, r3
	ldr r1, _08045F4C @ =gPlayer
	ldr r1, [r1, #4]
	cmp r0, r1
	bge _08045FDA
	b _08045FC6
	.align 2, 0
_08045F4C: .4byte gPlayer
_08045F50:
	ldr r2, _08045F70 @ =gStageFlags
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08045F7C
	ldr r1, _08045F74 @ =gPlayer
	ldr r0, [r1, #4]
	ldr r6, _08045F78 @ =0xFFFFF000
	adds r0, r0, r6
	adds r7, r1, #0
	mov r1, ip
	ldr r3, [r1, #4]
	cmp r3, r0
	bgt _08045F90
	b _08045FDA
	.align 2, 0
_08045F70: .4byte gStageFlags
_08045F74: .4byte gPlayer
_08045F78: .4byte 0xFFFFF000
_08045F7C:
	ldr r1, _08045FBC @ =gPlayer
	ldr r0, [r1, #4]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r0, r3
	adds r7, r1, #0
	mov r6, ip
	ldr r3, [r6, #4]
	cmp r3, r0
	bge _08045FDA
_08045F90:
	mov r0, ip
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08045FA8
	mov r1, ip
	movs r6, #0xa
	ldrsh r0, [r1, r6]
	cmp r0, #0
	ble _08045FD4
_08045FA8:
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08045FC0
	ldr r0, [r7, #4]
	cmp r3, r0
	bgt _08045FC6
	b _08045FDA
	.align 2, 0
_08045FBC: .4byte gPlayer
_08045FC0:
	ldr r0, [r7, #4]
	cmp r3, r0
	bge _08045FDA
_08045FC6:
	ldr r0, _08045FD0 @ =gPlayerControls
	ldrh r0, [r0]
	orrs r5, r0
	b _08045FDA
	.align 2, 0
_08045FD0: .4byte gPlayerControls
_08045FD4:
	ldr r0, _08046000 @ =gPlayerControls
	ldrh r0, [r0]
	orrs r4, r0
_08045FDA:
	movs r1, #0x30
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08045FE8
	ldr r0, _08046004 @ =0x0000FF3F
	ands r4, r0
_08045FE8:
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08045FF4
	ldr r0, _08046004 @ =0x0000FF3F
	ands r5, r0
_08045FF4:
	mov r0, ip
	strh r4, [r0, #0x38]
	strh r5, [r0, #0x3a]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08046000: .4byte gPlayerControls
_08046004: .4byte 0x0000FF3F

.syntax divided
