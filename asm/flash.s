.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
	thumb_func_start ReadFlashId
ReadFlashId: @ 0x08098F4C
	push {r4, r5, lr}
	sub sp, #0x44
	mov r0, sp
	bl SetReadFlash1
	mov r5, sp
	adds r5, #1
	ldr r2, _08098F74 @ =0x0E005555
	movs r0, #0xaa
	strb r0, [r2]
	ldr r1, _08098F78 @ =0x0E002AAA
	movs r0, #0x55
	strb r0, [r1]
	movs r0, #0x90
	strb r0, [r2]
	add r1, sp, #0x40
	ldr r2, _08098F7C @ =0x00004E20
	adds r0, r2, #0
	b _08098F84
	.align 2, 0
_08098F74: .4byte 0x0E005555
_08098F78: .4byte 0x0E002AAA
_08098F7C: .4byte 0x00004E20
_08098F80:
	ldrh r0, [r1]
	subs r0, #1
_08098F84:
	strh r0, [r1]
	ldrh r0, [r1]
	cmp r0, #0
	bne _08098F80
	ldr r0, _08098FBC @ =0x0E000001
	bl _call_via_r5
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x10
	movs r0, #0xe0
	lsls r0, r0, #0x14
	bl _call_via_r5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	orrs r4, r0
	ldr r2, _08098FC0 @ =0x0E005555
	movs r0, #0xaa
	strb r0, [r2]
	ldr r1, _08098FC4 @ =0x0E002AAA
	movs r0, #0x55
	strb r0, [r1]
	movs r0, #0xf0
	strb r0, [r2]
	add r1, sp, #0x40
	ldr r2, _08098FC8 @ =0x00004E20
	adds r0, r2, #0
	b _08098FD0
	.align 2, 0
_08098FBC: .4byte 0x0E000001
_08098FC0: .4byte 0x0E005555
_08098FC4: .4byte 0x0E002AAA
_08098FC8: .4byte 0x00004E20
_08098FCC:
	ldrh r0, [r1]
	subs r0, #1
_08098FD0:
	strh r0, [r1]
	ldrh r0, [r1]
	cmp r0, #0
	bne _08098FCC
	adds r0, r4, #0
	add sp, #0x44
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start IdentifyFlash
IdentifyFlash: @ 0x08098FE4
	push {r4, lr}
	ldr r2, _08099004 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _08099008 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	bl ReadFlashId
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r2, _0809900C @ =gSetupInfos
	movs r4, #1
	b _08099012
	.align 2, 0
_08099004: .4byte 0x04000204
_08099008: .4byte 0x0000FFFC
_0809900C: .4byte gSetupInfos
_08099010:
	adds r2, #4
