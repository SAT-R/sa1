.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ --- Start of m4a0.s ---
	thumb_func_start umul3232H32
umul3232H32: @ 0x08096D98
	add r2, pc, #0x0 @ =__umul3232H32
	bx r2

	arm_func_start __umul3232H32
__umul3232H32: @ 0x08096D9C
	umull r2, r3, r0, r1
	add r0, r3, #0
	bx lr

	thumb_func_start SoundMain
SoundMain: @ 0x08096DA8
	ldr r0, _08096E14 @ =gUnknown_03007FF0
	ldr r0, [r0]
	ldr r2, _08096E18 @ =0x68736D53
	ldr r3, [r0]
	cmp r2, r3
	beq _08096DB6
	bx lr
_08096DB6:
	adds r3, #1
	str r3, [r0]
	push {r4, r5, r6, r7, lr}
	mov r1, r8
	mov r2, sb
	mov r3, sl
	mov r4, fp
	push {r0, r1, r2, r3, r4}
	sub sp, #0x18
	ldrb r1, [r0, #0xc]
	cmp r1, #0
	beq _08096DDA
	ldr r2, _08096E20 @ =0x04000006
	ldrb r2, [r2]
	cmp r2, #0xa0
	bhs _08096DD8
	adds r2, #0xe4
_08096DD8:
	adds r1, r1, r2
_08096DDA:
	str r1, [sp, #0x14]
	ldr r3, [r0, #0x20]
	cmp r3, #0
	beq _08096DEA
	ldr r0, [r0, #0x24]
	bl sub_80971CA
	ldr r0, [sp, #0x18]
_08096DEA:
	ldr r3, [r0, #0x28]
	bl sub_80971CA
	ldr r0, [sp, #0x18]
	ldr r3, [r0, #0x10]
	mov r8, r3
	ldr r5, _08096E24 @ =0x00000350
	adds r5, r5, r0
	ldrb r4, [r0, #4]
	subs r7, r4, #1
	bls _08096E0A
	ldrb r1, [r0, #0xb]
	subs r1, r1, r7
	mov r2, r8
	muls r2, r1, r2
	adds r5, r5, r2
_08096E0A:
	str r5, [sp, #8]
	ldr r6, _08096E28 @ =0x00000630
	ldr r3, _08096E1C @ =0x03000001
	bx r3
	.align 2, 0
_08096E14: .4byte gUnknown_03007FF0
_08096E18: .4byte 0x68736D53
_08096E1C: .4byte 0x03000001
_08096E20: .4byte 0x04000006
_08096E24: .4byte 0x00000350
_08096E28: .4byte 0x00000630

	thumb_func_start SoundMainRAM
SoundMainRAM: @ 0x08096E2C
	ldrb r3, [r0, #5]
	cmp r3, #0
	beq sub_08096E8C
	add r1, pc, #0x4 @ =sub_08096E38
	bx r1
	.align 2, 0

	arm_func_start sub_08096E38
sub_08096E38: @ 0x08096E38
	cmp r4, #2
	addeq r7, r0, #0x350
	addne r7, r5, r8
	mov r4, r8
_08096E48:
	ldrsb r0, [r5, r6]
	ldrsb r1, [r5]
	add r0, r0, r1
	ldrsb r1, [r7, r6]
	add r0, r0, r1
	ldrsb r1, [r7], #1
	add r0, r0, r1
	mul r1, r0, r3
	asr r0, r1, #9
	tst r0, #0x80
	addne r0, r0, #1
	strb r0, [r5, r6]
	strb r0, [r5], #1
	subs r4, r4, #1
	bgt _08096E48
	add r0, pc, #0x2F @ =sub_08096EBA
	bx r0

	thumb_func_start sub_08096E8C
sub_08096E8C: @ 0x08096E8C
	movs r0, #0
	mov r1, r8
	adds r6, r6, r5
	lsrs r1, r1, #3
	blo _08096E9A
	stm r5!, {r0}
	stm r6!, {r0}
_08096E9A:
	lsrs r1, r1, #1
	blo _08096EA6
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
_08096EA6:
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	subs r1, #1
	bgt _08096EA6

	non_word_aligned_thumb_func_start sub_08096EBA
sub_08096EBA: @ 0x08096EBA
	ldr r4, [sp, #0x18]
	ldr r0, [r4, #0x18]
	mov ip, r0
	ldrb r0, [r4, #6]
	adds r4, #0x50
_08096EC4:
	str r0, [sp, #4]
	ldr r3, [r4, #0x24]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _08096EE4
	ldr r1, _08096EE0 @ =0x04000006
	ldrb r1, [r1]
	cmp r1, #0xa0
	bhs _08096ED8
	adds r1, #0xe4
_08096ED8:
	cmp r1, r0
	blo _08096EE4
	b _080971B6
	.align 2, 0
_08096EE0: .4byte 0x04000006
_08096EE4:
	ldrb r6, [r4]
	movs r0, #0xc7
	tst r0, r6
	bne _08096EEE
	b sub_080971AC
_08096EEE:
	movs r0, #0x80
	tst r0, r6
	beq _08096F1E
	movs r0, #0x40
	tst r0, r6
	bne _08096F2E
	movs r6, #3
	strb r6, [r4]
	adds r0, r3, #0
	adds r0, #0x10
	str r0, [r4, #0x28]
	ldr r0, [r3, #0xc]
	str r0, [r4, #0x18]
	movs r5, #0
	strb r5, [r4, #9]
	str r5, [r4, #0x1c]
	ldrb r2, [r3, #3]
	movs r0, #0xc0
	tst r0, r2
	beq _08096F76
	movs r0, #0x10
	orrs r6, r0
	strb r6, [r4]
	b _08096F76
_08096F1E:
	ldrb r5, [r4, #9]
	movs r0, #4
	tst r0, r6
	beq _08096F34
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	bhi _08096F84
_08096F2E:
	movs r0, #0
	strb r0, [r4]
	b sub_080971AC
_08096F34:
	movs r0, #0x40
	tst r0, r6
	beq _08096F54
	ldrb r0, [r4, #7]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #0xc]
	cmp r5, r0
	bhi _08096F84
_08096F46:
	ldrb r5, [r4, #0xc]
	cmp r5, #0
	beq _08096F2E
	movs r0, #4
	orrs r6, r0
	strb r6, [r4]
	b _08096F84
_08096F54:
	movs r2, #3
	ands r2, r6
	cmp r2, #2
	bne _08096F72
	ldrb r0, [r4, #5]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #6]
	cmp r5, r0
	bhi _08096F84
	adds r5, r0, #0
	beq _08096F46
	subs r6, #1
	strb r6, [r4]
	b _08096F84
_08096F72:
	cmp r2, #3
	bne _08096F84
_08096F76:
	ldrb r0, [r4, #4]
	adds r5, r5, r0
	cmp r5, #0xff
	blo _08096F84
	movs r5, #0xff
	subs r6, #1
	strb r6, [r4]
_08096F84:
	strb r5, [r4, #9]
	ldr r0, [sp, #0x18]
	ldrb r0, [r0, #7]
	adds r0, #1
	muls r0, r5, r0
	lsrs r5, r0, #4
	ldrb r0, [r4, #2]
	muls r0, r5, r0
	lsrs r0, r0, #8
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #3]
	muls r0, r5, r0
	lsrs r0, r0, #8
	strb r0, [r4, #0xb]
	movs r0, #0x10
	ands r0, r6
	str r0, [sp, #0x10]
	beq _08096FB8
	adds r0, r3, #0
	adds r0, #0x10
	ldr r1, [r3, #8]
	adds r0, r0, r1
	str r0, [sp, #0xc]
	ldr r0, [r3, #0xc]
	subs r0, r0, r1
	str r0, [sp, #0x10]
_08096FB8:
	ldr r5, [sp, #8]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x28]
	add r0, pc, #0x4 @ =sub_08096FC4
	bx r0
	.align 2, 0

	arm_func_start sub_08096FC4
sub_08096FC4: @ 0x08096FC4
	str r8, [sp]
	ldrb sl, [r4, #0xa]
	ldrb fp, [r4, #0xb]
	lsl sl, sl, #0x10
	lsl fp, fp, #0x10
	ldrb r0, [r4, #1]
	tst r0, #8
	beq _08097104
_08096FE4:
	cmp r2, #4
	ble _08097054
	subs r2, r2, r8
	movgt lr, #0
	bgt _08097010
	mov lr, r8
	add r2, r2, r8
	sub r8, r2, #4
	sub lr, lr, r8
	ands r2, r2, #3
	moveq r2, #4
_08097010:
	ldr r6, [r5]
	ldr r7, [r5, #0x630]
_08097018:
	ldrsb r0, [r3], #1
	mul r1, sl, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6, ror #8
	mul r1, fp, r0
	bic r1, r1, #0xff0000
	add r7, r1, r7, ror #8
	adds r5, r5, #0x40000000
	blo _08097018
	str r7, [r5, #0x630]
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _08097010
	adds r8, r8, lr
	beq _08097198
_08097054:
	ldr r6, [r5]
	ldr r7, [r5, #0x630]
_0809705C:
	ldrsb r0, [r3], #1
	mul r1, sl, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6, ror #8
	mul r1, fp, r0
	bic r1, r1, #0xff0000
	add r7, r1, r7, ror #8
	subs r2, r2, #1
	beq _080970CC
_08097080:
	adds r5, r5, #0x40000000
	blo _0809705C
	str r7, [r5, #0x630]
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _08096FE4
	b _08097198
_0809709C:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _080970C0
	ldr r3, [sp, #0x14]
	rsb sb, r2, #0
_080970B0:
	adds r2, r0, r2
	bgt _08097168
	sub sb, sb, r0
	b _080970B0
_080970C0:
	pop {r4, ip}
	mov r2, #0
	b _080970DC
_080970CC:
	ldr r2, [sp, #0x10]
	cmp r2, #0
	ldrne r3, [sp, #0xc]
	bne _08097080
_080970DC:
	strb r2, [r4]
	lsr r0, r5, #0x1e
	bic r5, r5, #0xc0000000
	rsb r0, r0, #3
	lsl r0, r0, #3
	ror r6, r6, r0
	ror r7, r7, r0
	str r7, [r5, #0x630]
	str r6, [r5], #4
	b _080971A0
_08097104:
	push {r4, ip}
	ldr lr, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	mul r4, ip, r1
	ldrsb r0, [r3]
	ldrsb r1, [r3, #1]!
	sub r1, r1, r0
_08097120:
	ldr r6, [r5]
	ldr r7, [r5, #0x630]
_08097128:
	mul sb, lr, r1
	add sb, r0, sb, asr #23
	mul ip, sl, sb
	bic ip, ip, #0xff0000
	add r6, ip, r6, ror #8
	mul ip, fp, sb
	bic ip, ip, #0xff0000
	add r7, ip, r7, ror #8
	add lr, lr, r4
	lsrs sb, lr, #0x17
	beq _08097174
	bic lr, lr, #0x3f800000
	subs r2, r2, sb
	ble _0809709C
	subs sb, sb, #1
	addeq r0, r0, r1
_08097168:
	ldrsbne r0, [r3, sb]!
	ldrsb r1, [r3, #1]!
	sub r1, r1, r0
_08097174:
	adds r5, r5, #0x40000000
	blo _08097128
	str r7, [r5, #0x630]
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _08097120
	sub r3, r3, #1
	pop {r4, ip}
	str lr, [r4, #0x1c]
_08097198:
	str r2, [r4, #0x18]
	str r3, [r4, #0x28]
_080971A0:
	ldr r8, [sp]
	add r0, pc, #0x1 @ =sub_080971AC
	bx r0

	thumb_func_start sub_080971AC
sub_080971AC: @ 0x080971AC
	ldr r0, [sp, #4]
	subs r0, #1
	ble _080971B6
	adds r4, #0x40
	b _08096EC4
_080971B6:
	ldr r0, [sp, #0x18]
	ldr r3, _080971CC @ =0x68736D53
	str r3, [r0]
	add sp, #0x1c
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	non_word_aligned_thumb_func_start sub_80971CA
sub_80971CA: @ 0x080971CA
	bx r3
	.align 2, 0
_080971CC: .4byte 0x68736D53

	thumb_func_start SoundMainBTM
SoundMainBTM: @ 0x080971D0
	mov ip, r4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	movs r4, #0
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	mov r4, ip
	bx lr
	.align 2, 0

	thumb_func_start RealClearChain
RealClearChain: @ 0x080971E8
	ldr r3, [r0, #0x2c]
	cmp r3, #0
	beq _08097206
	ldr r1, [r0, #0x34]
	ldr r2, [r0, #0x30]
	cmp r2, #0
	beq _080971FA
	str r1, [r2, #0x34]
	b _080971FC
_080971FA:
	str r1, [r3, #0x20]
_080971FC:
	cmp r1, #0
	beq _08097202
	str r2, [r1, #0x30]
_08097202:
	movs r1, #0
	str r1, [r0, #0x2c]
_08097206:
	bx lr

    thumb_func_start ply_fine
ply_fine:
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _0809722C
_08097212:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _08097220
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
_08097220:
	adds r0, r4, #0
	bl RealClearChain
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _08097212
_0809722C:
	movs r0, #0
	strb r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start MPlayJumpTableCopy
MPlayJumpTableCopy: @ 0x08097238
	mov ip, lr
	movs r1, #0x24
	ldr r2, _08097268 @ =gMPlayJumpTableTemplate
_0809723E:
	ldr r3, [r2]
	bl _08097252
	stm r0!, {r3}
	adds r2, #4
	subs r1, #1
	bgt _0809723E
	bx ip
	.align 2, 0

	thumb_func_start sub_8097250
sub_8097250: @ 0x08097250
	ldrb r3, [r2]
_08097252:
	push {r0}
	lsrs r0, r2, #0x19
	bne _08097264
	ldr r0, _08097268 @ =gMPlayJumpTableTemplate
	cmp r2, r0
	blo _08097262
	lsrs r0, r2, #0xe
	beq _08097264
_08097262:
	movs r3, #0
_08097264:
	pop {r0}
	bx lr
	.align 2, 0
_08097268: .4byte gMPlayJumpTableTemplate

	thumb_func_start sub_809726C
sub_809726C: @ 0x0809726C
	ldr r2, [r1, #0x40]

	non_word_aligned_thumb_func_start sub_809726E
sub_809726E: @ 0x0809726E
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	b _08097252
	.align 2, 0

    thumb_func_start ply_goto
ply_goto:
	push {lr}
_0809727A:
	ldr r2, [r1, #0x40]
	ldrb r0, [r2, #3]
	lsls r0, r0, #8
	ldrb r3, [r2, #2]
	orrs r0, r3
	lsls r0, r0, #8
	ldrb r3, [r2, #1]
	orrs r0, r3
	lsls r0, r0, #8
	bl sub_8097250
	orrs r0, r3
	str r0, [r1, #0x40]
	pop {r0}
	bx r0

	thumb_func_start ply_patt
ply_patt: @ 0x08097298
	ldrb r2, [r1, #2]
	cmp r2, #3
	bhs _080972B0
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r1, #0x40]
	adds r2, #4
	str r2, [r3, #0x44]
	ldrb r2, [r1, #2]
	adds r2, #1
	strb r2, [r1, #2]
	b ply_goto
_080972B0:
	b ply_fine
	.align 2, 0

	thumb_func_start ply_pend
ply_pend: @ 0x080972B4
	ldrb r2, [r1, #2]
	cmp r2, #0
	beq _080972C6
	subs r2, #1
	strb r2, [r1, #2]
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r3, #0x44]
	str r2, [r1, #0x40]
_080972C6:
	bx lr

	thumb_func_start ply_rept
ply_rept: @ 0x080972C8
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0
	bne _080972D8
	adds r2, #1
	str r2, [r1, #0x40]
	b _0809727A
_080972D8:
	ldrb r3, [r1, #3]
	adds r3, #1
	strb r3, [r1, #3]
	mov ip, r3
	bl sub_809726C
	cmp ip, r3
	bhs _080972EA
	b _0809727A
_080972EA:
	movs r3, #0
	strb r3, [r1, #3]
	adds r2, #5
	str r2, [r1, #0x40]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start ply_prio
ply_prio: @ 0x080972F8
	mov ip, lr
	bl sub_809726C
	strb r3, [r1, #0x1d]
	bx ip
	.align 2, 0

	thumb_func_start ply_tempo
ply_tempo: @ 0x08097304
	mov ip, lr
	bl sub_809726C
	lsls r3, r3, #1
	strh r3, [r0, #0x1c]
	ldrh r2, [r0, #0x1e]
	muls r3, r2, r3
	lsrs r3, r3, #8
	strh r3, [r0, #0x20]
	bx ip

	thumb_func_start ply_keysh
ply_keysh: @ 0x08097318
	mov ip, lr
	bl sub_809726C
	strb r3, [r1, #0xa]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start ply_voice
ply_voice: @ 0x0809732C
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #2
	ldr r3, [r0, #0x30]
	adds r2, r2, r3
	ldr r3, [r2]
	bl _08097252
	str r3, [r1, #0x24]
	ldr r3, [r2, #4]
	bl _08097252
	str r3, [r1, #0x28]
	ldr r3, [r2, #8]
	bl _08097252
	str r3, [r1, #0x2c]
	bx ip
	.align 2, 0

	thumb_func_start ply_vol
ply_vol: @ 0x0809735C
	mov ip, lr
	bl sub_809726C
	strb r3, [r1, #0x12]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start ply_pan
ply_pan: @ 0x08097370
	mov ip, lr
	bl sub_809726C
	subs r3, #0x40
	strb r3, [r1, #0x14]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start ply_bend
ply_bend: @ 0x08097384
	mov ip, lr
	bl sub_809726C
	subs r3, #0x40
	strb r3, [r1, #0xe]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start ply_bendr
ply_bendr: @ 0x08097398
	mov ip, lr
	bl sub_809726C
	strb r3, [r1, #0xf]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start ply_lfodl
ply_lfodl: @ 0x080973AC
	mov ip, lr
	bl sub_809726C
	strb r3, [r1, #0x1b]
	bx ip
	.align 2, 0

	thumb_func_start ply_modt
ply_modt: @ 0x080973B8
	mov ip, lr
	bl sub_809726C
	ldrb r0, [r1, #0x18]
	cmp r0, r3
	beq _080973CE
	strb r3, [r1, #0x18]
	ldrb r3, [r1]
	movs r2, #0xf
	orrs r3, r2
	strb r3, [r1]
_080973CE:
	bx ip

	thumb_func_start ply_tune
ply_tune: @ 0x080973D0
	mov ip, lr
	bl sub_809726C
	subs r3, #0x40
	strb r3, [r1, #0xc]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start ply_port
ply_port: @ 0x080973E4
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	ldr r0, _080973F8 @ =0x04000060
	adds r0, r0, r3
	bl sub_809726E
	strb r3, [r0]
	bx ip
	.align 2, 0
_080973F8: .4byte 0x04000060

	thumb_func_start sub_80973FC
sub_80973FC: @ 0x080973FC
	ldr r0, _080976A8 @ =gUnknown_03007FF0
	ldr r0, [r0]
	ldr r2, _080976AC @ =0x68736D53
	ldr r3, [r0]
	subs r3, r3, r2
	cmp r3, #1
	bhi _0809743C
	ldrb r1, [r0, #4]
	subs r1, #1
	strb r1, [r0, #4]
	bgt _0809743C
	ldrb r1, [r0, #0xb]
	strb r1, [r0, #4]
	ldr r2, _08097440 @ =0x040000BC
	ldr r1, [r2, #8]
	lsls r1, r1, #7
	blo _08097422
	ldr r1, _08097444 @ =0x84400004
	str r1, [r2, #8]
_08097422:
	ldr r1, [r2, #0x14]
	lsls r1, r1, #7
	blo _0809742C
	ldr r1, _08097444 @ =0x84400004
	str r1, [r2, #0x14]
_0809742C:
	movs r1, #4
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
	strh r1, [r2, #0x16]
	movs r1, #0xb6
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
	strh r1, [r2, #0x16]
_0809743C:
	bx lr
	.align 2, 0
_08097440: .4byte 0x040000BC
_08097444: .4byte 0x84400004

	thumb_func_start MPlayMain
MPlayMain: @ 0x08097448
	ldr r2, _080976AC @ =0x68736D53
	ldr r3, [r0, #0x34]
	cmp r2, r3
	beq _08097452
	bx lr
_08097452:
	adds r3, #1
	str r3, [r0, #0x34]
	push {r0, lr}
	ldr r3, [r0, #0x38]
	cmp r3, #0
	beq _08097464
	ldr r0, [r0, #0x3c]
	bl sub_80976A0
_08097464:
	pop {r0}
	push {r4, r5, r6, r7}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	adds r7, r0, #0
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _0809747C
	b _08097690
_0809747C:
	ldr r0, _080976A8 @ =gUnknown_03007FF0
	ldr r0, [r0]
	mov r8, r0
	adds r0, r7, #0
	bl FadeOutBody
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _08097490
	b _08097690
_08097490:
	ldrh r0, [r7, #0x22]
	ldrh r1, [r7, #0x20]
	adds r0, r0, r1
	b _080975E0
_08097498:
	ldrb r6, [r7, #8]
	ldr r5, [r7, #0x2c]
	movs r3, #1
	movs r4, #0
_080974A0:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	bne _080974AA
	b _080975BC
_080974AA:
	mov sl, r3
	orrs r4, r3
	mov fp, r4
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _080974DE
_080974B6:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _080974D2
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _080974D8
	subs r0, #1
	strb r0, [r4, #0x10]
	bne _080974D8
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
	b _080974D8
_080974D2:
	adds r0, r4, #0
	bl ClearChain
_080974D8:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _080974B6
_080974DE:
	ldrb r3, [r5]
	movs r0, #0x40
	tst r0, r3
	beq _0809755C
	adds r0, r5, #0
	bl Clear64byte
	movs r0, #0x80
	strb r0, [r5]
	movs r0, #2
	strb r0, [r5, #0xf]
	movs r0, #0x40
	strb r0, [r5, #0x13]
	movs r0, #0x16
	strb r0, [r5, #0x19]
	movs r0, #1
	adds r1, r5, #6
	strb r0, [r1, #0x1e]
	b _0809755C
_08097504:
	ldr r2, [r5, #0x40]
	ldrb r1, [r2]
	cmp r1, #0x80
	bhs _08097510
	ldrb r1, [r5, #7]
	b _0809751A
_08097510:
	adds r2, #1
	str r2, [r5, #0x40]
	cmp r1, #0xbd
	blo _0809751A
	strb r1, [r5, #7]
_0809751A:
	cmp r1, #0xcf
	blo _08097530
	mov r0, r8
	ldr r3, [r0, #0x38]
	adds r0, r1, #0
	subs r0, #0xcf
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_80976A0
	b _0809755C
_08097530:
	cmp r1, #0xb0
	bls _08097552
	adds r0, r1, #0
	subs r0, #0xb1
	strb r0, [r7, #0xa]
	mov r3, r8
	ldr r3, [r3, #0x34]
	lsls r0, r0, #2
	ldr r3, [r3, r0]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_80976A0
	ldrb r0, [r5]
	cmp r0, #0
	beq _080975B8
	b _0809755C
_08097552:
	ldr r0, _080976A4 @ =gClockTable
	subs r1, #0x80
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r5, #1]
_0809755C:
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _08097504
	subs r0, #1
	strb r0, [r5, #1]
	ldrb r1, [r5, #0x19]
	cmp r1, #0
	beq _080975B8
	ldrb r0, [r5, #0x17]
	cmp r0, #0
	beq _080975B8
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _0809757E
	subs r0, #1
	strb r0, [r5, #0x1c]
	b _080975B8
_0809757E:
	ldrb r0, [r5, #0x1a]
	adds r0, r0, r1
	strb r0, [r5, #0x1a]
	adds r1, r0, #0
	subs r0, #0x40
	lsls r0, r0, #0x18
	bpl _08097592
	lsls r2, r1, #0x18
	asrs r2, r2, #0x18
	b _08097596
_08097592:
	movs r0, #0x80
	subs r2, r0, r1
_08097596:
	ldrb r0, [r5, #0x17]
	muls r0, r2, r0
	asrs r2, r0, #6
	ldrb r0, [r5, #0x16]
	eors r0, r2
	lsls r0, r0, #0x18
	beq _080975B8
	strb r2, [r5, #0x16]
	ldrb r0, [r5]
	ldrb r1, [r5, #0x18]
	cmp r1, #0
	bne _080975B2
	movs r1, #0xc
	b _080975B4
_080975B2:
	movs r1, #3
_080975B4:
	orrs r0, r1
	strb r0, [r5]
_080975B8:
	mov r3, sl
	mov r4, fp
_080975BC:
	subs r6, #1
	ble _080975C8
	movs r0, #0x50
	adds r5, r5, r0
	lsls r3, r3, #1
	b _080974A0
_080975C8:
	ldr r0, [r7, #0xc]
	adds r0, #1
	str r0, [r7, #0xc]
	cmp r4, #0
	bne _080975DA
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	b _08097690
_080975DA:
	str r4, [r7, #4]
	ldrh r0, [r7, #0x22]
	subs r0, #0x96
_080975E0:
	strh r0, [r7, #0x22]
	cmp r0, #0x96
	blo _080975E8
	b _08097498
_080975E8:
	ldrb r2, [r7, #8]
	ldr r5, [r7, #0x2c]
_080975EC:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	beq _08097686
	movs r1, #0xf
	tst r1, r0
	beq _08097686
	mov sb, r2
	adds r0, r7, #0
	adds r1, r5, #0
	bl TrkVolPitSet
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _0809767C
_0809760A:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	bne _0809761A
	adds r0, r4, #0
	bl ClearChain
	b _08097676
_0809761A:
	ldrb r0, [r4, #1]
	movs r6, #7
	ands r6, r0
	ldrb r3, [r5]
	movs r0, #3
	tst r0, r3
	beq _08097638
	bl sub_80976F4
	cmp r6, #0
	beq _08097638
	ldrb r0, [r4, #0x1d]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
_08097638:
	ldrb r3, [r5]
	movs r0, #0xc
	tst r0, r3
	beq _08097676
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r2, r1, r0
	bpl _0809764C
	movs r2, #0
_0809764C:
	cmp r6, #0
	beq _0809766A
	mov r0, r8
	ldr r3, [r0, #0x30]
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	adds r0, r6, #0
	bl sub_80976A0
	str r0, [r4, #0x20]
	ldrb r0, [r4, #0x1d]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #0x1d]
	b _08097676
_0809766A:
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	ldr r0, [r4, #0x24]
	bl MidiKeyToFreq
	str r0, [r4, #0x20]
_08097676:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _0809760A
_0809767C:
	ldrb r0, [r5]
	movs r1, #0xf0
	ands r0, r1
	strb r0, [r5]
	mov r2, sb
_08097686:
	subs r2, #1
	ble _08097690
	movs r0, #0x50
	adds r5, r5, r0
	bgt _080975EC
_08097690:
	ldr r0, _080976AC @ =0x68736D53
	str r0, [r7, #0x34]
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	thumb_func_start sub_80976A0
sub_80976A0: @ 0x080976A0
	bx r3
	.align 2, 0
_080976A4: .4byte gClockTable
_080976A8: .4byte gUnknown_03007FF0
_080976AC: .4byte 0x68736D53

	thumb_func_start TrackStop
TrackStop: @ 0x080976B0
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldrb r1, [r5]
	movs r0, #0x80
	tst r0, r1
	beq _080976E8
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _080976E6
	movs r6, #0
_080976C4:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080976DE
	ldrb r0, [r4, #1]
	movs r3, #7
	ands r0, r3
	beq _080976DC
	ldr r3, _080976F0 @ =gUnknown_03007FF0
	ldr r3, [r3]
	ldr r3, [r3, #0x2c]
	bl sub_80976A0
_080976DC:
	strb r6, [r4]
_080976DE:
	str r6, [r4, #0x2c]
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _080976C4
_080976E6:
	str r4, [r5, #0x20]
_080976E8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080976F0: .4byte gUnknown_03007FF0

	thumb_func_start sub_80976F4
sub_80976F4: @ 0x080976F4
	ldrb r1, [r4, #0x12]
	movs r0, #0x14
	ldrsb r2, [r4, r0]
	movs r3, #0x80
	adds r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x10]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _0809770C
	movs r0, #0xff
_0809770C:
	strb r0, [r4, #2]
	movs r3, #0x7f
	subs r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x11]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _08097720
	movs r0, #0xff
_08097720:
	strb r0, [r4, #3]
	bx lr

	thumb_func_start ply_note
ply_note: @ 0x08097724
	push {r4, r5, r6, r7, lr}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	sub sp, #0x18
	str r1, [sp]
	adds r5, r2, #0
	ldr r1, _0809791C @ =gUnknown_03007FF0
	ldr r1, [r1]
	str r1, [sp, #4]
	ldr r1, _08097920 @ =gClockTable
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #4]
	ldr r3, [r5, #0x40]
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _0809776A
	strb r0, [r5, #5]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _08097768
	strb r0, [r5, #6]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _08097768
	ldrb r1, [r5, #4]
	adds r1, r1, r0
	strb r1, [r5, #4]
	adds r3, #1
_08097768:
	str r3, [r5, #0x40]
_0809776A:
	movs r0, #0
	str r0, [sp, #0x14]
	adds r4, r5, #0
	adds r4, #0x24
	ldrb r2, [r4]
	movs r0, #0xc0
	tst r0, r2
	beq _080977BC
	ldrb r3, [r5, #5]
	movs r0, #0x40
	tst r0, r2
	beq _0809778A
	ldr r1, [r5, #0x2c]
	adds r1, r1, r3
	ldrb r0, [r1]
	b _0809778C
_0809778A:
	adds r0, r3, #0
_0809778C:
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r5, #0x28]
	adds r1, r1, r0
	mov sb, r1
	mov r6, sb
	ldrb r1, [r6]
	movs r0, #0xc0
	tst r0, r1
	beq _080977A4
	b _0809790A
_080977A4:
	movs r0, #0x80
	tst r0, r2
	beq _080977C0
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	beq _080977B8
	subs r1, #0xc0
	lsls r1, r1, #1
	str r1, [sp, #0x14]
_080977B8:
	ldrb r3, [r6, #1]
	b _080977C0
_080977BC:
	mov sb, r4
	ldrb r3, [r5, #5]
_080977C0:
	str r3, [sp, #8]
	ldr r6, [sp]
	ldrb r1, [r6, #9]
	ldrb r0, [r5, #0x1d]
	adds r0, r0, r1
	cmp r0, #0xff
	bls _080977D0
	movs r0, #0xff
_080977D0:
	str r0, [sp, #0x10]
	mov r6, sb
	ldrb r0, [r6]
	movs r6, #7
	ands r6, r0
	str r6, [sp, #0xc]
	beq _08097810
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
	cmp r4, #0
	bne _080977E8
	b _0809790A
_080977E8:
	subs r6, #1
	lsls r0, r6, #6
	adds r4, r4, r0
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _08097864
	movs r0, #0x40
	tst r0, r1
	bne _08097864
	ldrb r1, [r4, #0x13]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	blo _08097864
	beq _08097808
	b _0809790A
_08097808:
	ldr r0, [r4, #0x2c]
	cmp r0, r5
	bhs _08097864
	b _0809790A
_08097810:
	ldr r6, [sp, #0x10]
	adds r7, r5, #0
	movs r2, #0
	mov r8, r2
	ldr r4, [sp, #4]
	ldrb r3, [r4, #6]
	adds r4, #0x50
_0809781E:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _08097864
	movs r0, #0x40
	tst r0, r1
	beq _08097838
	cmp r2, #0
	bne _0809783C
	adds r2, #1
	ldrb r6, [r4, #0x13]
	ldr r7, [r4, #0x2c]
	b _08097856
_08097838:
	cmp r2, #0
	bne _08097858
_0809783C:
	ldrb r0, [r4, #0x13]
	cmp r0, r6
	bhs _08097848
	adds r6, r0, #0
	ldr r7, [r4, #0x2c]
	b _08097856
_08097848:
	bhi _08097858
	ldr r0, [r4, #0x2c]
	cmp r0, r7
	bls _08097854
	adds r7, r0, #0
	b _08097856
_08097854:
	blo _08097858
_08097856:
	mov r8, r4
_08097858:
	adds r4, #0x40
	subs r3, #1
	bgt _0809781E
	mov r4, r8
	cmp r4, #0
	beq _0809790A
_08097864:
	adds r0, r4, #0
	bl ClearChain
	movs r1, #0
	str r1, [r4, #0x30]
	ldr r3, [r5, #0x20]
	str r3, [r4, #0x34]
	cmp r3, #0
	beq _08097878
	str r4, [r3, #0x30]
_08097878:
	str r4, [r5, #0x20]
	str r5, [r4, #0x2c]
	ldrb r0, [r5, #0x1b]
	strb r0, [r5, #0x1c]
	cmp r0, r1
	beq _0809788A
	adds r1, r5, #0
	bl sub_8097964
_0809788A:
	ldr r0, [sp]
	adds r1, r5, #0
	bl TrkVolPitSet
	ldr r0, [r5, #4]
	str r0, [r4, #0x10]
	ldr r0, [sp, #0x10]
	strb r0, [r4, #0x13]
	ldr r0, [sp, #8]
	strb r0, [r4, #8]
	ldr r0, [sp, #0x14]
	strb r0, [r4, #0x14]
	mov r6, sb
	ldrb r0, [r6]
	strb r0, [r4, #1]
	ldr r7, [r6, #4]
	str r7, [r4, #0x24]
	ldr r0, [r6, #8]
	str r0, [r4, #4]
	ldrh r0, [r5, #0x1e]
	strh r0, [r4, #0xc]
	bl sub_80976F4
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r3, r1, r0
	bpl _080978C4
	movs r3, #0
_080978C4:
	ldr r6, [sp, #0xc]
	cmp r6, #0
	beq _080978F2
	mov r6, sb
	ldrb r0, [r6, #2]
	strb r0, [r4, #0x1e]
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	bne _080978DE
	movs r0, #0x70
	tst r0, r1
	bne _080978E0
_080978DE:
	movs r1, #8
_080978E0:
	strb r1, [r4, #0x1f]
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #4]
	ldr r3, [r3, #0x30]
	bl sub_80976A0
	b _080978FC
_080978F2:
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	adds r0, r7, #0
	bl MidiKeyToFreq
_080978FC:
	str r0, [r4, #0x20]
	movs r0, #0x80
	strb r0, [r4]
	ldrb r1, [r5]
	movs r0, #0xf0
	ands r0, r1
	strb r0, [r5]
_0809790A:
	add sp, #0x18
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r0}
	bx r0
	.align 2, 0
_0809791C: .4byte gUnknown_03007FF0
_08097920: .4byte gClockTable

	thumb_func_start ply_endtie
ply_endtie: @ 0x08097924
	push {r4, r5}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0x80
	bhs _08097936
	strb r3, [r1, #5]
	adds r2, #1
	str r2, [r1, #0x40]
	b _08097938
_08097936:
	ldrb r3, [r1, #5]
_08097938:
	ldr r1, [r1, #0x20]
	cmp r1, #0
	beq _08097960
	movs r4, #0x83
	movs r5, #0x40
_08097942:
	ldrb r2, [r1]
	tst r2, r4
	beq _0809795A
	tst r2, r5
	bne _0809795A
	ldrb r0, [r1, #0x11]
	cmp r0, r3
	bne _0809795A
	movs r0, #0x40
	orrs r2, r0
	strb r2, [r1]
	b _08097960
_0809795A:
	ldr r1, [r1, #0x34]
	cmp r1, #0
	bne _08097942
_08097960:
	pop {r4, r5}
	bx lr

	thumb_func_start sub_8097964
sub_8097964: @ 0x08097964
	movs r2, #0
	strb r2, [r1, #0x16]
	strb r2, [r1, #0x1a]
	ldrb r2, [r1, #0x18]
	cmp r2, #0
	bne _08097974
	movs r2, #0xc
	b _08097976
_08097974:
	movs r2, #3
_08097976:
	ldrb r3, [r1]
	orrs r3, r2
	strb r3, [r1]
	bx lr
	.align 2, 0

	thumb_func_start sub_8097980
sub_8097980: @ 0x08097980
	ldr r2, [r1, #0x40]
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	bx lr
	.align 2, 0

	thumb_func_start ply_lfos
ply_lfos: @ 0x0809798C
	mov ip, lr
	bl sub_8097980
	strb r3, [r1, #0x19]
	cmp r3, #0
	bne _0809799C
	bl sub_8097964
_0809799C:
	bx ip
	.align 2, 0

	thumb_func_start ply_mod
ply_mod: @ 0x080979A0
	mov ip, lr
	bl sub_8097980
	strb r3, [r1, #0x17]
	cmp r3, #0
	bne _080979B0
	bl sub_8097964
_080979B0:
	bx ip
	.align 2, 0
