.include "constants/constants.inc"

.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _0807BE4C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r0, [sp, #0x10]
	ldr r0, _0807BE50 @ =0x0300000C
	adds r0, r0, r1
	mov sl, r0
	ldr r1, [sp, #0x10]
	ldr r1, [r1]
	str r1, [sp, #0xc]
	ldr r3, [sp, #0x10]
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
	ldr r3, _0807BE54 @ =gCamera
	ldrh r0, [r3]
	lsrs r4, r2, #0x10
	str r4, [sp]
	asrs r2, r2, #0x10
	subs r2, r2, r0
	mov r0, sl
	strh r2, [r0, #0x16]
	ldrh r0, [r3, #2]
	lsrs r2, r1, #0x10
	str r2, [sp, #4]
	asrs r1, r1, #0x10
	subs r1, r1, r0
	mov r3, sl
	strh r1, [r3, #0x18]
	movs r6, #0
	ldr r4, _0807BE58 @ =gPartner
	ldr r5, _0807BE5C @ =gPlayer

MainLoop_Task_Flipper: @ 0x0807BE28
	mov r1, sl
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0807BE68
	ldr r2, [sp]
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	mov sb, r0
	cmp r6, #0
	beq _0807BE60
	ldr r0, [r4]
	asrs r0, r0, #8
	subs r0, r1, r0
	b _0807BE7A
	.align 2, 0
_0807BE4C: .4byte gCurTask
_0807BE50: .4byte 0x0300000C
_0807BE54: .4byte gCamera
_0807BE58: .4byte gPartner
_0807BE5C: .4byte gPlayer
_0807BE60:
	ldr r0, [r5]
	asrs r0, r0, #8
	subs r0, r1, r0
	b _0807BE8E
_0807BE68:
	ldr r2, [sp]
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	mov sb, r0
	cmp r6, #0
	beq _0807BE88
	ldr r0, [r4]
	asrs r0, r0, #8
	subs r0, r0, r1
_0807BE7A:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _0807BE84 @ =gPlayer
	mov ip, r3
	b _0807BE96
	.align 2, 0
_0807BE84: .4byte gPlayer
_0807BE88:
	ldr r0, [r5]
	asrs r0, r0, #8
	subs r0, r0, r1
_0807BE8E:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0807BED8 @ =gPlayer
	mov ip, r1
_0807BE96:
	lsls r0, r0, #0x10
	asrs r1, r0, #0x11
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #8]
	mov r2, sb
	asrs r3, r2, #0x10
	ldr r2, [sp, #4]
	lsls r1, r2, #0x10
	asrs r2, r1, #0x10
	mov r7, ip
	mov r8, r1
	str r0, [sp, #0x14]
	cmp r6, #0
	beq _0807BEB6
	ldr r7, _0807BEDC @ =gPartner
_0807BEB6:
	mov r0, sl
	adds r1, r3, #0
	adds r3, r7, #0
	bl Coll_Player_Entity_Intersection
	cmp r0, #0
	bne _0807BEC8
	bl _0807C9CE
_0807BEC8:
	cmp r6, #0
	beq _0807BEE4
	ldr r3, _0807BEE0 @ =gPartner + 0x59
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #2
	beq _0807BEF0
	b _0807C0F4
	.align 2, 0
_0807BED8: .4byte gPlayer
_0807BEDC: .4byte gPartner
_0807BEE0: .4byte gPartner + 0x59
_0807BEE4:
	ldr r1, _0807BEFC @ =gPlayer + 0x59
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #2
	beq _0807BEF0
	b _0807C0F4
_0807BEF0:
	cmp r6, #0
	beq _0807BF04
	ldr r2, _0807BF00 @ =gPartner + 0x40
	movs r0, #0
	ldrsb r0, [r2, r0]
	b _0807BF0A
	.align 2, 0
_0807BEFC: .4byte gPlayer + 0x59
_0807BF00: .4byte gPartner + 0x40
_0807BF04:
	ldr r3, _0807BF1C @ =gPlayer + 0x40
	movs r0, #0
	ldrsb r0, [r3, r0]
_0807BF0A:
	cmp r0, #0x46
	beq _0807BFB4
	cmp r6, #0
	beq _0807BF24
	ldr r1, _0807BF20 @ =gPartner + 0x40
	movs r0, #0
	ldrsb r0, [r1, r0]
	b _0807BF2A
	.align 2, 0
_0807BF1C: .4byte gPlayer + 0x40
_0807BF20: .4byte gPartner + 0x40
_0807BF24:
	ldr r2, _0807BF3C @ =gPlayer + 0x40
	movs r0, #0
	ldrsb r0, [r2, r0]
_0807BF2A:
	cmp r0, #0x47
	beq _0807BFB4
	cmp r6, #0
	beq _0807BF44
	ldr r3, _0807BF40 @ =gPartner + 0x40
	movs r0, #0
	ldrsb r0, [r3, r0]
	b _0807BF4A
	.align 2, 0
_0807BF3C: .4byte gPlayer + 0x40
_0807BF40: .4byte gPartner + 0x40
_0807BF44:
	ldr r1, _0807BF5C @ =gPlayer + 0x40
	movs r0, #0
	ldrsb r0, [r1, r0]
_0807BF4A:
	cmp r0, #0x48
	beq _0807BFB4
	cmp r6, #0
	beq _0807BF64
	ldr r2, _0807BF60 @ =gPartner + 0x40
	movs r0, #0
	ldrsb r0, [r2, r0]
	b _0807BF6A
	.align 2, 0
_0807BF5C: .4byte gPlayer + 0x40
_0807BF60: .4byte gPartner + 0x40
_0807BF64:
	ldr r3, _0807BF7C @ =gPlayer + 0x40
	movs r0, #0
	ldrsb r0, [r3, r0]
_0807BF6A:
	cmp r0, #0x49
	beq _0807BFB4
	cmp r6, #0
	beq _0807BF84
	ldr r1, _0807BF80 @ =gPartner + 0x40
	movs r0, #0
	ldrsb r0, [r1, r0]
	b _0807BF8A
	.align 2, 0
_0807BF7C: .4byte gPlayer + 0x40
_0807BF80: .4byte gPartner + 0x40
_0807BF84:
	ldr r2, _0807BFA0 @ =gPlayer + 0x40
	movs r0, #0
	ldrsb r0, [r2, r0]
_0807BF8A:
	cmp r0, #0x4a
	beq _0807BFB4
	cmp r6, #0
	beq _0807BFA8
	ldr r3, _0807BFA4 @ =gPartner + 0x40
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0x4b
	beq _0807BFB4
	b _0807C0F4
	.align 2, 0
_0807BFA0: .4byte gPlayer + 0x40
_0807BFA4: .4byte gPartner + 0x40
_0807BFA8:
	ldr r1, _0807BFC8 @ =gPlayer + 0x40
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0x4b
	beq _0807BFB4
	b _0807C0F4
_0807BFB4:
	cmp r6, #0
	beq _0807BFD0
	ldr r2, _0807BFCC @ =gPartner + 0x40
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0x49
	bne _0807BFDE
	bl _0807CA5A
	.align 2, 0
_0807BFC8: .4byte gPlayer + 0x40
_0807BFCC: .4byte gPartner + 0x40
_0807BFD0:
	ldr r3, _0807C008 @ =gPlayer + 0x40
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0x49
	bne _0807BFDE
	bl _0807CA5A
_0807BFDE:
	mov r0, sb
	asrs r1, r0, #0x10
	mov r3, r8
	asrs r2, r3, #0x10
	ldr r3, _0807C00C @ =gPlayer
	cmp r6, #0
	beq _0807BFEE
	ldr r3, _0807C010 @ =gPartner
_0807BFEE:
	mov r0, sl
	bl sub_80096B0
	cmp r6, #0
	beq _0807C014
	ldr r0, [r4, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0807C022
	bl _0807CA5A
	.align 2, 0
_0807C008: .4byte gPlayer + 0x40
_0807C00C: .4byte gPlayer
_0807C010: .4byte gPartner
_0807C014:
	ldr r0, [r5, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0807C022
	bl _0807CA5A
_0807C022:
	cmp r6, #0
	beq _0807C030
	ldr r0, [r4, #0x28]
	cmp r0, sl
	beq _0807C03A
	bl _0807CA5A
_0807C030:
	ldr r0, [r5, #0x28]
	cmp r0, sl
	beq _0807C03A
	bl _0807CA5A
_0807C03A:
	ldr r0, _0807C054 @ =gPlayer
	cmp r6, #0
	beq _0807C042
	ldr r0, _0807C058 @ =gPartner
_0807C042:
	bl Player_TransitionCancelFlyingAndBoost
	cmp r6, #0
	beq _0807C060
	movs r1, #5
	ldr r0, _0807C05C @ =gPartner + 0x40
	strb r1, [r0]
	b _0807C066
	.align 2, 0
_0807C054: .4byte gPlayer
_0807C058: .4byte gPartner
_0807C05C: .4byte gPartner + 0x40
_0807C060:
	movs r3, #5
	ldr r2, _0807C078 @ =gPlayer + 0x40
	strb r3, [r2]
_0807C066:
	cmp r6, #0
	beq _0807C07C
	ldr r0, [r4, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807C086
	.align 2, 0
_0807C078: .4byte gPlayer + 0x40
_0807C07C:
	ldr r0, [r5, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_0807C086:
	cmp r6, #0
	beq _0807C094
	ldr r0, [r4, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0807C09C
_0807C094:
	ldr r0, [r5, #0x10]
	movs r2, #4
	orrs r0, r2
	str r0, [r5, #0x10]
_0807C09C:
	cmp r6, #0
	beq _0807C0AA
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0807C0B2
_0807C0AA:
	ldr r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0x10]
_0807C0B2:
	mov r3, sl
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0807C0D4
	cmp r6, #0
	beq _0807C0CC
	ldr r0, [r4, #0x10]
	movs r1, #1
	bl _0807C966
_0807C0CC:
	ldr r0, [r5, #0x10]
	movs r1, #1
	bl _0807C970
_0807C0D4:
	cmp r6, #0
	beq _0807C0E6
	ldr r0, [r4, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	bl _0807CA5A
_0807C0E6:
	ldr r0, [r5, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	bl _0807CA5A
_0807C0F4:
	cmp r6, #0
	beq _0807C0FE
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	b _0807C102
_0807C0FE:
	movs r2, #0xa
	ldrsh r0, [r5, r2]
_0807C102:
	cmp r0, #0
	bge _0807C13E
	cmp r6, #0
	beq _0807C118
	ldr r0, [r4, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0807C126
	bl _0807C948
_0807C118:
	ldr r0, [r5, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0807C126
	bl _0807C948
_0807C126:
	cmp r6, #0
	beq _0807C134
	ldr r0, [r4, #0x28]
	cmp r0, sl
	beq _0807C13E
	bl _0807C948
_0807C134:
	ldr r0, [r5, #0x28]
	cmp r0, sl
	beq _0807C13E
	bl _0807C948
_0807C13E:
	mov r3, r8
	asrs r0, r3, #8
	movs r2, #0x98
	lsls r2, r2, #5
	adds r1, r0, r2
	cmp r6, #0
	beq _0807C156
	ldr r0, [r4, #4]
	cmp r0, r1
	blt _0807C160
	bl _0807C948
_0807C156:
	ldr r0, [r5, #4]
	cmp r0, r1
	blt _0807C160
	bl _0807C948
_0807C160:
	cmp r6, #0
	beq _0807C172
	ldr r0, [r4, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0807C180
	bl _0807C948
_0807C172:
	ldr r0, [r5, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0807C180
	bl _0807C948
_0807C180:
	ldr r0, _0807C1C4 @ =gPressedKeys
	ldr r2, _0807C1C8 @ =gPlayerControls
	ldrh r1, [r0]
	ldrh r0, [r2]
	ands r0, r1
	adds r3, r2, #0
	ldr r7, [sp, #0x10]
	adds r7, #0x41
	cmp r0, #0
	bne _0807C196
	b _0807C3D0
_0807C196:
	ldrb r1, [r7]
	adds r0, r1, #0
	asrs r0, r6
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	bne _0807C1A6
	b _0807C3D0
_0807C1A6:
	adds r0, r2, #0
	lsls r0, r6
	bics r1, r0
	strb r1, [r7]
	cmp r6, #0
	beq _0807C1D0
	ldr r0, [r4, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r3, _0807C1CC @ =gPlayer
	mov ip, r3
	b _0807C1DE
	.align 2, 0
_0807C1C4: .4byte gPressedKeys
_0807C1C8: .4byte gPlayerControls
_0807C1CC: .4byte gPlayer
_0807C1D0:
	ldr r0, [r5, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	ldr r0, _0807C1EC @ =gPlayer
	mov ip, r0
_0807C1DE:
	cmp r6, #0
	beq _0807C1F0
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0807C1F8
	.align 2, 0
_0807C1EC: .4byte gPlayer
_0807C1F0:
	ldr r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0x10]
_0807C1F8:
	cmp r6, #0
	beq _0807C20C
	ldr r0, [r4, #0x10]
	ldr r1, _0807C208 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807C214
	.align 2, 0
_0807C208: .4byte 0xFFFFFEFF
_0807C20C:
	ldr r0, [r5, #0x10]
	ldr r1, _0807C224 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #0x10]
_0807C214:
	cmp r6, #0
	beq _0807C228
	ldr r0, [r4, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0807C230
	.align 2, 0
_0807C224: .4byte 0xFFFFFEFF
_0807C228:
	ldr r0, [r5, #0x10]
	movs r2, #4
	orrs r0, r2
	str r0, [r5, #0x10]
_0807C230:
	cmp r6, #0
	beq _0807C240
	ldr r0, [r4, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807C24A
_0807C240:
	ldr r0, [r5, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_0807C24A:
	ldr r0, _0807C264 @ =gInput
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0807C270
	cmp r6, #0
	beq _0807C268
	ldr r0, [r4, #0x10]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0807C292
	.align 2, 0
_0807C264: .4byte gInput
_0807C268:
	ldr r0, [r5, #0x10]
	movs r1, #1
	orrs r0, r1
	b _0807C290
_0807C270:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807C292
	cmp r6, #0
	beq _0807C288
	ldr r0, [r4, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807C292
_0807C288:
	ldr r0, [r5, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_0807C290:
	str r0, [r5, #0x10]
_0807C292:
	ldr r3, [sp, #0x14]
	asrs r1, r3, #0xc
	ldr r0, _0807C2A4 @ =0xFFFFF840
	subs r0, r0, r1
	cmp r6, #0
	beq _0807C2A8
	strh r0, [r4, #0xa]
	b _0807C2AC
	.align 2, 0
_0807C2A4: .4byte 0xFFFFF840
_0807C2A8:
	mov r1, ip
	strh r0, [r1, #0xa]
_0807C2AC:
	mov r2, sl
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0807C2DC
	ldr r3, [sp, #0x14]
	asrs r0, r3, #0xb
	rsbs r0, r0, #0
	cmp r6, #0
	beq _0807C2C8
	strh r0, [r4, #8]
	b _0807C2CC
_0807C2C8:
	mov r1, ip
	strh r0, [r1, #8]
_0807C2CC:
	ldr r2, [sp, #0x14]
	asrs r0, r2, #0xb
	rsbs r0, r0, #0
	cmp r6, #0
	bne _0807C2F4
	mov r3, ip
	strh r0, [r3, #0xc]
	b _0807C2FC
_0807C2DC:
	ldr r1, [sp, #0x14]
	asrs r0, r1, #0xb
	cmp r6, #0
	beq _0807C2E8
	strh r0, [r4, #8]
	b _0807C2EC
_0807C2E8:
	mov r2, ip
	strh r0, [r2, #8]
_0807C2EC:
	ldr r3, [sp, #0x14]
	asrs r0, r3, #0xb
	cmp r6, #0
	beq _0807C2F8
_0807C2F4:
	strh r0, [r4, #0xc]
	b _0807C2FC
_0807C2F8:
	mov r1, ip
	strh r0, [r1, #0xc]
_0807C2FC:
	ldr r0, _0807C314 @ =gPlayer
	cmp r6, #0
	beq _0807C304
	ldr r0, _0807C318 @ =gPartner
_0807C304:
	bl Player_TransitionCancelFlyingAndBoost
	cmp r6, #0
	beq _0807C320
	movs r3, #5
	ldr r2, _0807C31C @ =gPartner + 0x40
	strb r3, [r2]
	b _0807C326
	.align 2, 0
_0807C314: .4byte gPlayer
_0807C318: .4byte gPartner
_0807C31C: .4byte gPartner + 0x40
_0807C320:
	movs r1, #5
	ldr r0, _0807C368 @ =gPlayer + 0x40
	strb r1, [r0]
_0807C326:
	ldr r1, [sp, #0x10]
	adds r1, #0x40
	movs r0, #8
	strb r0, [r1]
	movs r2, #0
	ldr r3, [sp, #0x10]
	str r2, [r3, #0x3c]
	ldr r0, _0807C36C @ =gPlayer
	cmp r6, #0
	beq _0807C33C
	ldr r0, _0807C370 @ =gPartner
_0807C33C:
	movs r1, #9
	bl Player_HandleSpriteYOffsetChange
	ldr r1, _0807C36C @ =gPlayer
	cmp r6, #0
	beq _0807C34A
	ldr r1, _0807C370 @ =gPartner
_0807C34A:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _0807C36C @ =gPlayer
	cmp r6, #0
	beq _0807C356
	ldr r1, _0807C370 @ =gPartner
_0807C356:
	movs r0, #9
	strb r0, [r1, #0xf]
	cmp r6, #0
	beq _0807C378
	ldr r0, [r4, #0x10]
	ldr r1, _0807C374 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807C380
	.align 2, 0
_0807C368: .4byte gPlayer + 0x40
_0807C36C: .4byte gPlayer
_0807C370: .4byte gPartner
_0807C374: .4byte 0xFFDFFFFF
_0807C378:
	ldr r0, [r5, #0x10]
	ldr r1, _0807C394 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
_0807C380:
	ldr r0, _0807C398 @ =gPlayerControls
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	orrs r1, r0
	cmp r6, #0
	beq _0807C39C
	ldrh r0, [r4, #0x38]
	orrs r1, r0
	strh r1, [r4, #0x38]
	b _0807C3A2
	.align 2, 0
_0807C394: .4byte 0xFFDFFFFF
_0807C398: .4byte gPlayerControls
_0807C39C:
	ldrh r0, [r5, #0x38]
	orrs r1, r0
	strh r1, [r5, #0x38]
_0807C3A2:
	movs r0, #0xef
	lsls r0, r0, #1
	mov r1, sl
	strh r0, [r1, #0xa]
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0xb7
	bl m4aSongNumStart
	ldr r0, _0807C3C8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0807C3CC @ =Task_Flipper_Horizontal_2
	str r0, [r1, #8]
	b _0807CA5A
	.align 2, 0
_0807C3C8: .4byte gCurTask
_0807C3CC: .4byte Task_Flipper_Horizontal_2
_0807C3D0:
	mov r2, sl
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0807C3E0
	b _0807C698
_0807C3E0:
	mov r1, r8
	asrs r0, r1, #0x10
	ldr r1, [sp, #8]
	lsls r2, r1, #0x10
	asrs r1, r2, #0x10
	adds r0, r0, r1
	subs r0, #0x11
	lsls r1, r0, #8
	mov sb, r2
	cmp r6, #0
	beq _0807C3FE
	ldr r0, [r4, #4]
	cmp r0, r1
	bgt _0807C406
	b _0807C520
_0807C3FE:
	ldr r0, [r5, #4]
	cmp r0, r1
	bgt _0807C406
	b _0807C520
_0807C406:
	mov r2, r8
	asrs r0, r2, #0x10
	mov r3, sb
	asrs r1, r3, #0x10
	adds r0, r0, r1
	subs r0, #0x11
	lsls r0, r0, #8
	adds r0, #1
	cmp r6, #0
	beq _0807C428
	str r0, [r4, #4]
	ldr r0, _0807C424 @ =gPlayer
	mov ip, r0
	b _0807C42E
	.align 2, 0
_0807C424: .4byte gPlayer
_0807C428:
	str r0, [r5, #4]
	ldr r1, _0807C438 @ =gPlayer
	mov ip, r1
_0807C42E:
	cmp r6, #0
	beq _0807C43C
	movs r2, #0
	strh r2, [r4, #0xa]
	b _0807C440
	.align 2, 0
_0807C438: .4byte gPlayer
_0807C43C:
	mov r3, ip
	strh r6, [r3, #0xa]
_0807C440:
	cmp r6, #0
	beq _0807C450
	ldr r0, _0807C44C @ =0x0000FFB0
	strh r0, [r4, #8]
	b _0807C456
	.align 2, 0
_0807C44C: .4byte 0x0000FFB0
_0807C450:
	ldr r0, _0807C46C @ =0x0000FFB0
	mov r1, ip
	strh r0, [r1, #8]
_0807C456:
	movs r1, #1
	lsls r1, r6
	ldrb r0, [r7]
	orrs r1, r0
	movs r0, #0
	strb r1, [r7]
	cmp r6, #0
	beq _0807C470
	strh r0, [r4, #0x38]
	b _0807C474
	.align 2, 0
_0807C46C: .4byte 0x0000FFB0
_0807C470:
	mov r2, ip
	strh r6, [r2, #0x38]
_0807C474:
	cmp r6, #0
	beq _0807C47E
	movs r3, #0
	strh r3, [r4, #0x3a]
	b _0807C482
_0807C47E:
	mov r0, ip
	strh r6, [r0, #0x3a]
_0807C482:
	cmp r6, #0
	beq _0807C48C
	movs r1, #0
	strb r1, [r4, #0x14]
	b _0807C490
_0807C48C:
	mov r2, ip
	strb r6, [r2, #0x14]
_0807C490:
	ldr r0, _0807C4AC @ =gPlayer
	cmp r6, #0
	beq _0807C498
	ldr r0, _0807C4B0 @ =gPartner
_0807C498:
	bl Player_TransitionCancelFlyingAndBoost
	cmp r6, #0
	beq _0807C4B4
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0807C4BE
	.align 2, 0
_0807C4AC: .4byte gPlayer
_0807C4B0: .4byte gPartner
_0807C4B4:
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r5, #0x10]
_0807C4BE:
	cmp r6, #0
	beq _0807C4CC
	ldr r0, [r4, #0x10]
	movs r3, #4
	orrs r0, r3
	str r0, [r4, #0x10]
	b _0807C4D4
_0807C4CC:
	ldr r0, [r5, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #0x10]
_0807C4D4:
	ldr r0, _0807C508 @ =gPlayer
	cmp r6, #0
	beq _0807C4DC
	ldr r0, _0807C50C @ =gPartner
_0807C4DC:
	movs r1, #9
	bl Player_HandleSpriteYOffsetChange
	ldr r1, _0807C508 @ =gPlayer
	cmp r6, #0
	beq _0807C4EA
	ldr r1, _0807C50C @ =gPartner
_0807C4EA:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _0807C508 @ =gPlayer
	cmp r6, #0
	beq _0807C4F6
	ldr r1, _0807C50C @ =gPartner
_0807C4F6:
	movs r0, #9
	strb r0, [r1, #0xf]
	cmp r6, #0
	beq _0807C514
	movs r3, #5
	ldr r2, _0807C510 @ =gPartner + 0x40
	strb r3, [r2]
	b _0807CA5A
	.align 2, 0
_0807C508: .4byte gPlayer
_0807C50C: .4byte gPartner
_0807C510: .4byte gPartner + 0x40
_0807C514:
	movs r1, #5
	ldr r0, _0807C51C @ =gPlayer + 0x40
	strb r1, [r0]
	b _0807CA5A
	.align 2, 0
_0807C51C: .4byte gPlayer + 0x40
_0807C520:
	ldrb r0, [r7]
	asrs r0, r6
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0807C52E
	b _0807C66A
_0807C52E:
	ldr r0, _0807C548 @ =gPlayer
	cmp r6, #0
	beq _0807C536
	ldr r0, _0807C54C @ =gPartner
_0807C536:
	bl Player_TransitionCancelFlyingAndBoost
	cmp r6, #0
	beq _0807C550
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0807C558
	.align 2, 0
_0807C548: .4byte gPlayer
_0807C54C: .4byte gPartner
_0807C550:
	ldr r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0x10]
_0807C558:
	cmp r6, #0
	beq _0807C56C
	ldr r0, [r4, #0x10]
	ldr r1, _0807C568 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807C574
	.align 2, 0
_0807C568: .4byte 0xFFFFFEFF
_0807C56C:
	ldr r0, [r5, #0x10]
	ldr r1, _0807C584 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #0x10]
_0807C574:
	cmp r6, #0
	beq _0807C588
	ldr r0, [r4, #0x10]
	movs r2, #4
	orrs r0, r2
	str r0, [r4, #0x10]
	b _0807C590
	.align 2, 0
_0807C584: .4byte 0xFFFFFEFF
_0807C588:
	ldr r0, [r5, #0x10]
	movs r3, #4
	orrs r0, r3
	str r0, [r5, #0x10]
_0807C590:
	cmp r6, #0
	beq _0807C5A0
	ldr r0, [r4, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807C5AA
_0807C5A0:
	ldr r0, [r5, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_0807C5AA:
	cmp r6, #0
	beq _0807C5BC
	movs r1, #5
	ldr r0, _0807C5B8 @ =gPartner + 0x40
	strb r1, [r0]
	b _0807C5C2
	.align 2, 0
_0807C5B8: .4byte gPartner + 0x40
_0807C5BC:
	movs r3, #5
	ldr r2, _0807C604 @ =gPlayer + 0x40
	strb r3, [r2]
_0807C5C2:
	ldr r0, _0807C608 @ =gPlayer
	cmp r6, #0
	beq _0807C5CA
	ldr r0, _0807C60C @ =gPartner
_0807C5CA:
	movs r1, #9
	bl Player_HandleSpriteYOffsetChange
	ldr r1, _0807C608 @ =gPlayer
	cmp r6, #0
	beq _0807C5D8
	ldr r1, _0807C60C @ =gPartner
_0807C5D8:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r0, _0807C608 @ =gPlayer
	mov ip, r0
	mov r1, ip
	cmp r6, #0
	beq _0807C5E8
	ldr r1, _0807C60C @ =gPartner
_0807C5E8:
	movs r0, #9
	strb r0, [r1, #0xf]
	mov r1, r8
	asrs r0, r1, #0x10
	mov r2, sb
	asrs r1, r2, #0x10
	adds r0, r0, r1
	subs r0, #0x11
	lsls r0, r0, #8
	adds r0, #1
	cmp r6, #0
	beq _0807C610
	str r0, [r4, #4]
	b _0807C614
	.align 2, 0
_0807C604: .4byte gPlayer + 0x40
_0807C608: .4byte gPlayer
_0807C60C: .4byte gPartner
_0807C610:
	mov r3, ip
	str r0, [r3, #4]
_0807C614:
	cmp r6, #0
	beq _0807C61E
	movs r0, #0
	strh r0, [r4, #0xa]
	b _0807C622
_0807C61E:
	mov r1, ip
	strh r6, [r1, #0xa]
_0807C622:
	cmp r6, #0
	beq _0807C630
	ldr r0, _0807C62C @ =0x0000FFB0
	strh r0, [r4, #8]
	b _0807C636
	.align 2, 0
_0807C62C: .4byte 0x0000FFB0
_0807C630:
	ldr r0, _0807C640 @ =0x0000FFB0
	mov r2, ip
	strh r0, [r2, #8]
_0807C636:
	cmp r6, #0
	beq _0807C644
	movs r3, #0
	strh r3, [r4, #0x38]
	b _0807C648
	.align 2, 0
_0807C640: .4byte 0x0000FFB0
_0807C644:
	mov r0, ip
	strh r6, [r0, #0x38]
_0807C648:
	cmp r6, #0
	beq _0807C652
	movs r1, #0
	strh r1, [r4, #0x3a]
	b _0807C656
_0807C652:
	mov r2, ip
	strh r6, [r2, #0x3a]
_0807C656:
	cmp r6, #0
	beq _0807C662
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	b _0807C966
_0807C662:
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	b _0807C970
_0807C66A:
	cmp r6, #0
	beq _0807C67C
	ldr r0, [r4, #0x10]
	ldr r1, _0807C678 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807C684
	.align 2, 0
_0807C678: .4byte 0xFFDFFFFF
_0807C67C:
	ldr r0, [r5, #0x10]
	ldr r1, _0807C694 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
_0807C684:
	ldrh r1, [r3]
	ldrh r0, [r3, #2]
	orrs r1, r0
	cmp r6, #0
	beq _0807C690
	b _0807C932
_0807C690:
	b _0807C940
	.align 2, 0
_0807C694: .4byte 0xFFDFFFFF
_0807C698:
	mov r1, r8
	asrs r0, r1, #0x10
	ldr r1, [sp, #8]
	lsls r2, r1, #0x10
	asrs r1, r2, #0x10
	adds r0, r0, r1
	subs r0, #0x11
	lsls r1, r0, #8
	mov sb, r2
	cmp r6, #0
	beq _0807C6B6
	ldr r0, [r4, #4]
	cmp r0, r1
	bgt _0807C6BE
	b _0807C7CC
_0807C6B6:
	ldr r0, [r5, #4]
	cmp r0, r1
	bgt _0807C6BE
	b _0807C7CC
_0807C6BE:
	mov r2, r8
	asrs r0, r2, #0x10
	mov r3, sb
	asrs r1, r3, #0x10
	adds r0, r0, r1
	subs r0, #0x11
	lsls r0, r0, #8
	adds r0, #1
	cmp r6, #0
	beq _0807C6E0
	str r0, [r4, #4]
	ldr r0, _0807C6DC @ =gPlayer
	mov ip, r0
	b _0807C6E6
	.align 2, 0
_0807C6DC: .4byte gPlayer
_0807C6E0:
	str r0, [r5, #4]
	ldr r1, _0807C6F0 @ =gPlayer
	mov ip, r1
_0807C6E6:
	cmp r6, #0
	beq _0807C6F4
	movs r2, #0
	strh r2, [r4, #0xa]
	b _0807C6F8
	.align 2, 0
_0807C6F0: .4byte gPlayer
_0807C6F4:
	mov r3, ip
	strh r6, [r3, #0xa]
_0807C6F8:
	cmp r6, #0
	beq _0807C702
	movs r0, #0x50
	strh r0, [r4, #8]
	b _0807C708
_0807C702:
	movs r0, #0x50
	mov r1, ip
	strh r0, [r1, #8]
_0807C708:
	movs r1, #1
	lsls r1, r6
	ldrb r0, [r7]
	orrs r1, r0
	movs r0, #0
	strb r1, [r7]
	cmp r6, #0
	beq _0807C71C
	strh r0, [r4, #0x38]
	b _0807C720
_0807C71C:
	mov r2, ip
	strh r6, [r2, #0x38]
_0807C720:
	cmp r6, #0
	beq _0807C72A
	movs r3, #0
	strh r3, [r4, #0x3a]
	b _0807C72E
_0807C72A:
	mov r0, ip
	strh r6, [r0, #0x3a]
_0807C72E:
	cmp r6, #0
	beq _0807C738
	movs r1, #0
	strb r1, [r4, #0x14]
	b _0807C73C
_0807C738:
	mov r2, ip
	strb r6, [r2, #0x14]
_0807C73C:
	ldr r0, _0807C758 @ =gPlayer
	cmp r6, #0
	beq _0807C744
	ldr r0, _0807C75C @ =gPartner
_0807C744:
	bl Player_TransitionCancelFlyingAndBoost
	cmp r6, #0
	beq _0807C760
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0807C76A
	.align 2, 0
_0807C758: .4byte gPlayer
_0807C75C: .4byte gPartner
_0807C760:
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r5, #0x10]
_0807C76A:
	cmp r6, #0
	beq _0807C778
	ldr r0, [r4, #0x10]
	movs r3, #4
	orrs r0, r3
	str r0, [r4, #0x10]
	b _0807C780
_0807C778:
	ldr r0, [r5, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #0x10]
_0807C780:
	cmp r6, #0
	beq _0807C790
	movs r3, #5
	ldr r2, _0807C78C @ =gPartner + 0x40
	strb r3, [r2]
	b _0807C796
	.align 2, 0
_0807C78C: .4byte gPartner + 0x40
_0807C790:
	movs r1, #5
	ldr r0, _0807C7C0 @ =gPlayer + 0x40
	strb r1, [r0]
_0807C796:
	ldr r0, _0807C7C4 @ =gPlayer
	cmp r6, #0
	beq _0807C79E
	ldr r0, _0807C7C8 @ =gPartner
_0807C79E:
	movs r1, #9
	bl Player_HandleSpriteYOffsetChange
	ldr r1, _0807C7C4 @ =gPlayer
	cmp r6, #0
	beq _0807C7AC
	ldr r1, _0807C7C8 @ =gPartner
_0807C7AC:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _0807C7C4 @ =gPlayer
	cmp r6, #0
	beq _0807C7B8
	ldr r1, _0807C7C8 @ =gPartner
_0807C7B8:
	movs r0, #9
	strb r0, [r1, #0xf]
	b _0807CA5A
	.align 2, 0
_0807C7C0: .4byte gPlayer + 0x40
_0807C7C4: .4byte gPlayer
_0807C7C8: .4byte gPartner
_0807C7CC:
	ldrb r0, [r7]
	asrs r0, r6
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0807C7DA
	b _0807C90E
_0807C7DA:
	cmp r6, #0
	beq _0807C7E8
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0807C7F0
_0807C7E8:
	ldr r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0x10]
_0807C7F0:
	cmp r6, #0
	beq _0807C804
	ldr r0, [r4, #0x10]
	ldr r1, _0807C800 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807C80C
	.align 2, 0
_0807C800: .4byte 0xFFFFFEFF
_0807C804:
	ldr r0, [r5, #0x10]
	ldr r1, _0807C81C @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #0x10]
_0807C80C:
	cmp r6, #0
	beq _0807C820
	ldr r0, [r4, #0x10]
	movs r2, #4
	orrs r0, r2
	str r0, [r4, #0x10]
	b _0807C828
	.align 2, 0
_0807C81C: .4byte 0xFFFFFEFF
_0807C820:
	ldr r0, [r5, #0x10]
	movs r3, #4
	orrs r0, r3
	str r0, [r5, #0x10]
_0807C828:
	cmp r6, #0
	beq _0807C838
	ldr r0, [r4, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807C842
_0807C838:
	ldr r0, [r5, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_0807C842:
	ldr r0, _0807C85C @ =gPlayer
	cmp r6, #0
	beq _0807C84A
	ldr r0, _0807C860 @ =gPartner
_0807C84A:
	bl Player_TransitionCancelFlyingAndBoost
	cmp r6, #0
	beq _0807C868
	movs r1, #5
	ldr r0, _0807C864 @ =gPartner + 0x40
	strb r1, [r0]
	b _0807C86E
	.align 2, 0
_0807C85C: .4byte gPlayer
_0807C860: .4byte gPartner
_0807C864: .4byte gPartner + 0x40
_0807C868:
	movs r3, #5
	ldr r2, _0807C8B0 @ =gPlayer + 0x40
	strb r3, [r2]
_0807C86E:
	ldr r0, _0807C8B4 @ =gPlayer
	cmp r6, #0
	beq _0807C876
	ldr r0, _0807C8B8 @ =gPartner
_0807C876:
	movs r1, #9
	bl Player_HandleSpriteYOffsetChange
	ldr r1, _0807C8B4 @ =gPlayer
	cmp r6, #0
	beq _0807C884
	ldr r1, _0807C8B8 @ =gPartner
_0807C884:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r0, _0807C8B4 @ =gPlayer
	mov ip, r0
	mov r1, ip
	cmp r6, #0
	beq _0807C894
	ldr r1, _0807C8B8 @ =gPartner
_0807C894:
	movs r0, #9
	strb r0, [r1, #0xf]
	mov r1, r8
	asrs r0, r1, #0x10
	mov r2, sb
	asrs r1, r2, #0x10
	adds r0, r0, r1
	subs r0, #0x11
	lsls r0, r0, #8
	adds r0, #1
	cmp r6, #0
	beq _0807C8BC
	str r0, [r4, #4]
	b _0807C8C0
	.align 2, 0
_0807C8B0: .4byte gPlayer + 0x40
_0807C8B4: .4byte gPlayer
_0807C8B8: .4byte gPartner
_0807C8BC:
	mov r3, ip
	str r0, [r3, #4]
_0807C8C0:
	cmp r6, #0
	beq _0807C8CA
	movs r0, #0
	strh r0, [r4, #0xa]
	b _0807C8CE
_0807C8CA:
	mov r1, ip
	strh r6, [r1, #0xa]
_0807C8CE:
	cmp r6, #0
	beq _0807C8D8
	movs r0, #0x50
	strh r0, [r4, #8]
	b _0807C8DE
_0807C8D8:
	movs r0, #0x50
	mov r2, ip
	strh r0, [r2, #8]
_0807C8DE:
	cmp r6, #0
	beq _0807C8E8
	movs r3, #0
	strh r3, [r4, #0x38]
	b _0807C8EC
_0807C8E8:
	mov r0, ip
	strh r6, [r0, #0x38]
_0807C8EC:
	cmp r6, #0
	beq _0807C8F6
	movs r1, #0
	strh r1, [r4, #0x3a]
	b _0807C8FA
_0807C8F6:
	mov r2, ip
	strh r6, [r2, #0x3a]
_0807C8FA:
	cmp r6, #0
	beq _0807C906
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	b _0807C966
_0807C906:
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	b _0807C970
_0807C90E:
	cmp r6, #0
	beq _0807C920
	ldr r0, [r4, #0x10]
	ldr r1, _0807C91C @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807C928
	.align 2, 0
_0807C91C: .4byte 0xFFDFFFFF
_0807C920:
	ldr r0, [r5, #0x10]
	ldr r1, _0807C93C @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
_0807C928:
	ldrh r1, [r3]
	ldrh r0, [r3, #2]
	orrs r1, r0
	cmp r6, #0
	beq _0807C940
_0807C932:
	ldrh r0, [r4, #0x38]
	orrs r1, r0
	strh r1, [r4, #0x38]
	b _0807CA5A
	.align 2, 0
_0807C93C: .4byte 0xFFDFFFFF
_0807C940:
	ldrh r0, [r5, #0x38]
	orrs r1, r0
	strh r1, [r5, #0x38]
	b _0807CA5A

_0807C948:
	mov r3, r8
	asrs r1, r3, #8
	cmp r6, #0
	beq _0807C958
	ldr r0, [r4, #4]
	cmp r0, r1
	ble _0807C95E
	b _0807C976
_0807C958:
	ldr r0, [r5, #4]
	cmp r0, r1
	bgt _0807C976
_0807C95E:
	cmp r6, #0
	beq _0807C96C
	ldr r0, [r4, #0x10]
	movs r1, #2
_0807C966:
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0807CA5A
_0807C96C:
	ldr r0, [r5, #0x10]
	movs r1, #2
_0807C970:
	orrs r0, r1
	str r0, [r5, #0x10]
	b _0807CA5A
_0807C976:
	mov r1, r8
	asrs r0, r1, #8
	movs r2, #0xc0
	lsls r2, r2, #5
	adds r1, r0, r2
	cmp r6, #0
	beq _0807C98C
	ldr r0, [r4, #4]
	cmp r0, r1
	blt _0807C992
	b _0807CA5A
_0807C98C:
	ldr r0, [r5, #4]
	cmp r0, r1
	bge _0807CA5A
_0807C992:
	mov r3, r8
	asrs r0, r3, #8
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r0, r1
	cmp r6, #0
	beq _0807C9A4
	str r0, [r4, #4]
	b _0807C9A6
_0807C9A4:
	str r0, [r5, #4]
_0807C9A6:
	cmp r6, #0
	beq _0807C9B0
	movs r0, #0xa
	strh r0, [r4, #0xa]
	b _0807C9B4
_0807C9B0:
	movs r0, #0xa
	strh r0, [r5, #0xa]
_0807C9B4:
	cmp r6, #0
	beq _0807C9BE
	movs r2, #0
	strh r2, [r4, #8]
	b _0807C9C0
_0807C9BE:
	strh r6, [r5, #8]
_0807C9C0:
	cmp r6, #0
	beq _0807C9CA
	movs r3, #0
	strh r3, [r4, #0xc]
	b _0807CA5A
_0807C9CA:
	strh r6, [r5, #0xc]
	b _0807CA5A

_0807C9CE:
	ldr r2, [sp, #0x10]
	adds r2, #0x41
	ldrb r1, [r2]
	asrs r1, r6
	movs r0, #1
	ands r1, r0
	adds r7, r2, #0
	cmp r1, #0
	beq _0807CA50
	cmp r6, #0
	beq _0807C9F4
	ldr r0, [r4, #0x10]
	ldr r1, _0807C9F0 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807C9FC
	.align 2, 0
_0807C9F0: .4byte 0xFFDFFFFF
_0807C9F4:
	ldr r0, [r5, #0x10]
	ldr r1, _0807CA10 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
_0807C9FC:
	ldr r0, _0807CA14 @ =gPlayerControls
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	orrs r1, r0
	cmp r6, #0
	beq _0807CA18
	ldrh r0, [r4, #0x38]
	orrs r1, r0
	strh r1, [r4, #0x38]
	b _0807CA1E
	.align 2, 0
_0807CA10: .4byte 0xFFDFFFFF
_0807CA14: .4byte gPlayerControls
_0807CA18:
	ldrh r0, [r5, #0x38]
	orrs r1, r0
	strh r1, [r5, #0x38]
_0807CA1E:
	mov r1, sl
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0807CA3E
	cmp r6, #0
	beq _0807CA38
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r4, #8]
	b _0807CA50
_0807CA38:
	movs r0, #0xff
	lsls r0, r0, #8
	b _0807CA4E
_0807CA3E:
	cmp r6, #0
	beq _0807CA4A
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #8]
	b _0807CA50
_0807CA4A:
	movs r0, #0x80
	lsls r0, r0, #1
_0807CA4E:
	strh r0, [r5, #8]
_0807CA50:
	movs r1, #1
	lsls r1, r6
	ldrb r0, [r7]
	bics r0, r1
	strb r0, [r7]
_0807CA5A:
	adds r6, #1
	ldr r0, _0807CABC @ =gNumSingleplayerCharacters
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov r8, r0
	cmp r6, r1
	bge _0807CA6C
	bl MainLoop_Task_Flipper
_0807CA6C:
	mov r2, sl
	ldrh r0, [r2, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0807CA92
	movs r3, #0x18
	ldrsh r0, [r2, r3]
	adds r0, #0x80
	cmp r0, #0
	blt _0807CA92
	movs r4, #0x18
	ldrsh r1, [r2, r4]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0807CB10
_0807CA92:
	movs r2, #0
	ldr r0, _0807CAC0 @ =gCurTask
	mov sb, r0
	ldr r7, [sp, #0x10]
	adds r7, #0x41
	ldr r4, _0807CAC4 @ =gPartner
	ldr r6, _0807CAC8 @ =0xFFDFFFFF
	ldr r3, _0807CACC @ =gPlayer
	ldr r5, _0807CAD0 @ =gPlayerControls
_0807CAA4:
	ldrb r0, [r7]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807CAF2
	cmp r2, #0
	beq _0807CAD4
	ldr r0, [r4, #0x10]
	ands r0, r6
	str r0, [r4, #0x10]
	b _0807CADA
	.align 2, 0
_0807CABC: .4byte gNumSingleplayerCharacters
_0807CAC0: .4byte gCurTask
_0807CAC4: .4byte gPartner
_0807CAC8: .4byte 0xFFDFFFFF
_0807CACC: .4byte gPlayer
_0807CAD0: .4byte gPlayerControls
_0807CAD4:
	ldr r0, [r3, #0x10]
	ands r0, r6
	str r0, [r3, #0x10]
_0807CADA:
	ldrh r1, [r5]
	ldrh r0, [r5, #2]
	orrs r1, r0
	cmp r2, #0
	beq _0807CAEC
	ldrh r0, [r4, #0x38]
	orrs r1, r0
	strh r1, [r4, #0x38]
	b _0807CAF2
_0807CAEC:
	ldrh r0, [r3, #0x38]
	orrs r1, r0
	strh r1, [r3, #0x38]
_0807CAF2:
	adds r2, #1
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	blt _0807CAA4
	ldr r2, [sp, #0x10]
	ldrb r0, [r2, #8]
	ldr r3, [sp, #0xc]
	strb r0, [r3]
	mov r4, sb
	ldr r0, [r4]
	bl TaskDestroy
	b _0807CB16
_0807CB10:
	mov r0, sl
	bl DisplaySprite
_0807CB16:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

.syntax divided