_08099012:
	ldr r1, [r2]
	adds r0, r1, #0
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	beq _08099026
	ldrh r0, [r1, #0x28]
	cmp r3, r0
	bne _08099010
	movs r4, #0
_08099026:
	ldr r1, _08099060 @ =ProgramFlashSector
	ldr r0, [r2]
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, _08099064 @ =EraseFlashChip
	ldr r0, [r2]
	ldr r0, [r0, #4]
	str r0, [r1]
	ldr r1, _08099068 @ =EraseFlashSector
	ldr r0, [r2]
	ldr r0, [r0, #8]
	str r0, [r1]
	ldr r1, _0809906C @ =WaitForFlashWrite
	ldr r0, [r2]
	ldr r0, [r0, #0xc]
	str r0, [r1]
	ldr r1, _08099070 @ =0x03000424 @ gFlashMaxTime
	ldr r0, [r2]
	ldr r0, [r0, #0x10]
	str r0, [r1]
	ldr r1, _08099074 @ =gFlash
	ldr r0, [r2]
	adds r0, #0x14
	str r0, [r1]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08099060: .4byte ProgramFlashSector
_08099064: .4byte EraseFlashChip
_08099068: .4byte EraseFlashSector
_0809906C: .4byte WaitForFlashWrite
_08099070: .4byte 0x03000424 @ gFlashMaxTime
_08099074: .4byte gFlash

	thumb_func_start FlashTimerIntr
FlashTimerIntr: @ 0x08099078
	ldr r1, _08099094 @ =0x0300042E
	ldrh r0, [r1]
	cmp r0, #0
	beq _08099092
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08099092
	ldr r1, _08099098 @ =0x03000430 @ gFlashTimeoutFlag
	movs r0, #1
	strb r0, [r1]
_08099092:
	bx lr
	.align 2, 0
_08099094: .4byte 0x0300042E
_08099098: .4byte 0x03000430 @ gFlashTimeoutFlag

	thumb_func_start SetFlashTimerIntr
SetFlashTimerIntr: @ 0x0809909C
	adds r2, r1, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bhi _080990D0
	ldr r0, _080990C0 @ =0x0300042C
	strb r1, [r0]
	ldr r1, _080990C4 @ =0x03000434
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r3, _080990C8 @ =0x04000100
	adds r0, r0, r3
	str r0, [r1]
	ldr r0, _080990CC @ =FlashTimerIntr
	str r0, [r2]
	movs r0, #0
	b _080990D2
	.align 2, 0
_080990C0: .4byte 0x0300042C
_080990C4: .4byte 0x03000434
_080990C8: .4byte 0x04000100
_080990CC: .4byte FlashTimerIntr
_080990D0:
	movs r0, #1
_080990D2:
	bx lr

	thumb_func_start StartFlashTimer
StartFlashTimer: @ 0x080990D4
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08099158 @ =0x03000424 @ gFlashMaxTime
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #1
	ldr r0, [r1]
	adds r2, r2, r0
	ldr r1, _0809915C @ =0x03000438
	ldr r0, _08099160 @ =0x04000208
	mov sb, r0
	ldrh r0, [r0]
	strh r0, [r1]
	movs r3, #0
	mov r1, sb
	strh r3, [r1]
	ldr r0, _08099164 @ =0x03000434
	mov r8, r0
	ldr r4, [r0]
	strh r3, [r4, #2]
	ldr r6, _08099168 @ =0x04000200
	ldr r1, _0809916C @ =0x0300042C
	mov sl, r1
	ldrb r1, [r1]
	movs r5, #8
	adds r0, r5, #0
	lsls r0, r1
	adds r1, r0, #0
	ldrh r0, [r6]
	orrs r0, r1
	strh r0, [r6]
	ldr r0, _08099170 @ =0x03000430 @ gFlashTimeoutFlag
	strb r3, [r0]
	ldr r1, _08099174 @ =0x0300042E
	ldrh r0, [r2]
	strh r0, [r1]
	adds r2, #2
	ldrh r0, [r2]
	strh r0, [r4]
	adds r0, r4, #2
	mov r1, r8
	str r0, [r1]
	ldrh r0, [r2, #2]
	strh r0, [r4, #2]
	str r4, [r1]
	ldr r1, _08099178 @ =0x04000202
	mov r2, sl
	ldrb r0, [r2]
	lsls r5, r0
	strh r5, [r1]
	movs r0, #1
	mov r3, sb
	strh r0, [r3]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08099158: .4byte 0x03000424 @ gFlashMaxTime
_0809915C: .4byte 0x03000438
_08099160: .4byte 0x04000208
_08099164: .4byte 0x03000434
_08099168: .4byte 0x04000200
_0809916C: .4byte 0x0300042C
_08099170: .4byte 0x03000430 @ gFlashTimeoutFlag
_08099174: .4byte 0x0300042E
_08099178: .4byte 0x04000202

	thumb_func_start StopFlashTimer
StopFlashTimer: @ 0x0809917C
	ldr r3, _080991AC @ =0x04000208
	movs r1, #0
	strh r1, [r3]
	ldr r2, _080991B0 @ =0x03000434
	ldr r0, [r2]
	strh r1, [r0]
	adds r0, #2
	str r0, [r2]
	strh r1, [r0]
	subs r0, #2
	str r0, [r2]
	ldr r2, _080991B4 @ =0x04000200
	ldr r0, _080991B8 @ =0x0300042C
	ldrb r0, [r0]
	movs r1, #8
	lsls r1, r0
	ldrh r0, [r2]
	bics r0, r1
	strh r0, [r2]
	ldr r0, _080991BC @ =0x03000438
	ldrh r0, [r0]
	strh r0, [r3]
	bx lr
	.align 2, 0
_080991AC: .4byte 0x04000208
_080991B0: .4byte 0x03000434
_080991B4: .4byte 0x04000200
_080991B8: .4byte 0x0300042C
_080991BC: .4byte 0x03000438

	thumb_func_start ReadFlash1
ReadFlash1: @ 0x080991C0
	ldrb	r0, [r0]
	bx	lr

	thumb_func_start SetReadFlash1
SetReadFlash1: @ 0x080991C4
	adds r2, r0, #0
	ldr r1, _080991DC @ =0x03000428
	adds r0, r2, #1
	str r0, [r1]
	ldr r3, _080991E0 @ =ReadFlash1
	movs r0, #1
	eors r3, r0
	ldr r0, _080991E4 @ =SetReadFlash1
	ldr r1, _080991E0 @ =ReadFlash1
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _080991F4
	.align 2, 0
_080991DC: .4byte 0x03000428
_080991E0: .4byte ReadFlash1
_080991E4: .4byte SetReadFlash1
_080991E8:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_080991F4:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _080991E8
	bx lr

	thumb_func_start WaitForFlashWrite512K_Common
WaitForFlashWrite512K_Common: @ 0x080991FC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	movs r0, #0
	mov r8, r0
	adds r0, r4, #0
	bl StartFlashTimer
	ldr r7, _08099224 @ =0x03000428
	movs r0, #0xc0
	lsls r0, r0, #8
	orrs r4, r0
	lsls r4, r4, #0x10
	b _0809924C
	.align 2, 0
_08099224: .4byte 0x03000428
_08099228:
	ldr r0, _08099240 @ =gFlash
	ldr r0, [r0]
	ldrh r1, [r0, #0x14]
	ldr r0, _08099244 @ =0x00001CC2
	cmp r1, r0
	bne _0809923A
	ldr r1, _08099248 @ =0x0E005555
	movs r0, #0xf0
	strb r0, [r1]
_0809923A:
	lsrs r4, r4, #0x10
	mov r8, r4
	b _08099274
	.align 2, 0
_08099240: .4byte gFlash
_08099244: .4byte 0x00001CC2
_08099248: .4byte 0x0E005555
_0809924C:
	ldr r1, [r7]
	adds r0, r5, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	beq _08099274
	ldr r0, _08099284 @ =0x03000430 @ gFlashTimeoutFlag
	ldrb r0, [r0]
	cmp r0, #0
	beq _0809924C
	ldr r1, [r7]
	adds r0, r5, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	bne _08099228
_08099274:
	bl StopFlashTimer
	mov r0, r8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08099284: .4byte 0x03000430 @ gFlashTimeoutFlag

	thumb_func_start ReadFlash_Core
ReadFlash_Core: @ 0x08099288
	push {r4, lr}
	adds r4, r0, #0
	subs r3, r2, #1
	cmp r2, #0
	beq _080992A4
	movs r2, #1
	rsbs r2, r2, #0
_08099296:
	ldrb r0, [r4]
	strb r0, [r1]
	adds r4, #1
	adds r1, #1
	subs r3, #1
	cmp r3, r2
	bne _08099296
_080992A4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start ReadFlash
ReadFlash: @ 0x080992AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x80
	adds r5, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r2, _080992DC @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _080992E0 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r3, _080992E4 @ =ReadFlash_Core
	movs r0, #1
	eors r3, r0
	mov r2, sp
	ldr r0, _080992E8 @ =ReadFlash
	ldr r1, _080992E4 @ =ReadFlash_Core
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _080992F8
	.align 2, 0
_080992DC: .4byte 0x04000204
_080992E0: .4byte 0x0000FFFC
_080992E4: .4byte ReadFlash_Core
_080992E8: .4byte ReadFlash
_080992EC:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_080992F8:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _080992EC
	mov r3, sp
	adds r3, #1
	ldr r0, _08099324 @ =DefaultFlash512K
	ldrb r0, [r0, #0x1c]
	lsls r4, r0
	adds r0, r4, #0
	movs r2, #0xe0
	lsls r2, r2, #0x14
	adds r1, r5, r2
	adds r0, r0, r1
	adds r1, r6, #0
	adds r2, r7, #0
	bl _call_via_r3
	add sp, #0x80
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08099324: .4byte DefaultFlash512K

	thumb_func_start VerifyFlashSector_Core
VerifyFlashSector_Core: @ 0x08099328
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r3, r1, #0
	subs r4, r2, #1
	cmp r2, #0
	beq _0809934E
	movs r2, #1
	rsbs r2, r2, #0
_08099338:
	ldrb r1, [r3]
	ldrb r0, [r5]
	adds r5, #1
	adds r3, #1
	cmp r1, r0
	beq _08099348
	subs r0, r3, #1
	b _08099350
_08099348:
	subs r4, #1
	cmp r4, r2
	bne _08099338
_0809934E:
	movs r0, #0
_08099350:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start VerifyFlashSector
VerifyFlashSector: @ 0x08099358
	push {r4, r5, lr}
	sub sp, #0x100
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r2, _08099384 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _08099388 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r3, _0809938C @ =VerifyFlashSector_Core
	movs r0, #1
	eors r3, r0
	mov r2, sp
	ldr r0, _08099390 @ =VerifyFlashSector
	ldr r1, _0809938C @ =VerifyFlashSector_Core
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _080993A0
	.align 2, 0
_08099384: .4byte 0x04000204
_08099388: .4byte 0x0000FFFC
_0809938C: .4byte VerifyFlashSector_Core
_08099390: .4byte VerifyFlashSector
_08099394:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_080993A0:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08099394
	mov r3, sp
	adds r3, #1
	ldr r0, _080993C8 @ =DefaultFlash512K
	ldrb r1, [r0, #0x1c]
	lsls r4, r1
	adds r1, r4, #0
	movs r2, #0xe0
	lsls r2, r2, #0x14
	adds r1, r1, r2
	ldrh r2, [r0, #0x18]
	adds r0, r5, #0
	bl _call_via_r3
	add sp, #0x100
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080993C8: .4byte DefaultFlash512K

	thumb_func_start VerifyFlashSectorNBytes
VerifyFlashSectorNBytes: @ 0x080993CC
	push {r4, r5, r6, lr}
	sub sp, #0x100
	adds r5, r1, #0
	adds r6, r2, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r2, _080993F8 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _080993FC @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r3, _08099400 @ =VerifyFlashSector_Core
	movs r0, #1
	eors r3, r0
	mov r2, sp
	ldr r0, _08099404 @ =VerifyFlashSector
	ldr r1, _08099400 @ =VerifyFlashSector_Core
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _08099414
	.align 2, 0
_080993F8: .4byte 0x04000204
_080993FC: .4byte 0x0000FFFC
_08099400: .4byte VerifyFlashSector_Core
_08099404: .4byte VerifyFlashSector
_08099408:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_08099414:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08099408
	mov r3, sp
	adds r3, #1
	ldr r0, _0809943C @ =DefaultFlash512K
	ldrb r1, [r0, #0x1c]
	lsls r4, r1
	adds r1, r4, #0
	movs r0, #0xe0
	lsls r0, r0, #0x14
	adds r1, r1, r0
	adds r0, r5, #0
	adds r2, r6, #0
	bl _call_via_r3
	add sp, #0x100
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0809943C: .4byte DefaultFlash512K

	thumb_func_start ProgramFlashSectorAndVerify
ProgramFlashSectorAndVerify: @ 0x08099440
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #0
	b _08099452
_0809944C:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08099452:
	cmp r6, #2
	bhi _08099478
	ldr r0, _08099480 @ =ProgramFlashSector
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _0809944C
	adds r0, r4, #0
	adds r1, r5, #0
	bl VerifyFlashSector
	adds r2, r0, #0
	cmp r2, #0
	bne _0809944C
_08099478:
	adds r0, r2, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08099480: .4byte ProgramFlashSector

	thumb_func_start ProgramFlashSectorAndVerifyNBytes
ProgramFlashSectorAndVerifyNBytes: @ 0x08099484
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r7, r2, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #0
	b _08099498
_08099492:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08099498:
	cmp r6, #2
	bhi _080994C0
	ldr r0, _080994C8 @ =ProgramFlashSector
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _08099492
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl VerifyFlashSectorNBytes
	adds r3, r0, #0
	cmp r3, #0
	bne _08099492
_080994C0:
	adds r0, r3, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080994C8: .4byte ProgramFlashSector
.endif
@ --- End of agb_flash.o ---

.if 0
@ --- Start of agb_flash_le_512k ---
	thumb_func_start EraseFlashChip_LE
EraseFlashChip_LE: @ 0x080994CC
	push {r4, r5, r6, lr}
	sub sp, #0x40
	ldr r5, _08099528 @ =0x04000204
	ldrh r1, [r5]
	ldr r6, _0809952C @ =0x0000FFFC
	ands r1, r6
	ldr r0, _08099530 @ =gFlash
	ldr r0, [r0]
	ldrh r0, [r0, #0x10]
	orrs r1, r0
	strh r1, [r5]
	ldr r1, _08099534 @ =0x0E005555
	movs r4, #0xaa
	strb r4, [r1]
	ldr r3, _08099538 @ =0x0E002AAA
	movs r2, #0x55
	strb r2, [r3]
	movs r0, #0x80
	strb r0, [r1]
	strb r4, [r1]
	strb r2, [r3]
	movs r0, #0x10
	strb r0, [r1]
	mov r0, sp
	bl SetReadFlash1
	ldr r0, _0809953C @ =WaitForFlashWrite
	movs r1, #0xe0
	lsls r1, r1, #0x14
	ldr r3, [r0]
	movs r0, #3
	movs r2, #0xff
	bl _call_via_r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r5]
	ands r1, r6
	movs r2, #3
	orrs r1, r2
	strh r1, [r5]
	add sp, #0x40
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08099528: .4byte 0x04000204
_0809952C: .4byte 0x0000FFFC
_08099530: .4byte gFlash
_08099534: .4byte 0x0E005555
_08099538: .4byte 0x0E002AAA
_0809953C: .4byte WaitForFlashWrite

	thumb_func_start EraseFlashSector_LE
EraseFlashSector_LE: @ 0x08099540
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x40
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0xf
	bhi _080995C8
	ldr r6, _080995B0 @ =0x04000204
	ldrh r1, [r6]
	ldr r0, _080995B4 @ =0x0000FFFC
	mov r8, r0
	ands r1, r0
	ldr r0, _080995B8 @ =gFlash
	ldr r2, [r0]
	ldrh r0, [r2, #0x10]
	orrs r1, r0
	strh r1, [r6]
	ldrb r4, [r2, #8]
	lsls r3, r4
	adds r4, r3, #0
	movs r2, #0xe0
	lsls r2, r2, #0x14
	adds r4, r4, r2
	ldr r1, _080995BC @ =0x0E005555
	movs r5, #0xaa
	strb r5, [r1]
	ldr r3, _080995C0 @ =0x0E002AAA
	movs r2, #0x55
	strb r2, [r3]
	movs r0, #0x80
	strb r0, [r1]
	strb r5, [r1]
	strb r2, [r3]
	movs r0, #0x30
	strb r0, [r4]
	mov r0, sp
	bl SetReadFlash1
	ldr r0, _080995C4 @ =WaitForFlashWrite
	ldr r3, [r0]
	movs r0, #2
	adds r1, r4, #0
	movs r2, #0xff
	bl _call_via_r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r6]
	mov r2, r8
	ands r1, r2
	movs r2, #3
	orrs r1, r2
	strh r1, [r6]
	b _080995CA
	.align 2, 0
_080995B0: .4byte 0x04000204
_080995B4: .4byte 0x0000FFFC
_080995B8: .4byte gFlash
_080995BC: .4byte 0x0E005555
_080995C0: .4byte 0x0E002AAA
_080995C4: .4byte WaitForFlashWrite
_080995C8:
	ldr r0, _080995D8 @ =0x000080FF
_080995CA:
	add sp, #0x40
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080995D8: .4byte 0x000080FF

	thumb_func_start ProgramByte
ProgramByte: @ 0x080995DC
	push {r4, lr}
	ldr r4, _08099608 @ =0x0E005555
	movs r2, #0xaa
	strb r2, [r4]
	ldr r3, _0809960C @ =0x0E002AAA
	movs r2, #0x55
	strb r2, [r3]
	movs r2, #0xa0
	strb r2, [r4]
	ldrb r2, [r0]
	strb r2, [r1]
	ldr r3, _08099610 @ =WaitForFlashWrite
	ldrb r2, [r0]
	ldr r3, [r3]
	movs r0, #1
	bl _call_via_r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08099608: .4byte 0x0E005555
_0809960C: .4byte 0x0E002AAA
_08099610: .4byte WaitForFlashWrite

	thumb_func_start ProgramFlashSector_LE
ProgramFlashSector_LE: @ 0x08099614
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x60
	mov sb, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #0xf
	bls _08099634
	ldr r0, _08099630 @ =0x000080FF
	b _08099722
	.align 2, 0
_08099630: .4byte 0x000080FF
_08099634:
	ldr r0, _08099654 @ =gFlash
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	mov r7, r8
	lsls r7, r0
	movs r0, #0xe0
	lsls r0, r0, #0x14
	adds r7, r7, r0
	ldr r1, _08099658 @ =VerifyEraseSector_Core
	movs r0, #1
	adds r3, r1, #0
	eors r3, r0
	mov r2, sp
	ldr r0, _0809965C @ =VerifyEraseSector
	subs r0, r0, r1
	b _0809966A
	.align 2, 0
_08099654: .4byte gFlash
_08099658: .4byte VerifyEraseSector_Core
_0809965C: .4byte VerifyEraseSector
_08099660:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #2
_0809966A:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08099660
	movs r4, #0
	b _08099680
_08099676:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x51
	beq _08099720
_08099680:
	mov r0, r8
	bl EraseFlashSector_LE
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	bne _08099676
	adds r0, r7, #0
	mov r1, sp
	adds r1, #1
	bl VerifyEraseSector
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	bne _08099676
	movs r6, #1
	cmp r4, #0
	beq _080996A8
	movs r6, #6
_080996A8:
	movs r4, #1
	cmp r4, r6
	bhi _080996BE
_080996AE:
	mov r0, r8
	bl EraseFlashSector_LE
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r6
	bls _080996AE
_080996BE:
	mov r0, sp
	bl SetReadFlash1
	ldr r3, _080996E0 @ =0x04000204
	ldrh r1, [r3]
	ldr r0, _080996E4 @ =0x0000FFFC
	ands r1, r0
	ldr r0, _080996E8 @ =gFlash
	ldr r2, [r0]
	ldrh r0, [r2, #0x10]
	orrs r1, r0
	strh r1, [r3]
	ldr r1, _080996EC @ =gFlashNumRemainingBytes
	ldr r0, [r2, #4]
	strh r0, [r1]
	adds r4, r1, #0
	b _080996FC
	.align 2, 0
_080996E0: .4byte 0x04000204
_080996E4: .4byte 0x0000FFFC
_080996E8: .4byte gFlash
_080996EC: .4byte gFlashNumRemainingBytes
_080996F0:
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	movs r0, #1
	add sb, r0
	adds r7, #1
_080996FC:
	ldrh r0, [r4]
	cmp r0, #0
	beq _08099712
	mov r0, sb
	adds r1, r7, #0
	bl ProgramByte
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _080996F0
_08099712:
	ldr r2, _08099730 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _08099734 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
_08099720:
	adds r0, r5, #0
_08099722:
	add sp, #0x60
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08099730: .4byte 0x04000204
_08099734: .4byte 0x0000FFFC

	thumb_func_start VerifyEraseSector_Core
VerifyEraseSector_Core: @ 0x08099738
	adds r2, r0, #0
	ldr r0, _08099744 @ =gFlash
	ldr r0, [r0]
	ldr r1, [r0, #4]
	b _0809974A
	.align 2, 0
_08099744: .4byte gFlash
_08099748:
	subs r1, #1
_0809974A:
	cmp r1, #0
	beq _08099756
	ldrb r0, [r2]
	adds r2, #1
	cmp r0, #0xff
	beq _08099748
_08099756:
	adds r0, r1, #0
	bx lr
	.align 2, 0

	thumb_func_start VerifyEraseSector
VerifyEraseSector: @ 0x0809975C
	push {lr}
	bl _call_via_r1
	cmp r0, #0
	bne _0809976A
	movs r0, #0
	b _0809976C
_0809976A:
	ldr r0, _08099770 @ =0x00008004
_0809976C:
	pop {r1}
	bx r1
	.align 2, 0
_08099770: .4byte 0x00008004
@ --- End of agb_flash_le_512k.o ---
.endif

.if 0
@ --- Start of agb_flash_mx_512k.o ---
	thumb_func_start sub_8099774
sub_8099774: @ 0x08099774
	push {r4, r5, r6, r7, lr}
	sub sp, #0x40
	adds r7, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _0809978C
	ldr r0, _08099788 @ =0x000080FF
	b _08099808
	.align 2, 0
_08099788: .4byte 0x000080FF
_0809978C:
	adds r0, r4, #0
	bl EraseFlashSector_LE
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	bne _08099806
	mov r0, sp
	bl SetReadFlash1
	ldr r3, _080997C8 @ =0x04000204
	ldrh r1, [r3]
	ldr r0, _080997CC @ =0x0000FFFC
	ands r1, r0
	ldr r0, _080997D0 @ =gFlash
	ldr r2, [r0]
	ldrh r0, [r2, #0x10]
	orrs r1, r0
	strh r1, [r3]
	ldr r1, _080997D4 @ =gFlashNumRemainingBytes
	ldr r0, [r2, #4]
	strh r0, [r1]
	ldrb r0, [r2, #8]
	lsls r4, r0
	movs r0, #0xe0
	lsls r0, r0, #0x14
	adds r4, r4, r0
	adds r6, r1, #0
	b _080997E2
	.align 2, 0
_080997C8: .4byte 0x04000204
_080997CC: .4byte 0x0000FFFC
_080997D0: .4byte gFlash
_080997D4: .4byte gFlashNumRemainingBytes
_080997D8:
	ldrh r0, [r6]
	subs r0, #1
	strh r0, [r6]
	adds r7, #1
	adds r4, #1
_080997E2:
	ldrh r0, [r6]
	cmp r0, #0
	beq _080997F8
	adds r0, r7, #0
	adds r1, r4, #0
	bl ProgramByte
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _080997D8
_080997F8:
	ldr r2, _08099810 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _08099814 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
_08099806:
	adds r0, r5, #0
_08099808:
	add sp, #0x40
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08099810: .4byte 0x04000204
_08099814: .4byte 0x0000FFFC
@ --- End of agb_flash_mx_512k.o ---
.endif

	thumb_func_start EraseFlashChip_Unk
EraseFlashChip_Unk: @ 0x08099818
	push {r4, r5, r6, lr}
	sub sp, #0x40
	mov r0, sp
	bl SetReadFlash1
	ldr r5, _08099870 @ =0x04000204
	ldrh r0, [r5]
	ldr r6, _08099874 @ =0x0000FFFC
	ands r0, r6
	ldr r1, _08099878 @ =gUnknown_087BF778
	ldrh r1, [r1, #0x24]
	orrs r0, r1
	strh r0, [r5]
	ldr r1, _0809987C @ =0x0E005555
	movs r4, #0xaa
	strb r4, [r1]
	ldr r3, _08099880 @ =0x0E002AAA
	movs r2, #0x55
	strb r2, [r3]
	movs r0, #0x80
	strb r0, [r1]
	strb r4, [r1]
	strb r2, [r3]
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _08099884 @ =WaitForFlashWrite
	movs r1, #0xe0
	lsls r1, r1, #0x14
	ldr r3, [r0]
	movs r0, #3
	movs r2, #0xff
	bl _call_via_r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r5]
	ands r1, r6
	movs r2, #3
	orrs r1, r2
	strh r1, [r5]
	add sp, #0x40
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08099870: .4byte 0x04000204
_08099874: .4byte 0x0000FFFC
_08099878: .4byte gUnknown_087BF778
_0809987C: .4byte 0x0E005555
_08099880: .4byte 0x0E002AAA
_08099884: .4byte WaitForFlashWrite

	thumb_func_start sub_8099888
sub_8099888: @ 0x08099888
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	ldr r3, _080998F8 @ =gUnknown_087BF778
	lsrs r0, r0, #0x10
	adds r4, r0, #0
	ldrb r1, [r3, #0x1c]
	lsls r4, r1
	movs r0, #0xe0
	lsls r0, r0, #0x14
	adds r4, r4, r0
	ldr r1, _080998FC @ =0x04000208
	ldrh r0, [r1]
	adds r5, r0, #0
	movs r0, #0
	strh r0, [r1]
	ldr r2, _08099900 @ =0x0E005555
	movs r0, #0xaa
	strb r0, [r2]
	ldr r1, _08099904 @ =0x0E002AAA
	movs r0, #0x55
	strb r0, [r1]
	movs r0, #0xa0
	strb r0, [r2]
	ldr r0, [r3, #0x18]
	cmp r0, #0
	beq _080998C8
	movs r1, #0xff
_080998BE:
	strb r1, [r4]
	adds r4, #1
	subs r0, #1
	cmp r0, #0
	bne _080998BE
_080998C8:
	subs r4, #1
	ldr r0, _080998FC @ =0x04000208
	strh r5, [r0]
	ldr r0, _08099908 @ =WaitForFlashWrite
	ldr r3, [r0]
	movs r0, #1
	adds r1, r4, #0
	movs r2, #0xff
	bl _call_via_r3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _080998EE
	movs r0, #0xff
	lsls r0, r0, #8
	ands r1, r0
	movs r0, #2
	orrs r1, r0
_080998EE:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080998F8: .4byte gUnknown_087BF778
_080998FC: .4byte 0x04000208
_08099900: .4byte 0x0E005555
_08099904: .4byte 0x0E002AAA
_08099908: .4byte WaitForFlashWrite

	thumb_func_start EraseFlashSector_Unk
EraseFlashSector_Unk: @ 0x0809990C
	push {r4, r5, r6, lr}
	sub sp, #0x40
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _08099920
	ldr r0, _0809991C @ =0x000080FF
	b _08099988
	.align 2, 0
_0809991C: .4byte 0x000080FF
_08099920:
	mov r0, sp
	bl SetReadFlash1
	ldr r2, _08099940 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _08099944 @ =0x0000FFFC
	ands r0, r1
	ldr r1, _08099948 @ =gUnknown_087BF778
	ldrh r1, [r1, #0x24]
	orrs r0, r1
	strh r0, [r2]
	lsls r0, r4, #0x15
	lsrs r5, r0, #0x10
	movs r6, #0
_0809993C:
	movs r4, #2
	b _08099956
	.align 2, 0
_08099940: .4byte 0x04000204
_08099944: .4byte 0x0000FFFC
_08099948: .4byte gUnknown_087BF778
_0809994C:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08099964
_08099956:
	adds r0, r5, #0
	bl sub_8099888
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _0809994C
_08099964:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r3, #0
	bne _08099978
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0x1f
	bls _0809993C
_08099978:
	ldr r2, _08099990 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _08099994 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	adds r0, r3, #0
_08099988:
	add sp, #0x40
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08099990: .4byte 0x04000204
_08099994: .4byte 0x0000FFFC

	thumb_func_start sub_8099998
sub_8099998: @ 0x08099998
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	ldr r3, _080999FC @ =gUnknown_087BF778
	lsrs r0, r0, #0x10
	adds r4, r0, #0
	ldrb r1, [r3, #0x1c]
	lsls r4, r1
	movs r0, #0xe0
	lsls r0, r0, #0x14
	adds r4, r4, r0
	ldr r1, _08099A00 @ =0x04000208
	ldrh r0, [r1]
	adds r6, r0, #0
	movs r0, #0
	strh r0, [r1]
	ldr r2, _08099A04 @ =0x0E005555
	movs r0, #0xaa
	strb r0, [r2]
	ldr r1, _08099A08 @ =0x0E002AAA
	movs r0, #0x55
	strb r0, [r1]
	movs r0, #0xa0
	strb r0, [r2]
	ldr r1, [r3, #0x18]
	cmp r1, #0
	beq _080999DC
_080999CE:
	ldrb r0, [r5]
	strb r0, [r4]
	adds r5, #1
	adds r4, #1
	subs r1, #1
	cmp r1, #0
	bne _080999CE
_080999DC:
	subs r4, #1
	subs r5, #1
	ldr r0, _08099A00 @ =0x04000208
	strh r6, [r0]
	ldr r0, _08099A0C @ =WaitForFlashWrite
	ldrb r2, [r5]
	ldr r3, [r0]
	movs r0, #1
	adds r1, r4, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080999FC: .4byte gUnknown_087BF778
_08099A00: .4byte 0x04000208
_08099A04: .4byte 0x0E005555
_08099A08: .4byte 0x0E002AAA
_08099A0C: .4byte WaitForFlashWrite

	thumb_func_start ProgramFlashSector_Unk
ProgramFlashSector_Unk: @ 0x08099A10
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x40
	adds r7, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _08099A2C
	ldr r0, _08099A28 @ =0x000080FF
	b _08099ABA
	.align 2, 0
_08099A28: .4byte 0x000080FF
_08099A2C:
	mov r0, sp
	bl SetReadFlash1
	ldr r2, _08099A54 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _08099A58 @ =0x0000FFFC
	ands r0, r1
	ldr r1, _08099A5C @ =gUnknown_087BF778
	ldrh r1, [r1, #0x24]
	orrs r0, r1
	strh r0, [r2]
	lsls r0, r4, #0x15
	lsrs r5, r0, #0x10
	ldr r1, _08099A60 @ =gFlashNumRemainingBytes
	ldr r0, _08099A64 @ =AT29LV512
	ldr r0, [r0, #0x18]
	strh r0, [r1]
	adds r0, r1, #0
	mov r8, r0
	b _08099A7C
	.align 2, 0
_08099A54: .4byte 0x04000204
_08099A58: .4byte 0x0000FFFC
_08099A5C: .4byte gUnknown_087BF778
_08099A60: .4byte gFlashNumRemainingBytes
_08099A64: .4byte AT29LV512
_08099A68:
	ldr r0, _08099A88 @ =gUnknown_087BF778
	ldr r1, [r0, #0x18]
	mov r2, r8
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r2]
	adds r7, r7, r1
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_08099A7C:
	mov r1, r8
	ldrh r0, [r1]
	cmp r0, #0
	beq _08099AAA
	movs r4, #2
	b _08099A96
	.align 2, 0
_08099A88: .4byte gUnknown_087BF778
_08099A8C:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08099AA6
_08099A96:
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_8099998
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	bne _08099A8C
_08099AA6:
	cmp r6, #0
	beq _08099A68
_08099AAA:
	ldr r2, _08099AC8 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _08099ACC @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	adds r0, r6, #0
_08099ABA:
	add sp, #0x40
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08099AC8: .4byte 0x04000204
_08099ACC: .4byte 0x0000FFFC
